Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 981521AC123
	for <lists+oprofile-list@lfdr.de>; Thu, 16 Apr 2020 14:23:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jP3YX-00080T-BO; Thu, 16 Apr 2020 12:23:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mcgrof@gmail.com>) id 1jOyOP-0004la-Az
 for oprofile-list@lists.sourceforge.net; Thu, 16 Apr 2020 06:52:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u9FJuUtFkBVVe754ASFiMsIrGIfB932jO4gCk5SijoQ=; b=iTt4Sgxw3u8UrGvvoRxIHIjJBp
 oDENpb7O2cVWL3zBni2lhUpq22PkNmuhCbS1tvQQlrYEJYzJP/NW+0GHyRjDZANv93+M6hJrr7x4Y
 JxIsE27iJRmn+nqd6DM8zijYjyVoVV/ZCIE8G2fUyI2dt7n55QVGDAiZclQWJR4GRM9c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=u9FJuUtFkBVVe754ASFiMsIrGIfB932jO4gCk5SijoQ=; b=ddOC6nzBu3V6ZFGVMQqNdx62Ib
 1CDl9kKdjgW9bCeKMR0mQvSJ4AaSEIJBsqPQr4whtLZH4FlKDYT/GAj55pXnQwSOW3GyJi3wR907R
 tjrUbxQATA7/gQ3rP6uGYlnXamkUdOKf20vCvLrnoYYigt2PvGNIfIUkYmve0CAa35bg=;
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jOyON-001W1s-SC
 for oprofile-list@lists.sourceforge.net; Thu, 16 Apr 2020 06:52:57 +0000
Received: by mail-pf1-f193.google.com with SMTP id r20so1231725pfh.9
 for <oprofile-list@lists.sf.net>; Wed, 15 Apr 2020 23:52:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=u9FJuUtFkBVVe754ASFiMsIrGIfB932jO4gCk5SijoQ=;
 b=KHtct2/g0aP7/NBT4kiM9sxz31JofCgPPFAkb5twF41EOzX7yCkL6QFv+9H0UNf+wG
 uEMByTh3D6FdYToODokQDwxFXjzFvsA0lExcmWQYv6MiLIVyEyonwdhvjm6tqbEtClev
 0b4HHTZZr+Toa0Dsbma7a538S+rmnwt3KxzAYn77rDKzrnwU7Y1Gbx0LORm7Z2e4TpmX
 KkAPjkQcwsf2lIQruOEdkr3Tt8+Yzp4oW/w1ZnvWDeQ7gjQFgQtw7Uy5Eyx84tyf7Dg1
 Hzy0jjIt26kU/NcZsMPi+ffn4RI2k0683WMfCAbK4/vTkihGMWt/an618rWWH4j9RH5b
 EHSw==
X-Gm-Message-State: AGi0PubUOwWqWlY9jd+2TUO2RcpMtN1EsYghDWUV/URB1TWuaE2Xj32o
 nneCF25K7dY8cysY45nX1LQ=
X-Google-Smtp-Source: APiQypKByakqrvOibndG+UYJLRLNL9uRjqKma5zqDprpms3bUdiJFXDLYMCGhOmLou9lQzysqs9jaQ==
X-Received: by 2002:a63:5f01:: with SMTP id t1mr29126955pgb.186.1587019969901; 
 Wed, 15 Apr 2020 23:52:49 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id o125sm14400027pgo.74.2020.04.15.23.52.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 23:52:48 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 8222840277; Thu, 16 Apr 2020 06:52:47 +0000 (UTC)
