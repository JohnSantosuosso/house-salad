require 'rails_helper'

RSpec.describe 'search by state page' do
  it 'searchs for house members' do
    visit '/'

    select "Colorado", from: :state

    click_on "Locate Members of the House"

    expect(current_path).to eq(search_path)
    expect(page).to have_content("7 Results")
    expect(page).to have_css(".member", count: 7)

    within(first(".member")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".role")
      expect(page).to have_css(".party")
      expect(page).to have_css(".district")
    end
  end
end