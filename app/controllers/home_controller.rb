class HomeController < ApplicationController
  
  def index
    if user_signed_in?
      $labels_cur = Label.where(user_id: current_user.id).order(:name)
    else
      $labels_cur = Label.all.order(:name)   # Здесь должно быть подругому...
    end
  end

end
