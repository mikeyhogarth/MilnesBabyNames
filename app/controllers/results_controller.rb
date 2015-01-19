class ResultsController < ApplicationController
  def index
    @guesses = Guess.all
  end
end
