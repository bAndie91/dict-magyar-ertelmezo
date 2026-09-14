#!/usr/bin/env perl

use open ':std', ':utf8';

$/ = undef;
$_ = <STDIN>;

$word = lc $ARGV[0];

if($word eq 'timsó')
{
	s/\QKAl(SO4)2\E/KAl(SO₄)₂/g;
	s/\Q12H2O\E/12 H₂O/g;
}
elsif($word eq 'jaj')
{
	s{(Tréfás, évődő ellenkezés bevezetésére\.[^<]+?).*}{$1]
□ «Királyasszony, néném, Az egekre kérném: Azt a rózsát, piros rózsát
Haj, beh szeretném én! … | Jaj! öcsém, Kázmér, Azt nem adom százér.» — Ar.
|| d. [jaj v. jăj] ‹Vitának, töprengésnek, a beszélő önmagával való vitatkozásának festésében,
ellenvetés, visszavonás kifejezésében.› □ «Néha egy-egy tanács indul egész hévvel,
De maga a szóló megakasztja dé-vel. | „Hátha bizony . . . . jaj de! — Tudod-é mit? … áh de!”» Ar.
|| e. [jăj v. jaj] ‹Elbeszélésben, a sikertelenség hangulatának festésére, a szereplő lehangoltságának érzékeltetésére.›
□ «Mint a hímszarvas, kit vadász sérte nyíllal, … Fut hideg forrásnak enyhítő vizére,
És ezerjófüvet tépni a sebére; Jaj, de a forrásnak kiszáradt az ágya.
Az ezerjófüvet írül sem találja, … | Ugy bolyonga Miklós.» Ar.
23. [jăj] ‹Mentegetőzésben.› □ „Becsületes neved, édes atyámfia?” …
„Jaj, biz én nem igen dicsekszem nevemmel, Szegény fiú vagyok, noha nemes-ember.” Ar.
Jaj, nagyságos asszony, nincs otthon kire hagyni [a gyereket], hát ki kell hozni magammal a munkára. Mó.
24. [jaj] ‹Annak kifejezésére, hogy valami hirtelen eszünkbe jutott, amiről megfeledkeztünk.›
□ Valami jutott eszembe! | Zálogul majd azt teszem be. | Előre, | Hitvesem fejkötője! | Jaj de hisz már sírba zártam
Szerelmetes hitestársam, S ott véle Nyúgoszik fejkötője. Pet.

25. [jäj V . ja j ] (E lbeszélésben, vm ely
elm ú lt állap o t, helyzet, m e g tö rté n t eset, ese�
m ény, élm ény festésére.) ~ , de szép látvány
volt! ~ , de undorító volt az egész! ~ , hogy
féltem !
II. (állítm án y k én t v . á llítm án y ragoz-
h a ta tla n részeként, a m n-i v . fn-i á llítm á n y �
hoz ném ileg hasonló szerepben) [jaj ] (ritk.
-abb)
1. (2. v. 3. szem élyű részeshat-val) ( F e �
nyegetést ta rtalm azó kifejezés á llítm á n y a �
k é n t, ill. állítm án y án ak ra g o z h a ta tla n része�
k é n t :) nagyon rossz (dolog), nagyon keserves
(sors). ~ (lesz) neked! (v. nektek!): lakolni
fogsz (v. fogtok), b a jb a kerülsz (v. k erü l�
tö k ) ; ~ a legyőzőiteknek: keserves sors v á r
a legyőzöttekre ; ( nép) ~ lesz a bőrödnek!:
vigyázz m agadra, m ert elverlek! — 1, (részes�
h a t nélkül) ( ritk) Г Jaj, ki parancsom élve
szegi! A r . Ja j a botránkozónak, de száz�
szor ja j a botránkoztatónak. J ó k . ítél a
nép, Ítélni fog [, ] S ezerszer ja j a bűnö�
söknek. A DY — 12 ( nép) (A részeshat
te stré sz n é v .) О Ja j a fejének, ha én még
egyszer megkapom. JÓ K . — 13 (főleg irod)
(É le tte le n tá rg y ra v o n a tk o z ta tv a .) □ A-
mely [kő] porhatag már, Vessétek azt el
kérlelhetetlenül, Bármily szent emlék van csa�
tolva hozzá, Mert ja j a háznak mely alapba
gyönge. P ét. A haja sűrű volt és annálfogva
gubancos: ja j volt annak a fésűnek, aki
abba rendet csinálni beletcvedt, mert beletörlek
a fogai. J Ó K . И a . (E lbeszélésben, fenyegető
m a g atartás jellem zésére, rossz vég sejte-
té s é re .) П [Dobó] ismét felragadja a kard�
ját, s ráveti magát tigrisként a résen benyo-
makodó törökre. J a j annak, aki most eléje
kerül. G á r d Árpád hazájában ja j annak,
A k i nem úr és nem bitang. A d y
2. (1. sz-ű részeshatározóval) ~ nekem!
v. (ritk) ~ nekünk!: a) (szenvedés, fájdalm as
panasz k ife je z é sé re ); ö P iroska . . . . ez a
név! ja j nekem, ez a név ! \ Hogy tipra keresztül
egy boldogtalan év S közel a másiknak fele is
már rajtam ; Mióta e dalra kulcsolva van aj�
kam ! A r . Karolsz még, drága, kicsi társam?
I Ja j, nekem, ja j, ezerszer is ja j Ebben a véres
ájulásban. A d y ; b) (ije d sé g ,ré m ü le t, kétség-
beesés kifejezésére) ; ~ nekem v . ~ nekünk,
ha . . . : keserves sors v á r rám v . rá n k ,
h a . . . ; nagyon rossz lesz nekem v. n ek ü n k ,
h a . . . О Ha jól megnézlek, még sem vagy te
az [ = K o rp ád i]! Te — ja j nekem, ja j, K ont!
oda vagyok. V ÖR. A többi istent kicsit bánom
én: Csakhogy magamnak is ja j. A r .-A r i s z .
M it cselekszel az istenért? Ja j nekünk, ja j!
Csillapodjál édes fiacskám . . . Gábor, Gábor!
Ml K.
3. (1., 2. v . 3. sz-ű részeshatározóval)
(M ú ltra v o n a tk o z ta tv a , szenvedéssel, f á j�
dalom m al kapcsolatos té n y n ek v. ilyen té n y
feltevésének k ö zléséb en :) nagyon rossz, k e�
serves. ~ volt annak, aki szólni mert. ~ lett
volna neked, ha ellenszegültél volna. □ Ja j
volna az írónak, ki addig le nem írna egy
perfektumot, míg sorba tanácsot nem kérd
nyelvészeinktől! Még jajabb, e tanácsok meg�
hallgatása után! Ar. J a j volt annak, aki
valami újjal nem lépett elő, de jajabb an�
nak, aki értéktelen darabbal állt a deszkára.
B a k s a y S. К a. (F e n y e g e té sb e n , keserves
sorsot, p u sz tu lá st ígérő v . jósló k ijelen tés�
b e n .) □ Csak szerelmied határát ne érjem,
Mert ott, kis lyány, ja j néked, ja j nékem! P é t .
4. (részeshatározó nélkül) (nép) N agyon
rossz, fájd alm as, nehéz, keserves (állap o t,
hely zet, dolog, ügy). ~ a rosszal, de ~abb
a rossz nélkül. О Ja j a nemzetnek, mely lak�
helyeiből kiüldöztetett: jajabb annak, melly ősi
nyelvétőlfosztatott meg. К ö L. 11 a. ( ritk) Olyan
állap o t, h elyzet, am elyben sok fá jd a lm a t kell
elviselnie v k in e k ; keserves álla p o t, sors.
□ S ja j lett volna szegény Piroskának dolga,
IHa, míg emlegették,folyvást csuklóit volna. Ah.
II I. fn [ja j] -t, -ok, jaja v. (költ) jajja
1. (irod) K eserves, fájd alm as, b án a to s
fe lk iá ltá s; ja jk iá ltá s. □ Ritkult a sokaság;
ja j, üvöltés támada benne. V ÖR. S a néma légbe
nem vegyül Csak legkisebbke ja j. G a r . Mosoly�
gom az ostobák Dühödi jaját és hiú mellveré�
sét. T ót h É s hallja távol haldoklók ja já t. . .
J ü. Kívülről, a folyosó felől hosszan elnyújtott
ja j zendült fel, bugyborékoló hörgés vegyült bele,
majd minden dobpergésbe fú lt. К a r . || a. (főleg
b irto k o s szerkezetben, b irto k szó k én t) ( átv
is, irod) N agy töm eg, a nép ja jk iá ltá s a ,
jajsz a v a , keserves sorsa m ia tt feltörő p a n a �
sza. □ Itt egy fa lu , amott egy város ég,
Százezerek jajától zúg a lég. P é t . Oh, nem
hallod-e A nép jaját? Mad.
2. (főleg irod) K eserves, fájd alm as, b á n a �
tos p anaszkodás, panasz. Tele vannak ~jal,
bajjal: sok p an aszu k , fájd alm u k v an . □ Ha�
zánk külön-külön vidékein ja jt, s bánatot talál�
tam. K á t . Tán szíve királynak megesik a jajra.
A r . Ezer oh, ja j, baj, ejnye, nyűg Siránkozik
pityergő szánkon. A dy
3. (ritk, irod) F ájd alo m . (2) □ Lelkem
minden húrja átrezeg a jajtul. Ar. A z ő jajok
rész, összes az enyém. S z i g l .- S h a .
Ö : 1. —dal; —keserves; ~ ordítás; ~ pa�
nasz; —üvöltés; 2. macska—.};

}

print $_;
