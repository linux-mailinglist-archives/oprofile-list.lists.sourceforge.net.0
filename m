Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5832F6A0B
	for <lists+oprofile-list@lfdr.de>; Thu, 14 Jan 2021 19:54:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l07la-0003Xz-OD; Thu, 14 Jan 2021 18:54:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <viresh.kumar@linaro.org>) id 1l01Nz-0001vo-Sx
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 12:05:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q0McOdATjNEHYkLOEvz1zjN4XHNhFMjCgtMnb3W8314=; b=k3fHSihQcY88+2GNstTG7Q/nA1
 4dZqnsecreq8IFsfSG3LjM+7FAibipsnot2+kLE6g4CA7pyZG6gaGLyoRNRdmPQEBngKKGD9ofgsZ
 jEOvKvotzHw0X7+eTufRA58+MSO5Idq9QZQR8QL4A7AhCHundg+fdg353TuDv7NF+klk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Q0McOdATjNEHYkLOEvz1zjN4XHNhFMjCgtMnb3W8314=; b=O/4FdFZoLGY4JiWeymd2/qdbqH
 qiJB8zBe7u8hsKQqvE8/saeRHBSV8TlTj2e6oajMq6KLuFZ1cx9rKSC8hXit49Fw35d6Hwd3MFEcf
 fvLXzXHPg0IJX6iO0MjrIghskG8jq1mduCaSrmrKI9mreafMniGeoYJTJqn6hLrUdO74=;
Received: from mail-oi1-f177.google.com ([209.85.167.177])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l01Nv-00FYhw-A7
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 12:05:55 +0000
Received: by mail-oi1-f177.google.com with SMTP id q205so5586334oig.13
 for <oprofile-list@lists.sf.net>; Thu, 14 Jan 2021 04:05:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q0McOdATjNEHYkLOEvz1zjN4XHNhFMjCgtMnb3W8314=;
 b=Sd50HFhONLzQzFC4fblI0++vnc/0QdT8EMR3mI7FOKHiHZVWNJAOvU6AqhPystE/MQ
 eRAg9S08qAHb+BU3kIXaqAz2X1FSto+n3Wqd7Nt4ab7EJOGUOLYUAyzTI11cqs9eo52L
 xjlyS7jPtSym9jV6Rf6VOk+XFeCEHIdMmuObOUIIB7EXWANYzHDy1FqCF5jsfCI6pSBJ
 8Vr4c7KbVuk9nkvqebwFcjEOoXS2WG/vpCeE+H+yLn21Dbt8Jkn1O65mpqGYAGPi3wOC
 BJGV0Lp4beAadZzLt82Q0iTuqGf5lGWfkOUDyu5fZTbG9mw5/fms0WCyP93tf66BGw5e
 Vrcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q0McOdATjNEHYkLOEvz1zjN4XHNhFMjCgtMnb3W8314=;
 b=lwirpZVTNzd/Dun0Y4kiwUCg/2DXO0OVi6Z72NS24kRNOChMBzrJ7NwfljSfrhu8ki
 HvoasKxQBDC1pLGB1ByNC2IArqy7hoc4WSKwpJ98JOKmdtd8OlSCdQ3RUGAjAGSDe5xa
 y+TS1R7BZb6zVxWvJqTsvmrMuTKThETDjal5R0BZPMKB7XwzHeQEYpdNUZjzHPH3cSBL
 P5AUDhj0m2xphG57F+SDmQ+y95DrM3BCgFu2FcqVjalGUpoxd0ae5ghjNlKrPLL6oTUM
 qQu6ea9IhCBDk3b0Ez6cotO+QwikfemHV9oyzuLz/ORTfGzquHObn1xRLAQvgpw9Ryld
 dphQ==
X-Gm-Message-State: AOAM532jL90Gwi0MSnAZxJZVdjpN9bl5EG/bTC0BgRF7wwmlkj9zWM1n
 Sc/dXozij9uLyYHIV/8thenRLvUUWIrFkw==
