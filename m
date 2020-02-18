Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B80C016308F
	for <lists+oprofile-list@lfdr.de>; Tue, 18 Feb 2020 20:48:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1j48r1-0000Ad-5j; Tue, 18 Feb 2020 19:48:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmorris@namei.org>) id 1j48WK-0006Be-Ge
 for oprofile-list@lists.sourceforge.net; Tue, 18 Feb 2020 19:27:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=um2f/+KQ+CxUM8rwoKHcY+sGVyAmf0UXDR1GAr1SSHI=; b=ia9Dz2E0cjR/yKOQuCTLWD5dd7
 M0gI9OnZZhyhNMnKyOWkY9Lqvw5uTDEpuov9dFiHEX1RvchtU1OvWm1HES+B7pghlL8BCtpEck1/v
 65vbh2N69yiKZ7f2lTjrpN+ZP/KczcvxwcqeBFzr6t3t2crYedzKeGdRMnD2vHz0JJuA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=um2f/+KQ+CxUM8rwoKHcY+sGVyAmf0UXDR1GAr1SSHI=; b=LQQptDvain5+puYKoEHcwYOmIx
 DRf2HNo7hb3gYvKKp1bcvRQRG/pyLvlq4OU5A+UPdDR8rnr1EO7v+33qSsFGz064uYgOMxgekMydb
 wQW+TX6xQHOTQRz9k1lQ7tdZV2rKwEbJR6ur6ur0B8TOfRym3WqClfbk1D/FpAqYSQw0=;
Received: from namei.org ([65.99.196.166])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j48WI-00Gr0c-E0
 for oprofile-list@lists.sourceforge.net; Tue, 18 Feb 2020 19:27:00 +0000
Received: from localhost (localhost [127.0.0.1])
 by namei.org (8.14.4/8.14.4) with ESMTP id 01IJPSnR013669;
 Tue, 18 Feb 2020 19:25:28 GMT
Date: Wed, 19 Feb 2020 06:25:28 +1100 (AEDT)
From: James Morris <jmorris@namei.org>
To: Alexey Budankov <alexey.budankov@linux.intel.com>
Subject: Re: [PATCH v7 06/12] trace/bpf_trace: open access for CAP_PERFMON
 privileged process
In-Reply-To: <fc689865-f8ff-1e85-ac0c-b2f1c28b7eb6@linux.intel.com>
Message-ID: <alpine.LRH.2.21.2002190625150.10165@namei.org>
References: <c8de937a-0b3a-7147-f5ef-69f467e87a13@linux.intel.com>
 <fc689865-f8ff-1e85-ac0c-b2f1c28b7eb6@linux.intel.com>
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
X-Headers-End: 1j48WI-00Gr0c-E0
X-Mailman-Approved-At: Tue, 18 Feb 2020 19:48:21 +0000
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
Cc: linux-man@vger.kernel.org,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Stephane Eranian <eranian@google.com>,
 Paul Mackerras <paulus@samba.org>, Jiri Olsa <jolsa@redhat.com>,
 Ingo Molnar <mingo@kernel.org>, Andi Kleen <ak@linux.intel.com>,
 Will Deacon <will@kernel.org>, Helge Deller <deller@gmx.de>,
 Igor Lubashev <ilubashe@akamai.com>, oprofile-list@lists.sf.net,
 Stephen Smalley <sds@tycho.nsa.gov>, Serge Hallyn <serge@hallyn.com>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Mon, 17 Feb 2020, Alexey Budankov wrote:

> 
> Open access to bpf_trace monitoring for CAP_PERFMON privileged process.
> Providing the access under CAP_PERFMON capability singly, without the
> rest of CAP_SYS_ADMIN credentials, excludes chances to misuse the
> credentials and makes operation more secure.
> 
> CAP_PERFMON implements the principal of least privilege for performance
> monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39
> principle of least privilege: A security design principle that states
> that a process or program be granted only those privileges (e.g.,
> capabilities) necessary to accomplish its legitimate function, and only
> for the time that such privileges are actually required)
> 
> For backward compatibility reasons access to bpf_trace monitoring
> remains open for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN
> usage for secure bpf_trace monitoring is discouraged with respect to
> CAP_PERFMON capability.
> 
> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>


Reviewed-by: James Morris <jamorris@linux.microsoft.com>


-- 
James Morris
<jmorris@namei.org>



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
