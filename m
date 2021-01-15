Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0302F802F
	for <lists+oprofile-list@lfdr.de>; Fri, 15 Jan 2021 17:00:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l0RWw-00009b-Ia; Fri, 15 Jan 2021 16:00:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wcohen@redhat.com>) id 1l0RWp-00009C-Fy
 for oprofile-list@lists.sourceforge.net; Fri, 15 Jan 2021 16:00:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HUKZWLTTSl2Yn8XOp/LDxkSHznbyRPG2DpGK5co76Kk=; b=DoEukHe/Y2BqWBVPemnbczWTrA
 sR+HQbjEmWQCzd65feH5qfWfD+0jXm48Wo3qY4m9sC75R7GgbN4F+Dmi8IsHiO3hOeIB+8CiBlvDj
 vXXFjdpEfr4yd54vhJkv4d0M5WSbN+QqeCWWWoRElHIFOjqJz8bxQp4Ec9ybCpc6QCu4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HUKZWLTTSl2Yn8XOp/LDxkSHznbyRPG2DpGK5co76Kk=; b=ZP+eLWvglczRRNcTLUA40nnN30
 zNXD6sidwMeWOmkeGsWj6+439Id6Kxn5QTwlyHjLU1Rjn4MgSsIeD5PNQ5H9I5MqdnuP0LKWgVSqg
 GQ9irMaSpI05XL8dkLXKnUW3Ls0pSUa8zKIdKUOLA+ClTKFKt4lEwZ9PuSqW3Hu4wV2I=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1l0RWj-00G8GD-Ig
 for oprofile-list@lists.sourceforge.net; Fri, 15 Jan 2021 16:00:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1610726428;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HUKZWLTTSl2Yn8XOp/LDxkSHznbyRPG2DpGK5co76Kk=;
 b=Q9H6GD1VmfKN3bgYJd/EY9tN6Zcbh+xpWdW/QE5yz1a2i3TREOtVMr52tQI9DcLkzTIyB+
 ltRPW7wh9q3SLR7VS9Zem+WJsesRfjR9R8R4nCie2VKhG4KEDPBhFeFTMapw7/7bwF3bWm
 XowQHHh11BONZHMD9FujN/7B8YwhUbQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-217-ImxyA3izMi6-MMh599JmYA-1; Fri, 15 Jan 2021 10:44:31 -0500
X-MC-Unique: ImxyA3izMi6-MMh599JmYA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D06498144E1;
 Fri, 15 Jan 2021 15:44:29 +0000 (UTC)
Received: from [10.10.114.127] (ovpn-114-127.rdu2.redhat.com [10.10.114.127])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B3CA65D756;
 Fri, 15 Jan 2021 15:44:28 +0000 (UTC)
Subject: Re: [PATCH 00/18] drivers: Remove oprofile and dcookies
To: Robert Richter <rric@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Viresh Kumar <viresh.kumar@linaro.org>
References: <cover.1610622251.git.viresh.kumar@linaro.org>
 <YAC8sf6v8+QAXHD3@rric.localdomain>
From: William Cohen <wcohen@redhat.com>
Message-ID: <927ed742-914c-bbc2-d397-dabaaa6643e7@redhat.com>
Date: Fri, 15 Jan 2021 10:44:28 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <YAC8sf6v8+QAXHD3@rric.localdomain>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lwn.net]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l0RWj-00G8GD-Ig
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
Cc: Arnd Bergmann <arnd@kernel.org>,
 Vincent Guittot <vincent.guittot@linaro.org>, linux-kernel@vger.kernel.org,
 anmar.oueja@linaro.org, oprofile-list@lists.sf.net,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On 1/14/21 4:50 PM, Robert Richter wrote:
> On 14.01.21 17:04:24, Viresh Kumar wrote:
>> Hello,
>>
>> The "oprofile" user-space tools don't use the kernel OPROFILE support
>> any more, and haven't in a long time. User-space has been converted to
>> the perf interfaces.
>>
>> Remove oprofile and dcookies (whose only user is oprofile) support from
>> the kernel.
>>
>> This was suggested here [1] earlier.
>>
>> This is build/boot tested by kernel test robot (Intel) and Linaro's
>> Tuxmake[2] for a lot of architectures and no failures were reported.
>>
>> --
>> Viresh
>>
>> [1] https://lore.kernel.org/lkml/CAHk-=whw9t3ZtV8iA2SJWYQS1VOJuS14P_qhj3v5-9PCBmGQww@mail.gmail.com/
>> [2] https://lwn.net/Articles/841624/
>>
>> Viresh Kumar (18):
>>   arch: alpha: Remove CONFIG_OPROFILE support
>>   arch: arm: Remove CONFIG_OPROFILE support
>>   arch: arc: Remove CONFIG_OPROFILE support
>>   arch: hexagon: Don't select HAVE_OPROFILE
>>   arch: ia64: Remove CONFIG_OPROFILE support
>>   arch: ia64: Remove rest of perfmon support
>>   arch: microblaze: Remove CONFIG_OPROFILE support
>>   arch: mips: Remove CONFIG_OPROFILE support
>>   arch: parisc: Remove CONFIG_OPROFILE support
>>   arch: powerpc: Stop building and using oprofile
>>   arch: powerpc: Remove oprofile
>>   arch: s390: Remove CONFIG_OPROFILE support
>>   arch: sh: Remove CONFIG_OPROFILE support
>>   arch: sparc: Remove CONFIG_OPROFILE support
>>   arch: x86: Remove CONFIG_OPROFILE support
>>   arch: xtensa: Remove CONFIG_OPROFILE support
>>   drivers: Remove CONFIG_OPROFILE support
>>   fs: Remove dcookies support
> 
> After oprofile userland moved to version 1.x, the kernel support for
> it isn't needed anymore. The switch was back in 2014 when oprofile
> started using the perf syscall:
> 
>  https://sourceforge.net/p/oprofile/oprofile/ci/ba9edea2bdfe2c9475749fc83105632bd916b96c
> 
> Since then I haven't received any significant patches to implement new
> features or add support for newer platforms in the kernel. There
> haven't been bug reports sent or questions asked on the mailing list
> for quite a while, which indicates there are no or less users. Users
> (if any) should switch to oprofile 1.x or the perf tool. No need to
> carry kernel support any longer with us.
> 
> So time to get rid of it. For the whole series:
> 
> Acked-by: Robert Richter <rric@kernel.org>

The oprofile daemon that used the older oprofile kernel support was removed before OProfile 1.0 release by the following commit in August 2014:

https://sourceforge.net/p/oprofile/oprofile/ci/0c142c3a096d3e9ec42cc9b0ddad994fea60d135

At this point it makes sense to clean up the kernel and remove this unused code.

Acked-by: William Cohen <wcohen@redhat.com>

> 
> 
> _______________________________________________
> oprofile-list mailing list
> oprofile-list@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/oprofile-list
> 



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
