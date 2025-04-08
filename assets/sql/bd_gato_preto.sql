-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08/04/2025 às 21:12
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_gato_preto`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_assinantes`
--

CREATE TABLE `tb_assinantes` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `data_assinatura` datetime NOT NULL DEFAULT current_timestamp(),
  `plano` enum('free','basic','premium','gold') NOT NULL DEFAULT 'free',
  `status` enum('ativo','inativo','cancelado','suspenso') NOT NULL DEFAULT 'ativo',
  `data_expiracao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_assinates`
--

CREATE TABLE `tb_assinates` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `data_assinatura` datetime NOT NULL DEFAULT current_timestamp(),
  `plano` enum('free','basic','premium','gold') NOT NULL DEFAULT 'free',
  `status` enum('ativo','inativo','cancelado','suspenso') NOT NULL DEFAULT 'ativo',
  `data_expiracao` datetime DEFAULT NULL,
  `metodo_pagamento` enum('cartao','pix','boleto','paypal') DEFAULT NULL,
  `ultimo_pagamento` datetime DEFAULT NULL,
  `proximo_pagamento` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_autores`
--

CREATE TABLE `tb_autores` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_autores`
--

INSERT INTO `tb_autores` (`id`, `nome`) VALUES
(1, 'Eiichiro Oda'),
(2, 'Akira Toriyama'),
(3, 'Masashi Kishimoto'),
(4, 'Hajime Isayama'),
(5, 'Tsugumi Ohba'),
(6, 'Tite Kubo'),
(7, 'Hiromu Arakawa'),
(8, 'Koyoharu Gotouge'),
(9, 'Gege Akutami'),
(10, 'Yoshihiro Togashi'),
(11, 'Kohei Horikoshi'),
(12, 'ONE, Yusuke Murata'),
(13, 'Ken Wakui'),
(14, 'Hirohiko Araki'),
(15, 'Hiro Mashima'),
(16, 'Tatsuki Fujimoto'),
(17, 'Takehiko Inoue'),
(18, 'Haruichi Furudate'),
(19, 'Yoshiyuki Sadamoto'),
(20, 'Nobuhiro Watsuki'),
(21, 'Kentaro Miura'),
(22, 'Sui Ishida'),
(23, 'Hitoshi Iwaaki'),
(24, 'Makoto Yukimura'),
(25, 'Kaiu Shirai'),
(26, 'Yūki Tabata'),
(27, 'Katsuhiro Otomo'),
(28, 'Rumiko Takahashi'),
(29, 'Naoko Takeuchi'),
(30, 'CLAMP'),
(31, 'Bisco Hatori'),
(32, 'Natsuki Takaya'),
(33, 'Ai Yazawa'),
(34, 'Ken Akamatsu'),
(35, 'Akihisa Ikeda'),
(36, 'Sakae Esuno'),
(37, 'Yana Toboso'),
(38, 'Katsura Hoshino'),
(39, 'Atsushi Ōkubo'),
(40, 'Mitsutoshi Shimabukuro'),
(41, 'Hiroya Oku'),
(42, 'Tooru Fujisawa'),
(43, 'Naoki Urasawa'),
(44, 'Akihito Tsukushi'),
(45, 'Tappei Nagatsuki'),
(46, 'Reki Kawahara'),
(47, 'Riichiro Inagaki'),
(48, 'Adachitoka'),
(49, 'Kouta Hirano'),
(50, 'Jinsei Kataoka'),
(51, 'Hiroyuki Takei'),
(52, 'Yasuhiro Nightow'),
(53, 'Lynn Okamoto'),
(54, 'Jun Mochizuki'),
(55, 'Tsubasa Yamaguchi'),
(56, 'Yuki Amemiya'),
(57, 'Yoshiki Nakamura'),
(58, 'Io Sakisaka'),
(59, 'Ichigo Takano'),
(60, 'HERO'),
(61, 'Robico'),
(62, 'Satsuki Yoshino'),
(63, 'Yumi Unita'),
(64, 'Keiichi Arawi'),
(65, 'Kiyohiko Azuma'),
(66, 'Konami Kanata'),
(67, 'Yuki Midorikawa'),
(68, 'Yuki Urushibara'),
(69, 'Keiichi Sigsawa'),
(70, 'Yako Gureishi'),
(71, 'Haruko Ichikawa'),
(72, 'Tsutomu Nihei'),
(73, 'Q Hayashida'),
(74, 'Gamon Sakurai'),
(75, 'Nami Sano'),
(76, 'Hikaru Nakamura'),
(77, 'Kōji Kumeta'),
(78, 'Kiminori Wakasugi'),
(79, 'Natsumi Eguchi'),
(80, 'Kousuke Oono'),
(81, 'Masaki Segawa'),
(82, 'Yellow Tanabe'),
(83, 'Ryu Fujisaki'),
(84, 'Oh! great'),
(85, 'Harold Sakuishi'),
(86, 'Ryuta Amazume'),
(87, 'Takahiro'),
(88, 'Kei Sanbe'),
(89, 'Tatsuhiko Takimoto'),
(90, 'Hiroki Endo'),
(91, 'Inio Asano');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_clientes`
--

CREATE TABLE `tb_clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `dataNascimento` date DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `cpf` varchar(11) NOT NULL,
  `senha` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_generos`
--

CREATE TABLE `tb_generos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `classificacao_etaria` varchar(10) NOT NULL,
  `cor` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_generos`
--

INSERT INTO `tb_generos` (`id`, `nome`, `classificacao_etaria`, `cor`) VALUES
(1, 'Shonen', '+14', '#FFFF00'),
(2, 'Shounen Ai', '+16', '#FF0000'),
(3, 'Shojo', '+14', '#FFFF00'),
(4, 'Shoujo Ai', '+16', '#FF0000'),
(5, 'Yaoi', '+18', '#000000'),
(6, 'Isekai', '+16', '#FF0000'),
(7, 'Kodomomuke', 'Livre', '#00FF00'),
(8, 'Slice of Life', '+14', '#FFFF00'),
(9, 'Seinen', '+16', '#FF0000'),
(10, 'Mecha', '+14', '#FFFF00'),
(11, 'Josei', '+16', '#FF0000'),
(12, 'Yuri', '+18', '#000000'),
(13, 'Iyashikei', 'Livre', '#00FF00'),
(14, 'Idol', '+14', '#FFFF00'),
(15, 'Ecchi', '+18', '#000000'),
(16, 'Harem', '+16', '#FF0000'),
(17, 'Reverse Harem', '+16', '#FF0000'),
(18, 'Youkai', '+16', '#FF0000'),
(19, 'Doujinshi', '+18', '#000000'),
(20, 'One Shot', '+14', '#FFFF00'),
(21, 'Hentai', '+18', '#000000');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_mangas`
--

