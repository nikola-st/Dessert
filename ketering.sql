-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2018 at 04:07 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ketering`
--
CREATE DATABASE IF NOT EXISTS `ketering` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ketering`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idAdmin` int(11) NOT NULL,
  `adminUserName` varchar(20) CHARACTER SET utf8 NOT NULL,
  `adminPassword` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idAdmin`, `adminUserName`, `adminPassword`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `brojposeta`
--

CREATE TABLE `brojposeta` (
  `broj` int(10) NOT NULL,
  `IdPosete` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brojposeta`
--

INSERT INTO `brojposeta` (`broj`, `IdPosete`) VALUES
(64, '03BEB6506CE0BB00EAE4DAD6593DB30B'),
(57, '0519F96EAF78F9E568A86DF53531B03A'),
(96, '12436EDC2DD334EDB7D79332A6099247'),
(103, '150148CD2D909041B56922DD69546FFD'),
(60, '1AA776C9914412536B931F0D977B5CF5'),
(49, '4142A0060F8128B79CB23A73BA64AB9E'),
(58, '427998A22E1732C08ECE5486990ECA67'),
(15, '435E8D5BE72321524739CD1A9E7416FC'),
(42, '46317B7A1F867EDC76FA7AE484001DEC'),
(68, '52386AD82D61BE12FE3F5CEF1882A9B3'),
(23, '5AB2392AC88C49BDD5AB7ED929791920'),
(26, '613E552A8D0F2EE82441FFF8E96AB197'),
(21, '651B8FB329029B51F69FB03F9AA03743'),
(51, '6CDCFBF9AB152686158AD3B3F905F334'),
(28, '7420FA7CB5FE87CE5DB6A2D848A923C8'),
(87, '7A7B1DA62B15C8EE8B85842CE3178BA1'),
(54, '8165B13A352A10E179F5A064C245DFBA'),
(44, '8183E748C9F0E93B1162B8C14D0DACCF'),
(20, '82304A5F5C4E00AFAAE00B0C8BBE1AE0'),
(107, '85B229C74398DE43427EC18EF23F4716'),
(53, '8743BBA93B66F73E023863EBFBF3D482'),
(55, '889713E6E66E1866CE04CFEE3F9B8A19'),
(104, '8B61C8F5CAF72C9EA73ED0BA0BBF5C15'),
(50, '8CD41F55270F42C12D2BC04A28D1F258'),
(101, '8D6A97E61A5596F6B8D0F79D14D233CA'),
(65, '8DDC1A990A2961A9967201BE874759BD'),
(105, '8EDA90441C8C0C2E347048B703F07C79'),
(8, '8F56B8F99BA904C0187FE974BB7AD016'),
(114, '94DE2E4DE40472CF0562E48828736A90'),
(13, '972362F19B81CD8C6419A53F39C86F2C'),
(61, '998F80B3173959B556B1581FBE3942E0'),
(59, '9EC66FBFB742E914284EC911A71FEE03'),
(16, '9ED216EDB19B8CFB6E2CB9D917C5A379'),
(56, 'A098AB76ED841982631BAABC3023C580'),
(108, 'A38B88EE7C1DECD14009B855CF8AD071'),
(29, 'A580A5F12870ACB9FF167E1A62E5B3B4'),
(113, 'A9324B03303F2E303B581FDEBDD70819'),
(36, 'ACC82724D6C4AECF396FEEE12AFCEE85'),
(88, 'B4B1E2AE491C2C8375EEC9992C06EBD5'),
(97, 'B821C2CB554004CB486E1B6CAB407309'),
(67, 'C39666DC216B2FD9DCAB8EE56A7741D0'),
(91, 'C3A4B510F5669F32B4EEB1AC2DA8F34B'),
(48, 'C762ACF7ADA1B485C2DA5D2805489A95'),
(37, 'C9C6C546D0D02CBEDB07CC1255165B96'),
(117, 'CA5C8BB15FDA6DDC742D877EB4144709'),
(95, 'CA93DB6C155DC8E66032B1CAFB481756'),
(40, 'D2D1CE95C94DC66D879341345BF14772'),
(106, 'E2FB451498A417E5489D090F1540E90F'),
(102, 'E71A6CA14F27CE7D97FC13447E992932'),
(111, 'EA4CC2DEDCD4F2AE6019476B7D6A2C46'),
(112, 'EC028723B86803155EFD2B3F411B3CD0'),
(32, 'EE29CF128FEF9F0FB62CA1EF9823564A'),
(43, 'EF0287A8E9C4EA08B8AE289373C5A041'),
(11, 'F01E375E91445B04C1C8133AD8CD002E'),
(14, 'F1B6EEBCC5AC8CD64D6D77B404ACF924'),
(34, 'F362579F6B1C716C662223C267229AAD'),
(110, 'F9D4D39C4B7FBC21881C8E2C0896CD4B'),
(35, 'FAB3B8F58B84DFAD8FBFF14CD1601F0B'),
(47, 'FE9E77FC05A1A659C28B55BF610A5A33');

-- --------------------------------------------------------

--
-- Table structure for table `kategorija`
--

CREATE TABLE `kategorija` (
  `idKategorije` int(11) NOT NULL,
  `nazivKategorije` varchar(50) DEFAULT NULL,
  `opisKategorije` varchar(50) NOT NULL,
  `vrsta` varchar(20) NOT NULL,
  `slikaKategorije` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategorija`
--

INSERT INTO `kategorija` (`idKategorije`, `nazivKategorije`, `opisKategorije`, `vrsta`, `slikaKategorije`) VALUES
(1, 'Slani zalogaji', 'Slane korpice, zelirana bajadera, kuglice od sira', 'slano', 'slike/kategorije/slaniZalogaji.jpg'),
(2, 'Kanapei i sendvici', 'Deciji sendvici, kanapei, mini sendvici', 'slano', 'slike/kategorije/kanapeiISendvici.jpg'),
(3, 'Meso', 'Prasece pecenje, jagnjece pecenje, mesani rostilj', 'slano', 'slike/kategorije/meso.jpg'),
(4, 'Pite i peciva', 'Pita sa kupusom, pita sa krompirom, pita sa sirom.', 'slano', 'slike/kategorije/piteIPeciva.jpg'),
(5, 'Posno', 'Slane korpice, filet oslica, mesana pohovana riba', 'slano', 'slike/kategorije/posno.jpg'),
(6, 'Slatko', 'Sitni kolaci, torte, zito, zito u kuglicama...', 'slatko', 'slike/kategorije/slatko.jpg'),
(7, 'Salate', 'Salate od kupusa i soje, kukuruza, prolecna salata', 'slano', 'slike/kategorije/salate.jpg'),
(8, 'Slani rolati i torte', 'Torta od paprika, slana torta, domino kocke, rolat', 'slano', 'slike/kategorije/slaniRolatiITorte.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `klijent`
--

CREATE TABLE `klijent` (
  `IDKorisnika` int(11) NOT NULL,
  `DatumRegistracije` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `IDKorisnika` int(11) NOT NULL,
  `Ime` varchar(255) NOT NULL,
  `Prezime` varchar(255) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Adresa` varchar(255) NOT NULL,
  `Telefon` varchar(30) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `radnoMesto` varchar(20) DEFAULT 'klijent'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`IDKorisnika`, `Ime`, `Prezime`, `Username`, `Password`, `Adresa`, `Telefon`, `Email`, `radnoMesto`) VALUES
(3, 'Nebojsa', 'Lazovic', 'laza', 'lazar', '17 oktobar 59', '011222333', 'neb.lazovic@gmail.com', 'klijent'),
(4, 'Dragana', 'Lazovic', 'gaga', 'gagili', '17 oktobar 59 ', '011222334', 'gaga.lazovic@gmail.com', 'klijent'),
(7, 'Mile', 'Markovic', 'mile', 'mile', 'Pregrevica 116', '01144456', 'mile@gmail.com', 'klijent'),
(21, 'Jovan', 'Jovanovic', 'admin', 'admin', 'Administratorska kolonija 2', '022154826', 'admin@gmail.com', 'admin'),
(22, 'Dragan', 'Dragovic', 'menadzer', 'menadzer', 'Menadzerski raj bb', '0124587965', 'menadzer@gmail.com', 'menadzer'),
(23, 'Milovan', 'Milovanovic', 'sefPoslovnice', 'sefPoslovnice', 'Dusanova 34', '032548542', 'milovan@gmail.com', 'sefPoslovnice'),
(24, 'Petar', 'Petrovic', 'sefKuhinje', 'sefKuhinje', 'Kuhinjska 35', '011845789', 'petar@gmail.com', 'sefKuhinje'),
(26, 'Vesela', 'Markovic', 'veka', 'veka', 'Pregrevica 116', '0112107343', 'veka@gmail', 'klijent'),
(27, 'Branko', 'Orlandic', 'krofnica', 'krofnica', 'Frontovska 32', '0600388250', 'bane@gmail.com', 'klijent'),
(28, 'Mila', 'Jesic', 'milady', 'milady', 'Les Vallees 22', '01223165323', 'milady@gmail.com', 'klijent'),
(29, 'Nikola', '', 'nikola', 'nikola', 'V.venac 14a/II', '063281450', 'nikola10913@its.edu.rs', 'klijent'),
(30, 'Pera', '', 'pera', 'zdera', 'Vojvode Stepe 232', '123456', 'pera@zdera.com', 'klijent');

-- --------------------------------------------------------

--
-- Table structure for table `korpa`
--

CREATE TABLE `korpa` (
  `IDKorisnika` int(11) DEFAULT NULL,
  `IDKorpe` int(11) NOT NULL,
  `IDProizvoda` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kuhinja`
--

CREATE TABLE `kuhinja` (
  `IDKuhinje` int(11) NOT NULL,
  `tipKuhinje` varchar(20) NOT NULL,
  `brojZaposlenih` int(11) DEFAULT NULL,
  `IDPoslovnice` int(11) NOT NULL,
  `IDKorisnika` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menadzer`
--

CREATE TABLE `menadzer` (
  `IDKorisnika` int(11) NOT NULL,
  `IDMenadzera` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `namirnice`
--

CREATE TABLE `namirnice` (
  `IDNamirnice` int(11) NOT NULL,
  `nazivNamirnice` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `narudzbenicanamirnica`
--

CREATE TABLE `narudzbenicanamirnica` (
  `IDNarudzbenice` int(11) NOT NULL,
  `DatumNarudzbenice` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `porudzbina`
--

CREATE TABLE `porudzbina` (
  `IDPorudzbine` int(11) NOT NULL,
  `IDKorisnika` int(11) DEFAULT NULL,
  `datumPorudzbine` varchar(30) DEFAULT NULL,
  `adresaUplatioca` varchar(255) DEFAULT NULL,
  `emailUplatioca` varchar(100) DEFAULT NULL,
  `IDKorpe` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `porudzbina`
--

INSERT INTO `porudzbina` (`IDPorudzbine`, `IDKorisnika`, `datumPorudzbine`, `adresaUplatioca`, `emailUplatioca`, `IDKorpe`, `status`) VALUES
(0, 3, '27.09.2017', 'Lazovic', NULL, NULL, NULL),
(1, 3, '20-02-2016', '17 oktobar 59', NULL, NULL, NULL),
(2, 4, '29.09.2017', 'gaga', NULL, NULL, NULL),
(3, 28, '2017-09-28', 'V.venac 14a', NULL, NULL, NULL),
(5, 4, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `poslovnica`
--

CREATE TABLE `poslovnica` (
  `IDPoslovnice` int(11) NOT NULL,
  `imePoslovnice` varchar(255) NOT NULL,
  `telefonPoslovnice` varchar(30) NOT NULL,
  `adresaPoslovnice` varchar(255) NOT NULL,
  `IDKorisnika` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `proizvod`
--

CREATE TABLE `proizvod` (
  `IDProizvoda` int(11) NOT NULL,
  `nazivProizvoda` varchar(100) NOT NULL,
  `IDKategorije` int(11) NOT NULL,
  `cena` int(11) NOT NULL,
  `slika` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proizvod`
--

INSERT INTO `proizvod` (`IDProizvoda`, `nazivProizvoda`, `IDKategorije`, `cena`, `slika`) VALUES
(2, 'Pita sa jabukama i orasima', 6, 700, 'slike/proizvodi/slatko/pitaSaJabukamaIOrasima.jpg'),
(3, 'Kuglice od mesa', 3, 1600, 'slike/proizvodi/slano/kugliceOdMesa.jpg'),
(4, 'Kuglice od sira', 1, 950, 'slike/proizvodi/slano/kugliceOdSira.jpg'),
(5, 'Pita sa krompirom', 4, 850, 'slike/proizvodi/slano/pitaSaKrompirom.jpg'),
(6, 'Pita sa kupusom', 4, 850, 'slike/proizvodi/slano/pitaSaKupusom.jpg'),
(7, 'Pita sa sirom', 4, 850, 'slike/proizvodi/slano/pitaSaSirom.jpg'),
(8, 'Rolovani file', 3, 1400, 'slike/proizvodi/slano/rolovaniFile.jpg'),
(9, 'Slana torta', 1, 1000, 'slike/proizvodi/slano/slanaTorta.jpg'),
(10, 'Slane korpice', 1, 950, 'slike/proizvodi/slano/slaneKorpice.jpg'),
(11, 'Pita sa visnjama', 6, 850, 'slike/proizvodi/slatko/pitaSaVisnjama.jpg'),
(12, 'Posni sitni kolaci', 6, 900, 'slike/proizvodi/slatko/posniSitniKolaci.jpg'),
(13, 'Sitni kolaci', 6, 750, 'slike/proizvodi/slatko/sitniKolaci.jpg'),
(14, 'Strudla sa makom', 6, 900, 'slike/proizvodi/slatko/strudlaSaMakom.jpg'),
(15, 'Strudla sa orasima', 6, 1000, 'slike/proizvodi/slatko/strudlaSaOrasima.jpg'),
(16, 'Torte', 6, 1800, 'slike/proizvodi/slatko/torte.jpg'),
(17, 'Zito', 6, 550, 'slike/proizvodi/slatko/zito.jpg'),
(18, 'Zito u kuglicama', 6, 600, 'slike/proizvodi/slatko/zitoUKuglicama.jpg'),
(19, 'Kesten rolat', 6, 1400, ''),
(21, 'PLAZMA TORTAAAA', 4, 2000, '');

-- --------------------------------------------------------

--
-- Table structure for table `reklamacija`
--

CREATE TABLE `reklamacija` (
  `IDReklamacije` int(11) NOT NULL,
  `datumReklamacije` varchar(30) NOT NULL,
  `datumPorudzbine` varchar(30) NOT NULL,
  `opis` varchar(500) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'poslata',
  `IDPorudzbine` int(11) DEFAULT NULL,
  `ime` varchar(25) NOT NULL,
  `prezime` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reklamacija`
--

INSERT INTO `reklamacija` (`IDReklamacije`, `datumReklamacije`, `datumPorudzbine`, `opis`, `status`, `IDPorudzbine`, `ime`, `prezime`, `email`) VALUES
(1, '26-02-2016', '20-02-2016', 'Nije isporucena na vreme', 'poslata', 1, 'Nebojsa', 'Lazovic', 'neb.lazovic@gmail.com'),
(5, '11.09.2000.', '12.09.2000.', 'Ne svidja mi se', 'poslata', NULL, 'Nebojsa', 'Lazovic', 'neb.lazovic@gmail.com'),
(6, '15.03.1852.', '12.03.1852.', 'Turci sve pojeli', 'obradjena', NULL, 'Milan', 'Obrenovic', 'kraljMilan@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `sefkuhinje`
--

CREATE TABLE `sefkuhinje` (
  `IDKorisnika` int(11) NOT NULL,
  `IDSefaKuhinje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sefposlovnice`
--

CREATE TABLE `sefposlovnice` (
  `IDKorisnika` int(11) NOT NULL,
  `IDSefaPoslovnice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stanjezaliha`
--

CREATE TABLE `stanjezaliha` (
  `IDStanjaZaliha` int(11) NOT NULL,
  `Datum` datetime NOT NULL,
  `IDPoslovnice` int(11) NOT NULL DEFAULT '0',
  `IDNamirnice` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stanjezalihaproizvoda`
--

CREATE TABLE `stanjezalihaproizvoda` (
  `redniBroj` int(11) NOT NULL,
  `Datum` datetime NOT NULL,
  `Kolicina` int(11) NOT NULL,
  `IDPoslovnice` int(11) NOT NULL DEFAULT '0',
  `IDProizvoda` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stavkanarudzbenice`
--

CREATE TABLE `stavkanarudzbenice` (
  `redniBroj` int(11) NOT NULL,
  `Kolicina` int(11) NOT NULL,
  `IDNarudzbenice` int(11) NOT NULL,
  `IDNamirnice` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stavkaporudzbine`
--

CREATE TABLE `stavkaporudzbine` (
  `idStavke` int(11) NOT NULL,
  `Kolicina` int(11) NOT NULL,
  `IDPorudzbine` int(11) NOT NULL DEFAULT '0',
  `IDProizvoda` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zaposleni`
--

CREATE TABLE `zaposleni` (
  `IDKorisnika` int(11) NOT NULL,
  `IDZaposlenog` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Indexes for table `brojposeta`
--
ALTER TABLE `brojposeta`
  ADD PRIMARY KEY (`broj`),
  ADD UNIQUE KEY `IdPosete` (`IdPosete`);

--
-- Indexes for table `kategorija`
--
ALTER TABLE `kategorija`
  ADD PRIMARY KEY (`idKategorije`);

--
-- Indexes for table `klijent`
--
ALTER TABLE `klijent`
  ADD PRIMARY KEY (`IDKorisnika`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`IDKorisnika`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `korpa`
--
ALTER TABLE `korpa`
  ADD PRIMARY KEY (`IDKorpe`),
  ADD KEY `IDKorisnika` (`IDKorisnika`);

--
-- Indexes for table `kuhinja`
--
ALTER TABLE `kuhinja`
  ADD PRIMARY KEY (`IDKuhinje`),
  ADD KEY `IDKorisnika` (`IDKorisnika`),
  ADD KEY `IDPoslovnice` (`IDPoslovnice`);

--
-- Indexes for table `menadzer`
--
ALTER TABLE `menadzer`
  ADD PRIMARY KEY (`IDKorisnika`),
  ADD UNIQUE KEY `IDMenadzera` (`IDMenadzera`);

--
-- Indexes for table `namirnice`
--
ALTER TABLE `namirnice`
  ADD PRIMARY KEY (`IDNamirnice`);

--
-- Indexes for table `narudzbenicanamirnica`
--
ALTER TABLE `narudzbenicanamirnica`
  ADD PRIMARY KEY (`IDNarudzbenice`);

--
-- Indexes for table `porudzbina`
--
ALTER TABLE `porudzbina`
  ADD PRIMARY KEY (`IDPorudzbine`),
  ADD UNIQUE KEY `IDPorudzbine` (`IDPorudzbine`),
  ADD KEY `IDKorisnika` (`IDKorisnika`),
  ADD KEY `IDKorpe` (`IDKorpe`);

--
-- Indexes for table `poslovnica`
--
ALTER TABLE `poslovnica`
  ADD PRIMARY KEY (`IDPoslovnice`),
  ADD KEY `IDKorisnika` (`IDKorisnika`);

--
-- Indexes for table `proizvod`
--
ALTER TABLE `proizvod`
  ADD PRIMARY KEY (`IDProizvoda`),
  ADD KEY `IDKategorije` (`IDKategorije`);

--
-- Indexes for table `reklamacija`
--
ALTER TABLE `reklamacija`
  ADD PRIMARY KEY (`IDReklamacije`),
  ADD KEY `IDPorudzbine` (`IDPorudzbine`);

--
-- Indexes for table `sefkuhinje`
--
ALTER TABLE `sefkuhinje`
  ADD PRIMARY KEY (`IDKorisnika`);

--
-- Indexes for table `sefposlovnice`
--
ALTER TABLE `sefposlovnice`
  ADD PRIMARY KEY (`IDKorisnika`);

--
-- Indexes for table `stanjezaliha`
--
ALTER TABLE `stanjezaliha`
  ADD PRIMARY KEY (`IDStanjaZaliha`,`IDPoslovnice`,`IDNamirnice`),
  ADD KEY `IDPoslovnice` (`IDPoslovnice`),
  ADD KEY `IDNamirnice` (`IDNamirnice`);

--
-- Indexes for table `stanjezalihaproizvoda`
--
ALTER TABLE `stanjezalihaproizvoda`
  ADD PRIMARY KEY (`IDProizvoda`,`IDPoslovnice`,`redniBroj`),
  ADD KEY `IDPoslovnice` (`IDPoslovnice`);

--
-- Indexes for table `stavkanarudzbenice`
--
ALTER TABLE `stavkanarudzbenice`
  ADD PRIMARY KEY (`IDNarudzbenice`,`redniBroj`,`IDNamirnice`),
  ADD KEY `IDNamirnice` (`IDNamirnice`);

--
-- Indexes for table `stavkaporudzbine`
--
ALTER TABLE `stavkaporudzbine`
  ADD PRIMARY KEY (`IDProizvoda`,`IDPorudzbine`,`idStavke`),
  ADD KEY `IDPorudzbine` (`IDPorudzbine`);

--
-- Indexes for table `zaposleni`
--
ALTER TABLE `zaposleni`
  ADD PRIMARY KEY (`IDKorisnika`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `brojposeta`
--
ALTER TABLE `brojposeta`
  MODIFY `broj` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `IDKorisnika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `kuhinja`
--
ALTER TABLE `kuhinja`
  MODIFY `IDKuhinje` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `namirnice`
--
ALTER TABLE `namirnice`
  MODIFY `IDNamirnice` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `poslovnica`
--
ALTER TABLE `poslovnica`
  MODIFY `IDPoslovnice` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `proizvod`
--
ALTER TABLE `proizvod`
  MODIFY `IDProizvoda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `reklamacija`
--
ALTER TABLE `reklamacija`
  MODIFY `IDReklamacije` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `stanjezaliha`
--
ALTER TABLE `stanjezaliha`
  MODIFY `IDStanjaZaliha` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `klijent`
--
ALTER TABLE `klijent`
  ADD CONSTRAINT `klijent_ibfk_1` FOREIGN KEY (`IDKorisnika`) REFERENCES `korisnik` (`IDKorisnika`);

--
-- Constraints for table `korpa`
--
ALTER TABLE `korpa`
  ADD CONSTRAINT `korpa_ibfk_1` FOREIGN KEY (`IDKorisnika`) REFERENCES `klijent` (`IDKorisnika`);

--
-- Constraints for table `kuhinja`
--
ALTER TABLE `kuhinja`
  ADD CONSTRAINT `kuhinja_ibfk_1` FOREIGN KEY (`IDKorisnika`) REFERENCES `sefkuhinje` (`IDKorisnika`),
  ADD CONSTRAINT `kuhinja_ibfk_2` FOREIGN KEY (`IDPoslovnice`) REFERENCES `poslovnica` (`IDPoslovnice`);

--
-- Constraints for table `menadzer`
--
ALTER TABLE `menadzer`
  ADD CONSTRAINT `menadzer_ibfk_1` FOREIGN KEY (`IDKorisnika`) REFERENCES `zaposleni` (`IDKorisnika`);

--
-- Constraints for table `porudzbina`
--
ALTER TABLE `porudzbina`
  ADD CONSTRAINT `porudzbina_ibfk_1` FOREIGN KEY (`IDKorpe`) REFERENCES `korpa` (`IDKorpe`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `poslovnica`
--
ALTER TABLE `poslovnica`
  ADD CONSTRAINT `poslovnica_ibfk_1` FOREIGN KEY (`IDKorisnika`) REFERENCES `sefposlovnice` (`IDKorisnika`);

--
-- Constraints for table `proizvod`
--
ALTER TABLE `proizvod`
  ADD CONSTRAINT `proizvod_ibfk_2` FOREIGN KEY (`IDKategorije`) REFERENCES `kategorija` (`idKategorije`);

--
-- Constraints for table `reklamacija`
--
ALTER TABLE `reklamacija`
  ADD CONSTRAINT `reklamacija_ibfk_1` FOREIGN KEY (`IDPorudzbine`) REFERENCES `porudzbina` (`IDPorudzbine`);

--
-- Constraints for table `sefkuhinje`
--
ALTER TABLE `sefkuhinje`
  ADD CONSTRAINT `sefkuhinje_ibfk_1` FOREIGN KEY (`IDKorisnika`) REFERENCES `zaposleni` (`IDKorisnika`);

--
-- Constraints for table `sefposlovnice`
--
ALTER TABLE `sefposlovnice`
  ADD CONSTRAINT `sefposlovnice_ibfk_1` FOREIGN KEY (`IDKorisnika`) REFERENCES `zaposleni` (`IDKorisnika`);

--
-- Constraints for table `stanjezaliha`
--
ALTER TABLE `stanjezaliha`
  ADD CONSTRAINT `stanjezaliha_ibfk_1` FOREIGN KEY (`IDPoslovnice`) REFERENCES `poslovnica` (`IDPoslovnice`),
  ADD CONSTRAINT `stanjezaliha_ibfk_2` FOREIGN KEY (`IDNamirnice`) REFERENCES `namirnice` (`IDNamirnice`);

--
-- Constraints for table `stanjezalihaproizvoda`
--
ALTER TABLE `stanjezalihaproizvoda`
  ADD CONSTRAINT `stanjezalihaproizvoda_ibfk_2` FOREIGN KEY (`IDPoslovnice`) REFERENCES `poslovnica` (`IDPoslovnice`);

--
-- Constraints for table `stavkanarudzbenice`
--
ALTER TABLE `stavkanarudzbenice`
  ADD CONSTRAINT `stavkanarudzbenice_ibfk_1` FOREIGN KEY (`IDNarudzbenice`) REFERENCES `narudzbenicanamirnica` (`IDNarudzbenice`),
  ADD CONSTRAINT `stavkanarudzbenice_ibfk_2` FOREIGN KEY (`IDNamirnice`) REFERENCES `namirnice` (`IDNamirnice`);

--
-- Constraints for table `stavkaporudzbine`
--
ALTER TABLE `stavkaporudzbine`
  ADD CONSTRAINT `porudzbinaFK` FOREIGN KEY (`IDPorudzbine`) REFERENCES `porudzbina` (`IDPorudzbine`),
  ADD CONSTRAINT `proizvodFK` FOREIGN KEY (`IDProizvoda`) REFERENCES `proizvod` (`IDProizvoda`);

--
-- Constraints for table `zaposleni`
--
ALTER TABLE `zaposleni`
  ADD CONSTRAINT `zaposleni_ibfk_1` FOREIGN KEY (`IDKorisnika`) REFERENCES `korisnik` (`IDKorisnika`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
