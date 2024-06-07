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
use cpocetdt
dele all
appe from cpocet.TXT deli
use cpocetdt
go top
vtot_bruto=tot_bruto
vtot_disc=tot_disc
vtot_ppn=tot_ppn
vby_kirim=by_kirim
vtotal=nilai
vnopo=no_po
ctgl=tgl_po
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
for i=cn+1 to 30
appe blank
repl no_po with vnopo
endfor i
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
*repo form cpocet prev nocons
*repo form cpocet to print prompt nocons
repo form cpocet to print
close data
