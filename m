Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B7914453B
	for <lists+oprofile-list@lfdr.de>; Tue, 21 Jan 2020 20:41:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1itzOZ-0006oj-MH; Tue, 21 Jan 2020 19:41:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexei.starovoitov@gmail.com>) id 1itxlA-00025m-P5
 for oprofile-list@lists.sourceforge.net; Tue, 21 Jan 2020 17:56:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=98bZxOBbCQ3VnMNuVxei8T8EkXL1AFFFNz8Ptr5Fwf4=; b=lK2bSxGXFCY2RDr2VCmaelDYU1
 OFVwqiOrvmXAkLJfCI7GP/aSCEQ4Y+EJK0krSoUjcThSAC6LebcyqtbVfRk9JbAzbWqn8ksETfAxP
 R0i2XtYk6z5eqwpNW6uXfDVc9yncSB6eFhm6H3TfK20TvigWEsqyA7T3FZLk3kytium0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=98bZxOBbCQ3VnMNuVxei8T8EkXL1AFFFNz8Ptr5Fwf4=; b=M+G93VPGyE5tbzYUoilp+s7O17
 tkJEW2DhqTcmzc4EVYkLRNb/qRIwxbvx+WZWhElW//Jo2AmEbjR9nAine8v52Yc5ZXjy/3Tw3/f4Z
 IZQmhTg2NsciIY3TCSvfn/Thgt66th/yBaeNwf7iiDKqxJfN4lKNpGBTfc7YTCyxIHnY=;
Received: from mail-lj1-f196.google.com ([209.85.208.196])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1itxl6-00ChmC-Gc
 for oprofile-list@lists.sourceforge.net; Tue, 21 Jan 2020 17:56:16 +0000
Received: by mail-lj1-f196.google.com with SMTP id w1so3766320ljh.5
 for <oprofile-list@lists.sf.net>; Tue, 21 Jan 2020 09:56:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=98bZxOBbCQ3VnMNuVxei8T8EkXL1AFFFNz8Ptr5Fwf4=;
 b=f0UMJKfmKZdH5ae7CC35Bo8JfJuzIWwRMR2d3DvgxxocOt4ZxltoLSDNLwnzFZ8sCh
 mHQ747HPLwIz8jiYkjw/ZBy7Z+2kGJIfn0vBm2e30i+bbMJpifVwiABEulHvlUjKF3e+
 zmkyIyJf834Xz+CPHcMmtF5hwd//KEWq0xygi0vqFBd3IcGN7Ao8G+F+LXLzP7r3FTHU
 oWLSaaKu9S1cZeQ2mmM7DUSMHSd9Ajyf0ADQRJWavAuhTtXQndb3srd5FE+ES5vHQ81S
 2hSAKezaBjD/oILoUk/qKVeqjfM7viogSA5lWNPJ1ygAzh6EIYbDvnDKr6JiQhFI5jr2
 EyIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=98bZxOBbCQ3VnMNuVxei8T8EkXL1AFFFNz8Ptr5Fwf4=;
 b=eRwNbIL6W9Xj+Izhr8n2bOv6bgk6yFkrr6hsacmm1ctacqHqsyfaT12OHA4RRo2QYd
 +Pp4Ek9TR6nY0yhbvYWdecpwTFhyvuB0CgXPDShZt9q5RMkx3CSL3WXx5cpfM7cduRci
 CObFbMVvpqnL/UT2yLnmiYz01tPSc4yHQfOOQKVb+QMgkrlPbBD88Vm9RN+yXFqdNHPu
 udM0Zba+HPw/5ge7fooTSkgOcDCraG9IxoBDCnWz8ryL8WHue+xDoVZTtZyrLPzHW5sI
 /FDF80J37/l2f+ya3OIidOCZ+xUBhrB1hXD1jNsrHxBtqjgAtk/h6DRbhBxwRisdSsDo
 FjoA==
X-Gm-Message-State: APjAAAVoADAhgV27AGxsfhkkBe6oNQSxzcjTPjQUaNmYXJNA+K0crMdH
 nj0CAt2I+JPfSI0G1n+ngdafu1ds5kHbXpO+Kms=
X-Google-Smtp-Source: APXvYqzSduuvbYALVkj//Xrt9JfaU9cf6Qr6bCvfXcM6mqwY1KvupDpCfJTjcSWmOKPsyFlFi8k1zTlkXGNFH8MYpJ4=
X-Received: by 2002:a05:651c:8f:: with SMTP id
 15mr17366951ljq.109.1579629365512; 
 Tue, 21 Jan 2020 09:56:05 -0800 (PST)
