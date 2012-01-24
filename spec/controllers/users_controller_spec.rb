require 'spec_helper'

describe UsersController do
  include Devise::TestHelpers

  before(:each) do
    @user = Fabricate(:user) 
    #User.new(email: 'test@example.com', password: '012345',
            #         password_confirmation: '012345') #
    sign_in @user
  end

  it 'login succeded' do
    response.should be_success
  end
end
