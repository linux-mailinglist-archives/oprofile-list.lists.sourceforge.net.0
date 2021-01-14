Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 338FB2F6A19
	for <lists+oprofile-list@lfdr.de>; Thu, 14 Jan 2021 19:54:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l07la-0003YF-Qk; Thu, 14 Jan 2021 18:54:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <viresh.kumar@linaro.org>) id 1l01O0-0001im-6W
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 12:05:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AYFhWYvlMHFaN194DuP9Mk/3w2ENP7CTYz+Se/lFzBQ=; b=Red5WbRjmi112acZfhwLo/4ksX
 4CiPTPZldwLu/uxWR6QxCspp7lvAdXmPVl6xHxNxiCgeXv2p7HBXxMSKXA+uH3tZKksAR/tL9T4gS
 Tf1UAPvGxFqqRgK3bOrkZE5odaF806AHpjAbefXiwzWRgaA1YVAFmiUHP385O92tg9EI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AYFhWYvlMHFaN194DuP9Mk/3w2ENP7CTYz+Se/lFzBQ=; b=SeYbD1pOZeB0oS3Gt2M48vLQfE
 XsC4ChMMAPu4DRAW0QXa1trU0haKjBC+IgaF6xqJLMM3VAjIqWUJdgq9a2Zd4PTC/fGBEUtsToKIK
 rBoAvEFbIe4mx9yCo7uz1VrgkwfV4NCAoFSkttQRgi5A4QP0eGV/m1P/4QVm68ii6KZo=;
Received: from mail-pg1-f170.google.com ([209.85.215.170])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l01Ns-008UFT-9D
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 12:05:55 +0000
Received: by mail-pg1-f170.google.com with SMTP id g15so3632836pgu.9
 for <oprofile-list@lists.sf.net>; Thu, 14 Jan 2021 04:05:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AYFhWYvlMHFaN194DuP9Mk/3w2ENP7CTYz+Se/lFzBQ=;
 b=zZUJNJPhK7vwVZo3zG1L/ZLlhGgRFtQKowTKqhvvF7eFc3s3ezuRailFhUhF2kVpg1
 XqlIlpxX1roPBkCGmEG4JkGCWMCZrmtUSHYhup+Q+9g364u4bEvTsgbKUquse8cVWgTj
 piQAfeXwWyDTfwsMUHcD0aA+o/CQPOkybKOn/6hOE71SZeW2oksCYnahsxgiNJkH/xF5
 ItmDc/bpU9bMl/gJlifRnXyhlTDY0vVXisakj25ILk2G13A8mnqd4wlcMvjIEGN8vsww
 yAa+rogw5E/eiY34s70yJr8QPk8qEkG6c84T6J/2a8cJhLgFl/iEqOqjhaaYu5wNb5Fn
 XnpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AYFhWYvlMHFaN194DuP9Mk/3w2ENP7CTYz+Se/lFzBQ=;
 b=t1eflwc0UQSV8Basn7YIKUMXOrfk0CrRJktO79dvTFXlfe0rcf18VUkrtqFCnEf7yb
 I4H1FYHZggY7oiS46OVtuagGZgSG0uKyfJHgGDKjT+g/IBrq9A1Hum4hrp2xm6yPj4Dy
 DsH9j0CpSq+jegtf0TKCVza/OaNoUlYRUZpRlZvHvkrQnkg4x2TZAanIRiV6gDHTm7fg
 h+hoGk+0gdqGjJznciOxWITecTQWSg7przto71TsMKTN4PYE/6j115C0kRxOFDQx5SIq
 KNW8aCu4l1BneJBsvYZHXSCWX86hBOrf3RE73ioPkujzoj6jcXpJDdq/LFldVr2epRoq
 FgZQ==
X-Gm-Message-State: AOAM530wBMejbSPVc8jlX8bvnfKWxnngmbQC7vp8+K0q1uE+jTorwGrg
 aYxvP1FIK07I6MWoBly3fuxptlzesSaWfg==
X-Google-Smtp-Source: ABdhPJzg1zptJKMu9bTjn6PS8c4QYvzj+iujyctChMFT1NQzHaOeW3F1te+tLmaKVJLiXtZeLXQpnQ==
X-Received: by 2002:aa7:8583:0:b029:1a9:39bc:ed3b with SMTP id
 w3-20020aa785830000b02901a939bced3bmr7001430pfn.48.1610624144666; 
 Thu, 14 Jan 2021 03:35:44 -0800 (PST)
