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

  it "Lets you add a new piece" do
      click_link("New Piece")
      expect(page).to have_title("Mysterium - Add Piece")
      expect(page).to have_content("Add New Piece")
  end

  	it "Displays the list in different orders" do
  		#pending: View in Composer order
  		#pending: View in Date Published order
  		#pending: View in Last Performed order
  	end
  end
end
