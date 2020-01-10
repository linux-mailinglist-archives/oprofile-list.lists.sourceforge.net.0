Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BBBFB1370AC
	for <lists+oprofile-list@lfdr.de>; Fri, 10 Jan 2020 16:06:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1ipvrT-0004DD-GS; Fri, 10 Jan 2020 15:06:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <peterz@infradead.org>) id 1ipvm6-00031V-Kw
 for oprofile-list@lists.sourceforge.net; Fri, 10 Jan 2020 15:00:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YfX4Wn1/pqccM1olKxdBD79TA9u9Lbt27vICyToE+ls=; b=AOLQyhxw0FFQ4U+Wpxk9TRy+Gp
 oFH0Hpi3/VoNFqzWEs+EwhHrV51OFYAxBQLYsIYHAuhn1C2Cf/QtVshlGdcf4z6DGsJtPrbMD8FmJ
 DK+psmoN6aNIhIafaGIPsD7RnxHLu78f423Yf3Y60RJuynRVXECw5yzGGiLATh+BvWV8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YfX4Wn1/pqccM1olKxdBD79TA9u9Lbt27vICyToE+ls=; b=RWpWLKY82Kd5YlU9Y6vaDCKooB
 hMnwVqZFCNwJqgQQDxpOzSg2hbGl6EfbyLMXsZoKHu7QPZak4AgbxAoCEbff3IDdyPgqkrPr3HdRR
 iLZfohYze8HXzXp7XIln+fbmSIoi4ca5vndDaPI+av+7yC5f6kzFmwGfdcqxoCaYscuA=;
Received: from merlin.infradead.org ([205.233.59.134])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ipvm4-00FYZI-TV
 for oprofile-list@lists.sourceforge.net; Fri, 10 Jan 2020 15:00:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YfX4Wn1/pqccM1olKxdBD79TA9u9Lbt27vICyToE+ls=; b=hUd/+pKHQBBDMpuaTCGYlb6oP
 tHjI1NofTkszYxvkTnNNqmYmw6EzgYCrcSu2vsBjWQUO0IgTKKkb11WzaDx4LmzdHtz9LW/Hm0RgC
 ZdIv+jcU1kRIITHLD0QOfmJzN7/LA/mfZPgCHq6NIEoLWkJujRv4Sla98UT6cKhPOKLcPGcxN+HMy
 AUc5AvlNE3kz0tVvky+aV9FX0vpYZfR/A3TN2D0GIH29lrbxj3mFkAp1ukIqg0k68ObHXAUR8NbZi
 RCwiUEVFD1oEMiNUTjmJ1fIFGQS7nm2/X6ijHCr37Eyn+JkfXY5mT7EQ0um89vJiV6zkfuXOSIYS0
 +ziuTrUqw==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipus5-0003rT-5A; Fri, 10 Jan 2020 14:02:41 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 7AC7C30018B;
 Fri, 10 Jan 2020 15:01:00 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 61C442B612603; Fri, 10 Jan 2020 15:02:34 +0100 (CET)
Date: Fri, 10 Jan 2020 15:02:34 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Alexey Budankov <alexey.budankov@linux.intel.com>
Subject: Re: [PATCH v4 2/9] perf/core: open access for CAP_SYS_PERFMON
 privileged process
Message-ID: <20200110140234.GO2844@hirez.programming.kicks-ass.net>
References: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
 <c93309dc-b920-f5fa-f997-e8b2faf47b88@linux.intel.com>
 <20200108160713.GI2844@hirez.programming.kicks-ass.net>
 <cc239899-5c52-2fd0-286d-4bff18877937@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cc239899-5c52-2fd0-286d-4bff18877937@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.233.59.134 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ipvm4-00FYZI-TV
X-Mailman-Approved-At: Fri, 10 Jan 2020 15:06:07 +0000
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
 Michael Ellerman <mpe@ellerman.id.au>, Igor Lubashev <ilubashe@akamai.com>,
 James Morris <jmorris@namei.org>, Ingo Molnar <mingo@redhat.com>,
 oprofile-list@lists.sf.net, Serge Hallyn <serge@hallyn.com>,
 Robert Richter <rric@kernel.org>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>,
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

On Thu, Jan 09, 2020 at 02:36:50PM +0300, Alexey Budankov wrote:
> On 08.01.2020 19:07, Peter Zijlstra wrote:
> > On Wed, Dec 18, 2019 at 12:25:35PM +0300, Alexey Budankov wrote:

> >> diff --git a/kernel/events/core.c b/kernel/events/core.c
> >> index 059ee7116008..d9db414f2197 100644
> >> --- a/kernel/events/core.c
> >> +++ b/kernel/events/core.c
> >> @@ -9056,7 +9056,7 @@ static int perf_kprobe_event_init(struct perf_event *event)
> >>  	if (event->attr.type != perf_kprobe.type)
> >>  		return -ENOENT;
> >>  
> >> -	if (!capable(CAP_SYS_ADMIN))
> >> +	if (!perfmon_capable())
> >>  		return -EACCES;
> >>  
> >>  	/*
> > 
> > This one only allows attaching to already extant kprobes, right? It does
> > not allow creation of kprobes.
> 
> This unblocks creation of local trace kprobes and uprobes by CAP_SYS_PERFMON 
> privileged process, exactly the same as for CAP_SYS_ADMIN privileged process.

I've no idea what you just said; it's just words.

Again, this only allows attaching to previously created kprobes, it does
not allow creating kprobes, right?

That is; I don't think CAP_SYS_PERFMON should be allowed to create
kprobes.

As might be clear; I don't actually know what the user-ABI is for
creating kprobes.


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
