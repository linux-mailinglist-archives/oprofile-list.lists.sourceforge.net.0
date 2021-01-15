Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F532F7725
	for <lists+oprofile-list@lfdr.de>; Fri, 15 Jan 2021 12:06:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l0Mvc-0003AD-Cd; Fri, 15 Jan 2021 11:06:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <viresh.kumar@linaro.org>) id 1l0MvX-00039m-GM
 for oprofile-list@lists.sourceforge.net; Fri, 15 Jan 2021 11:05:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6jhpu0Eh/Bxe5s8lM3VxopfGyBG40Fw48t7r2Al0UuU=; b=lkwbe/YPj6KSOydKgzj3J2jiVB
 WkmppY0pkPS2HVbWj3GrzdKzX5AGMJS7msYQdHNrIdKNGsVtWvUjN8W0ReUW52Q5bXmJv5/nc2Scd
 lDFXRxlUTh6cxeTdiB7XQcg2pn6XLQ6kIItGFAJIRsfuJ0CbtgVUK8TtMDLlJ977IQIU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6jhpu0Eh/Bxe5s8lM3VxopfGyBG40Fw48t7r2Al0UuU=; b=J150qwQ6iSWKCAoxvVWE74qLil
 3q9OlW2k4upkZHpYJuK71skAgn+/a6IYS7RaAVaH4VvO7uio4yrYWPmd/G5EzspJQnrTTd3YVmRCT
 7Nex6nIaZCam60VMef2vyDM78CWlIToKEQGXC8j9sXgBoZbSI6MIneBiwX/rzkfy11Vg=;
Received: from mail-pl1-f174.google.com ([209.85.214.174])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l0MvL-00Fd45-J6
 for oprofile-list@lists.sourceforge.net; Fri, 15 Jan 2021 11:05:59 +0000
Received: by mail-pl1-f174.google.com with SMTP id be12so4526284plb.4
 for <oprofile-list@lists.sf.net>; Fri, 15 Jan 2021 03:05:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6jhpu0Eh/Bxe5s8lM3VxopfGyBG40Fw48t7r2Al0UuU=;
 b=IRnMF2CuV+DL9jMS/60N27H6hcW/qqEyLkkVnDF+Zk5O/vHYzDzuOa8KEWIjggX6BE
 Y065/oz45UPApbWsfL5kLK2pumFFCXufWDDQs1Bzu27RgmXtdycI29bulS9lxTM3C9UH
 H+DkuspgJU8eIpXjO9PcD88TJBmgpTB6VPzr7clrno3GaMGa+JE1lyjyMYsLi5LXTPrA
 bycYt/wPgSoOisG5RhrsRYat2pwvS/AsL4y59HcWpJWPL6rwv4TLuTQ4VScNnYUiTVJk
 zSyEGYMiyUv8jTfrIPpjuqEHNIGGJRfqS3oHb61IOLyAa/5NAefV5Cp6odrahfC6hwc9
 pNpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6jhpu0Eh/Bxe5s8lM3VxopfGyBG40Fw48t7r2Al0UuU=;
 b=ddEDzl3YGmRCIRifgeMxR0u4QGsy9BVGa6YrAj5TiutUMWPZfCt/hmDvcD5ez9fs2Q
 lP3mTLp2qtCk/ol8/Jf6VBj/Cjuie5Ftye+5leQL/nID9IaTcjb5Z/w0yuJX2AlpiZ23
 SKBF/181/dSjxDdHVWrJF2H72Cw0F31ehZyx2lkHfWdnwli+821TcVHw06Cx2rfSbAql
 kMmLK5WDrTINMuC9TAceS4Q+4B3/SHVdNlicJHlkOxi9kRN4hfq0sAxfDwkyo+lSg0uH
 Z/bwZqO3HxeQdAVy+Q80/B9VSkxOPu9ZdFImBRo+1KRXGjWTo+Q3LDykScIx7PWV/yRm
 sJLw==
X-Gm-Message-State: AOAM531TyVtZxDLN16knTUnxHLDXl9ZyRFITZKi8K2YLSBCRM2//Igzz
 GcO1vVsCfz24/SUDvO9LYdVAtQ==
X-Google-Smtp-Source: ABdhPJyce3cJfUokHlwqScO+IYkwcPtty6gHnd2VrvajJvlr0y6yuhMMz0+7qTUoXtunxqMPAB0Rsw==
X-Received: by 2002:a17:90a:6809:: with SMTP id
 p9mr9765198pjj.112.1610708734797; 
 Fri, 15 Jan 2021 03:05:34 -0800 (PST)
Received: from localhost ([122.172.85.111])
 by smtp.gmail.com with ESMTPSA id p15sm8107935pgl.19.2021.01.15.03.05.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 15 Jan 2021 03:05:33 -0800 (PST)
Date: Fri, 15 Jan 2021 16:35:31 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Arnd Bergmann <arnd@kernel.org>
Subject: Re: [PATCH 00/18] drivers: Remove oprofile and dcookies
Message-ID: <20210115110531.pr55hyczhlvp4pa5@vireshk-i7>
References: <cover.1610622251.git.viresh.kumar@linaro.org>
 <CAHk-=whaPiPCM6erqqe5Q-Ugn7u-jY6w7iA-kEBBc8aB40sBoA@mail.gmail.com>
 <CAK8P3a35Lz6O3oBr8AO6=s1xsTtEUpvnW3pgyGaED_dX3x7nNw@mail.gmail.com>
 <20210115034554.ksa4oxmpox2xehbt@vireshk-i7>
 <CAK8P3a2sbC1wnS20L0DsYz6s4-bgStuG8+Z53xrqLXBwYfTdSQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2sbC1wnS20L0DsYz6s4-bgStuG8+Z53xrqLXBwYfTdSQ@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linaro.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.174 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1l0MvL-00Fd45-J6
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
Cc: Robert Richter <rric@kernel.org>, Anmar Oueja <anmar.oueja@linaro.org>,
 oprofile-list@lists.sf.net, Alexander Viro <viro@zeniv.linux.org.uk>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 William Cohen <wcohen@redhat.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On 15-01-21, 10:30, Arnd Bergmann wrote:
> On Fri, Jan 15, 2021 at 4:45 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> >
> > On 14-01-21, 20:18, Arnd Bergmann wrote:
> > > On Thu, Jan 14, 2021 at 6:51 PM Linus Torvalds
> > > <torvalds@linux-foundation.org> wrote:
> > > >
> > > > On Thu, Jan 14, 2021 at 3:34 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> > > > >
> > > > > This is build/boot tested by kernel test robot (Intel) and Linaro's
> > > > > Tuxmake[2] for a lot of architectures and no failures were reported.
> > > >
> > > > Can you make sure this is in linux-next, and we'll get this in for 5.12?
> > >
> > > Hi Viresh,
> > >
> > > I can add it to the asm-generic tree for linux-next if you send me a
> > > pull request.
> >
> > I may need to update the patches a few times in the coming days and so
> > I was thinking it may be better if I ask Stephen to include a branch
> > from my tree directly instead. Will that be fine Arnd ?
> 
> Yes, of course. I assume you will also send the pull request during
> the merge window in that case.

Yes. Thanks Arnd.

-- 
viresh


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
