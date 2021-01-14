Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 975D32F6A09
	for <lists+oprofile-list@lfdr.de>; Thu, 14 Jan 2021 19:54:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l07la-0003X6-BH; Thu, 14 Jan 2021 18:54:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <viresh.kumar@linaro.org>) id 1l01Ks-00068L-Po
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 12:02:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4KknPcU14oAn6dzl/c3Edg+OCaB8DryL02Uf90ePZlw=; b=eeQ/J3K/hj8sZ5WKW9tTYJ8NSf
 XAloTgg6ibpWrF+Q+Oow7lZtCvlzpyCA0Z++rZ7/JryjP3SO5L/vHL8FN6b6ow4C1Uos0pqcQWIRr
 POkNK/yLCXTlvpMPefujBATiBt0lZ5rwDoFIzkDjNrnSvchFDIRZdBZ84gqg3Yk6wPd0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4KknPcU14oAn6dzl/c3Edg+OCaB8DryL02Uf90ePZlw=; b=P+cYdvD7gWfg8s5O2C5ibldnt/
 9ZVvHZBLXJxTlPQ1a8/GGwoKhu2mL/Mz6jXZgqrzAcn6m3t86tz+hzwnfWJo3r6aK6o7v9XiUNVm5
 E9+DTcxbVa3+X3C6wv+x21iiXNHuviLusyyOqw9apV8FYjuZaa00NIXEtNvIC8yLin64=;
