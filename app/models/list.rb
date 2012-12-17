class List < ActiveRecord::Base
  validates_presence_of :name, :user_id
  belongs_to :user
  attr_accessible :name, :user_id
  has_many :tasks, dependent: :destroy
end
