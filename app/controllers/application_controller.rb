class ApplicationController < ActionController::Base

  $labels_cur = Label.where(user_id: 0)
  
end
