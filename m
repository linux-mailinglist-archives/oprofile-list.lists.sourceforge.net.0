Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D3205461C94
	for <lists+oprofile-list@lfdr.de>; Mon, 29 Nov 2021 18:18:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1mrkIE-00027r-V8; Mon, 29 Nov 2021 17:18:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <slyich@gmail.com>) id 1mrFna-0003T4-Gp
 for oprofile-list@lists.sourceforge.net; Sun, 28 Nov 2021 08:44:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IqAfMKiH0B7DQuNtLfaPmdM5eeFrfJBM+abCuLIu9Ec=; b=j0y+gaF0JS3pKoHAXJAFaYQ8/5
 yK44WcGbKgmhxMCclSQ0aZKaT/9BUQSdKn/qKusXJiOvNoVBirtCI3St1ZwNBmMoO3MTAi4yavffF
 nGRtLJhslCwnom7CtCN8pQ7VDH835l4QIN3+zWd6Z+CfhOuTh8Xf04SrOBaKVelZr7CA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=IqAfMKiH0B7DQuNtLfaPmdM5eeFrfJBM+abCuLIu9Ec=; b=N
 R98+fpbqSit5JFhgXi2X5N0/tj+MAfyLX4xqD1lhFEVl9/YqnrOjEnwpGguNU1G8UQ51sdyRmsUPf
 Qe3aqJEfdNRfwhw7LP+Z7HQEUCWWZHnN+p/+daTvXe/37PMtrMTIg71qG4Nf5G7ck9IJtILKHx6X8
 LMaOpP8rkfQz4/qE=;
Received: from mail-wm1-f52.google.com ([209.85.128.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mrFnZ-00COGA-Te
 for oprofile-list@lists.sourceforge.net; Sun, 28 Nov 2021 08:44:38 +0000
Received: by mail-wm1-f52.google.com with SMTP id
 c6-20020a05600c0ac600b0033c3aedd30aso10017964wmr.5
 for <oprofile-list@lists.sf.net>; Sun, 28 Nov 2021 00:44:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IqAfMKiH0B7DQuNtLfaPmdM5eeFrfJBM+abCuLIu9Ec=;
 b=mIIhLxsGS3ruegbiCadectq4FvJl1NIBmpqu2qw8zSio6E5li1NNzco9OAsfpllKJ3
 1A6Yhn4q4A7qyBbigBESYKifROBs25DNhLemabEU2Bs8rPwZBCGqzi6E5w7FegcqtCsP
 xfRUZwTy7EHlhwRdzfu6t+kY/y9i/2XyDy5dJKxmZuoUl6Xr5HSYzaIaEziOitAdjARD
 7BSJnrBQvORmaHvIIU3/tP4l7WxdMPWvNk+SjUV92moQecpGzc+/CADJSkE3F0UC2dqG
 b/0tEVfuo1pARBEut66Ekl5eFlVphgBL2Oo9fw78bZryE/MjBtMegwl4Uh9y4RA+nnno
 TGZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IqAfMKiH0B7DQuNtLfaPmdM5eeFrfJBM+abCuLIu9Ec=;
 b=Cq2JTtu6ZuTaw9/4aZtC3FPebc3NmMcUC5BRwx499ao5ZClNrFo9z7DaQAzUahLvTG
 zcwmLTmUcLOdg69VP6Vqr2ouGu3mJODkfjeaUbZIjtCEbzNKL70TGCxNWFDtO3D7+dQH
 NblxEBmj5dVeAJleQnh6wN3UkVhDUzLNF68+BFgbwpG1RdIcbjSTovg8l7sLrJpQPcaB
 imUZGGPJOmd9q0yE3DEvQziZ8nCA55jpqNo0Erl1GEVkU4Bp2p2bKolH9Ry2dawpDORX
 kuWvY4Up0HWhXLB4RdRRJ5Tjc7gar9ykwDxgrCyrHdjLsIQKHQlHEVNWufano2TnuzU9
 FjPA==
X-Gm-Message-State: AOAM530n5k9upYtfmjehnsBotshbEzo9JkaQhMuBKjeD/l9DFO3pnyi2
 N5QDC0F16hNaezPEWVwJcvx0biZoeGw=
X-Google-Smtp-Source: ABdhPJy6qE/utjHn+jWNF0EC9BL/WV3+Elcux02IxODcxkIW6/I7v2eEa2HAORtIKKlfWrkYlmj3Sg==
X-Received: by 2002:a1c:9a16:: with SMTP id c22mr27964160wme.160.1638089071356; 
 Sun, 28 Nov 2021 00:44:31 -0800 (PST)
Received: from nz.home (host81-147-8-123.range81-147.btcentralplus.com.
 [81.147.8.123])
 by smtp.gmail.com with ESMTPSA id p8sm10576470wrx.25.2021.11.28.00.44.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 28 Nov 2021 00:44:30 -0800 (PST)
Received: by nz.home (Postfix, from userid 1000)
 id 01F3E118BA751; Sun, 28 Nov 2021 08:44:29 +0000 (GMT)
From: Sergei Trofimovich <slyich@gmail.com>
To: oprofile-list@lists.sf.net
Subject: [PATCH] oprofile: fix build on gcc-12
Date: Sun, 28 Nov 2021 08:44:28 +0000
Message-Id: <20211128084428.1676181-1-slyich@gmail.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: `gcc-12` will forbid std::string(nullptr_t) constructors (as
 they never had a defined behaviour): operf_stats.cpp:182:24: error: use of
 deleted function 'std::__cxx11::basic_string...;
 std::nullptr_t = std::nullptr_t]' 182 | return NULL; | ^~~~ 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.52 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [slyich[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.52 listed in wl.mailspike.net]
X-Headers-End: 1mrFnZ-00COGA-Te
X-Mailman-Approved-At: Mon, 29 Nov 2021 17:18:17 +0000
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
Cc: Sergei Trofimovich <slyich@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

`gcc-12` will forbid std::string(nullptr_t) constructors
(as they never had a defined behaviour):

    operf_stats.cpp:182:24: error: use of deleted function 'std::__cxx11::basic_string...; std::nullptr_t = std::nullptr_t]'
      182 |                 return NULL;
          |                        ^~~~

Signed-off-by: Sergei Trofimovich <slyich@gmail.com>
---
 libperf_events/operf_stats.cpp | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/libperf_events/operf_stats.cpp b/libperf_events/operf_stats.cpp
index 3cc28a75..a7bd0aec 100644
--- a/libperf_events/operf_stats.cpp
+++ b/libperf_events/operf_stats.cpp
@@ -179,7 +179,7 @@ static string create_stats_dir(string const & cur_sampledir)
 	if (rc && (errno != EEXIST)) {
 		cerr << "Error trying to create stats dir. " << endl;
 		perror("mkdir failed with");
-		return NULL;
+		return "";
 	}
 	return stats_dir;
 }
-- 
2.33.1



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
