class CreateBicycleCalculators < ActiveRecord::Migration
  def change
    create_table :bicycle_calculators do |t|

      t.timestamps null: false
    end
  end
end
