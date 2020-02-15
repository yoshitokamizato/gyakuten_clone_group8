namespace :import_csv do
   #rake import_csv:users
 desc "Movie CSVデータのインポート"

 task movies: :environment do
  Movie.import("db/csv_data/user_data.csv")
 end
end