MIME-Version: 1.0
References: <0548c832-7f4b-dc4c-8883-3f2b6d351a08@linux.intel.com>
 <9b77124b-675d-5ac7-3741-edec575bd425@linux.intel.com>
 <64cab472-806e-38c4-fb26-0ffbee485367@tycho.nsa.gov>
 <05297eff-8e14-ccdf-55a4-870c64516de8@linux.intel.com>
In-Reply-To: <05297eff-8e14-ccdf-55a4-870c64516de8@linux.intel.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Tue, 21 Jan 2020 09:55:53 -0800
Message-ID: <CAADnVQK-JzK-GUk4KOozn4c1xr=7TiCpB9Fi0QDC9nE6iVn8iQ@mail.gmail.com>
Subject: Re: [PATCH v5 01/10] capabilities: introduce CAP_PERFMON to kernel
 and user space
To: Alexey Budankov <alexey.budankov@linux.intel.com>
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (alexei.starovoitov[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1itxl6-00ChmC-Gc
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
 Stephen Smalley <sds@tycho.nsa.gov>, Serge Hallyn <serge@hallyn.com>,
 Robert Richter <rric@kernel.org>,
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

On Tue, Jan 21, 2020 at 9:31 AM Alexey Budankov
<alexey.budankov@linux.intel.com> wrote:
>
>
> On 21.01.2020 17:43, Stephen Smalley wrote:
> > On 1/20/20 6:23 AM, Alexey Budankov wrote:
> >>
> >> Introduce CAP_PERFMON capability designed to secure system performance
> >> monitoring and observability operations so that CAP_PERFMON would assist
> >> CAP_SYS_ADMIN capability in its governing role for perf_events, i915_perf
> >> and other performance monitoring and observability subsystems.
> >>
> >> CAP_PERFMON intends to harden system security and integrity during system
> >> performance monitoring and observability operations by decreasing attack
> >> surface that is available to a CAP_SYS_ADMIN privileged process [1].
> >> Providing access to system performance monitoring and observability
> >> operations under CAP_PERFMON capability singly, without the rest of
> >> CAP_SYS_ADMIN credentials, excludes chances to misuse the credentials and
> >> makes operation more secure.
> >>
> >> CAP_PERFMON intends to take over CAP_SYS_ADMIN credentials related to
> >> system performance monitoring and observability operations and balance
> >> amount of CAP_SYS_ADMIN credentials following the recommendations in the
> >> capabilities man page [1] for CAP_SYS_ADMIN: "Note: this capability is
> >> overloaded; see Notes to kernel developers, below."
> >>
> >> Although the software running under CAP_PERFMON can not ensure avoidance
> >> of related hardware issues, the software can still mitigate these issues
> >> following the official embargoed hardware issues mitigation procedure [2].
> >> The bugs in the software itself could be fixed following the standard
> >> kernel development process [3] to maintain and harden security of system
> >> performance monitoring and observability operations.
> >>
> >> [1] http://man7.org/linux/man-pages/man7/capabilities.7.html
> >> [2] https://www.kernel.org/doc/html/latest/process/embargoed-hardware-issues.html
> >> [3] https://www.kernel.org/doc/html/latest/admin-guide/security-bugs.html
> >>
> >> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
> >> ---
> >>   include/linux/capability.h          | 12 ++++++++++++
> >>   include/uapi/linux/capability.h     |  8 +++++++-
> >>   security/selinux/include/classmap.h |  4 ++--
> >>   3 files changed, 21 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/include/linux/capability.h b/include/linux/capability.h
> >> index ecce0f43c73a..8784969d91e1 100644
> >> --- a/include/linux/capability.h
> >> +++ b/include/linux/capability.h
> >> @@ -251,6 +251,18 @@ extern bool privileged_wrt_inode_uidgid(struct user_namespace *ns, const struct
> >>   extern bool capable_wrt_inode_uidgid(const struct inode *inode, int cap);
> >>   extern bool file_ns_capable(const struct file *file, struct user_namespace *ns, int cap);
> >>   extern bool ptracer_capable(struct task_struct *tsk, struct user_namespace *ns);
> >> +static inline bool perfmon_capable(void)
> >> +{
> >> +    struct user_namespace *ns = &init_user_ns;
> >> +
> >> +    if (ns_capable_noaudit(ns, CAP_PERFMON))
> >> +        return ns_capable(ns, CAP_PERFMON);
> >> +
> >> +    if (ns_capable_noaudit(ns, CAP_SYS_ADMIN))
> >> +        return ns_capable(ns, CAP_SYS_ADMIN);
> >> +
> >> +    return false;
> >> +}
> >
> > Why _noaudit()?  Normally only used when a permission failure is non-fatal to the operation.  Otherwise, we want the audit message.
>
> Some of ideas from v4 review.

well, in the requested changes form v4 I wrote:
return capable(CAP_PERFMON);
instead of
return false;

That's what Andy suggested earlier for CAP_BPF.
I think that should resolve Stephen's concern.


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
