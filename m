Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 054A1BD2F3
	for <lists+oprofile-list@lfdr.de>; Tue, 24 Sep 2019 21:44:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1iCqjV-0006EX-3m; Tue, 24 Sep 2019 19:44:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wcohen@redhat.com>) id 1iCqjT-0006EO-Ba
 for oprofile-list@lists.sourceforge.net; Tue, 24 Sep 2019 19:44:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fOZI2/g1IFVnwL1vmMy9Nfw43HWWsaCE7zbtE+DbWwM=; b=Ht4H0LEQp5+VK+YR2EaO5sZpA0
 1p8ZcAFfuJ2P/iAAk+nhmhAKZynFh6rIY9HGps54BbN0pfYQgJHF2p8IFTOX8MbMivGS4OP68Z/cI
 TEKKdFPC2/7xBaGZcasIPNhTCO0fqFd8w0/0QOFkduVDROGNHMobxIVFLL+iKtShgRPs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fOZI2/g1IFVnwL1vmMy9Nfw43HWWsaCE7zbtE+DbWwM=; b=QJ7opTr5oDiI+D9q4eM7CBfMHM
 dT+G1TJa1nJB/A/yZGr9MXyRMa/zjYfKXaRh3GPXV9f1lvOAGGyOzPkRtImvmTc1N52TLcjrMj7yt
 CBR+CwjBk7B812MTXumyBYlflFEgqaTZ+FWYO2yAsKKeWyPNklp92wL85LSMLkgIS40A=;
Received: from mx1.redhat.com ([209.132.183.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iCqjR-007Rfs-Qg
 for oprofile-list@lists.sourceforge.net; Tue, 24 Sep 2019 19:44:19 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 50F90309C0E7;
 Tue, 24 Sep 2019 19:44:12 +0000 (UTC)
Received: from [10.13.129.18] (dhcp129-18.rdu.redhat.com [10.13.129.18])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 24BD660852;
 Tue, 24 Sep 2019 19:44:12 +0000 (UTC)
Subject: Re: opreport error: No sample file found
To: Yectli Huerta <yhuerta@umn.edu>, oprofile-list@lists.sourceforge.net
References: <CAGKX4TcBNm=KrH3ytFUxPkDP0SL3YgLfQOUxdrQUp_7ZNPbpeQ@mail.gmail.com>
From: William Cohen <wcohen@redhat.com>
Message-ID: <49581952-dbaa-e21c-56f6-cb8b8a2d009f@redhat.com>
Date: Tue, 24 Sep 2019 15:44:11 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <CAGKX4TcBNm=KrH3ytFUxPkDP0SL3YgLfQOUxdrQUp_7ZNPbpeQ@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Tue, 24 Sep 2019 19:44:12 +0000 (UTC)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: 17.so]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1iCqjR-007Rfs-Qg
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

On 9/24/19 3:42 PM, Yectli Huerta wrote:
> Hi,
> > I try to use opreport but it fails because no sample file is created
> when i run the operf command. i know operf works because the
> default, cpu_clk_unhalted, works.

Hi,

OProfile is doing sampling.  The interval of the sample is that number in the event description.  Given the small number of samples for the cpu_clk_unhalted event (4 total) I would expect the br_inst_retired to very small, possibly zero.  It quite possible for the toy "hello world" to get no samples at all for certain hardware events.  You might use ocount to see get an actual count.  It is likely less than the sample interval.

-Will

> 
> [root@localhost ~]# operf --event br_inst_retired:1000000  ./a.out
> Hello World
> operf: Profiler started
> 
> Profiling done.
> [root@localhost ~]# opreport
> Using /root/oprofile_data/samples/ for samples directory.
> opreport error: No sample file found: If using opcontrol for profiling,
> try running 'opcontrol --dump'; otherwise, specify a session containing
> sample files.
> 
> [root@localhost ~]# operf   ./a.out
> Hello World
> operf: Profiler started
> 
> Profiling done.
> [root@localhost ~]# opreport
> Using /root/oprofile_data/samples/ for samples directory.
> CPU: Intel Skylake microarchitecture, speed 3e+06 MHz (estimated)
> Counted cpu_clk_unhalted events () with a unit mask of 0x00 (Core
> cycles when at least one thread on the physical core is not in halt
> state) count 100000
> cpu_clk_unhalt...|
>   samples|      %|
> ------------------
>         4 100.000 a.out
>     cpu_clk_unhalt...|
>       samples|      %|
>     ------------------
>             3 75.0000 no-vmlinux
>             1 25.0000 ld-2.17.so
> [root@localhost ~]#
> 
> could you give me some pointers? thanks
> 
> yah
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
