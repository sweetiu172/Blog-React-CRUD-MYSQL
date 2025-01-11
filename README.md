# STEP BY STEP TO RUN APPLICATION

## STEP 1: INSTALL MYSQL SERVER
Follow this article: https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-20-04

Note: Please note down mysql root password for later use.

## STEP 2: INSTALL NPM 
## STEP 3: INSTALL DEPENDENCIES
Note: Advanced (but not required) -> try to install `yarn` (google this)
- Access to frontend folder: run `npm install` or `yarn`
- Access to server folder: run `npm install` or `yarn`

## STEP 4: RUN APPLICATION
- Access to frontend folder: run `npm start` or `yarn start`
- Access to server folder: run `npm start` or `yarn start`

## STEP 5.1: TRY TO USE APPLICATION (DON'T READ STEP 5.2 yet!)
- add new posts
- Watch logs and investigate why application is not running.

## STEP 5.2: DEBUG
- Your error logs will look something like this
`ER_ACCESS_DENIED_ERROR: Access denied for user 'root'@'172.24.0.1' (using password: YES)`
- Head to `./server/db.js` and update password.
- Ctrl-C on server terminal and run application again

## STEP 6.1: TRY TO USE APPLICATION (DON'T READ STEP 6.2 yet!)
- add new posts
- Watch logs and investigate why application is not running.

## STEP 6.2: DEBUG
- Your error logs will look something like this
```json
{
  code: 'ER_BAD_DB_ERROR',
  errno: 1049,
  sqlMessage: "Unknown database 'blog_posts'",
  sqlState: '42000',
  fatal: true
}
```
- Access to mysql database by this command `mysql -u root -p` and enter root password
- Create a new database named `blog_posts` (try to use google for this step)
- Ctrl-C on server terminal and run application again

## STEP 7.1: TRY TO USE APPLICATION (DON'T READ STEP 7.2 yet!)
- add new posts
- Watch logs and investigate why application is not running.

## STEP 7.2: DEBUG
- Your error logs will look something like this
```json
{
  code: 'ER_NO_SUCH_TABLE',
  errno: 1146,
  sqlMessage: "Table 'mysql.posts' doesn't exist",
  sqlState: '42S02',
  index: 0,
  sql: "INSERT INTO posts (title, post_text, user_name) VALUES ('a','a','a')"
}
```
- Access to mysql database by this command `mysql -u root -p` and enter root password
- CREATE new table named `posts` (try to use google for this step) (you can watch `useful-scripts.txt` if you feel stuck)
- Ctrl-C on server terminal and run application again

## STEP 8: CONFIRM YOU CAN POST ON CREATE POST TAB AND WATCH YOUR POST IN MAIN PAGE TAB