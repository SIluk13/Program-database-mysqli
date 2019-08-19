
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";




CREATE TABLE `biaya` (
  `id_biaya` int(10) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `biaya` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `biaya` (`id_biaya`, `jenis`, `biaya`) VALUES
(2, 'Instalasi per Meteran', 5000),
(5, 'Instalasi per Titik/node', 25000);


CREATE TABLE `transaksi` (
  `id_transaksi` int(10) NOT NULL,
  `no_nota` varchar(10) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `bayar` int(10) NOT NULL,
  `kembali` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `id_user` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `user` (
  `id_user` tinyint(2) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `level` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `alamat`, `hp`, `level`) VALUES
(1, 'kodrat', 'kodrat13', 'M. Kodrat', 'Koto Rajo, Kec. Rao Utara Kab. Pasaman - Sumatera Barat', '082385989290', 1);



ALTER TABLE `biaya`
  ADD PRIMARY KEY (`id_biaya`);


ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);


ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);




ALTER TABLE `biaya`
  MODIFY `id_biaya` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

ALTER TABLE `user`
  MODIFY `id_user` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
