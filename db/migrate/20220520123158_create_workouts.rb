class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.integer :sets
      t.integer :warmup
      t.integer :high_intensity
      t.integer :low_intensity
      t.integer :rest
      t.integer :cool_down
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
