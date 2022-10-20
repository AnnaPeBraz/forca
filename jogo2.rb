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
acerto = 0
puts secreto
fim = false

tam.times do
  vetor << "_ "
end

print "A palavra secreta é: #{vetor.join} \n"


while ((chances > 0)) do
  puts "Chances restantes: #{chances}"
  puts "Escolha uma letra: "
  tentativa = gets.chomp

  i = 0

  secreto.each_char do |letra|
    if vetor[i] == "_ "
      if letra == tentativa
        vetor[i] = tentativa
        fim = true
        acerto += 1
        puts vetor.join
        # puts acerto
      # else
      #   chances -= 1
      #   puts chances
      end
    end
    i+=1
  end

  if fim == false
    chances -=1
  end

  puts "acerto #{acerto}"
  fim = false

  
  # if chances == 0 
  #   puts "perdeu otario"
  #   fim = true
  # else
  #   puts "ae cuzao, certo mizeravi"
  #   fim = true
  # end

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
