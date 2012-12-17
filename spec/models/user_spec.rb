require 'spec_helper'

describe User, "OmniAuth" do
  it { should have_many :lists }
  it { should respond_to :full_name }

  before do
    request.env["devise.mapping"] = Devise.mappings[:user]
    request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:facebook]
  end

  it "sets a session variable to the OmniAuth auth hash" do
    request.env["omniauth.auth"]['uid'].should eq('1234')
  end
end
