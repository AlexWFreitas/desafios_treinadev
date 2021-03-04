class Arrays
  def self.multiplica_indices(array)
    array.each_index  do |index|
      array[index] *= index
    end
  end
end
