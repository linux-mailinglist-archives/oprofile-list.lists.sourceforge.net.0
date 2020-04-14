Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0301A8051
	for <lists+oprofile-list@lfdr.de>; Tue, 14 Apr 2020 16:49:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jOMsj-0005s5-1c; Tue, 14 Apr 2020 14:49:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <eesposit@redhat.com>) id 1jOLAr-0000eL-19
 for oprofile-list@lists.sourceforge.net; Tue, 14 Apr 2020 13:00:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O/EAkJa3PCTCg9cZch9XiCXuGIAdU1li//UfqmnYJ2A=; b=PbU9NzMbizNTmFg1cw/WiG6Bhl
 t6QUQrUKnz/vRVutMddkROsXkkc4aCESDUMaFRfdjSaVKKsqxXGbbF4aPRqMMRahFEeXtpHGM2dp8
 RsYqYp1H5Vq3CA0wJoE5deCPk/4XxZaCwdeOi202vP6BX/tiHWQzaZzP/H81gr6PSvjY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=O/EAkJa3PCTCg9cZch9XiCXuGIAdU1li//UfqmnYJ2A=; b=gGJHkwcTbtYE96Mf8bQzZ43sQW
 4w1xeJeab4DKAwZEzO8RU+2tcdVk8vwgkGumMv7tfTZWXtPC9m4/NIQX2LMg/C00iK3PNm78ysQAV
 wxgicA31LKnyW3GdXjS9cS2u40esOzgarKRnzmZn0yQbqQtkpr18tZtKqjqiiHEOdAjk=;
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jOLAm-00Egd7-Ms
 for oprofile-list@lists.sourceforge.net; Tue, 14 Apr 2020 13:00:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586869210;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=O/EAkJa3PCTCg9cZch9XiCXuGIAdU1li//UfqmnYJ2A=;
 b=ShhN6Ij5O+ElWumvXX9AXuIQTlJSPfflijnElU4ym7JGsL4wrtYbIhJLCtNiDo0DerXH7V
 5KbcAU3ZZGOl/Xo0MT0NR6xzL+enjigxPYdfYELYsr9UlF4ViFIsVayjGy/n4cQOobJSKA
 uk5711hu5rXUq8xcToajCZpPP805Dso=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-288-7RrMrM92PjmQ0-iDATpsEA-1; Tue, 14 Apr 2020 08:43:47 -0400
X-MC-Unique: 7RrMrM92PjmQ0-iDATpsEA-1
Received: by mail-wr1-f72.google.com with SMTP id r11so7565448wrx.21
 for <oprofile-list@lists.sf.net>; Tue, 14 Apr 2020 05:43:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mpH0i9D4CKdkaA94rTuJ9ZLibjvc0u/wsmELw+W2YRE=;
 b=ucMENESWdx8kzXBhbZcoi74sv1Y82RxbZkrGUZt082FkvlbpxRX9xKVtjcBVf2hWIw
 u1oFeQLG8IMmVvQUsBpxU5ucKjo4ekamuwvBifeeO+Z0bXrfjn9qJ098NgZW4ddIcOuS
 cEo1axUDzo0oXhWVEeb8EfCukP1ARSSJjtcKKHADUmWi7jLlDzEIx1oTFdjPHtMwxLU4
 5pBnWbFOfFhVGFUXt49CibaqoFIVO8iTEdsHNJjuv232vn7QrcvIEOiRJjWk8Ah3ajlr
 WFNeCFpbhMd8ckFFRC1OdTzqoS7ZfGfPVU0gGrCnR8CnH9swQ+NtOs9w/LZ9uS0H1rjo
 TzbA==
X-Gm-Message-State: AGi0PubcOMsyGu7x9wvrkVLPPNyGeGI37sk4KYFxEFK2RFIDyRQoEX+C
 8WNQWhOs+oeyaptDacScEavY8NsH/zA/PsOhjUbzg8Nrn/mQOYrXqtnZwtvU1tQ64u46JHMXpb0
 vi9o4C5sv+TYtkJj3eN2fyg==
X-Received: by 2002:adf:b1c6:: with SMTP id r6mr22955694wra.49.1586868225590; 
 Tue, 14 Apr 2020 05:43:45 -0700 (PDT)
