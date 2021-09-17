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

  def deduction_record_exists(employee)
    a = DeductionTable.check_deduction_existance
    if a.include?(employee)
      true
    end
  end

  def employee_deductions(employee)
    a = DeductionTable.created_within_month(employee)
    b = DeductionTable.where("DATE_PART('month', created_at) = ? AND DATE_PART('year', created_at) =?", Date.today.month, Date.today.year).where('employee_name =?', employee).pluck(:allowance).first
    a - b
  end

  def quantity(types)
    a = Store.where('types =?', types).pluck(:quantity).inject(:+)
    b = InputStoresUsage.where('types =? AND deleted =?', types, false).pluck(:quantity_used).inject(:+)
    a - b
  end
end
