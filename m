Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F991A804E
	for <lists+oprofile-list@lfdr.de>; Tue, 14 Apr 2020 16:49:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jOMsj-0005sk-63; Tue, 14 Apr 2020 14:49:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gregkh@linuxfoundation.org>) id 1jOLJk-0000ZM-8P
 for oprofile-list@lists.sourceforge.net; Tue, 14 Apr 2020 13:09:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XXKtbHQiBn9iWIabO2j/9kaf/yzrfj4Idrh7tmjZGIk=; b=WfmBKuHzLOv9B1qCYRHhb0eK4x
 ZBYZ2hBuzJwyB8+BKQZMGc5X1SFFzLnZx8SvcraaAU25NNRwzCLixtg60osHz7IM4kQ6gLTknzFfc
 T/KKDkvsoNa1+jrWT8pyEsXluQVZgcqSOfp1YAWB5Ug/VwImcUgcMaJI6JIwdoxG0VkM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XXKtbHQiBn9iWIabO2j/9kaf/yzrfj4Idrh7tmjZGIk=; b=OGQlZMk48IQDwJUxOtPcICdgWw
 mjvgQma3JIg2jtxOJfUEgY3spXJrOxvcZlcbiwmExfIoQdUOvuuP0T/iHqSJsIxe4pYraMatCLsBt
 xoWc6vTkYtAT1/vKFym7/2ckzkcdfz18oO3Be4loMRwylLzb4PKc3tjT/bBf3RiTNwUE=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jOLJd-000mLE-Eh
 for oprofile-list@lists.sourceforge.net; Tue, 14 Apr 2020 13:09:32 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E704E20732;
 Tue, 14 Apr 2020 13:01:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586869303;
 bh=pWPiuEMg4P2H6WWtKoeEIrJA7EIxTZWcj4PZDt4NV3A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pOCxwRSTLKG+fKpoNN6pL7bEaN07jAmFr2DuV0C9RfMmBlnWAv1JOM6YaFZT6nGbN
 ondepi//P7WD886QVYVo/H59B351/kYJKvtSpuSM2jwd5MW3QWne+H2FTR56zMYOCD
 F4NR2z3OGSVjhXk6eqQkeYr86KdJjXN3jC1vRArk=
Date: Tue, 14 Apr 2020 15:01:40 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Emanuele Giuseppe Esposito <eesposit@redhat.com>
Subject: Re: [PATCH 4/8] fs: introduce simple_new_inode
Message-ID: <20200414130140.GD720679@kroah.com>
References: <20200414124304.4470-1-eesposit@redhat.com>
 <20200414124304.4470-5-eesposit@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414124304.4470-5-eesposit@redhat.com>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jOLJd-000mLE-Eh
X-Mailman-Approved-At: Tue, 14 Apr 2020 14:49:42 +0000
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
 netdev@vger.kernel.org, ocfs2-devel@oss.oracle.com,
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
 linux-mm@kvack.org, linux-s390@vger.kernel.org,
 Dennis Dalessandro <dennis.dalessandro@intel.com>,
 Miklos Szeredi <miklos@szeredi.hu>, linux-security-module@vger.kernel.org,
 linux-kernel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Chuck Lever <chuck.lever@oracle.com>,
 Jeremy Kerr <jk@ozlabs.org>, Daniel Vetter <daniel@ffwll.ch>,
 Colin Cross <ccross@android.com>, Frederic Barrat <fbarrat@linux.ibm.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Mike Kravetz <mike.kravetz@oracle.com>, linuxppc-dev@lists.ozlabs.org,
 Martin KaFai Lau <kafai@fb.com>, Joel Becker <jlbec@evilplan.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Tue, Apr 14, 2020 at 02:42:58PM +0200, Emanuele Giuseppe Esposito wrote:
> It is a common special case for new_inode to initialize the
> time to the current time and the inode to get_next_ino().
> Introduce a core function that does it and use it throughout
> Linux.

Shouldn't this just be called new_inode_current_time()?

How is anyone going to remember what simple_new_inode() does to the
inode structure?

> --- a/fs/libfs.c
> +++ b/fs/libfs.c
> @@ -595,6 +595,18 @@ int simple_write_end(struct file *file, struct address_space *mapping,
>  }
>  EXPORT_SYMBOL(simple_write_end);
>  
> +struct inode *simple_new_inode(struct super_block *sb)
> +{
> +	struct inode *inode = new_inode(sb);
> +	if (inode) {
> +		inode->i_ino = get_next_ino();
> +		inode->i_atime = inode->i_mtime =
> +			inode->i_ctime = current_time(inode);
> +	}
> +	return inode;
> +}
> +EXPORT_SYMBOL(simple_new_inode);

No kernel doc explaining that get_next_ino() is called already?

Please document new global functions like this so we have a chance to
know how to use them.

Also, it is almost always easier to introduce a common function, get it
merged, and _THEN_ send out cleanup functions to all of the different
subsystems to convert over to it.  Yes, it takes longer, but it makes it
possible to do this in a way that can be reviewed properly, unlike this
patch series :(

thanks,

greg k-h


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
