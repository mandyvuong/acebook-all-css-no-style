require 'rails_helper'

RSpec.feature 'User can create an account' do
  scenario 'Create an account' do
    visit '/users/new'
    fill_in('First name', with: 'CSS')
    fill_in('Last name', with: 'Style')
    fill_in('Email', with: 'email@example.com')
    fill_in('Password', with: 'supersecret123')
    click_button 'Create Account'    
    expect(current_path).to eq '/users/photo'
  end
end