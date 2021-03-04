class FileParser
    def to_binary_file(string)
        string = string.gsub(/[;]/, ' ')
        array_de_integers = []
        string.split.each do |texto|
            array_de_integers << to_binary(texto)
        end
        

        File.write("data/data.txt", "")
        array_de_integers.each_with_index do |valor, index|
            if index < (array_de_integers.count - 1)
                File.write("data/data.txt", valor + "\n", mode: "a")
            else
                File.write("data/data.txt", valor, mode: "a")
            end
        end
    end

    def to_binary(number)
        binary = ""
        number = number.to_i
        while number != 0 do
            if number % 2 == 0 
                binary = '0' + binary
            else 
                binary = '1' + binary
            end
            number /= 2
        end
        binary 
    end
end