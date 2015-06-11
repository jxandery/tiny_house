require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'belongs to one user story' do
   us1 = UserStory.create(name: "My Story")
   cat1 = us1.categories.create(name: "Early childhood")

   expect('My Story').to eq(cat1.user_story.name)
  end
end
