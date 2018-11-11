#!/usr/bin/ruby

def cnpj
   basenum = []
   12.times { basenum << rand(10) }
   pesos = [5,4,3,2,9,8,7,6,5,4,3,2]
   n = (0...basenum.length).inject(0) { |a, b| a + basenum[b] * pesos[b] }
   dv1 = if n%11 < 2; 0;
         else; 11-(n%11); end
   basenum << dv1
   pesos.unshift(6)
   n2 = (0...basenum.length).inject(0) { |a, b| a + basenum[b] * pesos[b] }
   dv2 = if n2%11 < 2; 0;
         else; 11-(n2%11); end
   cnpj = basenum << dv2
   return cnpj.inspect
end
puts cnpj
