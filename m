Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 548682F6A1B
	for <lists+oprofile-list@lfdr.de>; Thu, 14 Jan 2021 19:54:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l07lc-0003bC-3J; Thu, 14 Jan 2021 18:54:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <monstr@monstr.eu>) id 1l02LS-0003vd-W7
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 13:07:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:Subject:From:References:Cc:To:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P2H8xNGc4qJjyWrW7BK3wR5WxGbN+9v4i3sVmePnfdE=; b=aIt0xWiK0//Wf+N43HjFIZ7ee9
 61uBArURVEpy3Q/c/mknPfgDDOBMPMQU79Kb6Sk9+oFqzFlfkLPWYeJ6bXL4M7VvVxRTTl7nUJ/O+
 SiscMHnlK2x8/Lz8o+UbP9Ff5XbSLi9klYiygC3ZLPquxQN8YKmbOFNElKPlpGspjodY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:Subject:From:References:Cc:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=P2H8xNGc4qJjyWrW7BK3wR5WxGbN+9v4i3sVmePnfdE=; b=lsRtcjlcEH0SzTE3HG3fI7Pfzm
 aPdYuvEGzIigge6BAXmSmEY0z9EpHX/TF7IGa8EcuRRFHKYLOVrDMyse1ap2frtqQ4c6NRizr9+dV
 O6mtjj3i+MB6gUJOxyWkgrB1VO1ZchaDd9egw6o290td92FlF8sjVTQosBH60qIdmdK8=;
Received: from mail-lf1-f49.google.com ([209.85.167.49])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l02LJ-008fUS-BU
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 13:07:22 +0000
Received: by mail-lf1-f49.google.com with SMTP id o10so7872398lfl.13
 for <oprofile-list@lists.sf.net>; Thu, 14 Jan 2021 05:07:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=to:cc:references:from:subject:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=P2H8xNGc4qJjyWrW7BK3wR5WxGbN+9v4i3sVmePnfdE=;
 b=qMLy+ue3L/NM69Ol9TI3ZSSVmVKPOMO6YNgiEAQtzybxn52dP1iSLfrwnF0VVjSmeV
 uIpoY04/TZfYrH1zfFtU1KNSLajFK4GqtcClTQ8RBvxE/qRLUuPoy1ib75cWJh2imf0A
 B1Ted8JpNVGFaAwjqNdJOSnsTeFQKAM8AtB9Gx/ohrN4NllXpXfNUToQQ4myy7fG9MAp
 +6IKatovaFOxcKoLgrKDTUj2hXQmE5bfg3baGss1KsIPdk5FNqTEQZj9wuF5LmLgyDLS
 tXEJI9E9dy+29PSqNwSYuaUELcfwI+YSgT0yI+aV5M0LAkWscooDcShjl2u+moQITwIr
 GxkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:from:subject:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=P2H8xNGc4qJjyWrW7BK3wR5WxGbN+9v4i3sVmePnfdE=;
 b=EWZK5fzoLruBKhKxCrJLoDSC7TND+lCTcPrPKENlM9dw+nhNgtHGk2G7TJwB/r46jZ
 v4Gq2AErM3/Y1vtvpdMtfuV8xDepTtEH1OIIGrffWVZjCF1rHU7mWFPeV4iGp3O+u/eV
 ZEemd7uZbo5i4Cn8QkYlDZ40k2I5kHfCwxHYABMFG64/3VvuLDHQaZuHOM/U0/64w8+S
 9m7Gb2dyiaEebiIJflOsCiSgoOGBnaFDedRKa+IV7Vlx6taROSzLoPcGN2G4bAQofbpd
 wo7C8BIVrDPKWZfxMVAn0GM6YXhY9/PLyybNEKzZznV/eIcM08kYhhTqAvt4iHopX/lR
 eZdA==
X-Gm-Message-State: AOAM5339TZ8nY4Y/fBiFrK5TP81i5fnky17UJPD/Y+xrKUsJ/Nl22JNO
 /I1E4wOAjx5cDl/YXizZUthqu47YBI6x4gj0
X-Google-Smtp-Source: ABdhPJwq7W1Mc96HpphlbK5qRA13EecL/9ShigsyCyGuL2nFxYbOb6v/X8VQd0eeDiaHPLr6cVOGtQ==
X-Received: by 2002:a05:6402:1646:: with SMTP id
 s6mr5474103edx.319.1610626339388; 
 Thu, 14 Jan 2021 04:12:19 -0800 (PST)
