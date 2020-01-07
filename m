Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F92132765
	for <lists+oprofile-list@lfdr.de>; Tue,  7 Jan 2020 14:15:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1iooi7-0004Ds-PZ; Tue, 07 Jan 2020 13:15:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mpe@ellerman.id.au>) id 1ioeVM-00014k-53
 for oprofile-list@lists.sourceforge.net; Tue, 07 Jan 2020 02:22:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:
 References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=93jatWr+mobo7mP5A6Bcc7QfUdmm7LGuB15fFAFX22I=; b=lCqlej4AST8ziTT63imt8PyIx
 Hr7nocUFbpEhfYzjUcEXz+l92XRW3NdfW3PHqctWUTx7NEOk9A5YC6XmgE3uSAEGDN3hkb5pHgn45
 Wx6gmXZ390KoRwV/CSy391R+3dFl7/CqoeIjHH3jLfjPzhL1pl3r6Q7wkt4c7nmJMZEp0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=93jatWr+mobo7mP5A6Bcc7QfUdmm7LGuB15fFAFX22I=; b=eAELEa5qldllJbPP6INVMucdXX
 vk8rdqj08srfJyeQ8VltOMIYTs60LhYJ0jL+3QM7OTuvxcvucb5R5YxZJYOPT7S85XYD3EZNttwcU
 rMHyasorC8s7rgQxWTawgdepojj6Z1Z+BayfdS8gsQXxT8NbeGxMMhWaPIgnwWj0pNYc=;
Received: from ozlabs.org ([203.11.71.1])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ioeV5-00CsB6-3m
 for oprofile-list@lists.sourceforge.net; Tue, 07 Jan 2020 02:21:57 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 47sG1K0wb1z9sPK;
 Tue,  7 Jan 2020 13:05:25 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ellerman.id.au;
 s=201909; t=1578362729;
 bh=pY6TIy9SR4tEyAS0HbPqGRNPZ2UwwqiyR4Kh28zeFFI=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=Tfyl7hLYmcqDio6TzmoNX4eEpU/VH1XedfybafyjFJyg/jxoC61dMnx7t5GnDfrfJ
 Gr7//aHjlvnqj55C8bvTjCcqWFo+aSO1NPh7AsQPq5aFEIKTLm7yKV6qDAcnALHt8h
 A7VXpu10GywS0S7g2Qj47S6T+C/eV1wQThf24GFD1DUv7X4l/x0a3RumaFeZnoadMp
 qF7E7AAViYFuxl4ze6gkiOSgHcYuV3D520w4SgqTIh/zS3g1JU6Nt9kTdkUmsq7nrn
 jzPazOZziHv4zPXU98iZXPnck+e4y7P+Z84onVCXahK4jbpT70RvV1V6lSPbpikXa9
 V694qnRtkDCZA==
From: Michael Ellerman <mpe@ellerman.id.au>
To: Arnd Bergmann <arnd@arndb.de>, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Subject: Re: [PATCH v3 02/22] compat: provide compat_ptr() on all architectures
In-Reply-To: <20200102145552.1853992-3-arnd@arndb.de>
References: <20200102145552.1853992-1-arnd@arndb.de>
 <20200102145552.1853992-3-arnd@arndb.de>
Date: Tue, 07 Jan 2020 13:05:22 +1100
Message-ID: <87woa410nx.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [203.11.71.1 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arndb.de]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ioeV5-00CsB6-3m
X-Mailman-Approved-At: Tue, 07 Jan 2020 13:15:49 +0000
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mips@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-s390@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Paul Burton <paulburton@kernel.org>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Christian Borntraeger <borntraeger@de.ibm.com>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 Catalin Marinas <catalin.marinas@arm.com>, James Hogan <jhogan@kernel.org>,
 Robert Richter <rric@kernel.org>, Vasily Gorbik <gor@linux.ibm.com>,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

Arnd Bergmann <arnd@arndb.de> writes:
> In order to avoid needless #ifdef CONFIG_COMPAT checks,
> move the compat_ptr() definition to linux/compat.h
> where it can be seen by any file regardless of the
> architecture.
>
> Only s390 needs a special definition, this can use the
> self-#define trick we have elsewhere.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm64/include/asm/compat.h   | 17 -----------------
>  arch/mips/include/asm/compat.h    | 18 ------------------
>  arch/parisc/include/asm/compat.h  | 17 -----------------
>  arch/powerpc/include/asm/compat.h | 17 -----------------
>  arch/powerpc/oprofile/backtrace.c |  2 +-

LGTM.

Acked-by: Michael Ellerman <mpe@ellerman.id.au> (powerpc)

One minor comment:

> diff --git a/include/linux/compat.h b/include/linux/compat.h
> index 68f79d855c3d..11083d84eb23 100644
> --- a/include/linux/compat.h
> +++ b/include/linux/compat.h
> @@ -958,4 +958,22 @@ static inline bool in_compat_syscall(void) { return false; }
>  
>  #endif /* CONFIG_COMPAT */
>  
> +/*
> + * A pointer passed in from user mode. This should not
> + * be used for syscall parameters, just declare them
> + * as pointers because the syscall entry code will have
> + * appropriately converted them already.
> + */
> +#ifndef compat_ptr
> +static inline void __user *compat_ptr(compat_uptr_t uptr)
> +{
> +	return (void __user *)(unsigned long)uptr;
> +}
> +#endif
> +
> +static inline compat_uptr_t ptr_to_compat(void __user *uptr)
> +{
> +	return (u32)(unsigned long)uptr;
> +}

Is there a reason we cast to u32 directly instead of using compat_uptr_t?

cheers


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
