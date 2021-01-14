Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E89F2F7805
	for <lists+oprofile-list@lfdr.de>; Fri, 15 Jan 2021 12:54:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l0NgZ-0001GT-Hm; Fri, 15 Jan 2021 11:54:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jcmvbkbc@gmail.com>) id 1l09Nq-00076c-W4
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 20:38:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dnkY8VhBKX7fyLymuaOgh7Kzhqo6/ffCUUZ+3TB9sfk=; b=OX7EwWfSxgHkJOVQzhVMVq04Lp
 EuK8e345i0yEnPhrvjvATljbas6KhF6H8md2j6dKSpaBi7LJjAIhM4UCpZZIB2Bomc8lDXfYZR6u2
 l/nwGB9TEIT+WozmOkc6Tv8k4f9dTZBDL3H/HVpOOk9xJtB13jpsaDqNQQhq+Xo0GZ3M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dnkY8VhBKX7fyLymuaOgh7Kzhqo6/ffCUUZ+3TB9sfk=; b=fH9uFhs4s9QWFX3Lo+3TDXXueu
 DIJRrh9/vCv6VBMGawIgtSMuWjBfp+kZZ0ICvzbp7pE35X2uTyDFOBLKu/pX6ZQz1NDhdRQrAcUfY
 qkI3duCmyDjsVpwxh4YjJcG2YvOTrUSn8wr4APQ25T5wWtbHyujsRGIKLla7VwJ0ukc0=;
Received: from mail-ej1-f54.google.com ([209.85.218.54])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l09Ni-0007Rq-UF
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 20:38:18 +0000
Received: by mail-ej1-f54.google.com with SMTP id g12so10152906ejf.8
 for <oprofile-list@lists.sf.net>; Thu, 14 Jan 2021 12:38:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dnkY8VhBKX7fyLymuaOgh7Kzhqo6/ffCUUZ+3TB9sfk=;
 b=S1qEdtllkI9bbC4WyizIHS/NrI01+t4naYpVzKo6U7uIUZGgZvp4ipWMMorZBf2JI8
 xh0YtKXQ2E0LYHNKr7uLeqY96YGydw3iS2kK1XqzqieZedhOVpAHmjk1Tc5+JAQm7Uje
 Rt5/6I4aMe40Yahclk0iBTPNB+efQ7/HzM/Im7N1SNU53kBndrBGrf2Wj/w4/QkQjBto
 NNRNWNEOqOsFJV7Nt37Dz5+QR6vVpkpiqqcNCdFeffIPgpHHGYc4PlfMJIQnZYxNITcr
 Ipfjh8gfcpTz8xWWZhanhRNzDxR8Zu3Oo9J+pq7/oZ6CcU8MEBWVUHpqv41ydH+3ErYy
 erSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dnkY8VhBKX7fyLymuaOgh7Kzhqo6/ffCUUZ+3TB9sfk=;
 b=ed+2OlPgA2aXqZROD5RKN/hBVKVgQYjg+XHIdIrtMaVs7xrikZAV9Yf7+4nEMjEyPq
 G2Yl7FTDe5oQogx01B0bDij+Ji9DJhkeFJAeF5FPHlUNmGwERoZPPl2CWupwnUjSQls2
 +8O3Un3KDcSLWdnZjsnR1q1NLagBYEVHv9w02A/jfXzCoKsVRDMp4kLXLrkcuFuktdbJ
 t1hCimajAOVAujrFTe2rEPBflteVl38MwBdny/JTCIUFWIqbLwXRjJhEfIlrCaLmUaBd
 pTMrtjDd4UHm9xAVU9SQOZ9Pu6VFSQmv6jusbjOy1nzBXlBdBpqrGpQx4CoCaog5hK6T
 Xskw==
