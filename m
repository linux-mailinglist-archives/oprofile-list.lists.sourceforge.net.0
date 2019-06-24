Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9185351B49
	for <lists+oprofile-list@lfdr.de>; Mon, 24 Jun 2019 21:15:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1hfUQz-0005it-6a; Mon, 24 Jun 2019 19:15:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <compudj@efficios.com>) id 1hfT7N-0000qu-SQ
 for oprofile-list@lists.sourceforge.net; Mon, 24 Jun 2019 17:51:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YgTDjKzulnpRdHN03BOtIF36ow3kBCQn4Ff76WlCgv4=; b=h5g6Xj4M/t1NnHzePfI0hCplzt
 HW0YMZfDt5/p0O7VDBQ90N5TlhdTg92NdPWevsRaa10kbWLw2rQa73DAzjvJ2NrXBRWQkio81H2//
 LXFF24zvqe2ROHXa33yogbymZNTpN/hSD5kf80QEqh9s3VqMxCMU6YzVpYYllyl1KWzc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YgTDjKzulnpRdHN03BOtIF36ow3kBCQn4Ff76WlCgv4=; b=QP4EGh3Tm6XWuw3fwBlkdWep8I
 llq8bAs0QUcIyq+pOrFmMJM5D+y8tvS4UBOaFgDQ+mRHSH487tTg6lGPkEPMPnExtr7joZT+L19BM
 nY7fzb6axjSpewyhZwmMOHmGiPSV5+ULd6+wzLDWGV2g/Od8RRiJUnYweWdbNXhSTMWI=;
Received: from mail.efficios.com ([167.114.142.138])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hfT7P-008BbP-RU
 for oprofile-list@lists.sourceforge.net; Mon, 24 Jun 2019 17:51:08 +0000
Received: from localhost (ip6-localhost [IPv6:::1])
 by mail.efficios.com (Postfix) with ESMTP id 048B225B682;
 Mon, 24 Jun 2019 13:50:57 -0400 (EDT)
