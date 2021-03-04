class DoubleStrand
  def complementary_strip(strip)
    com_strip = ""
    conversion_hash = {'A' => 'T', 'T' => 'A', 'C' => 'G', 'G' => 'C' }
    strip.chars.map { |c| com_strip += conversion_hash[c] }
    com_strip
  end
end
