class Timer
  # TODO: your code goes here!
  def initialize
    @hrs = 0
    @min = 0
    @sec = 0
  end

  def time_string
    if @hrs < 10
      hrs = "0"+@hrs.to_s
    else
      hrs = @hrs.to_s
    end
    if @min < 10
      min = "0"+@min.to_s
    else
      min = @min.to_s
    end
    if @sec < 10
      sec = "0"+@sec.to_s 
    else
      sec = @sec.to_s
    end
    "#{hrs}:#{min}:#{sec}"
  end

  def seconds
    0
  end

  def seconds=(num= 0)
    @hrs += (num / 3600).floor
    num -= @hrs * 3600
    @min += (num / 60).floor
    num -= @min * 60
    @sec = num
    time_string
  end
end 