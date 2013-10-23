module ApplicationHelper
  def current_user
    session[:user]
  end

  # capture method to save a block of content from the view and immediately return it, but only if a user is currently logged in. Otherwise, the content inside the block will not be visible.

  def user_content(&block)
    capture(&block) if current_user
  end
end