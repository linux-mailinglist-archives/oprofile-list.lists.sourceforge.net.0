Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 682F224D040
	for <lists+oprofile-list@lfdr.de>; Fri, 21 Aug 2020 10:04:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1k921q-0001M2-QL; Fri, 21 Aug 2020 08:04:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tsbogend@alpha.franken.de>) id 1k921n-0001KS-JP
 for oprofile-list@lists.sourceforge.net; Fri, 21 Aug 2020 08:03:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CtMvqSvjlITU3uLps3sc4Oazf1Gdx3DWYpYe4V01uWI=; b=UgUA5DgaoZurmhJx94JK6ndwmg
 N2ew1JQRoSpQX5BdLvVzvKimymXSWDOEHaIgUFjMUSfBTBc9K5EHNmbF58r4DnEGPnNXMSiQn+3HH
 oiIwUP8DgkYZBJdzOM+b+rdkWdoHoqQRKjE2pDhVrZz5lbuydTSRI+RXoVdSIgEQsjLc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CtMvqSvjlITU3uLps3sc4Oazf1Gdx3DWYpYe4V01uWI=; b=YX6QDk571ravzrBDm5fmfvRjv+
 VhfaQsmqJorqh4D0ARk9w0AYwLEAedByZJbiFuS73lhhDQaVYxgwE2yvcluYcGjhARF35mmFRKmS6
 X2alNH/AfecAUWc4zJ+ap4K0hbU6uOokWgIZj8lpoJ+vzgHzeFhfhdpO9LzVbbmy6T5A=;
Received: from elvis.franken.de ([193.175.24.41])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1k921i-0007hW-22
 for oprofile-list@lists.sourceforge.net; Fri, 21 Aug 2020 08:03:59 +0000
Received: from uucp (helo=alpha)
 by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
 id 1k91oP-00079q-03; Fri, 21 Aug 2020 09:50:09 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
 id 6E382C0D89; Fri, 21 Aug 2020 09:48:21 +0200 (CEST)
Date: Fri, 21 Aug 2020 09:48:21 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: zhe.he@windriver.com
Subject: Re: [PATCH] mips/oprofile: Fix fallthrough placement
Message-ID: <20200821074821.GD8336@alpha.franken.de>
References: <20200820125440.350184-1-zhe.he@windriver.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200820125440.350184-1-zhe.he@windriver.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1k921i-0007hW-22
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
Cc: oprofile-list@lists.sf.net, rric@kernel.org, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Thu, Aug 20, 2020 at 08:54:40PM +0800, zhe.he@windriver.com wrote:
> From: He Zhe <zhe.he@windriver.com>
> 
> We want neither
> "
> include/linux/compiler_attributes.h:201:41: warning: statement will never
> be executed [-Wswitch-unreachable]
>   201 | # define fallthrough __attribute__((__fallthrough__))
>       |                      ^~~~~~~~~~~~~
> "
> nor
> "
> include/linux/compiler_attributes.h:201:41: warning: attribute
> 'fallthrough' not preceding a case label or default label
>   201 | # define fallthrough __attribute__((__fallthrough__))
>       |                      ^~~~~~~~~~~~~
> "
> 
> It's not worth adding one more macro. Let's simply place the fallthrough
> in between the expansions.
> 
> Signed-off-by: He Zhe <zhe.he@windriver.com>

there is already another patch for the problem, which I've applied
to mips-fixes.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
