require 'rails_helper'

RSpec.describe "Edit Piece", :type => :request do

  describe "Edit Piece page" do
  	before do
  		@piece = create(:piece)
  		visit piece_path(@piece)
      click_link('Edit Piece')
  	end

  	it "should display a form to edit all the info about a piece" do
  		expect(page).to have_content(@piece.title)
      expect(page).to have_content(@piece.instrumentation)
      expect(page).to have_content(@piece.notes)
      expect(page).to have_content(@piece.duration)
      expect(page).to have_content(@piece.last_performed)
      expect(page).to have_content(@piece.published)        
  	end

  	it "should have a button to save" do
  		click_link('Save Changes')
  		expect(page).to have_title("The Mysterium - Edit #{@piece.title}")
  		expect(page).to have_content("Editing Piece #{@piece.title}")
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
