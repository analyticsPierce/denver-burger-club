require "rails_helper.rb"


feature "user can navigate to a restaurant page" do
  before(:all) do 
    FactoryGirl.create(:restaurant) 
  end
  scenario "views a restaurant page" do
    visit root_path

    within('#restaurants'){
      within('.submenu'){
        click_on 'The Squeaky Bean'
      }
    }
    expect(current_path) == "/restaurants/the-squeaky-bean/"
    expect(page).to have_content("Review for The Squeaky Bean")
  end

end

