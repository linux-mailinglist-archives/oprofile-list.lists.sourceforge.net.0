Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6513A1A22F8
	for <lists+oprofile-list@lfdr.de>; Wed,  8 Apr 2020 15:29:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jMAmA-0007qk-RG; Wed, 08 Apr 2020 13:29:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiaxun.yang@flygoat.com>) id 1jMAMB-0002sC-S7
 for oprofile-list@lists.sourceforge.net; Wed, 08 Apr 2020 13:03:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vYhLojl6vl4ywO3XmADviLh5o4y3XTv8xzj+M3OtVkQ=; b=PorGukBJZNhqXmDjXxS12HcBP+
 eLxU9eTUJBXfSxIOyD/5MrgLrBnnaWJCmQR6QDvpyLtLw8k2bF12xG25c2ko30kWErCC8JMauZL0Z
 7lOPYvBgQsddeF/xX/JdrxaMBjWguYZ5VeIkYngVjV3pOQpAzc3K93w/jrkWxMtA6Bf0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vYhLojl6vl4ywO3XmADviLh5o4y3XTv8xzj+M3OtVkQ=; b=YiGnSVZJGFf7pq44TbHjtUBny/
 WN+6wOc6/bv0/eNhpdbJ02oG634mrygtbAubht3OKLeZTzoOYFTK++LMnYmT++KYtdJ5SxnUzaEMk
 NfHpn+OHr6Ohncp72IrMnjZuhFLsG+MgbtnYp1nm2QQsqB9qXWIIZEf3OANNRCJF3VGk=;
Received: from sender3-op-o12.zoho.com.cn ([124.251.121.243])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jMAM5-007WEf-6a
 for oprofile-list@lists.sourceforge.net; Wed, 08 Apr 2020 13:03:03 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1586350837; cv=none; d=zoho.com.cn; s=zohoarc; 
 b=CNTU47fQERVmRseYdTvPW4iDk4wtDzfI8G6KDFW5Acrlv3reV1+nTCadNJGuOYUXuYh4+AEDVEHOkmUnDYCe4OJJKGVrDvzs4Qe7XfDaIL7F6r0aMGvg+6Xnq+j9agZ0TuvTq+jI8pVspVn/89QJK3PzcRCzY39VSgROLflvByw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com.cn;
 s=zohoarc; t=1586350837;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=vYhLojl6vl4ywO3XmADviLh5o4y3XTv8xzj+M3OtVkQ=; 
 b=jzQ4bEdSTUs6KhH11LuD8CqZQYg9iKy5DzMPUsQ+IwQLgf5Mki16RQHZhtpAkBs8xNcX3v1X68ZzzY70lNnu7zkhgwSUXHmO2qdhX1Cd+eEhnNvDDNH1t5V+slUBKB+KrPET/pJ7JoqU4avLj9GVACl2T3V4/CkgMl2aKKNQugc=
ARC-Authentication-Results: i=1; mx.zoho.com.cn;
 dkim=pass  header.i=flygoat.com;
 spf=pass  smtp.mailfrom=jiaxun.yang@flygoat.com;
 dmarc=pass header.from=<jiaxun.yang@flygoat.com>
 header.from=<jiaxun.yang@flygoat.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1586350837; 
 s=mail; d=flygoat.com; i=jiaxun.yang@flygoat.com;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=vYhLojl6vl4ywO3XmADviLh5o4y3XTv8xzj+M3OtVkQ=;
 b=QZlSRLor5ye10lda7Hm6z7Z4ZCbWaC/icJpmPb7aBLwch/l3FD2cdWSd9/CMNzFn
 +OZzjqrAN/HT2jU9qHg5i2/k+VZqLHNAjFc+5OVOUMAXMP6sgHwhNKEh9FWtSYxU0cq
 aHpDSBlZ1hVfbg7rXZoEkaDiFx3fJpEuzeKGvgBw=
Received: from localhost.localdomain (39.155.141.144 [39.155.141.144]) by
 mx.zoho.com.cn with SMTPS id 1586350832335802.4494337653545;
 Wed, 8 Apr 2020 21:00:32 +0800 (CST)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Message-ID: <20200408130024.2529220-1-jiaxun.yang@flygoat.com>
