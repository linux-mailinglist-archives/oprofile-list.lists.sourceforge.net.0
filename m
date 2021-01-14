Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8DF2F6A13
	for <lists+oprofile-list@lfdr.de>; Thu, 14 Jan 2021 19:54:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l07lb-0003Zc-7B; Thu, 14 Jan 2021 18:54:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <viresh.kumar@linaro.org>) id 1l01Pe-0006Hw-8y
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 12:07:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K53rIUWFg+2NzMpnNP/wzeIo2pw3X/PtpyXjjqm6X/A=; b=TY+2g1fdX5NAnm1r8IHzn4vSLm
 TIldPiBAzZQjsrZUWa0CfSR9J7ZUpgc2YbT7apdnYZohtWjZi483vk+gCs4ce/w5ny+Rh95Lgz1Oi
 JuzsVQjiuh4h1MxVsPr2q+g7bXy/FA4Gt2vJc8PcfvSeH8fcHLqddnSEIbZtvvzgtIVY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=K53rIUWFg+2NzMpnNP/wzeIo2pw3X/PtpyXjjqm6X/A=; b=an35ZIYHyNs4NpBKccbYHrwxr8
 sZkktxUsM6q7Llqc+DI8l6xDResXBH/1aT44BW897ZTeYAOI/EIqaKOGDDP37WAJvDrBm3sxYZYSE
 2xZpNDvLp5F5z2S3VfVcbV5oEn5jZjittPOmdWM4NhsIUeLuwNiMvSOcbG06PgoNb72k=;
Received: from mail-oi1-f171.google.com ([209.85.167.171])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l01PN-00FZBR-7s
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 12:07:29 +0000
Received: by mail-oi1-f171.google.com with SMTP id q205so5590247oig.13
 for <oprofile-list@lists.sf.net>; Thu, 14 Jan 2021 04:07:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K53rIUWFg+2NzMpnNP/wzeIo2pw3X/PtpyXjjqm6X/A=;
 b=yha5Sz7nrBOViBAUVVawiHrRfg7B0X6DVDhFqk/rTaSzFzSDjdbt60VG1Ti9mbUg0C
 MuXQdHMPnzu9sTUW57+4FXGQu0jY0XygLy7vSOMsA79LE9WnmeDGxiNZlyYIrQs+uu4/
 Bi92yjJVJyrIy2Rn/1p3NrLfRib7aKX4X4/dgdQGYh4gJw0pss4jAx0+yK5bt9EN3oSZ
 wbhaQ0o4025GjZqU+da/+0cToWRVVpVVOxRM+baVJQZAYRAHT8nrLltqzjd7ksX4uyWI
 5lVOUidpWjZ90eZnZOMX/bgoKBiW9owFi++iVdSS1WPHhek9A9HSh+JrP5Rjaw1DobfM
 z8Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K53rIUWFg+2NzMpnNP/wzeIo2pw3X/PtpyXjjqm6X/A=;
 b=ubk85R4J9lDw0Pc1LlRPOyblH80iWgj87tPX/RgyWHNTTO7eDruLEXB4M3klWVy90y
 Q0J94hkH4Uh9DU+TKsX88oVLmTWn7JxaZHs4ipPwTFchn2KGK5YoY5UadcIZDOSWjJVf
 kub7+Q9AHHNIC6cTD9Xi1MjxG9KCBgE1M6e53THAhUvi5+G/nJ6HQS3usAyePEkyCEaV
 PnH/KaAmdtTWn1T2tDnbDRVHa+cSI0/wrt4iabmfAXIL1BzfjR/F8jBkj63U7aAgMzwf
 IWZawJPvb32L7oGvSN9xy57vXwK3Hj/4S5RLVUeJnd/l21e65KRED5NnkPPr22D7m0Yq
 jSkQ==
X-Gm-Message-State: AOAM5334Ov5xsH3NQ+Ahe+Ty1gFPxXwPoFRXZLyGYMHrOXnpG2PDZpVO
 6fCfIc86Ocxj5rc1Z+rLTs5ZLYo+gsJRBw==
X-Google-Smtp-Source: ABdhPJyrhQSFTRly6eOnUfGEEGNcN9Mp6TDf4H+ZJZfpCZV+Ixo+RcxAdTtUVRtYMi7nHjuWFGAVwA==
X-Received: by 2002:a17:90a:de95:: with SMTP id
 n21mr1003624pjv.7.1610624183140; 
 Thu, 14 Jan 2021 03:36:23 -0800 (PST)
