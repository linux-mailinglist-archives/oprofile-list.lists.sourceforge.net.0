Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E5EF0154C80
	for <lists+oprofile-list@lfdr.de>; Thu,  6 Feb 2020 20:58:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1iznHt-0002P6-Hd; Thu, 06 Feb 2020 19:58:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexey.budankov@linux.intel.com>) id 1izm2p-0002wr-5e
 for oprofile-list@lists.sourceforge.net; Thu, 06 Feb 2020 18:38:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QgeB0dU5HtwzfNXky/4wqqP+6ubGtBeJlij3kNSzDk0=; b=IY+ip/2HcGrL43QSBjjuMKZUHU
 xMVeF+ztilSbnrSDpE9wY4EWHyXbohn8Ozx5+lfsxPg2gPa0kPnFv0XiLyqBCPCV5zUl/QrEbeLHk
 PexS3nekDRQjgb1ng8WWSmzgNvFgNr5AkG3IKlzVA89+d3VxWQzQdP//lbYnvwknzSmE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QgeB0dU5HtwzfNXky/4wqqP+6ubGtBeJlij3kNSzDk0=; b=gT8n8YnC2FI/k9H+cbE116LUe2
 Vgq1rZkAjjmCM0CqLPKSTrSfiCRDFKIldRXR+Q2dRK+Zj3y7YziwU9oPc8/yPaxzGO4hkid3MyQgS
 GZupia2ktHeiD98FXJsAdAAdfu8rLvow2Wk25dCfC4hNgQSj0M1p0AYNPI2VqGc8Xz3E=;
Received: from mga05.intel.com ([192.55.52.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1izm2n-001eo4-IQ
 for oprofile-list@lists.sourceforge.net; Thu, 06 Feb 2020 18:38:31 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 10:38:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,410,1574150400"; d="scan'208";a="279752683"
Received: from linux.intel.com ([10.54.29.200])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Feb 2020 10:38:22 -0800
Received: from [10.251.88.4] (abudanko-mobl.ccr.corp.intel.com [10.251.88.4])
 by linux.intel.com (Postfix) with ESMTP id D2C645803E3;
 Thu,  6 Feb 2020 10:38:15 -0800 (PST)
Subject: Re: [PATCH v6 01/10] capabilities: introduce CAP_PERFMON to kernel
 and user space
To: Stephen Smalley <sds@tycho.nsa.gov>, James Morris <jmorris@namei.org>,
 Serge Hallyn <serge@hallyn.com>, Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>
References: <576a6141-36d4-14c0-b395-8d195892b916@linux.intel.com>
 <a4c5da70-b6d1-b133-9b64-34e164834b03@linux.intel.com>
 <5be0f67c-17e2-7861-37f3-a0f8a82be8f0@tycho.nsa.gov>
 <1bcb4cb1-98c4-cc1a-b8e3-fd8a0e1e606f@linux.intel.com>
 <06cdca0e-65f2-b58d-a84e-5a1907aa9eb5@tycho.nsa.gov>
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <e5d8dc64-6573-21f5-80dd-64cfbf72e13f@linux.intel.com>
Date: Thu, 6 Feb 2020 21:38:14 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <06cdca0e-65f2-b58d-a84e-5a1907aa9eb5@tycho.nsa.gov>
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
X-Headers-End: 1izm2n-001eo4-IQ
X-Mailman-Approved-At: Thu, 06 Feb 2020 19:58:09 +0000
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


On 06.02.2020 21:30, Stephen Smalley wrote:
> On 2/6/20 1:26 PM, Alexey Budankov wrote:
>>
>> On 06.02.2020 21:23, Stephen Smalley wrote:
>>> On 2/5/20 12:30 PM, Alexey Budankov wrote:
>>>>
>>>> Introduce CAP_PERFMON capability designed to secure system performance
>>>> monitoring and observability operations so that CAP_PERFMON would assist
>>>> CAP_SYS_ADMIN capability in its governing role for performance monitoring
>>>> and observability subsystems.
>>>>
>>>> CAP_PERFMON hardens system security and integrity during performance
>>>> monitoring and observability operations by decreasing attack surface that
>>>> is available to a CAP_SYS_ADMIN privileged process [2]. Providing the access
>>>> to system performance monitoring and observability operations under CAP_PERFMON
>>>> capability singly, without the rest of CAP_SYS_ADMIN credentials, excludes
>>>> chances to misuse the credentials and makes the operation more secure.
>>>> Thus, CAP_PERFMON implements the principal of least privilege for performance
>>>> monitoring and observability operations (POSIX IEEE 1003.1e: 2.2.2.39 principle
>>>> of least privilege: A security design principle that states that a process
>>>> or program be granted only those privileges (e.g., capabilities) necessary
>>>> to accomplish its legitimate function, and only for the time that such
>>>> privileges are actually required)
>>>>
>>>> CAP_PERFMON meets the demand to secure system performance monitoring and
>>>> observability operations for adoption in security sensitive, restricted,
>>>> multiuser production environments (e.g. HPC clusters, cloud and virtual compute
>>>> environments), where root or CAP_SYS_ADMIN credentials are not available to
>>>> mass users of a system, and securely unblocks accessibility of system performance monitoring and observability operations beyond root and CAP_SYS_ADMIN use cases.
>>>>
>>>> CAP_PERFMON takes over CAP_SYS_ADMIN credentials related to system performance
>>>> monitoring and observability operations and balances amount of CAP_SYS_ADMIN
>>>> credentials following the recommendations in the capabilities man page [1]
>>>> for CAP_SYS_ADMIN: "Note: this capability is overloaded; see Notes to kernel
>>>> developers, below." For backward compatibility reasons access to system
>>>> performance monitoring and observability subsystems of the kernel remains
>>>> open for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN capability
>>>> usage for secure system performance monitoring and observability operations
>>>> is discouraged with respect to the designed CAP_PERFMON capability.
>>>>
>>>> Although the software running under CAP_PERFMON can not ensure avoidance
>>>> of related hardware issues, the software can still mitigate these issues
>>>> following the official hardware issues mitigation procedure [2]. The bugs
>>>> in the software itself can be fixed following the standard kernel development
>>>> process [3] to maintain and harden security of system performance monitoring
>>>> and observability operations.
>>>>
>>>> [1] http://man7.org/linux/man-pages/man7/capabilities.7.html
>>>> [2] https://www.kernel.org/doc/html/latest/process/embargoed-hardware-issues.html
>>>> [3] https://www.kernel.org/doc/html/latest/admin-guide/security-bugs.html
>>>>
>>>> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
>>>
>>> This will require a small update to the selinux-testsuite to correctly reflect the new capability requirements, but that's easy enough.
>>
>> Is the suite a part of the kernel sources or something else?
> 
> It is external,
> https://github.com/SELinuxProject/selinux-testsuite
> 
> I wasn't suggesting that your patch be blocked on updating the testsuite, just noting that it will need to be done.

Ok. Thanks!

~Alexey




_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
