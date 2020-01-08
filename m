Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E635135AF8
	for <lists+oprofile-list@lfdr.de>; Thu,  9 Jan 2020 15:06:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1ipYRm-0005Ls-VM; Thu, 09 Jan 2020 14:06:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <peterz@infradead.org>) id 1ipE8B-00054n-8o
 for oprofile-list@lists.sourceforge.net; Wed, 08 Jan 2020 16:24:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vTWY1coa2Uglbk+2ijUNU4PAcTKo3OAi9shtTNMi0Rk=; b=NnLq47khlvncY9ZVATL23fROWT
 dnLMlq+dD+VN7rqB1pXSsH/8Omtuf40CDQQmSW+t1/fvBFxaVn2aDQjHSU8SpagQjSv2CZsgZOP3b
 XU3EJWKlzUov/FllzMOexfkqzPwm45CCiWyMo9wP6Gvkxc9rWHGRqCj0BG+0Oad8NNWg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vTWY1coa2Uglbk+2ijUNU4PAcTKo3OAi9shtTNMi0Rk=; b=hHvMapVUA7twNI8chPqCiw7e+t
 87k1TyIkO2ftvJ4PBLSfn3smQIP5PpYvN195nQTtVqpa/Sp6rRMlhVBNBK5+dnMTJE5fyVm8a/mfg
 A4yfTt40gpKJIa7r8ASL2h7UYLER7zEgqTiKeOXTzfrUrP4jQ14aHqYf6D8Ct2R05L3g=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ipE7x-00DaJi-QF
 for oprofile-list@lists.sourceforge.net; Wed, 08 Jan 2020 16:24:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vTWY1coa2Uglbk+2ijUNU4PAcTKo3OAi9shtTNMi0Rk=; b=gqbvtODkaNnvdu0BtI1I+oz9W
 A/2kAzeM+Of8bAddV33sSuyFB5xF+Iq5ljJRIvioI+k+R95x57awB/8d2/OaCxPEWI73HH3ggqw/b
 sRuPnU/M3cuEf3KHzciBaTOkOpg9la+z/euW56512nmDwFzNGDIve2Ho4jXCQShNWbCSAJw0jVzgp
 W73rwpfbOnlx/JXYvxqZG+ueOUqg0TTsDyxTW539J3TnC4nfAFSqo8UjcEPXCvaV8lYoYsU9cKROX
 c5nXwgc0c5to6F7JUcDXFL8eRwzCCSZ1nK2sOxQ5uehPgx5U+VprgiM8abXXvQlwSBJdkTRyrU3JI
 mPuHTmEYQ==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipDrb-0002aV-JF; Wed, 08 Jan 2020 16:07:19 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 0BFB530018B;
 Wed,  8 Jan 2020 17:05:40 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 08A5520B79C82; Wed,  8 Jan 2020 17:07:14 +0100 (CET)
Date: Wed, 8 Jan 2020 17:07:13 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Alexey Budankov <alexey.budankov@linux.intel.com>
Subject: Re: [PATCH v4 2/9] perf/core: open access for CAP_SYS_PERFMON
 privileged process
Message-ID: <20200108160713.GI2844@hirez.programming.kicks-ass.net>
References: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
 <c93309dc-b920-f5fa-f997-e8b2faf47b88@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c93309dc-b920-f5fa-f997-e8b2faf47b88@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ipE7x-00DaJi-QF
X-Mailman-Approved-At: Thu, 09 Jan 2020 14:06:01 +0000
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
 <linux-security-module@vger.kernel.org>,
 Casey Schaufler <casey@schaufler-ca.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Wed, Dec 18, 2019 at 12:25:35PM +0300, Alexey Budankov wrote:
> 
> Open access to perf_events monitoring for CAP_SYS_PERFMON privileged
> processes. For backward compatibility reasons access to perf_events
> subsystem remains open for CAP_SYS_ADMIN privileged processes but
> CAP_SYS_ADMIN usage for secure perf_events monitoring is discouraged
> with respect to CAP_SYS_PERFMON capability.
> 
> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
> ---
>  include/linux/perf_event.h | 6 +++---
>  kernel/events/core.c       | 6 +++---
>  2 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/include/linux/perf_event.h b/include/linux/perf_event.h
> index 34c7c6910026..f46acd69425f 100644
> --- a/include/linux/perf_event.h
> +++ b/include/linux/perf_event.h
> @@ -1285,7 +1285,7 @@ static inline int perf_is_paranoid(void)
>  
>  static inline int perf_allow_kernel(struct perf_event_attr *attr)
>  {
> -	if (sysctl_perf_event_paranoid > 1 && !capable(CAP_SYS_ADMIN))
> +	if (sysctl_perf_event_paranoid > 1 && !perfmon_capable())
>  		return -EACCES;
>  
>  	return security_perf_event_open(attr, PERF_SECURITY_KERNEL);
> @@ -1293,7 +1293,7 @@ static inline int perf_allow_kernel(struct perf_event_attr *attr)
>  
>  static inline int perf_allow_cpu(struct perf_event_attr *attr)
>  {
> -	if (sysctl_perf_event_paranoid > 0 && !capable(CAP_SYS_ADMIN))
> +	if (sysctl_perf_event_paranoid > 0 && !perfmon_capable())
>  		return -EACCES;
>  
>  	return security_perf_event_open(attr, PERF_SECURITY_CPU);
> @@ -1301,7 +1301,7 @@ static inline int perf_allow_cpu(struct perf_event_attr *attr)
>  
>  static inline int perf_allow_tracepoint(struct perf_event_attr *attr)
>  {
> -	if (sysctl_perf_event_paranoid > -1 && !capable(CAP_SYS_ADMIN))
> +	if (sysctl_perf_event_paranoid > -1 && !perfmon_capable())
>  		return -EPERM;
>  
>  	return security_perf_event_open(attr, PERF_SECURITY_TRACEPOINT);

These are OK I suppose.

> diff --git a/kernel/events/core.c b/kernel/events/core.c
> index 059ee7116008..d9db414f2197 100644
> --- a/kernel/events/core.c
> +++ b/kernel/events/core.c
> @@ -9056,7 +9056,7 @@ static int perf_kprobe_event_init(struct perf_event *event)
>  	if (event->attr.type != perf_kprobe.type)
>  		return -ENOENT;
>  
> -	if (!capable(CAP_SYS_ADMIN))
> +	if (!perfmon_capable())
>  		return -EACCES;
>  
>  	/*

This one only allows attaching to already extant kprobes, right? It does
not allow creation of kprobes.

> @@ -9116,7 +9116,7 @@ static int perf_uprobe_event_init(struct perf_event *event)
>  	if (event->attr.type != perf_uprobe.type)
>  		return -ENOENT;
>  
> -	if (!capable(CAP_SYS_ADMIN))
> +	if (!perfmon_capable())
>  		return -EACCES;
>  
>  	/*

Idem, I presume.

> @@ -11157,7 +11157,7 @@ SYSCALL_DEFINE5(perf_event_open,
>  	}
>  
>  	if (attr.namespaces) {
> -		if (!capable(CAP_SYS_ADMIN))
> +		if (!perfmon_capable())
>  			return -EACCES;
>  	}

And given we basically make the entire kernel observable with this CAP,
busting namespaces shoulnd't be a problem either.

So yeah, I suppose that works.


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
