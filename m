Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 600F21A67E2
	for <lists+oprofile-list@lfdr.de>; Mon, 13 Apr 2020 16:20:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jNzxF-0001dU-AC; Mon, 13 Apr 2020 14:20:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <valentin.schneider@arm.com>) id 1jMFbE-0000Aj-Ad
 for oprofile-list@lists.sourceforge.net; Wed, 08 Apr 2020 18:38:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:
 In-reply-to:Subject:Cc:To:From:References:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=toxzkSVLuXT9q+hwBPFzTsUvDYXBPNCwtaxdpbbVCBg=; b=UtbkPl3+Hm3s/HQtaJgfyHnH9
 ztGw+mm45bOIySNxeIvPemrvcsW1DNb4hB4Chl1vNH+MYLkm/kbpkx9t9Uqva2vYhlT0A16Svrjea
 kicnyk006wLqJ+7tqQ6hBvo6keSEI3FXnmm8LsJTa2Pp6g+F+jVGzbEqKkGg1h6qMIDRI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:In-reply-to:Subject:Cc:To:From:
 References:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=toxzkSVLuXT9q+hwBPFzTsUvDYXBPNCwtaxdpbbVCBg=; b=CKGo9tMgJ8wzTBgFcSd4OQq7zb
 ANlMPNFX/MVfw0wwcc0JshgVSxz1tBmZJBWPTA+nqQk8bJt4XDNg+IkuyLrgYeu6bh+ApFC7l2yiM
 Ktnws4m0owedA8HDwTUPjVSnx8OLwguT7KiwPdiQi7ORpI4vi2V8fI0oDo5FXBEe0C3I=;
Received: from foss.arm.com ([217.140.110.172])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jMFbC-00869L-OR
 for oprofile-list@lists.sourceforge.net; Wed, 08 Apr 2020 18:38:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 753527FA;
 Wed,  8 Apr 2020 11:23:37 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BC5403F73D;
 Wed,  8 Apr 2020 11:23:32 -0700 (PDT)
References: <20200408113505.2528103-1-jiaxun.yang@flygoat.com>
 <20200408113505.2528103-5-jiaxun.yang@flygoat.com>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: Re: [PATCH 04/12] arch_topology: Reset all cpus in reset_cpu_topology
In-reply-to: <20200408113505.2528103-5-jiaxun.yang@flygoat.com>
Date: Wed, 08 Apr 2020 19:23:30 +0100
Message-ID: <jhjpnchj0pp.mognet@arm.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: flygoat.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jMFbC-00869L-OR
X-Mailman-Approved-At: Mon, 13 Apr 2020 14:20:51 +0000
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


On 08/04/20 12:34, Jiaxun Yang wrote:
> For MIPS platform, when topology isn't probed by DeviceTree,
> possible_cpu might be empty when calling init_cpu_topology,
> that may result cpu_topology not fully reseted for all CPUs.
> So here we can reset all cpus instead of possible cpus.
>
> Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
> ---
>  drivers/base/arch_topology.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/base/arch_topology.c b/drivers/base/arch_topology.c
> index 9c2405d08dae..3398b7ac7dfb 100644
> --- a/drivers/base/arch_topology.c
> +++ b/drivers/base/arch_topology.c
> @@ -542,7 +542,7 @@ void __init reset_cpu_topology(void)
>  {
>       unsigned int cpu;
>
> -	for_each_possible_cpu(cpu) {
> +	for (cpu = 0; cpu < NR_CPUS; cpu++) {

Hmph, kind of a shame but if you really have to do it then perhaps you
should go with ARRAY_SIZE(cpu_topology) instead.

>               struct cpu_topology *cpu_topo = &cpu_topology[cpu];
>
>               cpu_topo->thread_id = -1;


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
