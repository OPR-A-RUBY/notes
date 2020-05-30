class HomeController < ApplicationController
  
  def create_link_labels_hh
    $labels_hh  = '48'
  end

  def index
    if user_signed_in?
      $labels_cur = Label.where(user_id: current_user.id).order(:name)
      create_link_labels_hh 
    else
      $labels_cur = Label.all.order(:name)   # Здесь должно быть подругому...
      create_link_labels_hh 
    end
  end

end
