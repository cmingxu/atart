class BookmarksController < ApplicationController
  before_filter :authenticate_user!

  def create
    bookmarkable = params[:what].capitalize.constantize.find params[:id]
    current_user.bookmarks.create :bookmarkable => bookmarkable if !current_user.bookmarks.exists?(:bookmarkable => bookmarkable)
    redirect_to :back
  end
end
