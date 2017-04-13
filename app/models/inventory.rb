class Inventory < ApplicationRecord
  belongs_to :user, optional:true


  def percentage_time_finished
    if Date.today > finish
      return 0
    elsif Date.today < start
      return 100
    else
      time_passed = (Date.today - start).to_i
      all_time = (finish - start).to_i
      percentage_time_done = (time_passed * 100)/ all_time
      return percentage_time_done
    end 
  end
end
 

 