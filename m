Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B367A10C4C
	for <lists+oprofile-list@lfdr.de>; Wed,  1 May 2019 19:42:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Subject:References:In-Reply-To:Message-ID:To:Date:Sender:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uC3R/sg/t/059lYWHPfhZHEyIkjqj3lXr04nt/52x04=; b=TuGbDW0kiK/KHWmb2g2F8IEuC
	aBpcH39ZeSWO2E2b9JIAp0aznkbuTCYwc9itgGDyNHh3aOF5kDuCAYqlhFKIvyRpslP7PQsIfHerm
	m84ztNxnoiwLLIFPV1GtPxwtXNHzs1/SUPzsWFmA8nLUoCVs4c4lOwjnzZMrHbv3C9rTM=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1hLtFe-00051f-2R; Wed, 01 May 2019 17:42:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jerryduan100@yahoo.com>) id 1hLtFd-00051S-0E
 for oprofile-list@lists.sourceforge.net; Wed, 01 May 2019 17:42:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:To:Reply-To:From:Date:Sender:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o8uUw+eSvAx3e9ZBBla/HGCrHF46kG3nHncNoUsehf8=; b=jCqotBp85k6hZTQtbHAbUu+Jn
 CctmOJMnjelx3goEjabNw2b0e/Ey9iu70nzcHsnrNQCBo+FeajFIuQOvZ9vy9ktt1MqXvmWUvMFpH
 1u2jtTf5+ORA2PUDiOlZgz5HLK0zwuBnJjHiv/9QiCcGSnzCo8aiHcZO2rEZv6qRDIuBY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Subject:References:In-Reply-To:Message-ID:To:
 Reply-To:From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o8uUw+eSvAx3e9ZBBla/HGCrHF46kG3nHncNoUsehf8=; b=cr/isw03vBK0MnjEa81XVm6G07
 oJ1MLNVQ2rHQx0kb69c9Bf2C/15SdIA54jNtMIj1PXHxL00jquDkSqFjYhTkKnqDuwa1G5qUchbQc
 1E/iZ4yUiRRCmPtO4FEZp2etuZi3tRcjXZYh6pPyK3kj+QE+xi8o+2yyQL12BC1aJiuc=;
Received: from sonic304-9.consmr.mail.bf2.yahoo.com ([74.6.128.32])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hLtFa-002Lgl-9v
 for oprofile-list@lists.sourceforge.net; Wed, 01 May 2019 17:42:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1556732548; bh=o8uUw+eSvAx3e9ZBBla/HGCrHF46kG3nHncNoUsehf8=;
 h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
 b=NjKuLSLdV/LLnBczVu3qVzxlHoQZLNSUYuRtu96LnFi9Snu42xGfSenDWFx1CnySHGRJs65o2PH1t7KfF1lTsZEJmnmuUGAm3QPF9VudOHobE0gj4mEfmrX2boHSnxZ4w6M3xTSt9096teFYNfoHu+4Dibj62K99dBY/Xx/ETetgpF7PGAOeFE9q7xRBq0HV+AaMiTogR5uVEa9xlqvkxaimc1qL7BtXf7fUi8JmriwOzxXPoFV/qYMM2BwDhtATCkHXR4QPFJbiut8PjLecwPJ6QANA3+m3gRlS/cJROTIGTnIiCUqoBicdVYKVbuas7HtaFedbmZg7Q1MY5KwLDQ==
X-YMail-OSG: C2SJXCsVM1nMvvI_rCAoJLu8i3UKcEDAsmaGLTYHJ6hSbxtpTbOZ33dc9Oyni27
 Zxbd.nT.oGXG194wqodSAbMs3sFmPptqsM1FFIUrsL7b3owaJdbv3N3YXzzMXGZ01hFHpSHjsMjA
 Q9xXYaw2xWzQ6kx7ojm9FT1pZ6uEXvsIFmEI6QpdwTC1Ji1JBHCbCUdjRqQDpq7E_IuLWv7dDAp9
 bPQR1YMn8V7Ziedj1xAeaZR5TBJ3kbE12nWhBkFHE1iRUhZr.7i6i79Yem9jESm5PfyHFBkY5GGU
 8Exsmlk2MogqSdlmC8tdzRUhtTr2ZcmwHDOnEPq__8CPrXdN7SHUJwO1DytTCoNqPP7Kl2WXrHd8
 DxCqhBaO6mN_IMS0rVW4u6bjPqJaeiKZwlte29bU7XnRejj9IwwsJLBI1yx3z8iLv5RSMugu96ID
 fyAMjWAMSBWrt1PlIrtNmB.NB8FQTBXwnUBZ.1h5FZIkv4KaMj4TJN.M8bq9Hggs1njQwyN2fGH_
 QEStUnL_vzczc5v5x98cETfgmo7dL3VgCY2RrKW_vNEmQd2icEa9QxunKYtHTOjukZOS26EIowx3
 IgFIqHP3pEsyne0vnAK6Ax1sdyjM14eV4uRCpnBBYJ.3PpADRRs4LCUrxZfeXVYW5CrpnLAPu3m4
 jmVwIDG6b111SBAfdItHUNaoEHSn0mfjT4UpPA4yUpTFBqPFTUaqMmjeEuKOYlvtcT_nErBBPWZO
 bx9iTP6INEAW_YlS.vtl5oPzEkZzHhQFdrIOcIzybzU1U6M6lKxI1L2goeekHrdkmyDlCWyuMMHG
 G45P_wBYwErsrtJaiB96u3EhN0ZZ57ImZKDH2vBD7InVQ9ju.I5QqN_oe1NviVjZ91saJ2ytkMHz
 ShPIjtHtg6r_GfrLtAHJjWzVDhFrRnetVuyYkWzdtM4RGLd_5WVCDzsiJK8N6p4A7ptRmCntYoba
 k5Xgu45cELk8GgvdrzoDU62FkzLRFRHUpvQ1ILqhgXJiOjja8WHgrm1f9nCEp2nDOXVuOQtUbe2m
 CLiNJQ8WKAWZforauJmmb.NmKPrtmrCf4jafgxmuMVYM9WZIgBvGdiaQcOKhemPv6QsBG1iB0tHT
 m2.2yepcyL8Vw9ishUN_LOSJoBfENdzxM4UhUVggkz21ltg7XgafOPFNEhQrk5tE.5jxFRTuMhjh
 7vmfG1XPnvli1aqmjfhbpPDKPTToBpcf.ORIB.DUsfro-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.bf2.yahoo.com with HTTP; Wed, 1 May 2019 17:42:28 +0000
