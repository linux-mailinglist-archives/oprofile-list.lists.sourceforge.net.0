Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB382F6A0A
	for <lists+oprofile-list@lfdr.de>; Thu, 14 Jan 2021 19:54:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l07la-0003XY-ID; Thu, 14 Jan 2021 18:54:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <viresh.kumar@linaro.org>) id 1l01Lr-00017U-R9
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 12:03:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XZV0DiwzIj0V0+6XZjr44IPp/B59bWieihfU1aU43JA=; b=bzIJQnP81SawsJv9jdylDsTrEq
 Ac4BoIOE4i4STOikL7fPse+x70soMUpp7pYoqx5iF5bqHu9nppzQsYsOrhGdd3C20h9MeLbewB0Fx
 Ji05vosyrjEhz0/4YCtNfUVDu/3zIhCsN62h9YQUT1atGgxDvzfbyQF/WdIp0rJ1z6Ug=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XZV0DiwzIj0V0+6XZjr44IPp/B59bWieihfU1aU43JA=; b=ea4DLik58aSnBDgwcLWLhffKCL
 hw9CjelzJZdypNAGeJGYnK/P2I+X3w+EgLJX9Ps80Bip1aLiAcPoz3TS6W/3vp1OkSNQS2o2/nC3F
 L3kIW9Q+W6tm6cEcVy6of8dsPvm/Z1VpbG9hH9A1dt4zMFDywavEA21LHU4sqXC676N8=;
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l01Lm-00FXtt-Nx
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 12:03:43 +0000
Received: by mail-oi1-f169.google.com with SMTP id s75so5662271oih.1
 for <oprofile-list@lists.sf.net>; Thu, 14 Jan 2021 04:03:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XZV0DiwzIj0V0+6XZjr44IPp/B59bWieihfU1aU43JA=;
 b=HmLEw1LiE70NW3TWU+hxgOXyx4Vv3Ae0pO06XMu52cp1GXt38qKnRNlWTyrP9wgV44
 t3UCyHToI1P86qJeT6uFDtcAHEPPF67HN+5AxX1Ph7GIUSrrmAbbVOfn+dYrIIqgXKdB
 DUxKwoIiZNyijxpSX/XK84LVDvLG3ATCqDQ7bFw7QDU46P4RyfSs0zwCCo5UollChWP/
 9K5V/4yUvsQg9sm7XqaaaArTM/h9aZJrTf+oukq3iAve6yuf+fIuOmWQCZu/fIv+xkHs
 PGKAjv9alo+hDfPEMbIVdaGhx+ihpftlsSvDo2ZYfYydIiInPBMGT2+EQXHMRkgiSqcf
 yZGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XZV0DiwzIj0V0+6XZjr44IPp/B59bWieihfU1aU43JA=;
 b=Ssf08bWWStb2dOwcA7uUncOq3p/jQ8ibt5ar/g5S1n3+dsAyEeQD8WRSfRxF4qMzIk
 HyUxmissEymHqBvkSEedOk2zo1Opplhgg6lF0+6FiDZ2HqXC1xz9vRGarrEM/CUN8s+U
 U5636SqrkvQmtcm4ogpiT0l4152gFLGtfO+5dEwfBmBepKRZC+Ma/UVy/wyImk3BeELg
 iRF+xTExq3IlIv1jttpoE7k0uH4w1530v+Nhxs1cu8YiDrCdUvPyRCFgUNzImF9OJ6Ko
 BMhl1WmRbbmqiEmKdjeXx7TrBgPxkVbA5K03I9xuA2+p2xCUGbStprClQy2Umx+tPT2o
 gLvg==
X-Gm-Message-State: AOAM531BcYWvM0qUGblV9gwc8raYTCwEmHVWjHWxh8BS6gm1c7/a+3de
 AI2gTf+19tiOOPiNUjHGF5xsLEiEDvJBaA==
X-Google-Smtp-Source: ABdhPJybpVmSn3pIRStzS4gmCYVOoiLqHdduNwi2O7Ws7ci9uqlteWeJlebtVFlwj5FXpY0twXsODw==
X-Received: by 2002:a17:90a:245:: with SMTP id t5mr4681652pje.89.1610624151136; 
 Thu, 14 Jan 2021 03:35:51 -0800 (PST)
Received: from localhost ([122.172.85.111])
 by smtp.gmail.com with ESMTPSA id z28sm5321427pfr.140.2021.01.14.03.35.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 Jan 2021 03:35:50 -0800 (PST)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Robert Richter <rric@kernel.org>, Tony Luck <tony.luck@intel.com>,
 Fenghua Yu <fenghua.yu@intel.com>