CREATE TABLE `tb_mangas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `genero` varchar(100) NOT NULL,
  `ano_de_lancamento` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `capitulos` int(11) NOT NULL,
  `classificacao_indicativa` varchar(50) NOT NULL,
  `sinopse` text NOT NULL,
  `autor` varchar(100) NOT NULL,
  `capas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_mangas`
--

INSERT INTO `tb_mangas` (`id`, `titulo`, `genero`, `ano_de_lancamento`, `status`, `capitulos`, `classificacao_indicativa`, `sinopse`, `autor`, `capas`) VALUES
(1, 'One Piece', 'shonen', 1997, 'em andamento', 1100, '12+', 'Um jovem pirata busca se tornar o Rei dos Piratas.', 'Eiichiro Oda', '1 One_piece.jpg'),
(2, 'Dragon Ball', 'shonen', 1984, 'concluído', 519, '12+', 'As aventuras de Goku e suas batalhas épicas.', 'Akira Toriyama', '2dragon_ball.jpg'),
(3, 'Naruto', 'shonen', 1999, 'concluído', 700, '12+', 'Um jovem ninja sonha em se tornar Hokage.', 'Masashi Kishimoto', '3naruto_classico.jpg'),
(4, 'Attack on Titan', 'shonen', 2009, 'concluído', 139, '16+', 'Humanidade luta contra titãs que ameaçam sua existência.', 'Hajime Isayama', '4 Shingeki no Kyojin.jpg'),
(5, 'Death Note', 'shonen', 2003, 'concluído', 108, '16+', 'Um estudante encontra um caderno que pode matar pessoas.', 'Tsugumi Ohba', '5 death note.jpg'),
(6, 'Bleach', 'shonen', 2001, 'concluído', 686, '14+', 'Um adolescente ganha poderes de Shinigami para proteger sua cidade.', 'Tite Kubo', '6 bleach.jpg'),
(7, 'Fullmetal Alchemist', 'shonen', 2001, 'concluído', 116, '14+', 'Dois irmãos alquimistas buscam a Pedra Filosofal.', 'Hiromu Arakawa', '7 fullmetal alchemist.jpg'),
(8, 'Demon Slayer', 'shonen', 2016, 'concluído', 205, '14+', 'Um jovem caçador luta para salvar sua irmã demônio.', 'Koyoharu Gotouge', '8 demon slayer.jpg'),
(9, 'Jujutsu Kaisen', 'shonen', 2018, 'em andamento', 250, '16+', 'Um estudante luta contra maldições com técnicas de feitiçaria.', 'Gege Akutami', '9 jujutsu kaisen.jpg'),
(10, 'Hunter x Hunter', 'shonen', 1998, 'em andamento', 400, '14+', 'Um garoto busca seu pai e se torna um caçador.', 'Yoshihiro Togashi', '10 hunterxhunter.jpg'),
(11, 'My Hero Academia', 'shonen', 2014, 'em andamento', 410, '12+', 'Estudantes treinam para se tornarem super-heróis.', 'Kohei Horikoshi', '11 myheroacademia.jpg'),
(12, 'One Punch Man', 'seinen', 2009, 'em andamento', 200, '16+', 'Um herói que derrota qualquer inimigo com um soco.', 'ONE, Yusuke Murata', '12 one punch man.jpg'),
(13, 'Tokyo Revengers', 'shonen', 2017, 'concluído', 278, '16+', 'Um jovem viaja no tempo para salvar sua ex-namorada.', 'Ken Wakui', '13 tokyorevenger.jpg'),
(14, 'JoJo’s Bizarre Adventure', 'shonen', 1987, 'em andamento', 950, '16+', 'Gerações de heróis combatem forças sobrenaturais.', 'Hirohiko Araki', '14 JoJo’s Bizarre Adventure.jpg'),
(15, 'Fairy Tail', 'shonen', 2006, 'concluído', 545, '14+', 'Magos de uma guilda embarcam em aventuras épicas.', 'Hiro Mashima', '15 Fairy Tail.jpg'),
(16, 'Chainsaw Man', 'shonen', 2018, 'em andamento', 150, '16+', 'Um jovem caçador de demônios com poderes de motosserra.', 'Tatsuki Fujimoto', '16 Chainsaw Man.jpg'),
(17, 'Slam Dunk', 'shonen', 1990, 'concluído', 276, '12+', 'Um estudante descobre sua paixão pelo basquete.', 'Takehiko Inoue', '17 slam dunk.jpg'),
(18, 'Haikyuu!!', 'shonen', 2012, 'concluído', 402, '12+', 'Jogadores de vôlei superam desafios para chegar ao topo.', 'Haruichi Furudate', '18 haikyuu.jpg'),
(19, 'Neon Genesis Evangelion', 'seinen', 1994, 'concluído', 97, '16+', 'Adolescentes pilotam mechas contra criaturas apocalípticas.', 'Yoshiyuki Sadamoto', '19 Neon Genesis Evangelion.jpg'),
(20, 'Rurouni Kenshin', 'shonen', 1994, 'concluído', 255, '14+', 'Um ex-assassino tenta viver uma vida pacífica no Japão feudal.', 'Nobuhiro Watsuki', '20 Rurouni Kenshin.jpg'),
(21, 'Yu Yu Hakusho', 'shonen', 1990, 'concluído', 175, '14+', 'Um jovem que morre salvando uma criança ganha uma segunda chance como detetive espiritual.', 'Yoshihiro Togashi', '21 Yu Yu Hakusho.jpg'),
(22, 'Berserk', 'seinen', 1989, 'em andamento', 364, '18+', 'A sombria jornada de Guts, um mercenário amaldiçoado, em busca de vingança contra seu ex-amigo.', 'Kentaro Miura', '22 Berserk.jpg'),
(23, 'Vagabond', 'seinen', 1998, 'hiato', 327, '18+', 'A história do lendário samurai Miyamoto Musashi.', 'Takehiko Inoue', '23 Vagabond.jpg'),
(24, 'Tokyo Ghoul', 'seinen', 2011, 'concluído', 143, '16+', 'Um jovem se torna meio-ghoul após um acidente e luta para encontrar seu lugar na sociedade.', 'Sui Ishida', '24 Tokyo Ghoul.jpg'),
(25, 'Parasyte (Kiseijuu)', 'seinen', 1988, 'concluído', 64, '16+', 'Parasitas alienígenas invadem corpos humanos, e um jovem luta para sobreviver após um deles falhar em dominá-lo completamente.', 'Hitoshi Iwaaki', '25 Kiseijuu.jpg'),
(26, 'Vinland Saga', 'seinen', 2005, 'em andamento', 200, '16+', 'A saga de um jovem viking em busca de vingança.', 'Makoto Yukimura', '26 vinland saga.jpg'),
(27, 'The Promised Neverland (Yakusoku no Neverland)', 'shonen', 2016, 'concluído', 181, '14+', 'Crianças descobrem a verdade sombria sobre o orfanato onde vivem e tentam escapar.', 'Kaiu Shirai', '27 Yakusoku no Neverland.jpg'),
(28, 'Black Clover', 'shonen', 2015, 'em andamento', 370, '12+', 'Um jovem sem magia busca se tornar o Rei Mago.', 'Yūki Tabata', '28 Black Clover.jpg'),
(29, 'Akira', 'seinen', 1982, 'concluído', 120, '16+', 'Um jovem motociclista se envolve em uma conspiração governamental sobre poderes psíquicos.', 'Katsuhiro Otomo', '29 Akira.jpg'),
(30, 'Inuyasha', 'shonen', 1996, 'concluído', 558, '12+', 'Uma garota viaja no tempo e se junta a um meio-youkai para encontrar a Joia de Quatro Almas.', 'Rumiko Takahashi', '30 Inuyasha.jpg'),
(31, 'Sailor Moon', 'shoujo', 1991, 'concluído', 60, '10+', 'Uma jovem descobre ser uma guerreira mágica destinada a salvar o mundo.', 'Naoko Takeuchi', '31 Sailor Moon.jpg'),
(32, 'Cardcaptor Sakura', 'shoujo', 1996, 'concluído', 70, '10+', 'Uma garota descobre cartas mágicas e precisa capturá-las para evitar o caos.', 'CLAMP', '32 Cardcaptor Sakura.jpg'),
(33, 'Ouran High School Host Club', 'shoujo', 2002, 'concluído', 83, '12+', 'Uma garota se disfarça de garoto e se junta a um clube de anfitriões de elite.', 'Bisco Hatori', '33 Ouran High School Host Club.jpg'),
(34, 'Fruits Basket', 'shoujo', 1998, 'concluído', 136, '12+', 'Uma garota órfã descobre que uma família sofre uma maldição ligada ao zodíaco chinês.', 'Natsuki Takaya', '34 Fruits Basket.jpg'),
(35, 'Nana', 'shoujo', 2000, 'hiato', 84, '16+', 'Duas garotas chamadas Nana têm suas vidas entrelaçadas pelo destino e pela música.', 'Ai Yazawa', '35 Nana.jpg'),
(36, 'Love Hina', 'shonen', 1998, 'concluído', 123, '14+', 'Um jovem tenta entrar na Universidade de Tóquio enquanto gerencia uma pensão feminina.', 'Ken Akamatsu', '36 Love Hina.jpg'),
(37, 'Rosario + Vampire', 'shonen', 2004, 'concluído', 66, '14+', 'Um garoto humano entra por engano em uma escola para monstros e conhece uma vampira.', 'Akihisa Ikeda', '37 Rosario + Vampire.jpg'),
(38, 'Mirai Nikki (Future Diary)', 'shonen', 2006, 'concluído', 59, '16+', 'Um jogo mortal entre pessoas que possuem diários que preveem o futuro.', 'Sakae Esuno', '38 Mirai Nikki.jpg'),
(39, 'Black Butler (Kuroshitsuji)', 'shonen', 2006, 'em andamento', 200, '16+', 'Um jovem nobre faz um pacto com um mordomo demoníaco para vingar seus pais.', 'Yana Toboso', '39 Kuroshitsuji.jpg'),
(40, 'D.Gray-man', 'shonen', 2004, 'hiato', 240, '14+', 'Exorcistas lutam contra demônios criados por um misterioso Conde.', 'Katsura Hoshino', '40 D.Gray-man.jpg'),
(41, 'Soul Eater', 'shonen', 2004, 'concluído', 113, '14+', 'Estudantes de uma escola especial treinam para se tornarem caçadores de almas malignas.', 'Atsushi Ōkubo', '41 Soul Eater.jpg'),
(42, 'Toriko', 'shonen', 2008, 'concluído', 396, '14+', 'Um caçador de ingredientes raros busca criar o prato perfeito.', 'Mitsutoshi Shimabukuro', '42 Toriko.jpg'),
(43, 'Gantz', 'seinen', 2000, 'concluído', 383, '18+', 'Pessoas mortas são revividas para lutar contra alienígenas.', 'Hiroya Oku', '43 Gantz.jpg'),
(44, 'Great Teacher Onizuka (GTO)', 'shonen', 1997, 'concluído', 201, '16+', 'Um ex-delinquente se torna professor para mudar a vida de seus alunos.', 'Tooru Fujisawa', '44 Great Teacher Onizuka.jpg'),
(45, 'Monster', 'seinen', 1994, 'concluído', 162, '16+', 'Um neurocirurgião persegue um assassino em série que ele salvou.', 'Naoki Urasawa', '45 Monster.jpg'),
(46, '20th Century Boys', 'seinen', 1999, 'concluído', 249, '16+', 'Amigos de infância tentam impedir uma seita que ameaça o mundo.', 'Naoki Urasawa', '46 20th century boys.jpg'),
(47, 'Made in Abyss', 'seinen', 2012, 'em andamento', 66, '16+', 'Uma garota e um robô exploram um abismo misterioso e perigoso.', 'Akihito Tsukushi', '47 Made in Abyss.jpg'),
(48, 'Re:Zero', 'shonen', 2014, 'em andamento', 75, '16+', 'Um jovem é transportado para um mundo de fantasia e revive após morrer.', 'Tappei Nagatsuki', '48 Re zero.jpg'),
(49, 'Sword Art Online', 'shonen', 2009, 'em andamento', 100, '14+', 'Jogadores ficam presos em um jogo de realidade virtual mortal.', 'Reki Kawahara', '49 Sword Art Online.jpg'),
(50, 'Dr. Stone', 'shonen', 2017, 'concluído', 232, '12+', 'Um jovem gênio tenta reconstruir a civilização após um evento petrificador.', 'Riichiro Inagaki', '50 Dr stone.jpg'),
(51, 'Noragami', 'shonen', 2010, 'em andamento', 100, '14+', 'Um deus menor busca ganhar reconhecimento ajudando humanos.', 'Adachitoka', '51 Noragami.jpg'),
(52, 'Hellsing', 'seinen', 1997, 'concluído', 92, '18+', 'Uma organização secreta luta contra vampiros e criaturas sobrenaturais.', 'Kouta Hirano', '52 Hellsing.jpg'),
(53, 'Deadman Wonderland', 'shonen', 2007, 'concluído', 58, '16+', 'Um garoto é preso injustamente e forçado a lutar em jogos mortais.', 'Jinsei Kataoka', '53 deadman wonderland.jpg'),
(54, 'Shaman King', 'shonen', 1998, 'concluído', 300, '12+', 'Um jovem xamã compete para se tornar o Rei dos Xamãs.', 'Hiroyuki Takei', '54 shaman king.jpg'),
(55, 'Trigun', 'seinen', 1995, 'concluído', 102, '16+', 'Um pistoleiro pacifista é caçado por um passado misterioso.', 'Yasuhiro Nightow', '55 trigun.jpg'),
(56, 'Elfen Lied', 'seinen', 2002, 'concluído', 113, '18+', 'Uma mutante com poderes letais escapa de um laboratório e busca redenção.', 'Lynn Okamoto', '56 elfen lied.jpg'),
(57, 'Pandora Hearts', 'shonen', 2006, 'concluído', 107, '14+', 'Um jovem é lançado em uma dimensão sombria e busca respostas sobre seu destino.', 'Jun Mochizuki', '57 pandora hearts.jpg'),
(58, 'Blue Period', 'seinen', 2017, 'em andamento', 60, '16+', 'Um estudante descobre sua paixão pela arte e tenta entrar na melhor universidade de artes.', 'Tsubasa Yamaguchi', '58 blue period.jpg'),
(59, '07-Ghost', 'shoujo', 2005, 'concluído', 100, '12+', 'Um cadete militar descobre segredos sobre seu passado e poderes divinos.', 'Yuki Amemiya', '59 07-ghost.jpg'),
(60, 'Skip Beat!', 'shoujo', 2002, 'em andamento', 300, '12+', 'Uma garota busca vingança contra seu ex ao se tornar uma atriz de sucesso.', 'Yoshiki Nakamura', '60 skip beat.jpg'),
(61, 'Ao Haru Ride', 'shoujo', 2011, 'concluído', 53, '12+', 'Uma estudante reencontra seu amor de infância e tenta reconquistar seus sentimentos.', 'Io Sakisaka', '61 ao haru ride.jpg'),
(62, 'Orange', 'shoujo', 2012, 'concluído', 22, '12+', 'Uma garota recebe cartas do futuro para evitar a morte de um amigo.', 'Ichigo Takano', '62 orange.jpg'),
(63, 'Horimiya', 'shonen', 2011, 'concluído', 122, '12+', 'Dois estudantes descobrem segredos um do outro e se aproximam.', 'HERO', '63 horimiya.jpg'),
(64, 'Tonari no Kaibutsu-kun (My Little Monster)', 'shoujo', 2008, 'concluído', 52, '12+', 'Uma estudante focada nos estudos se apaixona por um colega problemático.', 'Robico', '64 Tonari no Kaibutsu-kun.jpg'),
(65, 'Barakamon', 'seinen', 2009, 'concluído', 133, '12+', 'Um calígrafo se muda para uma vila remota e aprende lições de vida.', 'Satsuki Yoshino', '65 barakamon.jpg'),
(66, 'Usagi Drop', 'josei', 2005, 'concluído', 56, '12+', 'Um homem adota a filha ilegítima de seu avô e aprende a ser pai.', 'Yumi Unita', '66 usagi drop.jpg'),
(67, 'Nichijou', 'shonen', 2006, 'concluído', 192, '12+', 'Momentos absurdos e engraçados do cotidiano de três amigas.', 'Keiichi Arawi', '67 nichijou.jpg'),
(68, 'Azumanga Daioh', 'shonen', 1999, 'concluído', 69, '12+', 'As aventuras escolares de um grupo de garotas peculiares.', 'Kiyohiko Azuma', '68 azumanga daioh.jpg'),
(69, 'Yotsuba&!', 'shonen', 2003, 'em andamento', 110, '12+', 'O dia a dia adorável de uma menina curiosa e suas descobertas.', 'Kiyohiko Azuma', '69 yotsuba.jpg'),
(70, 'Chi’s Sweet Home', 'kodomo', 2004, 'concluído', 104, 'L', 'As aventuras fofas de uma gatinha e sua família humana.', 'Konami Kanata', '70 chis sweet home.jpg'),
(71, 'Natsume Yuujinchou (Livro dos Amigos de Natsume)', 'shoujo', 2005, 'em andamento', 120, '12+', 'Um garoto vê espíritos e herda um livro que os controla.', 'Yuki Midorikawa', '71 Natsume Yuujinchou.jpg'),
(72, 'Mushishi', 'seinen', 1999, 'concluído', 49, '14+', 'Um especialista viaja pelo Japão ajudando pessoas afetadas por criaturas sobrenaturais.', 'Yuki Urushibara', '72 mushishi.jpg'),
(73, 'Kino no Tabi (A Jornada de Kino)', 'seinen', 2000, 'concluído', 44, '14+', 'Uma viajante explora países únicos com sua moto falante.', 'Keiichi Sigsawa', '73 Kino no Tabi.jpg'),
(74, 'Somali to Mori no Kamisama', 'seinen', 2015, 'concluído', 50, '12+', 'Uma garota humana é protegida por um golem em um mundo de criaturas místicas.', 'Yako Gureishi', '74 Somali to Mori no Kamisama.jpg'),
(75, 'Houseki no Kuni (Terra dos Brilhantes)', 'seinen', 2012, 'em andamento', 100, '14+', 'Seres de gemas antropomórficos lutam contra inimigos lunares.', 'Haruko Ichikawa', '75 Houseki no Kuni.jpg'),
(76, 'Blame!', 'seinen', 1997, 'concluído', 66, '16+', 'Um solitário explora uma megacidade em busca de genes humanos.', 'Tsutomu Nihei', '76 blame.jpg'),
(77, 'Biomega', 'seinen', 2004, 'concluído', 43, '16+', 'Um agente enfrenta zumbis mutantes em um mundo pós-apocalíptico.', 'Tsutomu Nihei', '77 Biomega.jpg'),
(78, 'Knights of Sidonia', 'seinen', 2009, 'concluído', 78, '16+', 'Humanidade sobrevive no espaço lutando contra alienígenas gigantes.', 'Tsutomu Nihei', '78 knights of sidonia.jpg'),
(79, 'Dorohedoro', 'seinen', 2000, 'concluído', 167, '18+', 'Um homem com cabeça de lagarto busca sua verdadeira identidade em uma cidade brutal.', 'Q Hayashida', '79 dorohedoro.jpg'),
(80, 'Ajin (Demi-Humano)', 'seinen', 2012, 'concluído', 86, '16+', 'Humanos imortais são perseguidos pelo governo para experimentos.', 'Gamon Sakurai', '80 Ajin.jpg'),
(81, 'Sakamoto desu ga? (Você não ouviu? Eu sou Sakamoto)', 'seinen', 2011, 'concluído', 24, '12+', 'A vida perfeita e exageradamente estilosa de um estudante genial.', 'Nami Sano', '81 Sakamoto desu ga.jpg'),
(82, 'Arakawa Under the Bridge', 'seinen', 2004, 'concluído', 100, '12+', 'Um homem rico acaba vivendo debaixo de uma ponte com moradores excêntricos.', 'Hikaru Nakamura', '82 arakawa under the bridge.jpg'),
(83, 'Sayonara, Zetsubou-Sensei', 'shonen', 2005, 'concluído', 301, '14+', 'Um professor pessimista e suas alunas excêntricas lidam com absurdos do cotidiano.', 'Kōji Kumeta', '83 sayonara zetsubou sensei.jpg'),
(84, 'Detroit Metal City', 'seinen', 2005, 'concluído', 113, '16+', 'Um músico tímido leva uma vida dupla como vocalista de uma banda de death metal.', 'Kiminori Wakasugi', '84 detroit metal city.jpg'),
(85, 'Hoozuki no Reitetsu', 'seinen', 2011, 'concluído', 271, '12+', 'O assistente do Rei do Inferno gerencia os problemas burocráticos do submundo.', 'Natsumi Eguchi', '85 Hoozuki no Reitetsu.jpg'),
(86, 'Gokushufudou (O Caminho do Dono de Casa)', 'seinen', 2018, 'em andamento', 50, '14+', 'Um ex-yakuza vira dono de casa e encara as tarefas domésticas como batalhas.', 'Kousuke Oono', '86 Gokushufudou.jpg'),
(87, 'Basilisk', 'seinen', 2003, 'concluído', 34, '16+', 'Dois clãs ninjas rivais travam uma guerra mortal para decidir o próximo xogum.', 'Masaki Segawa', '87 basilisk.jpg'),
(88, 'Kekkaishi', 'shonen', 2003, 'concluído', 345, '12+', 'Dois jovens protegem sua escola de espíritos malignos com barreiras mágicas.', 'Yellow Tanabe', '88 Kekkaishi.jpg'),
(89, 'Hoshin Engi (Soul Hunter)', 'shonen', 1996, 'concluído', 204, '12+', 'Um jovem feiticeiro é enviado para selar espíritos malignos que corrompem o reino.', 'Ryu Fujisaki', '89 Hoshin Engi.jpg'),
(90, 'Air Gear', 'shonen', 2002, 'concluído', 357, '14+', 'Adolescentes competem com patins motorizados em batalhas aéreas radicais.', 'Oh! great', '90 Air Gear.jpg'),
(91, 'Beck: Mongolian Chop Squad', 'shonen', 1999, 'concluído', 103, '14+', 'Um garoto descobre sua paixão pela música ao entrar para uma banda de rock.', 'Harold Sakuishi', '91 Beck Mongolian Chop Squad .jpg'),
(92, 'Nana to Kaoru', 'seinen', 2008, 'concluído', 126, '18+', 'A relação complexa entre dois amigos de infância que exploram seus sentimentos.', 'Ryuta Amazume', '92 Nana to Kaoru .jpg'),
(93, 'Akame ga Kill!', 'shonen', 2010, 'concluído', 78, '16+', 'Um jovem espadachim se junta a um grupo de assassinos para derrubar um império corrupto.', 'Takahiro', '93 akame ga kill.jpg'),
(94, 'Erased (Boku dake ga Inai Machi)', 'seinen', 2012, 'concluído', 44, '14+', 'Um homem volta no tempo para impedir o assassinato de sua mãe e de colegas de infância.', 'Kei Sanbe', '94 Erased.jpg'),
(95, 'Welcome to the NHK', 'seinen', 2003, 'concluído', 40, '16+', 'Um jovem hikikomori luta contra sua ansiedade social e teorias conspiratórias.', 'Tatsuhiko Takimoto', '95 Welcome to the NHK.jpg'),
(96, 'Eden: It’s an Endless World!', 'seinen', 1997, 'concluído', 127, '18+', 'Um mundo devastado por um vírus letal é palco de conspirações e sobrevivência.', 'Hiroki Endo', '96 Eden It’s an Endless World.jpg'),
(97, 'Oyasumi Punpun', 'seinen', 2007, 'concluído', 147, '18+', 'A história sombria e emocional de um menino enquanto ele cresce enfrentando traumas.', 'Inio Asano', '97 Oyasumi Punpun.jpg'),
(98, 'Real', 'seinen', 1999, 'em andamento', 90, '16+', 'Três jovens lidam com seus desafios pessoais através do basquete em cadeira de rodas.', 'Takehiko Inoue', '98 Real.jpg'),
(99, 'Ping Pong', 'seinen', 1996, 'concluído', 55, '12+', 'Dois amigos se desafiam e crescem juntos no mundo do tênis de mesa.', 'Taiyo Matsumoto', '99 ping pong.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_manga_autor`
--

