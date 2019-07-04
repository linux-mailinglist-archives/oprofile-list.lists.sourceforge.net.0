Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFF85FCE2
	for <lists+oprofile-list@lfdr.de>; Thu,  4 Jul 2019 20:28:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1hj6SQ-00037a-Oh; Thu, 04 Jul 2019 18:27:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rric.net@gmail.com>) id 1hj1A5-0001dW-Ug
 for oprofile-list@lists.sourceforge.net; Thu, 04 Jul 2019 12:48:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NGIpyvEtEXEdDEsWs3lSyzCAiq7xG0Rb+r1M3Ty+FsY=; b=nKpS3Gx0maKvDj9sKUgiR1ATEa
 PXjVtDHMe1bPdlKYVZ1XtHfmoWObHlIeiXY8g61+HnExvKNBIFeo9WvtD5BKHTe9a2mGgKB251ria
 S9yMAzSs9X5ooNUXp39CsrSlygcfljRJffnEP/oTkUeQGbkpPvJHpUwyo7YpoMgAEHeI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NGIpyvEtEXEdDEsWs3lSyzCAiq7xG0Rb+r1M3Ty+FsY=; b=VxTGe5lc5YWJ9pUSJ7yBHk7Edx
 F7ehwy3By3g78FNI0WnLISVp4ZJwUFNEYzGMdHiaV2XpTAqH8hq7vSzRnxQkiKvtwwfDyv9p4BGty
 OUE26rDAG2PLB8wnCYZwXjVgMTPJynHsm/d7EWefLqcKyP+6t314I1MXuJaPzC6IL/2M=;
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hj1AE-005dEo-UP
 for oprofile-list@lists.sourceforge.net; Thu, 04 Jul 2019 12:48:40 +0000
Received: by mail-lj1-f195.google.com with SMTP id m23so6023876lje.12
 for <oprofile-list@lists.sf.net>; Thu, 04 Jul 2019 05:48:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NGIpyvEtEXEdDEsWs3lSyzCAiq7xG0Rb+r1M3Ty+FsY=;
 b=pDpFgsi+MRZvsLbFOTZirUCzaMgToeUcdKHFWL3XJYy8ALaLEYw+QKonY3vgjjPEpU
 kotOLWqILgWdgwngvGZC+zSdI5k8unTWHjCgVDhLACdiMe6T30sVobNtoIresjTbRLnU
 iyhq5JhhwyTw86gmG7N3kzz6XGwVHVkrKNWFhlxizIvxP7Uvu/638Qgz+IR1V/eMCoWY
 uJnHxwZAuy1ysmCo4ZmMDtva3YmCjLPjOh72aPrWm1+bnzgB1fZesQmgiZaK9F57CkuX
 MpFB+zBauMqdY7PhUTAC2d/mmWg0SDw+qY22XpkZFNY12CBTPUxo0ULJ6x/tYhjc1noT
 Dy7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=NGIpyvEtEXEdDEsWs3lSyzCAiq7xG0Rb+r1M3Ty+FsY=;
 b=k3wKfXn05LVloYoUYm2lpyesBz4/cuWnFsnR+1z+TD/k3PJnrWRd3b+auplWKiriTC
 Iyzmn7pl4zVQqa7PR6FZVRb/dFRysDep3oblC1trKINHGeyxtghM0dld98DpTz73BPIJ
 XZCRV38wmxqjzs/gPPFgW/9w/oxtppZfBIHfVJ6PkTYlTG+Z8lyDazDQfpObrTHv4m1T
 DVVdkF4HoEh4lmE+suJ2rC3GXpEsv7h4MvkLEW1Bml+0WyA3WEfPKI/Uvy+XQUgWcpNz
 2+zboqyrupXNFg6G37ouut6BhdMPvwM/AxzaBAaH1TRkN7wX5ghakv04G2exKjZJ2s2k
 o8SQ==
X-Gm-Message-State: APjAAAUbnZJbAQxwPRTCW/4fGBwAZ8Zh7hVHXnSAd4gg6NSOANUZ2OzP
 3n5GNH6ynYCr1kS2nRvYPDA=
