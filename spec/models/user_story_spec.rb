require 'rails_helper'

RSpec.describe UserStory, type: :model do
  it 'has many categories' do
    us1 = UserStory.create(name: "Field of Dreams")
    cat1 = us1.categories.create(name: "Squash your dreams")
    cat2 = us1.categories.create(name: "Corny Dreams")

    expect(2).to eq(us1.categories.count)
    expect("Corny Dreams").to eq(cat2.name)
    expect("Squash your dreams").to eq(cat1.name)
  end
end
