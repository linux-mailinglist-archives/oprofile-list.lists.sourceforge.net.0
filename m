Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C2C2B247E
	for <lists+oprofile-list@lfdr.de>; Fri, 13 Nov 2020 20:28:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1kdejy-0000zI-EK; Fri, 13 Nov 2020 19:28:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <skhan@linuxfoundation.org>) id 1kdd9v-0003YQ-Qi
 for oprofile-list@lists.sourceforge.net; Fri, 13 Nov 2020 17:46:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DkXFGk6I0ftq147+tviBntyoQUaQXSxzVtForeH2b2I=; b=Cp3I6wrJwLWCktysbqixjfiltf
 fKi6zJ0H5s+cAnNBhQ2c/UyrRJgsDlgRK2ynKvmBn0xn6ULWklOiA/UAuNgc/51S4A9RPcuPhJ1+b
 PC30ZVWzyq09nObY1pS7zaMzGZ5fvLs/LsO+e94x5EVWdzQlr+zBknUKH6BL7+TMGdOA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DkXFGk6I0ftq147+tviBntyoQUaQXSxzVtForeH2b2I=; b=iFHI2fqROgVqtZ/OmA3VJF49l0
 UN6bxdNIZdgtQuqVIieqU5LudjZwYNqfe0Mcu8JU7URkd2ol8aXJsT06mhR3cQVKX8KkDvqosDrDX
 GMiBwCLwnUkpLU4Tg4HBvw/dFs30EempP59jNHgTEJd39pM9vA05xTVv+Wl1Svk+YzHs=;
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kdd9s-00AgAJ-0H
 for oprofile-list@lists.sourceforge.net; Fri, 13 Nov 2020 17:46:51 +0000
Received: by mail-il1-f196.google.com with SMTP id q1so9197487ilt.6
 for <oprofile-list@lists.sf.net>; Fri, 13 Nov 2020 09:46:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DkXFGk6I0ftq147+tviBntyoQUaQXSxzVtForeH2b2I=;
 b=V1eb2WQHPY0ZXpfWOadopbiNfS6oEGnzwvFXzKdyqtIjkiTUCWeai90oC3/G40IqjT
 rWt3UoZyuBXzrADF2A6e/WZ201YMzY2Cm0EdXiveJCBHn2/BJJLses8QGTNhguWGemE1
 ZR9W3T3n2qyOWtPivW3OrhLeRZCK1e1JdDaSc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DkXFGk6I0ftq147+tviBntyoQUaQXSxzVtForeH2b2I=;
 b=GBW6YvgSbsMdyXwpJ/QmHS0PlOFiQTAaPaLt07/v5dg9WfIsF5TaQd8iwI2iwWaG9A
 wnSyyOcss7LnyQ0zVo5x4ZfCufFDdOYARmVL1lODsiwC9msaFOgDI3qhECcex0mvMyUQ
 x9YI5okKy1jqSsdFfL8p9vISjdbIpb0bOdJ2IEakQxfPlHe26IbCgwFUKibZVmQPIpzi
 azwOzAsXgqFr9HI8hneYjY34/ykZomdhi0BQG8+/OhywAFrljABHW2BVhmzGuZGS5Ort
 eNQuVFCx31h6saZAM7AztYARFc9o8TUEIlrMm++hN42kBMmGu3gI1DrEiAkl8uIvtq0N
 S1hQ==
X-Gm-Message-State: AOAM5336/nbNN2j9Np+cZBQUpBMdL+I50zSkpMA42GLfGUZM7VrU3Nka
 m38ID0KVbBQhv2v3n1RincSWNDj63RxEGQ==
X-Google-Smtp-Source: ABdhPJyvkWLA330BLwQL4aUJ5TeGKR0MUiiIa2fekfvHAE/e+cmZWZrmniX+7CK8UkVVHgTJQinoTw==
X-Received: by 2002:a92:1f19:: with SMTP id i25mr769862ile.198.1605289602222; 
 Fri, 13 Nov 2020 09:46:42 -0800 (PST)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id y14sm4772585ilb.66.2020.11.13.09.46.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Nov 2020 09:46:41 -0800 (PST)
From: Shuah Khan <skhan@linuxfoundation.org>
To: rric@kernel.org, gregkh@linuxfoundation.org, keescook@chromium.org,
 peterz@infradead.org
Subject: [PATCH v2 08/13] drivers/oprofile: convert stats to use seqnum_ops
Date: Fri, 13 Nov 2020 10:46:10 -0700
Message-Id: <648c2fabd395ae22e29cde4b2f8a7716952d28b4.1605287778.git.skhan@linuxfoundation.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1605287778.git.skhan@linuxfoundation.org>
References: <cover.1605287778.git.skhan@linuxfoundation.org>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linuxfoundation.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kdd9s-00AgAJ-0H
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
Cc: oprofile-list@lists.sf.net, linux-kernel@vger.kernel.org,
 Shuah Khan <skhan@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

