-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jun 2023 pada 04.55
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(2) NOT NULL,
  `u` varchar(15) NOT NULL,
  `p` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `u`, `p`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_config`
--

CREATE TABLE `r_config` (
  `id` int(1) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `pimpinan` varchar(100) NOT NULL,
  `pimpinan_nip` varchar(100) NOT NULL,
  `petugas` varchar(100) NOT NULL,
  `petugas_nip` varchar(100) NOT NULL,
  `profil` longtext NOT NULL,
  `denda` int(9) NOT NULL,
  `maks_buku` int(2) NOT NULL,
  `maks_hari` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `r_config`
--

INSERT INTO `r_config` (`id`, `nama`, `alamat`, `logo`, `pimpinan`, `pimpinan_nip`, `petugas`, `petugas_nip`, `profil`, `denda`, `maks_buku`, `maks_hari`) VALUES
(0, 'Perpustakaan Masjid Al Huda', 'Sumoroto, Sidoharjo, Samigaluh, Kulon Progo', 'LOGO_TPA_ALHUDA_2.jpg', 'Nur Akhwan', '12345678', 'Jos Bus, Ph.D', '12345689', 'Selamat Datang Di Perpustakaan Masjid Al Huda<br><div>Username : Admin</div><div>Pass : admin</div>', 500, 14, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_jenis`
--