Date: Thu, 16 Apr 2020 06:52:47 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Emanuele Giuseppe Esposito <eesposit@redhat.com>
Subject: Re: [PATCH 2/8] fs: extract simple_pin/release_fs to separate files
Message-ID: <20200416065247.GR11244@42.do-not-panic.com>
References: <20200414124304.4470-1-eesposit@redhat.com>
 <20200414124304.4470-3-eesposit@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414124304.4470-3-eesposit@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (mcgrof[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.7 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jOyON-001W1s-SC
X-Mailman-Approved-At: Thu, 16 Apr 2020 12:23:44 +0000
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
Cc: Song Liu <songliubraving@fb.com>, linux-usb@vger.kernel.org,
 bpf@vger.kernel.org, "Rafael J. Wysocki" <rafael@kernel.org>,
 David Airlie <airlied@linux.ie>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Alexei Starovoitov <ast@kernel.org>, dri-devel@lists.freedesktop.org,
 "J. Bruce Fields" <bfields@fieldses.org>,
 Joseph Qi <joseph.qi@linux.alibaba.com>, Hugh Dickins <hughd@google.com>,
 Paul Mackerras <paulus@samba.org>, John Johansen <john.johansen@canonical.com>,
 netdev@vger.kernel.org, linux-s390@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 Christoph Hellwig <hch@lst.de>, Andrew Donnellan <ajd@linux.ibm.com>,
 Matthew Garrett <matthew.garrett@nebula.com>, linux-efi@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Daniel Borkmann <daniel@iogearbox.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, linux-rdma@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, Mark Fasheh <mark@fasheh.com>,
 Anton Vorontsov <anton@enomsg.org>, John Fastabend <john.fastabend@gmail.com>,
 James Morris <jmorris@namei.org>, Ard Biesheuvel <ardb@kernel.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Doug Ledford <dledford@redhat.com>,
 oprofile-list@lists.sf.net, Yonghong Song <yhs@fb.com>,
 Ian Kent <raven@themaw.net>, Andrii Nakryiko <andriin@fb.com>,
 Alexey Dobriyan <adobriyan@gmail.com>, "Serge E. Hallyn" <serge@hallyn.com>,
 Robert Richter <rric@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Vasily Gorbik <gor@linux.ibm.com>, Tony Luck <tony.luck@intel.com>,
 Kees Cook <keescook@chromium.org>, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 autofs@vger.kernel.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Mike Marciniszyn <mike.marciniszyn@intel.com>,
 Maxime Ripard <mripard@kernel.org>, linux-fsdevel@vger.kernel.org,
 "Manoj N. Kumar" <manoj@linux.ibm.com>, Uma Krishnan <ukrishn@linux.ibm.com>,
 Jakub Kicinski <kuba@kernel.org>, KP Singh <kpsingh@chromium.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 "Matthew R. Ochs" <mrochs@linux.ibm.com>,
 "David S. Miller" <davem@davemloft.net>, Felipe Balbi <balbi@kernel.org>,
 linux-nfs@vger.kernel.org, Iurii Zaikin <yzaikin@google.com>,
 linux-scsi@vger.kernel.org, "Martin K. Petersen" <martin.petersen@oracle.com>,
 linux-mm@kvack.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dennis Dalessandro <dennis.dalessandro@intel.com>,
 Miklos Szeredi <miklos@szeredi.hu>, linux-kernel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>,
 linux-security-module@vger.kernel.org, Chuck Lever <chuck.lever@oracle.com>,
 Jeremy Kerr <jk@ozlabs.org>, Daniel Vetter <daniel@ffwll.ch>,
 Colin Cross <ccross@android.com>, Frederic Barrat <fbarrat@linux.ibm.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Mike Kravetz <mike.kravetz@oracle.com>, linuxppc-dev@lists.ozlabs.org,
 Martin KaFai Lau <kafai@fb.com>, Joel Becker <jlbec@evilplan.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Tue, Apr 14, 2020 at 02:42:56PM +0200, Emanuele Giuseppe Esposito wrote:
> We will augment this family of functions with inode management.  To avoid
> littering include/linux/fs.h and fs/libfs.c, move them to a separate header,
> with a Kconfig symbol to enable them.

If there are no functional changes, indicating that on the commit log
will make the review much easier.

> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index d1398cef3b18..fc38a6f0fc11 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -288,12 +288,16 @@ config STRIP_ASM_SYMS
>  
>  config READABLE_ASM
>  	bool "Generate readable assembler code"
> -	depends on DEBUG_KERNEL
> -	help
> -	  Disable some compiler optimizations that tend to generate human unreadable
> -	  assembler output. This may make the kernel slightly slower, but it helps
> -	  to keep kernel developers who have to stare a lot at assembler listings
> -	  sane.
> +    depends on DEBUG_KERNEL
> +    help
> +      Disable some compiler optimizations that tend to generate human unreadable
> +      assembler output. This may make the kernel slightly slower, but it helps
> +      to keep kernel developers who have to stare a lot at assembler listings
> +      sane.
> +	  

This minor change above should just be a separate patch. Its just noise
otherwise.

> +config DEBUG_FS
> +	bool "Debug Filesystem"
> +	select SIMPLEFS

I'm at a loss reviewing this,  my lib/Kconfig.debug already has a config
DEBUG_FS.  But above I see it is being added for the very first time.
I'm sure there is some odd conditional which is obscuring this, can
this be explained in the commit log?

  Luis


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
