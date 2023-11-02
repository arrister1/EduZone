class CourseData {
  String name;
  String category;
  String rating;
  String grade;
  String description;
  String imageAsset;

  CourseData({
    required this.name,
    required this.category,
    required this.rating,
    required this.grade,
    required this.description,
    required this.imageAsset,
  });
}

var courseScience = [
  CourseData(
    name: 'Mathematics',
    category: 'Natural Science',
    rating: '4.8',
    grade: '10-12',
    description:
        'Program pembelajaran yang memfokuskan pada konsep-konsep matematika, termasuk aljabar, geometri, kalkulus, dan statistik. Peserta kursus akan mengembangkan kemampuan matematika, memecahkan masalah kompleks, dan memahami aplikasi matematika dalam berbagai disiplin ilmu, seperti fisika, ekonomi, dan ilmu komputer.',
    imageAsset: 'images/img_science/matem.png',
  ),
  CourseData(
    name: 'Physics',
    category: 'Natural Science',
    rating: '4.6',
    grade: '10-12',
    description:
        'Program yang mendalami pembelajaran prinsip-prinsip fisika, termasuk hukum gerak, termodinamika, elektromagnetisme, dan mekanika kuantum. Peserta kursus akan memahami sifat alam semesta, pergerakan benda, energi, dan konsep fundamental dalam fisika modern.',
    imageAsset: 'images/img_science/fisika.png',
  ),
  CourseData(
    name: 'Chemistry',
    category: 'Natural Science',
    rating: '4.9',
    grade: '10-12',
    description:
        'Program ini secara intensif mempelajari prinsip-prinsip kimia, termasuk struktur atom, reaksi kimia, ikatan molekul, dan analisis kimia. Peserta kursus akan memahami sifat dan perilaku zat kimia, serta aplikasinya dalam industri, kedokteran, dan ilmu material.',
    imageAsset: 'images/img_science/kimia.png',
  ),
  CourseData(
    name: 'Biology',
    category: 'Natural Science',
    rating: '4.8',
    grade: '10-12',
    description:
        'Program pembelajaran ini memfokuskan pada studi makhluk hidup, termasuk ilmu sel, genetika, ekologi, dan evolusi. Peserta kursus akan mendalami pengetahuan tentang organisme hidup, proses kehidupan, dan dampaknya terhadap ekosistem dan manusia.',
    imageAsset: 'images/img_science/bio.png',
  ),
];

var courseSocial = [
  CourseData(
    name: 'Geography',
    category: 'Social Science',
    rating: '4.7',
    grade: '10-12',
    description:
        'Pembelajaran berfokus pada studi tentang permukaan bumi, iklim, lingkungan fisik, populasi, dan distribusi sumber daya. Peserta kursus akan memahami geografi fisik dan manusia serta dampaknya pada pola penggunaan lahan dan perkembangan kota.',
    imageAsset: 'images/img_social/geo.png',
  ),
  CourseData(
    name: 'Economy',
    category: 'Social Science',
    rating: '4.8',
    grade: '10-11',
    description:
        'Program pembelajaran yang mempelajari ilmu ekonomi, termasuk mikroekonomi dan makroekonomi. Peserta kursus akan memahami konsep ekonomi, permintaan-pasokan, harga, pertumbuhan ekonomi, kebijakan fiskal, dan dampaknya terhadap masyarakat dan perekonomian.',
    imageAsset: 'images/img_social/ekonomi.png',
  ),
  CourseData(
    name: 'History',
    category: 'Social Science',
    rating: '4.4',
    grade: '10-12',
    description:
        'Pada program ini akan mempelajari secara detail peristiwa masa lalu, perkembangan budaya, politik, ekonomi, dan sosial. Peserta juga akan menjelajahi periode bersejarah, tokoh penting, dan perubahan sejarah yang membentuk dunia saat ini.',
    imageAsset: 'images/img_social/sejarah.png',
  ),
  CourseData(
    name: 'Sociology',
    category: 'Social Science',
    rating: '4.1',
    grade: '11-12',
    description:
        'Akan memfokuskan pada studi masyarakat, interaksi manusia, struktur sosial, budaya, dan fenomena sosial. Peserta kursus akan memahami konsep seperti stratifikasi sosial, norma, nilai, konflik, dan perkembangan masyarakat.',
    imageAsset: 'images/img_social/sosio.png',
  ),
  CourseData(
    name: 'Accounting',
    category: 'Social Science',
    rating: '4.3',
    grade: '11-12',
    description:
        'Memfokuskan pada prinsip-prinsip akuntansi, pengukuran keuangan, pelaporan, dan analisis laporan keuangan. Peserta akan memahami bagaimana mengelola catatan keuangan, menghitung laba-rugi, dan membuat keputusan keuangan yang cerdas untuk bisnis atau organisasi.',
    imageAsset: 'images/img_social/akuntansi.png',
  ),
];

