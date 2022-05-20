class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.integer :calories_burned
      t.json :zones_avg
      t.json :heart_rate
      t.belongs_to :workout, null: false, foreign_key: true

      t.timestamps
    end
  end
end
