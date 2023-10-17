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
    visit "/venues/1"
    expect(page).to have_content("Venues Index")
  end
  # User Story 11, Parent Creation 

  # As a visitor
  # When I visit the Parent Index page
  # Then I see a link to create a new Parent record, "New Parent"
  # When I click this link
  # Then I am taken to '/parents/new' where I  see a form for a new parent record
  # When I fill out the form with a new parent's attributes:
  # And I click the button "Create Parent" to submit the form
  # Then a `POST` request is sent to the '/parents' route,
  # a new parent record is created,
  # and I am redirected to the Parent Index page where I see the new Parent displayed.
  it 'displays a link to a form that creates a new venue' do
    visit "/venues"
    click_link "New Venue"

    expect(page).to have_content("New Venue")
    expect(assert_current_path("/venues/new")).to be true
  end

  it 'user fills in form for venue with proper attributes, selects New Venue then redirects back to venues with new one added' do 
    visit '/venues/new'
    fill_in('name', with: 'The Mishawaka')
    fill_in('city', with: 'Bellvue') 
    fill_in('capacity', with: 950)
    fill_in('open', with: true)
    click_on ('Create Venue')
    expect(current_path).to eq('/venues')
    expect(page).to have_content('The Mishawaka')
  end
end