Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 973E71A7ADE
	for <lists+oprofile-list@lfdr.de>; Tue, 14 Apr 2020 14:34:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jOKlN-0007Gv-QZ; Tue, 14 Apr 2020 12:34:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sudeep.holla@arm.com>) id 1jOIQ4-0007G7-OZ
 for oprofile-list@lists.sourceforge.net; Tue, 14 Apr 2020 10:03:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AaBaD9p/mwWa658QzTU9Bci420+OpU6P+6Blusjzr0s=; b=hsQJqfcMdzBUiwDNAEt6MQD82B
 m0BNtFMcFC61Omr/5yJ1HCCKT6GprM/A9Xtnz4iD3BAIw9J7n41i6UiDGIZWGflGIkYyDGMaPxHZ7
 iE9adrBTG5+kubb+0FXH5qt4+2lQEPE9DFIfEWFb8y8L4zWvcJFf8rKT3Q1fFomLJZus=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AaBaD9p/mwWa658QzTU9Bci420+OpU6P+6Blusjzr0s=; b=e2zbY+2I6ygpVFOBGVnWpCfvtC
 hTu32T1EWlpiVEunLast+NoUh9R8LgJze0gSwS9PI+vkxHmy53GsYCc21x5wFiVOSoktNhSjE5sl1
 Np+Ic0eWUSgro5p2VRWiahi/qiS59tcHP6abTe0pl34YQJnz8g6PhEGOK6KXFSsnVZqs=;
Received: from foss.arm.com ([217.140.110.172])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jOIQ2-00EZQG-Tr
 for oprofile-list@lists.sourceforge.net; Tue, 14 Apr 2020 10:03:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2ED3031B;
 Tue, 14 Apr 2020 03:03:40 -0700 (PDT)
Received: from bogus (unknown [10.37.12.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 896E43F6C4;
 Tue, 14 Apr 2020 03:03:31 -0700 (PDT)
Date: Tue, 14 Apr 2020 11:03:24 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: Re: [PATCH v2 04/11] arch_topology: Reset all cpus in
 reset_cpu_topology
Message-ID: <20200414100324.GA17835@bogus>
References: <20200412032123.3896114-1-jiaxun.yang@flygoat.com>
 <20200412032123.3896114-5-jiaxun.yang@flygoat.com>
 <20200414082734.GC6459@bogus> <20200414163514.00000100@flygoat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414163514.00000100@flygoat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arm.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jOIQ2-00EZQG-Tr
X-Mailman-Approved-At: Tue, 14 Apr 2020 12:33:59 +0000
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
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, bcm-kernel-feedback-list@broadcom.com,
 oprofile-list@lists.sf.net,
 Vladimir Kondratiev <vladimir.kondratiev@intel.com>,
 Robert Richter <rric@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 YunQiang Su <syq@debian.org>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexios Zavras <alexios.zavras@intel.com>, Steve Winslow <swinslow@gmail.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 dietmar.eggemann@arm.com, Allison Randal <allison@lohutok.net>,
 Zhou Yanjie <zhouyanjie@zoho.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Matt Redfearn <matt.redfearn@mips.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>,
 =?utf-8?B?5ZGo55Cw5p2wIChaaG91IFlhbmppZSk=?= <zhouyanjie@wanyeetech.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Tue, Apr 14, 2020 at 04:35:14PM +0800, Jiaxun Yang wrote:
> On Tue, 14 Apr 2020 09:27:34 +0100
> Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> > On Sun, Apr 12, 2020 at 11:20:34AM +0800, Jiaxun Yang wrote:
> > > For MIPS platform, when topology isn't probed by DeviceTree,
> > > possible_cpu might be empty when calling init_cpu_topology,
> > > that may result cpu_topology not fully reseted for all CPUs.
> > > So here we can reset all cpus instead of possible cpus.
> > >
> >
> > As I have told before adjust and make it default before this function
> > gets called.
>
> Hi,
>
> That's really impossible under current MIPS code structure.
>

I really doubt that, but I have no knowledge on MIPS port, so I would
let maintainers take that call.

> Another option would be prefill possible_cpu with all_cpu_mask before
> calling topology_init, but that would make the code unnecessarily
> complex.
>

I still prefer that. By the time we call this function on a config
with say NR_CPUS=1024, we would have parsed DT and set nr_cpus to say 8
or 16 just for sake of example, so if platforms can't figure the
possible CPUs, let them set it to NR_CPUs so that not all platforms
have to run through that loop.

> Here simply reset the whole array won't cause any regression.
>

Not necessary, please discuss and check if some simplification to MIPS
can be done rather than patching here and there to make it work.

--
Regards,
Sudeep


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
