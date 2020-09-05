Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A873025E753
	for <lists+oprofile-list@lfdr.de>; Sat,  5 Sep 2020 13:41:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1kEWZu-0005PV-P5; Sat, 05 Sep 2020 11:41:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bircoph@gmail.com>) id 1kEWZt-0005PA-Hp
 for oprofile-list@lists.sourceforge.net; Sat, 05 Sep 2020 11:41:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Message-Id:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E3OXhbonLaLnYHU2A9GwPOxBG+Ojt4xBMWJfKU6OLeI=; b=b+t7kHaUp67XzPnb/ChkmVp0My
 Tne2ondAKdg87I4HoZ3DNrfQVLmLlsf/RfJP0bvmbEKI68wOlXBP2GqPeFKKfG0PlKhGvZuj3iTQN
 Mp7bcB4SVrlUnmlCuZFvvEfg7SIMejFUtqmmNz1rC7mDg6KyzQgzKpBHY6NF3dQ2hsC0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Message-Id:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=E3OXhbonLaLnYHU2A9GwPOxBG+Ojt4xBMWJfKU6OLeI=; b=M
 8AVq5JRTCCJC1b+2Q2F73G4D/aOHFIz+DIOdYWgHeInL5fb4KfuJzmH/rBXhhbuuV165beVNbU6rM
 i7OTylTf83x/d/PBwZOh0Tzs/UUizSvqNPv01So6t/ym6pTXvolpqjPHN9PCvXH3RzFsrXHuQwYBx
 uVoNpZrbqWMXW2ig=;
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kEWZp-00DDzc-BT
 for oprofile-list@lists.sourceforge.net; Sat, 05 Sep 2020 11:41:53 +0000
Received: by mail-lj1-f195.google.com with SMTP id v23so10924481ljd.1
 for <oprofile-list@lists.sourceforge.net>;
 Sat, 05 Sep 2020 04:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version;
 bh=E3OXhbonLaLnYHU2A9GwPOxBG+Ojt4xBMWJfKU6OLeI=;
 b=CUISd8jw/NbyRX9MD6jwB6swi8QbfNCg8gQvwX+tgHhTKJNFbmk0q1UiBcwGrEG+lU
 RPQqd5mYjR7BuZtoGbQlTVyrbTumPW2cyPivMtZIRoOZ39kBEGIAeb5X8vk7uyIbh2PM
 bA/8mlSW6Ehri0cRjIJwHFhALSJRKrNL11F+fy7Ksso8d1ONJfvE21riQwrPCy+oV/Bu
 Clvaq7CR2g1OAIOPS1D8PxIqFT9SKCd6aGn5O4IHpOEH82YnOr2OtAVGwKlzNAzNT8WW
 ibfYdfOxHivPKaWzB7HgmJN1VV/6y9MGw5Nu0msLj9eFIl8E6ytS1JyhI+lCtfGCF7wx
 JJJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
 bh=E3OXhbonLaLnYHU2A9GwPOxBG+Ojt4xBMWJfKU6OLeI=;
 b=FegNRJQPE9R0wcvxxJYLng65hLbUefesd0o5OgZ0ivEdo+71x0HGovDzrhAZbWNrq6
 ZS0mblH0PWnZO5RvPt1/uAx2+berfMTsT67pjQGIuqObIR5MHcijbt/TX7LVVeaaynVn
 R0wQJBn+Kf5d4K317X9oY+IZASZNy4lDnEqRS7YT+71S8z/yOJeoxKGju+qCDmXHVzE5
 LZHdyzuOmkNdGb6fruW4eRk0yuyIDP6TDiebJCcViQwKMwT6z4NUnGg7ukRRT6G0OBki
 RXZ/ywGOESYtgJlrX4dCnN9R10151fEwsbljyORfXUA2oMuHoy4wbq2Gi5e5wt8iPw0D
 tXOg==
X-Gm-Message-State: AOAM531s/pYMr9KKQ//A/kb9MvB/naVcDKNOAlk26bOK2G5Uh5CnhgjR
 sXRWmV95wteQfV/IGaAbKkVjMApNtEjvxw==
X-Google-Smtp-Source: ABdhPJxWMhbfs1/OI8qkKC/ulgGwxCt6NHs2k4o7jEALXUN4E5J4MnTbQiJEVpB+X/u+iGvxOdUNOQ==
X-Received: by 2002:a2e:8115:: with SMTP id d21mr6243474ljg.16.1599306095423; 
 Sat, 05 Sep 2020 04:41:35 -0700 (PDT)
Received: from localhost ([185.173.37.158])
 by smtp.gmail.com with ESMTPSA id e8sm1932859lja.93.2020.09.05.04.41.34
 for <oprofile-list@lists.sourceforge.net>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 05 Sep 2020 04:41:34 -0700 (PDT)
