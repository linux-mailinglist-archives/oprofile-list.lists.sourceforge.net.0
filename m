Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3019D1A67DF
	for <lists+oprofile-list@lfdr.de>; Mon, 13 Apr 2020 16:20:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jNzxF-0001es-Ou; Mon, 13 Apr 2020 14:20:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiaxun.yang@flygoat.com>) id 1jNTR7-00045G-8F
 for oprofile-list@lists.sourceforge.net; Sun, 12 Apr 2020 03:37:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sCvCcfTvGwvMJUXb+b9f3hor7TyfQzEw0FfMmonL94s=; b=REAtwg5kUmuJYrhhX1X0oHgJPy
 9VgidA59tpEbRkXRBc6uQTsRB/shYkV4pQDtzycs/CHU1InaOaMU/kWa+DzuHTwKyQ915RUOC/c4p
 bnbMreaeh710LqL9ZkO9eoOZts1nw2KmTNiWFsVZd2BIGijaH2dswCCNvHg65lUSjYoI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sCvCcfTvGwvMJUXb+b9f3hor7TyfQzEw0FfMmonL94s=; b=CsXNOo+aZ3DgvRaCTtdadOdz8f
 8eiRCbLOqkXA9g/5HGTGNAPAujXU8S1yoHZ0lwl/+FeBapx/HSLbgD43sGA6WI/rI5HBqM+UmbJUJ
 02aLlCO4Mhh+ajiCXO4Eker1UPoSDgqhCk1PMFKMkktOySEHkQoD37fCIjLsn6WKEiuI=;
Received: from vultr.net.flygoat.com ([149.28.68.211])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jNTR3-00FdLn-7F
 for oprofile-list@lists.sourceforge.net; Sun, 12 Apr 2020 03:37:33 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2001:da8:20f:4430:250:56ff:fe9a:7470])
 by vultr.net.flygoat.com (Postfix) with ESMTPSA id DFA4B20D1B;
 Sun, 12 Apr 2020 03:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=flygoat.com; s=vultr;
 t=1586662072; bh=xGkPNlgr7Ak8PcW00iiNq2U+pg1E5SuUcmDpJ31y/7U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oYvvpezAgid/leO+E9vgarN3GliOnBJ4LcCJBK80V6FAm2IYmkrMtHHU367h6LCfp
 MpSWJdU5wstbTTXrnyVltvXSnXIt+JNI+dBj0jRhHpO+L7s2iG5vdb7Rh4FfnWJbNK
 MVcy4gbZJQqkBzz7v6YhLXSMw5CyC/BQBB8zChXhARK7emDEmXujV3cy/3I7Svlxsq
 jG/Ca4VvZKNGKqaIDyzc9L+NWjvvfqYCBH21J8bMMbcyU1E9Owm7JOZvmnklM5gsXM
 HOGEt4eLcxjjI9EUxyoOqCSlSpU7YqlgC9HM0Ir3cyUBanGBzFEa9diLtHLF57samG
 JMyoPAd9rYe3Q==
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Subject: [PATCH v2 06/11] MIPS: Kernel: Switch to new topology interface
Date: Sun, 12 Apr 2020 11:20:36 +0800
Message-Id: <20200412032123.3896114-7-jiaxun.yang@flygoat.com>
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
X-Headers-End: 1jNTR3-00FdLn-7F
X-Mailman-Approved-At: Mon, 13 Apr 2020 14:20:50 +0000
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
 Daniel Lezcano <daniel.lezcano@linaro.org>, Mike Rapoport <rppt@linux.ibm.com>,
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

Adapt topology functions to new interface in various of kernel
parts like perf, proc.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
---
 arch/mips/kernel/cacheinfo.c         | 19 ++++++-------------
 arch/mips/kernel/perf_event_mipsxx.c |  4 ++--
 arch/mips/kernel/proc.c              |  8 ++++----
 arch/mips/mm/c-r4k.c                 |  4 ++--
 arch/mips/mm/context.c               |  4 ++--
 arch/mips/oprofile/op_model_mipsxx.c |  4 ++--
 6 files changed, 18 insertions(+), 25 deletions(-)

diff --git a/arch/mips/kernel/cacheinfo.c b/arch/mips/kernel/cacheinfo.c
index 47312c529410..9a5f12830440 100644
--- a/arch/mips/kernel/cacheinfo.c
+++ b/arch/mips/kernel/cacheinfo.c
@@ -3,6 +3,7 @@
  * MIPS cacheinfo support
  */
 #include <linux/cacheinfo.h>
+#include <linux/topology.h>
 
 /* Populates leaf and increments to next leaf */
 #define populate_cache(cache, leaf, c_level, c_type)		\
@@ -50,22 +51,12 @@ static int __init_cache_level(unsigned int cpu)
 	return 0;
 }
 
-static void fill_cpumask_siblings(int cpu, cpumask_t *cpu_map)
-{
-	int cpu1;
-
-	for_each_possible_cpu(cpu1)
-		if (cpus_are_siblings(cpu, cpu1))
-			cpumask_set_cpu(cpu1, cpu_map);
-}
-
 static void fill_cpumask_cluster(int cpu, cpumask_t *cpu_map)
 {
 	int cpu1;
-	int cluster = cpu_cluster(&cpu_data[cpu]);
 
 	for_each_possible_cpu(cpu1)
-		if (cpu_cluster(&cpu_data[cpu1]) == cluster)
+		if (cpu_cluster(cpu1) == cpu_cluster(cpu))
 			cpumask_set_cpu(cpu1, cpu_map);
 }
 
@@ -77,9 +68,11 @@ static int __populate_cache_leaves(unsigned int cpu)
 
 	if (c->icache.waysize) {
 		/* L1 caches are per core */
-		fill_cpumask_siblings(cpu, &this_leaf->shared_cpu_map);
+		cpumask_copy(&this_leaf->shared_cpu_map,
+				topology_sibling_cpumask(cpu));
 		populate_cache(dcache, this_leaf, 1, CACHE_TYPE_DATA);
-		fill_cpumask_siblings(cpu, &this_leaf->shared_cpu_map);
+		cpumask_copy(&this_leaf->shared_cpu_map,
+				topology_sibling_cpumask(cpu));
 		populate_cache(icache, this_leaf, 1, CACHE_TYPE_INST);
 	} else {
 		populate_cache(dcache, this_leaf, 1, CACHE_TYPE_UNIFIED);
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
