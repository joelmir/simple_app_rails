class User < ActiveRecord::Base
  attr_accessible :birthday, :email, :name, :account_ids

  has_and_belongs_to_many :accounts

  validates :name, :email , presence: true, uniqueness: true
  validates :birthday, presence: true
end
