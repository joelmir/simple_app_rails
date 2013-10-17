class AddTableAccountsUsers < ActiveRecord::Migration
  def up
    create_table :accounts_users, id: false do |t|
      t.belongs_to :account
      t.belongs_to :user
    end
  end

  def down
    drop_table :accounts_users
  end
end
