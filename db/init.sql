CREATE TABLE IF NOT EXISTS articles (
                                        id SERIAL PRIMARY KEY,
                                        title TEXT NOT NULL,
                                        content TEXT NOT NULL,
                                        source TEXT,
                                        date_fetched TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                        summary TEXT,
                                        sentiment TEXT
);
