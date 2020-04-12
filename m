Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C26C51A67D9
	for <lists+oprofile-list@lfdr.de>; Mon, 13 Apr 2020 16:20:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jNzxG-0001hZ-HT; Mon, 13 Apr 2020 14:20:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiaxun.yang@flygoat.com>) id 1jNTVv-0004h7-Sj
 for oprofile-list@lists.sourceforge.net; Sun, 12 Apr 2020 03:42:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PWsR5KGG8Yge6r3KT2XfbyDrolB60DWWemjYST1b6pI=; b=YdatUipWiIb4YfzwQh6enC+tHo
 uOINCJo4s12OEWoz3mFTLXzncskO2Cxk/w7fnZyp5eoG1SIlX0X1fmf7TjoUjNtYVYuI2DGGoAxyU
 +gVgp3a51UGQwD7F20lhX2mKSJ53IqtaboFEjUJvZNv/AJ576g8qPkyRfVDg71zvH5R8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PWsR5KGG8Yge6r3KT2XfbyDrolB60DWWemjYST1b6pI=; b=DEygHFyuMrwxx4gk+KhwRzuHfJ
 k682A3EEswZ3ENHb4GGpWJQHSU7rEXONV2atXRXw9HEF8ILbtarFiNZcQOMGapt8UZBV1eJSKVZUU
 YJ0/w9bVblv5o4WTHtGwfE6Joz39rmPM3tvwPoqy+sFw1gDhGSqL7xiXVz2Y3aeX6r9Y=;
Received: from vultr.net.flygoat.com ([149.28.68.211])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jNTVt-00CPrT-Fk
 for oprofile-list@lists.sourceforge.net; Sun, 12 Apr 2020 03:42:31 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2001:da8:20f:4430:250:56ff:fe9a:7470])
 by vultr.net.flygoat.com (Postfix) with ESMTPSA id 7692C20D01;
 Sun, 12 Apr 2020 03:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=flygoat.com; s=vultr;
 t=1586661775; bh=Z4RAigTBiOP7VvrfTLiBE6exmQIE7e1mafncBvapIM8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=u/40V0UJINdoLfz3CVg+vOTwg/UlBNYosFwSbKUPg+0bUj1Nr7BmT5c+H+R3qFWO7
 woPslrmOU1yrBoNztw3F6/JPqb5XcziGGOUMrjCdSOmV3UR5ubuZVeqxG5mZ0Ez7tD
 7P+ccYAJtXVbB5pisjQT/Z7KR8k6JTqfYWnNo6T7GwHdCSsw3wvBWQavMGjeMGl0Dk
 dQYSWHqYFCWRqVmUu8SlffBHQ1IrlzuaiA+Us23y/ENJq8VQKrsSNbpd4eKu6Ts/Uq
 HEhtagU/Sn58L2tKtG5b+8UfuP0aZBqQ5BWZwEBePewzivfyt4wZSKwtgAeELa8yML
 Jib2DP7XRlyZQ==
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Subject: [PATCH v2 00/11] MIPS: Topology & DeviceTree CPU rework v2
Date: Sun, 12 Apr 2020 11:20:30 +0800
Message-Id: <20200412032123.3896114-1-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: 20200408113505.2528103-1-jiaxun.yang@flygoat.com
References: 
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jNTVt-00CPrT-Fk
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

This set mainly added DeviceTree based CPU probe support and reworked
topology handling for MIPS. In order to prepare for pure DeviceTree
boot for Loongson64. It can also convinient Yanjie's Inegnic jz4780/X2000
SMP/SMT support.

I've done build test for bmips, nlm, ip27 and boot test for malta with
34Kf, I6400 in QEMU, Loongson64 on a Loongson-3B1500 real machine.

Thanks.

v2:
  - Fixes

Jiaxun Yang (11):
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

 arch/mips/Kconfig                             |   1 +
 arch/mips/include/asm/cpu-info.h              |  49 --------
 arch/mips/include/asm/mach-ip27/mmzone.h      |   2 +
 arch/mips/include/asm/mach-ip27/topology.h    |   2 +
 .../include/asm/mach-loongson64/topology.h    |   2 +
 arch/mips/include/asm/mips-cm.h               |   9 +-
 arch/mips/include/asm/mips-cps.h              |   2 +
 arch/mips/include/asm/prom.h                  |   6 +
 arch/mips/include/asm/smp-ops.h               |   2 -
 arch/mips/include/asm/smp.h                   |   2 -
 arch/mips/include/asm/sn/addrs.h              |   1 +
 arch/mips/include/asm/topology.h              |  68 +++++++++-
 arch/mips/kernel/cacheinfo.c                  |  19 +--
 arch/mips/kernel/cpu-probe.c                  |  43 -------
 arch/mips/kernel/mips-cm.c                    |   4 +-
 arch/mips/kernel/mips-cpc.c                   |   4 +-
 arch/mips/kernel/perf_event_mipsxx.c          |   4 +-
 arch/mips/kernel/pm-cps.c                     |  12 +-
 arch/mips/kernel/proc.c                       |   8 +-
 arch/mips/kernel/prom.c                       |  97 ++++++++++++++
 arch/mips/kernel/setup.c                      |  22 +---
 arch/mips/kernel/smp-bmips.c                  |   3 +-
 arch/mips/kernel/smp-cmp.c                    |   5 +-
 arch/mips/kernel/smp-cps.c                    |  41 +++---
 arch/mips/kernel/smp-mt.c                     |   3 +-
 arch/mips/kernel/smp.c                        |  55 +-------
 arch/mips/kernel/topology.c                   |  42 +++++++
 arch/mips/loongson64/smp.c                    |  20 +--
 arch/mips/mm/c-r4k.c                          |   4 +-
 arch/mips/mm/context.c                        |   4 +-
 arch/mips/netlogic/common/smp.c               |   4 +-
 arch/mips/oprofile/op_model_mipsxx.c          |   4 +-
 drivers/base/arch_topology.c                  | 118 +++++++++---------
 drivers/cpuidle/cpuidle-cps.c                 |   3 +-
 drivers/irqchip/irq-mips-cpu.c                |   2 +-
 35 files changed, 361 insertions(+), 306 deletions(-)

-- 
2.26.0.rc2



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
