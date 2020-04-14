Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4281A8053
	for <lists+oprofile-list@lfdr.de>; Tue, 14 Apr 2020 16:49:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jOMsi-0005r0-HH; Tue, 14 Apr 2020 14:49:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <eesposit@redhat.com>) id 1jOL9r-0006aD-BE
 for oprofile-list@lists.sourceforge.net; Tue, 14 Apr 2020 12:59:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/POKEOLp9vZEVM8oe9bfw+hku4DjEqFg+cEEJO5a6SA=; b=EtfxAC+9EMiSxUU31NLTxgdJJ1
 1GBnafz5KOfMNuOUA5X1bv6y5oTP8i1eVOm9EVXNTyHkXtGZ0WWddS5lvTVnFKC6JveJ+IxfSwaPm
 YL62i/B19iuUstuyz7q46Am2sLOUIOcOge9i9KvJnqj/7SMtkF/3myuV4/KHGxwCPe9Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/POKEOLp9vZEVM8oe9bfw+hku4DjEqFg+cEEJO5a6SA=; b=f
 pM9/WEoLMp7I/LjAcO5invb8xukUZCzyn7qS1l/Y+Y0DBL5InICuzXHEfl4wAN3qFXsFzOn66FOjH
 23YcSiNQ5WMLi69plHohhq0bqkZN9XNzCgoI+sF/mUS0aMRjqxZX5xLV6GlwlafZ5k3PtkslJqZl5
 X1dqXbIsPBxlEsWk=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jOL9o-00Egb6-CF
 for oprofile-list@lists.sourceforge.net; Tue, 14 Apr 2020 12:59:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586869150;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=/POKEOLp9vZEVM8oe9bfw+hku4DjEqFg+cEEJO5a6SA=;
 b=KEHdjgxaKo6jnaawKqoVdhGiyru98SQxPsFKa+5QfMgTeLrJbhQmM/FtiChLDLVtr+NLLw
 49FT31Fu/c4+VQSrHfkZ4uueJDoqWd8IS8S1g1teb0juSzjF7cginDh4WVVP+R/J9gtC1s
 K7ujNbkHJb4INZPBSjLnJN7Hh+uJK1E=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-237-pSRpo_ufNDqQ2bQ0TAbpzg-1; Tue, 14 Apr 2020 08:43:31 -0400
X-MC-Unique: pSRpo_ufNDqQ2bQ0TAbpzg-1
Received: by mail-wr1-f70.google.com with SMTP id 11so2291817wrc.3
 for <oprofile-list@lists.sf.net>; Tue, 14 Apr 2020 05:43:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fP9JfUaepQl9AEXacvfinBkYRVU9dDq3rlCP1SQpCoc=;
 b=q/BshHGy0sAzPOyHYLOcY4af12MjipBYspoHg6r3U3+vJKJemi4tKJ/ujS9M/lMoAF
 yXpdj04a8LgiijFN1RjQah26GR+cnwTDN88eOmjwZ0uTSmmmGtDXdeoEwH7ZpxgkCseo
 nMLlK7NkdXYOvHItvMIBcF48dLRJDC1c8rLrbtzSheaU3eI6uiyt3VdJsGH8v3qIUM8a
 w+SBbeMmLP6kvsx0hxF4JwlKTomXzOdWlAwO6Op7Rd+l1CjAlizPlHWpDVQPEKGfBrTE
 ePZwhjKeHigHdLSJTsVZbqGaToufnJiDe4ZnDuCQvS0u4YUGPOheO/8Ishubf3zKocxX
 tttA==
X-Gm-Message-State: AGi0PuZBVJQg0x3dUB0oGRCiOoJ1P0s4lSuZ5m/5vTOTxiRHcfEm4nIi
 uDffvoiaHcSZvDC7DsWNMHCMjBO82Lb2E0BKa2Gd3kZGyCUoR0P4qdbcF2yCf3USqBzy73u6Ylx
 viKm1eMQQKmuHxz0TCZ/kUw==
X-Received: by 2002:adf:97cc:: with SMTP id t12mr22402301wrb.261.1586868209905; 
 Tue, 14 Apr 2020 05:43:29 -0700 (PDT)
