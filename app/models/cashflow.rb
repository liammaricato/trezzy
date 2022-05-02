# == Schema Information
#
# Table name: cashflows
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  chapter_id  :bigint           not null
#
# Indexes
#
#  index_cashflows_on_chapter_id  (chapter_id)
#
# Foreign Keys
#
#  fk_rails_...  (chapter_id => chapters.id)
#
class Cashflow < ApplicationRecord
  belongs_to :chapter
end