Subject: [PATCH 06/12] MIPS: Kernel: Switch to new topology interface
Date: Wed,  8 Apr 2020 20:59:48 +0800
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20200408113505.2528103-1-jiaxun.yang@flygoat.com>
References: <20200408113505.2528103-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-ZohoCNMailClient: External
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [124.251.121.243 listed in list.dnswl.org]
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
X-Headers-End: 1jMAM5-007WEf-6a
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

Adapt topology functions to new interface in various of kernel
parts like perf, proc.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
---
 arch/mips/kernel/cacheinfo.c         | 5 +++--
 arch/mips/kernel/perf_event_mipsxx.c | 4 ++--
 arch/mips/kernel/proc.c              | 8 ++++----
 arch/mips/mm/c-r4k.c                 | 4 ++--
 arch/mips/mm/context.c               | 4 ++--
 arch/mips/oprofile/op_model_mipsxx.c | 4 ++--
 6 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/arch/mips/kernel/cacheinfo.c b/arch/mips/kernel/cacheinfo.c
index 47312c529410..582c866b294f 100644
--- a/arch/mips/kernel/cacheinfo.c
+++ b/arch/mips/kernel/cacheinfo.c
@@ -3,6 +3,7 @@
  * MIPS cacheinfo support
  */
 #include <linux/cacheinfo.h>
+#include <asm/topology.h>
 
 /* Populates leaf and increments to next leaf */
 #define populate_cache(cache, leaf, c_level, c_type)		\
@@ -62,10 +63,10 @@ static void fill_cpumask_siblings(int cpu, cpumask_t *cpu_map)
 static void fill_cpumask_cluster(int cpu, cpumask_t *cpu_map)
 {
 	int cpu1;
-	int cluster = cpu_cluster(&cpu_data[cpu]);
+	int cluster = cpu_topology[cpu].package_id;
 
 	for_each_possible_cpu(cpu1)
-		if (cpu_cluster(&cpu_data[cpu1]) == cluster)
+		if (cpu_topology[cpu1].package_id == cluster)
 			cpumask_set_cpu(cpu1, cpu_map);
 }
 
diff --git a/arch/mips/kernel/perf_event_mipsxx.c b/arch/mips/kernel/perf_event_mipsxx.c
index 128fc9999c56..e9ed3526bad0 100644
--- a/arch/mips/kernel/perf_event_mipsxx.c
+++ b/arch/mips/kernel/perf_event_mipsxx.c
@@ -127,7 +127,7 @@ static DEFINE_RWLOCK(pmuint_rwlock);
 			 0 : (smp_processor_id() & MIPS_CPUID_TO_COUNTER_MASK))
 #else
 #define vpe_id()	(cpu_has_mipsmt_pertccounters ? \
-			 0 : cpu_vpe_id(&current_cpu_data))
+			 0 : cpu_vpe_id(smp_processor_id()))
 #endif
 
 /* Copied from op_model_mipsxx.c */
@@ -343,7 +343,7 @@ static void mipsxx_pmu_enable_event(struct hw_perf_event *evt, int idx)
 		 */
 		cpu = (event->cpu >= 0) ? event->cpu : smp_processor_id();
 
-		ctrl = M_PERFCTL_VPEID(cpu_vpe_id(&cpu_data[cpu]));
+		ctrl = M_PERFCTL_VPEID(cpu_vpe_id(smp_processor_id()));
 		ctrl |= M_TC_EN_VPE;
 		cpuc->saved_ctrl[idx] |= ctrl;
 		pr_debug("Enabling perf counter for CPU%d\n", cpu);
diff --git a/arch/mips/kernel/proc.c b/arch/mips/kernel/proc.c
index f8d36710cd58..e8795b262ca2 100644
--- a/arch/mips/kernel/proc.c
+++ b/arch/mips/kernel/proc.c
@@ -138,14 +138,14 @@ static int show_cpuinfo(struct seq_file *m, void *v)
 		      cpu_data[n].srsets);
 	seq_printf(m, "kscratch registers\t: %d\n",
 		      hweight8(cpu_data[n].kscratch_mask));
