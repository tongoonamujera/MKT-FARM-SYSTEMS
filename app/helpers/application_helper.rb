module ApplicationHelper
  def authourize_user(user)
    a = ClientPayment.valid.pluck(:Company_Name)
    if a.include?(user.Company_Name)
      true
    else
      false
    end
  end

  def deduction_totals(employee)
    DeductionTable.where("employee_name =?", 'Taurai Meki').order(:nssa, :nec, :payee, :cash_requests)
  end
end
