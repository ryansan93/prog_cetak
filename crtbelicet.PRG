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
use crtbelicetdt
dele all
appe from crtbelicet.TXT deli
use crtbelicetdt
*sum jumlah*harga to vtot_dpp
go top
vprs_ppn=v_prs_ppn
*vtot_bruto=tot_bruto
*vtot_disc=tot_disc
*vtot_dpp=vtot_bruto-vtot_disc
vtot_ppn=tot_ppn
*vtot_ppn=vtot_dpp*0.11
vby_kirim=by_kirim
*vnil_piut=nil_piut
*vnil_piut=vtot_dpp+vby_kirim+vtot_ppn
vnoret=no_retur
vnolpb=no_lpb
vtglret=tgl_retur
vnoinv=no_invoice
ltgl=left(vtglret,4)
rtgl=substr(vtglret,9,2)
cmon=val(substr(vtglret,6,2))
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
*repl no_faktur with vnofak
*endfor i
mxrow=42

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
      repl no_retur with vnoret
   endf
else
   for i=mcnn+1 to mxrow
      appe blank
      repl no_retur with vnoret
   endf
endi
coun to ccc
if ccc=0
*if mod(ccc,mxrow)=0
      appe blank
      repl no_retir with vnoret
endi
go top
hl=1
it=0
itt=0
lhal=0
do while not eof()
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
*repo form crtbelicet prev nocons
*repo form crtbelicet to print prompt nocons
repo form crtbelicet to print
close data
