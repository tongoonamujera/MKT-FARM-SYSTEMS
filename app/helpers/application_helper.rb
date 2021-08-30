module ApplicationHelper
  def user_status(current_user)
    if  ClientPayment.all.valid.include?(current_user.Company_Name)
      current_user.status = true
    end
  end
end
