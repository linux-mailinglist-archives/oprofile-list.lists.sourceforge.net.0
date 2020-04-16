Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5841AC124
	for <lists+oprofile-list@lfdr.de>; Thu, 16 Apr 2020 14:23:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jP3YX-00080d-D1; Thu, 16 Apr 2020 12:23:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mcgrof@gmail.com>) id 1jOyUm-0001dv-Vi
 for oprofile-list@lists.sourceforge.net; Thu, 16 Apr 2020 06:59:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5dFbWwPMLFdLLdwYDe+nstRRn0RE7K4B+Qa2HC0tOOY=; b=Qmv0imXdLhf8y1TIuLRRMw6Pnv
 0Dba0GzUo9/o2QkG2FlO94BibGm6jUC2orFYIE/GX3relacRdCgXjY0WWybdBuqF79KB/2nBbUHwd
 s3W84HY34DJbjKYmBKryvSNlWCs39WUtFyFFsXLnsvLZH6KowZwx8Zhynp48AQ90QbAk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5dFbWwPMLFdLLdwYDe+nstRRn0RE7K4B+Qa2HC0tOOY=; b=Ep93wBqQSXhdWcNEk4+AUOjHtj
 O6yjFv3nUv+a3S+Uc9N8RD+cPpFWDdc6GQpQzQiCoGXvyPaP2Gg6PZWZAfHiGeR0BAWS43XM7UbAO
 bTliGDKovYVyAaeXbvBdwsIRXsHqVZdoKrZXWvzssTxm6pa6xsfOXzhytU83iGMG1tAU=;
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jOyUk-00HVhu-IW
 for oprofile-list@lists.sourceforge.net; Thu, 16 Apr 2020 06:59:32 +0000
Received: by mail-pf1-f195.google.com with SMTP id r14so28409pfg.2
 for <oprofile-list@lists.sf.net>; Wed, 15 Apr 2020 23:59:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5dFbWwPMLFdLLdwYDe+nstRRn0RE7K4B+Qa2HC0tOOY=;
 b=m93QxV1R8j4eSMTrQWOlsz1PzjlsnQOGvj9LRBm/UTWjD/M+RWTJtPCxnUkHqq2UWt
 +/V+wfut60qlqatWr16N61CJxK4Z3MK2eFcU2V3mhsuD4uMkOUliYXFaSGrYxSbB2lip
 3qiBgENZdpMLyVMgvlvTKFuM2WzGXdHfQmZy+g1V2yo127emy1XIK5HQXpxA5+rtmlPw
 F45RnUscXvzMEgMr4ETVxxXjGEISOLMmEjG9UkClBIKtduGbruJ5B00ID8YPTVeKHT/O
 VrAtLpOUE1t7ICvz9e3m7NuaD0sWYR+L3V6FpjXggecVKyHj2hTYqzmlazsUWI8sNaRM
 pzcw==
X-Gm-Message-State: AGi0Pubm4yBi2d09tC7BKZCf3UCHpegeYzBJQOPoubhha47XG3hhfOhB
 R4/h3t26Z7P+2+lYrqlk+2Y=
X-Google-Smtp-Source: APiQypKYSV9pWERJBF2Lj8aG00aAhQIVsOnD/2ZHIeLFO4IUsilJzt/FXcAdiCflTz1lmRzioNqQ9Q==
X-Received: by 2002:a65:68c9:: with SMTP id k9mr31759314pgt.355.1587020364771; 
 Wed, 15 Apr 2020 23:59:24 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id ep21sm1550532pjb.24.2020.04.15.23.59.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 23:59:24 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 6A84140277; Thu, 16 Apr 2020 06:59:22 +0000 (UTC)
Date: Thu, 16 Apr 2020 06:59:22 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Emanuele Giuseppe Esposito <eesposit@redhat.com>
Subject: Re: [PATCH 0/8] Simplefs: group and simplify linux fs code
Message-ID: <20200416065922.GS11244@42.do-not-panic.com>
References: <20200414124304.4470-1-eesposit@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414124304.4470-1-eesposit@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (mcgrof[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.7 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jOyUk-00HVhu-IW
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

On Tue, Apr 14, 2020 at 02:42:54PM +0200, Emanuele Giuseppe Esposito wrote:
> This series of patches introduce wrappers for functions,
> arguments simplification in functions calls and most importantly
> groups duplicated code in a single header, simplefs, to avoid redundancy
> in the linux fs, especially debugfs and tracefs.

The general goal seems worthy, but here I don't see explained why hasn't
this gone through libfs, and what the intention was long term. For
instance, you added some other generalizations which you have found. It
was not clear that this was the goal here, to expand on these paths.

What if common code on fs is found which are not part of debugfs and
tracefs, how does one decide if to move to libfs or simplefs?

  Luis


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
