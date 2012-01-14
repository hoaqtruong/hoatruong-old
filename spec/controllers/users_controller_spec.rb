require 'spec_helper'

describe UsersController do
  render_views

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
    
    it "should have the right title 'Sign up' " do
      get 'new'
      response.should have_selector("title", :content => "Sign up myJourney!")
    end
    
  end
end