X-Google-Smtp-Source: APiQypKrr6l40rwg6gvnqEERTdItJB1re/eEs/hrCesLG4TYaZ1yTmp5eu/qtdPBP1+X7lPvfKXptw==
X-Received: by 2002:adf:b1c6:: with SMTP id r6mr22955631wra.49.1586868225144; 
 Tue, 14 Apr 2020 05:43:45 -0700 (PDT)
Received: from localhost.localdomain ([194.230.155.210])
 by smtp.gmail.com with ESMTPSA id m14sm16948816wrs.76.2020.04.14.05.43.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 05:43:44 -0700 (PDT)
From: Emanuele Giuseppe Esposito <eesposit@redhat.com>
To: linux-nfs@vger.kernel.org
Subject: [PATCH 2/8] fs: extract simple_pin/release_fs to separate files
Date: Tue, 14 Apr 2020 14:42:56 +0200
Message-Id: <20200414124304.4470-3-eesposit@redhat.com>
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
 trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jOLAm-00Egd7-Ms
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

We will augment this family of functions with inode management.  To avoid
littering include/linux/fs.h and fs/libfs.c, move them to a separate header,
with a Kconfig symbol to enable them.

Signed-off-by: Emanuele Giuseppe Esposito <eesposit@redhat.com>
---
 drivers/gpu/drm/Kconfig         |  1 +
 drivers/gpu/drm/drm_drv.c       |  2 +-
 drivers/misc/cxl/Kconfig        |  1 +
 drivers/misc/cxl/api.c          |  1 +
 drivers/misc/ocxl/Kconfig       |  1 +
 drivers/scsi/cxlflash/ocxl_hw.c |  1 +
 fs/Kconfig                      |  3 +++
 fs/Kconfig.binfmt               |  1 +
 fs/Makefile                     |  1 +
 fs/binfmt_misc.c                |  2 +-
 fs/configfs/Kconfig             |  1 +
 fs/configfs/mount.c             |  2 +-
 fs/debugfs/inode.c              |  2 +-
 fs/libfs.c                      | 36 +------------------------------
 fs/simplefs.c                   | 38 +++++++++++++++++++++++++++++++++
 fs/tracefs/inode.c              |  2 +-
 include/linux/fs.h              |  2 --
 include/linux/simplefs.h        | 10 +++++++++
 lib/Kconfig.debug               | 16 ++++++++------
 security/Kconfig                |  1 +
 security/apparmor/apparmorfs.c  |  3 ++-
 security/inode.c                |  2 +-
 22 files changed, 79 insertions(+), 50 deletions(-)
 create mode 100644 fs/simplefs.c
 create mode 100644 include/linux/simplefs.h

diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
index 43594978958e..a6fe933de9da 100644
--- a/drivers/gpu/drm/Kconfig
+++ b/drivers/gpu/drm/Kconfig
@@ -14,6 +14,7 @@ menuconfig DRM
 	select I2C
 	select I2C_ALGOBIT
 	select DMA_SHARED_BUFFER
+	select SIMPLEFS
 	select SYNC_FILE
 	help
 	  Kernel-level support for the Direct Rendering Infrastructure (DRI)
diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index 7b1a628d1f6e..187a61091b5c 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
@@ -27,7 +27,7 @@
  */
 
 #include <linux/debugfs.h>
-#include <linux/fs.h>
+#include <linux/simplefs.h>
 #include <linux/module.h>
 #include <linux/moduleparam.h>
 #include <linux/mount.h>
diff --git a/drivers/misc/cxl/Kconfig b/drivers/misc/cxl/Kconfig
index 39eec9031487..a62795079d9c 100644
--- a/drivers/misc/cxl/Kconfig
+++ b/drivers/misc/cxl/Kconfig
@@ -19,6 +19,7 @@ config CXL
 	select CXL_BASE
 	select CXL_AFU_DRIVER_OPS
 	select CXL_LIB
+	select SIMPLEFS
 	default m
 	help
 	  Select this option to enable driver support for IBM Coherent
diff --git a/drivers/misc/cxl/api.c b/drivers/misc/cxl/api.c
index b493de962153..0b8f8de7475a 100644
--- a/drivers/misc/cxl/api.c
+++ b/drivers/misc/cxl/api.c
@@ -9,6 +9,7 @@
 #include <misc/cxl.h>
 #include <linux/module.h>
 #include <linux/mount.h>
+#include <linux/simplefs.h>
 #include <linux/pseudo_fs.h>
 #include <linux/sched/mm.h>
 #include <linux/mmu_context.h>
