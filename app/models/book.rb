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
class Book < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  mount_uploader :cover, CoverUploader

  belongs_to :user
end
