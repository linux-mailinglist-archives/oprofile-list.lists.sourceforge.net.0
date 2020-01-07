Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA586132764
	for <lists+oprofile-list@lfdr.de>; Tue,  7 Jan 2020 14:15:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1iooi7-0004E9-SN; Tue, 07 Jan 2020 13:15:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hpa@zytor.com>) id 1iok6k-0006kl-09
 for oprofile-list@lists.sourceforge.net; Tue, 07 Jan 2020 08:20:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=CC:To:Subject:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Date:Message-Id:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Cw0J8le6u4VIJQocdCP7hAEkrlLUYNnOzA+C/cLYBmE=; b=Mblx1h7AKaKCLGE9V+EmYPLH0B
 g972JVAz2Olxl1h50ZByLUFBXVqCmBc9FrGU3zvniBddeHg4RlSbdF41oqZhxWTqQ189pKUZpJNxl
 +nSraDO7fPKBC8v8rXN5ke2eaPNAVuTOL1lKNwxlU2CVsupZoKZ+rQ3HFKuHWOoE0NdU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=CC:To:Subject:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:In-Reply-To:Date:Message-Id:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Cw0J8le6u4VIJQocdCP7hAEkrlLUYNnOzA+C/cLYBmE=; b=DBdJqAu+bryJ5dl1KPNgrTeTcx
 ylV1YXPEaQp6meUHd4sUvnTFtIVAOxBzmjlFKYdWyM8mBn/HasSm2/UeHJnmhQtsLVkc0RV5MukMU
 J+6D9OtIEwqu5V7dfVJwVdtDyBDvQ0ya5HZoTeYMKrUe2FS0VAFY8BJY583LmGPckjjM=;
Received: from terminus.zytor.com ([198.137.202.136] helo=mail.zytor.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iok6i-00C7hw-5K
 for oprofile-list@lists.sourceforge.net; Tue, 07 Jan 2020 08:20:57 +0000
Received: from [IPv6:2601:646:8600:3281:c17a:5ef:6afe:4c48]
 ([IPv6:2601:646:8600:3281:c17a:5ef:6afe:4c48]) (authenticated bits=0)
 by mail.zytor.com (8.15.2/8.15.2) with ESMTPSA id 0078K3ZN3264752
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Tue, 7 Jan 2020 00:20:03 -0800
Authentication-Results: mail.zytor.com;
 dkim=permerror (bad message/signature format)
From: "H. Peter Anvin" <hpa@zytor.com>
Message-Id: <202001070820.0078K3ZN3264752@mail.zytor.com>
Date: Tue, 07 Jan 2020 00:19:53 -0800
User-Agent: K-9 Mail for Android
In-Reply-To: <CAK8P3a17GshP1KmCpvCkWGDGJLC_JrGUFQZTLbfe5+sSwTjyxw@mail.gmail.com>
References: <20200102145552.1853992-1-arnd@arndb.de>
 <20200102145552.1853992-3-arnd@arndb.de> <87woa410nx.fsf@mpe.ellerman.id.au>
 <CAK8P3a17GshP1KmCpvCkWGDGJLC_JrGUFQZTLbfe5+sSwTjyxw@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [PATCH v3 02/22] compat: provide compat_ptr() on all architectures
To: Arnd Bergmann <arnd@arndb.de>, Michael Ellerman <mpe@ellerman.id.au>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arndb.de]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [198.137.202.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_QP_LONG_LINE      RAW: Quoted-printable line longer than 76 chars
X-Headers-End: 1iok6i-00C7hw-5K
X-Mailman-Approved-At: Tue, 07 Jan 2020 13:15:49 +0000
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
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Paul Mackerras <paulus@samba.org>, Will Deacon <will@kernel.org>,
 Paul Burton <paulburton@kernel.org>, Helge Deller <deller@gmx.de>,
 the arch/x86 maintainers <x86@kernel.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Hogan <jhogan@kernel.org>,
 linuxppc-dev@zytor.com, Robert Richter <rric@kernel.org>,
 Vasily Gorbik <gor@linux.ibm.com>, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 Parisc List <linux-parisc@vger.kernel.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

<linuxppc-dev@lists.ozlabs.org>,oprofile-list@lists.sf.net,linux-s390 <linux-s390@vger.kernel.org>,sparclinux <sparclinux@vger.kernel.org>
From: hpa@zytor.com
Message-ID: <41625F06-D755-4C82-86DF-A9415FEEE13D@zytor.com>

On January 7, 2020 12:08:31 AM PST, Arnd Bergmann <arnd@arndb.de> wrote:
>On Tue, Jan 7, 2020 at 3:05 AM Michael Ellerman <mpe@ellerman.id.au>
>wrote:
>> Arnd Bergmann <arnd@arndb.de> writes:
>> > +
>> > +static inline compat_uptr_t ptr_to_compat(void __user *uptr)
>> > +{
>> > +     return (u32)(unsigned long)uptr;
>> > +}
>>
>> Is there a reason we cast to u32 directly instead of using
>compat_uptr_t?
>
>Probably Al found this to be more explicit at the time when he
>introduced
>it on all the architectures in 2005. I just moved it here and kept the
>definition.
>
>       Arnd

Did compat_uptr_t exist back then?
-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