Date: Wed, 1 May 2019 17:41:43 +0000 (UTC)
To: "oprofile-list@lists.sourceforge.net"
 <oprofile-list@lists.sourceforge.net>, William Cohen <wcohen@redhat.com>
Message-ID: <1099690386.2954181.1556732503242@mail.yahoo.com>
In-Reply-To: <1181b2fe-be48-41e2-eeb1-8f3e82050aac@redhat.com>
References: <1656720488.1989768.1556563020320.ref@mail.yahoo.com>
 <1656720488.1989768.1556563020320@mail.yahoo.com>
 <1181b2fe-be48-41e2-eeb1-8f3e82050aac@redhat.com>
Subject: Re: Having trouble profiling multiple events for an existing
 process in ARM CortexA53
MIME-Version: 1.0
X-Mailer: WebService/1.1.13554 YMailNorrin Mozilla/5.0 (X11; Ubuntu;
 Linux x86_64; rv:66.0) Gecko/20100101 Firefox/66.0
X-Spam-Score: 1.4 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jerryduan100[at]yahoo.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: 28.so]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [74.6.128.32 listed in list.dnswl.org]
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
X-Headers-End: 1hLtFa-002Lgl-9v
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
Content-Type: multipart/mixed; boundary="===============8166780694584869150=="
Errors-To: oprofile-list-bounces@lists.sourceforge.net

--===============8166780694584869150==
Content-Type: multipart/alternative; 
	boundary="----=_Part_2954180_288440406.1556732503239"
Content-Length: 35764

------=_Part_2954180_288440406.1556732503239
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Will,
Thanks a lot for your response.=20

Two things I just noticed.
The first one is that my issue might have something to do with my particula=
r app (i.e,"myapp"). Because, when I switched to a simple app (i.e, myCache=
Test), the issue is gone. Any ideas what could be the cause?

$operf=C2=A0 --vmlinux /boot/vmlinux-4.9.0=C2=A0 --events L2D_CACHE:5000:0:=
1:1,L2D_CACHE_REFILL:5000:0:1:1 -p 6247=20
operf: Press Ctl-c or 'kill -SIGINT 6250' to stop profiling
operf: Profiler started
^C
$ opreport=20
Using /mnt/localdisk/tmp1/oprofile_data/samples/ for samples directory.
CPU: ARM Cortex-A53, speed 1200 MHz (estimated)
Counted L2D_CACHE events (Level 2 data cache access) with a unit mask of 0x=
00 (No unit mask) count 5000
Counted L2D_CACHE_REFILL events (Level 2 data cache refill) with a unit mas=
k of 0x00 (No unit mask) count 5000
=C2=A0=C2=A0 L2D_CACHE:5000|L2D_CACHE_REFI...|
=C2=A0 samples|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 %|=C2=A0 samples|=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 %|
------------------------------------
=C2=A0=C2=A0 404764 100.000=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2021 100.000 myCa=
cheTest
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 L2D_CACHE:5000|L2D_CACHE_REFI...|
=C2=A0=C2=A0 =C2=A0=C2=A0 samples|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 %|=C2=A0 s=
amples|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 %|
=C2=A0=C2=A0 =C2=A0------------------------------------
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 403377 99.6573=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 1918 94.9035 myCacheTest
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1387=C2=A0 0.3427=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 103=C2=A0 5.0965 vmlinux-4.9.0
$

