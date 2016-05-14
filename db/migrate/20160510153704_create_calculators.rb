class CreateCalculators < ActiveRecord::Migration
  def change
    create_table :calculators do |t|
      t.string :origin
      t.string :type
      t.string :destination
      t.string :times_per_week
      t.string :integer

      t.timestamps null: false
    end
  end
end
