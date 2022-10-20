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


obj = Palavra.new
secreto = obj.sortear_palavra
tam = secreto.size
# vetor = secreto.split('')
vetor =[]

chances = 6
acerto = false


tam.times do
  vetor << "_ "
end

print "A pakavra secreta é: #{vetor.join} \n"











# while errou < 6 do
#   puts "Digite uma letra: "
#   tentativa = gets.chomp

#   vetor.each do |letras|
#     if letras != tentativa
#       acertou +=1
#     else
#       errou +=1
#     end
#   end
# end

# puts "acertou #{acertou} vezes"

# puts "errou #{errou} vezes"
