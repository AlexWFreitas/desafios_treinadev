class GeneticInheritance
  def predict_proportions(first_individual, second_individual)
    array = mixer(first_individual,second_individual)
    array = calc_perc(array)
  end

  def mixer(str1, str2)
    array = []
    str1.chars do |v1|
      str2.chars do |v2|
        if v2 == v2.upcase && v1 == v1.downcase
          array << v2 + v1
        else
          array << v1 + v2
        end
      end
    end
    array
  end

  def calc_perc(array)
    array_com_porc = []
    array.uniq.each do |v|
      array_com_porc << [v, "#{array.count(v)}/#{array.length}".to_r]
    end
    array_com_porc
  end
end
