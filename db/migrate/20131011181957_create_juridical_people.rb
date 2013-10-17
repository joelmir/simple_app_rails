class CreateJuridicalPeople < ActiveRecord::Migration
  def change
    create_table :juridical_people do |t|
      t.string :cnpj
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
