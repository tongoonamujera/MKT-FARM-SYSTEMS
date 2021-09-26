module ApplicationHelper
  def authourize_user(user)
    a = ClientPayment.valid.pluck(:company_name)

    a.include?(user.company_name) ? true : false
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

  def quantity(types, input)
    a = Store.where('types =? AND input_name =?', types,input).pluck(:quantity).inject(:+)
    b = InputStoresUsage.where('types =? AND deleted =?', types, false).where('input_name =?', input).pluck(:quantity_used).inject(:+)
    if b.nil?
      b=0
    end
    a - b
  end

  def icon(icon, text = nil)
    html = "<i class=\"fa fa-#{icon}\"></i>"
    html << " #{text.to_s.html_safe}" if text
    html.html_safe
  end

  def active_season_available
    a = SetSeason.active_season.size

    a > 0 ? true : false
  end

  def season_active
    a = SetSeason.active_season.pluck(:season)[0]

    a.nil? ? nil : a
  end

  def current_date
    x = DateTime.now.day
    a = DateTime.now.strftime("%A")
    b = DateTime.now.strftime("%B")
    c = DateTime.now.strftime("%Y")
    d = "#{a} #{x} #{b} #{c}"
    d
  end

  def greeting_text
    a = ["Good Morning #{current_user.username.capitalize}",
      "Good Afternoon #{current_user.username.capitalize}",
      "Good Evening #{current_user.username.capitalize}"
    ]
    b = Time.now.hour

    0 <= b && b < 12 ? a[0] : 12 <= b && b < 15 ? a[1] : a[2]
  end

  def admin_users
    a = 'tongoonamujera@gmail.com'
    b = 'tntmukotekwa@gmail.com'
    c = current_user.email

    c == a || c == b ? true : false
  end

  def c_quantity(cereal)
    a = Harvesting.where('cereal_name =?', cereal).pluck(:kgs_done).flatten.compact.inject(:+)
    a.nil? ? a = 0 : a
    b = CerealStore.where('cereal_name =?', cereal).pluck(:quantity).flatten.compact.inject(:+)
    b.nil? ? b = 0 : b
    c = a + b
    d = Rationing.where('cereal_name =?', cereal).pluck(:kgs_issued).flatten.compact.inject(:+)
    d.nil? ? d = 0 : d
    e = c - d
    e
  end

  def user_farmnames(user)
    a = user.company_name
    b = User.where("company_name =?", a).pluck(:id).flatten
    c = FarmName.where("user_id IN (?)", b).pluck(:user_farm_name)

    c
  end
end
