Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C551A2302
	for <lists+oprofile-list@lfdr.de>; Wed,  8 Apr 2020 15:29:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jMAmB-0007rz-Bi; Wed, 08 Apr 2020 13:29:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiaxun.yang@flygoat.com>) id 1jMAOC-0003NB-A4
 for oprofile-list@lists.sourceforge.net; Wed, 08 Apr 2020 13:05:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Wb2cFU7L7AcultSr3wuDD9OjkWyYp8SDKu7wk5DT1vQ=; b=OWMs2p1pUEY+x63SvYQ0LJjv60
 77A1w+gvP94qZtYnTWRXdYbidNZVXh44lxiMz+d8P/at5fy7cTpKfslpalDzWTbcq1aSN+5H/+ECA
 VX5tr8aixdJ1sDojSRTAVTlnZxumkVsVxiKKb8zamq1JF33x61vsMJJ8USDkach4vaf0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Wb2cFU7L7AcultSr3wuDD9OjkWyYp8SDKu7wk5DT1vQ=; b=gAoPKhkiEuAC3bUNx8XLn60sS8
 m/layLr/z10mcUhyeAnHnMzHgwQ4tc83mYojNP/yvblJcaKFnLgs1P/4iUHUIXzV8fXWOzXxDcG75
 fA+HiH8vf8uriYKrlrqm+Sr9CyNmKo0yBZj980tk8imuaAr1ywEUqUQf5rGQTpT3cNdA=;
Received: from sender3-op-o12.zoho.com.cn ([124.251.121.243])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jMAOA-007WMq-0Y
 for oprofile-list@lists.sourceforge.net; Wed, 08 Apr 2020 13:05:08 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1586350997; cv=none; d=zoho.com.cn; s=zohoarc; 
 b=qWDkOcrbjIfbp9iMEf0mjnuO7Pp9Uz2yiZqyIJuqirdubVysweKWVs3PqXtYhW9xxVZ99kgAjI2dxK63Ip8KAfGijVb7vasLyn5O/1kDd8o5yS6xycCNiR0ThfbRNt9Zrzjw4bla2vAzAnHlwPKTnfRKuViQGId3YkSbqFyIuvg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com.cn;
 s=zohoarc; t=1586350997;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=Wb2cFU7L7AcultSr3wuDD9OjkWyYp8SDKu7wk5DT1vQ=; 
 b=ltNgh+4ffb344wTWgr50j38RmgDo8CWkup9QoRv+Oymr/HLWGKF/F9MzpWHPz9+15RuTZ+PqrnuwBbgskKp/+uRN162H/Y6+5bJGuwb4SCMDjfXPPtZyVQh1wKYhyOXC7KiHHYDOX37r5sDwHG3BfgY8nEq/buQFyjBJ7HsjLJE=
ARC-Authentication-Results: i=1; mx.zoho.com.cn;
 dkim=pass  header.i=flygoat.com;
 spf=pass  smtp.mailfrom=jiaxun.yang@flygoat.com;
 dmarc=pass header.from=<jiaxun.yang@flygoat.com>
 header.from=<jiaxun.yang@flygoat.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1586350997; 
 s=mail; d=flygoat.com; i=jiaxun.yang@flygoat.com;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=Wb2cFU7L7AcultSr3wuDD9OjkWyYp8SDKu7wk5DT1vQ=;
 b=SIssDSqGVxKUsmp2F5IwyFWJLHPm/2/JPZl89281ynWkamtxtqAcbAT7L1bT3SGn
 WSCq5pu0UCqwmXvvGD2QRBjmREi3vdCmDSf6JUmuKyCpmDwm6Jr1rGp0nKl3hqxrN97
 K88LOsN9djlSMzi0u+TLE/rajbM0iy/FK9ixB0gw=
Received: from localhost.localdomain (39.155.141.144 [39.155.141.144]) by
 mx.zoho.com.cn with SMTPS id 1586350994404844.9671026645353;
 Wed, 8 Apr 2020 21:03:14 +0800 (CST)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Message-ID: <20200408130024.2529220-6-jiaxun.yang@flygoat.com>
Subject: [PATCH 11/12] MIPS: Loongson64: Switch to new topology interface
Date: Wed,  8 Apr 2020 20:59:53 +0800
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: flygoat.com]
X-Headers-End: 1jMAOA-007WMq-0Y
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

