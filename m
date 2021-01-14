Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 394A72F6A07
	for <lists+oprofile-list@lfdr.de>; Thu, 14 Jan 2021 19:54:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l07lZ-0003Vg-Mx; Thu, 14 Jan 2021 18:54:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <viresh.kumar@linaro.org>) id 1l01HU-0001VJ-U9
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 11:59:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pylYOssuD+xRyqmaVqxKWcRZayhzdANiRwD8C+b+Riw=; b=XRLFvLv+KcZjF6J7SJEX0Iv0k2
 xPF2L9jj1zsZKnF3H3RoOUVxPJ8P/Vzt124rR8wLnCSJUQPWmKIUiiAAUEt5K4rKs3drfge0JSRdf
 iP2F5oP201G/2NlmI0lVvkDzMSA3L3gkkh1mAf3aLIHU3pD7WzL5RdCj8TsdLuTQlz3A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=pylYOssuD+xRyqmaVqxKWcRZayhzdANiRwD8C+b+Riw=; b=X
 uqK7lfzeVd3TSBAnXRitkaBUDBYeWXPaAQWAFBxayUV1aqFtT/0hUrqoWvxGG0o44lZrJFdKP+CLv
 0aN6QKflbvE4xS7paOgaA8AHIegYgnkOVTERTbLmEj7o2Wo4QwMWs2ErvL6lTQ5XShDZMvwuREXt9
 hjLblYi5CQ52wRiY=;
