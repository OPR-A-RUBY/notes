require 'spec_helper'

RSpec.describe 'Note model -', type: :model do   

  describe 'Начинаем тестирование свойств модели Note.' do
    
    context 'модель Note должна:' do        # Название группы тестов 

      it 'должна что нибудь делать' do      # Первый тест: то что тестирует этот блок (1)
        expect(true).to eq true             # test code - он всегда true
      end

      it 'должна иметь что-то' do           # Второй тест: то что тестирует этот блок (2)
        expect(true).to eq true             # test code - проверка на совпадение
      end

    end

  end  
end