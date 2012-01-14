require 'spec_helper'

describe "LayoutLinks" do
  
  before(:each) do
    @base_title = "myJourney"
  end
 
  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => @base_title + " | Home")
  end
  
  it "should have a Contact page at '/contact' " do
    get '/contact'
    response.should have_selector('title', :content => @base_title + " | Contact Me")
  end
  
  it "should have an About page at '/about' " do
    get '/about'
    response.should have_selector('title', :content => @base_title + " | About Me")
  end
  
  it "should have a Help page at '/help' " do
    get '/help'
    response.should have_selector('title', :content => @base_title + " | Help")
  end
  
  it "should have a Sign up page at '/signup' " do
    get '/signup'
    response.should have_selector('title', :content => "Sign up myJourney!")
  end
  
  it "should have the right links on the layout" do
    visit root_path
    click_link "Home"
    response.should have_selector('title', :content => "Home")
    click_link "About"
    response.should have_selector('title', :content => "About Me")
    click_link "Contact"
    response.should have_selector('title', :content => "Contact Me")
    click_link "Help"
    response.should have_selector('title', :content => "Help")


    click_link "Sign up myJourney!"
    response.should have_selector('title', :content => "Sign up myJourney!")
  end
     
end
