class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @tasks = Task.all
  end

  def statistics
    @tasks_completed = Task.group(:complete_task).count
    
    @tasks_completed[:Complete] = @tasks_completed[true]
    @tasks_completed[:Incomplete] = @tasks_completed[false]
    @tasks_completed.except!(true)
    @tasks_completed.except!(false)

    @tasks_per_month = Task.where(complete_task: true).group_by_month(:end_date).count
    p @tasks_per_month
    # @tasks_Task.group_by_month(:end_date).count
    @tasks_per_month = @tasks_per_month.transform_keys.with_index { |key| key.strftime("%b %Y") }
  end

  def presentation
  end
end


