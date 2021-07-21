# bookmark-manager

**Project**

The aim of the project is to build a bookmark manager, so that a collection of bookmarks (URLs) may be easily accessed.

Initial user story:

```
As an internet user
So that I can quickly return to websites
I would like to see a list of bookmarks
```
To set up the database:

1.Connect to ```psql```

2.Create the database using the ```psql``` command ```CREATE DATABASE bookmark_manager;```

3.Connect to the database using the ```pqsl``` command ```\c bookmark_manager;```

4.Run the query in the file ```db/migrations/01_create_bookmarks_table.sql```
