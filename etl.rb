class ETL
  def self.transform(old)
    old.each_pair.with_object({}) do |(count, letters), output|
      letters.each do |letter|
        output[letter.downcase] = count
      end
    end
  end
end

module BookKeeping
  VERSION = 1
end
