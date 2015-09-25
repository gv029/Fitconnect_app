class AddFitnessAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string  :title
      t.integer :group

      t.timestamps null: false
    end

    create_table :fitness_answers do |t|
      t.references :user
      t.references :answer
    end
  end
end
