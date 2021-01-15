Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C63772F780A
	for <lists+oprofile-list@lfdr.de>; Fri, 15 Jan 2021 12:54:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l0NgZ-0001Gg-JL; Fri, 15 Jan 2021 11:54:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <movement@li1368-133.members.linode.com>)
 id 1l0D6Q-0006dN-4O
 for oprofile-list@lists.sourceforge.net; Fri, 15 Jan 2021 00:36:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vItp2aoMIYNb43sTvGVU8fN5Dp2NBYcTCopvUipBklU=; b=B16zih2xwro6esXlj00cJ5sp1M
 m5Q4YUOZp7jDXsrqJS5Qa3d/IWxkvmiBi4cZU2xdx9uczunpoj0ov7sVgHfyauVcj/82SJgm5c0Cs
 JNyomy36bWY9PLnx/KjrKD44Lff9ODsjSGUV37R1Q+cwYPFCEWViLKANwlVUUmMWKM+Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vItp2aoMIYNb43sTvGVU8fN5Dp2NBYcTCopvUipBklU=; b=NasgM//QcoQMuZUUq3lsAr1QWB
 X04rQlhMsfi2OeQkc2WMitvAP5tZ5s1A+glfZeLWNg4HB+PABdAj6dInxmjyTkMlrgOAZyPv2gfD3
 6sBTKQoOz9gQc/atHdY8jK9VRGSq9DLJFs3uh6VA1FBVL5hTBhnzIw7CHPaKCOMH2uA4=;
Received: from ssh.movementarian.org ([139.162.205.133] helo=movementarian.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l0D6H-00CWP5-BD
 for oprofile-list@lists.sourceforge.net; Fri, 15 Jan 2021 00:36:34 +0000
Received: from movement by movementarian.org with local (Exim 4.93)
 (envelope-from <movement@li1368-133.members.linode.com>)
 id 1l0Cqq-0067Sj-Mn; Fri, 15 Jan 2021 00:20:28 +0000
Date: Fri, 15 Jan 2021 00:20:28 +0000
From: John Levon <levon@movementarian.org>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH 00/18] drivers: Remove oprofile and dcookies
Message-ID: <20210115002028.GA1458515@li1368-133.members.linode.com>
References: <cover.1610622251.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1610622251.git.viresh.kumar@linaro.org>
X-Url: http://www.movementarian.org/
X-Spam-Score: 2.4 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: movementarian.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: movementarian.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: movementarian.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.0 FORGED_SPF_HELO        No description available.
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1l0D6H-00CWP5-BD
X-Mailman-Approved-At: Fri, 15 Jan 2021 11:53:42 +0000
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
Cc: Arnd Bergmann <arnd@kernel.org>, Robert Richter <rric@kernel.org>,
 anmar.oueja@linaro.org, oprofile-list@lists.sf.net,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 William Cohen <wcohen@redhat.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Thu, Jan 14, 2021 at 05:04:24PM +0530, Viresh Kumar wrote:

> The "oprofile" user-space tools don't use the kernel OPROFILE support
> any more, and haven't in a long time. User-space has been converted to
> the perf interfaces.
> 
> Remove oprofile and dcookies (whose only user is oprofile) support from
> the kernel.

With a fond farewell...

Acked-by: John Levon <levon@movementarian.org>

john


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
