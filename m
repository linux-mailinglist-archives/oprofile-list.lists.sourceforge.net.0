Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B8651B46
	for <lists+oprofile-list@lfdr.de>; Mon, 24 Jun 2019 21:15:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1hfUQz-0005if-58; Mon, 24 Jun 2019 19:15:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joel@joelfernandes.org>) id 1hfRfl-0005Fp-JW
 for oprofile-list@lists.sourceforge.net; Mon, 24 Jun 2019 16:18:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Px55vsxlWUa+5ZAUavHWxhk2yXQs9ETqoP8b6WxOkms=; b=OAbE4etbVtuPLz6DEBNMxYW0wR
 hl6GJK+jbDS19GujJ+jFLdVsUns17HGknpe2gOlw604DAAIezQNEVn+gPAArAsmONtXlhySpxiO7V
 OKVjlzqjonZYbNO/gkpAItvXZNOvi2ZtAHpbY4HipZy3lMyzMUDUyVcKHdrMDkdWAwxU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Px55vsxlWUa+5ZAUavHWxhk2yXQs9ETqoP8b6WxOkms=; b=UBpSIw22e8CQi07/igKVy0q9tu
 6LKscYTKvONbTERkRTHw34YKDNqB9L+MHD38pQspr8cjSNADbXlGDv2A8uYCRjkJP2hfXSDCyWvoj
 QRI0icbHQCIwZNSRNh3IoLdpjxplgqkqDQoub7ynJYp6GVXAeTGr7NNAxvsv2RcbHeaQ=;
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hfRfq-0082xw-Bu
 for oprofile-list@lists.sourceforge.net; Mon, 24 Jun 2019 16:18:31 +0000
Received: by mail-qk1-f194.google.com with SMTP id c11so10177790qkk.8
 for <oprofile-list@lists.sf.net>; Mon, 24 Jun 2019 09:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Px55vsxlWUa+5ZAUavHWxhk2yXQs9ETqoP8b6WxOkms=;
 b=nMVpZ6t6yvkRI8JTB2fGMerawDsRhL0/iqvwIvHdoVXopMnMqU5PI/pn1syMvLqGms
 Rw2EcKCOL3MuPgQ97OgUvIP4Ut8lxtGkmBXc55ysvSxoamyi1P4HLcsx39d+QMyY81xQ
 2PQDgpcf2DGfbHVXO4YLvpkFB0G8WZeBEyQNI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Px55vsxlWUa+5ZAUavHWxhk2yXQs9ETqoP8b6WxOkms=;
 b=CQA2qg1JUzx4PAP3tmbt/XhjnT5EVH6rQN1Dt2BaZbbjVPbfh0HCYEUHbfV8FQHAso
 8Q8RdyazGX+WVMRE0MfoFCwIJE/6B05a2QToQpZrjMdKorGvmiocPYH+QE2ga+XX81WA
 bmqW5shuJRvLnCUHTZFtrzsNTZGorO2vQcyINEtK9pPVJSZObwt9PklaX8y0DKKgixnx
 NOFvUrUAJX8y/12VDkuiGIXdvgT+zS1BjAwtfSaH8n3bX9DXWa6BKRsTCxy3q/yud5ms
 T3Ka0tUhl9ceciBzt8GcK8JDvFZHT3538YPINRBQyzmofQAye3NNQiRC6nadAEg42bbJ
 mvKQ==
X-Gm-Message-State: APjAAAXWmKENFJTeCYZb2jztbuXtNBImuTVcy+0p5TqxM7Xj1VpTvovg
 z/3CmXaiH5IumgFV5HF+1aSq3+/sSzoJjA==
X-Google-Smtp-Source: APXvYqz62x1HJVduMVLToA+9rhh8i9WHHNxECpdrbrsdb/x4cV/E3lswnR5g/BIEwSHX7AR5Oxy1Rg==
X-Received: by 2002:a37:ac14:: with SMTP id
 e20mr120205143qkm.243.1561391535368; 
 Mon, 24 Jun 2019 08:52:15 -0700 (PDT)
Received: from localhost ([2620:15c:6:12:9c46:e0da:efbf:69cc])
 by smtp.gmail.com with ESMTPSA id k58sm7173879qtc.38.2019.06.24.08.52.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 24 Jun 2019 08:52:14 -0700 (PDT)
Date: Mon, 24 Jun 2019 11:52:13 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Subject: Re: [PATCH 2/3] module: Fix up module_notifier return values.
Message-ID: <20190624155213.GB261936@google.com>
References: <20190624091843.859714294@infradead.org>
 <20190624092109.805742823@infradead.org>
 <320564860.243.1561384864186.JavaMail.zimbra@efficios.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <320564860.243.1561384864186.JavaMail.zimbra@efficios.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hfRfq-0082xw-Bu
