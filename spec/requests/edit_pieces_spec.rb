require 'rails_helper'

RSpec.describe "Edit Piece", :type => :request do

  describe "Edit Piece page" do
  	before do
  		@piece = create(:piece)
  		visit piece_path(@piece)
      click_link('Edit Piece')
  	end

  	it "should display a form to edit all the info about a piece" do
  		expect(page).to have_content("Title")
      expect(page).to have_content("Instrumentation")
      expect(page).to have_content("Notes")
      expect(page).to have_content("Duration")
      expect(page).to have_content("Last performed")
      expect(page).to have_content("Published")        
  	end

  	it "should have a button to save" do
      fill_in "Title", with: "New Title"
  		click_button('Update Piece')
  		
  		expect(page).to have_content("Piece New Title has been updated.")
  	end

  	it "should have a button to return without saving" do
  		click_link('Go Back')
      expect(page).to have_title("The Mysterium - #{@piece.title}")
  	end

  	it "should have a button to go back to the list" do
  		click_link('Return to Library')
      expect(page).to have_title('The Mysterium - Library')
  	end
  end
end
