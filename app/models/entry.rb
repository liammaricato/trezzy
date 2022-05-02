# == Schema Information
#
# Table name: entries
#
#  id          :bigint           not null, primary key
#  date        :date
#  value       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  cashflow_id :bigint           not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_entries_on_cashflow_id  (cashflow_id)
#  index_entries_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (cashflow_id => cashflows.id)
#  fk_rails_...  (user_id => users.id)
#
class Entry < ApplicationRecord
  belongs_to :cashflow
  belongs_to :user
end
