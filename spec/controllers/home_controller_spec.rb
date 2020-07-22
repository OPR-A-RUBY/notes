require "rails_helper"

RSpec.describe HomeController, :type => :controller do
  describe "GET index" do
  	
  	let(:notes) {create_list :note, 3}

  	before { get :index}

  	context 'require output per pages' do
  		
  		it '__render to index template' do
      	is_expected.to render_template :index 
      end
      
      it '__instance var notes include only notes' do
      	expect(assigns(key :notes)).to match_array(notes)		
  		end	
    
    end
  end
end