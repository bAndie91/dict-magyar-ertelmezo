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
	# több mint egy oldal teljesen hiányzott
	s{(Tréfás, évődő ellenkezés bevezetésére\.).*}{$1 . q{]
□ <span style="color:blue">Királyasszony, néném, Az egekre kérném: Azt a rózsát, piros rózsát
Haj, beh szeretném én! … | Jaj! öcsém, Kázmér, Azt nem adom százér.</span> — Ar.
|| d. [jaj v. jāj] ‹Vitának, töprengésnek, a beszélő önmagával való vitatkozásának festésében,
ellenvetés, visszavonás kifejezésében.› □ <span style="color:blue">Néha egy-egy tanács indul egész hévvel,
De maga a szóló megakasztja dé-vel. | „Hátha bizony . . . . jaj de! — Tudod-é mit? … áh de!”</span> Ar.
|| e. [jāj v. jaj] ‹Elbeszélésben, a sikertelenség hangulatának festésére, a szereplő lehangoltságának érzékeltetésére.›
□ <span style="color:blue">Mint a hímszarvas, kit vadász sérte nyíllal, … Fut hideg forrásnak enyhítő vizére,
És ezerjófüvet tépni a sebére; Jaj, de a forrásnak kiszáradt az ágya.
Az ezerjófüvet írül sem találja, … | Ugy bolyonga Miklós.</span> Ar.</li>
<li>23. [jāj] ‹Mentegetőzésben.› □ „Becsületes neved, édes atyámfia?” …
„Jaj, biz én nem igen dicsekszem nevemmel, Szegény fiú vagyok, noha nemes-ember.” Ar.
Jaj, nagyságos asszony, nincs otthon kire hagyni [a gyereket], hát ki kell hozni magammal a munkára. Mó.</li>
<li>24. [jaj] ‹Annak kifejezésére, hogy valami hirtelen eszünkbe jutott, amiről megfeledkeztünk.›
□ Valami jutott eszembe! | Zálogul majd azt teszem be. | Előre, | Hitvesem fejkötője! | Jaj de hisz már sírba zártam
Szerelmetes hitestársam, S ott véle Nyúgoszik fejkötője. Pet.</li>
<li>25. [jāj v. jaj] (Elbeszélésben, vmely elmúlt állapot, helyzet, megtörtént eset, esemény, élmény festésére.) ~, de szép látvány
volt! ~, de undorító volt az egész! ~, hogy féltem!</li>
<li>II. (állítmányként v. állítmány ragozhatatlan részeként, a mn-i v. fn-i állítmányhoz némileg hasonló szerepben) [jaj] (ritk. -abb)</li>
<li>1. (2. v. 3. személyű részeshat-val) ‹Fenyegetést tartalmazó kifejezés állítmányaként, ill. állítmányának ragozhatatlan részeként:›
nagyon rossz (dolog), nagyon keserves (sors). ~ (lesz) neked! (v. nektek!): lakolni fogsz (v. fogtok),
bajba kerülsz (v. kerültök); ~ a legyőzőiteknek: keserves sors vár a legyőzöttekre; (nép) ~ lesz a bőrödnek!:
vigyázz magadra, mert elverlek! — 1<sub>1</sub> (részeshat nélkül) (ritk) □ Jaj, ki parancsom élve szegi! Ar.
Jaj a botránkozónak, de százszor jaj a botránkoztatónak. Jók. 
Itél a nép, itélni fog [,] S ezerszer jaj a bűnösöknek. ADY — 1<sub>2</sub>
(nép) ‹A részeshat testrésznév.› □ Jaj a fejének, ha én még egyszer megkapom. JÓK. — 1<sub>3</sub>
(főleg irod) ‹Élettelen tárgyra vonatkoztatva.› □ Amely [kő] porhatag már, Vessétek azt el
kérlelhetetlenül, Bármily szent emlék van csatolva hozzá, Mert jaj a háznak mely alapba gyönge. Pet.
A haja sűrű volt és annálfogva gubancos: jaj volt annak a fésűnek, aki abba rendet csinálni beletévedt, mert beletörtek
a fogai. JÓK.
|| a. ‹Elbeszélésben, fenyegető magatartás jellemzésére, rossz vég sejtetésére.› 
□ [Dobó] ismét felragadja a kardját, s ráveti magát tigrisként a résen benyomakodó törökre.
Jaj annak, aki most eléje kerül. Gárd.
Árpád hazájában jaj annak, Aki nem úr és nem bitang. Ady.</li>
<li>2. (1. sz-ű részeshatározóval) ~ nekem!
v. (ritk) ~ nekünk!: a) ‹szenvedés, fájdalmas panasz kifejezésére›;
□ Piroska . . . . ez a név! jaj nekem, ez a név! | Hogy tipra keresztül
egy boldogtalan év S közel a másiknak fele is
már rajtam; Mióta e dalra kulcsolva van ajkam! Ar.
Karolsz még, drága, kicsi társam? | Jaj, nekem, jaj, ezerszer is jaj
Ebben a véres ájulásban. Ady;
b) ‹ijedség, rémület, kétségbeesés kifejezésére›; ~ nekem v . ~ nekünk,
ha…: keserves sors vár rám v. ránk, ha…;
nagyon rossz lesz nekem v. nekünk, ha…
□ Ha jól megnézlek, még sem vagy te az [= Korpádi]!
Te — jaj nekem, jaj, Kont! oda vagyok. VÖR.
A többi istent kicsit bánom én: Csakhogy magamnak is jaj. Ar.-Arisz.
Mit cselekszel az istenért? Jaj nekünk, jaj!
Csillapodjál édes fiacskám … Gábor, Gábor! MIK.</li>
<li>3. (1., 2. v. 3. sz-ű részeshatározóval)
‹Múltra vonatkoztatva, szenvedéssel, fájdalommal kapcsolatos ténynek v. ilyen tény
feltevésének közlésében:› nagyon rossz, keserves.
~ volt annak, aki szólni mert.
~ lett volna neked, ha ellenszegültél volna.
□ Jaj volna az írónak, ki addig le nem írna egy perfektumot, míg sorba tanácsot nem kérd nyelvészeinktől!
Még jajabb, e tanácsok meghallgatása után! Ar.
Jaj volt annak, aki valami újjal nem lépett elő, de jajabb annak, aki értéktelen darabbal állt a deszkára. Baksay S.
|| a. ‹Fenyegetésben, keserves sorsot, pusztulást ígérő v. jósló kijelentésben.› 
□ Csak szerelmied határát ne érjem, Mert ott, kis lyány, jaj néked, jaj nékem! Pet.</li>
<li>4. (részeshatározó nélkül) (nép) Nagyon rossz, fájdalmas, nehéz, keserves (állapot,
helyzet, dolog, ügy).
~ a rosszal, de ~abb a rossz nélkül.
□ Jaj a nemzetnek, mely lakhelyeiből kiüldöztetett: jajabb annak, melly ősi
nyelvétől fosztatott meg. КÖL.
|| a. (ritk) Olyan állapot, helyzet, amelyben sok fájdalmat kell
elviselnie vkinek; keserves állapot, sors.
□ S jaj lett volna szegény Piroskának dolga,
| Ha, míg emlegették, folyvást csuklott volna. Ar.</li>
<li>III. fn [jaj] -t, -ok, jaja v. (költ) jajja</li>
<li>1. (irod) Keserves, fájdalmas, bánatos
felkiáltás; jajkiáltás. □ Ritkult a sokaság;
jaj, üvöltés támada benne. VÖR.
S a néma légbe nem vegyül Csak legkisebbke jaj. Gar.
Mosolygom az ostobák Dühödt jaját és hiú mellverését. Tóth
És hallja távol haldoklók jaját… Ju.
Kívülről, a folyosó felől hosszan elnyújtott
jaj zendült fel, bugyborékoló hörgés vegyült bele,
majd minden dobpergésbe fúlt. Кar.
|| a. (főleg birtokos szerkezetben, birtokszóként) (átv is, irod)
Nagy tömeg, a nép jajkiáltása, jajszava, keserves sorsa miatt feltörő panasza.
□ Itt egy falu, amott egy város ég, Százezerek jajától zúg a lég. Pet.
Oh, nem hallod-e A nép jaját? Mad.</li>
<li>2. (főleg irod) Keserves, fájdalmas, bánatos panaszkodás, panasz.
Tele vannak ~jal, bajjal: sok panaszuk, fájdalmukvan.
□ Hazánk külön-külön vidékein jajt, s bánatot találtam. Kat.
Tán szíve királynak megesik a jajra. Ar.
Ezer oh, jaj, baj, ejnye, nyűg Siránkozik pityergő szánkon. Ady</li>
<li>3. (ritk, irod) Fájdalom. (2) □ Lelkem minden húrja átrezeg a jajtul. Ar.
Az ő jajok rész, összes az enyém. Szigl.-Sha.</li>
<li><b>Ö:</b> 1. ~dal; ~keserves; ~ordítás; ~panasz; ~üvöltés; 2. macska~.}}e;
}

print $_;
