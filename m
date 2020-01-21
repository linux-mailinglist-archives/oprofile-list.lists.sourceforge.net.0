Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FC414453A
	for <lists+oprofile-list@lfdr.de>; Tue, 21 Jan 2020 20:41:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1itzOZ-0006os-Nj; Tue, 21 Jan 2020 19:41:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexey.budankov@linux.intel.com>) id 1ityFu-0004Ez-T2
 for oprofile-list@lists.sourceforge.net; Tue, 21 Jan 2020 18:28:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jLaL0doScMiqEq2YfB566pNkBO+oOHJ6PYok98zrtcA=; b=FH2SjGm9IoEGj63o4M4Q2gcLvK
 i0rA/IUqKWi4ufsfTqaQGzjXTeZpIvIIQgikj8qBnXOuwbGZX3W9iStWYqacZBxJVUAAI8nuY+f1h
 L01WvMG4NaT2Ox4AoYbNUtLqNSV/AuKxMpX+Qhalw6AK8IeTAfm93IazliyJMapkzXGc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jLaL0doScMiqEq2YfB566pNkBO+oOHJ6PYok98zrtcA=; b=hUFEoCFkJ6wR1WsUkTzz/N9/pn
 W8l3sI6Sjs1DD7+gofVMfEZaLAE0bMldc5Pjmd9FlrDtSybBq7eRoPP9SkgNNxDou5Kyy0jhYMMQG
 lg73HXYEy5e/+uJbhxzfSuMvFtaIgBO49he19gUb33aiuD4j5BcyrWOqrDTfAn0SWMWA=;
Received: from mga02.intel.com ([134.134.136.20])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ityFq-00Ci9D-VF
 for oprofile-list@lists.sourceforge.net; Tue, 21 Jan 2020 18:28:02 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 10:27:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,346,1574150400"; d="scan'208";a="228946136"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga006.jf.intel.com with ESMTP; 21 Jan 2020 10:27:52 -0800
Received: from [10.252.13.111] (abudanko-mobl.ccr.corp.intel.com
 [10.252.13.111])
 by linux.intel.com (Postfix) with ESMTP id 76FDE58033E;
 Tue, 21 Jan 2020 10:27:42 -0800 (PST)
Subject: Re: [PATCH v5 01/10] capabilities: introduce CAP_PERFMON to kernel
 and user space
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>,
 Stephen Smalley <sds@tycho.nsa.gov>
References: <0548c832-7f4b-dc4c-8883-3f2b6d351a08@linux.intel.com>
 <9b77124b-675d-5ac7-3741-edec575bd425@linux.intel.com>
 <64cab472-806e-38c4-fb26-0ffbee485367@tycho.nsa.gov>
 <05297eff-8e14-ccdf-55a4-870c64516de8@linux.intel.com>
 <CAADnVQK-JzK-GUk4KOozn4c1xr=7TiCpB9Fi0QDC9nE6iVn8iQ@mail.gmail.com>
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <537bdb28-c9e4-f44f-d665-25250065a6bb@linux.intel.com>
Date: Tue, 21 Jan 2020 21:27:41 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAADnVQK-JzK-GUk4KOozn4c1xr=7TiCpB9Fi0QDC9nE6iVn8iQ@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ityFq-00Ci9D-VF
X-Mailman-Approved-At: Tue, 21 Jan 2020 19:41:03 +0000
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
 "benh@kernel.crashing.org" <benh@kernel.crashing.org>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 Will Deacon <will.deacon@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Paul Mackerras <paulus@samba.org>,
 Jiri Olsa <jolsa@redhat.com>, Andi Kleen <ak@linux.intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Igor Lubashev <ilubashe@akamai.com>,
 James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 Serge Hallyn <serge@hallyn.com>, Robert Richter <rric@kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Andy Lutomirski <luto@amacapital.net>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net


