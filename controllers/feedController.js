var db=require('../database'); //database connection
var bcrypt = require('bcrypt');
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
/**
 * [fetch feeds]
 * @param  {[type]} req [object received from the application.]
 * @param  {[type]} res [object to be sent as response from the api.]
 * @return {[type]}     [function call to return the appropriate response]
 */
const fetchFeeds = async (req, res) => {
    let username = req.query.username;
    let page = parseInt(req.query.page_number || 1);
    let limit = parseInt(req.query.limit || 2);
    let skip = (parseInt(req.query.page_number) - 1)* limit || 0
    if(username){
        let sql = `SELECT * FROM users WHERE username = ? `;
        let fetchData =  await query(sql,[username]);
        if(fetchData && fetchData.length > 0){
            let postsSql = `SELECT * FROM posts WHERE status = ?`;
            let postsCountSql = `SELECT COUNT(*) as count FROM posts WHERE status = ?`;
            if(req.query.search){
                postsSql = postsSql+' AND heading LIKE "%'+req.query.search+'%" OR content LIKE "%'+req.query.search+'%"';
                postsCountSql =  postsCountSql+' AND heading LIKE "%'+req.query.search+'%" OR content LIKE "%'+req.query.search+'%"';
            }
            if(req.query.author_name){
                postsSql = postsSql+' AND author_name = '+'"'+req.query.author_name+'"';
                postsCountSql =  postsCountSql+' AND author_name = '+ '"'+req.query.author_name+ '"';
            }
            if(req.query.category){
                postsSql = postsSql+' AND category = '+'"'+req.query.category+ '"';
                postsCountSql =  postsCountSql+' AND category = '+'"'+req.query.category+ '"';
            }
            if(req.query.sort_by){
                if(req.query.sort_by == "ASC"){
                    postsSql = postsSql+' ORDER BY created_at ASC';
                }   
                if(req.query.sort_by == "DESC"){
                    postsSql = postsSql+' ORDER BY created_at DESC';
                }             
            }
            postsSql = postsSql+ ' LIMIT '+limit+ ' OFFSET '+skip;
            console.log(postsSql, "postsSql postsSql")
            let postsData =  await query(postsSql, 1);
            let postsCountData =  await query(postsCountSql, 1);
            let total = postsCountData[0].count;
            let data = {
                "postsData": postsData,
                //"campaignDetail":camapignDetail,
                "page": page,
                "total": total,
                "limit": limit,
                "pages": Math.ceil(total / limit)

            }
            return responseHandle.sendResponseWithData(res, responseCode.EVERYTHING_IS_OK, 'Feed List Data ', data);

        }else{
            return responseHandle.sendResponsewithError(res, responseCode.NOT_FOUND, 'user name not found');
        }
        console.log(fetchData, "fetchData  fetchData");

    }else{
        return responseHandle.sendResponsewithError(res, responseCode.NOT_FOUND, 'user name is required for fetching data');
    }
}


/*Export apis*/
module.exports = {
    fetchFeeds
};





