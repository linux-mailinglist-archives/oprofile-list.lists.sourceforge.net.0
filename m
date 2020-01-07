Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C34132763
	for <lists+oprofile-list@lfdr.de>; Tue,  7 Jan 2020 14:15:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1iooi7-0004E0-R0; Tue, 07 Jan 2020 13:15:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <arnd@arndb.de>) id 1iojvH-0007L5-8Y
 for oprofile-list@lists.sourceforge.net; Tue, 07 Jan 2020 08:09:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Vpt3sIBhdxGi8MPETH2WjtJmB8FCoMGe/59w/aO73jA=; b=H6UXfszJIMLvJflJk/SSk7AoUi
 +mOPCpwbPnyPtbNbQETzRaljYi6+FwKUGFCyyrrRZQE/KSjZ/5jwf9P9ozmqf3fN8lIM2EY3aJZCu
 t2tdIek4jszYNG+NEUwLX/OGL4GiizfMSKBHp3gvrekfZ79JyAHzP/eYa7iEBeeGGenk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Vpt3sIBhdxGi8MPETH2WjtJmB8FCoMGe/59w/aO73jA=; b=Cm1+U+4fKcP01og7CGC9e/9/xy
 3qCSOuF+rS3VsiLqSnokM3pv+ta1URQvAE3fLqZhSDC02VFzHABUjVXkKj9GUlKTCHPk/05EJwFJb
 eYoCJwF9GqkvS0u3Yo/R8UgZHU15jU/I0+HxhIZxjdLiiN81k4qC9XrKlpSGgXdPgBdQ=;
Received: from mout.kundenserver.de ([212.227.126.131])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iojvA-00CG5o-Oj
 for oprofile-list@lists.sourceforge.net; Tue, 07 Jan 2020 08:09:06 +0000
