Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2685F1A22FE
	for <lists+oprofile-list@lfdr.de>; Wed,  8 Apr 2020 15:29:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jMAmA-0007pj-DX; Wed, 08 Apr 2020 13:29:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiaxun.yang@flygoat.com>) id 1jM9IP-0007EB-4W
 for oprofile-list@lists.sourceforge.net; Wed, 08 Apr 2020 11:55:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x1C0J0dW+TFy1A/rQgku1MmxKq3NJPJkkGtqpNKObTQ=; b=FtkBSjiyaj+DI2ayALrTEySAVM
 Pe5JcxS8bCl4FxkYziEBGLdlmGzX/EbmXUPT0NsWTax3sim1LLkV7ujffjdi2IOxuUWtOxmMwOgm/
 I27r3sFiM+E8PsARa1c/zcqagX4SRZPSnd1oIr53iK15suiziwWPgnf+B4Ba1U+t4Pl4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Date:Subject:
 Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x1C0J0dW+TFy1A/rQgku1MmxKq3NJPJkkGtqpNKObTQ=; b=l3vi25CHy9XNP8R/T+g0KzcJa1
 orOT3Z5oClt7qrBgeS+ojX94Lll5H/HeFYfuis7jsjIsT3+bAGLj+rGHxibCtWMcSWwWmjTMG8veE
 +b2j1CMgb46qBQM55vI4CDPnFfEZ/cpeM6Va4k1XE58tFrkMo+1NQuR/ZUiYCG/ocJHE=;
Received: from sender3-op-o12.zoho.com.cn ([124.251.121.243])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jM9IK-0082MK-0v
 for oprofile-list@lists.sourceforge.net; Wed, 08 Apr 2020 11:55:05 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1586345803; cv=none; d=zoho.com.cn; s=zohoarc; 
 b=ktM0p/VLgeyxhuHarSGAHIWGuBytEId+BMh4P/kfdRl1DDvMpQG9ufh6qn2Ec764Y0KU1NUtcSrVSzy6yFmyC0Dzpfswe9POwQILYk46/f8DUskxKQOBoDaFSr/CVhSSN4VJV5/TlXnVkn78CxY93aHnqy6X9DbYh1m7LHIckVI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com.cn;
 s=zohoarc; t=1586345803;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To;
 bh=x1C0J0dW+TFy1A/rQgku1MmxKq3NJPJkkGtqpNKObTQ=; 
 b=qktwhZsYG7BIHRgBgCH3Ou0bkfmki5IUBj8AXsncoZfT4mp7pyDLpuVo5uPfM78BxZewhsrFHUEIwbla/4yFslxF0GzZjKMl1IVul4BeUB3m2C4xFzC9ZJKEUOpnD+MyUiZ3G0j26jSQ/pGEKck59ZkKYFhH4euxxUEZFOWAS80=
ARC-Authentication-Results: i=1; mx.zoho.com.cn;
 dkim=pass  header.i=flygoat.com;
 spf=pass  smtp.mailfrom=jiaxun.yang@flygoat.com;
 dmarc=pass header.from=<jiaxun.yang@flygoat.com>
 header.from=<jiaxun.yang@flygoat.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1586345803; 
 s=mail; d=flygoat.com; i=jiaxun.yang@flygoat.com;
 h=From:To:Cc:Message-ID:Subject:Date:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=x1C0J0dW+TFy1A/rQgku1MmxKq3NJPJkkGtqpNKObTQ=;
 b=agrWO9EgVsZuV6M/NtYZPq/9kvBSLCtvE/CY3de3FNVq7T76ifH8N+uAvd7RbwRi
 jCnrDk/P5JRLRMsYLEw8z4AXTjv57oErOXthP+KZy7JlR6yrpaNjG4z1vqw3FeLe5DM
 EHeT/F/YwvYWUnaFxVnPdLYHh/dikNdqPW8hX6X4=
