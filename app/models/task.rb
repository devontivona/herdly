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
  
end
