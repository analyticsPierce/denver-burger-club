require 'spec_helper.rb'

feature 'user can create reviews' do
  scenario 'viewing the reviews' do
    visit root_path

    expect(page).to have_content('Denver Burger Club')
  end
end
