namespace :import_csv do
 desc "Movie CSVデータのインポート"

 task movies: :environment do
  Movie.import("db/csv_data/movie_data.csv")
 end

 desc "Text CSVデータのインポート"
 task texts: :environment do
  Text.import("db/csv_data/text_data.csv")
 end

 desc "Question CSVデータのインポート"
 task questions: :environment do
  Question.import("db/csv_data/question_data.csv")
 end

end
