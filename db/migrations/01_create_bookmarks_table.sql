-- psql -U Dori -d bookmark_manager -c 'SELECT * FROM bookmarks'
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
