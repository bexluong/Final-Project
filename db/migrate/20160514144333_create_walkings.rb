class CreateWalkings < ActiveRecord::Migration
  def change
    create_table :walkings do |t|

      t.timestamps null: false
    end
  end
end
