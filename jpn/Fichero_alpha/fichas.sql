-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 03-02-2020 a las 07:08:00
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id8994286_datos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fichas`
--

CREATE TABLE `fichas` (
  `id` int(11) NOT NULL,
  `esp` text COLLATE utf8_unicode_ci NOT NULL,
  `jap` text COLLATE utf8_unicode_ci NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL,
  `seccion` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `fichas`
--

INSERT INTO `fichas` (`id`, `esp`, `jap`, `img`, `seccion`) VALUES
(1, 'Ver', '(見,み)る', 'Imgs/img_1.png', 0),
(2, 'Escuchar', '(聞,き)く', 'Imgs/img_2.png', 0),
(3, 'Pararse', '(立,た)つ', 'Imgs/img_3.png', 0),
(4, 'Sentarse', '(座,すわ)る', 'Imgs/img_4.png', 0),
(5, 'Comer', '(食,た)べる', 'Imgs/img_5.png', 0),
(6, 'Beber', '(飲,の)む', 'Imgs/img_6.png', 0),
(7, 'Leer', '(読,よ)む', 'Imgs/img_7.png', 0),
(8, 'Escribir', '(書,か)く', 'Imgs/img_8.png', 0),
(9, 'Hablar', '(話,はな)す', 'Imgs/img_9.png', 0),
(10, 'Reír', '(笑,わら)う', 'Imgs/img_10.png', 0),
(11, 'Pensar', '(思,おも)う', 'Imgs/img_11.png', 0),
(12, 'Ir', '(行,い)く', 'Imgs/img_12.png', 0),
(13, 'Enojarse', '(怒,おこ)る', 'Imgs/img_13.png', 0),
(14, 'Gritar', '(叫,さけ)ぶ', 'Imgs/img_14.png', 0),
(15, 'Venir', '(来,く)る', 'Imgs/img_15.png', 0),
(16, 'Esperar', '(待,ま)つ', 'Imgs/img_16.png', 0),
(17, 'Llorar', '(泣,な)く', 'Imgs/img_17.png', 0),
(18, 'Disculparse', '(謝,あやま)る', 'Imgs/img_18.png', 0),
(19, 'Encontrarse', '(会,あ)う', 'Imgs/img_19.png', 0),
(20, 'Volver a casa', '(帰,かえ)る', 'Imgs/img_20.png', 0),
(21, 'Dormir', '(寝,ね)る', 'Imgs/img_21.png', 0),
(22, 'Caminar', '(歩,ある)く', 'Imgs/img_22.png', 0),
(23, 'Construir', '(作,つく)る', 'Imgs/img_23.png', 0),
(24, 'Romper', '(壊,こわ)す', 'Imgs/img_24.png', 0),
(25, 'Correr', '(走,はし)る', 'Imgs/img_25.png', 0),
(26, 'Levantar', '(上,あ)げる', 'Imgs/img_26.png', 0),
(27, 'Entregar', '(渡,わた)す', 'Imgs/img_27.png', 0),
(28, 'Colocar', '(置,お)く', 'Imgs/img_28.png', 0),
(29, 'Volar', '(飛,と)ぶ', 'Imgs/img_29.png', 0),
(30, 'Apilar', '(積,つ)む', 'Imgs/img_30.png', 0),
(31, 'Trabajar', '(働,はたら)く', 'Imgs/img_31.png', 0),
(32, 'Patear', '(蹴,け)る', 'Imgs/img_32.png', 0),
(33, 'Invitar', '(誘,さそ)う', 'Imgs/img_33.png', 0),
(34, 'Buscar', '(探,さが)す', 'Imgs/img_34.png', 0),
(35, 'Salir', '(出,で)る', 'Imgs/img_35.png', 0),
(36, 'Entrar', '(入,はい)る', 'Imgs/img_36.png', 0),
(37, 'Cabeza', '(頭,あたま)', 'Imgs/img_37.png', 0),
(38, 'Cabello', '(髪,かみ)', 'Imgs/img_38.png', 0),
(39, 'Cara', '(顔,かお)', 'Imgs/img_39.png', 0),
(40, 'Ojo', '(目,め)', 'Imgs/img_40.png', 0),
(41, 'Nariz', '(鼻,はな)', 'Imgs/img_41.png', 0),
(42, 'Boca', '(口,くち)', 'Imgs/img_42.png', 0),
(43, 'Diente', '(歯,は)', 'Imgs/img_43.png', 0),
(44, 'Oreja', '(耳,みみ)', 'Imgs/img_44.png', 0),
(45, 'Cuello', '(首,くび)', 'Imgs/img_45.png', 0),
(46, 'Pecho', '(胸,むね)', 'Imgs/img_46.png', 0),
(47, 'Espalda', '(背中,せなか)', 'Imgs/img_47.png', 0),
(48, 'Mano', '(手,て)', 'Imgs/img_48.png', 0),
(49, 'Estómago', 'お(腹,なか)', 'Imgs/img_49.png', 0),
(50, 'Trasero', 'お(尻,しり)', 'Imgs/img_50.png', 0),
(51, 'Pie, Pierna', '(足,あし)', 'Imgs/img_51.png', 0),
(52, 'Feliz', '(嬉,うれ)しい', 'Imgs/img_52.png', 0),
(53, 'Divertido', '(楽,たの)しい', 'Imgs/img_53.png', 0),
(54, 'Entretenido', '(面白,おもしろ)い', 'Imgs/img_54.png', 0),
(55, 'Sentirse bien', '(気持,きも)ちいい', 'Imgs/img_55.png', 0),
(56, 'Satisfacción', '(満足,まんぞく)', 'Imgs/img_56.png', 0),
(57, 'Tensión', '(緊張,きんちょう)', 'Imgs/img_57.png', 0),
(58, 'Aterrador', '(怖,こわ)い', 'Imgs/img_58.png', 0),
(59, 'Vergonzoso', '(恥,は)ずかしい', 'Imgs/img_59.png', 0),
(60, 'Triste', '(悲,かな)しい', 'Imgs/img_60.png', 0),
(61, 'Desgarrador', '(切,せつ)ない', 'Imgs/img_61.png', 0),
(62, 'Trabajoso', '(苦,くる)しい', 'Imgs/img_62.png', 0),
(63, 'Increíble', '(不思議,ふしぎ)', 'Imgs/img_63.png', 0),
(64, 'Rendirse', '(諦,あきら)める', 'Imgs/img_64.png', 0),
(65, 'Lindo', '(可愛,かわい)い', 'Imgs/img_65.png', 0),
(66, 'Lamentable', '(可哀相,かわいそう)', 'Imgs/img_66.png', 0),
(67, 'Desagradable', '(気持,きも)ち(悪,わる)い', 'Imgs/img_67.png', 0),
(68, 'Preocupación', '(心配,しんぱい)', 'Imgs/img_68.png', 0),
(69, 'Envidiable', '(羨,うらや)ましい', 'Imgs/img_69.png', 0),
(70, 'Obsesionado', '(夢中,むちゅう)', 'Imgs/img_70.png', 0),
(71, 'Enfadarse', '(怒,おこ)る', 'Imgs/img_71.png', 0),
(72, 'Orgulloso', '(誇,ほこ)らしい', 'Imgs/img_72.png', 0),
(73, 'Nostálgico', '(懐,なつ)かしい', 'Imgs/img_73.png', 0),
(74, 'Emocionado', 'ドキドキ', 'Imgs/img_74.png', 0),
(75, 'Solitario', '(寂,さび)しい', 'Imgs/img_75.png', 0),
(76, 'Aburrido', '(詰,つま)らない', 'Imgs/img_76.png', 0),
(77, 'Deprimido', '(落,お)ち(込,こ)む', 'Imgs/img_77.png', 0),
(78, 'Frustrante', '(悔,くや)しい', 'Imgs/img_78.png', 0),
(79, 'Profunda emoción', '(感激,かんげき)', 'Imgs/img_79.png', 0),
(80, 'Gratitud', '(感謝,かんしゃ)', 'Imgs/img_80.png', 0),
(81, 'Grande', '(大,おお)きい', 'Imgs/img_81.png', 0),
(82, 'Pequeño', '(小,ちい)さい', 'Imgs/img_82.png', 0),
(83, 'Alto', '(高,たか)い', 'Imgs/img_83.png', 0),
(84, 'Bajo', '(低,ひく)い', 'Imgs/img_84.png', 0),
(85, 'Largo', '(長,なが)い', 'Imgs/img_85.png', 0),
(86, 'Corto', '(短,みじか)い', 'Imgs/img_86.png', 0),
(87, 'Pesado', '(重,おも)い', 'Imgs/img_87.png', 0),
(88, 'Ligero', '(軽,かる)い', 'Imgs/img_88.png', 0),
(89, 'Cálido', '(暑,あつ)い', 'Imgs/img_89.png', 0),
(90, 'Frío', '(寒,さむ)い', 'Imgs/img_90.png', 0),
(91, 'Gordo', '(太,ふと)い', 'Imgs/img_91.png', 0),
(92, 'Delgado', '(細,ほそ)い', 'Imgs/img_92.png', 0),
(93, 'Grueso', '(厚,あつ)い', 'Imgs/img_93.png', 0),
(94, 'Fino', '(薄,うす)い', 'Imgs/img_94.png', 0),
(95, 'Muchos', '(多,おお)い', 'Imgs/img_95.png', 0),
(96, 'Poco', '(少,すく)ない', 'Imgs/img_96.png', 0),
(97, 'Cerca', '(近,ちか)い', 'Imgs/img_97.png', 0),
(98, 'Lejos', '(遠,とお)い', 'Imgs/img_98.png', 0),
(99, 'Suave', '(柔,やわ)らかい', 'Imgs/img_99.png', 0),
(100, 'Duro', '(硬,かた)い', 'Imgs/img_100.png', 0),
(101, 'Profundo', '(深,ふか)い', 'Imgs/img_101.png', 0),
(102, 'Poco profundo', '(浅,あさ)い', 'Imgs/img_102.png', 0),
(103, 'Lento', '(遅,おそ)い', 'Imgs/img_103.png', 0),
(104, 'Rápido', '(速,はや)い', 'Imgs/img_104.png', 0),
(105, 'Dulce', '(甘,あま)い', 'Imgs/img_105.png', 0),
(106, 'Amargo', '(辛,から)い', 'Imgs/img_106.png', 0),
(107, 'Oscuro', '(暗,くら)い', 'Imgs/img_107.png', 0),
(108, 'Luminoso', '(明,あか)るい', 'Imgs/img_108.png', 0),
(109, 'Estrecho', '(狭,せま)い', 'Imgs/img_109.png', 0),
(110, 'Amplio', '(広,ひろ)い', 'Imgs/img_110.png', 0),
(111, 'Viejo', '(古,ふる)い', 'Imgs/img_111.png', 0),
(112, 'Nuevo', '(新,あたら)しい', 'Imgs/img_112.png', 0),
(113, 'Camión', 'バス', 'Imgs/img_113.png', 0),
(114, 'Taxi', 'タクシー', 'Imgs/img_114.png', 0),
(115, 'Tren', '(電車,でんしゃ)', 'Imgs/img_115.png', 0),
(116, 'Avión', '(飛行機,ひこうき)', 'Imgs/img_116.png', 0),
(117, 'Helicóptero', 'ヘリコプター', 'Imgs/img_117.png', 0),
(118, 'Bicicleta', '(自転車,じてんしゃ)', 'Imgs/img_118.png', 0),
(119, 'Fresa', '(苺,いちご)', 'Imgs/img_119.png', 0),
(120, 'Manzana', '(林檎,りんご)', 'Imgs/img_120.png', 0),
(121, 'Mandarina', '(蜜柑,みかん)', 'Imgs/img_121.png', 0),
(122, 'Durazno', '(桃,もも)', 'Imgs/img_122.png', 0),
(123, 'Sandía', '(西瓜,すいか)', 'Imgs/img_123.png', 0),
(124, 'Cereza', '(桜,さくら)んぼ', 'Imgs/img_124.png', 0),
(125, 'Limón', 'レモン', 'Imgs/img_125.png', 0),
(126, 'Plátano', 'バナナ', 'Imgs/img_126.png', 0),
(127, 'Piña', 'パイナップル', 'Imgs/img_127.png', 0),
(128, 'Melón', 'メロン', 'Imgs/img_128.png', 0),
(129, 'Papaya', 'パパイヤ', 'Imgs/img_129.png', 0),
(130, 'Mango', 'マンゴー', 'Imgs/img_130.png', 0),
(131, 'Lechuga', 'レタス', 'Imgs/img_131.png', 0),
(132, 'Col', 'キャベツ', 'Imgs/img_132.png', 0),
(133, 'Papa', 'じゃが(芋,いも)', 'Imgs/img_133.png', 0),
(134, 'Tomate', 'トマト', 'Imgs/img_134.png', 0),
(135, ' Brócoli', 'ブロッコリー', 'Imgs/img_135.png', 0),
(136, 'León', 'ライオン', 'Imgs/img_136.png', 0),
(137, 'Perro', '(犬,いぬ)', 'Imgs/img_137.png', 0),
(138, 'Conejo', '(兎,うさぎ)', 'Imgs/img_138.png', 0),
(139, 'Vaca', '(牛,うし)', 'Imgs/img_139.png', 0),
(140, 'Caballo', '(馬,うま)', 'Imgs/img_140.png', 0),
(141, 'Elefante', '(象,ぞう)', 'Imgs/img_141.png', 0),
(142, 'Koala', 'コアラ', 'Imgs/img_142.png', 0),
(143, 'Tigre', '(虎,とら)', 'Imgs/img_143.png', 0),
(144, 'Gato', '(猫,ねこ)', 'Imgs/img_144.png', 0),
(145, 'Ratón', '(鼠,ねずみ)', 'Imgs/img_145.png', 0),
(146, 'Panda', 'パンダ', 'Imgs/img_146.png', 0),
(147, 'Cerdo', '(豚,ぶた)', 'Imgs/img_147.png', 0),
(148, 'Ardilla', '(栗鼠,りす)', 'Imgs/img_148.png', 0),
(149, 'Gorila', 'ゴリラ', 'Imgs/img_149.png', 0),
(150, 'Biblioteca', '(図書館,としょかん)', 'Imgs/img_150.png', 0),
(151, 'Hospital', '(病院,びょういん)', 'Imgs/img_151.png', 0),
(152, 'Alberca', 'プール', 'Imgs/img_152.png', 0),
(153, 'Estación', '(駅,えき)', 'Imgs/img_153.png', 0),
(154, 'Parque de atracciones', '(遊園地,ゆうえんち)', 'Imgs/img_154.png', 0),
(155, 'Restaurante', 'レストラン', 'Imgs/img_155.png', 0),
(156, 'Banco', '(銀行,ぎんこう)', 'Imgs/img_156.png', 0),
(157, 'Parque', '(公園,こうえん)', 'Imgs/img_157.png', 0),
(158, 'Cafetería', '(喫茶店,きっさてん)', 'Imgs/img_158.png', 0),
(159, 'Tienda departamental', 'デパート', 'Imgs/img_159.png', 0),
(160, 'Panadería', 'パン(屋,や)', 'Imgs/img_160.png', 0),
(161, 'Verdulería', '(八百屋,やおや)', 'Imgs/img_161.png', 0),
(162, 'Pescadería', '(魚屋,さかなや)', 'Imgs/img_162.png', 0),
(163, 'Florería', '(花屋,はなや)', 'Imgs/img_163.png', 0),
(164, 'Supermercado', 'スーパーマーケット', 'Imgs/img_164.png', 0),
(165, 'Oxxo', 'コンビニ', 'Imgs/img_165.png', 0),
(166, 'Bosque', '(森,もり)', 'Imgs/img_166.png', 0),
(167, 'Río', '(川,かわ)', 'Imgs/img_167.png', 0),
(168, 'Cine', '(映画館,えいがかん)', 'Imgs/img_168.png', 0);

--
-- Disparadores `fichas`
--
DELIMITER $$
CREATE TRIGGER `copy` AFTER INSERT ON `fichas` FOR EACH ROW BEGIN
INSERT INTO fichas2(esp,jap,img) values(NEW.esp, NEW.jap, NEW.img);
END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `fichas`
--
ALTER TABLE `fichas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `fichas`
--
ALTER TABLE `fichas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
