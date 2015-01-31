module GuessesHelper

  THE_NAMES = ["james", "alex", "alexander", "jim"]

  def got_it_right?(name)
    THE_NAMES.each do |actual_name|
      return :correct if name.downcase.include? actual_name
    end
    :incorrect
  end

end
