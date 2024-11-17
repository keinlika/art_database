# Art Inventory Management System

This project is a MySQL-based database system designed to manage and query an art inventory. It includes tables for storing information about artists, artworks, keywords, and the relationships between them.

## Features

- **Artist Information:** Store details about artists including their name, country, date of birth, and more.
- **Artwork Information:** Manage information about artworks such as title, year, type, location, and period.
- **Keywords:** Use keywords to categorize and search for artworks.
- **Relations Between Tables:** Efficiently link artworks to artists and keywords.
- **Search Queries:** Perform various queries to search and filter artworks, artists, and keywords.

## Database Structure

The project is structured around the following tables:

1. **`artist`**: Contains information about artists.
   - `artist_id`: Primary key.
   - `fname`, `lname`: First and last names of the artist.
   - `dob`: Date of birth of the artist.
   - `country`: The country the artist is from.
   - `local`: Indicates if the artist has local exhibitions.

2. **`artwork`**: Contains information about artworks.
   - `artwork_id`: Primary key.
   - `title`: The title of the artwork.
   - `artyear`: The year the artwork was created.
   - `arttype`: The type of artwork (e.g., Oil, Watercolor).
   - `artlocation`: Where the artwork is located (museum, gallery, etc.).
   - `period`: The period the artwork belongs to (e.g., Renaissance).

3. **`keyword`**: Contains keywords for categorizing artworks.
   - `keyword_id`: Primary key.
   - `keyword`: The keyword used to describe the artwork.

4. **`artwork_keyword`**: A many-to-many relationship table linking artworks and keywords.
   - `artwork_id`: Foreign key to the `artwork` table.
   - `keyword_id`: Foreign key to the `keyword` table.
   ## Demo Video

Check out the demo video for a quick overview of how the system works:  
[![Video Thumbnail]()](https://www.loom.com/share/5ced74821f5546e18030ffd4bb4dd2d1?sid=e0748943-5724-4e1b-a20b-96929b3758b3))

Replace `YOUR_VIDEO_ID` with the actual YouTube video ID for the link to work.
