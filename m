Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2892E1A22FF
	for <lists+oprofile-list@lfdr.de>; Wed,  8 Apr 2020 15:29:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jMAmA-0007qY-O4; Wed, 08 Apr 2020 13:29:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiaxun.yang@flygoat.com>) id 1jM9L5-0005Qk-A0
 for oprofile-list@lists.sourceforge.net; Wed, 08 Apr 2020 11:57:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pYVNUB1ttBHRdymAcqZFRuHmoAfSO1tLD44WuhiF1vo=; b=PE1viIfKD54+8wCN49B2Xciso1
 DL3ql6f/8f31SjgLS/Ou20W+Nq2U+8mRK4M0+bDwoslVFWFZTZlQSCsKu9IMoJTbnZe3Kyhk/sx4N
 HIO7ZV9ztVvc/AFVeOS8jAIjbw4x3DYQ+igbp2VQOt4wkLLlOJxlBjWuL4Qp0SGCldyo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pYVNUB1ttBHRdymAcqZFRuHmoAfSO1tLD44WuhiF1vo=; b=Iai918i0bIOguSO7rDSHZom31K
 gUKeGotgX0ifA0FBgge+6nCDRhscroqhWM5N8QfPeHJ4zzq8K41XehrB5Dp7RSXDbjP79mfPatTAv
 3j64DtbMBHaMTnDo9X/SIrY/DNV1yxjfNcA7g4BNozrnemThPZeYMaOj64sZt39yq0mY=;
Received: from sender3-op-o12.zoho.com.cn ([124.251.121.243])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jM9L3-007TA4-Eg
 for oprofile-list@lists.sourceforge.net; Wed, 08 Apr 2020 11:57:51 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1586346033; cv=none; d=zoho.com.cn; s=zohoarc; 
 b=BiHazU2c0wcn+qLPQvMMLX7cOXINLPD2iCF3/ro3F5nkaUkxWvOeMMCpJDhqMhuYkcT/1tF92uxbYU9xAiTPxjDibEGA+xliwnlTgd6z4vK1KSt88uW76f0KOuv6ueVNDWAzavQq1fGaxJ1NcJgeydndecE0DMIo5mi1PI6vJMg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com.cn;
 s=zohoarc; t=1586346033;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=pYVNUB1ttBHRdymAcqZFRuHmoAfSO1tLD44WuhiF1vo=; 
 b=GS0Qv+pIjSvcI6DGEZ1WOPzlerhFAG7NOIhBmFjtIVeplvLrWVwwQwVxbzaakQLaq5ETzXByFyzWV+baK6kjcCcbUkyB0GJgisOPVgSCEA7bNVau14Rb60NTYmPOcGYz6wPT/Ntp6gp1UTfnk960eQNuesCRNZPJXWV1Cb/oO6E=
ARC-Authentication-Results: i=1; mx.zoho.com.cn;
 dkim=pass  header.i=flygoat.com;
 spf=pass  smtp.mailfrom=jiaxun.yang@flygoat.com;
 dmarc=pass header.from=<jiaxun.yang@flygoat.com>
 header.from=<jiaxun.yang@flygoat.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1586346033; 
 s=mail; d=flygoat.com; i=jiaxun.yang@flygoat.com;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=pYVNUB1ttBHRdymAcqZFRuHmoAfSO1tLD44WuhiF1vo=;
 b=Pis0R7CZu7Zo96Wdt+MCw/X+izuHTJ2RZWAQ0KstpmTpGtn2kByrKrVK2CFHXI1S
 ABEZiQDr5G5m4084PplEuyj928CEn7gumLtOYpUTOlUZUpwY3EMkEkAJ0d0YmJNIRav
 4zUBAtv6lvrI1Xe0ptgilRaSJETlV1B4bz757hVY=
Received: from localhost.localdomain (39.155.141.144 [39.155.141.144]) by
 mx.zoho.com.cn with SMTPS id 1586346030606761.6289993098943;
 Wed, 8 Apr 2020 19:40:30 +0800 (CST)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Message-ID: <20200408113505.2528103-6-jiaxun.yang@flygoat.com>
Subject: [PATCH 05/12] MIPS: Switch to arch_topology
Date: Wed,  8 Apr 2020 19:34:15 +0800
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
X-Headers-End: 1jM9L3-007TA4-Eg
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

Previously, MIPS is using self-defined "globalnumber" in struct
mips_cpuinfo to store topology information. However, it's not friendly
to DeviceTree based systems and lack of cpu_capacity related feature
which can take advantage of multi-cluster system.

