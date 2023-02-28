class JobProfile < ApplicationRecord
    belongs_to :post
    belongs_to :post_level
    belongs_to :post_title
end
