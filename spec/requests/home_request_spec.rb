require 'rails_helper'

RSpec.describe "Homes", type: :request do

	describe 'Testing action #index:' do
   
    # before { get :index }

   	it 'something doit' do     # Первый тест: то что тестирует этот блок (1)
    expect(true).to eq true   # test code - он всегда true

   end 

  end  	

end
