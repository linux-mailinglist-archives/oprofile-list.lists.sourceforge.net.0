Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A6F2F6A17
	for <lists+oprofile-list@lfdr.de>; Thu, 14 Jan 2021 19:54:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l07la-0003Yi-W1; Thu, 14 Jan 2021 18:54:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <viresh.kumar@linaro.org>) id 1l01Oy-0001k2-Nw
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 12:06:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6MDUnINPotxk6emPsj6PbUHP5VPQPTHck3Pu0D9eg84=; b=AdxMyCg/Qya7vm0R0qQ8tPkgE5
 ZeJsAw4/xTOsgXFfo/i1+7I4cWMZDF0Djk1sikmg0zA6lK21MufnytlDgcA7YrUxEcxEvUF/ViZo1
 PhwS2l4u8VsUed/0l8+2koocWbmsX96EIOiTAeXIgYFERK5gVqUOHMSzQmyqlWPDYp1Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6MDUnINPotxk6emPsj6PbUHP5VPQPTHck3Pu0D9eg84=; b=EQFEM3djLJ2t4kMuijrxvdDo0u
 4htyvxGpi/D6QczybYNpfIxJ4aE1C4QZZPhS0qRzwUu19VgpAiHzig9Ti30DYUD//pm9/f9bKn/rz
 Hq6R6vqZuvqZfEmjsjLkeUpfTbke9npuy+dHYKnmgXK9qfp7gBMwnzKH63AmvDX/0ON0=;
Received: from mail-oi1-f180.google.com ([209.85.167.180])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l01OQ-008UH7-7S
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 12:06:29 +0000
Received: by mail-oi1-f180.google.com with SMTP id q205so5587666oig.13
 for <oprofile-list@lists.sf.net>; Thu, 14 Jan 2021 04:06:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6MDUnINPotxk6emPsj6PbUHP5VPQPTHck3Pu0D9eg84=;
 b=lStatDlVlBiaLQAoKo2ozg/OqQ93WMd7po2EbL3XMyqbsNVmyOs1COPnszzPkGlHWH
 S6s10VLKHodM9gKDyB6oZ8VjgYarb7I9610jUYduNoV1Auudb1uTxss/kzFElGbokEXP
 WpeLkt67RKtJRlYxgR4tN3deDX2OXi0f6k9+GHEHyU9PZbv1tmrf2uOx7Vr9NJr7/tV7
 U+vM5DR4eIXsDtQtvVD+jXHGUxS50o2L/dEF4ibXTjt2HBUCIVIjGPTjnPwuyCQKSAkR
 9edGpBchaHJm9IGF4IOdA6XIrQmZnd8RYfziDE9R0FxeTqZhSqLpEqC8IgVYghfYuBdi
 p6QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6MDUnINPotxk6emPsj6PbUHP5VPQPTHck3Pu0D9eg84=;
 b=Nr/B1tTxetSch7CHdInn5Rdsgdngz5KUMf30XQ8aqo1+wV6ODLHNGtQzLcxKaTUXAA
 wDuTE1VA/uZGfnsOhyWICsd9mG99nHZYOdemcvzPG5DgHoXq5n4LdBWmkkiFCjEhWr01
 M9/6ej1RufJiA00tqnJ5HWVW//AgOdfKjB3TGSJv2lUHIrJj562ZyDx+CG2f+WXgS1yx
 aexYiPm++jxJR1V4+l1f32QkTSzXTgEdLBGsylszGYlfB1kbor8VxYvw/4SijzdmUOzh
 HTU/gyigol6F0Zg1g0mA3btf0R+8vRASr5yyWROe6bSznwso0q1+4O25ncFp3q5w7AlU
 8U/A==
X-Gm-Message-State: AOAM532vuNz7Wq2OsPr/RnEbM2gQiFoQtBEaMFpcduDRTIh9HapQWzRM
 rBHNOvkulLHsTMz2tdTWHYWKW6b8vDUFHw==
X-Google-Smtp-Source: ABdhPJzd/6v86ISzOE2MR40FYKipTFHdwvHKLoi3cMheh1dv6FVseZFkm5irzTwWnKg+ZO1TwnX+nw==
X-Received: by 2002:a17:90a:d990:: with SMTP id d16mr581pjv.16.1610624200891; 
 Thu, 14 Jan 2021 03:36:40 -0800 (PST)