Received: from mail.efficios.com ([IPv6:::1])
 by localhost (mail02.efficios.com [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id kubqiW463fQT; Mon, 24 Jun 2019 13:50:56 -0400 (EDT)
Received: from localhost (ip6-localhost [IPv6:::1])
 by mail.efficios.com (Postfix) with ESMTP id 7489F25B67D;
 Mon, 24 Jun 2019 13:50:56 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.efficios.com 7489F25B67D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=efficios.com;
 s=default; t=1561398656;
 bh=YgTDjKzulnpRdHN03BOtIF36ow3kBCQn4Ff76WlCgv4=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=rLqqpYL/J/9XfjfblU5xlkvGWUSmihnJQ1Jj+o+LyOs12tFBNAr1nEfFtsTTbHkTC
 z3JpCf3sxds6+xj+N6N+eAdu7PLH7IjyKqW4xBvTXwFly76m0Z2u1YBoTOLJczUkM0
 af9cCewWfDNX+TUVdoyv4nYvprFyIJtB1nvenD1tXHWmGLa8EHo2puqwvwnu2QYy1W
 PvyXm2wRevcjxansTh7n/NsUEb3gbqk1qJ6384uCbaMkHkEfq9bKz3fzKAtgks5juq
 4N4+Q4+vUaz04xgJ2Fxkw02Rkug7uDoWxy7xwJKtj0Bu9sdZNz+g/zGn2CWy9wYqoC
 9BAjlgFEQGuLA==
X-Virus-Scanned: amavisd-new at efficios.com
Received: from mail.efficios.com ([IPv6:::1])
 by localhost (mail02.efficios.com [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id 6I-HKbAyDBuh; Mon, 24 Jun 2019 13:50:56 -0400 (EDT)
Received: from mail02.efficios.com (mail02.efficios.com [167.114.142.138])
 by mail.efficios.com (Postfix) with ESMTP id 575FD25B675;
 Mon, 24 Jun 2019 13:50:56 -0400 (EDT)
Date: Mon, 24 Jun 2019 13:50:56 -0400 (EDT)
From: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
To: "Joel Fernandes, Google" <joel@joelfernandes.org>
Message-ID: <2125299316.352.1561398656224.JavaMail.zimbra@efficios.com>
In-Reply-To: <20190624155213.GB261936@google.com>
References: <20190624091843.859714294@infradead.org>
 <20190624092109.805742823@infradead.org>
 <320564860.243.1561384864186.JavaMail.zimbra@efficios.com>
 <20190624155213.GB261936@google.com>
Subject: Re: [PATCH 2/3] module: Fix up module_notifier return values.
MIME-Version: 1.0
X-Originating-IP: [167.114.142.138]
X-Mailer: Zimbra 8.8.12_GA_3803 (ZimbraWebClient - FF67 (Linux)/8.8.12_GA_3794)
Thread-Topic: module: Fix up module_notifier return values.
Thread-Index: YqiVsEGYR43tan1IptAyCZzN3mIl4w==
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [167.114.142.138 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hfT7P-008BbP-RU
X-Mailman-Approved-At: Mon, 24 Jun 2019 19:15:20 +0000
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
Cc: Song Liu <songliubraving@fb.com>, Peter Zijlstra <peterz@infradead.org>,
 Alexei Starovoitov <ast@kernel.org>, paulmck <paulmck@linux.ibm.com>,
 mbenes <mbenes@suse.cz>, Daniel Borkmann <daniel@iogearbox.net>,
 "Frank Ch. Eigler" <fche@redhat.com>, Ingo Molnar <mingo@redhat.com>,
 oprofile-list <oprofile-list@lists.sf.net>, Yonghong Song <yhs@fb.com>,
 Petr Mladek <pmladek@suse.com>, Robert Richter <rric@kernel.org>,
 jikos <jikos@kernel.org>, rostedt <rostedt@goodmis.org>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 bpf <bpf@vger.kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 netdev <netdev@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Jessica Yu <jeyu@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

----- On Jun 24, 2019, at 11:52 AM, Joel Fernandes, Google joel@joelfernandes.org wrote:

> On Mon, Jun 24, 2019 at 10:01:04AM -0400, Mathieu Desnoyers wrote:
>> ----- On Jun 24, 2019, at 5:18 AM, Peter Zijlstra peterz@infradead.org wrote:
>> 
>> > While auditing all module notifiers I noticed a whole bunch of fail
>> > wrt the return value. Notifiers have a 'special' return semantics.
>> > 
>> > Cc: Robert Richter <rric@kernel.org>
>> > Cc: Steven Rostedt <rostedt@goodmis.org>
>> > Cc: Ingo Molnar <mingo@redhat.com>
>> > Cc: Alexei Starovoitov <ast@kernel.org>
>> > Cc: Daniel Borkmann <daniel@iogearbox.net>
>> > Cc: Martin KaFai Lau <kafai@fb.com>
>> > Cc: Song Liu <songliubraving@fb.com>
>> > Cc: Yonghong Song <yhs@fb.com>
>> > Cc: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
>> > Cc: "Paul E. McKenney" <paulmck@linux.ibm.com>
>> > Cc: "Joel Fernandes (Google)" <joel@joelfernandes.org>
>> > Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
>> > Cc: Thomas Gleixner <tglx@linutronix.de>
>> > Cc: oprofile-list@lists.sf.net
>> > Cc: linux-kernel@vger.kernel.org
>> > Cc: netdev@vger.kernel.org
>> > Cc: bpf@vger.kernel.org
>> > Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
>> 
>> Thanks Peter for looking into this, especially considering your
>> endless love for kernel modules! ;)
>> 
>> It's not directly related to your changes, but I notice that
>> kernel/trace/trace_printk.c:hold_module_trace_bprintk_format()
>> appears to leak memory. Am I missing something ?
> 
> Could you elaborate? Do you mean there is no MODULE_STATE_GOING notifier
> check? If that's what you mean then I agree, there should be some place
> where the format structures are freed when the module is unloaded no?

Yes, the lack of GOING notifier is worrying considering that GOING
performs memory allocation.

Thanks,

Mathieu

-- 
Mathieu Desnoyers
EfficiOS Inc.
http://www.efficios.com


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
