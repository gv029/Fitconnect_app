class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :score, default: 0
      t.integer :role
      t.text :bio
      t.integer :certifications, default: 0
    end
  end
end

