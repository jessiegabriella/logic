pria(joko).				/* joko seorang pria */
pria(harry).			/* harry seorang pria */
pria(joni).				/* joni seorang pria */
pria(heri).				/* heri seorang pria */
pria(budi).				/* budi seorang pria */
pria(toni).				/* toni seorang pria */
pria(dwi).				/* dwi seorang pria */
pria(wahyu).			/* wahyu seorang pria */

wanita(merry).			/* merry seorang wanita */
wanita(ani).			/* ani seorang wanita */
wanita(susi).			/* susi seorang wanita */
wanita(tini).			/* tini seorang wanita */
wanita(tina).			/* tina seorang wanita */
wanita(yeni).			/* yeni seorang wanita	*/
wanita(dini).			/* dini seorang wanita 	*/

anak(dini,tini).	/* dini adalah anak tini */
anak(dwi,tini).		/* dwi adalah anak tini */
anak(tini,merry).	/* tini adalah anak merry */
anak(tini,joko).	/* tini adalah anak joko */

anak(dini,budi).	/* dini adalah anak budi */
anak(dwi,budi).		/* dwi adalah anak budi */
anak(budi,harry).	/* budi adalah anak harry */
anak(budi,ani).		/* budi adalah anak ani */

anak(heri,joko).	/* heri adalah anak joko */
anak(heri,merry).	/* heri adalah anak merry */

anak(tina,harry).	/* tina adalah anak harry */
anak(tina,ani).		/* tini adalah anak ani */

anak(wahyu,toni).	/* wahyu adalah anak toni */
anak(toni,harry).	/* toni adalah anak harry */
anak(toni,ani).		/* toni adalah anak ani */

anak(wahyu,yeni).	/* wahyu adalah anak yeni */
anak(yeni,joni).	/* yeni adalah anak joni */
anak(yeni,susi).	/* yeni adalah anak susi */

ibu(X,Y) :- anak(Y,X) , wanita(X).		/* X adalah ibu Y jika Y adalah anak X, dan X adalah seorang wanita */
ayah(X,Y) :- anak(Y,X), pria(X).		/* X adalah ayah Y jika Y adalah anak X, dan X adalah seorang pria */
seorang_ibu(X) :- ibu(X,_).				/* X adalah seorang ibu, jika X adalah ibu dari seorang _ (anak) */
seorang_ayah(X) :- ayah(X,_).			/* X adalah seorang ayah, jika X adalah ayah dari seorang _ (anak) */
seorang_anaklelaki(X) :- pria(X), anak(X,_).	/* X adalah seorang anak lelaki, jika X adalah seorang pria dan seorang _ (anak). */
seorang_anakperempuan(X) :- wanita(X), anak(X,_). /* X adalah seorang seorang anak perempuan, jika X adalah wanita dan seorang _ (anak). */
adik_perempuan(X,Y) :- anak(X,Z), anak(Y,Z), wanita(X). /*  X adalah adik perempuan Y, jika X adalah anak Z, Y adalah anak Z, dan X adalah wanita. */
abang(X,Y) :- anak(X,Z), anak(Y,Z), pria(X).	/* X adalah abang Y, jika X adalah anak Z,  dan Y adalah anak Z, X adalah seorang pria. */
kakek(X,Y) :- anak(Y,Z), anak(Z,X), pria(X).	/* X adalah kakek Y, jika Y adalah anak Z, dan  Z adalah anak X, X adalah seorang pria. */
nenek(X,Y) :- anak(Y,Z), anak(Z,X), wanita(X).	/* X adalah nenek Y, jika Y adalah anak Z, dan Z adalah anak X, X adalah seorang wanita. */
sepupu(X,Y) :- anak(X,Z), anak(Y,A), anak(A,O), anak(Z,O).	/* X adalah sepupu Y, jika X adalah anak Z, dan Y adalah anak A, A adalah anak O, Z adalah anak O. */
ipar_perempuan(X,Y) :- anak(X,Z), anak(A,Z), anak(C,A), anak(C,Y), wanita(X). /* X adalah ipar perempuan Y, jika X adalah anak Z, A adalah anak Z, dan C adalah anak A, C anak Y, dan X adalah seorang wanita. */
bibi(X,Y) :- anak(Y,Z), anak(Z,A), anak(X,A), wanita(X). /* X adalah bibi Y, jika Y adalah anak Z, dan Z adalah anak A, X adalah anak A, dan X adalah seoang wanita. */