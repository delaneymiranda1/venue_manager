require 'rails_helper'

RSpec.describe 'the Venues index page' do
  # User Story 1, Parent Index 

  # For each parent table
  # As a visitor
  # When I visit '/venues'
  # Then I see the name of each venue record in the system
  it 'displays the name of the venue' do
    visit "/venues"
    expect(page).to have_content("Red Rocks")
    expect(page).to have_content("Cervantes")
    expect(page).to have_content("Mission Ballroom")
  end
  #   User Story 6, Parent Index sorted by Most Recently Created 

  # As a visitor
  # When I visit the parent index,
  # I see that records are ordered by most recently created first
  # And next to each of the records I see when it was created
  it 'displays venues sorted by most recently created' do
    visit "/venues"
    expect(page).to have_content("Created At:")
  end
  #   User Story 9, Parent Index Link

  # As a visitor
  # When I visit any page on the site
  # Then I see a link at the top of the page that takes me to the Parent Index
  it 'displays a link to the venue index' do
    visit "/shows/"
    expect(page).to have_content("Venues Index")
    visit "/venues/"
    expect(page).to have_content("Venues Index")
  end

end