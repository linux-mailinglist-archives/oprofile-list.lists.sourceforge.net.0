Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC50A14CD90
	for <lists+oprofile-list@lfdr.de>; Wed, 29 Jan 2020 16:37:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1iwpOn-0002To-SU; Wed, 29 Jan 2020 15:37:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmorris@namei.org>) id 1iwZ4U-0000Xy-Se
 for oprofile-list@lists.sourceforge.net; Tue, 28 Jan 2020 22:10:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cyIun7rDoXXTYolsbCm6GgqMXcIB34rVuLdbn4oYro4=; b=clIsWUlGAmN7RIG/wXjeCednUK
 Ow46OzXpZjgU+KZ7X1PQOpb4+wnEJrzoq2GgwI6yTpH6Gx8uos4lr9prnVn9ZpJXAIdjRbIa0ZHEI
 wuevzSni79P7R4wDp0uyxMkdrkDcXKDdS3K/fbUZvacZLQjSL8gFxlV0sY2Ua36sPKPY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cyIun7rDoXXTYolsbCm6GgqMXcIB34rVuLdbn4oYro4=; b=HOLRNtwni18zetEWnLkOWEz38b
 i1uT7yl/xa//1jkFQM9/POpczIF77VnamPUHFdBxtsvn9G2IXpi8oztl4sHsN3G+dDvDDkhZenU6l
 bO9t62V6qgOuqBlcUpJq5HPPqFkmc1XzoSuPlLfEfggTw6kS6Otq4XQLCGpR0YzTA4i4=;
Received: from namei.org ([65.99.196.166])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iwZ4T-003Nw1-Lp
 for oprofile-list@lists.sourceforge.net; Tue, 28 Jan 2020 22:10:58 +0000
Received: from localhost (localhost [127.0.0.1])
 by namei.org (8.14.4/8.14.4) with ESMTP id 00SLGe9n004527;
 Tue, 28 Jan 2020 21:16:40 GMT
Date: Wed, 29 Jan 2020 08:16:40 +1100 (AEDT)
From: James Morris <jmorris@namei.org>
To: Alexey Budankov <alexey.budankov@linux.intel.com>
Subject: Re: [PATCH v6 03/10] perf/core: open access to probes for CAP_PERFMON
 privileged process
In-Reply-To: <6cdc10f2-31e5-6d71-7d71-c6b5250b74f1@linux.intel.com>
Message-ID: <alpine.LRH.2.21.2001290816290.2204@namei.org>
References: <74d524ab-ac11-a7b8-1052-eba10f117e09@linux.intel.com>
 <6cdc10f2-31e5-6d71-7d71-c6b5250b74f1@linux.intel.com>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iwZ4T-003Nw1-Lp
X-Mailman-Approved-At: Wed, 29 Jan 2020 15:37:00 +0000
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
Cc: Song Liu <songliubraving@fb.com>, Peter Zijlstra <peterz@infradead.org>,
 "benh@kernel.crashing.org" <benh@kernel.crashing.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Paul Mackerras <paulus@samba.org>,
 Jiri Olsa <jolsa@redhat.com>, Andi Kleen <ak@linux.intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Igor Lubashev <ilubashe@akamai.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 Serge Hallyn <serge@hallyn.com>, Robert Richter <rric@kernel.org>,
 Will Deacon <will@kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Stephane Eranian <eranian@google.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Tue, 28 Jan 2020, Alexey Budankov wrote:

> 
> Open access to monitoring via kprobes and uprobes and eBPF tracing for
> CAP_PERFMON privileged process. Providing the access under CAP_PERFMON
> capability singly, without the rest of CAP_SYS_ADMIN credentials, excludes
> chances to misuse the credentials and makes operation more secure.
> 
> perf kprobes and uprobes are used by ftrace and eBPF. perf probe uses
> ftrace to define new kprobe events, and those events are treated as
> tracepoint events. eBPF defines new probes via perf_event_open interface
> and then the probes are used in eBPF tracing.
> 
> CAP_PERFMON implements the principal of least privilege for performance
> monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39 principle
> of least privilege: A security design principle that states that a process or
> program be granted only those privileges (e.g., capabilities) necessary to
> accomplish its legitimate function, and only for the time that such privileges
> are actually required)
> 
> For backward compatibility reasons access to perf_events subsystem remains
> open for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN usage for
> secure perf_events monitoring is discouraged with respect to CAP_PERFMON
> capability.
> 
> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
> ---
>  kernel/events/core.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)


Acked-by: James Morris <jamorris@linux.microsoft.com>


-- 
James Morris
<jmorris@namei.org>



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
