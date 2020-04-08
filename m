Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA591A22F9
	for <lists+oprofile-list@lfdr.de>; Wed,  8 Apr 2020 15:29:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jMAmA-0007ps-Ff; Wed, 08 Apr 2020 13:29:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiaxun.yang@flygoat.com>) id 1jM9Ii-0004tf-Bl
 for oprofile-list@lists.sourceforge.net; Wed, 08 Apr 2020 11:55:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lgd7A/vb6X/W8mGRRVs75qEfCfZlypVe17eEG7WjjtQ=; b=G/3FVqM+2F9nD7k4q0FtEnSxPc
 h61Ze74XaThVPeOZWYQLuCysxDXHgP4E57zcFXsqTTsrJ1JBKv90avRY6TSgLS/KJVJEGj06wQhqY
 agb9dnNovof4vqT2fDsdULe1TqazCAvSiyN9xEFWMxG/euqqtIxmMe8Stede+Sq8rCuo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lgd7A/vb6X/W8mGRRVs75qEfCfZlypVe17eEG7WjjtQ=; b=fCgMBY4UbIp3MEHphjc2lQLyBv
 ontYvNqGmv/D/tznWuD883Fgat2Bi6Jmpe4zoHXcTpnatKjr89LGCoywA2AQvKgjwyYLXUVTtBwXE
 H9lJlvKcjCLdZn5PmXwn3KJSRZhm4Gu6j7MFjsVxmKHm+bVUmL0Uuih5BAV0HXJ8Nf2o=;
Received: from sender3-op-o12.zoho.com.cn ([124.251.121.243])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jM9If-0082Mp-RP
 for oprofile-list@lists.sourceforge.net; Wed, 08 Apr 2020 11:55:24 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1586345893; cv=none; d=zoho.com.cn; s=zohoarc; 
 b=Efq+gcQEx2H8GOEA7ZDZc25+XeLXL3Woz/M2wraA/a1emfVJmXFdm8QIMVJ02bTub1vN3kZY7OhFJSobxwg9MU1C1OWqT3YoKZmNzBy2IXgUvTILgwySxE+9g/ROFGYhKdqaGixO3bisWX9rVDV0OCM65gOpuhysAY708o4rDtg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com.cn;
 s=zohoarc; t=1586345893;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=lgd7A/vb6X/W8mGRRVs75qEfCfZlypVe17eEG7WjjtQ=; 
 b=phiiC2xxlUbQsIdex4LxON7hhmNBXvWFYLq7Ux6Vdq2jYdpoInoYteZljbanq9fh5WdtDGwgrTkQTaBxSfg8Tz9yx3vcMGFyqVW/Os2Tw3p5ZgiGSub62+2sioRyJSL2vVFaWu2fRE5sRZ8L1X3TkRjivBOfirxozqX4HQjeg3U=
ARC-Authentication-Results: i=1; mx.zoho.com.cn;
 dkim=pass  header.i=flygoat.com;
 spf=pass  smtp.mailfrom=jiaxun.yang@flygoat.com;
 dmarc=pass header.from=<jiaxun.yang@flygoat.com>
 header.from=<jiaxun.yang@flygoat.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1586345893; 
 s=mail; d=flygoat.com; i=jiaxun.yang@flygoat.com;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=lgd7A/vb6X/W8mGRRVs75qEfCfZlypVe17eEG7WjjtQ=;
 b=IDHJUT/wkvueUgNmyasLLeWZXB6hPcb2zjUOvUgKOZjCX+2AZWljd8Zu4s+F69Xn
 QmemEuQkGQXe0M2ukIn+YdMWUFNOyEQvBoROE//MGwuFHuzOVwe9xzhwbkblmFzdkmU
 dNCNQ2K2mGk65bnRAWfCumAuVD2J8uz0zfmW5olg=
Received: from localhost.localdomain (39.155.141.144 [39.155.141.144]) by
 mx.zoho.com.cn with SMTPS id 1586345891015636.0638866174513;
 Wed, 8 Apr 2020 19:38:11 +0800 (CST)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Message-ID: <20200408113505.2528103-3-jiaxun.yang@flygoat.com>
Subject: [PATCH 02/12] MIPS: prom: Add helper to parse CPU node in dt
Date: Wed,  8 Apr 2020 19:34:12 +0800
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
X-Headers-End: 1jM9If-0082Mp-RP
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

Mostly identical with arm one. The only difference is that we allow
to mark a CPU Node as status = "disabled" in dt, which means the core
is physicaly present, but not possible for the kernel. It will occupy
a bit in cpumask as well.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
---
 arch/mips/include/asm/prom.h |  2 +
 arch/mips/kernel/prom.c      | 96 ++++++++++++++++++++++++++++++++++++
 2 files changed, 98 insertions(+)

