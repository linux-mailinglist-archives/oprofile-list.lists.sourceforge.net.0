Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1574D1A67D3
	for <lists+oprofile-list@lfdr.de>; Mon, 13 Apr 2020 16:20:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jNzxF-0001di-CG; Mon, 13 Apr 2020 14:20:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <valentin.schneider@arm.com>) id 1jMFbE-0002PB-DY
 for oprofile-list@lists.sourceforge.net; Wed, 08 Apr 2020 18:38:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:
 In-reply-to:Subject:Cc:To:From:References:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=btaHeHiZRcO/Rot1joPmoYdYIbJ3YO7JUWRPMZK6Sjs=; b=f1+o/1YuJAhG99l0toslE/FVp
 a0OonpkWv6gO18sOK9RzJDIi2XuG+lF9QORHccD3D4AftNzuInZCPCOfg8oJ+Cip5vrWDt6L8JJlx
 c80v68enMK9dxnRkD/H0sHtII+gdJv2F8DCNPidZQ3289lFsIzgZi6xm8V2u9OAppLWqQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:In-reply-to:Subject:Cc:To:From:
 References:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=btaHeHiZRcO/Rot1joPmoYdYIbJ3YO7JUWRPMZK6Sjs=; b=Npi4L3GZPyQnQuhKwxwyJu6bmJ
 hCntO2GvgZ6FdAVdFMs1/nILQnhl48wfg6eS1IzziT9O0Ba4lffNXNiclS8uvo6KpY2sm8FmZxeqA
 9Aw50PDypRRCR15C+tswelRw+4dCSqk432NPkay+fR/nBerqA1wyUIlXk0PUXPwsfiD0=;
Received: from foss.arm.com ([217.140.110.172])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jMFbC-00CGbR-VL
 for oprofile-list@lists.sourceforge.net; Wed, 08 Apr 2020 18:38:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 30FAE1FB;
 Wed,  8 Apr 2020 11:23:19 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3EC083F73D;
 Wed,  8 Apr 2020 11:23:14 -0700 (PDT)
References: <20200408113505.2528103-1-jiaxun.yang@flygoat.com>
 <20200408113505.2528103-4-jiaxun.yang@flygoat.com>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: Re: [PATCH 03/12] arch_topology: Make it avilable for MIPS
In-reply-to: <20200408113505.2528103-4-jiaxun.yang@flygoat.com>
Date: Wed, 08 Apr 2020 19:23:04 +0100
Message-ID: <jhjr1wxj0qf.mognet@arm.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jMFbC-00CGbR-VL
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
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Allison Randal <allison@lohutok.net>, Zhou Yanjie <zhouyanjie@zoho.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Matt Redfearn <matt.redfearn@mips.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>,
 =?utf-8?B?5ZGo55Cw5p2wIChaaG91IFlhbmpp?= =?utf-8?B?ZSk=?=
 <zhouyanjie@wanyeetech.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net


(+ Dietmar)

On 08/04/20 12:34, Jiaxun Yang wrote:
> @@ -275,7 +224,64 @@ static void parsing_done_workfn(struct work_struct *work)
>  core_initcall(free_raw_capacity);
>  #endif
>
> -#if defined(CONFIG_ARM64) || defined(CONFIG_RISCV)
> +#if defined(CONFIG_OF) && !defined(CONFIG_ARM)
> +#if defined(CONFIG_COMMON_CLK)
> +bool __init topology_parse_cpu_capacity(struct device_node *cpu_node, int cpu)

We actually use this for arm:

  arch/arm/kernel/topology.o: In function `init_cpu_topology':
  topology.c:(.init.text+0xc8): undefined reference to `topology_parse_cpu_capacity'

So that doesn't work. TBH I'd be quite happy to see the ifdef(ARCH) go away
entirely; it's shame that arm is using some of those names already. I think
some of that is due to the CPU efficiency faff, if we can't get rid of it /
align those then perhaps the next best thing is to make some of those
definitions __weak.

> +{
> +	struct clk *cpu_clk;
> +	static bool cap_parsing_failed;
> +	int ret;
> +	u32 cpu_capacity;
> +
> +	if (cap_parsing_failed)
> +		return false;
> +
> +	ret = of_property_read_u32(cpu_node, "capacity-dmips-mhz",
> +				   &cpu_capacity);
> +	if (!ret) {
> +		if (!raw_capacity) {
> +			raw_capacity = kcalloc(num_possible_cpus(),
> +					       sizeof(*raw_capacity),
> +					       GFP_KERNEL);
> +			if (!raw_capacity) {
> +				cap_parsing_failed = true;
> +				return false;
> +			}
> +		}
> +		raw_capacity[cpu] = cpu_capacity;
> +		pr_debug("cpu_capacity: %pOF cpu_capacity=%u (raw)\n",
> +			cpu_node, raw_capacity[cpu]);
> +
> +		/*
> +		 * Update freq_factor for calculating early boot cpu capacities.
> +		 * For non-clk CPU DVFS mechanism, there's no way to get the
> +		 * frequency value now, assuming they are running at the same
> +		 * frequency (by keeping the initial freq_factor value).
> +		 */
> +		cpu_clk = of_clk_get(cpu_node, 0);
> +		if (!PTR_ERR_OR_ZERO(cpu_clk)) {
> +			per_cpu(freq_factor, cpu) =
> +				clk_get_rate(cpu_clk) / 1000;
> +			clk_put(cpu_clk);
> +		}
> +	} else {
> +		if (raw_capacity) {
> +			pr_err("cpu_capacity: missing %pOF raw capacity\n",
> +				cpu_node);
> +			pr_err("cpu_capacity: partial information: fallback to 1024 for all CPUs\n");
> +		}
> +		cap_parsing_failed = true;
> +		free_raw_capacity();
> +	}
> +
> +	return !ret;
> +}
> +#else
> +bool __init topology_parse_cpu_capacity(struct device_node *cpu_node, int cpu)
> +{
> +		return false;
> +}
> +#endif /* CONFIG_COMMON_CLK */
>  /*
>   * This function returns the logic cpu number of the node.
>   * There are basically three kinds of return values:


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
