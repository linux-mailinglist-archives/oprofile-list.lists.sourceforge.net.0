Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 32EBE1A2301
	for <lists+oprofile-list@lfdr.de>; Wed,  8 Apr 2020 15:29:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jMAmA-0007qv-U2; Wed, 08 Apr 2020 13:29:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiaxun.yang@flygoat.com>) id 1jMAMT-0002wi-OE
 for oprofile-list@lists.sourceforge.net; Wed, 08 Apr 2020 13:03:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kpT3Sx2KtSOShM1hd/8JsXKK/dHnee+iUIp6sZjfLes=; b=lE5HarnoVgSQdi8BpDMGvFI/Nw
 QO6AIONe2mXmYPW9B8zUFnkj1W1fIV6bTwQ3ARpYe7dEACHdh/+iPJo99SiDzmN5hddqjnvgRh14z
 Smww1WNpKk7KA1Aw6gOWKVFJxv+dvajSN5bPGpwWxBOqQOxFA4Hxkl7ZEG/4CNEPgfoI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kpT3Sx2KtSOShM1hd/8JsXKK/dHnee+iUIp6sZjfLes=; b=Z/2nn7uxwJSKTuOr3Xj3N4eFqy
 +9T3UIP1NpN4gMlaB8RZXNaSPND7stLr7NKL6WwboQ9riTU9Vn52M3MjaAcl87spG8sptKEE85/nT
 2Uc+RedICq7XQHyQOn32lXN1nEXDfUWm7w1tTtZ5Z00+vN4vw8GXB4Hye5t4PU60GgOE=;
Received: from sender3-op-o12.zoho.com.cn ([124.251.121.243])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jMAMS-007WFs-33
 for oprofile-list@lists.sourceforge.net; Wed, 08 Apr 2020 13:03:21 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1586350900; cv=none; d=zoho.com.cn; s=zohoarc; 
 b=TaXGFSpYXyuuJSm3U8C/zKL8TGBOgJF5LxoQwHZT2PzjIN94ENJUr+osNf3w570MRHtdNoOgW48bwiJruaiW8Ob8zS3qleqZLvmJ6dbaN2ChI04TAWgrglLvYIMusNS0Zqr6gSQRd21PaDM0jf4A4GoMnK2dYyAgorb2ClK9a8U=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com.cn;
 s=zohoarc; t=1586350900;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=kpT3Sx2KtSOShM1hd/8JsXKK/dHnee+iUIp6sZjfLes=; 
 b=evEAXbOiTc4PrZ9WASM24WJtBXE/rtdNezFIWbkoE0PwSgKZTXaqawc/ucnyNLCXXG9vJHO9mllvlm2OIY/rIx9W7aY0qLR7DvTa/0tdOQKe/+KDDVsySiD9ywoMFLbn4U+krQcP7zg2YXjZ9JI5qtrBrMgc6HWCB17coPK60w8=
ARC-Authentication-Results: i=1; mx.zoho.com.cn;
 dkim=pass  header.i=flygoat.com;
 spf=pass  smtp.mailfrom=jiaxun.yang@flygoat.com;
 dmarc=pass header.from=<jiaxun.yang@flygoat.com>
 header.from=<jiaxun.yang@flygoat.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1586350900; 
 s=mail; d=flygoat.com; i=jiaxun.yang@flygoat.com;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=kpT3Sx2KtSOShM1hd/8JsXKK/dHnee+iUIp6sZjfLes=;
 b=M4E3W43cO8oW+eV1OO4dyXbsE0pM/+a1tK+IvEAjD5VX+rGDNdDtaGmXTSe4jnF4
 ROJNHGyBFcGtRcqUZ1KH/Fbm7DnYbecoMhIGXNPorF9melzhFbqjojo2qrQ2St6XaU5
 0d9Pq4vDoAxygfLbKJ5DlYG0CkeeNR2kazsdS1Pw=
Received: from localhost.localdomain (39.155.141.144 [39.155.141.144]) by
 mx.zoho.com.cn with SMTPS id 1586350899485242.73492025223356;
 Wed, 8 Apr 2020 21:01:39 +0800 (CST)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Message-ID: <20200408130024.2529220-3-jiaxun.yang@flygoat.com>
Subject: [PATCH 08/12] irqchip: mips-cpu: Switch to new topology interface
Date: Wed,  8 Apr 2020 20:59:50 +0800
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
X-Headers-End: 1jMAMS-007WFs-33
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

Change the parameter of cpu_vpe_id from cpu_data to cpuid.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
---
 drivers/irqchip/irq-mips-cpu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/irqchip/irq-mips-cpu.c b/drivers/irqchip/irq-mips-cpu.c
index 95d4fd8f7a96..eed3edf8480b 100644
--- a/drivers/irqchip/irq-mips-cpu.c
+++ b/drivers/irqchip/irq-mips-cpu.c
@@ -100,7 +100,7 @@ static void mips_mt_send_ipi(struct irq_data *d, unsigned int cpu)
 	WARN_ON(!cpus_are_siblings(smp_processor_id(), cpu));
 
 	vpflags = dvpe();
-	settc(cpu_vpe_id(&cpu_data[cpu]));
+	settc(cpu_vpe_id(cpu));
 	write_vpe_c0_cause(read_vpe_c0_cause() | (C_SW0 << hwirq));
 	evpe(vpflags);
 
-- 
2.26.0.rc2




_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
