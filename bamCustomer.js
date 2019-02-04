var mysql = require('mysql');
// var prompt = require('prompt');
var Table = require('cli-table');
var productPurchased = [];
var program = require('commander');
var prompt = require('inquirer').prompt; // require inquirerjs library
var { getProducts, purchaseItem } = require('./controller')
var connection = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	password: '',
	database: 'bammmer', 
});



var help = [
  {
    type: 'text',
    name: 'help',
    message : 'To buy a product pls run the command `buy`'
  }
]

var questions = [
    {
      type : 'input',
      name : 'item_id',
      message : 'Enter the ID of the product they would like to buy...'
    },
    {
      type : 'input',
      name : 'quantity',
      message : 'Enter how many units of the product they would like to buy...'
    }
  ];
  
program
  .version('1.0.0')
  .description('bammmer');
  
program
  .command('getproducts')
  .alias('l')
  .description('List products')
  .action(() => getProducts().then(()=> prompt(help)));

program
  .command('buy')
  .alias('b')
  .description('buy product')
  .action(() => {
    prompt(questions).then(answers => purchaseItem(answers));
  });



program.on('command:*', function () {
  console.error('Invalid command: %s\nSee --help for a list of available commands.', program.args.join(' '));
  process.exit(1);
});
  
program.parse(process.argv);

connection.connect();





