Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 948CBEA41
	for <lists+oprofile-list@lfdr.de>; Mon, 29 Apr 2019 20:39:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	MIME-Version:Subject:Message-ID:To:Date:Sender:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	bh=ZxfmdjWsxSo9yA8INukEcerXpnky9slPEkevtIoDN/w=; b=T8Vg+OLjRZ5ldB34xYO0xF02jG
	MtdS1sXJPsRHatCtz8mbaTJHyDCFzX0B166sgOd8IKnPvedKFc3jK9VFVGxty5uPxpTVanraYLGOE
	IHRjz6NN5n9jWTAUEh8V3XXK6nDNu4Bq0TSqgsSKOPD3lw+hlgho4I2zV4LSNoHT15vQ=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1hLBBS-0004Iq-2x; Mon, 29 Apr 2019 18:39:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jerryduan100@yahoo.com>) id 1hLBBQ-0004Ib-Ip
 for oprofile-list@lists.sourceforge.net; Mon, 29 Apr 2019 18:39:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:Content-Type:MIME-Version:Subject:
 Message-ID:To:Reply-To:From:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ruoQIcE+HSGlgXDQlV5+MBsZTF8iJlHV5PhcSOiJpiA=; b=lVeR6ADY3nCm1kvurx2ty1qNpW
 sLsu1oBWWJ5h6BwKZylKxvOgV/UH/kxadKVfF93uMtllr7Q7goY1PkOXWPlAx5QMjw51/JWGH6Ss3
 10h7qT+C9LbHjTXNDTRRv3T1i4MRFg7lN1vwsovdaHU8/Apd5a6JRyC6T3FGUnVzBjWs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:Content-Type:MIME-Version:Subject:Message-ID:To:Reply-To:From:
 Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ruoQIcE+HSGlgXDQlV5+MBsZTF8iJlHV5PhcSOiJpiA=; b=k
 pgDPgW8TXraSKvMHkSuf2cJ1q53v6oIgfv8v+llPGJfRRJa1RfL2yXXyp3QDAlQ4gnEe9rdcRV4bT
 xB4Q0eMvQycx5YjSneJzQbkUfWL0Vb8fpjgJKRA2JMkiy1gcwzi6hmaQynvFtzLU6UV2U/DkcUmcQ
 zHwc14LEtxK3hvAA=;
Received: from sonic309-14.consmr.mail.bf2.yahoo.com ([74.6.129.124])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hLBBO-00HIDz-DJ
 for oprofile-list@lists.sourceforge.net; Mon, 29 Apr 2019 18:39:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1556563152; bh=ruoQIcE+HSGlgXDQlV5+MBsZTF8iJlHV5PhcSOiJpiA=;
 h=Date:From:Reply-To:To:Subject:References:From:Subject;
 b=bJjTTTcZQBhi0tE3UnBg3oE58eG03lwAKse7SEDRfx/ifxB3Q/PudshrFD9uWDt2Wm6wG6yTwp7Lt9gf0bO/4WMLZKlsPXAQ77/o7gdQA4SPBMca22H6bfzlaJgv2UcAA3r756VNOG7QjURi/w0bTdaAoW+3WtS13OP+qVEN76hchbTjX8BqxUsDbhK6f5an/PQiQqDrDIod2lEhBPvhCMPTYyt1ExUJyGjNJbYLui208xC6MoFSzs+5uySKYQMu1rBG5ssY0/zgLpn7fMeUnbfzATLCcMMzfjz9fgn/6hdc5eNbsmR7AWe10U7pcPcyqrRjbQ/0ZFOrpebj2Wj4tA==
