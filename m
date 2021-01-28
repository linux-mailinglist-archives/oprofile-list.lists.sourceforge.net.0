Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B88EF3080BC
	for <lists+oprofile-list@lfdr.de>; Thu, 28 Jan 2021 22:49:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l5FAA-0008J8-Ea; Thu, 28 Jan 2021 21:49:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <deller@gmx.de>) id 1l5CuH-0002A3-QU
 for oprofile-list@lists.sourceforge.net; Thu, 28 Jan 2021 19:24:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yWh26/VP43ZC0B9RqOxYRdfX7fC9SCKzld91zHJyf+E=; b=KLpkm5dcgyZGlQhI9EizQ8jaij
 s51jMr5uYhLjDiHsUXhmbx0/CYyJ/o5HsXNTxRnZFNpHaMSZC5Ho6ZmygSPFOzVggPWyd0fW+yIl4
 vMM/SMg3OPuUUsyJ2QwBGET4j0yQ6/p8knRyyI6J/aEPybMPzYlEspxa3th996Ch9XQc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yWh26/VP43ZC0B9RqOxYRdfX7fC9SCKzld91zHJyf+E=; b=SY6xOrm9xkAJwZK+OPbADedgHM
 hzjoDSi42qfGdKU6tbLkHh/wGyv9PE7fNoFT3gWeuaxY9JSlBzG/o5Hgydg3j8Zcb9SL+UWyrrDMW
 DiMrUeGsgDbj9UrYIg29tj3o6SH3chk1vLBPpz8SQqgmEwK+re+AznaotM/FG0e+U8u4=;
Received: from mout.gmx.net ([212.227.15.15])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l5Ctj-0019mc-5q
 for oprofile-list@lists.sourceforge.net; Thu, 28 Jan 2021 19:24:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1611861834;
 bh=Rxnn58x6shHtK+148CN5bJBB1YoQDyMjaviOXjOarLE=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=dmAcLq4un2inVEiD7ZU/fZ3LMTHyYdiH72assDpCFN4TvIML2CffCUJJzqCfc8gKW
 VptMlMeu/UUEN0Kn+/vKrT4TSlhJ43mmtFaYEKeYFZT23ceh3O/D+QGIHkxzT5Yrm/
 i4v0t0/7FJIpGrhBbShTg0EamULjRAvI75JYTCmQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.20.60] ([92.116.172.59]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MOzOw-1lLmWU0Hs4-00PKFk; Thu, 28
 Jan 2021 19:59:38 +0100
Subject: Re: [PATCH 09/18] arch: parisc: Remove CONFIG_OPROFILE support
To: Viresh Kumar <viresh.kumar@linaro.org>, Robert Richter <rric@kernel.org>, 
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>
References: <cover.1610622251.git.viresh.kumar@linaro.org>
 <1b3e210d98d419eba4d0d648a3a181fe2190dc67.1610622251.git.viresh.kumar@linaro.org>
From: Helge Deller <deller@gmx.de>
Autocrypt: addr=deller@gmx.de; keydata=
 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
 c2TFWAS8k6RLkk41ZUU8ENX8+qZx/Q==
Message-ID: <e3c19207-a0e0-fd70-cc9c-e1397846cdf9@gmx.de>
Date: Thu, 28 Jan 2021 19:59:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1b3e210d98d419eba4d0d648a3a181fe2190dc67.1610622251.git.viresh.kumar@linaro.org>
Content-Language: en-US
X-Provags-ID: V03:K1:aJWtLa8gv4vxoBJN55m89GK9hyZGUBi4BA5z5UEVq7J05dDxkKH
 awdGKiBAZbzUFvgpMKVyEqnLB8InX+x40yiRuXVq4wCQ++3zAZBZU3i8z2gWLICFcPNWzPE
 DfG2UVBr9LDE1yznarosiiTBN4+rA4jRF/phFzvdFqtp2incs5yYe/R2aji1zxLi2ss04nk
 85Xo/QTntQgOhtK9Oxc0w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Gs6wufVr3m4=:sAY0i2sIq+OQVJhJMLzbXI
 FtXhsSbk9jKKl7wLoRssc29jOda5YwKEQDdYHeQU4dWPM2dBTpR1AYQRKaDLHB7TyXHQ22nmz
 Xi3cwPZTA83JQLEC0TjcjarYmv0DXPMjHc/0/I+sIpuWEb6DvkNMeSMiSDLNdjzEBdIzpaeDP
 ZdxX8I1ZOBuKOfhWzI0TOUO74cdAn0XvtxnDd6/9Tc6Tnb5TSCJbGsDDHNoM9eqlKKtV1tRSG
 YpBWUkJCdZnvbXEONSdtEgIMFSYcL4VnaNEffZp2j1WlVHZdSqEixaA72sOMQ969SZt0vlDRt
 +h3wOPyBBDclDZe1uUnw8nq4xZaxxHoEeNSqzbd8t7Jl8i0jBR/nPPvLge6Lvox4HJ7dOVAoU
 Po6XxWzN3v1ITgJntNULpNCtoUJKbQINVZEO2nIxXmaS1NFAD+Dvs2k4Jpfy2qEhFXnSU06Gj
 eegrhSspx9Z7roL/cX10rKxg80QX7bUd0DrTOkXMGG6+HCpthWuJo63VxDKWLt8ZouYgcPHDk
 qiGxmZf21KAW2+crN7dYIxU21XGRiIYILQBOEidt7AQfkahJv0DSsl+a2P1mjk39Do5oFRjKV
 s39xVbGoIoC3pvdrZwhocIagYrWl6n0Min6XgBghlRCjQhcvL00toXaDOWLNBt9DhLe0ElOTw
 Lrcz3LSoy/ffgpvmW0I8UdRaojvYD2iVMMvqCm+dXwdf5iHIVgTMhhg6UzvKgfjx+5B6N2EdM
 LGAuNrssBf/X0nTvm/nTIxcl2YqPXPZ3Sd1iqf0ovrk/rwoMMgz9e5ETe1x2IptdzM0X/iQMJ
 nzQCGcywAy9fZXQ7so4wqv9QdAWFDaU0/TDh02W2k6JjVuxz4O1htlCOTksFEGT+FUHTlfovH
 CZC9js7tzzUkVBU30hIw==
X-Spam-Score: 0.7 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (deller[at]gmx.de)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: gmx.de]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: movementarian.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: movementarian.org]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1l5Ctj-0019mc-5q
X-Mailman-Approved-At: Thu, 28 Jan 2021 21:49:13 +0000
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
 Vincent Guittot <vincent.guittot@linaro.org>, linux-parisc@vger.kernel.org,
 anmar.oueja@linaro.org, oprofile-list@lists.sf.net,
 Alexander Viro <viro@zeniv.linux.org.uk>, William Cohen <wcohen@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On 1/14/21 12:35 PM, Viresh Kumar wrote:
