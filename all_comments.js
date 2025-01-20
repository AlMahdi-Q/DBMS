const sqlite3 = require('sqlite3').verbose();

let db = new sqlite3.Database('Blog.db', (err) => {
    if (err) {
      return console.error(err.message);
    }
    console.log('Connected to the Blog SQlite database');
    
  });

db.all('SELECT Comments.Name, Comments.Content, Articles.ArticleName, Articles.Date FROM Articles INNER JOIN Comments ON Articles.ArticleID = Comments.ArticleID;',(err,table)=>{
    if(err){
        console.log(err.message);
    }
    console.log(table);
});
db.close((err) => {
    if (err) {
    return console.error(err.message);
    }
    console.log('Close the database connection.');
});
