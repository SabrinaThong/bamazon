var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",
  
    // Your port; if not 3306
    port: 3306,
  
    // Your username
    user: "root",
  
    // Your password
    password: "golf",
    database: "bamazon"
  });

   connection.connect(function(err) {
    if (err) throw err;
   });

  //var display = function() {
    //  connection.query("SELECT * FROM products", function(err, results) {
      //    if (err) throw err;
      ///      console.log(results);
 // })   
 // };

  var show = function() {

    connection.query("SELECT * FROM products", function(err, results) {
      if (err) throw err;

        inquirer.prompt([
        {
            name: "productid",
            type: "list",
            choices: function() {
              var idlist = [];
              for (var i = 0; i<results.length;i++) {
                idlist.push(results[i].id)
              }
              return idlist;
            },
            message: "What is the id of the product you want to buy?",
        },
        {
            type: "number",
            message: "How much of this product would you like?",
            name: "productamount"
        }
    ]).then(function(response) {
      var item;
      for (var i =0; i < results.length; i++) {
        if (results[i].id === response.productid) {
          item = results[i];
        }
      }
      if(item.stock_quantity > parseInt(response.productamount)) {
        connection.query("UPDATE products SET ? WHERE ?" , [
          {
            stock_quantity: item.stock_quantity - parseInt(response.productamount)
          },
          {
            id: item.id
          }
          
        ]), function(err) {
          if (err) throw err;
          console.log("Product purchased successfully!");
          console.log("Item ID: " + item.id);
          console.log("Product: " + item.product_name);
          console.log("Item count: " + parseInt(response.productamount))
          console.log("Your total cost is: " + "$" + (item.price * parseInt(response.productamount)))
          //display();
          show();
        }
      }
     // else {
      //  console.log("Sorry, we only have " + item.stock_quantity + " of this in stock" )
       //   }
      //display();
      show();

    });

    });
  }
   // display();
    show();
 
