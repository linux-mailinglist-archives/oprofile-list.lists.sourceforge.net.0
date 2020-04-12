Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C94CD1A67DA
	for <lists+oprofile-list@lfdr.de>; Mon, 13 Apr 2020 16:20:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jNzxG-0001hB-Ct; Mon, 13 Apr 2020 14:20:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiaxun.yang@flygoat.com>) id 1jNTVu-0003kK-4X
 for oprofile-list@lists.sourceforge.net; Sun, 12 Apr 2020 03:42:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Jkm35DmxR82uZeJBM+RtaYHGXhx2xkVowdZiQAT9Uyg=; b=dHrj7onaN+QI/mjK1l2VGslOsP
 MgIlTDFsGOrEOQY8Z+se0HD8lT/Ut6lHXqaD4K8v7n6Nd9ZEcPRfLDSEPp7noiKMUh0QHee9D3sk6
 QuiQZF8UcSUn5WIy56YsWktOxvpnZbjaE+dkPGXUt5+cj8Xaw4BJG/r973746j71R+uA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Jkm35DmxR82uZeJBM+RtaYHGXhx2xkVowdZiQAT9Uyg=; b=lSREfT8hdg4oEeswNCalfG1QCi
 9mcQ2CPDmzZKQ9nYm1ZxslbbYqiJO6t6vUvlH/sNxAqVJeLu/cjfcJfdH4fOH7bSxf9iK9LWmLTvf
 BsBg0RhgEZ7ezTOmGqwoEaLLqZvmGmXLvA0/BbakF1uOTma+x5Xw8eyErJeetdw+49FI=;
Received: from vultr.net.flygoat.com ([149.28.68.211])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jNTVs-00FdSX-SH
 for oprofile-list@lists.sourceforge.net; Sun, 12 Apr 2020 03:42:30 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2001:da8:20f:4430:250:56ff:fe9a:7470])
 by vultr.net.flygoat.com (Postfix) with ESMTPSA id 0DA9720D0B;
 Sun, 12 Apr 2020 03:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=flygoat.com; s=vultr;
 t=1586661874; bh=oPTnJfivkM+8UlbJ6/9gGwXtkpRxLwi4xWE4eb0+CaY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xdkAAkVhE9cLmt4b8+PYZ1ceY8j4cfNtQsYRsYkA3LvMmiJ3R6r25w7aD/QGgISKZ
 I359nv7efhU2PI4KSVasEJ3dlYoYnMIipUwgLqmtXSooV2Gx/2n6J8zZbdhUh2E9eR
 M7Yad4QLQbyjs2ZVh3QUJs6tatPMqCzxN1QRWDpTKj63tM5EkheRe4Xen1pIT/Gt+I
 eKKZ/8eAAfqKopirzq3cc3dzFL3uwX+0IlxNtyAta/z9Y+Y3RvcUaIHQXX+cili6fg
 PCXwe49oAs+nYA+EukxPtqkc1hdEv5BoIhFmRTU3C0mDE9eTKLvx3Q6VyAHr6PVR7o
 ZNXGTUaVyXG2Q==
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Subject: [PATCH v2 02/11] MIPS: prom: Add helper to parse CPU node in dt
Date: Sun, 12 Apr 2020 11:20:32 +0800
Message-Id: <20200412032123.3896114-3-jiaxun.yang@flygoat.com>
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
X-Headers-End: 1jNTVs-00FdSX-SH
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

Mostly identical with arm one. The only difference is that we allow
to mark a CPU Node as status = "disabled" in dt, which means the core
is physicaly present, but not possible for the kernel. It will occupy
a bit in cpumask as well.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>

--
v2: Exclude non-SMP config.
---
 arch/mips/include/asm/prom.h |  6 +++
 arch/mips/kernel/prom.c      | 97 ++++++++++++++++++++++++++++++++++++
 2 files changed, 103 insertions(+)

diff --git a/arch/mips/include/asm/prom.h b/arch/mips/include/asm/prom.h
index c42e07671934..84802c70e426 100644
--- a/arch/mips/include/asm/prom.h
+++ b/arch/mips/include/asm/prom.h
@@ -24,6 +24,12 @@ extern int __dt_register_buses(const char *bus0, const char *bus1);
 static inline void device_tree_init(void) { }
 #endif /* CONFIG_OF */
 
+#if defined(CONFIG_OF) && defined(CONFIG_SMP)
+extern void mips_dt_init_cpu_maps(void);
+#else
+static inline void mips_dt_init_cpu_maps(void) { }
+#endif
+
 extern char *mips_get_machine_name(void);
 extern void mips_set_machine_name(const char *name);
 
diff --git a/arch/mips/kernel/prom.c b/arch/mips/kernel/prom.c
index 9e50dc8df2f6..deb5cc0a0eb5 100644
--- a/arch/mips/kernel/prom.c
+++ b/arch/mips/kernel/prom.c
@@ -89,4 +89,101 @@ int __init __dt_register_buses(const char *bus0, const char *bus1)
 	return 0;
 }
 
+#ifdef CONFIG_SMP
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
+#endif /* CONFIG_SMP */
 #endif
-- 
2.26.0.rc2



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
