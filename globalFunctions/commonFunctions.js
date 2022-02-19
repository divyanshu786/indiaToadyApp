module.exports = {
    /**
     * [Check post key validation]
     */
    checkRequest: (array, obj) => {
        for (let j of array) {
            if (obj[j] == undefined || obj[j] == "")
                return j;
        }
        return true;
    }
}