require 'rails_helper'

RSpec.feature "Timeline", type: :feature do # This tests fails
  scenario "first page is login" do
    visit "/"
    expect(page).to have_content("log in")
  end
end


RSpec.feature 'User log in' do
  scenario 'a user can log into their account' do
    visit '/'
    fill_in('email', with: 'email@example.com')
    fill_in('password', with: 'supersecret123')
    click_button 'log in'    
    expect(current_path).to eq '/login' # /login should change as we want to be redirected to user's home page
  end
end