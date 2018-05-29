class Post < ActiveRecord::Base
    has_many :post_attachments
    accepts_nested_attributes_for :post_attachments
    # Nested attributes allow you to save attributes
    # on assoicated records through the parent
end
