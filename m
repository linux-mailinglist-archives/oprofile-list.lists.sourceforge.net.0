Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A74231CCA9
	for <lists+oprofile-list@lfdr.de>; Tue, 16 Feb 2021 16:10:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1lC1zp-0001PC-Ld; Tue, 16 Feb 2021 15:10:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joe@perches.com>) id 1lC1zn-0001Op-Pn
 for oprofile-list@lists.sourceforge.net; Tue, 16 Feb 2021 15:10:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UKA6Or7YS7Uljvog60XrITJifIC/hfcPN4xXobdj3c4=; b=Jlxb09r56WeLY5ouj53dAbpU0l
 GxvSt7RNPF/ztxsMzL7w1gw8KpqqE2H67zOSd3yEp8ksrFFkT5z1ZO/Gk3lJxD0tDFfPYWMHAyCXf
 vPABJqJrK0tDsfo6UbdtT8G+PMyE9zSNu+EDILr6cJD8CDC9Qh4x6s4RjtL6utXaS73w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UKA6Or7YS7Uljvog60XrITJifIC/hfcPN4xXobdj3c4=; b=ixEwkVlFfnWsAPUYa4NanqQTee
 XezE65VIH0wj4o7rR4FZ1qQcWBCY6ngV7OPQH/Ei5rTGB3muxUP42EIFk7A29oe5k7wSGoMeXnVgc
 hRU72CqBcVNNL/jtmYUpVX92TOXKZXQWAhBQRNnpf92mDX83nZ7UgwVYH1Z39MlQzhdE=;
Received: from smtprelay0088.hostedemail.com ([216.40.44.88]
 helo=smtprelay.hostedemail.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lC1zj-00AzWo-56
 for oprofile-list@lists.sourceforge.net; Tue, 16 Feb 2021 15:10:35 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id 2F45D18025887;
 Tue, 16 Feb 2021 15:10:25 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:968:973:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3351:3622:3867:3868:3870:3871:4321:4605:5007:7652:8604:9393:10004:10400:10848:11026:11232:11473:11658:11914:12043:12297:12740:12895:13069:13311:13357:13439:13894:14181:14659:14721:21080:21611:21627:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: music54_260346527644
X-Filterd-Recvd-Size: 1747
Received: from [192.168.1.159] (unknown [47.151.137.21])
 (Authenticated sender: joe@perches.com)
 by omf18.hostedemail.com (Postfix) with ESMTPA;
 Tue, 16 Feb 2021 15:10:23 +0000 (UTC)
Message-ID: <bff39ad847650483ba2a14ccc1c0d8032bdfa3df.camel@perches.com>
Subject: Re: [PATCH 02/29] alpha: Avoid comma separated statements
From: Joe Perches <joe@perches.com>
To: Robert Richter <rric@kernel.org>
Date: Tue, 16 Feb 2021 07:10:22 -0800
In-Reply-To: <YCvZGuKvtPi6ktNV@rric.localdomain>
References: <cover.1598331148.git.joe@perches.com>
 <4facd57f80c70437f085ba3a1bcf13ae0b63c3bc.1598331148.git.joe@perches.com>
 <52f038d9ff547deee4e5b5628507e61ec8d056b7.camel@perches.com>
 <YCvZGuKvtPi6ktNV@rric.localdomain>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.40.44.88 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.88 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lC1zj-00AzWo-56
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

On Tue, 2021-02-16 at 15:39 +0100, Robert Richter wrote:
> On 30.01.21 10:54:42, Joe Perches wrote:
> > On Mon, 2020-08-24 at 21:55 -0700, Joe Perches wrote:
> > > Use semicolons and braces.
> > =

> > ping?
> > =

> > > =

> > > Signed-off-by: Joe Perches <joe@perches.com>
> > > ---
> > > =A0arch/alpha/kernel/pci_iommu.c      |  8 +++++---
> > > =A0arch/alpha/oprofile/op_model_ev4.c | 22 ++++++++++++++--------
> > > =A0arch/alpha/oprofile/op_model_ev5.c |  8 +++++---
> =

> This patch should be rebased as oprofile is going to be removed in
> 5.12. A branch is in linux-next.

git am --include=3Darch/alpha/kernel/pci_iommu.c



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