The second one is if I use "--system-wide" instead of "-p 3253", the issue =
is gone too. I mean that it profiles all the processes including the troubl=
e one (i.e, "myapp")=20
$operf=C2=A0 --vmlinux /boot/vmlinux-4.9.0=C2=A0 --events L2D_CACHE:5000:0:=
1:1,L2D_CACHE_REFILL:5000:0:1:1=C2=A0 --system-wide
operf: Press Ctl-c or 'kill -SIGINT 6269' to stop profiling
operf: Profiler started
^C
Profiling done.
$ opreport=20
Using /mnt/localdisk/tmp1/oprofile_data/samples/ for samples directory.
CPU: ARM Cortex-A53, speed 1200 MHz (estimated)
Counted L2D_CACHE events (Level 2 data cache access) with a unit mask of 0x=
00 (No unit mask) count 5000
Counted L2D_CACHE_REFILL events (Level 2 data cache refill) with a unit mas=
k of 0x00 (No unit mask) count 5000
=C2=A0=C2=A0 L2D_CACHE:5000|L2D_CACHE_REFI...|
=C2=A0 samples|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 %|=C2=A0 samples|=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 %|
------------------------------------
=C2=A0=C2=A0=C2=A0 40070 93.4446=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4860 90.8241=
 myapp
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 L2D_CACHE:5000|L2D_CACHE_REFI...|
=C2=A0=C2=A0 =C2=A0=C2=A0 samples|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 %|=C2=A0 s=
amples|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 %|
=C2=A0=C2=A0 =C2=A0------------------------------------
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 17237 43.0172=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 1903 39.1564 myapp
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 14090 35.1635=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 1678 34.5267 vmlinux-4.9.0
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 3609=C2=A0 9.0067=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 510 10.4938 libc-2.24.so
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2664=C2=A0 6.6484=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 383=C2=A0 7.8807 libzmq.so.5.0.1
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1471=C2=A0 3.6711=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 215=C2=A0 4.4239 libpthread-2.24.so
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 429=C2=A0 1.0706=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 96=C2=A0 1.9753 libczmq.so.4.0.2
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 339=C2=A0 0.8460=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 37=C2=A0 0.7613 [vdso] (tgid:3253 range:0=
x7fa4845000-0x7fa4845fff)
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 180=C2=A0 0.4492=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 23=C2=A0 0.4733 libmemTrace.so.0.0.0
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 32=C2=A0 0.0799=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 7=C2=A0 0.1440 librt-2.24.so
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 7=C2=A0 0.017=
5=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1=C2=A0 0.0206 libsystemd=
.so.0.15.0
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 6=C2=A0 0.015=
0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4=C2=A0 0.0823 mylib
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4=C2=A0 0.010=
0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1=C2=A0 0.0206 ld-2.24.so
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2=C2=A0 0.005=
0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2=C2=A0 0.0412 libcrypto.=
so.1.0.2
=C2=A0=C2=A0=C2=A0=C2=A0 1751=C2=A0 4.0834=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 40=C2=A0 0.7475 operf
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 L2D_CACHE:5000|L2D_CACHE_REFI...|
=C2=A0=C2=A0 =C2=A0=C2=A0 samples|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 %|=C2=A0 s=
amples|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 %|
=C2=A0=C2=A0 =C2=A0------------------------------------
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 955 54.5403=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 23 57.5000 vmlinux-4.9.0
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 479 27.3558=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 11 27.5000 operf
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 273 15.5911=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 5 12.5000 libc-2.24.so
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 42=C2=A0 2.3986=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1=C2=A0 2.5000 libstdc++.so.6=
.0.22
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2=C2=A0 0.114=
2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 0 ld-2.24.so
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 386=C2=A0 0.9002=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 162=C2=A0 3.0275 rcu_sched
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 L2D_CACHE:5000|L2D_CACHE_REFI...|
=C2=A0=C2=A0 =C2=A0=C2=A0 samples|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 %|=C2=A0 s=
amples|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 %|
=C2=A0=C2=A0 =C2=A0------------------------------------
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 386 100.000=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 162 100.000 vmlinux-4.9.0
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 280=C2=A0 0.6530=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 98=C2=A0 1.8314 tcf-agent
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 L2D_CACHE:5000|L2D_CACHE_REFI...|
=C2=A0=C2=A0 =C2=A0=C2=A0 samples|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 %|=C2=A0 s=
amples|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 %|
=C2=A0=C2=A0 =C2=A0------------------------------------
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 181 64.6429=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 47 47.9592 vmlinux-4.9.0
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 43 15.3571=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 15 15.3061 libc-2.24.so
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 39 13.9286=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 26 26.5306 tcf-agent
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 11=C2=A0 3.9286=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 5=C2=A0 5.1020 libpthread-2.2=
4.so
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 6=C2=A0 2.142=
9=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 5=C2=A0 5.1020 [vdso] (tg=
id:2873 range:0x7f9933d000-0x7f9933dfff)
...
$

I guess that the issue might also have something to do with the "-p <PID>" =
option, but not sure.=20
According to 1.3.0 release note, it has the following known issue triggered=
 by "--pid" option, but, it doesn't seem to have the same symptom as mine (=
i.e, operf just simply failed to start profiling the app).
[
- Monitoring processes that frequently create and destroy threads via
=C2=A0 the "--pid" option can be problematic.=C2=A0 The pipes used within o=
perf
=C2=A0 and ocount may fill up can cause these programs to hang and require
=C2=A0 multiple cntl-C to exit rather than successfully collecting data on
=C2=A0 fast spawning processes and children.
]=20

My SoC is zynqmp, and my dmesg output is the following:
[=C2=A0=C2=A0 30.515339] hw perfevents: enabled with armv8_pmuv3 PMU driver=
, 7 counters available
(BTW, why does it say 7 counters? as you mentioned that all the cortex a53 =
should have the same pmu with 6 counters)

My dts/pmu binding has the following:
=C2=A0 compatible =3D "arm,armv8-pmuv3"
Not sure if I have to change to "arm,cortex-a53-pmu", I will give it a try.

Thanks,
Jerry

    On Tuesday, April 30, 2019, 9:22:08 p.m. EDT, William Cohen <wcohen@red=
hat.com> wrote: =20
=20
 On 4/29/19 2:37 PM, Jerry Duan via oprofile-list wrote:
> Hi,
> I am trying to use Oprofile (1.3.0) to get some cache miss rate for our a=
pplication in our platform (ARMv8 CortexA53, kernel 4.9.0, Yocto). It is ki=
nd of working now. But, when using operf to profile multiple events for an =
existing process, it always failed to start profiling by saying the target =
program is already ended.
>=20
> $operf=C2=A0 --vmlinux /boot/vmlinux-4.9.0=C2=A0 --events L2D_CACHE:5000:=
0:1:1,L2D_CACHE_REFILL:5000:0:1:1 -p 3253
> events L2D_CACHE:5000:0:1:1,L2D_CACHE_REFILL:5000:0:1:1 -p 3253x /boot/vm=
linux-4.9.0=C2=A0 --
> !!!! No samples collected !!!
> The target program/command ended before profiling was started.
> operf record init failed
> usage: operf [ options ] [ --system-wide | --pid <pid> | [ command [ args=
 ] ] ]