Here, we enabled arch_topology for MIPS and adapted some functions
to fit arch_topology structure.
Also, we implmented smp_store_cpu_info to probe CPU's topology information
by "globalnumber" registers in VP ASE or Ebase.CPUNum for legacy systems.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
---
 arch/mips/Kconfig                |  1 +
 arch/mips/include/asm/cpu-info.h | 49 ----------------------------
 arch/mips/include/asm/smp.h      |  2 --
 arch/mips/include/asm/topology.h | 48 +++++++++++++++++++++++++---
 arch/mips/kernel/cpu-probe.c     | 43 -------------------------
 arch/mips/kernel/setup.c         |  1 +
 arch/mips/kernel/smp.c           | 55 ++++----------------------------
 arch/mips/kernel/topology.c      | 42 ++++++++++++++++++++++++
 8 files changed, 93 insertions(+), 148 deletions(-)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 690718b3701a..66b57e9f2b4d 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -20,6 +20,7 @@ config MIPS
 	select CLONE_BACKWARDS
 	select CPU_NO_EFFICIENT_FFS if (TARGET_ISA_REV < 1)
 	select CPU_PM if CPU_IDLE
+	select GENERIC_ARCH_TOPOLOGY if SMP
 	select GENERIC_ATOMIC64 if !64BIT
 	select GENERIC_CLOCKEVENTS
 	select GENERIC_CMOS_UPDATE
