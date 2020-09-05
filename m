Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C3725E751
	for <lists+oprofile-list@lfdr.de>; Sat,  5 Sep 2020 13:40:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1kEWYc-00059m-JP; Sat, 05 Sep 2020 11:40:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bircoph@gmail.com>) id 1kEWYa-00059L-NM
 for oprofile-list@lists.sourceforge.net; Sat, 05 Sep 2020 11:40:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Message-Id:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s+CRoBJUJhhEWo1zeo2+bgQDDPhBEZ+fPy3p1LOd5ac=; b=OXp97tp6Ne9pOveegrPN8PF60W
 5+jJPgU3KyDr1PkdSMjjKjCPhde386XIgeV2nKnKU0Q8EpdaCdeNsyVON7Ad8H7hFYrZzkc0u83xO
 psZ+EKa16s82P+hm+JF0idTlbuJ6HQw/+Zd+j/Uc8iy5Da+xc2fvFTnWI6JGWAglWYH8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Message-Id:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=s+CRoBJUJhhEWo1zeo2+bgQDDPhBEZ+fPy3p1LOd5ac=; b=T
 t6zLZj1vtMJX6Yhed/ex+0RCM11lA+YWbhf3VXwwU0qh+KLD8X7YA9bsB43yaP/QDtBOwFwC6vj3x
 qZpIAE11+/N5cYY+P9rqLI/j8afuEBoItJu0AbQrVp2uUj80GzTb1AZGbmmUbEBG50wU3UBlHXl7e
 Tj24ivVjXeLMfNqQ=;
Received: from mail-lf1-f65.google.com ([209.85.167.65])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kEWYT-00DoZI-9S
 for oprofile-list@lists.sourceforge.net; Sat, 05 Sep 2020 11:40:32 +0000
Received: by mail-lf1-f65.google.com with SMTP id x77so5209676lfa.0
 for <oprofile-list@lists.sourceforge.net>;
 Sat, 05 Sep 2020 04:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version;
 bh=s+CRoBJUJhhEWo1zeo2+bgQDDPhBEZ+fPy3p1LOd5ac=;
 b=MF6is1alYzs/2q8Y16dqyKEoPbKGzAhJaedWQOUKUr0YzpPOJ6sHCDUCHmIFOBNICz
 vcrt8TB1MtgDQQIu3ZtzlcRUxHAlIXjw2q3IA7RJ9cgj0XFFng7f9dk+ywyYMrKliNw0
 PJ8iJ59MakRjlrd+pQvmtImHK867LF6WMpGhz1sanPQx3ZLVok2iQdDXVMibYbaU+D6U
 kZTCjhrVPldwdJPB+LTC8IY6ZpEbYkWt9l2cVA5k5ZhPVLkcdphM/fnXHiRipkt9RlG1
 XGLHZ2z5dqKrO8s3CyatuLqLRdkIfZwuVz3sl7gagW+0rskByVHMs43e8Q0x3MooJm+1
 BgtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
 bh=s+CRoBJUJhhEWo1zeo2+bgQDDPhBEZ+fPy3p1LOd5ac=;
 b=cSlRhKpnp1Y7Ag8Ou56oGZWUvLRffYiNKtE30JZ2zSyTdyrgFqkHY5h11b6L8ZPj6l
 RWNOcrdsfwO8pVtOYrUHWeW8AgV9L7WsCPjHAJoEh19mgZHatj88/JH715ZLNEehC9hX
 lA0f5xKL7PPPfk11j2IpIXmYyeeSmdzD+V3Fgd0A7L6ZL155OTXmvdjzlQbLrUFB77/L
 EUbmht8kFrs3nxCJH4TngXJlydstJC5Haq58HvrUaLH+pOb5fhf49Uc5H6JwyfuL4o7c
 wO3dTKw+38N7QQeQhuNtH23I7acf9OpKCUe7SILnovTh11j6LIREpD+ScAoFueUVZoo4
 4vTQ==
X-Gm-Message-State: AOAM532WOi0Qy9LjJm5Z+mkozLe6ynMywjP0QalnSwzEUHC6TRC3zq0q
 Il0RQZ8C7wRrnz/IPj0t6fCbChAm0xtkXQ==
X-Google-Smtp-Source: ABdhPJyUluzn1kW+LmewrwiT02DboqKNRP3RQ0efdBzogOwG4zIjA/OkFZP7XuAWijJzRyXm/tpwMg==
X-Received: by 2002:a19:8942:: with SMTP id l63mr6025085lfd.15.1599306018396; 
 Sat, 05 Sep 2020 04:40:18 -0700 (PDT)
