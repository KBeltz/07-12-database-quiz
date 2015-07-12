# Load/create our database for this program.
DATABASE = SQLite3::Database.new("quiz.db")
DATABASE.execute("PRAGMA foreign_keys = ON;")

# Make the tables.
DATABASE.execute("CREATE TABLE IF NOT EXISTS questions (id INTEGER PRIMARY KEY, question TEXT NOT NULL, answer TEXT NOT NULL);")

DATABASE.execute("CREATE TABLE IF NOT EXISTS choices (id INTEGER PRIMARY KEY, choice TEXT, question_id INTEGER, FOREIGN KEY (question_id) REFERENCES questions(id));")

# Get results as an Array of Hashes.
DATABASE.results_as_hash = true
