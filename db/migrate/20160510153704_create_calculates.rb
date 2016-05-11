class CreateCalculates < ActiveRecord::Migration
  def change
    create_table :calculates do |t|
      t.string :origin
      t.string :string
      t.string :destination
      t.string :string
      t.string :times_per_week
      t.string :integer

      t.timestamps null: false
    end
  end
end
