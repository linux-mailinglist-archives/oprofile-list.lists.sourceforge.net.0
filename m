Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B0C1A67E3
	for <lists+oprofile-list@lfdr.de>; Mon, 13 Apr 2020 16:20:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jNzxF-0001dJ-8X; Mon, 13 Apr 2020 14:20:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sudeep.holla@arm.com>) id 1jMUTF-0004zU-4N
 for oprofile-list@lists.sourceforge.net; Thu, 09 Apr 2020 10:31:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CjBKKTQE1zzoZMIFF6EL5i+LFcHw5MvEwZmYEsuDnwc=; b=fVA2NvpFfPBtn/akFSRQwnLN2+
 P8xdBNF73iPf0nLY3nIDfHcVzWk4gMOW/V4loTbHQlSXvxYjYVHikxkXBzBqv9lGKROXX+ckIx226
 leaShESqrFdSkxT/nwqC55D3KMopVWtZfE4zWI6z3dP+lnYvCoRscG8w4U5hmPohk4vM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CjBKKTQE1zzoZMIFF6EL5i+LFcHw5MvEwZmYEsuDnwc=; b=FpTrWbE032C0hROnxQFV9VOWyf
 wHgf7uM3cE1TUbXO4rUIzeG8XOwWjPNy1mvoJrIF/6WVMI0cDS8QRkohVUNxOxBEHtH45qFRmQMGv
 hA7Teb5frFOsgUoukd3F5Tu0ZFpNcbd3Wc/ZPX5k17PclajwzFEHiysdF8FoqPeNKnU4=;
Received: from foss.arm.com ([217.140.110.172])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jMUTD-00DEtX-Dx
 for oprofile-list@lists.sourceforge.net; Thu, 09 Apr 2020 10:31:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A694031B;
 Thu,  9 Apr 2020 03:31:33 -0700 (PDT)
Received: from bogus (unknown [10.37.12.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6D8893F73D;
 Thu,  9 Apr 2020 03:31:24 -0700 (PDT)
Date: Thu, 9 Apr 2020 11:31:21 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: Re: [PATCH 05/12] MIPS: Switch to arch_topology
Message-ID: <20200409103121.GD25948@bogus>
References: <20200408113505.2528103-1-jiaxun.yang@flygoat.com>
 <20200408113505.2528103-6-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408113505.2528103-6-jiaxun.yang@flygoat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: flygoat.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jMUTD-00DEtX-Dx
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
 "Rafael J. Wysocki" <rafael@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Peter Xu <peterx@redhat.com>, linux-kernel@vger.kernel.org,
 Paul Cercueil <paul@crapouillou.net>, Richard Fontana <rfontana@redhat.com>,
 Huacai Chen <chenhc@lemote.com>, Oleksij Rempel <linux@rempel-privat.de>,
 Jiri Olsa <jolsa@redhat.com>, afzal mohammed <afzal.mohd.ma@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Paul Burton <paulburton@kernel.org>,
 Kamal Dasu <kdasu.kdev@gmail.com>, Marc Zyngier <maz@kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, bcm-kernel-feedback-list@broadcom.com,
 oprofile-list@lists.sf.net,
 Vladimir Kondratiev <vladimir.kondratiev@intel.com>,
 Robert Richter <rric@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 Arnd Bergmann <arnd@arndb.de>, YunQiang Su <syq@debian.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexios Zavras <alexios.zavras@intel.com>, Steve Winslow <swinslow@gmail.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, Zhou Yanjie <zhouyanjie@zoho.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Matt Redfearn <matt.redfearn@mips.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>,
 =?utf-8?B?5ZGo55Cw5p2wIChaaG91IFlhbmppZSk=?= <zhouyanjie@wanyeetech.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Wed, Apr 08, 2020 at 07:34:15PM +0800, Jiaxun Yang wrote:
> Previously, MIPS is using self-defined "globalnumber" in struct
> mips_cpuinfo to store topology information. However, it's not friendly
> to DeviceTree based systems and lack of cpu_capacity related feature
> which can take advantage of multi-cluster system.
>
> Here, we enabled arch_topology for MIPS and adapted some functions
> to fit arch_topology structure.
> Also, we implmented smp_store_cpu_info to probe CPU's topology information
> by "globalnumber" registers in VP ASE or Ebase.CPUNum for legacy systems.
>
> Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
> ---
>  arch/mips/Kconfig                |  1 +
>  arch/mips/include/asm/cpu-info.h | 49 ----------------------------
>  arch/mips/include/asm/smp.h      |  2 --
>  arch/mips/include/asm/topology.h | 48 +++++++++++++++++++++++++---
>  arch/mips/kernel/cpu-probe.c     | 43 -------------------------
>  arch/mips/kernel/setup.c         |  1 +
>  arch/mips/kernel/smp.c           | 55 ++++----------------------------
>  arch/mips/kernel/topology.c      | 42 ++++++++++++++++++++++++
>  8 files changed, 93 insertions(+), 148 deletions(-)
>

[...]

> diff --git a/arch/mips/kernel/setup.c b/arch/mips/kernel/setup.c
> index 8a418783a6bb..b9fefc5dc702 100644
> --- a/arch/mips/kernel/setup.c
> +++ b/arch/mips/kernel/setup.c
> @@ -784,6 +784,7 @@ void __init setup_arch(char **cmdline_p)
>  	dmi_setup();
>
>  	resource_init();
> +	init_cpu_topology();
>  	plat_smp_setup();
>

Continuing my reply on previous patch, I see possible_cpu_mask being
set up in plat_smp_setup. Why not reverse the order above. Further I see
that the logical->physical CPU mapping is done in plat_smp_setup which
is required to store/save any topology information.

--
Regards,
Sudeep


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
