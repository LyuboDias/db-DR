class GeneralPaediatric < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
end
