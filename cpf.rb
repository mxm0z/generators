#!/usr/bin/ruby

def cpf
  basenum = []
  9.times { basenum << rand(10) }
  
  pesos = Array(2..10).reverse 
  
  n = (0...basenum.length).inject(0) { |a, b| a + basenum[b] * pesos[b] }
  
  dv1 = if n%11 < 2; 0;       
  else; 11-(n%11); end
   
  basenum << dv1
  
  pesos.unshift(11)
  n2 = (0...basenum.length).inject(0) { |r, i| r + basenum[i] * pesos[i] }
  dv2 = if n2%11 < 2; 0;
  else; 11-(n2%11); end
  cpf = basenum << dv2
  
  return cpf.inspect
end

puts cpf
