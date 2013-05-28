require 'spec_helper'

  describe "should have the title" do
    
    it "should have the title 'Home'" do
      visit '/pages/home'
      expect(page).to have_selector('title', :content =>'Ruby on Rails Tutorial Sample App | Home')
    end

    it "should have the title 'About'" do
      visit '/pages/about'
      expect(page).to have_selector('title', :content =>'Ruby on Rails Tutorial Sample App | About')
    end
    
end