Subject: [PATCH 05/18] arch: ia64: Remove CONFIG_OPROFILE support
Date: Thu, 14 Jan 2021 17:05:18 +0530
Message-Id: <f23ce8ae475324c6666cd8a717a49b550e6653a6.1610622251.git.viresh.kumar@linaro.org>
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
 for more information. [URIs: linux-foundation.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.169 listed in list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: movementarian.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: movementarian.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.169 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l01Lm-00FXtt-Nx
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
 linux-ia64@vger.kernel.org, William Cohen <wcohen@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

The "oprofile" user-space tools don't use the kernel OPROFILE support
any more, and haven't in a long time. User-space has been converted to
the perf interfaces.

Also note that ia64 supports oprofile but not perf and profiling
shouldn't be working anyway currently.

Remove the old oprofile's architecture specific support.

Suggested-by: Christoph Hellwig <hch@infradead.org>
Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/ia64/Kconfig                  |   1 -
 arch/ia64/Makefile                 |   1 -
 arch/ia64/configs/bigsur_defconfig |   1 -
 arch/ia64/oprofile/Makefile        |  10 ---
 arch/ia64/oprofile/backtrace.c     | 131 -----------------------------
 arch/ia64/oprofile/init.c          |  28 ------
 6 files changed, 172 deletions(-)
 delete mode 100644 arch/ia64/oprofile/Makefile
 delete mode 100644 arch/ia64/oprofile/backtrace.c
 delete mode 100644 arch/ia64/oprofile/init.c

diff --git a/arch/ia64/Kconfig b/arch/ia64/Kconfig
index eed59ec32657..2ad7a8d29fcc 100644
--- a/arch/ia64/Kconfig
+++ b/arch/ia64/Kconfig
@@ -24,7 +24,6 @@ config IA64
 	select HAVE_UNSTABLE_SCHED_CLOCK
 	select HAVE_EXIT_THREAD
 	select HAVE_IDE
-	select HAVE_OPROFILE
 	select HAVE_KPROBES
 	select HAVE_KRETPROBES
 	select HAVE_FTRACE_MCOUNT_RECORD
diff --git a/arch/ia64/Makefile b/arch/ia64/Makefile
index 703b1c4f6d12..33c11fa31192 100644
--- a/arch/ia64/Makefile
+++ b/arch/ia64/Makefile
@@ -52,7 +52,6 @@ core-y				+= arch/ia64/kernel/ arch/ia64/mm/
 core-$(CONFIG_IA64_SGI_UV)	+= arch/ia64/uv/
 
 drivers-y			+= arch/ia64/pci/ arch/ia64/hp/common/
-drivers-$(CONFIG_OPROFILE)	+= arch/ia64/oprofile/
 
 PHONY += compressed check
 
diff --git a/arch/ia64/configs/bigsur_defconfig b/arch/ia64/configs/bigsur_defconfig
index cfed5ed89301..c409756b5396 100644
--- a/arch/ia64/configs/bigsur_defconfig
+++ b/arch/ia64/configs/bigsur_defconfig
@@ -2,7 +2,6 @@ CONFIG_SYSVIPC=y
 CONFIG_POSIX_MQUEUE=y
 CONFIG_LOG_BUF_SHIFT=16
 CONFIG_PROFILING=y
-CONFIG_OPROFILE=y
 CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
 CONFIG_PARTITION_ADVANCED=y
diff --git a/arch/ia64/oprofile/Makefile b/arch/ia64/oprofile/Makefile
deleted file mode 100644
index fc7944d462f4..000000000000
--- a/arch/ia64/oprofile/Makefile
+++ /dev/null
@@ -1,10 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-obj-$(CONFIG_OPROFILE) += oprofile.o
-
-DRIVER_OBJS := $(addprefix ../../../drivers/oprofile/, \
-		oprof.o cpu_buffer.o buffer_sync.o \
-		event_buffer.o oprofile_files.o \
-		oprofilefs.o oprofile_stats.o \
-		timer_int.o )
-
-oprofile-y := $(DRIVER_OBJS) init.o backtrace.o
diff --git a/arch/ia64/oprofile/backtrace.c b/arch/ia64/oprofile/backtrace.c
deleted file mode 100644
index 6a219a946050..000000000000
--- a/arch/ia64/oprofile/backtrace.c
+++ /dev/null
@@ -1,131 +0,0 @@
-/**
- * @file backtrace.c
- *
- * @remark Copyright 2004 Silicon Graphics Inc.  All Rights Reserved.
- * @remark Read the file COPYING
- *
- * @author Greg Banks <gnb@melbourne.sgi.com>
- * @author Keith Owens <kaos@melbourne.sgi.com>
- * Based on work done for the ia64 port of the SGI kernprof patch, which is
- *    Copyright (c) 2003-2004 Silicon Graphics Inc.  All Rights Reserved.
- */
-
-#include <linux/oprofile.h>
-#include <linux/sched.h>
-#include <linux/mm.h>
-#include <asm/ptrace.h>
-
-/*
- * For IA64 we need to perform a complex little dance to get both
- * the struct pt_regs and a synthetic struct switch_stack in place
- * to allow the unwind code to work.  This dance requires our unwind
- * using code to be called from a function called from unw_init_running().
- * There we only get a single void* data pointer, so use this struct
- * to hold all the data we need during the unwind.
- */
-typedef struct
-{
-	unsigned int depth;
-	struct pt_regs *regs;
-	struct unw_frame_info frame;
-	unsigned long *prev_pfs_loc;	/* state for WAR for old spinlock ool code */
-} ia64_backtrace_t;
-
-/* Returns non-zero if the PC is in the Interrupt Vector Table */
-static __inline__ int in_ivt_code(unsigned long pc)
-{
-	extern char ia64_ivt[];
-	return (pc >= (u_long)ia64_ivt && pc < (u_long)ia64_ivt+32768);
-}
-
-/*
- * Unwind to next stack frame.
- */
-static __inline__ int next_frame(ia64_backtrace_t *bt)
-{
-	/*
-	 * Avoid unsightly console message from unw_unwind() when attempting
-	 * to unwind through the Interrupt Vector Table which has no unwind
-	 * information.
-	 */
-	if (in_ivt_code(bt->frame.ip))
-		return 0;
-
-	/*
-	 * WAR for spinlock contention from leaf functions.  ia64_spinlock_contention_pre3_4
-	 * has ar.pfs == r0.  Leaf functions do not modify ar.pfs so ar.pfs remains
-	 * as 0, stopping the backtrace.  Record the previous ar.pfs when the current
-	 * IP is in ia64_spinlock_contention_pre3_4 then unwind, if pfs_loc has not changed
-	 * after unwind then use pt_regs.ar_pfs which is where the real ar.pfs is for
-	 * leaf functions.
-	 */
-	if (bt->prev_pfs_loc && bt->regs && bt->frame.pfs_loc == bt->prev_pfs_loc)
-		bt->frame.pfs_loc = &bt->regs->ar_pfs;
-	bt->prev_pfs_loc = NULL;
-
-	return unw_unwind(&bt->frame) == 0;
-}
-
-
-static void do_ia64_backtrace(struct unw_frame_info *info, void *vdata)
-{
-	ia64_backtrace_t *bt = vdata;
-	struct switch_stack *sw;
-	int count = 0;
-	u_long pc, sp;
-
-	sw = (struct switch_stack *)(info+1);
-	/* padding from unw_init_running */
-	sw = (struct switch_stack *)(((unsigned long)sw + 15) & ~15);
-
-	unw_init_frame_info(&bt->frame, current, sw);
-
-	/* skip over interrupt frame and oprofile calls */
-	do {
-		unw_get_sp(&bt->frame, &sp);
-		if (sp >= (u_long)bt->regs)
-			break;
-		if (!next_frame(bt))
-			return;
-	} while (count++ < 200);
-
-	/* finally, grab the actual sample */
-	while (bt->depth-- && next_frame(bt)) {
-		unw_get_ip(&bt->frame, &pc);
-		oprofile_add_trace(pc);
-		if (unw_is_intr_frame(&bt->frame)) {
-			/*
-			 * Interrupt received on kernel stack; this can
-			 * happen when timer interrupt fires while processing
-			 * a softirq from the tail end of a hardware interrupt
-			 * which interrupted a system call.  Don't laugh, it
-			 * happens!  Splice the backtrace into two parts to
-			 * avoid spurious cycles in the gprof output.
-			 */
-			/* TODO: split rather than drop the 2nd half */
-			break;
-		}
-	}
-}
-
-void
-ia64_backtrace(struct pt_regs * const regs, unsigned int depth)
-{
-	ia64_backtrace_t bt;
-	unsigned long flags;
-
-	/*
-	 * On IA64 there is little hope of getting backtraces from
-	 * user space programs -- the problems of getting the unwind
-	 * information from arbitrary user programs are extreme.
-	 */
-	if (user_mode(regs))
-		return;
-
-	bt.depth = depth;
-	bt.regs = regs;
-	bt.prev_pfs_loc = NULL;
-	local_irq_save(flags);
-	unw_init_running(do_ia64_backtrace, &bt);
-	local_irq_restore(flags);
-}
diff --git a/arch/ia64/oprofile/init.c b/arch/ia64/oprofile/init.c
deleted file mode 100644
index a692ba16a07b..000000000000
--- a/arch/ia64/oprofile/init.c
+++ /dev/null
@@ -1,28 +0,0 @@
-/**
- * @file init.c
- *
- * @remark Copyright 2002 OProfile authors
- * @remark Read the file COPYING
- *
- * @author John Levon <levon@movementarian.org>
- */
-
-#include <linux/kernel.h>
-#include <linux/oprofile.h>
-#include <linux/init.h>
-#include <linux/errno.h>
- 
-extern int perfmon_init(struct oprofile_operations *ops);
-extern void perfmon_exit(void);
-extern void ia64_backtrace(struct pt_regs * const regs, unsigned int depth);
-
-int __init oprofile_arch_init(struct oprofile_operations *ops)
-{
-	ops->backtrace = ia64_backtrace;
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