Received: from localhost.localdomain (39.155.141.144 [39.155.141.144]) by
 mx.zoho.com.cn with SMTPS id 1586345800507759.7747042437669;
 Wed, 8 Apr 2020 19:36:40 +0800 (CST)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Message-ID: <20200408113505.2528103-1-jiaxun.yang@flygoat.com>
Subject: [PATCH 00/12] MIPS: Topology & DeviceTree CPU rework
Date: Wed,  8 Apr 2020 19:34:10 +0800
X-Mailer: git-send-email 2.26.0.rc2
MIME-Version: 1.0
X-ZohoCNMailClient: External
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [124.251.121.243 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jM9IK-0082MK-0v
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

This set mainly added DeviceTree based CPU probe support and reworked
topology handling for MIPS. In order to prepare for pure DeviceTree
boot for Loongson64. It can also convinient Yanjie's Inegnic jz4780/X2000
SMP/SMT support.

I've done build test for bmips, nlm, ip27 and boot test for malta with
34Kf, I6400 in QEMU, Loongson64 on a Loongson-3B1500 real machine.

Thanks.

Jiaxun Yang (12):
  MIPS: setup: Drop prefill_possible_map
  MIPS: prom: Add helper to parse CPU node in dt
  arch_topology: Make it avilable for MIPS
  arch_topology: Reset all cpus in reset_cpu_topology
  MIPS: Switch to arch_topology
  MIPS: Kernel: Switch to new topology interface
  MIPS: CPS & MT: Switch to new topology interface
  irqchip: mips-cpu: Switch to new topology interface
  MIPS: bmips: Switch to new topology interface
  MIPS: nlm: Switch to new topology interface
  MIPS: Loongson64: Switch to new topology interface
  MIPS: ip27: Fix includes

 arch/mips/Kconfig                             |   1 +
 arch/mips/include/asm/cpu-info.h              |  49 -------
 arch/mips/include/asm/mach-ip27/mmzone.h      |   2 +
 arch/mips/include/asm/mach-ip27/topology.h    |   2 +
 .../include/asm/mach-loongson64/topology.h    |   2 +
 arch/mips/include/asm/mips-cm.h               |   9 +-
 arch/mips/include/asm/mips-cps.h              |   2 +
 arch/mips/include/asm/prom.h                  |   2 +
 arch/mips/include/asm/smp-ops.h               |   2 -
 arch/mips/include/asm/smp.h                   |   2 -
 arch/mips/include/asm/sn/addrs.h              |   1 +
 arch/mips/include/asm/topology.h              |  48 ++++++-
 arch/mips/kernel/cacheinfo.c                  |   5 +-
 arch/mips/kernel/cpu-probe.c                  |  43 ------
 arch/mips/kernel/mips-cm.c                    |   4 +-
 arch/mips/kernel/mips-cpc.c                   |   4 +-
 arch/mips/kernel/perf_event_mipsxx.c          |   4 +-
 arch/mips/kernel/pm-cps.c                     |  12 +-
 arch/mips/kernel/proc.c                       |   8 +-
 arch/mips/kernel/prom.c                       |  96 ++++++++++++++
 arch/mips/kernel/setup.c                      |  22 +---
 arch/mips/kernel/smp-bmips.c                  |   3 +-
 arch/mips/kernel/smp-cmp.c                    |   5 +-
 arch/mips/kernel/smp-cps.c                    |  41 +++---
 arch/mips/kernel/smp-mt.c                     |   3 +-
 arch/mips/kernel/smp.c                        |  55 +-------
 arch/mips/kernel/topology.c                   |  42 ++++++
 arch/mips/loongson64/smp.c                    |  20 +--
 arch/mips/mm/c-r4k.c                          |   4 +-
 arch/mips/mm/context.c                        |   4 +-
 arch/mips/netlogic/common/smp.c               |   4 +-
 arch/mips/oprofile/op_model_mipsxx.c          |   4 +-
 drivers/base/arch_topology.c                  | 123 ++++++++++--------
 drivers/irqchip/irq-mips-cpu.c                |   2 +-
 34 files changed, 337 insertions(+), 293 deletions(-)

-- 
2.26.0.rc2




_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