> $
>=20
> Am I doing something wrong? Could someone shed a light for me?
>=20
> But I don't have any issue if I profile only one event (i.e, L2D_CACHE,L2=
D_CACHE_WB or L2D_CACHE_REFILL) for the same existing process,at least the =
operf started profiling and opreport gave me some result.
>=20
> $operf=C2=A0 --vmlinux /boot/vmlinux-4.9.0=C2=A0 --events L2D_CACHE:5000:=
0:1:1 -p 3253
> operf: Press Ctl-c or 'kill -SIGINT 4800' to stop profiling
> operf: Profiler started
> ^C
> Profiling done.
> $ opreport
> Using /mnt/localdisk/oprofile_data/samples/ for samples directory.
> CPU: ARM Cortex-A53, speed 1200 MHz (estimated)
> Counted L2D_CACHE events (Level 2 data cache access) with a unit mask of =
0x00 (No unit mask) count 5000
> =C2=A0=C2=A0 L2D_CACHE:5000|
> =C2=A0 samples|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 %|
> ------------------
> =C2=A0=C2=A0=C2=A0 39594 100.000 wl4app
> =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 L2D_CACHE:5000|
> =C2=A0=C2=A0 =C2=A0=C2=A0 samples|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 %|
> =C2=A0=C2=A0 =C2=A0------------------
> =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 15632 39.4807 myapp
> =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 15191 38.3669 vmlinux-4.9.0
> =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 3578=C2=A0 9.0367 libc-2.24.s=
o
> =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2732=C2=A0 6.9000 libzmq.so.5=
.0.1
> =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1624=C2=A0 4.1016 libpthread-=
2.24.so
> =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 327=C2=A0 0.8259 libczm=
q.so.4.0.2
> =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 287=C2=A0 0.7249 [vdso]=
 (tgid:3253 range:0x7fa4845000-0x7fa4845fff)
> =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 180=C2=A0 0.4546 libmem=
Trace.so.0.0.0
> =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 31=C2=A0 0.0783 l=
ibrt-2.24.so
> =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 6=C2=A0 0.0=
152 ld-2.24.so
> =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 3=C2=A0 0.0=
076 libcrypto.so.1.0.2
> =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2=C2=A0 0.0=
051 mylib
> =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1=C2=A0 0.0=
025 libsystemd.so.0.15.0
> $
> $operf=C2=A0 --vmlinux /boot/vmlinux-4.9.0=C2=A0 --events L2D_CACHE_REFIL=
L:5000:0:1:1 -p 3253
> operf: Press Ctl-c or 'kill -SIGINT 4831' to stop profiling
> operf: Profiler started
> ^C
> Profiling done.
> $
>=20
> $ operf --version
> operf: oprofile 1.3.0 compiled on Apr 25 2019 12:06:54
> $
>=20
> Regards,
> Jerry

Hi,

What particular armv8 SoC are you using?=C2=A0 In theory all the cortex a53=
 processors should have the same pmu hardware with 6 programmable counters,=
 but I wonder if this processor might be limited to one programmable counte=
r or whether some other driver in the system is reserving the counters such=
 as "perf -a -e ...". Is there anything else on the machine that might be r=
eserving counters such a watchdog? You might take a look through the dmesg =
output for a something that looks like the following stating the number of =
performance counters that are available:

[=C2=A0 =C2=A0 1.571915] hw perfevents: enabled with armv8_cortex_a53 PMU d=
river, 7 counters available

Also if you are using a device tree file make sure that it properly describ=
es the performance monitoring hardware.=C2=A0 In the past incorrect descrip=
tions have prevented

I tried something similar on a dragonboad 410c, a 96board with 4 cortext a5=
3 processors.=C2=A0 It is much newer 5.0.9 kernel.=C2=A0 Maybe there is som=
ething going on in the kernel that is preventing both events from being set=
 at the same time.=C2=A0 Below is the output.=20



$ rpm -q oprofile
oprofile-1.3.0-1.fc29.aarch64
$ sudo operf=C2=A0 --vmlinux /usr/lib/debug/lib/modules/5.0.9-200.fc29.aarc=
h64/vmlinux=C2=A0 --events L2D_CACHE:5000:0:1:1,L2D_CACHE_REFILL:5000:0:1:1=
 -p 1896 --
operf: Press Ctl-c or 'kill -SIGINT 11648' to stop profiling
operf: Profiler started
^C^Cwaitpid for operf-record process failed: Interrupted system call
^Cwaitpid for operf-read process failed: Interrupted system call
Error running profiler
[wcohen@localhost ~]$ opreport
Using /home/wcohen/oprofile_data/samples/ for samples directory.
CPU: ARM Cortex-A53, speed 57 MHz (estimated)
Counted L2D_CACHE events (Level 2 data cache access) with a unit mask of 0x=
00 (No unit mask) count 5000
Counted L2D_CACHE_REFILL events (Level 2 data cache refill) with a unit mas=
k of 0x00 (No unit mask) count 5000
=C2=A0 L2D_CACHE:5000|L2D_CACHE_REFI...|
=C2=A0 samples|=C2=A0 =C2=A0 =C2=A0 %|=C2=A0 samples|=C2=A0 =C2=A0 =C2=A0 %=
|
------------------------------------
=C2=A0 =C2=A0 10529 99.4991=C2=A0 =C2=A0 =C2=A0 661 97.7811 du
=C2=A0=C2=A0=C2=A0 =C2=A0 L2D_CACHE:5000|L2D_CACHE_REFI...|
=C2=A0=C2=A0=C2=A0 =C2=A0 samples|=C2=A0 =C2=A0 =C2=A0 %|=C2=A0 samples|=C2=
=A0 =C2=A0 =C2=A0 %|
=C2=A0=C2=A0=C2=A0 ------------------------------------
=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 8808 83.6547=C2=A0 =C2=A0 =C2=A0 568 85.93=
04 vmlinux
=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 876=C2=A0 8.3199=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 49=C2=A0 7.4130 libc-2.28.so
=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 844=C2=A0 8.0160=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 43=C2=A0 6.5053 du
=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1=C2=A0 0.0095=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 1=C2=A0 0.1513 ld-2.28.so
=C2=A0 =C2=A0 =C2=A0 30=C2=A0 0.2835=C2=A0 =C2=A0 =C2=A0 =C2=A0 7=C2=A0 1.0=
355 rpm
=C2=A0=C2=A0=C2=A0 =C2=A0 L2D_CACHE:5000|L2D_CACHE_REFI...|
=C2=A0=C2=A0=C2=A0 =C2=A0 samples|=C2=A0 =C2=A0 =C2=A0 %|=C2=A0 samples|=C2=
=A0 =C2=A0 =C2=A0 %|
=C2=A0=C2=A0=C2=A0 ------------------------------------
=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 27 90.0000=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 6 85.7143 vmlinux
=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 3 10.0000=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 1 14.2857 ld-2.28.so
=C2=A0 =C2=A0 =C2=A0 23=C2=A0 0.2174=C2=A0 =C2=A0 =C2=A0 =C2=A0 8=C2=A0 1.1=
834 bash
=C2=A0=C2=A0=C2=A0 =C2=A0 L2D_CACHE:5000|L2D_CACHE_REFI...|
=C2=A0=C2=A0=C2=A0 =C2=A0 samples|=C2=A0 =C2=A0 =C2=A0 %|=C2=A0 samples|=C2=
=A0 =C2=A0 =C2=A0 %|
=C2=A0=C2=A0=C2=A0 ------------------------------------
=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 20 86.9565=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 5 62.5000 vmlinux
=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2=C2=A0 8.6957=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 1 12.5000 bash
=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1=C2=A0 4.3478=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 2 25.0000 libc-2.28.so


