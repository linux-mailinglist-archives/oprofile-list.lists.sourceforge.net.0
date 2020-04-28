Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 86FBC1BC0DE
	for <lists+oprofile-list@lfdr.de>; Tue, 28 Apr 2020 16:13:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jTQz3-00037h-EE; Tue, 28 Apr 2020 14:13:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tsbogend@alpha.franken.de>) id 1jTPTX-00065Q-K8
 for oprofile-list@lists.sourceforge.net; Tue, 28 Apr 2020 12:36:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TMHYcUeh+UR08npDK7THP6vD1pztg8j2+R5pDO19+lE=; b=JcYfGvl0tQyZW+xxfQUw/gALz9
 Y43y7uggxbjgIazP6oEpx4hKC/iv0pfhx+uydzBYol8cqm0ZB57mgopdV6EwdvJWSK9sMdjnkGwbq
 zKkMo5mkPlX//6esNaHngr2EQqEMKmPhzspD0T5u92NmAbSrUrvedX99WMieYInhB0pM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TMHYcUeh+UR08npDK7THP6vD1pztg8j2+R5pDO19+lE=; b=N3vtUqI1KMuaj7MGxP661YhrHZ
 BDLFk1+Xt21GdT4vxTbeZ+LVx22kJshK4kDZ4DAJU73+9RlpjXptROzaBJbYzUMirsnjz2xpP6FQ2
 8USfjbldf/lZO6RA/fdDgKFHT8eUehQtaTG6ZAVe3jUGEc6xDu2J2bitwwm4apLLx4MY=;
Received: from elvis.franken.de ([193.175.24.41])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jTPTU-000bLA-Vh
 for oprofile-list@lists.sourceforge.net; Tue, 28 Apr 2020 12:36:35 +0000
Received: from uucp (helo=alpha)
 by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
 id 1jTOV6-0004MF-00; Tue, 28 Apr 2020 13:34:08 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
 id 56D94C0334; Tue, 28 Apr 2020 13:16:38 +0200 (CEST)
Date: Tue, 28 Apr 2020 13:16:38 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Jason Yan <yanaijie@huawei.com>
Subject: Re: [PATCH] MIPS: oprofile: remove unneeded semicolon in common.c
Message-ID: <20200428111638.GA11443@alpha.franken.de>
References: <20200428063254.33337-1-yanaijie@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428063254.33337-1-yanaijie@huawei.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1jTPTU-000bLA-Vh
X-Mailman-Approved-At: Tue, 28 Apr 2020 14:13:12 +0000
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

On Tue, Apr 28, 2020 at 02:32:54PM +0800, Jason Yan wrote:
> Fix the following coccicheck warning:
> 
> arch/mips/oprofile/common.c:113:2-3: Unneeded semicolon
> 
> Signed-off-by: Jason Yan <yanaijie@huawei.com>
> ---
>  arch/mips/oprofile/common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

applied to mips-next.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
