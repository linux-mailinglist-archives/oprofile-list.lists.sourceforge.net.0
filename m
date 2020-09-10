Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA031265011
	for <lists+oprofile-list@lfdr.de>; Thu, 10 Sep 2020 22:01:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1kGSkf-0003IM-TY; Thu, 10 Sep 2020 20:01:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wcohen@nc.rr.com>) id 1kGSkc-0003HV-RP
 for oprofile-list@lists.sourceforge.net; Thu, 10 Sep 2020 20:00:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LsOcymY5iWzTBmjqW24kKbrS73LuOnelBf/UJmL2DcI=; b=OTKQUqhz4BnRkxrF4CQpCdBt2f
 dErFKTiWKtGCi0czizGxRmiIFypNRna9sK9n03xz/x5qLNTKU7wUuNLn/iraBRfHNscWG8QgzLYvC
 ANP2b6OfpdIrnjGkYEVDt3awDqsmXMhiwnCGOMlHhAD4z63GftBsESGOa1qTGjWV1ndc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LsOcymY5iWzTBmjqW24kKbrS73LuOnelBf/UJmL2DcI=; b=AE53Mm9MuYbs8/ls0NeDO1qUaV
 RRIuPp/cqciE9xzJRUFwKZEhms73PXx7kCknR9JEoJFKNBExXINso/w7lYgaBAyys0ZH8pOa//YKb
 En+lcRqTm8LSsKQBhccK+5Uitn2UwKiqAQuramWeNuGzRJQOzxJ1BmJU7zviVxRli/hI=;
Received: from p-impout008aa.msg.pkvw.co.charter.net ([47.43.26.139]
 helo=p-impout008.msg.pkvw.co.charter.net)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kGSkU-002gkr-Ub
 for oprofile-list@lists.sourceforge.net; Thu, 10 Sep 2020 20:00:58 +0000
Received: from [192.168.1.181] ([75.177.72.232]) by cmsmtp with ESMTPA
 id GSk9kn0UzJzKVGSkHkvCKk; Thu, 10 Sep 2020 20:00:37 +0000
X-Authority-Analysis: v=2.3 cv=Q+SsHL+a c=1 sm=1 tr=0
 a=RVccd0NgewfEsRDWlRvjnw==:117 a=RVccd0NgewfEsRDWlRvjnw==:17
 a=N659UExz7-8A:10 a=pGLkceISAAAA:8 a=FP58Ms26AAAA:8 a=-ewMTHbJapNWhPrA6mQA:9
 a=pILNOxqGKmIA:10
Subject: Re: [PATCH] Fix configure when /bin/sh is not bash
To: Andrew Savchenko <bircoph@gmail.com>, oprofile-list@lists.sourceforge.net
References: <20200905144007.faaa02d41971a6f271f4aa6f@gmail.com>
From: William Cohen <wcohen@nc.rr.com>
Message-ID: <72cf4661-c878-1988-f8dc-13290e965f14@nc.rr.com>
Date: Thu, 10 Sep 2020 16:00:29 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200905144007.faaa02d41971a6f271f4aa6f@gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfG5FmLh4Bs2cnHo7bjEbaKwZGLXzqCoepO2rFV747z7fXJxBCOVuwFk7ND9X4wYGfI5WfJ8c/aXItcT74IXYn1NC3VuMocJER2NjkgaSdmMkiveh7kJa
 1fRwIgsT/CoyWNMulRDMKsrsEQgQaxJNHKVZP1tDvNqHe7uwp0fJ6+70UHQuFUdApKuSc63pbDyr+pLjzC3EFExbeRT/JCRUIR5Aow9BXoIgyjRpXepno4kY
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: configure.ac]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -3.6 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kGSkU-002gkr-Ub
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

On 9/5/20 7:40 AM, Andrew Savchenko wrote:
> When /bin/sh used by autoconf is not bash, e.g. dash, configure
> fails because it uses bash-specific equality operator "==".
>
> Fix this problem by replacing "==" with POSIX "=" which is
> sufficient for test where it is being used.
>
> Signed-off-by: Andrew Savchenko <bircoph@gmail.com>
> ---
>  configure.ac | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/configure.ac b/configure.ac
> index 05609f6e..f5fcd17d 100644
> --- a/configure.ac
> +++ b/configure.ac
> @@ -466,8 +466,8 @@ AX_COPY_IF_CHANGE(doc/xsl/catalog-1.xml, doc/xsl/catalog.xml)
>
>  if ! test "x$enable_account_check" = "xyes"; then
>     :
> -elif test "`getent passwd oprofile 2>/dev/null`" == "" || \
> -     test "`getent group oprofile 2>/dev/null`" == ""; then
> +elif test "`getent passwd oprofile 2>/dev/null`" = "" || \
> +     test "`getent group oprofile 2>/dev/null`" = ""; then
>     if test `id -u` != "0"; then
>         echo "Warning: The user account 'oprofile:oprofile' does not exist on the system."
>         echo "         To profile JITed code, this special user account must exist."
> --
> 2.24.0
>
> Best regards,
> Andrew Savchenko


Thanks for the patch. It has been put into the oprofile master branch. -Will

>
>
> _______________________________________________
> oprofile-list mailing list
> oprofile-list@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/oprofile-list




_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
