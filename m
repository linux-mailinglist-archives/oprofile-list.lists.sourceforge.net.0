Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A9F2FA4CB
	for <lists+oprofile-list@lfdr.de>; Mon, 18 Jan 2021 16:33:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l1WWo-0007M7-H5; Mon, 18 Jan 2021 15:33:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <viresh.kumar@linaro.org>) id 1l1MSF-0006Q6-Ji
 for oprofile-list@lists.sourceforge.net; Mon, 18 Jan 2021 04:47:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rTJZHyk4t8Gugvj+lnFByV1qa/S239wOnkv0tkeq884=; b=jGkuSs1GoBePaAWBCqypLKLI1C
 RcZPQSoKyg1yteDCfyiQRUyXin6I/J00s06g/FTwPez3Wtv6cKPGpulj1JoHcP6h2TBLPEmXM0wTx
 0SO7WWTWuKk/fpe40V7I4xmXHXneR/m2aW44kzIoGx1eUrGSBiLJi4JdTHRdZ7tjZAQY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rTJZHyk4t8Gugvj+lnFByV1qa/S239wOnkv0tkeq884=; b=jXedSQz+C2ZnGE2KXaYVs7E7tB
 +iz5b1KPVpaltQAJDJZ5rSM6tzIlPYVouzBZL2kbepcizKjNoFwpo7Ywl44xm+Mk8+Ev18e3QiGPK
 5bIrkzR3EId4fY5zKdgPkHbgt89O3Fi8kJDwWFuUQlANujbPQvxcspTNvoHpfSlTl598=;
Received: from mail-pg1-f169.google.com ([209.85.215.169])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l1MS2-00BjzM-4Y
 for oprofile-list@lists.sourceforge.net; Mon, 18 Jan 2021 04:47:49 +0000
Received: by mail-pg1-f169.google.com with SMTP id g15so10179232pgu.9
 for <oprofile-list@lists.sf.net>; Sun, 17 Jan 2021 20:47:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rTJZHyk4t8Gugvj+lnFByV1qa/S239wOnkv0tkeq884=;
 b=LcrQFfbq2DgyjtEw+XwXil8SMVWAvoBGFPQ1xNnHeqrSjU6FHo10ZmvcBDhRIVephc
 6/Bjug8Iwkbe987mh30YDtQ1eNA0JSnEioxymlCsS6zgy5BaSmGqIKVgxvXci7qHz+CX
 Hcj7UhFuI6eQ5WPOWQeMJ6ALX26h7YVUUQG7uwDcfzyewyPiv7RA/6wXxV2ijs5HtGl2
 N3yCD9hSxLa/e1pkMF3WZUCutFASEXihiMcG7IPYhM6JogqWNQH3TF8vD3pR0xcOovzJ
 EEiwq/afZTQz3Je1Pi+IdBVGrlLftD3O9oUuPrlhGDhm40aNt19SeVlqni9aXTd+/9S2
 tRGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rTJZHyk4t8Gugvj+lnFByV1qa/S239wOnkv0tkeq884=;
 b=DidAFdHT+kB5UnXSe/QNvycjdsROdc2WMjSoe2noaywvvm2iLSA0zywaSMTk0Nctjn
 cFHe9l2chdbEFD9dD3WIYpZrSUQtYa8LbH/FTkw4iKKPb/N4YohbIqQKucw54ZjV5tc3
 k1lT8p2W8zBsjgvW8CouPvunTO9dnNjRXiesyQgM4drlLQ+QLpfibyOqVJ1GCmOpD/UP
 sdeagbFkXxLSXcJ/QXzEvijwXskobmg2uZiiFJzPXolshFY7lXhVTzc/9j3Ag/Sx58nB
 GVz1r0OQpJzaqbCoHB9i7oxFrd8uX7P4dONNabSdH8dsZAK0jCk83+5BExZhRqNypAhy
 g41w==
X-Gm-Message-State: AOAM532OY3mPrQ3qeWCPUFDdh6oRtCrrq1VG6lbmoZiLsQpBV/FjzqNt
 1mbPyAzDO21c8iruC1SqT3kXhg==
X-Google-Smtp-Source: ABdhPJynUWLanc6SluN4pJDVPiUJTTJKU/6YxXhX0vjc19aR9mWq5EEgNrgbdwzek/NvTyhBfsFB0A==
X-Received: by 2002:a62:7e46:0:b029:19e:786b:9615 with SMTP id
 z67-20020a627e460000b029019e786b9615mr24394761pfc.37.1610945252531; 
 Sun, 17 Jan 2021 20:47:32 -0800 (PST)