var courseLang = [
  CourseData(
    name: 'Indonesian',
    category: 'Language',
    rating: '5.0',
    grade: '10-12',
    description:
        'Program pembelajaran intensif yang dirancang untuk membantu peserta course memahami, berbicara, membaca, dan menulis dalam bahasa Indonesia. Ini memfokuskan pada pengembangan keterampilan komunikasi dalam bahasa Indonesia dan memahami budaya Indonesia.',
    imageAsset: 'images/img_lang/indo.png',
  ),
  CourseData(
    name: 'English',
    category: 'Language',
    rating: '5.0',
    grade: '10-12',
    description:
        'Dirancang untuk meningkatkan kemampuan berbicara, menulis, membaca, dan mendengarkan dalam bahasa Inggris. Cocok untuk non-penutur asli bahasa Inggris yang ingin meningkatkan keterampilan bahasa mereka untuk keperluan akademik, bisnis, atau komunikasi internasional.',
    imageAsset: 'images/img_lang/eng.png',
  ),
  CourseData(
    name: 'Japanese',
    category: 'Language',
    rating: '4.9',
    grade: '10-11',
    description:
        'Menyediakan pelajaran dalam bahasa Jepang bersama native speaker yang mencakup tata bahasa, kosakata, serta keterampilan berbicara, menulis, membaca, dan mendengarkan dalam bahasa Jepang. Course membantu peserta untuk berkomunikasi dalam bahasa Jepang dan memahami budaya Jepang.',
    imageAsset: 'images/img_lang/jepang.png',
  ),
  CourseData(
    name: 'Germany',
    category: 'Language',
    rating: '4.0',
    grade: '10-12',
    description:
        'Program pembelajaran yang mencakup latihan tata bahasa, kosakata, serta berbicara, menulis, membaca, dan mendengarkan dalam bahasa Jerman. Course ini membantu peserta memahami bahasa dan budaya Jerman bersama mentor berpengalaman.',
    imageAsset: 'images/img_lang/jerman.png',
  ),
];

