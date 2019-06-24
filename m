Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8684151B48
	for <lists+oprofile-list@lfdr.de>; Mon, 24 Jun 2019 21:15:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1hfUQz-0005iV-2L; Mon, 24 Jun 2019 19:15:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <compudj@efficios.com>) id 1hfPpv-00084d-Gn
 for oprofile-list@lists.sourceforge.net; Mon, 24 Jun 2019 14:20:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jc8emB4G4DxkJzWoVya72U2d4KhEjMEUsAUMMkYgQZg=; b=inTVpua4IwKpEgo/e1xck4K3pu
 LEVAzbkB9Eskm3sziB44CtJ5RXdL8XSN9YAsre9QqpKql49lTNALDY4chNexHH+vQOP1juDQatLY2
 QsA75H50EKIMaKRVgnSqmQU3tRcL4eH29rH3pPAzCFywyh7jlGCn4bFjXsWN+wsOV0eU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jc8emB4G4DxkJzWoVya72U2d4KhEjMEUsAUMMkYgQZg=; b=S1wxhEVcHuZfexfQUJ023UK4Dl
 wYXnJKd38GvtPy95mqy1x9sp4ijb16wzXWQDhboNw+2BSKVg2N1O36Rv48ASNLlqn8TszDl6ViJ6N
 k1JqSi7fNHAerMslSVzts2G7Lpjhu8ouAiLDjrYUzbLukMiMYGR2ftSDt5/UO5JdKlrY=;
Received: from mail.efficios.com ([167.114.142.138])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hfPpx-00BkmS-Fm
 for oprofile-list@lists.sourceforge.net; Mon, 24 Jun 2019 14:20:53 +0000
Received: from localhost (ip6-localhost [IPv6:::1])
 by mail.efficios.com (Postfix) with ESMTP id 1F7B81E5846;
 Mon, 24 Jun 2019 10:01:05 -0400 (EDT)
