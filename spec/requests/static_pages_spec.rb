require 'rails_helper'
require 'spec_helper'

feature "Static pages" do

  scenario "user visits Home page" do
      visit '/'
      expect(page).to have_content('The Mysterium')
  end
end
