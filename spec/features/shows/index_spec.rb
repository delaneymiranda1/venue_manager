require 'rails_helper'

RSpec.describe 'the Shows index page' do
  # User Story 3, Child Index 

  # As a visitor
  # When I visit '/child_table_name'
  # Then I see each Child in the system including the Child's attributes
  # (data from each column that is on the child table)
  it 'displays the shows id and attributes' do
    visit "/shows/"
    expect(page).to have_content("Liquid Stranger")
    expect(page).to have_content("Mersiv")
    expect(page).to have_content("Griz")
    expect(page).to have_content("G Jones")
    expect(page).to have_content("Smoakland")
    expect(page).to have_content("Jantsen")
  end

  #   User Story 8, Child Index Link

  # As a visitor
  # When I visit any page on the site
  # Then I see a link at the top of the page that takes me to the Child Index
  it 'displays a link to the show index' do
    visit "/shows/"
    expect(page).to have_content("Shows Index")
    visit "/venues/"
    expect(page).to have_content("Shows Index")
  end

  
end