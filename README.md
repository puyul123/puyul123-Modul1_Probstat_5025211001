# puyul123-Modul1_Probstat_5025211001
Praktikum 1 Probstat 5025211001 Andika Laksana Putra

**1. Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.** 

a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi  sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)

kita dapat melakukan penyelesaian soal ini dengan bantuan fungsi `dgeom(x, p. log=FALSE)`. dengan rincian sebagai berikut :
```R
x = 3
p = 0,2
dgeom(x, p, log=FALSE)
```
sehingga didapatkan output :
```
0.1024
``` 