X-YMail-OSG: lagIpNcVM1k.qIt.Y08VWdLQ0EyYtBlPa66KtBsUn7b604udwM7nAXP1W6z1mHF
 XvVmdMk4i4nAFaH6GUKA40IZOiWWBEIOfGccpFW1NMYDdeqBZfLAKmh2LHcosJhGH67fc1uNfFG4
 cfXHLB_RKgg3jo806RAkrS4njEelGFO2NuMODnGYqb.pQ_q0JnzRjU0Rj7nTjpj73c.ZjscZxWnb
 NGsEvFju8vDqh6fXbqMwwJesPt.tfIaTSDngUfnKeYHKj9MYZEvMkYwHRSiC2s09WrnHV7m0p7ES
 at2RyLJsBmhWroi4b7_ArN7niEY_dbrWN7k4otQ82agkx15MzqAIwLfMNyXE2CuLh02XzwW44zB0
 NUb4N.RB7fsvPEoiX131tFJNJV8_pEkc_uFa_4mqMnr1PT6XPsvNj2t8jd9H2tzBU4.lkvltCY5v
 WwjTasRPNnvWEHL7OnGUrzDAen2n.ob8EBbXlyNSmxTQPP4ra3b8Ojs0i6dyzXZXrVvpbLUIGuNb
 WC047E3XhEzu58AsZdIJqBMjU0_fzGS_7sVTKkiY4eOEzptf40VF99xBNeY3DByptqTvdOYFBjQX
 m7a.erIh5jc6nPkz36BQ5_c76DZINLpBHC7JT8_GdOPfwmc2CH4gk6POPWfDIhYjnN74mAsV8p1J
 _dMzusmKh6D3WAFk36kMWsqqSBlQv.kW3CCcSaU.008d5oIRevgxIOVLEApbELh5uoxp7qqp0alv
 G94EdpojtN90EqSxxWILjUEI_wPROXHepFs_6liO311FMNrcPQFQ2gQ6UB0ZoJ8W3t9h2UIbXAUX
 Pn5.4JLkBCPxJxOUtjY4dDz6IHGkE67Mx.3oNwF.J88OzJxgZfGl_mJVpM7jm_eJ2l5u9eOr2a7k
 UsnKSVz20vHTPN2HdUHnTibMoSPhuVx.9nEuYu4o.wRdfg_QybZMqZW9SXai2IrJYlVCqyykSn5X
 f.F3NMEj.N6zLvYO9KU5KrV7XJnsTdcAhhDOdYtHNfOaff1Fjr9NYdFjPzsOnenkYtmMYY6ojRmK
 aggblrLaKMIMkgSguYcWd1BzV9uI.g_l8FXTCnzb7W6S4xFD4eUHOxdRu0.83BJNJi7N_C8OTGzs
 bprq6PqXNez51cOZDKpbSlZrP_drSK_KyRf8TqZ.050Gc2L7ScUonRekOYxEldF2GdZd0ELdlE_4
 D15MzcVNJI72TYLgf5rMfSWyHhsCMKWFkNrSC
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.bf2.yahoo.com with HTTP; Mon, 29 Apr 2019 18:39:12 +0000
Date: Mon, 29 Apr 2019 18:37:00 +0000 (UTC)
To: "oprofile-list@lists.sourceforge.net" <oprofile-list@lists.sourceforge.net>
Message-ID: <1656720488.1989768.1556563020320@mail.yahoo.com>
Subject: Having trouble profiling multiple events for an existing process in
 ARM CortexA53
MIME-Version: 1.0
References: <1656720488.1989768.1556563020320.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.13554 YMailNorrin Mozilla/5.0 (X11; Ubuntu;
 Linux x86_64; rv:66.0) Gecko/20100101 Firefox/66.0
