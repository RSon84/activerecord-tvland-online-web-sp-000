class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters
  def actors_list
    characters.collect do |character|
    "#{character.full_name}"
  end.join
end
end
