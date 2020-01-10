Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8999A1394DD
	for <lists+oprofile-list@lfdr.de>; Mon, 13 Jan 2020 16:33:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1ir1i8-0004bm-J1; Mon, 13 Jan 2020 15:33:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mhiramat@kernel.org>) id 1iq40X-00014a-4O
 for oprofile-list@lists.sourceforge.net; Fri, 10 Jan 2020 23:48:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:Message-Id:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EqSddjJWv3LXTR7LJo9Yqp6T9xtSHTQK2HRMKKhV4S8=; b=NV5pNdWhbp3MHfvV+EPuzRKtCe
 4n1xzopgRIoVQiB0TtDtTjzCXyRQ2GsCTmB9YrMi7gOS+KgdZk3WJnYz1bQLJvSbcz5qrLy1Vb/NA
 vq2hySH5rxOFOlhitd8Yh8ZzOYV+peX65aDv0L99lVu+xP1AjlFuo21yBAIVvQUjuocE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:Message-Id:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EqSddjJWv3LXTR7LJo9Yqp6T9xtSHTQK2HRMKKhV4S8=; b=ecjnX+5b8dKzlUmcIh5/bvGCAY
 FVCKau4jXj67MB1LCXtkT39Elkbf15KumhG9Yw5MsXJ3AENANzgZBxQJv5C69oExZTfAU9ersPYzB
 WnFu2cSYnhwiBYxZn8JqcAfiUXKdzMQhqliGaSqUQTOeUPDbONbLwQbfeqr1/HbGQXj4=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iq40S-00FvyR-D0
 for oprofile-list@lists.sourceforge.net; Fri, 10 Jan 2020 23:48:01 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A61EC20721;
 Fri, 10 Jan 2020 23:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578700065;
 bh=NuMXPw3kPSPAokfxRtkSxkyo7a4EVAlOcwjKZAwv8nY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=t116nza3ajSBnjZbfKgcN5ONvfAghlxApVIAIUZPf0R8FY7ey0DryHbox6JEQPVwR
 2xql9T24vHJ7lZgd8/0P6ybYgmcY34jFGX+VnlShjoGYoVU3chcg4p7xaRfP4Azzzx
 FSSjjNHlhTZMBRDpXhh2exzFwwJlouRtCsAGpcsw=
Date: Sat, 11 Jan 2020 08:47:35 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>
Subject: Re: [PATCH v4 2/9] perf/core: open access for CAP_SYS_PERFMON
 privileged process
Message-Id: <20200111084735.0ff01c758bfbfd0ae2e1f24e@kernel.org>
In-Reply-To: <20200110164531.GA2598@kernel.org>
References: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
 <c93309dc-b920-f5fa-f997-e8b2faf47b88@linux.intel.com>
 <20200108160713.GI2844@hirez.programming.kicks-ass.net>
 <cc239899-5c52-2fd0-286d-4bff18877937@linux.intel.com>
 <20200110140234.GO2844@hirez.programming.kicks-ass.net>
 <20200111005213.6dfd98fb36ace098004bde0e@kernel.org>
 <20200110164531.GA2598@kernel.org>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iq40S-00FvyR-D0
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
 Peter Zijlstra <peterz@infradead.org>,
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
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 Serge Hallyn <serge@hallyn.com>, Robert Richter <rric@kernel.org>,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 Casey Schaufler <casey@schaufler-ca.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Fri, 10 Jan 2020 13:45:31 -0300
Arnaldo Carvalho de Melo <acme@kernel.org> wrote:

> Em Sat, Jan 11, 2020 at 12:52:13AM +0900, Masami Hiramatsu escreveu:
> > On Fri, 10 Jan 2020 15:02:34 +0100 Peter Zijlstra <peterz@infradead.org> wrote:
> > > Again, this only allows attaching to previously created kprobes, it does
> > > not allow creating kprobes, right?
> 
> > > That is; I don't think CAP_SYS_PERFMON should be allowed to create
> > > kprobes.
> 
> > > As might be clear; I don't actually know what the user-ABI is for
> > > creating kprobes.
> 
> > There are 2 ABIs nowadays, ftrace and ebpf. perf-probe uses ftrace interface to
> > define new kprobe events, and those events are treated as completely same as
> > tracepoint events. On the other hand, ebpf tries to define new probe event
> > via perf_event interface. Above one is that interface. IOW, it creates new kprobe.
> 
> Masami, any plans to make 'perf probe' use the perf_event_open()
> interface for creating kprobes/uprobes?

Would you mean perf probe to switch to perf_event_open()?
No, perf probe is for setting up the ftrace probe events. I think we can add an
option to use perf_event_open(). But current kprobe creation from perf_event_open()
is separated from ftrace by design.

I think the reason why ebpf uses perf_event_open() interface is to avoid conflict
with ftrace users. Those probes are temporally used by ebpf, but if it is appeared on
ftrace, it is easy to be used by ftrace. In that case, it can not be removed when
the ebpf exits.

Thank you,

-- 
Masami Hiramatsu <mhiramat@kernel.org>


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