X-Google-Smtp-Source: ABdhPJy2xdRmsqQBrw4BJXAbBKJdzqmFKf9Mn/exuyEoqI7HrDnNVpmO1TfDjYGKCw7KGG3LYJVSGA==
X-Received: by 2002:a17:90a:df0d:: with SMTP id
 gp13mr4481893pjb.151.1610624187945; 
 Thu, 14 Jan 2021 03:36:27 -0800 (PST)
Received: from localhost ([122.172.85.111])
 by smtp.gmail.com with ESMTPSA id t25sm5391794pgv.30.2021.01.14.03.36.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 Jan 2021 03:36:27 -0800 (PST)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Robert Richter <rric@kernel.org>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Rich Felker <dalias@libc.org>
Subject: [PATCH 13/18] arch: sh: Remove CONFIG_OPROFILE support
Date: Thu, 14 Jan 2021 17:05:26 +0530
Message-Id: <6f759e387ced7033c98486edec9c6ae1b4797079.1610622251.git.viresh.kumar@linaro.org>
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.177 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.177 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l01Nv-00FYhw-A7
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
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org, anmar.oueja@linaro.org,
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
 arch/sh/Kconfig                          |  1 -
 arch/sh/Makefile                         |  1 -
 arch/sh/configs/espt_defconfig           |  1 -
 arch/sh/configs/migor_defconfig          |  1 -
 arch/sh/configs/r7780mp_defconfig        |  1 -
 arch/sh/configs/r7785rp_defconfig        |  1 -
 arch/sh/configs/rsk7201_defconfig        |  1 -
 arch/sh/configs/rsk7203_defconfig        |  1 -
 arch/sh/configs/rts7751r2d1_defconfig    |  1 -
 arch/sh/configs/rts7751r2dplus_defconfig |  1 -
 arch/sh/configs/sdk7786_defconfig        |  1 -
 arch/sh/configs/se7206_defconfig         |  1 -
 arch/sh/configs/sh03_defconfig           |  1 -
 arch/sh/configs/sh7724_generic_defconfig |  1 -
 arch/sh/configs/sh7763rdp_defconfig      |  1 -
 arch/sh/configs/sh7770_generic_defconfig |  1 -
 arch/sh/configs/shx3_defconfig           |  1 -
 arch/sh/oprofile/Makefile                | 16 -----
 arch/sh/oprofile/backtrace.c             | 80 ------------------------
 arch/sh/oprofile/common.c                | 64 -------------------
 20 files changed, 177 deletions(-)
 delete mode 100644 arch/sh/oprofile/Makefile
 delete mode 100644 arch/sh/oprofile/backtrace.c
 delete mode 100644 arch/sh/oprofile/common.c

diff --git a/arch/sh/Kconfig b/arch/sh/Kconfig
index 5fa580219a86..1e64da1d1de6 100644
--- a/arch/sh/Kconfig
+++ b/arch/sh/Kconfig
@@ -51,7 +51,6 @@ config SUPERH
 	select HAVE_MIXED_BREAKPOINTS_REGS
 	select HAVE_MOD_ARCH_SPECIFIC if DWARF_UNWINDER
 	select HAVE_NMI
-	select HAVE_OPROFILE
 	select HAVE_PATA_PLATFORM
 	select HAVE_PERF_EVENTS
 	select HAVE_REGS_AND_STACK_ACCESS_API
diff --git a/arch/sh/Makefile b/arch/sh/Makefile
index 2faebfd72eca..3bcbf52fb30e 100644
--- a/arch/sh/Makefile
+++ b/arch/sh/Makefile
@@ -170,7 +170,6 @@ cpuincdir-$(CONFIG_CPU_SH4)	+= cpu-sh4
 cpuincdir-y			+= cpu-common	# Must be last
 
 drivers-y			+= arch/sh/drivers/
-drivers-$(CONFIG_OPROFILE)	+= arch/sh/oprofile/
 
 cflags-y	+= $(foreach d, $(cpuincdir-y), -I $(srctree)/arch/sh/include/$(d)) \
 		   $(foreach d, $(machdir-y), -I $(srctree)/arch/sh/include/$(d))
