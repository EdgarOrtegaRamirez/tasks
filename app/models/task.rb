class Task < ActiveRecord::Base
  attr_accessible :completed, :date, :latitude, :list_id, :longitude, :remind_by_date, :remind_by_location, :repeat, :text, :address
  validates_presence_of :text, :list_id

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  
  belongs_to :list
end
