require 'rails_helper'

RSpec.describe Note, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe '__Модель Note.' do
    
    context 'модель Note должна иметь такое свойство:' do        # Название группы тестов 

      it '_не имеет ничего в начале' do			# Не имеет ничего в начале "has none to begin with"
    		expect(Note.count).to eq 0
  	  end

      it '_должна что нибудь делать' do      # Первый тест: то что тестирует этот блок (1)
        expect(true).to eq true              # test code - он всегда true
      end

    end

  end  

end
