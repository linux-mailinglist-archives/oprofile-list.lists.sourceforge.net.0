Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D5FCE61E
	for <lists+oprofile-list@lfdr.de>; Mon,  7 Oct 2019 16:53:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1iHUOI-0000HP-BS; Mon, 07 Oct 2019 14:53:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <peterz@infradead.org>) id 1iHPW9-0003qz-2U
 for oprofile-list@lists.sourceforge.net; Mon, 07 Oct 2019 09:41:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Subject:Cc:To:
 From:Date:Message-Id:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/dXEM5OM4zrNkl3+H0fx7UYSDgq0oZpTD7FikSQnxaI=; b=cMcD0GTzHjBboS6Yj5C5tjpzKs
 bMJ74j97CYVgmbmjorOD8YTd5YW/9A4iLQ8TiIvKiJDprZusHzWJrMrbf4mluNeK664BklnVEM+D8
 buD5qhqjxYcf0svV+VHJNmwDtKUWcOSzm0M5v3M3n6W8PpBJJKNPIpZdXXpqFY0jHgts=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Subject:Cc:To:From:Date:Message-Id:
 Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/dXEM5OM4zrNkl3+H0fx7UYSDgq0oZpTD7FikSQnxaI=; b=Z
 D3VMXU0kKSoxvtf5FnclWFhVury38OfZnVN75r1R/q9OQATLJfwEaBJxrHQNNhN0+TGE1Y1ob2c1k
 7vIDtetzMyepjUPThpOmsbuaqLX5Fs5ayGxxX0DYzTiwMDmwZdQcLz9hlkAVybbxHGqCYLLm9Gc1l
 HjfSU0pFg6/UJgp0=;
Received: from merlin.infradead.org ([205.233.59.134])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iHPW5-0022Lq-31
 for oprofile-list@lists.sourceforge.net; Mon, 07 Oct 2019 09:41:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:References:
 Subject:Cc:To:From:Date:Message-Id:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/dXEM5OM4zrNkl3+H0fx7UYSDgq0oZpTD7FikSQnxaI=; b=OMlawtfiFjWyXrR7sjUfxe1Yv5
 J0JzLZN/SYuAGUo6UhE57rRHQb9TOp5i/td0ZD42YrBSRgnxv5RY+vhPGBJGrkOOwQ+EKGM73oicN
 Zxc6XJAIt5SbyCJuSdg+34KVWCq34uibK1oidBJrpKEJLqUX1sgFeOGKVJIi6gKIcAmaFfZkXWWZq
 GGZu58ndEkPrNnan3OcTTC1V9cYYX3/MrZlzlKDY8L9UKlvZD5umrq427MmzhSYKjP2mztXgzCUul
 E7H03O5NX613pPt/dQTkIESnZxZuZiq2cHf6nXsruN8uKsPydiCGWrlmqDeUpCKl+btD7VGp98Gvm
 Cah4e3cw==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHP6t-0000dP-V3; Mon, 07 Oct 2019 09:15:20 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 1EB49306C06;
 Mon,  7 Oct 2019 11:14:23 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 0)
 id 6DA0820245BBB; Mon,  7 Oct 2019 11:15:13 +0200 (CEST)
Message-Id: <20191007082700.086431635@infradead.org>
User-Agent: quilt/0.65
Date: Mon, 07 Oct 2019 10:25:43 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: x86@kernel.org
Subject: [PATCH v2 2/4] module: Fix up module_notifier return values.
References: <20191007082541.641469337@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iHPW5-0022Lq-31
X-Mailman-Approved-At: Mon, 07 Oct 2019 14:53:36 +0000
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
Cc: Song Liu <songliubraving@fb.com>, peterz@infradead.org,
 Alexei Starovoitov <ast@kernel.org>, namit@vmware.com, hpa@zytor.com,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>, mingo@kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>, Ingo Molnar <mingo@redhat.com>,
 oprofile-list@lists.sf.net, Yonghong Song <yhs@fb.com>,
 Robert Richter <rric@kernel.org>, inux-kernel@vger.kernel.org,
 rostedt@goodmis.org, jbaron@akamai.com,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, luto@kernel.org,
 tglx@linutronix.de, ard.biesheuvel@linaro.org, bristot@redhat.com,
 mhiramat@kernel.org, torvalds@linux-foundation.org,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

While auditing all module notifiers I noticed a whole bunch of fail
wrt the return value. Notifiers have a 'special' return semantics.

As is; NOTIFY_DONE vs NOTIFY_OK is a bit vague; but
notifier_from_errno(0) results in NOTIFY_OK and NOTIFY_DONE has a
comment that says "Don't care".

