Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 538A62F711E
	for <lists+oprofile-list@lfdr.de>; Fri, 15 Jan 2021 04:46:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l0G4K-0004nt-5T; Fri, 15 Jan 2021 03:46:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <viresh.kumar@linaro.org>) id 1l0G42-0004lL-Ro
 for oprofile-list@lists.sourceforge.net; Fri, 15 Jan 2021 03:46:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WFsQFSPqRZF+5VwOPFqUURUL6HN+bDCkq5xNGT0pq7Q=; b=nS0oLnHG8QSQI8YFuOOuwcbtn6
 8IltQSBB+8dfbA85PbIE6/Gp5+LbUE2l5ClSqrehPLFPOebZRqJ7Q3ppZ902M7COPEIj24BfjWKlP
 nzedhHJT+GkIegAYUBPBmQWVUtL9GW9nNxSX0vwv4Usa5zWDEUlFjZP6IQwj70AbkvGk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WFsQFSPqRZF+5VwOPFqUURUL6HN+bDCkq5xNGT0pq7Q=; b=Eq4KWvU/hu540IQ7jE3oTmXh4f
 SF41EzViEX1nGfwqds9yPGHWmWNdg4NAoGB+UdBR3pudm/+bf1aSsNOBU0HHih9bKuY6QEIcmgcpo
 8JgWDEOFmssaTL+x1wQghU0QgDYylYl7NPnZ4zYZpKxGmHwDOZj3o0xG8n1A8nY0p+wM=;
Received: from mail-pg1-f169.google.com ([209.85.215.169])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l0G3u-002yeZ-RL
 for oprofile-list@lists.sourceforge.net; Fri, 15 Jan 2021 03:46:18 +0000
Received: by mail-pg1-f169.google.com with SMTP id i5so5181771pgo.1
 for <oprofile-list@lists.sf.net>; Thu, 14 Jan 2021 19:46:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WFsQFSPqRZF+5VwOPFqUURUL6HN+bDCkq5xNGT0pq7Q=;
 b=Yh8Px6IXyHta2l+Jmx3s/AR1Kzt+bNgyPs9uL49pGJ+kaFae85OkV7aiiSDcWHOAii
 71S7oNxTlJPL11Y5OI06EfE6C1WU3WvMswKOYAK77+WFYCQ15pN/FY7gPgrX+krALBa1
 mwffM81vdoPqClYcPq8tDGrpLQZ/fWStJJCZkGkLF+bAIAg5uCvN7ocrdfCP38K8cmym
 8rdJCGY30vQovA+xHhDmTYvaf+H4bhkO8sV40hDH8hw3+ES/DYxVLaNR5BOT/dapVfgw
 pVLWJMVQISwQ7BR7QcfckgVMrI7LEVuysQP1bjFhHg2JPT+UfTjRRB4/FShl/MFOwOEk
 lKxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WFsQFSPqRZF+5VwOPFqUURUL6HN+bDCkq5xNGT0pq7Q=;
 b=D7aFYPEaezbxvO8PZa0rtpDqdJJHdJaHhveA1EWrGApK9iWZxV4plO7973F5N9hq+k
 bPVWD5gh98Nz18vHPQ2ecv6aitbO4l8DFG1j4IPUJGgqfVaq5Lll7bQM2TrYXCRu/v+K
 sl9gBpU0epQWm/QLYZxVK8QIVSUsH2xT/m82yjja4aczlpJO/pK5Eqjqm9YMqtiwdXJH
 l0wgZPWnulprGU4Azfy85v0bpSYSEdus4U5CuTvHqX9CkCf0DQu3131k+x0LeJyHQfjv
 dDbQSSUz2CpvCDYGmq0PuwXeRtTgjPdCyQ6o7dqNwfcTX17+pIeYCR54GsMrw10/6F5I
 hCFQ==
X-Gm-Message-State: AOAM532QEkIRPVIpexkworxRb0abAfvs+qFigWRF1KH3nD4CTD6Ee9n4
 mRpuZiV9TU98+CexKj7uaLj21w==
X-Google-Smtp-Source: ABdhPJwNAj80eIQKL6o0yIfIqt6xB5znO3daEuUILBockXHU5vXFbzCvSHtbEK5rttEUH/Hp+4TCvw==
X-Received: by 2002:aa7:8550:0:b029:19e:46e7:913b with SMTP id
 y16-20020aa785500000b029019e46e7913bmr10482939pfn.58.1610682357789; 
 Thu, 14 Jan 2021 19:45:57 -0800 (PST)
Received: from localhost ([122.172.85.111])
 by smtp.gmail.com with ESMTPSA id o17sm8558pfp.69.2021.01.14.19.45.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 Jan 2021 19:45:56 -0800 (PST)
Date: Fri, 15 Jan 2021 09:15:54 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Arnd Bergmann <arnd@kernel.org>
Subject: Re: [PATCH 00/18] drivers: Remove oprofile and dcookies
Message-ID: <20210115034554.ksa4oxmpox2xehbt@vireshk-i7>
References: <cover.1610622251.git.viresh.kumar@linaro.org>
 <CAHk-=whaPiPCM6erqqe5Q-Ugn7u-jY6w7iA-kEBBc8aB40sBoA@mail.gmail.com>
 <CAK8P3a35Lz6O3oBr8AO6=s1xsTtEUpvnW3pgyGaED_dX3x7nNw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a35Lz6O3oBr8AO6=s1xsTtEUpvnW3pgyGaED_dX3x7nNw@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.169 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.169 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1l0G3u-002yeZ-RL
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

On 14-01-21, 20:18, Arnd Bergmann wrote:
> On Thu, Jan 14, 2021 at 6:51 PM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> >
> > On Thu, Jan 14, 2021 at 3:34 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> > >
> > > This is build/boot tested by kernel test robot (Intel) and Linaro's
> > > Tuxmake[2] for a lot of architectures and no failures were reported.
> >
> > Can you make sure this is in linux-next, and we'll get this in for 5.12?
> 
> Hi Viresh,
> 
> I can add it to the asm-generic tree for linux-next if you send me a
> pull request.

I may need to update the patches a few times in the coming days and so
I was thinking it may be better if I ask Stephen to include a branch
from my tree directly instead. Will that be fine Arnd ?

-- 
viresh


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
