require 'rails_helper'

feature 'viewing posts' do
  scenario 'User can list spaces' do
    UsersController.create(first_name: 'CSS', second_name: 'Style', email: 'test@example.com', password: 'secret123')
    PostsController.create(id: 1, post: 'Heres a post', message: 'Hears a post', )
    visit('/posts')
    expect(page).to have_content('Heres a post')
  end
end