# puyul123-Modul1_Probstat_5025211001
Praktikum 1 Probstat 5025211001 Andika Laksana Putra

# 1. Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

**a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi  sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)**

kita dapat melakukan penyelesaian soal ini dengan bantuan fungsi `dgeom(x, p. log=FALSE)`. dengan rincian kode sebagai berikut :
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

soal ini dapat diselesaikan dengan mencari random distribusi geometrik menggunakan `rgeom(n, p)` dan disimpan pada variabel ranGeom. Setelah itu kita mencari rerata dari ranGeom menggunakan `mean(ranGeom == 3)` dengan rincian kode sebagai berikut:
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

dari hasil pada poin a dengan peluang 1.024 dengan poin b dengan peluang 0.1035 dapat disimpulkan bahwa poin b memiliki peluang lebih besar dibandingkan dengan poin a karena poin b merupakan distribusi geometrik bersifat acak, sedangkan poin a menghasilkan peluang tetap karena distribusi geomteriknya selalu konstan dan sama.

**d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama**

dalam membuat Histrogram untuk distribusi Geometrik, kita bisa menggunakan fungsi `hist()` dengan parameter fungsi distribusi yang sebelumnya yaitu `rgeom(n, p)` dengan rincian kode sebagai berikut :
```R
hist(rgeom(n, p),
     main="Histogram Geometrik",
     xlim = c(0,30),
     xlab="X",
     col="yellow",
     ylab = "Frequency")
```
sehingga didapatkan gambar histogram distribusi Geometrik seperti dibawah ini :

