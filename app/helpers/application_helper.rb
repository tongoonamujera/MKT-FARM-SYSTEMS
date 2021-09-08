module ApplicationHelper
  def authourize_user(user)
    a = ClientPayment.valid.pluck(:Company_Name)
    if a.include?(user.Company_Name)
      true
    else
      false
    end
  end

  def employee_already_exists(employee)
    a = Timebook.check_record_existance
    if a.include?(employee)
      true
    end
  end

  def employee_deductions(employee)
    DeductionTable.created_within_month(employee)
  end
end
