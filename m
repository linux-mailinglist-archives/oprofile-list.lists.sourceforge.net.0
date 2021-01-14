Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CDA2F6A06
	for <lists+oprofile-list@lfdr.de>; Thu, 14 Jan 2021 19:54:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l07lZ-0003W0-R0; Thu, 14 Jan 2021 18:54:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <viresh.kumar@linaro.org>) id 1l01J8-0000fv-Be
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 12:00:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rfKQWzY7g6bl4dvYg0DvLy9sotgmT/aIIjZC+k1x6MY=; b=EcqH398GmWEtLNRKjbFTOoQ92+
 kpfc5QwiJHMw9QWXUNuLOEH35/yOCW4lteZuQDma157tDiPVV0qEvbhncmQLoubZHau2mHWFVILtM
 3bPj9uYGFEISt7BSrMAkrfwO94SmmxXm00Qr8gJz41YPiNyiYFT9UXxm5CPjqqJrcVK4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rfKQWzY7g6bl4dvYg0DvLy9sotgmT/aIIjZC+k1x6MY=; b=LTOeLVG8RAnoOF8PuglcwYxIlk
 q+FJfgGiDpGjT5pG69XF2Qj/atUryKqo2MqM+DluhfzUjGjwzeIzRafREt/BLxLjQulQjgP2I4Fty
 w8O9AAVmUwnjf/NjXsPlgdU9avwLN+1yPhNHSY8eNJdYbFcuFtcwoD4GxPZ4PWg6QVUU=;
