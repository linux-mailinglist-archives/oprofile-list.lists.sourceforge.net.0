Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A192F6A12
	for <lists+oprofile-list@lfdr.de>; Thu, 14 Jan 2021 19:54:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l07lZ-0003Vq-Ok; Thu, 14 Jan 2021 18:54:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <viresh.kumar@linaro.org>) id 1l01IC-00061X-4V
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 11:59:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vZy8G70Xw08bkCckVdOGVKlvJ37fYkgxMcOnaaiBf+M=; b=FpgW/LLPoqFbNwXwEFKmljaWRT
 eVhR5Bo2t65z8SDj6iZYjAFWdjYUSEEdP1RfgIu5KbomuJ0YDiP2Sn/RCir+L6B0vyHQ2AYyiTK5D
 O49HomLpgNwgU1VKbJw4BPH3r/bD2rKBuX56nPaiO8w1e9pvON9eJoErb2OFVHAq7rj8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vZy8G70Xw08bkCckVdOGVKlvJ37fYkgxMcOnaaiBf+M=; b=mvxQl4OfXmbyd4jHY0mvPlg4jl
 C2G/SAU2qeP/sYUKO+OymE5OEtzq3HRkfTIPVoRLEqW6dOrA+AaI/KqB2q46yd/dTd9TcLIK5K60f
 JH9L6ZTf//cOR1tWeP3sGCdglcAvbHdcbw1YaPOjXsrKLfzSwBID49TLMdMrR2ZASWsc=;
Received: from mail-oi1-f178.google.com ([209.85.167.178])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l01Hx-00FXHY-Mn
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 11:59:56 +0000
Received: by mail-oi1-f178.google.com with SMTP id p5so5623982oif.7
 for <oprofile-list@lists.sf.net>; Thu, 14 Jan 2021 03:59:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vZy8G70Xw08bkCckVdOGVKlvJ37fYkgxMcOnaaiBf+M=;
 b=bJ7kP/CeSY0aUU2jPUH1dKsPcjS9UIHXkCW2Mlaa+Q0pB8LA/T6yjc8qU5EEJgAfXy
 U917pGtmpSzTd9AHmU1+ZHMBP2Jeco1ktQ0hjyZd+Bwzc/NDN965ZANBJBwhaIUX2rIj
 MVl8bYI16eDCGK415VfpS3KkATNzGpFXGy8Zn67/P8fw28kBu8T2PMiZsB+CcRwc6fjU
 V83nq3VVMvO3IWDGIiTfrTA90ODNz0hhKkINg/EruAxyR8Hno4rbsqFTHXcMzPzuqO8P
 wNuolHjd3LBsCqFlniZi6tn9UdaTRVhEqmrAawPNpIBC4vRKgKAcBO7BWxAzcMPNUWib
 tNIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vZy8G70Xw08bkCckVdOGVKlvJ37fYkgxMcOnaaiBf+M=;
 b=Wp1uT7aKij1GNZ82nY2ePcAK1Tf6sD6j/aNPfAB5ggLo09AZSZk+mkHALF//fUBTqp
 z5cRgtRZrXO9szBmI5RzwSvwH8gDA2yzYxasIBQ5a/R2Yqu2GSFnwbXspb+wS+yHrxfO
 dFVT2rC3G8mfl18hERwb0O2hpAFsvFqyLdpZOjUFtDworMuGLuBiwbJe+8oCKtv0qSHg
 zOEEqLGIitrj/wQdsc67uTwtKLBydl53XVoUiF1BPDegLNpc4U/FKko3tlv7rOuUbDOw
 PE8zW563qFHljesVVduFcEaLu5KzG1tUuWnSMURoJx2gZCBqcPy4Nq6sLkPqkdrcfZS8
 kL/Q==
X-Gm-Message-State: AOAM532t4kEUezdLbDokXwhXWX2STWpvl87ptALIOBY/HPA16ETSs0A6
 p7oN387uwarmr4jI8LU5PorFedHNp9gW5w==
