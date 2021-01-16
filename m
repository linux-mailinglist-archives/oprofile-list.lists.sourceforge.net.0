Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8332B2F8AAF
	for <lists+oprofile-list@lfdr.de>; Sat, 16 Jan 2021 03:17:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l0b9k-0001n4-TK; Sat, 16 Jan 2021 02:17:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <viro@ftp.linux.org.uk>) id 1l0b9i-0001mw-U6
 for oprofile-list@lists.sourceforge.net; Sat, 16 Jan 2021 02:17:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JBFE7thTZ3x7frPN2CFFkHCa+qS6qB1Sb/vQ7zpX9r8=; b=XgxbbIUbgms4/zqYBCpUCl3Ut
 I9L9L+r7SQH6TxnGgGWyrC+9PjB07qdEW4ebR9xjWEIaQUuxgKy58/DtFVZWuSY6lvkPuSxZUJ0i+
 dhUfuQzyyH85rPVDHqUfqsxypDkzhlxolEVEHhb/oDAZNrg+DpVmUb9hQ4dVGWZwVfhoc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JBFE7thTZ3x7frPN2CFFkHCa+qS6qB1Sb/vQ7zpX9r8=; b=hLy/4KaYO7McmMccuV5LpeUMxY
 W6k/siSiecZDgjh1H2xhI1ic85jN141Ugm+qntjMgc4FFbKA3pzjIzShXw++wu4zSJlTixH9D5KIO
 uBmiUsZ0OGaeGGl/1QANYqgeKRdDk9wgPyAVGo1mcA0t18AUhtmOE7eqXT2Fq33bBVBE=;
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l0b9e-00HI99-0w
 for oprofile-list@lists.sourceforge.net; Sat, 16 Jan 2021 02:17:34 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1l0ahG-00Ag22-Mb; Sat, 16 Jan 2021 01:48:10 +0000
Date: Sat, 16 Jan 2021 01:48:10 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH 00/18] drivers: Remove oprofile and dcookies
Message-ID: <20210116014810.GC3579531@ZenIV.linux.org.uk>
References: <cover.1610622251.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1610622251.git.viresh.kumar@linaro.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux.org.uk]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.92.253.2 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1l0b9e-00HI99-0w
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
 anmar.oueja@linaro.org, oprofile-list@lists.sf.net,
 Vincent Guittot <vincent.guittot@linaro.org>,
 William Cohen <wcohen@redhat.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Thu, Jan 14, 2021 at 05:04:24PM +0530, Viresh Kumar wrote:
> Hello,
> 
> The "oprofile" user-space tools don't use the kernel OPROFILE support
> any more, and haven't in a long time. User-space has been converted to
> the perf interfaces.
> 
> Remove oprofile and dcookies (whose only user is oprofile) support from
> the kernel.
> 
> This was suggested here [1] earlier.
> 
> This is build/boot tested by kernel test robot (Intel) and Linaro's
> Tuxmake[2] for a lot of architectures and no failures were reported.

fs/* side is trivial (and trivially correct).

Acked-by: Al Viro <viro@zeniv.linux.org.uk>


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
