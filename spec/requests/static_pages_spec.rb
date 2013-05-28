require 'spec_helper'

  describe "About page" do
    
    it "should have the content 'About'" do
      visit '/pages/about'
      expect(page).to have_content('About')
    end

    it "should have the content 'Home'" do
         visit '/pages/home'
         expect(page).to have_content('Home')
    end

    it "should have the content 'Contact'" do
      visit '/pages/contact'
      expect(page).to have_content('Contact')
    end
 
    it "should have the content 'Help'" do
      visit '/pages/help'
      expect(page).to have_content('Help')
    end
  
end
