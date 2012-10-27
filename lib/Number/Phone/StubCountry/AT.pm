# automatically generated file, don't edit



# Copyright 2011 David Cantrell, derived from data from libphonenumber
# http://code.google.com/p/libphonenumber/
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
package Number::Phone::StubCountry::AT;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121027224531;

my $formatters = [{'pattern' => '(1)(\\d{3,12})','leading_digits' => '1'},{'pattern' => '(5\\d)(\\d{3,5})','leading_digits' => '5[079]'},{'pattern' => '(5\\d)(\\d{3})(\\d{3,4})','leading_digits' => '5[079]'},{'pattern' => '(5\\d)(\\d{4})(\\d{4,7})','leading_digits' => '5[079]'},{'pattern' => '(\\d{3})(\\d{3,10})','leading_digits' => '316|46|51|732|6(?:44|5[0-3579]|[6-9])|7(?:1|[28]0)|[89]'},{'pattern' => '(\\d{4})(\\d{3,9})','leading_digits' => '2|3(?:1[1-578]|[3-8])|4[2378]|5[2-6]|6(?:[12]|4[1-35-9]|5[468])|7(?:2[1-8]|35|4[1-8]|[57-9])'}];
my $validators = {'personal_number' => '','toll_free' => '80[02]\\d{6,10}','pager' => '','mobile' => '6(?:44|5[0-3579]|6[013-9]|[7-9]\\d)\\d{4,10}','voip' => '780\\d{6,10}','fixed_line' => '1\\d{3,12}|(?:2(?:1[467]|2[13-8]|5[2357]|6[1-46-8]|7[1-8]|8[124-7]|9[1458])|3(?:1[1-8]|3[23568]|4[5-7]|5[1378]|6[1-38]|8[3-68])|4(?:2[1-8]|35|63|7[1368]|8[2457])|5(?:12|2[1-8]|3[357]|4[147]|5[12578]|6[37])|6(?:13|2[1-47]|4[1-35-8]|5[468]|62)|7(?:2[1-8]|3[25]|4[13478]|5[68]|6[16-8]|7[1-6]|9[45]))\\d{3,10}','special_rate' => '(8(?:10|2[018])\\d{6,10})|((?:711|9(?:0[01]|3[019]))\\d{6,10})|(5(?:(?:0[1-9]|17)\\d{2,10}|[79]\\d{3,11})|720\\d{6,10})'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (431 => 'Vienna',432142 => 'Gattendorf',432143 => 'Kittsee',432144 => 'Deutsch\ Jahrndorf',432145 => 'Prellenkirchen',432146 => 'Nickelsdorf',432147 => 'Zurndorf',432160 => 'Jois',432162 => 'Bruck\ an\ der\ Leitha',432163 => 'Petronell\-Carnuntum',432164 => 'Rohrau',432165 => 'Hainburg\ a\.d\.\ Donau',432166 => 'Parndorf',432167 => 'Neusiedl\ am\ See',432168 => 'Mannersdorf\ am\ Leithagebirge',432169 => 'Trautmannsdorf\ an\ der\ Leitha',432172 => 'Frauenkirchen',432173 => 'Gols',432174 => 'Wallern\ im\ Burgenland',432175 => 'Apetlon',432176 => 'Tadten',432177 => 'Podersdorf\ am\ See',432212 => 'Orth\ an\ der\ Donau',432213 => 'Lassee',432214 => 'Kopfstetten',432215 => 'Probstdorf',432216 => 'Leopoldsdorf\ im\ Marchfelde',432230 => 'Schwadorf',432231 => 'Purkersdorf',432232 => 'Fischamend',432233 => 'Pressbaum',432234 => 'Gramatneusiedl',432235 => 'Maria\-Lanzendorf',432236 => 'M\�\�dling',432237 => 'Gaaden',432238 => 'Kaltenleutgeben',432239 => 'Breitenfurt\ bei\ Wien',432242 => 'St\.\ Andr\�\�\-W\�\�rdern',432243 => 'Klosterneuburg',432244 => 'Langenzersdorf',432245 => 'Wolkersdorf\ im\ Weinviertel',432246 => 'Gerasdorf\ bei\ Wien',432247 => 'Deutsch\-Wagram',432248 => 'Markgrafneusiedl',432249 => 'Gross\-Enzersdorf',432252 => 'Baden',432253 => 'Oberwaltersdorf',432254 => 'Ebreichsdorf',432255 => 'Deutsch\ Brodersdorf',432256 => 'Leobersdorf',432257 => 'Klausen\-Leopoldsdorf',432258 => 'Alland',432259 => 'M\�\�nchendorf',432262 => 'Korneuburg',432263 => 'Grossrussbach',432264 => 'R\�\�ckersdorf\,\ Harmannsdorf',432265 => 'Hausleiten',432266 => 'Stockerau',432267 => 'Sierndorf',432268 => 'Grossmugl',432269 => 'Niederfellabrunn',432271 => 'Ried\ am\ Riederberg',432272 => 'Tulln\ an\ der\ Donau',432273 => 'Tulbing',432274 => 'Sieghartskirchen',432275 => 'Atzenbrugg',432276 => 'Reidling',432277 => 'Zwentendorf',432278 => 'Absdorf',432279 => 'Kirchberg\ am\ Wagram',432282 => 'G\�\�nserndorf',432283 => 'Angern\ an\ der\ March',432284 => 'Oberweiden',432285 => 'Marchegg',432286 => 'Obersiebenbrunn',432287 => 'Strasshof\ an\ der\ Nordbahn',432288 => 'Auersthal',432289 => 'Matzen',432522 => 'Laa\ an\ der\ Thaya',432523 => 'Kirchstetten\,\ Neudorf\ bei\ Staatz',432524 => 'Kautendorf',432525 => 'Gnadendorf',432526 => 'Stronsdorf',432527 => 'Wulzeshofen',432532 => 'Zistersdorf',432533 => 'Neusiedl\ an\ der\ Zaya',432534 => 'Niedersulz',432535 => 'Hohenau\ an\ der\ March',432536 => 'Dr\�\�sing',432538 => 'Velm\-G\�\�tzendorf',432552 => 'Poysdorf',432554 => 'St\�\�tzenhofen',432555 => 'Herrnbaumgarten',432556 => 'Grosskrut',432557 => 'Bernhardsthal',432572 => 'Mistelbach',432573 => 'Wilfersdorf',432574 => 'Gaweinstal',432575 => 'Ladendorf',432576 => 'Ernstbrunn',432577 => 'Asparn\ an\ der\ Zaya',432610 => 'Horitschon',432611 => 'Mannersdorf\ an\ der\ Rabnitz',432612 => 'Oberpullendorf',432613 => 'Deutschkreutz',432614 => 'Kleinwarasdorf',432615 => 'Lutzmannsburg',432616 => 'Lockenhaus',432617 => 'Drassmarkt',432618 => 'Markt\ St\.\ Martin',432619 => 'Lackendorf',432620 => 'Willendorf',432621 => 'Sieggraben',432622 => 'Wiener\ Neustadt',432623 => 'Pottendorf',432624 => 'Ebenfurth',432625 => 'Bad\ Sauerbrunn',432626 => 'Mattersburg',432627 => 'Pitten',432628 => 'Felixdorf',432629 => 'Warth\,\ Lower\ Austria',432630 => 'Ternitz',432631 => 'P\�\�ttsching',432632 => 'Pernitz',432633 => 'Markt\ Piesting',432634 => 'Gutenstein',432635 => 'Neunkirchen',432636 => 'Puchberg\ am\ Schneeberg',432637 => 'Gr\�\�nbach\ am\ Schneeberg',432638 => 'Winzendorf\-Muthmannsdorf',432639 => 'Bad\ Fischau',432641 => 'Kirchberg\ am\ Wechsel',432642 => 'Aspangberg\-St\.\ Peter',432643 => 'Lichtenegg',432644 => 'Grimmenstein',432645 => 'Wiesmath',432646 => 'Kirchschlag\ in\ der\ Buckligen\ Welt',432647 => 'Krumbach\,\ Lower\ Austria',432648 => 'Hochneukirchen',432649 => 'M\�\�nichkirchen',432662 => 'Gloggnitz',432663 => 'Schottwien',432664 => 'Semmering',432665 => 'Prein\ an\ der\ Rax',432666 => 'Reichenau',432667 => 'Schwarzau\ im\ Gebirge',432672 => 'Berndorf',432673 => 'Altenmarkt\ an\ der\ Triesting',432674 => 'Weissenbach\ an\ der\ Triesting',432680 => 'St\.\ Margarethen\ im\ Burgenland',432682 => 'Eisenstadt',432683 => 'Purbach\ am\ Neusiedler\ See',432684 => 'Sch\�\�tzen\ am\ Gebirge',432685 => 'Rust',432686 => 'Drassburg',432687 => 'Siegendorf',432688 => 'Steinbrunn',432689 => 'Hornstein',432711 => 'D\�\�rnstein',432712 => 'Aggsbach',432713 => 'Spitz',432714 => 'Rossatz',432715 => 'Weissenkirchen\ in\ der\ Wachau',432716 => 'Gf\�\�hl',432717 => 'Unter\-Meisling',432718 => 'Lichtenau\ im\ Waldviertel',432719 => 'Dross',432722 => 'Kirchberg\ an\ der\ Pielach',432723 => 'Rabenstein\ an\ der\ Pielach',432724 => 'Schwarzenbach\ an\ der\ Pielach',432725 => 'Frankenfels',432726 => 'Puchenstuben',432728 => 'Wienerbruck',432731 => 'Idolsberg',432732 => 'Krems\ an\ der\ Donau',432733 => 'Sch\�\�nberg\ am\ Kamp',432734 => 'Langenlois',432735 => 'Hadersdorf\ am\ Kamp',432736 => 'Paudorf',432738 => 'Fels\ am\ Wagram',432739 => 'Tiefenfucha',432741 => 'Flinsbach',432742 => 'St\.\ P\�\�lten',432743 => 'B\�\�heimkirchen',432744 => 'Kasten\ bei\ B\�\�heimkirchen',432745 => 'Pyhra',432746 => 'Wilhelmsburg',432747 => 'Ober\-Grafendorf',432748 => 'Kilb',432749 => 'Prinzersdorf',432752 => 'Melk',432753 => 'Gansbach',432754 => 'Loosdorf',432755 => 'Mank',432756 => 'St\.\ Leonhard\ am\ Forst',432757 => 'P\�\�chlarn',432758 => 'P\�\�ggstall',432762 => 'Lilienfeld',432763 => 'St\.\ Veit\ an\ der\ G\�\�lsen',432764 => 'Hainfeld',432765 => 'Kaumberg',432766 => 'Kleinzell',432767 => 'Hohenberg',432768 => 'St\.\ Aegyd\ am\ Neuwalde',432769 => 'T\�\�rnitz',432772 => 'Neulengbach',432773 => 'Eichgraben',432774 => 'Innermanzing',432782 => 'Herzogenburg',432783 => 'Traismauer',432784 => 'Perschling',432786 => 'Oberw\�\�lbling',432812 => 'Gross\ Gerungs',432813 => 'Arbesbach',432814 => 'Langschlag',432815 => 'Grosssch\�\�nau',432816 => 'Karlstift',432822 => 'Zwettl\,\ Lower\ Austria',432823 => 'Grossglobnitz',432824 => 'Allentsteig',432825 => 'G\�\�pfritz\ an\ der\ Wild',432826 => 'Rastenfeld',432827 => 'Sch\�\�nbach',432828 => 'Rappottenstein',432829 => 'Schweiggers',432841 => 'Vitis',432842 => 'Waidhofen\ an\ der\ Thaya',432843 => 'Dobersberg',432846 => 'Raabs\ an\ der\ Thaya',432847 => 'Gross\-Siegharts',432848 => 'Pfaffenschlag\ bei\ Waidhofen',432849 => 'Schwarzenau',432852 => 'Gm\�\�nd',432853 => 'Schrems',432854 => 'Kirchberg\ am\ Walde',432855 => 'Waldenstein',432856 => 'Weitra',432857 => 'Bad\ Grosspertholz',432858 => 'Moorbad\ Harbach',432859 => 'Brand\-Nagelberg',432862 => 'Heidenreichstein',432863 => 'Eggern',432864 => 'Kautzen',432865 => 'Litschau',432872 => 'Ottenschlag',432873 => 'Kottes',432874 => 'Martinsberg',432875 => 'Grafenschlag',432876 => 'Els',432877 => 'Grainbrunn',432878 => 'Traunstein',432912 => 'Geras',432913 => 'H\�\�tzelsdorf',432914 => 'Japons',432915 => 'Drosendorf\-Zissersdorf',432916 => 'Riegersburg\,\ Hardegg',432942 => 'Retz',432943 => 'Obritz',432944 => 'Haugsdorf',432945 => 'Zellerndorf',432946 => 'Pulkau',432947 => 'Theras',432948 => 'Weitersfeld',432949 => 'Niederfladnitz',432951 => 'Guntersdorf',432952 => 'Hollabrunn',432953 => 'Nappersdorf',432954 => 'G\�\�llersdorf',432955 => 'Grossweikersdorf',432956 => 'Ziersdorf',432957 => 'Hohenwarth',432958 => 'Maissau',432959 => 'Sitzendorf\ an\ der\ Schmida',432982 => 'Horn',432983 => 'Sigmundsherberg',432984 => 'Eggenburg',432985 => 'Gars\ am\ Kamp',432986 => 'Irnfritz',432987 => 'St\.\ Leonhard\ am\ Hornerwald',432988 => 'Neup\�\�lla',432989 => 'Brunn\ an\ der\ Wild',433112 => 'Gleisdorf',433113 => 'Pischelsdorf\ in\ der\ Steiermark',433114 => 'Markt\ Hartmannsdorf',433115 => 'Studenzen',433116 => 'Kirchbach\ in\ Steiermark',433117 => 'Eggersdorf\ bei\ Graz',433118 => 'Sinabelkirchen',433119 => 'St\.\ Marein\ bei\ Graz',433123 => 'St\.\ Oswald\ bei\ Plankenwarth',433124 => 'Gratkorn',433125 => '\�\�belbach',433126 => 'Frohnleiten',433127 => 'Peggau',433132 => 'Kumberg',433133 => 'Nestelbach',433134 => 'Heiligenkreuz\ am\ Waasen',433135 => 'Kalsdorf\ bei\ Graz',433136 => 'Dobl',433137 => 'S\�\�ding',433140 => 'St\.\ Martin\ am\ W\�\�llmissberg',433141 => 'Hirschegg',433142 => 'Voitsberg',433143 => 'Krottendorf',433144 => 'K\�\�flach',433145 => 'Edelschrott',433146 => 'Modriach',433147 => 'Salla',433148 => 'Kainach\ bei\ Voitsberg',433149 => 'Geistthal',433150 => 'Paldau',433151 => 'Gnas',433152 => 'Feldbach',433153 => 'Riegersburg',433155 => 'Fehring',433157 => 'Kapfenstein',433158 => 'St\.\ Anna\ am\ Aigen',433159 => 'Bad\ Gleichenberg',43316 => 'Graz',433170 => 'Fischbach',433171 => 'Gasen',433172 => 'Weiz',433173 => 'Ratten',433174 => 'Birkfeld',433175 => 'Anger',433176 => 'Stubenberg',433177 => 'Puch\ bei\ Weiz',433178 => 'St\.\ Ruprecht\ an\ der\ Raab',433179 => 'Passail',433182 => 'Wildon',433183 => 'St\.\ Georgen\ an\ der\ Stiefing',433184 => 'Wolfsberg\ im\ Schwarzautal',433185 => 'Preding',433322 => 'G\�\�ssing',433323 => 'Eberau',433324 => 'Strem',433325 => 'Heiligenkreuz\ im\ Lafnitztal',433326 => 'Stegersbach',433327 => 'St\.\ Michael\ im\ Burgenland',433328 => 'Kukmirn',433329 => 'Jennersdorf',433331 => 'St\.\ Lorenzen\ am\ Wechsel',433332 => 'Hartberg',433333 => 'Sebersdorf',433334 => 'Kaindorf',433335 => 'P\�\�llau',433336 => 'Waldbach',433337 => 'Vorau',433338 => 'Lafnitz',433339 => 'Friedberg',433352 => 'Oberwart',433353 => 'Obersch\�\�tzen',433354 => 'Bernstein',433355 => 'Stadtschlaining',433356 => 'Markt\ Allhau',433357 => 'Pinkafeld',433358 => 'Litzelsdorf',433359 => 'Loipersdorf\-Kitzladen',433362 => 'Grosspetersdorf',433363 => 'Rechnitz',433364 => 'Hannersdorf',433365 => 'Deutsch\ Sch\�\�tzen\-Eisenberg',433366 => 'Kohfidisch',433382 => 'F\�\�rstenfeld',433383 => 'Burgau',433385 => 'Ilz',433386 => 'Grosssteinbach',433387 => 'S\�\�chau',433452 => 'Leibnitz',433453 => 'Ehrenhausen',433454 => 'Leutschach',433455 => 'Arnfels',433456 => 'Fresing',433457 => 'Gleinst\�\�tten',433460 => 'Soboth',433461 => 'Trah\�\�tten',433462 => 'Deutschlandsberg',433463 => 'Stainz',433464 => 'Gross\ St\.\ Florian',433465 => 'P\�\�lfing\-Brunn',433466 => 'Eibiswald',433467 => 'Schwanberg',433468 => 'St\.\ Oswald\ ob\ Eibiswald',433469 => 'St\.\ Oswald\ im\ Freiland',433472 => 'Mureck',433473 => 'Straden',433474 => 'Deutsch\ Goritz',433475 => 'H\�\�rth',433476 => 'Bad\ Radkersburg',433477 => 'St\.\ Peter\ am\ Ottersbach',433512 => 'Knittelfeld',433513 => 'Bischoffeld',433514 => 'Seckau',433515 => 'St\.\ Lorenzen\ bei\ Knittelfeld',433516 => 'Kleinlobming',433532 => 'Murau',433533 => 'Turrach',433534 => 'Stadl\ an\ der\ Mur',433535 => 'Krakaudorf',433536 => 'St\.\ Peter\ am\ Kammersberg',433537 => 'St\.\ Georgen\ ob\ Murau',433571 => 'M\�\�derbrugg',433572 => 'Judenburg',433573 => 'Fohnsdorf',433574 => 'Pusterwald',433575 => 'St\.\ Johann\ am\ Tauern',433576 => 'Bretstein',433577 => 'Zeltweg',433578 => 'Obdach',433579 => 'P\�\�ls',433581 => 'Oberw\�\�lz',433582 => 'Scheifling',433583 => 'Unzmarkt',433584 => 'Neumarkt\ in\ Steiermark',433585 => 'St\.\ Lambrecht',433586 => 'M\�\�hlen',433587 => 'Sch\�\�nberg\-Lachtal',433588 => 'Katsch\ an\ der\ Mur',433611 => 'Johnsbach',433612 => 'Liezen',433613 => 'Admont',433614 => 'Rottenmann',433615 => 'Trieben',433616 => 'Selzthal',433617 => 'Gaishorn\ am\ See',433618 => 'Hohentauern',433619 => 'Oppenberg',433622 => 'Bad\ Aussee',433623 => 'Bad\ Mitterndorf',433624 => 'Pichl\-Kainisch',433631 => 'Unterlaussa',433632 => 'St\.\ Gallen',433633 => 'Landl',433634 => 'Hieflau',433635 => 'Radmer',433636 => 'Wildalpen',433637 => 'Gams\ bei\ Hieflau',433638 => 'Palfau',433680 => 'Donnersbachwald',433682 => 'Stainach',433683 => 'Donnersbach',433684 => 'St\.\ Martin\ am\ Grimming',433685 => 'Gr\�\�bming',433686 => 'Haus',433687 => 'Schladming',433688 => 'Tauplitz',433689 => 'St\.\ Nikolai\ im\ S\�\�lktal',433832 => 'Kraubath\ an\ der\ Mur',433833 => 'Traboch',433834 => 'Wald\ am\ Schoberpass',433842 => 'Leoben',433843 => 'St\.\ Michael\ in\ Obersteiermark',433844 => 'Kammern\ im\ Liesingtal',433845 => 'Mautern\ in\ Steiermark',433846 => 'Kalwang',433847 => 'Trofaiach',433848 => 'Eisenerz',433849 => 'Vordernberg',433852 => 'M\�\�rzzuschlag',433853 => 'Spital\ am\ Semmering',433854 => 'Langenwang',433855 => 'Krieglach',433856 => 'Veitsch',433857 => 'Neuberg\ an\ der\ M\�\�rz',433858 => 'Mitterdorf\ im\ M\�\�rztal',433859 => 'M\�\�rzsteg',433861 => 'Aflenz',433862 => 'Bruck\ an\ der\ Mur',433863 => 'Turnau',433864 => 'St\.\ Marein\ im\ M\�\�rztal',433865 => 'Kindberg',433866 => 'Breitenau\ am\ Hochlantsch',433867 => 'Pernegg\ an\ der\ Mur',433868 => 'Trag\�\�ss',433869 => 'St\.\ Katharein\ an\ der\ Laming',433882 => 'Mariazell',433883 => 'Terz',433884 => 'Wegscheid',433885 => 'Greith',433886 => 'Weichselboden',434212 => 'St\.\ Veit\ an\ der\ Glan',434213 => 'Launsdorf',434214 => 'Br\�\�ckl',434215 => 'Liebenfels',434220 => 'K\�\�ttmannsdorf',434221 => 'Gallizien',434223 => 'Maria\ Saal',434224 => 'Pischeldorf',434225 => 'Grafenstein',434226 => 'St\.\ Margareten\ im\ Rosental',434227 => 'Ferlach',434228 => 'Feistritz\ im\ Rosental',434229 => 'Krumpendorf\ am\ W\�\�rther\ See',434230 => 'Globasnitz',434231 => 'Mittertrixen',434232 => 'V\�\�lkermarkt',434233 => 'Griffen',434234 => 'Ruden',434235 => 'Bleiburg',434236 => 'Eberndorf',434237 => 'Miklauzhof',434238 => 'Eisenkappel\-Vellach',434239 => 'St\.\ Kanzian\ am\ Klopeiner\ See',434240 => 'Bad\ Kleinkirchheim',434242 => 'Villach',434243 => 'Bodensdorf',434244 => 'Bad\ Bleiberg',434245 => 'Feistritz\ an\ der\ Drau',434246 => 'Radenthein',434247 => 'Afritz',434248 => 'Treffen',434252 => 'Wernberg',434253 => 'St\.\ Jakob\ im\ Rosental',434254 => 'Faak\ am\ See',434255 => 'Arnoldstein',434256 => 'N\�\�tsch\ im\ Gailtal',434257 => 'F\�\�rnitz',434258 => 'Gummern',434262 => 'Treibach',434263 => 'H\�\�ttenberg',434264 => 'Klein\ St\.\ Paul',434265 => 'Weitensfeld\ im\ Gurktal',434266 => 'Strassburg',434267 => 'Metnitz',434268 => 'Friesach',434269 => 'Flattnitz',434271 => 'Steuerberg',434272 => 'P\�\�rtschach\ am\ W\�\�rther\ See',434273 => 'Reifnitz',434274 => 'Velden\ am\ W\�\�rther\ See',434275 => 'Ebene\ Reichenau',434276 => 'Feldkirchen\ in\ K\�\�rnten',434277 => 'Glanegg',434278 => 'Gnesau',434279 => 'Sirnitz',434282 => 'Hermagor',434283 => 'St\.\ Stefan\ im\ Gailtal',434284 => 'Kirchbach',434285 => 'Tr\�\�polach',434286 => 'Weissbriach',434350 => 'Bad\ St\.\ Leonhard\ im\ Lavanttal',434352 => 'Wolfsberg',434353 => 'Prebl',434354 => 'Preitenegg',434355 => 'Gemmersdorf',434356 => 'Lavam\�\�nd',434357 => 'St\.\ Paul\ im\ Lavanttal',434358 => 'St\.\ Andr\�\�',434359 => 'Reichenfels',43463 => 'Klagenfurt',434710 => 'Oberdrauburg',434712 => 'Greifenburg',434713 => 'Techendorf',434714 => 'Dellach\ im\ Drautal',434715 => 'K\�\�tschach\-Mauthen',434716 => 'Lesachtal',434717 => 'Steinfeld',434718 => 'Dellach',434732 => 'Gm\�\�nd\ in\ K\�\�rnten',434733 => 'Malta',434734 => 'Rennweg',434735 => 'Kremsbr\�\�cke',434736 => 'Innerkrems',434761 => 'Stockenboi',434762 => 'Spittal\ an\ der\ Drau',434766 => 'Millstatt',434767 => 'Rothenthurn',434768 => 'Kleblach\-Lind',434769 => 'M\�\�llbr\�\�cke',434782 => 'Obervellach',434783 => 'Reisseck',434784 => 'Mallnitz',434785 => 'Ausserfragant',434822 => 'Winklern',434823 => 'Tresdorf\,\ Rangersdorf',434824 => 'Heiligenblut',434825 => 'Grosskirchheim',434826 => 'M\�\�rtschach',434842 => 'Sillian',434843 => 'Ausservillgraten',434846 => 'Abfaltersbach',434847 => 'Obertilliach',434848 => 'Kartitsch',434852 => 'Lienz',434853 => 'Ainet',434855 => 'Assling',434858 => 'Nikolsdorf',434872 => 'Huben',434873 => 'St\.\ Jakob\ in\ Defereggen',434874 => 'Virgen',434875 => 'Matrei\ in\ Osttirol',434876 => 'Kals\ am\ Grossglockner',434877 => 'Pr\�\�graten\ am\ Grossvenediger',434879 => 'St\.\ Veit\ in\ Defereggen',43512 => 'Innsbruck',435212 => 'Seefeld\ in\ Tirol',435213 => 'Scharnitz',435214 => 'Leutasch',435223 => 'Hall\ in\ Tirol',435224 => 'Wattens',435225 => 'Fulpmes',435226 => 'Neustift\ im\ Stubaital',435230 => 'Sellrain',435232 => 'Kematen\ in\ Tirol',435234 => 'Axams',435236 => 'Gries\ im\ Sellrain',435238 => 'Zirl',435239 => 'K\�\�htai',435242 => 'Schwaz',435243 => 'Maurach',435244 => 'Jenbach',435245 => 'Hinterriss',435246 => 'Achenkirch',435248 => 'Steinberg\ am\ Rofan',435252 => 'Oetz',435253 => 'L\�\�ngenfeld',435254 => 'S\�\�lden',435255 => 'Umhausen',435256 => 'Untergurgl',435262 => 'Telfs',435263 => 'Silz',435264 => 'Mieming',435265 => 'Nassereith',435266 => '\�\�tztal\-Bahnhof',435272 => 'Steinach\ am\ Brenner',435273 => 'Matrei\ am\ Brenner',435274 => 'Gries\ am\ Brenner',435275 => 'Trins',435276 => 'Gschnitz',435278 => 'Navis',435279 => 'St\.\ Jodok\ am\ Brenner',435280 => 'Hochf\�\�gen',435282 => 'Zell\ am\ Ziller',435283 => 'Kaltenbach',435284 => 'Gerlos',435285 => 'Mayrhofen',435286 => 'Ginzling',435287 => 'Tux',435288 => 'F\�\�gen',435289 => 'H\�\�usling',435331 => 'Brandenberg',435332 => 'W\�\�rgl',435333 => 'S\�\�ll',435334 => 'Westendorf',435335 => 'Hopfgarten\ im\ Brixental',435336 => 'Alpbach',435337 => 'Brixlegg',435338 => 'Kundl',435339 => 'Wildsch\�\�nau',435352 => 'St\.\ Johann\ in\ Tirol',435353 => 'Waidring',435354 => 'Fieberbrunn',435355 => 'Jochberg',435356 => 'Kitzb\�\�hel',435357 => 'Kirchberg\ in\ Tirol',435358 => 'Ellmau',435359 => 'Hochfilzen',435372 => 'Kufstein',435373 => 'Ebbs',435374 => 'Walchsee',435375 => 'K\�\�ssen',435376 => 'Thiersee',435412 => 'Imst',435413 => 'St\.\ Leonhard\ im\ Pitztal',435414 => 'Wenns',435417 => 'Roppen',435418 => 'Sch\�\�nwies',435441 => 'See',435442 => 'Landeck',435443 => 'Galt\�\�r',435444 => 'Ischgl',435445 => 'Kappl',435446 => 'St\.\ Anton\ am\ Arlberg',435447 => 'Flirsch',435448 => 'Pettneu\ am\ Arlberg',435449 => 'Fliess',435472 => 'Prutz',435473 => 'Nauders',435474 => 'Pfunds',435475 => 'Feichten',435476 => 'Serfaus',435477 => 'T\�\�sens',435510 => 'Dam\�\�ls',435512 => 'Egg',435513 => 'Hittisau',435514 => 'Bezau',435515 => 'Au',435516 => 'Doren',435517 => 'Riezlern',435518 => 'Mellau',435519 => 'Schr\�\�cken',435522 => 'Feldkirch',435523 => 'G\�\�tzis',435524 => 'Satteins',435525 => 'Nenzing',435526 => 'Laterns',435550 => 'Th\�\�ringen',435552 => 'Bludenz',435553 => 'Raggal',435554 => 'Sonntag',435556 => 'Schruns',435557 => 'St\.\ Gallenkirch',435558 => 'Gaschurn',435559 => 'Brand',435572 => 'Dornbirn',435573 => 'H\�\�rbranz',435574 => 'Bregenz',435575 => 'Langen\ bei\ Bregenz',435576 => 'Hohenems',435577 => 'Lustenau',435578 => 'H\�\�chst',435579 => 'Alberschwende',435582 => 'Kl\�\�sterle',435583 => 'Lech',435585 => 'Dalaas',435632 => 'Stanzach',435633 => 'H\�\�gerau',435634 => 'Elbigenalp',435635 => 'Elmen',435672 => 'Reutte',435673 => 'Ehrwald',435674 => 'Bichlbach',435675 => 'Tannheim',435676 => 'Jungholz',435677 => 'Vils',435678 => 'Weissenbach\ am\ Lech',436131 => 'Obertraun',436132 => 'Bad\ Ischl',436133 => 'Ebensee',436134 => 'Hallstatt',436135 => 'Bad\ Goisern',436136 => 'Gosau',436137 => 'Strobl',436138 => 'St\.\ Wolfgang\ im\ Salzkammergut',436212 => 'Seekirchen\ am\ Wallersee',436213 => 'Oberhofen\ am\ Irrsee',436214 => 'Henndorf\ am\ Wallersee',436215 => 'Strasswalchen',436216 => 'Neumarkt\ am\ Wallersee',436217 => 'Mattsee',436219 => 'Obertrum\ am\ See',436221 => 'Koppl',436223 => 'Anthering',436224 => 'Hintersee',436225 => 'Eugendorf',436226 => 'Fuschl\ am\ See',436227 => 'St\.\ Gilgen',436228 => 'Faistenau',436229 => 'Hof\ bei\ Salzburg',436232 => 'Mondsee',436233 => 'Oberwang',436234 => 'Zell\ am\ Moos',436235 => 'Thalgau',436240 => 'Krispl',436241 => 'St\.\ Koloman',436242 => 'Russbach\ am\ Pass\ Gsch\�\�tt',436243 => 'Abtenau',436244 => 'Golling\ an\ der\ Salzach',436245 => 'Hallein',436246 => 'Gr\�\�dig',436247 => 'Grossgmain',436272 => 'Oberndorf\ bei\ Salzburg',436274 => 'Lamprechtshausen',436276 => 'Nussdorf\ am\ Haunsberg',436277 => 'St\.\ Pantaleon',436278 => 'Ostermiething',436412 => 'St\.\ Johann\ im\ Pongau',436413 => 'Wagrain',436414 => 'Grossarl',436415 => 'Schwarzach\ im\ Pongau',436416 => 'Lend',436417 => 'H\�\�ttschlag',436418 => 'Kleinarl',436432 => 'Bad\ Hofgastein',436433 => 'Dorfgastein',436434 => 'Bad\ Gastein',436452 => 'Radstadt',436453 => 'Filzmoos',436454 => 'Mandling',436455 => 'Untertauern',436456 => 'Obertauern',436457 => 'Flachau',436458 => 'H\�\�ttau',436461 => 'Dienten\ am\ Hochk\�\�nig',436462 => 'Bischofshofen',436463 => 'Annaberg\-Lung\�\�tz',436466 => 'Werfenweng',436467 => 'M\�\�hlbach\ am\ Hochk\�\�nig',436468 => 'Werfen',436470 => 'Atzmannsdorf',436471 => 'Tweng',436472 => 'Mauterndorf',436473 => 'Mariapfarr',436474 => 'Tamsweg',436475 => 'Ramingstein',436476 => 'St\.\ Margarethen\ im\ Lungau',436477 => 'St\.\ Michael\ im\ Lungau',436478 => 'Zederhaus',436479 => 'Muhr',436483 => 'G\�\�riach',436484 => 'Lessach',436541 => 'Saalbach',436542 => 'Zell\ am\ See',436543 => 'Taxenbach',436544 => 'Rauris',436545 => 'Bruck\ an\ der\ Grossglocknerstrasse',436546 => 'Fusch\ an\ der\ Grossglocknerstrasse',436547 => 'Kaprun',436548 => 'Niedernsill',436549 => 'Piesendorf',436562 => 'Mittersill',436563 => 'Uttendorf',436564 => 'Krimml',436565 => 'Neukirchen\ am\ Grossvenediger',436566 => 'Bramberg\ am\ Wildkogel',436582 => 'Saalfelden\ am\ Steinernen\ Meer',436583 => 'Leogang',436584 => 'Maria\ Alm\ am\ Steinernen\ Meer',436588 => 'Lofer',436589 => 'Unken',43662 => 'Salzburg',437211 => 'Reichenau\ im\ M\�\�hlkreis',437212 => 'Zwettl\ an\ der\ Rodl',437213 => 'Bad\ Leonfelden',437214 => 'Reichenthal',437215 => 'Hellmons\�\�dt',437216 => 'Helfenberg',437217 => 'St\.\ Veit\ im\ M\�\�hlkreis',437218 => 'Grosstraberg',437219 => 'Vorderweissenbach',437221 => 'H\�\�rsching',437223 => 'Enns',437224 => 'St\.\ Florian',437225 => 'Hargelsberg',437226 => 'Wilhering',437227 => 'Neuhofen\ an\ der\ Krems',437228 => 'Kematen\ an\ der\ Krems',437229 => 'Traun',437230 => 'Altenberg\ bei\ Linz',437231 => 'Herzogsdorf',437232 => 'St\.\ Martin\ im\ M\�\�hlkreis',437233 => 'Feldkirchen\ an\ der\ Donau',437234 => 'Ottensheim',437235 => 'Gallneukirchen',437236 => 'Pregarten',437237 => 'St\.\ Georgen\ an\ der\ Gusen',437238 => 'Mauthausen',437239 => 'Lichtenberg',437240 => 'Sipbachzell',437241 => 'Steinerkirchen\ an\ der\ Traun',437242 => 'Wels',437243 => 'Marchtrenk',437244 => 'Sattledt',437245 => 'Lambach',437246 => 'Gunskirchen',437247 => 'Kematen\ am\ Innbach',437248 => 'Grieskirchen',437249 => 'Bad\ Schallerbach',437250 => 'Maria\ Neustift',437251 => 'Schiedlberg',437252 => 'Steyr',437253 => 'Wolfern',437254 => 'Grossraming',437255 => 'Losenstein',437256 => 'Ternberg',437257 => 'Gr\�\�nburg',437258 => 'Bad\ Hall',437259 => 'Sierning',437260 => 'Waldhausen',437261 => 'Sch\�\�nau\ im\ M\�\�hlkreis',437262 => 'Perg',437263 => 'Bad\ Zell',437264 => 'Windhaag\ bei\ Perg',437265 => 'Pabneukirchen',437266 => 'Bad\ Kreuzen',437267 => 'M\�\�nchdorf',437268 => 'Grein',437269 => 'Baumgartenberg',437272 => 'Eferding',437273 => 'Aschach\ an\ der\ Donau',437274 => 'Alkoven',437276 => 'Peuerbach',437277 => 'Waizenkirchen',437278 => 'Neukirchen\ am\ Walde',437279 => 'Haibach\ ob\ der\ Donau',437280 => 'Schwarzenberg\ am\ B\�\�hmerwald',437281 => 'Aigen\ im\ M\�\�hlkreis',437282 => 'Neufelden',437283 => 'Sarleinsbach',437284 => 'Oberkappel',437285 => 'Hofkirchen\ im\ M\�\�hlkreis',437286 => 'Lembach\ im\ M\�\�hlkreis',437287 => 'Peilstein\ im\ M\�\�hlviertel',437288 => 'Ulrichsberg',437289 => 'Rohrbach\ in\ Ober\�\�sterreich',43732 => 'Linz',437353 => 'Gaflenz',437355 => 'Weyer',437357 => 'Kleinreifling',437412 => 'Ybbs\ an\ der\ Donau',437413 => 'Marbach\ an\ der\ Donau',437414 => 'Weins\-Isperdorf',437415 => 'Altenmarkt\,\ Yspertal',437416 => 'Wieselburg',437432 => 'Strengberg',437433 => 'Wallsee',437434 => 'Haag',437435 => 'St\.\ Valentin',437442 => 'Waidhofen\ an\ der\ Ybbs',437443 => 'Ybbsitz',437444 => 'Opponitz',437445 => 'Hollenstein\ an\ der\ Ybbs',437448 => 'Kematen\ an\ der\ Ybbs',437471 => 'Neustadtl\ an\ der\ Donau',437472 => 'Amstetten',437473 => 'Blindenmarkt',437474 => 'Euratsfeld',437475 => 'Hausmening\,\ Neuhofen\ an\ der\ Ybbs',437476 => 'Aschbach\-Markt',437477 => 'St\.\ Peter\ in\ der\ Au',437478 => 'Oed\-Oehling',437479 => 'Ardagger',437480 => 'Langau\,\ Gaming',437482 => 'Scheibbs',437483 => 'Oberndorf\ an\ der\ Melk',437484 => 'G\�\�stling\ an\ der\ Ybbs',437485 => 'Gaming',437486 => 'Lunz\ am\ See',437487 => 'Gresten',437488 => 'Steinakirchen\ am\ Forst',437489 => 'Purgstall\ an\ der\ Erlauf',437562 => 'Windischgarsten',437563 => 'Spital\ am\ Pyhrn',437564 => 'Hinterstoder',437565 => 'St\.\ Pankraz',437566 => 'Rosenau\ am\ Hengstpass',437582 => 'Kirchdorf\ an\ der\ Krems',437583 => 'Kremsm\�\�nster',437584 => 'Molln',437585 => 'Klaus\ an\ der\ Pyhrnbahn',437586 => 'Pettenbach',437587 => 'Wartberg\ an\ der\ Krems',437588 => 'Ried\ im\ Traunkreis',437612 => 'Gmunden',437613 => 'Laakirchen',437614 => 'Vorchdorf',437615 => 'Scharnstein',437616 => 'Gr\�\�nau\ im\ Almtal',437617 => 'Traunkirchen',437618 => 'Neukirchen\,\ Altm\�\�nster',437619 => 'Kirchham',437662 => 'Seewalchen\ am\ Attersee',437663 => 'Steinbach\ am\ Attersee',437664 => 'Weyregg\ am\ Attersee',437665 => 'Unterach\ am\ Attersee',437666 => 'Attersee',437667 => 'St\.\ Georgen\ im\ Attergau',437672 => 'V\�\�cklabruck',437673 => 'Schwanenstadt',437674 => 'Attnang\-Puchheim',437675 => 'Ampflwang\ im\ Hausruckwald',437676 => 'Ottnang\ am\ Hausruck',437682 => 'V\�\�cklamarkt',437683 => 'Frankenburg\ am\ Hausruck',437684 => 'Frankenmarkt',437711 => 'Suben',437712 => 'Sch\�\�rding',437713 => 'Schardenberg',437714 => 'Esternberg',437716 => 'M\�\�nzkirchen',437717 => 'St\.\ Aegidi',437718 => 'Waldkirchen\ am\ Wesen',437719 => 'Taufkirchen\ an\ der\ Pram',437722 => 'Braunau\ am\ Inn',437723 => 'Altheim',437724 => 'Mauerkirchen',437727 => 'Ach',437728 => 'Schwand\ im\ Innkreis',437729 => 'Neukirchen\ an\ der\ Enknach',437732 => 'Haag\ am\ Hausruck',437733 => 'Neumarkt\ im\ Hausruckkreis',437734 => 'Hofkirchen\ an\ der\ Trattnach',437735 => 'Gaspoltshofen',437736 => 'Pram',437742 => 'Mattighofen',437743 => 'Maria\ Schmolln',437744 => 'Munderfing',437745 => 'Lochen',437746 => 'Friedburg',437747 => 'Kirchberg\ bei\ Mattighofen',437748 => 'Eggelsberg',437750 => 'Andrichsfurt',437751 => 'St\.\ Martin\ im\ Innkreis',437752 => 'Ried\ im\ Innkreis',437753 => 'Eberschwang',437754 => 'Waldzell',437755 => 'Mettmach',437757 => 'Gurten',437758 => 'Obernberg\ am\ Inn',437759 => 'Antiesenhofen',437762 => 'Raab',437763 => 'Kopfing\ im\ Innkreis',437764 => 'Riedau',437765 => 'Lambrechten',437766 => 'Andorf',437767 => 'Eggerding',437941 => 'Neumarkt\ im\ M\�\�hlkreis',437942 => 'Freistadt',437943 => 'Windhaag\ bei\ Freistadt',437944 => 'Sandl',437945 => 'St\.\ Oswald\ bei\ Freistadt',437946 => 'Gutau',437947 => 'Kefermarkt',437948 => 'Hirschbach\ im\ M\�\�hlkreis',437949 => 'Rainbach\ im\ M\�\�hlkreis',437952 => 'Weitersfelden',437953 => 'Liebenau',437954 => 'St\.\ Georgen\ am\ Walde',437955 => 'K\�\�nigswiesen',437956 => 'Unterweissenbach',);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"43$prefix"} if exists($map{"43$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+43|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