Sequence Number api provides interfaces for unsigned atomic up counters
leveraging atomic_t and atomic64_t ops underneath.

atomic_t variables used for stats are atomic counters. Convert them
to use seqnum_ops.

Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
---
 drivers/oprofile/buffer_sync.c    |  9 +++++----
 drivers/oprofile/event_buffer.c   |  3 ++-
 drivers/oprofile/oprof.c          |  3 ++-
 drivers/oprofile/oprofile_stats.c | 11 ++++++-----
 drivers/oprofile/oprofile_stats.h | 11 ++++++-----
 drivers/oprofile/oprofilefs.c     |  3 ++-
 include/linux/oprofile.h          |  3 ++-
 7 files changed, 25 insertions(+), 18 deletions(-)

diff --git a/drivers/oprofile/buffer_sync.c b/drivers/oprofile/buffer_sync.c
index cc917865f13a..5c10b7d5d076 100644
--- a/drivers/oprofile/buffer_sync.c
+++ b/drivers/oprofile/buffer_sync.c
@@ -34,6 +34,7 @@
 #include <linux/sched/mm.h>
 #include <linux/sched/task.h>
 #include <linux/gfp.h>
+#include <linux/seqnum_ops.h>
 
 #include "oprofile_stats.h"
 #include "event_buffer.h"
@@ -347,7 +348,7 @@ static void add_data(struct op_entry *entry, struct mm_struct *mm)
 		if (cookie == NO_COOKIE)
 			offset = pc;
 		if (cookie == INVALID_COOKIE) {
-			atomic_inc(&oprofile_stats.sample_lost_no_mapping);
+			seqnum32_inc_return(&oprofile_stats.sample_lost_no_mapping);
 			offset = pc;
 		}
 		if (cookie != last_cookie) {
@@ -391,14 +392,14 @@ add_sample(struct mm_struct *mm, struct op_sample *s, int in_kernel)
 	/* add userspace sample */
 
 	if (!mm) {
-		atomic_inc(&oprofile_stats.sample_lost_no_mm);
+		seqnum32_inc_return(&oprofile_stats.sample_lost_no_mm);
 		return 0;
 	}
 
 	cookie = lookup_dcookie(mm, s->eip, &offset);
 
 	if (cookie == INVALID_COOKIE) {
-		atomic_inc(&oprofile_stats.sample_lost_no_mapping);
+		seqnum32_inc_return(&oprofile_stats.sample_lost_no_mapping);
 		return 0;
 	}
 
@@ -556,7 +557,7 @@ void sync_buffer(int cpu)
 		/* ignore backtraces if failed to add a sample */
 		if (state == sb_bt_start) {
 			state = sb_bt_ignore;
-			atomic_inc(&oprofile_stats.bt_lost_no_mapping);
+			seqnum32_inc_return(&oprofile_stats.bt_lost_no_mapping);
 		}
 	}
 	release_mm(mm);
diff --git a/drivers/oprofile/event_buffer.c b/drivers/oprofile/event_buffer.c
index 6c9edc8bbc95..2e2ff87b2a5d 100644
--- a/drivers/oprofile/event_buffer.c
+++ b/drivers/oprofile/event_buffer.c
@@ -19,6 +19,7 @@
 #include <linux/dcookies.h>
 #include <linux/fs.h>
 #include <linux/uaccess.h>
+#include <linux/seqnum_ops.h>
 
 #include "oprof.h"
 #include "event_buffer.h"
@@ -53,7 +54,7 @@ void add_event_entry(unsigned long value)
 	}
 
 	if (buffer_pos == buffer_size) {
-		atomic_inc(&oprofile_stats.event_lost_overflow);
+		seqnum32_inc_return(&oprofile_stats.event_lost_overflow);
 		return;
 	}
 
diff --git a/drivers/oprofile/oprof.c b/drivers/oprofile/oprof.c
index ed2c3ec07024..0f65235fb760 100644
--- a/drivers/oprofile/oprof.c
+++ b/drivers/oprofile/oprof.c
@@ -15,6 +15,7 @@
 #include <linux/workqueue.h>
 #include <linux/time.h>
 #include <linux/mutex.h>
+#include <linux/seqnum_ops.h>
 
 #include "oprof.h"
 #include "event_buffer.h"
@@ -110,7 +111,7 @@ static void switch_worker(struct work_struct *work)
 	if (oprofile_ops.switch_events())
 		return;
 
