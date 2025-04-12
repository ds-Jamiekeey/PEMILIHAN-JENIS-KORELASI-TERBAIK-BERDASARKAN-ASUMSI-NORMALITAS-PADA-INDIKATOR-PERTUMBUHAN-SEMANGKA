# PEMILIHAN JENIS KORELASI TERBAIK BERDASARKAN ASUMSI NORMALITAS PADA INDIKATOR PERTUMBUHAN SEMANGKA

# 📌 Pendahuluan
## 🚩 Latar Belakang
  - 🪴 Produksi pertanian perlu meningkat hingga 70% pada tahun 2025, sebagaimana prediksi FAO, untuk mencegah krisis pangan akibat pertumbuhan populasi dunia yang diperkirakan mencapai 9,6 miliar.
  - 🏭 Revolusi Industri 5.0 mendorong sektor pertanian untuk memanfaatkan teknologi berbasis kecerdasan buatan (AI) dan pengambilan keputusan berbasis big data agar lebih efisien dan adaptif terhadap perubahan.
  - 📊 Penggunaan data analyst sangat penting untuk mendukung pengambilan keputusan berbasis data di perusahaan pertanian, membantu petani meningkatkan produktivitas, dan menghasilkan produk unggulan seperti semangka.
## 🚩 Tujuan Penelitian
  - 🍉 mengembangkan mekanisme pemilihan jenis korelasi parametrik atau nonparametrik berdasarkan uji normalitas untuk menganalisis hubungan antar variabel pertumbuhan tanaman semangka.

# 🗒 Metodelogi Penelitian
## 🏷 Dataset
  - 🗒 Penelitian ini menggunakan dataset hasil pengukuran pertumbuhan dari 10 tanaman semangka, yang mencakup 10 indikator seperti:
    <b> tinggi tanaman, luas daun, umur berbunga, umur panen, panjang buah, diameter buah, ketebalan daging, berat buah, tingkat kemanisan (Brix), dan diameter ruang biji </b>
  - 🗒 Data penelitian bersifat numerik dan dihasilkan dari pengukuran yang dapat dioperasikan secara matematis, dengan semua variabel memiliki skala pengukuran rasio, sehingga mendukung analisis kuantitatif.
## 🖥 Jenis Analisis
  - Terdapat 2 Pilihan Pendekatan:
      - ✅ <b>Statistika Parametrik</b>
        - Statistika parametrik adalah metode analisis data yang mengasumsikan distribusi populasi tertentu, seperti distribusi normal, dan digunakan untuk data berskala interval atau rasio dengan keunggulan memberikan hasil yang lebih akurat dan efisien jika asumsi-asumsi terpenuhi.
        - ⛓️ <b>Korelasi Pearson</b>
          - Korelasi pearson acapkali dikenal sebagai korelasi product moment yang merupakan statistik uji yang berperan untuk mengukur keeratan hubungan antara dua variabel. Selain itu, korelasi pearson merupakan korelasi pendekatan parametrik yang memerlukan terpenuhinya asumsi normalitas. 
      - ❌ <b>Statistika Non Parametrik</b>
        - Statistika nonparametrik adalah metode analisis data yang tidak bergantung pada asumsi distribusi tertentu, digunakan untuk data berskala ordinal, nominal, interval, atau rasio yang tidak memenuhi asumsi normalitas, dengan fleksibilitas yang tinggi terutama untuk data kecil atau yang tidak memenuhi syarat analisis parametrik.
        - ⛓️ <b>Korelasi Rank Spearman</b>
          - Korelasi spearman rank merupakan jenis korelasi non parametrik yang tidak memerlukan data berdistribusi normal, sedangkan jenis korelasi ini digunakan ketika data berskala minimal ordinal dan dapat digunakan untuk data berskala rasio. 
  - ☑️ <b>Pengujian Normalitas Data</b>
    - Uji normalitas, seperti uji <i>Shapiro-Wilk </i>, digunakan untuk menentukan apakah data penelitian berdistribusi normal, dengan batasan ukuran sampel maksimal 50, di mana data yang mengikuti distribusi normal secara visual membentuk kurva lonceng.

