require "pry"
require "sinatra"
require "sinatra/reloader"

# SQL/Database
require "sqlite3"
require_relative "database_setup.rb"

# Models
require_relative "models/question.rb"
require_relative "models/choice.rb"

# Controllers
require_relative "controllers/main.rb"
