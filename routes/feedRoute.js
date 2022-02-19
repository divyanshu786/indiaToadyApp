var express = require('express');
var router = express.Router();

const feedController = require("../controllers/feedController");
  
// Router

// show Feeds 
router.get('/feeds', feedController.fetchFeeds);

module.exports = router;
