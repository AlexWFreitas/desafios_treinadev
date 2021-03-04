class Arrays
  def self.multiplica_antecessor_predecessor(array)
    array_final = []
    array.each_index do |index|
      if index == 0
        array_final << array[index] * array[index+1]
      elsif index == (array.length()-1)
        array_final << array[index-1] * array[index]
      else
        array_final << array[index-1] * array[index+1]
      end
    end
    array_final
  end
end

# Site bugou, estou dando um commit extra para aceitar o código...