Use the new interface to setup topology information.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
---
 .../include/asm/mach-loongson64/topology.h    |  2 ++
 arch/mips/loongson64/smp.c                    | 20 +++++++++----------
 2 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/arch/mips/include/asm/mach-loongson64/topology.h b/arch/mips/include/asm/mach-loongson64/topology.h
index 3414a1fd1783..999464ed0c20 100644
--- a/arch/mips/include/asm/mach-loongson64/topology.h
+++ b/arch/mips/include/asm/mach-loongson64/topology.h
@@ -2,6 +2,8 @@
 #ifndef _ASM_MACH_TOPOLOGY_H
 #define _ASM_MACH_TOPOLOGY_H
 
+#include <linux/numa.h>
+
 #ifdef CONFIG_NUMA
 
 #define cpu_to_node(cpu)	(cpu_logical_map(cpu) >> 2)
diff --git a/arch/mips/loongson64/smp.c b/arch/mips/loongson64/smp.c
index e1fe8bbb377d..bb37d0a7e79c 100644
--- a/arch/mips/loongson64/smp.c
+++ b/arch/mips/loongson64/smp.c
@@ -353,10 +353,10 @@ static void loongson3_init_secondary(void)
 		loongson3_ipi_write32(0xffffffff, ipi_en0_regs[cpu_logical_map(i)]);
 
 	per_cpu(cpu_state, cpu) = CPU_ONLINE;
-	cpu_set_core(&cpu_data[cpu],
+	cpu_set_core(cpu,
 		     cpu_logical_map(cpu) % loongson_sysconf.cores_per_package);
-	cpu_data[cpu].package =
-		cpu_logical_map(cpu) / loongson_sysconf.cores_per_package;
+	cpu_set_cluster(cpu,
+			cpu_logical_map(cpu) / loongson_sysconf.cores_per_package);
 
 	i = 0;
 	core0_c0count[cpu] = 0;
@@ -368,7 +368,7 @@ static void loongson3_init_secondary(void)
 
 	if (i > MAX_LOOPS)
 		i = MAX_LOOPS;
-	if (cpu_data[cpu].package)
+	if (cpu_cluster(cpu))
 		initcount = core0_c0count[cpu] + i;
 	else /* Local access is faster for loops */
 		initcount = core0_c0count[cpu] + i/2;
@@ -421,9 +421,9 @@ static void __init loongson3_smp_setup(void)
 	ipi_status0_regs_init();
 	ipi_en0_regs_init();
 	ipi_mailbox_buf_init();
-	cpu_set_core(&cpu_data[0],
+	cpu_set_core(0,
 		     cpu_logical_map(0) % loongson_sysconf.cores_per_package);
-	cpu_data[0].package = cpu_logical_map(0) / loongson_sysconf.cores_per_package;
+	cpu_set_cluster(0, cpu_logical_map(0) / loongson_sysconf.cores_per_package);
 }
 
 static void __init loongson3_prepare_cpus(unsigned int max_cpus)
@@ -752,8 +752,8 @@ void play_dead(void)
 
 static int loongson3_disable_clock(unsigned int cpu)
 {
-	uint64_t core_id = cpu_core(&cpu_data[cpu]);
-	uint64_t package_id = cpu_data[cpu].package;
+	uint64_t core_id = cpu_core(cpu);
+	uint64_t package_id = cpu_cluster(cpu);
 
 	if ((read_c0_prid() & PRID_REV_MASK) == PRID_REV_LOONGSON3A_R1) {
 		LOONGSON_CHIPCFG(package_id) &= ~(1 << (12 + core_id));
@@ -766,8 +766,8 @@ static int loongson3_disable_clock(unsigned int cpu)
 
 static int loongson3_enable_clock(unsigned int cpu)
 {
-	uint64_t core_id = cpu_core(&cpu_data[cpu]);
-	uint64_t package_id = cpu_data[cpu].package;
+	uint64_t core_id = cpu_core(cpu);
+	uint64_t package_id = cpu_cluster(cpu);
 
 	if ((read_c0_prid() & PRID_REV_MASK) == PRID_REV_LOONGSON3A_R1) {
 		LOONGSON_CHIPCFG(package_id) |= 1 << (12 + core_id);
-- 
2.26.0.rc2




_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
