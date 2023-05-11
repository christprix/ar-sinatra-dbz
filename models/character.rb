require 'csv'
FILEPATH = "#{File.dirname(__FILE__)}/../public/data.csv"

class Character
  attr_reader :name, :species

  def initialize(attributes = {})
    @name = attributes[:name] || attributes["name"]
    @species = attributes[:species] || attributes["species"]
    @csv = FILEPATH
    @characters = []
    @next_id = 1
  end

  def self.load_csv
    CSV.foreach(@csv, headers: :first_row, header_converters: :symbol) do |row|
      loaded_character = character.new(row)
      @characters << (loaded_character)
    end
    if @characters.last.nil?
      @next_id = 1
    else
      @next_id = @characters.last.id + 1
    end
  end

  def self.save_csv(character)
    character.id = @next_id
    @characters << character
    CSV.open(@csv, 'wb', :write_headers => true, :headers => ["id", "name", "species"]) do |csv|
      @characters.each { |element| csv << [element.id, element.name, element.species] }
    end
    @next_id = @characters.last.id + 1
  end

  def self.all
    load
    @characters
  end

  def save

  end
end
