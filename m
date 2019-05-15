Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 260401F587
	for <lists+oprofile-list@lfdr.de>; Wed, 15 May 2019 15:23:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1hQtsl-0008Sv-Ov; Wed, 15 May 2019 13:23:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wcohen@redhat.com>) id 1hQtsk-0008Sl-Nc
 for oprofile-list@lists.sourceforge.net; Wed, 15 May 2019 13:23:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=escujH1QIsJ5HBfv79ylY1OZTEZklk0E9X11vqChBJo=; b=TxN1Ln6gn9tGWHYQExe5Xvf9Ku
 LJitvvOt3iiqFgxVX5oX1qv6FhRHZuKgj7aKv+0wbF+mvJQpKJyjP++WVdGMI4xyIZpa4+m1ZRTGW
 rGxy5ho8D4LKQvlrXtRihtVUcPTrMPsFhiPfN1TH8DvWiZeKwP8ka1yOH259mnqYpNjI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=escujH1QIsJ5HBfv79ylY1OZTEZklk0E9X11vqChBJo=; b=Ub9+QUi02OqqESiKq2R36H+stz
 PG+XeVTO8VA2KxOmxgrHJ/uG0o8sua0rs/OfPn8Vzocb+FqOOce0d/ZKWCBz7/cZnDe6Au52el+On
 j0fhr1l5A4iG+7pNBm5U0XRwxtTZZi8ugFJrr8S60ze9+mYGJD1YJ5+42HrDMlHww0eU=;
Received: from mx1.redhat.com ([209.132.183.28])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hQtsi-00HEow-Op
 for oprofile-list@lists.sourceforge.net; Wed, 15 May 2019 13:23:42 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 47E063001C62;
 Wed, 15 May 2019 13:23:35 +0000 (UTC)
Received: from [10.13.129.212] (dhcp129-212.rdu.redhat.com [10.13.129.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 170E01001E61;
 Wed, 15 May 2019 13:23:35 +0000 (UTC)
Subject: Re: [PATCH] Oprofile-tests Hygon Dhyana CPU support
To: Jinke Fan <fanjinke51@yeah.net>,
 oprofile-list <oprofile-list@lists.sourceforge.net>
References: <20190515014823.18842-1-fanjinke51@yeah.net>
From: William Cohen <wcohen@redhat.com>
Message-ID: <20e06520-d073-4365-9595-bc87a00e5efa@redhat.com>
Date: Wed, 15 May 2019 09:23:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190515014823.18842-1-fanjinke51@yeah.net>
Content-Language: en-MW
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Wed, 15 May 2019 13:23:35 +0000 (UTC)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: yeah.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1hQtsi-00HEow-Op
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On 5/14/19 9:48 PM, Jinke Fan wrote:
> From: fanjinke <fanjinke51@yeah.net>
> 
> Hi,
> 
> Add support for which AMD family id bigger than 15h to
> oprofile-tests.
> 
> Related links:
> https://sourceforge.net/p/oprofile/oprofile/ci/c4c981a6fcb978b271d2b7ce2dea7abf56efe808/
> 
> Signed-off-by: fanjinke <fanjinke51@yeah.net>
> ---
>  testsuite/lib/op_events.exp | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/testsuite/lib/op_events.exp b/testsuite/lib/op_events.exp
> index 9ddfda7..a5a4e43 100644
> --- a/testsuite/lib/op_events.exp
> +++ b/testsuite/lib/op_events.exp
> @@ -854,6 +854,7 @@ proc select_cpu_events {cpu_name} {
>  	ppc64_POWER9 {set type power9}
>  	i386/knightslanding {set type knightslanding}
>  	Intel_Knights_Landing {set type knightslanding}
> +	AMD64_generic {set type amd_generic}
>  
>      }
>  
> 

Hi,

Thanks for the revised patch.  It has been committed to the upstream oprofile-test git repository. -Will


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
