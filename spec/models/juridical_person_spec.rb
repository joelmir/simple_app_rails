require 'spec_helper'

describe JuridicalPerson do
  let!(:juridical_person){FactoryGirl.create(:juridical_person)}

  it 'should create a Juridical person' do
    juridical_person.should be_valid
  end

  it 'should require a name' do
    juridical_person = FactoryGirl.build(:juridical_person ,name: nil)
    juridical_person.should_not be_valid
    juridical_person.errors_on(:name).should == ["não pode ficar em branco"]
  end

  it 'should require a cnpj' do
    juridical_person = FactoryGirl.build(:juridical_person ,cnpj: nil)
    juridical_person.should_not be_valid
    juridical_person.errors_on(:cnpj).should == ["não pode ficar em branco"]
  end

  it 'should have a account ' do
    account = FactoryGirl.build(:account)
    juridical_person.should be_valid
    juridical_person.account.should_not nil
  end

end
