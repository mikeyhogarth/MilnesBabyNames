class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.string :name
      t.string :first_guess
      t.string :second_guess
      t.string :third_guess

      t.timestamps null: false
    end
  end
end