Received: from localhost ([122.172.85.111])
 by smtp.gmail.com with ESMTPSA id h5sm5618766pgl.86.2021.01.14.03.36.21
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 Jan 2021 03:36:22 -0800 (PST)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Robert Richter <rric@kernel.org>, Heiko Carstens <hca@linux.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>
Subject: [PATCH 12/18] arch: s390: Remove CONFIG_OPROFILE support
Date: Thu, 14 Jan 2021 17:05:25 +0530
Message-Id: <d898acaf9320125e9c23b18a16ecd88d70f24170.1610622251.git.viresh.kumar@linaro.org>
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
 trust [209.85.167.171 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.171 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l01PN-00FZBR-7s
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
Cc: Arnd Bergmann <arnd@kernel.org>, linux-s390@vger.kernel.org,
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
 arch/s390/Kconfig                 |  1 -
 arch/s390/Makefile                |  3 ---
 arch/s390/configs/debug_defconfig |  1 -
 arch/s390/configs/defconfig       |  1 -
 arch/s390/oprofile/Makefile       | 10 ---------
 arch/s390/oprofile/init.c         | 37 -------------------------------
 6 files changed, 53 deletions(-)
 delete mode 100644 arch/s390/oprofile/Makefile
 delete mode 100644 arch/s390/oprofile/init.c

diff --git a/arch/s390/Kconfig b/arch/s390/Kconfig
index c72874f09741..f84444ef3860 100644
--- a/arch/s390/Kconfig
+++ b/arch/s390/Kconfig
@@ -174,7 +174,6 @@ config S390
 	select HAVE_MOD_ARCH_SPECIFIC
 	select HAVE_NMI
 	select HAVE_NOP_MCOUNT
-	select HAVE_OPROFILE
 	select HAVE_PCI
 	select HAVE_PERF_EVENTS
 	select HAVE_PERF_REGS
diff --git a/arch/s390/Makefile b/arch/s390/Makefile
index 8db267d2a543..e443ed9947bd 100644
--- a/arch/s390/Makefile
+++ b/arch/s390/Makefile
@@ -134,9 +134,6 @@ core-y		+= arch/s390/
 libs-y		+= arch/s390/lib/
 drivers-y	+= drivers/s390/
 
-# must be linked after kernel
-drivers-$(CONFIG_OPROFILE)	+= arch/s390/oprofile/
-
 boot		:= arch/s390/boot
 syscalls	:= arch/s390/kernel/syscalls
 tools		:= arch/s390/tools
diff --git a/arch/s390/configs/debug_defconfig b/arch/s390/configs/debug_defconfig
index c4f6ff98a612..8b94347705e5 100644
--- a/arch/s390/configs/debug_defconfig
+++ b/arch/s390/configs/debug_defconfig
@@ -57,7 +57,6 @@ CONFIG_CMM=m
 CONFIG_APPLDATA_BASE=y
 CONFIG_KVM=m
 CONFIG_S390_UNWIND_SELFTEST=y
-CONFIG_OPROFILE=m
 CONFIG_KPROBES=y
 CONFIG_JUMP_LABEL=y
 CONFIG_STATIC_KEYS_SELFTEST=y
diff --git a/arch/s390/configs/defconfig b/arch/s390/configs/defconfig
index 51135893cffe..9db1232e09f4 100644
--- a/arch/s390/configs/defconfig
+++ b/arch/s390/configs/defconfig
@@ -55,7 +55,6 @@ CONFIG_CMM=m
 CONFIG_APPLDATA_BASE=y
 CONFIG_KVM=m
 CONFIG_S390_UNWIND_SELFTEST=m
-CONFIG_OPROFILE=m
 CONFIG_KPROBES=y
 CONFIG_JUMP_LABEL=y
 # CONFIG_GCC_PLUGINS is not set
diff --git a/arch/s390/oprofile/Makefile b/arch/s390/oprofile/Makefile
deleted file mode 100644
index 36261f9d360b..000000000000
--- a/arch/s390/oprofile/Makefile
+++ /dev/null
@@ -1,10 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-obj-$(CONFIG_OPROFILE) += oprofile.o
-
-DRIVER_OBJS = $(addprefix ../../../drivers/oprofile/, \
-		oprof.o cpu_buffer.o buffer_sync.o \
-		event_buffer.o oprofile_files.o \
-		oprofilefs.o oprofile_stats.o  \
-		timer_int.o )
-
-oprofile-y :=	$(DRIVER_OBJS) init.o
diff --git a/arch/s390/oprofile/init.c b/arch/s390/oprofile/init.c
deleted file mode 100644
index 7441857df51b..000000000000
--- a/arch/s390/oprofile/init.c
+++ /dev/null
@@ -1,37 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- * S390 Version
- *   Copyright IBM Corp. 2002, 2011
- *   Author(s): Thomas Spatzier (tspat@de.ibm.com)
- *   Author(s): Mahesh Salgaonkar (mahesh@linux.vnet.ibm.com)
- *   Author(s): Heinz Graalfs (graalfs@linux.vnet.ibm.com)
- *   Author(s): Andreas Krebbel (krebbel@linux.vnet.ibm.com)
- *
- * @remark Copyright 2002-2011 OProfile authors
- */
-
-#include <linux/oprofile.h>
-#include <linux/init.h>
-#include <asm/processor.h>
-#include <asm/unwind.h>
-
-static void s390_backtrace(struct pt_regs *regs, unsigned int depth)
-{
-	struct unwind_state state;
-
-	unwind_for_each_frame(&state, current, regs, 0) {
-		if (depth-- == 0)
-			break;
-		oprofile_add_trace(state.ip);
-	}
-}
-
-int __init oprofile_arch_init(struct oprofile_operations *ops)
-{
-	ops->backtrace = s390_backtrace;
-	return 0;
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
