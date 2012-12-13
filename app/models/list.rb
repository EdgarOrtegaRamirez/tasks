class List < ActiveRecord::Base
  validates_presence_of :name
  attr_accessible :name, :user_id
  has_many :tasks, dependent: :destroy
end