X-Google-Smtp-Source: ABdhPJxjCrIfxPbGM7hA2fKrGeK7rUEFtxcHArjHRikqFvJ6oiqg5dNIQvC53H5eHVjsPNHu5ykSeQ==
X-Received: by 2002:a17:90a:fa0c:: with SMTP id
 cm12mr4618902pjb.87.1610624211513; 
 Thu, 14 Jan 2021 03:36:51 -0800 (PST)
Received: from localhost ([122.172.85.111])
 by smtp.gmail.com with ESMTPSA id h24sm5388984pfq.13.2021.01.14.03.36.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 Jan 2021 03:36:50 -0800 (PST)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Robert Richter <rric@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>
Subject: [PATCH 18/18] fs: Remove dcookies support
Date: Thu, 14 Jan 2021 17:05:31 +0530
Message-Id: <e47809d846204a563f0799a13d0b8d843caa4591.1610622251.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.25.0.rc1.19.g042ed3e048af
In-Reply-To: <cover.1610622251.git.viresh.kumar@linaro.org>
References: <cover.1610622251.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: movementarian.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: movementarian.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.178 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.178 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l01Hx-00FXHY-Mn
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
 Christoph Hellwig <hch@infradead.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 linux-kernel@vger.kernel.org, anmar.oueja@linaro.org,
 oprofile-list@lists.sf.net, linux-fsdevel@vger.kernel.org,
 William Cohen <wcohen@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

The dcookies stuff was only used by the kernel's old oprofile code. Now
that oprofile's support is removed from the kernel, there is no need for
dcookies as well. Remove it.

Suggested-by: Christoph Hellwig <hch@infradead.org>
Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 fs/Makefile              |   1 -
 fs/dcookies.c            | 356 ---------------------------------------
 include/linux/dcookies.h |  69 --------
 kernel/sys.c             |   1 -
 4 files changed, 427 deletions(-)
 delete mode 100644 fs/dcookies.c
 delete mode 100644 include/linux/dcookies.h

diff --git a/fs/Makefile b/fs/Makefile
index 999d1a23f036..3215fe205256 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -64,7 +64,6 @@ obj-$(CONFIG_SYSFS)		+= sysfs/
 obj-$(CONFIG_CONFIGFS_FS)	+= configfs/
 obj-y				+= devpts/
 
-obj-$(CONFIG_PROFILING)		+= dcookies.o
 obj-$(CONFIG_DLM)		+= dlm/
  
 # Do not add any filesystems before this line
