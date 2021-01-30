Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6903E3097D8
	for <lists+oprofile-list@lfdr.de>; Sat, 30 Jan 2021 20:13:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l5vgH-0006Rs-60; Sat, 30 Jan 2021 19:13:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joe@perches.com>) id 1l5vgG-0006Rl-5G
 for oprofile-list@lists.sourceforge.net; Sat, 30 Jan 2021 19:13:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NLj+Z0FUcqmXRYDwlbPiyXpdtRL8x02bLOhtKqLeaq4=; b=PaSir+fw1OWfQzhI81v1TeszOQ
 LDWTAeIQG79NwEDGw29JGB1mxFssxhAIwYB8Os5QhhdY/RXWdFrnIbArS+iXTSghUw+QHABxn4Fwg
 D1Ns4KJfe6Js2cAPyZEZ8zxOxWaFv9DiQpSYR+2bee0M8A8RPZcKW/EU7uIQOrvVLNT0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NLj+Z0FUcqmXRYDwlbPiyXpdtRL8x02bLOhtKqLeaq4=; b=F2jU6tsVBKOk7VgG5CvMSaq6NP
 jU3t0URvzSX9XfdRBCWynErzHiCr3DxbTZzbECu7JA6JoxhcpOBoG+jGNHIA1NhsTayUG36PUujvW
 obh85JEzewt2X9FsOY7cvH7DGaV50GH2+ssXxs/YABu6WyRUzxLR5orOnK5ZhqLtttCo=;
Received: from smtprelay0231.hostedemail.com ([216.40.44.231]
 helo=smtprelay.hostedemail.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l5vg8-005SHz-QB
 for oprofile-list@lists.sourceforge.net; Sat, 30 Jan 2021 19:13:12 +0000
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave01.hostedemail.com (Postfix) with ESMTP id D679A18017072
 for <oprofile-list@lists.sf.net>; Sat, 30 Jan 2021 18:54:50 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id D06351800AEC5;
 Sat, 30 Jan 2021 18:54:44 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:2898:3138:3139:3140:3141:3142:3355:3622:3865:3866:3868:3872:4321:4605:5007:6119:7652:10004:10400:10848:11026:11232:11658:11914:12043:12297:12438:12555:12740:12895:12986:13439:13870:13894:13972:14181:14659:14721:21080:21627:30054:30070:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: match33_441563d275b3
X-Filterd-Recvd-Size: 3597
Received: from [192.168.1.159] (unknown [47.151.137.21])
 (Authenticated sender: joe@perches.com)
 by omf16.hostedemail.com (Postfix) with ESMTPA;
 Sat, 30 Jan 2021 18:54:43 +0000 (UTC)
Message-ID: <52f038d9ff547deee4e5b5628507e61ec8d056b7.camel@perches.com>
Subject: Re: [PATCH 02/29] alpha: Avoid comma separated statements
From: Joe Perches <joe@perches.com>
To: Jiri Kosina <trivial@kernel.org>, Robert Richter <rric@kernel.org>
Date: Sat, 30 Jan 2021 10:54:42 -0800
In-Reply-To: <4facd57f80c70437f085ba3a1bcf13ae0b63c3bc.1598331148.git.joe@perches.com>
References: <cover.1598331148.git.joe@perches.com>
 <4facd57f80c70437f085ba3a1bcf13ae0b63c3bc.1598331148.git.joe@perches.com>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: perches.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.231 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.40.44.231 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1l5vg8-005SHz-QB
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
Cc: linux-kernel@vger.kernel.org, oprofile-list@lists.sf.net,
 linux-alpha@vger.kernel.org, Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Matt Turner <mattst88@gmail.com>, Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Mon, 2020-08-24 at 21:55 -0700, Joe Perches wrote:
> Use semicolons and braces.

ping?

> =

> Signed-off-by: Joe Perches <joe@perches.com>
> ---
> =A0arch/alpha/kernel/pci_iommu.c      |  8 +++++---
> =A0arch/alpha/oprofile/op_model_ev4.c | 22 ++++++++++++++--------
> =A0arch/alpha/oprofile/op_model_ev5.c |  8 +++++---
> =A03 files changed, 24 insertions(+), 14 deletions(-)
> =

> diff --git a/arch/alpha/kernel/pci_iommu.c b/arch/alpha/kernel/pci_iommu.c
> index 81037907268d..b8af7ad6c607 100644
> --- a/arch/alpha/kernel/pci_iommu.c
> +++ b/arch/alpha/kernel/pci_iommu.c
> @@ -161,10 +161,12 @@ iommu_arena_find_pages(struct device *dev, struct p=
ci_iommu_arena *arena,
> =A0			goto again;
> =A0		}
> =A0
> =

> -		if (ptes[p+i])
> -			p =3D ALIGN(p + i + 1, mask + 1), i =3D 0;
> -		else
> +		if (ptes[p+i]) {
> +			p =3D ALIGN(p + i + 1, mask + 1);
> +			i =3D 0;
> +		} else {
> =A0			i =3D i + 1;
> +		}
> =A0	}
> =A0
> =

> =A0	if (i < n) {
> diff --git a/arch/alpha/oprofile/op_model_ev4.c b/arch/alpha/oprofile/op_=
model_ev4.c
> index 086a0d5445c5..004f80a4291f 100644
> --- a/arch/alpha/oprofile/op_model_ev4.c
> +++ b/arch/alpha/oprofile/op_model_ev4.c
> @@ -46,18 +46,24 @@ ev4_reg_setup(struct op_register_config *reg,
> =A0	   map it onto one of the possible values, and write it back.  */
> =A0
> =

> =A0	count =3D ctr[0].count;
> -	if (count <=3D 4096)
> -		count =3D 4096, hilo =3D 1;
> -	else
> -		count =3D 65536, hilo =3D 0;
> +	if (count <=3D 4096) {
> +		count =3D 4096;
> +		hilo =3D 1;
> +	} else {
> +		count =3D 65536;
> +		hilo =3D 0;
> +	}
> =A0	ctr[0].count =3D count;
> =A0	ctl |=3D (ctr[0].enabled && hilo) << 3;
> =A0
> =

> =A0	count =3D ctr[1].count;
> -	if (count <=3D 256)
> -		count =3D 256, hilo =3D 1;
> -	else
> -		count =3D 4096, hilo =3D 0;
> +	if (count <=3D 256) {
> +		count =3D 256;
> +		hilo =3D 1;
> +	} else {
> +		count =3D 4096;
> +		hilo =3D 0;
> +	}
> =A0	ctr[1].count =3D count;
> =A0	ctl |=3D (ctr[1].enabled && hilo);
> =A0
> =

> diff --git a/arch/alpha/oprofile/op_model_ev5.c b/arch/alpha/oprofile/op_=
model_ev5.c
> index c300f5ef3482..6f52244e1181 100644
> --- a/arch/alpha/oprofile/op_model_ev5.c
> +++ b/arch/alpha/oprofile/op_model_ev5.c
> @@ -92,9 +92,11 @@ common_reg_setup(struct op_register_config *reg,
> =A0		if (!ctr[i].enabled)
> =A0			continue;
> =A0
> =

> -		if (count <=3D 256)
> -			count =3D 256, hilo =3D 3, max =3D 256;
> -		else {
> +		if (count <=3D 256) {
> +			max =3D 256;
> +			hilo =3D 3;
> +			count =3D 256;
> +		} else {
> =A0			max =3D (i =3D=3D 2 ? 16384 : 65536);
> =A0			hilo =3D 2;
> =A0			if (count > max)




_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
