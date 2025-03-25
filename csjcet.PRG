set talk off
set safe off
set date brit
set cent on
set delete on
set color to w+/n
set conf on
*set sysmenu off
*do awal.mpr
set stat bar off
set hour to 24
set confirm on
SET EXCLU on
use csjcetdt
dele all
appe from csjcet.TXT deli
use csjcetdt

go top

vnosj=no_sj
ctgl=tgl_sj
ltgl=left(ctgl,4)
rtgl=substr(ctgl,9,2)
cmon=val(substr(ctgl,6,2))
mtgl=''
if cmon=1
   mtgl='Jan'
endi
if cmon=2
   mtgl='Feb'
endi
if cmon=3
   mtgl='Mar'
endi
if cmon=4
   mtgl='Apr'
endi
if cmon=5
   mtgl='Mei'
endi
if cmon=6
   mtgl='Jun'
endi
if cmon=7
   mtgl='Jul'
endi
if cmon=8
   mtgl='Ags'
endi
if cmon=9
   mtgl='Sep'
endi
if cmon=10
   mtgl='Okt'
endi
if cmon=11
   mtgl='Nop'
endi
if cmon=12
   mtgl='Des'
endi
ctanggal=rtgl+' '+mtgl+' '+ltgl
coun to cn
*for i=cn+1 to 30
*appe blank
*repl no_sj with vnosj
*endfor i
mxrow=40

coun to cnn
mcnn=mod(cnn,mxrow)
xcnn=cnn-mcnn
if cnn<mxrow
mcnn=cnn
xcnn=cnn
endi
if mcnn>4
   for i=1 to mxrow-mcnn
      appe blank
      repl no_sj with vnosj
   endf
else
   for i=mcnn+1 to mxrow
      appe blank
      repl no_sj with vnosj
   endf
endi
coun to ccc
if ccc=0
*if mod(ccc,10)=0
      appe blank
      repl no_sj with vnosj
endi
go top
hl=1
it=0
itt=0
lhal=0
do while not eof()
   *if not empty(nama_nota)
   *   repl nama_brg with nama_nota
   *endi
   it=it+1
   itt=itt+1
   if itt>xcnn
      xi=0
   else
      xi=mxrow
   endi
   if it>mxrow
      hl=hl+1
      it=1
   endi
   repl hal with hl,itno with itt
   lhal=hal
   skip
endd
inde on str(hal,1)+str(itno,2) tag urut
dele for itno>cnn
*sum nilai to vtotal
*nilbil=vtotal
*bilang1=""
*bilang2=""
*pj1=120
*pj2=120
*do bilang
*vbilang=rtrim(bilang1)+' '+bilang2
*inde on str(hal,1)+str(itno,3) tag urut
go top
*repo form csjcet prev nocons
*repo form csjcet to print prompt nocons
repo form csjcet to print
close data
