class Bike
  def initialize(minutes)
    @minutes = minutes
  end

  def member(time)
    if time < 30
      5
    elsif time > 30 and time < 240
      15
    elsif time > 240 and time < 480
      5 + 7 * 10 + 2 * 20
    elsif time > 480
      5 + 7 * 10 + 8 * 20 + 80
    end
  end

  def nonmember(time)
    if time < 240
      10 * 4
    else time > 240 and time < 480
      10 * 8 + 2 * 20
    end
  end

end

