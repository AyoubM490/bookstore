# == Schema Information
#
# Table name: books
#
#  id          :integer          not null, primary key
#  cover       :string
#  description :text
#  name        :string
#  slug        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
# Indexes
#
#  index_books_on_slug  (slug) UNIQUE
#
require "test_helper"

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