-Will Cohen
 =20
------=_Part_2954180_288440406.1556732503239
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp199bb19yahoo-style-wrap" style=3D=
"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;">=
<div></div>
        <div><div>Hi Will,<br>Thanks a lot for your response. <br><br>Two t=
hings I just noticed.<br>The first one is that my issue might have somethin=
g to do with my particular app (i.e,"myapp"). Because, when I switched to a=
 simple app (i.e, myCacheTest), the issue is gone. Any ideas what could be =
the cause?<br><br>$operf&nbsp; --vmlinux /boot/vmlinux-4.9.0&nbsp; --events=
 L2D_CACHE:5000:0:1:1,L2D_CACHE_REFILL:5000:0:1:1 -p 6247 <br>operf: Press =
Ctl-c or 'kill -SIGINT 6250' to stop profiling<br>operf: Profiler started<b=
r>^C<br>$ opreport <br>Using /mnt/localdisk/tmp1/oprofile_data/samples/ for=
 samples directory.<br>CPU: ARM Cortex-A53, speed 1200 MHz (estimated)<br>C=
ounted L2D_CACHE events (Level 2 data cache access) with a unit mask of 0x0=
0 (No unit mask) count 5000<br>Counted L2D_CACHE_REFILL events (Level 2 dat=
a cache refill) with a unit mask of 0x00 (No unit mask) count 5000<br>&nbsp=
;&nbsp; L2D_CACHE:5000|L2D_CACHE_REFI...|<br>&nbsp; samples|&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; %|&nbsp; samples|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; %|<br>-----=
-------------------------------<br>&nbsp;&nbsp; 404764 100.000&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; 2021 100.000 myCacheTest<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbs=
p; L2D_CACHE:5000|L2D_CACHE_REFI...|<br>&nbsp;&nbsp; &nbsp;&nbsp; samples|&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; %|&nbsp; samples|&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; %|<br>&nbsp;&nbsp; &nbsp;------------------------------------<br>&nbsp;&=
nbsp; &nbsp;&nbsp;&nbsp; 403377 99.6573&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1918 =
94.9035 myCacheTest<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1387&nbs=
p; 0.3427&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 103&nbsp; 5.0965 vmlinux-4.9.=
0<br>$<br><br>The second one is if I use "--system-wide" instead of "-p 325=
3", the issue is gone too. I mean that it profiles all the processes includ=
ing the trouble one (i.e, "myapp") <br>$operf&nbsp; --vmlinux /boot/vmlinux=
-4.9.0&nbsp; --events L2D_CACHE:5000:0:1:1,L2D_CACHE_REFILL:5000:0:1:1&nbsp=
; --system-wide<br>operf: Press Ctl-c or 'kill -SIGINT 6269' to stop profil=
ing<br>operf: Profiler started<br>^C<br>Profiling done.<br>$ opreport <br>U=
sing /mnt/localdisk/tmp1/oprofile_data/samples/ for samples directory.<br>C=
PU: ARM Cortex-A53, speed 1200 MHz (estimated)<br>Counted L2D_CACHE events =
(Level 2 data cache access) with a unit mask of 0x00 (No unit mask) count 5=
000<br>Counted L2D_CACHE_REFILL events (Level 2 data cache refill) with a u=
nit mask of 0x00 (No unit mask) count 5000<br>&nbsp;&nbsp; L2D_CACHE:5000|L=
2D_CACHE_REFI...|<br>&nbsp; samples|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; %|&nbsp;=
 samples|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; %|<br>-----------------------------=
-------<br>&nbsp;&nbsp;&nbsp; 40070 93.4446&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4=
860 90.8241 myapp<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; L2D_CACHE:5000|L2D_CAC=
HE_REFI...|<br>&nbsp;&nbsp; &nbsp;&nbsp; samples|&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; %|&nbsp; samples|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; %|<br>&nbsp;&nbsp; &nb=
sp;------------------------------------<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&=
nbsp; 17237 43.0172&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1903 39.1564 myapp<br>&nb=
sp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 14090 35.1635&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; 1678 34.5267 vmlinux-4.9.0<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; 3609&nbsp; 9.0067&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 510 10.4938 libc-2=
.24.so<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2664&nbsp; 6.6484&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 383&nbsp; 7.8807 libzmq.so.5.0.1<br>&nbsp;=
&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1471&nbsp; 3.6711&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; 215&nbsp; 4.4239 libpthread-2.24.so<br>&nbsp;&nbsp; &nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 429&nbsp; 1.0706&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; 96&nbsp; 1.9753 libczmq.so.4.0.2<br>&nbsp;&nbsp; &nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; 339&nbsp; 0.8460&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; 37&nbsp; 0.7613 [vdso] (tgid:3253 range:0x7fa4845000-0x7fa4845fff=
)<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 180&nbsp; 0.4492&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 23&nbsp; 0.4733 libmemTrace.so.0.0.0=
<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 32&nbsp; 0.0799=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7&nbsp; 0.1440 librt-2.24.=
so<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7&nbsp;=
 0.0175&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1&nbsp; 0.0206 libs=
