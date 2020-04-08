Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 267181A22FD
	for <lists+oprofile-list@lfdr.de>; Wed,  8 Apr 2020 15:29:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jMAmB-0007rK-3F; Wed, 08 Apr 2020 13:29:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiaxun.yang@flygoat.com>) id 1jMANA-00037Z-2s
 for oprofile-list@lists.sourceforge.net; Wed, 08 Apr 2020 13:04:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pvVcRtCqfH3vqqhS/khlj9DqWBnRf2S/d6gBy/uBo9A=; b=V8EH4468x59DiSYTJGBC6x46Wq
 fO8HmsJLuDKNAJrO8stSnN1WO13o9lPCcmyeBBfSEYITNIcFrcQwIGcL5UpmmJNVVI4BdxilLysOV
 6f/X7Z8qbpklswSPKARIzLGsIJJSurmQyNb8v5Nv1Pmv+NMXkxxpyPmAkxmme0dsqJ3k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pvVcRtCqfH3vqqhS/khlj9DqWBnRf2S/d6gBy/uBo9A=; b=IschwBNRXzXb49+9l1k8bFEcZl
 x99+ezRDo8fwkLzBFIRe92eGIp1lB17J90pQKDW3J/bmGnjClpvSNLm9gHcIfHpV0NCUj0MetcWND
 EC0uM8ZdzLmCWUwaiK+/1PhNISVz9Vk7LLPkic/nE0zrxYVWA/1kBnq8DZga2xOvgcSI=;
Received: from sender3-op-o12.zoho.com.cn ([124.251.121.243])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jMAN6-0084iK-2L
 for oprofile-list@lists.sourceforge.net; Wed, 08 Apr 2020 13:04:04 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1586350933; cv=none; d=zoho.com.cn; s=zohoarc; 
 b=TBes1nXwoj0zlkCQrPxZBJVTTZxUidOXybCr53tQQNtAp5OzWyUj9yaIHeUefNxurJczHBK5/jAHenwJfO6BXQb21uZ07BDHO9ebYft+P+/UrBXCZn2F1O9dePYnT/JA9PX4PGydkGyGuuP+VZGBw1QY1/bqdgFMAY0G9Joc8DI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com.cn;
 s=zohoarc; t=1586350933;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=pvVcRtCqfH3vqqhS/khlj9DqWBnRf2S/d6gBy/uBo9A=; 
 b=VMcIyzmdc6pGrzmyukLutD0E4xjg8gtmszFlaeKO+hgLK/Iar7B/e8IHxyYXI4Mk+EEPMrUZ40uQfMcOXiusAX+mXmNyItdA8DS8KJva1bV8qzHcE+ZSf3KbS+kEB3GA49XXKU3Shh/nggPz+ME5w1gEH5afZgVGlpoYivQgLbE=
ARC-Authentication-Results: i=1; mx.zoho.com.cn;
 dkim=pass  header.i=flygoat.com;
 spf=pass  smtp.mailfrom=jiaxun.yang@flygoat.com;
 dmarc=pass header.from=<jiaxun.yang@flygoat.com>
 header.from=<jiaxun.yang@flygoat.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1586350933; 
 s=mail; d=flygoat.com; i=jiaxun.yang@flygoat.com;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=pvVcRtCqfH3vqqhS/khlj9DqWBnRf2S/d6gBy/uBo9A=;
 b=MGi8nusrZDH6aWUCxRhrByaRYgtWIrIT5t7vKeTs9jzc6F3EbD23XLosAXfoV4Eq
 kBIF1wyn6XiG/Qef84kVrzDLq0ajXSJZEloA2Vku5ZVoin8nvONSnH9g1G/RjrCDeTs
 m79PD7Kh1dQmCivoM1AszQC3r+FsK2oQ4OtuLF34=
Received: from localhost.localdomain (39.155.141.144 [39.155.141.144]) by
 mx.zoho.com.cn with SMTPS id 1586350931576768.9659616147869;
 Wed, 8 Apr 2020 21:02:11 +0800 (CST)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Message-ID: <20200408130024.2529220-4-jiaxun.yang@flygoat.com>
Subject: [PATCH 09/12] MIPS: bmips: Switch to new topology interface
Date: Wed,  8 Apr 2020 20:59:51 +0800
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
X-Headers-End: 1jMAN6-0084iK-2L
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Jiaxun Yang <jiaxun.yang@flygoat.com>, Richard Fontana <rfontana@redhat.com>,
 Huacai Chen <chenhc@lemote.com>, Jiri Olsa <jolsa@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Paul Burton <paulburton@kernel.org>,
 Kamal Dasu <kdasu.kdev@gmail.com>, Marc Zyngier <maz@kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>,
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

Change the parameter of cpu_set_core from cpudata to cpuid.
Also set cluster id for bmips as it have different method to probe
actual hwid of CPU, and smp_store_cpuinfo is using cluster id to
determine if we should probe topology info again.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
---
 arch/mips/kernel/smp-bmips.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/mips/kernel/smp-bmips.c b/arch/mips/kernel/smp-bmips.c
index 9058e9dcf080..c40bb37eab38 100644
--- a/arch/mips/kernel/smp-bmips.c
+++ b/arch/mips/kernel/smp-bmips.c
@@ -247,7 +247,8 @@ static void bmips_init_secondary(void)
 		break;
 	case CPU_BMIPS5000:
 		write_c0_brcm_action(ACTION_CLR_IPI(smp_processor_id(), 0));
-		cpu_set_core(&current_cpu_data, (read_c0_brcm_config() >> 25) & 3);
+		cpu_set_core(smp_processor_id(), (read_c0_brcm_config() >> 25) & 3);
+		cpu_set_cluster(smp_processor_id(), 0);
 		break;
 	}
 }
-- 
2.26.0.rc2




_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
