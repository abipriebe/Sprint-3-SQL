# Overview

This is a relational database containing three tables, one containing over a hundred movies nad information about them, another listing two of the main actors in each movie and a third which combines the two tables. I created this table using SQL in efforts to better understand this new prgramming language. 

This database can be used for data analysis to see which factors effect the ratings of movies: the length of the movie, the year it came out, whether or not it is a sequel or part of a series, etc. 

[Software Demo Video](https://youtu.be/616qUDatjRw)

# Relational Database

This is a relational database containing three tables. 

The first is the movie table which contains over a hundred movies, the rating it received on [Rotten Tomatoes](https://www.rottentomatoes.com/), the year it was released, the studio that produced it, the length of the movie in minutes, and the genre of the movie.  

The second table lists two of the main actors in each movie and information about each of them. It includes each actor's date of birth, date of death (if applicable), and gender. 

Each actor and movie is also assigned a unique identification number. These numbers are used to connect actors with the movies they star in, in a third table.  

# Development Environment

* MySQL Workbench
* GitHub

# Useful Websites

* [SQL-W3Schools](https://www.w3schools.com/sql/)
* [Aggregate Functions](https://www.sqlitetutorial.net/sqlite-aggregate-functions/)

# Future Work

* Figure out how to export the database to other programs like R Studio or VSCode.
* See if there is more efficient way to enter entities into tables that have a many to many relationship. 