Received: from localhost ([122.172.85.111])
 by smtp.gmail.com with ESMTPSA id p187sm5035732pfp.60.2021.01.14.03.36.39
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 Jan 2021 03:36:40 -0800 (PST)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Robert Richter <rric@kernel.org>, Chris Zankel <chris@zankel.net>,
 Max Filippov <jcmvbkbc@gmail.com>
Subject: [PATCH 16/18] arch: xtensa: Remove CONFIG_OPROFILE support
Date: Thu, 14 Jan 2021 17:05:29 +0530
Message-Id: <193f2f177d23eef62b54b48f80e62fb0169c1db9.1610622251.git.viresh.kumar@linaro.org>
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
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.180 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.180 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l01OQ-008UH7-7S
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
 linux-xtensa@linux-xtensa.org, linux-kernel@vger.kernel.org,
 anmar.oueja@linaro.org, oprofile-list@lists.sf.net,
 Alexander Viro <viro@zeniv.linux.org.uk>, William Cohen <wcohen@redhat.com>
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
 arch/xtensa/Kconfig                         |  1 -
 arch/xtensa/Makefile                        |  1 -
 arch/xtensa/configs/audio_kc705_defconfig   |  1 -
 arch/xtensa/configs/generic_kc705_defconfig |  1 -
 arch/xtensa/configs/smp_lx200_defconfig     |  1 -
 arch/xtensa/configs/xip_kc705_defconfig     |  1 -
 arch/xtensa/kernel/stacktrace.c             |  2 +-
 arch/xtensa/oprofile/Makefile               | 10 --------
 arch/xtensa/oprofile/backtrace.c            | 27 ---------------------
 arch/xtensa/oprofile/init.c                 | 26 --------------------
 10 files changed, 1 insertion(+), 70 deletions(-)
 delete mode 100644 arch/xtensa/oprofile/Makefile
 delete mode 100644 arch/xtensa/oprofile/backtrace.c
 delete mode 100644 arch/xtensa/oprofile/init.c

diff --git a/arch/xtensa/Kconfig b/arch/xtensa/Kconfig
index 37ce1489364e..9ad6b7b82707 100644
--- a/arch/xtensa/Kconfig
+++ b/arch/xtensa/Kconfig
@@ -32,7 +32,6 @@ config XTENSA
 	select HAVE_FUTEX_CMPXCHG if !MMU
 	select HAVE_HW_BREAKPOINT if PERF_EVENTS
 	select HAVE_IRQ_TIME_ACCOUNTING
-	select HAVE_OPROFILE
 	select HAVE_PCI
 	select HAVE_PERF_EVENTS
 	select HAVE_STACKPROTECTOR
diff --git a/arch/xtensa/Makefile b/arch/xtensa/Makefile
index 67a7d151d1e7..cf0940708702 100644
--- a/arch/xtensa/Makefile
+++ b/arch/xtensa/Makefile
@@ -83,7 +83,6 @@ core-y		+= $(buildvar) $(buildplf)
 core-y 		+= arch/xtensa/boot/dts/
 
 libs-y		+= arch/xtensa/lib/ $(LIBGCC)
-drivers-$(CONFIG_OPROFILE)	+= arch/xtensa/oprofile/
 
 boot		:= arch/xtensa/boot
 
diff --git a/arch/xtensa/configs/audio_kc705_defconfig b/arch/xtensa/configs/audio_kc705_defconfig
index eeb4c5383c83..3be62da8089b 100644
--- a/arch/xtensa/configs/audio_kc705_defconfig
+++ b/arch/xtensa/configs/audio_kc705_defconfig
@@ -18,7 +18,6 @@ CONFIG_BLK_DEV_INITRD=y
 CONFIG_EXPERT=y
 CONFIG_KALLSYMS_ALL=y
 CONFIG_PROFILING=y
-CONFIG_OPROFILE=y
 CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
 CONFIG_XTENSA_VARIANT_CUSTOM=y
diff --git a/arch/xtensa/configs/generic_kc705_defconfig b/arch/xtensa/configs/generic_kc705_defconfig
index 412f611033cc..e9d6b6f6eca1 100644
--- a/arch/xtensa/configs/generic_kc705_defconfig
+++ b/arch/xtensa/configs/generic_kc705_defconfig
@@ -18,7 +18,6 @@ CONFIG_BLK_DEV_INITRD=y
 CONFIG_EXPERT=y
 CONFIG_KALLSYMS_ALL=y
 CONFIG_PROFILING=y
-CONFIG_OPROFILE=y
 CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
 CONFIG_XTENSA_VARIANT_DC233C=y
