require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "first page is login" do
    visit "/"
    expect(page).to have_content("Log In")
  end
end

RSpec.feature 'User log in' do
  scenario 'a user can log into their account, pages moves to posts page' do
    visit '/'
    fill_in('email', with: 'email@example.com')
    fill_in('password', with: 'supersecret123')
    click_on 'log in'    
    expect(current_path).to eq '/posts'
  end
end