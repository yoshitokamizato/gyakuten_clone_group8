namespace :import_csv do
  desc "Movie CSVデータのインポート"

 task movies: :environment do
  Movie.import("db/csv_data/csv_data.csv")
 end

end
