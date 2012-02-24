class CommunityController < ApplicationController
  before_filter :authenticate, :only => [:index]
  def index
    @users = User.all
  end
end