diff --git a/arch/mips/include/asm/cpu-info.h b/arch/mips/include/asm/cpu-info.h
index ed7ffe4e63a3..7140a3e61ce3 100644
--- a/arch/mips/include/asm/cpu-info.h
+++ b/arch/mips/include/asm/cpu-info.h
@@ -78,8 +78,6 @@ struct cpuinfo_mips {
 	struct cache_desc	scache; /* Secondary cache */
 	struct cache_desc	tcache; /* Tertiary/split secondary cache */
 	int			srsets; /* Shadow register sets */
-	int			package;/* physical package number */
-	unsigned int		globalnumber;
 #ifdef CONFIG_64BIT
 	int			vmbits; /* Virtual memory size in bits */
 #endif
@@ -139,53 +137,6 @@ struct proc_cpuinfo_notifier_args {
 	unsigned long n;
 };
 
-static inline unsigned int cpu_cluster(struct cpuinfo_mips *cpuinfo)
-{
-	/* Optimisation for systems where multiple clusters aren't used */
-	if (!IS_ENABLED(CONFIG_CPU_MIPSR6))
-		return 0;
-
-	return (cpuinfo->globalnumber & MIPS_GLOBALNUMBER_CLUSTER) >>
-		MIPS_GLOBALNUMBER_CLUSTER_SHF;
-}
-
-static inline unsigned int cpu_core(struct cpuinfo_mips *cpuinfo)
-{
-	return (cpuinfo->globalnumber & MIPS_GLOBALNUMBER_CORE) >>
-		MIPS_GLOBALNUMBER_CORE_SHF;
-}
-
-static inline unsigned int cpu_vpe_id(struct cpuinfo_mips *cpuinfo)
-{
-	/* Optimisation for systems where VP(E)s aren't used */
-	if (!IS_ENABLED(CONFIG_MIPS_MT_SMP) && !IS_ENABLED(CONFIG_CPU_MIPSR6))
-		return 0;
-
-	return (cpuinfo->globalnumber & MIPS_GLOBALNUMBER_VP) >>
-		MIPS_GLOBALNUMBER_VP_SHF;
-}
-
-extern void cpu_set_cluster(struct cpuinfo_mips *cpuinfo, unsigned int cluster);
-extern void cpu_set_core(struct cpuinfo_mips *cpuinfo, unsigned int core);
-extern void cpu_set_vpe_id(struct cpuinfo_mips *cpuinfo, unsigned int vpe);
-
-static inline bool cpus_are_siblings(int cpua, int cpub)
-{
-	struct cpuinfo_mips *infoa = &cpu_data[cpua];
-	struct cpuinfo_mips *infob = &cpu_data[cpub];
-	unsigned int gnuma, gnumb;
-
-	if (infoa->package != infob->package)
-		return false;
-
-	gnuma = infoa->globalnumber & ~MIPS_GLOBALNUMBER_VP;
-	gnumb = infob->globalnumber & ~MIPS_GLOBALNUMBER_VP;
-	if (gnuma != gnumb)
-		return false;
-
-	return true;
-}
-
 static inline unsigned long cpu_asid_inc(void)
 {
 	return 1 << CONFIG_MIPS_ASID_SHIFT;
diff --git a/arch/mips/include/asm/smp.h b/arch/mips/include/asm/smp.h
index 7990c1c70471..538e73f6bab0 100644
--- a/arch/mips/include/asm/smp.h
+++ b/arch/mips/include/asm/smp.h
@@ -21,8 +21,6 @@
 #include <asm/smp-ops.h>
 
 extern int smp_num_siblings;
-extern cpumask_t cpu_sibling_map[];
-extern cpumask_t cpu_core_map[];
 extern cpumask_t cpu_foreign_map[];
 
 static inline int raw_smp_processor_id(void)
diff --git a/arch/mips/include/asm/topology.h b/arch/mips/include/asm/topology.h
index 0673d2d0f2e6..e2044bbde53d 100644
--- a/arch/mips/include/asm/topology.h
+++ b/arch/mips/include/asm/topology.h
@@ -9,13 +9,51 @@
 #define __ASM_TOPOLOGY_H
 
 #include <topology.h>
+#include <linux/arch_topology.h>
 #include <linux/smp.h>
 
-#ifdef CONFIG_SMP
-#define topology_physical_package_id(cpu)	(cpu_data[cpu].package)
-#define topology_core_id(cpu)			(cpu_core(&cpu_data[cpu]))
-#define topology_core_cpumask(cpu)		(&cpu_core_map[cpu])
-#define topology_sibling_cpumask(cpu)		(&cpu_sibling_map[cpu])
+#if defined(CONFIG_SMP)
+static inline bool cpus_are_siblings(int cpua, int cpub)
+{
+	return cpumask_test_cpu(cpua, topology_sibling_cpumask(cpub));
+}
+
+static inline unsigned int cpu_cluster(int cpu)
+{
+	return cpu_topology[cpu].package_id;
+}
+
+static inline unsigned int cpu_core(int cpu)
+{
+	return cpu_topology[cpu].core_id;
+}
+
+static inline unsigned int cpu_vpe_id(int cpu)
+{
+	int id = cpu_topology[cpu].thread_id;
+
+	/* Uniprocessor system may get -1, but for hardware it's 0 */
+	if (id == -1)
+		return 0;
+
+	return id;
+}
+
+static inline void cpu_set_cluster(int cpu, unsigned int cluster)
+{
+	cpu_topology[cpu].package_id = cluster;
+}
+
+static inline void cpu_set_core(int cpu, unsigned int core)
+{
+	cpu_topology[cpu].core_id = core;
+}
+
+static inline void cpu_set_vpe_id(int cpu, unsigned int vpe)
+{
+	cpu_topology[cpu].thread_id = vpe;
+}
+
 #endif
 
 #endif /* __ASM_TOPOLOGY_H */
diff --git a/arch/mips/kernel/cpu-probe.c b/arch/mips/kernel/cpu-probe.c
index f21a2304401f..eead35e5dbfd 100644
--- a/arch/mips/kernel/cpu-probe.c
+++ b/arch/mips/kernel/cpu-probe.c
@@ -1042,17 +1042,6 @@ static void decode_configs(struct cpuinfo_mips *c)
 	set_ftlb_enable(c, (mips_ftlb_disabled ? 0 : FTLB_EN) | FTLB_SET_PROB);
 
 	mips_probe_watch_registers(c);
-
-#ifndef CONFIG_MIPS_CPS
-	if (cpu_has_mips_r2_r6) {
-		unsigned int core;
-
-		core = get_ebase_cpunum();
-		if (cpu_has_mipsmt)
-			core >>= fls(core_nvpes()) - 1;
-		cpu_set_core(c, core);
-	}
-#endif
 }
 
 /*
@@ -2303,35 +2292,3 @@ void cpu_report(void)
 	if (cpu_has_msa)
 		pr_info("MSA revision is: %08x\n", c->msa_id);
 }
-
-void cpu_set_cluster(struct cpuinfo_mips *cpuinfo, unsigned int cluster)
-{
-	/* Ensure the core number fits in the field */
-	WARN_ON(cluster > (MIPS_GLOBALNUMBER_CLUSTER >>
-			   MIPS_GLOBALNUMBER_CLUSTER_SHF));
-
-	cpuinfo->globalnumber &= ~MIPS_GLOBALNUMBER_CLUSTER;
-	cpuinfo->globalnumber |= cluster << MIPS_GLOBALNUMBER_CLUSTER_SHF;
-}
-
-void cpu_set_core(struct cpuinfo_mips *cpuinfo, unsigned int core)
-{
-	/* Ensure the core number fits in the field */
-	WARN_ON(core > (MIPS_GLOBALNUMBER_CORE >> MIPS_GLOBALNUMBER_CORE_SHF));
-
-	cpuinfo->globalnumber &= ~MIPS_GLOBALNUMBER_CORE;
-	cpuinfo->globalnumber |= core << MIPS_GLOBALNUMBER_CORE_SHF;
-}
-
-void cpu_set_vpe_id(struct cpuinfo_mips *cpuinfo, unsigned int vpe)
-{
-	/* Ensure the VP(E) ID fits in the field */
-	WARN_ON(vpe > (MIPS_GLOBALNUMBER_VP >> MIPS_GLOBALNUMBER_VP_SHF));
-
-	/* Ensure we're not using VP(E)s without support */
-	WARN_ON(vpe && !IS_ENABLED(CONFIG_MIPS_MT_SMP) &&
-		!IS_ENABLED(CONFIG_CPU_MIPSR6));
-
-	cpuinfo->globalnumber &= ~MIPS_GLOBALNUMBER_VP;
-	cpuinfo->globalnumber |= vpe << MIPS_GLOBALNUMBER_VP_SHF;
-}
diff --git a/arch/mips/kernel/setup.c b/arch/mips/kernel/setup.c
index 8a418783a6bb..b9fefc5dc702 100644
--- a/arch/mips/kernel/setup.c
+++ b/arch/mips/kernel/setup.c
@@ -784,6 +784,7 @@ void __init setup_arch(char **cmdline_p)
 	dmi_setup();
 
 	resource_init();
