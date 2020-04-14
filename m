Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 149041A7ADF
	for <lists+oprofile-list@lfdr.de>; Tue, 14 Apr 2020 14:34:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jOKlN-0007GR-Nk; Tue, 14 Apr 2020 12:34:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiaxun.yang@flygoat.com>) id 1jOH56-0007rF-8t
 for oprofile-list@lists.sourceforge.net; Tue, 14 Apr 2020 08:38:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=84CrosZczlRKs4cv9GnHtu9KBHymfYmBVO3bAUZ/y6w=; b=JeObinquUQDVg/deIeP/nAjkts
 RPpYMUnbQh2DP7sPp10XzCXtlp34lgBVsLl2p4AzlYVCshkITf787Gf38qZNwEiraxJe8pjOpf7Wx
 llmovE/jK72UbhB1aKr4z8ySOQ7kE3vp9uHwGjboqnbNUQNGBI8g1j2gJS5dKQe6HmTE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=84CrosZczlRKs4cv9GnHtu9KBHymfYmBVO3bAUZ/y6w=; b=U0C70vUMbEBHpIcO50keiAJGf6
 p3b8uF/SPSIE5fR7KuDStEkCI8wBHTQPWPip0BlwoE2g2kgppyAkegrro03eoJ/LLV40/jqFn0DGf
 MLH5nNsj7dUpn4ZzBnL6CtfSydhMYtRER1SSZNcVSR5UPf7g6TyPE5vPIuyYkSU0IXZo=;
Received: from sender3-op-o12.zoho.com.cn ([124.251.121.243])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jOH4w-00EV7K-Uo
 for oprofile-list@lists.sourceforge.net; Tue, 14 Apr 2020 08:38:08 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1586853318; cv=none; d=zoho.com.cn; s=zohoarc; 
 b=X69YMJgD4rV2vo8a/7oARBHBEmxcrrECiE/OTTv6kBGFrETLPTRc0861mbMUwUCrTGBS36MyyBEsJIIZbksTJ/FQuCHL1zy2ODjt03CaaHwvycxUc9ll4Fz99UecVVkS2F8jl6QcEQcrP9S9NUBKUVFkTnkGbQrzRg2TlmxyaMo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com.cn;
 s=zohoarc; t=1586853318;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=84CrosZczlRKs4cv9GnHtu9KBHymfYmBVO3bAUZ/y6w=; 
 b=CoYq2vjxJaEW+p0M4Lsbbahs37GRWw4yRPoaYhzcW5PLKVelw3TsNo5PpiXn6bLbukLLMxIGb8nZMJscwaV46TIMvhO1QVUI1KAvvx8v1kjKG8UxqnLx+x6a4zOsjRLgHKjjC4tHAEwtm31ppwXEBLAPI7Mh6eYoUP+031ORxu4=
ARC-Authentication-Results: i=1; mx.zoho.com.cn;
 dkim=pass  header.i=flygoat.com;
 spf=pass  smtp.mailfrom=jiaxun.yang@flygoat.com;
 dmarc=pass header.from=<jiaxun.yang@flygoat.com>
 header.from=<jiaxun.yang@flygoat.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1586853318; 
 s=mail; d=flygoat.com; i=jiaxun.yang@flygoat.com;
 h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:MIME-Version:Content-Type:Content-Transfer-Encoding;
 bh=84CrosZczlRKs4cv9GnHtu9KBHymfYmBVO3bAUZ/y6w=;
 b=dUMOEe2tgenEpWpWEB8vbLn1NBqOpK/XUtm1E6UFZohY9nHzmqlco79iN+9dw8wP
 uDCfdQXCwPSr58TCvYu0aVswfmnZIQS/I5rGh/+5iaXPEORCKYapvGzZ78pQpkAo2ol
 VuCI8ufTEp3yUUH1iG2It/baKThv55NNZ8rR2DJo=
Received: from localhost (122.235.212.87 [122.235.212.87]) by mx.zoho.com.cn
 with SMTPS id 15868533144941003.2196604203903;
 Tue, 14 Apr 2020 16:35:14 +0800 (CST)
Date: Tue, 14 Apr 2020 16:35:14 +0800
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v2 04/11] arch_topology: Reset all cpus in
 reset_cpu_topology
Message-ID: <20200414163514.00000100@flygoat.com>
In-Reply-To: <20200414082734.GC6459@bogus>
References: <20200412032123.3896114-1-jiaxun.yang@flygoat.com>
 <20200412032123.3896114-5-jiaxun.yang@flygoat.com>
 <20200414082734.GC6459@bogus>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-w64-mingw32)
MIME-Version: 1.0
X-ZohoCNMailClient: External
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arm.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [124.251.121.243 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jOH4w-00EV7K-Uo
X-Mailman-Approved-At: Tue, 14 Apr 2020 12:33:58 +0000
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
 Serge Semin <fancer.lancer@gmail.com>, "
 =?GB18030?B?1tzn/L3c?= \(Zhou Yanjie\)" <zhouyanjie@wanyeetech.com>,
 Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Tue, 14 Apr 2020 09:27:34 +0100
Sudeep Holla <sudeep.holla@arm.com> wrote:

> On Sun, Apr 12, 2020 at 11:20:34AM +0800, Jiaxun Yang wrote:
> > For MIPS platform, when topology isn't probed by DeviceTree,
> > possible_cpu might be empty when calling init_cpu_topology,
> > that may result cpu_topology not fully reseted for all CPUs.
> > So here we can reset all cpus instead of possible cpus.
> >  
> 
> As I have told before adjust and make it default before this function
> gets called.

Hi,

That's really impossible under current MIPS code structure.

Another option would be prefill possible_cpu with all_cpu_mask before
calling topology_init, but that would make the code unnecessarily
complex.

Here simply reset the whole array won't cause any regression.

Thanks.
> 
--
Jiaxun Yang



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
