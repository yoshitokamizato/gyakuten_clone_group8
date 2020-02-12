class Movie < ApplicationRecord

  def self.import(path)
    list = []

    CSV.foreach(path, headers: true) do |row|
     list << {
      name: row["name"],
      url: row["url"]
      }
    end
  
    puts "インポート開始"
    Movie.create!(list)
    puts "インポートに成功しました"
    rescue ActiveModel::UnknownAttributeError => invalid
    puts "インポートに失敗しました:#{invaild}"
  end

end
