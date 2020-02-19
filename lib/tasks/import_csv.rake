namespace :import_csv do
 desc "Movie CSVデータのインポート"

 task movies: :environment do
  Movie.import("db/csv_data/movie_data.csv")
 end
end
