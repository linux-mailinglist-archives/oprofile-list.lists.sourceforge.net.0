Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF9F1A7ADD
	for <lists+oprofile-list@lfdr.de>; Tue, 14 Apr 2020 14:34:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jOKlN-0007G7-KR; Tue, 14 Apr 2020 12:34:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sudeep.holla@arm.com>) id 1jOGt1-0005Eq-OK
 for oprofile-list@lists.sourceforge.net; Tue, 14 Apr 2020 08:25:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=go6QFvJSXco0PKWH0WLTjPaz/W5By8jrpgpVs7hJer0=; b=LLnlWJLkQ9VN8GmhCxQ75+aOh6
 Nq4KFCLTGNlbxHLmWUELFisb+SZMcv3LQDwMpJXih2nJYyrUWkv07Zlg3eI5xCgJPxfNHWexzpQeU
 tuso3vxwlukhKNoSYwY4J5hHxHfk1kb6SmrVVjxrlKiHTR16OXgj7m9goKw5XjTB4uT0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=go6QFvJSXco0PKWH0WLTjPaz/W5By8jrpgpVs7hJer0=; b=X7O2zLvVA2lWtpE8AYOHJCeWlU
 7uh2j0vz9CH3cTRA41Fb34O5KkTotaJ+etlrC2IX+PpxPKH4JYASqLz2fLJSgp/nqIeTovtBSC7Jl
 A21d0L/VYdERUiZOt4wLMnvLLUXS2Rc3ZhpuCGnRCDOiKwUJBQhZc81TT69VTteXtAuk=;
Received: from foss.arm.com ([217.140.110.172])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jOGt0-00EUOU-7p
 for oprofile-list@lists.sourceforge.net; Tue, 14 Apr 2020 08:25:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 81E131FB;
 Tue, 14 Apr 2020 01:25:32 -0700 (PDT)
Received: from bogus (unknown [10.37.12.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 855603F73D;
 Tue, 14 Apr 2020 01:25:23 -0700 (PDT)
Date: Tue, 14 Apr 2020 09:25:20 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: Re: [PATCH v2 03/11] arch_topology: Make it avilable for MIPS
Message-ID: <20200414082520.GB6459@bogus>
References: <20200412032123.3896114-1-jiaxun.yang@flygoat.com>
 <20200412032123.3896114-4-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200412032123.3896114-4-jiaxun.yang@flygoat.com>
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
X-Headers-End: 1jOGt0-00EUOU-7p
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
 Daniel Lezcano <daniel.lezcano@linaro.org>, Mike Rapoport <rppt@linux.ibm.com>,
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

On Sun, Apr 12, 2020 at 11:20:33AM +0800, Jiaxun Yang wrote:
> Simply drop unnecessary archtecture limitions and add dummy
> function for platforms without OF support.
> As some of the functions are conflicting with Arm's platform
> implementations, we mark them as weak.
> 
> Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
> --
> v2: Use weak instead of ifdef to exclude functions for Arm.
> ---
>  drivers/base/arch_topology.c | 116 ++++++++++++++++++-----------------
>  1 file changed, 60 insertions(+), 56 deletions(-)
> 
> diff --git a/drivers/base/arch_topology.c b/drivers/base/arch_topology.c
> index 4d0a0038b476..13dc4fbf043f 100644
> --- a/drivers/base/arch_topology.c
> +++ b/drivers/base/arch_topology.c
> @@ -143,57 +143,6 @@ void topology_normalize_cpu_scale(void)
>  	}
>  }
>  
> -bool __init topology_parse_cpu_capacity(struct device_node *cpu_node, int cpu)

This function is not under any #ifdefery and you are adding it but the
commit message indicates opposite. Please state the reason why this needs
to be moved under #ifdef

-- 
Regards,
Sudeep


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