Received: from localhost ([185.173.37.158])
 by smtp.gmail.com with ESMTPSA id l16sm1952689ljb.72.2020.09.05.04.40.17
 for <oprofile-list@lists.sourceforge.net>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 05 Sep 2020 04:40:17 -0700 (PDT)
Date: Sat, 5 Sep 2020 14:40:07 +0300
From: Andrew Savchenko <bircoph@gmail.com>
To: oprofile-list@lists.sourceforge.net
Subject: [PATCH] Fix configure when /bin/sh is not bash
Message-Id: <20200905144007.faaa02d41971a6f271f4aa6f@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: configure.ac]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (bircoph[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.65 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kEWYT-00DoZI-9S
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
Content-Type: multipart/mixed; boundary="===============2016569410483375278=="
Errors-To: oprofile-list-bounces@lists.sourceforge.net

--===============2016569410483375278==
Content-Type: multipart/signed; protocol="application/pgp-signature";
 micalg="PGP-SHA512";
 boundary="Signature=_Sat__5_Sep_2020_14_40_08_+0300_w+XY/NnD8_G.Kd1s"

--Signature=_Sat__5_Sep_2020_14_40_08_+0300_w+XY/NnD8_G.Kd1s
Content-Type: text/plain; charset=US-ASCII
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

When /bin/sh used by autoconf is not bash, e.g. dash, configure
fails because it uses bash-specific equality operator "=3D=3D".

Fix this problem by replacing "=3D=3D" with POSIX "=3D" which is
sufficient for test where it is being used.

Signed-off-by: Andrew Savchenko <bircoph@gmail.com>
---
 configure.ac | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/configure.ac b/configure.ac
index 05609f6e..f5fcd17d 100644
--- a/configure.ac
+++ b/configure.ac
@@ -466,8 +466,8 @@ AX_COPY_IF_CHANGE(doc/xsl/catalog-1.xml, doc/xsl/catalo=
g.xml)

 if ! test "x$enable_account_check" =3D "xyes"; then
    :
-elif test "`getent passwd oprofile 2>/dev/null`" =3D=3D "" || \
-     test "`getent group oprofile 2>/dev/null`" =3D=3D ""; then
+elif test "`getent passwd oprofile 2>/dev/null`" =3D "" || \
+     test "`getent group oprofile 2>/dev/null`" =3D ""; then
    if test `id -u` !=3D "0"; then
        echo "Warning: The user account 'oprofile:oprofile' does not exist =
on the system."
        echo "         To profile JITed code, this special user account mus=
t exist."
--
2.24.0

Best regards,
Andrew Savchenko

--Signature=_Sat__5_Sep_2020_14_40_08_+0300_w+XY/NnD8_G.Kd1s
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE63ZIHsdeM+1XgNer9lNaM7oe5I0FAl9TeRgACgkQ9lNaM7oe
5I1d/w//f19maivaJFQCESnz+bV+Y7phtq55wiuwTjP9rzS0pGVMDFctfJkgN1Ln
664bPcHt26eUpmVL6tASjoifoXJLqPx2VJARa1UAtHs9Fxf+TEzkB/ARRbnrC/kH
Wtv8JNOtL18xue1To/UtjK8XQ/1lSBYBv9BiqUV5msnNAExu0RyeTEvunu98H/3b
ETqSdMs4tLzRIm66ppBHfxK8og0sKSBxT9pZr6qT23vOOG+Q7uJGvADNV/7Y16iS
xC0k4AtUAUeqBTMENEleYdmiMW6B7DvIU/p6VPvLJkDWIM9rsmPH8bLJPqDLTacQ
UWO6TXf2oFXrwikYM35e3VZrZa20Vkv8leUKW2m+p9lO7wxOj1rtIrFFx5gOAdyW
I1+HezEsw+56OmuapJVYW5xKx8o8FbRGtsm3vScyVB0lefHzHTOGCdATfFI2lVDD
fDciXqd5o/Yhk3jdFXi7J+fK7o0NhD0GLdioomLxa0WEbBz0lq08eZ9JNP74hDFb
2xIIws8sdE1DuHsUnbCuXQ2uItFNvYfb9BNpx8ucPCqJV989nXkv7mFlcakFh7nI
ptI7DNnSPzK+/7JFaT2m97V5WronTfmZpNLeY2AlA6BofVc1aqdmDs5fCPpYAefs
CMbK7ciViJvy8fiT2sm6+UpRj5HiGGQNT9edPBiSqrmpctl7E/8=
=i++B
-----END PGP SIGNATURE-----

--Signature=_Sat__5_Sep_2020_14_40_08_+0300_w+XY/NnD8_G.Kd1s--


--===============2016569410483375278==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2016569410483375278==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list

--===============2016569410483375278==--

