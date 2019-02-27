# Bookmark Manager

Creating a web app that stores bookmarks in a database

## User Stories
```
As a user,
So that I can see what is saved,
I want to be able to see a list of bookmarks.
```
### To set up the database

	Connect to `psql` and create the `bookmark_manager` database:


	CREATE DATABASE bookmark_manager;
  CREATE DATABASE bookmark_manager_test;


	To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

### To run the Bookmark Manager app:


	rackup -p 3000

  To view bookmarks, navigate to `localhost:3000/bookmarks`.
