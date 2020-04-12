Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CC41A67D8
	for <lists+oprofile-list@lfdr.de>; Mon, 13 Apr 2020 16:20:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jNzxG-0001gl-7l; Mon, 13 Apr 2020 14:20:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiaxun.yang@flygoat.com>) id 1jNTVt-0000rk-RQ
 for oprofile-list@lists.sourceforge.net; Sun, 12 Apr 2020 03:42:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=03RCWIMZOpvkLd76+qalpQLk0WqkvmPl7NOnhIrsfJY=; b=ZmhP+yeMhgWjPZwdaoH/xOCrcx
 ZX9pu3tBUmOJZFuFDFBag0VqG3yogvoKUJMIoYo5PXQ8D8/d7VbVn2HmyPowLVohSghF/ntg0C/UT
 /Jj+N3wkqHG/ypE6uGwN+rJVigliIuwhYJ2Bi9UUpWG+bzfdEzR8zynEVMrj3+UQpfiQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=03RCWIMZOpvkLd76+qalpQLk0WqkvmPl7NOnhIrsfJY=; b=fj2Y+wItJAX61mDneIjBYw1Xoo
 RTY8pdUiO3C3HDqdCC16SOYQV1E0yD8pqsskkPAj5KCwj8BRZSJ4Y6iduRU9VzmuKNyGaBZpJ1E6U
 YArzTYPRN9ajt4Aqe5oYvK5/e8i0FerXiMF2J1uEKjWQguslkxzkZH6qMAmJhR4SQ5vs=;
Received: from vultr.net.flygoat.com ([149.28.68.211])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jNTVs-00BxH5-MY
 for oprofile-list@lists.sourceforge.net; Sun, 12 Apr 2020 03:42:29 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2001:da8:20f:4430:250:56ff:fe9a:7470])
 by vultr.net.flygoat.com (Postfix) with ESMTPSA id 7C0B620D14;
 Sun, 12 Apr 2020 03:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=flygoat.com; s=vultr;
 t=1586661923; bh=lW3H17njgy5+F3MBeH473cWUr39gwQNfiozOltaAlZo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Nq1yaboi2b8euWQTuffYuLwxu9gm+0wXpG8eAUt872HD3R/G1zamY0v3SrarEoeW+
 k0VHnJvkjtoHWMBTefrlzC4SRnwpI/Y0EcyNmhIaapMjN8HJt42EIJq4WmuF7naiY/
 s/UBP+yxWVlQSGsamLniRPwr0vnuNKXu1VThSOSx+7vTUXdaDX9vUKK61IYiqs6ow5
 n2dbaWXl9T0rWwnoT7vJTa2TIDkqQ5OG7Otu+ZUcB0myOGqO59py/0+nUZC8oTrsC2
 JtirU1WhtdHYUioNWoDSOHEKYz5Pv0NYrg6FIXK6NC5f4wpMTwCKN7OyFxEPm24GGe
 VCx84vG7PUong==
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Subject: [PATCH v2 03/11] arch_topology: Make it avilable for MIPS
Date: Sun, 12 Apr 2020 11:20:33 +0800
Message-Id: <20200412032123.3896114-4-jiaxun.yang@flygoat.com>
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
X-Headers-End: 1jNTVs-00BxH5-MY
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

Simply drop unnecessary archtecture limitions and add dummy
function for platforms without OF support.
As some of the functions are conflicting with Arm's platform
implementations, we mark them as weak.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
--
v2: Use weak instead of ifdef to exclude functions for Arm.
---
 drivers/base/arch_topology.c | 116 ++++++++++++++++++-----------------
 1 file changed, 60 insertions(+), 56 deletions(-)

diff --git a/drivers/base/arch_topology.c b/drivers/base/arch_topology.c
index 4d0a0038b476..13dc4fbf043f 100644
--- a/drivers/base/arch_topology.c
+++ b/drivers/base/arch_topology.c
@@ -143,57 +143,6 @@ void topology_normalize_cpu_scale(void)
 	}
 }
 