Received: from mail-pg1-f182.google.com ([209.85.215.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l01J3-008Suv-EU
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 12:00:54 +0000
Received: by mail-pg1-f182.google.com with SMTP id i7so3633213pgc.8
 for <oprofile-list@lists.sf.net>; Thu, 14 Jan 2021 04:00:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rfKQWzY7g6bl4dvYg0DvLy9sotgmT/aIIjZC+k1x6MY=;
 b=KfoPeokcc84VAT2vVy/K+gWl8B8rV10CEbggJ0yBMdMPp5J+M2XJ0EdRT04iX5+rS8
 NB3X3AY4LXXByzg0peB+mqcFb0NgenHQOL5ElwehZWNPU1Ihs86ycwdZWTiMi/3OicJz
 b0b+iYPvq/cwkJVFM7uQCDIfy1clbGu+CyMBJDI0yH3wU566fex7ZiveLs4mpzziINR7
 sQvYcqiEgbl2d/4DcJqJIgiUnBiTDoniFcUBXhehAJUilnCCbwg/Sh+/pEAnQeh3F7EB
 Y1JfEH+5OkthGpKQasLONrh2joiVM8KwRyWU95lJnnJ6u67kND/6V2P5Bceapv+ImdSU
 S2LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rfKQWzY7g6bl4dvYg0DvLy9sotgmT/aIIjZC+k1x6MY=;
 b=c8aSV5HRkTTrRQ9sIxU152f6J4ZaxlSsrdAIrXthg42BuuPENRW6EKwUJyOtHtYP+p
 ll0aPUJgsUgrOvElWnXakNXXpQOLOjJCNd3Eehi6TZQRg9VN9w9wcYbOH4aKCFLAccSY
 mPyvLhkx5tSybUkIjmcWq7k9xhi+F+J2krTjdVFWAX/eetIoThZjxJ5tgdyd9+n52ta5
 CfO/TN864H6d62ILHUVkfhktkDYvvUzFLbeSEF40C6oB600JdhMAfoGh9dPXuMFu1tuW
 WWrtCq5P7Sxyf4k00HivHW4uvSugo+cOSj56Dx2VSjoqZz8RD9BhpELjtKLeuwTRRfDN
 vRwg==
X-Gm-Message-State: AOAM532RSDY701+Ed9TzVa+686ehqv/70UCAgFoDqBxPukW/CkP3WxhZ
 /shbtDv7D81T5Eq8cTiPwZDOQAUQmzp1Vg==
X-Google-Smtp-Source: ABdhPJy61sjpnlO4eZYOZOP/pWpxcFUSGlPPxqVSk3fWBIdZQvVnJfxgg8Wg7PuMzAcl4OEdEopBWg==
X-Received: by 2002:a63:150b:: with SMTP id v11mr7256845pgl.183.1610624158930; 
 Thu, 14 Jan 2021 03:35:58 -0800 (PST)
Received: from localhost ([122.172.85.111])
 by smtp.gmail.com with ESMTPSA id m3sm4695787pfa.134.2021.01.14.03.35.58
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 Jan 2021 03:35:58 -0800 (PST)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Robert Richter <rric@kernel.org>, Michal Simek <monstr@monstr.eu>
Subject: [PATCH 07/18] arch: microblaze: Remove CONFIG_OPROFILE support
Date: Thu, 14 Jan 2021 17:05:20 +0530
Message-Id: <592887f3a5baf0d2b2919617757f1f629aa4030b.1610622251.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.25.0.rc1.19.g042ed3e048af
In-Reply-To: <cover.1610622251.git.viresh.kumar@linaro.org>
References: <cover.1610622251.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.182 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.182 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1l01J3-008Suv-EU
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
 William Cohen <wcohen@redhat.com>
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
 arch/microblaze/Kconfig                       |  1 -
 arch/microblaze/Makefile                      |  2 --
 arch/microblaze/oprofile/Makefile             | 14 ------------
 .../microblaze/oprofile/microblaze_oprofile.c | 22 -------------------
 4 files changed, 39 deletions(-)
 delete mode 100644 arch/microblaze/oprofile/Makefile
 delete mode 100644 arch/microblaze/oprofile/microblaze_oprofile.c

diff --git a/arch/microblaze/Kconfig b/arch/microblaze/Kconfig
index f82795592ce5..25a5a3fb14aa 100644
--- a/arch/microblaze/Kconfig
+++ b/arch/microblaze/Kconfig
@@ -30,7 +30,6 @@ config MICROBLAZE
 	select HAVE_FTRACE_MCOUNT_RECORD
 	select HAVE_FUNCTION_GRAPH_TRACER
 	select HAVE_FUNCTION_TRACER
-	select HAVE_OPROFILE
 	select HAVE_PCI
 	select IRQ_DOMAIN
 	select XILINX_INTC
diff --git a/arch/microblaze/Makefile b/arch/microblaze/Makefile
index bb980891816d..b41f323e1fde 100644
--- a/arch/microblaze/Makefile
+++ b/arch/microblaze/Makefile
@@ -54,8 +54,6 @@ core-y += arch/microblaze/kernel/
 core-y += arch/microblaze/mm/
 core-$(CONFIG_PCI) += arch/microblaze/pci/
 
-drivers-$(CONFIG_OPROFILE) += arch/microblaze/oprofile/
-
 boot := arch/microblaze/boot
 
 # Are we making a simpleImage.<boardname> target? If so, crack out the boardname
diff --git a/arch/microblaze/oprofile/Makefile b/arch/microblaze/oprofile/Makefile
deleted file mode 100644
index 107f2f55d995..000000000000
--- a/arch/microblaze/oprofile/Makefile
+++ /dev/null
@@ -1,14 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-#
-# arch/microblaze/oprofile/Makefile
-#
-
-obj-$(CONFIG_OPROFILE) += oprofile.o
-
-DRIVER_OBJS := $(addprefix ../../../drivers/oprofile/, \
-		oprof.o cpu_buffer.o buffer_sync.o \
-		event_buffer.o oprofile_files.o \
-		oprofilefs.o oprofile_stats.o \
-		timer_int.o )
-
-oprofile-y := $(DRIVER_OBJS) microblaze_oprofile.o
diff --git a/arch/microblaze/oprofile/microblaze_oprofile.c b/arch/microblaze/oprofile/microblaze_oprofile.c
deleted file mode 100644
index def17e59888e..000000000000
--- a/arch/microblaze/oprofile/microblaze_oprofile.c
+++ /dev/null
@@ -1,22 +0,0 @@
-/*
- * Microblaze oprofile code
- *
- * Copyright (C) 2009 Michal Simek <monstr@monstr.eu>
- * Copyright (C) 2009 PetaLogix
- *
- * This file is subject to the terms and conditions of the GNU General Public
- * License. See the file "COPYING" in the main directory of this archive
- * for more details.
- */
-
-#include <linux/oprofile.h>
-#include <linux/init.h>
-
-int __init oprofile_arch_init(struct oprofile_operations *ops)
-{
-	return -1;
-}
-
-void oprofile_arch_exit(void)
-{
-}
-- 
2.25.0.rc1.19.g042ed3e048af



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
