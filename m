Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5AC265013
	for <lists+oprofile-list@lfdr.de>; Thu, 10 Sep 2020 22:01:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1kGSlU-0003Pb-1K; Thu, 10 Sep 2020 20:01:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wcohen@nc.rr.com>) id 1kGSlS-0003PJ-Jp
 for oprofile-list@lists.sourceforge.net; Thu, 10 Sep 2020 20:01:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8K60cFFRD9IVA88zO8yVWu0qdqnK3li8FezqRDEAQms=; b=gwXmWGlQH2APWXio0UATeT114N
 OY3nxX2MbwjANzlYvGSsiwTNEb9KBtlk+26qP88lJ3SdHPqd+ADL8O9WbTeYzvd2L6FyYpFygXacO
 aUZaoR4NML7OR7p8qXIkif6STPgelIrhyYRx3TWAbNaMmB7h5a1Xdf5RQlXwchBtitS8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8K60cFFRD9IVA88zO8yVWu0qdqnK3li8FezqRDEAQms=; b=ZZLarkx9VpSLQQADRrvmwTV8ll
 XI9Rrfe7TZQlpNNWJeuvASIQb3BxtaKrck8TkyEETGxKQapZPjJ4K3Ftk9djr4gJEvTBw8lmFEsGa
 a6Hx4p1F8F0vERFsGpsRT1hRV1S2lkRQ+bDN78ZdFnEHnqAEQ6raL0wt7H3sOing2CSE=;
Received: from p-impout007aa.msg.pkvw.co.charter.net ([47.43.26.138]
 helo=p-impout007.msg.pkvw.co.charter.net)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kGSlN-002goM-FA
 for oprofile-list@lists.sourceforge.net; Thu, 10 Sep 2020 20:01:50 +0000
Received: from [192.168.1.181] ([75.177.72.232]) by cmsmtp with ESMTPA
 id GSl9kMBzUqjkdGSl9kNOtS; Thu, 10 Sep 2020 20:01:31 +0000
X-Authority-Analysis: v=2.3 cv=SZ2JicZu c=1 sm=1 tr=0
 a=RVccd0NgewfEsRDWlRvjnw==:117 a=RVccd0NgewfEsRDWlRvjnw==:17
 a=N659UExz7-8A:10 a=pGLkceISAAAA:8 a=FP58Ms26AAAA:8 a=WDDlptwf-FbFyp2mCTkA:9
 a=pILNOxqGKmIA:10
Subject: Re: Fix build with musl
To: Andrew Savchenko <bircoph@gmail.com>, oprofile-list@lists.sourceforge.net
References: <20200905144130.ee360e0bdade714384051fd4@gmail.com>
From: William Cohen <wcohen@nc.rr.com>
Message-ID: <958d30aa-c781-8662-b77d-b84e34addfc7@nc.rr.com>
Date: Thu, 10 Sep 2020 16:01:31 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200905144130.ee360e0bdade714384051fd4@gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfDt8ZT6wegktCuwFk++icfPzW1S45A7eROSNTNF5jJYaD+UUmGBrZxITRB6IEphM7e71ADeiTDzNNHKOgl5/PmNVq515SnkBVfui4gUpIQbn4Fux4j5o
 +jNu/guM4fPfmR7pbPKaqBZwy+VvBrP2ZarP9qaYgXLYtGspwf6IMYdaIH+NuB1qVRMd8nRiucdkUIDiUnf5+Zrcra0Z1SvpMfJ/azN/J83+jrUbDJ4Wlr3t
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -3.6 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kGSlN-002goM-FA
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

On 9/5/20 7:41 AM, Andrew Savchenko wrote:

Thanks for the patch it has been put into the upstream oprofile git repository. -Will

> When musl is used instead of glibc, oprofile build fails because it
> uses glibc-specific FTW extension: FTW_ACTIONRETVAL for custom
> __delete_old_previous_sample_data return codes and FTW_STOP,
> FTW_CONTINUE for such return codes. Musl supports only POSIX ftw, so
> build fails.
>
> However, this extension is not really needed by oprofile, because
> FTW_SKIP_* are not used and {FTW_STOP,FTW_CONTINUE} can be handled
> by standard return codes {1,0} (more precisely standard defines
> {!0,0}, but in glibc FTW_STOP = 1, so I keep this value).
>
> Signed-off-by: Andrew Savchenko <bircoph@gmail.com>
> ---
>  pe_profiling/operf.cpp | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/pe_profiling/operf.cpp b/pe_profiling/operf.cpp
> index 06a0ea3c..1b882b7c 100644
> --- a/pe_profiling/operf.cpp
> +++ b/pe_profiling/operf.cpp
> @@ -860,9 +860,9 @@ static int __delete_old_previous_sample_data(const char *fpath,
>  {
>     if (remove(fpath)) {
>         perror("sample data removal error");
> -       return FTW_STOP;
> +       return 1;
>     } else {
> -       return FTW_CONTINUE;
> +       return 0;
>     }
>  }
>
> @@ -897,7 +897,7 @@ static void convert_sample_data(void)
>         return;
>
>     if (!operf_options::append) {
> -                int flags = FTW_DEPTH | FTW_ACTIONRETVAL;
> +                int flags = FTW_DEPTH;
>         errno = 0;
>         if (nftw(previous_sampledir.c_str(), __delete_old_previous_sample_data, 32, flags) !=0 &&
>                 errno != ENOENT) {
> --
> 2.24.0
>
> Best regards,
> Andrew Savchenko
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
