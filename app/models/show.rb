class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors
  def actors_list
    self.collect do |a|
    "#{Actor.full_name}"
  end
end
end
