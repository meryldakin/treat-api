class CreateTreats < ActiveRecord::Migration[5.1]
  def change
    create_table :treats do |t|
      t.string :item
      t.float :amount
      t.integer :user_id
      t.string :status
    end
  end
end