Received: from mail-pj1-f43.google.com ([209.85.216.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l01Kl-008Tal-2w
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 12:02:42 +0000
Received: by mail-pj1-f43.google.com with SMTP id l23so3073683pjg.1
 for <oprofile-list@lists.sf.net>; Thu, 14 Jan 2021 04:02:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4KknPcU14oAn6dzl/c3Edg+OCaB8DryL02Uf90ePZlw=;
 b=kp5Ji1BSU4CgZgWD0QPhxWTsgcExYWvSvuaNABPB5hTr95W239seYxDXr3uXnFVoOL
 8mZeeWU3ZXk1n2ycUYcx+4wZGiP/z+kqQ/PGPzzg03uKdzPxnRmBH3YvKl3/IrLvIdW4
 E+TwaqLtTDQlFbaPj2V2CyIhJDWliADcWLX2CSZadvsgHHsX8CftPHChV1IX7AANXssc
 zItUWa/HHLCo+pKCIN3vkfvjFKc7Rak3ZOs9C7lSYJDIJNo3zGNUrApY++FTwyKFy13a
 kXoIqkIWg4kYqMMXVUzoW/mGrgZU25lrxH4VPv6RKn/Zpfh6oqnI2kiveI4/TtKjnaUe
 tftg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4KknPcU14oAn6dzl/c3Edg+OCaB8DryL02Uf90ePZlw=;
 b=lvb+QaLXm3Dor3tLcpIYMrlhBQ8Ak2uy196KcImi5jIpXmYNcN0rvTfGUN1dpfhRUy
 lkAwhcFtOa2vd+spfjAMZTB0ODTQm+GwF9FSpryyrYodvH/20mhQDuQe1zIkr0h7NopA
 8KLCi2/5O2xFuHpf6rXK21SPDYaYsgmOGFnecQXYo5GxZ+gBybJKXpG+Aqsb9Cdf51MW
 fPbLT6MdmWLm94eUJVwr3k3sBmoFwNO5eDwD7hmSwoJnBMlfHbgKNvAa6/6cmv9pmQFE
 luNHPS3ggiJVXhkbJsmFAp9BArW720pDQFFMrsXVULj3yucQoJFyD+Sqr4M5+5p5r873
 1tQg==
X-Gm-Message-State: AOAM531STzIr9DsydJ9mtqdSrl2IXzObkJzZanMT2GedU/TL8lsG+nlD
 UMeRbLkNg57FfqXvVlZiJrgSUWx6uM9YHQ==
X-Google-Smtp-Source: ABdhPJxIpjnVGrrszX3TsqasLIGta7qEXa/ZKTRnt0ZaKdqKO3e1trQ7Ndh8UU02B1GL0UZ7ZP7Zpw==
X-Received: by 2002:a17:902:bf44:b029:da:d140:6f91 with SMTP id
 u4-20020a170902bf44b02900dad1406f91mr7254131pls.51.1610624167614; 
 Thu, 14 Jan 2021 03:36:07 -0800 (PST)
Received: from localhost ([122.172.85.111])
 by smtp.gmail.com with ESMTPSA id a18sm5150737pfg.107.2021.01.14.03.36.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 Jan 2021 03:36:07 -0800 (PST)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Robert Richter <rric@kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>
Subject: [PATCH 09/18] arch: parisc: Remove CONFIG_OPROFILE support
Date: Thu, 14 Jan 2021 17:05:22 +0530
Message-Id: <1b3e210d98d419eba4d0d648a3a181fe2190dc67.1610622251.git.viresh.kumar@linaro.org>
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
 for more information. [URIs: infradead.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: movementarian.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: movementarian.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.43 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1l01Kl-008Tal-2w
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
 Vincent Guittot <vincent.guittot@linaro.org>, linux-parisc@vger.kernel.org,
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
 arch/parisc/Kconfig           |  1 -
 arch/parisc/Makefile          |  2 --
 arch/parisc/oprofile/Makefile | 10 ----------
 arch/parisc/oprofile/init.c   | 23 -----------------------
 4 files changed, 36 deletions(-)
 delete mode 100644 arch/parisc/oprofile/Makefile
 delete mode 100644 arch/parisc/oprofile/init.c

diff --git a/arch/parisc/Kconfig b/arch/parisc/Kconfig
index 78b17621ee4a..c2216e53fa81 100644
--- a/arch/parisc/Kconfig
+++ b/arch/parisc/Kconfig
@@ -4,7 +4,6 @@ config PARISC
 	select ARCH_32BIT_OFF_T if !64BIT
 	select ARCH_MIGHT_HAVE_PC_PARPORT
 	select HAVE_IDE
-	select HAVE_OPROFILE
 	select HAVE_FUNCTION_TRACER
 	select HAVE_FUNCTION_GRAPH_TRACER
 	select HAVE_SYSCALL_TRACEPOINTS
diff --git a/arch/parisc/Makefile b/arch/parisc/Makefile
index 5140c602207f..7d9f71aa829a 100644
--- a/arch/parisc/Makefile
+++ b/arch/parisc/Makefile
@@ -116,8 +116,6 @@ kernel-y			:= mm/ kernel/ math-emu/
 core-y	+= $(addprefix arch/parisc/, $(kernel-y))
 libs-y	+= arch/parisc/lib/ $(LIBGCC)
 
-drivers-$(CONFIG_OPROFILE)		+= arch/parisc/oprofile/
-
 boot	:= arch/parisc/boot
 
 PALO := $(shell if (which palo 2>&1); then : ; \
diff --git a/arch/parisc/oprofile/Makefile b/arch/parisc/oprofile/Makefile
deleted file mode 100644
index 86a1ccc328eb..000000000000
--- a/arch/parisc/oprofile/Makefile
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
-oprofile-y				:= $(DRIVER_OBJS) init.o
diff --git a/arch/parisc/oprofile/init.c b/arch/parisc/oprofile/init.c
deleted file mode 100644
index 026cba2af07a..000000000000
--- a/arch/parisc/oprofile/init.c
+++ /dev/null
@@ -1,23 +0,0 @@
-/**
- * @file init.c
- *
- * @remark Copyright 2002 OProfile authors
- * @remark Read the file COPYING
- *
- * @author John Levon <levon@movementarian.org>
- */
-
-#include <linux/errno.h>
-#include <linux/init.h>
-#include <linux/kernel.h>
-#include <linux/oprofile.h>
-
-int __init oprofile_arch_init(struct oprofile_operations *ops)
-{
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
