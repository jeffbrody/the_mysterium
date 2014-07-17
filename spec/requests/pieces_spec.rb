require 'rails_helper'

RSpec.describe "Pieces", :type => :request do
  describe "GET /pieces" do
    it "works! (now write some real specs)" do
      get pieces_path
      expect(response.status).to be(200)
    end
  end

  subject {page}

  describe "Add a new piece" do
  	#pending: Click on "Add" button then get to add screen
  end

  describe "View Index page" do
  	before do
  		@titles = Array.new() 
  		10.times do
  			p = create(:piece)
  			@titles.push(p.title)
  		end

  		visit pieces_path
  	end

  	it "Displays a list of pieces in alpha name order" do
		within_table("Library Pieces") do
			@titles.each do |title| 
				expect(page).to have_content(title)
			end
		end
  	end

  	it "Links the title to the Show page" do
  		within_table("Library Pieces") do
			click_link(@titles.first)
			expect(page).to have_title(@titles.first)
		end

  	end

  	#pending: should have New button
  	
  	it "Displays the list in different orders" do
  		#pending: View in Composer order
  		#pending: View in Date Published order
  		#pending: View in Last Performed order
  	end
  end

  describe "Show Piece page" do
  	before do
  		@piece = create(:piece)
  		visit piece_path(@piece)
  	end

  	it "should display all the info about a piece" do
  		
  	end

  	it "should have a button to edit" do
  		click_link('Edit Piece')
  		expect(page).to have_title("Edit #{@piece.title}")
  		expect(page).to have_content("Edit #{@piece.title}")
  	end

  	it "should have a button to delete" do
  		
  	end

  	it "should have a button to go back to the list" do
  		
  	end
  end
end
