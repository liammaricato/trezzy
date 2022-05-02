# == Schema Information
#
# Table name: chapters
#
#  id         :bigint           not null, primary key
#  city       :string
#  founded_at :date
#  name       :string
#  number     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Chapter < ApplicationRecord
  has_many :cashflows
  has_many :users

  after_create :create_main_cashflow

  def create_main_cashflow
    Cashflow.create(
      chapter_id: self.id,
      name: "Fluxo de caixa",
      description: "O fluxo principal do Capítulo. Representa o caixa atual presente na conta."
    )
  end
end
