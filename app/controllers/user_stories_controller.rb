class UserStoriesController < ApplicationController
  def index
    @user_stories = UserStory.all
  end
end
