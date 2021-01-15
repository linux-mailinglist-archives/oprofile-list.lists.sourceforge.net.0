Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFD92F780B
	for <lists+oprofile-list@lfdr.de>; Fri, 15 Jan 2021 12:54:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l0NgZ-0001H3-O8; Fri, 15 Jan 2021 11:54:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <viresh.kumar@linaro.org>) id 1l0GUp-0005oa-Ct
 for oprofile-list@lists.sourceforge.net; Fri, 15 Jan 2021 04:13:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gH2batcV0mbxPrXXyk1QXVRqwhKgMABpN1EolWS8Bvc=; b=Bfhnmn+avOQuImVTzd+wzt0qnA
 UTzG7kcRb0UucnoJ5j26U+KNFHTjKU1vWr30Pk5YzsOOQhGxYtlMePjBhgnQheWQ1+JMMEwPNXYQ2
 8qM7pykhEa9zUgojwXp7KtIHshWdppUQCXYk6ST5OBqPVOBnwF/oEejNrCMUT2Vy1BWg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gH2batcV0mbxPrXXyk1QXVRqwhKgMABpN1EolWS8Bvc=; b=Ues5cg0s63EIssIEBCfKTV5lR3
 GFcSVYpYkwZyypgiYItK/wBoEM3hT4mdFMiBIWib/mq8Ra9v2ih/3LfggiD8oIoiwwGQ4YZDfA14t
 FHl8s07PLe1H7Y1pOl3JcTJuw4Xp1omgIX9K1MjDwR5y8t2jqYds3OZFj5Jb/ZqQd8kY=;
Received: from mail-pg1-f181.google.com ([209.85.215.181])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l0GUg-00DQER-TP
 for oprofile-list@lists.sourceforge.net; Fri, 15 Jan 2021 04:13:59 +0000
Received: by mail-pg1-f181.google.com with SMTP id i5so5216199pgo.1
 for <oprofile-list@lists.sf.net>; Thu, 14 Jan 2021 20:13:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gH2batcV0mbxPrXXyk1QXVRqwhKgMABpN1EolWS8Bvc=;
 b=Bt/YsLESU8pfLIriLUvINiSIxA3QNvd+U9KAshB6U0dfPrVvGAvL//YTnEF+Ixgpvp
 w8DRk5DW3Gkh/SUcONIZT5OHQNetp8sB3mwDav5gubUsZASegMzsqV9gMEz6iE0VyCBM
 bK9QmLRuXWg6Ftxn2kKEPNQvY/cEEHKIL8QLtLoGzgnY1WvyICKl089KnK4g+H6/GMca
 b+2F3O1Bdqs7QKHowOCVn/74iuY1Ai7O6T3/XE54mUYxWlpf4a7FW44i/Xgu5SianPaR
 Qk6blTIbE+3FiRf0ZEP4EFCgGyTGHz2UJ88HpycthfuZG9V9IYI94FRh8R/x4JVyl0t/
 Duwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gH2batcV0mbxPrXXyk1QXVRqwhKgMABpN1EolWS8Bvc=;
 b=RLOrPWUJHdMdUZpCovLqZYGs1c5KzToCVekQAyEJkTokqLT3Kqk7SG17Cb7/WhO0kv
 jlJgnJ2mHcofadegWqx27EbjykX7HuxjXa1MMBnTj+l9VlqukviWMQ0Rm+VeVI2Fc+1D
 Pjqc8b89635BtruBF2D9vk9rpxp57SzoHNiXh86erjRmAviSGNaFhJfgS3TSjY4mGyn6
 TVTYI39GsSMT4jH4x3krr4AmcsH8BTALP6UWdXv17i1wUcLTrpO3ms9IJndWcSj2pd5V
 68loAHs86GNdNlKt4rB5cArM8+ULZGq6m7D1+k9W0v0my3oU4YbjZuM7BiuDBD3h3pto
 60Ww==
X-Gm-Message-State: AOAM530er/UYNea6kQog1jesdXIepBEO7Lx4MaroZi1zMQQdSw7gg8qC
 cijq9y6WlV7hjrCx0eHZ0jvlbw==
X-Google-Smtp-Source: ABdhPJwX0pFecGXVi1Au2YvUiw+L9apCFfI5NeA4oARA1MEI+sWpcWBR/4GceFi9XopPlCq/8ITOTA==
X-Received: by 2002:a65:67cf:: with SMTP id b15mr10658149pgs.429.1610684025317; 
 Thu, 14 Jan 2021 20:13:45 -0800 (PST)
Received: from localhost ([122.172.85.111])
 by smtp.gmail.com with ESMTPSA id bk18sm2943602pjb.41.2021.01.14.20.13.43
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 Jan 2021 20:13:44 -0800 (PST)
Date: Fri, 15 Jan 2021 09:43:42 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Robert Richter <rric@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Arnd Bergmann <arnd@arndb.de>,
 Jeremy Kerr <jk@ozlabs.org>
Subject: Re: [PATCH 10/18] arch: powerpc: Stop building and using oprofile
Message-ID: <20210115041342.fqmdyply3ivygxgr@vireshk-i7>
References: <cover.1610622251.git.viresh.kumar@linaro.org>
 <fd155a0a1e52650ddc9ec57a1d211fdc777beddb.1610622251.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fd155a0a1e52650ddc9ec57a1d211fdc777beddb.1610622251.git.viresh.kumar@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.181 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.181 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1l0GUg-00DQER-TP
X-Mailman-Approved-At: Fri, 15 Jan 2021 11:53:41 +0000
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

+ this to fix a warning:

diff --git a/arch/powerpc/platforms/cell/spufs/run.c b/arch/powerpc/platforms/cell/spufs/run.c
index 466006918003..ce52b87496d2 100644
--- a/arch/powerpc/platforms/cell/spufs/run.c
+++ b/arch/powerpc/platforms/cell/spufs/run.c
@@ -353,7 +353,6 @@ static int spu_process_callback(struct spu_context *ctx)
 long spufs_run_spu(struct spu_context *ctx, u32 *npc, u32 *event)
 {
        int ret;
-       struct spu *spu;
        u32 status;
 
        if (mutex_lock_interruptible(&ctx->run_mutex))
@@ -386,7 +385,6 @@ long spufs_run_spu(struct spu_context *ctx, u32 *npc, u32 *event)
                        mutex_lock(&ctx->state_mutex);
                        break;
                }
-               spu = ctx->spu;
                if (unlikely(test_and_clear_bit(SPU_SCHED_NOTIFY_ACTIVE,
                                                &ctx->sched_flags))) {
                        if (!(status & SPU_STATUS_STOPPED_BY_STOP))

-- 
viresh


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
