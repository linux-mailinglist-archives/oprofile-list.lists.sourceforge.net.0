Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4E4BD2C1
	for <lists+oprofile-list@lfdr.de>; Tue, 24 Sep 2019 21:35:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1iCqbH-0002dV-GX; Tue, 24 Sep 2019 19:35:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yhuerta@umn.edu>) id 1iCqbG-0002dK-IE
 for oprofile-list@lists.sourceforge.net; Tue, 24 Sep 2019 19:35:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TOcfvLJDMN6qpLknYRD/kcy97iYd+BYy7qY88WZpVdE=; b=VNhfRm3jEYSHimL2XmmsYpULZq
 XSXuUlGsLcivOKzu25VP7L6DgzF4asvYz4CW6n1eJltumw2I1rOrPr8nww5VuNmIPLICiRx4Cy9p+
 6lz3bNDXOzwX871UTqMLo0l67XdtUri1FIJZs9e4srRkxMvhuuUCDpdBLpTb9upjxT8o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=TOcfvLJDMN6qpLknYRD/kcy97iYd+BYy7qY88WZpVdE=; b=Q
 ePmSDW68tJ/dzpYB0zKdJBPa1Eiz6Z7Ly+OhnJuXMYhk3rvpaxW4bdX125nbnk6xmQ1Z/brvEA2ay
 zYmYDos0B67x+mmChLrVBP4a9csY2Sa42I4aUxhmlq34f4mwuUhDluoz6Y8TmfCWT0I9KUll7f6QE
 GdTpa79GT1AfHw6E=;
Received: from mta-p8.oit.umn.edu ([134.84.196.208])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iCqbE-005dxK-4x
 for oprofile-list@lists.sourceforge.net; Tue, 24 Sep 2019 19:35:50 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-p8.oit.umn.edu (Postfix) with ESMTP id E777A527
 for <oprofile-list@lists.sourceforge.net>;
 Tue, 24 Sep 2019 19:35:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at umn.edu
Received: from mta-p8.oit.umn.edu ([127.0.0.1])
 by localhost (mta-p8.oit.umn.edu [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yT9witIS3CVr for <oprofile-list@lists.sourceforge.net>;
 Tue, 24 Sep 2019 14:35:39 -0500 (CDT)
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72])
 (using TLSv1.2 with cipher AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mta-p8.oit.umn.edu (Postfix) with ESMTPS id 9BFCC562
 for <oprofile-list@lists.sourceforge.net>;
 Tue, 24 Sep 2019 14:35:39 -0500 (CDT)
Received: by mail-wr1-f72.google.com with SMTP id c1so1032734wrb.12
 for <oprofile-list@lists.sourceforge.net>;
 Tue, 24 Sep 2019 12:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umn.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=TOcfvLJDMN6qpLknYRD/kcy97iYd+BYy7qY88WZpVdE=;
 b=hQySQaLbGDkDggXF+0ZupZ9XcxEuA8Eu48S3Bw7OPEm5dPLshTm1FXuYvu3yr+Rk4x
 4JPo85RzBkE0GCLF8y83OxcsK46D8GTIYPB36NUcrJufONZYTuy9EYDdS4meAs8k/Ucj
 qN1jQlFM/saPFq+oQcjp3adWT5Ag4wUymV35y6CsCoce4nM7qBsByP/zh2VcbtuXRtCy
 MBweOtnwjcLByLaSjPK5Zzf6swv1vjM5v5RmxMps5fco7nd5srU7o1xPufwHM9pU5G8s
 aOsavf7GdTxg4CvX3/L6oDuW8Q90qMrJwjP+7rHQ3RA2IJ+Vlt8cWmwQhkBMtp63/7Wp
 nRqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=TOcfvLJDMN6qpLknYRD/kcy97iYd+BYy7qY88WZpVdE=;
 b=QSncYna8DUiipYHsh7N6Tz4n8I56cMcccuTWj3f+i0xavjM0T5T9HMNtkom0fJ5vBd
 2lqLsOEwecR94GBYOK7otRhWgEtDkFJGdn/+PBTktk0y39bDYyk2W/MOj/XdmknIBeGF
 wn2LUkSolXQck/Olz4uaFVb276PRdb2HEiP4XFUJq8iPDKaXhYePs/a87A5p1lVr4rkG
 lkfRs7rTINX7No2U3WlY6PQYC8rLApMwA77wGsUqgWEMI0xfGPHylfinVJaPLGB3nNZO
 /6fcprnjnjUbXTp3OAVtiuLboRGIp9XMgAA5v/nYXYRQ3CLQlWWqYgX4e1VS7y8KCKRM
 ppww==
X-Gm-Message-State: APjAAAUu4OKe6XpnNMGwSVD8jxM+zP8DkRgJVn2PgPR0H8tSM1s1cRco
 6lisGVeNqlq6p4dir0lsCKwyjYc+kGWg6sD5Nj+xviA+hPdIzHTVX/UVRTs94mNYdMmmQh17Z51
 H6O2BHdMOuZ4DjJvbjFJBg8fRA9QXmajJHVfkBp3wiumlOk8ZWgV5/Q==
X-Received: by 2002:a5d:6ac8:: with SMTP id u8mr4210594wrw.104.1569353738406; 
 Tue, 24 Sep 2019 12:35:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyy9/wSTEDcFbyUILqnjn/AQOnLg+HIXTn8VKdu02iUyi3qWFiaxQHra3ppUjthYyQ1duyQz70ONjobH0iQyUc=
X-Received: by 2002:a5d:6ac8:: with SMTP id u8mr4210564wrw.104.1569353737987; 
 Tue, 24 Sep 2019 12:35:37 -0700 (PDT)
MIME-Version: 1.0
From: Yectli Huerta <yhuerta@umn.edu>
Date: Tue, 24 Sep 2019 14:42:38 -0500
Message-ID: <CAGKX4TcBNm=KrH3ytFUxPkDP0SL3YgLfQOUxdrQUp_7ZNPbpeQ@mail.gmail.com>
Subject: opreport error: No sample file found
To: oprofile-list@lists.sourceforge.net
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
X-Headers-End: 1iCqbE-005dxK-4x
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

Hi,

I try to use opreport but it fails because no sample file is created
when i run the operf command. i know operf works because the
default, cpu_clk_unhalted, works.

[root@localhost ~]# operf --event br_inst_retired:1000000  ./a.out
Hello World
operf: Profiler started

Profiling done.
[root@localhost ~]# opreport
Using /root/oprofile_data/samples/ for samples directory.
opreport error: No sample file found: If using opcontrol for profiling,
try running 'opcontrol --dump'; otherwise, specify a session containing
sample files.

[root@localhost ~]# operf   ./a.out
Hello World
operf: Profiler started

Profiling done.
[root@localhost ~]# opreport
Using /root/oprofile_data/samples/ for samples directory.
CPU: Intel Skylake microarchitecture, speed 3e+06 MHz (estimated)
Counted cpu_clk_unhalted events () with a unit mask of 0x00 (Core
cycles when at least one thread on the physical core is not in halt
state) count 100000
cpu_clk_unhalt...|
  samples|      %|
------------------
        4 100.000 a.out
    cpu_clk_unhalt...|
      samples|      %|
    ------------------
            3 75.0000 no-vmlinux
            1 25.0000 ld-2.17.so
[root@localhost ~]#

could you give me some pointers? thanks

yah


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
