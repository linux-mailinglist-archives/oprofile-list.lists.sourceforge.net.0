Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0D91A8057
	for <lists+oprofile-list@lfdr.de>; Tue, 14 Apr 2020 16:49:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jOMsj-0005sV-3f; Tue, 14 Apr 2020 14:49:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <eesposit@redhat.com>) id 1jOLAt-0006e5-FD
 for oprofile-list@lists.sourceforge.net; Tue, 14 Apr 2020 13:00:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SkKDvUy87926CmAT32HsWjLbIxTbOhqOTHC/vd3O4C0=; b=PoHXxHdirr99INtZRh8z3PyGAg
 kVTGWHNYY4D1dygIYFkF1BUwZVdiHC4zAkTl97YwAf/fRPEAW7L9mxpPEYGMwtdfchMm7IPJyMwGr
 XcdTyIjOOyAKvbGj4TJ324jQ26afzSiaysY7kfdEVssj1OHtwtAkfv+oY5MJ3alYiOvU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SkKDvUy87926CmAT32HsWjLbIxTbOhqOTHC/vd3O4C0=; b=GxDgYlZGqx+Ih7VQej4hJy/2Qz
 92veUHlgRVxZaBrJSm22odPxLImSlRuLUSjdcaDCYepAvHO8G80YTweHVJ54XfEs7FrBOqmyVL2Iy
 4bf2uOn+MfvnEzRA7sEfShDjBQvexxU3SbCTYAo1wRuvmqj7Pw5zF8GONlV3caUL7DnE=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jOLAp-00EgdI-RO
 for oprofile-list@lists.sourceforge.net; Tue, 14 Apr 2020 13:00:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586869210;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SkKDvUy87926CmAT32HsWjLbIxTbOhqOTHC/vd3O4C0=;
 b=PhathGTK5Ij7oXDBOLsLEzKuKlH1vefaz1KtAl0HsfWOUK6yITW8u3j+aGUjbtGr89nPxL
 8JGXa36XtwXwvY8x4GXThAgxD5mY0uv8MtXm3lov1FKXcZRA4yKdSIYD75UeIFH6f1+2EO
 IQDEqVHEwxlz0sTB0FPL9vBrDQlMvrE=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-468-Wtr3alarM8WVNGT5-tThGA-1; Tue, 14 Apr 2020 08:44:18 -0400
X-MC-Unique: Wtr3alarM8WVNGT5-tThGA-1
Received: by mail-wm1-f72.google.com with SMTP id c129so3706100wme.8
 for <oprofile-list@lists.sf.net>; Tue, 14 Apr 2020 05:44:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sI5vxC1ZvKgnSHwtEppycudchqTAWMoyZNsGMD6XBfs=;
 b=ZgPDrDwn7CVeVAqqGCCeZXUNbI0J0ZJ8IZTM5lBxle6CzueaphTId3i/HTtlIoel2s
 LuqQnIPBJlRcnItyimjz7umNM48N7nAOMvgt01MJIF+ZvXf6RV60UnjfqidPtxi8Jc2U
 BWc9M9mQtBhbhu26RTufneHNZlhj/DyhhPSY22ssfBqEO7TK5CxEE1R3IgfQWg405MdL
 Qouj9Aup8dU5CbUslD6pLAIh+pcgM/SS0tx3O6gU69VbMkzbF3ci80Ywje3yEPgukby9
 n0LauuvWMOcvLLyx2r0iKCDJxHZxKg8y8EJ2dyhm0zNReB+akMIDwkV3k7Qal0+4mkMs
 ffBQ==
X-Gm-Message-State: AGi0PubmBZGsccIT8KraPBmlIZEQBB+2/RDGbk2Ap5GWb/t4UZMZNfwb
 41WcNkCG5U61ns4B2gcOb0lPzuU8rpHQuUfb9h6Aba4/MKlnBMyIo25WQ5PGO2rcLO3M81k6G2W
 FI97Y7PdOT/tGzlIedg/0gQ==
X-Received: by 2002:a1c:147:: with SMTP id 68mr24228940wmb.28.1586868257528;
 Tue, 14 Apr 2020 05:44:17 -0700 (PDT)
