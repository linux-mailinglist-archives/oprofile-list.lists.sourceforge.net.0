Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5D91A67DD
	for <lists+oprofile-list@lfdr.de>; Mon, 13 Apr 2020 16:20:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jNzxG-0001hP-EE; Mon, 13 Apr 2020 14:20:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiaxun.yang@flygoat.com>) id 1jNTVv-0000rr-9j
 for oprofile-list@lists.sourceforge.net; Sun, 12 Apr 2020 03:42:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6KL7EqAky6KCFz8aPFZrs/VtpBEPBlLCUJw3UTojUZw=; b=e2KG+C+jjjhjyYQgb74SRAdi4C
 8Ju4IRBysnym/1ahQm8cdBhLj99ZA4tanT59TIY5WIDuHbdYKhplIVeTGapX8fksNdW1TM97SFG01
 cbYyRW5bdWtDS0vxWFOzOhoNJEr0Cc0ycJJwBE02ZcQhp0B2htFCXRqejPix6oZXXdf8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6KL7EqAky6KCFz8aPFZrs/VtpBEPBlLCUJw3UTojUZw=; b=dAWizsSZ2qGg++L6y8dD0T6lQ8
 t/YyhF/sNqsK6icQ4krMY7kjfHV2LTbTOPLSL93kLHrGtXyFWrBykGhNdqlIjA1h8B33XXY55fVSk
 4pb1P54WO9p9+lQgJLUtr6vIRMsmd6juaGu9mqXegv2CqlPa1ChFZY6UYA1cTThePpWc=;
Received: from vultr.net.flygoat.com ([149.28.68.211])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jNTVt-00CPrU-Fj
 for oprofile-list@lists.sourceforge.net; Sun, 12 Apr 2020 03:42:31 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2001:da8:20f:4430:250:56ff:fe9a:7470])
 by vultr.net.flygoat.com (Postfix) with ESMTPSA id 67F8320D16;
 Sun, 12 Apr 2020 03:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=flygoat.com; s=vultr;
 t=1586661973; bh=tGxZsojCaXRQzUdr7zPR3NOXIGurTKod1uy8NjI5p4E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xGx/6YE0io5bsdUPMhxoxEtHAD2PhTqgr8oGauD28ht0om5LPEo9Gg+mYvohWevhA
 DDt7PXbYLaEmUppcrL7V3FD5fsup9agG6l9dlf3MM/mfoiQ/qm7RY+JV/YiKSVbTX7
 t5dyba1nNAHbzbaddtE0RtBYGhPPEVgAu64dbSmm7RNhD5GvXAsUjkZS2P3k+NFHgN
 OXiiUhR58SGALxKtK3jd+Tn4s0v3SdRdz6uPrMisS7WmGYiFYnuWVS8wpT5xo5jUVa
 lPrY8npH96DYo0qUsW0z9OI4ly38crST4a56ezVKQ73/EKeXcGDHFj7RR0F5YCksH+
 t7Zh+NbVX1AWw==
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Subject: [PATCH v2 04/11] arch_topology: Reset all cpus in reset_cpu_topology
Date: Sun, 12 Apr 2020 11:20:34 +0800
Message-Id: <20200412032123.3896114-5-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20200412032123.3896114-1-jiaxun.yang@flygoat.com>
References: <20200412032123.3896114-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: flygoat.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jNTVt-00CPrU-Fj
X-Mailman-Approved-At: Mon, 13 Apr 2020 14:20:51 +0000
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
 "Rafael J. Wysocki" <rafael@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Jiaxun Yang <jiaxun.yang@flygoat.com>, Paul Cercueil <paul@crapouillou.net>,
 Richard Fontana <rfontana@redhat.com>, Peter Xu <peterx@redhat.com>,
 Huacai Chen <chenhc@lemote.com>, Oleksij Rempel <linux@rempel-privat.de>,
 Jiri Olsa <jolsa@redhat.com>, afzal mohammed <afzal.mohd.ma@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Paul Burton <paulburton@kernel.org>,
 Kamal Dasu <kdasu.kdev@gmail.com>, Marc Zyngier <maz@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, bcm-kernel-feedback-list@broadcom.com,
 oprofile-list@lists.sf.net,
 Vladimir Kondratiev <vladimir.kondratiev@intel.com>,
 Robert Richter <rric@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 YunQiang Su <syq@debian.org>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexios Zavras <alexios.zavras@intel.com>, Steve Winslow <swinslow@gmail.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 dietmar.eggemann@arm.com, Allison Randal <allison@lohutok.net>,
 Zhou Yanjie <zhouyanjie@zoho.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Matt Redfearn <matt.redfearn@mips.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>,
 =?UTF-8?q?=E5=91=A8=E7=90=B0=E6=9D=B0=20=28Zhou=20Yanjie=29?=
 <zhouyanjie@wanyeetech.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

For MIPS platform, when topology isn't probed by DeviceTree,
possible_cpu might be empty when calling init_cpu_topology,
that may result cpu_topology not fully reseted for all CPUs.
So here we can reset all cpus instead of possible cpus.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>

--
v2: Use ARRAY_SIZE instead of NR_CPUS.
---
 drivers/base/arch_topology.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/base/arch_topology.c b/drivers/base/arch_topology.c
index 13dc4fbf043f..e7912d0a875e 100644
--- a/drivers/base/arch_topology.c
+++ b/drivers/base/arch_topology.c
@@ -536,7 +536,7 @@ void __init reset_cpu_topology(void)
 {
 	unsigned int cpu;
 
-	for_each_possible_cpu(cpu) {
+	for (cpu = 0; cpu < ARRAY_SIZE(cpu_topology); cpu++) {
 		struct cpu_topology *cpu_topo = &cpu_topology[cpu];
 
 		cpu_topo->thread_id = -1;
-- 
2.26.0.rc2



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
