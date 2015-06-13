class UserStoriesController < ApplicationController
  def index
    @user_stories = UserStory.all
  end

  def show
    @user_story = UserStory.find(params[:id])
  end
end
