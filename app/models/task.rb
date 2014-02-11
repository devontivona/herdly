# == Schema Information
#
# Table name: tasks
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  location   :string(255)
#  reward     :integer
#  due_date   :date
#  created_at :datetime
#  updated_at :datetime
#

class Task < ActiveRecord::Base
  include ActionView::Helpers::NumberHelper
  
  def due_date_s
    due_date.blank? ? "No Due Date" : due_date.strftime("%m/%d/%Y")
  end

  def reward_s
    reward.blank? ? "No Reward" : number_to_currency(reward)
  end

  def location_s
    location.blank? ? "No Location" : location
  end
  
end
