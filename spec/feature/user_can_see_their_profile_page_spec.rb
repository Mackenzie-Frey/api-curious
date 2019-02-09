require 'rails_helper'

describe 'As a logged-in user, visiting /user-name' do
  it 'Can Navigate to Page' do
    visit profile_path

    expect(page).to have_content("GitHub")
  end
end
