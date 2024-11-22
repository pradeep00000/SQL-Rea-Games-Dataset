create schema rea_games;
select * from rea_games.rea_games_dataset_updated;

#1. List all the game names in the dataset.
select * from rea_games.rea_games_dataset_updated;
select `Game Name` 
from rea_games.rea_games_dataset_updated
group by `Game Name`;

#2. Find all the games released on a specific platform (e.g., 'PS5').
select * from rea_games.rea_games_dataset_updated;
select `Game Name` , Platform
from rea_games.rea_games_dataset_updated
where Platform = 'PS5' ;

#3. How many games are listed in the dataset?
select * from rea_games.rea_games_dataset_updated;
select count(`Game Name`)
from rea_games.rea_games_dataset_updated;

#4. Get the game names and their corresponding release dates.
select * from rea_games.rea_games_dataset_updated;
select `Game Name` , `Release Date` 
from rea_games.rea_games_dataset_updated;

#5. Find all games that have sales greater than 100 million dollars.
select * from rea_games.rea_games_dataset_updated;
select `Game Name` ,`Sales (Million $)`
from rea_games.rea_games_dataset_updated
where `Sales (Million $)` > 50;

#6. List the names of games along with their platforms, but only for games that are rated above 8.
select * from rea_games.rea_games_dataset_updated;
select `Game Name`, Platform , Rating
from rea_games.rea_games_dataset_updated
where Rating > 8;

#7. Find the total sales (in million dollars) for each genre of games.
select * from rea_games.rea_games_dataset_updated;
select Genre , sum(`Sales (Million $)`)
from rea_games.rea_games_dataset_updated
group by Genre;

#8. List the game names that have player counts greater than 50 million, sorted by the highest player count.
select * from rea_games.rea_games_dataset_updated;
select `Game Name` , `Player Count (Million)`
from rea_games.rea_games_dataset_updated
where `Player Count (Million)` > 40
order by `Player Count (Million)` desc;

#9. Find the average sales for each platform.
select * from rea_games.rea_games_dataset_updated;
select Platform , avg(`Sales (Million $)`)
from rea_games.rea_games_dataset_updated
group by Platform;

#10. Get the most popular game in each region (with the highest sales).
select * from rea_games.rea_games_dataset_updated;
select  Region , `Game Name` , max(`Sales (Million $)`)
from rea_games.rea_games_dataset_updated
group by Region;

#11. How many games are there in each age group?
select * from rea_games.rea_games_dataset_updated;
select `Age Group`, count(*) as total_games
from rea_games.rea_games_dataset_updated
group by `Age Group`;

#12. List the top 5 games with the highest ratings.
select * from rea_games.rea_games_dataset_updated;
select `Game Name` , Rating
from rea_games.rea_games_dataset_updated
order by Rating desc
limit 5;

#13. Find all the games that are rated above 8 and released after January 1, 2015.
select * from rea_games.rea_games_dataset_updated;
select `Game Name` , Rating , `Release Date`
from rea_games.rea_games_dataset_updated
where Rating > 8 and `Release Date` > 2015-01-01;

#14. List the games with sales greater than 50 million and show their corresponding player count.
select * from rea_games.rea_games_dataset_updated;
select `Game Name` , `Sales (Million $)` , `Player Count (Million)`
from rea_games.rea_games_dataset_updated
where `Sales (Million $)` > 30 ;

#15. Find the genre with the highest average sales.
select * from rea_games.rea_games_dataset_updated;
select Genre , avg(`Sales (Million $)`)
from rea_games.rea_games_dataset_updated
group by Genre
order by avg(`Sales (Million $)`) desc
limit 1;

#16. List the platforms that have more than 3 games with sales greater than 10 million.
select * from rea_games.rea_games_dataset_updated;
select Platform 
from rea_games.rea_games_dataset_updated
where `Sales (Million $)` > 10
group by Platform
having count(*) > 3;

#17. Find the average rating for each game based on its genre.
select * from rea_games.rea_games_dataset_updated;
select `Game Name` , avg(Rating) , Genre
from rea_games.rea_games_dataset_updated
group by Genre , `Game Name`;

#18. List the top 3 games with the highest sales and their corresponding release dates.
select * from rea_games.rea_games_dataset_updated;
select `Game Name` , `Sales (Million $)` , `Release Date`
from rea_games.rea_games_dataset_updated
order by `Sales (Million $)` desc
limit 3;

#19. Find all games with sales between 20 million and 30 million and display their platform and region.
select * from rea_games.rea_games_dataset_updated;
select `Game Name` , `Sales (Million $)` , Platform , Region
from rea_games.rea_games_dataset_updated
where `Sales (Million $)` between 20 and 30;