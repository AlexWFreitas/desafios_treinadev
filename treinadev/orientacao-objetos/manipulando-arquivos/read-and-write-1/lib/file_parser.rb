class FileParser

    # reverse no string para começar do valor menor
    # chars para criar um array com valor e index de facil acesso
    # each_with_index para iterar

    def to_integer(bnum)
        integer = 0
        bnum.reverse.chars.each_with_index do |value, index|
            if value == '1'
                integer += 2 ** index
            end
        end
        integer
    end

    def convert(file)
        string = File.read(file)
        string = string.gsub(/[\n]/, " ")
        integer = 0
        string.split.each do |valor|
            integer += to_integer(valor)
        end
        integer 
    end
end
