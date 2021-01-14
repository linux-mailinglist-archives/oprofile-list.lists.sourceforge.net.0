Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD712F7808
	for <lists+oprofile-list@lfdr.de>; Fri, 15 Jan 2021 12:54:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l0NgZ-0001GI-G9; Fri, 15 Jan 2021 11:54:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <arnd@kernel.org>) id 1l088e-0008PN-1a
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 19:18:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lFydOh3l7CxkbwTF4wakJErnP/rVjk0lANRdm0va0sM=; b=D2ix+6sDqktZ9o1wGOk4dIE81F
 aDQzi4abLiyU6PztGDNHUrOt/DUA64zcgj5iqJOGRQlCxrWr5ZaBjQme541OzreFsWtZMLcms7lxa
 U/hzvn5iIazV2wAYR0DMOAPxlIhSQpQR7opP+r6fY9Y9Ykwrz2xbkoZUwqPu+OnaPQLY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lFydOh3l7CxkbwTF4wakJErnP/rVjk0lANRdm0va0sM=; b=kaSZw1p1Kp4q+cvXTGXfmzDbyP
 F7N8saEbOuvzq9AzbhxES5iHRN13T/V23I4GmU9ZB+17P2zC6GvUaUSQw3y0/YLcs0dPcjBQHIaDZ
 cV6LKgcNu0WGN6ypNfDHqezV2LOqip0hZBproh05RmscdPGRIfNvxsiUo2ITLRpPw48Q=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l088V-00HMA2-0g
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 19:18:31 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7BE6F23B54
 for <oprofile-list@lists.sf.net>; Thu, 14 Jan 2021 19:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610651897;
 bh=AbDupI8V5lrIksuWLqLFIaVzj1MANzVwHXwmj4zNEz0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Vl4zrxuFYHhO3oaWXJFgQOvEyrRLtoeH8u8fD50OySQv6b5CWDw3krL7JcBENHolb
 bCfs+6Z+FAh05h2FyvVtFEjdn+OCaL3Deo50Eu7LpmZ4Yff8BZMYc5Nk17bCXLL2Tf
 FXZs1UeNPxeJ8r4qMdsHCZmCXpjUR5CEVLSVqvT7acfWsAd089WYdkVbsEdQT7GiYN
 jUCnEYhMhetuWusZC+kb5NlFfAgBLICLmYvEIokUAFD5BeBh5rhY01qdj7Yw2Rwoyn
 2L4+0E+OSqj4oByKoQtZv3kcvOTM/qqV9dyPC2Vg94LtHVuQE7mPZRAipzQa7i5SfN
 hWzqJBGkkqzuw==
Received: by mail-ot1-f53.google.com with SMTP id n42so6202330ota.12
 for <oprofile-list@lists.sf.net>; Thu, 14 Jan 2021 11:18:17 -0800 (PST)
X-Gm-Message-State: AOAM530m4T23naRDpZjeZGTwXRAyfOesSSgjdvw041evrOgCYnjAquS5
 lWsot75cUNC7U8VPSm127uLXZXf9FoTFAhICSv4=
X-Google-Smtp-Source: ABdhPJxCSMXx4J8q37WU/kNPLC+FEdlQOrdJcA6LdUrtHnlIjdjNsaSnvhJ8w08NQmjvvM5zE+e24kOHUqgq1tPlCXk=
X-Received: by 2002:a9d:7a4b:: with SMTP id z11mr5629995otm.305.1610651896850; 
 Thu, 14 Jan 2021 11:18:16 -0800 (PST)
MIME-Version: 1.0
References: <cover.1610622251.git.viresh.kumar@linaro.org>
 <CAHk-=whaPiPCM6erqqe5Q-Ugn7u-jY6w7iA-kEBBc8aB40sBoA@mail.gmail.com>
In-Reply-To: <CAHk-=whaPiPCM6erqqe5Q-Ugn7u-jY6w7iA-kEBBc8aB40sBoA@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 14 Jan 2021 20:18:00 +0100
X-Gmail-Original-Message-ID: <CAK8P3a35Lz6O3oBr8AO6=s1xsTtEUpvnW3pgyGaED_dX3x7nNw@mail.gmail.com>
Message-ID: <CAK8P3a35Lz6O3oBr8AO6=s1xsTtEUpvnW3pgyGaED_dX3x7nNw@mail.gmail.com>
Subject: Re: [PATCH 00/18] drivers: Remove oprofile and dcookies
To: Linus Torvalds <torvalds@linux-foundation.org>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l088V-00HMA2-0g
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
Cc: Robert Richter <rric@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Anmar Oueja <anmar.oueja@linaro.org>, oprofile-list@lists.sf.net,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 William Cohen <wcohen@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Thu, Jan 14, 2021 at 6:51 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Thu, Jan 14, 2021 at 3:34 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> >
> > This is build/boot tested by kernel test robot (Intel) and Linaro's
> > Tuxmake[2] for a lot of architectures and no failures were reported.
>
> Can you make sure this is in linux-next, and we'll get this in for 5.12?

Hi Viresh,

I can add it to the asm-generic tree for linux-next if you send me a
pull request.

      Arnd


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
