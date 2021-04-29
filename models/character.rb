require 'csv'

class Character
  attr_reader :name, :species

  def initialize(name, species)
    @name = name
    @species = species
  end

  def self.all
    Character.load_csv
  end

  def self.load_csv
    characters = []
    csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
    filepath    = "#{File.dirname(__FILE__)}/../public/data.csv"

    CSV.foreach(filepath, csv_options) do |row|
      characters << Character.new(row['name'], row['species'])
    end
    characters
  end
end