-	atomic_inc(&oprofile_stats.multiplex_counter);
+	seqnum32_inc_return(&oprofile_stats.multiplex_counter);
 	start_switch_worker();
 }
 
diff --git a/drivers/oprofile/oprofile_stats.c b/drivers/oprofile/oprofile_stats.c
index 59659cea4582..5ad52a4ba5a2 100644
--- a/drivers/oprofile/oprofile_stats.c
+++ b/drivers/oprofile/oprofile_stats.c
@@ -11,6 +11,7 @@
 #include <linux/smp.h>
 #include <linux/cpumask.h>
 #include <linux/threads.h>
+#include <linux/seqnum_ops.h>
 
 #include "oprofile_stats.h"
 #include "cpu_buffer.h"
@@ -30,11 +31,11 @@ void oprofile_reset_stats(void)
 		cpu_buf->sample_invalid_eip = 0;
 	}
 
-	atomic_set(&oprofile_stats.sample_lost_no_mm, 0);
-	atomic_set(&oprofile_stats.sample_lost_no_mapping, 0);
-	atomic_set(&oprofile_stats.event_lost_overflow, 0);
-	atomic_set(&oprofile_stats.bt_lost_no_mapping, 0);
-	atomic_set(&oprofile_stats.multiplex_counter, 0);
+	seqnum32_init(&oprofile_stats.sample_lost_no_mm);
+	seqnum32_init(&oprofile_stats.sample_lost_no_mapping);
+	seqnum32_init(&oprofile_stats.event_lost_overflow);
+	seqnum32_init(&oprofile_stats.bt_lost_no_mapping);
+	seqnum32_init(&oprofile_stats.multiplex_counter);
 }
 
 
diff --git a/drivers/oprofile/oprofile_stats.h b/drivers/oprofile/oprofile_stats.h
index 1fc622bd1834..229bcbb16527 100644
--- a/drivers/oprofile/oprofile_stats.h
+++ b/drivers/oprofile/oprofile_stats.h
@@ -11,13 +11,14 @@
 #define OPROFILE_STATS_H
 
 #include <linux/atomic.h>
+#include <linux/seqnum_ops.h>
 
 struct oprofile_stat_struct {
-	atomic_t sample_lost_no_mm;
-	atomic_t sample_lost_no_mapping;
-	atomic_t bt_lost_no_mapping;
-	atomic_t event_lost_overflow;
-	atomic_t multiplex_counter;
+	struct seqnum32 sample_lost_no_mm;
+	struct seqnum32 sample_lost_no_mapping;
+	struct seqnum32 bt_lost_no_mapping;
+	struct seqnum32 event_lost_overflow;
+	struct seqnum32 multiplex_counter;
 };
 
 extern struct oprofile_stat_struct oprofile_stats;
diff --git a/drivers/oprofile/oprofilefs.c b/drivers/oprofile/oprofilefs.c
index 0875f2f122b3..c5749b9aca11 100644
--- a/drivers/oprofile/oprofilefs.c
+++ b/drivers/oprofile/oprofilefs.c
@@ -17,6 +17,7 @@
 #include <linux/fs_context.h>
 #include <linux/pagemap.h>
 #include <linux/uaccess.h>
+#include <linux/seqnum_ops.h>
 
 #include "oprof.h"
 
@@ -193,7 +194,7 @@ static const struct file_operations atomic_ro_fops = {
 
 
 int oprofilefs_create_ro_atomic(struct dentry *root,
-	char const *name, atomic_t *val)
+	char const *name, struct seqnum32 *val)
 {
 	return __oprofilefs_create_file(root, name,
 					&atomic_ro_fops, 0444, val);
diff --git a/include/linux/oprofile.h b/include/linux/oprofile.h
index b2a0f15f11fe..f770254a0c8a 100644
--- a/include/linux/oprofile.h
+++ b/include/linux/oprofile.h
@@ -19,6 +19,7 @@
 #include <linux/errno.h>
 #include <linux/printk.h>
 #include <linux/atomic.h>
+#include <linux/seqnum_ops.h>
  
 /* Each escaped entry is prefixed by ESCAPE_CODE
  * then one of the following codes, then the
@@ -140,7 +141,7 @@ int oprofilefs_create_ro_ulong(struct dentry * root,
  
 /** Create a file for read-only access to an atomic_t. */
 int oprofilefs_create_ro_atomic(struct dentry * root,
-	char const * name, atomic_t * val);
+	char const *name, struct seqnum32 *val);
  
 /** create a directory */
 struct dentry *oprofilefs_mkdir(struct dentry *parent, char const *name);
-- 
2.27.0



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
