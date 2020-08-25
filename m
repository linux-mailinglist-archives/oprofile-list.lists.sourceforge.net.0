Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E84F251165
	for <lists+oprofile-list@lfdr.de>; Tue, 25 Aug 2020 07:16:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1kARJY-0004FL-HJ; Tue, 25 Aug 2020 05:16:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joe@perches.com>) id 1kARJX-0004Et-29
 for oprofile-list@lists.sourceforge.net; Tue, 25 Aug 2020 05:16:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mGpMl3ugLgn+9I6Ohi4ZL/JrXtFqLNEECynrQZWX6Sw=; b=L3cpcCnfdqrB6ylNoUvfHn3kMl
 ob/Db+d5C2HR2DBICEAc55AdVN14pC3M7HdZX6410rfBhtvSw2hMC5fNXJ1pQcf8iV3bObtYcD9Cs
 uMbsgqjLfGa1qL6CZrLZYph7ui/ct0w0k4WV2jbMrD1FkB4qRpN2emmO8O7yEJkyxvYQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mGpMl3ugLgn+9I6Ohi4ZL/JrXtFqLNEECynrQZWX6Sw=; b=At93o2PTn/s4jZp17O9PV61dic
 4EcdV1F1azxkbWrC8p5qvw8OQmM6PjkQS5oKZnpm9b3yuZaZibacUoalKDPSWzPK3KJQeOvE+Tbvn
 voMrLsYPW219J/BRaNJ3eH0IboT9beEoafLliSmS8Yi9LNN1aaiOltBbv/Dxv/EBDyjk=;
Received: from smtprelay0250.hostedemail.com ([216.40.44.250]
 helo=smtprelay.hostedemail.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kARJV-005o3R-F1
 for oprofile-list@lists.sourceforge.net; Tue, 25 Aug 2020 05:16:07 +0000
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave08.hostedemail.com (Postfix) with ESMTP id 6AD3F182D3E77
 for <oprofile-list@lists.sf.net>; Tue, 25 Aug 2020 04:56:52 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id 5B1DE182CED2A;
 Tue, 25 Aug 2020 04:56:46 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:541:800:960:973:988:989:1260:1311:1314:1345:1359:1437:1515:1534:1542:1711:1730:1747:1777:1792:2393:2559:2562:2898:3138:3139:3140:3141:3142:3352:3865:3866:3868:3872:4321:4605:5007:6119:6261:10004:10848:11026:11658:11914:12043:12297:12438:12555:12895:12986:13870:13894:13972:14181:14394:14721:21080:21627:30054:30070,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: cover96_0806a5227059
X-Filterd-Recvd-Size: 3208
Received: from joe-laptop.perches.com (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf08.hostedemail.com (Postfix) with ESMTPA;
 Tue, 25 Aug 2020 04:56:44 +0000 (UTC)
From: Joe Perches <joe@perches.com>
To: Jiri Kosina <trivial@kernel.org>,
	Robert Richter <rric@kernel.org>
Subject: [PATCH 02/29] alpha: Avoid comma separated statements
Date: Mon, 24 Aug 2020 21:55:59 -0700
Message-Id: <4facd57f80c70437f085ba3a1bcf13ae0b63c3bc.1598331148.git.joe@perches.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.1598331148.git.joe@perches.com>
References: <cover.1598331148.git.joe@perches.com>
MIME-Version: 1.0
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: perches.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.40.44.250 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.250 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1kARJV-005o3R-F1
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
Cc: linux-kernel@vger.kernel.org, oprofile-list@lists.sf.net,
 linux-alpha@vger.kernel.org, Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Matt Turner <mattst88@gmail.com>, Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

Use semicolons and braces.

Signed-off-by: Joe Perches <joe@perches.com>
---
 arch/alpha/kernel/pci_iommu.c      |  8 +++++---
 arch/alpha/oprofile/op_model_ev4.c | 22 ++++++++++++++--------
 arch/alpha/oprofile/op_model_ev5.c |  8 +++++---
 3 files changed, 24 insertions(+), 14 deletions(-)

diff --git a/arch/alpha/kernel/pci_iommu.c b/arch/alpha/kernel/pci_iommu.c
index 81037907268d..b8af7ad6c607 100644
--- a/arch/alpha/kernel/pci_iommu.c
+++ b/arch/alpha/kernel/pci_iommu.c
@@ -161,10 +161,12 @@ iommu_arena_find_pages(struct device *dev, struct pci_iommu_arena *arena,
 			goto again;
 		}
 
-		if (ptes[p+i])
-			p = ALIGN(p + i + 1, mask + 1), i = 0;
-		else
+		if (ptes[p+i]) {
+			p = ALIGN(p + i + 1, mask + 1);
+			i = 0;
+		} else {
 			i = i + 1;
+		}
 	}
 
 	if (i < n) {
diff --git a/arch/alpha/oprofile/op_model_ev4.c b/arch/alpha/oprofile/op_model_ev4.c
index 086a0d5445c5..004f80a4291f 100644
--- a/arch/alpha/oprofile/op_model_ev4.c
+++ b/arch/alpha/oprofile/op_model_ev4.c
@@ -46,18 +46,24 @@ ev4_reg_setup(struct op_register_config *reg,
 	   map it onto one of the possible values, and write it back.  */
 
 	count = ctr[0].count;
-	if (count <= 4096)
-		count = 4096, hilo = 1;
-	else
-		count = 65536, hilo = 0;
+	if (count <= 4096) {
+		count = 4096;
+		hilo = 1;
+	} else {
+		count = 65536;
+		hilo = 0;
+	}
 	ctr[0].count = count;
 	ctl |= (ctr[0].enabled && hilo) << 3;
 
 	count = ctr[1].count;
-	if (count <= 256)
-		count = 256, hilo = 1;
-	else
-		count = 4096, hilo = 0;
+	if (count <= 256) {
+		count = 256;
+		hilo = 1;
+	} else {
+		count = 4096;
+		hilo = 0;
+	}
 	ctr[1].count = count;
 	ctl |= (ctr[1].enabled && hilo);
 
diff --git a/arch/alpha/oprofile/op_model_ev5.c b/arch/alpha/oprofile/op_model_ev5.c
index c300f5ef3482..6f52244e1181 100644
--- a/arch/alpha/oprofile/op_model_ev5.c
+++ b/arch/alpha/oprofile/op_model_ev5.c
@@ -92,9 +92,11 @@ common_reg_setup(struct op_register_config *reg,
 		if (!ctr[i].enabled)
 			continue;
 
-		if (count <= 256)
-			count = 256, hilo = 3, max = 256;
-		else {
+		if (count <= 256) {
+			max = 256;
+			hilo = 3;
+			count = 256;
+		} else {
 			max = (i == 2 ? 16384 : 65536);
 			hilo = 2;
 			if (count > max)
-- 
2.26.0



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
