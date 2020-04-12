Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6461A67E5
	for <lists+oprofile-list@lfdr.de>; Mon, 13 Apr 2020 16:20:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jNzxF-0001fH-T2; Mon, 13 Apr 2020 14:20:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiaxun.yang@flygoat.com>) id 1jNTR8-0003Xa-0G
 for oprofile-list@lists.sourceforge.net; Sun, 12 Apr 2020 03:37:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4Rffoa1dXYXKyFc6xwkFUct2uOpMNbKHHJfRAT2RHMg=; b=Su19qyemWFEYrFBNtBpaXHsupT
 jiN9c2NbMHhmIOHMmBkh0oVHPEUmSId74Ve77BDPMYYI1HtiuKpQVNpaxjTUC2YBeMPU3uAXwVQIR
 OKKnBaEdwDejR1URZ2l/tafiESBAUrRyka7BdpLT/aXaAfwORMWciePtd0FJV4IXKRZ4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4Rffoa1dXYXKyFc6xwkFUct2uOpMNbKHHJfRAT2RHMg=; b=J7Rwo1/p8vrcKbJtTG1m2XxdpY
 Bs+LkROfc06/DoPGgPuydnkU2nzJ0Xy/gOKlouh5OCjgfit2pIQm9MYHI12VYikknxxAqUtlLAtiS
 kbQNHSvca5KjsoaT6SSwIfP8SBA2+NaQlquTsTgA3vHdXYMYiYUoAdtwP8DS6HlR5wDE=;
Received: from vultr.net.flygoat.com ([149.28.68.211])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jNTR3-00FdLo-7K
 for oprofile-list@lists.sourceforge.net; Sun, 12 Apr 2020 03:37:33 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2001:da8:20f:4430:250:56ff:fe9a:7470])
 by vultr.net.flygoat.com (Postfix) with ESMTPSA id 620A320D2F;
 Sun, 12 Apr 2020 03:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=flygoat.com; s=vultr;
 t=1586662319; bh=GNiO8NpbsZIQ1ef9HBb53eMl+oqmvusfYXjRpJzyMrs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TR4jBpFW/bSc8nY54KdLEzy08OdLxNizV+H1QqlnjFfDMncihdg5Cdiqgg92EjSNP
 g8iyKJgIA68vaWhPKljTMUPcgzg6eISoQx5m7sOwARSgCLlu7VqanhbGgXJcpFGrU/
 i/LFsYXncft53843fmBwGDl2v+ZcNgc8MN8OwdY3ra2iErr/UrV4kGcbmsYz+zBgvZ
 QXimsKQqofCNHaOh3cMYxVaxeOIF8yIu7qRPgu/94hWchJHGHaOQsGNYtkS40tv5lc
 S9Qu+pgnCJoM7opU0XJscSJlnknQeThG66epsaSnbtN4wz5D/Br6fRr03vfc6NNGFt
 6+YpLhViVBhBg==
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Subject: [PATCH v2 11/11] MIPS: Loongson64: Switch to new topology interface
Date: Sun, 12 Apr 2020 11:20:41 +0800
Message-Id: <20200412032123.3896114-12-jiaxun.yang@flygoat.com>
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
X-Headers-End: 1jNTR3-00FdLo-7K
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