-	seq_printf(m, "package\t\t\t: %d\n", cpu_data[n].package);
-	seq_printf(m, "core\t\t\t: %d\n", cpu_core(&cpu_data[n]));
+	seq_printf(m, "package\t\t\t: %d\n", cpu_cluster(n));
+	seq_printf(m, "core\t\t\t: %d\n", cpu_core(n));
 
 #if defined(CONFIG_MIPS_MT_SMP) || defined(CONFIG_CPU_MIPSR6)
 	if (cpu_has_mipsmt)
-		seq_printf(m, "VPE\t\t\t: %d\n", cpu_vpe_id(&cpu_data[n]));
+		seq_printf(m, "VPE\t\t\t: %d\n", cpu_vpe_id(n));
 	else if (cpu_has_vp)
-		seq_printf(m, "VP\t\t\t: %d\n", cpu_vpe_id(&cpu_data[n]));
+		seq_printf(m, "VP\t\t\t: %d\n", cpu_vpe_id(n));
 #endif
 
 	sprintf(fmt, "VCE%%c exceptions\t\t: %s\n",
diff --git a/arch/mips/mm/c-r4k.c b/arch/mips/mm/c-r4k.c
index 36a311348739..851559ef0bc3 100644
--- a/arch/mips/mm/c-r4k.c
+++ b/arch/mips/mm/c-r4k.c
@@ -547,7 +547,7 @@ static inline int has_valid_asid(const struct mm_struct *mm, unsigned int type)
 	if (cpu_has_mmid)
 		return cpu_context(0, mm) != 0;
 
-	/* cpu_sibling_map[] undeclared when !CONFIG_SMP */
+	/* topology_sibling_cpumask undeclared when !CONFIG_SMP */
 #ifdef CONFIG_SMP
 	/*
 	 * If r4k_on_each_cpu does SMP calls, it does them to a single VPE in
@@ -555,7 +555,7 @@ static inline int has_valid_asid(const struct mm_struct *mm, unsigned int type)
 	 * Otherwise we need to worry about all present CPUs.
 	 */
 	if (r4k_op_needs_ipi(type))
-		mask = &cpu_sibling_map[smp_processor_id()];
+		mask = topology_sibling_cpumask(smp_processor_id());
 #endif
 	for_each_cpu(i, mask)
 		if (cpu_context(i, mm))
diff --git a/arch/mips/mm/context.c b/arch/mips/mm/context.c
index b25564090939..ad2d8b7f464b 100644
--- a/arch/mips/mm/context.c
+++ b/arch/mips/mm/context.c
@@ -241,12 +241,12 @@ void check_switch_mmu_context(struct mm_struct *mm)
 	 * increase then we need to invalidate any TLB entries for our MMID
 	 * that we might otherwise pick up from a sibling.
 	 *
-	 * We ifdef on CONFIG_SMP because cpu_sibling_map isn't defined in
+	 * We ifdef on CONFIG_SMP because topology_sibling_cpumask isn't defined in
 	 * CONFIG_SMP=n kernels.
 	 */
 #ifdef CONFIG_SMP
 	if (cpu_has_shared_ftlb_entries &&
-	    cpumask_intersects(&tlb_flush_pending, &cpu_sibling_map[cpu])) {
+	    cpumask_intersects(&tlb_flush_pending, topology_sibling_cpumask(cpu))) {
 		/* Ensure we operate on the new MMID */
 		mtc0_tlbw_hazard();
 
diff --git a/arch/mips/oprofile/op_model_mipsxx.c b/arch/mips/oprofile/op_model_mipsxx.c
index a537bf98912c..0129dfcf5d55 100644
--- a/arch/mips/oprofile/op_model_mipsxx.c
+++ b/arch/mips/oprofile/op_model_mipsxx.c
@@ -37,9 +37,9 @@ static int perfcount_irq;
 
 #ifdef CONFIG_MIPS_MT_SMP
 #define WHAT		(MIPS_PERFCTRL_MT_EN_VPE | \
-			 M_PERFCTL_VPEID(cpu_vpe_id(&current_cpu_data)))
+			 M_PERFCTL_VPEID(cpu_vpe_id(smp_processor_id())))
 #define vpe_id()	(cpu_has_mipsmt_pertccounters ? \
-			0 : cpu_vpe_id(&current_cpu_data))
+			0 : cpu_vpe_id(smp_processor_id()))
 
 /*
  * The number of bits to shift to convert between counters per core and
-- 
2.26.0.rc2




_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
