require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can submit posts and view them" do
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content("Hello, world!")
  end
end

# RSpec.feature "_header.html.erb", type: :view do
#   scenario "displays navbar" do
#     visit "/posts"
    
#     expect(page).to have_css("nav class")
#   end
# end