diff --git a/drivers/misc/ocxl/Kconfig b/drivers/misc/ocxl/Kconfig
index 2d2266c1439e..ddd9245fff3d 100644
--- a/drivers/misc/ocxl/Kconfig
+++ b/drivers/misc/ocxl/Kconfig
@@ -12,6 +12,7 @@ config OCXL
 	depends on PPC_POWERNV && PCI && EEH
 	select OCXL_BASE
 	select HOTPLUG_PCI_POWERNV
+	select SIMPLEFS
 	default m
 	help
 	  Select this option to enable the ocxl driver for Open
diff --git a/drivers/scsi/cxlflash/ocxl_hw.c b/drivers/scsi/cxlflash/ocxl_hw.c
index 7018cd802569..429f55651090 100644
--- a/drivers/scsi/cxlflash/ocxl_hw.c
+++ b/drivers/scsi/cxlflash/ocxl_hw.c
@@ -12,6 +12,7 @@
 #include <linux/idr.h>
 #include <linux/module.h>
 #include <linux/mount.h>
+#include <linux/simplefs.h>
 #include <linux/pseudo_fs.h>
 #include <linux/poll.h>
 #include <linux/sched/signal.h>
diff --git a/fs/Kconfig b/fs/Kconfig
index f08fbbfafd9a..a6795ae312a2 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -218,6 +218,9 @@ config HUGETLB_PAGE
 config MEMFD_CREATE
 	def_bool TMPFS || HUGETLBFS
 
+config SIMPLEFS
+	bool
+
 config ARCH_HAS_GIGANTIC_PAGE
 	bool
 
diff --git a/fs/Kconfig.binfmt b/fs/Kconfig.binfmt
index 62dc4f577ba1..af7b765de4d3 100644
--- a/fs/Kconfig.binfmt
+++ b/fs/Kconfig.binfmt
@@ -176,6 +176,7 @@ config BINFMT_EM86
 
 config BINFMT_MISC
 	tristate "Kernel support for MISC binaries"
+	select SIMPLEFS
 	---help---
 	  If you say Y here, it will be possible to plug wrapper-driven binary
 	  formats into the kernel. You will like this especially when you use
diff --git a/fs/Makefile b/fs/Makefile
index 2ce5112b02c8..c5c665984b9e 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -26,6 +26,7 @@ obj-$(CONFIG_PROC_FS) += proc_namespace.o
 obj-y				+= notify/
 obj-$(CONFIG_EPOLL)		+= eventpoll.o
 obj-y				+= anon_inodes.o
+obj-$(CONFIG_SIMPLEFS)		+= simplefs.o
 obj-$(CONFIG_SIGNALFD)		+= signalfd.o
 obj-$(CONFIG_TIMERFD)		+= timerfd.o
 obj-$(CONFIG_EVENTFD)		+= eventfd.o
diff --git a/fs/binfmt_misc.c b/fs/binfmt_misc.c
index cdb45829354d..c764110f5f0b 100644
--- a/fs/binfmt_misc.c
+++ b/fs/binfmt_misc.c
@@ -25,7 +25,7 @@
 #include <linux/mount.h>
 #include <linux/fs_context.h>
 #include <linux/syscalls.h>
-#include <linux/fs.h>
+#include <linux/simplefs.h>
 #include <linux/uaccess.h>
 
 #include "internal.h"
diff --git a/fs/configfs/Kconfig b/fs/configfs/Kconfig
index 272b64456999..3b461e4e3989 100644
--- a/fs/configfs/Kconfig
+++ b/fs/configfs/Kconfig
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config CONFIGFS_FS
 	tristate "Userspace-driven configuration filesystem"
+	select SIMPLEFS
 	select SYSFS
 	help
 	  configfs is a RAM-based filesystem that provides the converse
diff --git a/fs/configfs/mount.c b/fs/configfs/mount.c
index 0c6e8cf61953..331c2f064f02 100644
--- a/fs/configfs/mount.c
+++ b/fs/configfs/mount.c
@@ -10,7 +10,7 @@
  * configfs Copyright (C) 2005 Oracle.  All rights reserved.
  */
 
-#include <linux/fs.h>
+#include <linux/simplefs.h>
 #include <linux/module.h>
 #include <linux/mount.h>
 #include <linux/fs_context.h>
