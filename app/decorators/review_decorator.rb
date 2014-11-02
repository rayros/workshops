class ReviewDecorator < Draper::Decorator
  delegate_all

  def author
    "#{user.firstname} #{user.lastname}"
  end

  def date
    updated_at.strftime("%d-%m-%y")
  end
end
