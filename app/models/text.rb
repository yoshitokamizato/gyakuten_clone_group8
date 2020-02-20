class Text < ApplicationRecord

  def self.import(path)
    path = File.join Rails.root, "db/csv_data/text_data.csv"
    list = []
    CSV.foreach(path, headers: true) do |row|
      list << {
        genre: row["genre"],
        title: row["title"],
        content: row["content"]
      }
    end

    puts "インポート処理を開始"

    begin
      Text.create!(list)
      puts "インポート完了!!"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗：UnknownAttributeError"
    end
  end

end
