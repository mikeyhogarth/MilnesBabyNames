class Guess < ActiveRecord::Base
  validates :name, uniqueness: true
  validates :name, :first_guess, :second_guess, :third_guess, presence: true
end
