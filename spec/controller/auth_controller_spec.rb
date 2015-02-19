require_relative '../spec_helper'

class RoutesSpec
  describe 'Logging in' do
    let(:user){User.create(username: 'monkey', email: "abc@monkey.com",
                           password: "123", password_confirmation: "123")}

    context "GET /login" do
      before :each do
        get '/login'
      end

      it 'should have a login page' do
        expect(last_response).to be_ok
      end

      it "should have text 'login'" do
        expect(last_response.body).to include 'login'
      end
    end
  end
end
