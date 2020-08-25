Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8CE2519B2
	for <lists+oprofile-list@lfdr.de>; Tue, 25 Aug 2020 15:32:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1kAZ3l-0008Pe-Dp; Tue, 25 Aug 2020 13:32:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joe@perches.com>) id 1kARJK-0004DE-Jx
 for oprofile-list@lists.sourceforge.net; Tue, 25 Aug 2020 05:15:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7qkb1TfKX/hBGwVnHqwhpO/pEXp9BEzZa9K+XlCzp7k=; b=QYM/GueGoJ+7daVros0IFaRIIp
 d3gpDqxOa7jJwx3wJHwr7Gv8sEIywL4wDtjcDS9oIhzwNbUnEMu2A9Z3WmMhqHPVouKKWJa0muCsL
 Pnm4TPjPWWWzbXgbpvf8OYRj9t1W5g4Ds0SvEjWeQ8eI8RZ+DAuqOwcUdXbuTeFZ5Xsg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7qkb1TfKX/hBGwVnHqwhpO/pEXp9BEzZa9K+XlCzp7k=; b=R
 X4O+36jhLXMkA7RW3EH2Y2cFmkKoWlVKNYoXPe1yEEW4KsY6Whar51o6vbm9gVohRUWDx262S60n+
 iibsFnnzy4R6QCLwNCsM4uW0wBQ2fqSqC4UiMsdX/sU/Q5Wncla5hcwZ4u424QKCCvzjv8uETyDVm
 h78P3f7oefwTb2CM=;
