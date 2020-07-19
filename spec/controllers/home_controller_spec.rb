require 'spec_helper'

RSpec.describe 'Home_Controller -', type: :controller do   

  describe 'Testing action #index:' do
   
   # before { get :index }

   it 'something doit' do     # Первый тест: то что тестирует этот блок (1)
    expect(true).to eq true   # test code - он всегда true
   end 

  end  
end