diff --git a/fs/debugfs/inode.c b/fs/debugfs/inode.c
index b7f2e971ecbc..7b9fddced48f 100644
--- a/fs/debugfs/inode.c
+++ b/fs/debugfs/inode.c
@@ -13,7 +13,7 @@
 #define pr_fmt(fmt)	"debugfs: " fmt
 
 #include <linux/module.h>
-#include <linux/fs.h>
+#include <linux/simplefs.h>
 #include <linux/mount.h>
 #include <linux/pagemap.h>
 #include <linux/init.h>
diff --git a/fs/libfs.c b/fs/libfs.c
index 3759fbacf522..26ec729f7bcd 100644
--- a/fs/libfs.c
+++ b/fs/libfs.c
@@ -11,6 +11,7 @@
 #include <linux/cred.h>
 #include <linux/mount.h>
 #include <linux/vfs.h>
+#include <linux/simplefs.h>
 #include <linux/quotaops.h>
 #include <linux/mutex.h>
 #include <linux/namei.h>
@@ -663,41 +664,6 @@ int simple_fill_super(struct super_block *s, unsigned long magic,
 }
 EXPORT_SYMBOL(simple_fill_super);
 
-static DEFINE_SPINLOCK(pin_fs_lock);
-
-int simple_pin_fs(struct file_system_type *type, struct vfsmount **mount, int *count)
-{
-	struct vfsmount *mnt = NULL;
-	spin_lock(&pin_fs_lock);
-	if (unlikely(!*mount)) {
-		spin_unlock(&pin_fs_lock);
-		mnt = vfs_kern_mount(type, SB_KERNMOUNT, type->name, NULL);
-		if (IS_ERR(mnt))
-			return PTR_ERR(mnt);
-		spin_lock(&pin_fs_lock);
-		if (!*mount)
-			*mount = mnt;
-	}
-	mntget(*mount);
-	++*count;
-	spin_unlock(&pin_fs_lock);
-	mntput(mnt);
-	return 0;
-}
-EXPORT_SYMBOL(simple_pin_fs);
-
-void simple_release_fs(struct vfsmount **mount, int *count)
-{
-	struct vfsmount *mnt;
-	spin_lock(&pin_fs_lock);
-	mnt = *mount;
-	if (!--*count)
-		*mount = NULL;
-	spin_unlock(&pin_fs_lock);
-	mntput(mnt);
-}
-EXPORT_SYMBOL(simple_release_fs);
-
 /**
  * simple_read_from_buffer - copy data from the buffer to user space
  * @to: the user space buffer to read to
diff --git a/fs/simplefs.c b/fs/simplefs.c
new file mode 100644
index 000000000000..226d18963801
--- /dev/null
+++ b/fs/simplefs.c
@@ -0,0 +1,38 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#include <linux/simplefs.h>
+#include <linux/mount.h>
+
+static DEFINE_SPINLOCK(pin_fs_lock);
+
+int simple_pin_fs(struct file_system_type *type, struct vfsmount **mount, int *count)
+{
+	struct vfsmount *mnt = NULL;
+	spin_lock(&pin_fs_lock);
+	if (unlikely(!*mount)) {
+		spin_unlock(&pin_fs_lock);
+		mnt = vfs_kern_mount(type, SB_KERNMOUNT, type->name, NULL);
+		if (IS_ERR(mnt))
+			return PTR_ERR(mnt);
+		spin_lock(&pin_fs_lock);
+		if (!*mount)
+			*mount = mnt;
+	}
+	mntget(*mount);
+	++*count;
+	spin_unlock(&pin_fs_lock);
+	mntput(mnt);
+	return 0;
+}
+EXPORT_SYMBOL(simple_pin_fs);
+
+void simple_release_fs(struct vfsmount **mount, int *count)
+{
+	struct vfsmount *mnt;
+	spin_lock(&pin_fs_lock);
+	mnt = *mount;
+	if (!--*count)
+		*mount = NULL;
+	spin_unlock(&pin_fs_lock);
+	mntput(mnt);
+}
+EXPORT_SYMBOL(simple_release_fs);
diff --git a/fs/tracefs/inode.c b/fs/tracefs/inode.c
index 0ee8c6dfb036..4353ca81e1d7 100644
--- a/fs/tracefs/inode.c
+++ b/fs/tracefs/inode.c
@@ -10,7 +10,7 @@
  */
 
 #include <linux/module.h>
