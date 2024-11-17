-- Select all artworks by an artist with the first name 'Vincent' and last name 'van Gogh'
SELECT title, artyear, arttype, artlocation
FROM artwork
WHERE artist_id = (SELECT artist_id FROM artist WHERE fname = 'Vincent' AND lname = 'van Gogh');
-- Select all artworks that are of the type 'Oil'
SELECT title, artyear, artist_id
FROM artwork
WHERE arttype = 'Oil';
-- Select all artists who are from Italy
SELECT fname, lname, dob, country
FROM artist
WHERE country = 'Italy';
-- Select all artworks that are associated with the keyword 'landscape'
SELECT a.title, a.artyear, a.arttype, a.artlocation
FROM artwork a
JOIN artwork_keyword ak ON a.artwork_id = ak.artwork_id
JOIN keyword k ON ak.keyword_id = k.keyword_id
WHERE k.keyword = 'landscape';
-- Select all artworks that belong to the 'Renaissance' period
SELECT title, artist_id, artyear
FROM artwork
WHERE period = 'Renaissance';

-- Select all artists who have local exhibitions (where local = 'y')
SELECT fname, lname, country
FROM artist
WHERE local = 'y';
-- Select all artworks by Vincent van Gogh that are associated with the keyword 'flowers'
SELECT a.title, a.artyear, a.arttype
FROM artwork a
JOIN artwork_keyword ak ON a.artwork_id = ak.artwork_id
JOIN keyword k ON ak.keyword_id = k.keyword_id
WHERE a.artist_id = (SELECT artist_id FROM artist WHERE fname = 'Vincent' AND lname = 'van Gogh')
AND k.keyword = 'flowers';

