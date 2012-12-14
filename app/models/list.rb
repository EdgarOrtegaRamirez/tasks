class List < ActiveRecord::Base
  validates_presence_of :name
  belongs_to :user
  attr_accessible :name, :user_id
  has_many :tasks, dependent: :destroy
end
