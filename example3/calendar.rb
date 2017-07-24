class Calendar
  def today_day_off?
    Date.today.saturday? || Date.today.sunday?
  end
end
