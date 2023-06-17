/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.28-MariaDB : Database - db_project_kelas
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_project_kelas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `db_project_kelas`;

/*Table structure for table `dosen` */

DROP TABLE IF EXISTS `dosen`;

CREATE TABLE `dosen` (
  `dsnNidn` char(12) NOT NULL,
  `dsnNama` varchar(255) DEFAULT NULL,
  `dsnAlamat` text DEFAULT NULL,
  `dsnGol` varchar(20) DEFAULT NULL,
  `dsnProdi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dsnNidn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `dosen` */

insert  into `dosen`(`dsnNidn`,`dsnNama`,`dsnAlamat`,`dsnGol`,`dsnProdi`) values ('11122345','Dosen 1','Bandar Lampung','Gol 1','sistem informasi'),('11122346','Dosen 2','Pesawaran\r\n','Gol 2','informatika'),('11122347','Dosen 3','Pringsewu','Gol 3','informatika'),('11122348','Dosen 4','Bandar Lampung','Gol 4','Sistem Informasi');

/*Table structure for table `event` */

DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
  `kodeEvent` char(10) NOT NULL,
  `namaEvent` varchar(255) DEFAULT NULL,
  `deskripsiEvent` text DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kodeEvent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `event` */

insert  into `event`(`kodeEvent`,`namaEvent`,`deskripsiEvent`,`tanggal`) values ('0001','Pentas Islami','pentas islami','2023-06-15'),('0002','Expo','ya expo','2023-06-15'),('0003','Gebyar Ramadhan','lomba pas bulan puasa','2023-06-15');

/*Table structure for table `mahasiswa` */

DROP TABLE IF EXISTS `mahasiswa`;

CREATE TABLE `mahasiswa` (
  `mhsNpm` char(12) NOT NULL,
  `mhsNama` varchar(255) DEFAULT NULL,
  `mhsAlamat` text DEFAULT NULL,
  `mhsFakultas` varchar(255) DEFAULT NULL,
  `mhsProdi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mhsNpm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `mahasiswa` */

insert  into `mahasiswa`(`mhsNpm`,`mhsNama`,`mhsAlamat`,`mhsFakultas`,`mhsProdi`) values ('11312136','Mahasiswa 1','Bandar Lampung','FTIK','Teknik Informatika'),('11312137','Mahasiswa 2','Bandar Lampung','FTIK','Teknik Elektro'),('11312138','Mahasiswa 3','Bandar Lampung','FTIK','Sistem Informasi');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `user` */

insert  into `user`(`id_user`,`name`,`username`,`pass`,`role`) values (1,'admin','tes','28b662d883b6d76fd96e4ddc5e9ba780','Admin'),(2,'admin2','Admin2','7a8a80e50f6ff558f552079cefe2715d','Admin'),(4,'mahasiswa1','mahasiswa1','22daf1a39b6e5ea16554f59e472d96f6','Admin');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
