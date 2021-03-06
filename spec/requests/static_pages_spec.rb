require 'rails_helper'
require 'spec_helper'

feature "Static pages" do

  scenario "user visits Home page" do
      visit '/'
      expect(page).to have_content('The Mysterium Library Software')
      expect(page).to have_title('The Mysterium')
	  expect(page).not_to have_title('- Home')      
  end

  scenario "user visits About page" do
      visit '/about'
      expect(page).to have_content('About the Mysterium Project')
      expect(page).to have_title('The Mysterium - About Us')
  end  

  scenario "user visits Help page" do
      visit '/help'
      expect(page).to have_content('How to Use this Software')
      expect(page).to have_title('The Mysterium - Help')
  end    

  scenario "user visits Library link" do
      visit '/'
      within('ul.nav') {click_link 'Library'}
      expect(page).to have_content('The Library')
      expect(page).to have_title('The Mysterium - Library')
      expect(page).to have_content("Click on a title to edit, or on the New button to add a library item")
  end   
end