> The "oprofile" user-space tools don't use the kernel OPROFILE support
> any more, and haven't in a long time. User-space has been converted to
> the perf interfaces.
>
> Remove the old oprofile's architecture specific support.
>
> Suggested-by: Christoph Hellwig <hch@infradead.org>
> Suggested-by: Linus Torvalds <torvalds@linux-foundation.org> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>

For parisc parts:

Acked-by: Helge Deller <deller@gmx.de> # parisc

Thanks!
Helge

> ---
>  arch/parisc/Kconfig           |  1 -
>  arch/parisc/Makefile          |  2 --
>  arch/parisc/oprofile/Makefile | 10 ----------
>  arch/parisc/oprofile/init.c   | 23 -----------------------
>  4 files changed, 36 deletions(-)
>  delete mode 100644 arch/parisc/oprofile/Makefile
>  delete mode 100644 arch/parisc/oprofile/init.c
>
> diff --git a/arch/parisc/Kconfig b/arch/parisc/Kconfig
> index 78b17621ee4a..c2216e53fa81 100644
> --- a/arch/parisc/Kconfig
> +++ b/arch/parisc/Kconfig
> @@ -4,7 +4,6 @@ config PARISC
>  	select ARCH_32BIT_OFF_T if !64BIT
>  	select ARCH_MIGHT_HAVE_PC_PARPORT
>  	select HAVE_IDE
> -	select HAVE_OPROFILE
>  	select HAVE_FUNCTION_TRACER
>  	select HAVE_FUNCTION_GRAPH_TRACER
>  	select HAVE_SYSCALL_TRACEPOINTS
> diff --git a/arch/parisc/Makefile b/arch/parisc/Makefile
> index 5140c602207f..7d9f71aa829a 100644
> --- a/arch/parisc/Makefile
> +++ b/arch/parisc/Makefile
> @@ -116,8 +116,6 @@ kernel-y			:= mm/ kernel/ math-emu/
>  core-y	+= $(addprefix arch/parisc/, $(kernel-y))
>  libs-y	+= arch/parisc/lib/ $(LIBGCC)
>
> -drivers-$(CONFIG_OPROFILE)		+= arch/parisc/oprofile/
> -
>  boot	:= arch/parisc/boot
>
>  PALO := $(shell if (which palo 2>&1); then : ; \
> diff --git a/arch/parisc/oprofile/Makefile b/arch/parisc/oprofile/Makefile
> deleted file mode 100644
> index 86a1ccc328eb..000000000000
> --- a/arch/parisc/oprofile/Makefile
> +++ /dev/null
> @@ -1,10 +0,0 @@
> -# SPDX-License-Identifier: GPL-2.0
> -obj-$(CONFIG_OPROFILE) += oprofile.o
> -
> -DRIVER_OBJS = $(addprefix ../../../drivers/oprofile/, \
> -		oprof.o cpu_buffer.o buffer_sync.o \
> -		event_buffer.o oprofile_files.o \
> -		oprofilefs.o oprofile_stats.o \
> -		timer_int.o )
> -
> -oprofile-y				:= $(DRIVER_OBJS) init.o
> diff --git a/arch/parisc/oprofile/init.c b/arch/parisc/oprofile/init.c
> deleted file mode 100644
> index 026cba2af07a..000000000000
> --- a/arch/parisc/oprofile/init.c
> +++ /dev/null
> @@ -1,23 +0,0 @@
> -/**
> - * @file init.c
> - *
> - * @remark Copyright 2002 OProfile authors
> - * @remark Read the file COPYING
> - *
> - * @author John Levon <levon@movementarian.org>
> - */
> -
> -#include <linux/errno.h>
> -#include <linux/init.h>
> -#include <linux/kernel.h>
> -#include <linux/oprofile.h>
> -
> -int __init oprofile_arch_init(struct oprofile_operations *ops)
> -{
> -	return -ENODEV;
> -}
> -
> -
> -void oprofile_arch_exit(void)
> -{
> -}
>



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
