var express = require('express');
var router = express.Router();

const userController = require("../controllers/userController");
  
// Router

// Sign up
router.post('/users', userController.register);

module.exports = router;