X-Spam-Score: 1.4 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jerryduan100[at]yahoo.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [74.6.129.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [74.6.129.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (jerryduan100[at]yahoo.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (jerryduan100[at]yahoo.com)
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hLBBO-00HIDz-DJ
X-BeenThere: oprofile-list@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "For discussion of the profiler oprofile."
 <oprofile-list.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/oprofile-list>, 
 <mailto:oprofile-list-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=oprofile-list>
List-Post: <mailto:oprofile-list@lists.sourceforge.net>
List-Help: <mailto:oprofile-list-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/oprofile-list>, 
 <mailto:oprofile-list-request@lists.sourceforge.net?subject=subscribe>
From: Jerry Duan via oprofile-list <oprofile-list@lists.sourceforge.net>
Reply-To: Jerry Duan <jerryduan100@yahoo.com>
Content-Type: multipart/mixed; boundary="===============3033333571172253208=="
Errors-To: oprofile-list-bounces@lists.sourceforge.net

--===============3033333571172253208==
Content-Type: multipart/alternative; 
	boundary="----=_Part_1989767_399132038.1556563020319"
Content-Length: 7058

------=_Part_1989767_399132038.1556563020319
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,=20
I am trying to use Oprofile (1.3.0) to get some cache miss rate for our app=
lication in our platform (ARMv8 CortexA53, kernel 4.9.0, Yocto). It is kind=
 of working now. But, when using operf to profile multiple events for an ex=
isting process, it always failed to start profiling by saying the target pr=
ogram is already ended.

$operf=C2=A0 --vmlinux /boot/vmlinux-4.9.0=C2=A0 --events L2D_CACHE:5000:0:=
1:1,L2D_CACHE_REFILL:5000:0:1:1 -p 3253
events L2D_CACHE:5000:0:1:1,L2D_CACHE_REFILL:5000:0:1:1 -p 3253x /boot/vmli=
nux-4.9.0=C2=A0 --=20
!!!! No samples collected !!!
The target program/command ended before profiling was started.
operf record init failed
usage: operf [ options ] [ --system-wide | --pid <pid> | [ command [ args ]=
 ] ]
$

Am I doing something wrong? Could someone shed a light for me?

But I don't have any issue if I profile only one event (i.e, L2D_CACHE,L2D_=
CACHE_WB or L2D_CACHE_REFILL) for the same existing process,at least the op=
erf started profiling and opreport gave me some result.

$operf=C2=A0 --vmlinux /boot/vmlinux-4.9.0=C2=A0 --events L2D_CACHE:5000:0:=
1:1 -p 3253
operf: Press Ctl-c or 'kill -SIGINT 4800' to stop profiling
operf: Profiler started
^C
Profiling done.
$ opreport=20
Using /mnt/localdisk/oprofile_data/samples/ for samples directory.
CPU: ARM Cortex-A53, speed 1200 MHz (estimated)
Counted L2D_CACHE events (Level 2 data cache access) with a unit mask of 0x=
00 (No unit mask) count 5000
=C2=A0=C2=A0 L2D_CACHE:5000|
=C2=A0 samples|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 %|
------------------
=C2=A0=C2=A0=C2=A0 39594 100.000 wl4app
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 L2D_CACHE:5000|
=C2=A0=C2=A0 =C2=A0=C2=A0 samples|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 %|
=C2=A0=C2=A0 =C2=A0------------------
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 15632 39.4807 myapp
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 15191 38.3669 vmlinux-4.9.0
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 3578=C2=A0 9.0367 libc-2.24.so
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2732=C2=A0 6.9000 libzmq.so.5.0=
.1
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1624=C2=A0 4.1016 libpthread-2.=
24.so
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 327=C2=A0 0.8259 libczmq.=
so.4.0.2
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 287=C2=A0 0.7249 [vdso] (=
tgid:3253 range:0x7fa4845000-0x7fa4845fff)
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 180=C2=A0 0.4546 libmemTr=
ace.so.0.0.0
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 31=C2=A0 0.0783 lib=
rt-2.24.so
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 6=C2=A0 0.015=
2 ld-2.24.so
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 3=C2=A0 0.007=
6 libcrypto.so.1.0.2
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2=C2=A0 0.005=
1 mylib
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1=C2=A0 0.002=
5 libsystemd.so.0.15.0
$=20
$operf=C2=A0 --vmlinux /boot/vmlinux-4.9.0=C2=A0 --events L2D_CACHE_REFILL:=
5000:0:1:1 -p 3253
operf: Press Ctl-c or 'kill -SIGINT 4831' to stop profiling
operf: Profiler started
^C
Profiling done.
$=20

$ operf --version
operf: oprofile 1.3.0 compiled on Apr 25 2019 12:06:54
$=20

Regards,
Jerry

------=_Part_1989767_399132038.1556563020319
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div><span=
>Hi, <br>I am trying to use Oprofile (1.3.0) to get some cache miss rate fo=
r our application in our platform (ARMv8 CortexA53, kernel 4.9.0, Yocto). I=
t is kind of working now. But, when using operf to profile multiple events =
for an existing process, it always failed to start profiling by saying the =
target program is already ended.<br><br>$operf&nbsp; --vmlinux /boot/vmlinu=
x-4.9.0&nbsp; --events L2D_CACHE:5000:0:1:1,L2D_CACHE_REFILL:5000:0:1:1 -p =
3253<br>events L2D_CACHE:5000:0:1:1,L2D_CACHE_REFILL:5000:0:1:1 -p 3253x /b=
oot/vmlinux-4.9.0&nbsp; -- <br>!!!! No samples collected !!!<br>The target =
program/command ended before profiling was started.<br>operf record init fa=
iled<br>usage: operf [ options ] [ --system-wide | --pid &lt;pid&gt; | [ co=
mmand [ args ] ] ]<br>$<br><br>Am I doing something wrong? Could someone sh=
ed a light for me?<br><br>But I don't have any issue if I profile only one =
event (i.e, L2D_CACHE,L2D_CACHE_WB or L2D_CACHE_REFILL) for the same existi=
ng process,at least the operf started profiling and opreport gave me some r=
esult.<br><br>$operf&nbsp; --vmlinux /boot/vmlinux-4.9.0&nbsp; --events L2D=
_CACHE:5000:0:1:1 -p 3253<br>operf: Press Ctl-c or 'kill -SIGINT 4800' to s=
top profiling<br>operf: Profiler started<br>^C<br>Profiling done.<br>$ opre=
port <br>Using /mnt/localdisk/oprofile_data/samples/ for samples directory.=
<br>CPU: ARM Cortex-A53, speed 1200 MHz (estimated)<br>Counted L2D_CACHE ev=
ents (Level 2 data cache access) with a unit mask of 0x00 (No unit mask) co=
unt 5000<br>&nbsp;&nbsp; L2D_CACHE:5000|<br>&nbsp; samples|&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; %|<br>------------------<br>&nbsp;&nbsp;&nbsp; 39594 100.000=
 wl4app<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; L2D_CACHE:5000|<br>&nbsp;&nbsp; =
&nbsp;&nbsp; samples|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; %|<br>&nbsp;&nbsp; &nbs=
p;------------------<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 15632 39.4807=
 myapp<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 15191 38.3669 vmlinux-4.9.0=
<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3578&nbsp; 9.0367 libc-2.24=
.so<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2732&nbsp; 6.9000 libzmq=
.so.5.0.1<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1624&nbsp; 4.1016 =
libpthread-2.24.so<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 327=
&nbsp; 0.8259 libczmq.so.4.0.2<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; 287&nbsp; 0.7249 [vdso] (tgid:3253 range:0x7fa4845000-0x7fa4845fff=
)<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 180&nbsp; 0.4546 lib=
memTrace.so.0.0.0<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; 31&nbsp; 0.0783 librt-2.24.so<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; 6&nbsp; 0.0152 ld-2.24.so<br>&nbsp;&nbsp; &nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3&nbsp; 0.0076 libcrypto.so.1.0.2<br>=
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2&nbsp; 0.005=
1 mylib<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1&=
nbsp; 0.0025 libsystemd.so.0.15.0<br>$ <br>$operf&nbsp; --vmlinux /boot/vml=
inux-4.9.0&nbsp; --events L2D_CACHE_REFILL:5000:0:1:1 -p 3253<br>operf: Pre=
ss Ctl-c or 'kill -SIGINT 4831' to stop profiling<br>operf: Profiler starte=
d<br>^C<br>Profiling done.<br>$ <br><br>$ operf --version<br>operf: oprofil=
e 1.3.0 compiled on Apr 25 2019 12:06:54<br>$ <br><br>Regards,<br>Jerry</sp=
an><br></div></div></body></html>
------=_Part_1989767_399132038.1556563020319--


--===============3033333571172253208==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3033333571172253208==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list

--===============3033333571172253208==--