CREATE TABLE `tb_manga_autor` (
  `id` int(11) NOT NULL,
  `manga_id` int(11) NOT NULL,
  `autor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_manga_autor`
--

INSERT INTO `tb_manga_autor` (`id`, `manga_id`, `autor_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20),
(21, 21, 10),
(22, 22, 21),
(23, 23, 17),
(24, 24, 22),
(25, 25, 23),
(26, 26, 24),
(27, 27, 25),
(28, 28, 26),
(29, 29, 27),
(30, 30, 28),
(31, 31, 29),
(32, 32, 30),
(33, 33, 31),
(34, 34, 32),
(35, 35, 33),
(36, 36, 34),
(37, 37, 35),
(38, 38, 36),
(39, 39, 37),
(40, 40, 38),
(41, 41, 39),
(42, 42, 40),
(43, 43, 41),
(44, 44, 42),
(45, 45, 43),
(46, 46, 43),
(47, 47, 44),
(48, 48, 45),
(49, 49, 46),
(50, 50, 47),
(51, 51, 48),
(52, 52, 49),
(53, 53, 50),
(54, 54, 51),
(55, 55, 52),
(56, 56, 53),
(57, 57, 54),
(58, 58, 55),
(59, 59, 56),
(60, 60, 57),
(61, 61, 58),
(62, 62, 59),
(63, 63, 60),
(64, 64, 61),
(65, 65, 62),
(66, 66, 63),
(67, 67, 64),
(68, 68, 65),
(69, 69, 65),
(70, 70, 66),
(71, 71, 67),
(72, 72, 68),
(73, 73, 69),
(74, 74, 70),
(75, 75, 71),
(76, 76, 72),
(77, 77, 72),
(78, 78, 72),
(79, 79, 73),
(80, 80, 74),
(81, 81, 75),
(82, 82, 76),
(83, 83, 77),
(84, 84, 78),
(85, 85, 79),
(86, 86, 80),
(87, 87, 81),
(88, 88, 82),
(89, 89, 83),
(90, 90, 84),
(91, 91, 85),
(92, 92, 86),
(93, 93, 87),
(94, 94, 88),
(95, 95, 89),
(96, 96, 90),
(97, 97, 91),
(98, 98, 17),
(99, 99, 17);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_manga_genero`
--

CREATE TABLE `tb_manga_genero` (
  `id` int(11) NOT NULL,
  `id_manga` int(11) DEFAULT NULL,
  `id_genero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_manga_genero`
--

INSERT INTO `tb_manga_genero` (`id`, `id_manga`, `id_genero`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 9),
(5, 5, 9),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 9),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 9),
(20, 20, 1),
(21, 21, 1),
(22, 22, 9),
(23, 23, 9),
(24, 24, 9),
(25, 25, 9),
(26, 26, 9),
(27, 27, 1),
(28, 28, 1),
(29, 29, 9),
(30, 30, 1),
(31, 31, 3),
(32, 32, 3),
(33, 33, 3),
(34, 34, 3),
(35, 35, 3),
(36, 36, 1),
(37, 37, 15),
(38, 38, 1),
(39, 39, 15),
(40, 40, 1),
(41, 41, 1),
(42, 42, 1),
(43, 43, 9),
(44, 44, 1),
(45, 45, 9),
(46, 46, 9),
(47, 47, 9),
(48, 48, 6),
(49, 49, 1),
(50, 50, 1),
(51, 51, 1),
(52, 52, 9),
(53, 53, 1),
(54, 54, 1),
(55, 55, 9),
(56, 56, 9),
(57, 57, 1),
(58, 58, 9),
(59, 59, 3),
(60, 60, 3),
(61, 61, 3),
(62, 62, 3),
(63, 63, 8),
(64, 64, 3),
(65, 65, 8),
(66, 66, 11),
(67, 67, 8),
(68, 68, 8),
(69, 69, 8),
(70, 70, 7),
(71, 71, 3),
(72, 72, 9),
(73, 73, 9),
(74, 74, 9),
(75, 75, 9),
(76, 76, 9),
(77, 77, 9),
(78, 78, 9),
(79, 79, 9),
(80, 80, 9),
(81, 81, 9),
(82, 82, 9),
(83, 83, 9),
(84, 84, 9),
(85, 85, 9),
(86, 86, 9),
(87, 87, 9),
(88, 88, 1),
(89, 89, 1),
(90, 90, 1),
(91, 91, 1),
(92, 92, 9),
(93, 93, 15),
(94, 94, 9),
(95, 95, 9),
(96, 96, 9),
(97, 97, 9),
(98, 98, 9),
(99, 99, 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `favoritos` varchar(255) NOT NULL,
  `historico` varchar(255) NOT NULL,
  `avaliacao` int(11) NOT NULL,
  `foto` blob NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `nivel_acesso` enum('free','basic','premium','gold','admin') NOT NULL DEFAULT 'free'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_assinantes`
--
ALTER TABLE `tb_assinantes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_unico` (`usuario_id`),
  ADD KEY `fk_assinante_cliente` (`cliente_id`);

--
-- Índices de tabela `tb_assinates`
--
ALTER TABLE `tb_assinates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_unico` (`usuario_id`),
  ADD KEY `fk_assinate_cliente` (`cliente_id`);

--
-- Índices de tabela `tb_autores`
--
ALTER TABLE `tb_autores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_clientes`
--
ALTER TABLE `tb_clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`) USING BTREE;

--
-- Índices de tabela `tb_generos`
--
ALTER TABLE `tb_generos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_mangas`
--
ALTER TABLE `tb_mangas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_manga_autor`
--
ALTER TABLE `tb_manga_autor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `manga_id` (`manga_id`,`autor_id`),
  ADD KEY `autor_id` (`autor_id`);

--
-- Índices de tabela `tb_manga_genero`
--
ALTER TABLE `tb_manga_genero`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_manga` (`id_manga`),
  ADD KEY `id_genero` (`id_genero`);

--
-- Índices de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_assinantes`
--
ALTER TABLE `tb_assinantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_assinates`
--
ALTER TABLE `tb_assinates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tb_autores`
--
ALTER TABLE `tb_autores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de tabela `tb_clientes`
--
ALTER TABLE `tb_clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_manga_autor`
--
ALTER TABLE `tb_manga_autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de tabela `tb_manga_genero`
--
ALTER TABLE `tb_manga_genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tb_assinantes`
--
ALTER TABLE `tb_assinantes`
  ADD CONSTRAINT `fk_assinante_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `tb_clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_assinante_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `tb_usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `tb_assinates`
--
ALTER TABLE `tb_assinates`
  ADD CONSTRAINT `fk_assinate_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `tb_clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_assinate_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `tb_usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `tb_manga_autor`
--
ALTER TABLE `tb_manga_autor`
  ADD CONSTRAINT `tb_manga_autor_ibfk_1` FOREIGN KEY (`manga_id`) REFERENCES `tb_mangas` (`id`),
  ADD CONSTRAINT `tb_manga_autor_ibfk_2` FOREIGN KEY (`autor_id`) REFERENCES `tb_autores` (`id`);

--
-- Restrições para tabelas `tb_manga_genero`
--
ALTER TABLE `tb_manga_genero`
  ADD CONSTRAINT `tb_manga_genero_ibfk_1` FOREIGN KEY (`id_manga`) REFERENCES `tb_mangas` (`id`),
  ADD CONSTRAINT `tb_manga_genero_ibfk_2` FOREIGN KEY (`id_genero`) REFERENCES `tb_generos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
