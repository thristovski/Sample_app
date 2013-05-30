require 'spec_helper'

  describe "Page should have the" do
    
    # Check the title in the Home page
    it "'Title Home'" do
      visit root_path
    # expect(page).to have_selector('title', :text =>'Ruby on Rails Tutorial Sample App | Home')
      page.should have_selector('title', :text =>/\bRuby on Rails Tutorial Sample App\s\W\s\b#{@title}/)
      puts "Test on the Home page passed successfully"
    end
    
    # Check the h1 in the Home page
    it "h1 'Home'" do
      visit root_path
      page.should have_selector('h1', :text => 'Home')
      puts "Test on the Home page passed successfully"
    end
    
    # Check the title in the About page
    it "Title 'About'" do
      visit about_path
    # expect(page).to have_selector('title', :text =>'Ruby on Rails Tutorial Sample App | About')
      page.should have_selector('title', :text =>/\bRuby on Rails Tutorial Sample App\s\W\s\b#{@title}/)
      puts "Test on the About page passed successfully"
    end
    
    # Check the title in the Contact page and also validate the title  
    it "Title 'Contact'" do
      visit contact_path
      page.should have_selector('title', :text =>/\bRuby on Rails Tutorial Sample App\s\W\s\b#{@title}/)
      puts "Test on the Contact page passed successfully"
    end
    
    # Check the h1 in the Contact page
    it "h1 'Home'" do
      visit contact_path
      page.should have_selector('h1', :text => 'Contact')
      puts "Test on the Contact page passed successfully"
    end
    
    # Check the title in the Help page   
    it "Title 'Help'" do
      visit help_path
      page.should have_selector('title', :text =>/\bRuby on Rails Tutorial Sample App\s\W\s\b#{@title}/)     
      puts "Test on the Help page passed successfully"
    end

#    Should_not have Title Home
#    it "'Home'" do
#      visit '/pages/home'
#      page.should_not have_selector('title', :text => '| Home')
#      puts "Test passed successfully"
#    end
     
end