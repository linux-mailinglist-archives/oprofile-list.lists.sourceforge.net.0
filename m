Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D95EDBD375
	for <lists+oprofile-list@lfdr.de>; Tue, 24 Sep 2019 22:20:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1iCrIe-0000BZ-MX; Tue, 24 Sep 2019 20:20:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yhuerta@umn.edu>) id 1iCrId-0000BJ-5u
 for oprofile-list@lists.sourceforge.net; Tue, 24 Sep 2019 20:20:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2UDYZeyqWnp+Gg+y1obSWGupE4BtuGaQ6kJc6yfjKf4=; b=X6wMlf/J/jh/AwcrDEiQ7w9QKL
 dY+5vvplXD0tURwIRWrP4+Q6CgxkEAmWlfE/W1+2prQ1YYk/ajHY0k8GrsOXIC67DSgl4GYL63mrW
 0dbpSrvSGimXehhZDD4EEaMKOGnciVxV+zhGJOWdGTK1nErIxwJU9/m3m8z4fTGqncPc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2UDYZeyqWnp+Gg+y1obSWGupE4BtuGaQ6kJc6yfjKf4=; b=J41NEzax5zTFgIm3PtGe3PGsMt
 b++ZA9yyERwH9IEMHeJQ+4c0zayoGp9I3+EFo2Nl3gkuKd2UOfeM6dLchHxl6xdMBVzB+1Am0PxMy
 snGFxJwk+WnQnKJ3EPpX7NBlQyx07zzCNq+Z6WOIRJzCX1OuCfhYmQS7+KYZHR2itppg=;
Received: from mta-p5.oit.umn.edu ([134.84.196.205])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iCrIa-007UMS-Dm
 for oprofile-list@lists.sourceforge.net; Tue, 24 Sep 2019 20:20:39 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-p5.oit.umn.edu (Postfix) with ESMTP id B2F81A68
 for <oprofile-list@lists.sourceforge.net>;
 Tue, 24 Sep 2019 20:20:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at umn.edu
Received: from mta-p5.oit.umn.edu ([127.0.0.1])
 by localhost (mta-p5.oit.umn.edu [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id noODcJ_baJH2 for <oprofile-list@lists.sourceforge.net>;
 Tue, 24 Sep 2019 15:20:26 -0500 (CDT)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70])
 (using TLSv1.2 with cipher AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mta-p5.oit.umn.edu (Postfix) with ESMTPS id 59BBFB1C
 for <oprofile-list@lists.sourceforge.net>;
 Tue, 24 Sep 2019 15:20:26 -0500 (CDT)
Received: by mail-wr1-f70.google.com with SMTP id a15so1106268wrq.4
 for <oprofile-list@lists.sourceforge.net>;
 Tue, 24 Sep 2019 13:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umn.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=2UDYZeyqWnp+Gg+y1obSWGupE4BtuGaQ6kJc6yfjKf4=;
 b=Y/ybfyJexZb7nBpVaCN3nOrECjvlFNMD1Eov7nB6NWkYxYOoKRDwlGTzMtFNB4u4mc
 9184LiySGFONlKJTQn3jwvtB3cRjhi61BjiFdcYobL8OZC9A9muJw1VbSyzdFGBfkSi5
 WSil8O5LfZyaiPgUTtP9Wzgln7BDZXudYjuRqzFbyHyZqV3UCQWBWyeoF88cwFjB+b+1
 ZZ9naMmwQEEW7Yo/MEhQKnFaHMd7EsUW2ZIzYsZ2HlYnBXP/qQQBtmvwzV23IwyPuZpE
 BX5xjctPkn+JKoghCdqlsqfwgGv3n+s5hFCsKjzZ99fcLiHFBbhJeqKYBpIv7/iybO2i
 xlAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=2UDYZeyqWnp+Gg+y1obSWGupE4BtuGaQ6kJc6yfjKf4=;
 b=ncvctHRwUAsoe6CRc/57CorEfn4RBv+oLvW5ADxyoZxqjIFiRozHH8QYk5mPJL5Yab
 cIrjYzUre3lRfy8DIGDYR3iOP/6pbB71ezorusRlhx7pykMjVdVHd60LSGrFy8uFyreN
 gjuI1IWSIMCU4aMLOHiPuZYkNujjELVPscG4g2A62n7piXMqTY9y3Goa+MwtLu7HjA3a
 SIQ94pmfIESr06zOUwkbOt9jV9R/DMo6QDv3e64w6AyAnBQvKXqiJuXuBjxBbW6awBx6
 hMcrSlnudzaM0GjLf9Kb9A9DviXmiULOLFXssipfMix9izQxIgTQIPfCWg/BLxhFB68u
 /BwQ==
X-Gm-Message-State: APjAAAUV4tTNcrHTuWLzOjq5Av5GHHKcQZ/8KSLqor0MtqW/9euSm2BV
 ZNNpPgjXoTeTxDvxVUO1nG0XJJDsNyx4rwHMOQyLvOScE5yLEUnkUGJRzlBLyyIE2p3Yjdisb7a
 VRWG3NLUV7Qhukkx5mcLyWPhw4HJHyd6Uq64h9YQhxonAjXu6A+Hf0Q==
X-Received: by 2002:a5d:69c7:: with SMTP id s7mr4291433wrw.295.1569356425243; 
 Tue, 24 Sep 2019 13:20:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxb/ovRCRi23Rdpdz2jpJM4nFOp2cnvUKrein3lBTYxbvWi6vRt+pjzeOSGZEr0TLuJ739BrQYMuiNh0E45qfE=
X-Received: by 2002:a5d:69c7:: with SMTP id s7mr4291409wrw.295.1569356424961; 
 Tue, 24 Sep 2019 13:20:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAGKX4TcBNm=KrH3ytFUxPkDP0SL3YgLfQOUxdrQUp_7ZNPbpeQ@mail.gmail.com>
 <49581952-dbaa-e21c-56f6-cb8b8a2d009f@redhat.com>
In-Reply-To: <49581952-dbaa-e21c-56f6-cb8b8a2d009f@redhat.com>
From: Yectli Huerta <yhuerta@umn.edu>
Date: Tue, 24 Sep 2019 15:27:25 -0500
Message-ID: <CAGKX4Tf6u5QKh_W=3kfTJyxeJK9QE=mxgJm1HST+2edutqd8Uw@mail.gmail.com>
Subject: Re: opreport error: No sample file found
To: William Cohen <wcohen@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: 17.so]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iCrIa-007UMS-Dm
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
Cc: oprofile-list@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Tue, Sep 24, 2019 at 2:44 PM William Cohen <wcohen@redhat.com> wrote:
>
> On 9/24/19 3:42 PM, Yectli Huerta wrote:
> > Hi,
> > > I try to use opreport but it fails because no sample file is created
> > when i run the operf command. i know operf works because the
> > default, cpu_clk_unhalted, works.
>
> Hi,
>
> OProfile is doing sampling.  The interval of the sample is that number in the event description.  Given the small number of samples for the cpu_clk_unhalted event (4 total) I would expect the br_inst_retired to very small, possibly zero.  It quite possible for the toy "hello world" to get no samples at all for certain hardware events.  You might use ocount to see get an actual count.  It is likely less than the sample interval.
>
> -Will
>

