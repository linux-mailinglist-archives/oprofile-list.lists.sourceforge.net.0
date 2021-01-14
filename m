Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E4B2F6D7E
	for <lists+oprofile-list@lfdr.de>; Thu, 14 Jan 2021 22:51:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l0AWP-00053b-Tg; Thu, 14 Jan 2021 21:51:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rric@kernel.org>) id 1l0AWN-00053T-N6
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 21:51:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ip6TCuHF8u2962h+otWFPQLA4g45+Z3ULj8O4k9r6ZU=; b=XsdTjDCQMvvAxA5M6/XHcJGLw/
 sIp+7aQFqIgnp097yxnFIBTE5RhLpyn9FGHx20nR+6EZ2sxUUxYOF99Z+wajKEaqHzbrrpinhAlmG
 wP4tJg6+1RrTYciIIN4GeFe65TDt/aKho+ZelgyMYmqE9tBrmPQA6ZFeX5sL5facKXjU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ip6TCuHF8u2962h+otWFPQLA4g45+Z3ULj8O4k9r6ZU=; b=hz/Zh5lWYzB8bfdXtIhPScALV4
 Lyzgyi1ZRMJHtukTwKB461nuX6paA+jZYKWO7qYiU8/4xgTJm/cVQ0mDozFofy3wPRtBRwnqrGrGz
 ZC98s2e2ILmZKRvUZ9ic3xTjisSPioNFIPfQQHgOZicRmjGG438ugVvatO/ztjEmP8uk=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l0AWE-000XVL-NH
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 21:51:11 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6E6AA23A5C;
 Thu, 14 Jan 2021 21:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610661046;
 bh=EoVs7P6a1ZPCpDdPeXmDB8ngGOywLZzN1o1+cP4CMgI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=f8Vu8jrhOS8fSKadFV+xLuzbYhBi9yfaL5GXlL22vPnK1aBn9O/haQXO6r5Prb7EK
 nALe/uQ7fMb7HduD8bCcaRHz5EHA9l8KkUq+T5rYguVApQEv5ahO5LCtsO4HJPlIxB
 3ZlWfImXPcYVm1TVZV2SFLCnJP5uJlgvYWkuD5ytIUPXBuJdH6v7VggRGWWAW2ryQl
 f+yqa/7ruJ6Pd9jGE2fd81zJRgpwQyJ1ogCZFCCBenm+013yi2Hx9HSCprV4oHIlNq
 yayPLzht9D5UngXoCrV8uFpb7A0OgedrAqrPJY7i7TtzgtMC9reuGgFOuUPjixJsvw
 H1yNb7JHzhN+g==
Date: Thu, 14 Jan 2021 22:50:41 +0100
From: Robert Richter <rric@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH 00/18] drivers: Remove oprofile and dcookies
Message-ID: <YAC8sf6v8+QAXHD3@rric.localdomain>
References: <cover.1610622251.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1610622251.git.viresh.kumar@linaro.org>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lwn.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l0AWE-000XVL-NH
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
Cc: Arnd Bergmann <arnd@kernel.org>,
 Vincent Guittot <vincent.guittot@linaro.org>, linux-kernel@vger.kernel.org,
 anmar.oueja@linaro.org, oprofile-list@lists.sf.net,
 Alexander Viro <viro@zeniv.linux.org.uk>, William Cohen <wcohen@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On 14.01.21 17:04:24, Viresh Kumar wrote:
> Hello,
> 
> The "oprofile" user-space tools don't use the kernel OPROFILE support
> any more, and haven't in a long time. User-space has been converted to
> the perf interfaces.
> 
> Remove oprofile and dcookies (whose only user is oprofile) support from
> the kernel.
> 
> This was suggested here [1] earlier.
> 
> This is build/boot tested by kernel test robot (Intel) and Linaro's
> Tuxmake[2] for a lot of architectures and no failures were reported.
> 
> --
> Viresh
> 
> [1] https://lore.kernel.org/lkml/CAHk-=whw9t3ZtV8iA2SJWYQS1VOJuS14P_qhj3v5-9PCBmGQww@mail.gmail.com/
> [2] https://lwn.net/Articles/841624/
> 
> Viresh Kumar (18):
>   arch: alpha: Remove CONFIG_OPROFILE support
>   arch: arm: Remove CONFIG_OPROFILE support
>   arch: arc: Remove CONFIG_OPROFILE support
>   arch: hexagon: Don't select HAVE_OPROFILE
>   arch: ia64: Remove CONFIG_OPROFILE support
>   arch: ia64: Remove rest of perfmon support
>   arch: microblaze: Remove CONFIG_OPROFILE support
>   arch: mips: Remove CONFIG_OPROFILE support
>   arch: parisc: Remove CONFIG_OPROFILE support
>   arch: powerpc: Stop building and using oprofile
>   arch: powerpc: Remove oprofile
>   arch: s390: Remove CONFIG_OPROFILE support
>   arch: sh: Remove CONFIG_OPROFILE support
>   arch: sparc: Remove CONFIG_OPROFILE support
>   arch: x86: Remove CONFIG_OPROFILE support
>   arch: xtensa: Remove CONFIG_OPROFILE support
>   drivers: Remove CONFIG_OPROFILE support
>   fs: Remove dcookies support

After oprofile userland moved to version 1.x, the kernel support for
it isn't needed anymore. The switch was back in 2014 when oprofile
started using the perf syscall:

 https://sourceforge.net/p/oprofile/oprofile/ci/ba9edea2bdfe2c9475749fc83105632bd916b96c

Since then I haven't received any significant patches to implement new
features or add support for newer platforms in the kernel. There
haven't been bug reports sent or questions asked on the mailing list
for quite a while, which indicates there are no or less users. Users
(if any) should switch to oprofile 1.x or the perf tool. No need to
carry kernel support any longer with us.

So time to get rid of it. For the whole series:

Acked-by: Robert Richter <rric@kernel.org>


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
