class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    self.auditions.map { |a| a.actor }
  end

  def locations
    self.auditions.map do |a|
      a.location
    end
  end

  def lead
    self.auditions.find do |audition|
      if audition.hired == true
        audition.hired
      else
        puts "no actor has been hired for this role"
      end
    end
  end

  def understudy
    understudy = self.auditions.find_all{|audition| audition.hired == true}[1]
    if understudy
      understudy
    else
      puts "no actor has been hired for understudy for this role"
    end
  end
end
