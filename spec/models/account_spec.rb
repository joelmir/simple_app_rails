require 'spec_helper'

describe Account do
  let!(:account){ FactoryGirl.create(:account)}

  it 'should create a account' do
    account.should be_valid
  end
  context "when validate required fields" do
    it 'should require a name' do
      account = FactoryGirl.build(:account, name: nil)
      account.should_not be_valid
      account.errors_on(:name).should == ["não pode ficar em branco"]
    end

    it 'should require a expiration date' do
      account = FactoryGirl.build(:account, expiration_date: nil)
      account.should_not be_valid
      account.errors_on(:expiration_date).should == ["não pode ficar em branco"]
    end


  end
  it 'should have a user ' do
    user = FactoryGirl.build(:user)
    user2 = FactoryGirl.build(:user)
    account.users = [user ,user2]
    account.should be_valid
    account.users.size.should == 2
    User.first.accounts.size.should == 1
  end

  it 'should have a jurical person ' do
    juridical_person = FactoryGirl.build(:juridical_person)
    juridical_person2 = FactoryGirl.build(:juridical_person)
    account.juridical_people = [ juridical_person, juridical_person2 ]
    account.should be_valid
    account.juridical_people.size.should == 2
    JuridicalPerson.first.account.should == account
  end

end
