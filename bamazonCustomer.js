var mysql = require ("mysql");
var inquirer = require ("inquirer");
var cTable = require("easy-table");



connection = mysql.createConnection({
    host: "localhost",
    user:"root",
    password: "",
    database: "bamazon"
});

var customerProd= {
    id:0,
    stock:0,
    price:0,
    total:0    
}

connection.connect(function(err){
    if (err) throw err;
    console.log("connected: id " + connection.threadId + " \n");
    console.log("\n--Bamazon CLI--\n")    
    bamazonCLIPrompt();    
})
function bamazonCLIPrompt(){

    userContinue();
    showProducts();
}
function showProducts(){
        connection.query("SELECT * FROM products",function(err,resp){
            var t = new cTable;
            var data = resp;        
            data.forEach(function(product) {
                t = displayRow(product,t);
              })       
            console.log("\n" + t.toString())
            })                

}