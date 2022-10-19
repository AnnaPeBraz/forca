class SorteiaPalavra
  attr_reader :palavra #não pode ser alterado pelo usuario

  File.open('palavras.txt', 'r') do |arq|
    vetor = []
    while line = arq.gets
      vetor.push(line)
    end
  end
  
  palavra = @vetor

end

#testando separar a palavra
palavra = "anna"
letras = palavra.split('')

puts letras