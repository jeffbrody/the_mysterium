require 'rails_helper'

RSpec.describe "New Piece", :type => :request do

  describe "New Piece page" do
  	before do
      visit "/pieces"
      click_link('New Piece')
  	end

  	it "should display a form to add all the info about a piece" do
  		expect(page).to have_content("Title")
      expect(page).to have_content("Instrumentation")
      expect(page).to have_content("Notes")
      expect(page).to have_content("Duration")
      expect(page).to have_content("Last performed")
      expect(page).to have_content("Published")        
  	end

  	it "should have a button to save" do
      fill_in "Title", with: "New Title"
  		click_button('Create Piece')
  		
  		expect(page).to have_content("Piece New Title has been created.")
  	end

  	it "should have a button to go back to the list" do
  		click_link('Return to Library')
      expect(page).to have_title('The Mysterium - Library')
  	end
  end
end
