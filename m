Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 383741A804B
	for <lists+oprofile-list@lfdr.de>; Tue, 14 Apr 2020 16:49:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jOMsi-0005rh-SB; Tue, 14 Apr 2020 14:49:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <eesposit@redhat.com>) id 1jOLAh-0006cw-Al
 for oprofile-list@lists.sourceforge.net; Tue, 14 Apr 2020 13:00:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TDI13GYkH2qUTUEHiqJjSaS+DNI9ykXmZ5ji+6GiVLs=; b=Odu5LkBklaeSPBUV7rXqk54tDr
 PZmqrvvkUx7z9YZRmn0uN/GSqvZv97L5Kl2qEsa09yC2Z1i5aXddmgKWczUqXkArQpMYNg33LY9Cp
 ktMcOaECXncAZcIQtzwUiI9JKIgGZQruQ8uHjaYm9PCdWuCxbKDkfqRczhpcZvdc38eo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TDI13GYkH2qUTUEHiqJjSaS+DNI9ykXmZ5ji+6GiVLs=; b=d6T8ShTCpeNbkR2KA3oncWI1N1
 lIx84kKYNWrM5agkcnhL5Z5MCdF1N6ap/nOhwYCvmTvRYThClMg1tusFj4yEKU14T6npYtDfEXIsM
 hZxH4zBzwZBTc1odu2vUipjJDqqfXytFt2VQBm0f+2PpccXBwWplBBTOciPon8b9CHBI=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jOLAf-00Fo0S-Kj
 for oprofile-list@lists.sourceforge.net; Tue, 14 Apr 2020 13:00:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586869201;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TDI13GYkH2qUTUEHiqJjSaS+DNI9ykXmZ5ji+6GiVLs=;
 b=I+Z9qDv91oflG2cZ5OR23IsxA9khKk+LPZ5zuWiR3h7kpcQsToAkdhRDZAFfQDvjAmuLiA
 MTs+diX5yU3k5Cyoy4f1GgnArbwI6hX7/JkFq8BtB8nxeKEBef2PZjJ8E5UrASgFECFX9O
 I9OBQEKob+thGdm8G589aLRXQrV6pgI=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-505-HXDuIhinNjibz5yP-8B6-g-1; Tue, 14 Apr 2020 08:43:56 -0400
X-MC-Unique: HXDuIhinNjibz5yP-8B6-g-1
Received: by mail-wr1-f72.google.com with SMTP id m15so8673362wrb.0
 for <oprofile-list@lists.sf.net>; Tue, 14 Apr 2020 05:43:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=x+/ZOC1mSf7836cAwwnVbykodwt6tVlgKdqt25tHv64=;
 b=G0RWvkOhqTqOPLs1hO1uA5A99iKAzAyR9EVlRezrjeZoIv/BmaMr0+0A9kxLA0hlvB
 UbfwREqBmBlV0IdmUEHjaGWQiwT6u9rdd1fZZlH8oX66leZAqVjXUnbnTQpnPrrkr/TF
 LSvDqwGgdc6uXZABgCPmHtp71LvVDBkTU/meo8tRxx50SuqlhjRNtU1NQrpoGj06WZuq
 Ls10xkQyMnhLAlxXeYJB2hSASuNKMbSTB/6TKC3B/SZh8DwJG/iNFHrmcN6afJmPq9ir
 qOkh+Q2hkfqQGDMTZuSXH1qDXZ7miu4gH0FHSqGREi2OFadtwZM37uHF/M4jjaXVtObc
 oFbQ==
X-Gm-Message-State: AGi0PuZxG9XWg9tGLN4Zyd6tTmRjG8Jo4GwCyVzB67FFemZvj7hHa8oC
 BMQD/NVY8DhK9mvpLFXSDdpz52vpCg/Q7sKDWk00UM1OfN3GTvaYfpP5B7Pufg0matre5uWwR7I
 FXI4mOe6WDu1eONVUMtJbpg==
X-Received: by 2002:a05:600c:2341:: with SMTP id
 1mr22773872wmq.153.1586868234677; 
 Tue, 14 Apr 2020 05:43:54 -0700 (PDT)
