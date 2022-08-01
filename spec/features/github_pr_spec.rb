require 'rails_helper'

RSpec.describe 'github pr' do
  it 'counts the number of pull requests' do
    visit '/github'

    expect(page).to have_content("Pull Requests")
    expect(page).to have_content(22)
  end
end