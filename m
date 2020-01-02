Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD631312A7
	for <lists+oprofile-list@lfdr.de>; Mon,  6 Jan 2020 14:14:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1ioSDN-0000cH-76; Mon, 06 Jan 2020 13:14:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <arnd@arndb.de>) id 1in2AK-0001MP-RT
 for oprofile-list@lists.sourceforge.net; Thu, 02 Jan 2020 15:13:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j/SjjQr1ILLD3eO+ROejTWCCNPl1zDlUIDNWOJetMYg=; b=B846zdi7DTdlcFWmdCdVn11Fkd
 iNsQRNmtfuLL6PBE4kX1o+OUwtxu81ojPOWEfcTxvsBrU4gEIlSl45tPX5yEbHCwSoxcPpX2rLnGD
 Ngct84F/EbkHzDcr8Mlhtzo1Bbjs/YLInn+YaUqG/SKPEhB1WIT+HXKc0MHb0NVz+KME=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=j/SjjQr1ILLD3eO+ROejTWCCNPl1zDlUIDNWOJetMYg=; b=dJ7KZiAN6wG3W2AqDYqAVb6Ua+
 C1sFs+qSywlmTIqkNDSeG+dotp8cSK9RO4/00bk89Om0U9igHIv4pgw9ei8gJmGLELz40Y+Edwp94
 llfZ7VcewnlRlqXUojqhKzzTDGydtf1m9zaz1VMRBUHHoVSfDx3Sb2lkxrVitLBIyqGk=;
Received: from mout.kundenserver.de ([212.227.126.130])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1in2A9-0077cf-HF
 for oprofile-list@lists.sourceforge.net; Thu, 02 Jan 2020 15:13:36 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MKsSj-1j1g5N1e73-00LJ2E; Thu, 02 Jan 2020 15:57:20 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Subject: [PATCH v3 02/22] compat: provide compat_ptr() on all architectures
Date: Thu,  2 Jan 2020 15:55:20 +0100
Message-Id: <20200102145552.1853992-3-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20200102145552.1853992-1-arnd@arndb.de>
References: <20200102145552.1853992-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:2hX7IDTUYkAbF/HhQ6TYtzbjyBbqDNNLh+1GSIq8v43IxijC5jg
 IxCrNJ39AdLrHWtRvImmwZpTQaolJl/S2HV0sH4qgRii84CosdPsPdLkqE4AQdF19U2rwxu
 o8mx4dmOF2UdkOCL4EKQj2riMOwmeudimbJ3FbghXzFACFG4Z/gsnhMgeNu9FJi+ezUWH/e
 Ki2D1edrm4O22iSq+mRaw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:S6JBBIIOAeY=:Tw/Qn5C0NdLgwWlExxL8Di
 WQFhSu1Y9BrstPt9m2IyRFHQ+Il9atHp8xZCOhBcEKlTVwYzFAVnsGEeCmmXGR/r4rqadKRJL
 t2qe5Xd+izI5kKAeO1+cWS4Y9zNcqsVf1DGL1Z8i1PygDFdqrySYic/YZOpvC11jYG+Mv19Wb
 gESGNOmfjMjjejelO6QjXek9JDf+qfM7wKeMbGJxvAMKIAxqilsq/HHkIDydZEnMRlum5HFmV
 KHnoOrYL8gZ0Kwxm5phdgen6hgQLYvyYvuEDHYb8oaz/r2aUKHEIM9V7BXFtct1PrddtjfybS
 9HyTM5wjsFSDvDO95TMp7gp3w6lskeIRm1xmHQx/NkmvouTP5vdP8HAHC+UL6QyLY4gZXqGxo
 rWoOH/qzrqjI6QomBbZjUaW66J/s/9fqBfHYYwGQ7tpDwgFfz9mvnKZ3HDL2YxEBMf3v+zZAT
 SN3XyRoutXJiDR35eza9dqhB0XbB7zL3dK/dWEl9wSdgTWvbmydwFeedOukAQv1fivoTVQHR2
 6iWcUqDBmywJX2Ok5DCc8LLpL9EPsSIb0RpwngCGmVuLrBs3EwbM/5Potty+1rP+p4xqgjvMo
 MsyLQYzqkNu2TW7F/VUkBwPNlV2agINRcw3NcOYysSlNSktwCngLYlFTrb1PGBfs9QKQZY18Z
 H/Z+F6yyyD5+B3TDWd/c7OM1x5WzAfMiHXFktukur8ARDwCSAuGsr+zSAW3F10Q6L6Xd3RxSk
 4TX9G7zhe63Au4T6va90M1zTN5c+n+Z4lxzwDQenmnFLYqqFfUh9gCg0RWa7BAUYo6fQeicMC
 VnMHK9kTIE9ZF7/rk5CoIXvpFMavmULsN1UOnN8gMTxRZ5uK8/klICeQ/kn7K18RwuM5ACsTH
 BkfLIjatlk1JoTaTXvFA==
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1in2A9-0077cf-HF
X-Mailman-Approved-At: Mon, 06 Jan 2020 13:14:36 +0000
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mips@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-s390@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Paul Burton <paulburton@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Helge Deller <deller@gmx.de>, x86@kernel.org,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 oprofile-list@lists.sf.net, Catalin Marinas <catalin.marinas@arm.com>,
 James Hogan <jhogan@kernel.org>, Robert Richter <rric@kernel.org>,
 Vasily Gorbik <gor@linux.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

