require 'rails_helper'

RSpec.describe Piece, :type => :model do
  before { @piece = build(:piece)}
  subject {@piece}

  it { should respond_to(:title)}
  it { should be_valid }

  describe "when title is not present" do
    before { @piece.title = " " }
    it { should_not be_valid }
  end  

  describe "when title is already entered" do
    before do
    	dup_test = @piece.dup
    	dup_test.title = @piece.title.upcase
    	dup_test.save
    end

    it { should_not be_valid }
  end   
end