Received: from localhost ([122.172.85.111])
 by smtp.gmail.com with ESMTPSA id m4sm5320866pgv.16.2021.01.14.03.35.43
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 Jan 2021 03:35:44 -0800 (PST)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Robert Richter <rric@kernel.org>, Vineet Gupta <vgupta@synopsys.com>
Subject: [PATCH 03/18] arch: arc: Remove CONFIG_OPROFILE support
Date: Thu, 14 Jan 2021 17:05:16 +0530
Message-Id: <906d9d40746bb1b60823a288d00820cb50d29138.1610622251.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.25.0.rc1.19.g042ed3e048af
In-Reply-To: <cover.1610622251.git.viresh.kumar@linaro.org>
References: <cover.1610622251.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: movementarian.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: movementarian.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: movementarian.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.170 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.170 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1l01Ns-008UFT-9D
X-Mailman-Approved-At: Thu, 14 Jan 2021 18:54:38 +0000
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
Cc: Arnd Bergmann <arnd@kernel.org>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Christoph Hellwig <hch@infradead.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 linux-kernel@vger.kernel.org, anmar.oueja@linaro.org,
 oprofile-list@lists.sf.net, Alexander Viro <viro@zeniv.linux.org.uk>,
 William Cohen <wcohen@redhat.com>, linux-snps-arc@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

The "oprofile" user-space tools don't use the kernel OPROFILE support
any more, and haven't in a long time. User-space has been converted to
the perf interfaces.

Remove the old oprofile's architecture specific support.

Suggested-by: Christoph Hellwig <hch@infradead.org>
Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arc/Kconfig           |  1 -
 arch/arc/Makefile          |  2 --
 arch/arc/oprofile/Makefile | 10 ----------
 arch/arc/oprofile/common.c | 23 -----------------------
 4 files changed, 36 deletions(-)
 delete mode 100644 arch/arc/oprofile/Makefile
 delete mode 100644 arch/arc/oprofile/common.c

diff --git a/arch/arc/Kconfig b/arch/arc/Kconfig
index b55ca77f619b..bc8d6aecfbbd 100644
--- a/arch/arc/Kconfig
+++ b/arch/arc/Kconfig
@@ -37,7 +37,6 @@ config ARC
 	select HAVE_KPROBES
 	select HAVE_KRETPROBES
 	select HAVE_MOD_ARCH_SPECIFIC
-	select HAVE_OPROFILE
 	select HAVE_PERF_EVENTS
 	select HANDLE_DOMAIN_IRQ
 	select IRQ_DOMAIN
diff --git a/arch/arc/Makefile b/arch/arc/Makefile
index 578bdbbb0fa7..4392c9c189c4 100644
--- a/arch/arc/Makefile
+++ b/arch/arc/Makefile
@@ -96,8 +96,6 @@ core-$(CONFIG_ARC_PLAT_TB10X)	+= arch/arc/plat-tb10x/
 core-$(CONFIG_ARC_PLAT_AXS10X)	+= arch/arc/plat-axs10x/
 core-$(CONFIG_ARC_SOC_HSDK)	+= arch/arc/plat-hsdk/
 
-drivers-$(CONFIG_OPROFILE)	+= arch/arc/oprofile/
-
 libs-y		+= arch/arc/lib/ $(LIBGCC)
 
 boot		:= arch/arc/boot
diff --git a/arch/arc/oprofile/Makefile b/arch/arc/oprofile/Makefile
deleted file mode 100644
index 698367bb41d0..000000000000
--- a/arch/arc/oprofile/Makefile
+++ /dev/null
@@ -1,10 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-obj-$(CONFIG_OPROFILE) += oprofile.o
-
-DRIVER_OBJS = $(addprefix ../../../drivers/oprofile/, \
-		oprof.o cpu_buffer.o buffer_sync.o \
-		event_buffer.o oprofile_files.o \
-		oprofilefs.o oprofile_stats.o \
-		timer_int.o )
-
-oprofile-y	:= $(DRIVER_OBJS) common.o
diff --git a/arch/arc/oprofile/common.c b/arch/arc/oprofile/common.c
deleted file mode 100644
index 86bf5899533b..000000000000
--- a/arch/arc/oprofile/common.c
+++ /dev/null
@@ -1,23 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright (C) 2004, 2007-2010, 2011-2012 Synopsys, Inc. (www.synopsys.com)
- *
- * Based on orig code from @author John Levon <levon@movementarian.org>
- */
-
-#include <linux/oprofile.h>
-#include <linux/perf_event.h>
-
-int __init oprofile_arch_init(struct oprofile_operations *ops)
-{
-	/*
-	 * A failure here, forces oprofile core to switch to Timer based PC
-	 * sampling, which will happen if say perf is not enabled/available
-	 */
-	return oprofile_perf_init(ops);
-}
-
-void oprofile_arch_exit(void)
-{
-	oprofile_perf_exit();
-}
-- 
2.25.0.rc1.19.g042ed3e048af



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
