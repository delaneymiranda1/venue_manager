require 'rails_helper'

RSpec.describe 'the Venue_shows index page' do

  # User Story 5, Parent Children Index 

  # As a visitor
  # When I visit '/parents/:parent_id/child_table_name'
  # Then I see each Child that is associated with that Parent with each Child's attributes
  # (data from each column that is on the child table)
  it 'displays a venues shows and their attributes' do
    visit "/venues/1/shows"
    expect(page).to have_content("Liquid Stranger")
    expect(page).to have_content(55)
    expect(page).to have_content(true)
    expect(page).to have_content("Mersiv")
    expect(page).to have_content(55)
    expect(page).to have_content(false)
  end

  #   User Story 10, Parent Child Index Link

  # As a visitor
  # When I visit a parent show page ('/parents/:id')
  # Then I see a link to take me to that parent's `child_table_name` page ('/parents/:id/child_table_name')
  it 'displays a link to the venue_shows index' do
    visit "/venues/1"
    expect(page).to have_content("This Venues Shows")
  end
end