class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def contact
    @title = "Contact Me"
  end
  
  def about
    @title = "About Me"
  end
  
  def help
    @title = "Help"
  end

end