ystemd.so.0.15.0<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; 6&nbsp; 0.0150&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4&nbs=
p; 0.0823 mylib<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; 4&nbsp; 0.0100&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1&nbsp=
; 0.0206 ld-2.24.so<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; 2&nbsp; 0.0050&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2&=
nbsp; 0.0412 libcrypto.so.1.0.2<br>&nbsp;&nbsp;&nbsp;&nbsp; 1751&nbsp; 4.08=
34&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 40&nbsp; 0.7475 operf<br>&nbsp=
;&nbsp; &nbsp;&nbsp;&nbsp; L2D_CACHE:5000|L2D_CACHE_REFI...|<br>&nbsp;&nbsp=
; &nbsp;&nbsp; samples|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; %|&nbsp; samples|&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; %|<br>&nbsp;&nbsp; &nbsp;-----------------------=
-------------<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 955 54.5=
403&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 23 57.5000 vmlinux-4.9.0<br>&=
nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 479 27.3558&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; 11 27.5000 operf<br>&nbsp;&nbsp; &nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; 273 15.5911&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; 5 12.5000 libc-2.24.so<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; 42&nbsp; 2.3986&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; 1&nbsp; 2.5000 libstdc++.so.6.0.22<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 2&nbsp; 0.1142&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0 ld-2.24.so<br>&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; 386&nbsp; 0.9002&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; 162&nbsp; 3.0275 rcu_sched<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; L2D_CACH=
E:5000|L2D_CACHE_REFI...|<br>&nbsp;&nbsp; &nbsp;&nbsp; samples|&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; %|&nbsp; samples|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; %|<br>&n=
bsp;&nbsp; &nbsp;------------------------------------<br>&nbsp;&nbsp; &nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 386 100.000&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; 162 100.000 vmlinux-4.9.0<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 280&nbsp; =
0.6530&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 98&nbsp; 1.8314 tcf-agent<=
br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; L2D_CACHE:5000|L2D_CACHE_REFI...|<br>&nb=
sp;&nbsp; &nbsp;&nbsp; samples|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; %|&nbsp; samp=
les|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; %|<br>&nbsp;&nbsp; &nbsp;---------------=
---------------------<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
181 64.6429&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 47 47.9592 vmlinux-4.=
9.0<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 43 15.3571&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 15 15.3061 libc-2.24.so<br>&nbsp;&=
nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 39 13.9286&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; 26 26.5306 tcf-agent<br>&nbsp;&nbsp; &nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11&nbsp; 3.9286&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; 5&nbsp; 5.1020 libpthread-2.24.so<br>&nbsp;&nbsp; &nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6&nbsp; 2.1429&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5&nbsp; 5.1020 [vdso] (tgid:2873 range:0x7=
f9933d000-0x7f9933dfff)<br>...<br>$<br><br>I guess that the issue might als=
o have something to do with the "-p &lt;PID&gt;" option, but not sure. <br>=
According to 1.3.0 release note, it has the following known issue triggered=
 by "--pid" option, but, it doesn't seem to have the same symptom as mine (=
i.e, operf just simply failed to start profiling the app).<br>[<br>- Monito=
ring processes that frequently create and destroy threads via<br>&nbsp; the=
 "--pid" option can be problematic.&nbsp; The pipes used within operf<br>&n=
bsp; and ocount may fill up can cause these programs to hang and require<br=
>&nbsp; multiple cntl-C to exit rather than successfully collecting data on=
<br>&nbsp; fast spawning processes and children.<br>] <br><br>My SoC is zyn=
qmp, and my dmesg output is the following:<br>[&nbsp;&nbsp; 30.515339] hw p=
erfevents: enabled with armv8_pmuv3 PMU driver, 7 counters available<br>(BT=
W, why does it say 7 counters? as you mentioned that all the cortex a53 sho=
uld have the same pmu with 6 counters)<br><br>My dts/pmu binding has the fo=
llowing:<br>&nbsp; compatible =3D "arm,armv8-pmuv3"<br>Not sure if I have t=
o change to "arm,cortex-a53-pmu", I will give it a try.<br><br>Thanks,<br>J=
erry</div><br></div><div><br></div>
       =20
        </div><div id=3D"yahoo_quoted_7335786292" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Tuesday, April 30, 2019, 9:22:08 p.m. EDT, William C=
ohen &lt;wcohen@redhat.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div dir=3D"ltr">On 4/29/19 2:37 PM, Jerry Duan via op=
rofile-list wrote:<br clear=3D"none">&gt; Hi,<br clear=3D"none">&gt; I am t=
rying to use Oprofile (1.3.0) to get some cache miss rate for our applicati=
on in our platform (ARMv8 CortexA53, kernel 4.9.0, Yocto). It is kind of wo=
rking now. But, when using operf to profile multiple events for an existing=
 process, it always failed to start profiling by saying the target program =
is already ended.<br clear=3D"none">&gt; <br clear=3D"none">&gt; $operf&nbs=
p; --vmlinux /boot/vmlinux-4.9.0&nbsp; --events L2D_CACHE:5000:0:1:1,L2D_CA=
CHE_REFILL:5000:0:1:1 -p 3253<br clear=3D"none">&gt; events L2D_CACHE:5000:=
0:1:1,L2D_CACHE_REFILL:5000:0:1:1 -p 3253x /boot/vmlinux-4.9.0&nbsp; --<br =
clear=3D"none">&gt; !!!! No samples collected !!!<br clear=3D"none">&gt; Th=
e target program/command ended before profiling was started.<br clear=3D"no=
ne">&gt; operf record init failed<br clear=3D"none">&gt; usage: operf [ opt=
ions ] [ --system-wide | --pid &lt;pid&gt; | [ command [ args ] ] ]<br clea=
r=3D"none">&gt; $<br clear=3D"none">&gt; <br clear=3D"none">&gt; Am I doing=
 something wrong? Could someone shed a light for me?<br clear=3D"none">&gt;=
 <br clear=3D"none">&gt; But I don't have any issue if I profile only one e=