On 21.01.2020 20:55, Alexei Starovoitov wrote:
> On Tue, Jan 21, 2020 at 9:31 AM Alexey Budankov
> <alexey.budankov@linux.intel.com> wrote:
>>
>>
>> On 21.01.2020 17:43, Stephen Smalley wrote:
>>> On 1/20/20 6:23 AM, Alexey Budankov wrote:
>>>>
>>>> Introduce CAP_PERFMON capability designed to secure system performance
>>>> monitoring and observability operations so that CAP_PERFMON would assist
>>>> CAP_SYS_ADMIN capability in its governing role for perf_events, i915_perf
>>>> and other performance monitoring and observability subsystems.
>>>>
>>>> CAP_PERFMON intends to harden system security and integrity during system
>>>> performance monitoring and observability operations by decreasing attack
>>>> surface that is available to a CAP_SYS_ADMIN privileged process [1].
>>>> Providing access to system performance monitoring and observability
>>>> operations under CAP_PERFMON capability singly, without the rest of
>>>> CAP_SYS_ADMIN credentials, excludes chances to misuse the credentials and
>>>> makes operation more secure.
>>>>
>>>> CAP_PERFMON intends to take over CAP_SYS_ADMIN credentials related to
>>>> system performance monitoring and observability operations and balance
>>>> amount of CAP_SYS_ADMIN credentials following the recommendations in the
>>>> capabilities man page [1] for CAP_SYS_ADMIN: "Note: this capability is
>>>> overloaded; see Notes to kernel developers, below."
>>>>
>>>> Although the software running under CAP_PERFMON can not ensure avoidance
>>>> of related hardware issues, the software can still mitigate these issues
>>>> following the official embargoed hardware issues mitigation procedure [2].
>>>> The bugs in the software itself could be fixed following the standard
>>>> kernel development process [3] to maintain and harden security of system
>>>> performance monitoring and observability operations.
>>>>
>>>> [1] http://man7.org/linux/man-pages/man7/capabilities.7.html
>>>> [2] https://www.kernel.org/doc/html/latest/process/embargoed-hardware-issues.html
>>>> [3] https://www.kernel.org/doc/html/latest/admin-guide/security-bugs.html
>>>>
>>>> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
>>>> ---
>>>>   include/linux/capability.h          | 12 ++++++++++++
>>>>   include/uapi/linux/capability.h     |  8 +++++++-
>>>>   security/selinux/include/classmap.h |  4 ++--
>>>>   3 files changed, 21 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/include/linux/capability.h b/include/linux/capability.h
>>>> index ecce0f43c73a..8784969d91e1 100644
>>>> --- a/include/linux/capability.h
>>>> +++ b/include/linux/capability.h
>>>> @@ -251,6 +251,18 @@ extern bool privileged_wrt_inode_uidgid(struct user_namespace *ns, const struct
>>>>   extern bool capable_wrt_inode_uidgid(const struct inode *inode, int cap);
>>>>   extern bool file_ns_capable(const struct file *file, struct user_namespace *ns, int cap);
>>>>   extern bool ptracer_capable(struct task_struct *tsk, struct user_namespace *ns);
>>>> +static inline bool perfmon_capable(void)
>>>> +{
>>>> +    struct user_namespace *ns = &init_user_ns;
>>>> +
>>>> +    if (ns_capable_noaudit(ns, CAP_PERFMON))
>>>> +        return ns_capable(ns, CAP_PERFMON);
>>>> +
>>>> +    if (ns_capable_noaudit(ns, CAP_SYS_ADMIN))
>>>> +        return ns_capable(ns, CAP_SYS_ADMIN);
>>>> +
>>>> +    return false;
>>>> +}
>>>
>>> Why _noaudit()?  Normally only used when a permission failure is non-fatal to the operation.  Otherwise, we want the audit message.
>>
>> Some of ideas from v4 review.
> 
> well, in the requested changes form v4 I wrote:
> return capable(CAP_PERFMON);
> instead of
> return false;

Aww, indeed. I was concerning exactly about it when updating the patch
and simply put false, missing the fact that capable() also logs.

I suppose the idea is originally from here [1].
BTW, Has it already seen any _more optimal_ implementation?
Anyway, original or optimized version could be reused for CAP_PERFMON.

~Alexey

[1] https://patchwork.ozlabs.org/patch/1159243/

> 
> That's what Andy suggested earlier for CAP_BPF.
> I think that should resolve Stephen's concern.
> 


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
