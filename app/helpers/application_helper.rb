module ApplicationHelper
  
  #return logo
  def logo
    logo = image_tag("logo.png", :alt => "Sample RoR App", :class => "round") 
  end
  
  # Return a title on a per-page basis
  def title
    base_title = "RoR Sample App"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
end