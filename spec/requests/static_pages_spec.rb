require 'spec_helper'

describe "The page" do

# Check the content in the About page
  it "should have the content 'About'" do
    visit about_path
    expect(page).to have_content('About')
    puts "Test on the About page passed successfully"
  end

  # Check the content in the Home page
  it "should have the content 'Home'" do
    visit root_path
    expect(page).to have_content('Home')
    puts "Test on the Home page passed successfully"
  end

  # Check the content in the Contact page
  it "should have the content 'Contact'" do
    visit contact_path
    expect(page).to have_content('Contact')
    puts "Test on the Contact page passed successfully"
  end

  # Check the content in the Help page
  it "should have the content 'Help'" do
    visit help_path
    expect(page).to have_content('Help')
    puts "Test on the Help page passed successfully"
  end

end
