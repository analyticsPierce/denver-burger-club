require "spec_helper.rb"

feature "user can create reviews" do
  scenario "viewing the reviews" do
    visit root_path

    expect(page).to have_content("Denver Burger Club")
  end

  scenario "adds a review" do
    visit new_review_path
    fill_in "review[restaurant]", with: "Squeaky Bean"
    fill_in "review[judge]", with: "Lord Voldemort"
    fill_in "review[meat_done]", with: 5  
    fill_in "review[meat_flavor]", with: 6
    fill_in "review[bun]", with: 9
    fill_in "review[toppings]", with: 2
    fill_in "review[sides]", with: 3
    fill_in "review[presentation]", with: 8
    fill_in "review[service]", with: 0
    fill_in "review[atmosphere]", with: 10
    fill_in "review[comment]", with: "no goddamn gluten-free bun"
    click_button "Submit review"

  end
end
