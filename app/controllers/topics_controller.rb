class TopicsController < ApplicationController
  before_action :set_sidebar_topics
  layout 'blog'
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
    if logged_in?(:site_admin)
      @blogs = @topic.blogs.page(params[:page]).per(5).recent
    else
      @blogs = @topic.blogs.published.page(params[:page]).per(5).recent
    end
  end

  private

  def set_sidebar_topics
    @sidebar_topics = Topic.with_blogs
  end
end