Date: Sat, 5 Sep 2020 14:41:30 +0300
From: Andrew Savchenko <bircoph@gmail.com>
To: oprofile-list@lists.sourceforge.net
Subject: Fix build with musl
Message-Id: <20200905144130.ee360e0bdade714384051fd4@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (bircoph[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.195 listed in list.dnswl.org]
X-Headers-End: 1kEWZp-00DDzc-BT
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
Content-Type: multipart/mixed; boundary="===============1667191393239906407=="
Errors-To: oprofile-list-bounces@lists.sourceforge.net

--===============1667191393239906407==
Content-Type: multipart/signed; protocol="application/pgp-signature";
 micalg="PGP-SHA512";
 boundary="Signature=_Sat__5_Sep_2020_14_41_30_+0300_B.qpPPwu83bbA.32"

--Signature=_Sat__5_Sep_2020_14_41_30_+0300_B.qpPPwu83bbA.32
Content-Type: text/plain; charset=US-ASCII
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

When musl is used instead of glibc, oprofile build fails because it
uses glibc-specific FTW extension: FTW_ACTIONRETVAL for custom
__delete_old_previous_sample_data return codes and FTW_STOP,
FTW_CONTINUE for such return codes. Musl supports only POSIX ftw, so
build fails.

However, this extension is not really needed by oprofile, because
FTW_SKIP_* are not used and {FTW_STOP,FTW_CONTINUE} can be handled
by standard return codes {1,0} (more precisely standard defines
{!0,0}, but in glibc FTW_STOP =3D 1, so I keep this value).

Signed-off-by: Andrew Savchenko <bircoph@gmail.com>
---
 pe_profiling/operf.cpp | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/pe_profiling/operf.cpp b/pe_profiling/operf.cpp
index 06a0ea3c..1b882b7c 100644
--- a/pe_profiling/operf.cpp
+++ b/pe_profiling/operf.cpp
@@ -860,9 +860,9 @@ static int __delete_old_previous_sample_data(const char=
 *fpath,
 {
    if (remove(fpath)) {
        perror("sample data removal error");
-       return FTW_STOP;
+       return 1;
    } else {
-       return FTW_CONTINUE;
+       return 0;
    }
 }

@@ -897,7 +897,7 @@ static void convert_sample_data(void)
        return;

    if (!operf_options::append) {
-                int flags =3D FTW_DEPTH | FTW_ACTIONRETVAL;
+                int flags =3D FTW_DEPTH;
        errno =3D 0;
        if (nftw(previous_sampledir.c_str(), __delete_old_previous_sample_d=
ata, 32, flags) !=3D0 &&
                errno !=3D ENOENT) {
--
2.24.0

Best regards,
Andrew Savchenko

--Signature=_Sat__5_Sep_2020_14_41_30_+0300_B.qpPPwu83bbA.32
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE63ZIHsdeM+1XgNer9lNaM7oe5I0FAl9TeWoACgkQ9lNaM7oe
5I2fMBAAs28Rjoz0irZwZI0AaNFJlp4BsTbzy8IfTOSzBSqeLDFfRLGEXS7hBrHP
afIFbPx/e4yEAlVzd0gvgN42H1B8EIdmDnQ/WIGtSqSY3zKuVknNiBG4spDFdrRk
hwKZ/3saLQEJQGbtETaUP2uAy40BoHxCVmxbe+0YRlONnm50iKYsmyxT/1QSb1JZ
O+2CZ6tJ1KXjWqdSVPQc76es/M9AZX5O+dYRAeJs5SKWUeMiEKCGhC0Pvc0uKJR0
RdBtww5zCzJ++xwd8IqWStps0OH0k1Qj8V2vO62rZayv6IVHPV+EPccYgSHCcZDy
GqS2R2p9fPt6ojr+2PayOj8mIGdiSCcv2/JI4YtpDyqky/kJSm1MfCX9jQP5qzEV
fQhODF8k8/ZHQ9ZvjNrbIN38JXTy3KdNLAYJKezJ/gcyic3YrsbVV5jh8Zli6bvt
Q5XLuELsaSwzAs2Ehu0xJRhLbIofYeJ5qOG0axOWq7lBVd3l0XqZ8lCKt2p76rjy
SFgyys5PdEuu5eNjmgBAYJDztVmdf/e5+A65M6H2e1RR9BUCHuatitiQzEpCVfwQ
nj1GWbBupjEsVNbZ1qQgPyudB9F9PlOCyt104cl8JO2+8447PSBYtYIGdkMnZqa4
G3IzfTpZ3PImRzxAF4fGHhE/HHZuVt7ahBB+LNTxcfglNERlsTY=
=83jN
-----END PGP SIGNATURE-----

--Signature=_Sat__5_Sep_2020_14_41_30_+0300_B.qpPPwu83bbA.32--


--===============1667191393239906407==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1667191393239906407==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list

--===============1667191393239906407==--