diff --git a/arch/mips/include/asm/prom.h b/arch/mips/include/asm/prom.h
index c42e07671934..1ec46e09dc8b 100644
--- a/arch/mips/include/asm/prom.h
+++ b/arch/mips/include/asm/prom.h
@@ -19,9 +19,11 @@ struct boot_param_header;
 
 extern void __dt_setup_arch(void *bph);
 extern int __dt_register_buses(const char *bus0, const char *bus1);
+extern void mips_dt_init_cpu_maps(void);
 
 #else /* CONFIG_OF */
 static inline void device_tree_init(void) { }
+static inline void mips_dt_init_cpu_maps(void) { }
 #endif /* CONFIG_OF */
 
 extern char *mips_get_machine_name(void);
diff --git a/arch/mips/kernel/prom.c b/arch/mips/kernel/prom.c
index 9e50dc8df2f6..ebeb22ffa76a 100644
--- a/arch/mips/kernel/prom.c
+++ b/arch/mips/kernel/prom.c
@@ -89,4 +89,100 @@ int __init __dt_register_buses(const char *bus0, const char *bus1)
 	return 0;
 }
 
+void __init mips_dt_init_cpu_maps(void)
+{
+	struct device_node *cpu, *cpus;
+	u32 i, j, cpuidx = 1;
+	u32 cpunum;
+	u32 tmp_map[NR_CPUS] = { [0 ... NR_CPUS-1] = U32_MAX };
+	bool cpu_possible[NR_CPUS] = { [0 ... NR_CPUS-1] = false };
+	bool bootcpu_valid = false;
+
+	cpus = of_find_node_by_path("/cpus");
+	if (!cpus)
+		return;
+
+	if (cpu_has_mips_r2_r6)
+		cpunum = get_ebase_cpunum();
+	else
+		cpunum = 0; /* For legacy system we assume boot from CPU 0 */
+
+	for_each_of_cpu_node(cpu) {
+		u32 hwid;
+
+		pr_debug(" * %pOF...\n", cpu);
+		/*
+		 * A device tree containing CPU nodes with missing "reg"
+		 * properties is considered invalid to build the
+		 * cpu_logical_map.
+		 */
+
+		if (of_property_read_u32(cpu, "reg", &hwid)) {
+			pr_debug(" * %pOF missing reg property\n", cpu);
+			of_node_put(cpu);
+			return;
+		}
+
+		/*
+		 * Duplicate hwid are a recipe for disaster.
+		 * Scan all initialized entries and check for
+		 * duplicates. If any is found just bail out.
+		 */
+		for (j = 0; j < cpuidx; j++)
+			if (WARN(tmp_map[j] == hwid,
+				 "Duplicate /cpu reg properties in the DT\n")) {
+				of_node_put(cpu);
+				return;
+			}
+
+		/*
+		 * Build a stashed array of hwid values. Numbering scheme
+		 * requires that if detected the boot CPU must be assigned
+		 * logical id 0. Other CPUs get sequential indexes starting
+		 * from 1. If a CPU node with a reg property matching the
+		 * boot CPU hwid is detected, this is recorded so that the
+		 * logical map built from DT is validated.
+		 */
+		if (hwid == cpunum) {
+			i = 0;
+			if (of_device_is_available(cpu))
+				bootcpu_valid = true;
+		} else {
+			i = cpuidx++;
+		}
+
+		if (WARN(cpuidx > nr_cpu_ids, "DT /cpu %u nodes greater than "
+						   "max cores %u, capping them\n",
+						   cpuidx, nr_cpu_ids)) {
+			cpuidx = nr_cpu_ids;
+			of_node_put(cpu);
+			break;
+		}
+
+		tmp_map[i] = hwid;
+
+		if (of_device_is_available(cpu))
+			cpu_possible[i] = true;
+	}
+
+	if (!bootcpu_valid) {
+		pr_warn("DT missing boot CPU, fall back to default cpu_logical_map\n");
+		return;
+	}
+
+	init_cpu_possible(cpu_none_mask);
+	init_cpu_present(cpu_none_mask);
+
+	for (i = 0; i < cpuidx; i++) {
+		set_cpu_possible(i, cpu_possible[i]);
+		cpu_logical_map(i) = tmp_map[i];
+		pr_debug("cpu logical map 0x%x\n", cpu_logical_map(i));
+	}
+}
+
+bool arch_match_cpu_phys_id(int cpu, u64 phys_id)
+{
+	return phys_id == cpu_logical_map(cpu);
+}
+
 #endif
-- 
2.26.0.rc2




_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
