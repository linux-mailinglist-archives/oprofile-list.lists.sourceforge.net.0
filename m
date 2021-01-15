Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 821E92F7809
	for <lists+oprofile-list@lfdr.de>; Fri, 15 Jan 2021 12:54:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l0NgZ-0001HE-QF; Fri, 15 Jan 2021 11:54:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <arnd@kernel.org>) id 1l0LRN-0002t4-LH
 for oprofile-list@lists.sourceforge.net; Fri, 15 Jan 2021 09:30:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DTdsEKUIKdwSSvqTlfFkuN1aVDKpP8n999safElQxi8=; b=P2UtTAx+yz7Tqo8MB2BTFbqIa5
 Cragd7banKFGrXLcSD9ag9JZr4sitb1JCLw3WQSuxvGH/lMb991JUQITannsgJAqFql8zJ+gT6bjs
 YfGGO5YTQQHe8nWURrbL8bjUPp1e1vFXz4P5ncD73IJGeBuyAhFh0BpQBJ5TEUFqq3HQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DTdsEKUIKdwSSvqTlfFkuN1aVDKpP8n999safElQxi8=; b=Dhjd5DvLUB2uS4fL0xpxyLWIMN
 2tf7AUQSlPGHfZkQ3JNy6zQa96jYHdGSa1CMPU7LexPWnncfP4ituOUQfBMG8kUM/fvD8zud2EgMs
 Gr5AJ4pTWmxcpYPPn6FSZ+AC7GzRHH7s0Ok+D+p/7R8S0bSk4L4YXygEUGRRzV+ZVmBc=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l0LR7-00FS8b-KK
 for oprofile-list@lists.sourceforge.net; Fri, 15 Jan 2021 09:30:45 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0A1DB235F9
 for <oprofile-list@lists.sf.net>; Fri, 15 Jan 2021 09:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610703024;
 bh=Gv0+kce4RwtfxloG/VL7iEWHcnLJgSyUfACuyonNtiQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ghH9H9T/NXEvetM29h2oYzp63ybSiVpFL9N0slPftXHuK3yb+jVClGTMLQ9JjaWKG
 CN9IRUjj4J7fMUwbfU5vHpnxPul6APcwscg7HT83yT1AH3MNI+r99UdI1LsLaWBK4T
 l5P5NNdd1MB2UHv9Tnba9Nqt4CavYcC2HlBhrfY+ilMbsiR8Y4AI8hpn94wNn59PHk
 1Oi5Hy5F5OFWQPVIuWDbyiFFANVl46VmjVDLxjlrTeN7l6RgGgHxzIq51QrAqW/dys
 ATE6Bcw6lYDmF2WidsKqydKPZVPtHNEiWax4y8Uq4ngv/ImUXnoWuLkxGp/hVwxtNU
 guKLfVCgYHfww==
Received: by mail-ot1-f49.google.com with SMTP id b24so7983854otj.0
 for <oprofile-list@lists.sf.net>; Fri, 15 Jan 2021 01:30:24 -0800 (PST)
X-Gm-Message-State: AOAM532lyTZ1dEgfo5FdCv01oQfSfpwfITqIzjAVk/I1VsN22yR4RVnk
 fqRT2+tNaMu0xlZEY2qYMOqVlQ3ty/9F5yarYG0=
X-Google-Smtp-Source: ABdhPJxfftO34B0HFRxvMcM9LjxgcMf6WlA4rYrLkByIW2ER0QtSvXoiuEuU3yGfEPiyugQNS780lAhvmSdlQruCoiQ=
X-Received: by 2002:a05:6830:2413:: with SMTP id
 j19mr7910715ots.251.1610703023260; 
 Fri, 15 Jan 2021 01:30:23 -0800 (PST)
MIME-Version: 1.0
References: <cover.1610622251.git.viresh.kumar@linaro.org>
 <CAHk-=whaPiPCM6erqqe5Q-Ugn7u-jY6w7iA-kEBBc8aB40sBoA@mail.gmail.com>
 <CAK8P3a35Lz6O3oBr8AO6=s1xsTtEUpvnW3pgyGaED_dX3x7nNw@mail.gmail.com>
 <20210115034554.ksa4oxmpox2xehbt@vireshk-i7>
In-Reply-To: <20210115034554.ksa4oxmpox2xehbt@vireshk-i7>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 15 Jan 2021 10:30:07 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2sbC1wnS20L0DsYz6s4-bgStuG8+Z53xrqLXBwYfTdSQ@mail.gmail.com>
Message-ID: <CAK8P3a2sbC1wnS20L0DsYz6s4-bgStuG8+Z53xrqLXBwYfTdSQ@mail.gmail.com>
Subject: Re: [PATCH 00/18] drivers: Remove oprofile and dcookies
To: Viresh Kumar <viresh.kumar@linaro.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1l0LR7-00FS8b-KK
X-Mailman-Approved-At: Fri, 15 Jan 2021 11:53:41 +0000
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

On Fri, Jan 15, 2021 at 4:45 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> On 14-01-21, 20:18, Arnd Bergmann wrote:
> > On Thu, Jan 14, 2021 at 6:51 PM Linus Torvalds
> > <torvalds@linux-foundation.org> wrote:
> > >
> > > On Thu, Jan 14, 2021 at 3:34 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> > > >
> > > > This is build/boot tested by kernel test robot (Intel) and Linaro's
> > > > Tuxmake[2] for a lot of architectures and no failures were reported.
> > >
> > > Can you make sure this is in linux-next, and we'll get this in for 5.12?
> >
> > Hi Viresh,
> >
> > I can add it to the asm-generic tree for linux-next if you send me a
> > pull request.
>
> I may need to update the patches a few times in the coming days and so
> I was thinking it may be better if I ask Stephen to include a branch
> from my tree directly instead. Will that be fine Arnd ?

Yes, of course. I assume you will also send the pull request during
the merge window in that case.

      Arnd


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