vent (i.e, L2D_CACHE,L2D_CACHE_WB or L2D_CACHE_REFILL) for the same existin=
g process,at least the operf started profiling and opreport gave me some re=
sult.<br clear=3D"none">&gt; <br clear=3D"none">&gt; $operf&nbsp; --vmlinux=
 /boot/vmlinux-4.9.0&nbsp; --events L2D_CACHE:5000:0:1:1 -p 3253<br clear=
=3D"none">&gt; operf: Press Ctl-c or 'kill -SIGINT 4800' to stop profiling<=
br clear=3D"none">&gt; operf: Profiler started<br clear=3D"none">&gt; ^C<br=
 clear=3D"none">&gt; Profiling done.<br clear=3D"none">&gt; $ opreport<br c=
lear=3D"none">&gt; Using /mnt/localdisk/oprofile_data/samples/ for samples =
directory.<br clear=3D"none">&gt; CPU: ARM Cortex-A53, speed 1200 MHz (esti=
mated)<br clear=3D"none">&gt; Counted L2D_CACHE events (Level 2 data cache =
access) with a unit mask of 0x00 (No unit mask) count 5000<br clear=3D"none=
">&gt; &nbsp;&nbsp; L2D_CACHE:5000|<br clear=3D"none">&gt; &nbsp; samples|&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; %|<br clear=3D"none">&gt; ------------------<=
br clear=3D"none">&gt; &nbsp;&nbsp;&nbsp; 39594 100.000 wl4app<br clear=3D"=
none">&gt; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; L2D_CACHE:5000|<br clear=3D"none=
">&gt; &nbsp;&nbsp; &nbsp;&nbsp; samples|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; %|<=
br clear=3D"none">&gt; &nbsp;&nbsp; &nbsp;------------------<br clear=3D"no=
ne">&gt; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 15632 39.4807 myapp<br clear=
=3D"none">&gt; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 15191 38.3669 vmlinux-=
4.9.0<br clear=3D"none">&gt; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 35=
78&nbsp; 9.0367 libc-2.24.so<br clear=3D"none">&gt; &nbsp;&nbsp; &nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; 2732&nbsp; 6.9000 libzmq.so.5.0.1<br clear=3D"none">&g=
t; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1624&nbsp; 4.1016 libpthread=
-2.24.so<br clear=3D"none">&gt; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; 327&nbsp; 0.8259 libczmq.so.4.0.2<br clear=3D"none">&gt; &nbsp;&nbsp=
; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 287&nbsp; 0.7249 [vdso] (tgid:3253 r=
ange:0x7fa4845000-0x7fa4845fff)<br clear=3D"none">&gt; &nbsp;&nbsp; &nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 180&nbsp; 0.4546 libmemTrace.so.0.0.0<br clea=
r=3D"none">&gt; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 31&=
nbsp; 0.0783 librt-2.24.so<br clear=3D"none">&gt; &nbsp;&nbsp; &nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6&nbsp; 0.0152 ld-2.24.so<br clear=3D"=
none">&gt; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3&=
nbsp; 0.0076 libcrypto.so.1.0.2<br clear=3D"none">&gt; &nbsp;&nbsp; &nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2&nbsp; 0.0051 mylib<br clear=3D"=
none">&gt; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1&=
nbsp; 0.0025 libsystemd.so.0.15.0<br clear=3D"none">&gt; $<br clear=3D"none=
">&gt; $operf&nbsp; --vmlinux /boot/vmlinux-4.9.0&nbsp; --events L2D_CACHE_=
REFILL:5000:0:1:1 -p 3253<br clear=3D"none">&gt; operf: Press Ctl-c or 'kil=
l -SIGINT 4831' to stop profiling<br clear=3D"none">&gt; operf: Profiler st=
arted<br clear=3D"none">&gt; ^C<br clear=3D"none">&gt; Profiling done.<br c=
lear=3D"none">&gt; $<br clear=3D"none">&gt; <br clear=3D"none">&gt; $ operf=
 --version<br clear=3D"none">&gt; operf: oprofile 1.3.0 compiled on Apr 25 =
2019 12:06:54<br clear=3D"none">&gt; $<br clear=3D"none">&gt; <br clear=3D"=
none">&gt; Regards,<br clear=3D"none">&gt; Jerry<br clear=3D"none"><br clea=
r=3D"none">Hi,<br clear=3D"none"><br clear=3D"none">What particular armv8 S=
oC are you using?&nbsp; In theory all the cortex a53 processors should have=
 the same pmu hardware with 6 programmable counters, but I wonder if this p=
rocessor might be limited to one programmable counter or whether some other=
 driver in the system is reserving the counters such as "perf -a -e ...". I=
s there anything else on the machine that might be reserving counters such =
a watchdog? You might take a look through the dmesg output for a something =
that looks like the following stating the number of performance counters th=
at are available:<br clear=3D"none"><br clear=3D"none">[&nbsp; &nbsp; 1.571=
915] hw perfevents: enabled with armv8_cortex_a53 PMU driver, 7 counters av=
ailable<br clear=3D"none"><br clear=3D"none">Also if you are using a device=
 tree file make sure that it properly describes the performance monitoring =