Received: from smtprelay0242.hostedemail.com ([216.40.44.242]
 helo=smtprelay.hostedemail.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kARJI-0003fW-ED
 for oprofile-list@lists.sourceforge.net; Tue, 25 Aug 2020 05:15:54 +0000
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave06.hostedemail.com (Postfix) with ESMTP id DCC528123FF6
 for <oprofile-list@lists.sf.net>; Tue, 25 Aug 2020 04:56:48 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay04.hostedemail.com (Postfix) with ESMTP id B846B180A9F54;
 Tue, 25 Aug 2020 04:56:42 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:541:857:966:967:973:988:989:1260:1311:1314:1345:1437:1515:1535:1544:1711:1730:1747:1777:1792:1801:2196:2199:2393:2525:2560:2563:2682:2685:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3354:3865:3867:3868:3870:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4384:4385:4395:4605:5007:6119:6261:6737:6742:7875:9025:10004:10848:11026:11473:11658:11914:12043:12048:12050:12297:12438:12555:12679:12895:12986:13161:13229:13894:14096:14181:14394:14721:21080:21433:21451:21627:21740:21773:30054:30056,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: chalk60_631385f27059
X-Filterd-Recvd-Size: 5825
Received: from joe-laptop.perches.com (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf08.hostedemail.com (Postfix) with ESMTPA;
 Tue, 25 Aug 2020 04:56:38 +0000 (UTC)
From: Joe Perches <joe@perches.com>
To: Jiri Kosina <trivial@kernel.org>, oprofile-list@lists.sf.net,
 linux-ide@vger.kernel.org, drbd-dev@lists.linbit.com,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
 linux-hwmon@vger.kernel.org, linux-input@vger.kernel.org,
 linux-bcache@vger.kernel.org, netdev@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 linux-fsdevel@vger.kernel.org, reiserfs-devel@vger.kernel.org,
 linux-nfs@vger.kernel.org
Subject: [PATCH 00/29] treewide: Convert comma separated statements
Date: Mon, 24 Aug 2020 21:55:57 -0700
Message-Id: <cover.1598331148.git.joe@perches.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.40.44.242 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.242 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1kARJI-0003fW-ED
X-Mailman-Approved-At: Tue, 25 Aug 2020 13:32:19 +0000
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 linux-fbdev@vger.kernel.org, linux-ia64@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-kselftest@vger.kernel.org, linux-alpha@vger.kernel.org,
 sparclinux@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

There are many comma separated statements in the kernel.
See:https://lore.kernel.org/lkml/alpine.DEB.2.22.394.2008201856110.2524@hadrien/

Convert the comma separated statements that are in if/do/while blocks
to use braces and semicolons.

Many comma separated statements still exist but those are changes for
another day.

Joe Perches (29):
  coding-style.rst: Avoid comma statements
  alpha: Avoid comma separated statements
  ia64: Avoid comma separated statements
  sparc: Avoid comma separated statements
  ata: Avoid comma separated statements
  drbd: Avoid comma separated statements
  lp: Avoid comma separated statements
  dma-buf: Avoid comma separated statements
  drm/gma500: Avoid comma separated statements
  drm/i915: Avoid comma separated statements
  hwmon: (scmi-hwmon): Avoid comma separated statements
  Input: MT - Avoid comma separated statements
  bcache: Avoid comma separated statements
  media: Avoid comma separated statements
  mtd: Avoid comma separated statements
  8390: Avoid comma separated statements
  fs_enet: Avoid comma separated statements
  wan: sbni: Avoid comma separated statements
  s390/tty3270: Avoid comma separated statements
  scai/arm: Avoid comma separated statements
  media: atomisp: Avoid comma separated statements
  video: fbdev: Avoid comma separated statements
  fuse: Avoid comma separated statements
  reiserfs: Avoid comma separated statements
  lib/zlib: Avoid comma separated statements
  lib: zstd: Avoid comma separated statements
  ipv6: fib6: Avoid comma separated statements
  sunrpc: Avoid comma separated statements
  tools: Avoid comma separated statements

 Documentation/process/coding-style.rst        |  17 +
 arch/alpha/kernel/pci_iommu.c                 |   8 +-
 arch/alpha/oprofile/op_model_ev4.c            |  22 +-
 arch/alpha/oprofile/op_model_ev5.c            |   8 +-
 arch/ia64/kernel/smpboot.c                    |   7 +-
 arch/sparc/kernel/smp_64.c                    |   7 +-
 drivers/ata/pata_icside.c                     |  21 +-
 drivers/block/drbd/drbd_receiver.c            |   6 +-
 drivers/char/lp.c                             |   6 +-
 drivers/dma-buf/st-dma-fence.c                |   7 +-
 drivers/gpu/drm/gma500/mdfld_intel_display.c  |  44 ++-
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |   8 +-
 drivers/gpu/drm/i915/gt/intel_gt_requests.c   |   6 +-
 .../gpu/drm/i915/gt/selftest_workarounds.c    |   6 +-
 drivers/gpu/drm/i915/intel_runtime_pm.c       |   6 +-
 drivers/hwmon/scmi-hwmon.c                    |   6 +-
 drivers/input/input-mt.c                      |  11 +-
 drivers/md/bcache/bset.c                      |  12 +-
 drivers/md/bcache/sysfs.c                     |   6 +-
 drivers/media/i2c/msp3400-kthreads.c          |  12 +-
 drivers/media/pci/bt8xx/bttv-cards.c          |   6 +-
 drivers/media/pci/saa7134/saa7134-video.c     |   7 +-
 drivers/mtd/devices/lart.c                    |  10 +-
 drivers/net/ethernet/8390/axnet_cs.c          |  19 +-
 drivers/net/ethernet/8390/lib8390.c           |  14 +-
 drivers/net/ethernet/8390/pcnet_cs.c          |   6 +-
 .../ethernet/freescale/fs_enet/fs_enet-main.c |  11 +-
 drivers/net/wan/sbni.c                        | 101 +++---
 drivers/s390/char/tty3270.c                   |   6 +-
 drivers/scsi/arm/cumana_2.c                   |  19 +-
 drivers/scsi/arm/eesox.c                      |   9 +-
 drivers/scsi/arm/powertec.c                   |   9 +-
 .../media/atomisp/pci/atomisp_subdev.c        |   6 +-
 drivers/video/fbdev/tgafb.c                   |  12 +-
 fs/fuse/dir.c                                 |  24 +-
 fs/reiserfs/fix_node.c                        |  36 ++-
 lib/zlib_deflate/deftree.c                    |  49 ++-
 lib/zstd/compress.c                           | 120 ++++---
 lib/zstd/fse_compress.c                       |  24 +-
 lib/zstd/huf_compress.c                       |   6 +-
 net/ipv6/ip6_fib.c                            |  12 +-
 net/sunrpc/sysctl.c                           |   6 +-
 tools/lib/subcmd/help.c                       |  10 +-
 tools/power/cpupower/utils/cpufreq-set.c      |  14 +-
 tools/testing/selftests/vm/gup_benchmark.c    |  18 +-
 tools/testing/selftests/vm/userfaultfd.c      | 296 +++++++++++-------
 46 files changed, 694 insertions(+), 382 deletions(-)

-- 
2.26.0



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
