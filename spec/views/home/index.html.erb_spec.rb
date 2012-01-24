require 'spec_helper'

describe "home/index.html.erb" do
  before(:each) do
    render template: 'home/index.html.erb'
  end

  it 'response success' do
    rendered.should =~ /Home/
  end
end
