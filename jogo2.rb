File.open('palavras.txt', 'r') do |arq|
  vetor = []
  while line = arq.gets
      vetor.push(line)
  end
  puts vetor
end