-bool __init topology_parse_cpu_capacity(struct device_node *cpu_node, int cpu)
-{
-	struct clk *cpu_clk;
-	static bool cap_parsing_failed;
-	int ret;
-	u32 cpu_capacity;
-
-	if (cap_parsing_failed)
-		return false;
-
-	ret = of_property_read_u32(cpu_node, "capacity-dmips-mhz",
-				   &cpu_capacity);
-	if (!ret) {
-		if (!raw_capacity) {
-			raw_capacity = kcalloc(num_possible_cpus(),
-					       sizeof(*raw_capacity),
-					       GFP_KERNEL);
-			if (!raw_capacity) {
-				cap_parsing_failed = true;
-				return false;
-			}
-		}
-		raw_capacity[cpu] = cpu_capacity;
-		pr_debug("cpu_capacity: %pOF cpu_capacity=%u (raw)\n",
-			cpu_node, raw_capacity[cpu]);
-
-		/*
-		 * Update freq_factor for calculating early boot cpu capacities.
-		 * For non-clk CPU DVFS mechanism, there's no way to get the
-		 * frequency value now, assuming they are running at the same
-		 * frequency (by keeping the initial freq_factor value).
-		 */
-		cpu_clk = of_clk_get(cpu_node, 0);
-		if (!PTR_ERR_OR_ZERO(cpu_clk)) {
-			per_cpu(freq_factor, cpu) =
-				clk_get_rate(cpu_clk) / 1000;
-			clk_put(cpu_clk);
-		}
-	} else {
-		if (raw_capacity) {
-			pr_err("cpu_capacity: missing %pOF raw capacity\n",
-				cpu_node);
-			pr_err("cpu_capacity: partial information: fallback to 1024 for all CPUs\n");
-		}
-		cap_parsing_failed = true;
-		free_raw_capacity();
-	}
-
-	return !ret;
-}
-
 #ifdef CONFIG_CPU_FREQ
 static cpumask_var_t cpus_to_visit;
 static void parsing_done_workfn(struct work_struct *work);
@@ -275,7 +224,58 @@ static void parsing_done_workfn(struct work_struct *work)
 core_initcall(free_raw_capacity);
 #endif
 
-#if defined(CONFIG_ARM64) || defined(CONFIG_RISCV)
+#if defined(CONFIG_OF)
+bool __init topology_parse_cpu_capacity(struct device_node *cpu_node, int cpu)
+{
+	struct clk *cpu_clk;
+	static bool cap_parsing_failed;
+	int ret;
+	u32 cpu_capacity;
+
+	if (cap_parsing_failed)
+		return false;
+
+	ret = of_property_read_u32(cpu_node, "capacity-dmips-mhz",
+				   &cpu_capacity);
+	if (!ret) {
+		if (!raw_capacity) {
+			raw_capacity = kcalloc(num_possible_cpus(),
+					       sizeof(*raw_capacity),
+					       GFP_KERNEL);
+			if (!raw_capacity) {
+				cap_parsing_failed = true;
+				return false;
+			}
+		}
+		raw_capacity[cpu] = cpu_capacity;
+		pr_debug("cpu_capacity: %pOF cpu_capacity=%u (raw)\n",
+			cpu_node, raw_capacity[cpu]);
+
+		/*
+		 * Update freq_factor for calculating early boot cpu capacities.
+		 * For non-clk CPU DVFS mechanism, there's no way to get the
+		 * frequency value now, assuming they are running at the same
+		 * frequency (by keeping the initial freq_factor value).
+		 */
+		cpu_clk = of_clk_get(cpu_node, 0);
+		if (!PTR_ERR_OR_ZERO(cpu_clk)) {
+			per_cpu(freq_factor, cpu) =
+				clk_get_rate(cpu_clk) / 1000;
+			clk_put(cpu_clk);
+		}
+	} else {
+		if (raw_capacity) {
+			pr_err("cpu_capacity: missing %pOF raw capacity\n",
+				cpu_node);
+			pr_err("cpu_capacity: partial information: fallback to 1024 for all CPUs\n");
+		}
+		cap_parsing_failed = true;
+		free_raw_capacity();
+	}
+
+	return !ret;
+}
+
 /*
  * This function returns the logic cpu number of the node.
  * There are basically three kinds of return values:
@@ -461,7 +461,12 @@ static int __init parse_dt_topology(void)
 	of_node_put(cn);
 	return ret;
 }
-#endif
+#else
+static int __init parse_dt_topology(void)
+{
+	return 0;
+}
+#endif /* CONFIG_OF */
 
 /*
  * cpu topology table
@@ -562,8 +567,8 @@ __weak int __init parse_acpi_topology(void)
 	return 0;
 }
 
-#if defined(CONFIG_ARM64) || defined(CONFIG_RISCV)
-void __init init_cpu_topology(void)
+
+__weak void __init init_cpu_topology(void)
 {
 	reset_cpu_topology();
 
@@ -576,4 +581,3 @@ void __init init_cpu_topology(void)
 	else if (of_have_populated_dt() && parse_dt_topology())
 		reset_cpu_topology();
 }
-#endif
-- 
2.26.0.rc2



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
