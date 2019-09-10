# bookmark_manager

Introduction
-------

User Stories
----------

```
As a user,
So that I can revisit a web page,
I'd like to save a list of web page's addresses.
```
![User Story 1](public/User story 1.png)

Instruction
-----
To set up the project, clone this repository and then run: bundle

To set up the database from scratch:
1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql
5. Create test database using psql commmand CREATE DATABASE bookmark_manager_test
6. Repeat steps 3 and 5 but using bookmark_manager_test instead of bookmark_manager
7. Add a column to both dev and test database through running file 02_add_title_to_bookmarks.sql
