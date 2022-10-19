# require_relative 'sortear_palavra'

class AdivinharPalavra
  attr_reader :palavra

  # def initialize
  #   @palavra = SortearPalavra.sortear
  # end

  # def mostrar_palavra
  #   @palavra
  # end
  #
  # def separar_palavra(palavra)
  #   forca = palavra.split("")
  #
  # end
end

class SortearPalavra
  attr_reader :palavra
  def sortear
    vetor = []
    File.open('palavras.txt', 'r') do |arq|
      while line = arq.gets
        vetor.push(line)
      end
    puts vetor
    # palavra = vetor
  end
end
  vetor = SortearPalavra.new
  puts vetor
  #
  # palavras = vetor
  # palavras = palavras.sample.chomp #.split("")
  # separa = palavra.split("")
  # print " #{separa}\n" #por algum motivo, aqui ta pegando um \n na array, por isso o size ta dando 6 @_@
  #   #tirei o \n com o .chomp
  #
  #   puts "Diga uma letra:"
  #   letra = gets.chomp
  #   corda = []
  #   for i in (0..separa.length - 1)
  #     if letra == separa[i]
  #       corda.push(separa[i])
  #       puts corda
  #     else
  #       puts "nao foi"
  #     end
  #   end

    # for let in palavra do
    #   if letra = palavra[let]
    #     puts letra
    #   end
    # end

    # palavra.each do |palavra|
    #   if letra = palavra
    #     puts letr

  end
# end

# teste = AdivinharPalavra.new

# while teste != 0
