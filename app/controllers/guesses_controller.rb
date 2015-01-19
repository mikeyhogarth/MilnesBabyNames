class GuessesController < ApplicationController
  before_action :set_guess, only: [:show, :edit, :update, :destroy]

  # 
  # GET /guesses/new
  #
  def new
    @guess = Guess.new
  end

  # 
  # POST /guesses
  #
  def create
    @guess = Guess.new(guess_params)

    if @guess.save
      redirect_to thank_you_path
    else
      render :new
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guess
      @guess = Guess.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def guess_params
      params.require(:guess).permit(:name, :first_guess, :second_guess, :third_guess)
    end
end
