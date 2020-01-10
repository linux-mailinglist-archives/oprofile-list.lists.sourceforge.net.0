Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E7CB71394DB
	for <lists+oprofile-list@lfdr.de>; Mon, 13 Jan 2020 16:33:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1ir1i8-0004ac-4M; Mon, 13 Jan 2020 15:33:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mhiramat@kernel.org>) id 1ipwaO-0004do-0I
 for oprofile-list@lists.sourceforge.net; Fri, 10 Jan 2020 15:52:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:Message-Id:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x9x7zfTDHGNhngl1OoI5iOF1MdsiapFiV/RL/StnRgA=; b=F5nmIBagputHfn4Wg9E+1Rx4PV
 uTuvz86KRpFoeT9HGxMZj173o/os6SHoofz0FLhz932eIAlQYFgkYymyM6TAezBsjdilJrHP7PqNH
 jfbmIorPdukOfM2W1wMixCXHtKigYAzTnFr+77W5hkmdaE6A7Ml/gLJZ8Mk6A/bew0Bw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:Message-Id:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x9x7zfTDHGNhngl1OoI5iOF1MdsiapFiV/RL/StnRgA=; b=HNPg6ni7BRa+U3z/1fKi0g3hMC
 mVMskAnBw+KtRQUbTUNmS8JCQU+NnXw+oNvdKn7xq3aIgbsRhV3US0DcF08Q29Ic0Eu/RknlWP5er
 yiJ0lh3+j13KL0cQlZO9Bh6ZNkhGSOgJUVeIVIPbQ6Vz0v+npZR76HJIte+rREGHZDLU=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ipwaM-00FarQ-MP
 for oprofile-list@lists.sourceforge.net; Fri, 10 Jan 2020 15:52:31 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 779C420721;
 Fri, 10 Jan 2020 15:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578671544;
 bh=3nRKzhqWY209SzpxePH8IpaFH19pRWJVa9ge9VwTUWg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hhUyUSbgOhcEXYmwe16oYRXofftAtCaPssxnlo8+wzR1Z+Hc7gIC74+9+Ofo0QovJ
 Uvu/OS2WmFEr18mb/K4VPPNI5p+e0NVDolFkj/C9Q9+59mAjao0fdDHytwiGkznrTa
 HNfDKF7+0bsZZIwPw/QJBAGKYSzKyf3waWGNpk/8=
Date: Sat, 11 Jan 2020 00:52:13 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v4 2/9] perf/core: open access for CAP_SYS_PERFMON
 privileged process
Message-Id: <20200111005213.6dfd98fb36ace098004bde0e@kernel.org>
In-Reply-To: <20200110140234.GO2844@hirez.programming.kicks-ass.net>
References: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
 <c93309dc-b920-f5fa-f997-e8b2faf47b88@linux.intel.com>
 <20200108160713.GI2844@hirez.programming.kicks-ass.net>
 <cc239899-5c52-2fd0-286d-4bff18877937@linux.intel.com>
 <20200110140234.GO2844@hirez.programming.kicks-ass.net>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ipwaM-00FarQ-MP
X-Mailman-Approved-At: Mon, 13 Jan 2020 15:32:58 +0000
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
Cc: Mark Rutland <mark.rutland@arm.com>, Song Liu <songliubraving@fb.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 Will Deacon <will.deacon@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Paul Mackerras <paulus@samba.org>,
 Jiri Olsa <jolsa@redhat.com>, Andi Kleen <ak@linux.intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 Igor Lubashev <ilubashe@akamai.com>, James Morris <jmorris@namei.org>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 Serge Hallyn <serge@hallyn.com>, Robert Richter <rric@kernel.org>,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, mhiramat@kernel.org,
 Casey Schaufler <casey@schaufler-ca.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Fri, 10 Jan 2020 15:02:34 +0100
Peter Zijlstra <peterz@infradead.org> wrote:

> On Thu, Jan 09, 2020 at 02:36:50PM +0300, Alexey Budankov wrote:
> > On 08.01.2020 19:07, Peter Zijlstra wrote:
> > > On Wed, Dec 18, 2019 at 12:25:35PM +0300, Alexey Budankov wrote:
> 
> > >> diff --git a/kernel/events/core.c b/kernel/events/core.c
> > >> index 059ee7116008..d9db414f2197 100644
> > >> --- a/kernel/events/core.c
> > >> +++ b/kernel/events/core.c
> > >> @@ -9056,7 +9056,7 @@ static int perf_kprobe_event_init(struct perf_event *event)
> > >>  	if (event->attr.type != perf_kprobe.type)
> > >>  		return -ENOENT;
> > >>  
> > >> -	if (!capable(CAP_SYS_ADMIN))
> > >> +	if (!perfmon_capable())
> > >>  		return -EACCES;
> > >>  
> > >>  	/*
> > > 
> > > This one only allows attaching to already extant kprobes, right? It does
> > > not allow creation of kprobes.
> > 
> > This unblocks creation of local trace kprobes and uprobes by CAP_SYS_PERFMON 
> > privileged process, exactly the same as for CAP_SYS_ADMIN privileged process.
> 
> I've no idea what you just said; it's just words.
> 
> Again, this only allows attaching to previously created kprobes, it does
> not allow creating kprobes, right?
> 
> That is; I don't think CAP_SYS_PERFMON should be allowed to create
> kprobes.
> 
> As might be clear; I don't actually know what the user-ABI is for
> creating kprobes.

There are 2 ABIs nowadays, ftrace and ebpf. perf-probe uses ftrace interface to
define new kprobe events, and those events are treated as completely same as
tracepoint events. On the other hand, ebpf tries to define new probe event
via perf_event interface. Above one is that interface. IOW, it creates new kprobe.

Thank you,


-- 
Masami Hiramatsu <mhiramat@kernel.org>


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