hardware.&nbsp; In the past incorrect descriptions have prevented<br clear=
=3D"none"><br clear=3D"none">I tried something similar on a dragonboad 410c=
, a 96board with 4 cortext a53 processors.&nbsp; It is much newer 5.0.9 ker=
nel.&nbsp; Maybe there is something going on in the kernel that is preventi=
ng both events from being set at the same time.&nbsp; Below is the output. =
<br clear=3D"none"><br clear=3D"none"><br clear=3D"none"><br clear=3D"none"=
>$ rpm -q oprofile<br clear=3D"none">oprofile-1.3.0-1.fc29.aarch64<br clear=
=3D"none">$ sudo operf&nbsp; --vmlinux /usr/lib/debug/lib/modules/5.0.9-200=
.fc29.aarch64/vmlinux&nbsp; --events L2D_CACHE:5000:0:1:1,L2D_CACHE_REFILL:=
5000:0:1:1 -p 1896 --<br clear=3D"none">operf: Press Ctl-c or 'kill -SIGINT=
 11648' to stop profiling<br clear=3D"none">operf: Profiler started<br clea=
r=3D"none">^C^Cwaitpid for operf-record process failed: Interrupted system =
call<br clear=3D"none">^Cwaitpid for operf-read process failed: Interrupted=
 system call<br clear=3D"none">Error running profiler<br clear=3D"none">[<a=
 shape=3D"rect" ymailto=3D"mailto:wcohen@localhost" href=3D"mailto:wcohen@l=
ocalhost">wcohen@localhost</a> ~]$ opreport<br clear=3D"none">Using /home/w=
cohen/oprofile_data/samples/ for samples directory.<br clear=3D"none">CPU: =
ARM Cortex-A53, speed 57 MHz (estimated)<div class=3D"yqt5099377877" id=3D"=
yqtfd22414"><br clear=3D"none">Counted L2D_CACHE events (Level 2 data cache=
 access) with a unit mask of 0x00 (No unit mask) count 5000</div><br clear=
=3D"none">Counted L2D_CACHE_REFILL events (Level 2 data cache refill) with =
a unit mask of 0x00 (No unit mask) count 5000<br clear=3D"none">&nbsp;  L2D=
_CACHE:5000|L2D_CACHE_REFI...|<br clear=3D"none">&nbsp; samples|&nbsp; &nbs=
p; &nbsp; %|&nbsp; samples|&nbsp; &nbsp; &nbsp; %|<br clear=3D"none">------=
------------------------------<br clear=3D"none">&nbsp; &nbsp; 10529 99.499=
1&nbsp; &nbsp; &nbsp;  661 97.7811 du<br clear=3D"none">&nbsp;&nbsp;&nbsp; =
&nbsp;  L2D_CACHE:5000|L2D_CACHE_REFI...|<br clear=3D"none">&nbsp;&nbsp;&nb=
sp; &nbsp; samples|&nbsp; &nbsp; &nbsp; %|&nbsp; samples|&nbsp; &nbsp; &nbs=
p; %|<br clear=3D"none">&nbsp;&nbsp;&nbsp; --------------------------------=
----<br clear=3D"none">&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;  8808 83.6547&nbsp;=
 &nbsp; &nbsp;  568 85.9304 vmlinux<br clear=3D"none">&nbsp;&nbsp;&nbsp; &n=
bsp; &nbsp; &nbsp; 876&nbsp; 8.3199&nbsp; &nbsp; &nbsp; &nbsp; 49&nbsp; 7.4=
130 libc-2.28.so<br clear=3D"none">&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; =
844&nbsp; 8.0160&nbsp; &nbsp; &nbsp; &nbsp; 43&nbsp; 6.5053 du<br clear=3D"=
none">&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1&nbsp; 0.0095&nbsp; &=
nbsp; &nbsp; &nbsp;  1&nbsp; 0.1513 ld-2.28.so<br clear=3D"none">&nbsp; &nb=
sp; &nbsp;  30&nbsp; 0.2835&nbsp; &nbsp; &nbsp; &nbsp;  7&nbsp; 1.0355 rpm<=
br clear=3D"none">&nbsp;&nbsp;&nbsp; &nbsp;  L2D_CACHE:5000|L2D_CACHE_REFI.=
..|<br clear=3D"none">&nbsp;&nbsp;&nbsp; &nbsp; samples|&nbsp; &nbsp; &nbsp=
; %|&nbsp; samples|&nbsp; &nbsp; &nbsp; %|<br clear=3D"none">&nbsp;&nbsp;&n=
bsp; ------------------------------------<br clear=3D"none">&nbsp;&nbsp;&nb=
sp; &nbsp; &nbsp; &nbsp;  27 90.0000&nbsp; &nbsp; &nbsp; &nbsp;  6 85.7143 =
vmlinux<br clear=3D"none">&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3 =
10.0000&nbsp; &nbsp; &nbsp; &nbsp;  1 14.2857 ld-2.28.so<br clear=3D"none">=
&nbsp; &nbsp; &nbsp;  23&nbsp; 0.2174&nbsp; &nbsp; &nbsp; &nbsp;  8&nbsp; 1=
.1834 bash<br clear=3D"none">&nbsp;&nbsp;&nbsp; &nbsp;  L2D_CACHE:5000|L2D_=
CACHE_REFI...|<br clear=3D"none">&nbsp;&nbsp;&nbsp; &nbsp; samples|&nbsp; &=
nbsp; &nbsp; %|&nbsp; samples|&nbsp; &nbsp; &nbsp; %|<br clear=3D"none">&nb=
sp;&nbsp;&nbsp; ------------------------------------<br clear=3D"none">&nbs=
p;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;  20 86.9565&nbsp; &nbsp; &nbsp; &nbsp; =
 5 62.5000 vmlinux<br clear=3D"none">&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; 2&nbsp; 8.6957&nbsp; &nbsp; &nbsp; &nbsp;  1 12.5000 bash<br clear=
=3D"none">&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1&nbsp; 4.3478&nbs=
p; &nbsp; &nbsp; &nbsp;  2 25.0000 libc-2.28.so<br clear=3D"none"><br clear=
=3D"none"><br clear=3D"none">-Will Cohen<div class=3D"yqt5099377877" id=3D"=
yqtfd02231"><br clear=3D"none"></div></div></div>
            </div>
        </div></body></html>
------=_Part_2954180_288440406.1556732503239--


--===============8166780694584869150==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8166780694584869150==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list

--===============8166780694584869150==--

