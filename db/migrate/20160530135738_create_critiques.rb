class CreateCritiques < ActiveRecord::Migration
  def change
    create_table :critiques do |t|
      t.text :description
      t.string :user_id
      t.text :name

      t.timestamps

    end
  end
end
