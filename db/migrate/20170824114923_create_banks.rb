class CreateBanks < ActiveRecord::Migration[5.1]
  def change
    create_table :banks do |t|
      t.string :name
      t.float :amount
      t.integer :user_id
    end
  end
end
