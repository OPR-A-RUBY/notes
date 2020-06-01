class HomeController < ApplicationController
  
  def create_link_labels_hh
    $labels_hh  = {}
    $labels_cur.each do |label|
      $labels_hh[label.id] = 0
    end
    $notes_cur.each do |note|
      $labels_hh[note.label_id] += 1
    end
  end

  def index
    if user_signed_in?
      $notes_cur = Note.where(user_id: current_user.id)
      $labels_cur = Label.where(user_id: current_user.id).order(:name)
      create_link_labels_hh 
    else
      $notes_cur = Note.where(public: true)
      $labels_cur = Label.all.order(:name)   # Здесь должно быть подругому...
      create_link_labels_hh 
    end
  end

end
