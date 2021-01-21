Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0868E2FEE98
	for <lists+oprofile-list@lfdr.de>; Thu, 21 Jan 2021 16:28:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l2bsQ-0005eK-B3; Thu, 21 Jan 2021 15:28:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tglx@linutronix.de>) id 1l2YnE-0007Qq-8I
 for oprofile-list@lists.sourceforge.net; Thu, 21 Jan 2021 12:10:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:
 References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SdsBz6gCJ85aUSsTjq0lgJ9LVvw7hEu3agNRkx72J5A=; b=FHntmeKnTcVVWbwPnHyfzWw4o
 QWPBIGvOAXpnuPTEhBTX2CZBAqT1vqaA1ftCpivOhKF+fLbyHBa/7FE5F7lIFOclyXp1QKjllUmka
 P1jo6kNWt+SX3JIsT7jtwHBVTUm+XN/h6Qb3Tf6IWxVEPFoTeiFGkU42mU8Ve54OU7hwM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SdsBz6gCJ85aUSsTjq0lgJ9LVvw7hEu3agNRkx72J5A=; b=J3cTVkSmTRYDOf80+QaMNcHswX
 ssUKKFwdbLc2cBHQKb8JPgViZkdOQfmL2spT7ma1VxbTltirvTRjIgSphs6ZdlQbvAx13e04V5Xjt
 Mbs/sJITJDU58dvb06OZhWJvTeYE2m78V1Y6L6moNTFNXut2rjW01DMqoxro7J7tYC9M=;
Received: from galois.linutronix.de ([193.142.43.55])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l2Yn9-002j0U-3C
 for oprofile-list@lists.sourceforge.net; Thu, 21 Jan 2021 12:10:28 +0000
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1611230015;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=SdsBz6gCJ85aUSsTjq0lgJ9LVvw7hEu3agNRkx72J5A=;
 b=L02xojhczQHG4vlgAa7oimnwFALqppYeTRgONyTjMr49zs/a/RGsWBUkJF4qLAhGi2on/U
 whKkkT+VlIudAyOL+JJkD18iOcuwbS4Q+uzNqqRXtVKJiDLFi4UrvnuqVFAQynNoKywBSy
 wJGncrVL/7iuSWSGdON4RyJhgQeQi0U6nzC/aSbwvptNshyEyOI6lDZycw5xwh5ZI2SZuw
 nRCJnhwHIEfbqOHIikLeFNulsocA/OLU5xONWOUJ/Xjecegk3rwHh/ZXNNw3DZlQPpYPkU
 HTH84AsHUDcl82m4wTLGC1iirh2U3RcNwsrpvbtsZ9FEByBBAtjL1dL3ayNFYg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1611230015;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=SdsBz6gCJ85aUSsTjq0lgJ9LVvw7hEu3agNRkx72J5A=;
 b=FOpFQbKKmkT6AYZgCggznZ0HVWfs9ulOsTZmZbEM35P+K2oyYV5aQwtuP/V2w2Nd2FHfmP
 +7AId/ZTa0F9nYCg==
To: Viresh Kumar <viresh.kumar@linaro.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Robert Richter <rric@kernel.org>
Subject: Re: [PATCH 00/18] drivers: Remove oprofile and dcookies
In-Reply-To: <cover.1610622251.git.viresh.kumar@linaro.org>
References: <cover.1610622251.git.viresh.kumar@linaro.org>
Date: Thu, 21 Jan 2021 12:53:35 +0100
Message-ID: <87mtx25ww0.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linutronix.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l2Yn9-002j0U-3C
X-Mailman-Approved-At: Thu, 21 Jan 2021 15:28:00 +0000
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
 Viresh Kumar <viresh.kumar@linaro.org>, anmar.oueja@linaro.org,
 oprofile-list@lists.sf.net, Alexander Viro <viro@zeniv.linux.org.uk>,
 William Cohen <wcohen@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Thu, Jan 14 2021 at 17:04, Viresh Kumar wrote:
> The "oprofile" user-space tools don't use the kernel OPROFILE support
> any more, and haven't in a long time. User-space has been converted to
> the perf interfaces.
>
> Remove oprofile and dcookies (whose only user is oprofile) support from
> the kernel.

Yay!

Acked-by: Thomas Gleixner <tglx@linutronix.de>


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
