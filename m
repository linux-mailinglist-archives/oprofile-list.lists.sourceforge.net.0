Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD5B1A2303
	for <lists+oprofile-list@lfdr.de>; Wed,  8 Apr 2020 15:29:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jMAmA-0007qM-Ky; Wed, 08 Apr 2020 13:29:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiaxun.yang@flygoat.com>) id 1jM9KJ-0005Dk-GS
 for oprofile-list@lists.sourceforge.net; Wed, 08 Apr 2020 11:57:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kAfR+MEcWmH1pn2XtI1ye2XkXpLmPO99yHe8dszIBGg=; b=XgaGLHDKHjFKcjuKqZtmnpIeGU
 seXabrqTTv90KkW44M1DY2tgm4ArgVjzQEMK6yqPc6nDWaBuV+W3QunVgD2ZM9yIOh4J39S+QgIx0
 yRjoPSqmwRLz6r3hcfzDm6xGcTTfaA7qz78jC18LQ1sa17DfQ9U3NVydsBvTPJO3hDJ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kAfR+MEcWmH1pn2XtI1ye2XkXpLmPO99yHe8dszIBGg=; b=Eezh+cPcyWomL1ygC4tHGDFoqF
 bMCF8Jig53qZI8jvCKS7AK8va+weTvwkaJJ4PPSq5U3ntmkqmOPrYhUrG+dfQrBmYD2+tKFMFZZ/z
 boUxqAVT8KrNkA32mwY3f0WXq+VF5HWueQO0cuIs3v4rDZyA3pz3P4jV/5sEcOnTf9Cg=;
Received: from sender3-op-o12.zoho.com.cn ([124.251.121.243])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jM9KH-0082PG-Vd
 for oprofile-list@lists.sourceforge.net; Wed, 08 Apr 2020 11:57:03 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1586345987; cv=none; d=zoho.com.cn; s=zohoarc; 
 b=fCtkhLymfD9CHEpnp/e36RIN0jp2eO9Q8YObQQ/hH3SPpeBTRAcB2w0x8PufvgkObUGSuIxOFACGQGHz/d4vPPu3O6PIgtxjEa/NxAkrAqj2LASYI71j/p2L8461Gd/sa9+NW7hG24JS9IsE/uWh0vZLUOXt4rXI11IFyDvIw68=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com.cn;
 s=zohoarc; t=1586345987;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=kAfR+MEcWmH1pn2XtI1ye2XkXpLmPO99yHe8dszIBGg=; 
 b=Rsfiow0S0UN13KV9WUZgibfvDOgZwcEwq5+ATIFJAjfcizvjDCcYKoBQhAtPch4r+k2MHkSiAod3fAfhkMRJ8kaj0b3vHrJUvWWSjEuLMfPa2IjHt1XyZeV/CMRLci4te3vJlZR/t0b/6jxUVNjTK1EAfNzRW4D32EOiCImxh74=
ARC-Authentication-Results: i=1; mx.zoho.com.cn;
 dkim=pass  header.i=flygoat.com;
 spf=pass  smtp.mailfrom=jiaxun.yang@flygoat.com;
 dmarc=pass header.from=<jiaxun.yang@flygoat.com>
 header.from=<jiaxun.yang@flygoat.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1586345987; 
 s=mail; d=flygoat.com; i=jiaxun.yang@flygoat.com;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=kAfR+MEcWmH1pn2XtI1ye2XkXpLmPO99yHe8dszIBGg=;
 b=OF6Nt3iysk9nvLjDkbzL1V/4j51ZIbNOjrBnD6TQz0lvX8Ni+b2paJOFRYT8DgMy
 fdyXF8NMzzGOFz7jusgTzL2gl3LfGcc7dp0eWeY6oxoAJ+AuOZSrAQWatyBY+cY7noZ
 8MCjqyP5TKgGzhclvzOGUpofOHFHj+D9vGhHqmME=
Received: from localhost.localdomain (39.155.141.144 [39.155.141.144]) by
 mx.zoho.com.cn with SMTPS id 1586345984855887.2159695647649;
 Wed, 8 Apr 2020 19:39:44 +0800 (CST)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Message-ID: <20200408113505.2528103-5-jiaxun.yang@flygoat.com>
Subject: [PATCH 04/12] arch_topology: Reset all cpus in reset_cpu_topology
Date: Wed,  8 Apr 2020 19:34:14 +0800
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
X-Headers-End: 1jM9KH-0082PG-Vd
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
 "Rafael J. Wysocki" <rafael@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Jiaxun Yang <jiaxun.yang@flygoat.com>, Paul Cercueil <paul@crapouillou.net>,
 Richard Fontana <rfontana@redhat.com>, Peter Xu <peterx@redhat.com>,
 Huacai Chen <chenhc@lemote.com>, Oleksij Rempel <linux@rempel-privat.de>,
 Jiri Olsa <jolsa@redhat.com>, afzal mohammed <afzal.mohd.ma@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Paul Burton <paulburton@kernel.org>,
 Kamal Dasu <kdasu.kdev@gmail.com>, Marc Zyngier <maz@kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, bcm-kernel-feedback-list@broadcom.com,
 oprofile-list@lists.sf.net,
 Vladimir Kondratiev <vladimir.kondratiev@intel.com>,
 Robert Richter <rric@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 Arnd Bergmann <arnd@arndb.de>, YunQiang Su <syq@debian.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexios Zavras <alexios.zavras@intel.com>, Steve Winslow <swinslow@gmail.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, Zhou Yanjie <zhouyanjie@zoho.com>,
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
---
 drivers/base/arch_topology.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/base/arch_topology.c b/drivers/base/arch_topology.c
index 9c2405d08dae..3398b7ac7dfb 100644
--- a/drivers/base/arch_topology.c
+++ b/drivers/base/arch_topology.c
@@ -542,7 +542,7 @@ void __init reset_cpu_topology(void)
 {
 	unsigned int cpu;
 
-	for_each_possible_cpu(cpu) {
+	for (cpu = 0; cpu < NR_CPUS; cpu++) {
 		struct cpu_topology *cpu_topo = &cpu_topology[cpu];
 
 		cpu_topo->thread_id = -1;
-- 
2.26.0.rc2




_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