var courseList = [
  CourseData(
    name: 'Mathematics',
    category: 'Natural Science',
    rating: '4.8',
    grade: '10-12',
    description:
        'Program pembelajaran yang memfokuskan pada konsep-konsep matematika, termasuk aljabar, geometri, kalkulus, dan statistik. Peserta kursus akan mengembangkan kemampuan matematika, memecahkan masalah kompleks, dan memahami aplikasi matematika dalam berbagai disiplin ilmu, seperti fisika, ekonomi, dan ilmu komputer.',
    imageAsset: 'images/img_science/matem.png',
  ),
  CourseData(
    name: 'Physics',
    category: 'Natural Science',
    rating: '4.6',
    grade: '10-12',
    description:
        'Program yang mendalami pembelajaran prinsip-prinsip fisika, termasuk hukum gerak, termodinamika, elektromagnetisme, dan mekanika kuantum. Peserta kursus akan memahami sifat alam semesta, pergerakan benda, energi, dan konsep fundamental dalam fisika modern.',
    imageAsset: 'images/img_science/fisika.png',
  ),
  CourseData(
    name: 'Chemistry',
    category: 'Natural Science',
    rating: '4.9',
    grade: '10-12',
    description:
        'Program ini secara intensif mempelajari prinsip-prinsip kimia, termasuk struktur atom, reaksi kimia, ikatan molekul, dan analisis kimia. Peserta kursus akan memahami sifat dan perilaku zat kimia, serta aplikasinya dalam industri, kedokteran, dan ilmu material.',
    imageAsset: 'images/img_science/kimia.png',
  ),
  CourseData(
    name: 'Biology',
    category: 'Natural Science',
    rating: '4.8',
    grade: '10-12',
    description:
        'Program pembelajaran ini memfokuskan pada studi makhluk hidup, termasuk ilmu sel, genetika, ekologi, dan evolusi. Peserta kursus akan mendalami pengetahuan tentang organisme hidup, proses kehidupan, dan dampaknya terhadap ekosistem dan manusia.',
    imageAsset: 'images/img_science/bio.png',
  ),
  CourseData(
    name: 'Geography',
    category: 'Social Science',
    rating: '4.7',
    grade: '10-12',
    description:
        'Pembelajaran berfokus pada studi tentang permukaan bumi, iklim, lingkungan fisik, populasi, dan distribusi sumber daya. Peserta kursus akan memahami geografi fisik dan manusia serta dampaknya pada pola penggunaan lahan dan perkembangan kota.',
    imageAsset: 'images/img_social/geo.png',
  ),
  CourseData(
    name: 'Economy',
    category: 'Social Science',
    rating: '4.8',
    grade: '10-11',
    description:
        'Program pembelajaran yang mempelajari ilmu ekonomi, termasuk mikroekonomi dan makroekonomi. Peserta kursus akan memahami konsep ekonomi, permintaan-pasokan, harga, pertumbuhan ekonomi, kebijakan fiskal, dan dampaknya terhadap masyarakat dan perekonomian.',
    imageAsset: 'images/img_social/ekonomi.png',
  ),
  CourseData(
    name: 'History',
    category: 'Social Science',
    rating: '4.4',
    grade: '10-12',
    description:
        'Pada program ini akan mempelajari secara detail peristiwa masa lalu, perkembangan budaya, politik, ekonomi, dan sosial. Peserta juga akan menjelajahi periode bersejarah, tokoh penting, dan perubahan sejarah yang membentuk dunia saat ini.',
    imageAsset: 'images/img_social/sejarah.png',
  ),
  CourseData(
    name: 'Sociology',
    category: 'Social Science',
    rating: '4.1',
    grade: '11-12',
    description:
        'Akan memfokuskan pada studi masyarakat, interaksi manusia, struktur sosial, budaya, dan fenomena sosial. Peserta kursus akan memahami konsep seperti stratifikasi sosial, norma, nilai, konflik, dan perkembangan masyarakat.',
    imageAsset: 'images/img_social/sosio.png',
  ),
  CourseData(
    name: 'Accounting',
    category: 'Social Science',
    rating: '4.3',
    grade: '11-12',
    description:
        'Memfokuskan pada prinsip-prinsip akuntansi, pengukuran keuangan, pelaporan, dan analisis laporan keuangan. Peserta akan memahami bagaimana mengelola catatan keuangan, menghitung laba-rugi, dan membuat keputusan keuangan yang cerdas untuk bisnis atau organisasi.',
    imageAsset: 'images/img_social/akuntansi.png',
  ),
  CourseData(
    name: 'Indonesian',
    category: 'Language',
    rating: '5.0',
    grade: '10-12',
    description:
        'Program pembelajaran intensif yang dirancang untuk membantu peserta course memahami, berbicara, membaca, dan menulis dalam bahasa Indonesia. Ini memfokuskan pada pengembangan keterampilan komunikasi dalam bahasa Indonesia dan memahami budaya Indonesia.',
    imageAsset: 'images/img_lang/indo.png',
  ),
  CourseData(
    name: 'English',
    category: 'Language',
    rating: '5.0',
    grade: '10-12',
    description:
        'Dirancang untuk meningkatkan kemampuan berbicara, menulis, membaca, dan mendengarkan dalam bahasa Inggris. Cocok untuk non-penutur asli bahasa Inggris yang ingin meningkatkan keterampilan bahasa mereka untuk keperluan akademik, bisnis, atau komunikasi internasional.',
    imageAsset: 'images/img_lang/eng.png',
  ),
  CourseData(
    name: 'Japanese',
    category: 'Language',
    rating: '4.9',
    grade: '10-11',
    description:
        'Menyediakan pelajaran dalam bahasa Jepang bersama native speaker yang mencakup tata bahasa, kosakata, serta keterampilan berbicara, menulis, membaca, dan mendengarkan dalam bahasa Jepang. Course membantu peserta untuk berkomunikasi dalam bahasa Jepang dan memahami budaya Jepang.',
    imageAsset: 'images/img_lang/jepang.png',
  ),
  CourseData(
    name: 'Germany',
    category: 'Language',
    rating: '4.0',
    grade: '10-12',
    description:
        'Program pembelajaran yang mencakup latihan tata bahasa, kosakata, serta berbicara, menulis, membaca, dan mendengarkan dalam bahasa Jerman. Course ini membantu peserta memahami bahasa dan budaya Jerman bersama mentor berpengalaman.',
    imageAsset: 'images/img_lang/jerman.png',
  ),
];
