Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 638C02F6A0E
	for <lists+oprofile-list@lfdr.de>; Thu, 14 Jan 2021 19:54:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l07lb-0003Yw-3b; Thu, 14 Jan 2021 18:54:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <viresh.kumar@linaro.org>) id 1l01PW-0001mj-0e
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 12:07:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i7jBpF1SwHtX51ViZFkGHDr736Ew0dGzzE7Qj0s/lQ0=; b=B8gCU59cr9W0fMuiyBZl78f5cq
 +gp1sE5DyAQtICuOyZM87+bW69SOaVoEq33Ss8W9q+N81FFzTOV7gd22iKy0JfJfuJggrIoafw5CA
 vMHwJcDekSuqeG2sd+ePzwLxrpgEc9DDAQGrfJAgbmFyzAXQME1B51nXDkiWE7lhJQJ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i7jBpF1SwHtX51ViZFkGHDr736Ew0dGzzE7Qj0s/lQ0=; b=W8dni5TMdOgPirPUDMvv0IQsN5
 eEP0YGGRUUDBIF7mzpey1cYLUS9YD4dvGVipwGDwJGCnVKUJ6XdKvzGJcCA0RRlrlCOdhArrPw4oE
 w05VHT1qTblwUFRVSA5CBNrwZnEZhkp1cLi6syA3HjzVZ2lA8Y2snvbdcyCkyUpCRBcA=;
Received: from mail-oi1-f175.google.com ([209.85.167.175])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l01PQ-00FZBS-1T
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 12:07:29 +0000
Received: by mail-oi1-f175.google.com with SMTP id d189so5613620oig.11
 for <oprofile-list@lists.sf.net>; Thu, 14 Jan 2021 04:07:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=i7jBpF1SwHtX51ViZFkGHDr736Ew0dGzzE7Qj0s/lQ0=;
 b=lqKp5osRRe/BJS4Zwai3azCvvqyHes3GYE5sWIo963Cei6LlMtt9lZ1gbO7+0BROpK
 Na6XVQ/lSvm0jIOK8jYU6tDDFjCRcZT01ONOuInoX8Xv0xuwVaeKJ5Rw1aONV2bzNMUk
 LWY4oVPtaVwuUP2Lsq7a60kij9C/SnP7j8ge5+8ckXkAHIDiyOpiNOCGZ2WBlfoU1PIa
 7e3WhiKOTr6c0qfFdDldk9sRNyL0dBtDRPwIYPVqHlaSGhb8lXN3OBARH6PTtXMkBHqY
 2Cb+astOZeG6i+OuSw8UwDdzSaFxcI3MUEnPrgBUYTa4gy92WUD775M156/58e4EpNv9
 zqhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=i7jBpF1SwHtX51ViZFkGHDr736Ew0dGzzE7Qj0s/lQ0=;
 b=X0eTls4nyGDf3bOiPS3bieDntKhHs5J8DB9z6YSlT07rF3VpQweEGFZfHyAo2YvhVA
 bkbFrDCExOxRQCDfMhlw3H21OzO/MRGRNaAA+yf70qKojWMOrdf2ZoPc+C0b/coZ9EhK
 zL6VnjYCAa9dqe0CIN9ET3yzR6l/Mz3G0gnK+EobH7Na+A2mjpGBpnMDmkR/NKhg7Txx
 dPsYspchmG1oqt1pPENWTjTDnoVEG2eFFZ5K7iGfKxJ6BuikwkUTsN8Jrh1trBI4pzkE
 wFRd4DMchAovOAB0x/ZEGYpAUjYeqNqdECkgig9BonIZ/0H5Kk8PacLWCYay2GOqEPDI
 OZLw==
X-Gm-Message-State: AOAM531xehQP7/JL3QoS1+EBvgZuf12K61va8XDUFYGHL0OdxxabTzjp
 lGCTchYRKiGW6dCBPkmmnVNuIruaxcfqdQ==
X-Google-Smtp-Source: ABdhPJzp7ypiW8zWI890NA1YBCEhrm+eXr0ClkKvYPv6q7Y73S0QL35BxG6OSW1QBOoNwU+gNvTPLQ==
X-Received: by 2002:a17:90a:f3c7:: with SMTP id
 ha7mr4656665pjb.140.1610624155621; 
 Thu, 14 Jan 2021 03:35:55 -0800 (PST)
Received: from localhost ([122.172.85.111])
 by smtp.gmail.com with ESMTPSA id p22sm5565107pgk.21.2021.01.14.03.35.54
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 Jan 2021 03:35:54 -0800 (PST)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Robert Richter <rric@kernel.org>, Tony Luck <tony.luck@intel.com>,
 Fenghua Yu <fenghua.yu@intel.com>
Subject: [PATCH 06/18] arch: ia64: Remove rest of perfmon support
Date: Thu, 14 Jan 2021 17:05:19 +0530
Message-Id: <482dd297e902c15cf3957cbf646adb09350b8671.1610622251.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.25.0.rc1.19.g042ed3e048af
In-Reply-To: <cover.1610622251.git.viresh.kumar@linaro.org>
References: <cover.1610622251.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linaro.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.175 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.175 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l01PQ-00FZBS-1T
X-Mailman-Approved-At: Thu, 14 Jan 2021 18:54:38 +0000
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
 Viresh Kumar <viresh.kumar@linaro.org>, linux-kernel@vger.kernel.org,
 anmar.oueja@linaro.org, oprofile-list@lists.sf.net,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-ia64@vger.kernel.org,
 William Cohen <wcohen@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

Perfmon support (used by oprofile earlier) was removed by commit
ecf5b72d5f66 ("ia64: Remove perfmon") earlier, but it missed few files
to remove/update.

Clean it up.

Suggested-by: Arnd Bergmann <arnd@kernel.org>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/ia64/include/asm/hw_irq.h                |   1 -
 arch/ia64/include/asm/perfmon.h               | 111 -------
 arch/ia64/include/uapi/asm/perfmon.h          | 178 -----------
 .../include/uapi/asm/perfmon_default_smpl.h   |  84 -----
 arch/ia64/kernel/palinfo.c                    |  41 ---
 arch/ia64/kernel/perfmon_default_smpl.c       | 297 ------------------
 arch/ia64/kernel/perfmon_generic.h            |  46 ---
 arch/ia64/kernel/perfmon_itanium.h            |   2 +-
 arch/ia64/kernel/perfmon_mckinley.h           | 188 -----------
 arch/ia64/kernel/perfmon_montecito.h          | 270 ----------------
 usr/include/Makefile                          |   2 -
 11 files changed, 1 insertion(+), 1219 deletions(-)
 delete mode 100644 arch/ia64/include/asm/perfmon.h
 delete mode 100644 arch/ia64/include/uapi/asm/perfmon.h
 delete mode 100644 arch/ia64/include/uapi/asm/perfmon_default_smpl.h
 delete mode 100644 arch/ia64/kernel/perfmon_default_smpl.c
 delete mode 100644 arch/ia64/kernel/perfmon_generic.h
 delete mode 100644 arch/ia64/kernel/perfmon_mckinley.h
 delete mode 100644 arch/ia64/kernel/perfmon_montecito.h

diff --git a/arch/ia64/include/asm/hw_irq.h b/arch/ia64/include/asm/hw_irq.h
index f6ff95b4ecb1..5d267132f8cb 100644
--- a/arch/ia64/include/asm/hw_irq.h
+++ b/arch/ia64/include/asm/hw_irq.h
@@ -69,7 +69,6 @@ extern int ia64_last_device_vector;
 #define IA64_NUM_DEVICE_VECTORS		(IA64_LAST_DEVICE_VECTOR - IA64_FIRST_DEVICE_VECTOR + 1)
 
 #define IA64_MCA_RENDEZ_VECTOR		0xe8	/* MCA rendez interrupt */
-#define IA64_PERFMON_VECTOR		0xee	/* performance monitor interrupt vector */
 #define IA64_TIMER_VECTOR		0xef	/* use highest-prio group 15 interrupt for timer */
 #define	IA64_MCA_WAKEUP_VECTOR		0xf0	/* MCA wakeup (must be >MCA_RENDEZ_VECTOR) */
 #define IA64_IPI_LOCAL_TLB_FLUSH	0xfc	/* SMP flush local TLB */
