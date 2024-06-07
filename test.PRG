coun to cnn
mcnn=mod(cnn,10)
xcnn=cnn-mcnn
if cnn<10
mcnn=cnn
xcnn=cnn
endi
if mcnn>4
   for i=1 to 10-mcnn
      appe blank
      repl no_faktur with vnofaktur
   endf
else
   for i=mcnn+1 to 10
      appe blank
      repl no_faktur with vnofaktur
   endf
endi
coun to ccc
if ccc=0
*if mod(ccc,10)=0
      appe blank
      repl no_faktur with vnofaktur
endi
go top
hl=1
it=0
itt=0
lhal=0
do while not eof()
   if not empty(nama_nota)
      repl nama_brg with nama_nota
   endi
   it=it+1
   itt=itt+1
   if itt>xcnn
      xi=0
   else
      xi=10
   endi
   if it>10
      hl=hl+1
      it=1
   endi
   repl hal with hl,itno with itt
   lhal=hal
   skip
endd
inde on str(hal,2)+str(itno,2) tag urut
