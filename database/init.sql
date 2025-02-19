CREATE TABLE merged_songs (
    id SERIAL PRIMARY KEY,
    user_id VARCHAR(50),
    votes INTEGER DEFAULT 0,
    popularity INTEGER,
    artist_name VARCHAR(50),
    song_name VARCHAR(50),
    UNIQUE(user_id, song_name)
);

CREATE TABLE top_songs (
    id SERIAL PRIMARY KEY,
    user_id VARCHAR(50),
    popularity INTEGER,
    artist_name VARCHAR(50),
    song_name VARCHAR(50),
    UNIQUE(user_id, song_name)
);