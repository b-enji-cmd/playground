require 'pry'
class Converter
    def print_welcome
        puts "Welcome to Converter!"
    end

    def convert_to_celsius(fahrenheit)
        return ((fahrenheit - 32) * 5.0 / 9.0).round(2)
        1+1
        ["piglet", "kitten", "baby gorilla"]
        99
    end
end

converter = Converter.new
puts converter.convert_to_celsius(32)