X-Mailman-Approved-At: Mon, 24 Jun 2019 19:15:19 +0000
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
 mbenes@suse.cz, Daniel Borkmann <daniel@iogearbox.net>,
 "Frank Ch. Eigler" <fche@redhat.com>, Ingo Molnar <mingo@redhat.com>,
 oprofile-list@lists.sf.net, Yonghong Song <yhs@fb.com>,
 Petr Mladek <pmladek@suse.com>, Robert Richter <rric@kernel.org>,
 jikos@kernel.org, rostedt <rostedt@goodmis.org>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 bpf@vger.kernel.org, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 netdev <netdev@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Jessica Yu <jeyu@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Mon, Jun 24, 2019 at 10:01:04AM -0400, Mathieu Desnoyers wrote:
> ----- On Jun 24, 2019, at 5:18 AM, Peter Zijlstra peterz@infradead.org wrote:
> 
> > While auditing all module notifiers I noticed a whole bunch of fail
> > wrt the return value. Notifiers have a 'special' return semantics.
> > 
> > Cc: Robert Richter <rric@kernel.org>
> > Cc: Steven Rostedt <rostedt@goodmis.org>
> > Cc: Ingo Molnar <mingo@redhat.com>
> > Cc: Alexei Starovoitov <ast@kernel.org>
> > Cc: Daniel Borkmann <daniel@iogearbox.net>
> > Cc: Martin KaFai Lau <kafai@fb.com>
> > Cc: Song Liu <songliubraving@fb.com>
> > Cc: Yonghong Song <yhs@fb.com>
> > Cc: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
> > Cc: "Paul E. McKenney" <paulmck@linux.ibm.com>
> > Cc: "Joel Fernandes (Google)" <joel@joelfernandes.org>
> > Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > Cc: Thomas Gleixner <tglx@linutronix.de>
> > Cc: oprofile-list@lists.sf.net
> > Cc: linux-kernel@vger.kernel.org
> > Cc: netdev@vger.kernel.org
> > Cc: bpf@vger.kernel.org
> > Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
> 
> Thanks Peter for looking into this, especially considering your
> endless love for kernel modules! ;)
> 
> It's not directly related to your changes, but I notice that
> kernel/trace/trace_printk.c:hold_module_trace_bprintk_format()
> appears to leak memory. Am I missing something ?

Could you elaborate? Do you mean there is no MODULE_STATE_GOING notifier
check? If that's what you mean then I agree, there should be some place
where the format structures are freed when the module is unloaded no?

> 
> With respect to your changes:
> Reviewed-by: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>

Looks good to me too.

Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>

Could we CC stable so that the fix is propagated to older kernels?

thanks,

 - Joel


> I have a similar erroneous module notifier return value pattern
> in lttng-modules as well. I'll go fix it right away. CCing
> Frank Eigler from SystemTAP which AFAIK use a copy of
> lttng-tracepoint.c in their project, which should be fixed
> as well. I'm pasting the lttng-modules fix below.
> 
> Thanks!
> 
> Mathieu
> 
> --
> 
> commit 5eac9d146a7d947f0f314c4f7103c92cbccaeaf3
> Author: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
> Date:   Mon Jun 24 09:43:45 2019 -0400
> 
>     Fix: lttng-tracepoint module notifier should return NOTIFY_OK
>     
>     Module notifiers should return NOTIFY_OK on success rather than the
>     value 0. The return value 0 does not seem to have any ill side-effects
>     in the notifier chain caller, but it is preferable to respect the API
>     requirements in case this changes in the future.
>     
>     Notifiers can encapsulate a negative errno value with
>     notifier_from_errno(), but this is not needed by the LTTng tracepoint
>     notifier.
>     
>     The approach taken in this notifier is to just print a console warning
>     on error, because tracing failure should not prevent loading a module.
>     So we definitely do not want to stop notifier iteration. Returning
>     an error without stopping iteration is not really that useful, because
>     only the return value of the last callback is returned to notifier chain
>     caller.
>     
>     Signed-off-by: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
> 
> diff --git a/lttng-tracepoint.c b/lttng-tracepoint.c
> index bbb2c7a4..8298b397 100644
> --- a/lttng-tracepoint.c
> +++ b/lttng-tracepoint.c
> @@ -256,7 +256,7 @@ int lttng_tracepoint_coming(struct tp_module *tp_mod)
>                 }
>         }
>         mutex_unlock(&lttng_tracepoint_mutex);
> -       return 0;
> +       return NOTIFY_OK;
>  }
>  
>  static
> 
> 
> -- 
> Mathieu Desnoyers
> EfficiOS Inc.
> http://www.efficios.com


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
