Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E90550A5
	for <lists+oprofile-list@lfdr.de>; Tue, 25 Jun 2019 15:42:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1hfliC-0003G9-94; Tue, 25 Jun 2019 13:42:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <peterz@infradead.org>) id 1hfg6I-0003Gt-2u
 for oprofile-list@lists.sourceforge.net; Tue, 25 Jun 2019 07:42:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3Woq6Ijx79j2u1qvlhauxGczuuE2pOnfE5TxDoYwUlo=; b=DPfv5jnw6v5zoUeKZzVR5T6V/C
 cTeNnWn6w5sE7WfGzWUtSSFJtpLFsDLxcwxEmZnRmoEA3dDFApTqQjsdVUTMlNa5oFj21Exz3xBcQ
 MM2I3ertTA6jew9vyQu9dlUbIRwJJo9biP5heTx5dyqCwTo4HJf3rjTzcOS0GFIjbILc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3Woq6Ijx79j2u1qvlhauxGczuuE2pOnfE5TxDoYwUlo=; b=gNNYG9wSlLqiy47qbhMV8igLwS
 /p3MmI9TtsGpaa/EFBmQgD4Wy2IytgRfdkbZIwSwvR50cUGPg+OwW//2OlC4NLDST4RbhXrVpwHaI
 XZ9S+KMH1LPYXFYUOEEReIJJyv+tSW2vi92kFfhAZ9GlC1DhVIiJ6+4TUfAigKhEnQMo=;
Received: from merlin.infradead.org ([205.233.59.134])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hfg6K-00ClxK-Rk
 for oprofile-list@lists.sourceforge.net; Tue, 25 Jun 2019 07:42:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3Woq6Ijx79j2u1qvlhauxGczuuE2pOnfE5TxDoYwUlo=; b=ZOsUs5qSf57Dj/Pk5RYzsxw59
 UEljXgjEtZQvU9qf0h/H8kknIf7OPGmcSz8smyBFHiroy9ujI8Qo/4ckFOQzdG/uelI5b6DAirzy6
 Deq5BLpWD9gsZsC0HfxvFd9u8xeHoKc6t3lE8UHCjzBetzSIdrTiNTZOKyfN2taQgp8CnXLEEPpno
 0etHTcBjiIS3jz8xF40mDJIRn+dWXflSvl2dS9xAZScTCCvOTPrjD3oiNkgdt4nCj1//4PCBe4A8i
 DbOAA+hulLsM7sGPx247bRBzMA47vpqf9vhJRSSqMrJxqdq+acP818QPbjp1s4nSdOzxTUwQMULTc
 KwuD+LPhA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hfg5n-0002my-Rq; Tue, 25 Jun 2019 07:42:16 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 7C1BA20A0642F; Tue, 25 Jun 2019 09:42:14 +0200 (CEST)
Date: Tue, 25 Jun 2019 09:42:14 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: "Frank Ch. Eigler" <fche@redhat.com>
Subject: Re: [PATCH 2/3] module: Fix up module_notifier return values.
Message-ID: <20190625074214.GR3436@hirez.programming.kicks-ass.net>
References: <20190624091843.859714294@infradead.org>
 <20190624092109.805742823@infradead.org>
 <320564860.243.1561384864186.JavaMail.zimbra@efficios.com>
 <20190624205810.GD26422@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624205810.GD26422@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hfg6K-00ClxK-Rk
X-Mailman-Approved-At: Tue, 25 Jun 2019 13:42:15 +0000
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
 Daniel Borkmann <daniel@iogearbox.net>, Ingo Molnar <mingo@redhat.com>,
 oprofile-list@lists.sf.net, Yonghong Song <yhs@fb.com>,
 Petr Mladek <pmladek@suse.com>, Robert Richter <rric@kernel.org>,
 jikos@kernel.org, rostedt <rostedt@goodmis.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 bpf@vger.kernel.org, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 netdev <netdev@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Jessica Yu <jeyu@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Mon, Jun 24, 2019 at 04:58:10PM -0400, Frank Ch. Eigler wrote:
> Hi -
> 
> > > While auditing all module notifiers I noticed a whole bunch of fail
> > > wrt the return value. Notifiers have a 'special' return semantics.
> 
> From peterz's comments, the patches, it's not obvious to me how one is
> to choose between 0 (NOTIFY_DONE) and 1 (NOTIFY_OK) in the case of a
> routine success.

I'm not sure either; what I think I choice was:

 - if I want to completely ignore the callback, use DONE (per the
   "Don't care" comment).

 - if we finished the notifier without error, use OK or
   notifier_from_errno(0).

But yes, its a bit of a shit interface.


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
