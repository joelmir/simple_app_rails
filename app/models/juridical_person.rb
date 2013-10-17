class JuridicalPerson < ActiveRecord::Base
  attr_accessible :address, :cnpj, :name ,:account_id

  belongs_to :account

  validates :name, :cnpj ,:address ,presence: true
  validates :cnpj, :cnpj => true
  validates :cnpj, :uniqueness => { :scope => :account_id }

  before_validation :remove_mask

  def remove_mask
    self.cnpj = self.cnpj.gsub(/[\/.-]/,'') unless self.cnpj.blank?
  end
end
