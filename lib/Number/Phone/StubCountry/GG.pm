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
package Number::Phone::StubCountry::GG;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140904220737;

my $formatters = [{'pattern' => '(\\d{2})(\\d{4})(\\d{4})','leading_digits' => '2|5[56]|7(?:0|6(?:[013-9]|2[0-35-9]))'},{'pattern' => '(\\d{3})(\\d{3})(\\d{4})','leading_digits' => '1(?:1|\\d1)|3|9[018]'},{'leading_digits' => '1(?:3873|5(?:242|39[456])|697[347]|768[347]|9467)','pattern' => '(\\d{5})(\\d{4,5})'},{'leading_digits' => '1','pattern' => '(1\\d{3})(\\d{5,6})'},{'pattern' => '(7\\d{3})(\\d{6})','leading_digits' => '7(?:[1-5789]|624)'},{'leading_digits' => '8001111','pattern' => '(800)(\\d{4})'},{'pattern' => '(845)(46)(4\\d)','leading_digits' => '845464'},{'pattern' => '(8\\d{2})(\\d{3})(\\d{4})','leading_digits' => '8(?:4[2-5]|7[0-3])'},{'pattern' => '(80\\d)(\\d{3})(\\d{4})','leading_digits' => '80'},{'pattern' => '([58]00)(\\d{6})','leading_digits' => '[58]00'}];
my $validators = {'special_rate' => '(8(?:4(?:5464\\d|[2-5]\\d{7})|70\\d{7}))|((?:87[123]|9(?:[01]\\d|8[0-3]))\\d{7})|((?:3[0347]|55)\\d{8})','toll_free' => '80(?:0(?:1111|\\d{6,7})|8\\d{7})|500\\d{6}','personal_number' => '70\\d{8}','geographic' => '1481\\d{6}','fixed_line' => '1481\\d{6}','voip' => '56\\d{8}','pager' => '76(?:0[012]|2[356]|4[0134]|5[49]|6[0-369]|77|81|9[39])\\d{6}','mobile' => '7(?:781|839|911)\\d{6}'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (44113 => "Leeds",44114 => "Sheffield",44115 => "Nottingham",44116 => "Leicester",44117 => "Bristol",44118 => "Reading",441200 => "Clitheroe",441202 => "Bournemouth",441204 => "Bolton",441205 => "Boston",441206 => "Colchester",441207 => "Consett",441208 => "Bodmin",441209 => "Redruth",44121 => "Birmingham",441223 => "Cambridge",441224 => "Aberdeen",441225 => "Bath",441226 => "Barnsley",441227 => "Canterbury",441228 => "Carlisle",4412290 => "Barrow\-in\-Furness\/Millom",4412291 => "Barrow\-in\-Furness\/Millom",4412292 => "Barrow\-in\-Furness",4412293 => "Millom",4412294 => "Barrow\-in\-Furness",4412295 => "Barrow\-in\-Furness",4412296 => "Barrow\-in\-Furness",4412297 => "Millom",4412298 => "Barrow\-in\-Furness",4412299 => "Millom",441233 => "Ashford\ \(Kent\)",441234 => "Bedford",441235 => "Abingdon",441236 => "Coatbridge",441237 => "Bideford",441239 => "Cardigan",441241 => "Arbroath",441242 => "Cheltenham",441243 => "Chichester",441244 => "Chester",441245 => "Chelmsford",441246 => "Chesterfield",441248 => "Bangor\ \(Gwynedd\)",441249 => "Chippenham",441250 => "Blairgowrie",441252 => "Aldershot",441253 => "Blackpool",441254 => "Blackburn",441255 => "Clacton\-on\-Sea",441256 => "Basingstoke",441257 => "Coppull",441258 => "Blandford",441259 => "Alloa",441260 => "Congleton",441261 => "Banff",441262 => "Bridlington",441263 => "Cromer",441264 => "Andover",441267 => "Carmarthen",441268 => "Basildon",441269 => "Ammanford",441270 => "Crewe",441271 => "Barnstaple",441273 => "Brighton",441274 => "Bradford",441275 => "Clevedon",441276 => "Camberley",441277 => "Brentwood",441278 => "Bridgwater",441279 => "Bishops\ Stortford",441280 => "Buckingham",441282 => "Burnley",441283 => "Burton\-on\-Trent",441284 => "Bury\ St\ Edmunds",441285 => "Cirencester",441286 => "Caernarfon",441287 => "Guisborough",441288 => "Bude",441289 => "Berwick\-upon\-Tweed",441290 => "Cumnock",441291 => "Chepstow",441292 => "Ayr",441293 => "Crawley",441294 => "Ardrossan",441295 => "Banbury",441296 => "Aylesbury",441297 => "Axminster",441298 => "Buxton",441299 => "Bewdley",441300 => "Cerne\ Abbas",441301 => "Arrochar",441302 => "Doncaster",441303 => "Folkestone",441304 => "Dover",441305 => "Dorchester",441306 => "Dorking",441307 => "Forfar",441308 => "Bridport",441309 => "Forres",44131 => "Edinburgh",441320 => "Fort\ Augustus",441322 => "Dartford",441323 => "Eastbourne",441324 => "Falkirk",441325 => "Darlington",441326 => "Falmouth",441327 => "Daventry",441328 => "Fakenham",441329 => "Fareham",441330 => "Banchory",441332 => "Derby",441333 => "Peat\ Inn\ \(Leven\ \(Fife\)\)",441334 => "St\ Andrews",441335 => "Ashbourne",441337 => "Ladybank",4413390 => "Aboyne\/Ballater",4413391 => "Aboyne\/Ballater",4413392 => "Aboyne",4413393 => "Aboyne",4413394 => "Ballater",4413395 => "Aboyne",4413396 => "Ballater",4413397 => "Ballater",4413398 => "Aboyne",4413399 => "Ballater",441340 => "Craigellachie\ \(Aberlour\)",441341 => "Barmouth",441342 => "East\ Grinstead",441343 => "Elgin",441344 => "Bracknell",441346 => "Fraserburgh",441347 => "Easingwold",441348 => "Fishguard",441349 => "Dingwall",441350 => "Dunkeld",441352 => "Mold",441353 => "Ely",441354 => "Chatteris",441355 => "East\ Kilbride",441356 => "Brechin",441357 => "Strathaven",441358 => "Ellon",441359 => "Pakenham",441360 => "Killearn",441361 => "Duns",441362 => "Dereham",441363 => "Crediton",441364 => "Ashburton",441366 => "Downham\ Market",441367 => "Faringdon",441368 => "Dunbar",441369 => "Dunoon",441371 => "Great\ Dunmow",441372 => "Esher",441373 => "Frome",441375 => "Grays\ Thurrock",441376 => "Braintree",441377 => "Driffield",441379 => "Diss",441380 => "Devizes",441381 => "Fortrose",441382 => "Dundee",441383 => "Dunfermline",441384 => "Dudley",441386 => "Evesham",4413870 => "Dumfries",4413871 => "Dumfries",4413872 => "Dumfries",4413873 => "Langholm",4413874 => "Dumfries",4413875 => "Dumfries",4413876 => "Dumfries",4413877 => "Dumfries",4413878 => "Dumfries",4413879 => "Dumfries",4413880 => "Bishop\ Auckland\/Stanhope\ \(Eastgate\)",4413881 => "Bishop\ Auckland\/Stanhope\ \(Eastgate\)",4413882 => "Stanhope\ \(Eastgate\)",4413883 => "Bishop\ Auckland",4413884 => "Bishop\ Auckland",4413885 => "Stanhope\ \(Eastgate\)",4413886 => "Bishop\ Auckland",4413887 => "Bishop\ Auckland",4413888 => "Bishop\ Auckland",4413889 => "Bishop\ Auckland",441389 => "Dumbarton",441392 => "Exeter",441394 => "Felixstowe",441395 => "Budleigh\ Salterton",441397 => "Fort\ William",441398 => "Dulverton",441400 => "Honington",441403 => "Horsham",441404 => "Honiton",441405 => "Goole",441406 => "Holbeach",441407 => "Holyhead",441408 => "Golspie",441409 => "Holsworthy",44141 => "Glasgow",441420 => "Alton",441422 => "Halifax",4414230 => "Harrogate\/Boroughbridge",4414231 => "Harrogate\/Boroughbridge",4414232 => "Harrogate",4414233 => "Boroughbridge",4414234 => "Boroughbridge",4414235 => "Harrogate",4414236 => "Harrogate",4414237 => "Harrogate",4414238 => "Harrogate",4414239 => "Boroughbridge",441424 => "Hastings",441425 => "Ringwood",441427 => "Gainsborough",441428 => "Haslemere",441429 => "Hartlepool",4414300 => "North\ Cave\/Market\ Weighton",4414301 => "North\ Cave\/Market\ Weighton",4414302 => "North\ Cave",4414303 => "North\ Cave",4414304 => "North\ Cave",4414305 => "North\ Cave",4414306 => "Market\ Weighton",4414307 => "Market\ Weighton",4414308 => "Market\ Weighton",4414309 => "Market\ Weighton",441431 => "Helmsdale",441432 => "Hereford",441433 => "Hathersage",4414340 => "Bellingham\/Haltwhistle\/Hexham",4414341 => "Bellingham\/Haltwhistle\/Hexham",4414342 => "Bellingham",4414343 => "Haltwhistle",4414344 => "Bellingham",4414345 => "Haltwhistle",4414346 => "Hexham",4414347 => "Hexham",4414348 => "Hexham",4414349 => "Bellingham",441435 => "Heathfield",441436 => "Helensburgh",4414370 => "Haverfordwest\/Clynderwen\ \(Clunderwen\)",4414371 => "Haverfordwest\/Clynderwen\ \(Clunderwen\)",4414372 => "Clynderwen\ \(Clunderwen\)",4414373 => "Clynderwen\ \(Clunderwen\)",4414374 => "Clynderwen\ \(Clunderwen\)",4414375 => "Clynderwen\ \(Clunderwen\)",4414376 => "Haverfordwest",4414377 => "Haverfordwest",4414378 => "Haverfordwest",4414379 => "Haverfordwest",441438 => "Stevenage",441439 => "Helmsley",441440 => "Haverhill",441442 => "Hemel\ Hempstead",441443 => "Pontypridd",441444 => "Haywards\ Heath",441445 => "Gairloch",441446 => "Barry",441449 => "Stowmarket",441450 => "Hawick",441451 => "Stow\-on\-the\-Wold",441452 => "Gloucester",441453 => "Dursley",441454 => "Chipping\ Sodbury",441455 => "Hinckley",441456 => "Glenurquhart",441457 => "Glossop",441458 => "Glastonbury",441460 => "Chard",441461 => "Gretna",441462 => "Hitchin",441463 => "Inverness",441464 => "Insch",441465 => "Girvan",441466 => "Huntly",441467 => "Inverurie",441469 => "Killingholme",441470 => "Isle\ of\ Skye\ \-\ Edinbane",441471 => "Isle\ of\ Skye\ \-\ Broadford",441472 => "Grimsby",441473 => "Ipswich",441474 => "Gravesend",441475 => "Greenock",441476 => "Grantham",441477 => "Holmes\ Chapel",441478 => "Isle\ of\ Skye\ \-\ Portree",441479 => "Grantown\-on\-Spey",441480 => "Huntingdon",441481 => "Guernsey",441482 => "Kingston\-upon\-Hull",441483 => "Guildford",441484 => "Huddersfield",441485 => "Hunstanton",441487 => "Warboys",441488 => "Hungerford",441489 => "Bishops\ Waltham",441490 => "Corwen",441491 => "Henley\-on\-Thames",441492 => "Colwyn\ Bay",441493 => "Great\ Yarmouth",441494 => "High\ Wycombe",441495 => "Pontypool",441496 => "Port\ Ellen",441497 => "Hay\-on\-Wye",441499 => "Inveraray",441501 => "Harthill",441502 => "Lowestoft",441503 => "Looe",441505 => "Johnstone",441506 => "Bathgate",4415070 => "Louth\/Alford\ \(Lincs\)\/Spilsby\ \(Horncastle\)",4415071 => "Louth\/Alford\ \(Lincs\)\/Spilsby\ \(Horncastle\)",4415072 => "Spilsby\ \(Horncastle\)",4415073 => "Louth",4415074 => "Alford\ \(Lincs\)",4415075 => "Spilsby\ \(Horncastle\)",4415076 => "Louth",4415077 => "Louth",4415078 => "Alford\ \(Lincs\)",4415079 => "Alford\ \(Lincs\)",441508 => "Brooke",441509 => "Loughborough",44151 => "Liverpool",441520 => "Lochcarron",441522 => "Lincoln",4415240 => "Lancaster",4415241 => "Lancaster",4415242 => "Hornby",4415243 => "Lancaster",4415244 => "Lancaster",4415245 => "Lancaster",4415246 => "Lancaster",4415247 => "Lancaster",4415248 => "Lancaster",4415249 => "Lancaster",441525 => "Leighton\ Buzzard",441526 => "Martin",441527 => "Redditch",441528 => "Laggan",441529 => "Sleaford",441530 => "Coalville",441531 => "Ledbury",441534 => "Jersey",441535 => "Keighley",441536 => "Kettering",441538 => "Ipstones",4415390 => "Kendal",4415391 => "Kendal",4415392 => "Kendal",4415393 => "Kendal",4415394 => "Hawkshead",4415395 => "Grange\-over\-Sands",4415396 => "Sedbergh",4415397 => "Kendal",4415398 => "Kendal",4415399 => "Kendal",441540 => "Kingussie",441542 => "Keith",441543 => "Cannock",441544 => "Kington",441545 => "Llanarth",441546 => "Lochgilphead",441547 => "Knighton",441548 => "Kingsbridge",441549 => "Lairg",441550 => "Llandovery",441553 => "Kings\ Lynn",441554 => "Llanelli",441555 => "Lanark",441556 => "Castle\ Douglas",441557 => "Kirkcudbright",441558 => "Llandeilo",441559 => "Llandysul",441560 => "Moscow",441561 => "Laurencekirk",441562 => "Kidderminster",441563 => "Kilmarnock",441564 => "Lapworth",441565 => "Knutsford",441566 => "Launceston",441567 => "Killin",441568 => "Leominster",441569 => "Stonehaven",441570 => "Lampeter",441571 => "Lochinver",441572 => "Oakham",441573 => "Kelso",441575 => "Kirriemuir",441576 => "Lockerbie",441577 => "Kinross",441578 => "Lauder",441579 => "Liskeard",441580 => "Cranbrook",441581 => "New\ Luce",441582 => "Luton",441583 => "Carradale",441584 => "Ludlow",441586 => "Campbeltown",441588 => "Bishops\ Castle",441590 => "Lymington",441591 => "Llanwrtyd\ Wells",441592 => "Kirkcaldy",441593 => "Lybster",441594 => "Lydney",441595 => "Lerwick\,\ Foula\ \&\ Fair\ Isle",441597 => "Llandrindod\ Wells",441598 => "Lynton",441599 => "Kyle",441600 => "Monmouth",441603 => "Norwich",441604 => "Northampton",441606 => "Northwich",441608 => "Chipping\ Norton",441609 => "Northallerton",44161 => "Manchester",441620 => "North\ Berwick",441621 => "Maldon",441622 => "Maidstone",441623 => "Mansfield",441624 => "Isle\ of\ Man",441625 => "Macclesfield",441626 => "Newton\ Abbot",441628 => "Maidenhead",441629 => "Matlock",441630 => "Market\ Drayton",441631 => "Oban",441633 => "Newport",441634 => "Medway",441635 => "Newbury",441636 => "Newark\-on\-Trent",441637 => "Newquay",441638 => "Newmarket",441639 => "Neath",441641 => "Strathy",441642 => "Middlesbrough",441643 => "Minehead",441644 => "New\ Galloway",441646 => "Milford\ Haven",441647 => "Moretonhampstead",441650 => "Cemmaes\ Road",441651 => "Oldmeldrum",441652 => "Brigg",441653 => "Malton",441654 => "Machynlleth",441655 => "Maybole",441656 => "Bridgend",441659 => "Sanquhar",441661 => "Prudhoe",441663 => "New\ Mills",441664 => "Melton\ Mowbray",441665 => "Alnwick",441666 => "Malmesbury",441667 => "Nairn",441668 => "Bamburgh",441669 => "Rothbury",441670 => "Morpeth",441671 => "Newton\ Stewart",441672 => "Marlborough",441673 => "Market\ Rasen",441674 => "Montrose",441675 => "Coleshill",441676 => "Meriden",441677 => "Bedale",441678 => "Bala",441680 => "Isle\ of\ Mull\ \-\ Craignure",441681 => "Isle\ of\ Mull\ \-\ Fionnphort",441683 => "Moffat",441684 => "Malvern",441685 => "Merthyr\ Tydfil",4416860 => "Newtown\/Llanidloes",4416861 => "Newtown\/Llanidloes",4416862 => "Llanidloes",4416863 => "Llanidloes",4416864 => "Llanidloes",4416865 => "Newtown",4416866 => "Newtown",4416867 => "Llanidloes",4416868 => "Newtown",4416869 => "Newtown",441687 => "Mallaig",441688 => "Isle\ of\ Mull\ \-\ Tobermory",441689 => "Orpington",441690 => "Betws\-y\-Coed",441691 => "Oswestry",441692 => "North\ Walsham",441694 => "Church\ Stretton",441695 => "Skelmersdale",4416970 => "Brampton",4416971 => "Brampton",4416972 => "Brampton",4416973 => "Wigton",4416974 => "Raughton\ Head",4416975 => "Brampton",4416976 => "Brampton",4416977 => "Brampton",4416978 => "Brampton",4416979 => "Brampton",441698 => "Motherwell",441700 => "Rothesay",441702 => "Southend\-on\-Sea",441704 => "Southport",441706 => "Rochdale",441707 => "Welwyn\ Garden\ City",441708 => "Romford",441709 => "Rotherham",441720 => "Isles\ of\ Scilly",441721 => "Peebles",441722 => "Salisbury",441723 => "Scarborough",441724 => "Scunthorpe",441725 => "Rockbourne",441726 => "St\ Austell",441727 => "St\ Albans",441728 => "Saxmundham",441729 => "Settle",441730 => "Petersfield",441732 => "Sevenoaks",441733 => "Peterborough",441736 => "Penzance",441737 => "Redhill",441738 => "Perth",441740 => "Sedgefield",441743 => "Shrewsbury",441744 => "St\ Helens",441745 => "Rhyl",441746 => "Bridgnorth",441747 => "Shaftesbury",441748 => "Richmond",441749 => "Shepton\ Mallet",441750 => "Selkirk",441751 => "Pickering",441752 => "Plymouth",441753 => "Slough",441754 => "Skegness",441756 => "Skipton",441757 => "Selby",441758 => "Pwllheli",441759 => "Pocklington",441760 => "Swaffham",441761 => "Temple\ Cloud",441763 => "Royston",441764 => "Crieff",441765 => "Ripon",441766 => "Porthmadog",441767 => "Sandy",4417680 => "Penrith",4417681 => "Penrith",4417682 => "Penrith",4417683 => "Appleby",4417684 => "Pooley\ Bridge",4417685 => "Penrith",4417686 => "Penrith",4417687 => "Keswick",4417688 => "Penrith",4417689 => "Penrith",441769 => "South\ Molton",441770 => "Isle\ of\ Arran",441771 => "Maud",441772 => "Preston",441773 => "Ripley",441775 => "Spalding",441776 => "Stranraer",441777 => "Retford",441778 => "Bourne",441779 => "Peterhead",441780 => "Stamford",441782 => "Stoke\-on\-Trent",441784 => "Staines",441785 => "Stafford",441786 => "Stirling",441787 => "Sudbury",441788 => "Rugby",441789 => "Stratford\-upon\-Avon",441790 => "Spilsby",441792 => "Swansea",441793 => "Swindon",441794 => "Romsey",441795 => "Sittingbourne",441796 => "Pitlochry",441797 => "Rye",441798 => "Pulborough",441799 => "Saffron\ Walden",441803 => "Torquay",441805 => "Torrington",441806 => "Shetland",441807 => "Ballindalloch",441808 => "Tomatin",441809 => "Tomdoun",441821 => "Kinrossie",441822 => "Tavistock",441823 => "Taunton",441824 => "Ruthin",441825 => "Uckfield",441827 => "Tamworth",441828 => "Coupar\ Angus",441829 => "Tarporley",441830 => "Kirkwhelpington",441832 => "Clopton",441833 => "Barnard\ Castle",441834 => "Narberth",441835 => "St\ Boswells",441837 => "Okehampton",441838 => "Dalmally",441840 => "Camelford",441841 => "Newquay\ \(Padstow\)",441842 => "Thetford",441843 => "Thanet",441844 => "Thame",441845 => "Thirsk",4418470 => "Thurso\/Tongue",4418471 => "Thurso\/Tongue",4418472 => "Thurso",4418473 => "Thurso",4418474 => "Thurso",4418475 => "Thurso",4418476 => "Tongue",4418477 => "Tongue",4418478 => "Thurso",4418479 => "Tongue",441848 => "Thornhill",4418510 => "Great\ Bernera\/Stornoway",4418511 => "Great\ Bernera\/Stornoway",4418512 => "Stornoway",4418513 => "Stornoway",4418514 => "Great\ Bernera",4418515 => "Stornoway",4418516 => "Great\ Bernera",4418517 => "Stornoway",4418518 => "Stornoway",4418519 => "Great\ Bernera",441852 => "Kilmelford",441854 => "Ullapool",441855 => "Ballachulish",441856 => "Orkney",441857 => "Sanday",441858 => "Market\ Harborough",441859 => "Harris",441862 => "Tain",441863 => "Ardgay",441864 => "Abington\ \(Crawford\)",441865 => "Oxford",441866 => "Kilchrenan",441869 => "Bicester",441870 => "Isle\ of\ Benbecula",441871 => "Castlebay",441872 => "Truro",441873 => "Abergavenny",441874 => "Brecon",441875 => "Tranent",441876 => "Lochmaddy",441877 => "Callander",441878 => "Lochboisdale",441879 => "Scarinish",441880 => "Tarbert",441882 => "Kinloch\ Rannoch",441883 => "Caterham",441884 => "Tiverton",441885 => "Pencombe",441886 => "Bromyard\ \(Knightwick\/Leigh\ Sinton\)",441887 => "Aberfeldy",441888 => "Turriff",441889 => "Rugeley",4418900 => "Coldstream\/Ayton",4418901 => "Coldstream\/Ayton",4418902 => "Coldstream",4418903 => "Coldstream",4418904 => "Coldstream",4418905 => "Ayton",4418906 => "Ayton",4418907 => "Ayton",4418908 => "Coldstream",4418909 => "Ayton",441892 => "Tunbridge\ Wells",441895 => "Uxbridge",441896 => "Galashiels",441899 => "Biggar",441900 => "Workington",441902 => "Wolverhampton",441903 => "Worthing",441904 => "York",441905 => "Worcester",441908 => "Milton\ Keynes",441909 => "Worksop",441910 => "Tyneside\/Durham\/Sunderland",441911 => "Tyneside\/Durham\/Sunderland",441912 => "Tyneside",441913 => "Durham",441914 => "Tyneside",441915 => "Sunderland",441916 => "Tyneside",441917 => "Sunderland",441918 => "Tyneside",441919 => "Durham",441920 => "Ware",441922 => "Walsall",441923 => "Watford",441924 => "Wakefield",441925 => "Warrington",441926 => "Warwick",441928 => "Runcorn",441929 => "Wareham",441931 => "Shap",441932 => "Weybridge",441933 => "Wellingborough",441934 => "Weston\-super\-Mare",441935 => "Yeovil",441937 => "Wetherby",441938 => "Welshpool",441939 => "Wem",441942 => "Wigan",441943 => "Guiseley",441944 => "West\ Heslerton",441945 => "Wisbech",4419460 => "Whitehaven",4419461 => "Whitehaven",4419462 => "Whitehaven",4419463 => "Whitehaven",4419464 => "Whitehaven",4419465 => "Whitehaven",4419466 => "Whitehaven",4419467 => "Gosforth",4419468 => "Whitehaven",4419469 => "Whitehaven",441947 => "Whitby",441948 => "Whitchurch",441949 => "Whatton",441950 => "Sandwick",441951 => "Colonsay",441952 => "Telford",441953 => "Wymondham",441954 => "Madingley",441955 => "Wick",441957 => "Mid\ Yell",441959 => "Westerham",441962 => "Winchester",441963 => "Wincanton",4419640 => "Hornsea\/Patrington",4419641 => "Hornsea\/Patrington",4419642 => "Hornsea",4419643 => "Patrington",4419644 => "Patrington",4419645 => "Hornsea",4419646 => "Patrington",4419647 => "Patrington",4419648 => "Hornsea",4419649 => "Hornsea",441967 => "Strontian",441968 => "Penicuik",441969 => "Leyburn",441970 => "Aberystwyth",441971 => "Scourie",441972 => "Glenborrodale",441974 => "Llanon",4419750 => "Alford\ \(Aberdeen\)\/Strathdon",4419751 => "Alford\ \(Aberdeen\)\/Strathdon",4419752 => "Alford\ \(Aberdeen\)",4419753 => "Strathdon",4419754 => "Alford\ \(Aberdeen\)",4419755 => "Alford\ \(Aberdeen\)",4419756 => "Strathdon",4419757 => "Strathdon",4419758 => "Strathdon",4419759 => "Alford\ \(Aberdeen\)",441977 => "Pontefract",441978 => "Wrexham",441980 => "Amesbury",441981 => "Wormbridge",441982 => "Builth\ Wells",441983 => "Isle\ of\ Wight",441984 => "Watchet\ \(Williton\)",441985 => "Warminster",441986 => "Bungay",441987 => "Ebbsfleet",441988 => "Wigtown",441989 => "Ross\-on\-Wye",441992 => "Lea\ Valley",441993 => "Witney",441994 => "St\ Clears",441995 => "Garstang",441997 => "Strathpeffer",44200 => "London",44201 => "London",44203 => "London",44207 => "London",44208 => "London",442310 => "Portsmouth",442311 => "Southampton",44238 => "Southampton",44239 => "Portsmouth",44241 => "Coventry",44247 => "Coventry",44281 => "Northern\ Ireland",442820 => "Ballycastle",442821 => "Martinstown",442825 => "Ballymena",442827 => "Ballymoney",442828 => "Larne",442829 => "Kilrea",442830 => "Newry",442837 => "Armagh",442838 => "Portadown",442840 => "Banbridge",442841 => "Rostrevor",442842 => "Kircubbin",442843 => "Newcastle\ \(Co\.\ Down\)",442844 => "Downpatrick",442866 => "Enniskillen",442867 => "Lisnaskea",442868 => "Kesh",442870 => "Coleraine",442871 => "Londonderry",442877 => "Limavady",442879 => "Magherafelt",442880 => "Carrickmore",442881 => "Newtownstewart",442882 => "Omagh",442885 => "Ballygawley",442886 => "Cookstown",442887 => "Dungannon",442889 => "Fivemiletown",442890 => "Belfast",442891 => "Bangor\ \(Co\.\ Down\)",442892 => "Lisburn",442893 => "Ballyclare",442894 => "Antrim",442895 => "Belfast",442896 => "Belfast",442897 => "Saintfield",442898 => "Belfast",44291 => "Cardiff",44292 => "Cardiff",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"44$prefix"} if exists($map{"44$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+44|\D)//g;
  $number =~ s/(^0)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
