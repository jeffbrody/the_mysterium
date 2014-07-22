require 'rails_helper'

RSpec.describe "Show Piece", :type => :request do

  describe "Show Piece page" do
  	before do
  		@piece = create(:piece)
  		visit piece_path(@piece)
  	end

  	it "should display all the info about a piece" do
  		expect(page).to have_content(@piece.title)
      expect(page).to have_content(@piece.instrumentation)
      expect(page).to have_content(@piece.notes)
      expect(page).to have_content(@piece.duration)
      expect(page).to have_content(@piece.last_performed)
      expect(page).to have_content(@piece.published)        
  	end

  	it "should have a button to edit" do
  		click_link('Edit Piece')
  		expect(page).to have_title("The Mysterium - Edit #{@piece.title}")
  		expect(page).to have_content("Editing Piece #{@piece.title}")
  	end

  	it "should have a button to delete" do
  		click_link('Delete Piece')
      expect(page).to have_content("Piece #{@piece.title} has been deleted.")
  	end

  	it "should have a button to go back to the list" do
  		click_link('Return to Library')
      expect(page).to have_title('The Mysterium - Library')
  	end
  end
end
