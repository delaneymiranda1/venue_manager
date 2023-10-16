RSpec.describe 'the Venue_shows show page' do
  # User Story 7, Parent Child Count

  # As a visitor
  # When I visit a parent's show page
  # I see a count of the number of children associated with this parent
  it 'displays number of shows at that venue' do
    visit "/venues/1"
    expect(page).to have_content("# of Shows: 2")
  end
end