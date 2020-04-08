Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A83FB1A22FC
	for <lists+oprofile-list@lfdr.de>; Wed,  8 Apr 2020 15:29:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jMAmB-0007sJ-EZ; Wed, 08 Apr 2020 13:29:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiaxun.yang@flygoat.com>) id 1jMAPW-0006cn-Nu
 for oprofile-list@lists.sourceforge.net; Wed, 08 Apr 2020 13:06:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CuiH5YcI6tCfhJK48jBjzSJsIlmqrJPGhHGDuUriybY=; b=ZHTeZNKI7N/I+ontq12l1/Tofb
 Tz7dMnjuLhY16jUn8DlYy+fmXmryUACJAcN0tUNsgHsltfnl6oY02ga5nFNuBP5IXFIsb+aSKxv6x
 O9oQK455eX/3u15rxb7khb7LT/1fuHLFtXuJ0js6U8lbA6zlfH9tYa5sSLMNqYqZURNA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CuiH5YcI6tCfhJK48jBjzSJsIlmqrJPGhHGDuUriybY=; b=bs0y2hf1/Tlbbuyn81Y2PWdnd5
 9GSwI09zqwo9O2E3GfXr6eDhQgVJBQalVZwjZkVsauUiBT+U2CQCHdnY2KOhOta84+SMu8a0wEbNt
 13v9yiGbjToNnOQVkqfpnKOpx/jejzrpOXEgzNnttY4rJEkLGow1yi+HAAjuhIaYQSDw=;
Received: from sender3-op-o12.zoho.com.cn ([124.251.121.243])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jMAPU-00Bkzr-5h
 for oprofile-list@lists.sourceforge.net; Wed, 08 Apr 2020 13:06:30 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1586351026; cv=none; d=zoho.com.cn; s=zohoarc; 
 b=Xt3QlKHF9gAfs7PFxUfbfSkP2aVAC/tz3Gtn21Vxl34OaxdveVAogbirOWQxjbWyvWuNKvM9EA+oIzKP0hAKyK9keQCVyvtL8Deq/+x3WBcNPj755XaYkAd1Y7bYAyB1LsxBBkNzkhLBGXl25PA+/sKjHm/drvMlIP9cn2IlA7M=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com.cn;
 s=zohoarc; t=1586351026;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=CuiH5YcI6tCfhJK48jBjzSJsIlmqrJPGhHGDuUriybY=; 
 b=BvmgYeHKzI358gNXXMatE4R1i71CDcQkWEDt5jfAiSXCugqPHN3bU+6b7QgDbsga98pZlnvyq7UpqADjp3CZYAlmSX+7Sw9OjEzRAJ7E0601qcJsBcbCnBtVpbGg8H6CbksjNjAxbkX1ZeBe2puyLhTEWRNGIwh+fVOEMJXI2A8=
ARC-Authentication-Results: i=1; mx.zoho.com.cn;
 dkim=pass  header.i=flygoat.com;
 spf=pass  smtp.mailfrom=jiaxun.yang@flygoat.com;
 dmarc=pass header.from=<jiaxun.yang@flygoat.com>
 header.from=<jiaxun.yang@flygoat.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1586351026; 
 s=mail; d=flygoat.com; i=jiaxun.yang@flygoat.com;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=CuiH5YcI6tCfhJK48jBjzSJsIlmqrJPGhHGDuUriybY=;
 b=JkkmTwA1xtnZOnvPqGgtJ0KvVe6ewM+F5dVZNsZSTsX9Ms1EI4MxqtL7JHf30NxI
 8hmOZefcI7oPuh4T+8PLqukQLZgxX3VUx8ArFRvVJNEJqKHKhUl8+PktXp4ir7eJHSs
 44ZBGWMRoTHvXf0EWiZy1VoLp8Sr9/TAvSqUn4kQ=
Received: from localhost.localdomain (39.155.141.144 [39.155.141.144]) by
 mx.zoho.com.cn with SMTPS id 15863510255787.563914307152345;
 Wed, 8 Apr 2020 21:03:45 +0800 (CST)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Message-ID: <20200408130024.2529220-7-jiaxun.yang@flygoat.com>
Subject: [PATCH 12/12] MIPS: ip27: Fix includes
Date: Wed,  8 Apr 2020 20:59:54 +0800
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
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jMAPU-00Bkzr-5h
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
 Peter Zijlstra <peterz@infradead.org>, Jiaxun Yang <jiaxun.yang@flygoat.com>,
 Richard Fontana <rfontana@redhat.com>, Huacai Chen <chenhc@lemote.com>,
 Jiri Olsa <jolsa@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Paul Burton <paulburton@kernel.org>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Marc Zyngier <maz@kernel.org>, Mike Rapoport <rppt@linux.ibm.com>,
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

Somehow changes in topology messed up headers.
So just add necessary headers to make it compile again.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
---
 arch/mips/include/asm/mach-ip27/mmzone.h   | 2 ++
 arch/mips/include/asm/mach-ip27/topology.h | 2 ++
 arch/mips/include/asm/sn/addrs.h           | 1 +
 3 files changed, 5 insertions(+)

diff --git a/arch/mips/include/asm/mach-ip27/mmzone.h b/arch/mips/include/asm/mach-ip27/mmzone.h
index 08c36e50a860..e0a53b97b4a8 100644
--- a/arch/mips/include/asm/mach-ip27/mmzone.h
+++ b/arch/mips/include/asm/mach-ip27/mmzone.h
@@ -2,6 +2,8 @@
 #ifndef _ASM_MACH_MMZONE_H
 #define _ASM_MACH_MMZONE_H
 
+#include <linux/mmzone.h>
+
 #include <asm/sn/addrs.h>
 #include <asm/sn/arch.h>
 #include <asm/sn/agent.h>
diff --git a/arch/mips/include/asm/mach-ip27/topology.h b/arch/mips/include/asm/mach-ip27/topology.h
index d66cc53feab8..601e350908f7 100644
--- a/arch/mips/include/asm/mach-ip27/topology.h
+++ b/arch/mips/include/asm/mach-ip27/topology.h
@@ -2,6 +2,8 @@
 #ifndef _ASM_MACH_TOPOLOGY_H
 #define _ASM_MACH_TOPOLOGY_H	1
 
+#include <linux/numa.h>
+
 #include <asm/sn/types.h>
 #include <asm/mmzone.h>
 
diff --git a/arch/mips/include/asm/sn/addrs.h b/arch/mips/include/asm/sn/addrs.h
index 837d23e24976..1d3945ef2ca4 100644
--- a/arch/mips/include/asm/sn/addrs.h
+++ b/arch/mips/include/asm/sn/addrs.h
@@ -13,6 +13,7 @@
 #ifndef __ASSEMBLY__
 #include <linux/smp.h>
 #include <linux/types.h>
+#include <asm/io.h>
 #endif /* !__ASSEMBLY__ */
 
 #include <asm/addrspace.h>
-- 
2.26.0.rc2




_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
