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
secreto = obj.sortear_palavra.chomp #cooquei o chomp aqui pq tava contando com a porcaria do enter nessa joça
tam = secreto.size
# vetor = secreto.split('')
vetor =[]

chances = 6
acerto = tam
puts secreto
puts tam

tam.times do
  vetor << "_ "
end

print "A palavra secreta é: #{vetor.join} \n"


while (chances > 0) && (acerto <= tam) do

  puts "Escolha uma letra: "
  tentativa = gets.chomp

  i = 0

  secreto.each_char do |letra|
    if vetor[i] == "_ "
      if letra == tentativa
        vetor[i] = tentativa
        acerto -= 1
        puts vetor.join
      else
        chances += 1
      end
    end

    i+=1
  end

end

if chances == 0 
  puts "perdeu otario"
else
  puts "ae cuzao, certo mizeravi"
end









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