diff --git a/arch/sh/configs/espt_defconfig b/arch/sh/configs/espt_defconfig
index 9a988c347e9d..2804cb760a76 100644
--- a/arch/sh/configs/espt_defconfig
+++ b/arch/sh/configs/espt_defconfig
@@ -7,7 +7,6 @@ CONFIG_UTS_NS=y
 CONFIG_IPC_NS=y
 CONFIG_SLAB=y
 CONFIG_PROFILING=y
-CONFIG_OPROFILE=y
 CONFIG_MODULES=y
 # CONFIG_BLK_DEV_BSG is not set
 CONFIG_CPU_SUBTYPE_SH7763=y
diff --git a/arch/sh/configs/migor_defconfig b/arch/sh/configs/migor_defconfig
index a24cf8cd2cea..4859cd30cfc4 100644
--- a/arch/sh/configs/migor_defconfig
+++ b/arch/sh/configs/migor_defconfig
@@ -6,7 +6,6 @@ CONFIG_BLK_DEV_INITRD=y
 # CONFIG_CC_OPTIMIZE_FOR_SIZE is not set
 CONFIG_SLAB=y
 CONFIG_PROFILING=y
-CONFIG_OPROFILE=y
 CONFIG_MODULES=y
 # CONFIG_BLK_DEV_BSG is not set
 CONFIG_CPU_SUBTYPE_SH7722=y
diff --git a/arch/sh/configs/r7780mp_defconfig b/arch/sh/configs/r7780mp_defconfig
index e922659fdadb..f823cc6b18f9 100644
--- a/arch/sh/configs/r7780mp_defconfig
+++ b/arch/sh/configs/r7780mp_defconfig
@@ -7,7 +7,6 @@ CONFIG_LOG_BUF_SHIFT=14
 # CONFIG_EPOLL is not set
 CONFIG_SLAB=y
 CONFIG_PROFILING=y
-CONFIG_OPROFILE=m
 CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
 # CONFIG_BLK_DEV_BSG is not set
diff --git a/arch/sh/configs/r7785rp_defconfig b/arch/sh/configs/r7785rp_defconfig
index 5978866358ec..f96bc20d4b1a 100644
--- a/arch/sh/configs/r7785rp_defconfig
+++ b/arch/sh/configs/r7785rp_defconfig
@@ -9,7 +9,6 @@ CONFIG_IKCONFIG_PROC=y
 CONFIG_LOG_BUF_SHIFT=14
 CONFIG_SLAB=y
 CONFIG_PROFILING=y
-CONFIG_OPROFILE=y
 CONFIG_KPROBES=y
 CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
diff --git a/arch/sh/configs/rsk7201_defconfig b/arch/sh/configs/rsk7201_defconfig
index 841809b5c2dc..e41526120be1 100644
--- a/arch/sh/configs/rsk7201_defconfig
+++ b/arch/sh/configs/rsk7201_defconfig
@@ -12,7 +12,6 @@ CONFIG_BLK_DEV_INITRD=y
 # CONFIG_AIO is not set
 CONFIG_SLOB=y
 CONFIG_PROFILING=y
-CONFIG_OPROFILE=y
 CONFIG_MODULES=y
 # CONFIG_BLK_DEV_BSG is not set
 CONFIG_CPU_SUBTYPE_SH7201=y
diff --git a/arch/sh/configs/rsk7203_defconfig b/arch/sh/configs/rsk7203_defconfig
index 0055031664ad..6af08fa1ddf8 100644
--- a/arch/sh/configs/rsk7203_defconfig
+++ b/arch/sh/configs/rsk7203_defconfig
@@ -13,7 +13,6 @@ CONFIG_BLK_DEV_INITRD=y
 CONFIG_KALLSYMS_ALL=y
 CONFIG_SLOB=y
 CONFIG_PROFILING=y
-CONFIG_OPROFILE=y
 CONFIG_MODULES=y
 # CONFIG_BLK_DEV_BSG is not set
 CONFIG_CPU_SUBTYPE_SH7203=y
