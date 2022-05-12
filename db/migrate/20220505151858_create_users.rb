class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password_digest
      t.integer :age
      t.integer :weight
      t.integer :height

      t.timestamps
    end
  end
end
