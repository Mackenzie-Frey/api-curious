require 'rails_helper'

describe 'As a visitor to /' do
  it 'Sees Welcome Page' do

    visit root_path

    expect(page).to have_content("GitHub")
  end
end

describe 'As a user to users/show' do
  it 'Sees user show page' do
    user = FactoryBot.create(:user)

    visit user_path(user)

    expect(page).to have_content("GitHub")
  end
end
