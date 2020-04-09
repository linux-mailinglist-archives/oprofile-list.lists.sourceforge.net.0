Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B521A67E4
	for <lists+oprofile-list@lfdr.de>; Mon, 13 Apr 2020 16:20:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jNzxF-0001cY-1g; Mon, 13 Apr 2020 14:20:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rppt@linux.ibm.com>) id 1jMTgP-0002sB-38
 for oprofile-list@lists.sourceforge.net; Thu, 09 Apr 2020 09:41:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:In-Reply-To:Content-Type:MIME-Version:
 References:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=k1o6TV1zu4bBOYz+4PDDIi4RXee7089kZWaAlhFY+/8=; b=X5PqnOLSB7rCXDuRyRZvH02W5O
 p654f68xtwSHa4NSEz079J0dzpClgbAgZBWuRtImABkVWe6u5kGkfz8J2QNbQXZWLcpblxq9sysPg
 FpHPGQ4skX6rLDrusYiS+XVwWreMKVv0iI7XZ+WIX5O4LIcISPF45U4grb1pSmyNNEdE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:In-Reply-To:Content-Type:MIME-Version:References:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=k1o6TV1zu4bBOYz+4PDDIi4RXee7089kZWaAlhFY+/8=; b=eos/Z0qHrT1X/ZKDBHrOHWuCNx
 bduycNCeP7ymH42qtEPISnxp8eBrtegqkIX0aBMzTUz/5uwPmrn0saeT7ZxKosSwIGU8Flakf0WLI
 DabTmShVKNfXICvqaSI5AgXOPO7RgxK82bAKoOQmLuWaA0Cq3BgXst6W+J4Mul/FP/80=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jMTgM-00DCvV-Tx
 for oprofile-list@lists.sourceforge.net; Thu, 09 Apr 2020 09:41:12 +0000
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 039939Ft006559
 for <oprofile-list@lists.sf.net>; Thu, 9 Apr 2020 05:19:40 -0400
Received: from e06smtp04.uk.ibm.com (e06smtp04.uk.ibm.com [195.75.94.100])
 by mx0b-001b2d01.pphosted.com with ESMTP id 3092030hu8-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <oprofile-list@lists.sf.net>; Thu, 09 Apr 2020 05:19:39 -0400
Received: from localhost
 by e06smtp04.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <oprofile-list@lists.sf.net> from <rppt@linux.ibm.com>;
 Thu, 9 Apr 2020 10:19:10 +0100
Received: from b06cxnps4074.portsmouth.uk.ibm.com (9.149.109.196)
 by e06smtp04.uk.ibm.com (192.168.101.134) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 9 Apr 2020 10:19:01 +0100
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 0399JRTc48169080
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 9 Apr 2020 09:19:27 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 24E3CA405D;
 Thu,  9 Apr 2020 09:19:27 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 757FDA404D;
 Thu,  9 Apr 2020 09:19:24 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.207.228])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Thu,  9 Apr 2020 09:19:24 +0000 (GMT)
Date: Thu, 9 Apr 2020 12:19:22 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: Re: [PATCH 12/12] MIPS: ip27: Fix includes
References: <20200408113505.2528103-1-jiaxun.yang@flygoat.com>
 <20200408130024.2529220-7-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408130024.2529220-7-jiaxun.yang@flygoat.com>
X-TM-AS-GCONF: 00
x-cbid: 20040909-0016-0000-0000-000003014CE8
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20040909-0017-0000-0000-000033653176
Message-Id: <20200409091922.GA17293@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-09_03:2020-04-07,
 2020-04-09 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0
 phishscore=0 impostorscore=0 adultscore=0 mlxlogscore=418 spamscore=0
 suspectscore=1 clxscore=1011 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004090066
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: flygoat.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jMTgM-00DCvV-Tx
X-Mailman-Approved-At: Mon, 13 Apr 2020 14:20:50 +0000
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Peter Zijlstra <peterz@infradead.org>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>, Huacai Chen <chenhc@lemote.com>,
 Jiri Olsa <jolsa@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Paul Burton <paulburton@kernel.org>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Marc Zyngier <maz@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, bcm-kernel-feedback-list@broadcom.com,
 oprofile-list@lists.sf.net,
 Vladimir Kondratiev <vladimir.kondratiev@intel.com>,
 Robert Richter <rric@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 Arnd Bergmann <arnd@arndb.de>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexios Zavras <alexios.zavras@intel.com>, Steve Winslow <swinslow@gmail.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Matt Redfearn <matt.redfearn@mips.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>, Oleksij Rempel <linux@rempel-privat.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Wed, Apr 08, 2020 at 08:59:54PM +0800, Jiaxun Yang wrote:
> Somehow changes in topology messed up headers.
> So just add necessary headers to make it compile again.

Please avoid aftermath build fixes because it breaks bisection.
Each commit should be buildable, so this changes should go into the patches
that actually require them.
 
> Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
> ---
>  arch/mips/include/asm/mach-ip27/mmzone.h   | 2 ++
>  arch/mips/include/asm/mach-ip27/topology.h | 2 ++
>  arch/mips/include/asm/sn/addrs.h           | 1 +
>  3 files changed, 5 insertions(+)
> 
> diff --git a/arch/mips/include/asm/mach-ip27/mmzone.h b/arch/mips/include/asm/mach-ip27/mmzone.h
> index 08c36e50a860..e0a53b97b4a8 100644
> --- a/arch/mips/include/asm/mach-ip27/mmzone.h
> +++ b/arch/mips/include/asm/mach-ip27/mmzone.h
> @@ -2,6 +2,8 @@
>  #ifndef _ASM_MACH_MMZONE_H
>  #define _ASM_MACH_MMZONE_H
>  
> +#include <linux/mmzone.h>
> +
>  #include <asm/sn/addrs.h>
>  #include <asm/sn/arch.h>
>  #include <asm/sn/agent.h>
> diff --git a/arch/mips/include/asm/mach-ip27/topology.h b/arch/mips/include/asm/mach-ip27/topology.h
> index d66cc53feab8..601e350908f7 100644
> --- a/arch/mips/include/asm/mach-ip27/topology.h
> +++ b/arch/mips/include/asm/mach-ip27/topology.h
> @@ -2,6 +2,8 @@
>  #ifndef _ASM_MACH_TOPOLOGY_H
>  #define _ASM_MACH_TOPOLOGY_H	1
>  
> +#include <linux/numa.h>
> +
>  #include <asm/sn/types.h>
>  #include <asm/mmzone.h>
>  
> diff --git a/arch/mips/include/asm/sn/addrs.h b/arch/mips/include/asm/sn/addrs.h
> index 837d23e24976..1d3945ef2ca4 100644
> --- a/arch/mips/include/asm/sn/addrs.h
> +++ b/arch/mips/include/asm/sn/addrs.h
> @@ -13,6 +13,7 @@
>  #ifndef __ASSEMBLY__
>  #include <linux/smp.h>
>  #include <linux/types.h>
> +#include <asm/io.h>
>  #endif /* !__ASSEMBLY__ */
>  
>  #include <asm/addrspace.h>
> -- 
> 2.26.0.rc2
> 
> 

-- 
Sincerely yours,
Mike.



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