CREATE TABLE `r_jenis` (
  `id` int(4) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `r_jenis`
--

INSERT INTO `r_jenis` (`id`, `nama`) VALUES
(1, 'Buku'),
(2, 'Majalaha'),
(3, 'Surat Kabar'),
(5, 'CD/DVD'),
(6, 'Tabloida'),
(7, 'buku');

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_kelas`
--

CREATE TABLE `r_kelas` (
  `id` int(4) NOT NULL,
  `nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `r_kelas`
--

INSERT INTO `r_kelas` (`id`, `nama`) VALUES
(0, 'Karya Umum'),
(100, 'Filsafat dan psikologi'),
(200, 'Agama'),
(300, 'Ilmu sosial'),
(400, 'Bahasa'),
(500, 'Sains dan matematika'),
(600, 'Teknologi'),
(700, 'Kesenian dan rekreasi'),
(800, 'Sastra'),
(900, 'Sejarah dan geografi'),
(1000, 'e');

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_libur`
--

CREATE TABLE `r_libur` (
  `id` int(4) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `r_libur`
--

INSERT INTO `r_libur` (`id`, `tanggal`, `nama`) VALUES
(1, '2013-08-17', 'Hari Kemerdekaan Republik Indonesia'),
(2, '2015-03-09', 'Senin'),
(3, '2015-03-10', 'rabu'),
(5, '2013-08-17', 'minggu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_lokasi`
--

CREATE TABLE `r_lokasi` (
  `id` int(4) NOT NULL,
  `nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `r_lokasi`
--

INSERT INTO `r_lokasi` (`id`, `nama`) VALUES
(6, '1A1'),
(7, 'hhhh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` varchar(8) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_hp` char(13) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_agama`
--

CREATE TABLE `tb_agama` (
  `id_agama` int(2) NOT NULL,
  `agama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_agama`
--

INSERT INTO `tb_agama` (`id_agama`, `agama`) VALUES
(2, 'Islam'),
(3, 'Konghucu'),
(4, 'Budha'),
(5, 'Katholik'),
(6, 'Hindu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `id_anggota` varchar(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `id_kelas` int(2) NOT NULL,
  `id_agama` int(2) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `hp` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_anggota`
--

INSERT INTO `tb_anggota` (`id_anggota`, `nama`, `id_kelas`, `id_agama`, `jenis_kelamin`, `hp`, `alamat`, `ket`) VALUES
('ANGG000003', 'Rahma Destriani', 26, 2, 'P', '2974927492', 'nsfshf', ''),
('ANGG000004', 'Aditya Nobert', 27, 2, 'L', '085248931126', 'Indralaya', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id_buku` char(15) NOT NULL,
  `ISBN` varchar(20) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `id_kategori` int(3) NOT NULL,
  `id_penerbit` int(3) NOT NULL,
  `id_pengarang` int(3) NOT NULL,
  `no_rak` int(2) NOT NULL,
  `thn_terbit` year(4) NOT NULL,
  `stok` int(3) NOT NULL,
  `ket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_buku`
--

INSERT INTO `tb_buku` (`id_buku`, `ISBN`, `judul`, `id_kategori`, `id_penerbit`, `id_pengarang`, `no_rak`, `thn_terbit`, `stok`, `ket`) VALUES
('1', '313789173', 'Algoritma dan Pemrograman 1', 6, 1, 7, 6, '2007', 5, ''),
('10', '', 'Buku Hari-hari terpanjang menjelang mundurnya Presiden Soeharto dan beberapa peristiwa terkait / Jam', 12, 9, 19, 7, '2007', 5, ''),
('11', '', 'Buku Soekarno Kisah Hidup Bapak Bangsa', 17, 10, 12, 7, '2010', 7, ''),
('12', '', 'Buku Kitab pedoman pengobatan Nabi ', 11, 11, 20, 7, '2019', 8, ''),
('13', '', 'Buku Resep SIMPLE COOKING', 14, 12, 21, 7, '2015', 9, ''),
('14', '', 'Buku 40 Resep Masakan Ala Dona`s Delight', 14, 5, 22, 7, '2020', 6, ''),
('15', '', 'Buku ALGORITMA dan PEMROGRAMAN', 6, 4, 23, 7, '2012', 9, ''),
('16', '9786232055575', 'BUKU ANALISIS DATA DENGAN STATISTIKA NONPARAMETRIK', 5, 13, 24, 5, '2010', 6, ''),
('17', '9789790079205', 'Buku Omnibus Law', 15, 15, 28, 7, '2021', 5, ''),
('18', '9786024754532', 'Buku Politik Hukum Pidana', 15, 5, 1, 7, '2010', 6, ''),
('19', '', 'Buku Dasar-dasar Ilmu politik', 15, 5, 30, 7, '2008', 9, ''),
('2', '94729742', 'Pemrograman Web ', 6, 5, 8, 6, '2009', 7, 'https://drive.google.com/file/d/1MAlXLc0x8DYELdCKP'),
('3', '27492749', 'Pemrograman Java', 6, 6, 9, 6, '2013', 6, ''),
('4', '313789150', 'Make Money', 9, 1, 7, 7, '2020', 8, ''),
('5', '', 'Buku Zoza from kasmania ', 10, 5, 14, 6, '2020', 7, ''),
('6', '', 'Frozen 2 : The Enchanted Forest', 10, 16, 15, 7, '2019', 6, ''),
('7', '', 'Dongeng Klasik Dunia Sepanjang Masa', 10, 8, 16, 7, '2023', 9, ''),
('8', '', 'BUKU KRISTEN MUHAMMADIYAH', 11, 9, 17, 6, '2020', 6, ''),
('9', '', 'Buku Wiji Thukul: teka-teki orang hilang', 17, 5, 18, 5, '2016', 7, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_denda`
--

CREATE TABLE `tb_denda` (
  `id_denda` int(6) NOT NULL,
  `denda` int(6) NOT NULL,
  `status` enum('A','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_denda`
--

INSERT INTO `tb_denda` (`id_denda`, `denda`, `status`) VALUES
(6, 500, 'A'),
(7, 1000, 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_detail_buku`
--

CREATE TABLE `tb_detail_buku` (
  `id_detail_buku` int(11) NOT NULL,
  `id_buku` char(15) NOT NULL,
  `no_buku` int(4) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_detail_buku`
--

INSERT INTO `tb_detail_buku` (`id_detail_buku`, `id_buku`, `no_buku`, `status`) VALUES
(92, '1', 0, '1'),
(93, '1', 1, '1'),
(94, '1', 2, '1'),
(95, '1', 3, '1'),
(96, '1', 4, '1'),
(97, '2', 0, '1'),
(98, '2', 1, '1'),
(99, '2', 2, '0'),
(100, '2', 3, '1'),
(101, '2', 4, '1'),
(102, '2', 5, '1'),
(103, '2', 6, '1'),
(104, '3', 0, '1'),
(105, '3', 1, '1'),
(106, '3', 2, '0'),
(107, '3', 3, '1'),
(108, '3', 4, '1'),
(109, '3', 5, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_detail_pinjam`
--

CREATE TABLE `tb_detail_pinjam` (
  `id_detail_pinjam` int(11) NOT NULL,
  `id_pinjam` int(11) NOT NULL,
  `id_buku` char(15) NOT NULL,
  `no_buku` int(4) NOT NULL,
  `flag` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_detail_pinjam`
--

INSERT INTO `tb_detail_pinjam` (`id_detail_pinjam`, `id_pinjam`, `id_buku`, `no_buku`, `flag`) VALUES
(98, 90, '3', 2, 1),
(99, 88, '2', 2, 0),
(100, 91, '3', 2, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(3) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `kategori`) VALUES
(5, 'MATEMATIKA'),
(6, 'Pemrograman'),
(7, 'Multimedia'),
(9, 'Self Development'),
(10, 'Dongeng dan Fantasi'),
(11, 'Agama dan Filsafat'),
(12, 'Politik dan Kenegaraan'),
(14, 'Masak'),
(15, 'Hukum '),
(17, 'Biografi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(2) NOT NULL,
  `kelas` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `kelas`) VALUES
(26, '090311818235666464'),
(27, '09031181823129');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kembali`
--

CREATE TABLE `tb_kembali` (
  `id_kembali` int(11) NOT NULL,
  `id_pinjam` int(11) NOT NULL,
  `tgl_dikembalikan` date NOT NULL,
  `terlambat` int(2) NOT NULL,
  `id_denda` int(6) NOT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_kembali`
--

INSERT INTO `tb_kembali` (`id_kembali`, `id_pinjam`, `tgl_dikembalikan`, `terlambat`, `id_denda`, `denda`) VALUES
(199, 90, '2020-04-09', 0, 6, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_login`
--

CREATE TABLE `tb_login` (
  `username` varchar(15) NOT NULL,
  `password` varchar(75) NOT NULL,
  `stts` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_login`
--

INSERT INTO `tb_login` (`username`, `password`, `stts`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
('fajar', '24bc50d85ad8fa9cda686145cf1f8aca', 'petugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penerbit`
--

CREATE TABLE `tb_penerbit` (
  `id_penerbit` int(3) NOT NULL,
  `nama_penerbit` varchar(50) NOT NULL,
  `id_provinsi` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_penerbit`
--

INSERT INTO `tb_penerbit` (`id_penerbit`, `nama_penerbit`, `id_provinsi`) VALUES
(1, 'Erlangga', 1),
(4, 'Andi', 2),
(5, 'Gramedia', 8),
(6, 'HGS', 2),
(7, 'SUZANNE FRANCIS', 7),
(8, 'Elex Media Komputindo', 7),
(9, 'Kompas', 7),
(10, 'Laksana', 7),
(11, 'Wahyu Qolbu', 7),
(12, 'Wahyumedia', 7),
(13, 'Yrama Widya', 7),
(14, 'Prenada Media', 7),
(15, 'Sinar Grafika', 7),
(16, 'Disney', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengarang`
--

CREATE TABLE `tb_pengarang` (
  `id_pengarang` int(3) NOT NULL,
  `nama_pengarang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_pengarang`
--

INSERT INTO `tb_pengarang` (`id_pengarang`, `nama_pengarang`) VALUES
(1, 'Susanto Sunaryo'),
(7, 'Rinaldi Munir'),
(8, 'Alek Sander'),
(9, 'Trional Novanza'),
(10, 'M. Maftuh Ihsan'),
(11, 'Dihan'),
(12, 'Ari Juna'),
(14, 'Adela Gozali yose With Nelson'),
(15, 'SUZANNE FRANCIS'),
(16, 'Elex Media Komputindo'),
(17, 'Abdul Mu\'ti dan Fajar Riza Ulhaq'),
(18, 'Seno Joko Suyono Yuyun Nurachman'),
(19, 'James Luhulima'),
(20, 'Agus Rahmadi'),
(21, 'Heni Maria'),
(22, 'Riyas Irmadona'),
(23, 'Suarga'),
(24, 'Nar Herrhyanto & Tuti Gantini'),
(25, 'Elex Media Komputindo'),
(26, 'Jubilee Enterprise'),
(27, 'Boris Tampubolon, S.H.'),
(28, 'Rio Christiawan'),
(29, 'Suyanto Institusi'),
(30, 'Miriam Budiardjo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_petugas`
--

CREATE TABLE `tb_petugas` (
  `id_petugas` char(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `img` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(50) NOT NULL,
  `id_agama` int(2) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_petugas`
--

INSERT INTO `tb_petugas` (`id_petugas`, `nama`, `img`, `jenis_kelamin`, `alamat`, `password`, `id_agama`, `hp`, `ket`) VALUES
('admin', 'Adhi Santoso', 'YN47B8ELFMDIWTXAHZSG3V59PQ2UK06OJC1R.jpg', 'L', 'Jakarta', 'admin', 2, '05324428242428', ''),
('fajar', 'FAJAR RIZKY', '3EHTKQF9CNWVX64ILZ7JGP5MD0SY28AOBRU1.jpg', 'L', 'jakarta', 'fajar', 2, '081289074022', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pinjam`
--

CREATE TABLE `tb_pinjam` (
  `id_pinjam` int(11) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `id_anggota` varchar(11) NOT NULL,
  `tgl_kembali` date NOT NULL,
  `total_buku` int(4) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_pinjam`
--

INSERT INTO `tb_pinjam` (`id_pinjam`, `tgl_pinjam`, `id_anggota`, `tgl_kembali`, `total_buku`, `status`) VALUES
(88, '2020-04-07', 'ANGG000003', '2020-04-09', 0, 0),
(90, '2020-04-07', 'ANGG000003', '2020-04-10', 1, 1),
(91, '2020-04-07', 'ANGG000004', '2020-04-11', 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_provinsi`
--

CREATE TABLE `tb_provinsi` (
  `id_provinsi` int(2) NOT NULL,
  `nama_provinsi` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_provinsi`
--

INSERT INTO `tb_provinsi` (`id_provinsi`, `nama_provinsi`, `kota`) VALUES
(1, 'Sumatera Selatan', 'Palembang'),
(2, 'D.I.Y Yogyakarta', 'Yogya'),
(4, 'Jambi', 'Jambi Kota'),
(6, 'Pekan Baru', 'Riau'),
(7, 'Jakarta', 'Jakarta'),
(8, 'Jawa Barat', 'Bandung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_rak`
--

CREATE TABLE `tb_rak` (
  `no_rak` int(2) NOT NULL,
  `nama_rak` varchar(50) NOT NULL,
  `id_kategori` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_rak`
--

INSERT INTO `tb_rak` (`no_rak`, `nama_rak`, `id_kategori`) VALUES
(5, '500-567 MTK', 5),
(6, '567-600 PROG', 6),
(7, '600-700 MULMET', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `test`
--

CREATE TABLE `test` (
  `kode` varchar(12) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `mboh` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `test`
--

INSERT INTO `test` (`kode`, `nama`, `mboh`) VALUES
('', 'ari', ''),
('Kode000001', 'ari2', ''),
('Kode000002', 'ari2', ''),
('Kode000003', 'Ariandi AS', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_anggota`
--

CREATE TABLE `t_anggota` (
  `id` int(6) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `agama` enum('Islam','Kristen','Katolik','Hindu','Budha') NOT NULL,
  `tmp_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `foto` varchar(100) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `jenis` enum('Mahasiswa','Dosen') NOT NULL,
  `stat` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `t_anggota`
--

INSERT INTO `t_anggota` (`id`, `nama`, `alamat`, `jk`, `agama`, `tmp_lahir`, `tgl_lahir`, `foto`, `tgl_daftar`, `jenis`, `stat`) VALUES
(17, 'efdfs', 'dfsdfsdf', 'L', 'Katolik', 'sfddsf', '1977-01-14', '', '2015-11-26', 'Mahasiswa', '1'),
(18, 'Sidik', 'SISKOM', 'L', 'Islam', 'Semarang', '1975-03-18', '', '2015-12-12', 'Mahasiswa', '1'),
(19, 'Achmad', 'kmp baru', 'L', 'Islam', 'jakarta', '1994-06-15', '', '2015-12-22', 'Mahasiswa', '1'),
(20, 'muslim', 'sd', 'L', 'Islam', 'jb', '1976-02-09', '', '2016-01-08', 'Mahasiswa', '1'),
(21, 'Eko Sudrajat', 'Purwokerto', 'L', 'Islam', 'Banyumas', '1990-01-03', '', '2016-01-12', 'Mahasiswa', '1'),
(22, 'shioo', 'jl. masuk', 'L', 'Islam', 'pekan', '1990-01-01', '', '2016-02-20', 'Mahasiswa', '1'),
(23, 'satub', 'klebengan', 'L', 'Islam', 'sleman', '1978-01-19', '', '2016-03-23', 'Mahasiswa', '1'),
(25, 'rizki', 'Jl. Merampot', 'L', 'Islam', 'poejrw', '1960-03-14', '', '2016-04-02', 'Mahasiswa', '1'),
(26, 'sheni', 'cianjur', 'L', 'Islam', 'cianjur', '1974-04-19', '', '2016-04-30', 'Mahasiswa', '1'),
(27, 'jejem', 'pku', 'L', 'Islam', 'pku', '1992-01-04', '', '2016-05-03', 'Mahasiswa', '1'),
(28, 'aku', 'ingin', 'L', 'Kristen', 'jakatt', '1974-02-17', '', '2016-05-07', 'Mahasiswa', '1'),
(29, 'novriadi', 'muara bungo', 'L', 'Islam', 'mmmmmm', '2006-02-19', '', '2016-05-15', 'Mahasiswa', '1'),
(30, 'sahat mulia sitorus', 'kampung beting', 'L', 'Islam', 'jakarta', '1978-01-19', '', '2016-05-19', 'Mahasiswa', '1'),
(31, 'aswewe', 'aswew', 'L', 'Kristen', 'ewe', '1977-11-18', '', '2016-05-26', 'Mahasiswa', '1'),
(32, 'David Winalda', 'JL Sukabirus Gg Slamet B33', 'L', 'Islam', 'Bandar Lampung', '1994-07-08', '', '2016-05-29', 'Mahasiswa', '1'),
(33, 'benny', 'tarikolo', 'L', 'Islam', 'sukoharjo', '1990-03-04', '', '2016-06-04', 'Mahasiswa', '1'),
(34, 'anto', 'admin', 'L', 'Kristen', 'tangerang', '1976-04-15', '', '2016-06-06', 'Dosen', '1'),
(35, 'rian', 'sayuran', 'L', 'Kristen', 'bandung', '1998-09-12', '', '2016-06-17', 'Mahasiswa', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_buku`
--

CREATE TABLE `t_buku` (
  `id` int(6) NOT NULL,
  `id_kelas` varchar(6) NOT NULL,
  `id_jenis` int(2) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `pengarang` varchar(250) NOT NULL,
  `penerbit` varchar(250) NOT NULL,
  `th_terbit` year(4) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `jml_hal` int(6) NOT NULL,
  `asal_perolehan` varchar(100) NOT NULL,
  `harga` decimal(12,2) NOT NULL,
  `id_lokasi` int(2) NOT NULL,
  `stat` enum('B','RR','RB','H') NOT NULL,
  `stat_pinjam` enum('P','R') NOT NULL,
  `deskripsi` varchar(250) NOT NULL,
  `tgl_input` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `t_buku`
--

INSERT INTO `t_buku` (`id`, `id_kelas`, `id_jenis`, `judul`, `pengarang`, `penerbit`, `th_terbit`, `isbn`, `jml_hal`, `asal_perolehan`, `harga`, `id_lokasi`, `stat`, `stat_pinjam`, `deskripsi`, `tgl_input`) VALUES
(9, '0', 1, 'rere', 're', 'erer', '0000', 'ree', 333, 'ree', 434343.00, 6, 'B', 'R', '', '2016-03-04 20:24:56'),
(10, '200', 1, 'buku a\'gama', 'satub', 'pt penerbit', '2015', '123456', 100, 'gratis', 50000.00, 6, 'B', 'P', '', '2016-03-23 10:30:46'),
(11, '100', 1, 'apa aja', 'terserah', 'mana', '2009', '838939', 900, 'beli', 200.00, 6, 'B', 'P', 'apa aja', '2016-04-05 21:23:35'),
(12, '0', 1, 'apa', 'weraw', 'wreewr', '0000', '124', 12, 'asdfsaf', 222.00, 6, 'B', 'P', 'sfasf', '2016-04-05 21:25:16'),
(14, '200', 1, 'test judul buku', 'santoso', 'gramedia', '2016', 'PA0713851', 302, 'donasi', 0.00, 6, 'B', 'P', '', '2016-06-04 01:05:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pengunjung`
--

CREATE TABLE `t_pengunjung` (
  `id` int(6) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `jenis` enum('Mahasiswa','Dosen') NOT NULL,
  `perlu` varchar(255) NOT NULL,
  `saran` varchar(255) NOT NULL,
  `tgl` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `t_pengunjung`
--

INSERT INTO `t_pengunjung` (`id`, `nama`, `jk`, `jenis`, `perlu`, `saran`, `tgl`) VALUES
(1, 'as', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'as', '2013-11-01 14:53:03'),
(2, 'awer', 'L', 'Mahasiswa', 'Baca Buku####', 'dsdsadsa', '2013-11-03 18:22:13'),
(3, 'YUU', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'QREQ', '2013-11-06 11:45:53'),
(4, 'udhin', 'L', 'Mahasiswa', 'Baca Buku####', 'test', '2013-11-07 13:10:13'),
(5, 'rewe', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##Lainnya', 'werwerw', '2013-11-15 17:29:00'),
(6, 'andi', 'L', 'Mahasiswa', 'Baca Buku####', 'ga ada', '2013-11-20 23:42:42'),
(7, 'juli', 'L', 'Mahasiswa', 'Baca Buku####', 'sdsdsd', '2013-11-22 14:19:02'),
(8, 'Ridwan', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Sudah bagus', '2013-11-27 00:02:16'),
(9, 'yr', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#', 'kjg', '2013-11-27 00:04:20'),
(10, 'asep', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'test', '2013-11-27 12:12:25'),
(11, 'jjj', 'L', 'Mahasiswa', 'Baca Buku####', 'eff', '2013-11-27 12:44:59'),
(12, 'am', 'L', 'Mahasiswa', 'Baca Buku####', 'tmbah buku lagi.', '2013-11-28 16:01:21'),
(13, 'Eja', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', '-', '2013-12-02 10:29:21'),
(14, 'rifan', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'asd', '2013-12-07 12:17:08'),
(15, 'joni', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'ss', '2013-12-08 00:57:45'),
(16, 'Hansah Darmawan', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Bagus', '2013-12-08 08:25:46'),
(17, 'asdasd', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'asdasd', '2013-12-08 08:26:56'),
(18, 'gundul', 'L', 'Mahasiswa', 'Baca Buku####', 'ganbate', '2013-12-10 19:49:59'),
(19, 'A', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'aa', '2013-12-11 00:59:06'),
(20, 'jojo', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ok', '2013-12-13 12:52:49'),
(21, 'llll', 'L', 'Mahasiswa', 'Baca Buku####', 'll', '2013-12-18 01:28:49'),
(22, 'd', 'L', 'Dosen', 'Baca Buku####', 'asdasd', '2013-12-18 20:48:07'),
(23, 'derul', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'mm', '2013-12-19 17:28:15'),
(24, 'jamu', 'L', 'Mahasiswa', 'Baca Buku####', 'alkjdhlajhdaslhdlashdladhla', '2013-12-22 12:03:03'),
(25, 'joko', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'xxx', '2013-12-24 09:46:35'),
(26, 'erwin', 'L', 'Mahasiswa', 'Baca Buku####', 'tes', '2013-12-24 10:29:15'),
(27, 'eza', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###Lainnya', 'bagus', '2013-12-24 10:42:58'),
(28, 'Yogi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###Lainnya', 'tes', '2013-12-24 12:18:47'),
(29, '', '', '', '####', '', '2013-12-25 09:33:12'),
(30, 'gfhfgh', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'nbvfhnvb', '2013-12-25 12:14:31'),
(31, 'Anggri', 'L', 'Mahasiswa', 'Baca Buku####', 'Template Simple dan Bersih :)', '2013-12-25 17:07:38'),
(32, 'eko', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'bagus', '2013-12-25 18:26:51'),
(33, 'eko', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'good', '2013-12-25 18:27:38'),
(34, 'udin', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku##Baca Koran#', 'ok', '2013-12-26 08:14:16'),
(35, 'Salie', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Si!p_', '2013-12-26 17:39:49'),
(36, 'Nada', 'P', 'Mahasiswa', 'Baca Buku##Kembalikan Buku##', 'B9us', '2013-12-27 17:53:30'),
(37, 'fd', 'L', 'Dosen', 'Baca Buku####', 'dfg', '2013-12-28 23:57:31'),
(38, 'asep', 'L', 'Dosen', 'Baca Buku####', 'test', '2014-03-05 08:58:06'),
(39, 'firman', 'L', 'Mahasiswa', 'Baca Buku####', 'keren', '2014-07-24 12:12:42'),
(40, 'koko', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'mantap', '2014-09-26 11:02:28'),
(41, 'asdasda', 'L', 'Mahasiswa', 'Baca Buku####', 'asdasda', '2014-09-27 08:23:23'),
(42, 'SADFS', 'L', 'Mahasiswa', 'Baca Buku####', 'FSDF', '2014-10-08 17:43:59'),
(43, 'Hendra', 'L', 'Mahasiswa', 'Baca Buku####', 'Moga cepat di upload yah Mas...\n\nTrims', '2014-10-10 17:16:03'),
(44, 'xx', 'L', 'Mahasiswa', 'Baca Buku####', 'cc', '2014-10-11 15:52:38'),
(45, 'awer', 'L', 'Mahasiswa', 'Baca Buku####', 'dadada', '2014-10-11 17:55:51'),
(46, 'angga', 'L', 'Mahasiswa', 'Baca Buku####Lainnya', 'bagus', '2014-10-13 13:59:40'),
(47, 'Fahrudin', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###Lainnya', 'ada', '2014-10-13 15:55:01'),
(48, 'dada', 'L', 'Mahasiswa', 'Baca Buku####', 'ddddd', '2014-10-14 06:53:51'),
(49, 'gf', 'L', 'Mahasiswa', 'Baca Buku####Lainnya', 'vbc', '2014-10-15 12:23:01'),
(50, 'UUn', 'L', 'Mahasiswa', 'Baca Buku####', 'Wah keren', '2014-10-17 08:22:16'),
(51, 'Adit', 'L', 'Mahasiswa', 'Baca Buku####', 'Luar Biasa', '2014-10-17 12:14:54'),
(52, 'Maya', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'wow', '2014-10-17 12:17:45'),
(53, 'Iwan', 'L', 'Dosen', 'Baca Buku#Pinjam Buku###', 'Pinjam 3 hari', '2014-10-17 12:23:26'),
(54, 'lala', 'L', 'Mahasiswa', 'Baca Buku####', 'hahha', '2014-10-18 22:19:44'),
(55, 'lolo', 'L', 'Dosen', 'Baca Buku#Pinjam Buku###', 'hahhaha', '2014-10-18 22:20:38'),
(56, 'Hekky Nurhikmat', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'cscsc', '2014-10-19 17:21:31'),
(57, 'sed', 'L', 'Mahasiswa', 'Baca Buku####', 'dfdf', '2014-10-21 11:07:42'),
(58, 'dayat', 'L', 'Mahasiswa', 'Baca Buku####', 'Mantab', '2014-10-21 11:23:28'),
(59, 'andika', 'L', 'Mahasiswa', 'Baca Buku####', 'mantep bos', '2014-10-22 15:02:15'),
(60, 'df', 'L', 'Dosen', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'sd', '2014-10-22 18:46:49'),
(61, 'jono', 'L', 'Mahasiswa', 'Baca Buku####', 'ffff', '2014-10-23 10:10:49'),
(62, 'aa', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'aaa', '2014-10-23 12:06:00'),
(63, 'Quman', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'xzkjfsdifjdsf', '2014-10-23 16:13:16'),
(64, 'gffgfgfgf', 'L', 'Mahasiswa', 'Baca Buku####', 'jhhjhjhjj\n3', '2014-10-23 16:58:21'),
(65, 'lifeline', 'L', 'Mahasiswa', 'Baca Buku####Lainnya', 'test\n', '2014-10-23 18:24:45'),
(66, 'ANDI', 'L', 'Mahasiswa', 'Baca Buku###Baca Koran#', 'SIP', '2014-10-25 07:37:31'),
(67, 'ANDI', 'L', 'Mahasiswa', 'Baca Buku###Baca Koran#', 'ss', '2014-10-25 07:41:29'),
(68, 'Nime', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Bukunya kurang lengkap', '2014-10-25 18:07:02'),
(69, 'sda', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', '111', '2014-10-25 19:57:08'),
(70, '123123123', 'P', 'Dosen', 'Baca Buku####', '123123123', '2014-10-26 07:35:32'),
(71, 'rere', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#', 'no', '2014-10-26 09:56:31'),
(72, 'egi febrian', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'pinjam buku', '2014-10-26 12:41:45'),
(73, 'danny', 'L', 'Mahasiswa', 'Baca Buku####', 'Bagus', '2014-10-27 17:57:21'),
(74, 'safri azmi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'pinjam', '2014-10-28 09:47:50'),
(75, 'test', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ok', '2014-10-28 10:52:15'),
(76, 'iyan', 'L', 'Mahasiswa', 'Baca Buku####', 'test', '2014-10-29 14:36:57'),
(77, 'ari', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sip', '2014-10-30 07:58:08'),
(78, 'jhjgj', 'L', 'Mahasiswa', 'Baca Buku####', 'kjbkj', '2014-10-30 17:40:49'),
(79, 'ij', 'L', 'Mahasiswa', 'Baca Buku##Kembalikan Buku##', 'oj', '2014-10-31 09:41:21'),
(80, 'Acong', 'L', 'Mahasiswa', 'Baca Buku####', 'none', '2014-10-31 23:51:52'),
(81, 'yy', 'L', 'Mahasiswa', 'Baca Buku####', 'yy', '2014-11-01 13:17:38'),
(82, 'taslim', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'qqq', '2014-11-02 02:31:02'),
(83, 'Ahmad Suhadi', 'L', 'Mahasiswa', 'Baca Buku####Lainnya', 'coba ah', '2014-11-03 20:07:24'),
(84, 'Ahmad Suhadi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'mata', '2014-11-03 20:07:56'),
(85, 'Wira', 'L', 'Mahasiswa', 'Baca Buku####', 'keren', '2014-11-03 23:01:13'),
(86, 'OKA TRI ARIYANTO', 'L', 'Mahasiswa', 'Baca Buku##Kembalikan Buku##', 'nbn', '2014-11-06 21:05:01'),
(87, 'Tomo', 'L', 'Mahasiswa', 'Baca Buku####', 'mantaf aplikasinya', '2014-11-07 09:21:47'),
(88, 'Jumadi Simangunsong', 'L', 'Dosen', 'Baca Buku#Pinjam Buku###', 'test', '2014-11-07 12:43:40'),
(89, 'test', 'L', 'Mahasiswa', 'Baca Buku####', 'ok', '2014-11-09 11:49:35'),
(90, 'zxczxcz', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'hjkhjkhjk', '2014-11-10 11:07:22'),
(91, 'agung', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'bbccv', '2014-11-11 11:06:23'),
(92, 'aa', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku##Baca Koran#Lainnya', '35613521\n\n\n', '2014-11-11 11:07:38'),
(93, 'lukito', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'xx', '2014-11-12 16:44:02'),
(94, 'kiki', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'hahay', '2014-11-13 20:30:06'),
(95, 'budi', 'L', 'Dosen', 'Baca Buku#Pinjam Buku###', 'sfds', '2014-11-14 08:26:37'),
(96, 'sa', 'L', 'Mahasiswa', 'Baca Buku####', 'qw', '2014-11-15 08:56:26'),
(97, 'garong', 'L', 'Mahasiswa', 'Baca Buku####', 'asyik', '2014-11-18 12:25:58'),
(98, 'moko', 'L', 'Mahasiswa', 'Baca Buku####', 'tex', '2014-11-18 15:23:38'),
(99, 'z', 'L', 'Mahasiswa', 'Baca Buku####', 'as', '2014-11-19 20:30:28'),
(100, 'admin', 'L', 'Dosen', 'Baca Buku####Lainnya', 'hay', '2014-11-20 08:19:02'),
(101, 'saya', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sadas', '2014-11-20 20:23:28'),
(102, 'xxx', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'xx', '2014-11-21 00:52:19'),
(103, 'AA', 'P', 'Mahasiswa', 'Baca Buku####', 'sddas', '2014-11-21 14:27:40'),
(104, 'Test', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'test', '2014-11-21 21:41:11'),
(105, 'danbo_march_wallpaper_by_gloeckchen.jpg', 'L', 'Mahasiswa', 'Baca Buku####', 'afsaf', '2014-11-22 05:22:34'),
(106, 'Bambang Pamungkas', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'tes', '2014-11-23 13:47:28'),
(107, 'nurochman', 'L', 'Mahasiswa', 'Baca Buku####', 'ingin banyak info', '2014-11-23 23:36:50'),
(108, 'test', 'L', 'Mahasiswa', 'Baca Buku####', 'testtt', '2014-11-24 12:42:27'),
(109, 'ade muchtar', 'L', 'Mahasiswa', 'Baca Buku####', 'jadilah yang terbaik', '2014-11-24 20:16:37'),
(110, 'gun', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'jhjgjgjg', '2014-11-25 23:03:21'),
(111, 'altim', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ssljhsdlhlsdkhslk', '2014-11-26 10:07:09'),
(112, 'ADAS', 'L', 'Mahasiswa', 'Baca Buku####', 'SAAS', '2014-11-26 14:12:47'),
(113, 'jjj', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'ggg', '2014-11-26 18:07:52'),
(114, 'Ryan', 'L', 'Mahasiswa', 'Baca Buku####', 'Bagus Sekali', '2014-11-26 20:07:20'),
(115, 'Kustanto', 'L', 'Mahasiswa', 'Baca Buku####', 'sss', '2014-11-26 23:32:10'),
(116, 'aziz', 'L', 'Mahasiswa', 'Baca Buku####', 'googd', '2014-11-27 16:31:46'),
(117, 'dodi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'adas', '2014-11-27 16:59:34'),
(118, 'andri', 'L', 'Mahasiswa', 'Baca Buku####', 'a', '2014-11-27 17:13:34'),
(119, 'pinjam ', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', '311', '2014-11-27 17:17:04'),
(120, 'anggara', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'fgfggg', '2014-11-28 01:25:07'),
(121, 'wulan', 'P', 'Mahasiswa', 'Baca Buku####Lainnya', 'sistem perpustakaan ini sangat bagus', '2014-11-28 09:34:46'),
(122, 'jhh', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'hj', '2014-11-29 09:51:10'),
(123, 'ady', 'L', 'Mahasiswa', 'Baca Buku####', 'hap', '2014-11-29 15:02:38'),
(124, 'agung', 'L', 'Mahasiswa', 'Baca Buku####', '\n\n\n\n\n\n\n\n\n\nasik\n', '2014-11-30 16:23:41'),
(125, 'agus', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku##Baca Koran#', 'Tes aja. hehe', '2014-11-30 18:11:38'),
(126, '1', 'L', 'Dosen', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', '1', '2014-11-30 19:19:03'),
(127, '1', 'L', 'Mahasiswa', 'Baca Buku##Kembalikan Buku#Baca Koran#Lainnya', '1', '2014-11-30 19:19:05'),
(128, '1', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', '1', '2014-11-30 19:19:06'),
(129, '1', 'L', 'Mahasiswa', '#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', '1', '2014-11-30 19:19:08'),
(130, 'hjjhhkhkjkj', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'huggjkjhkjhkjhkjhkj hhjhg', '2014-12-01 18:33:07'),
(131, 'jon', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'good job', '2014-12-01 20:00:59'),
(132, 'kfjgkfdjgkfjgld', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ajnakja', '2014-12-04 10:10:34'),
(133, 'fikri', 'L', 'Mahasiswa', 'Baca Buku####', 'gak ada ko', '2014-12-04 13:17:21'),
(134, 'fgyhrt', 'L', 'Mahasiswa', 'Baca Buku####', 'gfjny', '2014-12-05 08:12:14'),
(135, 'Hendra', 'L', 'Mahasiswa', 'Baca Buku####', 'ok', '2014-12-06 09:54:40'),
(136, 'jjj', 'L', 'Dosen', 'Baca Buku####', 'jjj', '2014-12-06 19:59:49'),
(137, 'kjjkl', 'L', 'Mahasiswa', 'Baca Buku##Kembalikan Buku##', 'jhkh', '2014-12-06 21:53:53'),
(138, 'sdsdfsdfds', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'fsdfsdfss', '2014-12-07 04:59:29'),
(139, 'ridwan', 'L', 'Mahasiswa', 'Baca Buku####', 'wew', '2014-12-08 00:16:52'),
(140, 'hjjjjj', 'L', 'Mahasiswa', 'Baca Buku###Baca Koran#', 'j ,,', '2014-12-08 09:54:45'),
(141, 'asep', 'L', 'Mahasiswa', 'Baca Buku####', 'asd', '2014-12-10 00:30:53'),
(142, 'bgff', 'L', 'Mahasiswa', 'Baca Buku####', 'gfhgh', '2014-12-10 10:41:06'),
(143, 'ini', 'L', 'Mahasiswa', 'Baca Buku####', 'ni', '2014-12-11 11:03:18'),
(144, 'nur', 'L', 'Mahasiswa', 'Baca Buku####', 'tes', '2014-12-11 13:06:00'),
(145, 'TONY', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'tidak', '2014-12-11 23:47:12'),
(146, 'irfan', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'oktop', '2014-12-12 10:27:54'),
(147, 'wulan', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'bla bla', '2014-12-13 21:26:47'),
(148, 'ahmad', 'L', 'Mahasiswa', 'Baca Buku####', 'sssssss', '2014-12-14 08:20:20'),
(149, 'ghjkl;\'', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'dfghj', '2014-12-15 01:13:49'),
(150, 'tri', 'L', 'Mahasiswa', 'Baca Buku####', 'sssss', '2014-12-16 10:27:19'),
(151, 'tri', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'aaaaaa', '2014-12-16 10:31:48'),
(152, 'afwan', 'P', 'Mahasiswa', 'Baca Buku####', 'aa', '2014-12-17 11:26:40'),
(153, 'Mahirun', 'P', 'Mahasiswa', 'Baca Buku####', 'jgsdkhjah', '2014-12-19 19:40:01'),
(154, 'dewi astuti', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Semoga mempermudah mahasiswa', '2014-12-21 00:05:45'),
(155, 'Abling', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku##Baca Koran#', 'dadwad', '2014-12-22 19:04:53'),
(156, 'siti', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'oke', '2014-12-22 19:49:41'),
(157, 'MIRA EKA PUTRI', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'lebih ramah lagi', '2014-12-23 14:58:11'),
(158, 'PT INTERNAL MEDIA ', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'yy', '2014-12-23 23:43:34'),
(159, 'Ismail', 'L', 'Mahasiswa', 'Baca Buku####', 'Bagus', '2014-12-24 04:40:36'),
(160, 'ucok', 'L', 'Mahasiswa', 'Baca Buku####', 'wadawdawd', '2014-12-25 11:48:20'),
(161, 'jkhjkhkj', 'L', 'Mahasiswa', 'Baca Buku###Baca Koran#', 'kjhlkh', '2014-12-25 19:08:45'),
(162, 'kasjk', 'L', 'Mahasiswa', 'Baca Buku####', 'asjhj', '2014-12-25 19:23:52'),
(163, 'kasjk', 'L', 'Mahasiswa', 'Baca Buku####', 'asjhj', '2014-12-25 19:23:53'),
(164, 'Test', 'L', 'Mahasiswa', 'Baca Buku####Lainnya', 'test', '2014-12-26 20:54:38'),
(165, 'a', 'L', 'Mahasiswa', 'Baca Buku####', 'adf', '2014-12-27 10:28:19'),
(166, 'doni', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'okeee', '2014-12-29 11:14:24'),
(167, 'doniiii', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'okeee', '2014-12-29 11:19:57'),
(168, 'Agus', 'L', 'Mahasiswa', 'Baca Buku####', 'tidak ada', '2014-12-29 20:34:57'),
(169, 'aaah', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'a', '2014-12-30 09:10:13'),
(170, 'ss', 'L', 'Mahasiswa', 'Baca Buku####', 'weeded', '2014-12-30 21:26:39'),
(171, 'bejo', 'L', 'Mahasiswa', 'Baca Buku####', 'joss', '2014-12-31 14:32:21'),
(172, 'sofyan ahnafi', 'L', 'Mahasiswa', 'Baca Buku####', 'ceiee', '2014-12-31 16:03:36'),
(173, 'test', 'L', 'Dosen', 'Baca Buku####', 'xcx', '2015-01-01 14:21:59'),
(174, 'ochim', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku##Baca Koran#', 'siip', '2015-01-02 13:06:42'),
(175, 'asdasd', 'L', 'Mahasiswa', 'Baca Buku####', 'asdasdsd', '2015-01-02 21:51:04'),
(176, 'mmmmmmm', 'L', 'Mahasiswa', 'Baca Buku##Kembalikan Buku##', 'kkkkkkkkkkkkkkkkk', '2015-01-03 16:37:26'),
(177, 'ady', 'L', 'Mahasiswa', 'Baca Buku####', 'dfdsf', '2015-01-05 12:07:36'),
(178, 'saadasd', 'P', 'Mahasiswa', 'Baca Buku####', 'sadsad', '2015-01-05 15:05:44'),
(179, 'Sri', 'P', 'Mahasiswa', 'Baca Buku###Baca Koran#', 'Siip', '2015-01-06 05:53:27'),
(180, 'asdasdas', 'L', 'Mahasiswa', 'Baca Buku####', 'isi', '2015-01-06 07:34:12'),
(181, 'a', 'L', 'Mahasiswa', 'Baca Buku####', 'sip', '2015-01-06 16:01:29'),
(182, 'nn', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'bagus', '2015-01-06 23:49:15'),
(183, 'Hendra', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ada', '2015-01-07 09:25:48'),
(184, 'jnkjnkn', 'L', 'Mahasiswa', 'Baca Buku####', 'jnkjnkj', '2015-01-07 15:52:26'),
(185, 's', 'L', 'Mahasiswa', 'Baca Buku####', 's', '2015-01-08 02:46:03'),
(186, 'ascas', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#', 'acasda', '2015-01-09 02:03:41'),
(187, 'ika', 'P', 'Mahasiswa', 'Baca Buku####', 'sad', '2015-01-09 08:11:54'),
(188, 'udin', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'pinjem yah', '2015-01-10 03:35:14'),
(189, 'karawang', 'L', 'Mahasiswa', 'Baca Buku####', 'tidak ada', '2015-01-10 17:14:32'),
(190, 'hiba', 'L', 'Dosen', 'Baca Buku####', 'asasasa', '2015-01-10 17:17:26'),
(191, 'indra', 'L', 'Mahasiswa', 'Baca Buku####', 'saya mau pinjam buku dong pak', '2015-01-12 20:15:38'),
(192, 'fs', 'L', 'Mahasiswa', 'Baca Buku####', 'bvcb', '2015-01-13 10:41:09'),
(193, 'pow', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'kk', '2015-01-13 17:53:00'),
(194, 'awal', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'adds', '2015-01-13 20:14:26'),
(195, 'MINA', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ya', '2015-01-14 21:26:28'),
(196, 'Nurul', 'P', 'Mahasiswa', 'Baca Buku####', 'm', '2015-01-15 23:46:51'),
(197, 'test', 'L', 'Mahasiswa', 'Baca Buku####', 'no coment', '2015-01-16 08:49:57'),
(198, 'Irham', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Tes', '2015-01-16 12:11:49'),
(199, 'ijar', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'terima kasih', '2015-01-16 15:23:01'),
(200, 'ffnfn', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'tvtvtx', '2015-01-16 16:23:25'),
(201, 'siti', 'P', 'Mahasiswa', 'Baca Buku####', 'kkk', '2015-01-16 21:34:46'),
(202, 'yuiyui', 'L', 'Mahasiswa', 'Baca Buku####', 'rtyrty', '2015-01-17 11:39:52'),
(203, 'ag', 'L', 'Mahasiswa', 'Baca Buku####', 'sadasd', '2015-01-17 12:09:30'),
(204, 'haji', 'L', 'Mahasiswa', 'Baca Buku####', 'erer', '2015-01-17 12:13:10'),
(205, 'rubi', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2015-01-17 14:34:52'),
(206, 'fuck', 'L', 'Mahasiswa', 'Baca Buku####', 'fuck you', '2015-01-18 03:01:16'),
(207, 'kjbkjbg', 'L', 'Mahasiswa', 'Baca Buku####', 'ykhkvhy', '2015-01-18 08:57:51'),
(208, 'sa', 'L', 'Mahasiswa', 'Baca Buku####Lainnya', 'sasa', '2015-01-18 22:33:06'),
(209, 'sastro', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'coba', '2015-01-19 10:52:33'),
(210, 'tes', 'L', 'Mahasiswa', 'Baca Buku####', 'ya', '2015-01-19 20:49:27'),
(211, 'qwe', 'L', 'Mahasiswa', 'Baca Buku####', 'qwe', '2015-01-20 12:28:47'),
(212, 'agus', 'L', 'Mahasiswa', 'Baca Buku####', 'test', '2015-01-20 14:53:07'),
(213, 'Adi', 'L', 'Mahasiswa', 'Baca Buku####', 'sangat bagus', '2015-01-20 19:30:15'),
(214, 'Adi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'boleh pinjam', '2015-01-20 19:32:19'),
(215, 'Luky', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'mbagus', '2015-01-21 00:10:06'),
(216, 'fafa', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'kritik', '2015-01-21 22:10:06'),
(217, 'dfd', 'L', 'Mahasiswa', 'Baca Buku####', 'x', '2015-01-22 07:46:52'),
(218, 'ADRIANTO', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ASYIK', '2015-01-22 13:19:27'),
(219, 'EDO', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'membaca buku', '2015-01-22 20:23:11'),
(220, 'asdf', 'L', '', 'Baca Buku####', 'asdf', '2015-01-23 09:48:17'),
(221, 'Muh Ady Santoso', 'L', 'Mahasiswa', 'Baca Buku####', 'belajar', '2015-01-23 19:07:54'),
(222, 'hank', 'L', 'Mahasiswa', 'Baca Buku####', 'BAIK', '2015-01-24 00:37:28'),
(223, 'Tes', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku##Baca Koran#', 'baru tes', '2015-01-24 07:50:29'),
(224, 'okd', 'P', 'Mahasiswa', 'Baca Buku####', 'skadjad', '2015-01-24 21:19:49'),
(225, 'asa', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'aa', '2015-01-27 04:09:58'),
(226, 'nicxson', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'lagi coba aja gen ', '2015-01-27 15:59:01'),
(227, 'Bara', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'coba dulu', '2015-01-27 17:40:08'),
(228, 'ibrahim', 'L', 'Mahasiswa', 'Baca Buku####', 'sapu lagi', '2015-01-28 10:06:12'),
(229, 'adi', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ojo medit', '2015-01-28 13:42:12'),
(230, 'rizki kafrawi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'mmm', '2015-01-28 14:29:50'),
(231, 'Fitrah Aditia', 'L', 'Mahasiswa', 'Baca Buku####', 'masuk', '2015-01-28 14:44:34'),
(232, 'UNIVERSITAS TERBUKA', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#', 'zzz', '2015-01-29 08:13:37'),
(233, 'Tukino', 'L', 'Mahasiswa', 'Baca Buku####', 'mo liat', '2015-01-31 05:05:15'),
(234, 'jonhe', 'L', 'Mahasiswa', 'Baca Buku####', 'Ber', '2015-02-01 01:43:01'),
(235, 'abc', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'bagus', '2015-02-01 12:04:52'),
(236, 'test', 'L', 'Mahasiswa', 'Baca Buku##Kembalikan Buku##', 'test', '2015-02-01 19:09:26'),
(237, '', '', '', '####', '', '2015-02-02 02:35:44'),
(238, 'Sutan Arief', 'L', 'Mahasiswa', 'Baca Buku####', 'Hahahahaa', '2015-02-02 08:13:26'),
(239, 'popo', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'okr', '2015-02-02 15:42:37'),
(240, 'nmn', 'L', 'Mahasiswa', 'Baca Buku####', 'm', '2015-02-02 23:28:12'),
(241, 'Ivan', 'L', 'Mahasiswa', 'Baca Buku####', 'ad', '2015-02-03 16:28:09'),
(242, 'naruto', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'jhg', '2015-02-03 19:36:49'),
(243, 'v', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'hvj', '2015-02-03 22:36:47'),
(244, 'Hery Prayitno', 'L', 'Mahasiswa', 'Baca Buku####', 'Refrensi', '2015-02-04 09:22:17'),
(245, 'wgsgf', 'L', 'Mahasiswa', 'Baca Buku####', 'bvxbgh', '2015-02-04 09:56:49'),
(246, 'jhacko', 'L', 'Mahasiswa', 'Baca Buku####', 'tes', '2015-02-04 20:10:00'),
(247, 'pou', 'L', 'Mahasiswa', 'Baca Buku####', '.,/,.o;j', '2015-02-04 22:27:41'),
(248, 'doni', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'bagus', '2015-02-05 21:31:31'),
(249, 'Udin', 'L', 'Mahasiswa', 'Baca Buku####', 'aaaa', '2015-02-05 22:39:40'),
(250, 'Yudhi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Oke nih', '2015-02-06 14:24:32'),
(251, 'abeztasoma', 'L', 'Mahasiswa', 'Baca Buku####', 'coba yaa', '2015-02-07 07:49:01'),
(252, 'bedol', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'tidak ada', '2015-02-07 16:12:19'),
(253, 'bedol', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'tidak ada', '2015-02-07 16:12:53'),
(254, 'Tio', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'Test', '2015-02-07 20:49:19'),
(255, 'Tio', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'vgcdvxvxc', '2015-02-07 20:49:47'),
(256, 'ahmadmad', 'L', 'Mahasiswa', '#Pinjam Buku###', '', '2015-02-08 11:24:10'),
(257, 'jjjss', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'kjjj', '2015-02-08 17:26:01'),
(258, 'asd', 'L', 'Mahasiswa', 'Baca Buku####', 'l', '2015-02-09 00:19:01'),
(259, 'kknnjp', 'P', 'Dosen', 'Baca Buku#Pinjam Buku##Baca Koran#', 'mp;kpn', '2015-02-09 01:52:53'),
(260, '52', 'L', 'Dosen', 'Baca Buku#Pinjam Buku###', '5252', '2015-02-09 07:28:32'),
(261, 'sa', 'L', 'Mahasiswa', 'Baca Buku####', 'scs', '2015-02-09 10:56:21'),
(262, 'FAIZ', 'L', 'Mahasiswa', 'Baca Buku####', 'a', '2015-02-09 11:16:04'),
(263, 'Samsul', 'L', 'Mahasiswa', 'Baca Buku####', 'tes', '2015-02-09 11:31:52'),
(264, 'fahmi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###Lainnya', 'lebih dikembangkan', '2015-02-09 20:44:49'),
(265, 'lala', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'lala', '2015-02-10 14:29:36'),
(266, 'fggfb', 'L', 'Dosen', 'Baca Buku####', 'cxfbvxc', '2015-02-10 21:18:24'),
(267, 'Hadi', 'L', 'Mahasiswa', 'Baca Buku####', 'None', '2015-02-10 22:48:39'),
(268, 'Hadi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'none', '2015-02-10 22:49:04'),
(269, 'kuntul aji', 'L', 'Mahasiswa', 'Baca Buku####', 'totlah', '2015-02-11 11:13:31'),
(270, 'kuntul aji', 'L', 'Mahasiswa', 'Baca Buku##Kembalikan Buku##', 'dqjigiweh', '2015-02-11 11:16:11'),
(271, 'ismat', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Bagus', '2015-02-11 11:52:56'),
(272, 'Muhammad Fadhli', 'L', 'Mahasiswa', 'Baca Buku####', 'Bagus banget', '2015-02-11 17:22:09'),
(273, 'caca', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ada', '2015-02-12 14:02:18'),
(274, 'asdq', 'L', 'Mahasiswa', 'Baca Buku####', 'de', '2015-02-12 20:46:07'),
(275, 'azmi', 'L', 'Mahasiswa', 'Baca Buku####', 'keren', '2015-02-13 12:56:27'),
(276, 'a', 'L', 'Mahasiswa', 'Baca Buku##Kembalikan Buku##', 'aaa', '2015-02-13 13:30:44'),
(277, 'ddd', 'L', 'Mahasiswa', 'Baca Buku####', 'sss', '2015-02-13 23:03:31'),
(278, 'g', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sip', '2015-02-14 09:07:54'),
(279, 'Siagian, Aprilliana', 'L', 'Dosen', 'Baca Buku#Pinjam Buku###', 'asa', '2015-02-14 19:57:31'),
(280, 'vcvx', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'xvx  ', '2015-02-15 05:21:16'),
(281, 'zuh', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'bagus', '2015-02-15 08:00:35'),
(282, 'Rifki Ayu Ramadhani', 'P', 'Mahasiswa', 'Baca Buku####', 'good', '2015-02-15 11:41:41'),
(283, 'gd', 'L', 'Mahasiswa', 'Baca Buku####', 'dg', '2015-02-17 06:00:56'),
(284, 'syafriadi', 'L', 'Dosen', 'Baca Buku####', 'oke', '2015-02-17 10:16:51'),
(285, 'se', 'L', 'Mahasiswa', 'Baca Buku####', 'mm', '2015-02-17 19:12:21'),
(286, 'suroso', 'L', 'Mahasiswa', 'Baca Buku####', 'terima kasih', '2015-02-17 19:30:16'),
(287, 'ari', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'kjnnn,', '2015-02-18 10:50:16'),
(288, 'ari', 'L', 'Mahasiswa', 'Baca Buku##Kembalikan Buku##', 'sdfdfdsf', '2015-02-18 10:50:41'),
(289, 'ZULKARNAIN', 'L', 'Mahasiswa', 'Baca Buku####', 'z', '2015-02-18 12:00:26'),
(290, 'asd', 'L', 'Mahasiswa', 'Baca Buku####', 'asdasd', '2015-02-18 14:43:38'),
(291, 'muhammad ', 'L', 'Mahasiswa', 'Baca Buku####', 'sangat bagus', '2015-02-19 19:45:12'),
(292, 'Dana', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ok', '2015-02-20 21:14:29'),
(293, 'edfsf', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'reretretretretr', '2015-02-22 11:01:24'),
(294, 'aa', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'aa', '2015-02-23 22:41:16'),
(295, 'riski', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'oke', '2015-02-24 16:20:24'),
(296, 'sudirman', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'vbnvbnvbn', '2015-02-26 09:02:29'),
(297, 'hhhh', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'jjj', '2015-02-26 21:40:28'),
(298, 'Bedul', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Tidak ada', '2015-02-27 06:17:43'),
(299, 'Agung123', 'L', 'Mahasiswa', 'Baca Buku####Lainnya', 'email saya agoeng_nian@yahoo.com', '2015-02-27 10:57:04'),
(300, 'diah', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'yeahh', '2015-02-27 11:01:01'),
(301, 'Paijo', 'P', 'Mahasiswa', 'Baca Buku####', 'Saran dan Kriting', '2015-02-27 14:33:05'),
(302, 'aa', 'L', 'Mahasiswa', 'Baca Buku####', 'a', '2015-02-27 22:54:19'),
(303, 'wawan', 'L', 'Mahasiswa', 'Baca Buku####', 'ddd', '2015-02-28 10:46:25'),
(304, 'yayan', 'L', 'Mahasiswa', 'Baca Buku####Lainnya', 'yo', '2015-02-28 20:09:20'),
(305, 'Heru', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Oke', '2015-02-28 20:44:13'),
(306, 'dfsfd', 'L', 'Mahasiswa', 'Baca Buku####', 'dxfxzdf ', '2015-03-01 00:13:37'),
(307, '!S!WCRTESTINPUT000000!E!', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:29:19'),
(308, '!S!WCRTESTINPUT000000!E!', 'L', '', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:29:25'),
(309, '!S!WCRTESTINPUT000000!E!', 'L', '', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:29:30'),
(310, '!S!WCRTESTINPUT000000!E!', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:29:32'),
(311, '!S!WCRTESTINPUT000000!E!', 'L', '', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:29:35'),
(312, '!S!WCRTESTINPUT000000!E!', 'L', '', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:29:44'),
(313, '!S!WCRTESTINPUT000000!E!', 'L', '', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:29:47'),
(314, '!S!WCRTESTINPUT000000!E!', 'L', '', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:29:47'),
(315, '!S!WCRTESTINPUT000000!E!\' aNd \'7\'=\'7', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:29:51'),
(316, '!S!WCRTESTINPUT000000!E!', 'L', '', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:29:51'),
(317, '!S!WCRTESTINPUT000000!E!\' aNd \'7\'=\'2', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:30:04'),
(318, '1 aNd 7=7', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:30:10'),
(319, '!S!WCRTESTINPUT000000!E!', 'L', '', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:30:14'),
(320, '1 aNd 7=2', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:30:16'),
(321, '99999999 oR 7=7', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:30:31'),
(322, '99999999 oR 7=2', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:30:48'),
(323, '99999999\' oR \'7\'=\'7', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:31:01'),
(324, '99999999\' oR \'7\'=\'2', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:31:26'),
(325, '\' oR \'%\'=\'', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:31:36'),
(326, '\' oR \'%\'=\'2', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:31:44'),
(327, '!S!WCRTESTINPUT000000!E!', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!\' aNd \'7\'=\'7', '2015-03-01 10:31:53'),
(328, '!S!WCRTESTINPUT000000!E!', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!\' aNd \'7\'=\'2', '2015-03-01 10:32:08'),
(329, '!S!WCRTESTINPUT000000!E!', 'L', 'Mahasiswa', '####', '\' oR \'%\'=\'', '2015-03-01 10:32:14'),
(330, '!S!WCRTESTINPUT000000!E!', 'L', 'Mahasiswa', '####', '\' oR \'%\'=\'2', '2015-03-01 10:32:26'),
(331, '!S!WCRTESTINPUT000000!E!', '', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:32:54'),
(332, '!S!WCRTESTINPUT000000!E!', '', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:33:16'),
(333, '!S!WCRTESTINPUT000000!E!', '', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:34:44'),
(334, '!S!WCRTESTINPUT000000!E!', '', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:35:12'),
(335, '!S!WCRTESTINPUT000000<><><>!E!', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:35:24'),
(336, '!S!WCRTESTINPUT000000!E!', 'L', 'Mahasiswa', '####', '!S!WCRTESTINPUT000001<><><>!E!', '2015-03-01 10:35:51'),
(337, '!S!WCRTESTINPUT000000!E!', '', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:39:04'),
(338, '!S!WCRTESTINPUT000000!E!', 'L', '', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:39:31'),
(339, '!S!WCRTESTINPUT000000!E!', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:41:59'),
(340, '', '', '', '####', '', '2015-03-01 10:42:02'),
(341, '!S!WCRTESTINPUT000000!E!', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:42:35'),
(342, '!S!WCRTESTINPUT000000!E!', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:42:56'),
(343, '!S!WCRTESTINPUT000000!E!', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:43:11'),
(344, '!S!WCRTESTINPUT000000!E!', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!\' aNd \'7\'=\'7', '2015-03-01 10:43:18'),
(345, '!S!WCRTESTINPUT000000!E!', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!\' aNd \'7\'=\'2', '2015-03-01 10:43:39'),
(346, '!S!WCRTESTINPUT000000!E!', 'L', 'Mahasiswa', '####', '\' oR \'%\'=\'', '2015-03-01 10:44:03'),
(347, '!S!WCRTESTINPUT000000!E!', 'L', 'Mahasiswa', '####', '\' oR \'%\'=\'2', '2015-03-01 10:44:18'),
(348, '!S!WCRTESTINPUT000000!E!', '', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:44:48'),
(349, '!S!WCRTESTINPUT000000!E!', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:44:49'),
(350, '!S!WCRTESTINPUT000000<><><>!E!', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:44:59'),
(351, '!S!WCRTESTINPUT000000!E!', '', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:45:38'),
(352, '!S!WCRTESTINPUT000000!E!', 'L', 'Mahasiswa', '####', '!S!WCRTESTINPUT000001<><><>!E!', '2015-03-01 10:46:04'),
(353, '!S!WCRTESTINPUT000000!E!', '', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:46:32'),
(354, '!S!WCRTESTINPUT000000!E!', '', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:46:54'),
(355, '!S!WCRTESTINPUT000000!E!', '', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:46:58'),
(356, '!S!WCRTESTINPUT000000!E!', 'L', '', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:47:03'),
(357, '', '', '', '####', '', '2015-03-01 10:48:06'),
(358, '!S!WCRTESTINPUT000000!E!', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:48:21'),
(359, '1 aNd 7=7', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:58:15'),
(360, '1 aNd 7=2', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:58:22'),
(361, '99999999 oR 7=7', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:59:00'),
(362, '99999999 oR 7=2', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:59:11'),
(363, '\' oR \'%\'=\'', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 10:59:40'),
(364, '\' oR \'%\'=\'2', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2015-03-01 11:00:56'),
(365, '', '', '', '####', '', '2015-03-01 11:10:28'),
(366, 'saya', 'P', 'Dosen', 'Baca Buku####', 'eeeaaaaaa', '2015-03-01 21:11:41'),
(367, 'kupret', 'L', 'Mahasiswa', 'Baca Buku####', 'test', '2015-03-01 21:23:14'),
(368, 'Ridwan Arifin', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Bagaimana Cara membacanya', '2015-03-01 22:59:49'),
(369, 'dewa', 'L', 'Mahasiswa', 'Baca Buku####', 'ee', '2015-03-02 09:17:18'),
(370, 'mas Joko', 'L', 'Mahasiswa', 'Baca Buku####', 'test', '2015-03-02 22:57:40'),
(371, 'ujang', 'L', 'Mahasiswa', 'Baca Buku####', 'yyyyy', '2015-03-03 14:49:55'),
(372, 'likhin', 'L', 'Mahasiswa', 'Baca Buku####', 'jggjg', '2015-03-03 15:31:53'),
(373, 'abang', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'can nyobaan', '2015-03-04 05:22:33'),
(374, 'EKo R', 'L', 'Dosen', 'Baca Buku#Pinjam Buku###', 'Buku nya jelek', '2015-03-04 20:06:36'),
(375, 'NOVIANDRI', 'L', 'Mahasiswa', 'Baca Buku###Baca Koran#', 'test', '2015-03-05 06:58:01'),
(376, 'NOVIANDRI', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku##Baca Koran#', 'test', '2015-03-05 07:00:21'),
(377, 'Abid', 'L', 'Mahasiswa', 'Baca Buku####', 'good', '2015-03-05 23:46:57'),
(378, 'Ardi', 'L', 'Mahasiswa', 'Baca Buku####', 'OK', '2015-03-06 16:52:58'),
(379, 'Arpani', 'L', 'Mahasiswa', 'Baca Buku####', 'belum ada', '2015-03-06 20:50:59'),
(380, 'Bayu', 'L', 'Mahasiswa', 'Baca Buku####', 'Mantan', '2015-03-07 18:19:50'),
(381, 'Randy', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2015-03-07 22:58:42'),
(382, 'Ahadian Akbar', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Ok', '2015-03-08 09:59:46'),
(383, 'hermes', 'L', 'Mahasiswa', 'Baca Buku####', 'testing', '2015-03-08 12:36:07'),
(384, 'ali', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'bnm', '2015-03-09 15:33:12'),
(385, 'dede', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'fgadsfa', '2015-03-10 08:13:55'),
(386, 'ari', 'L', 'Mahasiswa', 'Baca Buku####', 'aaa', '2015-03-10 17:54:31'),
(387, 'Anwar', 'L', 'Mahasiswa', 'Baca Buku####', 'baik', '2015-03-10 21:16:39'),
(388, 'doni', 'L', 'Mahasiswa', 'Baca Buku####', 'oke', '2015-03-11 20:04:10'),
(389, 'achmad chilmi', 'L', 'Mahasiswa', 'Baca Buku####', 'keren', '2015-03-11 22:51:44'),
(390, 'hvvk', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'youcoucuco', '2015-03-11 23:53:06'),
(391, 'dedi', 'L', 'Mahasiswa', 'Baca Buku####', 'oke', '2015-03-12 11:44:35'),
(392, 'deka', 'L', 'Dosen', 'Baca Buku##Kembalikan Buku##', 'ok', '2015-03-12 11:45:42'),
(393, 'Hambali', 'L', 'Mahasiswa', 'Baca Buku####', 'sip lah', '2015-03-13 19:13:33'),
(394, 'asdas', 'L', 'Mahasiswa', 'Baca Buku####', 'asdas', '2015-03-13 22:21:52'),
(395, 'Muhamad Suebi Suganda', 'L', 'Mahasiswa', 'Baca Buku####', 'ghjk', '2015-03-15 05:25:26'),
(396, 'Reno ', 'L', 'Mahasiswa', 'Baca Buku####Lainnya', 'Belum Ada saran', '2015-03-15 16:14:03'),
(397, 'hhm', 'P', 'Mahasiswa', 'Baca Buku####', 'j', '2015-03-16 05:14:31'),
(398, 'mukmin', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'kdskskd', '2015-03-16 09:34:28'),
(399, 'BACO', 'L', 'Mahasiswa', 'Baca Buku####', 'ss', '2015-03-16 15:20:07'),
(400, 'sa', 'P', 'Mahasiswa', 'Baca Buku####', 'tes', '2015-03-17 12:36:42'),
(401, 'achmad', 'L', 'Mahasiswa', 'Baca Buku####', 'mantap', '2015-03-17 13:08:37'),
(402, 'diman', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sss', '2015-03-17 13:09:38'),
(403, 'Amat', 'L', 'Mahasiswa', 'Baca Buku####', 'siip sekali', '2015-03-17 15:24:59'),
(404, 'baguskara', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2015-03-17 20:32:07'),
(405, 'oioi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku##Baca Koran#', 'sip', '2015-03-18 00:43:44'),
(406, 'wulan', 'P', 'Mahasiswa', 'Baca Buku####Lainnya', 'tidak ada', '2015-03-18 10:54:45'),
(407, 'Diana Rahmi', 'P', 'Mahasiswa', 'Baca Buku####', 'Semoga lebih terprogram lagi', '2015-03-19 09:43:05'),
(408, 'jamal', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'bagus', '2015-03-20 07:02:29'),
(409, 'kjsdhksds', 'L', 'Mahasiswa', 'Baca Buku####', 'hkjho', '2015-03-20 22:36:37'),
(410, 'dada', 'L', 'Mahasiswa', 'Baca Buku####', 'jhkjh', '2015-03-20 22:37:25'),
(411, 'irfna', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2015-03-21 02:49:24'),
(412, 'rrrr', 'L', 'Mahasiswa', 'Baca Buku####', 'oke', '2015-03-21 17:04:10'),
(413, 'Agus t', 'L', 'Mahasiswa', 'Baca Buku####Lainnya', 'sangat bermanfaat', '2015-03-22 12:34:50'),
(414, 'Arif Budiman', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', '-', '2015-03-23 09:26:08'),
(415, 'hasan', 'L', 'Mahasiswa', 'Baca Buku####', 'Coba aja', '2015-03-24 00:11:13'),
(416, 'dudung', 'L', 'Dosen', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'ddf', '2015-03-24 00:16:58'),
(417, 'zx', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'xcc', '2015-03-24 08:41:41'),
(418, 'arig', 'L', 'Mahasiswa', 'Baca Buku####', 'Kurangnya tempat duduk', '2015-03-24 13:15:27'),
(419, 'harjuis', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sangat bagus', '2015-03-25 09:14:07'),
(420, 'coba', 'L', 'Mahasiswa', 'Baca Buku####Lainnya', 'sssssssssssssss', '2015-03-25 10:12:45'),
(421, 'hhhhh', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'hbhbhj', '2015-03-25 11:33:32'),
(422, 'asa', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'suka', '2015-03-25 13:26:52'),
(423, 'anggra', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2015-03-25 16:55:44'),
(424, 'RUDIANSAH', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'cb c', '2015-03-26 00:04:48'),
(425, 'Guntur', 'L', 'Mahasiswa', 'Baca Buku####', 'terimakasih om nur akhwan', '2015-03-26 09:07:52'),
(426, 'Test', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'test', '2015-03-27 14:05:03'),
(427, 'taufik', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'hffh', '2015-03-27 16:35:07'),
(428, 'wew', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'dsds', '2015-03-27 16:35:46'),
(429, 'emen', 'L', 'Mahasiswa', 'Baca Buku####', 'no thanks', '2015-03-27 21:28:42'),
(430, 'test', 'L', 'Mahasiswa', 'Baca Buku####', 'safsa', '2015-03-27 22:02:06'),
(431, 'master', 'L', 'Mahasiswa', 'Baca Buku####', 'tess', '2015-03-28 02:48:51'),
(432, 'fghfghgh', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'thththt', '2015-03-28 16:04:02'),
(433, 'Elyan Kowi', 'L', 'Mahasiswa', 'Baca Buku####', 'Love this WEB', '2015-03-28 21:08:53'),
(434, 'Putri', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#', 'no comment', '2015-03-29 12:21:23'),
(435, 'test', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku##Baca Koran#Lainnya', 'test', '2015-03-30 09:18:20'),
(436, 'Alief Septiano', 'L', 'Mahasiswa', 'Baca Buku####', '6464', '2015-03-31 11:40:19'),
(437, 'yyt', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2015-03-31 11:40:54'),
(438, 'Alief Septiano', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', '\'p[kp[\'', '2015-03-31 11:41:39'),
(439, 'eeee', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'edfe', '2015-03-31 13:30:26'),
(440, 'EDUU', 'L', 'Mahasiswa', 'Baca Buku####', 'IYI[O\'OOLK;;;', '2015-04-01 03:31:34'),
(441, 'baskoro', 'L', 'Mahasiswa', 'Baca Buku###Baca Koran#Lainnya', 'testing', '2015-04-02 08:00:38'),
(442, 'rizky', 'L', 'Mahasiswa', 'Baca Buku####', 'oke dehh', '2015-04-02 16:49:19'),
(443, 'toni', 'L', 'Mahasiswa', 'Baca Buku####', 'coba', '2015-04-03 10:22:45'),
(444, 'farididahlan', 'L', 'Mahasiswa', 'Baca Buku####', 'Ditingkatkan lagi', '2015-04-04 06:59:36'),
(445, 'Hilmi Aziz Bukhori\\', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'hai', '2015-04-04 20:54:25'),
(446, 'Saipol', 'L', 'Mahasiswa', 'Baca Buku####', 'Sudah bagus', '2015-04-05 00:25:26'),
(447, 'Gam', 'L', 'Mahasiswa', 'Baca Buku###Baca Koran#', 'no think..', '2015-04-05 21:17:16'),
(448, 'etyte', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'm', '2015-04-06 03:34:44'),
(449, 'mucklis', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'asdadasd', '2015-04-07 11:09:22'),
(450, 'chandra', 'L', 'Mahasiswa', 'Baca Buku####', 'hay admin :)', '2015-04-07 16:40:23'),
(451, 'sdasd', 'L', 'Mahasiswa', 'Baca Buku####', 'asdasd', '2015-04-08 08:31:44'),
(452, 'made', 'L', 'Mahasiswa', 'Baca Buku####', 'sementara belum', '2015-04-08 09:39:19'),
(453, 'edy', 'L', 'Mahasiswa', 'Baca Buku####', 'oke', '2015-04-08 12:17:53'),
(454, 'oke', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 's', '2015-04-08 12:24:02'),
(455, '99', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', '9o', '2015-04-08 14:08:39'),
(456, 'Sulaiman', 'L', 'Mahasiswa', 'Baca Buku####', 'Mantab om', '2015-04-08 19:55:15'),
(457, 'tess', 'L', 'Mahasiswa', 'Baca Buku####', 'coba', '2015-04-09 01:38:56'),
(458, 'te', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'coba', '2015-04-09 01:40:35'),
(459, 'Zulfi Darmawan', 'L', 'Mahasiswa', 'Baca Buku####', 'testing', '2015-04-09 11:50:42'),
(460, 'sypo', 'L', 'Mahasiswa', 'Baca Buku####', 'mau baca', '2015-04-10 03:01:11'),
(461, 'unang', 'L', 'Mahasiswa', 'Baca Buku####', 'baaik', '2015-04-10 09:15:21'),
(462, 'aka', 'L', 'Mahasiswa', 'Baca Buku####', 'bosan', '2015-04-11 11:11:48'),
(463, 'Agus Aris Styawan', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku##Baca Koran#Lainnya', 'belajar adalh kebutuhan', '2015-04-11 11:19:12'),
(464, 'loop', 'L', 'Mahasiswa', 'Baca Buku####', 'jos', '2015-04-12 20:57:06'),
(465, 'a', 'L', 'Mahasiswa', 'Baca Buku####', 'aa', '2015-04-13 18:51:13'),
(466, 'asSas', 'L', 'Mahasiswa', 'Baca Buku####', 'aSas', '2015-04-13 22:19:21'),
(467, 'opang', 'L', 'Mahasiswa', 'Baca Buku####', 'kanka', '2015-04-14 12:44:45'),
(468, 'kka', 'L', 'Dosen', 'Baca Buku#Pinjam Buku###', 'aa', '2015-04-14 12:45:20'),
(469, 'aksks', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'aaa', '2015-04-14 12:45:41'),
(470, 'kiki dwi septiadi', 'L', 'Mahasiswa', 'Baca Buku####', 'wowowowow', '2015-04-14 12:55:46'),
(471, 'wahyudi', 'L', 'Mahasiswa', 'Baca Buku####', 'as', '2015-04-15 11:49:25'),
(472, 'AHMAD ROFIK', 'L', 'Mahasiswa', 'Baca Buku###Baca Koran#', 'Bagus', '2015-04-15 20:16:17'),
(473, 'Rudy', 'L', 'Mahasiswa', 'Baca Buku###Baca Koran#', 'trims', '2015-04-16 09:06:25'),
(474, 'sfgrg', 'L', 'Mahasiswa', 'Baca Buku####', 'sdVGz', '2015-04-17 07:58:17'),
(475, 'aaa', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'asas', '2015-04-17 17:28:53'),
(476, 'fghdfhsf', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'gfhxfh', '2015-04-17 20:06:45'),
(477, 'ujicoba', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'weewr', '2015-04-17 22:40:47'),
(478, 'adam', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2015-04-18 15:50:39'),
(479, 'Handri', 'L', 'Mahasiswa', 'Baca Buku####', 'coba', '2015-04-18 23:13:39'),
(480, 'ahmad turyanto', 'L', 'Mahasiswa', 'Baca Buku####', 'aa', '2015-04-19 22:48:44'),
(481, 'chandra', 'L', 'Mahasiswa', 'Baca Buku####', 'hay', '2015-04-20 12:45:44'),
(482, 'chandra', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'hello', '2015-04-20 12:50:11'),
(483, 'Izannoer', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'lklnjn', '2015-04-20 15:34:21'),
(484, 'Izannoer', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'lklnjn', '2015-04-20 15:34:24'),
(485, 'raaaagil', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'asdsad', '2015-04-20 15:47:54'),
(486, 'gg', 'L', 'Mahasiswa', 'Baca Buku####', 'hh', '2015-04-20 19:47:34'),
(487, 'vita', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'bagus', '2015-04-21 11:38:11'),
(488, 'indah', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'bagus', '2015-04-22 10:29:44'),
(489, 'sukardi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'gdfgfdgdfgf dfgdgdfgfd gdfgdf ', '2015-04-22 20:16:31'),
(490, 'as', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ini saaran', '2015-04-23 09:10:54'),
(491, 'hendjsnbdjs', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'oklkk', '2015-04-23 13:48:19'),
(492, 'iiuliluli', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'liluliluil', '2015-04-23 13:59:21'),
(493, 'Armada', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'bagus', '2015-04-23 19:37:24'),
(494, 'ddd', 'L', 'Mahasiswa', 'Baca Buku####', 'dd', '2015-04-24 18:19:22'),
(495, 'tes', 'L', 'Mahasiswa', 'Baca Buku####', 'ffff', '2015-04-26 07:25:46'),
(496, 'rtetret', 'L', 'Mahasiswa', 'Baca Buku####', 'ertet', '2015-04-27 15:22:21'),
(497, 'fd', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'scc', '2015-04-28 01:43:35'),
(498, 'Tes', 'L', 'Mahasiswa', 'Baca Buku###Baca Koran#Lainnya', 'tes', '2015-04-28 23:48:50'),
(499, 'Arman', 'L', '', '####', '', '2015-04-29 11:12:35'),
(500, 'Arman', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Bagus sekali pustakanya, rapi', '2015-04-29 11:12:55'),
(501, 'test', 'L', 'Mahasiswa', 'Baca Buku####', 'test', '2015-04-30 00:49:32'),
(502, 'sdfsdf', 'L', 'Mahasiswa', 'Baca Buku###Baca Koran#', 'sdfsdf', '2015-04-30 14:55:35'),
(503, 'jkkl', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'coba', '2015-04-30 18:25:46'),
(504, 'Andi', 'L', 'Mahasiswa', 'Baca Buku####', 're', '2015-05-04 07:19:24'),
(505, 'AS', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'OK', '2015-05-04 11:37:21'),
(506, 'Dwi', 'L', 'Mahasiswa', 'Baca Buku####', 'Nice', '2015-05-04 13:52:36'),
(507, 'sfsf', 'P', 'Mahasiswa', 'Baca Buku####', 'sf', '2015-05-04 14:39:42'),
(508, 'asdf@123', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'asdf', '2015-05-04 16:01:53'),
(509, 'User 3', 'P', 'Mahasiswa', 'Baca Buku####', 'Nagus tampilannya', '2015-05-06 05:11:00'),
(510, 'ramdhan', 'L', 'Mahasiswa', 'Baca Buku####', 'gwrgeg', '2015-05-06 10:24:40'),
(511, 'jaja', 'L', 'Mahasiswa', 'Baca Buku####', 'dafdevc', '2015-05-06 13:29:53'),
(512, 'Goblog', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#', 'OK', '2015-05-07 09:24:33'),
(513, '-', 'L', 'Mahasiswa', 'Baca Buku####', '-', '2015-05-07 18:58:57'),
(514, 'aaa', 'P', 'Mahasiswa', 'Baca Buku####', '????', '2015-05-07 20:57:36'),
(515, 'bb', 'L', 'Dosen', 'Baca Buku#Pinjam Buku###', 'ppp', '2015-05-07 20:59:01'),
(516, 'kckskckscsv', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sdfvsedvsd', '2015-05-08 09:58:51'),
(517, 'e', 'P', 'Mahasiswa', 'Baca Buku####', 'e', '2015-05-08 13:23:59'),
(518, 'dgadhad', 'L', 'Mahasiswa', 'Baca Buku##Kembalikan Buku##', 'asgagag', '2015-05-08 19:32:30'),
(519, 'Yanuar', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2015-05-09 10:00:40'),
(520, 'cbncf ', 'L', 'Mahasiswa', 'Baca Buku####', 'ssetgesg', '2015-05-09 13:05:09'),
(521, 'jeje', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'meminjam buku', '2015-05-09 23:48:23'),
(522, 'jeje', 'P', 'Mahasiswa', 'Baca Buku##Kembalikan Buku##', 'aas', '2015-05-09 23:51:46'),
(523, '', '', '', '####', '', '2015-05-10 10:56:47'),
(524, 'jdd', 'L', 'Mahasiswa', 'Baca Buku####', 'kjkjkj', '2015-05-10 14:30:07'),
(525, '', '', '', '####', '', '2015-05-10 21:22:53'),
(526, 'riyan', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'g', '2015-05-12 11:49:20'),
(527, 'Adi Sucipto', 'L', 'Mahasiswa', 'Baca Buku####', 'dsad', '2015-05-12 17:33:02'),
(528, 'Capung', 'L', 'Mahasiswa', 'Baca Buku####', 'oke', '2015-05-13 11:19:48'),
(529, 'Aura Saru', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'kamprettt', '2015-05-13 13:59:22'),
(530, 'test', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'bagus', '2015-05-13 19:26:48'),
(531, 'Manca', 'P', 'Dosen', 'Baca Buku####', 'Asu', '2015-05-13 22:32:30'),
(532, 'apa', 'L', 'Mahasiswa', 'Baca Buku####', 'aaa', '2015-05-14 05:41:25'),
(533, 'Cleo', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sa', '2015-05-14 23:01:13'),
(534, 'dsdsd', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'hjh', '2015-05-15 08:05:07'),
(535, 'Ahmad Sopian', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'OKE', '2015-05-15 22:59:12'),
(536, 'qirom', 'L', 'Mahasiswa', 'Baca Buku####', '', '2015-05-16 05:03:42'),
(537, 'Udin', 'L', 'Dosen', 'Baca Buku####', 'ok download ya', '2015-05-17 14:46:45'),
(538, 'kjj', 'L', 'Mahasiswa', 'Baca Buku####', 'jj', '2015-05-18 11:14:28'),
(539, 'udin', 'L', 'Mahasiswa', 'Baca Buku##Kembalikan Buku##', 'zxzx', '2015-05-18 18:41:17'),
(540, 'sada', 'L', 'Mahasiswa', 'Baca Buku####', 'qwfeqfqef', '2015-05-19 09:33:09'),
(541, 'Dany Setiawan', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Buku Kode2 GTA', '2015-05-19 10:14:16'),
(542, 'anjas', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'bagus', '2015-05-19 11:52:38'),
(543, '', 'L', 'Dosen', '#Pinjam Buku###', '', '2015-05-19 21:46:33'),
(544, 'kanceut ', 'L', 'Mahasiswa', '#Pinjam Buku###', '', '2015-05-19 21:47:05');
INSERT INTO `t_pengunjung` (`id`, `nama`, `jk`, `jenis`, `perlu`, `saran`, `tgl`) VALUES
(545, 'ADS', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'das', '2015-05-19 23:00:36'),
(546, 'aho', 'L', 'Mahasiswa', 'Baca Buku####', 'yo', '2015-05-20 02:34:02'),
(547, 'sasa', 'L', 'Mahasiswa', 'Baca Buku####', 'da', '2015-05-20 13:12:42'),
(548, 'Andrian', 'L', 'Mahasiswa', 'Baca Buku####', 'Bagus\n', '2015-05-21 10:05:40'),
(549, 'dd', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'okelah', '2015-05-21 16:33:28'),
(550, 'Budi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'testing', '2015-05-21 19:14:00'),
(551, 'h2', 'L', 'Mahasiswa', 'Baca Buku####', 'fedfdefd', '2015-05-22 01:04:06'),
(552, 'tyutyutyu', 'L', 'Mahasiswa', 'Baca Buku####', 'tyuytu', '2015-05-22 13:20:14'),
(553, 'qqq', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'qqq', '2015-05-22 16:13:49'),
(554, 'agung', 'L', 'Mahasiswa', 'Baca Buku####', 'gwrr', '2015-05-24 10:00:40'),
(555, 'cas', 'L', 'Mahasiswa', 'Baca Buku####', 'cac', '2015-05-25 07:57:09'),
(556, 'tedy', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'test', '2015-05-25 11:21:39'),
(557, 'fdbhd', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'dvs', '2015-05-25 13:45:22'),
(558, 'Maha Siwa', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'kritik dan saran', '2015-05-25 14:08:32'),
(559, 'ss', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 's', '2015-05-26 11:36:13'),
(560, 'adssd', 'L', 'Mahasiswa', 'Baca Buku####', 'asd', '2015-05-26 16:03:22'),
(561, 'ali', 'L', 'Mahasiswa', 'Baca Buku####', 'l', '2015-05-26 21:20:58'),
(562, 'sts', 'L', 'Mahasiswa', 'Baca Buku####', 'sts', '2015-05-27 12:40:42'),
(563, 'Mahmudin', 'L', 'Dosen', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'asaassa', '2015-05-27 15:35:36'),
(564, 'paijo', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'yyyy', '2015-05-27 16:31:49'),
(565, 'conan', 'L', 'Mahasiswa', 'Baca Buku####', 'test', '2015-05-27 21:22:06'),
(566, 'ttttttttttttt', 'L', 'Mahasiswa', 'Baca Buku####', 'ttttttttttttttttt', '2015-05-28 00:36:03'),
(567, 'Dadan Darusman', 'L', 'Mahasiswa', 'Baca Buku####', 'sdasda', '2015-05-28 21:21:06'),
(568, 'jahjhajsaas', 'L', 'Mahasiswa', 'Baca Buku####Lainnya', 'dadadaa', '2015-05-29 08:22:27'),
(569, 'iin', 'P', 'Mahasiswa', 'Baca Buku####', 'yes', '2015-05-29 13:44:20'),
(570, 'popio', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'nkjhkj', '2015-05-29 18:23:27'),
(571, 'guntur', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ertgfdfg', '2015-05-30 03:52:40'),
(572, 'nsa', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'h', '2015-05-30 15:20:20'),
(573, 'apa', 'L', 'Mahasiswa', 'Baca Buku####', 'a', '2015-05-31 17:45:03'),
(574, 'asdad', 'L', 'Mahasiswa', 'Baca Buku###Baca Koran#', 'asd', '2015-06-01 11:16:46'),
(575, 'Haha', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'a', '2015-06-01 20:57:00'),
(576, 'Allif', 'L', 'Mahasiswa', 'Baca Buku####', 'siap bos', '2015-06-02 14:54:28'),
(577, 'patdli', 'L', 'Mahasiswa', 'Baca Buku####', 'tidak ada', '2015-06-04 09:58:30'),
(578, 'patdli', 'L', 'Mahasiswa', 'Baca Buku####', 'kdida saran', '2015-06-04 09:59:10'),
(579, 'ratna', 'P', 'Mahasiswa', 'Baca Buku####', 'Keren', '2015-06-04 14:21:32'),
(580, 'aa', 'L', 'Mahasiswa', 'Baca Buku####', 'aa', '2015-06-04 15:54:53'),
(581, 'Muhammad Agung Laksono', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'test', '2015-06-04 18:15:38'),
(582, 'luqman hakim', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'bagus', '2015-06-04 20:24:08'),
(583, 'saya', 'P', 'Dosen', 'Baca Buku####', 'ada', '2015-06-05 00:12:29'),
(584, 'wirya', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sip', '2015-06-08 16:23:25'),
(585, 'a', 'L', 'Mahasiswa', 'Baca Buku####', 's', '2015-06-08 22:21:52'),
(586, 'zakaria', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'damailah', '2015-06-09 11:53:49'),
(587, 'andre', 'L', 'Dosen', 'Baca Buku####', 'haha', '2015-06-09 12:23:03'),
(588, 'fahmi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'bagus', '2015-06-09 15:25:59'),
(589, 'Tes', 'L', 'Mahasiswa', 'Baca Buku####Lainnya', 'Tes', '2015-06-10 00:25:43'),
(590, 'ahmad', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'bagus', '2015-06-10 01:51:04'),
(591, 'ok', 'L', 'Mahasiswa', 'Baca Buku####', 'good', '2015-06-10 14:19:14'),
(592, 'kk', 'P', 'Dosen', 'Baca Buku#Pinjam Buku###Lainnya', 'jj', '2015-06-10 14:19:45'),
(593, 'sukiman', 'L', 'Mahasiswa', 'Baca Buku####', 'lalalalal bum bum', '2015-06-11 13:52:29'),
(594, 'n', 'L', 'Mahasiswa', 'Baca Buku####', 'belum ada', '2015-06-12 03:10:25'),
(595, 'a', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'aa', '2015-06-12 13:35:49'),
(596, '', '', '', '####', '', '2015-06-12 19:23:00'),
(597, 'Ismail', 'L', 'Mahasiswa', 'Baca Buku####', 'coba', '2015-06-12 19:23:01'),
(598, 'hesti', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'oke', '2015-06-12 21:00:39'),
(599, 'siska dina melani', 'P', 'Mahasiswa', 'Baca Buku####', 'bagus', '2015-06-13 12:33:27'),
(600, 'aa', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'a', '2015-06-15 16:54:15'),
(601, 'winda julian pandu pertiwi', 'P', 'Mahasiswa', 'Baca Buku####', 'hbhbj', '2015-06-15 18:48:15'),
(602, 'Erda Andika Pratama', 'L', 'Mahasiswa', 'Baca Buku####', 'ok', '2015-06-15 20:27:20'),
(603, 'tyu', 'L', 'Mahasiswa', 'Baca Buku####', 'yuyu', '2015-06-15 22:47:04'),
(604, 'tes', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'nn', '2015-06-16 01:54:26'),
(605, '', 'P', '', '####', '', '2015-06-16 15:56:46'),
(606, 'pulung', 'L', 'Mahasiswa', 'Baca Buku####', 'h', '2015-06-17 08:11:58'),
(607, 'obet', 'L', 'Mahasiswa', 'Baca Buku####', 'dasdasdas', '2015-06-17 13:26:19'),
(608, 'sadasdasdas', 'L', 'Dosen', 'Baca Buku#Pinjam Buku###', 'asdasdasd', '2015-06-17 13:56:34'),
(609, 'yuheni triasasi', 'P', 'Mahasiswa', 'Baca Buku####', 'masih mencoba tampilan', '2015-06-19 11:06:13'),
(610, 'yuheni triasasi', 'P', 'Mahasiswa', 'Baca Buku####', 'masih mencoba tampilan', '2015-06-19 11:06:15'),
(611, 'wawan', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'gl[[oijjgg', '2015-06-20 06:04:41'),
(612, 'asu', 'P', 'Mahasiswa', 'Baca Buku##Kembalikan Buku#Baca Koran#', 'asuuuuuuuuuuu', '2015-06-20 12:31:30'),
(613, 'a', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sdd', '2015-06-21 01:57:59'),
(614, 'asf', 'L', 'Mahasiswa', 'Baca Buku####', 'd', '2015-06-21 14:14:07'),
(615, 'adfasdf', 'L', 'Mahasiswa', 'Baca Buku####', 'asdfsaf', '2015-06-22 09:53:49'),
(616, 'sfsh', 'L', 'Dosen', 'Baca Buku####', 'fhakfhakhfa', '2015-06-22 12:24:34'),
(617, 'sasasa', 'L', 'Dosen', 'Baca Buku#Pinjam Buku###Lainnya', 'asasas', '2015-06-22 12:35:03'),
(618, 'ascd', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sacd', '2015-06-23 16:02:57'),
(619, 'albertodos', 'L', 'Mahasiswa', 'Baca Buku####', 'ada', '2015-06-23 19:42:18'),
(620, 'arbi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sip', '2015-06-23 19:43:38'),
(621, 'alfin', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sipp', '2015-06-24 08:39:10'),
(622, 'Slamet Rivai', 'L', 'Mahasiswa', 'Baca Buku####', 'wew', '2015-06-24 19:17:00'),
(623, 'yoggi ramanda', 'L', 'Mahasiswa', 'Baca Buku####', 'oke', '2015-06-25 10:04:47'),
(624, 'ui', 'L', 'Mahasiswa', 'Baca Buku####', 'jjh', '2015-06-25 16:12:02'),
(625, 'dsgdgfd', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'dfgfdg', '2015-06-25 17:18:16'),
(626, 'aaa', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku##Baca Koran#', 'aa', '2015-06-26 09:32:11'),
(627, 'hahai', 'L', 'Mahasiswa', 'Baca Buku####', 'huhuy', '2015-06-26 15:19:19'),
(628, 'enumerasi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'terimakasih', '2015-06-26 16:24:06'),
(629, 'nmn', 'L', 'Mahasiswa', 'Baca Buku####', 'aa', '2015-06-27 00:21:23'),
(630, 'aaaaa', 'L', 'Mahasiswa', 'Baca Buku####', 'aab ', '2015-06-27 12:28:16'),
(631, 'leni', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'ga ada', '2015-06-27 14:22:43'),
(632, 'ori', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2015-06-27 16:53:53'),
(633, 'adrian', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'bla bla bla', '2015-06-28 11:45:41'),
(634, 'Arif Setiawan', 'L', 'Mahasiswa', 'Baca Buku####', 'Baguss', '2015-06-29 00:05:50'),
(635, 'Haa', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Perpustakaan anjing', '2015-06-29 05:32:03'),
(636, 'Dini Dafika', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'hj', '2015-06-29 21:57:01'),
(637, 'okta priyanto bagus ibrahim', 'L', 'Mahasiswa', 'Baca Buku####', 'test', '2015-06-29 23:39:35'),
(638, 'a', 'L', 'Mahasiswa', 'Baca Buku####', 'sukses', '2015-06-30 00:38:19'),
(639, 'Leo', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'aaa', '2015-06-30 20:55:56'),
(640, 'm', 'L', 'Mahasiswa', 'Baca Buku####', 'm', '2015-07-01 01:22:08'),
(641, 'khoirul', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2015-07-01 05:40:27'),
(642, 'eli', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'a', '2015-07-01 14:17:01'),
(643, 'reza fernandes', 'L', 'Mahasiswa', 'Baca Buku####', 'oke', '2015-07-01 14:35:51'),
(644, 'ana', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'dsa', '2015-07-01 14:39:40'),
(645, 'AJI', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'TIDAK ADA', '2015-07-01 21:51:03'),
(646, 'dadang', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2015-07-02 05:59:24'),
(647, 'ade', 'L', 'Mahasiswa', 'Baca Buku####', 'bvhbb', '2015-07-02 12:14:15'),
(648, 'Rifki Hamin Firmansyah', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'hebat', '2015-07-03 11:20:03'),
(649, 'jj', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sip', '2015-07-04 03:18:52'),
(650, 'Saeb', 'L', 'Mahasiswa', 'Baca Buku####', 'website keren', '2015-07-04 09:11:07'),
(651, 'contohsiswa', 'L', 'Mahasiswa', 'Baca Buku####', 'sy ingin', '2015-07-05 15:50:03'),
(652, 'a', 'L', 'Mahasiswa', 'Baca Buku####', 'aaa', '2015-07-05 23:17:02'),
(653, 'ra', 'L', 'Dosen', 'Baca Buku#Pinjam Buku###', 'tes', '2015-07-06 13:40:58'),
(654, 'tetet', 'L', 'Mahasiswa', 'Baca Buku####', 'hfgnhfgjjgjhn', '2015-07-06 14:07:13'),
(655, 'Dinda Ayu Tafiani Putri', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'testing', '2015-07-07 09:42:47'),
(656, 'bambang', 'L', 'Mahasiswa', 'Baca Buku####', 'tes', '2015-07-07 13:19:26'),
(657, 'Agus', 'L', 'Mahasiswa', 'Baca Buku####', 'tidak ada', '2015-07-08 07:58:41'),
(658, 'wawan', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'kacang', '2015-07-08 07:59:51'),
(659, 'deta', 'L', 'Mahasiswa', 'Baca Buku####', 'ok bgt', '2015-07-08 13:55:44'),
(660, 'ety', 'L', 'Mahasiswa', 'Baca Buku####', 'sangat baik jika lebih banyak membaca', '2015-07-08 22:47:34'),
(661, 'anonym', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ok ok ok', '2015-07-09 06:38:37'),
(662, 'irwan', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'asd', '2015-07-09 10:26:40'),
(663, '', '', '', '####', '', '2015-07-09 15:08:36'),
(664, 'df', 'L', 'Mahasiswa', 'Baca Buku####', 'fa', '2015-07-09 15:08:38'),
(665, 'asd', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'czx', '2015-07-09 20:19:47'),
(666, 'bb', 'L', 'Mahasiswa', 'Baca Buku####', 'nn', '2015-07-10 21:00:18'),
(667, 'Junai', 'L', 'Mahasiswa', 'Baca Buku####', 'No Kritik', '2015-07-10 21:26:18'),
(668, 'xzdsdsd', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'sdsdsdsd', '2015-07-11 20:46:27'),
(669, '', '', '', '####', '', '2015-07-13 09:20:52'),
(670, 'Ridwan Maulana', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Bagus', '2015-07-18 12:17:11'),
(671, 'fksdf', 'L', 'Mahasiswa', 'Baca Buku####', 'baik', '2015-07-19 15:23:47'),
(672, '', '', '', '####', '', '2015-07-20 01:51:28'),
(673, '', '', '', '####', '', '2015-07-20 21:29:52'),
(674, 'Casa', 'L', 'Mahasiswa', 'Baca Buku####', 'axZC', '2015-07-20 21:29:53'),
(675, 'Casa', 'L', 'Mahasiswa', 'Baca Buku####', 'axZC', '2015-07-20 21:29:57'),
(676, 'kurap', 'L', 'Mahasiswa', 'Baca Buku####', 'uhuyyyy', '2015-07-21 07:07:32'),
(677, 'ali kecil', 'L', 'Mahasiswa', 'Baca Buku####', 'dade', '2015-07-22 16:27:03'),
(678, 'Fathurrahman', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'uwhsuwhush', '2015-07-23 11:36:06'),
(679, 'Fathurrahman', 'L', 'Mahasiswa', 'Baca Buku##Kembalikan Buku##', 'swwswsws', '2015-07-23 11:36:45'),
(680, 'riyan', 'L', 'Mahasiswa', 'Baca Buku###Baca Koran#Lainnya', 'manambah ilmu', '2015-07-23 14:52:58'),
(681, 'Budi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku##Baca Koran#', 'ghgjj', '2015-07-23 15:03:54'),
(682, 'ani', 'P', 'Mahasiswa', 'Baca Buku####', 'good', '2015-07-24 02:00:04'),
(683, 'fajar', 'L', 'Mahasiswa', 'Baca Buku####', 'BAGUS', '2015-07-25 01:56:42'),
(684, 'a', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'aaa', '2015-07-25 08:36:55'),
(685, 'rfrv', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sippp', '2015-07-26 19:39:27'),
(686, 'daw', 'L', 'Mahasiswa', 'Baca Buku####', 'awdawd', '2015-07-26 20:03:34'),
(687, 'h my', 'L', 'Mahasiswa', 'Baca Buku####', 'ggty', '2015-07-26 21:33:58'),
(688, 'ee', 'L', 'Mahasiswa', 'Baca Buku####', 'eqweqwe', '2015-07-27 09:02:57'),
(689, 'ade', 'L', 'Mahasiswa', 'Baca Buku####', 'tes', '2015-07-27 13:24:08'),
(690, 'test', 'L', 'Mahasiswa', 'Baca Buku####', 'tes', '2015-07-28 06:48:55'),
(691, 'fdfd', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'bhgfg', '2015-07-28 08:54:02'),
(692, 'muhammad syamsul marif', 'L', 'Dosen', 'Baca Buku####', 'cepat sekali', '2015-07-28 18:26:50'),
(693, 'samsul', 'L', 'Dosen', 'Baca Buku##Kembalikan Buku##', 'cepat di konfirmasi', '2015-07-28 18:28:57'),
(694, 'nama', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku##Baca Koran#', 'aaaaa', '2015-07-29 00:53:46'),
(695, 'rafii', 'P', 'Mahasiswa', 'Baca Buku####', 'Iyaa', '2015-07-29 03:42:32'),
(696, 'Dheka', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sss', '2015-07-29 03:42:34'),
(697, 'Dheka', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sss', '2015-07-29 03:42:35'),
(698, 'ferdi kontra1', 'L', 'Mahasiswa', 'Baca Buku####', 'benget sia hauk', '2015-07-29 11:22:51'),
(699, 'tyas', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2015-07-30 10:06:22'),
(700, 'Ahmad', 'L', 'Mahasiswa', 'Baca Buku####', 'Perbanyak lagibukunya', '2015-07-30 14:07:45'),
(701, 'udin', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'hay ', '2015-07-30 21:22:45'),
(702, 'hbgfh', 'L', 'Mahasiswa', 'Baca Buku####', 'gdghdh', '2015-07-31 01:20:59'),
(703, 'Willy Ardy Prasetyo', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'makasih', '2015-07-31 21:50:49'),
(704, 'dx', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###Lainnya', 'cc', '2015-08-01 09:47:32'),
(705, 'wit', 'L', 'Mahasiswa', 'Baca Buku####', 'Ghjjj', '2015-08-02 21:12:18'),
(706, 'h', 'L', 'Mahasiswa', 'Baca Buku####Lainnya', 'dd', '2015-08-03 12:30:05'),
(707, 'iin', 'P', 'Mahasiswa', 'Baca Buku##Kembalikan Buku##', 'yess', '2015-08-03 13:14:48'),
(708, 'Denny', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Bukunya ga bagus', '2015-08-03 14:32:22'),
(709, 'pacol', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'sip', '2015-08-03 14:54:40'),
(710, 'Rafi Ganteng dan itu fakta!', 'L', 'Mahasiswa', 'Baca Buku####', 'Ngetes bang :v', '2015-08-03 20:49:10'),
(711, 'sss', 'L', 'Mahasiswa', 'Baca Buku####', 'cgg', '2015-08-03 21:39:01'),
(712, 'joni', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2015-08-04 19:21:28'),
(713, 'fdd', 'L', 'Mahasiswa', 'Baca Buku####', 'sdsd', '2015-08-04 22:43:53'),
(714, 'irwan', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'dfsfs', '2015-08-05 14:05:44'),
(715, '568lkzo1', 'L', 'Dosen', '####', 'wakakakakak  pas saya klik , walaaaaahhhh jebul itu komen saya toch jadi mauluuu . hihihi  sepanjang kita ngeblog, itu sudah lebih dari cukup. tak peduli kita berdiri di sisi siapa dan untuk apa kita ngeblog (ibarat handuk tadi). setuju ndak sampeyan? ho\'', '2015-08-05 14:26:50'),
(716, '', '', '', '####', '', '2015-08-05 14:26:57'),
(717, 'Restu Aryani', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'wlemwl kwmme', '2015-08-05 15:25:50'),
(718, 'ghfd', 'L', 'Mahasiswa', 'Baca Buku##Kembalikan Buku##', 'gfhdfh', '2015-08-06 09:20:10'),
(719, 'saya', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'xax', '2015-08-06 15:50:30'),
(720, 'CktEV9vpdB5c', 'L', 'Mahasiswa', '####', 'And to think I was going to talk to sonmoee in person about this.', '2015-08-07 09:41:19'),
(721, '', '', '', '####', '', '2015-08-07 09:41:44'),
(722, 'saya', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'xjxzhjdd  sdjbfmsd', '2015-08-07 12:52:57'),
(723, 'Syamsul', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'mau pinjam', '2015-08-07 20:33:18'),
(724, 'apa aja bolee', 'L', 'Mahasiswa', 'Baca Buku####', 'test', '2015-08-08 14:06:43'),
(725, 'jgjgj', 'L', 'Mahasiswa', 'Baca Buku####', 'fjg', '2015-08-08 18:47:42'),
(726, 'sdasd', 'L', 'Mahasiswa', 'Baca Buku####', 'asdasdasd', '2015-08-10 09:48:26'),
(727, 'zainal', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'salamja ya', '2015-08-10 10:11:23'),
(728, 'ddd', 'L', 'Mahasiswa', 'Baca Buku##Kembalikan Buku##Lainnya', 'ddd', '2015-08-10 10:22:40'),
(729, 'Asd', 'L', 'Mahasiswa', 'Baca Buku####', 'asd', '2015-08-10 13:47:42'),
(730, 'ytcyy', 'L', 'Mahasiswa', 'Baca Buku####', 'kkkkkkkokok', '2015-08-11 10:14:24'),
(731, 'Ferry', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'fsd', '2015-08-11 14:28:12'),
(732, 'diji', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ok', '2015-08-11 20:41:26'),
(733, '', '', '', '####', '', '2015-08-12 07:16:12'),
(734, 'subakir', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'good', '2015-08-12 20:01:09'),
(735, 'Andi', 'L', 'Mahasiswa', 'Baca Buku####', 'test', '2015-08-12 20:10:05'),
(736, 'hfdgc', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'm', '2015-08-13 16:06:08'),
(737, 'faish', 'L', 'Mahasiswa', 'Baca Buku####', 'sipp', '2015-08-14 08:30:07'),
(738, 'Agus Aris Styawan', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'test', '2015-08-15 09:54:46'),
(739, '321213132', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku##Baca Koran#', 'qw', '2015-08-15 16:27:18'),
(740, 'iccang', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'saya mau pinjam buku', '2015-08-16 12:00:41'),
(741, 'bn', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'jgj', '2015-08-17 11:53:23'),
(742, 'Joko Harianto', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'test', '2015-08-18 21:01:12'),
(743, 'andi', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2015-08-21 06:21:48'),
(744, 'asda', 'L', 'Dosen', 'Baca Buku#Pinjam Buku###', 'adasd', '2015-08-21 07:38:24'),
(745, 'rafiudin', 'L', 'Mahasiswa', 'Baca Buku####', 'hmmm....', '2015-08-21 10:47:10'),
(746, 'rafi', 'L', 'Mahasiswa', 'Baca Buku####', 'maju terus', '2015-08-24 10:15:37'),
(747, 'edi', 'L', 'Mahasiswa', 'Baca Buku####', 'ok', '2015-08-24 10:54:28'),
(748, 'herlinda fitriani', 'P', 'Mahasiswa', 'Baca Buku####', 'baik aplikasi nya', '2015-08-24 11:02:12'),
(749, 'Martino', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'Semoga Lancar Terus', '2015-08-24 11:17:36'),
(750, 'jono', 'L', 'Mahasiswa', 'Baca Buku####', 'dbhjwbdhj', '2015-08-25 14:12:46'),
(751, 'jkk', 'L', 'Mahasiswa', 'Baca Buku####', 'kjk\n', '2015-08-25 15:35:50'),
(752, 'dfs', 'L', 'Dosen', 'Baca Buku####', 'sdfg', '2015-08-25 17:11:38'),
(753, 'aa', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'aaa', '2015-08-25 23:33:00'),
(754, 'Yunnus', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'uyguy', '2015-08-26 09:24:20'),
(755, 'gdgfb', 'L', 'Mahasiswa', 'Baca Buku####', 'sdfsgf', '2015-08-26 20:53:06'),
(756, 'abah', 'L', 'Mahasiswa', 'Baca Buku####', 'okeh', '2015-08-28 08:55:14'),
(757, '???????', 'L', 'Mahasiswa', 'Baca Buku###Baca Koran#', 'tertt', '2015-08-28 15:05:39'),
(758, 'semprul', 'L', 'Mahasiswa', 'Baca Buku####', 'ok', '2015-08-28 17:40:44'),
(759, 'murhfi', 'L', 'Mahasiswa', 'Baca Buku####', 'oke', '2015-08-29 09:22:46'),
(760, 'abjad', 'L', 'Dosen', 'Baca Buku####Lainnya', 'ngapain aja boleh', '2015-08-30 11:31:43'),
(761, 'zidni', 'L', 'Mahasiswa', 'Baca Buku####', 'tes', '2015-08-31 09:59:10'),
(762, 'nama', 'L', 'Mahasiswa', 'Baca Buku####', 'jhljhljh', '2015-08-31 21:20:18'),
(763, 'Refky Satria Bima', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Lumayan', '2015-09-03 11:03:16'),
(764, 'z', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'xx', '2015-09-03 12:32:01'),
(765, 'test', 'L', 'Mahasiswa', 'Baca Buku####', 'test', '2015-09-05 00:26:37'),
(766, 'bbv', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'vbvb', '2015-09-05 03:26:59'),
(767, 'Penikmat Sejati', 'P', 'Dosen', 'Baca Buku####', 'Terbitkan Buku Pengetahuan', '2015-09-05 19:40:07'),
(768, 'ar', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'jkk', '2015-09-06 08:58:37'),
(769, 'jj', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'jko', '2015-09-06 08:59:11'),
(770, 'Mariati', 'L', 'Mahasiswa', 'Baca Buku####', ';kj', '2015-09-06 20:50:52'),
(771, 'asd', 'L', 'Mahasiswa', 'Baca Buku####', 'asd', '2015-09-07 11:33:00'),
(772, 'dodol', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'wwwww', '2015-09-07 15:48:12'),
(773, 'S', 'L', 'Mahasiswa', 'Baca Buku####', 'D', '2015-09-07 16:10:40'),
(774, 'alwendi', 'L', 'Mahasiswa', 'Baca Buku####', 'jkkkk', '2015-09-07 18:50:51'),
(775, 'andhy', 'L', 'Mahasiswa', 'Baca Buku####', 'test', '2015-09-10 07:00:05'),
(776, 'zsdas', 'P', 'Mahasiswa', 'Baca Buku##Kembalikan Buku##', 'asd', '2015-09-10 07:04:03'),
(777, 'Jian', 'L', 'Mahasiswa', 'Baca Buku####', 'oke', '2015-09-12 11:07:46'),
(778, 'Blacktors', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'Saran & Kritik', '2015-09-12 15:33:52'),
(779, 'juli', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'tes aplikasinya ya', '2015-09-14 00:35:26'),
(780, 'sidki', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'dfdf', '2015-09-14 11:50:45'),
(781, 'dion', 'L', 'Mahasiswa', 'Baca Buku####', 'Bagus', '2015-09-14 18:14:17'),
(782, 'arek brojo', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'htedtdkt', '2015-09-15 00:24:46'),
(783, 'llll', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'll', '2015-09-15 09:28:22'),
(784, 'hbhbhb', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'hjh', '2015-09-15 13:14:54'),
(785, 'a', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'a', '2015-09-16 09:12:19'),
(786, 'Ucok', 'L', 'Mahasiswa', 'Baca Buku###Baca Koran#', 'Oke', '2015-09-16 15:06:36'),
(787, 'asd', 'L', 'Mahasiswa', 'Baca Buku####', 'asdasdasd', '2015-09-17 02:33:35'),
(788, 'IMRON bin M. HUSIN', 'L', 'Mahasiswa', 'Baca Buku####', 'Makasih.', '2015-09-18 06:28:02'),
(789, 'asssd', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'rrrr', '2015-09-18 16:42:30'),
(790, 'dodik', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'pinjam sebentar gan.. ^_^', '2015-09-19 10:51:24'),
(791, 'dodik', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sip', '2015-09-19 10:54:40'),
(792, 'jhkhgkj', 'L', 'Mahasiswa', 'Baca Buku####', 'kjhkh', '2015-09-20 00:54:14'),
(793, 'we', 'L', 'Dosen', 'Baca Buku####', 'err', '2015-09-20 16:25:08'),
(794, 'sad', 'L', 'Dosen', 'Baca Buku#Pinjam Buku###', 'asdasd', '2015-09-20 23:21:38'),
(795, 'achmad', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'oke', '2015-09-22 09:35:47'),
(796, 'HENDRI CAHYONO', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'hd', '2015-09-22 09:56:34'),
(797, '3r3r', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', '3r3r', '2015-09-22 12:11:14'),
(798, 'Rama', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', '123', '2015-09-22 13:39:23'),
(799, 'muslim', 'L', 'Mahasiswa', 'Baca Buku####', 'Silakan masukkan saran kritik Andated', '2015-09-25 07:40:13'),
(800, 'BISA YA', 'L', 'Mahasiswa', 'Baca Buku####', 'AAA', '2015-09-25 17:16:51'),
(801, 'yudi', 'L', 'Mahasiswa', 'Baca Buku####', 'keren', '2015-09-26 11:24:44'),
(802, 'aaaa', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sdsdsdsds', '2015-09-26 20:50:41'),
(803, 'yeni', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'dksajfksadfjjsdf', '2015-09-27 21:07:18'),
(804, 'as', 'L', 'Mahasiswa', 'Baca Buku####', 'adsf', '2015-09-28 13:57:21'),
(805, 'testi', 'L', 'Mahasiswa', 'Baca Buku####', 'sfsfsf', '2015-09-29 20:07:45'),
(806, 'aa', 'P', 'Mahasiswa', 'Baca Buku####', 'gdhhdg', '2015-09-30 14:41:57'),
(807, 'VIDDO', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'KEREN', '2015-09-30 16:22:38'),
(808, 'aku', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'oke', '2015-09-30 23:17:50'),
(809, 'dina', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'coba', '2015-10-01 13:41:01'),
(810, 'terisna', 'L', 'Dosen', 'Baca Buku####', 'bagus', '2015-10-01 18:28:45'),
(811, 'vvsvcvv', 'L', 'Mahasiswa', 'Baca Buku####', 'svsvsv', '2015-10-02 23:26:43'),
(812, 'saaddadada', 'L', 'Mahasiswa', 'Baca Buku###Baca Koran#Lainnya', 'jlkjlk', '2015-10-03 14:14:37'),
(813, 'wetgvastsfg', 'L', 'Mahasiswa', 'Baca Buku####', 'aevftgsebg', '2015-10-03 17:25:54'),
(814, 'yyy', 'L', 'Mahasiswa', 'Baca Buku####', 'fdfdfd', '2015-10-06 09:18:06'),
(815, 'Wanhar', 'L', 'Mahasiswa', 'Baca Buku####', 'Test', '2015-10-06 11:00:46'),
(816, 'Wanhar', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'Test', '2015-10-06 11:01:20'),
(817, 'cvdc', 'L', 'Mahasiswa', 'Baca Buku####', 'sfasdfas', '2015-10-06 12:01:39'),
(818, 'cvdc', 'L', 'Mahasiswa', 'Baca Buku####', 'sfasdfas', '2015-10-06 12:01:39'),
(819, 'ghghkghksgkhsgf', 'L', 'Mahasiswa', 'Baca Buku####', 'sfhfjhgkhjg', '2015-10-06 12:10:45'),
(820, 'sa', 'L', 'Mahasiswa', 'Baca Buku####', 'safsaf', '2015-10-06 14:40:27'),
(821, 'mulia media', 'L', 'Mahasiswa', 'Baca Buku###Baca Koran#', 'Coba', '2015-10-08 08:02:56'),
(822, 'hiohkhl', 'L', 'Mahasiswa', 'Baca Buku####', 'hhk', '2015-10-08 13:47:33'),
(823, 'saya mahasiswa', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2015-10-09 11:40:27'),
(824, 'ha', 'L', 'Mahasiswa', 'Baca Buku####', 'web ini keren', '2015-10-09 12:15:18'),
(825, 'ksnkns', 'P', 'Mahasiswa', 'Baca Buku####', 'nksnmksnk', '2015-10-11 17:56:03'),
(826, 'rama', 'L', 'Dosen', 'Baca Buku####', 'snjsbnnsjn', '2015-10-11 18:24:55'),
(827, 'jnjkn', 'L', 'Mahasiswa', 'Baca Buku####', 'kvjhvhj', '2015-10-12 08:54:07'),
(828, 'Test', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Test\n', '2015-10-12 11:02:37'),
(829, 'JKJK', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', '98', '2015-10-12 14:08:35'),
(830, 'gasd', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'baac', '2015-10-12 15:20:59'),
(831, 'tynu 6', 'L', 'Dosen', 'Baca Buku####', 'yu', '2015-10-12 23:20:00'),
(832, 'jkcgkcgk', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'tkfkfk', '2015-10-13 08:51:25'),
(833, 'adews', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'jnj', '2015-10-13 11:14:12'),
(834, 'Danang kurniawan putra', 'L', 'Mahasiswa', 'Baca Buku###Baca Koran#', 'buku bisa lebih dlengkapi lagi', '2015-10-13 13:56:08'),
(835, 'spaw', 'L', 'Mahasiswa', 'Baca Buku####', 'sadad', '2015-10-14 16:56:10'),
(836, 'alfin', 'L', 'Mahasiswa', 'Baca Buku####', 'good', '2015-10-14 20:52:25'),
(837, 'sdfsdf', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'sfsdfsf', '2015-10-14 23:39:18'),
(838, '0  ', 'L', 'Mahasiswa', 'Baca Buku####', '0', '2015-10-15 14:16:41'),
(839, 'coba', 'L', 'Mahasiswa', 'Baca Buku####', 'a', '2015-10-15 20:11:55'),
(840, 'jo', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'asu', '2015-10-16 13:05:46'),
(841, 'uun', 'P', 'Mahasiswa', 'Baca Buku####', 'hjhjhkkjhjh', '2015-10-18 18:58:00'),
(842, 'Reno', 'L', 'Mahasiswa', 'Baca Buku####', 'Okelah', '2015-10-18 23:34:59'),
(843, 'Reno', 'L', 'Mahasiswa', 'Baca Buku####', 'Okelah', '2015-10-18 23:35:15'),
(844, 'manthokay', 'L', 'Dosen', 'Baca Buku###Baca Koran#', 'tes', '2015-10-21 12:12:11'),
(845, 'fhnrsjnetk', 'L', 'Dosen', 'Baca Buku##Kembalikan Buku##Lainnya', 'rhr', '2015-10-21 12:24:55'),
(846, 'nadiv', 'L', 'Mahasiswa', 'Baca Buku####', 'untuk membaca', '2015-10-21 13:15:01'),
(847, 'ndmsmnsm', 'L', 'Mahasiswa', 'Baca Buku##Kembalikan Buku##', 'asdad', '2015-10-21 14:55:21'),
(848, 'opik', 'L', 'Mahasiswa', 'Baca Buku####', '3333', '2015-10-21 16:30:53'),
(849, 'aa', 'L', 'Mahasiswa', 'Baca Buku####', 'aaa', '2015-10-21 20:40:30'),
(850, 'Joko', 'L', 'Mahasiswa', 'Baca Buku####', 'aaa', '2015-10-22 00:34:49'),
(851, 'sartika', 'P', 'Mahasiswa', 'Baca Buku####', 'cepat', '2015-10-22 12:36:01'),
(852, 'edward', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'df', '2015-10-22 13:31:15'),
(853, 'v', 'L', 'Dosen', 'Baca Buku####', 'bn', '2015-10-22 13:32:08'),
(854, 'gus putra', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2015-10-22 16:11:54'),
(855, 'UCOK BABA', 'L', 'Mahasiswa', 'Baca Buku####', 'GO ..', '2015-10-23 13:12:17'),
(856, 'eren', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'baik', '2015-10-26 08:42:44'),
(857, 'doni alfianto', 'L', 'Mahasiswa', 'Baca Buku####', 'saya mau baca buku', '2015-10-26 13:07:30'),
(858, 'Donny R', 'L', 'Mahasiswa', 'Baca Buku####', 'Selamat Datang', '2015-10-26 16:07:23'),
(859, 'rino', 'L', 'Mahasiswa', 'Baca Buku####', 'baik', '2015-10-26 18:34:41'),
(860, 'admin', 'L', 'Mahasiswa', 'Baca Buku####', 'test', '2015-10-26 19:14:58'),
(861, 'ddfd', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', '66464456', '2015-10-27 15:14:48'),
(862, 'KK', 'L', 'Mahasiswa', 'Baca Buku####', 'LL', '2015-10-27 19:42:49'),
(863, 'Asep', 'L', 'Mahasiswa', 'Baca Buku####', 'lengkapi daftar buku', '2015-10-27 20:45:54'),
(864, 'Udin', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'pinjam buku', '2015-10-27 20:48:10'),
(865, 'ajo', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'oke', '2015-10-27 22:56:01'),
(866, 'ikhwan', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2015-10-28 14:04:02'),
(867, 'zz', 'L', 'Mahasiswa', 'Baca Buku####', 'aa', '2015-10-28 16:15:23'),
(868, 'dhanar', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'o', '2015-10-28 20:31:38'),
(869, 'jo', 'L', 'Mahasiswa', 'Baca Buku####', 'good', '2015-10-29 13:50:39'),
(870, 'sefef', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'fefdsf', '2015-10-29 18:45:54'),
(871, 'wsdf', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku##Baca Koran#', 'aSAsAS', '2015-10-30 11:44:57'),
(872, 'eni', 'P', 'Mahasiswa', 'Baca Buku####', 'ok', '2015-10-30 16:28:29'),
(873, 'aaaa', 'L', 'Mahasiswa', 'Baca Buku####', 'aaaa', '2015-10-31 10:36:55'),
(874, 'Jancuk', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'kowe ', '2015-11-02 08:13:18'),
(875, 'lia', 'P', 'Mahasiswa', 'Baca Buku####', 'bukunya kurang lengkap', '2015-11-02 09:19:46'),
(876, 'aku', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'aa', '2015-11-02 09:42:42'),
(877, 'Rivai Sfera', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'bagus', '2015-11-03 09:11:14'),
(878, 'toto', 'L', 'Mahasiswa', 'Baca Buku####', 'sipp', '2015-11-03 09:18:13'),
(879, 'dfgdfg', 'L', 'Mahasiswa', 'Baca Buku####', 'gddbd', '2015-11-03 23:05:34'),
(880, 'Hartono', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'ah ah', '2015-11-06 14:32:21'),
(881, 'Teguh Rubiyanto', 'L', 'Mahasiswa', 'Baca Buku####', 'ok', '2015-11-07 01:20:58'),
(882, 'kamel', 'L', 'Mahasiswa', 'Baca Buku####', 'baik', '2015-11-07 19:19:55'),
(883, 'Wahid', 'L', 'Mahasiswa', 'Baca Buku##Kembalikan Buku##', 'Apa', '2015-11-09 08:32:22'),
(884, 'budi', 'L', 'Mahasiswa', 'Baca Buku####', 'oke', '2015-11-09 23:39:16'),
(885, 'agung', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ok ', '2015-11-10 06:56:59'),
(886, 'luna', 'P', 'Mahasiswa', 'Baca Buku####', 'hanya mencoba', '2015-11-10 12:02:07'),
(887, 'bdi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ddff', '2015-11-10 12:03:14'),
(888, 'l\'l\';', 'L', 'Mahasiswa', 'Baca Buku####', 'o[pio[', '2015-11-11 15:53:15'),
(889, 'yoyo', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'bb', '2015-11-11 23:50:28'),
(890, 'yoyo', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'gg', '2015-11-11 23:51:00'),
(891, 'oke', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'oke', '2015-11-12 09:13:29'),
(892, 'dfdf', 'L', 'Dosen', 'Baca Buku####', 'dfcdfd', '2015-11-12 14:53:02'),
(893, 'fefdfdf', 'L', 'Dosen', 'Baca Buku####', 'egregrgrdgdf', '2015-11-12 14:53:27'),
(894, 'qwerty', 'L', 'Mahasiswa', 'Baca Buku####', 'good', '2015-11-12 16:18:20'),
(895, 'dfgfdg', 'L', 'Mahasiswa', 'Baca Buku####', 'zxc', '2015-11-12 23:08:25'),
(896, 'Akbar', 'L', 'Mahasiswa', 'Baca Buku####', 'Thans', '2015-11-12 23:13:45'),
(897, 'Novan', 'L', 'Mahasiswa', 'Baca Buku####', 'sasaa', '2015-11-12 23:21:26'),
(898, 'rochimawan', 'L', 'Mahasiswa', 'Baca Buku####', 'tata rang bagus, namu tempat kurang strategis', '2015-11-13 11:43:56'),
(899, 'Amien', 'L', 'Mahasiswa', 'Baca Buku####', 'Kalo boleh minjam lebih lama', '2015-11-14 10:49:56'),
(900, 'Amien', 'L', 'Mahasiswa', 'Baca Buku####', 'Kalo boleh minjam lebih lama', '2015-11-14 10:49:57'),
(901, 'Amien', 'L', 'Mahasiswa', 'Baca Buku####', 'Kalo boleh minjam lebih lama', '2015-11-14 10:50:10'),
(902, 'aaa', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'asasas', '2015-11-14 18:53:24'),
(903, 'yeay', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'oke', '2015-11-15 04:49:44'),
(904, 'yeay', 'L', 'Mahasiswa', 'Baca Buku####', 'oke', '2015-11-15 04:50:39'),
(905, 'rtgdrg ', 'L', 'Mahasiswa', 'Baca Buku###Baca Koran#Lainnya', 'dsfsfsf', '2015-11-15 09:02:27'),
(906, 'andu', 'L', 'Mahasiswa', 'Baca Buku####', 'perpustakaan harus selalu maju', '2015-11-15 10:43:36'),
(907, 'Angga Fuja', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'gergerg', '2015-11-15 12:40:36'),
(908, 'Perpustakaan Amik Almuslim', 'L', 'Mahasiswa', 'Baca Buku##Kembalikan Buku##', 'sss', '2015-11-15 20:19:11'),
(909, 'siluit ', 'L', 'Mahasiswa', 'Baca Buku####Lainnya', 'oke', '2015-11-16 18:02:49'),
(910, 'lkk', 'L', 'Dosen', 'Baca Buku####', 'klmk', '2015-11-16 20:07:20'),
(911, 'sartika', 'P', 'Mahasiswa', 'Baca Buku####', 'buku ini sangat menarik, saran saya agar  di buat lebih menarik lagi', '2015-11-17 09:47:07'),
(912, 'Andreansyah ', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'aeiohsfkjvbcisldl', '2015-11-17 10:09:30'),
(913, 'Mfc', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'baik', '2015-11-17 15:41:27'),
(914, 'bayu', 'L', 'Mahasiswa', 'Baca Buku####', 'dfa', '2015-11-18 22:19:53'),
(915, 'eni', 'P', 'Dosen', 'Baca Buku#Pinjam Buku###', 'sdsd', '2015-11-18 22:25:29'),
(916, 'ik', 'L', 'Dosen', 'Baca Buku####', 'semoga bermanfaat', '2015-11-18 23:41:04'),
(917, 'ari', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2015-11-19 11:40:22'),
(918, 'nasir', 'L', 'Mahasiswa', 'Baca Buku####', 'tidak enak', '2015-11-20 09:40:51'),
(919, '111', 'L', 'Mahasiswa', 'Baca Buku####', 'sip', '2015-11-20 18:50:03'),
(920, 'tyo', 'L', 'Mahasiswa', 'Baca Buku####', 'ok', '2015-11-20 19:12:01'),
(921, 'Irfan', 'L', 'Mahasiswa', 'Baca Buku####', 'tests', '2015-11-20 23:51:14'),
(922, 'deri', 'L', 'Mahasiswa', '#Pinjam Buku#Kembalikan Buku##', '', '2015-11-21 00:53:50'),
(923, 'Mochamad Fariz Awali', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'perbanyak koleksi buku', '2015-11-22 12:35:04'),
(924, 'dody', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'esefse', '2015-11-22 13:50:37'),
(925, 'akiem', 'L', 'Mahasiswa', 'Baca Buku####', 'test', '2015-11-23 10:21:43'),
(926, 'renato felix j bento', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'skjfpofsjdklf', '2015-11-23 13:58:11'),
(927, 'rrrrr', 'P', 'Mahasiswa', 'Baca Buku####', 'mohooohhhhhhhhhhhhhhhhhhhhhhh', '2015-11-23 14:02:59'),
(928, 'DEDE MURI MAULANA', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'oke', '2015-11-23 16:34:48'),
(929, 'Aceng Sobana', 'L', 'Dosen', 'Baca Buku#Pinjam Buku###', 'imjki', '2015-11-24 12:38:17'),
(930, 'olko', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'jvkvh', '2015-11-24 12:43:12'),
(931, 'edi', 'L', 'Mahasiswa', '#Pinjam Buku###', '', '2015-11-24 17:45:42'),
(932, 'ef', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'dff', '2015-11-24 21:09:26'),
(933, 'bnsasdnb', 'L', 'Dosen', 'Baca Buku####', '  sdnbabdbas', '2015-11-25 07:37:09'),
(934, 'abu', 'L', 'Mahasiswa', 'Baca Buku####', 'ss', '2015-11-25 16:46:39'),
(935, 'Aku', 'L', 'Mahasiswa', 'Baca Buku####', 'josss', '2015-11-25 18:20:42'),
(936, 'andis', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2015-11-26 08:33:29'),
(937, 'fuad', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus sistemnya', '2015-11-26 12:26:34'),
(938, 'hhh', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2015-11-26 12:33:34'),
(939, 'Adnan', 'L', 'Mahasiswa', 'Baca Buku####', 'permisi', '2015-11-26 12:40:54'),
(940, 'muyu', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'gh', '2015-11-27 22:23:40'),
(941, 'heru', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'zzzz', '2015-11-28 14:50:20'),
(942, 'akachopa', 'L', 'Mahasiswa', 'Baca Buku####', 'good', '2015-11-29 11:37:29'),
(943, 'Fatah', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'berhasil', '2015-11-30 08:17:01'),
(944, 'yyyyyyy', 'L', 'Mahasiswa', 'Baca Buku####', 'hhhh', '2015-11-30 14:11:29'),
(945, 'xcvbnm,', 'L', 'Mahasiswa', 'Baca Buku####', 'cvbnm,', '2015-11-30 16:01:03'),
(946, 'samsul', 'L', 'Mahasiswa', 'Baca Buku####', 'gdgsgd', '2015-12-01 15:33:29'),
(947, 'putra', 'L', 'Mahasiswa', 'Baca Buku##Kembalikan Buku##', 'awd', '2015-12-01 21:19:45'),
(948, 'RENDY VIRNANDA', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'oke', '2015-12-02 17:32:56'),
(949, 'bambang', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'luar biasa', '2015-12-02 19:02:22'),
(950, 'admin', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sdsa', '2015-12-03 11:49:22'),
(951, 'sikasep', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'test doank gan', '2015-12-03 12:20:48'),
(952, 'Siliwangi', 'L', 'Mahasiswa', 'Baca Buku####', 'as', '2015-12-03 12:28:48'),
(953, 'ccscsacs', 'L', 'Mahasiswa', 'Baca Buku####', 'sasccs', '2015-12-03 12:52:28'),
(954, 'ha', 'L', 'Mahasiswa', 'Baca Buku####', 'cnjcnc', '2015-12-03 13:27:31'),
(955, 'markoplo', 'L', 'Mahasiswa', 'Baca Buku####Lainnya', 'kurang', '2015-12-03 22:49:35'),
(956, 'Yusuf', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'tidak ada', '2015-12-04 13:18:33'),
(957, 'sanly patras', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Masih ingin meminjam lagi', '2015-12-05 19:39:38'),
(958, 'coba', 'L', 'Mahasiswa', 'Baca Buku####', 'adad', '2015-12-05 19:50:51'),
(959, 'coba', 'L', 'Mahasiswa', 'Baca Buku####', 'adad', '2015-12-05 19:52:10'),
(960, 'andi', 'L', 'Dosen', 'Baca Buku####', 'perpusnya nyaman ', '2015-12-06 00:44:54'),
(961, 'Ruli Putra Prasetyo', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2015-12-06 21:04:28'),
(962, 'samsinar', 'P', 'Mahasiswa', 'Baca Buku####', 'coba sistem ini', '2015-12-08 09:21:33'),
(963, 'sigit', 'L', 'Mahasiswa', 'Baca Buku####', 'dxaswdsa', '2015-12-09 00:12:18'),
(964, 'Zart 22', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'asdas', '2015-12-09 09:10:28'),
(965, 'hjh', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'vg', '2015-12-10 22:42:55'),
(966, 'heru', 'L', 'Mahasiswa', 'Baca Buku####', 'Tetgghj', '2015-12-11 21:31:05'),
(967, 'Heri Rusmon', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'terrikhnm kkk', '2015-12-11 22:38:28'),
(968, 'kjkdh', 'L', 'Mahasiswa', 'Baca Buku####', 'fgsdfadgf', '2015-12-12 09:32:14'),
(969, 'awda', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'tut', '2015-12-12 10:30:42'),
(970, 'Jack', 'L', 'Mahasiswa', 'Baca Buku####', 'hole', '2015-12-12 16:58:36'),
(971, 'Budi', 'L', 'Dosen', 'Baca Buku####', 'Test', '2015-12-13 01:05:03'),
(972, 'asuu', 'L', 'Mahasiswa', 'Baca Buku####', 'apa aja', '2015-12-13 21:16:48'),
(973, 'wahi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'fjfa', '2015-12-13 22:37:46'),
(974, 'ABG', 'L', 'Mahasiswa', 'Baca Buku####', 'AKU SUKA', '2015-12-14 18:57:06'),
(975, 'Kakak', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Ada komik?', '2015-12-15 20:01:59'),
(976, 'sdfgdf', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'testes', '2015-12-16 15:50:58'),
(977, 'Syukur Paturraqhman', 'L', 'Mahasiswa', 'Baca Buku####', 'sarannya tidak da', '2015-12-17 10:58:06'),
(978, 'Dzulhaeri', 'L', 'Mahasiswa', 'Baca Buku####', '', '2015-12-17 20:09:17'),
(979, 'Dzulhaeri', 'L', 'Mahasiswa', 'Baca Buku####', '', '2015-12-17 20:09:46'),
(980, 'SARIP', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'GAK APA', '2015-12-18 10:55:50'),
(981, 'hm', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'jjkjkj', '2015-12-18 11:18:09'),
(982, 'okokoko', 'L', 'Mahasiswa', 'Baca Buku####', '565', '2015-12-18 14:03:11'),
(983, 'rizi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'kritik', '2015-12-20 10:36:06'),
(984, 'alex', 'L', 'Dosen', 'Baca Buku####', 'terbaik', '2015-12-20 22:07:37'),
(985, 'Uphy', 'L', 'Mahasiswa', 'Baca Buku####', 'hsdfg rgdgrg', '2015-12-21 13:48:58'),
(986, 'febiarty', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'tidak ada', '2015-12-21 14:19:41'),
(987, 'arief', 'L', 'Mahasiswa', 'Baca Buku####', 'tingkatkan perpus lagi', '2015-12-21 20:49:18'),
(988, 'udin', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'tes', '2015-12-22 15:55:14'),
(989, 'Achmad', 'L', 'Mahasiswa', 'Baca Buku####', 'aaaa', '2015-12-22 18:45:47'),
(990, 'Achmad', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'pinjam buku', '2015-12-22 18:58:21'),
(991, 'Dhanis', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'adsa', '2015-12-23 13:19:19'),
(992, 'dina', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Tidak ada', '2015-12-24 06:50:20'),
(993, 'Ari', 'L', 'Mahasiswa', 'Baca Buku##Kembalikan Buku##', 'koi', '2015-12-24 19:40:11'),
(994, 'syarief', 'L', 'Mahasiswa', 'Baca Buku####', 'baiik', '2015-12-27 21:12:05'),
(995, 'inda', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'hajajja', '2015-12-28 20:34:15'),
(996, 'rudy', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ok', '2015-12-28 21:51:39'),
(997, 'eko', 'L', 'Mahasiswa', 'Baca Buku####', 'mantap', '2015-12-29 09:32:09'),
(998, 'yusi', 'P', 'Mahasiswa', '####', '', '2015-12-31 10:24:14'),
(999, 'ivho', 'L', 'Mahasiswa', 'Baca Buku####', 'kerenn', '2015-12-31 11:14:52'),
(1000, 'agus', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'asasas', '2016-01-03 13:12:24'),
(1001, 'tes', 'L', 'Mahasiswa', 'Baca Buku####', 'gtrhthytjuyjuy', '2016-01-04 00:45:40'),
(1002, 'alah', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'jhg', '2016-01-04 05:25:23'),
(1003, 'asdf', 'L', 'Mahasiswa', 'Baca Buku####', 'asdf', '2016-01-04 09:04:43'),
(1004, 'rtyteye', 'L', 'Dosen', 'Baca Buku####', 'rtertyer', '2016-01-04 14:39:45'),
(1005, '', '', '', '####', '', '2016-01-04 15:03:47'),
(1006, 'Ina', 'P', 'Mahasiswa', 'Baca Buku####', '123', '2016-01-04 15:03:48'),
(1007, 'Tedi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'bagus', '2016-01-04 15:38:10'),
(1008, 'hilman jalaludin', 'L', 'Mahasiswa', 'Baca Buku####', 'asdasd', '2016-01-04 18:08:33'),
(1009, 'Fathurrahman', 'L', 'Mahasiswa', 'Baca Buku####', 'Masih Lebih bagus', '2016-01-05 08:25:30'),
(1010, 'uni', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'llmlmlmlm', '2016-01-05 08:26:34'),
(1011, 'a', 'L', 'Mahasiswa', 'Baca Buku####', 'dasddsa', '2016-01-05 12:53:39'),
(1012, 'Danang', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'OK', '2016-01-05 15:26:27'),
(1013, 'affan', 'L', 'Mahasiswa', 'Baca Buku####', 'saya perpustakaan ini dapat lebih maju', '2016-01-06 08:49:49'),
(1014, 'yogi', 'P', 'Mahasiswa', 'Baca Buku####', 'oke', '2016-01-06 10:19:07'),
(1015, 'Jelly', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'baca buku', '2016-01-06 10:19:47'),
(1016, 'Asep Komar', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'Tidak ada', '2016-01-06 13:41:00'),
(1017, 'guntur', 'L', 'Mahasiswa', 'Baca Buku####', 'pass', '2016-01-06 22:23:49'),
(1018, 'guntur', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sss', '2016-01-06 22:28:37'),
(1019, 'guntur', 'L', 'Mahasiswa', 'Baca Buku####', 'aaa', '2016-01-06 22:29:01'),
(1020, 'ase', 'L', 'Mahasiswa', 'Baca Buku####', 'as', '2016-01-08 07:33:32'),
(1021, 'muslim', 'L', 'Mahasiswa', 'Baca Buku####', ',', '2016-01-08 17:35:51'),
(1022, 'sdffff', 'L', 'Dosen', 'Baca Buku####Lainnya', 'f', '2016-01-08 17:38:15'),
(1023, 'ki', 'L', 'Dosen', 'Baca Buku#Pinjam Buku###', 's', '2016-01-08 21:53:53'),
(1024, 'bayu', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'perbaiki', '2016-01-08 21:54:05'),
(1025, 'david yobel', 'L', 'Mahasiswa', 'Baca Buku####', 'aaa', '2016-01-08 22:09:24'),
(1026, 'ggg', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ok', '2016-01-09 21:19:50'),
(1027, 'Hasan Basri', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sdf', '2016-01-10 16:00:36'),
(1028, 'Dery', 'L', 'Mahasiswa', 'Baca Buku####Lainnya', 'test', '2016-01-11 15:33:36'),
(1029, 'ipan', 'L', 'Mahasiswa', 'Baca Buku####', 'kerenn', '2016-01-11 18:38:21'),
(1030, 'LALU ERLAN HAMDI', 'L', 'Mahasiswa', 'Baca Buku####', 'dfdfd', '2016-01-12 08:49:01'),
(1031, 'dwe', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###Lainnya', 'fdfsd', '2016-01-12 10:44:54'),
(1032, 'amar', 'L', 'Mahasiswa', 'Baca Buku####', 'bukunya mantap\n', '2016-01-12 15:33:06'),
(1033, 'aNAS', 'L', 'Dosen', 'Baca Buku####', 'dsfgsdg', '2016-01-13 14:21:18'),
(1034, 'aaa', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'asa', '2016-01-14 09:53:25'),
(1035, 'Human', 'L', 'Mahasiswa', 'Baca Buku####Lainnya', '-', '2016-01-14 15:43:02'),
(1036, 'aasf', 'L', 'Mahasiswa', 'Baca Buku####', 'asdasdsa', '2016-01-16 11:48:54'),
(1037, 'fahrudin', 'L', 'Mahasiswa', 'Baca Buku####', 'apa saja', '2016-01-17 11:24:18'),
(1038, 'bejo', 'L', 'Mahasiswa', 'Baca Buku####', 'adad', '2016-01-17 18:56:09'),
(1039, 'agus', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'bagus', '2016-01-17 21:43:50'),
(1040, 'n', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'nnn', '2016-01-18 07:42:26'),
(1041, 'Ari Yulian', 'L', 'Mahasiswa', 'Baca Buku####', 'sdsad', '2016-01-18 10:23:50'),
(1042, 'test', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'oke', '2016-01-18 17:11:18'),
(1043, 'lugi', 'P', 'Mahasiswa', 'Baca Buku####', '', '2016-01-18 20:26:59'),
(1044, 'lugi', 'P', 'Mahasiswa', 'Baca Buku####', '', '2016-01-18 20:27:21'),
(1045, 'uui', 'P', 'Mahasiswa', '#Pinjam Buku###', 'oke\n', '2016-01-18 20:32:58'),
(1046, 'g', 'L', 'Mahasiswa', 'Baca Buku####', 'nnnnnnn', '2016-01-19 00:18:50'),
(1047, 'Kevin', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2016-01-19 09:53:03'),
(1048, '!S!WCRTESTINPUT000000!E!', 'L', 'Mahasiswa', '####', '!S!WCRTESTTEXTAREA000001!E!', '2016-01-19 11:10:33'),
(1049, '!S!WCRTESTINPUT000000!E!', 'L', '', '####', '!S!WCRTESTTEXTAREA000001!E!', '2016-01-19 11:10:41'),
(1050, '!S!WCRTESTINPUT000000!E!', 'L', '', '####', '!S!WCRTESTTEXTAREA000001!E!', '2016-01-19 11:10:54'),
(1051, 'Agus Kuncoro', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', '-', '2016-01-19 12:38:58'),
(1052, 'rida', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'keren nya', '2016-01-19 12:47:54'),
(1053, 'putra ', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'njkh', '2016-01-19 21:41:19'),
(1054, 'iman', 'L', 'Mahasiswa', 'Baca Buku####', 'csdsdf', '2016-01-21 22:30:25'),
(1055, 'dewi', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ghsdas', '2016-01-22 09:29:09'),
(1056, 'rani', 'P', 'Mahasiswa', 'Baca Buku####', 'dsfcd', '2016-01-22 09:29:32'),
(1057, 'barakatak', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'zz', '2016-01-22 11:02:42'),
(1058, 'Gilang Tri Adi Putra', 'L', 'Mahasiswa', 'Baca Buku####', 'beli AC', '2016-01-22 19:56:39'),
(1059, 'marwoto', 'L', 'Dosen', 'Baca Buku####', '', '2016-01-23 17:51:27'),
(1060, 'Tes', 'L', 'Mahasiswa', 'Baca Buku####', '', '2016-01-23 20:52:18'),
(1061, 'ff', 'L', 'Mahasiswa', 'Baca Buku####', 'ffffff', '2016-01-24 08:35:13'),
(1062, 'affan', 'L', 'Mahasiswa', 'Baca Buku####', ',  s sms lmslms', '2016-01-24 14:02:42'),
(1063, 'muhamad', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Bagus', '2016-01-25 08:24:53'),
(1064, 'Andromeda 1', 'L', 'Mahasiswa', 'Baca Buku####', 'saran', '2016-01-25 14:15:46'),
(1065, 'adip', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'yes', '2016-01-26 23:10:40'),
(1066, 'ranran', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'testing', '2016-01-27 00:29:03'),
(1067, 'anu', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku##Baca Koran#', 'uhjh', '2016-01-28 04:33:10'),
(1068, 'Muharir', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'hjgfgdtrv', '2016-01-28 07:55:37'),
(1069, 'd', 'L', 'Mahasiswa', 'Baca Buku####', 'd', '2016-01-29 09:06:31'),
(1070, 'anita', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###Lainnya', 'da', '2016-01-29 15:18:30'),
(1071, 'coba', 'L', 'Mahasiswa', 'Baca Buku####', 'ok', '2016-01-30 06:15:02'),
(1072, 'Beny', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'gak baik', '2016-01-30 10:02:40'),
(1073, 'tiwi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'good', '2016-02-01 01:02:20'),
(1074, 'kamal', 'L', 'Mahasiswa', 'Baca Buku####', 'ssd', '2016-02-01 09:17:39'),
(1075, 'teds', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'kjjhjk', '2016-02-01 17:18:06'),
(1076, 'Dedy', 'L', 'Mahasiswa', 'Baca Buku####', 'ww', '2016-02-01 22:31:14'),
(1077, 'jjjj', 'L', 'Mahasiswa', 'Baca Buku####', 'k', '2016-02-02 10:51:04'),
(1078, 'qwe', 'L', 'Dosen', 'Baca Buku####', 'eqeqwe', '2016-02-03 07:30:43'),
(1079, 'ASSS', 'L', 'Mahasiswa', 'Baca Buku##Kembalikan Buku##', 'JLJL', '2016-02-03 13:37:20'),
(1080, 'Rezha', 'L', 'Dosen', 'Baca Buku#Pinjam Buku###', 'Ya', '2016-02-04 09:00:19'),
(1081, 'AC 1134', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'da', '2016-02-04 11:30:53'),
(1082, 'Fernando', 'L', 'Dosen', 'Baca Buku####', 'TEst', '2016-02-04 18:43:11'),
(1083, 'n', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sip', '2016-02-05 01:46:51'),
(1084, 'ayes adhitya', 'L', 'Mahasiswa', 'Baca Buku####', 'ini keren', '2016-02-05 11:27:23'),
(1085, 'teer', 'L', 'Mahasiswa', 'Baca Buku####', 'hanya mencoba', '2016-02-05 11:31:01'),
(1086, 'uyufcyfif', 'L', 'Mahasiswa', 'Baca Buku####', 'gggogogoog', '2016-02-05 17:35:12'),
(1087, 'Najwa Shahirah', 'P', 'Mahasiswa', 'Baca Buku####', 'ko', '2016-02-05 22:22:43'),
(1088, 'Bebi Romeo', 'L', 'Mahasiswa', 'Baca Buku####', 'klydkd', '2016-02-06 00:31:14'),
(1089, 'Asas', 'L', 'Mahasiswa', 'Baca Buku####', 'asas', '2016-02-06 10:22:49'),
(1090, 'ardhika', 'L', 'Mahasiswa', 'Baca Buku####', 'asd', '2016-02-09 12:24:01'),
(1091, 'dfr', 'L', 'Mahasiswa', 'Baca Buku####', 'fgg', '2016-02-09 15:26:23'),
(1092, 'ade', 'L', 'Mahasiswa', 'Baca Buku####', 'ok', '2016-02-10 10:14:39'),
(1093, 'Annas', 'L', 'Mahasiswa', 'Baca Buku####', 'Bagus', '2016-02-11 14:02:51'),
(1094, 'a', 'L', 'Mahasiswa', 'Baca Buku####', 'aa', '2016-02-11 15:24:01'),
(1095, 'Nama', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'asd', '2016-02-12 09:46:32'),
(1096, 'teli', 'L', 'Dosen', 'Baca Buku####', 'palet', '2016-02-12 11:07:12'),
(1097, 'Sandi Winata', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Tes', '2016-02-12 20:47:12');
INSERT INTO `t_pengunjung` (`id`, `nama`, `jk`, `jenis`, `perlu`, `saran`, `tgl`) VALUES
(1098, 'robi', 'L', 'Dosen', 'Baca Buku####Lainnya', 'okkk', '2016-02-13 00:21:58'),
(1099, 'Miranti', 'P', 'Mahasiswa', 'Baca Buku####', 'cccc', '2016-02-13 09:08:50'),
(1100, 'Jimy Issac', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Mantap....', '2016-02-15 17:48:15'),
(1101, 'Jimy Issac', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Mantap', '2016-02-15 17:48:40'),
(1102, 'wqghsaga', 'L', 'Mahasiswa', 'Baca Buku####', 'gshgsaha', '2016-02-15 21:57:23'),
(1103, 'sfasfa', 'L', 'Mahasiswa', 'Baca Buku####', 'fsgfdg', '2016-02-16 14:55:26'),
(1104, 'MUCHTAR SANI', 'L', 'Mahasiswa', 'Baca Buku####', 'f', '2016-02-17 10:44:12'),
(1105, 'saipul', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'jsiodfjiodjofisjd', '2016-02-18 08:12:21'),
(1106, 'dudy', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'Test', '2016-02-18 18:25:48'),
(1107, 'A', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'A', '2016-02-19 00:00:06'),
(1108, 'jkjhkj', 'L', 'Mahasiswa', 'Baca Buku####', 'wanjiroo', '2016-02-19 01:10:28'),
(1109, 'Fajar', 'L', 'Mahasiswa', 'Baca Buku####', 'Nyaman', '2016-02-19 09:30:08'),
(1110, 'jimi purnama', 'L', 'Mahasiswa', 'Baca Buku####', 'test', '2016-02-20 10:24:30'),
(1111, 'shioo', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'siap', '2016-02-20 17:07:30'),
(1112, 'nimah', 'L', 'Mahasiswa', 'Baca Buku####', 'bhj', '2016-02-20 17:09:38'),
(1113, 'shioo', 'L', 'Mahasiswa', 'Baca Buku####', 'dsfs', '2016-02-20 17:11:03'),
(1114, 'Komang Kurniawan Widiartha', 'L', 'Mahasiswa', 'Baca Buku####', 'tidak ada', '2016-02-22 08:42:25'),
(1115, 'tio', 'L', 'Mahasiswa', 'Baca Buku####', 'fhgfh', '2016-02-23 01:27:05'),
(1116, 'tidp', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'bckxc', '2016-02-23 01:28:30'),
(1117, 'nasrull', 'L', 'Mahasiswa', 'Baca Buku####', 'saya mau baca', '2016-02-24 11:20:23'),
(1118, 'Eris', 'L', 'Mahasiswa', 'Baca Buku####', 'Perbanyak koleksi buku', '2016-02-24 14:43:50'),
(1119, 'Rochmad', 'L', 'Mahasiswa', 'Baca Buku####', 'ok', '2016-02-24 17:02:10'),
(1120, 'hhh', 'P', 'Mahasiswa', 'Baca Buku####', 'hhhh', '2016-02-24 21:03:14'),
(1121, 'Arifin', 'L', 'Dosen', 'Baca Buku####', 'hapus', '2016-02-25 04:21:54'),
(1122, 'Irwan Florensal', 'L', 'Mahasiswa', 'Baca Buku####', 'Aku takut', '2016-02-25 14:24:01'),
(1123, 'Deni', 'L', 'Mahasiswa', 'Baca Buku####', 'Lebih keren lagi webnya', '2016-02-25 17:42:35'),
(1124, 'ervan', 'L', 'Mahasiswa', 'Baca Buku####', 'bismilah', '2016-02-26 17:43:43'),
(1125, 'ada', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'adasd', '2016-02-26 17:44:41'),
(1126, 'Mita', 'L', 'Mahasiswa', 'Baca Buku####', 'No Comen', '2016-02-27 14:10:01'),
(1127, 'james', 'L', 'Mahasiswa', 'Baca Buku####', 'etrh', '2016-02-29 07:57:44'),
(1128, 'saka', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku##Baca Koran#', 'gen', '2016-03-01 04:56:34'),
(1129, 'Susi', 'P', 'Mahasiswa', 'Baca Buku####', 'Oke', '2016-03-01 11:14:43'),
(1130, 'defi', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'g', '2016-03-02 08:02:03'),
(1131, 'rifal', 'L', 'Mahasiswa', 'Baca Buku####', 'keren', '2016-03-02 09:44:34'),
(1132, 'Yahya Pratama Putra S.Kom', 'P', 'Mahasiswa', 'Baca Buku####', 'data', '2016-03-02 10:05:20'),
(1133, 'dede', 'L', 'Mahasiswa', 'Baca Buku####', 'tidak', '2016-03-02 20:33:06'),
(1134, 'adit', 'L', 'Mahasiswa', 'Baca Buku####', 'aaa', '2016-03-03 08:26:04'),
(1135, 'bb', 'P', 'Mahasiswa', 'Baca Buku####', 'no', '2016-03-03 09:10:02'),
(1136, 'yu', 'L', 'Mahasiswa', 'Baca Buku####', 'AAAAAAAAAAA', '2016-03-03 20:16:23'),
(1137, 'SUB QUANTUM QUR\'ANI', 'L', 'Mahasiswa', 'Baca Buku####', 'fbdfbhshbreh', '2016-03-04 01:43:31'),
(1138, 'AdiNet', 'L', 'Mahasiswa', 'Baca Buku####', 'Mantap', '2016-03-05 07:49:11'),
(1139, 'riandy candra winahyu', 'L', 'Mahasiswa', 'Baca Buku####', 'awdawd', '2016-03-05 08:41:10'),
(1140, 'jj', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'oke', '2016-03-06 14:02:43'),
(1141, 'asdad', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'asdasd', '2016-03-07 14:17:26'),
(1142, 'fdsadasd', 'L', 'Dosen', 'Baca Buku###Baca Koran#', 'adasdasda', '2016-03-07 14:19:03'),
(1143, 'dede', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sip', '2016-03-07 19:34:28'),
(1144, 'muzi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ok', '2016-03-08 19:56:40'),
(1145, 'kkkkk', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'kkkkkkkk', '2016-03-08 21:13:28'),
(1146, 'sfb', 'L', 'Mahasiswa', 'Baca Buku####', 'fb', '2016-03-10 03:42:28'),
(1147, 'Daf', 'L', 'Mahasiswa', 'Baca Buku####', 'tes', '2016-03-10 05:57:06'),
(1148, 'aaa', 'L', 'Mahasiswa', 'Baca Buku####', 'a', '2016-03-10 14:18:15'),
(1149, 'dggddd', 'L', 'Mahasiswa', 'Baca Buku####', 'gdgddgdg', '2016-03-10 19:22:35'),
(1150, 'n bnmb', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'admin', '2016-03-11 07:42:35'),
(1151, 'jay', 'L', 'Mahasiswa', 'Baca Buku####', 'nothing', '2016-03-11 13:57:23'),
(1152, 'sasdasd', 'L', 'Mahasiswa', 'Baca Buku####', 'adasdas', '2016-03-11 18:40:32'),
(1153, 'hh', 'L', 'Mahasiswa', 'Baca Buku####', 'good', '2016-03-11 20:03:18'),
(1154, 'cok', 'L', 'Dosen', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'sdad', '2016-03-11 21:37:13'),
(1155, 'Josssiii', 'L', 'Mahasiswa', 'Baca Buku####', 'Jos', '2016-03-12 12:03:59'),
(1156, 'ceples', 'P', 'Mahasiswa', 'Baca Buku###Baca Koran#', 'cara mendowload', '2016-03-12 20:12:12'),
(1157, 'asdasd', 'L', 'Mahasiswa', 'Baca Buku###Baca Koran#', 'adsasda', '2016-03-13 15:07:58'),
(1158, 'tun', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ok', '2016-03-14 05:44:07'),
(1159, 'Aisyah', 'L', 'Mahasiswa', 'Baca Buku####Lainnya', 'asik', '2016-03-15 14:29:18'),
(1160, '', '', '', '####', '', '2016-03-15 15:00:15'),
(1161, 'dina', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'mantap', '2016-03-17 09:13:23'),
(1162, 'ufy', 'L', 'Mahasiswa', 'Baca Buku####', 'aa', '2016-03-17 16:04:33'),
(1163, 'Nama', 'L', 'Mahasiswa', 'Baca Buku####', 'Fuck', '2016-03-17 19:59:49'),
(1164, 'Anonymous', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'OK', '2016-03-18 01:44:25'),
(1165, 'karno', 'L', 'Mahasiswa', 'Baca Buku####', 'oke', '2016-03-18 09:12:34'),
(1166, 'Drs. Sutarno, M.Si', 'L', 'Mahasiswa', 'Baca Buku####', 'jos', '2016-03-19 15:56:37'),
(1167, 'lllllllllllllllllllll', 'L', 'Dosen', 'Baca Buku####Lainnya', 'mlllll ', '2016-03-20 00:30:35'),
(1168, 'Aprisal', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'semangat', '2016-03-21 03:21:50'),
(1169, 'Aprisal', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'YES', '2016-03-21 03:24:58'),
(1170, 'HADRA HARTINA', 'P', 'Dosen', 'Baca Buku#Pinjam Buku###', 'perbanyak referensi', '2016-03-21 10:45:27'),
(1171, 'aa', 'L', 'Mahasiswa', 'Baca Buku####', 'aaa', '2016-03-21 12:22:53'),
(1172, 'bondet', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sip', '2016-03-21 14:29:09'),
(1173, 'randi', 'L', 'Mahasiswa', 'Baca Buku####', 'mantap', '2016-03-21 23:09:00'),
(1174, 'Lisa', 'P', 'Mahasiswa', 'Baca Buku####', 'Good', '2016-03-22 12:35:11'),
(1175, 'vvvv', 'P', '', '####', '', '2016-03-22 19:54:28'),
(1176, 'kolop', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'mmmmm', '2016-03-22 21:45:14'),
(1177, 'Isrul', 'L', 'Mahasiswa', 'Baca Buku####', 'Bagus', '2016-03-22 22:20:18'),
(1178, 'Udin', 'L', 'Mahasiswa', 'Baca Buku####', 'Bagus', '2016-03-22 23:03:24'),
(1179, 'as', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ss', '2016-03-23 08:24:42'),
(1180, 'NIKMATUR ROHMAYA', 'P', 'Dosen', 'Baca Buku####', 'j', '2016-03-24 08:23:30'),
(1181, '', '', '', '####', '', '2016-03-24 10:00:43'),
(1182, 'a', 'L', 'Mahasiswa', 'Baca Buku####', 'coba', '2016-03-24 12:19:05'),
(1183, 'Arbi S', 'L', 'Mahasiswa', 'Baca Buku####', 'Test', '2016-03-25 03:40:39'),
(1184, 'Anonimous', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Belum ada', '2016-03-26 10:33:47'),
(1185, 'asdad', 'L', 'Mahasiswa', 'Baca Buku####', 'adasd', '2016-03-27 09:10:24'),
(1186, 'abdy', 'L', 'Mahasiswa', 'Baca Buku##Kembalikan Buku##', 'hahahhaha', '2016-03-27 14:56:30'),
(1187, 'alex', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'apa atuh', '2016-03-27 21:24:13'),
(1188, 'andin', 'P', 'Mahasiswa', 'Baca Buku####Lainnya', 'haduh', '2016-03-27 21:29:17'),
(1189, 'haksdhaskhd', 'L', 'Mahasiswa', 'Baca Buku####', 'jsdjcsdc', '2016-03-28 11:07:38'),
(1190, 'Sam', 'L', 'Mahasiswa', 'Baca Buku####', 'lalayeye', '2016-03-28 17:50:59'),
(1191, 'udin', 'L', 'Mahasiswa', 'Baca Buku####', 'ga ada', '2016-03-29 01:31:55'),
(1192, 'dsfsfs', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'fdsfsffsfds', '2016-03-29 13:07:49'),
(1193, 'uus', 'L', 'Mahasiswa', 'Baca Buku####', 'makasih', '2016-04-01 16:36:41'),
(1194, 'iyant', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'iiii', '2016-04-01 22:02:45'),
(1195, 'matematika', 'L', 'Mahasiswa', 'Baca Buku##Kembalikan Buku##', 'rterte', '2016-04-02 11:50:56'),
(1196, 'jenny', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', ':v wifinya donk', '2016-04-03 23:45:04'),
(1197, 'user', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'update buku-bukunya', '2016-04-04 11:33:21'),
(1198, 'iyan', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', ';l;[l;', '2016-04-04 16:35:51'),
(1199, 'llll', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'p[p[p[p;', '2016-04-04 16:38:36'),
(1200, 'zainal', 'L', 'Mahasiswa', 'Baca Buku####', 'terimakasih', '2016-04-04 16:44:11'),
(1201, 'reza', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ok', '2016-04-05 13:37:51'),
(1202, 'jj', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'hj', '2016-04-05 14:44:17'),
(1203, 'Abay', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Kirim', '2016-04-05 17:46:33'),
(1204, 'suwadi', 'L', 'Mahasiswa', 'Baca Buku####', 'ok', '2016-04-06 13:14:23'),
(1205, 'fdgfg', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'fefef', '2016-04-07 17:15:01'),
(1206, 'jj', 'L', 'Mahasiswa', 'Baca Buku####', 'jj', '2016-04-08 15:00:16'),
(1207, 'Hana Nan', 'L', 'Dosen', 'Baca Buku#Pinjam Buku#Kembalikan Buku##Lainnya', 'aman', '2016-04-08 17:39:58'),
(1208, 'eli', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'anda kurang beruntung', '2016-04-09 15:31:31'),
(1209, 'Udhin', 'L', 'Mahasiswa', 'Baca Buku####', 'tes', '2016-04-09 21:07:33'),
(1210, 'heri', 'L', 'Mahasiswa', 'Baca Buku####', 'dsfsdf', '2016-04-09 21:39:55'),
(1211, 'AAAAAAAAA', 'L', 'Mahasiswa', 'Baca Buku####', 'AAA', '2016-04-11 12:59:02'),
(1212, 'm', 'L', 'Mahasiswa', 'Baca Buku####', 'm', '2016-04-11 14:27:40'),
(1213, 'test', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ini uji coba', '2016-04-11 15:33:51'),
(1214, 'aar', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'bgsgsdegwegwdg', '2016-04-12 16:10:24'),
(1215, 'budi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'anu', '2016-04-14 03:49:27'),
(1216, 'mulyanto', 'L', 'Dosen', 'Baca Buku#Pinjam Buku##Baca Koran#Lainnya', 'klk', '2016-04-14 09:56:31'),
(1217, 'fahmi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'lumayan', '2016-04-15 09:39:10'),
(1218, 'a', 'L', 'Mahasiswa', 'Baca Buku####Lainnya', 'a', '2016-04-16 04:00:46'),
(1219, 'willy', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'wwww', '2016-04-16 08:56:24'),
(1220, 'willy', 'L', 'Mahasiswa', 'Baca Buku####', 'ddd', '2016-04-16 08:56:52'),
(1221, 'Jono', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'Mantap', '2016-04-16 12:07:19'),
(1222, 'RIDWAN', 'L', 'Mahasiswa', 'Baca Buku####', 'SIP JOS', '2016-04-17 17:26:49'),
(1223, 'qqqq', 'L', 'Mahasiswa', 'Baca Buku####', 'qqq', '2016-04-18 10:39:25'),
(1224, 'Hafad', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'mdc', '2016-04-18 10:43:40'),
(1225, 'njbhjhi', 'P', 'Mahasiswa', 'Baca Buku####', 'nkh', '2016-04-18 12:52:42'),
(1226, 'umy', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sds', '2016-04-18 20:29:54'),
(1227, 'safff', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#', 'aq mau semua', '2016-04-20 11:25:03'),
(1228, 'rastana', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2016-04-20 12:18:34'),
(1229, 'hendra', 'L', 'Mahasiswa', 'Baca Buku####', 'susah hidup', '2016-04-20 15:05:27'),
(1230, 'Rahmad Hidayat', 'L', 'Mahasiswa', 'Baca Buku####', 'sisdjsd', '2016-04-20 18:47:19'),
(1231, 'IRFAN', 'L', 'Mahasiswa', 'Baca Buku####', 'OK', '2016-04-20 19:48:41'),
(1232, 'sd', 'P', 'Mahasiswa', 'Baca Buku####', 'ddd', '2016-04-21 14:52:00'),
(1233, 'test', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'test', '2016-04-22 16:25:19'),
(1234, 'priska', 'P', 'Mahasiswa', 'Baca Buku####', 'bagus', '2016-04-22 18:31:40'),
(1235, 'Alfi', 'P', 'Mahasiswa', 'Baca Buku####', 'bagus', '2016-04-22 19:24:56'),
(1236, 'han', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'baik', '2016-04-29 00:43:07'),
(1237, 'sampel', 'L', 'Mahasiswa', 'Baca Buku####', 'sip', '2016-04-29 07:54:07'),
(1238, 'JAMES', 'L', 'Mahasiswa', 'Baca Buku####', 'MOHON DIJAGA KEBERSIHANNYA', '2016-04-29 10:50:16'),
(1239, 'sheni', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ya', '2016-04-30 01:52:35'),
(1240, 'aaaaaa', 'L', 'Dosen', 'Baca Buku####', 's', '2016-04-30 19:59:23'),
(1241, 'asddfgh', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'ok', '2016-05-01 11:10:49'),
(1242, 'ndaru', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'oke', '2016-05-01 15:48:45'),
(1243, 'coba', 'L', 'Mahasiswa', 'Baca Buku####', 'sip', '2016-05-01 18:38:30'),
(1244, 'rizal', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'efe', '2016-05-02 01:22:31'),
(1245, 'achhmad', 'L', 'Dosen', 'Baca Buku####', 'tes', '2016-05-02 01:32:45'),
(1246, 'rizaldi', 'L', 'Mahasiswa', 'Baca Buku##Kembalikan Buku##', 'tes', '2016-05-02 01:33:22'),
(1247, 'Nandi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Pinjam', '2016-05-02 10:50:48'),
(1248, '12312312', 'L', 'Dosen', 'Baca Buku#Pinjam Buku###', '12321', '2016-05-02 10:51:13'),
(1249, 'jsjs', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sasal', '2016-05-02 17:58:43'),
(1250, 'arjan arkasi', 'L', 'Mahasiswa', 'Baca Buku####', 'assalamualaikum', '2016-05-02 21:27:49'),
(1251, 'aldi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'hay', '2016-05-02 23:33:36'),
(1252, 'testing', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###Lainnya', 'eefdgf', '2016-05-03 08:35:15'),
(1253, 'hilpan', 'L', 'Mahasiswa', 'Baca Buku####', 'hjn', '2016-05-03 14:27:08'),
(1254, 'tr', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', '4tet', '2016-05-03 16:15:18'),
(1255, 'sfgsdfsdf', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sdfsdfs', '2016-05-04 18:22:53'),
(1256, 'Gunawan', 'L', 'Mahasiswa', 'Baca Buku####', 'gdfgdf', '2016-05-05 08:55:36'),
(1257, 'jshshshs sjhshdsf', 'L', 'Mahasiswa', 'Baca Buku####', 'jajajajaj', '2016-05-05 15:26:28'),
(1258, 'eko', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'uiuiyuyuhjh', '2016-05-05 16:47:51'),
(1259, 'TEs', 'L', 'Mahasiswa', 'Baca Buku####', 'tes', '2016-05-06 01:13:28'),
(1260, 'Dwi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'hjj', '2016-05-07 07:24:01'),
(1261, 'j', 'L', 'Mahasiswa', 'Baca Buku####', 'jk', '2016-05-09 07:47:21'),
(1262, 'yaddien', 'L', 'Mahasiswa', 'Baca Buku####', 'ok', '2016-05-09 22:38:44'),
(1263, 'edw', 'L', 'Mahasiswa', 'Baca Buku####', 'ssas', '2016-05-10 18:02:57'),
(1264, 'da', 'P', 'Mahasiswa', 'Baca Buku###Baca Koran#', 'szzdasa', '2016-05-10 20:11:42'),
(1265, 'don', 'L', 'Mahasiswa', 'Baca Buku####', 'coba saja', '2016-05-11 17:58:43'),
(1266, 'then', 'L', 'Dosen', 'Baca Buku####Lainnya', 'tes mas', '2016-05-11 18:37:54'),
(1267, 'Yusuf anshori', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Tes Lagi Mas', '2016-05-11 18:40:06'),
(1268, 'A', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', '-', '2016-05-11 20:36:41'),
(1269, '-[90-', 'L', 'Mahasiswa', 'Baca Buku####', '90-90-90', '2016-05-12 10:34:44'),
(1270, 'ayu', 'P', 'Mahasiswa', 'Baca Buku####', 'bagus', '2016-05-13 14:25:21'),
(1271, 'herman', 'L', 'Mahasiswa', 'Baca Buku####', 'keren bro', '2016-05-15 00:18:50'),
(1272, 'w', 'L', 'Mahasiswa', 'Baca Buku####', 'Menikmati demo Program', '2016-05-15 06:43:53'),
(1273, 'novriadi', 'L', 'Mahasiswa', 'Baca Buku####', 'mnatap', '2016-05-15 17:57:57'),
(1274, 'novriadi', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'dsadas', '2016-05-15 18:01:56'),
(1275, 'gdfgdf', 'P', 'Dosen', 'Baca Buku##Kembalikan Buku##', 'fgdfg', '2016-05-15 18:03:01'),
(1276, 'artha', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', '.', '2016-05-16 07:17:40'),
(1277, 'Mas Uka', 'L', 'Mahasiswa', 'Baca Buku###Baca Koran#', 'Bagus', '2016-05-16 15:06:03'),
(1278, 'Hamsah S Karim', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'jhdhdkha', '2016-05-16 19:52:31'),
(1279, 'imam', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'bagus', '2016-05-16 21:32:39'),
(1280, 'aku', 'L', 'Mahasiswa', 'Baca Buku####', 'ok', '2016-05-17 11:15:41'),
(1281, 'ilham', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'wqerfqwef', '2016-05-17 19:03:46'),
(1282, 'maman', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'okee', '2016-05-17 20:34:36'),
(1283, 'we', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'qweqw', '2016-05-18 19:27:07'),
(1284, 'boy', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'bagus', '2016-05-18 23:00:42'),
(1285, 'ghjgh', 'L', 'Mahasiswa', 'Baca Buku####', 'ghjghj', '2016-05-19 03:04:55'),
(1286, 'andri marine', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ya itulah', '2016-05-19 16:04:12'),
(1287, 'muzi', 'L', 'Mahasiswa', 'Baca Buku####', 'ok', '2016-05-20 00:46:48'),
(1288, 'a', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ok', '2016-05-20 00:48:27'),
(1289, 'gembel', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2016-05-20 15:51:45'),
(1290, 'nanda', 'L', 'Mahasiswa', 'Baca Buku####', 'saua', '2016-05-20 23:18:21'),
(1291, 'Rizal Setiawan', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'dfdfdfdf', '2016-05-21 15:28:09'),
(1292, 'dd', 'P', 'Dosen', 'Baca Buku####', 'dd', '2016-05-22 03:54:49'),
(1293, 'Sahrudin', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'bagus', '2016-05-22 06:03:04'),
(1294, 'Dedi', 'L', 'Mahasiswa', 'Baca Buku####', 'coba', '2016-05-23 07:41:18'),
(1295, 'test', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'sds', '2016-05-23 23:59:55'),
(1296, 'salh', 'L', 'Mahasiswa', 'Baca Buku####', 'g jg yj g yk kgg', '2016-05-24 10:59:00'),
(1297, 'asddsa', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'asd', '2016-05-25 13:24:55'),
(1298, 'agip', 'L', 'Mahasiswa', 'Baca Buku####', 'sdfsfs', '2016-05-25 14:45:57'),
(1299, 'admin', 'L', 'Mahasiswa', 'Baca Buku####', 'tes', '2016-05-26 09:16:20'),
(1300, 'admin', 'P', 'Mahasiswa', 'Baca Buku####', 'tes', '2016-05-26 09:16:59'),
(1301, 'iwan', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2016-05-26 15:49:05'),
(1302, 'iwan', 'L', 'Mahasiswa', 'Baca Buku####', 'joss', '2016-05-26 15:56:35'),
(1303, '-', 'L', 'Mahasiswa', 'Baca Buku####', '--', '2016-05-26 21:57:33'),
(1304, 'D', 'L', 'Dosen', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'd', '2016-05-29 03:00:54'),
(1305, 'df', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'cv', '2016-05-29 03:01:37'),
(1306, 'zzz', 'L', 'Mahasiswa', 'Baca Buku####', 'xx', '2016-05-30 08:19:56'),
(1307, 'ff', 'L', 'Mahasiswa', '##Kembalikan Buku##', 'fff', '2016-05-30 09:27:19'),
(1308, 'dhdh', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'rthrh', '2016-05-30 12:03:02'),
(1309, 'dhdh', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'rthrh', '2016-05-30 12:03:03'),
(1310, 'joko', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'jozzz', '2016-06-01 09:50:46'),
(1311, 'gggg', 'P', 'Mahasiswa', 'Baca Buku####', 'ssss', '2016-06-03 15:44:45'),
(1312, 'Herry Prasetyo', 'L', 'Mahasiswa', 'Baca Buku####', 'ok', '2016-06-04 22:34:41'),
(1313, 'yandri', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'ghjkl', '2016-06-06 12:10:40'),
(1314, 'sdfsdf', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sdfsdfsdf', '2016-06-07 07:17:46'),
(1315, 'rina putri', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'mmm', '2016-06-07 21:46:30'),
(1316, 'jhon', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'maju', '2016-06-08 21:33:35'),
(1317, 'lll', 'L', 'Mahasiswa', 'Baca Buku####', 'lll', '2016-06-08 23:06:26'),
(1318, 'risa', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'semoga', '2016-06-09 08:00:42'),
(1319, 'affandi', 'L', 'Mahasiswa', 'Baca Buku####', 'ok', '2016-06-10 09:01:21'),
(1320, 'muziasih', 'L', 'Mahasiswa', 'Baca Buku####', 'ok', '2016-06-10 17:11:06'),
(1321, 'fajar', 'L', 'Dosen', 'Baca Buku#Pinjam Buku###', 'baik', '2016-06-10 21:15:02'),
(1322, 'kk', 'P', 'Dosen', 'Baca Buku#Pinjam Buku###', 'nnnn', '2016-06-10 21:15:45'),
(1323, 'w', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'w', '2016-06-11 23:31:41'),
(1324, 'Nunu', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###Lainnya', 'Huuuu', '2016-06-13 02:31:42'),
(1325, 'nana', 'L', 'Dosen', 'Baca Buku##Kembalikan Buku#Baca Koran#Lainnya', 'semoga sukses', '2016-06-13 10:39:46'),
(1326, 'asdfghj', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'asdfghj', '2016-06-13 22:09:19'),
(1327, 'ias', 'L', 'Mahasiswa', 'Baca Buku####', 'kritik', '2016-06-14 10:41:54'),
(1328, 'sd', 'L', 'Mahasiswa', 'Baca Buku####', 'sdsd', '2016-06-14 14:29:15'),
(1329, 'aal', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'xgfxgf', '2016-06-14 22:23:09'),
(1330, 'wahyu', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'agfs', '2016-06-16 04:18:41'),
(1331, 'ahmad bastiar', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'as', '2016-06-16 10:04:38'),
(1332, 'da', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'bbb', '2016-06-16 23:52:38'),
(1333, 'mak', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'saya mencoba', '2016-06-17 00:19:59'),
(1334, 'Rian', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'buku mtk', '2016-06-17 13:10:09'),
(1335, 'saleh', 'L', 'Mahasiswa', 'Baca Buku####', 'sasa', '2016-06-19 11:29:37'),
(1336, 'riki', 'L', 'Mahasiswa', 'Baca Buku####', 'maaf', '2016-06-20 02:29:39'),
(1337, 'acdr', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#', 'ggggg', '2016-06-20 04:26:53'),
(1338, 'vido', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'eaea', '2016-06-20 14:42:02'),
(1339, 'ridwan', 'L', 'Mahasiswa', 'Baca Buku####', '-', '2016-06-22 12:52:54'),
(1340, 'qwertyu', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'jk', '2016-06-22 19:58:14'),
(1341, 'juna', 'L', 'Mahasiswa', 'Baca Buku####', 'test', '2016-06-25 09:18:31'),
(1342, 'm', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'm', '2016-06-25 09:20:21'),
(1343, 'x', 'L', 'Dosen', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'x', '2016-06-25 09:23:29'),
(1344, 'eee', 'L', 'Mahasiswa', 'Baca Buku####', 'erer', '2016-06-25 12:40:04'),
(1345, 'sss', 'L', 'Dosen', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'ssss', '2016-06-26 16:40:14'),
(1346, 'a', 'L', 'Dosen', 'Baca Buku#Pinjam Buku###', 'asddsas', '2016-06-27 05:31:44'),
(1347, 'aray', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku##Baca Koran#Lainnya', 'ok', '2016-06-27 10:27:42'),
(1348, 'rian', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'good', '2016-07-02 20:02:53'),
(1349, 'leo', 'L', 'Mahasiswa', 'Baca Buku###Baca Koran#', '.ll', '2016-07-04 00:46:46'),
(1350, 'leo', 'L', 'Mahasiswa', 'Baca Buku###Baca Koran#', '.ll', '2016-07-04 00:46:46'),
(1351, 'asd', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'sdf', '2016-07-05 10:14:17'),
(1352, 'Hasan Basri', 'L', 'Mahasiswa', 'Baca Buku####', 'good', '2016-07-08 22:47:22'),
(1353, 'fero', 'L', 'Mahasiswa', 'Baca Buku###Baca Koran#', 'sangat puas', '2016-07-09 20:40:08'),
(1354, 'test', 'L', 'Mahasiswa', 'Baca Buku####', 'lorem ipsim', '2016-07-11 09:09:18'),
(1355, 'gfgg', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'ggg', '2016-07-15 14:42:49'),
(1356, 'asd', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku##Baca Koran#', 'asdasd', '2016-07-18 10:23:45'),
(1357, 'Vunun', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'test', '2016-07-18 21:15:06'),
(1358, 'M MUKHLASIN UMAR', 'L', 'Mahasiswa', 'Baca Buku####', 'A', '2016-07-19 15:21:09'),
(1359, 'iroel', 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'fdfdf', '2016-07-19 21:36:21'),
(1360, 'Ilhamuddin', 'L', 'Dosen', 'Baca Buku#Pinjam Buku###', 'ff', '2016-07-19 21:37:09'),
(1361, 'joko', 'L', 'Mahasiswa', 'Baca Buku####', 'nice', '2016-07-20 16:50:07'),
(1362, 'Petrus', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Test', '2016-07-21 22:33:00'),
(1363, 'ari', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2016-07-22 09:48:02'),
(1364, 'keke', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'Top', '2016-07-22 22:18:59'),
(1365, 'gjhjgjgj', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'bmbmbmmbnm', '2016-07-23 06:43:23'),
(1366, 'fadel marzian', 'L', 'Mahasiswa', 'Baca Buku####', 'good job\n', '2016-07-23 10:47:45'),
(1367, 'root', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'aaaaaa', '2016-07-23 14:00:15'),
(1368, 'Ra\'afiurrizqi Alamanda', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'm', '2016-07-26 16:46:31'),
(1369, 'SASA', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku##', 'ad', '2016-07-27 09:07:26'),
(1370, 'Adrian', 'L', 'Mahasiswa', 'Baca Buku####', 'Welcome', '2016-07-27 09:34:17'),
(1371, 'Magfiroh', 'L', 'Mahasiswa', 'Baca Buku####', 'srsdsdsd', '2016-07-27 13:32:39'),
(1372, 'hhhhggggg', 'L', 'Mahasiswa', 'Baca Buku###Baca Koran#', 'High', '2016-07-28 23:21:20'),
(1373, 'dadad', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'sasa', '2016-07-29 13:40:30'),
(1374, 'rouf', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'lucu', '2016-07-30 01:45:10'),
(1375, 'Mutia', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'kk', '2016-07-30 17:45:08'),
(1376, 'Riyanfajri', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku#Kembalikan Buku#Baca Koran#Lainnya', 'asdfadsfdasf', '2016-07-30 17:58:34'),
(1377, 'ujang', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'bbagus', '2016-07-30 19:35:34'),
(1378, 'Hendra Irawan', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'saya ingin meminjam buku', '2016-07-31 10:47:56'),
(1379, 'Syarifudin Bahari', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'no', '2016-08-01 11:10:23'),
(1380, 'dsfds', 'L', 'Dosen', 'Baca Buku####', 'dsf', '2016-08-01 20:41:26'),
(1381, '32423', 'L', 'Mahasiswa', 'Baca Buku####', '34', '2016-08-01 20:41:37'),
(1382, '32423', 'L', 'Mahasiswa', 'Baca Buku####', '34', '2016-08-01 20:41:37'),
(1383, 'Hendra', 'L', 'Mahasiswa', 'Baca Buku####', 'bagus', '2016-08-02 21:49:32'),
(1384, 'ghea', 'P', 'Mahasiswa', 'Baca Buku####', 'makin', '2016-08-05 09:10:38'),
(1385, 'udin', 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', 'good', '2016-08-06 14:12:36'),
(1386, 'Ayatullah', 'L', 'Mahasiswa', 'Baca Buku####', 'pinjam', '2016-08-07 08:52:24'),
(1387, 'Paijo', 'L', 'Mahasiswa', 'Baca Buku####', 'Nyoba', '2016-12-22 12:29:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_trans`
--

CREATE TABLE `t_trans` (
  `id` int(6) NOT NULL,
  `id_buku` int(6) NOT NULL,
  `id_anggota` int(6) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `stat` enum('P','K') NOT NULL,
  `ket` varchar(100) NOT NULL,
  `telat` int(2) NOT NULL,
  `denda` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `t_trans`
--

INSERT INTO `t_trans` (`id`, `id_buku`, `id_anggota`, `tgl_pinjam`, `tgl_kembali`, `stat`, `ket`, `telat`, `denda`) VALUES
(1, 4, 1, '2013-03-30', '2013-04-08', 'K', '', 205, 102500.00),
(2, 3, 1, '2013-03-30', '2013-04-08', 'K', '', 205, 102500.00),
(3, 3, 2, '2013-11-03', '2013-11-12', 'K', '', 0, 0.00),
(4, 4, 2, '2013-11-03', '2013-11-12', 'K', '', 0, 0.00),
(5, 3, 2, '2013-11-03', '2013-12-14', 'K', '', 0, 0.00),
(6, 5, 1, '2013-12-06', '2013-12-14', 'K', 'X', 10, 5000.00),
(7, 5, 1, '2013-12-06', '2013-12-14', 'K', 'X', 14, 7000.00),
(8, 2, 1, '2013-12-06', '2014-01-04', 'K', 'X', 280, 140000.00),
(9, 5, 5, '2013-12-24', '2014-01-01', 'K', 'test', 0, 0.00),
(10, 1, 5, '2013-12-24', '2014-01-01', 'K', 'test', 0, 0.00),
(11, 5, 2, '2014-05-30', '2014-06-07', 'K', '', 0, 0.00),
(12, 1, 2, '2014-05-30', '2014-10-30', 'K', '', 0, 0.00),
(13, 5, 5, '2014-10-13', '2014-10-21', 'K', '', 0, 0.00),
(14, 2, 5, '2014-10-13', '2014-10-28', 'K', '', 0, 0.00),
(15, 5, 7, '2014-10-13', '2014-10-21', 'K', '', 0, 0.00),
(16, 3, 7, '2014-10-13', '2014-10-21', 'K', '', 0, 0.00),
(17, 5, 3, '2014-10-19', '2014-11-18', 'K', 'membaca', 0, 0.00),
(18, 3, 8, '2014-10-22', '2014-10-30', 'K', '', 0, 0.00),
(19, 0, 7, '2014-10-24', '2014-11-01', 'K', 'asasa', 0, 0.00),
(20, 2, 5, '2014-10-25', '2014-11-03', 'K', '', 0, 0.00),
(21, 1, 5, '2014-10-31', '2014-11-08', 'K', '', 0, 0.00),
(22, 3, 6, '2014-11-01', '2014-11-11', 'K', 'ssssss', 0, 0.00),
(23, 3, 6, '2014-11-03', '2014-11-13', 'K', '', 0, 0.00),
(24, 1, 6, '2014-11-03', '2014-11-11', 'K', '', 0, 0.00),
(25, 0, 5, '2014-11-05', '2014-11-13', 'K', 'cc', 0, 0.00),
(26, 0, 5, '2014-11-05', '2014-11-13', 'K', 'cc', 0, 0.00),
(27, 0, 5, '2014-11-05', '2014-11-13', 'K', 'cc', 0, 0.00),
(28, 0, 3, '2014-11-10', '2014-11-18', 'K', '', 12, 6000.00),
(29, 0, 3, '2014-11-10', '2015-01-06', 'K', '', 3, 1500.00),
(30, 1, 9, '2014-11-27', '2014-12-05', 'K', 'ad;aksd', 0, 0.00),
(31, 3, 7, '2014-11-30', '2014-12-09', 'K', 'tes', 0, 0.00),
(32, 7, 7, '2014-11-30', '2014-12-12', 'K', 'tes', 0, 0.00),
(33, 8, 9, '2014-11-30', '2014-12-09', 'K', 'tess', 0, 0.00),
(34, 1, 9, '2014-11-30', '2014-12-09', 'K', 'tess', 0, 0.00),
(35, 2, 6, '2014-12-06', '2014-12-15', 'K', '', 0, 0.00),
(36, 3, 5, '2014-12-06', '2014-12-15', 'K', '', 0, 0.00),
(37, 8, 9, '2014-12-10', '2014-12-18', 'K', '', 0, 0.00),
(38, 5, 9, '2014-12-10', '2014-12-18', 'K', '', 0, 0.00),
(39, 2, 9, '2014-12-10', '2014-12-23', 'K', '', 0, 0.00),
(40, 0, 6, '2014-12-11', '2014-12-19', 'K', 'lmlmlmlmlm', 0, 0.00),
(41, 0, 6, '2014-12-11', '2014-12-19', 'K', 'lmlmlmlmlm', 0, 0.00),
(42, 0, 6, '2014-12-11', '2014-12-19', 'K', 'lmlmlmlmlm', 0, 0.00),
(43, 5, 6, '2014-12-14', '2015-01-01', 'K', '', 0, 0.00),
(44, 8, 7, '2014-12-14', '2014-12-23', 'K', '', 0, 0.00),
(45, 3, 7, '2014-12-14', '2014-12-31', 'K', '', 0, 0.00),
(46, 8, 7, '2014-12-14', '2014-12-23', 'K', '', 1, 500.00),
(47, 8, 5, '2014-12-27', '2015-01-05', 'K', '', 0, 0.00),
(48, 0, 5, '2014-12-29', '2015-01-06', 'K', '', 3, 1500.00),
(49, 0, 5, '2014-12-29', '2015-01-06', 'K', '', 3, 1500.00),
(50, 5, 6, '2015-01-02', '2015-01-10', 'K', '', 0, 0.00),
(51, 0, 11, '2015-01-06', '2015-01-14', 'K', '', 0, 0.00),
(52, 5, 6, '2015-01-09', '2015-01-17', 'K', '', 0, 0.00),
(53, 8, 5, '2015-01-09', '2015-01-21', 'K', '', 0, 0.00),
(54, 5, 5, '2015-01-09', '2015-01-17', 'K', '', 0, 0.00),
(55, 2, 9, '2015-01-09', '2015-01-17', 'K', '', 0, 0.00),
(56, 3, 6, '2015-01-12', '2015-01-20', 'K', '', 0, 0.00),
(57, 2, 6, '2015-01-12', '2015-01-20', 'K', '', 0, 0.00),
(58, 0, 6, '2015-01-15', '2015-01-23', 'K', '', 6, 3000.00),
(59, 0, 6, '2015-01-15', '2015-01-23', 'K', '', 6, 3000.00),
(60, 0, 12, '2015-01-16', '2015-01-24', 'K', '', 0, 0.00),
(61, 0, 12, '2015-01-16', '2015-01-26', 'K', '', 0, 0.00),
(62, 0, 12, '2015-01-16', '2015-01-24', 'K', '', 0, 0.00),
(63, 5, 9, '2015-01-17', '2015-01-28', 'K', '', 0, 0.00),
(64, 3, 9, '2015-01-17', '2015-01-31', 'K', '', 0, 0.00),
(65, 5, 12, '2015-01-22', '2015-01-30', 'K', '', 0, 0.00),
(66, 8, 12, '2015-01-22', '2015-01-30', 'K', '', 0, 0.00),
(67, 0, 7, '2015-01-23', '2015-01-31', 'K', '', 0, 0.00),
(68, 8, 5, '2015-01-29', '2015-02-06', 'K', 'asaaa', 0, 0.00),
(69, 3, 5, '2015-01-29', '2015-02-06', 'K', 'asaaa', 0, 0.00),
(70, 8, 6, '2015-01-29', '2015-02-09', 'K', '', 0, 0.00),
(71, 5, 10, '2015-01-31', '2015-02-09', 'K', '', 0, 0.00),
(72, 3, 10, '2015-01-31', '2015-02-09', 'K', '', 0, 0.00),
(73, 5, 10, '2015-01-31', '2015-02-09', 'K', '', 0, 0.00),
(74, 5, 5, '2015-02-02', '2015-02-10', 'K', '7878', 0, 0.00),
(75, 3, 5, '2015-02-02', '2015-02-10', 'K', '7878', 0, 0.00),
(76, 3, 5, '2015-02-02', '2015-02-10', 'K', 'ewer', 0, 0.00),
(77, 8, 7, '2015-02-02', '2015-02-10', 'K', '', 0, 0.00),
(78, 8, 9, '2015-02-02', '2015-02-10', 'K', 'po', 0, 0.00),
(79, 5, 9, '2015-02-02', '2015-02-10', 'K', 'po', 0, 0.00),
(80, 3, 9, '2015-02-02', '2015-02-11', 'K', 'po', 0, 0.00),
(81, 8, 10, '2015-02-02', '2015-02-10', 'K', '', 0, 0.00),
(82, 0, 5, '2015-02-04', '2015-02-12', 'K', 'aa', 0, 0.00),
(83, 5, 5, '2015-02-04', '2015-02-12', 'K', 'nyuri', 0, 0.00),
(84, 0, 5, '2015-02-05', '2015-02-13', 'K', 'asdasdsa', 0, 0.00),
(85, 0, 5, '2015-02-05', '2015-02-13', 'K', 'asdasdsa', 0, 0.00),
(86, 5, 11, '2015-02-06', '2015-02-14', 'K', '', 0, 0.00),
(87, 5, 6, '2015-02-08', '2015-02-17', 'K', 'hhi', 0, 0.00),
(88, 3, 6, '2015-02-08', '2015-02-17', 'K', 'hhi', 0, 0.00),
(89, 8, 6, '2015-02-11', '2015-02-19', 'K', '', 0, 0.00),
(90, 3, 6, '2015-02-11', '2015-02-19', 'K', '', 0, 0.00),
(91, 0, 5, '2015-02-12', '2015-02-21', 'K', 'tes', 3, 1500.00),
(92, 0, 10, '2015-02-12', '2015-02-20', 'K', '', 0, 0.00),
(93, 0, 9, '2015-02-13', '2015-02-21', 'K', 'zxcvz', 0, 0.00),
(94, 0, 9, '2015-02-13', '2015-02-24', 'K', 'zxcvz', 6, 3000.00),
(95, 0, 11, '2015-02-13', '2015-02-21', 'K', '', 0, 0.00),
(96, 0, 11, '2015-02-13', '2015-02-21', 'K', '', 0, 0.00),
(97, 0, 7, '2015-02-16', '2015-02-24', 'K', '', 7, 3500.00),
(98, 0, 7, '2015-02-16', '2015-03-14', 'K', '', 0, 0.00),
(99, 5, 14, '2015-02-17', '2015-02-25', 'K', 'mahasiswa rajin', 0, 0.00),
(100, 5, 14, '2015-02-17', '2015-02-25', 'K', 'mahasiswa rajin', 0, 0.00),
(101, 3, 14, '2015-02-17', '2015-02-25', 'K', 'mahasiswa rajin', 0, 0.00),
(102, 3, 14, '2015-02-17', '2015-03-02', 'K', 'mahasiswa rajin', 0, 0.00),
(103, 3, 14, '2015-02-17', '2015-02-25', 'K', 'mahasiswa rajin', 3, 1500.00),
(104, 3, 15, '2015-02-24', '2015-03-04', 'K', '', 0, 0.00),
(105, 5, 12, '2015-02-26', '2015-03-06', 'K', '', 0, 0.00),
(106, 0, 6, '2015-02-28', '2015-03-10', 'K', 'Peminjaman', 0, 0.00),
(107, 0, 6, '2015-02-28', '2015-03-14', 'K', 'Peminjaman', 0, 0.00),
(108, 0, 6, '2015-02-28', '2015-03-19', 'K', 'Peminjaman', 20, 20000.00),
(109, 5, 13, '2015-03-01', '2015-03-10', 'K', '', 0, 0.00),
(110, 0, 13, '2015-03-01', '2015-03-10', 'K', '', 0, 0.00),
(111, 0, 7, '2015-03-07', '2015-03-16', 'K', 'pinjam', 10, 10000.00),
(112, 0, 7, '2015-03-07', '2015-03-16', 'K', 'pinjam', 0, 0.00),
(113, 0, 9, '2015-03-08', '2015-03-17', 'K', 'oke', 0, 0.00),
(114, 0, 9, '2015-03-08', '2015-03-17', 'K', 'oke', 0, 0.00),
(115, 0, 9, '2015-03-08', '2015-03-19', 'K', 'oke', 0, 0.00),
(116, 0, 9, '2015-03-08', '2015-03-19', 'K', 'oke', 0, 0.00),
(117, 0, 11, '2015-03-08', '2015-03-19', 'K', 'ya', 0, 0.00),
(118, 5, 16, '2015-03-11', '2015-03-19', 'K', '', 0, 0.00),
(119, 8, 16, '2015-03-11', '2015-03-19', 'K', '', 0, 0.00),
(120, 0, 14, '2015-03-12', '2015-03-20', 'K', 'aaaa\n', 0, 0.00),
(121, 0, 14, '2015-03-12', '2015-03-28', 'K', 'aaaa\n', 0, 0.00),
(122, 5, 10, '2015-03-12', '2015-03-20', 'K', '', 25, 25000.00),
(123, 0, 13, '2015-03-24', '2015-04-01', 'K', 'hahsi', 0, 0.00),
(124, 0, 13, '2015-03-24', '2015-04-08', 'K', 'hahsi', 0, 0.00),
(125, 0, 12, '2015-03-27', '2015-04-04', 'K', '', 9, 9000.00),
(126, 0, 12, '2015-03-27', '2015-04-04', 'K', '', 10, 10000.00),
(127, 0, 12, '2015-03-27', '2015-04-04', 'K', '', 10, 10000.00),
(128, 0, 6, '2015-04-11', '2015-04-23', 'K', '', 0, 0.00),
(129, 0, 6, '2015-04-11', '2015-04-25', 'K', '', 0, 0.00),
(130, 0, 6, '2015-04-11', '2015-04-29', 'K', '', 0, 0.00),
(131, 0, 9, '2015-04-14', '2015-04-23', 'K', 'qqww', 0, 0.00),
(132, 0, 13, '2015-04-21', '2015-04-29', 'K', 'gag', 0, 0.00),
(133, 12, 10, '2015-04-23', '2015-05-01', 'K', '', 0, 0.00),
(134, 0, 13, '2015-04-27', '2015-05-05', 'K', '', 0, 0.00),
(135, 0, 15, '2015-04-28', '2015-05-06', 'K', 'jangan lupa balikin bukunya ya', 0, 0.00),
(136, 0, 9, '2015-04-28', '2015-05-06', 'K', '', 0, 0.00),
(137, 0, 10, '2015-04-28', '2015-05-08', 'K', 'Tips dan Trick PHP Mr. R Erlangga', 0, 0.00),
(138, 0, 9, '2015-04-30', '2015-05-08', 'K', 'sdsdsa', 0, 0.00),
(139, 0, 9, '2015-04-30', '2015-05-12', 'K', 'sdsdsa', 0, 0.00),
(140, 0, 9, '2015-04-30', '2015-05-08', 'K', 'sdsdsa', 0, 0.00),
(141, 0, 9, '2015-05-04', '2015-05-12', 'K', 'asdf@123', 0, 0.00),
(142, 0, 9, '2015-05-04', '2015-05-13', 'K', 'asdf@123', 0, 0.00),
(143, 0, 13, '2015-05-05', '2015-05-13', 'K', 'fg', 0, 0.00),
(144, 13, 9, '2015-05-06', '2015-05-14', 'K', 'studentshacker-tips.blogspot.com\nstudentshacker-tips.blogspot.com\nstudentshacker-tips.blogspot.com\n', 200, 100000.00),
(145, 0, 9, '2015-05-06', '2015-05-14', 'K', 'studentshacker-tips.blogspot.com\nstudentshacker-tips.blogspot.com\nstudentshacker-tips.blogspot.com\n', 200, 100000.00),
(146, 0, 9, '2015-05-06', '2015-05-14', 'K', 'studentshacker-tips.blogspot.com\nstudentshacker-tips.blogspot.com\nstudentshacker-tips.blogspot.com\n', 200, 100000.00),
(147, 0, 10, '2015-11-19', '2015-11-27', 'K', '', 0, 0.00),
(148, 0, 17, '2015-11-21', '2015-12-11', 'K', '', 0, 0.00),
(149, 0, 17, '2015-11-21', '2015-11-30', 'K', '', 3, 1500.00),
(150, 0, 17, '2015-11-21', '2015-11-30', 'K', '', 0, 0.00),
(151, 14, 16, '2015-11-26', '2015-12-04', 'K', 'lksjdlafj', 0, 0.00),
(152, 14, 12, '2015-12-02', '2015-12-10', 'K', '', 0, 0.00),
(153, 12, 10, '2015-12-03', '2015-12-11', 'K', '', 17, 8500.00),
(154, 13, 10, '2015-12-03', '2015-12-11', 'K', '', 17, 8500.00),
(155, 0, 9, '2015-12-03', '2016-01-05', 'K', '', 0, 0.00),
(156, 15, 14, '2015-12-10', '2015-12-18', 'K', '', 0, 0.00),
(157, 0, 18, '2015-12-12', '2015-12-21', 'K', 'Pinjam L', 0, 0.00),
(158, 0, 19, '2015-12-22', '2015-12-30', 'K', 'pinjam buku ', 0, 0.00),
(159, 14, 16, '2015-12-25', '2016-01-02', 'K', 'Ajahhs', 0, 0.00),
(160, 13, 12, '2016-01-04', '2016-01-12', 'K', 'ewewqe', 0, 0.00),
(161, 0, 10, '2016-01-04', '2016-01-12', 'K', '', 0, 0.00),
(162, 1, 13, '2016-01-09', '2016-01-18', 'K', 'gfjhfjgjfj', 0, 0.00),
(163, 2, 10, '2016-01-11', '2016-01-19', 'K', 'oke baru', 0, 0.00),
(164, 0, 10, '2016-01-13', '2016-01-23', 'K', 'hhkh', 2, 1000.00),
(165, 3, 14, '2016-01-15', '2016-01-23', 'K', 'asd', 0, 0.00),
(166, 3, 18, '2016-01-16', '2016-01-25', 'K', 'sdFg', 0, 0.00),
(167, 3, 15, '2016-01-25', '2016-02-02', 'K', '', 0, 0.00),
(168, 4, 14, '2016-01-25', '2016-02-02', 'K', 'caba', 0, 0.00),
(169, 5, 17, '2016-01-28', '2016-02-05', 'K', 'bkyiytiyu', 0, 0.00),
(170, 4, 17, '2016-01-28', '2016-02-05', 'K', 'bkyiytiyu', 0, 0.00),
(171, 5, 10, '2016-01-30', '2016-02-08', 'K', '', 0, 0.00),
(172, 4, 10, '2016-01-30', '2016-02-08', 'K', '', 0, 0.00),
(173, 0, 12, '2016-02-01', '2016-02-09', 'K', 'jos', 0, 0.00),
(174, 0, 12, '2016-02-01', '2016-02-09', 'K', 'jos', 0, 0.00),
(175, 0, 21, '2016-02-02', '2016-02-10', 'K', '', 0, 0.00),
(176, 3, 20, '2016-02-02', '2016-02-10', 'K', 'Baik', 0, 0.00),
(177, 5, 10, '2016-02-06', '2016-02-23', 'K', '', 0, 0.00),
(178, 3, 10, '2016-02-06', '2016-02-27', 'K', '', 6, 3000.00),
(179, 0, 15, '2016-02-09', '2016-02-18', 'K', 'ghnfgh', 0, 0.00),
(180, 0, 15, '2016-02-09', '2016-02-17', 'K', 'ghnfgh', 0, 0.00),
(181, 0, 12, '2016-02-14', '2016-02-23', 'K', '', 0, 0.00),
(182, 0, 12, '2016-02-19', '2016-02-27', 'K', '', 0, 0.00),
(183, 0, 12, '2016-02-19', '2016-02-27', 'K', '', 0, 0.00),
(184, 0, 13, '2016-02-19', '2016-02-29', 'K', 'tepat waktu', 0, 0.00),
(185, 0, 22, '2016-02-20', '2016-02-29', 'K', 'pinjem', 0, 0.00),
(186, 5, 12, '2016-02-21', '2016-03-03', 'K', 'ok', 0, 0.00),
(187, 4, 12, '2016-02-21', '2016-03-03', 'K', 'ok', 0, 0.00),
(188, 0, 12, '2016-03-02', '2016-03-11', 'K', 'pinjam buka', 0, 0.00),
(189, 0, 12, '2016-03-02', '2016-03-11', 'K', 'pinjam buka', 0, 0.00),
(190, 0, 15, '2016-03-04', '2016-03-12', 'K', 'dfd', 0, 0.00),
(191, 0, 15, '2016-03-04', '2016-03-12', 'K', 'dfd', 0, 0.00),
(192, 0, 20, '2016-03-07', '2016-03-15', 'K', 'sdsadasd', 0, 0.00),
(193, 0, 22, '2016-03-07', '2016-03-15', 'K', 'php\n', 0, 0.00),
(194, 0, 22, '2016-03-07', '2016-03-19', 'K', 'php\n', 0, 0.00),
(195, 0, 10, '2016-03-11', '2016-03-19', 'K', '', 3, 1500.00),
(196, 0, 15, '2016-03-15', '2016-03-23', 'K', 'lk', 0, 0.00),
(197, 0, 15, '2016-03-15', '2016-03-23', 'K', 'lk', 0, 0.00),
(198, 0, 14, '2016-03-17', '2016-03-25', 'K', 'asdf', 0, 0.00),
(199, 9, 12, '2016-03-21', '2016-03-30', 'K', 'ssss', 0, 0.00),
(200, 0, 17, '2016-03-22', '2016-03-30', 'K', '', 0, 0.00),
(201, 0, 10, '2016-03-22', '2016-03-30', 'K', '', 0, 0.00),
(202, 10, 23, '2016-03-23', '2016-03-31', 'K', 'rr', 0, 0.00),
(203, 0, 10, '2016-03-23', '2016-03-31', 'K', 'hj', 0, 0.00),
(204, 0, 12, '2016-03-24', '2016-05-12', 'K', '', 0, 0.00),
(205, 0, 12, '2016-03-24', '2016-04-01', 'K', '', 3, 1500.00),
(206, 0, 15, '2016-03-24', '2016-04-01', 'K', '', 0, 0.00),
(207, 0, 13, '2016-03-25', '2016-04-02', 'K', '123', 0, 0.00),
(208, 0, 13, '2016-03-25', '2016-04-02', 'K', '123', 0, 0.00),
(209, 0, 10, '2016-03-28', '2016-04-05', 'K', '', 20, 10000.00),
(210, 0, 10, '2016-03-28', '2016-04-05', 'K', '', 20, 10000.00),
(211, 12, 14, '2016-04-16', '2016-04-29', 'K', '', 0, 0.00),
(212, 12, 14, '2016-04-16', '2016-05-07', 'K', '', 26, 13000.00),
(213, 9, 14, '2016-04-16', '2016-04-29', 'K', '', 34, 17000.00),
(214, 4, 14, '2016-04-16', '2016-04-25', 'K', '', 38, 19000.00),
(215, 10, 13, '2016-04-25', '2016-05-10', 'K', '', 0, 0.00),
(216, 6, 19, '2016-05-01', '2016-05-10', 'K', '1', 0, 0.00),
(217, 12, 26, '2016-05-01', '2016-05-10', 'K', 'dip', 0, 0.00),
(218, 11, 26, '2016-05-01', '2016-05-10', 'K', 'dip', 0, 0.00),
(219, 6, 26, '2016-05-01', '2016-05-10', 'K', 'dip', 0, 0.00),
(220, 5, 26, '2016-05-01', '2016-05-10', 'K', 'dip', 0, 0.00),
(221, 0, 15, '2016-05-02', '2016-05-10', 'K', '', 30, 15000.00),
(222, 0, 15, '2016-05-02', '2016-05-10', 'K', '', 30, 15000.00),
(223, 0, 15, '2016-05-02', '2016-05-10', 'K', '', 30, 15000.00),
(224, 0, 23, '2016-05-02', '2016-06-14', 'K', '', 0, 0.00),
(225, 0, 23, '2016-05-02', '2016-06-14', 'K', '', 0, 0.00),
(226, 0, 23, '2016-05-02', '2016-06-16', 'K', '', 0, 0.00),
(227, 0, 23, '2016-05-02', '2016-06-16', 'K', '', 0, 0.00),
(228, 0, 27, '2016-05-03', '2016-05-12', 'K', '-', 0, 0.00),
(229, 0, 27, '2016-05-03', '2016-05-12', 'K', '-', 0, 0.00),
(230, 0, 27, '2016-05-03', '2016-05-11', 'K', '-', 0, 0.00),
(231, 0, 27, '2016-05-03', '2016-05-24', 'K', '-', 0, 0.00),
(232, 0, 27, '2016-05-03', '2016-05-20', 'K', '-', 1, 500.00),
(233, 0, 27, '2016-05-03', '2016-05-11', 'K', '-', 10, 5000.00),
(234, 0, 27, '2016-05-03', '2016-05-11', 'K', '-', 10, 5000.00),
(235, 0, 27, '2016-05-03', '2016-05-11', 'K', '-', 14, 7000.00),
(236, 0, 27, '2016-05-03', '2016-05-11', 'K', '-', 15, 7500.00),
(237, 0, 27, '2016-05-03', '2016-05-11', 'K', '-', 22, 11000.00),
(238, 0, 20, '2016-05-04', '2016-05-12', 'K', 'test', 0, 0.00),
(239, 0, 20, '2016-05-10', '2016-05-18', 'K', '', 27, 13500.00),
(240, 0, 20, '2016-05-10', '2016-06-21', 'K', '', 0, 0.00),
(241, 0, 19, '2016-05-11', '2016-06-17', 'K', '', 0, 0.00),
(242, 0, 19, '2016-05-11', '2016-06-17', 'K', '', 0, 0.00),
(243, 0, 13, '2016-05-12', '2016-05-20', 'K', '', 0, 0.00),
(244, 6, 13, '2016-05-16', '2016-05-24', 'K', '1', 0, 0.00),
(245, 0, 31, '2016-05-25', '2016-06-02', 'K', '', 0, 0.00),
(246, 0, 31, '2016-05-25', '2016-06-03', 'K', '', 0, 0.00),
(247, 0, 28, '2016-05-27', '2016-06-04', 'K', '', 2, 1000.00),
(248, 0, 14, '2016-06-03', '2016-06-16', 'K', '', 0, 0.00),
(249, 0, 14, '2016-06-03', '2016-06-11', 'K', '', 0, 0.00),
(250, 0, 17, '2016-06-06', '2016-06-14', 'K', '', 0, 0.00),
(251, 0, 17, '2016-06-06', '2016-06-14', 'K', '', 0, 0.00),
(252, 0, 32, '2016-06-08', '2016-06-16', 'K', 'hai', 0, 0.00),
(253, 11, 14, '2016-06-09', '2016-06-17', 'K', '', 0, 0.00),
(254, 0, 32, '2016-06-14', '2016-06-22', 'K', '', 5, 2500.00),
(255, 0, 32, '2016-06-14', '2016-07-18', 'K', '', 0, 0.00),
(256, 0, 14, '2016-06-20', '2016-06-28', 'K', '', 11, 5500.00),
(257, 0, 14, '2016-06-20', '2016-06-28', 'K', '', 0, 0.00),
(258, 10, 21, '2016-06-28', '2016-07-06', 'K', 'dzsgdsdd', 0, 0.00),
(259, 13, 28, '2016-07-03', '2016-07-12', 'K', '', 10, 5000.00),
(260, 9, 28, '2016-07-03', '2016-08-04', 'K', '', 0, 0.00),
(261, 14, 19, '2016-07-09', '2016-08-04', 'P', '', 0, 0.00),
(262, 11, 19, '2016-07-09', '2016-08-02', 'P', '', 0, 0.00),
(263, 14, 19, '2016-07-09', '2016-08-02', 'P', '', 0, 0.00),
(264, 0, 18, '2016-07-15', '2016-07-23', 'K', '', 4, 2000.00),
(265, 12, 17, '2016-07-15', '2016-07-23', 'P', '', 0, 0.00),
(266, 10, 17, '2016-07-15', '2016-07-23', 'P', '', 0, 0.00),
(267, 6, 17, '2016-07-15', '2016-07-23', 'P', '', 0, 0.00),
(268, 10, 17, '2016-07-15', '2016-07-23', 'P', '', 0, 0.00),
(269, 12, 17, '2016-07-15', '2016-07-23', 'P', '', 0, 0.00),
(270, 0, 25, '2016-07-24', '2016-08-02', 'K', 'eswss', 0, 0.00),
(271, 9, 22, '2016-07-27', '2016-08-10', 'K', '', 0, 0.00),
(272, 0, 27, '2016-07-31', '2016-08-09', 'K', 'meminjam buku', 0, 0.00),
(273, 0, 27, '2016-07-31', '2016-08-09', 'K', 'meminjam buku', 0, 0.00),
(274, 9, 20, '2016-08-02', '2016-08-10', 'K', 'ddddddddddd', 0, 0.00),
(275, 10, 32, '2017-03-24', '2017-04-01', 'P', '', 0, 0.00),
(276, 11, 32, '2017-03-24', '2017-04-01', 'P', '', 0, 0.00);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `r_jenis`
--
ALTER TABLE `r_jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `r_kelas`
--
ALTER TABLE `r_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `r_libur`
--
ALTER TABLE `r_libur`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `r_lokasi`
--
ALTER TABLE `r_lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `id_admin` (`id_admin`,`password`,`nama`,`alamat`,`no_hp`),
  ADD KEY `id_admin_2` (`id_admin`,`password`,`nama`,`alamat`,`no_hp`,`img`);

--
-- Indeks untuk tabel `tb_agama`
--
ALTER TABLE `tb_agama`
  ADD PRIMARY KEY (`id_agama`);

--
-- Indeks untuk tabel `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`id_anggota`),
  ADD KEY `id_agama` (`id_agama`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indeks untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_penerbit` (`id_penerbit`),
  ADD KEY `id_pengarang` (`id_pengarang`),
  ADD KEY `no_rak` (`no_rak`),
  ADD KEY `id_buku` (`id_buku`,`ISBN`,`judul`,`id_kategori`,`id_penerbit`,`id_pengarang`,`no_rak`,`thn_terbit`,`stok`);

--
-- Indeks untuk tabel `tb_denda`
--
ALTER TABLE `tb_denda`
  ADD PRIMARY KEY (`id_denda`);

--
-- Indeks untuk tabel `tb_detail_buku`
--
ALTER TABLE `tb_detail_buku`
  ADD KEY `id_detail_buku` (`id_detail_buku`,`id_buku`,`no_buku`,`status`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indeks untuk tabel `tb_detail_pinjam`
--
ALTER TABLE `tb_detail_pinjam`
  ADD PRIMARY KEY (`id_detail_pinjam`),
  ADD KEY `id_anggota` (`id_pinjam`),
  ADD KEY `id_detail_pinjam` (`id_detail_pinjam`,`id_pinjam`,`id_buku`,`no_buku`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indeks untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `tb_kembali`
--
ALTER TABLE `tb_kembali`
  ADD PRIMARY KEY (`id_kembali`),
  ADD KEY `id_detail` (`id_pinjam`),
  ADD KEY `id_kembali` (`id_kembali`,`id_pinjam`,`tgl_dikembalikan`,`terlambat`,`id_denda`);

--
-- Indeks untuk tabel `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`username`),
  ADD KEY `username` (`username`,`password`,`stts`);

--
-- Indeks untuk tabel `tb_penerbit`
--
ALTER TABLE `tb_penerbit`
  ADD PRIMARY KEY (`id_penerbit`),
  ADD KEY `id_penerbit` (`id_penerbit`,`nama_penerbit`,`id_provinsi`),
  ADD KEY `id_provinsi` (`id_provinsi`);

--
-- Indeks untuk tabel `tb_pengarang`
--
ALTER TABLE `tb_pengarang`
  ADD PRIMARY KEY (`id_pengarang`);

--
-- Indeks untuk tabel `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD PRIMARY KEY (`id_petugas`),
  ADD KEY `id_agama` (`id_agama`);

--
-- Indeks untuk tabel `tb_pinjam`
--
ALTER TABLE `tb_pinjam`
  ADD PRIMARY KEY (`id_pinjam`),
  ADD KEY `id_detail` (`tgl_kembali`),
  ADD KEY `id_buku` (`id_anggota`),
  ADD KEY `id_pinjam` (`id_pinjam`,`tgl_pinjam`,`id_anggota`,`tgl_kembali`,`total_buku`);

--
-- Indeks untuk tabel `tb_provinsi`
--
ALTER TABLE `tb_provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indeks untuk tabel `tb_rak`
--
ALTER TABLE `tb_rak`
  ADD PRIMARY KEY (`no_rak`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `t_anggota`
--
ALTER TABLE `t_anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_buku`
--
ALTER TABLE `t_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_pengunjung`
--
ALTER TABLE `t_pengunjung`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_trans`
--
ALTER TABLE `t_trans`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `r_jenis`
--
ALTER TABLE `r_jenis`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `r_libur`
--
ALTER TABLE `r_libur`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `r_lokasi`
--
ALTER TABLE `r_lokasi`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_agama`
--
ALTER TABLE `tb_agama`
  MODIFY `id_agama` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_denda`
--
ALTER TABLE `tb_denda`
  MODIFY `id_denda` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_detail_buku`
--
ALTER TABLE `tb_detail_buku`
  MODIFY `id_detail_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT untuk tabel `tb_detail_pinjam`
--
ALTER TABLE `tb_detail_pinjam`
  MODIFY `id_detail_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `tb_kembali`
--
ALTER TABLE `tb_kembali`
  MODIFY `id_kembali` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT untuk tabel `tb_penerbit`
--
ALTER TABLE `tb_penerbit`
  MODIFY `id_penerbit` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tb_pengarang`
--
ALTER TABLE `tb_pengarang`
  MODIFY `id_pengarang` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `tb_pinjam`
--
ALTER TABLE `tb_pinjam`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT untuk tabel `tb_provinsi`
--
ALTER TABLE `tb_provinsi`
  MODIFY `id_provinsi` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_rak`
--
ALTER TABLE `tb_rak`
  MODIFY `no_rak` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `t_anggota`
--
ALTER TABLE `t_anggota`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `t_buku`
--
ALTER TABLE `t_buku`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `t_pengunjung`
--
ALTER TABLE `t_pengunjung`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1388;

--
-- AUTO_INCREMENT untuk tabel `t_trans`
--
ALTER TABLE `t_trans`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD CONSTRAINT `tb_anggota_ibfk_1` FOREIGN KEY (`id_agama`) REFERENCES `tb_agama` (`id_agama`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_anggota_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `tb_kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD CONSTRAINT `tb_buku_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tb_kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_buku_ibfk_2` FOREIGN KEY (`id_penerbit`) REFERENCES `tb_penerbit` (`id_penerbit`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_buku_ibfk_3` FOREIGN KEY (`id_pengarang`) REFERENCES `tb_pengarang` (`id_pengarang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_buku_ibfk_4` FOREIGN KEY (`no_rak`) REFERENCES `tb_rak` (`no_rak`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_detail_buku`
--
ALTER TABLE `tb_detail_buku`
  ADD CONSTRAINT `tb_detail_buku_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `tb_buku` (`id_buku`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_detail_pinjam`
--
ALTER TABLE `tb_detail_pinjam`
  ADD CONSTRAINT `tb_detail_pinjam_ibfk_1` FOREIGN KEY (`id_pinjam`) REFERENCES `tb_pinjam` (`id_pinjam`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_detail_pinjam_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `tb_buku` (`id_buku`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_kembali`
--
ALTER TABLE `tb_kembali`
  ADD CONSTRAINT `tb_kembali_ibfk_1` FOREIGN KEY (`id_pinjam`) REFERENCES `tb_pinjam` (`id_pinjam`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_penerbit`
--
ALTER TABLE `tb_penerbit`
  ADD CONSTRAINT `tb_penerbit_ibfk_1` FOREIGN KEY (`id_provinsi`) REFERENCES `tb_provinsi` (`id_provinsi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD CONSTRAINT `tb_petugas_ibfk_1` FOREIGN KEY (`id_agama`) REFERENCES `tb_agama` (`id_agama`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_pinjam`
--
ALTER TABLE `tb_pinjam`
  ADD CONSTRAINT `tb_pinjam_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `tb_anggota` (`id_anggota`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_rak`
--
ALTER TABLE `tb_rak`
  ADD CONSTRAINT `tb_rak_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tb_kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