Received: from mail.efficios.com ([IPv6:::1])
 by localhost (mail02.efficios.com [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id 30tAHu-OSvYj; Mon, 24 Jun 2019 10:01:04 -0400 (EDT)
Received: from localhost (ip6-localhost [IPv6:::1])
 by mail.efficios.com (Postfix) with ESMTP id 8165B1E5831;
 Mon, 24 Jun 2019 10:01:04 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.efficios.com 8165B1E5831
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=efficios.com;
 s=default; t=1561384864;
 bh=jc8emB4G4DxkJzWoVya72U2d4KhEjMEUsAUMMkYgQZg=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=VRVt6rcQHjCVHpY12SUnfvqlKUBvg1qfQjZJd0XJbcWX4BQjiksIwFvj7U9rk0k4w
 SDzLnSaHbDP1KXbm8Sh1yANLrmDpZpKiNFMIiLp+y9ZL24ctCzMDsacLQw5JaSVete
 VmnbGGquOkVhdsMO4gxWpT5mf2ItkyFKwn/RPXXJTfJn8/Bh+fXD7hqN3ldc3nfz3O
 xkzg2h9uAUKrUBuG2SlEmK0CGuYJAXyFrzwFA0sAHOBuhFX3mQB6tgAkvAjVOo69VE
 VavVADsPFOi8CSochiTy/3DU5WMMQp/aADvnBhVdpq9eYpNYb7U+67m9/jTd9JMepV
 HY/AvTjjRk+QA==
X-Virus-Scanned: amavisd-new at efficios.com
Received: from mail.efficios.com ([IPv6:::1])
 by localhost (mail02.efficios.com [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id dJQ_J6pq8rdl; Mon, 24 Jun 2019 10:01:04 -0400 (EDT)
Received: from mail02.efficios.com (mail02.efficios.com [167.114.142.138])
 by mail.efficios.com (Postfix) with ESMTP id 541671E582B;
 Mon, 24 Jun 2019 10:01:04 -0400 (EDT)
Date: Mon, 24 Jun 2019 10:01:04 -0400 (EDT)
From: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
To: Peter Zijlstra <peterz@infradead.org>, "Frank Ch. Eigler" <fche@redhat.com>
Message-ID: <320564860.243.1561384864186.JavaMail.zimbra@efficios.com>
In-Reply-To: <20190624092109.805742823@infradead.org>
References: <20190624091843.859714294@infradead.org>
 <20190624092109.805742823@infradead.org>
Subject: Re: [PATCH 2/3] module: Fix up module_notifier return values.
MIME-Version: 1.0
X-Originating-IP: [167.114.142.138]
X-Mailer: Zimbra 8.8.12_GA_3803 (ZimbraWebClient - FF67 (Linux)/8.8.12_GA_3794)
Thread-Topic: module: Fix up module_notifier return values.
Thread-Index: wEhc4w1xfyhyzFRK4s3Hnq/quVAuEQ==
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [167.114.142.138 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hfPpx-00BkmS-Fm
X-Mailman-Approved-At: Mon, 24 Jun 2019 19:15:19 +0000
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
Cc: Song Liu <songliubraving@fb.com>, Alexei Starovoitov <ast@kernel.org>,
 "Joel Fernandes, Google" <joel@joelfernandes.org>,
 paulmck <paulmck@linux.ibm.com>, mbenes@suse.cz,
 Daniel Borkmann <daniel@iogearbox.net>, Ingo Molnar <mingo@redhat.com>,
 oprofile-list@lists.sf.net, Yonghong Song <yhs@fb.com>,
 Petr Mladek <pmladek@suse.com>, Robert Richter <rric@kernel.org>,
 jikos@kernel.org, rostedt <rostedt@goodmis.org>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Andrew Morton <akpm@linux-foundation.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, netdev <netdev@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Jessica Yu <jeyu@kernel.org>,
 bpf@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

----- On Jun 24, 2019, at 5:18 AM, Peter Zijlstra peterz@infradead.org wrote:

> While auditing all module notifiers I noticed a whole bunch of fail
> wrt the return value. Notifiers have a 'special' return semantics.
> 
> Cc: Robert Richter <rric@kernel.org>
> Cc: Steven Rostedt <rostedt@goodmis.org>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Alexei Starovoitov <ast@kernel.org>
> Cc: Daniel Borkmann <daniel@iogearbox.net>
> Cc: Martin KaFai Lau <kafai@fb.com>
> Cc: Song Liu <songliubraving@fb.com>
> Cc: Yonghong Song <yhs@fb.com>
> Cc: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
> Cc: "Paul E. McKenney" <paulmck@linux.ibm.com>
> Cc: "Joel Fernandes (Google)" <joel@joelfernandes.org>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: oprofile-list@lists.sf.net
> Cc: linux-kernel@vger.kernel.org
> Cc: netdev@vger.kernel.org
> Cc: bpf@vger.kernel.org
> Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>

Thanks Peter for looking into this, especially considering your
endless love for kernel modules! ;)

It's not directly related to your changes, but I notice that
kernel/trace/trace_printk.c:hold_module_trace_bprintk_format()
appears to leak memory. Am I missing something ?

With respect to your changes:
Reviewed-by: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>

I have a similar erroneous module notifier return value pattern
in lttng-modules as well. I'll go fix it right away. CCing
Frank Eigler from SystemTAP which AFAIK use a copy of
lttng-tracepoint.c in their project, which should be fixed
as well. I'm pasting the lttng-modules fix below.

Thanks!

Mathieu

--

commit 5eac9d146a7d947f0f314c4f7103c92cbccaeaf3
Author: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Date:   Mon Jun 24 09:43:45 2019 -0400

    Fix: lttng-tracepoint module notifier should return NOTIFY_OK
    
    Module notifiers should return NOTIFY_OK on success rather than the
    value 0. The return value 0 does not seem to have any ill side-effects
    in the notifier chain caller, but it is preferable to respect the API
    requirements in case this changes in the future.
    
    Notifiers can encapsulate a negative errno value with
    notifier_from_errno(), but this is not needed by the LTTng tracepoint
    notifier.
    
    The approach taken in this notifier is to just print a console warning
    on error, because tracing failure should not prevent loading a module.
    So we definitely do not want to stop notifier iteration. Returning
    an error without stopping iteration is not really that useful, because
    only the return value of the last callback is returned to notifier chain
    caller.
    
    Signed-off-by: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>

diff --git a/lttng-tracepoint.c b/lttng-tracepoint.c
index bbb2c7a4..8298b397 100644
--- a/lttng-tracepoint.c
+++ b/lttng-tracepoint.c
@@ -256,7 +256,7 @@ int lttng_tracepoint_coming(struct tp_module *tp_mod)
                }
        }
        mutex_unlock(&lttng_tracepoint_mutex);
-       return 0;
+       return NOTIFY_OK;
 }
 
 static


-- 
Mathieu Desnoyers
EfficiOS Inc.
http://www.efficios.com


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
