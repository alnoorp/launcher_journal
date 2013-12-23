require 'spec_helper'

describe Entry do
  let(:blanks) { ['', nil] }

  it { should_not have_valid(:title).when(*blanks) }
  it { should_not have_valid(:description).when(*blanks) }

  it { should have_valid(:title).when('My dat at launch academy') }
  it { should have_valid(:description).when('some sample text') }
  it { should have_valid(:category_id).when(1) }

  it { should belong_to(:category) }

  it 'should have title' do
    entry = create(:entry)
    expect(entry.title).to eql('My first day at Launch Academy')
  end

  it 'should have a category when set' do
    category = create(:category)
    entry = create(:entry)
    entry.category_id = category.id
    entry.save
    expect(entry.category_id).to eql(category.id)
  end

  it 'should not have a category when not set' do
    entry = create(:entry)
    expect(entry.category_id).to be_nil
  end

end
