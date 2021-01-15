Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C89162F8881
	for <lists+oprofile-list@lfdr.de>; Fri, 15 Jan 2021 23:36:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l0Xi3-0002vf-32; Fri, 15 Jan 2021 22:36:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <bounce+9e4869.be9e4a-oprofile-list=lists.sf.net@mg.codeaurora.org>)
 id 1l0RTc-0005PK-3u
 for oprofile-list@lists.sourceforge.net; Fri, 15 Jan 2021 15:57:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:Cc:To:From:Reply-To:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q0/ru+LfZr7L2kRVGdNGG4rvKSg/SVssCMScCzWIjSY=; b=Ewn6AZZ5SbZCCVc4vui4J0YrN0
 9CJtzwVD724QdtWMxxxveImayJo7E0IZodHhyGVQNWFEZqSyNQkqxnSgLet4+a4fCaYr9QJbHUGDa
 jXRamWpK8OT/ZgeKQ5jnUWubJ87Q1JYLQVibZ47GSzBoFRLgHKrnZpfE87vPAahynAN0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:Cc:To:From:Reply-To:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=q0/ru+LfZr7L2kRVGdNGG4rvKSg/SVssCMScCzWIjSY=; b=SHKhmLz3JGlbA36OObYIJmi7Ha
 vjo/V4dYa/vaLD2iprV3yl+YnWm6IEVOjKY29WiR22L2QqcGlZVvGC2xEyIgBRzRXzSCl3oxxj3+5
 QfjZ8AbzSOahX66hPUXHxnQBB/4bCHM9ceKdJjvuU1jdsBYvKU8wfv1SQW5jyZFWZGHc=;
Received: from m43-15.mailgun.net ([69.72.43.15])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l0RTO-0055Wr-7K
 for oprofile-list@lists.sourceforge.net; Fri, 15 Jan 2021 15:57:28 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1610726235; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: Date: Subject: In-Reply-To: References: Cc:
 To: From: Reply-To: Sender;
 bh=q0/ru+LfZr7L2kRVGdNGG4rvKSg/SVssCMScCzWIjSY=;
 b=xkUFt8+iAtKgjD5A+I7goDKczqBghuLPIjgwzbOPgEVDJSxoulZble4aa6LOT5tjIbT3AT2a
 NWbNbdJoubq0b17sRrKWoX6vUWjaQTNH0BOocIhX3u860HuHFLySuujvpW+NXRmmqkgyP3vm
 PPcKfiqUewRdjKllVyxrnnGAwaY=
X-Mailgun-Sending-Ip: 69.72.43.15
X-Mailgun-Sid: WyI4MTQ5ZCIsICJvcHJvZmlsZS1saXN0QGxpc3RzLnNmLm5ldCIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-east-1.postgun.com with SMTP id
 6001b52402b2f1cb1a5dc977 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 15 Jan 2021 15:30:44
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 24958C433ED; Fri, 15 Jan 2021 15:30:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED, BAYES_00,
 SPF_FAIL, 
 URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from BCAIN (104-54-226-75.lightspeed.austtx.sbcglobal.net
 [104.54.226.75])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bcain)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5B562C433C6;
 Fri, 15 Jan 2021 15:30:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5B562C433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=bcain@codeaurora.org
From: "Brian Cain" <bcain@codeaurora.org>
To: "'Viresh Kumar'" <viresh.kumar@linaro.org>,
 "'Linus Torvalds'" <torvalds@linux-foundation.org>,
 "'Robert Richter'" <rric@kernel.org>
References: <cover.1610622251.git.viresh.kumar@linaro.org>
 <041ab89e12a71c1bf40d08926c3914c68af1504c.1610622251.git.viresh.kumar@linaro.org>
In-Reply-To: <041ab89e12a71c1bf40d08926c3914c68af1504c.1610622251.git.viresh.kumar@linaro.org>
Subject: RE: [PATCH 04/18] arch: hexagon: Don't select HAVE_OPROFILE
Date: Fri, 15 Jan 2021 09:30:41 -0600
Message-ID: <003a01d6eb53$63313330$29939990$@codeaurora.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQED93X9Awx87JGfByaHSF5A6x5muQJxd0TPq7sr7rA=
Content-Language: en-us
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linaro.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [69.72.43.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [69.72.43.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1l0RTO-0055Wr-7K
X-Mailman-Approved-At: Fri, 15 Jan 2021 22:36:45 +0000
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
Reply-To: bcain@codeaurora.org
Cc: 'Arnd Bergmann' <arnd@kernel.org>,
 'Vincent Guittot' <vincent.guittot@linaro.org>,
 'Christoph Hellwig' <hch@infradead.org>, linux-hexagon@vger.kernel.org,
 linux-kernel@vger.kernel.org, anmar.oueja@linaro.org,
 oprofile-list@lists.sf.net, 'Alexander Viro' <viro@zeniv.linux.org.uk>,
 'William Cohen' <wcohen@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

> -----Original Message-----
> From: Viresh Kumar <viresh.kumar@linaro.org>
> Sent: Thursday, January 14, 2021 5:35 AM
...
> The "oprofile" user-space tools don't use the kernel OPROFILE support any
> more, and haven't in a long time. User-space has been converted to the
perf
> interfaces.
> 
> Don't select HAVE_OPROFILE for hexagon anymore.

Acked-by: Brian Cain <bcain@codeaurora.org>

> Suggested-by: Christoph Hellwig <hch@infradead.org>
> Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> ---
>  arch/hexagon/Kconfig | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/hexagon/Kconfig b/arch/hexagon/Kconfig index
> 6e00c16a36b5..44a409967af1 100644
> --- a/arch/hexagon/Kconfig
> +++ b/arch/hexagon/Kconfig
> @@ -7,7 +7,6 @@ config HEXAGON
>  	select ARCH_32BIT_OFF_T
>  	select ARCH_HAS_SYNC_DMA_FOR_DEVICE
>  	select ARCH_NO_PREEMPT
> -	select HAVE_OPROFILE
>  	# Other pending projects/to-do items.
>  	# select HAVE_REGS_AND_STACK_ACCESS_API
>  	# select HAVE_HW_BREAKPOINT if PERF_EVENTS
> --
> 2.25.0.rc1.19.g042ed3e048af




_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
