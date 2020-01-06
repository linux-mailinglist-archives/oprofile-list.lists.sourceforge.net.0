Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CF08B131AB3
	for <lists+oprofile-list@lfdr.de>; Mon,  6 Jan 2020 22:50:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1ioaGj-0007DM-9q; Mon, 06 Jan 2020 21:50:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hpa@zytor.com>) id 1ioXVC-0005A7-1K
 for oprofile-list@lists.sourceforge.net; Mon, 06 Jan 2020 18:53:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uFGtgLW/eUGZosJDUZ4/JsFg07VyLBe7Sl07+mpDDgQ=; b=Xz6iD/6FxD1+HER9ryJhyMfWio
 o3W8O9fwEI9FbnQohPi/GAt8WfORTvyNzlpHvI0v4S4ZxMvdE2RTxStLXtPQSyD63pP1dNJq/P4NU
 wE3EALdDIF9c1tfJymhCFEOEqSwfzYdDxwFXDt1gXUOovO+i5BAhzWq1hipq4wZ9O3ac=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uFGtgLW/eUGZosJDUZ4/JsFg07VyLBe7Sl07+mpDDgQ=; b=TKEBvIzp3ap7Irivu/TAWXO6U3
 bwMNwCLq0Uov9i2tMUlV4FMvWeUwe4fhRMU6rVR4q3V0J6ED/kcyr6zXEMU8TsQoy2ND9p6X8f7pW
 FlIZ0KtMqsnCpPEqxFFHHVLleR1BrN7A1hQkQIk/ZK+F6drvJo+KShQMqlMf7i4aIklY=;
Received: from terminus.zytor.com ([198.137.202.136] helo=mail.zytor.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ioXUy-00Ca31-V2
 for oprofile-list@lists.sourceforge.net; Mon, 06 Jan 2020 18:53:21 +0000
Received: from carbon-x1.hos.anvin.org
 ([IPv6:2601:646:8600:3280:1098:42a1:36db:233c])
 (authenticated bits=0)
 by mail.zytor.com (8.15.2/8.15.2) with ESMTPSA id 006HxLts2985803
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NO);
 Mon, 6 Jan 2020 09:59:21 -0800
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.zytor.com 006HxLts2985803
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zytor.com;
 s=2019122001; t=1578333565;
 bh=uFGtgLW/eUGZosJDUZ4/JsFg07VyLBe7Sl07+mpDDgQ=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=ZMVxUZ9JlU6up34Nb4pGcpMjDZpUuWN8ck9Y4jYgVb+4bZERRqJiFzIJhbIfziB1k
 ZNW7gtaTuWxOa78mC5Z+zWvyvNL35mkSsEZQpPBJS0ncqNieAs6YCfbCKRbkrwQtVp
 RcNn3KAZoKEYAi4ef6eQLTWSuxUbKuM7RXuWfbUO5ZflxcLL1hn2UBbGPOSqDE+xOY
 wijrfyuPLvBiBZoiKnCdjHJ9U/s6x0xqbbT7g3nNy9Gk9o9TiqnutL8djSuCUX49Qi
 Oy4XDW1jzUdxSDSG813dTCGe2xdRD1rCCDjOpb+PwCTaq1SfwtxgOn+n2Mp0OYFc4L
 +gnXlUsMkLtVw==
Subject: Re: [PATCH v3 02/22] compat: provide compat_ptr() on all architectures
To: Arnd Bergmann <arnd@arndb.de>, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
References: <20200102145552.1853992-1-arnd@arndb.de>
 <20200102145552.1853992-3-arnd@arndb.de>
From: "H. Peter Anvin" <hpa@zytor.com>
Message-ID: <e2c7b4d7-587e-f71c-f0df-810e8d9869f2@zytor.com>
Date: Mon, 6 Jan 2020 09:59:16 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200102145552.1853992-3-arnd@arndb.de>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [198.137.202.136 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: zytor.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ioXUy-00Ca31-V2
X-Mailman-Approved-At: Mon, 06 Jan 2020 21:50:35 +0000
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
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-s390@vger.kernel.org,
 Paul Burton <paulburton@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Helge Deller <deller@gmx.de>, x86@kernel.org,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 oprofile-list@lists.sf.net, Catalin Marinas <catalin.marinas@arm.com>,
 James Hogan <jhogan@kernel.org>, Robert Richter <rric@kernel.org>,
 Vasily Gorbik <gor@linux.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On 2020-01-02 06:55, Arnd Bergmann wrote:
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
> 

For x86:

Reviewed-by: H. Peter Anvin <hpa@zytor.com>

It still suffers from the zero-one-infinity rule failure of the compat
architecture as a whole, but that is a very different problem. In this case
"compat" is obviously meaning "a 32-on-64 ABI" and simply centralizes a common
API, which is a Good Thing[TM].

	-hpa



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
