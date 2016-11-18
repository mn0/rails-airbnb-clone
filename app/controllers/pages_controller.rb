class PagesController < ApplicationController
  def home
    @three_spaces = StorageSpace.all.sample(3)
  end

  def dashboard
    @user = current_user
  end
end