X-Gm-Message-State: AOAM53250GOM2Pjhma4Ey6Etfbii87L0EBp7pKPX3U+3JNbSW3Fz1a7N
 yLbT1i2G0/rEreNzaBg8hIS0Hm/+QbzsrJuYKuk=
X-Google-Smtp-Source: ABdhPJwLcgK8nT3QnZuXEL5YzyE4ftItoCDBCpkwUddDRrwlLOcFty5eY+Uv/uYvGGwiA/tT70apTQ8ot7KpJF9Cxig=
X-Received: by 2002:a17:906:690:: with SMTP id
 u16mr6536886ejb.186.1610656677483; 
 Thu, 14 Jan 2021 12:37:57 -0800 (PST)
MIME-Version: 1.0
References: <cover.1610622251.git.viresh.kumar@linaro.org>
 <193f2f177d23eef62b54b48f80e62fb0169c1db9.1610622251.git.viresh.kumar@linaro.org>
In-Reply-To: <193f2f177d23eef62b54b48f80e62fb0169c1db9.1610622251.git.viresh.kumar@linaro.org>
From: Max Filippov <jcmvbkbc@gmail.com>
Date: Thu, 14 Jan 2021 12:37:45 -0800
Message-ID: <CAMo8BfLoMhH67ref+uVV4yb22B+c61ewvJaaCsgJgOPc+JWUyA@mail.gmail.com>
Subject: Re: [PATCH 16/18] arch: xtensa: Remove CONFIG_OPROFILE support
To: Viresh Kumar <viresh.kumar@linaro.org>
X-Spam-Score: 2.0 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.5 FROM_LOCAL_NOVOWEL     From: localpart has series of non-vowel letters
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jcmvbkbc[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.54 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.218.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1l09Ni-0007Rq-UF
X-Mailman-Approved-At: Fri, 15 Jan 2021 11:53:42 +0000
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
Cc: Arnd Bergmann <arnd@kernel.org>, Robert Richter <rric@kernel.org>,
 Chris Zankel <chris@zankel.net>,
 "open list:TENSILICA XTENSA PORT \(xtensa\)" <linux-xtensa@linux-xtensa.org>,
 LKML <linux-kernel@vger.kernel.org>, anmar.oueja@linaro.org,
 oprofile-list@lists.sf.net, Alexander Viro <viro@zeniv.linux.org.uk>,
 Christoph Hellwig <hch@infradead.org>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 William Cohen <wcohen@redhat.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Thu, Jan 14, 2021 at 3:36 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> The "oprofile" user-space tools don't use the kernel OPROFILE support
> any more, and haven't in a long time. User-space has been converted to
> the perf interfaces.
>
> Remove the old oprofile's architecture specific support.
>
> Suggested-by: Christoph Hellwig <hch@infradead.org>
> Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> ---
>  arch/xtensa/Kconfig                         |  1 -
>  arch/xtensa/Makefile                        |  1 -
>  arch/xtensa/configs/audio_kc705_defconfig   |  1 -
>  arch/xtensa/configs/generic_kc705_defconfig |  1 -
>  arch/xtensa/configs/smp_lx200_defconfig     |  1 -
>  arch/xtensa/configs/xip_kc705_defconfig     |  1 -
>  arch/xtensa/kernel/stacktrace.c             |  2 +-
>  arch/xtensa/oprofile/Makefile               | 10 --------
>  arch/xtensa/oprofile/backtrace.c            | 27 ---------------------
>  arch/xtensa/oprofile/init.c                 | 26 --------------------
>  10 files changed, 1 insertion(+), 70 deletions(-)
>  delete mode 100644 arch/xtensa/oprofile/Makefile
>  delete mode 100644 arch/xtensa/oprofile/backtrace.c
>  delete mode 100644 arch/xtensa/oprofile/init.c

Although I still keep userspace oprofile tools that use this interface,
I haven't run them for ages.

Acked-by: Max Filippov <jcmvbkbc@gmail.com>

-- 
Thanks.
-- Max


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
