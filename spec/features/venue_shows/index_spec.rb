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

  it 'displays link that navigates to shows index' do
    visit "/venues/1"
    click_link "Shows Index"
    
    expect(assert_current_path("/shows")).to be true
  end

  it 'displays link that navigates to venues index' do
    visit "/venues/1/shows"
    click_link "Venues Index"

    expect(assert_current_path("/venues")).to be true
  end

  User Story 13, Parent Child Creation 

  # As a visitor
  # When I visit a Parent Children Index page
  # Then I see a link to add a new adoptable child for that parent "Create Child"
  # When I click the link
  # I am taken to '/parents/:parent_id/child_table_name/new' where I see a form to add a new adoptable child
  # When I fill in the form with the child's attributes:
  # And I click the button "Create Child"
  # Then a `POST` request is sent to '/parents/:parent_id/child_table_name',
  # a new child object/row is created for that parent,
  # and I am redirected to the Parent Childs Index page where I can see the new child listed
  xit 'displays a create shows button and a form to fill out for new show' do
    
  end


end