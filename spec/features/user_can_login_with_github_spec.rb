require 'rails_helper'

describe 'User logs in' do
  it 'using GitHub' do
    stub_omniauth
    visit '/'
    
  end
end
