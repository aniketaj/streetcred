class CreateCritiques < ActiveRecord::Migration
  def change
    create_table :critiques do |t|
      t.integer :metricfive
      t.integer :metricfour
      t.integer :metricthree
      t.integer :metrictwo
      t.integer :metricone
      t.text :description
      t.string :user_id
      t.text :name

      t.timestamps

    end
  end
end
