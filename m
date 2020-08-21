Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B26124D6F5
	for <lists+oprofile-list@lfdr.de>; Fri, 21 Aug 2020 16:07:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1k97hp-0005Qh-LT; Fri, 21 Aug 2020 14:07:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tsbogend@alpha.franken.de>) id 1k97ho-0005Qa-Dc
 for oprofile-list@lists.sourceforge.net; Fri, 21 Aug 2020 14:07:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xpKoa+cKTH4/KmvB1g8UYGRgWpYwztQzcxrQTfJsQ8s=; b=D2EDzoP3PViCjYcx/Yst8d/JR1
 +iBDSJvZBsg0yqfV1saeSUnJHWs18uGNdU/TonVUOmbrBqQxKFC/7bpwQfeau7FE75kvs7oE6FlNe
 FzJ81urtUsZbmHBWeo2ntG76UI5WBPE8BDzbz/R7h0Q6ZZNqs6K9tqcq7ReUteStQNDs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xpKoa+cKTH4/KmvB1g8UYGRgWpYwztQzcxrQTfJsQ8s=; b=R3Er5pd0cqBHPzidoKTr37nx1K
 aMEIwNkThSEny2GZ/f5Up36++z/vbE1wjVESm8NSEgeQcySdsW4TVzh8NNediM+0fYeFKTUQ7PlNp
 DLBpD2K+4GT8rKLyPLWZSYDfhKKZuY2I3Q3UwHg3NqskCE3pj7CcJNjA3st8r6hOZMno=;
Received: from elvis.franken.de ([193.175.24.41])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1k97hl-000Lxw-6x
 for oprofile-list@lists.sourceforge.net; Fri, 21 Aug 2020 14:07:44 +0000
Received: from uucp (helo=alpha)
 by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
 id 1k97hX-00029F-00; Fri, 21 Aug 2020 16:07:27 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
 id D6277C0D89; Fri, 21 Aug 2020 16:07:03 +0200 (CEST)
Date: Fri, 21 Aug 2020 16:07:03 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] mips/oprofile: Fix fallthrough placement
Message-ID: <20200821140703.GA13949@alpha.franken.de>
References: <20200820125440.350184-1-zhe.he@windriver.com>
 <20200821074821.GD8336@alpha.franken.de>
 <5e86b824-4c92-3cfe-fc36-493425e85f2a@windriver.com>
 <99d6dd20-8fe7-8b65-3ff0-839f19fe6b00@embeddedor.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <99d6dd20-8fe7-8b65-3ff0-839f19fe6b00@embeddedor.com>
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
X-Headers-End: 1k97hl-000Lxw-6x
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
Cc: He Zhe <zhe.he@windriver.com>, rric@kernel.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, oprofile-list@lists.sf.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Fri, Aug 21, 2020 at 04:23:28AM -0500, Gustavo A. R. Silva wrote:
> 
> 
> On 8/21/20 03:46, He Zhe wrote:
> > 
> > 
> > On 8/21/20 3:48 PM, Thomas Bogendoerfer wrote:
> >> On Thu, Aug 20, 2020 at 08:54:40PM +0800, zhe.he@windriver.com wrote:
> >>> From: He Zhe <zhe.he@windriver.com>
> >>>
> >>> We want neither
> >>> "
> >>> include/linux/compiler_attributes.h:201:41: warning: statement will never
> >>> be executed [-Wswitch-unreachable]
> >>>   201 | # define fallthrough __attribute__((__fallthrough__))
> >>>       |                      ^~~~~~~~~~~~~
> >>> "
> >>> nor
> >>> "
> >>> include/linux/compiler_attributes.h:201:41: warning: attribute
> >>> 'fallthrough' not preceding a case label or default label
> >>>   201 | # define fallthrough __attribute__((__fallthrough__))
> >>>       |                      ^~~~~~~~~~~~~
> >>> "
> >>>
> >>> It's not worth adding one more macro. Let's simply place the fallthrough
> >>> in between the expansions.
> >>>
> >>> Signed-off-by: He Zhe <zhe.he@windriver.com>
> >> there is already another patch for the problem, which I've applied
> >> to mips-fixes.
> > 
> > You mean the below one?
> > https://git.kernel.org/pub/scm/linux/kernel/git/mips/linux.git/commit/?h=mips-fixes&id=5900acb374fe2f4f42bbcb2c84db64f582d917a1
> > 
> > That patch handles the first warning in my commit log but does not handle the
> > second one which is introduced since gcc v10.1.0 commit 6c80b1b56dec
> > ("Make more bad uses of fallthrough attribute into pedwarns.").
> > 
> 
> This is true.
> 
> Thomas, please apply this patch instead of mine. Also, consider adding
> the Fixes tag and CC stable due to the non-executable code error, and
> my Reviewed-by:
> 
> Fixes: c9b029903466 ("MIPS: Use fallthrough for arch/mips")
> Cc: stable@vger.kernel.org
> Reviewed-by: Gustavo A. R. Silva <gustavoars@kernel.org>

done.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
