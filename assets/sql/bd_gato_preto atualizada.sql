-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21/03/2025 às 15:12
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

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
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nomeCompleto` varchar(200) NOT NULL,
  `dataNascimento` date DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `cpf` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(4, 'Attack on Titan', 'shonen', 2009, 'concluído', 139, '16+', 'Humanidade luta contra titãs que ameaçam sua existência.', 'Hajime Isayama', '4 Shingeki no Kyojin'),
(5, 'Death Note', 'shonen', 2003, 'concluído', 108, '16+', 'Um estudante encontra um caderno que pode matar pessoas.', 'Tsugumi Ohba', '5 death note'),
(6, 'Bleach', 'shonen', 2001, 'concluído', 686, '14+', 'Um adolescente ganha poderes de Shinigami para proteger sua cidade.', 'Tite Kubo', '6 bleach'),
(7, 'Fullmetal Alchemist', 'shonen', 2001, 'concluído', 116, '14+', 'Dois irmãos alquimistas buscam a Pedra Filosofal.', 'Hiromu Arakawa', '7 fullmetal alchemist'),
(8, 'Demon Slayer', 'shonen', 2016, 'concluído', 205, '14+', 'Um jovem caçador luta para salvar sua irmã demônio.', 'Koyoharu Gotouge', '8 demon slayer'),
(9, 'Jujutsu Kaisen', 'shonen', 2018, 'em andamento', 250, '16+', 'Um estudante luta contra maldições com técnicas de feitiçaria.', 'Gege Akutami', '9 jujutsu kaisen'),
(10, 'Hunter x Hunter', 'shonen', 1998, 'em andamento', 400, '14+', 'Um garoto busca seu pai e se torna um caçador.', 'Yoshihiro Togashi', '10 hunterxhunter'),
(11, 'My Hero Academia', 'shonen', 2014, 'em andamento', 410, '12+', 'Estudantes treinam para se tornarem super-heróis.', 'Kohei Horikoshi', '11 myheroacademia'),
(12, 'One Punch Man', 'seinen', 2009, 'em andamento', 200, '16+', 'Um herói que derrota qualquer inimigo com um soco.', 'ONE, Yusuke Murata', '12 one punch man'),
(13, 'Tokyo Revengers', 'shonen', 2017, 'concluído', 278, '16+', 'Um jovem viaja no tempo para salvar sua ex-namorada.', 'Ken Wakui', '13 tokyorevenger'),
(14, 'JoJo’s Bizarre Adventure', 'shonen', 1987, 'em andamento', 950, '16+', 'Gerações de heróis combatem forças sobrenaturais.', 'Hirohiko Araki', '14 JoJo’s Bizarre Adventure'),
(15, 'Fairy Tail', 'shonen', 2006, 'concluído', 545, '14+', 'Magos de uma guilda embarcam em aventuras épicas.', 'Hiro Mashima', '15 Fairy Tail'),
(16, 'Chainsaw Man', 'shonen', 2018, 'em andamento', 150, '16+', 'Um jovem caçador de demônios com poderes de motosserra.', 'Tatsuki Fujimoto', '16 Chainsaw Man'),
(17, 'Slam Dunk', 'shonen', 1990, 'concluído', 276, '12+', 'Um estudante descobre sua paixão pelo basquete.', 'Takehiko Inoue', '17 slam dunk'),
(18, 'Haikyuu!!', 'shonen', 2012, 'concluído', 402, '12+', 'Jogadores de vôlei superam desafios para chegar ao topo.', 'Haruichi Furudate', '18 haikyuu'),
(19, 'Neon Genesis Evangelion', 'seinen', 1994, 'concluído', 97, '16+', 'Adolescentes pilotam mechas contra criaturas apocalípticas.', 'Yoshiyuki Sadamoto', '19 Neon Genesis Evangelion'),
(20, 'Rurouni Kenshin', 'shonen', 1994, 'concluído', 255, '14+', 'Um ex-assassino tenta viver uma vida pacífica no Japão feudal.', 'Nobuhiro Watsuki', '20 Rurouni Kenshin'),
(21, 'Yu Yu Hakusho', 'shonen', 1990, 'concluído', 175, '14+', 'Um jovem que morre salvando uma criança ganha uma segunda chance como detetive espiritual.', 'Yoshihiro Togashi', '21 Yu Yu Hakusho'),
(22, 'Berserk', 'seinen', 1989, 'em andamento', 364, '18+', 'A sombria jornada de Guts, um mercenário amaldiçoado, em busca de vingança contra seu ex-amigo.', 'Kentaro Miura', '22 Berserk'),
(23, 'Vagabond', 'seinen', 1998, 'hiato', 327, '18+', 'A história do lendário samurai Miyamoto Musashi.', 'Takehiko Inoue', '23 Vagabond'),
(24, 'Tokyo Ghoul', 'seinen', 2011, 'concluído', 143, '16+', 'Um jovem se torna meio-ghoul após um acidente e luta para encontrar seu lugar na sociedade.', 'Sui Ishida', '24 Tokyo Ghoul'),
(25, 'Parasyte (Kiseijuu)', 'seinen', 1988, 'concluído', 64, '16+', 'Parasitas alienígenas invadem corpos humanos, e um jovem luta para sobreviver após um deles falhar em dominá-lo completamente.', 'Hitoshi Iwaaki', '25 Kiseijuu'),
(26, 'Vinland Saga', 'seinen', 2005, 'em andamento', 200, '16+', 'A saga de um jovem viking em busca de vingança.', 'Makoto Yukimura', '26 vinland saga'),
(27, 'The Promised Neverland (Yakusoku no Neverland)', 'shonen', 2016, 'concluído', 181, '14+', 'Crianças descobrem a verdade sombria sobre o orfanato onde vivem e tentam escapar.', 'Kaiu Shirai', '27 Yakusoku no Neverland'),
(28, 'Black Clover', 'shonen', 2015, 'em andamento', 370, '12+', 'Um jovem sem magia busca se tornar o Rei Mago.', 'Yūki Tabata', '28 Black Clover'),
(29, 'Akira', 'seinen', 1982, 'concluído', 120, '16+', 'Um jovem motociclista se envolve em uma conspiração governamental sobre poderes psíquicos.', 'Katsuhiro Otomo', '29 Akira'),
(30, 'Inuyasha', 'shonen', 1996, 'concluído', 558, '12+', 'Uma garota viaja no tempo e se junta a um meio-youkai para encontrar a Joia de Quatro Almas.', 'Rumiko Takahashi', '30 Inuyasha'),
(31, 'Sailor Moon', 'shoujo', 1991, 'concluído', 60, '10+', 'Uma jovem descobre ser uma guerreira mágica destinada a salvar o mundo.', 'Naoko Takeuchi', '31 Sailor Moon'),
(32, 'Cardcaptor Sakura', 'shoujo', 1996, 'concluído', 70, '10+', 'Uma garota descobre cartas mágicas e precisa capturá-las para evitar o caos.', 'CLAMP', '32 Cardcaptor Sakura'),
(33, 'Ouran High School Host Club', 'shoujo', 2002, 'concluído', 83, '12+', 'Uma garota se disfarça de garoto e se junta a um clube de anfitriões de elite.', 'Bisco Hatori', '33 Ouran High School Host Club'),
(34, 'Fruits Basket', 'shoujo', 1998, 'concluído', 136, '12+', 'Uma garota órfã descobre que uma família sofre uma maldição ligada ao zodíaco chinês.', 'Natsuki Takaya', '34 Fruits Basket'),
(35, 'Nana', 'shoujo', 2000, 'hiato', 84, '16+', 'Duas garotas chamadas Nana têm suas vidas entrelaçadas pelo destino e pela música.', 'Ai Yazawa', '35 Nana'),
(36, 'Love Hina', 'shonen', 1998, 'concluído', 123, '14+', 'Um jovem tenta entrar na Universidade de Tóquio enquanto gerencia uma pensão feminina.', 'Ken Akamatsu', '36 Love Hina'),
(37, 'Rosario + Vampire', 'shonen', 2004, 'concluído', 66, '14+', 'Um garoto humano entra por engano em uma escola para monstros e conhece uma vampira.', 'Akihisa Ikeda', '37 Rosario + Vampire'),
(38, 'Mirai Nikki (Future Diary)', 'shonen', 2006, 'concluído', 59, '16+', 'Um jogo mortal entre pessoas que possuem diários que preveem o futuro.', 'Sakae Esuno', '38 Mirai Nikki'),
(39, 'Black Butler (Kuroshitsuji)', 'shonen', 2006, 'em andamento', 200, '16+', 'Um jovem nobre faz um pacto com um mordomo demoníaco para vingar seus pais.', 'Yana Toboso', '39 Kuroshitsuji'),
(40, 'D.Gray-man', 'shonen', 2004, 'hiato', 240, '14+', 'Exorcistas lutam contra demônios criados por um misterioso Conde.', 'Katsura Hoshino', '40 D.Gray-man'),
(41, 'Soul Eater', 'shonen', 2004, 'concluído', 113, '14+', 'Estudantes de uma escola especial treinam para se tornarem caçadores de almas malignas.', 'Atsushi Ōkubo', '41 Soul Eater'),
(42, 'Toriko', 'shonen', 2008, 'concluído', 396, '14+', 'Um caçador de ingredientes raros busca criar o prato perfeito.', 'Mitsutoshi Shimabukuro', '42 Toriko'),
(43, 'Gantz', 'seinen', 2000, 'concluído', 383, '18+', 'Pessoas mortas são revividas para lutar contra alienígenas.', 'Hiroya Oku', '43 Gantz'),
(44, 'Great Teacher Onizuka (GTO)', 'shonen', 1997, 'concluído', 201, '16+', 'Um ex-delinquente se torna professor para mudar a vida de seus alunos.', 'Tooru Fujisawa', '44 Great Teacher'),
(45, 'Monster', 'seinen', 1994, 'concluído', 162, '16+', 'Um neurocirurgião persegue um assassino em série que ele salvou.', 'Naoki Urasawa', '45 Monster'),
(46, '20th Century Boys', 'seinen', 1999, 'concluído', 249, '16+', 'Amigos de infância tentam impedir uma seita que ameaça o mundo.', 'Naoki Urasawa', '46 20th century boys'),
(47, 'Made in Abyss', 'seinen', 2012, 'em andamento', 66, '16+', 'Uma garota e um robô exploram um abismo misterioso e perigoso.', 'Akihito Tsukushi', '47 Made in Abyss'),
(48, 'Re:Zero', 'shonen', 2014, 'em andamento', 75, '16+', 'Um jovem é transportado para um mundo de fantasia e revive após morrer.', 'Tappei Nagatsuki', '48 Re zero'),
(49, 'Sword Art Online', 'shonen', 2009, 'em andamento', 100, '14+', 'Jogadores ficam presos em um jogo de realidade virtual mortal.', 'Reki Kawahara', '49 Sword Art Online'),
(50, 'Dr. Stone', 'shonen', 2017, 'concluído', 232, '12+', 'Um jovem gênio tenta reconstruir a civilização após um evento petrificador.', 'Riichiro Inagaki', '50 Dr stone'),
(51, 'Noragami', 'shonen', 2010, 'em andamento', 100, '14+', 'Um deus menor busca ganhar reconhecimento ajudando humanos.', 'Adachitoka', ''),
(52, 'Hellsing', 'seinen', 1997, 'concluído', 92, '18+', 'Uma organização secreta luta contra vampiros e criaturas sobrenaturais.', 'Kouta Hirano', ''),
(53, 'Deadman Wonderland', 'shonen', 2007, 'concluído', 58, '16+', 'Um garoto é preso injustamente e forçado a lutar em jogos mortais.', 'Jinsei Kataoka', ''),
(54, 'Shaman King', 'shonen', 1998, 'concluído', 300, '12+', 'Um jovem xamã compete para se tornar o Rei dos Xamãs.', 'Hiroyuki Takei', ''),
(55, 'Trigun', 'seinen', 1995, 'concluído', 102, '16+', 'Um pistoleiro pacifista é caçado por um passado misterioso.', 'Yasuhiro Nightow', ''),
(56, 'Elfen Lied', 'seinen', 2002, 'concluído', 113, '18+', 'Uma mutante com poderes letais escapa de um laboratório e busca redenção.', 'Lynn Okamoto', ''),
(57, 'Pandora Hearts', 'shonen', 2006, 'concluído', 107, '14+', 'Um jovem é lançado em uma dimensão sombria e busca respostas sobre seu destino.', 'Jun Mochizuki', ''),
(58, 'Blue Period', 'seinen', 2017, 'em andamento', 60, '16+', 'Um estudante descobre sua paixão pela arte e tenta entrar na melhor universidade de artes.', 'Tsubasa Yamaguchi', ''),
(59, '07-Ghost', 'shoujo', 2005, 'concluído', 100, '12+', 'Um cadete militar descobre segredos sobre seu passado e poderes divinos.', 'Yuki Amemiya', ''),
(60, 'Skip Beat!', 'shoujo', 2002, 'em andamento', 300, '12+', 'Uma garota busca vingança contra seu ex ao se tornar uma atriz de sucesso.', 'Yoshiki Nakamura', ''),
(61, 'Ao Haru Ride', 'shoujo', 2011, 'concluído', 53, '12+', 'Uma estudante reencontra seu amor de infância e tenta reconquistar seus sentimentos.', 'Io Sakisaka', ''),
(62, 'Orange', 'shoujo', 2012, 'concluído', 22, '12+', 'Uma garota recebe cartas do futuro para evitar a morte de um amigo.', 'Ichigo Takano', ''),
(63, 'Horimiya', 'shonen', 2011, 'concluído', 122, '12+', 'Dois estudantes descobrem segredos um do outro e se aproximam.', 'HERO', ''),
(64, 'Tonari no Kaibutsu-kun (My Little Monster)', 'shoujo', 2008, 'concluído', 52, '12+', 'Uma estudante focada nos estudos se apaixona por um colega problemático.', 'Robico', ''),
(65, 'Barakamon', 'seinen', 2009, 'concluído', 133, '12+', 'Um calígrafo se muda para uma vila remota e aprende lições de vida.', 'Satsuki Yoshino', ''),
(66, 'Usagi Drop', 'josei', 2005, 'concluído', 56, '12+', 'Um homem adota a filha ilegítima de seu avô e aprende a ser pai.', 'Yumi Unita', ''),
(67, 'Nichijou', 'shonen', 2006, 'concluído', 192, '12+', 'Momentos absurdos e engraçados do cotidiano de três amigas.', 'Keiichi Arawi', ''),
(68, 'Azumanga Daioh', 'shonen', 1999, 'concluído', 69, '12+', 'As aventuras escolares de um grupo de garotas peculiares.', 'Kiyohiko Azuma', ''),
(69, 'Yotsuba&!', 'shonen', 2003, 'em andamento', 110, '12+', 'O dia a dia adorável de uma menina curiosa e suas descobertas.', 'Kiyohiko Azuma', ''),
(70, 'Chi’s Sweet Home', 'kodomo', 2004, 'concluído', 104, 'L', 'As aventuras fofas de uma gatinha e sua família humana.', 'Konami Kanata', ''),
(71, 'Natsume Yuujinchou (Livro dos Amigos de Natsume)', 'shoujo', 2005, 'em andamento', 120, '12+', 'Um garoto vê espíritos e herda um livro que os controla.', 'Yuki Midorikawa', ''),
(72, 'Mushishi', 'seinen', 1999, 'concluído', 49, '14+', 'Um especialista viaja pelo Japão ajudando pessoas afetadas por criaturas sobrenaturais.', 'Yuki Urushibara', ''),
(73, 'Kino no Tabi (A Jornada de Kino)', 'seinen', 2000, 'concluído', 44, '14+', 'Uma viajante explora países únicos com sua moto falante.', 'Keiichi Sigsawa', ''),
(74, 'Somali to Mori no Kamisama', 'seinen', 2015, 'concluído', 50, '12+', 'Uma garota humana é protegida por um golem em um mundo de criaturas místicas.', 'Yako Gureishi', ''),
(75, 'Houseki no Kuni (Terra dos Brilhantes)', 'seinen', 2012, 'em andamento', 100, '14+', 'Seres de gemas antropomórficos lutam contra inimigos lunares.', 'Haruko Ichikawa', ''),
(76, 'Blame!', 'seinen', 1997, 'concluído', 66, '16+', 'Um solitário explora uma megacidade em busca de genes humanos.', 'Tsutomu Nihei', ''),
(77, 'Biomega', 'seinen', 2004, 'concluído', 43, '16+', 'Um agente enfrenta zumbis mutantes em um mundo pós-apocalíptico.', 'Tsutomu Nihei', ''),
(78, 'Knights of Sidonia', 'seinen', 2009, 'concluído', 78, '16+', 'Humanidade sobrevive no espaço lutando contra alienígenas gigantes.', 'Tsutomu Nihei', ''),
(79, 'Dorohedoro', 'seinen', 2000, 'concluído', 167, '18+', 'Um homem com cabeça de lagarto busca sua verdadeira identidade em uma cidade brutal.', 'Q Hayashida', ''),
(80, 'Ajin (Demi-Humano)', 'seinen', 2012, 'concluído', 86, '16+', 'Humanos imortais são perseguidos pelo governo para experimentos.', 'Gamon Sakurai', ''),
(81, 'Sakamoto desu ga? (Você não ouviu? Eu sou Sakamoto)', 'seinen', 2011, 'concluído', 24, '12+', 'A vida perfeita e exageradamente estilosa de um estudante genial.', 'Nami Sano', ''),
(82, 'Arakawa Under the Bridge', 'seinen', 2004, 'concluído', 100, '12+', 'Um homem rico acaba vivendo debaixo de uma ponte com moradores excêntricos.', 'Hikaru Nakamura', ''),
(83, 'Sayonara, Zetsubou-Sensei', 'shonen', 2005, 'concluído', 301, '14+', 'Um professor pessimista e suas alunas excêntricas lidam com absurdos do cotidiano.', 'Kōji Kumeta', ''),
(84, 'Detroit Metal City', 'seinen', 2005, 'concluído', 113, '16+', 'Um músico tímido leva uma vida dupla como vocalista de uma banda de death metal.', 'Kiminori Wakasugi', ''),
(85, 'Hoozuki no Reitetsu', 'seinen', 2011, 'concluído', 271, '12+', 'O assistente do Rei do Inferno gerencia os problemas burocráticos do submundo.', 'Natsumi Eguchi', ''),
(86, 'Gokushufudou (O Caminho do Dono de Casa)', 'seinen', 2018, 'em andamento', 50, '14+', 'Um ex-yakuza vira dono de casa e encara as tarefas domésticas como batalhas.', 'Kousuke Oono', ''),
(87, 'Basilisk', 'seinen', 2003, 'concluído', 34, '16+', 'Dois clãs ninjas rivais travam uma guerra mortal para decidir o próximo xogum.', 'Masaki Segawa', ''),
(88, 'Kekkaishi', 'shonen', 2003, 'concluído', 345, '12+', 'Dois jovens protegem sua escola de espíritos malignos com barreiras mágicas.', 'Yellow Tanabe', ''),
(89, 'Hoshin Engi (Soul Hunter)', 'shonen', 1996, 'concluído', 204, '12+', 'Um jovem feiticeiro é enviado para selar espíritos malignos que corrompem o reino.', 'Ryu Fujisaki', ''),
(90, 'Air Gear', 'shonen', 2002, 'concluído', 357, '14+', 'Adolescentes competem com patins motorizados em batalhas aéreas radicais.', 'Oh! great', ''),
(91, 'Beck: Mongolian Chop Squad', 'shonen', 1999, 'concluído', 103, '14+', 'Um garoto descobre sua paixão pela música ao entrar para uma banda de rock.', 'Harold Sakuishi', ''),
(92, 'Nana to Kaoru', 'seinen', 2008, 'concluído', 126, '18+', 'A relação complexa entre dois amigos de infância que exploram seus sentimentos.', 'Ryuta Amazume', ''),
(93, 'Akame ga Kill!', 'shonen', 2010, 'concluído', 78, '16+', 'Um jovem espadachim se junta a um grupo de assassinos para derrubar um império corrupto.', 'Takahiro', ''),
(94, 'Erased (Boku dake ga Inai Machi)', 'seinen', 2012, 'concluído', 44, '14+', 'Um homem volta no tempo para impedir o assassinato de sua mãe e de colegas de infância.', 'Kei Sanbe', ''),
(95, 'Welcome to the NHK', 'seinen', 2003, 'concluído', 40, '16+', 'Um jovem hikikomori luta contra sua ansiedade social e teorias conspiratórias.', 'Tatsuhiko Takimoto', ''),
(96, 'Eden: It’s an Endless World!', 'seinen', 1997, 'concluído', 127, '18+', 'Um mundo devastado por um vírus letal é palco de conspirações e sobrevivência.', 'Hiroki Endo', ''),
(97, 'Oyasumi Punpun', 'seinen', 2007, 'concluído', 147, '18+', 'A história sombria e emocional de um menino enquanto ele cresce enfrentando traumas.', 'Inio Asano', ''),
(98, 'Real', 'seinen', 1999, 'em andamento', 90, '16+', 'Três jovens lidam com seus desafios pessoais através do basquete em cadeira de rodas.', 'Takehiko Inoue', ''),
(99, 'Ping Pong', 'seinen', 1996, 'concluído', 55, '12+', 'Dois amigos se desafiam e crescem juntos no mundo do tênis de mesa.', 'Taiyo Matsumoto', '');

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
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`) USING BTREE;

--
-- Índices de tabela `tb_mangas`
--
ALTER TABLE `tb_mangas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_mangas`
--
ALTER TABLE `tb_mangas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
