Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEA61538AA
	for <lists+oprofile-list@lfdr.de>; Wed,  5 Feb 2020 20:03:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1izPxa-000895-F0; Wed, 05 Feb 2020 19:03:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexey.budankov@linux.intel.com>) id 1izOZX-0004Mb-5C
 for oprofile-list@lists.sourceforge.net; Wed, 05 Feb 2020 17:34:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yHbdHuO8BCxu4zsz3LSPCANlXdZNy+RKcOp391BQWi8=; b=SBFsEJNGrvRT+vkSOvGdZnw09j
 DYyCF6FHg6MNWXqVRfH5y9UI48TZfB/8x6wiS5niaPVo4Ndp2nbiKZaqexF5OPkOzXhznrUfpcsSu
 jM83wzS7m9XwZyMDreEm3vBOYL1U7ZJNxx9icDE0W5XTxWt3BfapHyNmNlkSy4uPP5co=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yHbdHuO8BCxu4zsz3LSPCANlXdZNy+RKcOp391BQWi8=; b=Riqv+TMXf2JWJOXOjmGOM2ABg3
 E3KBz9GfKAyqH+YifVEBU+JsHY3ooLVR6/AhUmHRPNikdsxos46CBFKKSayv8u0zgmeAJHd67SxmB
 ZiRGe567vif1aVo9Cpssb/knekq8S/Luhi/23ycMoLzLf5t12VptALlPN2G202U3SNf8=;
Received: from mga06.intel.com ([134.134.136.31])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1izOZT-000Pih-2c
 for oprofile-list@lists.sourceforge.net; Wed, 05 Feb 2020 17:34:43 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 09:34:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,406,1574150400"; d="scan'208";a="343794118"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga001.fm.intel.com with ESMTP; 05 Feb 2020 09:34:32 -0800
Received: from [10.252.5.149] (abudanko-mobl.ccr.corp.intel.com [10.252.5.149])
 by linux.intel.com (Postfix) with ESMTP id 782CD5802BC;
 Wed,  5 Feb 2020 09:34:25 -0800 (PST)
Subject: [PATCH v6 06/10] trace/bpf_trace: open access for CAP_PERFMON
 privileged process
From: Alexey Budankov <alexey.budankov@linux.intel.com>
To: James Morris <jmorris@namei.org>, Serge Hallyn <serge@hallyn.com>,
 Stephen Smalley <sds@tycho.nsa.gov>, Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>
References: <576a6141-36d4-14c0-b395-8d195892b916@linux.intel.com>
Organization: Intel Corp.
Message-ID: <d0c5ef3d-92e1-26f5-422a-abe683fb5299@linux.intel.com>
Date: Wed, 5 Feb 2020 20:34:24 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <576a6141-36d4-14c0-b395-8d195892b916@linux.intel.com>
Content-Language: en-US
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1izOZT-000Pih-2c
X-Mailman-Approved-At: Wed, 05 Feb 2020 19:03:36 +0000
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
Cc: Andi Kleen <ak@linux.intel.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Igor Lubashev <ilubashe@akamai.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, oprofile-list@lists.sf.net,
 Thomas Gleixner <tglx@linutronix.de>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net


Open access to bpf_trace monitoring for CAP_PERFMON privileged process.
Providing the access under CAP_PERFMON capability singly, without the
rest of CAP_SYS_ADMIN credentials, excludes chances to misuse the
credentials and makes operation more secure.

CAP_PERFMON implements the principal of least privilege for performance
monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39
principle of least privilege: A security design principle that states that
a process or program be granted only those privileges (e.g., capabilities)
necessary to accomplish its legitimate function, and only for the time
that such privileges are actually required)

For backward compatibility reasons access to bpf_trace monitoring remains
open for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN usage for
secure bpf_trace monitoring is discouraged with respect to CAP_PERFMON
capability.

Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
---
kernel/trace/bpf_trace.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/trace/bpf_trace.c b/kernel/trace/bpf_trace.c
index e5ef4ae9edb5..334f1d71ebb1 100644
--- a/kernel/trace/bpf_trace.c
+++ b/kernel/trace/bpf_trace.c
@@ -1395,7 +1395,7 @@ int perf_event_query_prog_array(struct perf_event *event, void __user *info)
 	u32 *ids, prog_cnt, ids_len;
 	int ret;
 
-	if (!capable(CAP_SYS_ADMIN))
+	if (!perfmon_capable())
 		return -EPERM;
 	if (event->attr.type != PERF_TYPE_TRACEPOINT)
 		return -EINVAL;
-- 
2.20.1




_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