X-Google-Smtp-Source: APiQypJ6wN8g3wQLLN2KDP/D/IgWf7DatiJ17rYX27xAXjxyuMyzqvoWzXAAA6WPVEIYS0CMkz6Yow==
X-Received: by 2002:a1c:147:: with SMTP id 68mr24228852wmb.28.1586868257170;
 Tue, 14 Apr 2020 05:44:17 -0700 (PDT)
Received: from localhost.localdomain ([194.230.155.210])
 by smtp.gmail.com with ESMTPSA id m14sm16948816wrs.76.2020.04.14.05.44.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 05:44:16 -0700 (PDT)
From: Emanuele Giuseppe Esposito <eesposit@redhat.com>
To: linux-nfs@vger.kernel.org
Subject: [PATCH 6/8] simplefs: add file creation functions
Date: Tue, 14 Apr 2020 14:43:00 +0200
Message-Id: <20200414124304.4470-7-eesposit@redhat.com>
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
 trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jOLAp-00EgdI-RO
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

A bunch of code is duplicated between debugfs and tracefs, unify it to the
simplefs library.

The code is very similar, except that dentry and inode creation are unified
into a single function (unlike start_creating in debugfs and tracefs, which
only takes care of dentries).  This adds an output parameter to the creation
functions, but pushes all error recovery into fs/simplefs.c.

Signed-off-by: Emanuele Giuseppe Esposito <eesposit@redhat.com>
---
 fs/simplefs.c            | 150 +++++++++++++++++++++++++++++++++++++++
 include/linux/simplefs.h |  19 +++++
 2 files changed, 169 insertions(+)

diff --git a/fs/simplefs.c b/fs/simplefs.c
index c59eb8d996be..3e48a288beb3 100644
--- a/fs/simplefs.c
+++ b/fs/simplefs.c
@@ -1,6 +1,8 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 #include <linux/simplefs.h>
 #include <linux/mount.h>
+#include <linux/namei.h>
+#include <linux/fsnotify.h>
 
 static DEFINE_SPINLOCK(pin_fs_lock);
 
@@ -42,3 +44,151 @@ struct inode *simple_alloc_anon_inode(struct simple_fs *fs)
 	return alloc_anon_inode(fs->mount->mnt_sb);
 }
 EXPORT_SYMBOL(simple_alloc_anon_inode);
