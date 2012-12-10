class Task < ActiveRecord::Base
  attr_accessible :completed, :date, :latitude, :list_id, :longitude, :remind_by_date, :remind_by_location, :repeat, :text
  validates_presence_of :text

  belongs_to :list
end
