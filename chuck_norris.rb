module ChuckNorris
  class Unary
    class << self
      def chuckify(input)
        encode(message_to_binary(input))
      end

      def message_to_binary(input)
        binary_input = ""
        input.each_char do |char|
          val = char.ord.to_s(2)
          #add missing byte
          if val.size < 7
            val =  ("0" * (7 - val.size) ) + val
          end
          binary_input << val
        end
        binary_input
      end

      def encode(binary_input)
        input_cripted = ""
        pivot = 0
        while pivot < binary_input.size
          nb_occurence = count_same_bits(binary_input[pivot], binary_input, pivot)
          if binary_input[pivot].to_i == 1
            input_cripted << "0 " + "0" * nb_occurence + " "
          else
            input_cripted << "00 " + "0" * nb_occurence + " "
          end
          pivot += nb_occurence
        end
        input_cripted.chop
      end

      def count_same_bits(bit_value, input, start_index)
        #TODO raise error if necessary
        return nil if start_index > input.size
        current_index = start_index
        char = input[current_index]
        count = 0
        while char.to_i == bit_value.to_i && current_index < input.size
          count += 1
          current_index += 1
          char = input[current_index]
        end
        count
      end
    end
  end
end
