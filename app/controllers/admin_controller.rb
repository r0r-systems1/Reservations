class AdminController < ApplicationController
  def index
    @total_attendees = Attendees.count
  end
end
