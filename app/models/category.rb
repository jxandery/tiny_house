class Category < ActiveRecord::Base
  belongs_to :user_story
end