diff --git a/arch/sh/configs/rts7751r2d1_defconfig b/arch/sh/configs/rts7751r2d1_defconfig
index fc9c22152b08..96263a4912b7 100644
--- a/arch/sh/configs/rts7751r2d1_defconfig
+++ b/arch/sh/configs/rts7751r2d1_defconfig
@@ -3,7 +3,6 @@ CONFIG_LOG_BUF_SHIFT=14
 # CONFIG_CC_OPTIMIZE_FOR_SIZE is not set
 CONFIG_SLAB=y
 CONFIG_PROFILING=y
-CONFIG_OPROFILE=y
 CONFIG_MODULES=y
 # CONFIG_BLK_DEV_BSG is not set
 CONFIG_CPU_SUBTYPE_SH7751R=y
diff --git a/arch/sh/configs/rts7751r2dplus_defconfig b/arch/sh/configs/rts7751r2dplus_defconfig
index ff3fd6787fd6..92e586e6c974 100644
--- a/arch/sh/configs/rts7751r2dplus_defconfig
+++ b/arch/sh/configs/rts7751r2dplus_defconfig
@@ -3,7 +3,6 @@ CONFIG_LOG_BUF_SHIFT=14
 # CONFIG_CC_OPTIMIZE_FOR_SIZE is not set
 CONFIG_SLAB=y
 CONFIG_PROFILING=y
-CONFIG_OPROFILE=y
 CONFIG_MODULES=y
 # CONFIG_BLK_DEV_BSG is not set
 CONFIG_CPU_SUBTYPE_SH7751R=y
diff --git a/arch/sh/configs/sdk7786_defconfig b/arch/sh/configs/sdk7786_defconfig
index 61bec46ebd66..e804347cf68c 100644
--- a/arch/sh/configs/sdk7786_defconfig
+++ b/arch/sh/configs/sdk7786_defconfig
@@ -35,7 +35,6 @@ CONFIG_RD_LZO=y
 # CONFIG_COMPAT_BRK is not set
 CONFIG_SLAB=y
 CONFIG_PROFILING=y
-CONFIG_OPROFILE=m
 CONFIG_KPROBES=y
 CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
diff --git a/arch/sh/configs/se7206_defconfig b/arch/sh/configs/se7206_defconfig
index ff5bb4489922..315b04a8dd2f 100644
--- a/arch/sh/configs/se7206_defconfig
+++ b/arch/sh/configs/se7206_defconfig
@@ -23,7 +23,6 @@ CONFIG_KALLSYMS_ALL=y
 # CONFIG_COMPAT_BRK is not set
 CONFIG_SLOB=y
 CONFIG_PROFILING=y
-CONFIG_OPROFILE=y
 CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
 # CONFIG_BLK_DEV_BSG is not set
diff --git a/arch/sh/configs/sh03_defconfig b/arch/sh/configs/sh03_defconfig
index f0073ed39947..f0ce5b0057ed 100644
--- a/arch/sh/configs/sh03_defconfig
+++ b/arch/sh/configs/sh03_defconfig
@@ -5,7 +5,6 @@ CONFIG_LOG_BUF_SHIFT=14
 CONFIG_BLK_DEV_INITRD=y
 CONFIG_SLAB=y
 CONFIG_PROFILING=y
-CONFIG_OPROFILE=m
 CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
 CONFIG_MODULE_FORCE_UNLOAD=y
diff --git a/arch/sh/configs/sh7724_generic_defconfig b/arch/sh/configs/sh7724_generic_defconfig
index 9adee9010319..2c46c0004780 100644
--- a/arch/sh/configs/sh7724_generic_defconfig
+++ b/arch/sh/configs/sh7724_generic_defconfig
@@ -4,7 +4,6 @@ CONFIG_CGROUPS=y
 # CONFIG_UID16 is not set
 # CONFIG_COMPAT_BRK is not set
 CONFIG_PROFILING=y
-CONFIG_OPROFILE=y
 # CONFIG_BLK_DEV_BSG is not set
 CONFIG_CPU_SUBTYPE_SH7724=y
 CONFIG_NO_HZ=y
