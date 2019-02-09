require 'rails_helper'

describe 'As a logged-in user, visiting /user-name' do
  it 'Can Navigate to Page' do
    user = create(:user)

    visit user_path(user)

    expect(page).to have_content("GitHub")
  end
end
