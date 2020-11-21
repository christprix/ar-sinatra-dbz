class Character < ActiveRecord::Base
  belongs_to :planet
  validates :name, presence: true, uniqueness: true
end
