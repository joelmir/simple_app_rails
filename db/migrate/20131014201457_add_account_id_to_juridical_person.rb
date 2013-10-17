class AddAccountIdToJuridicalPerson < ActiveRecord::Migration
  def change
    add_column :juridical_people, :account_id, :integer
  end
end