diff --git a/arch/ia64/include/asm/perfmon.h b/arch/ia64/include/asm/perfmon.h
deleted file mode 100644
index e0545869cc8c..000000000000
--- a/arch/ia64/include/asm/perfmon.h
+++ /dev/null
@@ -1,111 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * Copyright (C) 2001-2003 Hewlett-Packard Co
- *               Stephane Eranian <eranian@hpl.hp.com>
- */
-#ifndef _ASM_IA64_PERFMON_H
-#define _ASM_IA64_PERFMON_H
-
-#include <uapi/asm/perfmon.h>
-
-
-extern long perfmonctl(int fd, int cmd, void *arg, int narg);
-
-typedef struct {
-	void (*handler)(int irq, void *arg, struct pt_regs *regs);
-} pfm_intr_handler_desc_t;
-
-extern void pfm_save_regs (struct task_struct *);
-extern void pfm_load_regs (struct task_struct *);
-
-extern void pfm_exit_thread(struct task_struct *);
-extern int  pfm_use_debug_registers(struct task_struct *);
-extern int  pfm_release_debug_registers(struct task_struct *);
-extern void pfm_syst_wide_update_task(struct task_struct *, unsigned long info, int is_ctxswin);
-extern void pfm_inherit(struct task_struct *task, struct pt_regs *regs);
-extern void pfm_init_percpu(void);
-extern void pfm_handle_work(void);
-extern int  pfm_install_alt_pmu_interrupt(pfm_intr_handler_desc_t *h);
-extern int  pfm_remove_alt_pmu_interrupt(pfm_intr_handler_desc_t *h);
-
-
-
-/*
- * Reset PMD register flags
- */
-#define PFM_PMD_SHORT_RESET	0
-#define PFM_PMD_LONG_RESET	1
-
-typedef union {
-	unsigned int val;
-	struct {
-		unsigned int notify_user:1;	/* notify user program of overflow */
-		unsigned int reset_ovfl_pmds:1;	/* reset overflowed PMDs */
-		unsigned int block_task:1;	/* block monitored task on kernel exit */
-		unsigned int mask_monitoring:1; /* mask monitors via PMCx.plm */
-		unsigned int reserved:28;	/* for future use */
-	} bits;
-} pfm_ovfl_ctrl_t;
-
-typedef struct {
-	unsigned char	ovfl_pmd;			/* index of overflowed PMD  */
-	unsigned char   ovfl_notify;			/* =1 if monitor requested overflow notification */
-	unsigned short  active_set;			/* event set active at the time of the overflow */
-	pfm_ovfl_ctrl_t ovfl_ctrl;			/* return: perfmon controls to set by handler */
-
-	unsigned long   pmd_last_reset;			/* last reset value of of the PMD */
-	unsigned long	smpl_pmds[4];			/* bitmask of other PMD of interest on overflow */
-	unsigned long   smpl_pmds_values[PMU_MAX_PMDS]; /* values for the other PMDs of interest */
-	unsigned long   pmd_value;			/* current 64-bit value of the PMD */
-	unsigned long	pmd_eventid;			/* eventid associated with PMD */
-} pfm_ovfl_arg_t;
-
-
-typedef struct {
-	char		*fmt_name;
-	pfm_uuid_t	fmt_uuid;
-	size_t		fmt_arg_size;
-	unsigned long	fmt_flags;
-
-	int		(*fmt_validate)(struct task_struct *task, unsigned int flags, int cpu, void *arg);
-	int		(*fmt_getsize)(struct task_struct *task, unsigned int flags, int cpu, void *arg, unsigned long *size);
-	int 		(*fmt_init)(struct task_struct *task, void *buf, unsigned int flags, int cpu, void *arg);
-	int		(*fmt_handler)(struct task_struct *task, void *buf, pfm_ovfl_arg_t *arg, struct pt_regs *regs, unsigned long stamp);
-	int		(*fmt_restart)(struct task_struct *task, pfm_ovfl_ctrl_t *ctrl, void *buf, struct pt_regs *regs);
-	int		(*fmt_restart_active)(struct task_struct *task, pfm_ovfl_ctrl_t *ctrl, void *buf, struct pt_regs *regs);
-	int		(*fmt_exit)(struct task_struct *task, void *buf, struct pt_regs *regs);
-
-	struct list_head fmt_list;
-} pfm_buffer_fmt_t;
-
-extern int pfm_register_buffer_fmt(pfm_buffer_fmt_t *fmt);
-extern int pfm_unregister_buffer_fmt(pfm_uuid_t uuid);
-
-/*
- * perfmon interface exported to modules
- */
-extern int pfm_mod_read_pmds(struct task_struct *, void *req, unsigned int nreq, struct pt_regs *regs);
-extern int pfm_mod_write_pmcs(struct task_struct *, void *req, unsigned int nreq, struct pt_regs *regs);
-extern int pfm_mod_write_ibrs(struct task_struct *task, void *req, unsigned int nreq, struct pt_regs *regs);
-extern int pfm_mod_write_dbrs(struct task_struct *task, void *req, unsigned int nreq, struct pt_regs *regs);
-
-/*
- * describe the content of the local_cpu_date->pfm_syst_info field
- */
-#define PFM_CPUINFO_SYST_WIDE	0x1	/* if set a system wide session exists */
-#define PFM_CPUINFO_DCR_PP	0x2	/* if set the system wide session has started */
-#define PFM_CPUINFO_EXCL_IDLE	0x4	/* the system wide session excludes the idle task */
-
-/*
- * sysctl control structure. visible to sampling formats
- */
-typedef struct {
-	int	debug;		/* turn on/off debugging via syslog */
-	int	debug_ovfl;	/* turn on/off debug printk in overflow handler */
-	int	fastctxsw;	/* turn on/off fast (unsecure) ctxsw */
-	int	expert_mode;	/* turn on/off value checking */
-} pfm_sysctl_t;
-extern pfm_sysctl_t pfm_sysctl;
-
-
-#endif /* _ASM_IA64_PERFMON_H */
diff --git a/arch/ia64/include/uapi/asm/perfmon.h b/arch/ia64/include/uapi/asm/perfmon.h
deleted file mode 100644
index 017548365e5c..000000000000
--- a/arch/ia64/include/uapi/asm/perfmon.h
+++ /dev/null
@@ -1,178 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
-/*
- * Copyright (C) 2001-2003 Hewlett-Packard Co
- *               Stephane Eranian <eranian@hpl.hp.com>
- */
-
-#ifndef _UAPI_ASM_IA64_PERFMON_H
-#define _UAPI_ASM_IA64_PERFMON_H
-
-/*
- * perfmon commands supported on all CPU models
- */
-#define PFM_WRITE_PMCS		0x01
-#define PFM_WRITE_PMDS		0x02
-#define PFM_READ_PMDS		0x03
-#define PFM_STOP		0x04
-#define PFM_START		0x05
-#define PFM_ENABLE		0x06 /* obsolete */
-#define PFM_DISABLE		0x07 /* obsolete */
-#define PFM_CREATE_CONTEXT	0x08
-#define PFM_DESTROY_CONTEXT	0x09 /* obsolete use close() */
-#define PFM_RESTART		0x0a
-#define PFM_PROTECT_CONTEXT	0x0b /* obsolete */
-#define PFM_GET_FEATURES	0x0c
-#define PFM_DEBUG		0x0d
-#define PFM_UNPROTECT_CONTEXT	0x0e /* obsolete */
-#define PFM_GET_PMC_RESET_VAL	0x0f
-#define PFM_LOAD_CONTEXT	0x10
-#define PFM_UNLOAD_CONTEXT	0x11
-
-/*
- * PMU model specific commands (may not be supported on all PMU models)
- */
-#define PFM_WRITE_IBRS		0x20
-#define PFM_WRITE_DBRS		0x21
-
-/*
- * context flags
- */
-#define PFM_FL_NOTIFY_BLOCK    	 0x01	/* block task on user level notifications */
-#define PFM_FL_SYSTEM_WIDE	 0x02	/* create a system wide context */
-#define PFM_FL_OVFL_NO_MSG	 0x80   /* do not post overflow/end messages for notification */
-
-/*
- * event set flags
- */
-#define PFM_SETFL_EXCL_IDLE      0x01   /* exclude idle task (syswide only) XXX: DO NOT USE YET */
-
-/*
- * PMC flags
- */
-#define PFM_REGFL_OVFL_NOTIFY	0x1	/* send notification on overflow */
-#define PFM_REGFL_RANDOM	0x2	/* randomize sampling interval   */
-
-/*
- * PMD/PMC/IBR/DBR return flags (ignored on input)
- *
- * Those flags are used on output and must be checked in case EAGAIN is returned
- * by any of the calls using a pfarg_reg_t or pfarg_dbreg_t structure.
- */
-#define PFM_REG_RETFL_NOTAVAIL	(1UL<<31) /* set if register is implemented but not available */
-#define PFM_REG_RETFL_EINVAL	(1UL<<30) /* set if register entry is invalid */
-#define PFM_REG_RETFL_MASK	(PFM_REG_RETFL_NOTAVAIL|PFM_REG_RETFL_EINVAL)
-
-#define PFM_REG_HAS_ERROR(flag)	(((flag) & PFM_REG_RETFL_MASK) != 0)
-
-typedef unsigned char pfm_uuid_t[16];	/* custom sampling buffer identifier type */
-
-/*
- * Request structure used to define a context
- */
-typedef struct {
-	pfm_uuid_t     ctx_smpl_buf_id;	 /* which buffer format to use (if needed) */
-	unsigned long  ctx_flags;	 /* noblock/block */
-	unsigned short ctx_nextra_sets;	 /* number of extra event sets (you always get 1) */
-	unsigned short ctx_reserved1;	 /* for future use */
-	int	       ctx_fd;		 /* return arg: unique identification for context */
-	void	       *ctx_smpl_vaddr;	 /* return arg: virtual address of sampling buffer, is used */
-	unsigned long  ctx_reserved2[11];/* for future use */
-} pfarg_context_t;
-
-/*
- * Request structure used to write/read a PMC or PMD
- */
-typedef struct {
-	unsigned int	reg_num;	   /* which register */
-	unsigned short	reg_set;	   /* event set for this register */
-	unsigned short	reg_reserved1;	   /* for future use */
-
-	unsigned long	reg_value;	   /* initial pmc/pmd value */
-	unsigned long	reg_flags;	   /* input: pmc/pmd flags, return: reg error */
-
-	unsigned long	reg_long_reset;	   /* reset after buffer overflow notification */
-	unsigned long	reg_short_reset;   /* reset after counter overflow */
-
-	unsigned long	reg_reset_pmds[4]; /* which other counters to reset on overflow */
-	unsigned long	reg_random_seed;   /* seed value when randomization is used */
-	unsigned long	reg_random_mask;   /* bitmask used to limit random value */
-	unsigned long   reg_last_reset_val;/* return: PMD last reset value */
-
-	unsigned long	reg_smpl_pmds[4];  /* which pmds are accessed when PMC overflows */
-	unsigned long	reg_smpl_eventid;  /* opaque sampling event identifier */
-
-	unsigned long   reg_reserved2[3];   /* for future use */
-} pfarg_reg_t;
-
-typedef struct {
-	unsigned int	dbreg_num;		/* which debug register */
-	unsigned short	dbreg_set;		/* event set for this register */
-	unsigned short	dbreg_reserved1;	/* for future use */
-	unsigned long	dbreg_value;		/* value for debug register */
-	unsigned long	dbreg_flags;		/* return: dbreg error */
-	unsigned long	dbreg_reserved2[1];	/* for future use */
-} pfarg_dbreg_t;
-
-typedef struct {
-	unsigned int	ft_version;	/* perfmon: major [16-31], minor [0-15] */
-	unsigned int	ft_reserved;	/* reserved for future use */
-	unsigned long	reserved[4];	/* for future use */
-} pfarg_features_t;
-
-typedef struct {
-	pid_t		load_pid;	   /* process to load the context into */
-	unsigned short	load_set;	   /* first event set to load */
-	unsigned short	load_reserved1;	   /* for future use */
-	unsigned long	load_reserved2[3]; /* for future use */
-} pfarg_load_t;
-
-typedef struct {
-	int		msg_type;		/* generic message header */
-	int		msg_ctx_fd;		/* generic message header */
-	unsigned long	msg_ovfl_pmds[4];	/* which PMDs overflowed */
-	unsigned short  msg_active_set;		/* active set at the time of overflow */
-	unsigned short  msg_reserved1;		/* for future use */
-	unsigned int    msg_reserved2;		/* for future use */
-	unsigned long	msg_tstamp;		/* for perf tuning/debug */
-} pfm_ovfl_msg_t;
-
-typedef struct {
-	int		msg_type;		/* generic message header */
-	int		msg_ctx_fd;		/* generic message header */
-	unsigned long	msg_tstamp;		/* for perf tuning */
-} pfm_end_msg_t;
-
-typedef struct {
-	int		msg_type;		/* type of the message */
-	int		msg_ctx_fd;		/* unique identifier for the context */
-	unsigned long	msg_tstamp;		/* for perf tuning */
-} pfm_gen_msg_t;
-
-#define PFM_MSG_OVFL	1	/* an overflow happened */
-#define PFM_MSG_END	2	/* task to which context was attached ended */
-
-typedef union {
-	pfm_ovfl_msg_t	pfm_ovfl_msg;
-	pfm_end_msg_t	pfm_end_msg;
-	pfm_gen_msg_t	pfm_gen_msg;
-} pfm_msg_t;
-
-/*
- * Define the version numbers for both perfmon as a whole and the sampling buffer format.
- */
-#define PFM_VERSION_MAJ		 2U
-#define PFM_VERSION_MIN		 0U
-#define PFM_VERSION		 (((PFM_VERSION_MAJ&0xffff)<<16)|(PFM_VERSION_MIN & 0xffff))
-#define PFM_VERSION_MAJOR(x)	 (((x)>>16) & 0xffff)
-#define PFM_VERSION_MINOR(x)	 ((x) & 0xffff)
-
-
-/*
- * miscellaneous architected definitions
- */
-#define PMU_FIRST_COUNTER	4	/* first counting monitor (PMC/PMD) */
-#define PMU_MAX_PMCS		256	/* maximum architected number of PMC registers */
-#define PMU_MAX_PMDS		256	/* maximum architected number of PMD registers */
-
-
-#endif /* _UAPI_ASM_IA64_PERFMON_H */
diff --git a/arch/ia64/include/uapi/asm/perfmon_default_smpl.h b/arch/ia64/include/uapi/asm/perfmon_default_smpl.h
deleted file mode 100644
index d3f36aff0e1f..000000000000
--- a/arch/ia64/include/uapi/asm/perfmon_default_smpl.h
+++ /dev/null
@@ -1,84 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
-/*
- * Copyright (C) 2002-2003 Hewlett-Packard Co
- *               Stephane Eranian <eranian@hpl.hp.com>
- *
- * This file implements the default sampling buffer format
- * for Linux/ia64 perfmon subsystem.
- */
-#ifndef __PERFMON_DEFAULT_SMPL_H__
-#define __PERFMON_DEFAULT_SMPL_H__ 1
-
-#define PFM_DEFAULT_SMPL_UUID { \
-		0x4d, 0x72, 0xbe, 0xc0, 0x06, 0x64, 0x41, 0x43, 0x82, 0xb4, 0xd3, 0xfd, 0x27, 0x24, 0x3c, 0x97}
-
-/*
- * format specific parameters (passed at context creation)
- */
-typedef struct {
-	unsigned long buf_size;		/* size of the buffer in bytes */
-	unsigned int  flags;		/* buffer specific flags */
-	unsigned int  res1;		/* for future use */
-	unsigned long reserved[2];	/* for future use */
-} pfm_default_smpl_arg_t;
-
-/*
- * combined context+format specific structure. Can be passed
- * to PFM_CONTEXT_CREATE
- */
-typedef struct {
-	pfarg_context_t		ctx_arg;
-	pfm_default_smpl_arg_t	buf_arg;
-} pfm_default_smpl_ctx_arg_t;
-
-/*
- * This header is at the beginning of the sampling buffer returned to the user.
- * It is directly followed by the first record.
- */
-typedef struct {
-	unsigned long	hdr_count;		/* how many valid entries */
-	unsigned long	hdr_cur_offs;		/* current offset from top of buffer */
-	unsigned long	hdr_reserved2;		/* reserved for future use */
-
-	unsigned long	hdr_overflows;		/* how many times the buffer overflowed */
-	unsigned long   hdr_buf_size;		/* how many bytes in the buffer */
-
-	unsigned int	hdr_version;		/* contains perfmon version (smpl format diffs) */
-	unsigned int	hdr_reserved1;		/* for future use */
-	unsigned long	hdr_reserved[10];	/* for future use */
-} pfm_default_smpl_hdr_t;
-
-/*
- * Entry header in the sampling buffer.  The header is directly followed
- * with the values of the PMD registers of interest saved in increasing 
- * index order: PMD4, PMD5, and so on. How many PMDs are present depends 
- * on how the session was programmed.
- *
- * In the case where multiple counters overflow at the same time, multiple
- * entries are written consecutively.
- *
- * last_reset_value member indicates the initial value of the overflowed PMD. 
- */
-typedef struct {
-        int             pid;                    /* thread id (for NPTL, this is gettid()) */
-        unsigned char   reserved1[3];           /* reserved for future use */
-        unsigned char   ovfl_pmd;               /* index of overflowed PMD */
-
-        unsigned long   last_reset_val;         /* initial value of overflowed PMD */
-        unsigned long   ip;                     /* where did the overflow interrupt happened  */
-        unsigned long   tstamp;                 /* ar.itc when entering perfmon intr. handler */
-
-        unsigned short  cpu;                    /* cpu on which the overflow occurred */
-        unsigned short  set;                    /* event set active when overflow occurred   */
-        int    		tgid;              	/* thread group id (for NPTL, this is getpid()) */
-} pfm_default_smpl_entry_t;
-
-#define PFM_DEFAULT_MAX_PMDS		64 /* how many pmds supported by data structures (sizeof(unsigned long) */
-#define PFM_DEFAULT_MAX_ENTRY_SIZE	(sizeof(pfm_default_smpl_entry_t)+(sizeof(unsigned long)*PFM_DEFAULT_MAX_PMDS))
-#define PFM_DEFAULT_SMPL_MIN_BUF_SIZE	(sizeof(pfm_default_smpl_hdr_t)+PFM_DEFAULT_MAX_ENTRY_SIZE)
-
-#define PFM_DEFAULT_SMPL_VERSION_MAJ	2U
-#define PFM_DEFAULT_SMPL_VERSION_MIN	0U
-#define PFM_DEFAULT_SMPL_VERSION	(((PFM_DEFAULT_SMPL_VERSION_MAJ&0xffff)<<16)|(PFM_DEFAULT_SMPL_VERSION_MIN & 0xffff))
-
-#endif /* __PERFMON_DEFAULT_SMPL_H__ */
diff --git a/arch/ia64/kernel/palinfo.c b/arch/ia64/kernel/palinfo.c
index 78fa6579c9ea..64189f04c1a4 100644
--- a/arch/ia64/kernel/palinfo.c
+++ b/arch/ia64/kernel/palinfo.c
@@ -648,46 +648,6 @@ static int version_info(struct seq_file *m)
 	return 0;
 }
 
