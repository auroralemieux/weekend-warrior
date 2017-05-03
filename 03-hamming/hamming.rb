class Hamming

  def self.compute(strand1, strand2)
    raise ArgumentError.new("Strands must be the same length to compare") if strand1.length != strand2.length

    how_many = strand1.length
    distance = 0
    i = 0
    how_many.times do
      if strand1[i] != strand2[i]
        distance += 1
      end
      i += 1
    end

    return distance
  end



end
