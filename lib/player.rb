class Player
    attr_accessor :name
    attr_accessor :sign
    def initialize(name, sign)
        @name = name
        @sign = sign
    end

    def place_sign
        inputs = []
        puts "Choisis ta ligne : A, B ou C"
        char_input = gets.chomp.to_s
        inputs.push(char_input)
        puts "Maintenant, la colonne : 1, 2 ou 3"
        number_input = gets.chomp
        inputs.push(number_input)
        puts "Tu as choisi la case #{inputs[0]}#{inputs[1]}"
        return inputs
    end
end
