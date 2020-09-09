Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5CA26308D
	for <lists+oprofile-list@lfdr.de>; Wed,  9 Sep 2020 17:29:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1kG22k-0001z8-JP; Wed, 09 Sep 2020 15:29:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <michael@ozlabs.org>) id 1kG0iO-0000BZ-S2
 for oprofile-list@lists.sourceforge.net; Wed, 09 Sep 2020 14:04:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Message-Id:Subject:References:In-Reply-To:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WBWghZIbjsHTdOUIg3B3oDFu/Xk2P3rdxRBVe1Lji50=; b=QhOKKHYGk5KoTJdQ4eigaok/Bl
 MMXJ3qnXYkYAc+NOW/44ItaX2bGsUwVrG/0B7Kz6mqLfwyvvSMkbF/k6MHSjaogX89MOoydHQuZTF
 6sKaW3sSMVoia3XnyBVLemY+dtxW3XhROwScxCVgUOeA8kTY8BRNmhmpmsOYspB0aq7U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WBWghZIbjsHTdOUIg3B3oDFu/Xk2P3rdxRBVe1Lji50=; b=V6NA7k8oZR5iiwPsL/p+xlRHmh
 Er4y+EWHTRnN/SnxVeHi6ukTjub8bZdrmZxITNC6LpHxEmUMk0FYPYtSHThYl/UgFMDP2xKSFc8AG
 5cHEAC28Fpp/1fiHyIPgCjQ2euAoZa5PBZrl8cq8ZWvRVGluib5WtygLAaytuizuSiNA=;
Received: from ozlabs.org ([203.11.71.1])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kG0iI-000e3h-IG
 for oprofile-list@lists.sourceforge.net; Wed, 09 Sep 2020 14:04:48 +0000
Received: by ozlabs.org (Postfix, from userid 1034)
 id 4BmjkQ2FV7z9sVM; Wed,  9 Sep 2020 23:37:34 +1000 (AEST)
From: Michael Ellerman <patch-notifications@ellerman.id.au>
To: oprofile-list@lists.sf.net, Michael Ellerman <mpe@ellerman.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
 Colin King <colin.king@canonical.com>, Robert Richter <rric@kernel.org>
In-Reply-To: <20200804174316.402425-1-colin.king@canonical.com>
References: <20200804174316.402425-1-colin.king@canonical.com>
Subject: Re: [PATCH] powerpc/oprofile: fix spelling mistake "contex" ->
 "context"
Message-Id: <159965824316.811679.2643424244803475085.b4-ty@ellerman.id.au>
Date: Wed,  9 Sep 2020 23:37:34 +1000 (AEST)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1kG0iI-000e3h-IG
X-Mailman-Approved-At: Wed, 09 Sep 2020 15:29:52 +0000
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Tue, 4 Aug 2020 18:43:16 +0100, Colin King wrote:
> There is a spelling mistake in a pr_debug message. Fix it.

Applied to powerpc/next.

[1/1] powerpc/oprofile: fix spelling mistake "contex" -> "context"
      https://git.kernel.org/powerpc/c/346427e668163e85cbbe14e4d9a2ddd49df1536c

cheers


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
