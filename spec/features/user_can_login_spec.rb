require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "first page is login" do
    visit "/"
    expect(page).to have_content("log in")
  end
end
