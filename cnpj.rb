#!/usr/bin/ruby

=begin
MIT License

Copyright (c) 2018 Ygor Maximo

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
=end

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
