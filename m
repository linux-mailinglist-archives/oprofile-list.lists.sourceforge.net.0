Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B30541A7ADC
	for <lists+oprofile-list@lfdr.de>; Tue, 14 Apr 2020 14:34:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jOKlN-0007Gh-P9; Tue, 14 Apr 2020 12:34:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiaxun.yang@flygoat.com>) id 1jOH9J-0003iR-KK
 for oprofile-list@lists.sourceforge.net; Tue, 14 Apr 2020 08:42:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5yxE8rjIQbfWB2zY24IJme7e+SE38jsS1KkXESLePEI=; b=mu6vrCML16VL90WT+Z1RrzjVrp
 z5dHAH2JOzuF4RW697QLhjnFG13JOXdA4CruLV3AUgbaRVfkCYqIm3XcNCI66DG4LOUbwNdRSK3zS
 seS2ooQU4N34nlWB3wEj+XGElKTaeWtfHD5cJ7CzcXcJUVm2Lzb432Uv3LUGnxKZyZcw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5yxE8rjIQbfWB2zY24IJme7e+SE38jsS1KkXESLePEI=; b=IAe5IshD+8bbHhCMdCFtNNTppZ
 ZcXX2NQnPlFRMFO1OmoYqdYF/hVxay7h7DvyU5xN+jCXwPQp5JBwk6dQGJFVhLPPnogiJ7GeDnm4h
 OGQbZiZp/NnrbIizKIMWvxI+sGDDSdtylSUiyL+69qcrineNlc7Z8hzNLCgNrb6G/DQ4=;
Received: from sender3-op-o12.zoho.com.cn ([124.251.121.243])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jOH9E-000ap4-Iu
 for oprofile-list@lists.sourceforge.net; Tue, 14 Apr 2020 08:42:29 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1586853598; cv=none; d=zoho.com.cn; s=zohoarc; 
 b=ZSK1M9iyq2xeDVWV8f1PWAKe/9uCU4E9T6vOsK6u9aSiBWGXfIn0pocsjl4tzWveQh2ZDy2cj1b7bpHgekQf0jbXo9LUSmHOeFntpMA9PPG8b23qxVeQDSY4EsbYXLiuAT1HFLfypwEDqH3WZQeK5l7MGE8gNsnNqPEbAdLbAlU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com.cn;
 s=zohoarc; t=1586853598;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=5yxE8rjIQbfWB2zY24IJme7e+SE38jsS1KkXESLePEI=; 
 b=MxrSvTiMyZFwn8zPfXMUcshZgT9ZAOJ0+qDa6+Tzu6So7Sme1O/aiY+OqbHehQy4rx3Xw09wK2lY2ViNCEJpA1yP8gFpRCNHDfyGSPKKWhGbLu/guUngLhylu0oHCtT3ggf/NpQGrV50PP2CpYp0098dw1hWvD/QtR4tAy5dycc=
ARC-Authentication-Results: i=1; mx.zoho.com.cn;
 dkim=pass  header.i=flygoat.com;
 spf=pass  smtp.mailfrom=jiaxun.yang@flygoat.com;
 dmarc=pass header.from=<jiaxun.yang@flygoat.com>
 header.from=<jiaxun.yang@flygoat.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1586853598; 
 s=mail; d=flygoat.com; i=jiaxun.yang@flygoat.com;
 h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:MIME-Version:Content-Type:Content-Transfer-Encoding;
 bh=5yxE8rjIQbfWB2zY24IJme7e+SE38jsS1KkXESLePEI=;
 b=GpdV1a2IgBQOShDin5PNisEXA6+bNxd8Mf4rATLprEMaKlc4jf5QVVU3k27MHqSA
 UeRk2dKl2ZRMbjt9syeLztoXGin7EcYipNexBIvvaQFIBtsgI+VxL4WIGrfrnDqUgNf
 gaPqGT9RgEkxsHstO7khtgGjXMV3drq4ap00TVuE=
Received: from localhost (122.235.212.87 [122.235.212.87]) by mx.zoho.com.cn
 with SMTPS id 1586853596243411.62253278794117;
 Tue, 14 Apr 2020 16:39:56 +0800 (CST)
Date: Tue, 14 Apr 2020 16:39:57 +0800
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v2 01/11] MIPS: setup: Drop prefill_possible_map
Message-ID: <20200414163957.00006d65@flygoat.com>
In-Reply-To: <20200414082123.GA6459@bogus>
References: <20200412032123.3896114-1-jiaxun.yang@flygoat.com>
 <20200412032123.3896114-2-jiaxun.yang@flygoat.com>
 <20200414082123.GA6459@bogus>
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jOH9E-000ap4-Iu
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
 Serge Semin <fancer.lancer@gmail.com>, "
 =?GB18030?B?1tzn/L3c?= \(Zhou Yanjie\)" <zhouyanjie@wanyeetech.com>,
 Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Tue, 14 Apr 2020 09:21:36 +0100
Sudeep Holla <sudeep.holla@arm.com> wrote:

> On Sun, Apr 12, 2020 at 11:20:31AM +0800, Jiaxun Yang wrote:
> > All the plat_smp_setup are setting up possible cpus in their
> > platform code. So prefill_possible_map is actually overwriting
> > platform's setup, which seems unreasonable.
> >   
> 
> Why don't you rearrange the code so that this still remains as is and
> the platforms can override if they need. If you do so, you don't need
> the change in 04/11 as I suggested previously.

Actually this code break a case that cpumask is not continuous.
It do happen on some MIPS platforms.

Yes. rearrange this is a option but I think it is making the logic
unnecessarily complex.

If you think that's better I'll do so.

Thanks.
> 

--
Jiaxun Yang


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
