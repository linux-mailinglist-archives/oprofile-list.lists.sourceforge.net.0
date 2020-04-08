Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 787EE1A22FB
	for <lists+oprofile-list@lfdr.de>; Wed,  8 Apr 2020 15:29:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jMAmB-0007rU-8Z; Wed, 08 Apr 2020 13:29:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiaxun.yang@flygoat.com>) id 1jMANY-0001yG-Cd
 for oprofile-list@lists.sourceforge.net; Wed, 08 Apr 2020 13:04:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aw5fv1+FHKbDSfG1HhhiLI2xBtjZelF5Lqomgzhxync=; b=KpbsGOFgzbssP1u4k4ufRjZdnB
 rJmx/+Z8aCOuz9QGxwwZO5RGK9PCkANQtw/dV1YS1cVb9Zk9yfrTgSPGPo7dN2emifzq6OEoPgiA+
 fNzFVdU9zMsw23pkB9x50wIYXh6rTHINnYfZGDe1DWIE65uuXzK2EV1/0kQznKTBF3XM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aw5fv1+FHKbDSfG1HhhiLI2xBtjZelF5Lqomgzhxync=; b=RnWhoxFrNMslHvaIAx4i+spt5J
 U2MdYkgWcYlzaeP0SysOY/fEjif9uxca2hb3DdTGxFEKlPDaCEpnl/oYljpSVX9LMY6blRJEAsern
 7OldpI6Xy8MDR5g0E7RdQCMKZsnxjgfQraQUPnFxAudFjJU/tIuNQ00G2EKyz71XGP6k=;
Received: from sender3-op-o12.zoho.com.cn ([124.251.121.243])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jMANV-007WIf-NG
 for oprofile-list@lists.sourceforge.net; Wed, 08 Apr 2020 13:04:28 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1586350964; cv=none; d=zoho.com.cn; s=zohoarc; 
 b=bOJbxhTRmbAJiIY0YfvBkBJ3s4s3+dE0pR6CmZrWAx2BdDyljE6FvJ5uAXS7Cet9FXbJEpob1jcFMuQ4kIfeWlWNB2ZnHEg746nb0XVAAKAcWdg58ZvsWozMgcVA5F4cXu93m2mFQK2MLy6Ig6O/+MkfdQCKt8i2N+9bnON+Juk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com.cn;
 s=zohoarc; t=1586350964;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=aw5fv1+FHKbDSfG1HhhiLI2xBtjZelF5Lqomgzhxync=; 
 b=JfjkIb3oCd+ZOGz+mLWCRo+dkKkUDYW13jLLcMRfggZwCvqX/LkPQVHYyNMkltJP0fI5ItW73S4qvNB1VyqiGgnvVIQH6SJWgskC8fBL9xxZMaT3xXQdm3VN/B5tHOVv0fmg58N2I5SShbOkRKPMCRXzsJ2VpBR2iAuFKvkhJ2E=
ARC-Authentication-Results: i=1; mx.zoho.com.cn;
 dkim=pass  header.i=flygoat.com;
 spf=pass  smtp.mailfrom=jiaxun.yang@flygoat.com;
 dmarc=pass header.from=<jiaxun.yang@flygoat.com>
 header.from=<jiaxun.yang@flygoat.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1586350964; 
 s=mail; d=flygoat.com; i=jiaxun.yang@flygoat.com;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=aw5fv1+FHKbDSfG1HhhiLI2xBtjZelF5Lqomgzhxync=;
 b=WLY/VTOlfZ1H69+4UJe1udiEyf0/w2p42G7i3Dc56zNwi62Qo/aPwg/upb9QqCMA
 LMZd5ajwAFdvIUHeaqs4MjOvIRduoMWKuA+BVgu2m3zv3b0CqZAgHWuM/Ziu2rCIxw0
 KEaEYIm6ipcExu2Td8xNgm0TdWp0/H0V/zBFiCCg=
Received: from localhost.localdomain (39.155.141.144 [39.155.141.144]) by
 mx.zoho.com.cn with SMTPS id 1586350963330259.880124634165;
 Wed, 8 Apr 2020 21:02:43 +0800 (CST)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Message-ID: <20200408130024.2529220-5-jiaxun.yang@flygoat.com>
Subject: [PATCH 10/12] MIPS: nlm: Switch to new topology interface
Date: Wed,  8 Apr 2020 20:59:52 +0800
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20200408113505.2528103-1-jiaxun.yang@flygoat.com>
References: <20200408113505.2528103-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-ZohoCNMailClient: External
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: flygoat.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [124.251.121.243 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jMANV-007WIf-NG
X-Mailman-Approved-At: Wed, 08 Apr 2020 13:29:53 +0000
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Peter Zijlstra <peterz@infradead.org>, Jiaxun Yang <jiaxun.yang@flygoat.com>,
 Richard Fontana <rfontana@redhat.com>, Huacai Chen <chenhc@lemote.com>,
 Jiri Olsa <jolsa@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Paul Burton <paulburton@kernel.org>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Marc Zyngier <maz@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, bcm-kernel-feedback-list@broadcom.com,
 oprofile-list@lists.sf.net,
 Vladimir Kondratiev <vladimir.kondratiev@intel.com>,
 Robert Richter <rric@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 Arnd Bergmann <arnd@arndb.de>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexios Zavras <alexios.zavras@intel.com>, Steve Winslow <swinslow@gmail.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Matt Redfearn <matt.redfearn@mips.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>, Oleksij Rempel <linux@rempel-privat.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

Use new functions to set core_id & cluster_id.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
---
 arch/mips/netlogic/common/smp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/mips/netlogic/common/smp.c b/arch/mips/netlogic/common/smp.c
index 39a300bd6cc2..14bfa8a099cc 100644
--- a/arch/mips/netlogic/common/smp.c
+++ b/arch/mips/netlogic/common/smp.c
@@ -122,8 +122,8 @@ static void nlm_init_secondary(void)
 	int hwtid;
 
 	hwtid = hard_smp_processor_id();
-	cpu_set_core(&current_cpu_data, hwtid / NLM_THREADS_PER_CORE);
-	current_cpu_data.package = nlm_nodeid();
+	cpu_set_core(smp_processor_id(), hwtid / NLM_THREADS_PER_CORE);
+	cpu_set_cluster(smp_processor_id(), nlm_nodeid());
 	nlm_percpu_init(hwtid);
 	nlm_smp_irq_init(hwtid);
 }
-- 
2.26.0.rc2




_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
