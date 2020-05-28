class HomeController < ApplicationController
  
  def index
    if user_signed_in?
      $labels_cur = Label.where(user_id: current_user.id)
    else
      $labels_cur = Label.all   # Здесь должно быть подругому...
    end
  end

end