Received: from localhost ([122.172.59.240])
 by smtp.gmail.com with ESMTPSA id 145sm14726406pge.88.2021.01.17.20.47.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 17 Jan 2021 20:47:31 -0800 (PST)
Date: Mon, 18 Jan 2021 10:17:29 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Robert Richter <rric@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Arnd Bergmann <arnd@arndb.de>,
 Jeremy Kerr <jk@ozlabs.org>
Subject: Re: [PATCH 10/18] arch: powerpc: Stop building and using oprofile
Message-ID: <20210118044729.g24gnfdmao7or5kp@vireshk-i7>
References: <cover.1610622251.git.viresh.kumar@linaro.org>
 <fd155a0a1e52650ddc9ec57a1d211fdc777beddb.1610622251.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fd155a0a1e52650ddc9ec57a1d211fdc777beddb.1610622251.git.viresh.kumar@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.169 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.169 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1l1MS2-00BjzM-4Y
X-Mailman-Approved-At: Mon, 18 Jan 2021 15:33:13 +0000
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
 Alexander Viro <viro@zeniv.linux.org.uk>, William Cohen <wcohen@redhat.com>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On 14-01-21, 17:05, Viresh Kumar wrote:
> The "oprofile" user-space tools don't use the kernel OPROFILE support
> any more, and haven't in a long time. User-space has been converted to
> the perf interfaces.
> 
> This commits stops building oprofile for powerpc and removes any
> reference to it from directories in arch/powerpc/ apart from
> arch/powerpc/oprofile, which will be removed in the next commit (this is
> broken into two commits as the size of the commit became very big, ~5k
> lines).
> 
> Note that the member "oprofile_cpu_type" in "struct cpu_spec" isn't
> removed as it was also used by other parts of the code.
> 
> Suggested-by: Christoph Hellwig <hch@infradead.org>
> Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> ---
>  arch/powerpc/Kconfig                          |   1 -
>  arch/powerpc/Makefile                         |   2 -
>  arch/powerpc/configs/44x/akebono_defconfig    |   1 -
>  arch/powerpc/configs/44x/currituck_defconfig  |   1 -
>  arch/powerpc/configs/44x/fsp2_defconfig       |   1 -
>  arch/powerpc/configs/44x/iss476-smp_defconfig |   1 -
>  arch/powerpc/configs/cell_defconfig           |   1 -
>  arch/powerpc/configs/g5_defconfig             |   1 -
>  arch/powerpc/configs/maple_defconfig          |   1 -
>  arch/powerpc/configs/pasemi_defconfig         |   1 -
>  arch/powerpc/configs/pmac32_defconfig         |   1 -
>  arch/powerpc/configs/powernv_defconfig        |   1 -
>  arch/powerpc/configs/ppc64_defconfig          |   1 -
>  arch/powerpc/configs/ppc64e_defconfig         |   1 -
>  arch/powerpc/configs/ppc6xx_defconfig         |   1 -
>  arch/powerpc/configs/ps3_defconfig            |   1 -
>  arch/powerpc/configs/pseries_defconfig        |   1 -
>  arch/powerpc/include/asm/cputable.h           |  20 ---
>  arch/powerpc/include/asm/oprofile_impl.h      | 135 ------------------
>  arch/powerpc/include/asm/spu.h                |  33 -----
>  arch/powerpc/kernel/cputable.c                |  67 ---------
>  arch/powerpc/kernel/dt_cpu_ftrs.c             |   2 -
>  arch/powerpc/platforms/cell/Kconfig           |   5 -
>  arch/powerpc/platforms/cell/spu_notify.c      |  55 -------

+ this..

diff --git a/arch/powerpc/platforms/cell/Makefile b/arch/powerpc/platforms/cell/Makefile
index 10064a33ca96..7ea6692f67e2 100644
--- a/arch/powerpc/platforms/cell/Makefile
+++ b/arch/powerpc/platforms/cell/Makefile
@@ -19,7 +19,6 @@ spu-priv1-$(CONFIG_PPC_CELL_COMMON)   += spu_priv1_mmio.o
 spu-manage-$(CONFIG_PPC_CELL_COMMON)   += spu_manage.o
 
 obj-$(CONFIG_SPU_BASE)                 += spu_callbacks.o spu_base.o \
-                                          spu_notify.o \
                                           spu_syscalls.o \
                                           $(spu-priv1-y) \
                                           $(spu-manage-y) \

-- 
viresh


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