-#include <linux/fs.h>
+#include <linux/simplefs.h>
 #include <linux/mount.h>
 #include <linux/kobject.h>
 #include <linux/namei.h>
diff --git a/include/linux/fs.h b/include/linux/fs.h
index 4f6f59b4f22a..55b679b89c8a 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -3363,8 +3363,6 @@ struct tree_descr { const char *name; const struct file_operations *ops; int mod
 struct dentry *d_alloc_name(struct dentry *, const char *);
 extern int simple_fill_super(struct super_block *, unsigned long,
 			     const struct tree_descr *);
-extern int simple_pin_fs(struct file_system_type *, struct vfsmount **mount, int *count);
-extern void simple_release_fs(struct vfsmount **mount, int *count);
 
 extern ssize_t simple_read_from_buffer(void __user *to, size_t count,
 			loff_t *ppos, const void *from, size_t available);
diff --git a/include/linux/simplefs.h b/include/linux/simplefs.h
new file mode 100644
index 000000000000..1076a44db308
--- /dev/null
+++ b/include/linux/simplefs.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_SIMPLEFS_H
+#define _LINUX_SIMPLEFS_H
+
+#include <linux/fs.h>
+
+extern int simple_pin_fs(struct file_system_type *, struct vfsmount **mount, int *count);
+extern void simple_release_fs(struct vfsmount **mount, int *count);
+
+#endif
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index d1398cef3b18..fc38a6f0fc11 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -288,12 +288,16 @@ config STRIP_ASM_SYMS
 
 config READABLE_ASM
 	bool "Generate readable assembler code"
-	depends on DEBUG_KERNEL
-	help
-	  Disable some compiler optimizations that tend to generate human unreadable
-	  assembler output. This may make the kernel slightly slower, but it helps
-	  to keep kernel developers who have to stare a lot at assembler listings
-	  sane.
+    depends on DEBUG_KERNEL
+    help
+      Disable some compiler optimizations that tend to generate human unreadable
+      assembler output. This may make the kernel slightly slower, but it helps
+      to keep kernel developers who have to stare a lot at assembler listings
+      sane.
+	  
+config DEBUG_FS
+	bool "Debug Filesystem"
+	select SIMPLEFS
 
 config HEADERS_INSTALL
 	bool "Install uapi headers to usr/include"
diff --git a/security/Kconfig b/security/Kconfig
index cd3cc7da3a55..2c6713aa8b4f 100644
--- a/security/Kconfig
+++ b/security/Kconfig
@@ -39,6 +39,7 @@ config SECURITY_WRITABLE_HOOKS
 
 config SECURITYFS
 	bool "Enable the securityfs filesystem"
+	select SIMPLEFS
 	help
 	  This will build the securityfs filesystem.  It is currently used by
 	  various security modules (AppArmor, IMA, SafeSetID, TOMOYO, TPM).
diff --git a/security/apparmor/apparmorfs.c b/security/apparmor/apparmorfs.c
index 828bb1eb77ea..d62d3fca47f2 100644
--- a/security/apparmor/apparmorfs.c
+++ b/security/apparmor/apparmorfs.c
@@ -18,7 +18,7 @@
 #include <linux/namei.h>
 #include <linux/capability.h>
 #include <linux/rcupdate.h>
-#include <linux/fs.h>
+#include <linux/simplefs.h>
 #include <linux/fs_context.h>
 #include <linux/poll.h>
 #include <linux/zlib.h>
@@ -2529,6 +2529,7 @@ static int aa_mk_null_file(struct dentry *parent)
 	struct vfsmount *mount;
 	struct dentry *dentry;
 	struct inode *inode;
+	int error;
 
 	mount = vfs_kern_mount(type, SB_KERNMOUNT, type->name, NULL);
 	if (IS_ERR(mount))
diff --git a/security/inode.c b/security/inode.c
index 6c326939750d..a9a9ee4de21d 100644
--- a/security/inode.c
+++ b/security/inode.c
@@ -12,7 +12,7 @@
 /* #define DEBUG */
 #include <linux/sysfs.h>
 #include <linux/kobject.h>
-#include <linux/fs.h>
+#include <linux/simplefs.h>
 #include <linux/fs_context.h>
 #include <linux/mount.h>
 #include <linux/pagemap.h>
-- 
2.25.2



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
