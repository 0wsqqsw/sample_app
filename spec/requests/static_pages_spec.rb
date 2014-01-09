require 'spec_helper'

describe "StaticPages" do
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get static_pages_index_path
      #get "/static_pages/index"
      get "/static_pages/home"
      response.status.should be(200)
    end
  end
  
  describe "Home page" do
  	it "should have the content 'Sample App'" do
  		visit '/static_pages/home'
  		expect(page).to have_content('Sample App')
  	end
  end
  
  describe "About page" do
		it "should have the content 'About Us'" do
			visit '/static_pages/about'
			expect(page).to have_content('About Us')
		end
	end
	
	describe "title" do
		it "should have the right title" do
			visit '/static_pages/home'
			expect(page).to have_title("RoR Tutorial Sample App | Home")
		end
	end
	
end