X-Google-Smtp-Source: APiQypJ2dTzegIg0xIyb6oIhZwO+Fw/tjfTAynP0eIvP7y2y/+ilzA1Tw1zlCJEMAy5qMTHNiP27og==
X-Received: by 2002:adf:97cc:: with SMTP id t12mr22402243wrb.261.1586868209612; 
 Tue, 14 Apr 2020 05:43:29 -0700 (PDT)
Received: from localhost.localdomain ([194.230.155.210])
 by smtp.gmail.com with ESMTPSA id m14sm16948816wrs.76.2020.04.14.05.43.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 05:43:28 -0700 (PDT)
From: Emanuele Giuseppe Esposito <eesposit@redhat.com>
To: linux-nfs@vger.kernel.org
Subject: [PATCH 0/8] Simplefs: group and simplify linux fs code
Date: Tue, 14 Apr 2020 14:42:54 +0200
Message-Id: <20200414124304.4470-1-eesposit@redhat.com>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.3 (/)
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
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jOL9o-00Egb6-CF
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

This series of patches introduce wrappers for functions,
arguments simplification in functions calls and most importantly
groups duplicated code in a single header, simplefs, to avoid redundancy
in the linux fs, especially debugfs and tracefs.

Signed-off-by: Emanuele Giuseppe Esposito <eesposit@redhat.com>

Emanuele Giuseppe Esposito (8):
  apparmor: just use vfs_kern_mount to make .null
  fs: extract simple_pin/release_fs to separate files
  fs: wrap simple_pin_fs/simple_release_fs arguments in a struct
  fs: introduce simple_new_inode
  simplefs: add alloc_anon_inode wrapper
  simplefs: add file creation functions
  debugfs: switch to simplefs inode creation API
  tracefs: switch to simplefs inode creation API

 arch/powerpc/platforms/cell/spufs/inode.c |   4 +-
 arch/s390/hypfs/inode.c                   |   4 +-
 drivers/gpu/drm/Kconfig                   |   1 +
 drivers/gpu/drm/drm_drv.c                 |  13 +-
 drivers/infiniband/hw/qib/qib_fs.c        |   6 +-
 drivers/misc/cxl/Kconfig                  |   1 +
 drivers/misc/cxl/api.c                    |  14 +-
 drivers/misc/ibmasm/ibmasmfs.c            |   8 +-
 drivers/misc/ocxl/Kconfig                 |   1 +
 drivers/oprofile/oprofilefs.c             |   8 +-
 drivers/scsi/cxlflash/ocxl_hw.c           |  15 +-
 drivers/usb/gadget/function/f_fs.c        |   8 +-
 fs/Kconfig                                |   3 +
 fs/Kconfig.binfmt                         |   1 +
 fs/Makefile                               |   1 +
 fs/autofs/inode.c                         |   4 +-
 fs/binfmt_misc.c                          |  27 +--
 fs/configfs/Kconfig                       |   1 +
 fs/configfs/mount.c                       |  12 +-
 fs/debugfs/inode.c                        | 171 +++----------------
 fs/efivarfs/inode.c                       |   4 +-
 fs/fuse/control.c                         |   4 +-
 fs/hugetlbfs/inode.c                      |   8 +-
 fs/libfs.c                                |  48 ++----
 fs/ocfs2/dlmfs/dlmfs.c                    |   8 +-
 fs/proc/base.c                            |   4 +-
 fs/proc/proc_sysctl.c                     |   5 +-
 fs/pstore/inode.c                         |  14 +-
 fs/ramfs/inode.c                          |   4 +-
 fs/simplefs.c                             | 194 ++++++++++++++++++++++
 fs/tracefs/inode.c                        | 108 ++----------
 include/linux/fs.h                        |   3 +-
 include/linux/simplefs.h                  |  36 ++++
 ipc/mqueue.c                              |   4 +-
 kernel/bpf/inode.c                        |   7 +-
 lib/Kconfig.debug                         |  16 +-
 mm/shmem.c                                |   4 +-
 net/sunrpc/rpc_pipe.c                     |   4 +-
 security/Kconfig                          |   1 +
 security/apparmor/apparmorfs.c            |  48 +++---
 security/inode.c                          |  17 +-
 41 files changed, 385 insertions(+), 459 deletions(-)
 create mode 100644 fs/simplefs.c
 create mode 100644 include/linux/simplefs.h

-- 
2.25.2



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