Received: from [192.168.0.105] (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id t15sm2138323eds.38.2021.01.14.04.12.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 14 Jan 2021 04:12:18 -0800 (PST)
To: Viresh Kumar <viresh.kumar@linaro.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Robert Richter <rric@kernel.org>
References: <cover.1610622251.git.viresh.kumar@linaro.org>
 <592887f3a5baf0d2b2919617757f1f629aa4030b.1610622251.git.viresh.kumar@linaro.org>
From: Michal Simek <monstr@monstr.eu>
Subject: Re: [PATCH 07/18] arch: microblaze: Remove CONFIG_OPROFILE support
Message-ID: <4afa1d09-cdd4-44a1-2fa2-1f6ca5657ef6@monstr.eu>
Date: Thu, 14 Jan 2021 13:12:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <592887f3a5baf0d2b2919617757f1f629aa4030b.1610622251.git.viresh.kumar@linaro.org>
Content-Language: en-US
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.49 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.49 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1l02LJ-008fUS-BU
X-Mailman-Approved-At: Thu, 14 Jan 2021 18:54:39 +0000
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
 Vincent Guittot <vincent.guittot@linaro.org>,
 Christoph Hellwig <hch@infradead.org>, linux-kernel@vger.kernel.org,
 anmar.oueja@linaro.org, oprofile-list@lists.sf.net,
 Alexander Viro <viro@zeniv.linux.org.uk>, William Cohen <wcohen@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net



On 14. 01. 21 12:35, Viresh Kumar wrote:
> The "oprofile" user-space tools don't use the kernel OPROFILE support
> any more, and haven't in a long time. User-space has been converted to
> the perf interfaces.
> 
> Remove the old oprofile's architecture specific support.
> 
> Suggested-by: Christoph Hellwig <hch@infradead.org>
> Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> ---
>  arch/microblaze/Kconfig                       |  1 -
>  arch/microblaze/Makefile                      |  2 --
>  arch/microblaze/oprofile/Makefile             | 14 ------------
>  .../microblaze/oprofile/microblaze_oprofile.c | 22 -------------------
>  4 files changed, 39 deletions(-)
>  delete mode 100644 arch/microblaze/oprofile/Makefile
>  delete mode 100644 arch/microblaze/oprofile/microblaze_oprofile.c
> 
> diff --git a/arch/microblaze/Kconfig b/arch/microblaze/Kconfig
> index f82795592ce5..25a5a3fb14aa 100644
> --- a/arch/microblaze/Kconfig
> +++ b/arch/microblaze/Kconfig
> @@ -30,7 +30,6 @@ config MICROBLAZE
>  	select HAVE_FTRACE_MCOUNT_RECORD
>  	select HAVE_FUNCTION_GRAPH_TRACER
>  	select HAVE_FUNCTION_TRACER
> -	select HAVE_OPROFILE
>  	select HAVE_PCI
>  	select IRQ_DOMAIN
>  	select XILINX_INTC
> diff --git a/arch/microblaze/Makefile b/arch/microblaze/Makefile
> index bb980891816d..b41f323e1fde 100644
> --- a/arch/microblaze/Makefile
> +++ b/arch/microblaze/Makefile
> @@ -54,8 +54,6 @@ core-y += arch/microblaze/kernel/
>  core-y += arch/microblaze/mm/
>  core-$(CONFIG_PCI) += arch/microblaze/pci/
>  
> -drivers-$(CONFIG_OPROFILE) += arch/microblaze/oprofile/
> -
>  boot := arch/microblaze/boot
>  
>  # Are we making a simpleImage.<boardname> target? If so, crack out the boardname
> diff --git a/arch/microblaze/oprofile/Makefile b/arch/microblaze/oprofile/Makefile
> deleted file mode 100644
> index 107f2f55d995..000000000000
> --- a/arch/microblaze/oprofile/Makefile
> +++ /dev/null
> @@ -1,14 +0,0 @@
> -# SPDX-License-Identifier: GPL-2.0
> -#
> -# arch/microblaze/oprofile/Makefile
> -#
> -
> -obj-$(CONFIG_OPROFILE) += oprofile.o
> -
> -DRIVER_OBJS := $(addprefix ../../../drivers/oprofile/, \
> -		oprof.o cpu_buffer.o buffer_sync.o \
> -		event_buffer.o oprofile_files.o \
> -		oprofilefs.o oprofile_stats.o \
> -		timer_int.o )
> -
> -oprofile-y := $(DRIVER_OBJS) microblaze_oprofile.o
> diff --git a/arch/microblaze/oprofile/microblaze_oprofile.c b/arch/microblaze/oprofile/microblaze_oprofile.c
> deleted file mode 100644
> index def17e59888e..000000000000
> --- a/arch/microblaze/oprofile/microblaze_oprofile.c
> +++ /dev/null
> @@ -1,22 +0,0 @@
> -/*
> - * Microblaze oprofile code
> - *
> - * Copyright (C) 2009 Michal Simek <monstr@monstr.eu>
> - * Copyright (C) 2009 PetaLogix
> - *
> - * This file is subject to the terms and conditions of the GNU General Public
> - * License. See the file "COPYING" in the main directory of this archive
> - * for more details.
> - */
> -
> -#include <linux/oprofile.h>
> -#include <linux/init.h>
> -
> -int __init oprofile_arch_init(struct oprofile_operations *ops)
> -{
> -	return -1;
> -}
> -
> -void oprofile_arch_exit(void)
> -{
> -}
> 

Acked-by: Michal Simek <michal.simek@xilinx.com>

Thanks,
Michal

-- 
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal SoCs





_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
