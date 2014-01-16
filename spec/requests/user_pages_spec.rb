require 'spec_helper'

describe "UserPages" do
  describe "GET /user_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get signup_path
      response.status.should be(200)
    end
  end
  
  subject { page }
  describe "signup page" do 
  	before { visit signup_path }
  	it { should have_content('Sign up') }
  	it { should have_title('RoR Tutorial Sample App | Sign up') }
  end
end
