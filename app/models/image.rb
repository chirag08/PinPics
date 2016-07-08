class Image < ActiveRecord::Base
  belongs_to :tag
  belongs_to :board
end
