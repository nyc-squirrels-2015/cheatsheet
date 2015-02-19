require_relative '../../spec_helper'

class UserSpec
  describe 'user' do
    let(:user){User.create(username: 'monkey', email: "abc@monkey.com", password: "123", password_confirmation: "123")}
    let(:category){Category.create(name: "Math", user_id: user.id)}
    let(:formula){Formula.create(category_id: category.id, name: "Algebra", content: "a+b=c")}

    before do
      user
      category
      formula
    end

    it 'should respond to category' do
      expect(user.categories.first).to be_a Category
    end
  end
end
