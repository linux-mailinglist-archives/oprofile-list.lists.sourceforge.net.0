Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E061AC122
	for <lists+oprofile-list@lfdr.de>; Thu, 16 Apr 2020 14:23:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jP3YX-00080K-A2; Thu, 16 Apr 2020 12:23:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mcgrof@gmail.com>) id 1jOyG0-0004Kd-58
 for oprofile-list@lists.sourceforge.net; Thu, 16 Apr 2020 06:44:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eihWpoiPluNClprWA5IrbR8QX54DG9JK4Pz3fjQ6jyU=; b=YWSIXOfhsMVkm2NRJw61GZ4K3T
 LhNHhPLIKmNeJRyuXLANIoePfbTAcBJsg/ek7Wwp1sLTJelDPxj/Dz69DHR3bnEMc7AMz+3VQ42xz
 6+tZrkwpnZRbSBqx0877xyBp5M3FPYZGRyILQrNcKLnzwAI6DPJ8y77bgVwSVKv0kNDI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eihWpoiPluNClprWA5IrbR8QX54DG9JK4Pz3fjQ6jyU=; b=FqEVFBTy7qxlUK0hfNWHtJKSLm
 g+RLB2PEyzC3PKP+aZKV16VWSFO6al1lP6iyQADu5YRN2wmiRrz88uPFifzpI31mtrnDTS6VLid90
 jN4oFn1XCaRzBxLV7tE0cknhVOAUCdBvJeUxr6s8PrvfMdR3eHzHMd872aDS5KsaLmfw=;
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jOyFx-00HVAC-5W
 for oprofile-list@lists.sourceforge.net; Thu, 16 Apr 2020 06:44:16 +0000
Received: by mail-pg1-f194.google.com with SMTP id t11so1198283pgg.2
 for <oprofile-list@lists.sf.net>; Wed, 15 Apr 2020 23:44:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eihWpoiPluNClprWA5IrbR8QX54DG9JK4Pz3fjQ6jyU=;
 b=OMRwhFDRCkL63Y3Ew3g8fgJZwjrzDCxnmh5hVGMYpmL68wOSBaCW+0TRLiBtHKA6pW
 41Tk/Os7HBUXYehEBt0rEun7mMHPg7aiX6+zirT+wF1/qIS1dzFPyLWk8k0EEWuLN4mt
 8xu2i2TT4sDSAp3Xh2YhXt2Yl/7GiasOecubNWhV+8vPfkzSdZX+s6NrzhPHqR5UCgga
 POi8ux8SywSKrVR6nk/yUCd8sfFOw0AYH35ZVFdMaj0KUJAthzsuXRcZIoqkU+SOVvKT
 3s5pRcjYvVKjI9ydnaQfMf4sqBweEZsw5o3rPUIuyH4cllwwe3TqqNeeUwbMgCcyQMrJ
 qrbQ==
X-Gm-Message-State: AGi0PuZGe5sn1pDK1z/zLCJ5+mPftiyaxukb6ferU77FfcamUtbjmgjW
 cTYxJNI3wO75Yeivk10A7Ko=
X-Google-Smtp-Source: APiQypKU4BlzlMTwCZuRiYybUlVtNoxZaoUABDWWVme+WqLsgGvZg5mtQywjuvphRIQcwraiu04gQg==
X-Received: by 2002:a63:6604:: with SMTP id a4mr28659379pgc.381.1587019447416; 
 Wed, 15 Apr 2020 23:44:07 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id ml24sm1413754pjb.48.2020.04.15.23.44.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 23:44:05 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 4F61640277; Thu, 16 Apr 2020 06:44:05 +0000 (UTC)
Date: Thu, 16 Apr 2020 06:44:05 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Emanuele Giuseppe Esposito <eesposit@redhat.com>,
 Goldwyn Rodrigues <goldwynr@gmail.com>
Subject: Re: [PATCH 1/8] apparmor: just use vfs_kern_mount to make .null
Message-ID: <20200416064405.GP11244@42.do-not-panic.com>
References: <20200414124304.4470-1-eesposit@redhat.com>
 <20200414124304.4470-2-eesposit@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414124304.4470-2-eesposit@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (mcgrof[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.7 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jOyFx-00HVAC-5W
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

On Tue, Apr 14, 2020 at 02:42:55PM +0200, Emanuele Giuseppe Esposito wrote:
> aa_mk_null_file is using simple_pin_fs/simple_release_fs with local
> variables as arguments, for what would amount to a simple
> vfs_kern_mount/mntput pair if everything was inlined.  Just use
> the normal filesystem API since the reference counting is not needed
> here.

*Why* is refcounting not needed here?

   Luis

> 
> Signed-off-by: Emanuele Giuseppe Esposito <eesposit@redhat.com>
> ---
>  security/apparmor/apparmorfs.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/security/apparmor/apparmorfs.c b/security/apparmor/apparmorfs.c
> index 280741fc0f5f..828bb1eb77ea 100644
> --- a/security/apparmor/apparmorfs.c
> +++ b/security/apparmor/apparmorfs.c
> @@ -2525,14 +2525,14 @@ struct path aa_null;
>  
>  static int aa_mk_null_file(struct dentry *parent)
>  {
> -	struct vfsmount *mount = NULL;
> +	struct file_system_type *type = parent->d_sb->s_type;
> +	struct vfsmount *mount;
>  	struct dentry *dentry;
>  	struct inode *inode;
> -	int count = 0;
> -	int error = simple_pin_fs(parent->d_sb->s_type, &mount, &count);
>  
> -	if (error)
> -		return error;
> +	mount = vfs_kern_mount(type, SB_KERNMOUNT, type->name, NULL);
> +	if (IS_ERR(mount))
> +		return PTR_ERR(mount);
>  
>  	inode_lock(d_inode(parent));
>  	dentry = lookup_one_len(NULL_FILE_NAME, parent, strlen(NULL_FILE_NAME));
> @@ -2561,7 +2561,7 @@ static int aa_mk_null_file(struct dentry *parent)
>  	dput(dentry);
>  out:
>  	inode_unlock(d_inode(parent));
> -	simple_release_fs(&mount, &count);
> +	mntput(mount);
>  	return error;
>  }
>  
> -- 
> 2.25.2
> 


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
