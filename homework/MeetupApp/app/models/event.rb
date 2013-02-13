class Event < ActiveRecord::Base
  attr_accessible :title, :date, :venue_id

	validates_presence_of :title
	validates_presence_of :date
	validates_presence_of :venue_id



  belongs_to :venues, :class_name => 'Venue', :foreign_key => :venue_id

end