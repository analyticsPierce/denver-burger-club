require "rails_helper.rb"

feature "user can see comments for a restaurant" do
  scenario "views a restaurant page" do
    create :review
    visit "/restaurants/the-squeaky-bean/"

    expect(page).to have_content("Comments:")
    expect(page).to have_content("wonderful burger")
  end
end
