# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  email      :string
#  name       :string
#  password   :string
#  user_type  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  chapter_id :bigint           not null
#
# Indexes
#
#  index_users_on_chapter_id  (chapter_id)
#
# Foreign Keys
#
#  fk_rails_...  (chapter_id => chapters.id)
#
class User < ApplicationRecord
  belongs_to :chapter
  has_many :entries
end
