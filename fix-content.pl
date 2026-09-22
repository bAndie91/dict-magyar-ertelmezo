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
	s{(Tréfás, évődő ellenkezés bevezetésére\.[^<]+?).*}{$1]
□ «Királyasszony, néném, Az egekre kérném: Azt a rózsát, piros rózsát
Haj, beh szeretném én! … | Jaj! öcsém, Kázmér, Azt nem adom százér.» — Ar.
|| d. [jaj v. jāj] ‹Vitának, töprengésnek, a beszélő önmagával való vitatkozásának festésében,
ellenvetés, visszavonás kifejezésében.› □ «Néha egy-egy tanács indul egész hévvel,
De maga a szóló megakasztja dé-vel. | „Hátha bizony . . . . jaj de! — Tudod-é mit? … áh de!”» Ar.
|| e. [jāj v. jaj] ‹Elbeszélésben, a sikertelenség hangulatának festésére, a szereplő lehangoltságának érzékeltetésére.›
□ «Mint a hímszarvas, kit vadász sérte nyíllal, … Fut hideg forrásnak enyhítő vizére,
És ezerjófüvet tépni a sebére; Jaj, de a forrásnak kiszáradt az ágya.
Az ezerjófüvet írül sem találja, … | Ugy bolyonga Miklós.» Ar.</li>
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
□ Jaj volna az írónak, ki addig le nem írna egy perfektumot, míg sorba tanácsot nem kérd
nyelvészeinktől!
Még jajabb, e tanácsok meghallgatása után! Ar.
Jaj volt annak, aki valami újjal nem lépett elő, de jajabb annak, aki értéktelen darabbal állt a deszkára. Baksay S.
|| a. ‹Fenyegetésben, keserves sorsot, pusztulást ígérő v. jósló kijelen tésben.› 
□ Csak szerelmied határát ne érjem, Mert ott, kis lyány, jaj néked, jaj nékem! Pet.</li>
<li>4. (részeshatározó nélkül) (nép) Nagyon

rossz, fájd alm as, nehéz, keserves (állap o t,
hely zet, dolog, ügy). ~ a rosszal, de ~abb
a rossz nélkül. О Ja j a nemzetnek, mely lakhelyeiből kiüldöztetett: jajabb annak, melly ősi
nyelvétőlfosztatott meg. К ö L. 11 a. ( ritk) Olyan
állap o t, h elyzet, am elyben sok fá jd a lm a t kell
elviselnie v k in e k ; keserves álla p o t, sors.
□ S ja j lett volna szegény Piroskának dolga,
IHa, míg emlegették,folyvást csuklóit volna. Ah.
II I. fn [ja j] -t, -ok, jaja v. (költ) jajja
1. (irod) K eserves, fájd alm as, b án a to s
fe lk iá ltá s; ja jk iá ltá s. □ Ritkult a sokaság;
ja j, üvöltés támada benne. V ÖR. S a néma légbe
nem vegyül Csak legkisebbke ja j. G a r . Mosolygom az ostobák Dühödi jaját és hiú mellverését. T ót h É s hallja távol haldoklók ja já t. . .
J ü. Kívülről, a folyosó felől hosszan elnyújtott
ja j zendült fel, bugyborékoló hörgés vegyült bele,
majd minden dobpergésbe fú lt. К a r . || a. (főleg
b irto k o s szerkezetben, b irto k szó k én t) ( átv
is, irod) N agy töm eg, a nép ja jk iá ltá s a ,
jajsz a v a , keserves sorsa m ia tt feltörő p a n asza. □ Itt egy fa lu , amott egy város ég,
Százezerek jajától zúg a lég. P é t . Oh, nem
hallod-e A nép jaját? Mad.
2. (főleg irod) K eserves, fájd alm as, b á n atos p anaszkodás, panasz. Tele vannak ~jal,
bajjal: sok p an aszu k , fájd alm u k v an . □ Hazánk külön-külön vidékein ja jt, s bánatot találtam. K á t . Tán szíve királynak megesik a jajra.
A r . Ezer oh, ja j, baj, ejnye, nyűg Siránkozik
pityergő szánkon. A dy
3. (ritk, irod) F ájd alo m . (2) □ Lelkem
minden húrja átrezeg a jajtul. Ar. A z ő jajok
rész, összes az enyém. S z i g l .- S h a .
Ö : 1. —dal; —keserves; ~ ordítás; ~ panasz; —üvöltés; 2. macska—.};

}

print $_;
