require 'spec_helper'

describe Category do
  let(:blanks) { ['', nil] }

  it { should_not have_valid(:name).when(*blanks) }
  it { should validate_uniqueness_of(:name) }
  it { should have_valid(:name).when('ruby on rails') }

  it { should have_many(:entries) }

  it 'should have unique category names' do
    category = Category.create(name: 'ruby')
    expect(Category.create(name: 'ruby')).to raise_error
  end

end
