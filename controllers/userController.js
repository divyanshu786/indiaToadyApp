var db=require('../database'); //database connection
var bcrypt = require('bcrypt');
const helper = require('../globalFunctions/commonFunctions.js');//use helper
const responseHandle = require('../globalFunctions/responseHandle.js');
const responseCode = require('../globalFunctions/httpResponseCode.js');
const responseMessage = require('../globalFunctions/httpResponseMessage.js');
var util = require('util');
const query = util.promisify(db.query).bind(db);

/**
 * [createUser new user to be created from the module]
 * @param  {[type]} req [object received from the application.]
 * @param  {[type]} res [object to be sent as response from the api.]
 * @return {[type]}     [function call to return the appropriate response]
 */
const register = async (req, res) => {
    let check = helper.checkRequest([
        "username", 
        "email",
        "password", 
        "mobile", 
        "dob",
        "birth_time",
        "marital_status",
        "language",
        "profile_pic"
    ], req.body);

    if (check == true) {
    }else{
        return responseHandle.sendResponsewithError(
           res, 
           responseCode.NOT_FOUND, 
           `${check} key is missing.`
        );
    }
    let username = req.body.username;
    let email = req.body.email;
    let password = req.body.password;
    let mobile = req.body.mobile;
    let gender = req.body.gender;
    let language = req.body.language;
    let marital_status = req.body.marital_status;
    let dob = req.body.dob;
    let birth_time = req.body.birth_time;
    let profile_pic = req.body.profile_pic;
    let salt = bcrypt.genSaltSync(10);
    let hash = bcrypt.hashSync(password, salt);
    let validEmail = await validateEmail(email);
    if(validEmail == false){
        return responseHandle.sendResponsewithError(res, responseCode.NOT_FOUND, 'Please enter a valid E-mail id');
    }
    let fetchSql = `SELECT * FROM users WHERE username = ? `;
    let fetchData =  await query(fetchSql,[username]);
    if(fetchData && fetchData.length > 0){
         return responseHandle.sendResponsewithError(res, responseCode.NOT_FOUND, 'This username is already registered');
    }else{
        let insertSql = `INSERT INTO users (username, password, email, mobile, gender, language, marital_status, dob, birth_time, profile_pic, created_at, updated_at) VALUES ("${username}", "${hash}", "${email}", "${mobile}", "${gender}" ,"${language}" ,"${marital_status}" , "${dob}" , "${birth_time}",  "${profile_pic}", NOW(), NOW() )`;
        let insertData =  await query(insertSql);
        if(insertData){
            return responseHandle.sendResponseWithData(res, responseCode.EVERYTHING_IS_OK, 'user is registered successfully!');
        }else{
            return responseHandle.sendResponsewithError(res, responseCode.INTERNAL_SERVER_ERROR, error_);
        }
    }
    
}


validateEmail = async (email) => {
    var re = /\S+@\S+\.\S+/;
    return re.test(email);
} 

/*Export apis*/
module.exports = {
    register
};





