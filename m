Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 024F82F696F
	for <lists+oprofile-list@lfdr.de>; Thu, 14 Jan 2021 19:23:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l07Hd-00034y-MU; Thu, 14 Jan 2021 18:23:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <torvalds@linuxfoundation.org>) id 1l07Hc-00034m-S1
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 18:23:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jgsz3skB3uQLUI8x0BFf6N/jGNx3MOpaIJvqQ1iRtlI=; b=Z2QZ12KrIv+v+6xmyaTBItDOLX
 GLOKu7P6A9FWH/PlV0FoSh0DFMow+T/2vPdJ9N5Bd1W8JeYvE5l9Ll0n/Is1DGwBi97zA3X32fDmx
 7tkiuZ/W+yb8+B5ip58d/NnwqyfsH4Pd4lUdKKbC3M3EBaZs0bsgIWABJ7Em6JgGfKmE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jgsz3skB3uQLUI8x0BFf6N/jGNx3MOpaIJvqQ1iRtlI=; b=f9Bj40h6E7f1PO81cfSBGcGFVg
 ZwXt40TEvpP5k5pkqAvfSOCgPh8yMI01QI90fNckz8YZXudJaeDAy2HndZuuQTiemd6LGCRW/yiq9
 adv6XJtldGc03+NZBvY7jVh9cOHyqdOUIVV2vWYZAYgcy5vaJowyUdOX+Tvdpwsj/8j8=;
Received: from mail-wr1-f48.google.com ([209.85.221.48])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l07HW-00H8r3-Qv
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 18:23:44 +0000
Received: by mail-wr1-f48.google.com with SMTP id q18so6825647wrn.1
 for <oprofile-list@lists.sf.net>; Thu, 14 Jan 2021 10:23:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jgsz3skB3uQLUI8x0BFf6N/jGNx3MOpaIJvqQ1iRtlI=;
 b=GMP+McSiNKjvLlWhBH1DOZLI0L8QHepHQ++/ieqY7VS+tCc60MfvwFe4J6qlPDVIcx
 2/gkxnSDunpJNqaTvGKzXcJPi3+Y43O82Gqezna+2xFafqnqc0d0tAZK22kYUaLJFn1x
 Nq+PJtcW1LJfeIZ0muOkhWZCl+MC88gNHUIXk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jgsz3skB3uQLUI8x0BFf6N/jGNx3MOpaIJvqQ1iRtlI=;
 b=RfMmLyYQ616ET39BzDvbvh/4xNPegGtXgsmCuj3MHWYomLGjIgYgbXiHe3R4cvw71f
 lKx+rdb7iNvOEAGDRJkMSc1qwW+927KB8DIc/zmX1TNw5QdXS9Y9cGQGEWJ3rg9nnJ4m
 gUXY0/cmb03PIryB7OqTF9PA8Nob86G2k4T9oenBZVM+5IuRi/SrRMB1I9Qtj/F0sOat
 QcrtA2IHLvpYOrtAMprb0dpkgqDCl1iid+lb1/DOC6tjKQ3vzgzEZd+ArNYEskC2lHNp
 vRvLn98Bq945of/h26EONmQrLSqXgDGXOEbYk0zkcYx0LUyY3L/CPudw6CDGbaopVBfF
 rpHA==
X-Gm-Message-State: AOAM533wz6n9a9yF6UPTlkKHsP70/anQLqwgNOZ1OyPYOEYmv0MZm7lr
 HZdOeOModMvOg9m1MqqJE/CAMALyx1iHFQ==
X-Google-Smtp-Source: ABdhPJyvMAGWGE/xvXHAwXhZ6vCL+VlgAIwkU/ZzZP4Q9beGSiGgPMhpdFn7c2Rte9kL+F+E4eAS+w==
X-Received: by 2002:a19:b97:: with SMTP id 145mr3457959lfl.457.1610646694961; 
 Thu, 14 Jan 2021 09:51:34 -0800 (PST)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com.
 [209.85.208.174])
 by smtp.gmail.com with ESMTPSA id n84sm610257lfd.176.2021.01.14.09.51.33
 for <oprofile-list@lists.sf.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 14 Jan 2021 09:51:33 -0800 (PST)
Received: by mail-lj1-f174.google.com with SMTP id n11so7457805lji.5
 for <oprofile-list@lists.sf.net>; Thu, 14 Jan 2021 09:51:33 -0800 (PST)
X-Received: by 2002:a2e:6f17:: with SMTP id k23mr3540241ljc.411.1610646693192; 
 Thu, 14 Jan 2021 09:51:33 -0800 (PST)
MIME-Version: 1.0
References: <cover.1610622251.git.viresh.kumar@linaro.org>
In-Reply-To: <cover.1610622251.git.viresh.kumar@linaro.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 14 Jan 2021 09:51:17 -0800
X-Gmail-Original-Message-ID: <CAHk-=whaPiPCM6erqqe5Q-Ugn7u-jY6w7iA-kEBBc8aB40sBoA@mail.gmail.com>
Message-ID: <CAHk-=whaPiPCM6erqqe5Q-Ugn7u-jY6w7iA-kEBBc8aB40sBoA@mail.gmail.com>
Subject: Re: [PATCH 00/18] drivers: Remove oprofile and dcookies
To: Viresh Kumar <viresh.kumar@linaro.org>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.48 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linaro.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.48 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l07HW-00H8r3-Qv
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
 Vincent Guittot <vincent.guittot@linaro.org>,
 Anmar Oueja <anmar.oueja@linaro.org>, oprofile-list@lists.sf.net,
 Alexander Viro <viro@zeniv.linux.org.uk>, Robert Richter <rric@kernel.org>,
 William Cohen <wcohen@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Thu, Jan 14, 2021 at 3:34 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> This is build/boot tested by kernel test robot (Intel) and Linaro's
> Tuxmake[2] for a lot of architectures and no failures were reported.

Can you make sure this is in linux-next, and we'll get this in for 5.12?

              Linus


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