hello,

thanks, i tried it on a longer running code and it did work. thanks
again. do you have any suggestions on what value to use for the  count
option?

yah

operf --event l2_rqsts:1000000:0x3f --event l2_rqsts:1000000:0xff
--event l2_rqsts:1000000:0x38  --event l2_rqsts:1000000:0xf8 ./a.out

$ opreport
Using /home/tech/yhuerta/omp2012_blizzard/omp2012/operf_runs/all_disabled/gcc_4.8.5_32_threads/oprofile_data/samples/
for samples directory.
CPU: Intel Skylake microarchitecture, speed 3e+06 MHz (estimated)
Counted l2_rqsts events () with a unit mask of 0x38 (Requests from the
L1/L2/L3 hardware prefetchers or Load software prefetches that miss L2
cache) count 1000000
Counted l2_rqsts events () with a unit mask of 0x3f (All requests that
miss L2 cache) count 1000000
Counted l2_rqsts events () with a unit mask of 0xf8 (Requests from the
L1/L2/L3 hardware prefetchers or Load software prefetches) count
1000000
Counted l2_rqsts events () with a unit mask of 0xff (All L2 requests)
count 1000000
 l2_rqsts:1000000| l2_rqsts:1000000| l2_rqsts:1000000| l2_rqsts:1000000|
  samples|      %|  samples|      %|  samples|      %|  samples|      %|
------------------------------------------------------------------------
     5415 100.000      8772 100.000      9500 100.000     11843
100.000 md_omp_base.compsys
     l2_rqsts:1000000| l2_rqsts:1000000| l2_rqsts:1000000| l2_rqsts:1000000|
      samples|      %|  samples|      %|  samples|      %|  samples|      %|
    ------------------------------------------------------------------------
         4422 81.6620      7222 82.3301      7193 75.7158      9329
78.7723 libm-2.17.so
          963 17.7839      1482 16.8947      2226 23.4316      2311
19.5136 md_omp_base.compsys
           29  0.5355        64  0.7296        81  0.8526       198
1.6719 no-vmlinux
            1  0.0185         2  0.0228         0       0         4
0.0338 libgomp.so.1.0.0
            0       0         2  0.0228         0       0         1
0.0084 libc-2.17.so




> >
> > [root@localhost ~]# operf --event br_inst_retired:1000000  ./a.out
> > Hello World
> > operf: Profiler started
> >
> > Profiling done.
> > [root@localhost ~]# opreport
> > Using /root/oprofile_data/samples/ for samples directory.
> > opreport error: No sample file found: If using opcontrol for profiling,
> > try running 'opcontrol --dump'; otherwise, specify a session containing
> > sample files.
> >
> > [root@localhost ~]# operf   ./a.out
> > Hello World
> > operf: Profiler started
> >
> > Profiling done.
> > [root@localhost ~]# opreport
> > Using /root/oprofile_data/samples/ for samples directory.
> > CPU: Intel Skylake microarchitecture, speed 3e+06 MHz (estimated)
> > Counted cpu_clk_unhalted events () with a unit mask of 0x00 (Core
> > cycles when at least one thread on the physical core is not in halt
> > state) count 100000
> > cpu_clk_unhalt...|
> >   samples|      %|
> > ------------------
> >         4 100.000 a.out
> >     cpu_clk_unhalt...|
> >       samples|      %|
> >     ------------------
> >             3 75.0000 no-vmlinux
> >             1 25.0000 ld-2.17.so
> > [root@localhost ~]#
> >
> > could you give me some pointers? thanks
> >
> > yah
> >
> >
> > _______________________________________________
> > oprofile-list mailing list
> > oprofile-list@lists.sourceforge.net
> > https://lists.sourceforge.net/lists/listinfo/oprofile-list
> >
>


-- 
++++++++++++++++++++++++++++++++
Yectli Huerta
HPC Systems Administrator | www.msi.umn.edu
University of Minnesota Supercomputing Institute
yhuerta@msi.umn.edu


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
