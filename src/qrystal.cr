class Qrystal
  @q = ""

  def select(table)
    @q = "SELECT * FROM #{table}"
    self
  end

  def where(condition)
    cond = ""
    condition.each_with_index do |key, val, index|
      if index > 0
        if val.class == String
          cond = "#{cond} AND #{key}=\"#{val}\""
        else
          cond = "#{cond} AND #{key}=#{val}"
        end
      elsif
        if val.class == String
          cond = "#{cond} #{key}=\"#{val}\""
        else
          cond = "#{cond} #{key}=#{val}"
        end
      end
    end
    @q = "#{@q} WHERE#{cond}"
    self
  end

  def string
    @q
  end
end

q = Qrystal.new
puts q.select("users").where({ nama: "robi", kelas: 2 }).string()