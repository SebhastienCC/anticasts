class SubscriptionPlan < ApplicationRecord
  include Payola::Plan

  has_many :users

  def redirect_path(subscription)
    # you can return any path here, possibly referencing the given subscription
    '/'
  end
end
