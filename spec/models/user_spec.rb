require 'spec_helper'

describe User do
  let!(:user){ FactoryGirl.create(:user) }


  it 'should create a user' do
    user.should be_valid
  end

  context "when validate required fields" do
    it 'should require a name' do
      user = FactoryGirl.build(:user, name: nil)
      user.should_not be_valid
      user.errors_on(:name).should == ["não pode ficar em branco"]
    end

    it 'should require a email' do
      user = FactoryGirl.build(:user, email: nil)
      user.should_not be_valid
      user.errors_on(:email).should == ["não pode ficar em branco"]
    end

    it 'should require a birthday' do
      user = FactoryGirl.build(:user, birthday: nil)
      user.should_not be_valid
      user.errors_on(:birthday).should == ["não pode ficar em branco"]
    end
  end

  it 'should have a account ' do
    account = FactoryGirl.build(:account)
    account2 = FactoryGirl.build(:account)
    user.accounts = [ account, account2 ]
    user.should be_valid
    user.accounts.size.should == 2
    Account.first.users.size.should == 1
  end



end