+
+static struct dentry *failed_creating(struct simple_fs *fs, struct dentry *dentry)
+{
+	inode_unlock(d_inode(dentry->d_parent));
+	dput(dentry);
+	simple_release_fs(fs);
+	return ERR_PTR(-ENOMEM);
+}
+
+struct dentry *simplefs_create_dentry(struct simple_fs *fs, struct file_system_type *type,
+				      const char *name, struct dentry *parent,
+				      struct inode **inode)
+{
+	struct dentry *dentry;
+	int error;
+
+	pr_debug("creating file '%s'\n", name);
+
+	if (IS_ERR(parent))
+		return parent;
+
+	error = simple_pin_fs(fs, type);
+	if (error) {
+		pr_err("Unable to pin filesystem for file '%s'\n", name);
+		return ERR_PTR(error);
+	}
+
+	/* If the parent is not specified, we create it in the root.
+	 * We need the root dentry to do this, which is in the super
+	 * block. A pointer to that is in the struct vfsmount that we
+	 * have around.
+	 */
+	if (!parent)
+		parent = fs->mount->mnt_root;
+
+	inode_lock(d_inode(parent));
+	dentry = lookup_one_len(name, parent, strlen(name));
+	if (!IS_ERR(dentry) && d_really_is_positive(dentry)) {
+		if (d_is_dir(dentry))
+			pr_err("Directory '%s' with parent '%s' already present!\n",
+			       name, parent->d_name.name);
+		else
+			pr_err("File '%s' in directory '%s' already present!\n",
+			       name, parent->d_name.name);
+		dput(dentry);
+		dentry = ERR_PTR(-EEXIST);
+	}
+
+	if (IS_ERR(dentry)) {
+		inode_unlock(d_inode(parent));
+		simple_release_fs(fs);
+	}
+
+
+	if (IS_ERR(dentry))
+		return dentry;
+
+	*inode = simple_new_inode(fs->mount->mnt_sb);
+	if (unlikely(!(*inode))) {
+		pr_err("out of free inodes, can not create file '%s'\n",
+		       name);
+		return failed_creating(fs, dentry);
+	}
+
+	return dentry;
+}
+EXPORT_SYMBOL(simplefs_create_dentry);
+
+struct dentry *simplefs_create_file(struct simple_fs *fs, struct file_system_type *type,
+				    const char *name, umode_t mode,
+				    struct dentry *parent, void *data,
+				    struct inode **inode)
+{
+	struct dentry *dentry;
+
+	WARN_ON((mode & S_IFMT) && !S_ISREG(mode));
+	mode |= S_IFREG;
+
+	dentry = simplefs_create_dentry(fs, type, name, parent, inode);
+
+	if (IS_ERR(dentry))
+		return dentry;
+
+	(*inode)->i_mode = mode;
+	(*inode)->i_private = data;
+
+	return dentry;
+}
+EXPORT_SYMBOL(simplefs_create_file);
+
+struct dentry *simplefs_finish_dentry(struct dentry *dentry, struct inode *inode)
+{
+	d_instantiate(dentry, inode);
+	if (S_ISDIR(inode->i_mode)) {
+		inc_nlink(d_inode(dentry->d_parent));
+		fsnotify_mkdir(d_inode(dentry->d_parent), dentry);
+	} else {
+		fsnotify_create(d_inode(dentry->d_parent), dentry);
+	}
+	inode_unlock(d_inode(dentry->d_parent));
+	return dentry;
+}
+EXPORT_SYMBOL(simplefs_finish_dentry);
+
+struct dentry *simplefs_create_dir(struct simple_fs *fs, struct file_system_type *type,
+				   const char *name, umode_t mode, struct dentry *parent,
+				   struct inode **inode)
+{
+	struct dentry *dentry;
+
+	WARN_ON((mode & S_IFMT) && !S_ISDIR(mode));
+	mode |= S_IFDIR;
+
+	dentry = simplefs_create_dentry(fs, type, name, parent, inode);
+	if (IS_ERR(dentry))
+		return dentry;
+
+	(*inode)->i_mode = mode;
+	(*inode)->i_op = &simple_dir_inode_operations;
+	(*inode)->i_fop = &simple_dir_operations;
+
+	/* directory inodes start off with i_nlink == 2 (for "." entry) */
+	inc_nlink(*inode);
+	return dentry;
+}
+EXPORT_SYMBOL(simplefs_create_dir);
+
+struct dentry *simplefs_create_symlink(struct simple_fs *fs, struct file_system_type *type,
+				       const char *name, struct dentry *parent,
+				       const char *target, struct inode **inode)
+{
+	struct dentry *dentry;
+	char *link = kstrdup(target, GFP_KERNEL);
+	if (!link)
+		return ERR_PTR(-ENOMEM);
+
+	dentry = simplefs_create_dentry(fs, type, name, parent, inode);
+	if (IS_ERR(dentry)) {
+		kfree_link(link);
+		return dentry;
+	}
+
+	(*inode)->i_mode = S_IFLNK | S_IRWXUGO;
+	(*inode)->i_link = link;
+	(*inode)->i_op = &simple_symlink_inode_operations;
+	return dentry;
+}
+EXPORT_SYMBOL(simplefs_create_symlink);
diff --git a/include/linux/simplefs.h b/include/linux/simplefs.h
index c62ab526414e..cc53eed0bc3d 100644
--- a/include/linux/simplefs.h
+++ b/include/linux/simplefs.h
@@ -14,4 +14,23 @@ extern void simple_release_fs(struct simple_fs *);
 
 extern struct inode *simple_alloc_anon_inode(struct simple_fs *fs);
 
+extern struct dentry *simplefs_create_dentry(struct simple_fs *fs,
+					     struct file_system_type *type,
+					     const char *name, struct dentry *parent,
+					     struct inode **inode);
+struct dentry *simplefs_finish_dentry(struct dentry *dentry, struct inode *inode);
+
+extern struct dentry *simplefs_create_file(struct simple_fs *fs,
+					   struct file_system_type *type,
+					   const char *name, umode_t mode,
+					   struct dentry *parent, void *data,
+					   struct inode **inode);
+extern struct dentry *simplefs_create_dir(struct simple_fs *fs, struct file_system_type *type,
+					  const char *name, umode_t mode, struct dentry *parent,
+					  struct inode **inode);
+extern struct dentry *simplefs_create_symlink(struct simple_fs *fs, struct file_system_type *type,
+					      const char *name, struct dentry *parent,
+					      const char *target, struct inode **inode);
+
+
 #endif
-- 
2.25.2



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
