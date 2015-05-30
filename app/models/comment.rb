class Comment < ActiveRecord::Base
  belongs_to :frontpages
  belongs_to :users
end