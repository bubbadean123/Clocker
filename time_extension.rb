module TimeExtension

  def find_monday
    t = Time.now
    until t.monday? do
      # 24 hours worth of seconds
      t -= 86400
    end
    return t
  end

end

class Time
  include TimeExtension
end
