Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 529AB195CB3
	for <lists+oprofile-list@lfdr.de>; Fri, 27 Mar 2020 18:27:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jHslu-0002Kg-2f; Fri, 27 Mar 2020 17:27:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmorris@namei.org>) id 1jHbwg-0001Hx-Ll
 for oprofile-list@lists.sourceforge.net; Thu, 26 Mar 2020 23:29:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=USVclo75MbQofynQvz6ob1KqtGfrfKPo3JVhLDXPhMA=; b=eDeI6kcXSvmhx4cTeqysqH1cQC
 8EGOvL/Apq4FGkpB2Zrhs8N28sADEzNE6S6DWobyXvT5+e5ZkFlNI19Jx/UWx3rV4EkVpuwl8TkaB
 H/9BlDPkPcyuR3pFowA++mRlBXFFr51DiKzpVJlaIUVhM4lKSWAI5faqznbdtuaFYFOI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=USVclo75MbQofynQvz6ob1KqtGfrfKPo3JVhLDXPhMA=; b=C+CMgbZN6e3nxv5P7XqEgToPmA
 LpUgBYCaJHKp6oIBi65NMlSoCg0vry/9FnXWeEiMcDp3zAx2QlXDgijmnF9lVviRT1TjbhMWZ+Jf7
 Kgy1wWO4A5Kgh5jT8zvs5BnGy+2jXBmbUqhKM8rNgy23MRgMq+UPdaSh+iIhw3cMPBFk=;
Received: from namei.org ([65.99.196.166])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jHbwe-004xuy-OZ
 for oprofile-list@lists.sourceforge.net; Thu, 26 Mar 2020 23:29:54 +0000
Received: from localhost (localhost [127.0.0.1])
 by namei.org (8.14.4/8.14.4) with ESMTP id 02QNSlWb015673;
 Thu, 26 Mar 2020 23:28:47 GMT
Date: Fri, 27 Mar 2020 10:28:47 +1100 (AEDT)
From: James Morris <jmorris@namei.org>
To: Serge Hallyn <serge@hallyn.com>
Subject: Re: [Intel-gfx] [PATCH v7 00/12] Introduce CAP_PERFMON to secure
 system performance monitoring and observability
In-Reply-To: <20200302001913.GA21145@sl>
Message-ID: <alpine.LRH.2.21.2003271026290.14767@namei.org>
References: <c8de937a-0b3a-7147-f5ef-69f467e87a13@linux.intel.com>
 <3ae0bed5-204e-de81-7647-5f0d8106cd67@linux.intel.com>
 <20200302001913.GA21145@sl>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: hallyn.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jHbwe-004xuy-OZ
X-Mailman-Approved-At: Fri, 27 Mar 2020 17:27:53 +0000
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
 Paul Mackerras <paulus@samba.org>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, Andi Kleen <ak@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 Igor Lubashev <ilubashe@akamai.com>, oprofile-list@lists.sf.net,
 Stephen Smalley <sds@tycho.nsa.gov>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 Helge Deller <deller@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Sun, 1 Mar 2020, Serge Hallyn wrote:

> Thanks, this looks good to me, in keeping with the CAP_SYSLOG break.
> 
> Acked-by: Serge E. Hallyn <serge@hallyn.com>
> 
> for the set.
> 
> James/Ingo/Peter, if noone has remaining objections, whose branch
> should these go in through?
> 
> thanks,
> -serge
> 
> On Tue, Feb 25, 2020 at 12:55:54PM +0300, Alexey Budankov wrote:
> > 
> > Hi,
> > 
> > Is there anything else I could do in order to move the changes forward
> > or is something still missing from this patch set?
> > Could you please share you mind?

Alexey,

It seems some of the previous Acks are not included in this patchset, e.g. 
https://lkml.org/lkml/2020/1/22/655

Every patch needs a Reviewed-by or Acked-by from maintainers of the code 
being changed.

You have enough from the security folk, but I can't see any included from 
the perf folk.


-- 
James Morris
<jmorris@namei.org>



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
