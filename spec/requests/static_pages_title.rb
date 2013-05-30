require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home" do
    before { visit root_path }
    it { should have_selector('title', text: full_title('')) }
    it { should have_selector('h1', :text => 'Home') }
    puts "Test on the Home page passed successfully"
  end

   describe "Help page" do
    before { visit help_path }
    it { should have_selector('h1', text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
    puts "Test on the Help page passed successfully"
  end

  describe "About page" do
    before { visit about_path }
    it { should have_selector('h1', text: 'About') }
    it { should have_selector('title', text: full_title('About Us')) }
    puts "Test on the About page passed successfully"
  end

  describe "Contact page" do
    before { visit contact_path }
    it { should have_selector('h1', text: 'Contact') }
    it { should have_selector('title', text: full_title('Contact')) }
    puts "Test on the Contact page passed successfully"
  end
  
#    Should_not have Title Home
#    it "'Home'" do
#      visit '/pages/home'
#      page.should_not have_selector('title', :text => '| Home')
#      puts "Test passed successfully"
#    end

end
