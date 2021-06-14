class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters
  def actors_list
    self.characters.actors.collect do |character|
    "#{full_name}"
  end
end
end