>From this I've used NOTIFY_DONE when the function completely ignores
the callback and notifier_to_error() isn't used.

Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Reviewed-by: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>
Reviewed-by: Robert Richter <rric@kernel.org>
Cc: Steven Rostedt <rostedt@goodmis.org>
Cc: "Paul E. McKenney" <paulmck@linux.ibm.com>
Cc: Yonghong Song <yhs@fb.com>
Cc: Alexei Starovoitov <ast@kernel.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: oprofile-list@lists.sf.net
Cc: Daniel Borkmann <daniel@iogearbox.net>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Song Liu <songliubraving@fb.com>
Cc: Martin KaFai Lau <kafai@fb.com>
---
 drivers/oprofile/buffer_sync.c |    4 ++--
 kernel/trace/bpf_trace.c       |    8 ++++++--
 kernel/trace/trace.c           |    2 +-
 kernel/trace/trace_events.c    |    2 +-
 kernel/trace/trace_printk.c    |    4 ++--
 kernel/tracepoint.c            |    2 +-
 6 files changed, 13 insertions(+), 9 deletions(-)

--- a/drivers/oprofile/buffer_sync.c
+++ b/drivers/oprofile/buffer_sync.c
@@ -116,7 +116,7 @@ module_load_notify(struct notifier_block
 {
 #ifdef CONFIG_MODULES
 	if (val != MODULE_STATE_COMING)
-		return 0;
+		return NOTIFY_DONE;
 
 	/* FIXME: should we process all CPU buffers ? */
 	mutex_lock(&buffer_mutex);
@@ -124,7 +124,7 @@ module_load_notify(struct notifier_block
 	add_event_entry(MODULE_LOADED_CODE);
 	mutex_unlock(&buffer_mutex);
 #endif
-	return 0;
+	return NOTIFY_OK;
 }
 
 
--- a/kernel/trace/bpf_trace.c
+++ b/kernel/trace/bpf_trace.c
@@ -1451,10 +1451,11 @@ static int bpf_event_notify(struct notif
 {
 	struct bpf_trace_module *btm, *tmp;
 	struct module *mod = module;
+	int ret = 0;
 
 	if (mod->num_bpf_raw_events == 0 ||
 	    (op != MODULE_STATE_COMING && op != MODULE_STATE_GOING))
-		return 0;
+		goto out;
 
 	mutex_lock(&bpf_module_mutex);
 
@@ -1464,6 +1465,8 @@ static int bpf_event_notify(struct notif
 		if (btm) {
 			btm->module = module;
 			list_add(&btm->list, &bpf_trace_modules);
+		} else {
+			ret = -ENOMEM;
 		}
 		break;
 	case MODULE_STATE_GOING:
@@ -1479,7 +1482,8 @@ static int bpf_event_notify(struct notif
 
 	mutex_unlock(&bpf_module_mutex);
 
-	return 0;
+out:
+	return notifier_from_errno(ret);
 }
 
 static struct notifier_block bpf_module_nb = {
--- a/kernel/trace/trace.c
+++ b/kernel/trace/trace.c
@@ -8696,7 +8696,7 @@ static int trace_module_notify(struct no
 		break;
 	}
 
-	return 0;
+	return NOTIFY_OK;
 }
 
 static struct notifier_block trace_module_nb = {
--- a/kernel/trace/trace_events.c
+++ b/kernel/trace/trace_events.c
@@ -2442,7 +2442,7 @@ static int trace_module_notify(struct no
 	mutex_unlock(&trace_types_lock);
 	mutex_unlock(&event_mutex);
 
-	return 0;
+	return NOTIFY_OK;
 }
 
 static struct notifier_block trace_module_nb = {
--- a/kernel/trace/trace_printk.c
+++ b/kernel/trace/trace_printk.c
@@ -95,7 +95,7 @@ static int module_trace_bprintk_format_n
 		if (val == MODULE_STATE_COMING)
 			hold_module_trace_bprintk_format(start, end);
 	}
-	return 0;
+	return NOTIFY_OK;
 }
 
 /*
@@ -173,7 +173,7 @@ __init static int
 module_trace_bprintk_format_notify(struct notifier_block *self,
 		unsigned long val, void *data)
 {
-	return 0;
+	return NOTIFY_OK;
 }
 static inline const char **
 find_next_mod_format(int start_index, void *v, const char **fmt, loff_t *pos)
--- a/kernel/tracepoint.c
+++ b/kernel/tracepoint.c
@@ -521,7 +521,7 @@ static int tracepoint_module_notify(stru
 	case MODULE_STATE_UNFORMED:
 		break;
 	}
-	return ret;
+	return notifier_from_errno(ret);
 }
 
 static struct notifier_block tracepoint_module_nb = {




_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
