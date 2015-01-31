class GuessesController < ApplicationController

  before_filter :redirect_to_results

  def redirect_to_results
    redirect_to results_path
  end

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
    if secret_word_entered !=  secret_word_required
      flash[:notice] = "Wrong secret word"
      render :new
    else
      if @guess.save
        redirect_to thank_you_path
      else
        render :new
      end
    end
  end


  private
  # Only allow a trusted parameter "white list" through.
  def guess_params
    params.require(:guess).permit(:name, :first_guess, :second_guess, :third_guess)
  end

  def secret_word_entered
    params[:secret][:password]      
  end

  def secret_word_required
    Rails.env.production? ? ENV["secret_word"] : "welcome1"
  end

end
