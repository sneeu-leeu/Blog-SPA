class ApplicationController < ActionController::Base
  def curr_user
    User.first
  end
end
