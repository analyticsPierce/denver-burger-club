require "spec_helper.rb"

feature "user can create reviews" do
  scenario "viewing the reviews" do
    visit root_path

    expect(page).to have_content("Denver Burger Club")
  end

  scenario "adds a review" do
    visit new_review_path
    fill_in "review[restaurant]", with: "Squeaky Bean"
    #Meat (quality, flavor)
    fill_in "review[judge]", with: "Lord Voldemort"
    #Meat (cooking, temp)
    fill_in "review[meat_done]", with: 5  
    fill_in "review[meat_flavor]", with: 6
    #Bun
    fill_in "review[bun]", with: 9
    #Toppings
    fill_in "review[toppings]", with: 2
    #Sides
    fill_in "review[sides]", with: 3
    #Presentation
    fill_in "review[presentation]", with: 8
    #Service
    fill_in "review[service]", with: 0
    #Atmosphere
    fill_in "review[atmosphere]", with: 10
    fill_in "review[comment]", with: "no goddamn gluten-free bun"
    click_button "Submit review"

  end
end
