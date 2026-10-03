#!/usr/bin/env perl

use utf8;
use open ':std', ':utf8';
use Encode qw/encode decode encode_utf8 decode_utf8/;

$/ = undef;
$_ = <STDIN>;

$word = lc decode_utf8 $ARGV[0];

if($word eq 'timsó')
{
	s/\QKAl(SO4)2\E/KAl(SO₄)₂/g;
	s/\Q12H2O\E/12 H₂O/g;
}
elsif($word eq 'szoroz')
{
	s/\Qx -et x [2]-tel szoroz\E/x-et x²-tel szoroz/g;
}
elsif($word eq 'minek')
{
	s/\Qragos évm Ld. m [2]\E/ragos névm Ld. mi [2]/g;
}
elsif($word eq 'hehezet')
{
	s{(mai alakja:)\s*<sup>.*?</sup>}{$1 ῾};
	s/(ógörög alakja:).*?;/$1 ⊢;/;
	s{(mai alakja) , }{$1 ᾿ };
	s/(ógörög alakja) .*?\)/$1 ⊣)/;
}
elsif($word eq 'jaj')
{
	s{\Q[j!j v. jaj]\E}{[jāj v. jaj]}g;
	# több mint egy oldal teljesen hiányzott:
	s{(Tréfás, évődő ellenkezés bevezetésére\.).*}{$1 . q{]
□ „Királyasszony, néném, Az egekre kérném: Azt a rózsát, piros rózsát
Haj, beh szeretném én! … | Jaj! öcsém, Kázmér, Azt nem adom százér.” (Arany János)
|| d. [jaj v. jāj] ‹Vitának, töprengésnek, a beszélő önmagával való vitatkozásának festésében,
ellenvetés, visszavonás kifejezésében.› □ „Néha egy-egy tanács indul egész hévvel,
De maga a szóló megakasztja dé-vel. | «Hátha bizony . . . . jaj de! — Tudod-é mit? … áh de!»” (Arany János)
|| e. [jāj v. jaj] ‹Elbeszélésben, a sikertelenség hangulatának festésére, a szereplő lehangoltságának érzékeltetésére.›
□ „Mint a hímszarvas, kit vadász sérte nyíllal, … Fut hideg forrásnak enyhítő vizére,
És ezerjófüvet tépni a sebére; Jaj, de a forrásnak kiszáradt az ágya.
Az ezerjófüvet írül sem találja, … | Ugy bolyonga Miklós.” (Arany János)</li>
<li>23. [jāj] ‹Mentegetőzésben.› □ „Becsületes neved, édes atyámfia?” …
„Jaj, biz én nem igen dicsekszem nevemmel, Szegény fiú vagyok, noha nemes-ember.” (Arany János)
„Jaj, nagyságos asszony, nincs otthon kire hagyni [a gyereket], hát ki kell hozni magammal a munkára.” (Móricz Zsigmond)</li>
<li>24. [jaj] ‹Annak kifejezésére, hogy valami hirtelen eszünkbe jutott, amiről megfeledkeztünk.›
□ „Valami jutott eszembe! | Zálogul majd azt teszem be. | Előre, | Hitvesem fejkötője! | Jaj de hisz már sírba zártam
Szerelmetes hitestársam, S ott véle Nyúgoszik fejkötője.” (Petőfi Sándor)</li>
<li>25. [jāj v. jaj] ‹Elbeszélésben, vmely elmúlt állapot, helyzet, megtörtént eset, esemény, élmény festésére.›
<span style="color:blue">Jaj, de szép látvány volt!</span>
<span style="color:blue">Jaj, de undorító volt az egész!</span>
<span style="color:blue">Jaj, hogy féltem!</span></li>
<li>II. (állítmányként v. állítmány ragozhatatlan részeként, a mn-i v. fn-i állítmányhoz némileg hasonló szerepben) [jaj] (ritk. -abb)</li>
<li>1. (2. v. 3. személyű részeshat-val) ‹Fenyegetést tartalmazó kifejezés állítmányaként, ill. állítmányának ragozhatatlan részeként:›
nagyon rossz (dolog), nagyon keserves (sors).
<span style="color:blue">Jaj (lesz) neked! (v. nektek!):</span> lakolni fogsz (v. fogtok), bajba kerülsz (v. kerültök);
<span style="color:blue">Jaj, a legyőzötteknek:</span> keserves sors vár a legyőzöttekre;
(<span style="color:green;font-weight:bold">nép</span>) <span style="color:blue">Jaj lesz a bőrödnek!:</span> vigyázz magadra, mert elverlek!
— 1<sub>1</sub> (részeshat nélkül) (<span style="color:green;font-weight:bold">ritk</span>)
□ „Jaj, ki parancsom élve szegi!” (Arany János)
„Jaj a botránkozónak, de százszor jaj a botránkoztatónak.” (Jókai Mór)
„Itél a nép, itélni fog [,] S ezerszer jaj a bűnösöknek.” (Ady Endre)
— 1<sub>2</sub> (<span style="color:green;font-weight:bold">nép</span>) ‹A részeshat testrésznév.›
□ „Jaj a fejének, ha én még egyszer megkapom.” (Jókai Mór)
— 1<sub>3</sub> (főleg <span style="color:green;font-weight:bold">irod</span>) ‹Élettelen tárgyra vonatkoztatva.› 
□ „Amely [kő] porhatag már, Vessétek azt el
kérlelhetetlenül, Bármily szent emlék van csatolva hozzá, Mert jaj a háznak mely alapba gyönge.” (Petőfi Sándor)
„A haja sűrű volt és annálfogva gubancos: jaj volt annak a fésűnek, aki abba rendet csinálni beletévedt, mert beletörtek a fogai.” (Jókai Mór)
|| a. ‹Elbeszélésben, fenyegető magatartás jellemzésére, rossz vég sejtetésére.› 
□ [Dobó] „ismét felragadja a kardját, s ráveti magát tigrisként a résen benyomakodó törökre.
Jaj annak, aki most eléje kerül.” (Gárdonyi Géza)
„Árpád hazájában jaj annak, Aki nem úr és nem bitang.” (Ady Endre)</li>
<li>2. (1. sz-ű részeshatározóval) <span style="color:blue">Jaj nekem!</span>
v. (<span style="color:green;font-weight:bold">ritk</span>) <span style="color:blue">Jaj nekünk!:</span>
a) ‹szenvedés, fájdalmas panasz kifejezésére›;
□ „Piroska . . . . ez a név! jaj nekem, ez a név! | Hogy tipra keresztül
egy boldogtalan év S közel a másiknak fele is már rajtam; Mióta e dalra kulcsolva van ajkam!” (Arany János)
„Karolsz még, drága, kicsi társam? | Jaj, nekem, jaj, ezerszer is jaj
Ebben a véres ájulásban.” (Ady Endre);
b) ‹ijedség, rémület, kétségbeesés kifejezésére›; <span style="color:blue">Jaj nekem</span> v. <span style="color:blue">Jaj nekünk, ha…:</span>
keserves sors vár rám v. ránk, ha…; nagyon rossz lesz nekem v. nekünk, ha…
□ „Ha jól megnézlek, még sem vagy te az [= Korpádi]!
Te — jaj nekem, jaj, Kont! oda vagyok.” Vör.
„A többi istent kicsit bánom én: Csakhogy magamnak is jaj.” (Arany János / Arisztophanész)
„Mit cselekszel az istenért? Jaj nekünk, jaj!
Csillapodjál édes fiacskám … Gábor, Gábor!” (Mikszáth Kálmán)</li>
<li>3. (1., 2. v. 3. sz-ű részeshatározóval)
‹Múltra vonatkoztatva, szenvedéssel, fájdalommal kapcsolatos ténynek v. ilyen tény
feltevésének közlésében:› nagyon rossz, keserves.
<span style="color:blue">Jaj volt annak, aki szólni mert.</span>
<span style="color:blue">Jaj lett volna neked, ha ellenszegültél volna.</span>
□ „Jaj volna az írónak, ki addig le nem írna egy perfektumot, míg sorba tanácsot nem kérd nyelvészeinktől!
Még jajabb, e tanácsok meghallgatása után!” (Arany János)
„Jaj volt annak, aki valami újjal nem lépett elő, de jajabb annak, aki értéktelen darabbal állt a deszkára.” (Baksay Sándor)
|| a. ‹Fenyegetésben, keserves sorsot, pusztulást ígérő v. jósló kijelentésben.› 
□ „Csak szerelmied határát ne érjem, Mert ott, kis lyány, jaj néked, jaj nékem!” (Petőfi Sándor)</li>
<li>4. (részeshatározó nélkül) (<span style="color:green;font-weight:bold">nép</span>) Nagyon rossz, fájdalmas, nehéz, keserves (állapot, helyzet, dolog, ügy).
<span style="color:blue">Jaj a rosszal, de jajabb a rossz nélkül.</span>
□ „Jaj a nemzetnek, mely lakhelyeiből kiüldöztetett: jajabb annak, melly ősi
nyelvétől fosztatott meg.” (Кölcsey Ferenc)
|| a. (<span style="color:green;font-weight:bold">ritk</span>) Olyan állapot, helyzet, amelyben sok fájdalmat kell
elviselnie vkinek; keserves állapot, sors.
□ „S jaj lett volna szegény Piroskának dolga,
| Ha, míg emlegették, folyvást csuklott volna.” (Arany János)</li>
<li>III. fn [jaj] -t, -ok, jaja v. (<span style="color:green;font-weight:bold">költ</span>) jajja</li>
<li>1. (<span style="color:green;font-weight:bold">irod</span>) Keserves, fájdalmas, bánatos felkiáltás; jajkiáltás.
□ „Ritkult a sokaság; jaj, üvöltés támada benne.” (Vörösmarty Mihály)
„S a néma légbe nem vegyül Csak legkisebbke jaj.” (Garay János)
„Mosolygom az ostobák Dühödt jaját és hiú mellverését.” (Tóth Árpád)
„És hallja távol haldoklók jaját…” (Juhász Gyula)
„Kívülről, a folyosó felől hosszan elnyújtott
jaj zendült fel, bugyborékoló hörgés vegyült bele,
majd minden dobpergésbe fúlt.” (Кarinthy Frigyes)
|| a. (főleg birtokos szerkezetben, birtokszóként) (<span style="color:green;font-weight:bold">átv</span> is, <span style="color:green;font-weight:bold">irod</span>)
Nagy tömeg, a nép jajkiáltása, jajszava, keserves sorsa miatt feltörő panasza.
□ „Itt egy falu, amott egy város ég, Százezerek jajától zúg a lég.” (Petőfi Sándor)
„Oh, nem hallod-e A nép jaját?” (Madács Imre)</li>
<li>2. (főleg <span style="color:green;font-weight:bold">irod</span>) Keserves, fájdalmas, bánatos panaszkodás, panasz.
<span style="color:blue">Tele vannak jajjal, bajjal</span>: sok panaszuk, fájdalmuk van.
□ „Hazánk külön-külön vidékein jajt, s bánatot találtam.” (Katona József)
„Tán szíve királynak megesik a jajra.” (Arany János)
„Ezer oh, jaj, baj, ejnye, nyűg Siránkozik pityergő szánkon.” (Ady Endre)</li>
<li>3. (<span style="color:green;font-weight:bold">ritk</span>, <span style="color:green;font-weight:bold">irod</span>) Fájdalom. (2)
□ „Lelkem minden húrja átrezeg a jajtul.” (Arany János)
„Az ő jajok rész, összes az enyém.” (Szigligeti Ede / Shakespeare)</li>
<li><b>Ö:</b> 1. Jajdal; jajkeserves; jajordítás; jajpanasz; jajüvöltés; 2. macskajaj.</li>}}e;
}

print $_;
