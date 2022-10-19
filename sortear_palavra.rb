class SortearPalavra
  def self.sortear
    vetor = []
    File.open('palavras.txt', 'r') do |arq|
      while line = arq.gets
        vetor.push(line)
      end
    end

    palavra = vetor.sample.split("")
    puts "Diga uma letra:"
    letra = gets.chomp

    palavra.each do |palavra|
      if letra = palavras
        puts letra
      end
    end

  end



end