X-Google-Smtp-Source: APiQypIraG6pGixHUFzxqRqz9PglkzbJN9DYHdD4iNaidN315bM8P4DtvE8Hq2CP392Ys5AI4TBbWg==
X-Received: by 2002:a05:600c:2341:: with SMTP id
 1mr22773791wmq.153.1586868234119; 
 Tue, 14 Apr 2020 05:43:54 -0700 (PDT)
Received: from localhost.localdomain ([194.230.155.210])
 by smtp.gmail.com with ESMTPSA id m14sm16948816wrs.76.2020.04.14.05.43.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 05:43:53 -0700 (PDT)
From: Emanuele Giuseppe Esposito <eesposit@redhat.com>
To: linux-nfs@vger.kernel.org
Subject: [PATCH 3/8] fs: wrap simple_pin_fs/simple_release_fs arguments in a
 struct
Date: Tue, 14 Apr 2020 14:42:57 +0200
Message-Id: <20200414124304.4470-4-eesposit@redhat.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200414124304.4470-1-eesposit@redhat.com>
References: <20200414124304.4470-1-eesposit@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jOLAf-00Fo0S-Kj
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
 netdev@vger.kernel.org, linux-s390@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Andrew Donnellan <ajd@linux.ibm.com>,
 Emanuele Giuseppe Esposito <eesposit@redhat.com>,
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
 Uma Krishnan <ukrishn@linux.ibm.com>, Maxime Ripard <mripard@kernel.org>,
 linux-fsdevel@vger.kernel.org, "Manoj N. Kumar" <manoj@linux.ibm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Jakub Kicinski <kuba@kernel.org>,
 KP Singh <kpsingh@chromium.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 "Matthew R. Ochs" <mrochs@linux.ibm.com>,
 "David S. Miller" <davem@davemloft.net>, Felipe Balbi <balbi@kernel.org>,
 Mike Marciniszyn <mike.marciniszyn@intel.com>,
 Iurii Zaikin <yzaikin@google.com>, linux-scsi@vger.kernel.org,
 "Martin K. Petersen" <martin.petersen@oracle.com>, linux-mm@kvack.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dennis Dalessandro <dennis.dalessandro@intel.com>,
 Miklos Szeredi <miklos@szeredi.hu>, linux-security-module@vger.kernel.org,
 linux-kernel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Chuck Lever <chuck.lever@oracle.com>,
 Jeremy Kerr <jk@ozlabs.org>, Daniel Vetter <daniel@ffwll.ch>,
 Colin Cross <ccross@android.com>, Frederic Barrat <fbarrat@linux.ibm.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Mike Kravetz <mike.kravetz@oracle.com>, linuxppc-dev@lists.ozlabs.org,
 Martin KaFai Lau <kafai@fb.com>, ocfs2-devel@oss.oracle.com,
 Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

Simplify passing the count and mount to simple_pin_fs and simple_release_fs,
in preparation for adding more high level operations to the simplefs API.

Signed-off-by: Emanuele Giuseppe Esposito <eesposit@redhat.com>
---
 drivers/gpu/drm/drm_drv.c       | 11 +++++------
 drivers/misc/cxl/api.c          | 13 ++++++-------
 drivers/scsi/cxlflash/ocxl_hw.c | 14 ++++++--------
 fs/binfmt_misc.c                |  9 ++++-----
 fs/configfs/mount.c             | 10 ++++------
 fs/debugfs/inode.c              | 22 ++++++++++------------
 fs/simplefs.c                   | 20 ++++++++++----------
 fs/tracefs/inode.c              | 18 ++++++++----------
 include/linux/simplefs.h        |  9 +++++++--
 security/apparmor/apparmorfs.c  | 25 ++++++++++++-------------
 security/inode.c                | 11 +++++------
 11 files changed, 77 insertions(+), 85 deletions(-)

diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index 187a61091b5c..b4b357725be2 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
@@ -514,8 +514,7 @@ EXPORT_SYMBOL(drm_dev_unplug);
  * iput(), but this way you'd end up with a new vfsmount for each inode.
  */
 
