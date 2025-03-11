CREATE DATABASE IF NOT EXISTS BibliotecaMangas;
USE BibliotecaMangas;

CREATE TABLE IF NOT EXISTS Mangas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    genero VARCHAR(100),
    ano_lancamento YEAR,
    status ENUM('Em Andamento', 'Concluído', 'Hiato') NOT NULL,
    volumes INT,
    classificacao_indicativa VARCHAR(10),
    sinopse TEXT,
    autor VARCHAR(255)
);
One Piece
Dragon Ball
Naruto
Attack on Titan (Shingeki no Kyojin)
Death Note
Bleach
Fullmetal Alchemist
Demon Slayer (Kimetsu no Yaiba)
Jujutsu Kaisen
Hunter x Hunter
My Hero Academia (Boku no Hero Academia)
One Punch Man
Tokyo Revengers
JoJo’s Bizarre Adventure
Fairy Tail
Chainsaw Man
Slam Dunk
Haikyuu!!
Neon Genesis Evangelion
Rurouni Kenshin (Samurai X)
Yu Yu Hakusho
Berserk
Vagabond
Tokyo Ghoul
Parasyte (Kiseijuu)
Vinland Saga
The Promised Neverland (Yakusoku no Neverland)
Black Clover
Akira
Inuyasha
Sailor Moon
Cardcaptor Sakura
Ouran High School Host Club
Fruits Basket
Nana
Love Hina
Rosario + Vampire
Mirai Nikki (Future Diary)
Black Butler (Kuroshitsuji)
D.Gray-man
Soul Eater
Claymore
Toriko
Gantz
Great Teacher Onizuka (GTO)
Monster
20th Century Boys
Made in Abyss
Re:Zero
Sword Art Online
Dr. Stone
Noragami
Hellsing
Deadman Wonderland
Shaman King
Trigun
Elfen Lied
Pandora Hearts
Blue Period
07-Ghost
Skip Beat!
Ao Haru Ride
Orange
Horimiya
Tonari no Kaibutsu-kun (My Little Monster)
Barakamon
Usagi Drop
Nichijou
Azumanga Daioh
Yotsuba&!
Chi’s Sweet Home
Natsume Yuujinchou (Natsume’s Book of Friends)
Mushishi
Kino no Tabi (Kino’s Journey)
Somali to Mori no Kamisama
Houseki no Kuni (Land of the Lustrous)
Blame!
Biomega
Knights of Sidonia
Dorohedoro
Ajin (Demi-Human)
Sakamoto desu ga? (Haven’t You Heard? I’m Sakamoto)
Arakawa Under the Bridge
Sayonara, Zetsubou-Sensei
Detroit Metal City
Hoozuki no Reitetsu
Gokushufudou (The Way of the Househusband)
Basilisk
Kekkaishi
Hoshin Engi (Soul Hunter)
Air Gear
Beck: Mongolian Chop Squad
Nana to Kaoru
Akame ga Kill!
Erased (Boku dake ga Inai Machi)
Welcome to the NHK
Eden: It’s an Endless World!
Oyasumi Punpun
Real
Ping Pong