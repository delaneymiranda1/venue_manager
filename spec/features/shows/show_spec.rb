require 'rails_helper'

RSpec.describe 'the Shows show page' do
  #   User Story 4, Child Show 

  # As a visitor
  # When I visit '/shows/1'
  # Then I see the show with that id including the show's attributes
  # (data from each column that is on the show table)
  it 'displays the shows id and attributes' do
    visit "/shows/1"
    expect(page).to have_content("Liquid Stranger")
    expect(page).to have_content(55)
    expect(page).to have_content(true)
  end

end