require 'rails_helper'
RSpec.feature 'User can create an account' do
  scenario 'Create an account' do
    visit '/'
    # click_button 'sign up'
    fill_in('first name', with: 'CSS')
    fill_in('last name', with: 'Style')
    fill_in('email', with: 'email@example.com')
    fill_in('password', with: 'supersecret123')
    click_button 'Create account'    
    expect(current_path).to eq '/users/photo'
  end
end