#Movie (mID,title,year,director)#
#Reviewer (rID,name)#
#Rating (rID,mID,stars,ratingDate)#

#Movie (mID,title,year,director)#
#Reviewer (rID,name)#
#Rating (rID,mID,stars,ratingDate)#

#Q1: Find the titles of all movies directed by Steven Spielberg#
/*
Select M.title
From Movie M
Where M.director = "Steven Spielberg"
*/

#Q2: Find all years that have a movie that received a rating of 4 or 5, and sort them in increasing order.
/*
Select distinct M.year
From Movie M,Rating R
Where M.mID = R.mID and R.stars >= '4'
Order by M.year;
*/

#Q3: Find the titles of all movies that have no ratings.
/*
Select distinct M.title
From Movie M, Rating R
Where M.mID NOT IN (Select Rating.mID from Rating)
*/

#Q4: Some reviewers didn't provide a date with their rating. Find the names of all reviewers who have ratings with a NULL value for the date.
/*
Select distinct Rev.name
From Rating R, Reviewer Rev
Where R.rID = Rev.rID and R.ratingDate is NULL;
*/

#Q5: Reviewer name, Movie title, stars, and ratingDate
#sort the data first by reviewer name, then movie title, then #of stars
/* !!!!!UNFINISHED
Select distinct Rev.name, M.title, R.stars, R.ratingDate
From Reviewer Rev, Movie M, Rating R
Where R.ratingDate
*/

#Q6: For all cases where the same reviewer rated the same movie twice and give it a higher rating the second time
# 	 return the reviewer's name and the title of the movie

#Q7: For each movie that has at least one rating, find the highest number of stars that movie received. 
#    Return the movie title and number of stars. Sort by movie title.


