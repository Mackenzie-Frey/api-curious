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
    # profile pic, number of starred repos, followers, following
    # profile_pic { 'https://avatars0.githubusercontent.com/u/42525195?v=4' }
    # number_of_starred_repos { 7 }
    visit user_path(user)

    expect(page).to have_content("GitHub")
    # expect(page).to have_image(user.profile_pic)
    # expect(page).to have_content("Starred Repos: #{user.number_of_starred_repos}" )
  end
end
