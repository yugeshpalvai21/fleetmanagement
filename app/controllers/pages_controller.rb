class PagesController < ApplicationController

  def home
    # Assuming you have some logic here to find the accident
    @accident = Accident.first

    # @accident = Accident.find_by(...) # Replace ... with appropriate conditions
  end
end
