Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD93E359D
	for <lists+oprofile-list@lfdr.de>; Thu, 24 Oct 2019 16:33:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1iNeAv-0003hu-2R; Thu, 24 Oct 2019 14:33:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <SRS0=o+iB=YQ=goodmis.org=rostedt@kernel.org>)
 id 1iNMW1-0005RA-QC
 for oprofile-list@lists.sourceforge.net; Wed, 23 Oct 2019 19:41:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cfiR+I9AYFxbQRhtkxXPneRMKxAJCvTSVZnQOmZKO5U=; b=aOrZ55/HfOSFAFz9OsRBoI/5+A
 XcZv3CKwfe9yFCMxWOV3KHWVvsMm0vgxcd168eet9Y0dp4U6hWvYBddlTIRZto/ZwAfbGuhix9EGu
 1VTpvOwTMnlbG45V92p4kJw6NtpFrtKH7Q5ZCybq0P4UiYHnw9qQIi0ly+9bWQiNEh+U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cfiR+I9AYFxbQRhtkxXPneRMKxAJCvTSVZnQOmZKO5U=; b=R84ilhP8QBE0Us8NfmjX2larm/
 h2UMbE2xBHuR8cwmwEtRcVeyUdhj0B8lBEEwNSKadzFnrHFAvlIOM0IgU2tRuaMPP1ydydiv+GNS4
 9O4pDsN+tKoso7uYlRlEwWkIIyaXqEYN/YwzshiAwdUtUdBeVY8DX/V6/321y1TkR/+c=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iNMVz-000gcS-4R
 for oprofile-list@lists.sourceforge.net; Wed, 23 Oct 2019 19:41:53 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 586A820663;
 Wed, 23 Oct 2019 19:25:43 +0000 (UTC)
Date: Wed, 23 Oct 2019 15:25:41 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v2 2/4] module: Fix up module_notifier return values.
Message-ID: <20191023152541.4b22cb10@gandalf.local.home>
In-Reply-To: <20191007082700.08643163.5@infradead.org>
References: <20191007082541.64146933.7@infradead.org>
 <20191007082700.08643163.5@infradead.org>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iNMVz-000gcS-4R
X-Mailman-Approved-At: Thu, 24 Oct 2019 14:33:16 +0000
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
 namit@vmware.com, hpa@zytor.com,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>, "Paul E.
 McKenney" <paulmck@linux.ibm.com>, mingo@kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>, x86@kernel.org,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 Yonghong Song <yhs@fb.com>, Robert Richter <rric@kernel.org>,
 jbaron@akamai.com, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 luto@kernel.org, tglx@linutronix.de, ard.biesheuvel@linaro.org,
 torvalds@linux-foundation.org, linux-kernel@vger.kernel.org,
 mhiramat@kernel.org, bristot@redhat.com, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Mon, 07 Oct 2019 10:25:43 +0200
Peter Zijlstra <peterz@infradead.org> wrote:

>  kernel/trace/trace.c           |    2 +-
>  kernel/trace/trace_events.c    |    2 +-
>  kernel/trace/trace_printk.c    |    4 ++--
>  kernel/tracepoint.c            |    2 +-

Acked-by: Steven Rostedt (VMware) <rostedt@goodmis.org>

-- Steve


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
