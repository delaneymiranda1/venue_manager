require 'rails_helper'

RSpec.describe 'the Venues show page' do
  # User Story 2, Parent Show 

  # As a visitor
  # When I visit '/parents/:id'
  # Then I see the parent with that id including the parent's attributes
  # (data from each column that is on the parent table)
  it 'displays a venues attributes' do
    visit "/venues/1"
    expect(page).to have_content("Red Rocks")
    expect(page).to have_content("Morrison")
    expect(page).to have_content(9545)
    expect(page).to have_content(true)
  end
end