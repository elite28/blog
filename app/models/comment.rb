class Comment < ActiveRecord::Base
  belongs_to :post
  acts_as_tree

  def name_display
    if self.name!=""
      self.name
    else
      "匿名用户"
    end
  end
end