diff --git a/arch/xtensa/configs/smp_lx200_defconfig b/arch/xtensa/configs/smp_lx200_defconfig
index 4f1c7998b030..a47c85638ec1 100644
--- a/arch/xtensa/configs/smp_lx200_defconfig
+++ b/arch/xtensa/configs/smp_lx200_defconfig
@@ -18,7 +18,6 @@ CONFIG_BLK_DEV_INITRD=y
 CONFIG_EXPERT=y
 CONFIG_KALLSYMS_ALL=y
 CONFIG_PROFILING=y
-CONFIG_OPROFILE=y
 CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
 CONFIG_XTENSA_VARIANT_CUSTOM=y
diff --git a/arch/xtensa/configs/xip_kc705_defconfig b/arch/xtensa/configs/xip_kc705_defconfig
index f9e85c082afc..4f1ff9531f6a 100644
--- a/arch/xtensa/configs/xip_kc705_defconfig
+++ b/arch/xtensa/configs/xip_kc705_defconfig
@@ -31,7 +31,6 @@ CONFIG_CMDLINE="earlycon=uart8250,mmio32native,0xfd050020,115200n8 console=ttyS0
 CONFIG_USE_OF=y
 CONFIG_BUILTIN_DTB_SOURCE="kc705"
 # CONFIG_PARSE_BOOTPARAM is not set
-CONFIG_OPROFILE=y
 # CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS is not set
 # CONFIG_COMPACTION is not set
 CONFIG_NET=y
diff --git a/arch/xtensa/kernel/stacktrace.c b/arch/xtensa/kernel/stacktrace.c
index c822abb93d20..7f7755cd28f0 100644
--- a/arch/xtensa/kernel/stacktrace.c
+++ b/arch/xtensa/kernel/stacktrace.c
@@ -16,7 +16,7 @@
 #include <asm/traps.h>
 #include <linux/uaccess.h>
 
-#if IS_ENABLED(CONFIG_OPROFILE) || IS_ENABLED(CONFIG_PERF_EVENTS)
+#if IS_ENABLED(CONFIG_PERF_EVENTS)
 
 /* Address of common_exception_return, used to check the
  * transition from kernel to user space.
diff --git a/arch/xtensa/oprofile/Makefile b/arch/xtensa/oprofile/Makefile
deleted file mode 100644
index f559b9ffbb3f..000000000000
--- a/arch/xtensa/oprofile/Makefile
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
-oprofile-y := $(DRIVER_OBJS) init.o backtrace.o
diff --git a/arch/xtensa/oprofile/backtrace.c b/arch/xtensa/oprofile/backtrace.c
deleted file mode 100644
index 8f952034e161..000000000000
--- a/arch/xtensa/oprofile/backtrace.c
+++ /dev/null
@@ -1,27 +0,0 @@
-/**
- * @file backtrace.c
- *
- * @remark Copyright 2008 Tensilica Inc.
- * Copyright (C) 2015 Cadence Design Systems Inc.
- * @remark Read the file COPYING
- *
- */
-
-#include <linux/oprofile.h>
-#include <asm/ptrace.h>
-#include <asm/stacktrace.h>
-
-static int xtensa_backtrace_cb(struct stackframe *frame, void *data)
-{
-	oprofile_add_trace(frame->pc);
-	return 0;
-}
-
-void xtensa_backtrace(struct pt_regs * const regs, unsigned int depth)
-{
-	if (user_mode(regs))
-		xtensa_backtrace_user(regs, depth, xtensa_backtrace_cb, NULL);
-	else
-		xtensa_backtrace_kernel(regs, depth, xtensa_backtrace_cb,
-					xtensa_backtrace_cb, NULL);
-}
diff --git a/arch/xtensa/oprofile/init.c b/arch/xtensa/oprofile/init.c
deleted file mode 100644
index a67eea379766..000000000000
--- a/arch/xtensa/oprofile/init.c
+++ /dev/null
@@ -1,26 +0,0 @@
-/**
- * @file init.c
- *
- * @remark Copyright 2008 Tensilica Inc.
- * @remark Read the file COPYING
- *
- */
-
-#include <linux/kernel.h>
-#include <linux/oprofile.h>
-#include <linux/errno.h>
-#include <linux/init.h>
-
-
-extern void xtensa_backtrace(struct pt_regs *const regs, unsigned int depth);
-
-int __init oprofile_arch_init(struct oprofile_operations *ops)
-{
-	ops->backtrace = xtensa_backtrace;
-	return -ENODEV;
-}
-
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
