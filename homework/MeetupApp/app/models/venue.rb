class Venue < ActiveRecord::Base
  attr_accessible :address, :name


  validates_presence_of :name
  validates_presence_of :address


  has_many :events, :class_name => "Event", :foreign_key => "venue_id"

end
