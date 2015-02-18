require_relative '../../spec_helper'

class RoutesSpec
  describe 'routes' do
    let(:user){User.create(username: 'monkey', email: "abc@monkey.com", password: "123", password_confirmation: "123")}

  before do
    user
  end

  it 'should have a login page' do
    get '/login'
    expect(last_response).to be_ok
    expect(last_response.body).to include 'login'
  end
  end
end