Received: from mail-io1-f53.google.com ([209.85.166.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l01HF-008RwM-0g
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 11:59:12 +0000
Received: by mail-io1-f53.google.com with SMTP id r9so10530546ioo.7
 for <oprofile-list@lists.sf.net>; Thu, 14 Jan 2021 03:58:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pylYOssuD+xRyqmaVqxKWcRZayhzdANiRwD8C+b+Riw=;
 b=owjO4Lh3MO1oTcL5KZ5OV1upLem0QEpCSRGf12e/0EG715k9f0Ne++wd4pxaTXi2g/
 feQ32ZTwq1EYsxwDmlBmZbkCGmTe+Hnbj7V0eBhfpa1zIBVgg5SOzG1gXFftJt142zmB
 znWKd9mts+kmbpX5GzrmF9EejdxZ1UOQ4wjUvLn4Pw1UcXKwjP18vL2Je6fKaG6D12Dq
 EXH/GIH8baNV5zp4+RL6g/mFPQub1I4Rs17/3XNuyX/euTpAKbZgPpQsv/UvWwmIuwo+
 OPQb6m6eDxdW0YjQz3TIY/Rs8w2Y/VOEN9ohBnMkBjJ3pmaWVsFE8255/GHt+T6bjzeo
 r5wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pylYOssuD+xRyqmaVqxKWcRZayhzdANiRwD8C+b+Riw=;
 b=WWrtLj1GYvgSZ2FBjUZ+xCAB1jZRU566Cf9lETgglJeOJBUYjeGEbfAOryyBBKKPRt
 Bn13lIE/D1OMnCyKHR2g1x8GRS2HcgH9il3d2i4YB0CUmJdGUdZzIG1Tm1sYveclzxBu
 P0/KyXiTdgmJ0hdnwDpJ4J/04oG1BAkhKu0yW4bFQABE0QbjvU/1/JWFl8nWZPKSIfYb
 rsTCjCBG1AZhYGNIe0YzAsyyoyd0BhRxw+TlXjnIlZPaM4R2zMKIDIkjTN7QxwMznWW4
 RCOVUu9pbmn/w7GJB/R+aXaXGPxO4uWa7alRZPrTfRuLlbeHzMU2EmU0iKLdaPMrYX/B
 pYAQ==
X-Gm-Message-State: AOAM533pKzwkVoKcN81xoadcn12mdl/0cVDnawdjO4e858gJofFjpAoa
 3D0Yh6YlKPRgjDfb4DsT4EhC5Z0J+b/NMcge
X-Google-Smtp-Source: ABdhPJzrGUta1r9hzRtjktyRygUpxhiariwacbranhqvPkwT7qrQxs9IBT60jFj8jbbWpW9x9ngBiA==
X-Received: by 2002:a63:574c:: with SMTP id h12mr7102782pgm.79.1610624089944; 
 Thu, 14 Jan 2021 03:34:49 -0800 (PST)
Received: from localhost ([122.172.85.111])
 by smtp.gmail.com with ESMTPSA id z16sm5418507pgj.51.2021.01.14.03.34.48
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 Jan 2021 03:34:49 -0800 (PST)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Robert Richter <rric@kernel.org>
Subject: [PATCH 00/18] drivers: Remove oprofile and dcookies
Date: Thu, 14 Jan 2021 17:04:24 +0530
Message-Id: <cover.1610622251.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.25.0.rc1.19.g042ed3e048af
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.53 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.53 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lwn.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l01HF-008RwM-0g
X-Mailman-Approved-At: Thu, 14 Jan 2021 18:54:37 +0000
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
Cc: Arnd Bergmann <arnd@kernel.org>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, anmar.oueja@linaro.org,
 oprofile-list@lists.sf.net, Alexander Viro <viro@zeniv.linux.org.uk>,
 William Cohen <wcohen@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

Hello,

The "oprofile" user-space tools don't use the kernel OPROFILE support
any more, and haven't in a long time. User-space has been converted to
the perf interfaces.

Remove oprofile and dcookies (whose only user is oprofile) support from
the kernel.

This was suggested here [1] earlier.

This is build/boot tested by kernel test robot (Intel) and Linaro's
Tuxmake[2] for a lot of architectures and no failures were reported.

--
Viresh

[1] https://lore.kernel.org/lkml/CAHk-=whw9t3ZtV8iA2SJWYQS1VOJuS14P_qhj3v5-9PCBmGQww@mail.gmail.com/
[2] https://lwn.net/Articles/841624/

Viresh Kumar (18):
  arch: alpha: Remove CONFIG_OPROFILE support
  arch: arm: Remove CONFIG_OPROFILE support
  arch: arc: Remove CONFIG_OPROFILE support
  arch: hexagon: Don't select HAVE_OPROFILE
  arch: ia64: Remove CONFIG_OPROFILE support
  arch: ia64: Remove rest of perfmon support
  arch: microblaze: Remove CONFIG_OPROFILE support
  arch: mips: Remove CONFIG_OPROFILE support
  arch: parisc: Remove CONFIG_OPROFILE support
  arch: powerpc: Stop building and using oprofile
  arch: powerpc: Remove oprofile
  arch: s390: Remove CONFIG_OPROFILE support
  arch: sh: Remove CONFIG_OPROFILE support
  arch: sparc: Remove CONFIG_OPROFILE support
  arch: x86: Remove CONFIG_OPROFILE support
  arch: xtensa: Remove CONFIG_OPROFILE support
  drivers: Remove CONFIG_OPROFILE support
  fs: Remove dcookies support

 Documentation/RCU/NMI-RCU.rst                 |    3 +-
 .../admin-guide/kernel-parameters.txt         |   14 -
 Documentation/kbuild/makefiles.rst            |    1 -
 Documentation/process/magic-number.rst        |    1 -
 .../it_IT/process/magic-number.rst            |    1 -
 .../zh_CN/process/magic-number.rst            |    1 -
 MAINTAINERS                                   |   11 -
 arch/Kconfig                                  |   32 -
 arch/alpha/Kconfig                            |    1 -
 arch/alpha/Makefile                           |    1 -
 arch/alpha/oprofile/Makefile                  |   20 -
 arch/alpha/oprofile/common.c                  |  189 --
 arch/alpha/oprofile/op_impl.h                 |   55 -
 arch/alpha/oprofile/op_model_ev4.c            |  114 --
 arch/alpha/oprofile/op_model_ev5.c            |  209 --
 arch/alpha/oprofile/op_model_ev6.c            |  101 -
 arch/alpha/oprofile/op_model_ev67.c           |  261 ---
 arch/arc/Kconfig                              |    1 -
 arch/arc/Makefile                             |    2 -
 arch/arc/oprofile/Makefile                    |   10 -
 arch/arc/oprofile/common.c                    |   23 -
 arch/arm/Kconfig                              |    1 -
 arch/arm/Makefile                             |    2 -
 arch/arm/configs/bcm2835_defconfig            |    1 -
 arch/arm/configs/cns3420vb_defconfig          |    1 -
 arch/arm/configs/corgi_defconfig              |    1 -
 arch/arm/configs/imx_v4_v5_defconfig          |    1 -
 arch/arm/configs/keystone_defconfig           |    1 -
 arch/arm/configs/multi_v5_defconfig           |    1 -
 arch/arm/configs/mv78xx0_defconfig            |    1 -
 arch/arm/configs/mvebu_v5_defconfig           |    1 -
 arch/arm/configs/omap1_defconfig              |    1 -
 arch/arm/configs/omap2plus_defconfig          |    1 -
 arch/arm/configs/orion5x_defconfig            |    1 -
 arch/arm/configs/pxa_defconfig                |    1 -
 arch/arm/configs/qcom_defconfig               |    1 -
 arch/arm/configs/socfpga_defconfig            |    1 -
 arch/arm/configs/spitz_defconfig              |    1 -
 arch/arm/configs/vexpress_defconfig           |    1 -
 arch/arm/oprofile/Makefile                    |   14 -
 arch/arm/oprofile/common.c                    |  132 --
 arch/hexagon/Kconfig                          |    1 -
 arch/ia64/Kconfig                             |    1 -
 arch/ia64/Makefile                            |    1 -
 arch/ia64/configs/bigsur_defconfig            |    1 -
 arch/ia64/include/asm/hw_irq.h                |    1 -
 arch/ia64/include/asm/perfmon.h               |  111 --
 arch/ia64/include/uapi/asm/perfmon.h          |  178 --
 .../include/uapi/asm/perfmon_default_smpl.h   |   84 -
 arch/ia64/kernel/palinfo.c                    |   41 -
 arch/ia64/kernel/perfmon_default_smpl.c       |  297 ---
 arch/ia64/kernel/perfmon_generic.h            |   46 -
 arch/ia64/kernel/perfmon_itanium.h            |    2 +-
 arch/ia64/kernel/perfmon_mckinley.h           |  188 --
 arch/ia64/kernel/perfmon_montecito.h          |  270 ---
 arch/ia64/oprofile/Makefile                   |   10 -
 arch/ia64/oprofile/backtrace.c                |  131 --
 arch/ia64/oprofile/init.c                     |   28 -
 arch/microblaze/Kconfig                       |    1 -
 arch/microblaze/Makefile                      |    2 -
 arch/microblaze/oprofile/Makefile             |   14 -
 .../microblaze/oprofile/microblaze_oprofile.c |   22 -
 arch/mips/Kconfig                             |    3 +-
 arch/mips/Makefile                            |    1 -
 arch/mips/configs/fuloong2e_defconfig         |    1 -
 arch/mips/configs/ip32_defconfig              |    1 -
 arch/mips/configs/lemote2f_defconfig          |    1 -
 arch/mips/configs/mtx1_defconfig              |    1 -
 arch/mips/configs/rs90_defconfig              |    1 -
 .../include/asm/mach-loongson2ef/loongson.h   |    9 -
 arch/mips/loongson2ef/fuloong-2e/irq.c        |    2 +-
 arch/mips/loongson2ef/lemote-2f/irq.c         |    1 -
 arch/mips/oprofile/Makefile                   |   18 -
 arch/mips/oprofile/backtrace.c                |  177 --
 arch/mips/oprofile/common.c                   |  147 --
 arch/mips/oprofile/op_impl.h                  |   41 -
 arch/mips/oprofile/op_model_loongson2.c       |  161 --
 arch/mips/oprofile/op_model_loongson3.c       |  213 --
 arch/mips/oprofile/op_model_mipsxx.c          |  479 -----
 arch/parisc/Kconfig                           |    1 -
 arch/parisc/Makefile                          |    2 -
 arch/parisc/oprofile/Makefile                 |   10 -
 arch/parisc/oprofile/init.c                   |   23 -
 arch/powerpc/Kconfig                          |    1 -
 arch/powerpc/Makefile                         |    2 -
 arch/powerpc/configs/44x/akebono_defconfig    |    1 -
 arch/powerpc/configs/44x/currituck_defconfig  |    1 -
 arch/powerpc/configs/44x/fsp2_defconfig       |    1 -
 arch/powerpc/configs/44x/iss476-smp_defconfig |    1 -
 arch/powerpc/configs/cell_defconfig           |    1 -
 arch/powerpc/configs/g5_defconfig             |    1 -
 arch/powerpc/configs/maple_defconfig          |    1 -
 arch/powerpc/configs/pasemi_defconfig         |    1 -
 arch/powerpc/configs/pmac32_defconfig         |    1 -
 arch/powerpc/configs/powernv_defconfig        |    1 -
 arch/powerpc/configs/ppc64_defconfig          |    1 -
 arch/powerpc/configs/ppc64e_defconfig         |    1 -
 arch/powerpc/configs/ppc6xx_defconfig         |    1 -
 arch/powerpc/configs/ps3_defconfig            |    1 -
 arch/powerpc/configs/pseries_defconfig        |    1 -
 arch/powerpc/include/asm/cputable.h           |   20 -
 arch/powerpc/include/asm/oprofile_impl.h      |  135 --
 arch/powerpc/include/asm/spu.h                |   33 -
 arch/powerpc/kernel/cputable.c                |   67 -
 arch/powerpc/kernel/dt_cpu_ftrs.c             |    2 -
 arch/powerpc/oprofile/Makefile                |   19 -
 arch/powerpc/oprofile/backtrace.c             |  120 --
 arch/powerpc/oprofile/cell/pr_util.h          |  110 --
 arch/powerpc/oprofile/cell/spu_profiler.c     |  248 ---
 arch/powerpc/oprofile/cell/spu_task_sync.c    |  657 -------
 arch/powerpc/oprofile/cell/vma_map.c          |  279 ---
 arch/powerpc/oprofile/common.c                |  243 ---
 arch/powerpc/oprofile/op_model_7450.c         |  207 --
 arch/powerpc/oprofile/op_model_cell.c         | 1709 -----------------
 arch/powerpc/oprofile/op_model_fsl_emb.c      |  380 ----
 arch/powerpc/oprofile/op_model_pa6t.c         |  227 ---
 arch/powerpc/oprofile/op_model_power4.c       |  438 -----
 arch/powerpc/platforms/cell/Kconfig           |    5 -
 arch/powerpc/platforms/cell/spu_notify.c      |   55 -
 arch/powerpc/platforms/cell/spufs/run.c       |    4 +-
 arch/powerpc/platforms/cell/spufs/sched.c     |    5 -
 arch/powerpc/platforms/cell/spufs/spufs.h     |    1 -
 arch/s390/Kconfig                             |    1 -
 arch/s390/Makefile                            |    3 -
 arch/s390/configs/debug_defconfig             |    1 -
 arch/s390/configs/defconfig                   |    1 -
 arch/s390/oprofile/Makefile                   |   10 -
 arch/s390/oprofile/init.c                     |   37 -
 arch/sh/Kconfig                               |    1 -
 arch/sh/Makefile                              |    1 -
 arch/sh/configs/espt_defconfig                |    1 -
 arch/sh/configs/migor_defconfig               |    1 -
 arch/sh/configs/r7780mp_defconfig             |    1 -
 arch/sh/configs/r7785rp_defconfig             |    1 -
 arch/sh/configs/rsk7201_defconfig             |    1 -
 arch/sh/configs/rsk7203_defconfig             |    1 -
 arch/sh/configs/rts7751r2d1_defconfig         |    1 -
 arch/sh/configs/rts7751r2dplus_defconfig      |    1 -
 arch/sh/configs/sdk7786_defconfig             |    1 -
 arch/sh/configs/se7206_defconfig              |    1 -
 arch/sh/configs/sh03_defconfig                |    1 -
 arch/sh/configs/sh7724_generic_defconfig      |    1 -
 arch/sh/configs/sh7763rdp_defconfig           |    1 -
 arch/sh/configs/sh7770_generic_defconfig      |    1 -
 arch/sh/configs/shx3_defconfig                |    1 -
 arch/sh/oprofile/Makefile                     |   16 -
 arch/sh/oprofile/backtrace.c                  |   80 -
 arch/sh/oprofile/common.c                     |   64 -
 arch/sparc/Kconfig                            |    1 -
 arch/sparc/Makefile                           |    1 -
 arch/sparc/configs/sparc64_defconfig          |    1 -
 arch/sparc/oprofile/Makefile                  |   10 -
 arch/sparc/oprofile/init.c                    |   87 -
 arch/x86/Kconfig                              |    1 -
 arch/x86/Makefile                             |    3 -
 arch/x86/include/asm/nmi.h                    |    1 -
 arch/x86/kernel/cpu/perfctr-watchdog.c        |   11 +-
 arch/x86/oprofile/Makefile                    |   12 -
 arch/x86/oprofile/backtrace.c                 |  127 --
 arch/x86/oprofile/init.c                      |   38 -
 arch/x86/oprofile/nmi_int.c                   |  780 --------
 arch/x86/oprofile/op_counter.h                |   30 -
 arch/x86/oprofile/op_model_amd.c              |  542 ------
 arch/x86/oprofile/op_model_p4.c               |  723 -------
 arch/x86/oprofile/op_model_ppro.c             |  245 ---
 arch/x86/oprofile/op_x86_model.h              |   90 -
 arch/xtensa/Kconfig                           |    1 -
 arch/xtensa/Makefile                          |    1 -
 arch/xtensa/configs/audio_kc705_defconfig     |    1 -
 arch/xtensa/configs/generic_kc705_defconfig   |    1 -
 arch/xtensa/configs/smp_lx200_defconfig       |    1 -
 arch/xtensa/configs/xip_kc705_defconfig       |    1 -
 arch/xtensa/kernel/stacktrace.c               |    2 +-
 arch/xtensa/oprofile/Makefile                 |   10 -
 arch/xtensa/oprofile/backtrace.c              |   27 -
 arch/xtensa/oprofile/init.c                   |   26 -
 drivers/oprofile/buffer_sync.c                |  591 ------
 drivers/oprofile/buffer_sync.h                |   22 -
 drivers/oprofile/cpu_buffer.c                 |  465 -----
 drivers/oprofile/cpu_buffer.h                 |  121 --
 drivers/oprofile/event_buffer.c               |  209 --
 drivers/oprofile/event_buffer.h               |   40 -
 drivers/oprofile/nmi_timer_int.c              |  157 --
 drivers/oprofile/oprof.c                      |  286 ---
 drivers/oprofile/oprof.h                      |   50 -
 drivers/oprofile/oprofile_files.c             |  201 --
 drivers/oprofile/oprofile_perf.c              |  328 ----
 drivers/oprofile/oprofile_stats.c             |   84 -
 drivers/oprofile/oprofile_stats.h             |   33 -
 drivers/oprofile/oprofilefs.c                 |  300 ---
 drivers/oprofile/timer_int.c                  |  122 --
 fs/Makefile                                   |    1 -
 fs/dcookies.c                                 |  356 ----
 include/linux/dcookies.h                      |   69 -
 include/linux/oprofile.h                      |  209 --
 init/Kconfig                                  |    2 +-
 kernel/sys.c                                  |    1 -
 usr/include/Makefile                          |    2 -
 198 files changed, 8 insertions(+), 15566 deletions(-)
 delete mode 100644 arch/alpha/oprofile/Makefile
 delete mode 100644 arch/alpha/oprofile/common.c
 delete mode 100644 arch/alpha/oprofile/op_impl.h
 delete mode 100644 arch/alpha/oprofile/op_model_ev4.c
 delete mode 100644 arch/alpha/oprofile/op_model_ev5.c
 delete mode 100644 arch/alpha/oprofile/op_model_ev6.c
 delete mode 100644 arch/alpha/oprofile/op_model_ev67.c
 delete mode 100644 arch/arc/oprofile/Makefile
 delete mode 100644 arch/arc/oprofile/common.c
 delete mode 100644 arch/arm/oprofile/Makefile
 delete mode 100644 arch/arm/oprofile/common.c
 delete mode 100644 arch/ia64/include/asm/perfmon.h
 delete mode 100644 arch/ia64/include/uapi/asm/perfmon.h
 delete mode 100644 arch/ia64/include/uapi/asm/perfmon_default_smpl.h
 delete mode 100644 arch/ia64/kernel/perfmon_default_smpl.c
 delete mode 100644 arch/ia64/kernel/perfmon_generic.h
 delete mode 100644 arch/ia64/kernel/perfmon_mckinley.h
 delete mode 100644 arch/ia64/kernel/perfmon_montecito.h
 delete mode 100644 arch/ia64/oprofile/Makefile
 delete mode 100644 arch/ia64/oprofile/backtrace.c
 delete mode 100644 arch/ia64/oprofile/init.c
 delete mode 100644 arch/microblaze/oprofile/Makefile
 delete mode 100644 arch/microblaze/oprofile/microblaze_oprofile.c
 delete mode 100644 arch/mips/oprofile/Makefile
 delete mode 100644 arch/mips/oprofile/backtrace.c
 delete mode 100644 arch/mips/oprofile/common.c
 delete mode 100644 arch/mips/oprofile/op_impl.h
 delete mode 100644 arch/mips/oprofile/op_model_loongson2.c
 delete mode 100644 arch/mips/oprofile/op_model_loongson3.c
 delete mode 100644 arch/mips/oprofile/op_model_mipsxx.c
 delete mode 100644 arch/parisc/oprofile/Makefile
 delete mode 100644 arch/parisc/oprofile/init.c
 delete mode 100644 arch/powerpc/include/asm/oprofile_impl.h
 delete mode 100644 arch/powerpc/oprofile/Makefile
 delete mode 100644 arch/powerpc/oprofile/backtrace.c
 delete mode 100644 arch/powerpc/oprofile/cell/pr_util.h
 delete mode 100644 arch/powerpc/oprofile/cell/spu_profiler.c
 delete mode 100644 arch/powerpc/oprofile/cell/spu_task_sync.c
 delete mode 100644 arch/powerpc/oprofile/cell/vma_map.c
 delete mode 100644 arch/powerpc/oprofile/common.c
 delete mode 100644 arch/powerpc/oprofile/op_model_7450.c
 delete mode 100644 arch/powerpc/oprofile/op_model_cell.c
 delete mode 100644 arch/powerpc/oprofile/op_model_fsl_emb.c
 delete mode 100644 arch/powerpc/oprofile/op_model_pa6t.c
 delete mode 100644 arch/powerpc/oprofile/op_model_power4.c
 delete mode 100644 arch/powerpc/platforms/cell/spu_notify.c
 delete mode 100644 arch/s390/oprofile/Makefile
 delete mode 100644 arch/s390/oprofile/init.c
 delete mode 100644 arch/sh/oprofile/Makefile
 delete mode 100644 arch/sh/oprofile/backtrace.c
 delete mode 100644 arch/sh/oprofile/common.c
 delete mode 100644 arch/sparc/oprofile/Makefile
 delete mode 100644 arch/sparc/oprofile/init.c
 delete mode 100644 arch/x86/oprofile/Makefile
 delete mode 100644 arch/x86/oprofile/backtrace.c
 delete mode 100644 arch/x86/oprofile/init.c
 delete mode 100644 arch/x86/oprofile/nmi_int.c
 delete mode 100644 arch/x86/oprofile/op_counter.h
 delete mode 100644 arch/x86/oprofile/op_model_amd.c
 delete mode 100644 arch/x86/oprofile/op_model_p4.c
 delete mode 100644 arch/x86/oprofile/op_model_ppro.c
 delete mode 100644 arch/x86/oprofile/op_x86_model.h
 delete mode 100644 arch/xtensa/oprofile/Makefile
 delete mode 100644 arch/xtensa/oprofile/backtrace.c
 delete mode 100644 arch/xtensa/oprofile/init.c
 delete mode 100644 drivers/oprofile/buffer_sync.c
 delete mode 100644 drivers/oprofile/buffer_sync.h
 delete mode 100644 drivers/oprofile/cpu_buffer.c
 delete mode 100644 drivers/oprofile/cpu_buffer.h
 delete mode 100644 drivers/oprofile/event_buffer.c
 delete mode 100644 drivers/oprofile/event_buffer.h
 delete mode 100644 drivers/oprofile/nmi_timer_int.c
 delete mode 100644 drivers/oprofile/oprof.c
 delete mode 100644 drivers/oprofile/oprof.h
 delete mode 100644 drivers/oprofile/oprofile_files.c
 delete mode 100644 drivers/oprofile/oprofile_perf.c
 delete mode 100644 drivers/oprofile/oprofile_stats.c
 delete mode 100644 drivers/oprofile/oprofile_stats.h
 delete mode 100644 drivers/oprofile/oprofilefs.c
 delete mode 100644 drivers/oprofile/timer_int.c
 delete mode 100644 fs/dcookies.c
 delete mode 100644 include/linux/dcookies.h
 delete mode 100644 include/linux/oprofile.h


base-commit: 7c53f6b671f4aba70ff15e1b05148b10d58c2837
-- 
2.25.0.rc1.19.g042ed3e048af



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
