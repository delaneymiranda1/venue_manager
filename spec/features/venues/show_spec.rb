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
# User Story 7, Parent Child Count

  # As a visitor
  # When I visit a parent's show page
  # I see a count of the number of children associated with this parent
  it 'displays number of shows at that venue' do
    visit "/venues/1"
    expect(page).to have_content("# of Shows: 2")
  end

  #   User Story 10, Parent Child Index Link

  # As a visitor
  # When I visit a parent show page ('/parents/:id')
  # Then I see a link to take me to that parent's `child_table_name` page ('/parents/:id/child_table_name')
  # it 'displays a link to the venue_shows index' do
  #   visit "/venues/1/shows"
  #   click_link "This Venues Shows"
    
  #   expect(assert_current_path("/venue_shows")).to be true
  # end

  it 'displays a link to the venues shows index' do
    visit "/venues/1"
    click_link "This Venues Shows"
      
    expect(assert_current_path("/venues/1/shows")).to be true
  end

  #   User Story 12, Parent Update 

  # As a visitor
  # When I visit a parent show page
  # Then I see a link to update the parent "Update Parent"
  # When I click the link "Update Parent"
  # Then I am taken to '/parents/:id/edit' where I  see a form to edit the parent's attributes:
  # When I fill out the form with updated information
  # And I click the button to submit the form
  # Then a `PATCH` request is sent to '/parents/:id',
  # the parent's info is updated,
  # and I am redirected to the Parent's Show page where I see the parent's updated info

  it 'update link for venues navigates to venues edit form' do
    visit "/venues/1"
    click_link "Update Red Rocks"
    
    expect(page).to have_content('Edit Venue')
    expect(assert_current_path("/venues/1/edit")).to be true
  end

  it 'user fills in form for venue update' do 
    visit '/venues/1'
    click_link "Update Red Rocks"
    fill_in('name', with: 'Red Rocks')
    fill_in('city', with: 'Morrison') 
    fill_in('capacity', with: 10000)
    page.choose('venue is open')
    click_button ('Submit')
    expect(current_path).to eq('/venues/1')
    expect(page).to have_content(10000)
  end

end