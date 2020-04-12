Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 361281A67E0
	for <lists+oprofile-list@lfdr.de>; Mon, 13 Apr 2020 16:20:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jNzxG-0001ig-Ob; Mon, 13 Apr 2020 14:20:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiaxun.yang@flygoat.com>) id 1jNarm-0002IY-Bn
 for oprofile-list@lists.sourceforge.net; Sun, 12 Apr 2020 11:33:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BCgzC3Pyek/R6K9exGyuEeQNRSgIaolvWDaFX1GX/0o=; b=WQAyAvHxf8cKarjV97jaFo35ZE
 4N3d+2CGx3+9NySCy1gDnRqQhJjXr9ArlZNDyWAWOA/8zCiSC67IPvN66eEYM3MZFuMc+gD8PTecq
 /sieaE4E2675EIe3hKyRgtfP+7tlwn6aJAVq44PK022S+7ejrspDQEYsyuwLsdW9AUts=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BCgzC3Pyek/R6K9exGyuEeQNRSgIaolvWDaFX1GX/0o=; b=ZVmyAuXkkhNjYtFpf5w2i1BL2Q
 8gpF0CAqRuC6y59RwrSQ+ol3EUb9Hny25wuK7dctwdPeLZwV/npdXjxXo8qjHV6Pqzc5BuMf8LE6J
 BBT7rDz9CU95+IsGpHKCShZKDDzDvLREhv3pesZH8QlgiQa8V2Zd3D5q3xV7Hcixih1g=;
Received: from vultr.net.flygoat.com ([149.28.68.211])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jNark-00CJEL-8V
 for oprofile-list@lists.sourceforge.net; Sun, 12 Apr 2020 11:33:34 +0000
Received: from flygoat-x1e (unknown [IPv6:240e:390:499:a20::d68])
 by vultr.net.flygoat.com (Postfix) with ESMTPSA id 6461320D00;
 Sun, 12 Apr 2020 11:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=flygoat.com; s=vultr;
 t=1586691201; bh=sL4MzaGwxvIRSq9CUuhbsYMx0T4QWjj2y1rYAqSVLws=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=HKcd+fItvP6Hapt81u6McR/G/BybTwn3ZURsy4BZib/1PjBh2tKi6u+OJFUSc2qpd
 fsFLojsxIqB04tj7sKG2ACe7sVOS5TtTM/g9Y9vqolFWHquMOONkXrKcWwO2Mrc+0V
 7dBHRoP1XMZyUPWQmmcKdZ27U141H3GZ+tTI0GvNDhwrnFRfFeUmXnQZy9GRNhBCjG
 GH0JbQt+iaqvwDZ0SrrZqpkporGlnb7+XS+iybCr3/L2fL06Jh1eFSb9/feiAqBhcr
 ktE1Sc8dO7p2vQMtI9YgJyFEvvyhzJ9RBLYnO1MquOdrUGdi23XekKr9N/u03ny4ZI
 XEO1Do3o7sh+w==
Date: Sun, 12 Apr 2020 19:32:25 +0800
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2 05/11] MIPS: Switch to arch_topology
Message-ID: <20200412193225.47fa4680@flygoat-x1e>
In-Reply-To: <20200412103908.2594483d@why>
References: <20200412032123.3896114-6-jiaxun.yang@flygoat.com>
 <202004121349.xFzTOGS4%lkp@intel.com>
 <20200412154927.7ac453d5@flygoat-x1e> <20200412103908.2594483d@why>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
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
X-Headers-End: 1jNark-00CJEL-8V
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
 " =?UTF-8?B?5ZGo55Cw5p2w?= \(Zhou Yanjie\)    
 " <zhouyanjie@wanyeetech.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Sun, 12 Apr 2020 10:39:08 +0100
Marc Zyngier <maz@kernel.org> wrote:

> On Sun, 12 Apr 2020 15:49:27 +0800
> Jiaxun Yang <jiaxun.yang@flygoat.com> wrote:
> 
> > On Sun, 12 Apr 2020 13:24:21 +0800
> > kbuild test robot <lkp@intel.com> wrote:
> >   
> > > Hi Jiaxun,
> > > 
> > > I love your patch! Yet something to improve:
> > > 
> > > [auto build test ERROR on driver-core/driver-core-testing]
> > > [also build test ERROR on pm/linux-next linus/master
> > > next-20200411] [cannot apply to tip/perf/core tip/irq/core v5.6]
> > > [if your patch is applied to the wrong git tree, please drop us a
> > > note to help improve the system. BTW, we also suggest to use
> > > '--base' option to specify the base tree in git format-patch,
> > > please see https://stackoverflow.com/a/37406982]
> > > 
> > > url:
> > > https://github.com/0day-ci/linux/commits/Jiaxun-Yang/MIPS-Topology-DeviceTree-CPU-rework-v2/20200412-113308
> > > base:
> > > https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
> > > a10c9c710f9ecea87b9f4bbb837467893b4bef01 config: mips-allnoconfig
> > > (attached as .config) compiler: mips-linux-gcc (GCC) 9.3.0
> > > reproduce: wget
> > > https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> > > -O ~/bin/make.cross chmod +x ~/bin/make.cross # save the attached
> > > .config to linux build tree GCC_VERSION=9.3.0 make.cross
> > > ARCH=mips 
> > > 
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > > 
> > > Note: the
> > > linux-review/Jiaxun-Yang/MIPS-Topology-DeviceTree-CPU-rework-v2/20200412-113308
> > > HEAD 8e8e9d4f7aa74359f2199773786ffe2fbb7877d0 builds fine. It only
> > > hurts bisectibility.
> > >     
> > Hi all,
> > 
> > In this case I think it should be fine to break bisect, otherwise
> > #05 will combine too many modifications in different subsystems.  
> 
> No. It is never OK to break bisection, specially when it affects a
> whole architecture.

I'm going to squash all these into patch #5.
It's really hard to do it gradually.

Thanks.

> 
> We introduce gradual changes over multiple subsystems all the time by
> using configuration symbols, no matter the number of patches. Yes, it
> is sometimes hard. But breaking the kernel and forcing everyone else
> to just deal with it is not acceptable.
> 
> Thanks,
> 
> 	M.
--
Jiaxun Yang



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