Received: from mail-qt1-f179.google.com ([209.85.160.179]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MJEIl-1j9QXC32Hz-00KjLr for <oprofile-list@lists.sf.net>; Tue, 07 Jan
 2020 09:08:49 +0100
Received: by mail-qt1-f179.google.com with SMTP id l12so44626649qtq.12
 for <oprofile-list@lists.sf.net>; Tue, 07 Jan 2020 00:08:49 -0800 (PST)
X-Gm-Message-State: APjAAAWLFIPPLOCauGaWIaBfA5rfBNvH8HAJYlnxAql6ViLWBKJN8JO3
 WZpviPbJ8IRF6Pmw321N1QMTZjkvVP8fiwR2/nw=
X-Google-Smtp-Source: APXvYqwKEIiKCB0yEFWoleSSKNKnD8FxkV92VMH6CsqWOD/uB6nKGXweURlmBCLGX81V2orjzTiBfhUxphLe4QjQbqc=
X-Received: by 2002:ac8:709a:: with SMTP id y26mr78377768qto.304.1578384528657; 
 Tue, 07 Jan 2020 00:08:48 -0800 (PST)
MIME-Version: 1.0
References: <20200102145552.1853992-1-arnd@arndb.de>
 <20200102145552.1853992-3-arnd@arndb.de>
 <87woa410nx.fsf@mpe.ellerman.id.au>
In-Reply-To: <87woa410nx.fsf@mpe.ellerman.id.au>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 7 Jan 2020 09:08:31 +0100
X-Gmail-Original-Message-ID: <CAK8P3a17GshP1KmCpvCkWGDGJLC_JrGUFQZTLbfe5+sSwTjyxw@mail.gmail.com>
Message-ID: <CAK8P3a17GshP1KmCpvCkWGDGJLC_JrGUFQZTLbfe5+sSwTjyxw@mail.gmail.com>
Subject: Re: [PATCH v3 02/22] compat: provide compat_ptr() on all architectures
To: Michael Ellerman <mpe@ellerman.id.au>
X-Provags-ID: V03:K1:VdPk15TywoB1nHu+3Ryiqmo7vmkd/f+435acjLsGN8rdoQY0zO2
 2hDBCyN4aOzF96uxasnMqoBISUszRASpTg1Vn8ntOwVM5cq09D6eIzHC6HwQYNb4fA7uNqF
 HLw0BItGGKnzBjmY/S0r79dLdz8iY6mFKwjHC7K22izm/dD6Xxp2aL+RzM7C3YJXgkwaNRZ
 pVdLrzp1N9+iIdqxDj7XQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pQpzUzy0Cxc=:u9I1eqoj730oLKKx8wJKE5
 NEkID9IT7h1/5dz/QfdCRyBL8naQM6udmYJXOzG9DyPDM9B9p109oVewb6gI2oXEnCXUmI+SW
 HwvkdwgGAiwL6cG6YoZB8E+JdhIn5OH7GXr9nP4fHpCoJ1PlAwkszrXe3r9d4Xl1N+tNZNS1D
 hEiAVtGCHYKESnQm2Wy9O7Bp7eAtNcw80h6t7qsRlyPRclokDU8l5W45ZRrLmzQTBhwrZmKkl
 40X9bX0/rJTFTHiOO+asPDbtdsku1QqRU+durm5gOnNk2Lmtd/DDRGdsxliQ65vUkckjRs3o6
 00MSfJrToaW43H36mHlJhGh1FUq/A/8aXNuYLcHwh+DrmUJBDYuvDDh5Z6Rm2Ib/hSd9crfNl
 nNJdYeOps+QVgLVBlDqd2RV7u6QDOhoRvzIHi86/H28n1HgVRRiAosln94YDctW7MPLqiF3pf
 psPx2Wbi/SpYkx4DKRqGZG8DjgIsZ1muYJtafxuHAJ9jUF7g+nCnBwywB1J4Ob1t68Np5hKc9
 f95uFU0EjWhuXZRaMBbsoSEjqnvt6WuKwGaxum+E+HdhxxV6dHrgfyBNPokidGGYGjfuCu7fq
 Y//E1cKlBfRQ1rShBntEox9b0sSpFMglJsu0qvtEKInL3D1D/vr7YW5iixgbvmCT3UcrpqW/V
 E/qcup5I1kUYaHVNQ/oj/JYHfDk8JmUj1LsF2ffXRe6J45ObJaMeGFHOlBW47HeAs9t+kp9sb
 Kvhw3keKBdU9w5qxBdbuAik56Lbwg7vUID+6OC34rnt4VOfrqwxT+vrJGQE6rUwzNUHnQH2eT
 nPK9fP8QUvFyRmOY0omww75hUmCvWsnyYtFhdwuB/GR0FZ41gwW4/DDMRFLkWAXw25/hDqBA1
 vJyUjUY7zZgw1r105CuA==
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arndb.de]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iojvA-00CG5o-Oj
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
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux <sparclinux@vger.kernel.org>, Will Deacon <will@kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Paul Burton <paulburton@kernel.org>,
 Helge Deller <deller@gmx.de>, the arch/x86 maintainers <x86@kernel.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 oprofile-list@lists.sf.net, Catalin Marinas <catalin.marinas@arm.com>,
 James Hogan <jhogan@kernel.org>, Robert Richter <rric@kernel.org>,
 Vasily Gorbik <gor@linux.ibm.com>, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 Parisc List <linux-parisc@vger.kernel.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Tue, Jan 7, 2020 at 3:05 AM Michael Ellerman <mpe@ellerman.id.au> wrote:
> Arnd Bergmann <arnd@arndb.de> writes:
> > +
> > +static inline compat_uptr_t ptr_to_compat(void __user *uptr)
> > +{
> > +     return (u32)(unsigned long)uptr;
> > +}
>
> Is there a reason we cast to u32 directly instead of using compat_uptr_t?

Probably Al found this to be more explicit at the time when he introduced
it on all the architectures in 2005. I just moved it here and kept the
definition.

       Arnd


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