-static int perfmon_info(struct seq_file *m)
-{
-	u64 pm_buffer[16];
-	pal_perf_mon_info_u_t pm_info;
-
-	if (ia64_pal_perf_mon_info(pm_buffer, &pm_info) != 0)
-		return 0;
-
-	seq_printf(m,
-		   "PMC/PMD pairs                 : %d\n"
-		   "Counter width                 : %d bits\n"
-		   "Cycle event number            : %d\n"
-		   "Retired event number          : %d\n"
-		   "Implemented PMC               : ",
-		   pm_info.pal_perf_mon_info_s.generic,
-		   pm_info.pal_perf_mon_info_s.width,
-		   pm_info.pal_perf_mon_info_s.cycles,
-		   pm_info.pal_perf_mon_info_s.retired);
-
-	bitregister_process(m, pm_buffer, 256);
-	seq_puts(m, "\nImplemented PMD               : ");
-	bitregister_process(m, pm_buffer+4, 256);
-	seq_puts(m, "\nCycles count capable          : ");
-	bitregister_process(m, pm_buffer+8, 256);
-	seq_puts(m, "\nRetired bundles count capable : ");
-
-#ifdef CONFIG_ITANIUM
-	/*
-	 * PAL_PERF_MON_INFO reports that only PMC4 can be used to count CPU_CYCLES
-	 * which is wrong, both PMC4 and PMD5 support it.
-	 */
-	if (pm_buffer[12] == 0x10)
-		pm_buffer[12]=0x30;
-#endif
-
-	bitregister_process(m, pm_buffer+12, 256);
-	seq_putc(m, '\n');
-	return 0;
-}
-
 static int frequency_info(struct seq_file *m)
 {
 	struct pal_freq_ratio proc, itc, bus;
@@ -816,7 +776,6 @@ static const palinfo_entry_t palinfo_entries[]={
 	{ "power_info",		power_info, },
 	{ "register_info",	register_info, },
 	{ "processor_info",	processor_info, },
-	{ "perfmon_info",	perfmon_info, },
 	{ "frequency_info",	frequency_info, },
 	{ "bus_info",		bus_info },
 	{ "tr_info",		tr_info, }
diff --git a/arch/ia64/kernel/perfmon_default_smpl.c b/arch/ia64/kernel/perfmon_default_smpl.c
deleted file mode 100644
index a40c56020fc5..000000000000
--- a/arch/ia64/kernel/perfmon_default_smpl.c
+++ /dev/null
@@ -1,297 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright (C) 2002-2003 Hewlett-Packard Co
- *               Stephane Eranian <eranian@hpl.hp.com>
- *
- * This file implements the default sampling buffer format
- * for the Linux/ia64 perfmon-2 subsystem.
- */
-#include <linux/kernel.h>
-#include <linux/types.h>
-#include <linux/module.h>
-#include <linux/init.h>
-#include <asm/delay.h>
-#include <linux/smp.h>
-
-#include <asm/perfmon.h>
-#include <asm/perfmon_default_smpl.h>
-
-MODULE_AUTHOR("Stephane Eranian <eranian@hpl.hp.com>");
-MODULE_DESCRIPTION("perfmon default sampling format");
-MODULE_LICENSE("GPL");
-
-#define DEFAULT_DEBUG 1
-
-#ifdef DEFAULT_DEBUG
-#define DPRINT(a) \
-	do { \
-		if (unlikely(pfm_sysctl.debug >0)) { printk("%s.%d: CPU%d ", __func__, __LINE__, smp_processor_id()); printk a; } \
-	} while (0)
-
-#define DPRINT_ovfl(a) \
-	do { \
-		if (unlikely(pfm_sysctl.debug > 0 && pfm_sysctl.debug_ovfl >0)) { printk("%s.%d: CPU%d ", __func__, __LINE__, smp_processor_id()); printk a; } \
-	} while (0)
-
-#else
-#define DPRINT(a)
-#define DPRINT_ovfl(a)
-#endif
-
-static int
-default_validate(struct task_struct *task, unsigned int flags, int cpu, void *data)
-{
-	pfm_default_smpl_arg_t *arg = (pfm_default_smpl_arg_t*)data;
-	int ret = 0;
-
-	if (data == NULL) {
-		DPRINT(("[%d] no argument passed\n", task_pid_nr(task)));
-		return -EINVAL;
-	}
-
-	DPRINT(("[%d] validate flags=0x%x CPU%d\n", task_pid_nr(task), flags, cpu));
-
-	/*
-	 * must hold at least the buffer header + one minimally sized entry
-	 */
-	if (arg->buf_size < PFM_DEFAULT_SMPL_MIN_BUF_SIZE) return -EINVAL;
-
-	DPRINT(("buf_size=%lu\n", arg->buf_size));
-
-	return ret;
-}
-
-static int
-default_get_size(struct task_struct *task, unsigned int flags, int cpu, void *data, unsigned long *size)
-{
-	pfm_default_smpl_arg_t *arg = (pfm_default_smpl_arg_t *)data;
-
-	/*
-	 * size has been validated in default_validate
-	 */
-	*size = arg->buf_size;
-
-	return 0;
-}
-
-static int
-default_init(struct task_struct *task, void *buf, unsigned int flags, int cpu, void *data)
-{
-	pfm_default_smpl_hdr_t *hdr;
-	pfm_default_smpl_arg_t *arg = (pfm_default_smpl_arg_t *)data;
-
-	hdr = (pfm_default_smpl_hdr_t *)buf;
-
-	hdr->hdr_version      = PFM_DEFAULT_SMPL_VERSION;
-	hdr->hdr_buf_size     = arg->buf_size;
-	hdr->hdr_cur_offs     = sizeof(*hdr);
-	hdr->hdr_overflows    = 0UL;
-	hdr->hdr_count        = 0UL;
-
-	DPRINT(("[%d] buffer=%p buf_size=%lu hdr_size=%lu hdr_version=%u cur_offs=%lu\n",
-		task_pid_nr(task),
-		buf,
-		hdr->hdr_buf_size,
-		sizeof(*hdr),
-		hdr->hdr_version,
-		hdr->hdr_cur_offs));
-
-	return 0;
-}
-
-static int
-default_handler(struct task_struct *task, void *buf, pfm_ovfl_arg_t *arg, struct pt_regs *regs, unsigned long stamp)
-{
-	pfm_default_smpl_hdr_t *hdr;
-	pfm_default_smpl_entry_t *ent;
-	void *cur, *last;
-	unsigned long *e, entry_size;
-	unsigned int npmds, i;
-	unsigned char ovfl_pmd;
-	unsigned char ovfl_notify;
-
-	if (unlikely(buf == NULL || arg == NULL|| regs == NULL || task == NULL)) {
-		DPRINT(("[%d] invalid arguments buf=%p arg=%p\n", task->pid, buf, arg));
-		return -EINVAL;
-	}
-
-	hdr         = (pfm_default_smpl_hdr_t *)buf;
-	cur         = buf+hdr->hdr_cur_offs;
-	last        = buf+hdr->hdr_buf_size;
-	ovfl_pmd    = arg->ovfl_pmd;
-	ovfl_notify = arg->ovfl_notify;
-
-	/*
-	 * precheck for sanity
-	 */
-	if ((last - cur) < PFM_DEFAULT_MAX_ENTRY_SIZE) goto full;
-
-	npmds = hweight64(arg->smpl_pmds[0]);
-
-	ent = (pfm_default_smpl_entry_t *)cur;
-
-	prefetch(arg->smpl_pmds_values);
-
-	entry_size = sizeof(*ent) + (npmds << 3);
-
-	/* position for first pmd */
-	e = (unsigned long *)(ent+1);
-
-	hdr->hdr_count++;
-
-	DPRINT_ovfl(("[%d] count=%lu cur=%p last=%p free_bytes=%lu ovfl_pmd=%d ovfl_notify=%d npmds=%u\n",
-			task->pid,
-			hdr->hdr_count,
-			cur, last,
-			last-cur,
-			ovfl_pmd,
-			ovfl_notify, npmds));
-
-	/*
-	 * current = task running at the time of the overflow.
-	 *
-	 * per-task mode:
-	 * 	- this is usually the task being monitored.
-	 * 	  Under certain conditions, it might be a different task
-	 *
-	 * system-wide:
-	 * 	- this is not necessarily the task controlling the session
-	 */
-	ent->pid            = current->pid;
-	ent->ovfl_pmd  	    = ovfl_pmd;
-	ent->last_reset_val = arg->pmd_last_reset; //pmd[0].reg_last_reset_val;
-
-	/*
-	 * where did the fault happen (includes slot number)
-	 */
-	ent->ip = regs->cr_iip | ((regs->cr_ipsr >> 41) & 0x3);
-
-	ent->tstamp    = stamp;
-	ent->cpu       = smp_processor_id();
-	ent->set       = arg->active_set;
-	ent->tgid      = current->tgid;
-
-	/*
-	 * selectively store PMDs in increasing index number
-	 */
-	if (npmds) {
-		unsigned long *val = arg->smpl_pmds_values;
-		for(i=0; i < npmds; i++) {
-			*e++ = *val++;
-		}
-	}
-
-	/*
-	 * update position for next entry
-	 */
-	hdr->hdr_cur_offs += entry_size;
-	cur               += entry_size;
-
-	/*
-	 * post check to avoid losing the last sample
-	 */
-	if ((last - cur) < PFM_DEFAULT_MAX_ENTRY_SIZE) goto full;
-
-	/*
-	 * keep same ovfl_pmds, ovfl_notify
-	 */
-	arg->ovfl_ctrl.bits.notify_user     = 0;
-	arg->ovfl_ctrl.bits.block_task      = 0;
-	arg->ovfl_ctrl.bits.mask_monitoring = 0;
-	arg->ovfl_ctrl.bits.reset_ovfl_pmds = 1; /* reset before returning from interrupt handler */
-
-	return 0;
-full:
-	DPRINT_ovfl(("sampling buffer full free=%lu, count=%lu, ovfl_notify=%d\n", last-cur, hdr->hdr_count, ovfl_notify));
-
-	/*
-	 * increment number of buffer overflow.
-	 * important to detect duplicate set of samples.
-	 */
-	hdr->hdr_overflows++;
-
-	/*
-	 * if no notification requested, then we saturate the buffer
-	 */
-	if (ovfl_notify == 0) {
-		arg->ovfl_ctrl.bits.notify_user     = 0;
-		arg->ovfl_ctrl.bits.block_task      = 0;
-		arg->ovfl_ctrl.bits.mask_monitoring = 1;
-		arg->ovfl_ctrl.bits.reset_ovfl_pmds = 0;
-	} else {
-		arg->ovfl_ctrl.bits.notify_user     = 1;
-		arg->ovfl_ctrl.bits.block_task      = 1; /* ignored for non-blocking context */
-		arg->ovfl_ctrl.bits.mask_monitoring = 1;
-		arg->ovfl_ctrl.bits.reset_ovfl_pmds = 0; /* no reset now */
-	}
-	return -1; /* we are full, sorry */
-}
-
-static int
-default_restart(struct task_struct *task, pfm_ovfl_ctrl_t *ctrl, void *buf, struct pt_regs *regs)
-{
-	pfm_default_smpl_hdr_t *hdr;
-
-	hdr = (pfm_default_smpl_hdr_t *)buf;
-
-	hdr->hdr_count    = 0UL;
-	hdr->hdr_cur_offs = sizeof(*hdr);
-
-	ctrl->bits.mask_monitoring = 0;
-	ctrl->bits.reset_ovfl_pmds = 1; /* uses long-reset values */
-
-	return 0;
-}
-
-static int
-default_exit(struct task_struct *task, void *buf, struct pt_regs *regs)
-{
-	DPRINT(("[%d] exit(%p)\n", task_pid_nr(task), buf));
-	return 0;
-}
-
-static pfm_buffer_fmt_t default_fmt={
- 	.fmt_name 	    = "default_format",
- 	.fmt_uuid	    = PFM_DEFAULT_SMPL_UUID,
- 	.fmt_arg_size	    = sizeof(pfm_default_smpl_arg_t),
- 	.fmt_validate	    = default_validate,
- 	.fmt_getsize	    = default_get_size,
- 	.fmt_init	    = default_init,
- 	.fmt_handler	    = default_handler,
- 	.fmt_restart	    = default_restart,
- 	.fmt_restart_active = default_restart,
- 	.fmt_exit	    = default_exit,
-};
-
-static int __init
-pfm_default_smpl_init_module(void)
-{
-	int ret;
-
-	ret = pfm_register_buffer_fmt(&default_fmt);
-	if (ret == 0) {
-		printk("perfmon_default_smpl: %s v%u.%u registered\n",
-			default_fmt.fmt_name,
-			PFM_DEFAULT_SMPL_VERSION_MAJ,
-			PFM_DEFAULT_SMPL_VERSION_MIN);
-	} else {
-		printk("perfmon_default_smpl: %s cannot register ret=%d\n",
-			default_fmt.fmt_name,
-			ret);
-	}
-
-	return ret;
-}
-
-static void __exit
-pfm_default_smpl_cleanup_module(void)
-{
-	int ret;
-	ret = pfm_unregister_buffer_fmt(default_fmt.fmt_uuid);
-
-	printk("perfmon_default_smpl: unregister %s=%d\n", default_fmt.fmt_name, ret);
-}
-
-module_init(pfm_default_smpl_init_module);
-module_exit(pfm_default_smpl_cleanup_module);
-
diff --git a/arch/ia64/kernel/perfmon_generic.h b/arch/ia64/kernel/perfmon_generic.h
deleted file mode 100644
index 96af4696cea9..000000000000
--- a/arch/ia64/kernel/perfmon_generic.h
+++ /dev/null
@@ -1,46 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * This file contains the generic PMU register description tables
- * and pmc checker used by perfmon.c.
- *
- * Copyright (C) 2002-2003  Hewlett Packard Co
- *               Stephane Eranian <eranian@hpl.hp.com>
- */
-
-static pfm_reg_desc_t pfm_gen_pmc_desc[PMU_MAX_PMCS]={
-/* pmc0  */ { PFM_REG_CONTROL , 0, 0x1UL, -1UL, NULL, NULL, {0UL,0UL, 0UL, 0UL}, {0UL,0UL, 0UL, 0UL}},
-/* pmc1  */ { PFM_REG_CONTROL , 0, 0x0UL, -1UL, NULL, NULL, {0UL,0UL, 0UL, 0UL}, {0UL,0UL, 0UL, 0UL}},
-/* pmc2  */ { PFM_REG_CONTROL , 0, 0x0UL, -1UL, NULL, NULL, {0UL,0UL, 0UL, 0UL}, {0UL,0UL, 0UL, 0UL}},
-/* pmc3  */ { PFM_REG_CONTROL , 0, 0x0UL, -1UL, NULL, NULL, {0UL,0UL, 0UL, 0UL}, {0UL,0UL, 0UL, 0UL}},
-/* pmc4  */ { PFM_REG_COUNTING, 0, 0x0UL, -1UL, NULL, NULL, {RDEP(4),0UL, 0UL, 0UL}, {0UL,0UL, 0UL, 0UL}},
-/* pmc5  */ { PFM_REG_COUNTING, 0, 0x0UL, -1UL, NULL, NULL, {RDEP(5),0UL, 0UL, 0UL}, {0UL,0UL, 0UL, 0UL}},
-/* pmc6  */ { PFM_REG_COUNTING, 0, 0x0UL, -1UL, NULL, NULL, {RDEP(6),0UL, 0UL, 0UL}, {0UL,0UL, 0UL, 0UL}},
-/* pmc7  */ { PFM_REG_COUNTING, 0, 0x0UL, -1UL, NULL, NULL, {RDEP(7),0UL, 0UL, 0UL}, {0UL,0UL, 0UL, 0UL}},
-	    { PFM_REG_END     , 0, 0x0UL, -1UL, NULL, NULL, {0,}, {0,}}, /* end marker */
-};
-
-static pfm_reg_desc_t pfm_gen_pmd_desc[PMU_MAX_PMDS]={
-/* pmd0  */ { PFM_REG_NOTIMPL , 0, 0x0UL, -1UL, NULL, NULL, {0,}, {0,}},
-/* pmd1  */ { PFM_REG_NOTIMPL , 0, 0x0UL, -1UL, NULL, NULL, {0,}, {0,}},
-/* pmd2  */ { PFM_REG_NOTIMPL , 0, 0x0UL, -1UL, NULL, NULL, {0,}, {0,}},
-/* pmd3  */ { PFM_REG_NOTIMPL , 0, 0x0UL, -1UL, NULL, NULL, {0,}, {0,}},
-/* pmd4  */ { PFM_REG_COUNTING, 0, 0x0UL, -1UL, NULL, NULL, {0UL,0UL, 0UL, 0UL}, {RDEP(4),0UL, 0UL, 0UL}},
-/* pmd5  */ { PFM_REG_COUNTING, 0, 0x0UL, -1UL, NULL, NULL, {0UL,0UL, 0UL, 0UL}, {RDEP(5),0UL, 0UL, 0UL}},
-/* pmd6  */ { PFM_REG_COUNTING, 0, 0x0UL, -1UL, NULL, NULL, {0UL,0UL, 0UL, 0UL}, {RDEP(6),0UL, 0UL, 0UL}},
-/* pmd7  */ { PFM_REG_COUNTING, 0, 0x0UL, -1UL, NULL, NULL, {0UL,0UL, 0UL, 0UL}, {RDEP(7),0UL, 0UL, 0UL}},
-	    { PFM_REG_END     , 0, 0x0UL, -1UL, NULL, NULL, {0,}, {0,}}, /* end marker */
-};
-
-/*
- * impl_pmcs, impl_pmds are computed at runtime to minimize errors!
- */
-static pmu_config_t pmu_conf_gen={
-	.pmu_name   = "Generic",
-	.pmu_family = 0xff, /* any */
-	.ovfl_val   = (1UL << 32) - 1,
-	.num_ibrs   = 0, /* does not use */
-	.num_dbrs   = 0, /* does not use */
-	.pmd_desc   = pfm_gen_pmd_desc,
-	.pmc_desc   = pfm_gen_pmc_desc
-};
-
diff --git a/arch/ia64/kernel/perfmon_itanium.h b/arch/ia64/kernel/perfmon_itanium.h
index f2d348648a03..dbd04028aafa 100644
--- a/arch/ia64/kernel/perfmon_itanium.h
+++ b/arch/ia64/kernel/perfmon_itanium.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 /*
  * This file contains the Itanium PMU register description tables
- * and pmc checker used by perfmon.c.
+ * and pmc checker.
  *
  * Copyright (C) 2002-2003  Hewlett Packard Co
  *               Stephane Eranian <eranian@hpl.hp.com>
diff --git a/arch/ia64/kernel/perfmon_mckinley.h b/arch/ia64/kernel/perfmon_mckinley.h
deleted file mode 100644
index a993249e58bc..000000000000
--- a/arch/ia64/kernel/perfmon_mckinley.h
+++ /dev/null
@@ -1,188 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * This file contains the McKinley PMU register description tables
- * and pmc checker used by perfmon.c.
- *
- * Copyright (C) 2002-2003  Hewlett Packard Co
- *               Stephane Eranian <eranian@hpl.hp.com>
- */
-static int pfm_mck_pmc_check(struct task_struct *task, pfm_context_t *ctx, unsigned int cnum, unsigned long *val, struct pt_regs *regs);
-
-static pfm_reg_desc_t pfm_mck_pmc_desc[PMU_MAX_PMCS]={
-/* pmc0  */ { PFM_REG_CONTROL , 0, 0x1UL, -1UL, NULL, NULL, {0UL,0UL, 0UL, 0UL}, {0UL,0UL, 0UL, 0UL}},
-/* pmc1  */ { PFM_REG_CONTROL , 0, 0x0UL, -1UL, NULL, NULL, {0UL,0UL, 0UL, 0UL}, {0UL,0UL, 0UL, 0UL}},
-/* pmc2  */ { PFM_REG_CONTROL , 0, 0x0UL, -1UL, NULL, NULL, {0UL,0UL, 0UL, 0UL}, {0UL,0UL, 0UL, 0UL}},
-/* pmc3  */ { PFM_REG_CONTROL , 0, 0x0UL, -1UL, NULL, NULL, {0UL,0UL, 0UL, 0UL}, {0UL,0UL, 0UL, 0UL}},
-/* pmc4  */ { PFM_REG_COUNTING, 6, 0x0000000000800000UL, 0xfffff7fUL, NULL, pfm_mck_pmc_check, {RDEP(4),0UL, 0UL, 0UL}, {0UL,0UL, 0UL, 0UL}},
-/* pmc5  */ { PFM_REG_COUNTING, 6, 0x0UL, 0xfffff7fUL, NULL,  pfm_mck_pmc_check, {RDEP(5),0UL, 0UL, 0UL}, {0UL,0UL, 0UL, 0UL}},
-/* pmc6  */ { PFM_REG_COUNTING, 6, 0x0UL, 0xfffff7fUL, NULL,  pfm_mck_pmc_check, {RDEP(6),0UL, 0UL, 0UL}, {0UL,0UL, 0UL, 0UL}},
-/* pmc7  */ { PFM_REG_COUNTING, 6, 0x0UL, 0xfffff7fUL, NULL,  pfm_mck_pmc_check, {RDEP(7),0UL, 0UL, 0UL}, {0UL,0UL, 0UL, 0UL}},
-/* pmc8  */ { PFM_REG_CONFIG  , 0, 0xffffffff3fffffffUL, 0xffffffff3ffffffbUL, NULL, pfm_mck_pmc_check, {0UL,0UL, 0UL, 0UL}, {0UL,0UL, 0UL, 0UL}},
-/* pmc9  */ { PFM_REG_CONFIG  , 0, 0xffffffff3ffffffcUL, 0xffffffff3ffffffbUL, NULL, pfm_mck_pmc_check, {0UL,0UL, 0UL, 0UL}, {0UL,0UL, 0UL, 0UL}},
-/* pmc10 */ { PFM_REG_MONITOR , 4, 0x0UL, 0xffffUL, NULL, pfm_mck_pmc_check, {RDEP(0)|RDEP(1),0UL, 0UL, 0UL}, {0UL,0UL, 0UL, 0UL}},
-/* pmc11 */ { PFM_REG_MONITOR , 6, 0x0UL, 0x30f01cf, NULL,  pfm_mck_pmc_check, {RDEP(2)|RDEP(3)|RDEP(17),0UL, 0UL, 0UL}, {0UL,0UL, 0UL, 0UL}},
-/* pmc12 */ { PFM_REG_MONITOR , 6, 0x0UL, 0xffffUL, NULL,  pfm_mck_pmc_check, {RDEP(8)|RDEP(9)|RDEP(10)|RDEP(11)|RDEP(12)|RDEP(13)|RDEP(14)|RDEP(15)|RDEP(16),0UL, 0UL, 0UL}, {0UL,0UL, 0UL, 0UL}},
-/* pmc13 */ { PFM_REG_CONFIG  , 0, 0x00002078fefefefeUL, 0x1e00018181818UL, NULL, pfm_mck_pmc_check, {0UL,0UL, 0UL, 0UL}, {0UL,0UL, 0UL, 0UL}},
-/* pmc14 */ { PFM_REG_CONFIG  , 0, 0x0db60db60db60db6UL, 0x2492UL, NULL, pfm_mck_pmc_check, {0UL,0UL, 0UL, 0UL}, {0UL,0UL, 0UL, 0UL}},
-/* pmc15 */ { PFM_REG_CONFIG  , 0, 0x00000000fffffff0UL, 0xfUL, NULL, pfm_mck_pmc_check, {0UL,0UL, 0UL, 0UL}, {0UL,0UL, 0UL, 0UL}},
-	    { PFM_REG_END     , 0, 0x0UL, -1UL, NULL, NULL, {0,}, {0,}}, /* end marker */
-};
-
-static pfm_reg_desc_t pfm_mck_pmd_desc[PMU_MAX_PMDS]={
-/* pmd0  */ { PFM_REG_BUFFER  , 0, 0x0UL, -1UL, NULL, NULL, {RDEP(1),0UL, 0UL, 0UL}, {RDEP(10),0UL, 0UL, 0UL}},
-/* pmd1  */ { PFM_REG_BUFFER  , 0, 0x0UL, -1UL, NULL, NULL, {RDEP(0),0UL, 0UL, 0UL}, {RDEP(10),0UL, 0UL, 0UL}},
-/* pmd2  */ { PFM_REG_BUFFER  , 0, 0x0UL, -1UL, NULL, NULL, {RDEP(3)|RDEP(17),0UL, 0UL, 0UL}, {RDEP(11),0UL, 0UL, 0UL}},
-/* pmd3  */ { PFM_REG_BUFFER  , 0, 0x0UL, -1UL, NULL, NULL, {RDEP(2)|RDEP(17),0UL, 0UL, 0UL}, {RDEP(11),0UL, 0UL, 0UL}},
-/* pmd4  */ { PFM_REG_COUNTING, 0, 0x0UL, -1UL, NULL, NULL, {0UL,0UL, 0UL, 0UL}, {RDEP(4),0UL, 0UL, 0UL}},
-/* pmd5  */ { PFM_REG_COUNTING, 0, 0x0UL, -1UL, NULL, NULL, {0UL,0UL, 0UL, 0UL}, {RDEP(5),0UL, 0UL, 0UL}},
-/* pmd6  */ { PFM_REG_COUNTING, 0, 0x0UL, -1UL, NULL, NULL, {0UL,0UL, 0UL, 0UL}, {RDEP(6),0UL, 0UL, 0UL}},
-/* pmd7  */ { PFM_REG_COUNTING, 0, 0x0UL, -1UL, NULL, NULL, {0UL,0UL, 0UL, 0UL}, {RDEP(7),0UL, 0UL, 0UL}},
-/* pmd8  */ { PFM_REG_BUFFER  , 0, 0x0UL, -1UL, NULL, NULL, {RDEP(9)|RDEP(10)|RDEP(11)|RDEP(12)|RDEP(13)|RDEP(14)|RDEP(15)|RDEP(16),0UL, 0UL, 0UL}, {RDEP(12),0UL, 0UL, 0UL}},
-/* pmd9  */ { PFM_REG_BUFFER  , 0, 0x0UL, -1UL, NULL, NULL, {RDEP(8)|RDEP(10)|RDEP(11)|RDEP(12)|RDEP(13)|RDEP(14)|RDEP(15)|RDEP(16),0UL, 0UL, 0UL}, {RDEP(12),0UL, 0UL, 0UL}},
-/* pmd10 */ { PFM_REG_BUFFER  , 0, 0x0UL, -1UL, NULL, NULL, {RDEP(8)|RDEP(9)|RDEP(11)|RDEP(12)|RDEP(13)|RDEP(14)|RDEP(15)|RDEP(16),0UL, 0UL, 0UL}, {RDEP(12),0UL, 0UL, 0UL}},
-/* pmd11 */ { PFM_REG_BUFFER  , 0, 0x0UL, -1UL, NULL, NULL, {RDEP(8)|RDEP(9)|RDEP(10)|RDEP(12)|RDEP(13)|RDEP(14)|RDEP(15)|RDEP(16),0UL, 0UL, 0UL}, {RDEP(12),0UL, 0UL, 0UL}},
-/* pmd12 */ { PFM_REG_BUFFER  , 0, 0x0UL, -1UL, NULL, NULL, {RDEP(8)|RDEP(9)|RDEP(10)|RDEP(11)|RDEP(13)|RDEP(14)|RDEP(15)|RDEP(16),0UL, 0UL, 0UL}, {RDEP(12),0UL, 0UL, 0UL}},
-/* pmd13 */ { PFM_REG_BUFFER  , 0, 0x0UL, -1UL, NULL, NULL, {RDEP(8)|RDEP(9)|RDEP(10)|RDEP(11)|RDEP(12)|RDEP(14)|RDEP(15)|RDEP(16),0UL, 0UL, 0UL}, {RDEP(12),0UL, 0UL, 0UL}},
-/* pmd14 */ { PFM_REG_BUFFER  , 0, 0x0UL, -1UL, NULL, NULL, {RDEP(8)|RDEP(9)|RDEP(10)|RDEP(11)|RDEP(12)|RDEP(13)|RDEP(15)|RDEP(16),0UL, 0UL, 0UL}, {RDEP(12),0UL, 0UL, 0UL}},
-/* pmd15 */ { PFM_REG_BUFFER  , 0, 0x0UL, -1UL, NULL, NULL, {RDEP(8)|RDEP(9)|RDEP(10)|RDEP(11)|RDEP(12)|RDEP(13)|RDEP(14)|RDEP(16),0UL, 0UL, 0UL}, {RDEP(12),0UL, 0UL, 0UL}},
-/* pmd16 */ { PFM_REG_BUFFER  , 0, 0x0UL, -1UL, NULL, NULL, {RDEP(8)|RDEP(9)|RDEP(10)|RDEP(11)|RDEP(12)|RDEP(13)|RDEP(14)|RDEP(15),0UL, 0UL, 0UL}, {RDEP(12),0UL, 0UL, 0UL}},
-/* pmd17 */ { PFM_REG_BUFFER  , 0, 0x0UL, -1UL, NULL, NULL, {RDEP(2)|RDEP(3),0UL, 0UL, 0UL}, {RDEP(11),0UL, 0UL, 0UL}},
-	    { PFM_REG_END     , 0, 0x0UL, -1UL, NULL, NULL, {0,}, {0,}}, /* end marker */
-};
-
-/*
- * PMC reserved fields must have their power-up values preserved
- */
-static int
-pfm_mck_reserved(unsigned int cnum, unsigned long *val, struct pt_regs *regs)
-{
-	unsigned long tmp1, tmp2, ival = *val;
-
-	/* remove reserved areas from user value */
-	tmp1 = ival & PMC_RSVD_MASK(cnum);
-
-	/* get reserved fields values */
-	tmp2 = PMC_DFL_VAL(cnum) & ~PMC_RSVD_MASK(cnum);
-
-	*val = tmp1 | tmp2;
-
-	DPRINT(("pmc[%d]=0x%lx, mask=0x%lx, reset=0x%lx, val=0x%lx\n",
-		  cnum, ival, PMC_RSVD_MASK(cnum), PMC_DFL_VAL(cnum), *val));
-	return 0;
-}
-
-/*
- * task can be NULL if the context is unloaded
- */
-static int
-pfm_mck_pmc_check(struct task_struct *task, pfm_context_t *ctx, unsigned int cnum, unsigned long *val, struct pt_regs *regs)
-{
-	int ret = 0, check_case1 = 0;
-	unsigned long val8 = 0, val14 = 0, val13 = 0;
-	int is_loaded;
-
-	/* first preserve the reserved fields */
-	pfm_mck_reserved(cnum, val, regs);
-
-	/* sanitfy check */
-	if (ctx == NULL) return -EINVAL;
-
-	is_loaded = ctx->ctx_state == PFM_CTX_LOADED || ctx->ctx_state == PFM_CTX_MASKED;
-
-	/*
-	 * we must clear the debug registers if pmc13 has a value which enable
-	 * memory pipeline event constraints. In this case we need to clear the
-	 * the debug registers if they have not yet been accessed. This is required
-	 * to avoid picking stale state.
-	 * PMC13 is "active" if:
-	 * 	one of the pmc13.cfg_dbrpXX field is different from 0x3
-	 * AND
-	 * 	at the corresponding pmc13.ena_dbrpXX is set.
-	 */
-	DPRINT(("cnum=%u val=0x%lx, using_dbreg=%d loaded=%d\n", cnum, *val, ctx->ctx_fl_using_dbreg, is_loaded));
-
-	if (cnum == 13 && is_loaded
-	    && (*val & 0x1e00000000000UL) && (*val & 0x18181818UL) != 0x18181818UL && ctx->ctx_fl_using_dbreg == 0) {
-
-		DPRINT(("pmc[%d]=0x%lx has active pmc13 settings, clearing dbr\n", cnum, *val));
-
-		/* don't mix debug with perfmon */
-		if (task && (task->thread.flags & IA64_THREAD_DBG_VALID) != 0) return -EINVAL;
-
-		/*
-		 * a count of 0 will mark the debug registers as in use and also
-		 * ensure that they are properly cleared.
-		 */
-		ret = pfm_write_ibr_dbr(PFM_DATA_RR, ctx, NULL, 0, regs);
-		if (ret) return ret;
-	}
-	/*
-	 * we must clear the (instruction) debug registers if any pmc14.ibrpX bit is enabled
-	 * before they are (fl_using_dbreg==0) to avoid picking up stale information.
-	 */
-	if (cnum == 14 && is_loaded && ((*val & 0x2222UL) != 0x2222UL) && ctx->ctx_fl_using_dbreg == 0) {
-
-		DPRINT(("pmc[%d]=0x%lx has active pmc14 settings, clearing ibr\n", cnum, *val));
-
-		/* don't mix debug with perfmon */
-		if (task && (task->thread.flags & IA64_THREAD_DBG_VALID) != 0) return -EINVAL;
-
-		/*
-		 * a count of 0 will mark the debug registers as in use and also
-		 * ensure that they are properly cleared.
-		 */
-		ret = pfm_write_ibr_dbr(PFM_CODE_RR, ctx, NULL, 0, regs);
-		if (ret) return ret;
-
-	}
-
-	switch(cnum) {
-		case  4: *val |= 1UL << 23; /* force power enable bit */
-			 break;
-		case  8: val8 = *val;
-			 val13 = ctx->ctx_pmcs[13];
-			 val14 = ctx->ctx_pmcs[14];
-			 check_case1 = 1;
-			 break;
-		case 13: val8  = ctx->ctx_pmcs[8];
-			 val13 = *val;
-			 val14 = ctx->ctx_pmcs[14];
-			 check_case1 = 1;
-			 break;
-		case 14: val8  = ctx->ctx_pmcs[8];
-			 val13 = ctx->ctx_pmcs[13];
-			 val14 = *val;
-			 check_case1 = 1;
-			 break;
-	}
-	/* check illegal configuration which can produce inconsistencies in tagging
-	 * i-side events in L1D and L2 caches
-	 */
-	if (check_case1) {
-		ret =   ((val13 >> 45) & 0xf) == 0
-		   && ((val8 & 0x1) == 0)
-		   && ((((val14>>1) & 0x3) == 0x2 || ((val14>>1) & 0x3) == 0x0)
-		       ||(((val14>>4) & 0x3) == 0x2 || ((val14>>4) & 0x3) == 0x0));
-
-		if (ret) DPRINT((KERN_DEBUG "perfmon: failure check_case1\n"));
-	}
-
-	return ret ? -EINVAL : 0;
-}
-
-/*
- * impl_pmcs, impl_pmds are computed at runtime to minimize errors!
- */
-static pmu_config_t pmu_conf_mck={
-	.pmu_name      = "Itanium 2",
-	.pmu_family    = 0x1f,
-	.flags	       = PFM_PMU_IRQ_RESEND,
-	.ovfl_val      = (1UL << 47) - 1,
-	.pmd_desc      = pfm_mck_pmd_desc,
-	.pmc_desc      = pfm_mck_pmc_desc,
-	.num_ibrs       = 8,
-	.num_dbrs       = 8,
-	.use_rr_dbregs = 1 /* debug register are use for range restrictions */
-};
-
-
diff --git a/arch/ia64/kernel/perfmon_montecito.h b/arch/ia64/kernel/perfmon_montecito.h
deleted file mode 100644
index c0b5b9110c88..000000000000
--- a/arch/ia64/kernel/perfmon_montecito.h
+++ /dev/null
@@ -1,270 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * This file contains the Montecito PMU register description tables
- * and pmc checker used by perfmon.c.
- *
- * Copyright (c) 2005-2006 Hewlett-Packard Development Company, L.P.
- *               Contributed by Stephane Eranian <eranian@hpl.hp.com>
- */
-static int pfm_mont_pmc_check(struct task_struct *task, pfm_context_t *ctx, unsigned int cnum, unsigned long *val, struct pt_regs *regs);
-
-#define RDEP_MONT_ETB	(RDEP(38)|RDEP(39)|RDEP(48)|RDEP(49)|RDEP(50)|RDEP(51)|RDEP(52)|RDEP(53)|RDEP(54)|\
-			 RDEP(55)|RDEP(56)|RDEP(57)|RDEP(58)|RDEP(59)|RDEP(60)|RDEP(61)|RDEP(62)|RDEP(63))
-#define RDEP_MONT_DEAR  (RDEP(32)|RDEP(33)|RDEP(36))
-#define RDEP_MONT_IEAR  (RDEP(34)|RDEP(35))
-
-static pfm_reg_desc_t pfm_mont_pmc_desc[PMU_MAX_PMCS]={
-/* pmc0  */ { PFM_REG_CONTROL , 0, 0x0, -1, NULL, NULL, {0,0, 0, 0}, {0,0, 0, 0}},
-/* pmc1  */ { PFM_REG_CONTROL , 0, 0x0, -1, NULL, NULL, {0,0, 0, 0}, {0,0, 0, 0}},
-/* pmc2  */ { PFM_REG_CONTROL , 0, 0x0, -1, NULL, NULL, {0,0, 0, 0}, {0,0, 0, 0}},
-/* pmc3  */ { PFM_REG_CONTROL , 0, 0x0, -1, NULL, NULL, {0,0, 0, 0}, {0,0, 0, 0}},
-/* pmc4  */ { PFM_REG_COUNTING, 6, 0x2000000, 0x7c7fff7f, NULL, pfm_mont_pmc_check, {RDEP(4),0, 0, 0}, {0,0, 0, 0}},
-/* pmc5  */ { PFM_REG_COUNTING, 6, 0x2000000, 0x7c7fff7f, NULL, pfm_mont_pmc_check, {RDEP(5),0, 0, 0}, {0,0, 0, 0}},
-/* pmc6  */ { PFM_REG_COUNTING, 6, 0x2000000, 0x7c7fff7f, NULL, pfm_mont_pmc_check, {RDEP(6),0, 0, 0}, {0,0, 0, 0}},
-/* pmc7  */ { PFM_REG_COUNTING, 6, 0x2000000, 0x7c7fff7f, NULL, pfm_mont_pmc_check, {RDEP(7),0, 0, 0}, {0,0, 0, 0}},
-/* pmc8  */ { PFM_REG_COUNTING, 6, 0x2000000, 0x7c7fff7f, NULL, pfm_mont_pmc_check, {RDEP(8),0, 0, 0}, {0,0, 0, 0}},
-/* pmc9  */ { PFM_REG_COUNTING, 6, 0x2000000, 0x7c7fff7f, NULL, pfm_mont_pmc_check, {RDEP(9),0, 0, 0}, {0,0, 0, 0}},
-/* pmc10 */ { PFM_REG_COUNTING, 6, 0x2000000, 0x7c7fff7f, NULL, pfm_mont_pmc_check, {RDEP(10),0, 0, 0}, {0,0, 0, 0}},
-/* pmc11 */ { PFM_REG_COUNTING, 6, 0x2000000, 0x7c7fff7f, NULL, pfm_mont_pmc_check, {RDEP(11),0, 0, 0}, {0,0, 0, 0}},
-/* pmc12 */ { PFM_REG_COUNTING, 6, 0x2000000, 0x7c7fff7f, NULL, pfm_mont_pmc_check, {RDEP(12),0, 0, 0}, {0,0, 0, 0}},
-/* pmc13 */ { PFM_REG_COUNTING, 6, 0x2000000, 0x7c7fff7f, NULL, pfm_mont_pmc_check, {RDEP(13),0, 0, 0}, {0,0, 0, 0}},
-/* pmc14 */ { PFM_REG_COUNTING, 6, 0x2000000, 0x7c7fff7f, NULL, pfm_mont_pmc_check, {RDEP(14),0, 0, 0}, {0,0, 0, 0}},
-/* pmc15 */ { PFM_REG_COUNTING, 6, 0x2000000, 0x7c7fff7f, NULL, pfm_mont_pmc_check, {RDEP(15),0, 0, 0}, {0,0, 0, 0}},
-/* pmc16 */ { PFM_REG_NOTIMPL, },
-/* pmc17 */ { PFM_REG_NOTIMPL, },
-/* pmc18 */ { PFM_REG_NOTIMPL, },
-/* pmc19 */ { PFM_REG_NOTIMPL, },
-/* pmc20 */ { PFM_REG_NOTIMPL, },
-/* pmc21 */ { PFM_REG_NOTIMPL, },
-/* pmc22 */ { PFM_REG_NOTIMPL, },
-/* pmc23 */ { PFM_REG_NOTIMPL, },
-/* pmc24 */ { PFM_REG_NOTIMPL, },
-/* pmc25 */ { PFM_REG_NOTIMPL, },
-/* pmc26 */ { PFM_REG_NOTIMPL, },
-/* pmc27 */ { PFM_REG_NOTIMPL, },
-/* pmc28 */ { PFM_REG_NOTIMPL, },
-/* pmc29 */ { PFM_REG_NOTIMPL, },
-/* pmc30 */ { PFM_REG_NOTIMPL, },
-/* pmc31 */ { PFM_REG_NOTIMPL, },
-/* pmc32 */ { PFM_REG_CONFIG,  0, 0x30f01ffffffffffUL, 0x30f01ffffffffffUL, NULL, pfm_mont_pmc_check, {0,0, 0, 0}, {0,0, 0, 0}},
-/* pmc33 */ { PFM_REG_CONFIG,  0, 0x0,  0x1ffffffffffUL, NULL, pfm_mont_pmc_check, {0,0, 0, 0}, {0,0, 0, 0}},
-/* pmc34 */ { PFM_REG_CONFIG,  0, 0xf01ffffffffffUL, 0xf01ffffffffffUL, NULL, pfm_mont_pmc_check, {0,0, 0, 0}, {0,0, 0, 0}},
-/* pmc35 */ { PFM_REG_CONFIG,  0, 0x0,  0x1ffffffffffUL, NULL, pfm_mont_pmc_check, {0,0, 0, 0}, {0,0, 0, 0}},
-/* pmc36 */ { PFM_REG_CONFIG,  0, 0xfffffff0, 0xf, NULL, pfm_mont_pmc_check, {0,0, 0, 0}, {0,0, 0, 0}},
-/* pmc37 */ { PFM_REG_MONITOR, 4, 0x0, 0x3fff, NULL, pfm_mont_pmc_check, {RDEP_MONT_IEAR, 0, 0, 0}, {0, 0, 0, 0}},
-/* pmc38 */ { PFM_REG_CONFIG,  0, 0xdb6, 0x2492, NULL, pfm_mont_pmc_check, {0,0, 0, 0}, {0,0, 0, 0}},
-/* pmc39 */ { PFM_REG_MONITOR, 6, 0x0, 0xffcf, NULL, pfm_mont_pmc_check, {RDEP_MONT_ETB,0, 0, 0}, {0,0, 0, 0}},
-/* pmc40 */ { PFM_REG_MONITOR, 6, 0x2000000, 0xf01cf, NULL, pfm_mont_pmc_check, {RDEP_MONT_DEAR,0, 0, 0}, {0,0, 0, 0}},
-/* pmc41 */ { PFM_REG_CONFIG,  0, 0x00002078fefefefeUL, 0x1e00018181818UL, NULL, pfm_mont_pmc_check, {0,0, 0, 0}, {0,0, 0, 0}},
-/* pmc42 */ { PFM_REG_MONITOR, 6, 0x0, 0x7ff4f, NULL, pfm_mont_pmc_check, {RDEP_MONT_ETB,0, 0, 0}, {0,0, 0, 0}},
-	    { PFM_REG_END    , 0, 0x0, -1, NULL, NULL, {0,}, {0,}}, /* end marker */
-};
-
-static pfm_reg_desc_t pfm_mont_pmd_desc[PMU_MAX_PMDS]={
-/* pmd0  */ { PFM_REG_NOTIMPL, }, 
-/* pmd1  */ { PFM_REG_NOTIMPL, },
-/* pmd2  */ { PFM_REG_NOTIMPL, },
-/* pmd3  */ { PFM_REG_NOTIMPL, },
-/* pmd4  */ { PFM_REG_COUNTING, 0, 0x0, -1, NULL, NULL, {0,0, 0, 0}, {RDEP(4),0, 0, 0}},
-/* pmd5  */ { PFM_REG_COUNTING, 0, 0x0, -1, NULL, NULL, {0,0, 0, 0}, {RDEP(5),0, 0, 0}},
-/* pmd6  */ { PFM_REG_COUNTING, 0, 0x0, -1, NULL, NULL, {0,0, 0, 0}, {RDEP(6),0, 0, 0}},
-/* pmd7  */ { PFM_REG_COUNTING, 0, 0x0, -1, NULL, NULL, {0,0, 0, 0}, {RDEP(7),0, 0, 0}},
-/* pmd8  */ { PFM_REG_COUNTING, 0, 0x0, -1, NULL, NULL, {0,0, 0, 0}, {RDEP(8),0, 0, 0}}, 
-/* pmd9  */ { PFM_REG_COUNTING, 0, 0x0, -1, NULL, NULL, {0,0, 0, 0}, {RDEP(9),0, 0, 0}},
-/* pmd10 */ { PFM_REG_COUNTING, 0, 0x0, -1, NULL, NULL, {0,0, 0, 0}, {RDEP(10),0, 0, 0}},
-/* pmd11 */ { PFM_REG_COUNTING, 0, 0x0, -1, NULL, NULL, {0,0, 0, 0}, {RDEP(11),0, 0, 0}},
-/* pmd12 */ { PFM_REG_COUNTING, 0, 0x0, -1, NULL, NULL, {0,0, 0, 0}, {RDEP(12),0, 0, 0}},
-/* pmd13 */ { PFM_REG_COUNTING, 0, 0x0, -1, NULL, NULL, {0,0, 0, 0}, {RDEP(13),0, 0, 0}},
-/* pmd14 */ { PFM_REG_COUNTING, 0, 0x0, -1, NULL, NULL, {0,0, 0, 0}, {RDEP(14),0, 0, 0}},
-/* pmd15 */ { PFM_REG_COUNTING, 0, 0x0, -1, NULL, NULL, {0,0, 0, 0}, {RDEP(15),0, 0, 0}},
-/* pmd16 */ { PFM_REG_NOTIMPL, },
-/* pmd17 */ { PFM_REG_NOTIMPL, },
-/* pmd18 */ { PFM_REG_NOTIMPL, },
-/* pmd19 */ { PFM_REG_NOTIMPL, },
-/* pmd20 */ { PFM_REG_NOTIMPL, },
-/* pmd21 */ { PFM_REG_NOTIMPL, },
-/* pmd22 */ { PFM_REG_NOTIMPL, },
-/* pmd23 */ { PFM_REG_NOTIMPL, },
-/* pmd24 */ { PFM_REG_NOTIMPL, },
-/* pmd25 */ { PFM_REG_NOTIMPL, },
-/* pmd26 */ { PFM_REG_NOTIMPL, },
-/* pmd27 */ { PFM_REG_NOTIMPL, },
-/* pmd28 */ { PFM_REG_NOTIMPL, },
-/* pmd29 */ { PFM_REG_NOTIMPL, },
-/* pmd30 */ { PFM_REG_NOTIMPL, },
-/* pmd31 */ { PFM_REG_NOTIMPL, },
-/* pmd32 */ { PFM_REG_BUFFER, 0, 0x0, -1, NULL, NULL, {RDEP(33)|RDEP(36),0, 0, 0}, {RDEP(40),0, 0, 0}},
-/* pmd33 */ { PFM_REG_BUFFER, 0, 0x0, -1, NULL, NULL, {RDEP(32)|RDEP(36),0, 0, 0}, {RDEP(40),0, 0, 0}},
-/* pmd34 */ { PFM_REG_BUFFER, 0, 0x0, -1, NULL, NULL, {RDEP(35),0, 0, 0}, {RDEP(37),0, 0, 0}},
-/* pmd35 */ { PFM_REG_BUFFER, 0, 0x0, -1, NULL, NULL, {RDEP(34),0, 0, 0}, {RDEP(37),0, 0, 0}},
-/* pmd36 */ { PFM_REG_BUFFER, 0, 0x0, -1, NULL, NULL, {RDEP(32)|RDEP(33),0, 0, 0}, {RDEP(40),0, 0, 0}},
-/* pmd37 */ { PFM_REG_NOTIMPL, },
-/* pmd38 */ { PFM_REG_BUFFER, 0, 0x0, -1, NULL, NULL, {RDEP_MONT_ETB,0, 0, 0}, {RDEP(39),0, 0, 0}},
-/* pmd39 */ { PFM_REG_BUFFER, 0, 0x0, -1, NULL, NULL, {RDEP_MONT_ETB,0, 0, 0}, {RDEP(39),0, 0, 0}},
-/* pmd40 */ { PFM_REG_NOTIMPL, },
-/* pmd41 */ { PFM_REG_NOTIMPL, },
-/* pmd42 */ { PFM_REG_NOTIMPL, },
-/* pmd43 */ { PFM_REG_NOTIMPL, },
-/* pmd44 */ { PFM_REG_NOTIMPL, },
-/* pmd45 */ { PFM_REG_NOTIMPL, },
-/* pmd46 */ { PFM_REG_NOTIMPL, },
-/* pmd47 */ { PFM_REG_NOTIMPL, },
-/* pmd48 */ { PFM_REG_BUFFER, 0, 0x0, -1, NULL, NULL, {RDEP_MONT_ETB,0, 0, 0}, {RDEP(39),0, 0, 0}},
-/* pmd49 */ { PFM_REG_BUFFER, 0, 0x0, -1, NULL, NULL, {RDEP_MONT_ETB,0, 0, 0}, {RDEP(39),0, 0, 0}},
-/* pmd50 */ { PFM_REG_BUFFER, 0, 0x0, -1, NULL, NULL, {RDEP_MONT_ETB,0, 0, 0}, {RDEP(39),0, 0, 0}},
-/* pmd51 */ { PFM_REG_BUFFER, 0, 0x0, -1, NULL, NULL, {RDEP_MONT_ETB,0, 0, 0}, {RDEP(39),0, 0, 0}},
-/* pmd52 */ { PFM_REG_BUFFER, 0, 0x0, -1, NULL, NULL, {RDEP_MONT_ETB,0, 0, 0}, {RDEP(39),0, 0, 0}},
-/* pmd53 */ { PFM_REG_BUFFER, 0, 0x0, -1, NULL, NULL, {RDEP_MONT_ETB,0, 0, 0}, {RDEP(39),0, 0, 0}},
-/* pmd54 */ { PFM_REG_BUFFER, 0, 0x0, -1, NULL, NULL, {RDEP_MONT_ETB,0, 0, 0}, {RDEP(39),0, 0, 0}},
-/* pmd55 */ { PFM_REG_BUFFER, 0, 0x0, -1, NULL, NULL, {RDEP_MONT_ETB,0, 0, 0}, {RDEP(39),0, 0, 0}},
-/* pmd56 */ { PFM_REG_BUFFER, 0, 0x0, -1, NULL, NULL, {RDEP_MONT_ETB,0, 0, 0}, {RDEP(39),0, 0, 0}},
-/* pmd57 */ { PFM_REG_BUFFER, 0, 0x0, -1, NULL, NULL, {RDEP_MONT_ETB,0, 0, 0}, {RDEP(39),0, 0, 0}},
-/* pmd58 */ { PFM_REG_BUFFER, 0, 0x0, -1, NULL, NULL, {RDEP_MONT_ETB,0, 0, 0}, {RDEP(39),0, 0, 0}},
-/* pmd59 */ { PFM_REG_BUFFER, 0, 0x0, -1, NULL, NULL, {RDEP_MONT_ETB,0, 0, 0}, {RDEP(39),0, 0, 0}},
-/* pmd60 */ { PFM_REG_BUFFER, 0, 0x0, -1, NULL, NULL, {RDEP_MONT_ETB,0, 0, 0}, {RDEP(39),0, 0, 0}},
-/* pmd61 */ { PFM_REG_BUFFER, 0, 0x0, -1, NULL, NULL, {RDEP_MONT_ETB,0, 0, 0}, {RDEP(39),0, 0, 0}},
-/* pmd62 */ { PFM_REG_BUFFER, 0, 0x0, -1, NULL, NULL, {RDEP_MONT_ETB,0, 0, 0}, {RDEP(39),0, 0, 0}},
-/* pmd63 */ { PFM_REG_BUFFER, 0, 0x0, -1, NULL, NULL, {RDEP_MONT_ETB,0, 0, 0}, {RDEP(39),0, 0, 0}},
-	    { PFM_REG_END   , 0, 0x0, -1, NULL, NULL, {0,}, {0,}}, /* end marker */
-};
-
-/*
- * PMC reserved fields must have their power-up values preserved
- */
-static int
-pfm_mont_reserved(unsigned int cnum, unsigned long *val, struct pt_regs *regs)
-{
-	unsigned long tmp1, tmp2, ival = *val;
-
-	/* remove reserved areas from user value */
-	tmp1 = ival & PMC_RSVD_MASK(cnum);
-
-	/* get reserved fields values */
-	tmp2 = PMC_DFL_VAL(cnum) & ~PMC_RSVD_MASK(cnum);
-
-	*val = tmp1 | tmp2;
-
-	DPRINT(("pmc[%d]=0x%lx, mask=0x%lx, reset=0x%lx, val=0x%lx\n",
-		  cnum, ival, PMC_RSVD_MASK(cnum), PMC_DFL_VAL(cnum), *val));
-	return 0;
-}
-
-/*
- * task can be NULL if the context is unloaded
- */
-static int
-pfm_mont_pmc_check(struct task_struct *task, pfm_context_t *ctx, unsigned int cnum, unsigned long *val, struct pt_regs *regs)
-{
-	int ret = 0;
-	unsigned long val32 = 0, val38 = 0, val41 = 0;
-	unsigned long tmpval;
-	int check_case1 = 0;
-	int is_loaded;
-
-	/* first preserve the reserved fields */
-	pfm_mont_reserved(cnum, val, regs);
-
-	tmpval = *val;
-
-	/* sanity check */
-	if (ctx == NULL) return -EINVAL;
-
-	is_loaded = ctx->ctx_state == PFM_CTX_LOADED || ctx->ctx_state == PFM_CTX_MASKED;
-
-	/*
-	 * we must clear the debug registers if pmc41 has a value which enable
-	 * memory pipeline event constraints. In this case we need to clear the
-	 * the debug registers if they have not yet been accessed. This is required
-	 * to avoid picking stale state.
-	 * PMC41 is "active" if:
-	 * 	one of the pmc41.cfg_dtagXX field is different from 0x3
-	 * AND
-	 * 	at the corresponding pmc41.en_dbrpXX is set.
-	 * AND
-	 *	ctx_fl_using_dbreg == 0  (i.e., dbr not yet used)
-	 */
-	DPRINT(("cnum=%u val=0x%lx, using_dbreg=%d loaded=%d\n", cnum, tmpval, ctx->ctx_fl_using_dbreg, is_loaded));
-
-	if (cnum == 41 && is_loaded 
-	    && (tmpval & 0x1e00000000000UL) && (tmpval & 0x18181818UL) != 0x18181818UL && ctx->ctx_fl_using_dbreg == 0) {
-
-		DPRINT(("pmc[%d]=0x%lx has active pmc41 settings, clearing dbr\n", cnum, tmpval));
-
-		/* don't mix debug with perfmon */
-		if (task && (task->thread.flags & IA64_THREAD_DBG_VALID) != 0) return -EINVAL;
-
-		/*
-		 * a count of 0 will mark the debug registers if:
-		 * AND
-		 */
-		ret = pfm_write_ibr_dbr(PFM_DATA_RR, ctx, NULL, 0, regs);
-		if (ret) return ret;
-	}
-	/*
-	 * we must clear the (instruction) debug registers if:
-	 * 	pmc38.ig_ibrpX is 0 (enabled)
-	 * AND
-	 *	ctx_fl_using_dbreg == 0  (i.e., dbr not yet used)
-	 */
-	if (cnum == 38 && is_loaded && ((tmpval & 0x492UL) != 0x492UL) && ctx->ctx_fl_using_dbreg == 0) {
-
-		DPRINT(("pmc38=0x%lx has active pmc38 settings, clearing ibr\n", tmpval));
-
-		/* don't mix debug with perfmon */
-		if (task && (task->thread.flags & IA64_THREAD_DBG_VALID) != 0) return -EINVAL;
-
-		/*
-		 * a count of 0 will mark the debug registers as in use and also
-		 * ensure that they are properly cleared.
-		 */
-		ret = pfm_write_ibr_dbr(PFM_CODE_RR, ctx, NULL, 0, regs);
-		if (ret) return ret;
-
-	}
-	switch(cnum) {
-		case  32: val32 = *val;
-			  val38 = ctx->ctx_pmcs[38];
-			  val41 = ctx->ctx_pmcs[41];
-			  check_case1 = 1;
-			  break;
-		case  38: val38 = *val;
-			  val32 = ctx->ctx_pmcs[32];
-			  val41 = ctx->ctx_pmcs[41];
-			  check_case1 = 1;
-			  break;
-		case  41: val41 = *val;
-			  val32 = ctx->ctx_pmcs[32];
-			  val38 = ctx->ctx_pmcs[38];
-			  check_case1 = 1;
-			  break;
-	}
-	/* check illegal configuration which can produce inconsistencies in tagging
-	 * i-side events in L1D and L2 caches
-	 */
-	if (check_case1) {
-		ret =   (((val41 >> 45) & 0xf) == 0 && ((val32>>57) & 0x1) == 0)
-		     && ((((val38>>1) & 0x3) == 0x2 || ((val38>>1) & 0x3) == 0)
-		     ||  (((val38>>4) & 0x3) == 0x2 || ((val38>>4) & 0x3) == 0));
-		if (ret) {
-			DPRINT(("invalid config pmc38=0x%lx pmc41=0x%lx pmc32=0x%lx\n", val38, val41, val32));
-			return -EINVAL;
-		}
-	}
-	*val = tmpval;
-	return 0;
-}
-
-/*
- * impl_pmcs, impl_pmds are computed at runtime to minimize errors!
- */
-static pmu_config_t pmu_conf_mont={
-	.pmu_name        = "Montecito",
-	.pmu_family      = 0x20,
-	.flags           = PFM_PMU_IRQ_RESEND,
-	.ovfl_val        = (1UL << 47) - 1,
-	.pmd_desc        = pfm_mont_pmd_desc,
-	.pmc_desc        = pfm_mont_pmc_desc,
-	.num_ibrs        = 8,
-	.num_dbrs        = 8,
-	.use_rr_dbregs   = 1 /* debug register are use for range retrictions */
-};
diff --git a/usr/include/Makefile b/usr/include/Makefile
index f6b3c85d900e..1c2ae1368079 100644
--- a/usr/include/Makefile
+++ b/usr/include/Makefile
@@ -67,8 +67,6 @@ endif
 ifeq ($(SRCARCH),ia64)
 no-header-test += asm/setup.h
 no-header-test += asm/sigcontext.h
-no-header-test += asm/perfmon.h
-no-header-test += asm/perfmon_default_smpl.h
 no-header-test += linux/if_bonding.h
 endif
 
-- 
2.25.0.rc1.19.g042ed3e048af



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
