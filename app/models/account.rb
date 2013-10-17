class Account < ActiveRecord::Base
  attr_accessible :expiration_date, :name, :user_ids ,:juridical_person_ids

  has_and_belongs_to_many :users
  has_many :juridical_people

  validates_presence_of :expiration_date, :name
end
