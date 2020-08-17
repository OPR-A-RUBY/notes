class Tag < ApplicationRecord

	# Связь с таблицей Notes по принципу многие_ко_многим
	has_and_belongs_to_many :notes 
	# Через вспомогательную таблицу Notes_tags

end
