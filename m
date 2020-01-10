Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D737A1394DF
	for <lists+oprofile-list@lfdr.de>; Mon, 13 Jan 2020 16:33:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1ir1i8-0004b8-AE; Mon, 13 Jan 2020 15:33:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexey.budankov@linux.intel.com>) id 1ipyBQ-0007Ya-UT
 for oprofile-list@lists.sourceforge.net; Fri, 10 Jan 2020 17:34:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g6zGjUVUx3C/ecjwS98q4TRkE2eguF288XQZlXQDGt4=; b=dyESczhvMD4+WTKptc0RasQLZg
 4CXjk/h9b6MOp5O+qsbg4zsYJIEV9d7/7coWnvzIL0yaZmo2Mh65tAX6LA3jp7CQEf3bIIo0M/mN+
 bynAxg5httjl+sTGiK1j/IJsDuuk68jf3ge3Rm39V7G8/N3VZwbMGJKHicdsWN1xS9jI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=g6zGjUVUx3C/ecjwS98q4TRkE2eguF288XQZlXQDGt4=; b=krLyn8SEwVk75S4WadVAF+L3ty
 6sCXr8+Ih7b20qTrWw/Hse+wLUGdtd6BO8BnWiKdgd59nGQ5QVUtnlRmYSEkLl3pRA0CIaRZjHHkt
 5wwjF4pNv5Fxvyps5PQv3bbX1YRQy6Hy94gGDDXxCdRH5oIx9v+9TVxUlhwn/Uq1FEVw=;
Received: from mga09.intel.com ([134.134.136.24])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ipyBP-00FXOz-61
 for oprofile-list@lists.sourceforge.net; Fri, 10 Jan 2020 17:34:52 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 09:34:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,417,1571727600"; d="scan'208";a="216736137"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga008.jf.intel.com with ESMTP; 10 Jan 2020 09:34:44 -0800
Received: from [10.252.24.8] (abudanko-mobl.ccr.corp.intel.com [10.252.24.8])
 by linux.intel.com (Postfix) with ESMTP id A1D7F58045A;
 Fri, 10 Jan 2020 09:34:34 -0800 (PST)
Subject: Re: [PATCH v4 2/9] perf/core: open access for CAP_SYS_PERFMON
 privileged process
To: Peter Zijlstra <peterz@infradead.org>
References: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
 <c93309dc-b920-f5fa-f997-e8b2faf47b88@linux.intel.com>
 <20200108160713.GI2844@hirez.programming.kicks-ass.net>
 <cc239899-5c52-2fd0-286d-4bff18877937@linux.intel.com>
 <20200110140234.GO2844@hirez.programming.kicks-ass.net>
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <603c4d4f-9021-a8bc-1be6-3654d5c557d4@linux.intel.com>
Date: Fri, 10 Jan 2020 20:34:33 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200110140234.GO2844@hirez.programming.kicks-ass.net>
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ipyBP-00FXOz-61
X-Mailman-Approved-At: Mon, 13 Jan 2020 15:32:57 +0000
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



On 10.01.2020 17:02, Peter Zijlstra wrote:
> On Thu, Jan 09, 2020 at 02:36:50PM +0300, Alexey Budankov wrote:
>> On 08.01.2020 19:07, Peter Zijlstra wrote:
>>> On Wed, Dec 18, 2019 at 12:25:35PM +0300, Alexey Budankov wrote:
> 
>>>> diff --git a/kernel/events/core.c b/kernel/events/core.c
>>>> index 059ee7116008..d9db414f2197 100644
>>>> --- a/kernel/events/core.c
>>>> +++ b/kernel/events/core.c
>>>> @@ -9056,7 +9056,7 @@ static int perf_kprobe_event_init(struct perf_event *event)
>>>>  	if (event->attr.type != perf_kprobe.type)
>>>>  		return -ENOENT;
>>>>  
>>>> -	if (!capable(CAP_SYS_ADMIN))
>>>> +	if (!perfmon_capable())
>>>>  		return -EACCES;
>>>>  
>>>>  	/*
>>>
>>> This one only allows attaching to already extant kprobes, right? It does
>>> not allow creation of kprobes.
>>
>> This unblocks creation of local trace kprobes and uprobes by CAP_SYS_PERFMON 
>> privileged process, exactly the same as for CAP_SYS_ADMIN privileged process.
> 
> I've no idea what you just said; it's just words.
> 
> Again, this only allows attaching to previously created kprobes, it does
> not allow creating kprobes, right?

Not really, this allows creating a kprobe using perf_event_open syscall that
associates file descriptor with the kprobe [1].

Lifetime of that kprobe is equal to the lifetime of the file descriptor and 
the kprobe is not visible in tracefs: /sys/kernel/debug/tracing/kprobe_events

> 
> That is; I don't think CAP_SYS_PERFMON should be allowed to create
> kprobes.
> 
> As might be clear; I don't actually know what the user-ABI is for
> creating kprobes.
> 

~Alexey

[1] https://lore.kernel.org/lkml/20171206224518.3598254-1-songliubraving@fb.com/


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
