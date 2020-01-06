Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AEB413177F
	for <lists+oprofile-list@lfdr.de>; Mon,  6 Jan 2020 19:30:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1ioX9G-0006ua-MH; Mon, 06 Jan 2020 18:30:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <will@kernel.org>) id 1ioWba-0005G7-6v
 for oprofile-list@lists.sourceforge.net; Mon, 06 Jan 2020 17:55:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xolrUFuFo0veWVzAhMA1xOuRB530jYpYhGCXctZ36sE=; b=I8eWuld+eYnB9EQm9lYoqzC0jc
 IG97FVh9c9XItxyabb7p2NbrLGo56FbswBzTM6q1B6pu44HTb208ZbyqseXv8AtuQkWfPsvBZoqsR
 nW/iVK8ByxTIoLKvJut26abACxbMAtqpCzEZSTiQyj/3Bx8i80UoGChyLSsePxziDx9c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xolrUFuFo0veWVzAhMA1xOuRB530jYpYhGCXctZ36sE=; b=KMCOxEZhmUz1VkJIOsezP6SObN
 vAQqSsP++mquIj7urerCNBjkIqWJr00ZXQmQGdXfTHzJh7EiATGNPJ7gFPRCqP65KTYzJzqOeUfrl
 Yt2+OHfuEoBIRXKFWLE/GuqG0LQHZYLw+9TsfeUh8tosGG2hcRFpE37yUE3LXrqIDstk=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ioWbX-00CXD2-J7
 for oprofile-list@lists.sourceforge.net; Mon, 06 Jan 2020 17:55:54 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 249F42072A;
 Mon,  6 Jan 2020 17:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578332435;
 bh=2O0W/tynC6b80YiiQJpFk+G/MQLdNHQcIH7GT7Csbyc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZdvlhiL42A1vrTkEu8EuJM3kwhLOD5LAtOJZ2dMMQ+Trc98AtvLqwbzxFuJAY3qGu
 AR9tbjzyxO35jsrOCkr4krGu09W0XFU5HVDpoh1Voqju+MowENLQR9vGskyNASKx+3
 by7d90gv3cMm9dd0JtCc6D+hev+8ErOYAiM2/FCs=
Date: Mon, 6 Jan 2020 17:40:28 +0000
From: Will Deacon <will@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v3 02/22] compat: provide compat_ptr() on all architectures
Message-ID: <20200106174027.GC9676@willie-the-truck>
References: <20200102145552.1853992-1-arnd@arndb.de>
 <20200102145552.1853992-3-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200102145552.1853992-3-arnd@arndb.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arndb.de]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1ioWbX-00CXD2-J7
X-Mailman-Approved-At: Mon, 06 Jan 2020 18:30:41 +0000
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mips@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org, linux-s390@vger.kernel.org,
 Paul Burton <paulburton@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Helge Deller <deller@gmx.de>, x86@kernel.org,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 oprofile-list@lists.sf.net, Catalin Marinas <catalin.marinas@arm.com>,
 James Hogan <jhogan@kernel.org>, Robert Richter <rric@kernel.org>,
 Vasily Gorbik <gor@linux.ibm.com>, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 linux-parisc@vger.kernel.org,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Thu, Jan 02, 2020 at 03:55:20PM +0100, Arnd Bergmann wrote:
> In order to avoid needless #ifdef CONFIG_COMPAT checks,
> move the compat_ptr() definition to linux/compat.h
> where it can be seen by any file regardless of the
> architecture.
> 
> Only s390 needs a special definition, this can use the
> self-#define trick we have elsewhere.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm64/include/asm/compat.h   | 17 -----------------
>  arch/mips/include/asm/compat.h    | 18 ------------------
>  arch/parisc/include/asm/compat.h  | 17 -----------------
>  arch/powerpc/include/asm/compat.h | 17 -----------------
>  arch/powerpc/oprofile/backtrace.c |  2 +-
>  arch/s390/include/asm/compat.h    |  6 +-----
>  arch/sparc/include/asm/compat.h   | 17 -----------------
>  arch/x86/include/asm/compat.h     | 17 -----------------
>  include/linux/compat.h            | 18 ++++++++++++++++++
>  9 files changed, 20 insertions(+), 109 deletions(-)

For arm64:

Acked-by: Will Deacon <will@kernel.org>

Will


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