In order to avoid needless #ifdef CONFIG_COMPAT checks,
move the compat_ptr() definition to linux/compat.h
where it can be seen by any file regardless of the
architecture.

Only s390 needs a special definition, this can use the
self-#define trick we have elsewhere.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm64/include/asm/compat.h   | 17 -----------------
 arch/mips/include/asm/compat.h    | 18 ------------------
 arch/parisc/include/asm/compat.h  | 17 -----------------
 arch/powerpc/include/asm/compat.h | 17 -----------------
 arch/powerpc/oprofile/backtrace.c |  2 +-
 arch/s390/include/asm/compat.h    |  6 +-----
 arch/sparc/include/asm/compat.h   | 17 -----------------
 arch/x86/include/asm/compat.h     | 17 -----------------
 include/linux/compat.h            | 18 ++++++++++++++++++
 9 files changed, 20 insertions(+), 109 deletions(-)

diff --git a/arch/arm64/include/asm/compat.h b/arch/arm64/include/asm/compat.h
index 7b4172ce497c..935d2aa231bf 100644
--- a/arch/arm64/include/asm/compat.h
+++ b/arch/arm64/include/asm/compat.h
@@ -114,23 +114,6 @@ typedef u32		compat_sigset_word;
 
 #define COMPAT_OFF_T_MAX	0x7fffffff
 
-/*
- * A pointer passed in from user mode. This should not
- * be used for syscall parameters, just declare them
- * as pointers because the syscall entry code will have
- * appropriately converted them already.
- */
-
-static inline void __user *compat_ptr(compat_uptr_t uptr)
-{
-	return (void __user *)(unsigned long)uptr;
-}
-
-static inline compat_uptr_t ptr_to_compat(void __user *uptr)
-{
-	return (u32)(unsigned long)uptr;
-}
-
 #define compat_user_stack_pointer() (user_stack_pointer(task_pt_regs(current)))
 #define COMPAT_MINSIGSTKSZ	2048
 
diff --git a/arch/mips/include/asm/compat.h b/arch/mips/include/asm/compat.h
index c99166eadbde..255afcdd79c9 100644
--- a/arch/mips/include/asm/compat.h
+++ b/arch/mips/include/asm/compat.h
@@ -100,24 +100,6 @@ typedef u32		compat_sigset_word;
 
 #define COMPAT_OFF_T_MAX	0x7fffffff
 
