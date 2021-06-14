class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors
  def actors_list
    self.Actor.all.full_name.collect do |a|
      actors << a
      actors
end
end
end
