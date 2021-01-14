Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B120D2F6A18
	for <lists+oprofile-list@lfdr.de>; Thu, 14 Jan 2021 19:54:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l07la-0003Xm-Kg; Thu, 14 Jan 2021 18:54:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <viresh.kumar@linaro.org>) id 1l01NZ-0001se-EC
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 12:05:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P6pF8PwYGSaz1ZNaOhy9eKako4g3V/oIeMmrhtfC4/U=; b=S6ulY8SEZL2tBH6JJZXGdyYURg
 x+7jWMzty6rA5zdagXCKHiGLx0ckMJTQAEQ/nv3T1e6bJz03v+YcJov/940WPKmV86cqizedHrPzi
 rDv8UcBApCxyrwNMe4thLNTbD7N02W9BotPrPrbZN1x4T8RC5SxbSUsCKQg+YSMKqnjU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=P6pF8PwYGSaz1ZNaOhy9eKako4g3V/oIeMmrhtfC4/U=; b=ZHZPAc4ak1rnpTDsFfLvTu2CYs
 izMBxW2l53Y+0eklyfWehdrfUqtU90uBrB2NXJQx0wlsfuxO+4y6Y9sHtpGK/KoGxZmVsfCwwU0jN
 W9x4tAyiQ71pOiZcKZ9McGRXTIwvSXa0HCYP91V/zATxsObv387y6XNShNl2ya4+ZKxM=;
Received: from mail-pf1-f179.google.com ([209.85.210.179])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l01NN-008U7w-9m
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 12:05:29 +0000
Received: by mail-pf1-f179.google.com with SMTP id m6so3225485pfk.1
 for <oprofile-list@lists.sf.net>; Thu, 14 Jan 2021 04:05:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P6pF8PwYGSaz1ZNaOhy9eKako4g3V/oIeMmrhtfC4/U=;
 b=CsSujw74vjPO179JQOPKW/rS1joWHpCwXZ9woY1wPVme3WAmvsGEaiSIDOC4bPY383
 kykq0E2awkeW2MtqV11hIbVbxB03xIhelK/YYPGyfPUALPSGp3c9NGmd59Yq7i8MEnPO
 wopQhNlkjySWoJOrs5BRjRRmSrQNRpm/XRLArgaq3uozCcw7iHuY7U2b+H19oZwigSKW
 k4HPflZ6HvALdn4p9tAu9hp51TciKpOLJ3b05FntKt4FigTQ7bP0172DyCJYcLosab0w
 q4cIfYBBQh7bHa08WG+ogOs+OI9wPZCYCmWXH15OFc4XXn+lkywC9X4cDWv/f15H35/P
 YS4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P6pF8PwYGSaz1ZNaOhy9eKako4g3V/oIeMmrhtfC4/U=;
 b=hUbqqGspgC1GKglLJZR7Xu+9B9x59YQZ2SLwRgj20+pSyPv9Ldi9tZtDldM5tnlP72
 St+1HPOuZx+J0cLQ0vJiweWiAVXW/UVJuMzq7ILbp1FeLi46xAcqMP7AqJerkE+llM82
 KbzJKIEVyCyTAicQJHH4Lg7AijDfaVyrMoFxHN9Or/zVb/8LU6VZTyrS5Ndm78oeCvRc
 O2Ae10W/I0zg1XRwZJO3VN/n4vSphiHTadl5mm8dZeRMCn2N2CWEkSuIGMJo90KkmLuW
 H/ImF3Cj5qdpF3FdqWvolfEHQzX4Gjbu9MfRqzeRznJU/rDn/QmmbDndxEM7c/0JUd8k
 SmMg==
X-Gm-Message-State: AOAM5338mDZG+Hqq/6yYacxpcBjxAP5UNCvcEvGDk3wsT5a9tHCk55bE
 0PDu48mB/YDjHFgmxCXxg+Qj6DKnutHKtw==
X-Google-Smtp-Source: ABdhPJytxvrmQFEFVBn8jmaBSosHOxPCkaBSBW+Xc9VZXjkpx3bc9vjZ5mbLWyEbqDMQWC+mg3ixdg==
X-Received: by 2002:a65:690e:: with SMTP id s14mr7095987pgq.302.1610624191657; 
 Thu, 14 Jan 2021 03:36:31 -0800 (PST)
Received: from localhost ([122.172.85.111])
 by smtp.gmail.com with ESMTPSA id s13sm5251972pfd.99.2021.01.14.03.36.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 Jan 2021 03:36:30 -0800 (PST)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Robert Richter <rric@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
 Michal Marek <michal.lkml@markovi.net>, Jonathan Corbet <corbet@lwn.net>,
 "David S. Miller" <davem@davemloft.net>
Subject: [PATCH 14/18] arch: sparc: Remove CONFIG_OPROFILE support
Date: Thu, 14 Jan 2021 17:05:27 +0530
Message-Id: <048b9e7918a847a6ad549350e30855a1b5d7c58e.1610622251.git.viresh.kumar@linaro.org>
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.179 listed in list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: movementarian.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: movementarian.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.179 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1l01NN-008U7w-9m
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
 linux-kbuild@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, anmar.oueja@linaro.org,
 oprofile-list@lists.sf.net, Alexander Viro <viro@zeniv.linux.org.uk>,
 sparclinux@vger.kernel.org, William Cohen <wcohen@redhat.com>
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
 Documentation/kbuild/makefiles.rst   |  1 -
 arch/sparc/Kconfig                   |  1 -
 arch/sparc/Makefile                  |  1 -
 arch/sparc/configs/sparc64_defconfig |  1 -
 arch/sparc/oprofile/Makefile         | 10 ----
 arch/sparc/oprofile/init.c           | 87 ----------------------------
 6 files changed, 101 deletions(-)
 delete mode 100644 arch/sparc/oprofile/Makefile
 delete mode 100644 arch/sparc/oprofile/init.c

