var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "bammmer"
});

con.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
    var sql = `INSERT INTO products 
    (product_name, 
    department_name,
    price,
    stock_quantity
    ) VALUES ?`;
     var values = [
     ['Knives', 'Kitchen', 10, 15],
     ['Jacket', 'Clothing', 30, 45],
     ['Brisket', 'Foods', 15, 25],
     ['Belt', 'Clothing', 10, 20],
     ['polo', 'Clothig', 10, 30],
     ['Wheaties', 'Foods', 5, 15],
     ['Dumbbells', 'Equipments', 10, 45],
     ['Fridge', 'Kitchen', 7, 350],
     ['Chicken', 'Foods', 10, 20],
     ['Power Drill', 'Equipments', 10, 100]
    ];
     con.query(sql, [values], function (err, result) {
        if (err) throw err;
        console.log("Number of records inserted: " + result.affectedRows);
      });
  });