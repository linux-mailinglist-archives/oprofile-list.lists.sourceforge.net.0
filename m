Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9625FCE1
	for <lists+oprofile-list@lfdr.de>; Thu,  4 Jul 2019 20:27:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1hj6SQ-00037S-Mt; Thu, 04 Jul 2019 18:27:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rric.net@gmail.com>) id 1hj0wF-0005rG-DX
 for oprofile-list@lists.sourceforge.net; Thu, 04 Jul 2019 12:34:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WZGgIFqntPiBjka+Oo35Sy0erf1ztfXIu7MoeeCl7sI=; b=Mhlbm5Ia/Zw3U/u5LntknN8mI9
 yvXYIA9Lt4+VrsqMPZWrg0HszOKKGmt5Inn/q1rmbSgv4JC7KhiENvnRF1uEI9pJ1Q1wxpCvuy93E
 YK6eXM3Fr/+B5wGCJfgcrYYZltvVfMmJOq6Y0f/DBIoig27D1hgKP6nTkYqt4p1hF9LQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WZGgIFqntPiBjka+Oo35Sy0erf1ztfXIu7MoeeCl7sI=; b=mj1FgKeFHPpGjA1RkTgSPaam0e
 26ierpzaDaXQcGIUkdCozXAP2E9m5pgPCYzUDcGx9Nep/GyMqwP5ReB6Uq8YYhD2+T9PsfuQMasmg
 YYkQE61WZcWM4wZVAPKlbXs5jd8LCLJYORpamNncFvtlKNjptqfra1L7MzI77GJVlhvg=;
Received: from mail-lf1-f66.google.com ([209.85.167.66])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hj0wK-007WlT-KS
 for oprofile-list@lists.sourceforge.net; Thu, 04 Jul 2019 12:34:21 +0000
Received: by mail-lf1-f66.google.com with SMTP id v85so1198231lfa.6
 for <oprofile-list@lists.sf.net>; Thu, 04 Jul 2019 05:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WZGgIFqntPiBjka+Oo35Sy0erf1ztfXIu7MoeeCl7sI=;
 b=U9w9DXvX6ZI9Ka2kloHxm/f4bFuu9xySWFoJtdxm/VYD4Rkc+XAKcMy5K7CBhciu02
 SEq/+/Pio+BB9Rco4ZaD6BQbo6UwGX6CfbA1orS2o/JIML3G8areymFCYg7SLLSgm3y2
 Cnp97gucU6HsG/BSS9GfAu2abg4TzfWCJELRa/XBgL1f/xeIB3En/q4vqN48n5X6v7fy
 x47DQ9CxjWYjlNCwtb+lMVZAz1Xj+t38c8RSSwnnzhmdHJu6mqPPM6G7fucCRDrfcmjN
 htaCUlrr8Pu2JHWIcLLuzeYPjlMTFg3a3UkK9gM+OPsHnkqzEMY4VnSl/1mq6NmYB0cV
 MwFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=WZGgIFqntPiBjka+Oo35Sy0erf1ztfXIu7MoeeCl7sI=;
 b=HMIsQzcATMdjsqfn3u+fhg0sgyQ45SnMhfvMYU4FuXdHir53mjZUC1R7CCIn0cnXen
 KnZFXmYA076ItEj3qjInyU2UBiQ+v+491teL8cN5S+ofgDCbA6XdE7hLM+ftCD9fpJze
 +HJ1E5DavkOAXT5GW0DbWSAs1NlF1KRoTEkWn25dEc1tUb+ExQB2x9OQ/dZjrh062oVg
 6+PcvGLlBesOQGCJNXzc22Ci0W86WwLHdyBUlDPyRUr5yZ6480OoTP8adUQ2TU7XOVtw
 5BdTPjBy6EBIyIffNvIjyJLsRii+KatNMniYeH+oxVYs1dyTe0hHFiH7UZzN/RKb7IBY
 lHIA==
X-Gm-Message-State: APjAAAWYgaDyiM0jvhaeOQm3YeyxPl50P3rAQFxaaXyAfoF/wPYFf8e/
 Qm5/17OmHGlvtmgmaKtliYc=
X-Google-Smtp-Source: APXvYqySbtfjf5ef9HvwH/IVOxIOPBsJfR47YKZt5UHXpmB0NuOgbexAL27Jj/lAMUuPKodQ3L6YNA==
X-Received: by 2002:ac2:4351:: with SMTP id o17mr1633834lfl.100.1562243649805; 
 Thu, 04 Jul 2019 05:34:09 -0700 (PDT)
Received: from rric.localdomain (83-233-147-164.cust.bredband2.com.
 [83.233.147.164])
 by smtp.gmail.com with ESMTPSA id b25sm866069lfq.11.2019.07.04.05.34.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 04 Jul 2019 05:34:08 -0700 (PDT)
Date: Thu, 4 Jul 2019 14:34:00 +0200
From: Robert Richter <rric@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH 2/3] module: Fix up module_notifier return values.
Message-ID: <20190704123359.jumjke6p7p5r7wbx@rric.localdomain>
References: <20190624091843.859714294@infradead.org>
 <20190624092109.805742823@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624092109.805742823@infradead.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linaro.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (rric.net[at]gmail.com)
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.66 listed in wl.mailspike.net]
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
X-Headers-End: 1hj0wK-007WlT-KS
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
Cc: Song Liu <songliubraving@fb.com>, ast@kernel.org,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>, mbenes@suse.cz,
 daniel@iogearbox.net, Ingo Molnar <mingo@redhat.com>,
 oprofile-list@lists.sf.net, Yonghong Song <yhs@fb.com>, pmladek@suse.com,
 jikos@kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, jpoimboe@redhat.com,
 Thomas Gleixner <tglx@linutronix.de>, akpm@linux-foundation.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jessica Yu <jeyu@kernel.org>,
 bpf@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On 24.06.19 11:18:45, Peter Zijlstra wrote:
> While auditing all module notifiers I noticed a whole bunch of fail
> wrt the return value. Notifiers have a 'special' return semantics.
> 
> Cc: Robert Richter <rric@kernel.org>
> Cc: Steven Rostedt <rostedt@goodmis.org>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Alexei Starovoitov <ast@kernel.org>
> Cc: Daniel Borkmann <daniel@iogearbox.net>
> Cc: Martin KaFai Lau <kafai@fb.com>
> Cc: Song Liu <songliubraving@fb.com>
> Cc: Yonghong Song <yhs@fb.com>
> Cc: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
> Cc: "Paul E. McKenney" <paulmck@linux.ibm.com>
> Cc: "Joel Fernandes (Google)" <joel@joelfernandes.org>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: oprofile-list@lists.sf.net
> Cc: linux-kernel@vger.kernel.org
> Cc: netdev@vger.kernel.org
> Cc: bpf@vger.kernel.org
> Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
> ---
>  drivers/oprofile/buffer_sync.c |    4 ++--
>  kernel/module.c                |    9 +++++----
>  kernel/trace/bpf_trace.c       |    8 ++++++--
>  kernel/trace/trace.c           |    2 +-
>  kernel/trace/trace_events.c    |    2 +-
>  kernel/trace/trace_printk.c    |    4 ++--
>  kernel/tracepoint.c            |    2 +-
>  7 files changed, 18 insertions(+), 13 deletions(-)

Reviewed-by: Robert Richter <rric@kernel.org>


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
