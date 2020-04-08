Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB3C1A2300
	for <lists+oprofile-list@lfdr.de>; Wed,  8 Apr 2020 15:29:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jMAmA-0007q9-IL; Wed, 08 Apr 2020 13:29:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiaxun.yang@flygoat.com>) id 1jM9Jj-0003UO-O2
 for oprofile-list@lists.sourceforge.net; Wed, 08 Apr 2020 11:56:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+So5B32ryvAjtvrOHDFwVo1iY55d65dAEsJtVoTGv5Q=; b=Hy7Xcc3Jeeno24EwdSAW5rAINR
 kHzuMRd7gkYwTrA/SJA+sQjh9UFroncCQgV1ldrB6+5h1FJi94XCscQoxdKdDiw+5H1ZCxZnaicit
 gC9ANfoSLnelLnIH2C3cUyrVtqIjcuzp+u1LsoKsqW0ZgusiKcqKnSrMoQVlNTwUftYY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+So5B32ryvAjtvrOHDFwVo1iY55d65dAEsJtVoTGv5Q=; b=NFYRncj2eWBOfLOSPpn1KmQt9c
 j1BoRu/QItXlnmam67QMXHRZSmpLxJkiiZg+iP8xOD6SNj8IMX3d/2zgACqGNwQvoX9ooYplp3stK
 7VMxpJV+HLu2TXbaGMgWO8hEM4V1+AkmB2FcOTJ/e9Uoqpb9E8n2RZhUI9ZluL5QgozA=;
Received: from sender3-op-o12.zoho.com.cn ([124.251.121.243])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jM9Jd-007T7H-RX
 for oprofile-list@lists.sourceforge.net; Wed, 08 Apr 2020 11:56:27 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1586345939; cv=none; d=zoho.com.cn; s=zohoarc; 
 b=pPf/pc3k9vjuwDh3UVX8al2oStSaSo6Rs7akY2rznXSXpkV830E+GsikAYsA6oo9r689yqSBtj+b4AnpcNfFDBxheRiGDPT3nnrLVvHIs9QRtXsyb7Q5Pu948mNlWvuVX7T5iHKTECUa5cFceTGsSuHhQvqpqCPaIWILYbmKwcg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com.cn;
 s=zohoarc; t=1586345939;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=+So5B32ryvAjtvrOHDFwVo1iY55d65dAEsJtVoTGv5Q=; 
 b=Ba2o7RTwLWy5uk8yTbup8yR+cmbVpqlx9hVsJ34b7jX6yucCagtUm43kBIbUp88uvdau2h2HU9NmdWz128QG4vUhUmcEGKjQrcGw2tXziyNYibcd/t8RmXSx6bvVteoXFHRDRkF09wmiFd+mWmmQMGka6aWGnzAkT6KOCVLeDdg=
ARC-Authentication-Results: i=1; mx.zoho.com.cn;
 dkim=pass  header.i=flygoat.com;
 spf=pass  smtp.mailfrom=jiaxun.yang@flygoat.com;
 dmarc=pass header.from=<jiaxun.yang@flygoat.com>
 header.from=<jiaxun.yang@flygoat.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1586345939; 
 s=mail; d=flygoat.com; i=jiaxun.yang@flygoat.com;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=+So5B32ryvAjtvrOHDFwVo1iY55d65dAEsJtVoTGv5Q=;
 b=K0DaOXAuXjFvMhmHcm7BcxQVDkPi5ZjFwjhz4Fxtwor2KjS6ZeeoyHMizo7lUQh9
 ++8jadptvuPjbDE/obpLSuimF9R/KtsvKCrduI62b/YAOMM0sJYzLIPjzF9Qw8AHJ8s
 FTtJnETJcvqIBl01LNef6XLWN6EpzvhHGxjvIj8g=
Received: from localhost.localdomain (39.155.141.144 [39.155.141.144]) by
 mx.zoho.com.cn with SMTPS id 1586345938193401.8350435087435;
 Wed, 8 Apr 2020 19:38:58 +0800 (CST)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Message-ID: <20200408113505.2528103-4-jiaxun.yang@flygoat.com>
Subject: [PATCH 03/12] arch_topology: Make it avilable for MIPS
Date: Wed,  8 Apr 2020 19:34:13 +0800
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
X-Headers-End: 1jM9Jd-007T7H-RX
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

Simply drop unnecessary archtecture limitions and add dummy
function for platforms without OF/COMMON_CLK support.
Also exclude functions for arm that existed in platform code.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
---
 drivers/base/arch_topology.c | 121 +++++++++++++++++++----------------
 1 file changed, 66 insertions(+), 55 deletions(-)

diff --git a/drivers/base/arch_topology.c b/drivers/base/arch_topology.c
index 4d0a0038b476..9c2405d08dae 100644
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
@@ -275,7 +224,64 @@ static void parsing_done_workfn(struct work_struct *work)
 core_initcall(free_raw_capacity);
 #endif
 
-#if defined(CONFIG_ARM64) || defined(CONFIG_RISCV)
+#if defined(CONFIG_OF) && !defined(CONFIG_ARM)
+#if defined(CONFIG_COMMON_CLK)
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
+#else
+bool __init topology_parse_cpu_capacity(struct device_node *cpu_node, int cpu)
+{
+		return false;
+}
+#endif /* CONFIG_COMMON_CLK */
 /*
  * This function returns the logic cpu number of the node.
  * There are basically three kinds of return values:
@@ -461,7 +467,12 @@ static int __init parse_dt_topology(void)
 	of_node_put(cn);
 	return ret;
 }
-#endif
+#else
+static int __init parse_dt_topology(void)
+{
+	return 0;
+}
+#endif /* CONFIG_OF & !CONFIG_ARM */
 
 /*
  * cpu topology table
@@ -562,7 +573,7 @@ __weak int __init parse_acpi_topology(void)
 	return 0;
 }
 
-#if defined(CONFIG_ARM64) || defined(CONFIG_RISCV)
+#if !defined(CONFIG_ARM)
 void __init init_cpu_topology(void)
 {
 	reset_cpu_topology();
@@ -576,4 +587,4 @@ void __init init_cpu_topology(void)
 	else if (of_have_populated_dt() && parse_dt_topology())
 		reset_cpu_topology();
 }
-#endif
+#endif /* !CONFIG_ARM */
-- 
2.26.0.rc2




_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