X-Google-Smtp-Source: APXvYqwjHC1uKAdinYH43yQIrLge10HErloqumUI+ywI0nseKWZP7Ywk5EoVemKvNYgjVhjXCjYNfQ==
X-Received: by 2002:a2e:9950:: with SMTP id r16mr25211593ljj.173.1562244512214; 
 Thu, 04 Jul 2019 05:48:32 -0700 (PDT)
Received: from rric.localdomain (83-233-147-164.cust.bredband2.com.
 [83.233.147.164])
 by smtp.gmail.com with ESMTPSA id 89sm1126324ljs.48.2019.07.04.05.48.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 04 Jul 2019 05:48:31 -0700 (PDT)
Date: Thu, 4 Jul 2019 14:48:27 +0200
From: Robert Richter <rric@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH 2/3] module: Fix up module_notifier return values.
Message-ID: <20190704124827.hsuse5g3x5bgdgb3@rric.localdomain>
References: <20190624091843.859714294@infradead.org>
 <20190624092109.805742823@infradead.org>
 <320564860.243.1561384864186.JavaMail.zimbra@efficios.com>
 <20190624205810.GD26422@redhat.com>
 <20190625074214.GR3436@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625074214.GR3436@hirez.programming.kicks-ass.net>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (rric.net[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.195 listed in list.dnswl.org]
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.195 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
X-Headers-End: 1hj1AE-005dEo-UP
X-Mailman-Approved-At: Thu, 04 Jul 2019 18:27:45 +0000
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
Cc: Song Liu <songliubraving@fb.com>, Alexei Starovoitov <ast@kernel.org>,
 "Joel Fernandes, Google" <joel@joelfernandes.org>,
 paulmck <paulmck@linux.ibm.com>, mbenes@suse.cz,
 Daniel Borkmann <daniel@iogearbox.net>, "Frank Ch. Eigler" <fche@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 Yonghong Song <yhs@fb.com>, Petr Mladek <pmladek@suse.com>, jikos@kernel.org,
 rostedt <rostedt@goodmis.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 bpf@vger.kernel.org, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 netdev <netdev@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Jessica Yu <jeyu@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On 25.06.19 09:42:14, Peter Zijlstra wrote:
> On Mon, Jun 24, 2019 at 04:58:10PM -0400, Frank Ch. Eigler wrote:

> > From peterz's comments, the patches, it's not obvious to me how one is
> > to choose between 0 (NOTIFY_DONE) and 1 (NOTIFY_OK) in the case of a
> > routine success.
> 
> I'm not sure either; what I think I choice was:
> 
>  - if I want to completely ignore the callback, use DONE (per the
>    "Don't care" comment).
> 
>  - if we finished the notifier without error, use OK or
>    notifier_from_errno(0).
> 
> But yes, its a bit of a shit interface.

It looks like it was rarely used in earlier kernels as some sort of
error detection for the notifier calls, e.g.:

1da177e4c3f41524e886b7f1b8a0c1fc7321cac2:kernel/profile.c-int profile_handoff_task(struct task_struct * task)
1da177e4c3f41524e886b7f1b8a0c1fc7321cac2:kernel/profile.c-{
1da177e4c3f41524e886b7f1b8a0c1fc7321cac2:kernel/profile.c-      int ret;
1da177e4c3f41524e886b7f1b8a0c1fc7321cac2:kernel/profile.c-      read_lock(&handoff_lock);
1da177e4c3f41524e886b7f1b8a0c1fc7321cac2:kernel/profile.c-      ret = notifier_call_chain(&task_free_notifier, 0, task);
1da177e4c3f41524e886b7f1b8a0c1fc7321cac2:kernel/profile.c-      read_unlock(&handoff_lock);
1da177e4c3f41524e886b7f1b8a0c1fc7321cac2:kernel/profile.c:      return (ret == NOTIFY_OK) ? 1 : 0;
1da177e4c3f41524e886b7f1b8a0c1fc7321cac2:kernel/profile.c-}

So NOTIFY_OK was used to state there is no error, while NOTIFY_DONE
says the notifier was executed and there might have been errors. The
caller may distinguish the results then.

-Robert


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