-static int drm_fs_cnt;
-static struct vfsmount *drm_fs_mnt;
+static struct simple_fs drm_fs;
 
 static int drm_fs_init_fs_context(struct fs_context *fc)
 {
@@ -534,15 +533,15 @@ static struct inode *drm_fs_inode_new(void)
 	struct inode *inode;
 	int r;
 
-	r = simple_pin_fs(&drm_fs_type, &drm_fs_mnt, &drm_fs_cnt);
+	r = simple_pin_fs(&drm_fs, &drm_fs_type);
 	if (r < 0) {
 		DRM_ERROR("Cannot mount pseudo fs: %d\n", r);
 		return ERR_PTR(r);
 	}
 
-	inode = alloc_anon_inode(drm_fs_mnt->mnt_sb);
+	inode = alloc_anon_inode(drm_fs.mount->mnt_sb);
 	if (IS_ERR(inode))
-		simple_release_fs(&drm_fs_mnt, &drm_fs_cnt);
+		simple_release_fs(&drm_fs);
 
 	return inode;
 }
@@ -551,7 +550,7 @@ static void drm_fs_inode_free(struct inode *inode)
 {
 	if (inode) {
 		iput(inode);
-		simple_release_fs(&drm_fs_mnt, &drm_fs_cnt);
+		simple_release_fs(&drm_fs);
 	}
 }
 
diff --git a/drivers/misc/cxl/api.c b/drivers/misc/cxl/api.c
index 0b8f8de7475a..6c6566d8bc17 100644
--- a/drivers/misc/cxl/api.c
+++ b/drivers/misc/cxl/api.c
@@ -32,8 +32,7 @@
 
 #define CXL_PSEUDO_FS_MAGIC	0x1697697f
 
