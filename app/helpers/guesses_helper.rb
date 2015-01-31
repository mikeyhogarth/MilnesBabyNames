module GuessesHelper

  THE_NAMES = ["james", "alex", "alexander", "jim"]

  def got_it_right?(name)
    THE_NAMES.include?(name.downcase) ? :correct : :incorrect
  end

end