+	init_cpu_topology();
 	plat_smp_setup();
 
 	cpu_cache_init();
diff --git a/arch/mips/kernel/smp.c b/arch/mips/kernel/smp.c
index 48d84d5fcc36..4896d6ecc719 100644
--- a/arch/mips/kernel/smp.c
+++ b/arch/mips/kernel/smp.c
@@ -34,6 +34,7 @@
 #include <asm/mips-cps.h>
 #include <asm/mmu_context.h>
 #include <asm/time.h>
+#include <asm/topology.h>
 #include <asm/setup.h>
 #include <asm/maar.h>
 
@@ -47,10 +48,6 @@ EXPORT_SYMBOL(__cpu_logical_map);
 int smp_num_siblings = 1;
 EXPORT_SYMBOL(smp_num_siblings);
 
-/* representing the TCs (or siblings in Intel speak) of each logical CPU */
-cpumask_t cpu_sibling_map[NR_CPUS] __read_mostly;
-EXPORT_SYMBOL(cpu_sibling_map);
-
 /* representing the core map of multi-core chips of each logical CPU */
 cpumask_t cpu_core_map[NR_CPUS] __read_mostly;
 EXPORT_SYMBOL(cpu_core_map);
@@ -65,12 +62,6 @@ static DECLARE_COMPLETION(cpu_running);
 cpumask_t cpu_foreign_map[NR_CPUS] __read_mostly;
 EXPORT_SYMBOL(cpu_foreign_map);
 
-/* representing cpus for which sibling maps can be computed */
-static cpumask_t cpu_sibling_setup_map;
-
-/* representing cpus for which core maps can be computed */
-static cpumask_t cpu_core_setup_map;
-
 cpumask_t cpu_coherent_mask;
 
 #ifdef CONFIG_GENERIC_IRQ_IPI
@@ -78,37 +69,6 @@ static struct irq_desc *call_desc;
 static struct irq_desc *sched_desc;
 #endif
 
