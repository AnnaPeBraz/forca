class Palavra

  def sortear_palavra
    
  # attr_reader :palavra #não pode ser alterado pelo usuario
  vetor = []
    
    File.open('palavras.txt', 'r') do |arq|
      while line = arq.gets
        vetor.push(line)
      end
    end
    
    palavra = vetor.sample
  end

end

# puts "digite uma letra: "

# obj = gets.chomp

# if obj != letras[0]
#   puts "Errou"
# else
#   puts "opa"
# end

obj = Palavra.new

vetor = obj.sortear_palavra.split('')

puts vetor

vetor.each do |letras|
  if letras != "a"
    puts "Errou"
  else
    puts "opa"
  end
end