require 'csv'
FILEPATH = "#{File.dirname(__FILE__)}/../public/data.csv"

class Character
  attr_reader :name, :species

  def initialize(name, species)
    @name = attributes[:name] || attributes["name"]
    @species = attributes[:species] || attributes["species"]
    @csv = FILEPATH
    @characters = []
  end

  def self.load_csv
    CSV.foreach(@csv, headers: :first_row) do |row|
      new_guy = character.new(row[1], row[2])
      @characters << (new_guy)
    end
  end

  def self.save_csv(character)
    CSV.open(@csv, 'wb') do |csv|
      @characters.each { |character| csv << [character.id, character.name, character.species] }
    end
  end

  def self.all
    load
    @characters
  end

  def save

  end
end
