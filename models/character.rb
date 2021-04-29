require 'csv'
FILEPATH = "#{File.dirname(__FILE__)}/../public/data.csv"

class Character
  attr_reader :name, :species
  attr_accessor :id

  def initialize(name, species, id = nil)
    @name = name
    @species = species
    @id = id
  end

  def save
    Character.save_csv(self)
  end

  def self.all
    Character.load_csv
  end

  def self.load_csv
    characters = []
    csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

    CSV.foreach(FILEPATH, csv_options) do |row|
      characters << Character.new(row['name'], row['species'], row['id'].to_i)
    end
    characters
  end

  def self.save_csv(character)
    characters = Character.load_csv
    character.id = characters.last.id + 1
    characters << character
    csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }

    CSV.open(FILEPATH, 'wb', csv_options) do |csv|
      csv << ['id', 'name', 'species']
      characters.each do |character|
        csv << [character.id, character.name, character.species]
      end
    end
  end
end