diff --git a/fs/dcookies.c b/fs/dcookies.c
deleted file mode 100644
index 6eeb61100a09..000000000000
--- a/fs/dcookies.c
+++ /dev/null
@@ -1,356 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * dcookies.c
- *
- * Copyright 2002 John Levon <levon@movementarian.org>
- *
- * Persistent cookie-path mappings. These are used by
- * profilers to convert a per-task EIP value into something
- * non-transitory that can be processed at a later date.
- * This is done by locking the dentry/vfsmnt pair in the
- * kernel until released by the tasks needing the persistent
- * objects. The tag is simply an unsigned long that refers
- * to the pair and can be looked up from userspace.
- */
-
-#include <linux/syscalls.h>
-#include <linux/export.h>
-#include <linux/slab.h>
-#include <linux/list.h>
-#include <linux/mount.h>
-#include <linux/capability.h>
-#include <linux/dcache.h>
-#include <linux/mm.h>
-#include <linux/err.h>
-#include <linux/errno.h>
-#include <linux/dcookies.h>
-#include <linux/mutex.h>
-#include <linux/path.h>
-#include <linux/compat.h>
-#include <linux/uaccess.h>
-
-/* The dcookies are allocated from a kmem_cache and
- * hashed onto a small number of lists. None of the
- * code here is particularly performance critical
- */
-struct dcookie_struct {
-	struct path path;
-	struct list_head hash_list;
-};
-
-static LIST_HEAD(dcookie_users);
-static DEFINE_MUTEX(dcookie_mutex);
-static struct kmem_cache *dcookie_cache __read_mostly;
-static struct list_head *dcookie_hashtable __read_mostly;
-static size_t hash_size __read_mostly;
-
-static inline int is_live(void)
-{
-	return !(list_empty(&dcookie_users));
-}
-
-
-/* The dentry is locked, its address will do for the cookie */
-static inline unsigned long dcookie_value(struct dcookie_struct * dcs)
-{
-	return (unsigned long)dcs->path.dentry;
-}
-
-
-static size_t dcookie_hash(unsigned long dcookie)
-{
-	return (dcookie >> L1_CACHE_SHIFT) & (hash_size - 1);
-}
-
-
-static struct dcookie_struct * find_dcookie(unsigned long dcookie)
-{
-	struct dcookie_struct *found = NULL;
-	struct dcookie_struct * dcs;
-	struct list_head * pos;
-	struct list_head * list;
-
-	list = dcookie_hashtable + dcookie_hash(dcookie);
-
-	list_for_each(pos, list) {
-		dcs = list_entry(pos, struct dcookie_struct, hash_list);
-		if (dcookie_value(dcs) == dcookie) {
-			found = dcs;
-			break;
-		}
-	}
-
-	return found;
-}
-
-
-static void hash_dcookie(struct dcookie_struct * dcs)
-{
-	struct list_head * list = dcookie_hashtable + dcookie_hash(dcookie_value(dcs));
-	list_add(&dcs->hash_list, list);
-}
-
-
-static struct dcookie_struct *alloc_dcookie(const struct path *path)
-{
-	struct dcookie_struct *dcs = kmem_cache_alloc(dcookie_cache,
-							GFP_KERNEL);
-	struct dentry *d;
-	if (!dcs)
-		return NULL;
-
-	d = path->dentry;
-	spin_lock(&d->d_lock);
-	d->d_flags |= DCACHE_COOKIE;
-	spin_unlock(&d->d_lock);
-
-	dcs->path = *path;
-	path_get(path);
-	hash_dcookie(dcs);
-	return dcs;
-}
-
-
-/* This is the main kernel-side routine that retrieves the cookie
- * value for a dentry/vfsmnt pair.
- */
-int get_dcookie(const struct path *path, unsigned long *cookie)
-{
-	int err = 0;
-	struct dcookie_struct * dcs;
-
-	mutex_lock(&dcookie_mutex);
-
-	if (!is_live()) {
-		err = -EINVAL;
-		goto out;
-	}
-
-	if (path->dentry->d_flags & DCACHE_COOKIE) {
-		dcs = find_dcookie((unsigned long)path->dentry);
-	} else {
-		dcs = alloc_dcookie(path);
-		if (!dcs) {
-			err = -ENOMEM;
-			goto out;
-		}
-	}
-
-	*cookie = dcookie_value(dcs);
-
-out:
-	mutex_unlock(&dcookie_mutex);
-	return err;
-}
-
-
-/* And here is where the userspace process can look up the cookie value
- * to retrieve the path.
- */
-static int do_lookup_dcookie(u64 cookie64, char __user *buf, size_t len)
-{
-	unsigned long cookie = (unsigned long)cookie64;
-	int err = -EINVAL;
-	char * kbuf;
-	char * path;
-	size_t pathlen;
-	struct dcookie_struct * dcs;
-
-	/* we could leak path information to users
-	 * without dir read permission without this
-	 */
-	if (!capable(CAP_SYS_ADMIN))
-		return -EPERM;
-
-	mutex_lock(&dcookie_mutex);
-
-	if (!is_live()) {
-		err = -EINVAL;
-		goto out;
-	}
-
-	if (!(dcs = find_dcookie(cookie)))
-		goto out;
-
-	err = -ENOMEM;
-	kbuf = kmalloc(PAGE_SIZE, GFP_KERNEL);
-	if (!kbuf)
-		goto out;
-
-	/* FIXME: (deleted) ? */
-	path = d_path(&dcs->path, kbuf, PAGE_SIZE);
-
-	mutex_unlock(&dcookie_mutex);
-
-	if (IS_ERR(path)) {
-		err = PTR_ERR(path);
-		goto out_free;
-	}
-
-	err = -ERANGE;
- 
-	pathlen = kbuf + PAGE_SIZE - path;
-	if (pathlen <= len) {
-		err = pathlen;
-		if (copy_to_user(buf, path, pathlen))
-			err = -EFAULT;
-	}
-
-out_free:
-	kfree(kbuf);
-	return err;
-out:
-	mutex_unlock(&dcookie_mutex);
-	return err;
-}
-
-SYSCALL_DEFINE3(lookup_dcookie, u64, cookie64, char __user *, buf, size_t, len)
-{
-	return do_lookup_dcookie(cookie64, buf, len);
-}
-
-#ifdef CONFIG_COMPAT
-COMPAT_SYSCALL_DEFINE4(lookup_dcookie, u32, w0, u32, w1, char __user *, buf, compat_size_t, len)
-{
-#ifdef __BIG_ENDIAN
-	return do_lookup_dcookie(((u64)w0 << 32) | w1, buf, len);
-#else
-	return do_lookup_dcookie(((u64)w1 << 32) | w0, buf, len);
-#endif
-}
-#endif
-
-static int dcookie_init(void)
-{
-	struct list_head * d;
-	unsigned int i, hash_bits;
-	int err = -ENOMEM;
-
-	dcookie_cache = kmem_cache_create("dcookie_cache",
-		sizeof(struct dcookie_struct),
-		0, 0, NULL);
-
-	if (!dcookie_cache)
-		goto out;
-
-	dcookie_hashtable = kmalloc(PAGE_SIZE, GFP_KERNEL);
-	if (!dcookie_hashtable)
-		goto out_kmem;
-
-	err = 0;
-
-	/*
-	 * Find the power-of-two list-heads that can fit into the allocation..
-	 * We don't guarantee that "sizeof(struct list_head)" is necessarily
-	 * a power-of-two.
-	 */
-	hash_size = PAGE_SIZE / sizeof(struct list_head);
-	hash_bits = 0;
-	do {
-		hash_bits++;
-	} while ((hash_size >> hash_bits) != 0);
-	hash_bits--;
-
-	/*
-	 * Re-calculate the actual number of entries and the mask
-	 * from the number of bits we can fit.
-	 */
-	hash_size = 1UL << hash_bits;
-
-	/* And initialize the newly allocated array */
-	d = dcookie_hashtable;
-	i = hash_size;
-	do {
-		INIT_LIST_HEAD(d);
-		d++;
-		i--;
-	} while (i);
-
-out:
-	return err;
-out_kmem:
-	kmem_cache_destroy(dcookie_cache);
-	goto out;
-}
-
-
-static void free_dcookie(struct dcookie_struct * dcs)
-{
-	struct dentry *d = dcs->path.dentry;
-
-	spin_lock(&d->d_lock);
-	d->d_flags &= ~DCACHE_COOKIE;
-	spin_unlock(&d->d_lock);
-
-	path_put(&dcs->path);
-	kmem_cache_free(dcookie_cache, dcs);
-}
-
-
-static void dcookie_exit(void)
-{
-	struct list_head * list;
-	struct list_head * pos;
-	struct list_head * pos2;
-	struct dcookie_struct * dcs;
-	size_t i;
-
-	for (i = 0; i < hash_size; ++i) {
-		list = dcookie_hashtable + i;
-		list_for_each_safe(pos, pos2, list) {
-			dcs = list_entry(pos, struct dcookie_struct, hash_list);
-			list_del(&dcs->hash_list);
-			free_dcookie(dcs);
-		}
-	}
-
-	kfree(dcookie_hashtable);
-	kmem_cache_destroy(dcookie_cache);
-}
-
-
-struct dcookie_user {
-	struct list_head next;
-};
- 
-struct dcookie_user * dcookie_register(void)
-{
-	struct dcookie_user * user;
-
-	mutex_lock(&dcookie_mutex);
-
-	user = kmalloc(sizeof(struct dcookie_user), GFP_KERNEL);
-	if (!user)
-		goto out;
-
-	if (!is_live() && dcookie_init())
-		goto out_free;
-
-	list_add(&user->next, &dcookie_users);
-
-out:
-	mutex_unlock(&dcookie_mutex);
-	return user;
-out_free:
-	kfree(user);
-	user = NULL;
-	goto out;
-}
-
-
-void dcookie_unregister(struct dcookie_user * user)
-{
-	mutex_lock(&dcookie_mutex);
-
-	list_del(&user->next);
-	kfree(user);
-
-	if (!is_live())
-		dcookie_exit();
-
-	mutex_unlock(&dcookie_mutex);
-}
-
-EXPORT_SYMBOL_GPL(dcookie_register);
-EXPORT_SYMBOL_GPL(dcookie_unregister);
-EXPORT_SYMBOL_GPL(get_dcookie);
diff --git a/include/linux/dcookies.h b/include/linux/dcookies.h
deleted file mode 100644
index ddfdac20cad0..000000000000
--- a/include/linux/dcookies.h
+++ /dev/null
@@ -1,69 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * dcookies.h
- *
- * Persistent cookie-path mappings
- *
- * Copyright 2002 John Levon <levon@movementarian.org>
- */
-
-#ifndef DCOOKIES_H
-#define DCOOKIES_H
- 
-
-#ifdef CONFIG_PROFILING
- 
-#include <linux/dcache.h>
-#include <linux/types.h>
- 
-struct dcookie_user;
-struct path;
- 
-/**
- * dcookie_register - register a user of dcookies
- *
- * Register as a dcookie user. Returns %NULL on failure.
- */
-struct dcookie_user * dcookie_register(void);
-
-/**
- * dcookie_unregister - unregister a user of dcookies
- *
- * Unregister as a dcookie user. This may invalidate
- * any dcookie values returned from get_dcookie().
- */
-void dcookie_unregister(struct dcookie_user * user);
-  
-/**
- * get_dcookie - acquire a dcookie
- *
- * Convert the given dentry/vfsmount pair into
- * a cookie value.
- *
- * Returns -EINVAL if no living task has registered as a
- * dcookie user.
- *
- * Returns 0 on success, with *cookie filled in
- */
-int get_dcookie(const struct path *path, unsigned long *cookie);
-
-#else
-
-static inline struct dcookie_user * dcookie_register(void)
-{
-	return NULL;
-}
-
-static inline void dcookie_unregister(struct dcookie_user * user)
-{
-	return;
-}
-
-static inline int get_dcookie(const struct path *path, unsigned long *cookie)
-{
-	return -ENOSYS;
-}
-
-#endif /* CONFIG_PROFILING */
-
-#endif /* DCOOKIES_H */
diff --git a/kernel/sys.c b/kernel/sys.c
index 51f00fe20e4d..6928d23c46ea 100644
--- a/kernel/sys.c
+++ b/kernel/sys.c
@@ -24,7 +24,6 @@
 #include <linux/times.h>
 #include <linux/posix-timers.h>
 #include <linux/security.h>
-#include <linux/dcookies.h>
 #include <linux/suspend.h>
 #include <linux/tty.h>
 #include <linux/signal.h>
-- 
2.25.0.rc1.19.g042ed3e048af



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
