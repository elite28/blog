module ApplicationHelper
  def coderay(text)
    text.gsub(/\<code( lang="(.+?)")?\>(.+?)\<\/code\>/m) do
      CodeRay.scan($3, $2).div(:css => :class)
    end
  end

  def page_title(title)
    if @title
      @title
    else
      title
    end
  end
  def categories
    Category.find(:all)
  end

  def posts_num
    Post.find(:all).length
  end

  def comments_num
    Comment.find(:all).length
  end
end
