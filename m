Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0983331CC2B
	for <lists+oprofile-list@lfdr.de>; Tue, 16 Feb 2021 15:39:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1lC1Vx-0003zB-HN; Tue, 16 Feb 2021 14:39:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rric@kernel.org>) id 1lC1Vw-0003z4-TU
 for oprofile-list@lists.sourceforge.net; Tue, 16 Feb 2021 14:39:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gLJfImd607eIEKRDjMEKO3db5Qx0sx2AhyN6wd7r070=; b=lIyqnMOWN8gE1zqoKBQrjsJm29
 GMzyDHh3RPAjo37yQAgQZuYTxacBQ+HG6WI4dHQ1Uu3Xe+1LG3B55yv0TYiBILbkXlJdDe7ZQRNQt
 ZYsYd/PIaJkw89f+IXyc4uDrZQHGu/VWCRav7vb1gzR37Ci7qbMPkNBBfLo8fsGUTA90=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gLJfImd607eIEKRDjMEKO3db5Qx0sx2AhyN6wd7r070=; b=exHF4gVUMXVTYcv9RebkAYemoX
 /N1yH3Hi7+Gz4Uxjk5QIe2e2RsF3WKPKKTFFeqDBnMNkCzspmCFHNKztLo7kAdj568a2K3P4EkFFv
 YqZoJ5XYZDR15L+EUkVOciSB4S28b3nitBGlNXWNeYAbwghfqaQbmJ+KGNAD886b8NZE=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lC1Vp-00Axv1-Hr
 for oprofile-list@lists.sourceforge.net; Tue, 16 Feb 2021 14:39:44 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8041E64DFF;
 Tue, 16 Feb 2021 14:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1613486367;
 bh=UNowcMW0SCs9nkZpIMU1XGVDBOUfCP5cIFjY9xFBtkw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bnvg5U1s9dgRqFeGSd8Z+1uzt5GISNX+ggmHL43B7wAFuRrdMgDDNUUH06BSwQl+D
 NvLeq7gtGG4ooNe7FPohcL4QQJwNV3EaQJN5/Opi/kgI2IdiJKw9w/73+Q5dsS+Xdu
 6ns259AlSo7mcyDIEyt8a2u4hEZVRfV3/mLd5SYOlMg3HzUnlVgH47S6djl2G33ygX
 I1h48S1YK+EgTXBS+veJ6JvCqXsN7r/3r2758MEjO3hd/WlcdrBWElGBl3oFGtU6p0
 RtLxKPS9Bh6SgLauEWeOBgrshGmx2tWNqYnHu/MHe8QdTbQLo3e6Km8t44H6G0GA0X
 R7BVQIxBZcPkA==
Date: Tue, 16 Feb 2021 15:39:22 +0100
From: Robert Richter <rric@kernel.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 02/29] alpha: Avoid comma separated statements
Message-ID: <YCvZGuKvtPi6ktNV@rric.localdomain>
References: <cover.1598331148.git.joe@perches.com>
 <4facd57f80c70437f085ba3a1bcf13ae0b63c3bc.1598331148.git.joe@perches.com>
 <52f038d9ff547deee4e5b5628507e61ec8d056b7.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52f038d9ff547deee4e5b5628507e61ec8d056b7.camel@perches.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lC1Vp-00Axv1-Hr
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
Cc: Jiri Kosina <trivial@kernel.org>, linux-kernel@vger.kernel.org,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>, linux-alpha@vger.kernel.org,
 oprofile-list@lists.sf.net, Matt Turner <mattst88@gmail.com>,
 Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On 30.01.21 10:54:42, Joe Perches wrote:
> On Mon, 2020-08-24 at 21:55 -0700, Joe Perches wrote:
> > Use semicolons and braces.
> =

> ping?
> =

> > =

> > Signed-off-by: Joe Perches <joe@perches.com>
> > ---
> > =A0arch/alpha/kernel/pci_iommu.c      |  8 +++++---
> > =A0arch/alpha/oprofile/op_model_ev4.c | 22 ++++++++++++++--------
> > =A0arch/alpha/oprofile/op_model_ev5.c |  8 +++++---

This patch should be rebased as oprofile is going to be removed in
5.12. A branch is in linux-next.

-Robert

> > =A03 files changed, 24 insertions(+), 14 deletions(-)


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
