# This is Qrystal class to build SQL
class Qrystal
  @q = ""

  # SELECT query
  def select(table)
    @q = "SELECT * FROM #{table}"
    self
  end

  # WHERE statement
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

  # return query as string
  def string
    @q
  end
end
