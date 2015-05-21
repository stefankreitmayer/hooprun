class NonRepetitiveRandomNumberGenerator
  def next(maximum)
    raise ArgumentError.new('maximum must be > 0') unless maximum > 0
    loop do
      result = Random.rand(maximum)
      if result != @previous_result
        @previous_result = result
        return result
      end
    end
  end
end

