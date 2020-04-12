Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9251A67D0
	for <lists+oprofile-list@lfdr.de>; Mon, 13 Apr 2020 16:20:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jNzxF-0001eF-I2; Mon, 13 Apr 2020 14:20:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <maz@kernel.org>) id 1jNZTc-0006Ri-SI
 for oprofile-list@lists.sourceforge.net; Sun, 12 Apr 2020 10:04:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jzM1HwyeiZx6az/WiMdwq7PjdtGd/BUXPmewPdJFr+E=; b=VS0/Y2z74fqvNL6jPEo8jdw0po
 2DtGKenK9/4jRtLyImOu9Uol/FEdNtujhcdvRh8eJYkAJxmN/bgMSYdKg8xUgNjzeybltgddSIz2p
 ksVQlI65L0yFeTsDcIZVvX9rKeYxgpEahVls38cyK8LnS9M1e0pa6hmBPMJj6k81WEBM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jzM1HwyeiZx6az/WiMdwq7PjdtGd/BUXPmewPdJFr+E=; b=Vg7rWmhmWpiS5qoR0mN0LvX2xm
 PsWGcHUYfsRpHbEEnrTaaegFXc28w++VjP54d/CUpbE97RGoEupiqTcYX02Yv5OIjqmBcygd5R7bm
 BELdmWKqLpLM8+Xe5LP/wQxSaXTQ+BjMSkYmjoCeJF39Cjl+B6WPPwnp4OYzjREmaI8Y=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jNZTZ-00C9qs-DA
 for oprofile-list@lists.sourceforge.net; Sun, 12 Apr 2020 10:04:32 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1D9A620709;
 Sun, 12 Apr 2020 09:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586684354;
 bh=wbyOBODIndCEMu0D2z+phq+6eSufCY9PcFL95wATkQc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CCvFXU6ZZAkPrqhY+3mO0dLN947kPjR0dnkmJSLpM8pYApfGKpeH/f2n2ddJe6pre
 YIswjxP8gVprMtr/9TTFdGG9nzgWZGJs7MNrbIE4WGoIiShAV7Zft3ggd5BxeCt+YC
 o23fwDeeTcJzz/NMWB712zrQ5FcEDe+ApYn4lckc=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jNZ55-002cys-Sy; Sun, 12 Apr 2020 10:39:12 +0100
Date: Sun, 12 Apr 2020 10:39:08 +0100
From: Marc Zyngier <maz@kernel.org>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: Re: [PATCH v2 05/11] MIPS: Switch to arch_topology
Message-ID: <20200412103908.2594483d@why>
In-Reply-To: <20200412154927.7ac453d5@flygoat-x1e>
References: <20200412032123.3896114-6-jiaxun.yang@flygoat.com>
 <202004121349.xFzTOGS4%lkp@intel.com>
 <20200412154927.7ac453d5@flygoat-x1e>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: jiaxun.yang@flygoat.com, lkp@intel.com,
 kbuild-all@lists.01.org, linux-mips@vger.kernel.org, tsbogend@alpha.franken.de,
 chenhc@lemote.com, peterz@infradead.org, mingo@redhat.com, acme@kernel.org,
 mark.rutland@arm.com, alexander.shishkin@linux.intel.com, jolsa@redhat.com,
 namhyung@kernel.org, f.fainelli@gmail.com, rric@kernel.org,
 sudeep.holla@arm.com, gregkh@linuxfoundation.org, rafael@kernel.org,
 daniel.lezcano@linaro.org, tglx@linutronix.de, jason@lakedaemon.net,
 paulburton@kernel.org, allison@lohutok.net, info@metux.net,
 kstewart@linuxfoundation.org, vladimir.kondratiev@intel.com,
 paul@crapouillou.net, zhouyanjie@zoho.com, zhouyanjie@wanyeetech.com,
 syq@debian.org, arnd@arndb.de, fancer.lancer@gmail.com, matt.redfearn@mips.com,
 swinslow@gmail.com, alexios.zavras@intel.com, rfontana@redhat.com,
 peterx@redhat.com, afzal.mohd.ma@gmail.com, kdasu.kdev@gmail.com,
 linux@rempel-privat.de, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, oprofile-lis
 t@lists.sf.net, linux-pm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: githubusercontent.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jNZTZ-00C9qs-DA
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
 Jiri Olsa <jolsa@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 kbuild test robot <lkp@intel.com>, Paul Burton <paulburton@kernel.org>,
 Kamal Dasu <kdasu.kdev@gmail.com>, afzal mohammed <afzal.mohd.ma@gmail.com>,
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
 Allison Randal <allison@lohutok.net>, Zhou Yanjie <zhouyanjie@zoho.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, kbuild-all@lists.01.org,
 Matt Redfearn <matt.redfearn@mips.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>,
 " =?UTF-8?Q?=E5=91=A8=E7=90=B0=E6=9D=B0?=
 \(Zhou Yanjie\)        " <zhouyanjie@wanyeetech.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Sun, 12 Apr 2020 15:49:27 +0800
Jiaxun Yang <jiaxun.yang@flygoat.com> wrote:

> On Sun, 12 Apr 2020 13:24:21 +0800
> kbuild test robot <lkp@intel.com> wrote:
> 
> > Hi Jiaxun,
> > 
> > I love your patch! Yet something to improve:
> > 
> > [auto build test ERROR on driver-core/driver-core-testing]
> > [also build test ERROR on pm/linux-next linus/master next-20200411]
> > [cannot apply to tip/perf/core tip/irq/core v5.6]
> > [if your patch is applied to the wrong git tree, please drop us a
> > note to help improve the system. BTW, we also suggest to use '--base'
> > option to specify the base tree in git format-patch, please see
> > https://stackoverflow.com/a/37406982]
> > 
> > url:
> > https://github.com/0day-ci/linux/commits/Jiaxun-Yang/MIPS-Topology-DeviceTree-CPU-rework-v2/20200412-113308
> > base:
> > https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
> > a10c9c710f9ecea87b9f4bbb837467893b4bef01 config: mips-allnoconfig
> > (attached as .config) compiler: mips-linux-gcc (GCC) 9.3.0 reproduce:
> > wget
> > https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> > -O ~/bin/make.cross chmod +x ~/bin/make.cross # save the attached
> > .config to linux build tree GCC_VERSION=9.3.0 make.cross ARCH=mips 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> > 
> > Note: the
> > linux-review/Jiaxun-Yang/MIPS-Topology-DeviceTree-CPU-rework-v2/20200412-113308
> > HEAD 8e8e9d4f7aa74359f2199773786ffe2fbb7877d0 builds fine. It only
> > hurts bisectibility.
> >   
> Hi all,
> 
> In this case I think it should be fine to break bisect, otherwise #05
> will combine too many modifications in different subsystems.

No. It is never OK to break bisection, specially when it affects a
whole architecture.

We introduce gradual changes over multiple subsystems all the time by
using configuration symbols, no matter the number of patches. Yes, it is
sometimes hard. But breaking the kernel and forcing everyone else to
just deal with it is not acceptable.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
