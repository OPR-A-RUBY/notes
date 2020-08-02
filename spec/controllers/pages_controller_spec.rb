require 'rails_helper'

RSpec.describe 'PagesController', type: :controller do
	
	describe "GET autor_site" do
  	
  	before { get :autor_site}

  	context 'require output per pages' do
  		
  		it '__render to autor_site template' do
      	# is_expected.to render_template :autor_site 
      end

    end     
  end
end
