require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can navigate to the comments page" do
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    click_link "Hello, world!"
    expect(current_path).to eq '???'
  end
end


feature 'viewing comments' do
  scenario 'User can comment on a post' do
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    click_link "Hello, world!"
    fill_in "Comment", with: "Hello, you!"
    click_button "Submit"
    expect(page).to have_content("Hello, you!")
  end
end