diff --git a/arch/sh/configs/sh7763rdp_defconfig b/arch/sh/configs/sh7763rdp_defconfig
index 26c5fd02c87a..8a6a446f9eb8 100644
--- a/arch/sh/configs/sh7763rdp_defconfig
+++ b/arch/sh/configs/sh7763rdp_defconfig
@@ -7,7 +7,6 @@ CONFIG_UTS_NS=y
 CONFIG_IPC_NS=y
 CONFIG_SLAB=y
 CONFIG_PROFILING=y
-CONFIG_OPROFILE=y
 CONFIG_MODULES=y
 # CONFIG_BLK_DEV_BSG is not set
 CONFIG_CPU_SUBTYPE_SH7763=y
diff --git a/arch/sh/configs/sh7770_generic_defconfig b/arch/sh/configs/sh7770_generic_defconfig
index c17590f0df67..88193153e51b 100644
--- a/arch/sh/configs/sh7770_generic_defconfig
+++ b/arch/sh/configs/sh7770_generic_defconfig
@@ -4,7 +4,6 @@ CONFIG_CGROUPS=y
 # CONFIG_UID16 is not set
 # CONFIG_COMPAT_BRK is not set
 CONFIG_PROFILING=y
-CONFIG_OPROFILE=y
 # CONFIG_BLK_DEV_BSG is not set
 CONFIG_CPU_SUBTYPE_SH7770=y
 CONFIG_SH_PCLK_FREQ=41666666
diff --git a/arch/sh/configs/shx3_defconfig b/arch/sh/configs/shx3_defconfig
index dc2be2514b62..32ec6eb1eabc 100644
--- a/arch/sh/configs/shx3_defconfig
+++ b/arch/sh/configs/shx3_defconfig
@@ -22,7 +22,6 @@ CONFIG_PID_NS=y
 CONFIG_KALLSYMS_ALL=y
 CONFIG_SLOB=y
 CONFIG_PROFILING=y
-CONFIG_OPROFILE=y
 CONFIG_KPROBES=y
 CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