-static inline void set_cpu_sibling_map(int cpu)
-{
-	int i;
-
-	cpumask_set_cpu(cpu, &cpu_sibling_setup_map);
-
-	if (smp_num_siblings > 1) {
-		for_each_cpu(i, &cpu_sibling_setup_map) {
-			if (cpus_are_siblings(cpu, i)) {
-				cpumask_set_cpu(i, &cpu_sibling_map[cpu]);
-				cpumask_set_cpu(cpu, &cpu_sibling_map[i]);
-			}
-		}
-	} else
-		cpumask_set_cpu(cpu, &cpu_sibling_map[cpu]);
-}
-
-static inline void set_cpu_core_map(int cpu)
-{
-	int i;
-
-	cpumask_set_cpu(cpu, &cpu_core_setup_map);
-
-	for_each_cpu(i, &cpu_core_setup_map) {
-		if (cpu_data[cpu].package == cpu_data[i].package) {
-			cpumask_set_cpu(i, &cpu_core_map[cpu]);
-			cpumask_set_cpu(cpu, &cpu_core_map[i]);
-		}
-	}
-}
-
 /*
  * Calculate a new cpu_foreign_map mask whenever a
  * new cpu appears or disappears.
@@ -131,7 +91,7 @@ void calculate_cpu_foreign_map(void)
 
 	for_each_online_cpu(i)
 		cpumask_andnot(&cpu_foreign_map[i],
-			       &temp_foreign_map, &cpu_sibling_map[i]);
+			       &temp_foreign_map, topology_sibling_cpumask(i));
 }
 
 const struct plat_smp_ops *mp_ops;
@@ -177,7 +137,7 @@ void mips_smp_send_ipi_mask(const struct cpumask *mask, unsigned int action)
 			if (cpus_are_siblings(cpu, smp_processor_id()))
 				continue;
 
-			core = cpu_core(&cpu_data[cpu]);
+			core = cpu_core(cpu);
 
 			while (!cpumask_test_cpu(cpu, &cpu_coherent_mask)) {
 				mips_cm_lock_other_cpu(cpu, CM_GCR_Cx_OTHER_BLOCK_LOCAL);
@@ -340,6 +300,8 @@ asmlinkage void start_secondary(void)
 	mips_clockevent_init();
 	mp_ops->init_secondary();
 	cpu_report();
+	cpu = smp_processor_id();
+	store_cpu_topology(cpu);
 	maar_init();
 
 	/*
@@ -349,7 +311,6 @@ asmlinkage void start_secondary(void)
 
 	calibrate_delay();
 	preempt_disable();
-	cpu = smp_processor_id();
 	cpu_data[cpu].udelay_val = loops_per_jiffy;
 
 	cpumask_set_cpu(cpu, &cpu_coherent_mask);
@@ -363,9 +324,6 @@ asmlinkage void start_secondary(void)
 	/* The CPU is running and counters synchronised, now mark it online */
 	set_cpu_online(cpu, true);
 
-	set_cpu_sibling_map(cpu);
-	set_cpu_core_map(cpu);
-
 	calculate_cpu_foreign_map();
 
 	/*
@@ -411,8 +369,7 @@ void __init smp_prepare_cpus(unsigned int max_cpus)
 	init_new_context(current, &init_mm);
 	current_thread_info()->cpu = 0;
 	mp_ops->prepare_cpus(max_cpus);
-	set_cpu_sibling_map(0);
-	set_cpu_core_map(0);
+	store_cpu_topology(0);
 	calculate_cpu_foreign_map();
 #ifndef CONFIG_HOTPLUG_CPU
 	init_cpu_present(cpu_possible_mask);
diff --git a/arch/mips/kernel/topology.c b/arch/mips/kernel/topology.c
index cd3e1f82e1a5..112482de8187 100644
--- a/arch/mips/kernel/topology.c
+++ b/arch/mips/kernel/topology.c
@@ -31,3 +31,45 @@ static int __init topology_init(void)
 }
 
 subsys_initcall(topology_init);
+
+#if defined(CONFIG_SMP)
+void store_cpu_topology(unsigned int cpuid)
+{
+	struct cpu_topology *cpuid_topo = &cpu_topology[cpuid];
+
+	if (cpuid_topo->package_id != -1)
+		goto topology_populated;
+
+	if (cpu_has_vp) {
+		u32 gn = read_c0_globalnumber();
+
+		cpuid_topo->thread_id = (gn & MIPS_GLOBALNUMBER_VP) >>
+					MIPS_GLOBALNUMBER_VP_SHF;
+		cpuid_topo->core_id = (gn & MIPS_GLOBALNUMBER_CORE) >>
+					MIPS_GLOBALNUMBER_CORE_SHF;
+		cpuid_topo->package_id = (gn & MIPS_GLOBALNUMBER_CLUSTER) >>
+					MIPS_GLOBALNUMBER_CLUSTER_SHF;
+	} else {
+		int hwid;
+
+		if (cpu_has_mips_r2_r6)
+			hwid = get_ebase_cpunum();
+		else
+			hwid = cpuid; /* Assume hwid = cpuid */
+
+		if (smp_num_siblings == 1)
+			cpuid_topo->thread_id = -1;
+		else
+			cpuid_topo->thread_id = hwid % smp_num_siblings;
+
+		cpuid_topo->core_id = hwid / smp_num_siblings;
+		/* Platform code will handle multi-cluster case */
+		cpuid_topo->package_id = 0;
+	}
+
+topology_populated:
+	update_siblings_masks(cpuid);
+	pr_info("Topology: CPU %d: cluster: %d, core: %d, vpe: %d\n", cpuid,
+		cpu_cluster(cpuid), cpu_core(cpuid), cpu_vpe_id(cpuid));
+}
+#endif
-- 
2.26.0.rc2




_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