-/*
- * A pointer passed in from user mode. This should not
- * be used for syscall parameters, just declare them
- * as pointers because the syscall entry code will have
- * appropriately converted them already.
- */
-
-static inline void __user *compat_ptr(compat_uptr_t uptr)
-{
-	/* cast to a __user pointer via "unsigned long" makes sparse happy */
-	return (void __user *)(unsigned long)(long)uptr;
-}
-
-static inline compat_uptr_t ptr_to_compat(void __user *uptr)
-{
-	return (u32)(unsigned long)uptr;
-}
-
 static inline void __user *arch_compat_alloc_user_space(long len)
 {
 	struct pt_regs *regs = (struct pt_regs *)
diff --git a/arch/parisc/include/asm/compat.h b/arch/parisc/include/asm/compat.h
index e03e3c849f40..2f4f66a3bac0 100644
--- a/arch/parisc/include/asm/compat.h
+++ b/arch/parisc/include/asm/compat.h
@@ -173,23 +173,6 @@ struct compat_shmid64_ds {
 #define COMPAT_ELF_NGREG 80
 typedef compat_ulong_t compat_elf_gregset_t[COMPAT_ELF_NGREG];
 
-/*
- * A pointer passed in from user mode. This should not
- * be used for syscall parameters, just declare them
- * as pointers because the syscall entry code will have
- * appropriately converted them already.
- */
-
-static inline void __user *compat_ptr(compat_uptr_t uptr)
-{
-	return (void __user *)(unsigned long)uptr;
-}
-
-static inline compat_uptr_t ptr_to_compat(void __user *uptr)
-{
-	return (u32)(unsigned long)uptr;
-}
-
 static __inline__ void __user *arch_compat_alloc_user_space(long len)
 {
 	struct pt_regs *regs = &current->thread.regs;
diff --git a/arch/powerpc/include/asm/compat.h b/arch/powerpc/include/asm/compat.h
index 74d0db511099..3e3cdfaa76c6 100644
--- a/arch/powerpc/include/asm/compat.h
+++ b/arch/powerpc/include/asm/compat.h
@@ -96,23 +96,6 @@ typedef u32		compat_sigset_word;
 
 #define COMPAT_OFF_T_MAX	0x7fffffff
 
-/*
- * A pointer passed in from user mode. This should not
- * be used for syscall parameters, just declare them
- * as pointers because the syscall entry code will have
- * appropriately converted them already.
- */
-
-static inline void __user *compat_ptr(compat_uptr_t uptr)
-{
-	return (void __user *)(unsigned long)uptr;
-}
-
-static inline compat_uptr_t ptr_to_compat(void __user *uptr)
-{
-	return (u32)(unsigned long)uptr;
-}
-
 static inline void __user *arch_compat_alloc_user_space(long len)
 {
 	struct pt_regs *regs = current->thread.regs;
diff --git a/arch/powerpc/oprofile/backtrace.c b/arch/powerpc/oprofile/backtrace.c
index 43245f4a9bcb..6ffcb80cf844 100644
--- a/arch/powerpc/oprofile/backtrace.c
+++ b/arch/powerpc/oprofile/backtrace.c
@@ -9,7 +9,7 @@
 #include <linux/sched.h>
 #include <asm/processor.h>
 #include <linux/uaccess.h>
-#include <asm/compat.h>
+#include <linux/compat.h>
 #include <asm/oprofile_impl.h>
 
 #define STACK_SP(STACK)		*(STACK)
diff --git a/arch/s390/include/asm/compat.h b/arch/s390/include/asm/compat.h
index 63b46e30b2c3..9547cd5d6cdc 100644
--- a/arch/s390/include/asm/compat.h
+++ b/arch/s390/include/asm/compat.h
@@ -177,11 +177,7 @@ static inline void __user *compat_ptr(compat_uptr_t uptr)
 {
 	return (void __user *)(unsigned long)(uptr & 0x7fffffffUL);
 }
-
-static inline compat_uptr_t ptr_to_compat(void __user *uptr)
-{
-	return (u32)(unsigned long)uptr;
-}
+#define compat_ptr(uptr) compat_ptr(uptr)
 
 #ifdef CONFIG_COMPAT
 
diff --git a/arch/sparc/include/asm/compat.h b/arch/sparc/include/asm/compat.h
index 30b1763580b1..40a267b3bd52 100644
--- a/arch/sparc/include/asm/compat.h
+++ b/arch/sparc/include/asm/compat.h
@@ -125,23 +125,6 @@ typedef u32		compat_sigset_word;
 
 #define COMPAT_OFF_T_MAX	0x7fffffff
 
-/*
- * A pointer passed in from user mode. This should not
- * be used for syscall parameters, just declare them
- * as pointers because the syscall entry code will have
- * appropriately converted them already.
- */
-
-static inline void __user *compat_ptr(compat_uptr_t uptr)
-{
-	return (void __user *)(unsigned long)uptr;
-}
-
-static inline compat_uptr_t ptr_to_compat(void __user *uptr)
-{
-	return (u32)(unsigned long)uptr;
-}
-
 #ifdef CONFIG_COMPAT
 static inline void __user *arch_compat_alloc_user_space(long len)
 {
diff --git a/arch/x86/include/asm/compat.h b/arch/x86/include/asm/compat.h
index 22c4dfe65992..52e9f3480f69 100644
--- a/arch/x86/include/asm/compat.h
+++ b/arch/x86/include/asm/compat.h
@@ -177,23 +177,6 @@ typedef struct user_regs_struct compat_elf_gregset_t;
 	(!!(task_pt_regs(current)->orig_ax & __X32_SYSCALL_BIT))
 #endif
 
-/*
- * A pointer passed in from user mode. This should not
- * be used for syscall parameters, just declare them
- * as pointers because the syscall entry code will have
- * appropriately converted them already.
- */
-
-static inline void __user *compat_ptr(compat_uptr_t uptr)
-{
-	return (void __user *)(unsigned long)uptr;
-}
-
-static inline compat_uptr_t ptr_to_compat(void __user *uptr)
-{
-	return (u32)(unsigned long)uptr;
-}
-
 static inline void __user *arch_compat_alloc_user_space(long len)
 {
 	compat_uptr_t sp;
diff --git a/include/linux/compat.h b/include/linux/compat.h
index 68f79d855c3d..11083d84eb23 100644
--- a/include/linux/compat.h
+++ b/include/linux/compat.h
@@ -958,4 +958,22 @@ static inline bool in_compat_syscall(void) { return false; }
 
 #endif /* CONFIG_COMPAT */
 
+/*
+ * A pointer passed in from user mode. This should not
+ * be used for syscall parameters, just declare them
+ * as pointers because the syscall entry code will have
+ * appropriately converted them already.
+ */
+#ifndef compat_ptr
+static inline void __user *compat_ptr(compat_uptr_t uptr)
+{
+	return (void __user *)(unsigned long)uptr;
+}
+#endif
+
+static inline compat_uptr_t ptr_to_compat(void __user *uptr)
+{
+	return (u32)(unsigned long)uptr;
+}
+
 #endif /* _LINUX_COMPAT_H */
-- 
2.20.0



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
