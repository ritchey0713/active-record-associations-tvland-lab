class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  has_many :actor, through: :characters

  def actors_list
    self.actors.map{|actor| actor.full_name}
  end
end