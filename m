Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E968D51D6C
	for <lists+oprofile-list@lfdr.de>; Mon, 24 Jun 2019 23:53:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1hfWuF-0003qu-89; Mon, 24 Jun 2019 21:53:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <fche@redhat.com>) id 1hfWL1-0003AH-VC
 for oprofile-list@lists.sourceforge.net; Mon, 24 Jun 2019 21:17:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/pFtRCsJEtfmt8X2G2CYNb7EpopYifScoMTYMx+nds4=; b=RlElUjgjCnuwYchNvqszRQGzzz
 FY8K3QIUC0c2C0c5WA0EGOZwCwCv+oyHpQxZOuyv2+NQBcexm+W7BeUa3ea8tUk4+GEBni/tawXVe
 6Jx4tJBi8Tzj8Q6wV38OhT8DVfUo+LMY0Jp6ptk1HGKH5/o8sGz3j8VFYCdcUtDmJUAs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/pFtRCsJEtfmt8X2G2CYNb7EpopYifScoMTYMx+nds4=; b=E//fHUhy/AfT2BbrT5DM/0nhFa
 t3+Qf3dteP3viyjfTbcrBmLM+VDnbvY0YeuV1aBupBKncoOAa677B17Rk5X0vPcPeCYD4d2Eg2Hcw
 ATEMI4MkukyRZbCJCcXLCkdi4birdzx2ovnL8muf5ggu4MCptAkFLhz8XqH2OyJFiV2I=;
Received: from mx1.redhat.com ([209.132.183.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hfWL4-008RcU-Gt
 for oprofile-list@lists.sourceforge.net; Mon, 24 Jun 2019 21:17:23 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 729B030917AC;
 Mon, 24 Jun 2019 20:58:16 +0000 (UTC)
Received: from redhat.com (ovpn-118-11.phx2.redhat.com [10.3.118.11])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E61465D717;
 Mon, 24 Jun 2019 20:58:15 +0000 (UTC)
Received: from fche by redhat.com with local (Exim 4.92)
 (envelope-from <fche@redhat.com>)
 id 1hfW2U-0003ow-Ba; Mon, 24 Jun 2019 16:58:10 -0400
Date: Mon, 24 Jun 2019 16:58:10 -0400
From: "Frank Ch. Eigler" <fche@redhat.com>
To: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Subject: Re: [PATCH 2/3] module: Fix up module_notifier return values.
Message-ID: <20190624205810.GD26422@redhat.com>
References: <20190624091843.859714294@infradead.org>
 <20190624092109.805742823@infradead.org>
 <320564860.243.1561384864186.JavaMail.zimbra@efficios.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <320564860.243.1561384864186.JavaMail.zimbra@efficios.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Mon, 24 Jun 2019 20:58:16 +0000 (UTC)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1hfWL4-008RcU-Gt
X-Mailman-Approved-At: Mon, 24 Jun 2019 21:53:42 +0000
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
 Alexei Starovoitov <ast@kernel.org>, "Joel Fernandes,
 Google" <joel@joelfernandes.org>, paulmck <paulmck@linux.ibm.com>,
 mbenes@suse.cz, Daniel Borkmann <daniel@iogearbox.net>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 Yonghong Song <yhs@fb.com>, Petr Mladek <pmladek@suse.com>,
 Robert Richter <rric@kernel.org>, jikos@kernel.org,
 rostedt <rostedt@goodmis.org>, Josh Poimboeuf <jpoimboe@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, bpf@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, netdev <netdev@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Jessica Yu <jeyu@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

Hi -

> > While auditing all module notifiers I noticed a whole bunch of fail
> > wrt the return value. Notifiers have a 'special' return semantics.

From peterz's comments, the patches, it's not obvious to me how one is
to choose between 0 (NOTIFY_DONE) and 1 (NOTIFY_OK) in the case of a
routine success.

> [...]
> I have a similar erroneous module notifier return value pattern
> in lttng-modules as well. I'll go fix it right away. CCing
> Frank Eigler from SystemTAP which AFAIK use a copy of
> lttng-tracepoint.c in their project, which should be fixed
> as well. I'm pasting the lttng-modules fix below.

Sure, following suit.  Thanks.

- FChE


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
