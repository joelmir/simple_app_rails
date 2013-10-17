class JuridicalPerson < ActiveRecord::Base
  attr_accessible :address, :cnpj, :name ,:account_id

  belongs_to :account

  validates :name, :cnpj ,:address ,presence: true
end