-static int cxl_fs_cnt;
-static struct vfsmount *cxl_vfs_mount;
+static struct simple_fs cxl_fs;
 
 static int cxl_fs_init_fs_context(struct fs_context *fc)
 {
@@ -51,7 +50,7 @@ static struct file_system_type cxl_fs_type = {
 void cxl_release_mapping(struct cxl_context *ctx)
 {
 	if (ctx->kernelapi && ctx->mapping)
-		simple_release_fs(&cxl_vfs_mount, &cxl_fs_cnt);
+		simple_release_fs(&cxl_fs);
 }
 
 static struct file *cxl_getfile(const char *name,
@@ -67,20 +66,20 @@ static struct file *cxl_getfile(const char *name,
 	if (fops->owner && !try_module_get(fops->owner))
 		return ERR_PTR(-ENOENT);
 
-	rc = simple_pin_fs(&cxl_fs_type, &cxl_vfs_mount, &cxl_fs_cnt);
+	rc = simple_pin_fs(&cxl_fs, &cxl_fs_type);
 	if (rc < 0) {
 		pr_err("Cannot mount cxl pseudo filesystem: %d\n", rc);
 		file = ERR_PTR(rc);
 		goto err_module;
 	}
 
-	inode = alloc_anon_inode(cxl_vfs_mount->mnt_sb);
+	inode = alloc_anon_inode(cxl_fs.mount->mnt_sb);
 	if (IS_ERR(inode)) {
 		file = ERR_CAST(inode);
 		goto err_fs;
 	}
 
-	file = alloc_file_pseudo(inode, cxl_vfs_mount, name,
+	file = alloc_file_pseudo(inode, cxl_fs.mount, name,
 				 flags & (O_ACCMODE | O_NONBLOCK), fops);
 	if (IS_ERR(file))
 		goto err_inode;
@@ -92,7 +91,7 @@ static struct file *cxl_getfile(const char *name,
 err_inode:
 	iput(inode);
 err_fs:
-	simple_release_fs(&cxl_vfs_mount, &cxl_fs_cnt);
+	simple_release_fs(&cxl_fs);
 err_module:
 	module_put(fops->owner);
 	return file;
diff --git a/drivers/scsi/cxlflash/ocxl_hw.c b/drivers/scsi/cxlflash/ocxl_hw.c
index 429f55651090..23afde0c6c0e 100644
--- a/drivers/scsi/cxlflash/ocxl_hw.c
+++ b/drivers/scsi/cxlflash/ocxl_hw.c
@@ -30,8 +30,7 @@
 
 #define OCXLFLASH_FS_MAGIC      0x1697698f
 
-static int ocxlflash_fs_cnt;
-static struct vfsmount *ocxlflash_vfs_mount;
+static struct simple_fs ocxlflash_fs;
 
 static int ocxlflash_fs_init_fs_context(struct fs_context *fc)
 {
@@ -52,7 +51,7 @@ static struct file_system_type ocxlflash_fs_type = {
 static void ocxlflash_release_mapping(struct ocxlflash_context *ctx)
 {
 	if (ctx->mapping)
-		simple_release_fs(&ocxlflash_vfs_mount, &ocxlflash_fs_cnt);
+		simple_release_fs(&ocxlflash_fs);
 	ctx->mapping = NULL;
 }
 
@@ -80,15 +79,14 @@ static struct file *ocxlflash_getfile(struct device *dev, const char *name,
 		goto err1;
 	}
 
-	rc = simple_pin_fs(&ocxlflash_fs_type, &ocxlflash_vfs_mount,
-			   &ocxlflash_fs_cnt);
+	rc = simple_pin_fs(&ocxlflash_fs, &ocxlflash_fs_type);
 	if (unlikely(rc < 0)) {
 		dev_err(dev, "%s: Cannot mount ocxlflash pseudofs rc=%d\n",
 			__func__, rc);
 		goto err2;
 	}
 
-	inode = alloc_anon_inode(ocxlflash_vfs_mount->mnt_sb);
+	inode = alloc_anon_inode(ocxlflash_fs.mount->mnt_sb);
 	if (IS_ERR(inode)) {
 		rc = PTR_ERR(inode);
 		dev_err(dev, "%s: alloc_anon_inode failed rc=%d\n",
@@ -96,7 +94,7 @@ static struct file *ocxlflash_getfile(struct device *dev, const char *name,
 		goto err3;
 	}
 
-	file = alloc_file_pseudo(inode, ocxlflash_vfs_mount, name,
+	file = alloc_file_pseudo(inode, ocxlflash_fs.mount, name,
 				 flags & (O_ACCMODE | O_NONBLOCK), fops);
 	if (IS_ERR(file)) {
 		rc = PTR_ERR(file);
@@ -111,7 +109,7 @@ static struct file *ocxlflash_getfile(struct device *dev, const char *name,
 err4:
 	iput(inode);
 err3:
-	simple_release_fs(&ocxlflash_vfs_mount, &ocxlflash_fs_cnt);
+	simple_release_fs(&ocxlflash_fs);
 err2:
 	module_put(fops->owner);
 err1:
diff --git a/fs/binfmt_misc.c b/fs/binfmt_misc.c
index c764110f5f0b..475096a02a1a 100644
--- a/fs/binfmt_misc.c
+++ b/fs/binfmt_misc.c
@@ -64,8 +64,7 @@ typedef struct {
 
 static DEFINE_RWLOCK(entries_lock);
 static struct file_system_type bm_fs_type;
-static struct vfsmount *bm_mnt;
-static int entry_count;
+static struct simple_fs bm_fs;
 
 /*
  * Max length of the register string.  Determined by:
@@ -623,7 +622,7 @@ static void kill_node(Node *e)
 	drop_nlink(d_inode(dentry));
 	d_drop(dentry);
 	dput(dentry);
-	simple_release_fs(&bm_mnt, &entry_count);
+	simple_release_fs(&bm_fs);
 }
 
 /* /<entry> */
@@ -718,7 +717,7 @@ static ssize_t bm_register_write(struct file *file, const char __user *buffer,
 	if (!inode)
 		goto out2;
 
-	err = simple_pin_fs(&bm_fs_type, &bm_mnt, &entry_count);
+	err = simple_pin_fs(&bm_fs, &bm_fs_type);
 	if (err) {
 		iput(inode);
 		inode = NULL;
@@ -732,7 +731,7 @@ static ssize_t bm_register_write(struct file *file, const char __user *buffer,
 		if (IS_ERR(f)) {
 			err = PTR_ERR(f);
 			pr_notice("register: failed to install interpreter file %s\n", e->interpreter);
-			simple_release_fs(&bm_mnt, &entry_count);
+			simple_release_fs(&bm_fs);
 			iput(inode);
 			inode = NULL;
 			goto out2;
diff --git a/fs/configfs/mount.c b/fs/configfs/mount.c
index 331c2f064f02..a671974f5b6f 100644
--- a/fs/configfs/mount.c
+++ b/fs/configfs/mount.c
@@ -24,9 +24,8 @@
 /* Random magic number */
 #define CONFIGFS_MAGIC 0x62656570
 
-static struct vfsmount *configfs_mount = NULL;
+static struct simple_fs configfs_fs;
 struct kmem_cache *configfs_dir_cachep;
-static int configfs_mnt_count = 0;
 
 
 static void configfs_free_inode(struct inode *inode)
@@ -123,14 +122,13 @@ MODULE_ALIAS_FS("configfs");
 
 struct dentry *configfs_pin_fs(void)
 {
-	int err = simple_pin_fs(&configfs_fs_type, &configfs_mount,
-			     &configfs_mnt_count);
-	return err ? ERR_PTR(err) : configfs_mount->mnt_root;
+	int err = simple_pin_fs(&configfs_fs, &configfs_fs_type);
+	return err ? ERR_PTR(err) : configfs_fs.mount->mnt_root;
 }
 
 void configfs_release_fs(void)
 {
-	simple_release_fs(&configfs_mount, &configfs_mnt_count);
+	simple_release_fs(&configfs_fs);
 }
 
 
diff --git a/fs/debugfs/inode.c b/fs/debugfs/inode.c
index 7b9fddced48f..ea54efc74c0d 100644
--- a/fs/debugfs/inode.c
+++ b/fs/debugfs/inode.c
@@ -32,8 +32,7 @@
 
 #define DEBUGFS_DEFAULT_MODE	0700
 
-static struct vfsmount *debugfs_mount;
-static int debugfs_mount_count;
+static struct simple_fs debugfs;
 static bool debugfs_registered;
 
 /*
@@ -297,7 +296,7 @@ struct dentry *debugfs_lookup(const char *name, struct dentry *parent)
 		return NULL;
 
 	if (!parent)
-		parent = debugfs_mount->mnt_root;
+		parent = debugfs.mount->mnt_root;
 
 	dentry = lookup_positive_unlocked(name, parent, strlen(name));
 	if (IS_ERR(dentry))
@@ -316,8 +315,7 @@ static struct dentry *start_creating(const char *name, struct dentry *parent)
 	if (IS_ERR(parent))
 		return parent;
 
-	error = simple_pin_fs(&debug_fs_type, &debugfs_mount,
-			      &debugfs_mount_count);
+	error = simple_pin_fs(&debugfs, &debug_fs_type);
 	if (error) {
 		pr_err("Unable to pin filesystem for file '%s'\n", name);
 		return ERR_PTR(error);
@@ -329,7 +327,7 @@ static struct dentry *start_creating(const char *name, struct dentry *parent)
 	 * have around.
 	 */
 	if (!parent)
-		parent = debugfs_mount->mnt_root;
+		parent = debugfs.mount->mnt_root;
 
 	inode_lock(d_inode(parent));
 	if (unlikely(IS_DEADDIR(d_inode(parent))))
@@ -349,7 +347,7 @@ static struct dentry *start_creating(const char *name, struct dentry *parent)
 
 	if (IS_ERR(dentry)) {
 		inode_unlock(d_inode(parent));
-		simple_release_fs(&debugfs_mount, &debugfs_mount_count);
+		simple_release_fs(&debugfs);
 	}
 
 	return dentry;
@@ -359,7 +357,7 @@ static struct dentry *failed_creating(struct dentry *dentry)
 {
 	inode_unlock(d_inode(dentry->d_parent));
 	dput(dentry);
-	simple_release_fs(&debugfs_mount, &debugfs_mount_count);
+	simple_release_fs(&debugfs);
 	return ERR_PTR(-ENOMEM);
 }
 
@@ -676,9 +674,9 @@ static void __debugfs_file_removed(struct dentry *dentry)
 
 static void remove_one(struct dentry *victim)
 {
-        if (d_is_reg(victim))
+    if (d_is_reg(victim))
 		__debugfs_file_removed(victim);
-	simple_release_fs(&debugfs_mount, &debugfs_mount_count);
+	simple_release_fs(&debugfs);
 }
 
 /**
@@ -699,9 +697,9 @@ void debugfs_remove(struct dentry *dentry)
 	if (IS_ERR_OR_NULL(dentry))
 		return;
 
-	simple_pin_fs(&debug_fs_type, &debugfs_mount, &debugfs_mount_count);
+	simple_pin_fs(&debugfs, &debug_fs_type);
 	simple_recursive_removal(dentry, remove_one);
-	simple_release_fs(&debugfs_mount, &debugfs_mount_count);
+	simple_release_fs(&debugfs);
 }
 EXPORT_SYMBOL_GPL(debugfs_remove);
 
diff --git a/fs/simplefs.c b/fs/simplefs.c
index 226d18963801..790d8beb9cc3 100644
--- a/fs/simplefs.c
+++ b/fs/simplefs.c
@@ -4,34 +4,34 @@
 
 static DEFINE_SPINLOCK(pin_fs_lock);
 
-int simple_pin_fs(struct file_system_type *type, struct vfsmount **mount, int *count)
+int simple_pin_fs(struct simple_fs *fs, struct file_system_type *type)
 {
 	struct vfsmount *mnt = NULL;
 	spin_lock(&pin_fs_lock);
-	if (unlikely(!*mount)) {
+	if (unlikely(!fs->mount)) {
 		spin_unlock(&pin_fs_lock);
 		mnt = vfs_kern_mount(type, SB_KERNMOUNT, type->name, NULL);
 		if (IS_ERR(mnt))
 			return PTR_ERR(mnt);
 		spin_lock(&pin_fs_lock);
-		if (!*mount)
-			*mount = mnt;
+		if (!fs->mount)
+			fs->mount = mnt;
 	}
-	mntget(*mount);
-	++*count;
+	mntget(fs->mount);
+	++fs->count;
 	spin_unlock(&pin_fs_lock);
 	mntput(mnt);
 	return 0;
 }
 EXPORT_SYMBOL(simple_pin_fs);
 
-void simple_release_fs(struct vfsmount **mount, int *count)
+void simple_release_fs(struct simple_fs *fs)
 {
 	struct vfsmount *mnt;
 	spin_lock(&pin_fs_lock);
-	mnt = *mount;
-	if (!--*count)
-		*mount = NULL;
+	mnt = fs->mount;
+	if (!--fs->count)
+		fs->mount = NULL;
 	spin_unlock(&pin_fs_lock);
 	mntput(mnt);
 }
diff --git a/fs/tracefs/inode.c b/fs/tracefs/inode.c
index 4353ca81e1d7..40ccfe737c3a 100644
--- a/fs/tracefs/inode.c
+++ b/fs/tracefs/inode.c
@@ -24,8 +24,7 @@
 
 #define TRACEFS_DEFAULT_MODE	0700
 
-static struct vfsmount *tracefs_mount;
-static int tracefs_mount_count;
+static struct simple_fs tracefs;
 static bool tracefs_registered;
 
 static ssize_t default_read_file(struct file *file, char __user *buf,
@@ -316,8 +315,7 @@ static struct dentry *start_creating(const char *name, struct dentry *parent)
 
 	pr_debug("tracefs: creating file '%s'\n",name);
 
-	error = simple_pin_fs(&trace_fs_type, &tracefs_mount,
-			      &tracefs_mount_count);
+	error = simple_pin_fs(&tracefs, &trace_fs_type);
 	if (error)
 		return ERR_PTR(error);
 
@@ -327,7 +325,7 @@ static struct dentry *start_creating(const char *name, struct dentry *parent)
 	 * have around.
 	 */
 	if (!parent)
-		parent = tracefs_mount->mnt_root;
+		parent = tracefs.mount->mnt_root;
 
 	inode_lock(parent->d_inode);
 	if (unlikely(IS_DEADDIR(parent->d_inode)))
@@ -341,7 +339,7 @@ static struct dentry *start_creating(const char *name, struct dentry *parent)
 
 	if (IS_ERR(dentry)) {
 		inode_unlock(parent->d_inode);
-		simple_release_fs(&tracefs_mount, &tracefs_mount_count);
+		simple_release_fs(&tracefs);
 	}
 
 	return dentry;
@@ -351,7 +349,7 @@ static struct dentry *failed_creating(struct dentry *dentry)
 {
 	inode_unlock(dentry->d_parent->d_inode);
 	dput(dentry);
-	simple_release_fs(&tracefs_mount, &tracefs_mount_count);
+	simple_release_fs(&tracefs);
 	return NULL;
 }
 
@@ -504,7 +502,7 @@ __init struct dentry *tracefs_create_instance_dir(const char *name,
 
 static void remove_one(struct dentry *victim)
 {
-	simple_release_fs(&tracefs_mount, &tracefs_mount_count);
+	simple_release_fs(&tracefs);
 }
 
 /**
@@ -520,9 +518,9 @@ void tracefs_remove(struct dentry *dentry)
 	if (IS_ERR_OR_NULL(dentry))
 		return;
 
-	simple_pin_fs(&trace_fs_type, &tracefs_mount, &tracefs_mount_count);
+	simple_pin_fs(&tracefs, &trace_fs_type);
 	simple_recursive_removal(dentry, remove_one);
-	simple_release_fs(&tracefs_mount, &tracefs_mount_count);
+	simple_release_fs(&tracefs);
 }
 
 /**
diff --git a/include/linux/simplefs.h b/include/linux/simplefs.h
index 1076a44db308..18010414a16f 100644
--- a/include/linux/simplefs.h
+++ b/include/linux/simplefs.h
@@ -4,7 +4,12 @@
 
 #include <linux/fs.h>
 
-extern int simple_pin_fs(struct file_system_type *, struct vfsmount **mount, int *count);
-extern void simple_release_fs(struct vfsmount **mount, int *count);
+struct simple_fs {
+	struct vfsmount *mount;
+	int count;
+};
+
+extern int simple_pin_fs(struct simple_fs *, struct file_system_type *);
+extern void simple_release_fs(struct simple_fs *);
 
 #endif
diff --git a/security/apparmor/apparmorfs.c b/security/apparmor/apparmorfs.c
index d62d3fca47f2..75d70e6ba0a0 100644
--- a/security/apparmor/apparmorfs.c
+++ b/security/apparmor/apparmorfs.c
@@ -140,8 +140,7 @@ static int mangle_name(const char *name, char *target)
  */
 
 #define AAFS_NAME		"apparmorfs"
-static struct vfsmount *aafs_mnt;
-static int aafs_count;
+static struct simple_fs aafs;
 
 
 static int aafs_show_path(struct seq_file *seq, struct dentry *dentry)
@@ -273,7 +272,7 @@ static struct dentry *aafs_create(const char *name, umode_t mode,
 	if (!(mode & S_IFMT))
 		mode = (mode & S_IALLUGO) | S_IFREG;
 
-	error = simple_pin_fs(&aafs_ops, &aafs_mnt, &aafs_count);
+	error = simple_pin_fs(&aafs, &aafs_ops);
 	if (error)
 		return ERR_PTR(error);
 
@@ -303,7 +302,7 @@ static struct dentry *aafs_create(const char *name, umode_t mode,
 
 fail_lock:
 	inode_unlock(dir);
-	simple_release_fs(&aafs_mnt, &aafs_count);
+	simple_release_fs(&aafs);
 
 	return ERR_PTR(error);
 }
@@ -395,7 +394,7 @@ static void aafs_remove(struct dentry *dentry)
 		dput(dentry);
 	}
 	inode_unlock(dir);
-	simple_release_fs(&aafs_mnt, &aafs_count);
+	simple_release_fs(&aafs);
 }
 
 
@@ -1824,7 +1823,7 @@ static int ns_mkdir_op(struct inode *dir, struct dentry *dentry, umode_t mode)
 	 * for pin_fs
 	 */
 	inode_unlock(dir);
-	error = simple_pin_fs(&aafs_ops, &aafs_mnt, &aafs_count);
+	error = simple_pin_fs(&aafs, &aafs_ops);
 	mutex_lock_nested(&parent->lock, parent->level);
 	inode_lock_nested(dir, I_MUTEX_PARENT);
 	if (error)
@@ -1845,7 +1844,7 @@ static int ns_mkdir_op(struct inode *dir, struct dentry *dentry, umode_t mode)
 	aa_put_ns(ns);		/* list ref remains */
 out_pin:
 	if (error)
-		simple_release_fs(&aafs_mnt, &aafs_count);
+		simple_release_fs(&aafs);
 out:
 	mutex_unlock(&parent->lock);
 	aa_put_ns(parent);
@@ -2580,7 +2579,7 @@ static const char *policy_get_link(struct dentry *dentry,
 		return ERR_PTR(-ECHILD);
 
 	ns = aa_get_current_ns();
-	path.mnt = mntget(aafs_mnt);
+	path.mnt = mntget(aafs.mount);
 	path.dentry = dget(ns_dir(ns));
 	error = nd_jump_link(&path);
 	aa_put_ns(ns);
@@ -2631,10 +2630,10 @@ static int __init aa_create_aafs(void)
 	}
 
 	/* setup apparmorfs used to virtualize policy/ */
-	aafs_mnt = kern_mount(&aafs_ops);
-	if (IS_ERR(aafs_mnt))
+	aafs.mount = kern_mount(&aafs_ops);
+	if (IS_ERR(aafs.mount))
 		panic("can't set apparmorfs up\n");
-	aafs_mnt->mnt_sb->s_flags &= ~SB_NOUSER;
+	aafs.mount->mnt_sb->s_flags &= ~SB_NOUSER;
 
 	/* Populate fs tree. */
 	error = entry_create_dir(&aa_sfs_entry, NULL);
@@ -2667,8 +2666,8 @@ static int __init aa_create_aafs(void)
 
 	/* policy tree referenced by magic policy symlink */
 	mutex_lock_nested(&root_ns->lock, root_ns->level);
-	error = __aafs_ns_mkdir(root_ns, aafs_mnt->mnt_root, ".policy",
-				aafs_mnt->mnt_root);
+	error = __aafs_ns_mkdir(root_ns, aafs.mount->mnt_root, ".policy",
+				aafs.mount->mnt_root);
 	mutex_unlock(&root_ns->lock);
 	if (error)
 		goto error;
diff --git a/security/inode.c b/security/inode.c
index a9a9ee4de21d..0fcd03299e0d 100644
--- a/security/inode.c
+++ b/security/inode.c
@@ -22,8 +22,7 @@
 #include <linux/lsm_hooks.h>
 #include <linux/magic.h>
 
-static struct vfsmount *mount;
-static int mount_count;
+static struct simple_fs securityfs;
 
 static void securityfs_free_inode(struct inode *inode)
 {
@@ -118,12 +117,12 @@ static struct dentry *securityfs_create_dentry(const char *name, umode_t mode,
 
 	pr_debug("securityfs: creating file '%s'\n",name);
 
-	error = simple_pin_fs(&fs_type, &mount, &mount_count);
+	error = simple_pin_fs(&securityfs, &fs_type);
 	if (error)
 		return ERR_PTR(error);
 
 	if (!parent)
-		parent = mount->mnt_root;
+		parent = securityfs.mount->mnt_root;
 
 	dir = d_inode(parent);
 
@@ -168,7 +167,7 @@ static struct dentry *securityfs_create_dentry(const char *name, umode_t mode,
 	dentry = ERR_PTR(error);
 out:
 	inode_unlock(dir);
-	simple_release_fs(&mount, &mount_count);
+	simple_release_fs(&securityfs);
 	return dentry;
 }
 
@@ -309,7 +308,7 @@ void securityfs_remove(struct dentry *dentry)
 		dput(dentry);
 	}
 	inode_unlock(dir);
-	simple_release_fs(&mount, &mount_count);
+	simple_release_fs(&securityfs);
 }
 EXPORT_SYMBOL_GPL(securityfs_remove);
 
-- 
2.25.2



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
