module ApplicationHelper
  def format_date_to_str(date)
    date.strftime '%d/%m/%Y'
  end
end
