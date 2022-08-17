class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    self.auditions.map do |a|
      a.actor
    end
  end

  def locations
    self.auditions.map do |a|
      a.location
    end
  end

  def lead
    if !auditions.empty?
      auditions.first
    else
      "no actor has been hired for this role"
    end
  end

  def understudy
    if !auditions.empty?
      auditions.second
    else
      "no actor has been hired for understudy for this role"
    end
  end
end
