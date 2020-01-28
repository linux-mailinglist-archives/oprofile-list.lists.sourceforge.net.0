Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0207614B9C2
	for <lists+oprofile-list@lfdr.de>; Tue, 28 Jan 2020 15:34:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1iwRwd-0005mB-En; Tue, 28 Jan 2020 14:34:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexey.budankov@linux.intel.com>) id 1iwK93-0000da-Hi
 for oprofile-list@lists.sourceforge.net; Tue, 28 Jan 2020 06:14:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DMIf/uQJOUtTcXDv52Utm+bLp6O/QqWCRz2GylF3Dpk=; b=e4DVF4pwyRToMBaBFbcQjnVX2h
 QByHU0K+622TTVUIcE4kauHZJqEUQ0pHDlV3a9Kkwcn6BgJq/v3+mvLR/F4D+3kT8v+4kkD3wCjHT
 Qb6GfV0MVtt6dYUxOS+PBUo70lXpiFxNZMbdIsSqWBNVlg6T+JbBM16d9q8yuH+pdxdc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DMIf/uQJOUtTcXDv52Utm+bLp6O/QqWCRz2GylF3Dpk=; b=Yng7sIqKoRSkSuK98/rJh2JCbN
 RmEC9oCm9nTRl8RRos7VFRml4KOmgfkmzA8udbCosUdMX3U6wWhgm7HqUTtJcLmJY7eewJ+amKY5e
 zaw3MPF7GTuPOl+54ATHnRTSAk7+vvvbgDg3Oq5YMbrmDTxBsjqIcTkqC3QOzj0W7DsQ=;
Received: from mga17.intel.com ([192.55.52.151])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iwK8z-002kic-Fw
 for oprofile-list@lists.sourceforge.net; Tue, 28 Jan 2020 06:14:41 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 22:14:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,372,1574150400"; d="scan'208";a="427538213"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga005.fm.intel.com with ESMTP; 27 Jan 2020 22:14:30 -0800
Received: from [10.252.25.124] (abudanko-mobl.ccr.corp.intel.com
 [10.252.25.124])
 by linux.intel.com (Postfix) with ESMTP id C3E41580277;
 Mon, 27 Jan 2020 22:14:22 -0800 (PST)
Subject: [PATCH v6 10/10] drivers/oprofile: open access for CAP_PERFMON
 privileged process
From: Alexey Budankov <alexey.budankov@linux.intel.com>
To: Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 "benh@kernel.crashing.org" <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Serge Hallyn <serge@hallyn.com>,
 Will Deacon <will@kernel.org>, Robert Richter <rric@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>
References: <74d524ab-ac11-a7b8-1052-eba10f117e09@linux.intel.com>
Organization: Intel Corp.
Message-ID: <eff5e211-7114-f854-f53f-08491f9dcc26@linux.intel.com>
Date: Tue, 28 Jan 2020 09:14:21 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <74d524ab-ac11-a7b8-1052-eba10f117e09@linux.intel.com>
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iwK8z-002kic-Fw
X-Mailman-Approved-At: Tue, 28 Jan 2020 14:34:21 +0000
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
Cc: Song Liu <songliubraving@fb.com>, Andi Kleen <ak@linux.intel.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Igor Lubashev <ilubashe@akamai.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, oprofile-list@lists.sf.net,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net


Open access to monitoring for CAP_PERFMON privileged process. Providing
the access under CAP_PERFMON capability singly, without the rest of
CAP_SYS_ADMIN credentials, excludes chances to misuse the credentials and
makes operation more secure.

CAP_PERFMON implements the principal of least privilege for performance
monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39 principle
of least privilege: A security design principle that states that a process
or program be granted only those privileges (e.g., capabilities) necessary
to accomplish its legitimate function, and only for the time that such
privileges are actually required)

For backward compatibility reasons access to the monitoring remains open
for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN usage for secure
monitoring is discouraged with respect to CAP_PERFMON capability.

Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
---
 drivers/oprofile/event_buffer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/oprofile/event_buffer.c b/drivers/oprofile/event_buffer.c
index 12ea4a4ad607..6c9edc8bbc95 100644
--- a/drivers/oprofile/event_buffer.c
+++ b/drivers/oprofile/event_buffer.c
@@ -113,7 +113,7 @@ static int event_buffer_open(struct inode *inode, struct file *file)
 {
 	int err = -EPERM;
 
-	if (!capable(CAP_SYS_ADMIN))
+	if (!perfmon_capable())
 		return -EPERM;
 
 	if (test_and_set_bit_lock(0, &buffer_opened))
-- 
2.20.1




_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