![1D](https://user-images.githubusercontent.com/110555492/195099683-764a48c2-cde1-4993-9d72-ce4a44a3f7de.png)

**e. Nilai Rataan (??) dan Varian (????) dari Distribusi Geometrik.**

Untuk mencari rerata (??) dan varians (????), kita dapat menggunakan rumus rataan dan varians dari distribusi Geometrik yakni :
`?? = 1/p` dan `???? = (1 - p)/p^2`, dengan rincian kode sebagai berikut :
```R
rataan <- 1/p
varians <- (1 - p)/p^2
```
sehingga dihasilkan rataan dan varians yakni :
```
rataan = 5
varians = 20
```
![1E](https://user-images.githubusercontent.com/110555492/195088903-a67a1c5c-6bed-413c-945f-cfdb528fcc58.jpeg)

# 2. Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

**a. Peluang terdapat 4 pasien yang sembuh.**

Kita dapat melakukan penyelesaian soal ini menggunakan distribusi binomial dengan fungsi 
```
dbinom(n(A), n(S), p)

keterangan :
n(A) = Kardinalitas Event
n(S) = Kardinalitas Sample Space
p = Probabilitas
``` 
dengan rincian kode sebagai berikut :
```R
nA <- 4
nS <- 20
p <- 0.2
dbinom(nA, nS, p)
```
sehingga dihasilkan output :
```
0.2181994
```
![2A](https://user-images.githubusercontent.com/110555492/195103092-bebdde6e-ade9-4b12-ae94-3d3909458976.png)

**b. Gambarkan grafik histogram berdasarkan kasus tersebut.**

dalam membuat Histrogram untuk distribusi Binomial, kita bisa menggunakan fungsi `hist()` dengan parameter fungsi yaitu `rbinom(nA, nS, p)` dengan rincian kode sebagai berikut :
```R
hist(rbinom(nA, nS, p),
     main="Histogram Binomial",
     xlim = c(1,7),
     xlab="X",
     col="yellow",
     ylab = "Frequency")
```
sehingga didapatkan gambar histogram distribusi Binomial sebagai berikut :
![2B](https://user-images.githubusercontent.com/110555492/195109876-9b6bc7d1-24fb-4d9b-a4a8-65e5e0db039a.png)

**c. Nilai Rataan (??) dan Varian (????) dari Distribusi Binomial.**

untuk mendapatkan Rataan dan Varian dari Distribusi Binomial, kita memerlukan kedua rumus tersebut dari distribusi Binomial, yakni:
```
?? = n(S) * p
???? = n(s) * p * q

Keterangan:
n(s) = Kardinalitas Sample Space
p = Probabilitas sukses
q = (1 - p) = Probabilitas gagal
```
dengan rincian kode sebagai berikut:
```R
q <- 1 - p
rataan <- nS * p
varian <- nS * p * q
```
sehingga didapatkan hasil rataan dan varian sebagai berikut:
```
rataan = 4
varian = 3.2
```
![2C](https://user-images.githubusercontent.com/110555492/195112504-80a9020e-1bd0-4b2a-9439-18415d4c736d.png)

# 3. Diketahui data dari  sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

**a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?**

untuk melakukan penyelesaian soal ini dapat menggunakan distribusi Poison dengan fungsi `dpois(nA, lamda)` dengan rincian kode sebagai berikut:
```R
nA <- 6
lamda <- 4.5
dpois(nA, lamda, log=FALSE)
```
sehingga dihasilkan output :
```
0.1281201
```
![3A](https://user-images.githubusercontent.com/110555492/195120124-b85b3ce3-3746-4ab2-84c5-3c8f1625ce6f.png)

**b. simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini  selama setahun (n = 365)**

untuk membuat Histrogram untuk distribusi Binomial, kita bisa menggunakan fungsi `hist()` dengan parameter fungsi yaitu 
```
rpois(n, lamda)

Keterangan :
n = jumlah hari
lamda = rata-rata historis
``` 
dengan rincian kode sebagai berikut :
```R
n <- 365
hist(rpois(n, lamda),
     main="Histogram Poisson",
     xlim = c(0,13),
     xlab="X",
     col="yellow",
     ylab = "Frequency")
```
sehingga dihasilkan gambar histogram distribusi Poisson sebagai berikut:
![3B](https://user-images.githubusercontent.com/110555492/195120143-b7d3908e-7b48-4965-949b-7a9408e55cbb.png)

**c. dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan**

 Poin a menggunakan fungsi `dpois()` sehingga peluang yang dihasilkan akan selalu konstan dan sama. berbeda dengan poin b menggunakan fungsi `rpois()`, peluang yang dihasilkan sesuai dengan random eksperimen sehingga hasilnya akan berbeda-beda. dari poin a dan poin b dapat disimpulkan bahwa keduanya memiliki peluang yang tidak jauh beda apabila hasil pada poin a kita asumsikan untuk 365 hari.

**d. Nilai Rataan (??) dan Varian (????) dari Distribusi Poisson.** 

untuk mendapatkan nilai rataan dan varian dari distribusi Poission kita harus mengetahui kedua rumus tersebut, yaitu:
```
?? = lamda
???? = lamda
```
dengan rincian kode sebagai berikut:
```R
rataan <- lamda
varian <- lamda
```
sehingga dihasilkan rataan dan varian yaitu:
```
rataan = 4.5
varian = 4.5
```
![3C](https://user-images.githubusercontent.com/110555492/195120158-a17d2140-4ee3-4d9b-aae8-7455b00e4987.png)

# 4. Diketahui nilai x = 2 dan v = 10. Tentukan:

**a. Fungsi Probabilitas dari Distribusi Chi-Square.**

Untuk melakukan penyelesaian dari distribusi Chi-Square bisa menggunakan bantuan fungsi `dchisq()` sehingga dapat diselesaikan dengan rincian kode sebagai berikut:
```R
x <- 2
v <- 10
dchisq(x, v, log=FALSE)
```
sehingga didapatkan output :
```
0.007664155
```
![4A](https://user-images.githubusercontent.com/110555492/195126975-4b758b08-b92f-4ba9-a567-bdaae4cf94e7.png)

**b. Histogram dari Distribusi Chi-Square dengan 100 data random.**

Untuk membuat Histrogram untuk distribusi Chi-Square, kita bisa menggunakan fungsi `hist()` dengan parameter fungsi yaitu `rchisq(n, v)` dengan rincian kode sebagai berikut :
```R
n <- 100
hist(rchisq(n, v),
     main="Histogram Chi-Square",
     xlim = c(0,35),
     xlab="X",
     col="yellow",
     ylab = "Frequency")
```
sehingga hasil dari histogram distribusi Chi-Square akan terlihat seperti dibawah ini:
![4B](https://user-images.githubusercontent.com/110555492/195128154-4e9365f6-ce4f-4496-96da-63e30503a84c.png)

**c. Nilai Rataan (??) dan Varian (????) dari Distribusi Chi-Square.**
Untuk mencari rerata (??) dan varians (????), kita dapat menggunakan rumus rataan dan varians dari distribusi Geometrik yakni :
```
?? = v
???? = 2 * v
```
dengan rincian kode sebagai berikut :
```R
rerata <- v
varians <- 2 * v
```
Sehingga didapatkan rerata dan varians yaitu :
```
rerata = 10
varians = 20
```
![4C](https://user-images.githubusercontent.com/110555492/195140137-cfde2b40-156b-49b0-bdd3-0d927526f66d.png)

# 5. Diketahui bilangan acak (random variable) berdistribusi exponential (?? = 3). Tentukan

**a. Fungsi Probabilitas dari Distribusi Exponensial**

untuk melakukan penyelesaian ini, kita dapat memanfaatkan fungsi `dnorm()` dengan parameter `x = 10, ?? = 3`, dengan rincian kode sebagai berikut:
```R
x <- 10
lamda <- 3
dexp(x, lamda, log=FALSE)
```
sehingga didapatkan output yaitu:
```
2.807287e-13
```
![5A](https://user-images.githubusercontent.com/110555492/195298578-2d177a7e-9f9b-49d2-b539-1223f7a3ade9.png)

**b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random**

Untuk membuat Histogram Distribusi Eksponensial untuk `n = 10, 100, 1000, dan 10000`, dibutuhkan 4 histogram dengan permasing-masing dari nilai n. dibantu dengan fungsi `hist()` dengan parameter fungsi `rexp(n, ??)` dengan ?? = 3, dengan rincian kode sebagai berikut:
```R
set.seed(1)
hist(rexp(n <- 10, x),
     main="Histogram Exponential Distribution",
     xlim = c(0,5),
     xlab="X",
     col="yellow",
     ylab = "Frequency")
hist(rexp(n <- 100,x), 
     main="Histogram Exponential Distribution",
     xlim = c(0,5),
     xlab="X",
     col="yellow",
     ylab = "Frequency")
hist(rexp(n <- 1000, x), 
     main="Histogram Exponential Distribution",
     xlim = c(0,5),
     xlab="X",
     col="yellow",
     ylab = "Frequency")
hist(rexp(n <- 10000,x), 
     main="Histogram Exponential Distribution",
     xlim = c(0,5),
     xlab="X",
     col="yellow",
     ylab = "Frequency")
par(mfrow = c(2,2))
```
sehingga didapatkan 4 gambar histogram sebagai berikut
![5B](https://user-images.githubusercontent.com/110555492/195279873-918d356d-80eb-47b9-b28f-a34e3009ae93.png)

**c. Nilai Rataan (??) dan Varian (????) dari Distribusi Exponensial untuk n = 100 dan ?? = 3**

untuk mencari rataan dan varian dari distribusi Exponensial, kita bisa menggunakan bantuan fungsi `mean()` dan `var()` dengan paramater fungsi 
```R 
ranExp = rexp(n = 100, rate = 3)
```
dengan rincian kode sebagai berikut:
```R
rataan <- mean(ranExp)
varian <- var(ranExp)
```
sehingga didapatkan hasil rerata dan varian yaitu :
```
rerata = 0.3435588
varian = 0.0974443
```
![5C](https://user-images.githubusercontent.com/110555492/195276158-e5834485-bfb1-4e0b-ac1c-d46642e16563.png)

# 6. Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

**a. Fungsi Probabilitas dari Distribusi Normal P(X1 ??? x ??? X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).**
```
Keterangan : 
X1 = Dibawah rata-rata 
X2 = Diatas rata-rata
Contoh data :
1,2,4,2,6,3,10,11,5,3,6,8
rata-rata = 5.083333
X1 = 5
X2 = 6
```
penyelesaian ini dapat dilakukan dengan bantuan fungsi `dnorm()` dengan parameter seperti pada soal yaitu: `n = 100 data, mean = 50, dan sd(standar deviasi) = 8` selanjutnya untuk mencari Z-Score dapat menggunakan rumus :
```
Z = (x - mean)/sd
```
sehingga rincian kodenya akan seperti berikut:
```R
set.seed(1)
n <- 100
mean <- 50
sd <- 8
ranNormal <- rnorm(n, mean , sd)
x1 <- floor(mean(ranNormal))
x2 <- ceiling(mean(ranNormal))
z1 <- (x1 - mean)/sd
z2 <- (x2 - mean)/sd
plot(ranNormal, col = "red", pch = 16)
```
sehingga dihasilkan gambar plot distribusi Normal dengan random eksperimen dibawah ini:
![5A](https://user-images.githubusercontent.com/110555492/195325920-18db3de1-7630-43c1-b675-a1a1ad7a5abc.png)

selanjutnya, hasil dari z1 dan z2 yaitu:
```
z1 = 0
z2 = 0.125
```
![5A2](https://user-images.githubusercontent.com/110555492/195326312-5bcfc9fd-4d10-40e2-8cdf-2d1c8324028f.png)

**b. Generate Histogram dari Distribusi Normal dengan breaks 50 dan** 
```
format penamaan: 
NRP_Nama_Probstat_{Nama Kelas}_DNhistogram
Contoh :
312312312_Rola_Probstat_A_DNhistogram
```

dalam membuat histogram distribusi normal dibutuhkan bantuan fungsi `hist()` dengan paramter fungsi `rnorm(n = 100, mean = 50, sd = 8, dengan rincian kode sebagai berikut :
```R
set.seed(1)
hist(rnorm(n = 100, mean = 50, sd = 8),
     main="5025211001_Andika Laksana Putra_Probstat_A_DNhistogram",
     xlim = c(20,80),
     xlab="X",
     col="yellow",
     ylab = "Frequency",
     breaks = 50)
```
sehingga didapatkan gambar histogram distribusi Normal sebagai berikut:
![6B](https://user-images.githubusercontent.com/110555492/195292988-7da48809-f5c6-4aff-80ae-6b94becf82ba.png)

**c. Nilai Varian (????) dari hasil generate random nilai Distribusi Normal.**
- **Gunakan set.seed(1)**
- **Gunakan fungsi bawaan R**

untuk mencari nilai varian dari generate random nilai distribusi Normal bisa menggunakan bantuan fungsi `var()` dengan parameter fungsi :
```R
ranNormal = rnorm(n = 100, ?? = 50, ?? = 8)
```
dengan rincian kode sebagai berikut:
```R
varian <- var(ranNormal)
```  
sehingga didapatkan hasil varian yaitu:
```
varian = 51.63277
```
![6C](https://user-images.githubusercontent.com/110555492/195286007-87ba41cc-acdd-4e4e-81e0-4781a31b28a3.png)