diff --git a/arch/sh/oprofile/Makefile b/arch/sh/oprofile/Makefile
deleted file mode 100644
index d478dd8dac0b..000000000000
--- a/arch/sh/oprofile/Makefile
+++ /dev/null
@@ -1,16 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-obj-$(CONFIG_OPROFILE) += oprofile.o
-
-CFLAGS_common.o	+= -DUTS_MACHINE='"$(UTS_MACHINE)"'
-
-DRIVER_OBJS = $(addprefix ../../../drivers/oprofile/, \
-		oprof.o cpu_buffer.o buffer_sync.o \
-		event_buffer.o oprofile_files.o \
-		oprofilefs.o oprofile_stats.o \
-		timer_int.o )
-
-ifeq ($(CONFIG_HW_PERF_EVENTS),y)
-DRIVER_OBJS += $(addprefix ../../../drivers/oprofile/, oprofile_perf.o)
-endif
-
-oprofile-y	:= $(DRIVER_OBJS) common.o backtrace.o
diff --git a/arch/sh/oprofile/backtrace.c b/arch/sh/oprofile/backtrace.c
deleted file mode 100644
index cc16cf86cd92..000000000000
--- a/arch/sh/oprofile/backtrace.c
+++ /dev/null
@@ -1,80 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * SH specific backtracing code for oprofile
- *
- * Copyright 2007 STMicroelectronics Ltd.
- *
- * Author: Dave Peverley <dpeverley@mpc-data.co.uk>
- *
- * Based on ARM oprofile backtrace code by Richard Purdie and in turn, i386
- * oprofile backtrace code by John Levon, David Smith
- */
-#include <linux/oprofile.h>
-#include <linux/sched.h>
-#include <linux/kallsyms.h>
-#include <linux/mm.h>
-#include <asm/unwinder.h>
-#include <asm/ptrace.h>
-#include <linux/uaccess.h>
-#include <asm/sections.h>
-#include <asm/stacktrace.h>
-
-static void backtrace_address(void *data, unsigned long addr, int reliable)
-{
-	unsigned int *depth = data;
-
-	if ((*depth)--)
-		oprofile_add_trace(addr);
-}
-
-static struct stacktrace_ops backtrace_ops = {
-	.address = backtrace_address,
-};
-
-/* Limit to stop backtracing too far. */
-static int backtrace_limit = 20;
-
-static unsigned long *
-user_backtrace(unsigned long *stackaddr, struct pt_regs *regs)
-{
-	unsigned long buf_stack;
-
-	/* Also check accessibility of address */
-	if (!access_ok(stackaddr, sizeof(unsigned long)))
-		return NULL;
-
-	if (__copy_from_user_inatomic(&buf_stack, stackaddr, sizeof(unsigned long)))
-		return NULL;
-
-	/* Quick paranoia check */
-	if (buf_stack & 3)
-		return NULL;
-
-	oprofile_add_trace(buf_stack);
-
-	stackaddr++;
-
-	return stackaddr;
-}
-
-void sh_backtrace(struct pt_regs * const regs, unsigned int depth)
-{
-	unsigned long *stackaddr;
-
-	/*
-	 * Paranoia - clip max depth as we could get lost in the weeds.
-	 */
-	if (depth > backtrace_limit)
-		depth = backtrace_limit;
-
-	stackaddr = (unsigned long *)kernel_stack_pointer(regs);
-	if (!user_mode(regs)) {
-		if (depth)
-			unwind_stack(NULL, regs, stackaddr,
-				     &backtrace_ops, &depth);
-		return;
-	}
-
-	while (depth-- && (stackaddr != NULL))
-		stackaddr = user_backtrace(stackaddr, regs);
-}
diff --git a/arch/sh/oprofile/common.c b/arch/sh/oprofile/common.c
deleted file mode 100644
index e4dd5d5a1115..000000000000
--- a/arch/sh/oprofile/common.c
+++ /dev/null
@@ -1,64 +0,0 @@
-/*
- * arch/sh/oprofile/init.c
- *
- * Copyright (C) 2003 - 2010  Paul Mundt
- *
- * Based on arch/mips/oprofile/common.c:
- *
- *	Copyright (C) 2004, 2005 Ralf Baechle
- *	Copyright (C) 2005 MIPS Technologies, Inc.
- *
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- */
-#include <linux/kernel.h>
-#include <linux/oprofile.h>
-#include <linux/init.h>
-#include <linux/errno.h>
-#include <linux/smp.h>
-#include <linux/perf_event.h>
-#include <linux/slab.h>
-#include <asm/processor.h>
-
-extern void sh_backtrace(struct pt_regs * const regs, unsigned int depth);
-
-#ifdef CONFIG_HW_PERF_EVENTS
-/*
- * This will need to be reworked when multiple PMUs are supported.
- */
-static char *sh_pmu_op_name;
-
-char *op_name_from_perf_id(void)
-{
-	return sh_pmu_op_name;
-}
-
-int __init oprofile_arch_init(struct oprofile_operations *ops)
-{
-	ops->backtrace = sh_backtrace;
-
-	if (perf_num_counters() == 0)
-		return -ENODEV;
-
-	sh_pmu_op_name = kasprintf(GFP_KERNEL, "%s/%s",
-				   UTS_MACHINE, perf_pmu_name());
-	if (unlikely(!sh_pmu_op_name))
-		return -ENOMEM;
-
-	return oprofile_perf_init(ops);
-}
-
-void oprofile_arch_exit(void)
-{
-	oprofile_perf_exit();
-	kfree(sh_pmu_op_name);
-}
-#else
-int __init oprofile_arch_init(struct oprofile_operations *ops)
-{
-	ops->backtrace = sh_backtrace;
-	return -ENODEV;
-}
-void oprofile_arch_exit(void) {}
-#endif /* CONFIG_HW_PERF_EVENTS */
-- 
2.25.0.rc1.19.g042ed3e048af



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