# 🤖 Analyst environment 
  Analisis ini dilakukan menggunakan bahasa pemrograma <b>R</b>, dengan menggunakan <i>library</i> atau <i>package</i> sebagai berikut:
   - readxl (membuka file excel),
   - ggplot2 (visualisasi heatmap),
   - shapiro.test() (uji normalitas <i>saphiro-wilk</i>,
   - corr() (uji korelasi). 
# 📊 Hasil dan Pembahasan
## ✅ Pengujian Asumsi Normalitas
   Melalui Pengujian yang telah dilakukan menggunakan statistik uji <i> Saphiro -Wilk </i>, diperoleh keputusan sebagai berikut.
<b> Tabel Hasil Pengujian Normalitas Data </b>
<table border="1">
  <thead>
    <tr>
      <th> Variabel </th>
      <th><i> P-Value </i> </th>
      <th> Keputusan </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td> Tinggi tanaman </td>
      <td> 0,317 </td>
      <td> Terima H<sub>0</sub> </td>
    </tr>
    <tr>
      <td> Umur Berbunga </td>
      <td> 0,4621 </td>
      <td> Terima H<sub>0</sub> </td>
    </tr>
    <tr>
      <td> Panjang Buah </td>
      <td> 0,1074 </td>
      <td> Terima H<sub>0</sub> </td>
    </tr>
    <tr>
      <td> Diameter Buah </td>
      <td> 0,5804 </td>
      <td> Terima H<sub>0</sub> </td>
    </tr>
     <tr>
      <td> Umur Panen </td>
      <td> 0,5485 </td>
      <td> Terima H<sub>0</sub> </td>
    </tr>
     <tr>
      <td> Ketebalan Daging </td>
      <td> 0,08445 </td>
      <td> Terima H<sub>0</sub> </td>
    </tr>
     <tr>
      <td> Berat Buah </td>
      <td> 0,3409 </td>
      <td> Terima H<sub>0</sub> </td>
    </tr>
     <tr>
      <td> Tingkat Kemanisan (Brix) </td>
      <td> 0,1759 </td>
      <td> Terima H<sub>0</sub> </td>
    </tr>
     <tr>
      <td> Diameter Ruang Biji </td>
      <td> 0,1029 </td>
      <td> Terima H<sub>0</sub> </td>
    </tr>
  </tbody>
</table>

## ✅ Pemilihan Korelasi Terbaik
  Berdasarkan hasil pengujian yang dilakukan, seluruh data dari tiap variabel telah mengikuti sebaran normal (<b>Terima H<sub>0</sub></b>). Dengan demikian metode yang cocok adalah metode dengan pendekatan parametrik menggunakan korelasi <i>pearson </i>. 
## ✅ Analisis Korelasi 
  Keeratan hubungan antar variabel indikator pertumbuhan tanaman dapat dilihat melalui <i>heatmap</i> berikut.
# 📍 Kesimpulan
  - 📌 Pendekatan secara parametrik menggunakan korelasi <i>pearson </i> merupakan metode terbaik untuk dataset pengamatan pertumbuhan semangka.
  - 🍉 Melalui hasil pengujian korelasi, terdapat variabel yang memiliki hubungan positif yang signifikan, antara lain:
      - Panjang Buah dengan Diameter Buah
      - Panjang Buah dengan Berat Buah
      - Diameter Buah dengan Berat Buah
  - ⚖️ Untuk mendukung pertumbuhan dan hasil panen buah yang optimal, indikator panjang buah dan diameter buah dapat dijadikan parameter penting untuk memprediksi berat buah. Berat buah sering menjadi salah satu indikator utama kualitas dan nilai jual buah semangka di pasar.
