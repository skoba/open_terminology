require 'spec_helper'

describe UsersController do
  include Devise::TestHelpers

  before(:each) do
    @user = Fabricate(:user)
    sign_in @user
  end

  it 'login succeded' do
    response.should be_success
  end
end
