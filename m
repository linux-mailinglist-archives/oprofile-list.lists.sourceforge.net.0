Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 845821A67E9
	for <lists+oprofile-list@lfdr.de>; Mon, 13 Apr 2020 16:20:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jNzxG-0001hp-KQ; Mon, 13 Apr 2020 14:20:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiaxun.yang@flygoat.com>) id 1jNXNd-0005OP-Qb
 for oprofile-list@lists.sourceforge.net; Sun, 12 Apr 2020 07:50:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/S+IWksn8+CVbUX7epea2TaiLIrhinFbpx8fdQZsWXg=; b=T/F4vCgxzR6T/hSMIeFPxBAlhP
 pijJ2zpO14KIr5KH6F6X3ju/IvPcHxsozyAwkjcS7JRVU5BNYpTSCW3QNcgvpLgC1ZaNEOKY0nhYG
 oSH3H9eauUlUYO9UIXU7ZONnMjaJqBlcvtudKRhpYWCY4WF3CX7dCgLZ+jdMv+t+fkzU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/S+IWksn8+CVbUX7epea2TaiLIrhinFbpx8fdQZsWXg=; b=dlqA1+YkBPhl5twnSRYGLQj7af
 tydJkzIzSMt+EQuT7tKbXwYbE/E8TwBG9El99+FMc027HckALkFxZnMGzqkT1iJx4b6smeu0Co8rY
 CQGmmjI34xhjghw1T8H1ju/lFo9n6TCwO68QAXYTeHBBE16Aar5gVryMUBV6+K39Upnw=;
Received: from vultr.net.flygoat.com ([149.28.68.211])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jNXNa-00C30o-2H
 for oprofile-list@lists.sourceforge.net; Sun, 12 Apr 2020 07:50:13 +0000
Received: from flygoat-x1e (unknown [IPv6:240e:390:499:a20::d68])
 by vultr.net.flygoat.com (Postfix) with ESMTPSA id 92F8320CE8;
 Sun, 12 Apr 2020 07:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=flygoat.com; s=vultr;
 t=1586677799; bh=k5hxOeHZh9IXjDoSK3WNcs/9hTqV8S41aIzhUrny+3k=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Izfs6T4sNhGSQrbDpc1FuzRkrZlA/Osk5StRIEV1TJ4Fe72X2TGwBh4OAZyI2RU9H
 4juvb/wwxEJZ3JXCHjgwRcIBnQdtXetGmwTCkFlGS41zJErwM87iU1Gv/z4e1vGywy
 SQZpAlaAbQD7K3v8RQncp4B/+s1NnynFKs6WpUgcybeYZfvPqtjHEnga7cEYuIoNrw
 oJn5cQ/8B8Kmbd7o/+D+RhAHqnzIwpzM1ZNvugs1JD/QH49S5fuB2bcbOOL09BID/u
 A0pRRIrRmZxwAYv+sKsaqDlJoZebMupTbfAJ5m47TwhhVmG7SP3TMwB7hiS2sMxPSE
 IlIU52Wnfg4OQ==
Date: Sun, 12 Apr 2020 15:49:27 +0800
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH v2 05/11] MIPS: Switch to arch_topology
Message-ID: <20200412154927.7ac453d5@flygoat-x1e>
In-Reply-To: <202004121349.xFzTOGS4%lkp@intel.com>
References: <20200412032123.3896114-6-jiaxun.yang@flygoat.com>
 <202004121349.xFzTOGS4%lkp@intel.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jNXNa-00C30o-2H
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
 Allison Randal <allison@lohutok.net>, Zhou Yanjie <zhouyanjie@zoho.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, kbuild-all@lists.01.org,
 Matt Redfearn <matt.redfearn@mips.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>, "
 =?UTF-8?B?5ZGo55Cw5p2w?= \(Zhou Yanjie\)        " <zhouyanjie@wanyeetech.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Sun, 12 Apr 2020 13:24:21 +0800
kbuild test robot <lkp@intel.com> wrote:

> Hi Jiaxun,
> 
> I love your patch! Yet something to improve:
> 
> [auto build test ERROR on driver-core/driver-core-testing]
> [also build test ERROR on pm/linux-next linus/master next-20200411]
> [cannot apply to tip/perf/core tip/irq/core v5.6]
> [if your patch is applied to the wrong git tree, please drop us a
> note to help improve the system. BTW, we also suggest to use '--base'
> option to specify the base tree in git format-patch, please see
> https://stackoverflow.com/a/37406982]
> 
> url:
> https://github.com/0day-ci/linux/commits/Jiaxun-Yang/MIPS-Topology-DeviceTree-CPU-rework-v2/20200412-113308
> base:
> https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
> a10c9c710f9ecea87b9f4bbb837467893b4bef01 config: mips-allnoconfig
> (attached as .config) compiler: mips-linux-gcc (GCC) 9.3.0 reproduce:
> wget
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> -O ~/bin/make.cross chmod +x ~/bin/make.cross # save the attached
> .config to linux build tree GCC_VERSION=9.3.0 make.cross ARCH=mips 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> Note: the
> linux-review/Jiaxun-Yang/MIPS-Topology-DeviceTree-CPU-rework-v2/20200412-113308
> HEAD 8e8e9d4f7aa74359f2199773786ffe2fbb7877d0 builds fine. It only
> hurts bisectibility.
> 
Hi all,

In this case I think it should be fine to break bisect, otherwise #05
will combine too many modifications in different subsystems.


Thanks.
--
Jiaxun Yang


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