diff --git a/Documentation/kbuild/makefiles.rst b/Documentation/kbuild/makefiles.rst
index 9f6a11881951..d7b2e027c1f8 100644
--- a/Documentation/kbuild/makefiles.rst
+++ b/Documentation/kbuild/makefiles.rst
@@ -1317,7 +1317,6 @@ a few targets.
 		libs-y                 += arch/sparc/lib/
 
 		drivers-$(CONFIG_PM) += arch/sparc/power/
-		drivers-$(CONFIG_OPROFILE)	+= arch/sparc/oprofile/
 
 7.5 Architecture-specific boot images
 -------------------------------------
diff --git a/arch/sparc/Kconfig b/arch/sparc/Kconfig
index c9c34dc52b7d..caf95e61162b 100644
--- a/arch/sparc/Kconfig
+++ b/arch/sparc/Kconfig
@@ -20,7 +20,6 @@ config SPARC
 	select OF_PROMTREE
 	select HAVE_ASM_MODVERSIONS
 	select HAVE_IDE
-	select HAVE_OPROFILE
 	select HAVE_ARCH_KGDB if !SMP || SPARC64
 	select HAVE_ARCH_TRACEHOOK
 	select HAVE_ARCH_SECCOMP if SPARC64
diff --git a/arch/sparc/Makefile b/arch/sparc/Makefile
index 4a0919581697..bee99e65fe23 100644
--- a/arch/sparc/Makefile
+++ b/arch/sparc/Makefile
@@ -65,7 +65,6 @@ libs-y                 += arch/sparc/prom/
 libs-y                 += arch/sparc/lib/
 
 drivers-$(CONFIG_PM) += arch/sparc/power/
-drivers-$(CONFIG_OPROFILE)	+= arch/sparc/oprofile/
 
 boot := arch/sparc/boot
 
diff --git a/arch/sparc/configs/sparc64_defconfig b/arch/sparc/configs/sparc64_defconfig
index bde4d21a8ac8..d91eb6a76dd1 100644
--- a/arch/sparc/configs/sparc64_defconfig
+++ b/arch/sparc/configs/sparc64_defconfig
@@ -8,7 +8,6 @@ CONFIG_PERF_EVENTS=y
 # CONFIG_COMPAT_BRK is not set
 CONFIG_SLAB=y
 CONFIG_PROFILING=y
-CONFIG_OPROFILE=m
 CONFIG_KPROBES=y
 CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
diff --git a/arch/sparc/oprofile/Makefile b/arch/sparc/oprofile/Makefile
deleted file mode 100644
index fe906e403d3a..000000000000
--- a/arch/sparc/oprofile/Makefile
+++ /dev/null
@@ -1,10 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-obj-$(CONFIG_OPROFILE) += oprofile.o
-
-DRIVER_OBJS = $(addprefix ../../../drivers/oprofile/, \
-		oprof.o cpu_buffer.o buffer_sync.o \
-		event_buffer.o oprofile_files.o \
-		oprofilefs.o oprofile_stats.o \
-		timer_int.o )
-
-oprofile-y				:= $(DRIVER_OBJS) init.o
diff --git a/arch/sparc/oprofile/init.c b/arch/sparc/oprofile/init.c
deleted file mode 100644
index 43730c9b1c86..000000000000
--- a/arch/sparc/oprofile/init.c
+++ /dev/null
@@ -1,87 +0,0 @@
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
-#include <linux/errno.h>
-#include <linux/init.h>
-#include <linux/param.h>	/* for HZ */
- 
-#ifdef CONFIG_SPARC64
-#include <linux/notifier.h>
-#include <linux/rcupdate.h>
-#include <linux/kdebug.h>
-#include <asm/nmi.h>
-
-static int profile_timer_exceptions_notify(struct notifier_block *self,
-					   unsigned long val, void *data)
-{
-	struct die_args *args = data;
-	int ret = NOTIFY_DONE;
-
-	switch (val) {
-	case DIE_NMI:
-		oprofile_add_sample(args->regs, 0);
-		ret = NOTIFY_STOP;
-		break;
-	default:
-		break;
-	}
-	return ret;
-}
-
-static struct notifier_block profile_timer_exceptions_nb = {
-	.notifier_call	= profile_timer_exceptions_notify,
-};
-
-static int timer_start(void)
-{
-	if (register_die_notifier(&profile_timer_exceptions_nb))
-		return 1;
-	nmi_adjust_hz(HZ);
-	return 0;
-}
-
-
-static void timer_stop(void)
-{
-	nmi_adjust_hz(1);
-	unregister_die_notifier(&profile_timer_exceptions_nb);
-	synchronize_rcu();  /* Allow already-started NMIs to complete. */
-}
-
-static int op_nmi_timer_init(struct oprofile_operations *ops)
-{
-	if (atomic_read(&nmi_active) <= 0)
-		return -ENODEV;
-
-	ops->start = timer_start;
-	ops->stop = timer_stop;
-	ops->cpu_type = "timer";
-	printk(KERN_INFO "oprofile: Using perfctr NMI timer interrupt.\n");
-	return 0;
-}
-#endif
-
-int __init oprofile_arch_init(struct oprofile_operations *ops)
-{
-	int ret = -ENODEV;
-
-#ifdef CONFIG_SPARC64
-	ret = op_nmi_timer_init(ops);
-	if (!ret)
-		return ret;
-#endif
-
-	return ret;
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
