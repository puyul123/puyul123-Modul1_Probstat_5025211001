# puyul123-Modul1_Probstat_5025211001
Praktikum 1 Probstat 5025211001 Andika Laksana Putra

# 1. Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

**a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi  sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)**

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
![1A](https://user-images.githubusercontent.com/110555492/195040256-8fa403df-e131-4e1d-a305-0f061b557478.jpeg)

**b. mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )**

soal ini dapat diselesaikan dengan mencari random distribusi geometrik menggunakan `rgeom(n, p)` dan disimpan pada variabel ranGeom. Setelah itu kita mencari rerata dari ranGeom menggunakan `mean(ranGeom == 3)` dengan rincian sebagai berikut:
```R
n <- 10000
ranGeom = rgeom(n, p)
mean(ranGeom == 3)
```
sehingga didapatkan hasil :
```
0.1035
```
![1B](https://user-images.githubusercontent.com/110555492/195076418-7efe3caa-165f-46b2-b84f-a1890caee516.jpeg)

**c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?**

dari hasil pada poin a dengan peluang 1.024 dengan poin b dengan peluang 0.1035 dapat disimpulkan bahwa poin b memiliki peluang lebih besar dibandingkan dengan poin a karena poin b merupakan distribusi geometrik bersifat acak, sedangkan poin a menghasilkan peluang tetap karena distribusi geomteriknya selalu sama
