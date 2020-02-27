class Question < ApplicationRecord

  validates :title, presence: true
  validates :detail, presence: true

  def self.import(path)
    list = []

    CSV.foreach(path, headers: true) do |row|
     list << {
      title: row["title"],
      detail: row["detail"]
      }
    end
  
    puts "インポート開始"
    Question.create!(list)
    puts "インポートに成功しました"
    rescue ActiveModel::UnknownAttributeError => invalid
    puts "インポートに失敗しました:#{invaild}"
  end


end
