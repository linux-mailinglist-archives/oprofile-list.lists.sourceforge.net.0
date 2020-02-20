Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F02166986
	for <lists+oprofile-list@lfdr.de>; Thu, 20 Feb 2020 22:05:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1j4t15-0007hv-W0; Thu, 20 Feb 2020 21:05:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <raj.khem@gmail.com>) id 1j4sJE-0002mp-Fa
 for oprofile-list@lists.sourceforge.net; Thu, 20 Feb 2020 20:20:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=evzZqy4g2+qwdiaNL7OkyWOuHkqpgTpz9PE+LrpfaT8=; b=A+f6pdJJtwfMwKkc1g0932ydh2
 5HJU2e9w3VixBHYqA+tSPTV4VJK2yoo6iFT47XNwuVviM6gl5M+ICHMZbUy6D+rlec8RCJY75iILB
 2iyOx1y0sVxHCseBbiZuXjARCFaOg/RU1pDlc00T668w0WLyHpc4fjBLh1NTl2/F4tJE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=evzZqy4g2+qwdiaNL7OkyWOuHkqpgTpz9PE+LrpfaT8=; b=e
 nLlJQd4prdOL0sXj45F+bB2TxUlnnq6kR1lCnssckvS803lUWVdBeY7PBCG/EFSxviD2oc/ckjS3t
 F8rl/Dq+//neuBkt92yBd55wXXuJD0RvkweEnTpnuUxU5brr+M0nkq82Ds6s+3BBOYjKay/ZaoszA
 uZueCADnZgAIRFbQ=;
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1j4sJC-003KKz-NN
 for oprofile-list@lists.sourceforge.net; Thu, 20 Feb 2020 20:20:32 +0000
Received: by mail-oi1-f193.google.com with SMTP id q84so28905484oic.4
 for <oprofile-list@lists.sf.net>; Thu, 20 Feb 2020 12:20:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=evzZqy4g2+qwdiaNL7OkyWOuHkqpgTpz9PE+LrpfaT8=;
 b=d4wpL8fi2BJQIkknEYgeCyQ8WNFDoohUxsA1VnAS5j1+pwJL/gPuZomk6GQ5jXz1as
 xF9OT74/utVDAb48/apUcBXXP/qCHsNoY63O9rSZJCo6YiXBGFE3MX7yBD14kiPi8GUg
 s6jk5bcfJGTvJWlVBGD2QLGqd0RnW3ajyNlJpzpbcrOg5nOqjKcJ6/9fVONZY98cug/d
 3qB8CFRVPGXZsYLT3GAxg9W8Lw6LVgWWkmuYsWrnKHp73EcsUp25TjbgQlMGWFnljhrk
 Dwe5mVm3gIJ0Xg7oYENaanrgiJNIoVhgm7YO5LfXACMEtH8qezA+gy6ezjvEaPuCkLmf
 G3Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=evzZqy4g2+qwdiaNL7OkyWOuHkqpgTpz9PE+LrpfaT8=;
 b=MfXv8bVPQxv3g7GW/7qaiolPXWjcFmVNqdhbSs0ijo4NzIKVphWLYQiGEDFdyKnM1D
 18l2Y8umtCP2v718IAPpSjyTha7eUrAaoDLo3LRK6qUd+ka94d48u7A2UhMN3Xm3w3aT
 Sc+YVODQM/PAgNzNZDTfNHGy49R8GqY1lfaLb1wjypV8R7iOKoYIXmeBLxN40YITVmPG
 NeuEwSbXpYGyIAGN0Ri43BvHofIaXxtrAtidoOnPojcEY5A8xW/YL32YpZOPZtb20H3i
 lg7BkStSAHPxpZu7VdNWYqkmbHitlEx2THfUSvdDHKpjmfTWWF2pKneAPQE4DuKcLoiK
 oHZg==
X-Gm-Message-State: APjAAAXbnN+5Vc9U6VZvvjUb3bIsyMJ5Ved5U12xKUKTGbkAEefLimLv
 sAgBvTCCjICW6tcVWyo+QONRYCBrtGs=
X-Google-Smtp-Source: APXvYqzOYYA8sKwAcdAS0blWzRM9nf9eG+K+5bTh1Jpf4BRpVy/QzD/3wmUYaMfNblMAD/wfPebLdA==
X-Received: by 2002:a17:90a:348a:: with SMTP id
 p10mr4582827pjb.120.1582215502533; 
 Thu, 20 Feb 2020 08:18:22 -0800 (PST)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:4e0::396c])
 by smtp.gmail.com with ESMTPSA id 26sm4079742pjk.3.2020.02.20.08.18.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 08:18:22 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: oprofile-list@lists.sf.net
Subject: [PATCH] Use new bfd APIs from 2.34+
Date: Thu, 20 Feb 2020 08:18:33 -0800
Message-Id: <20200220161833.2999988-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (raj.khem[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j4sJC-003KKz-NN
X-Mailman-Approved-At: Thu, 20 Feb 2020 21:05:51 +0000
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
Cc: Khem Raj <raj.khem@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

Upstream-Status: Pending
Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 libutil++/bfd_support.cpp | 10 +++++-----
 opjitconv/create_bfd.c    |  6 +++---
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/libutil++/bfd_support.cpp b/libutil++/bfd_support.cpp
index fa904839..e53a1530 100644
--- a/libutil++/bfd_support.cpp
+++ b/libutil++/bfd_support.cpp
@@ -137,7 +137,7 @@ static bool get_build_id(bfd * ibfd, unsigned char * build_id)
 		}
 	}
 
-	bfd_size_type buildid_sect_size = bfd_section_size(ibfd, sect);
+	bfd_size_type buildid_sect_size = bfd_section_size(sect);
 	char * contents = (char *) xmalloc(buildid_sect_size);
 	errno = 0;
 	if (!bfd_get_section_contents(ibfd, sect,
@@ -188,7 +188,7 @@ bool get_debug_link_info(bfd * ibfd, string & filename, unsigned long & crc32)
 	if (sect == NULL)
 		return false;
 	
-	bfd_size_type debuglink_size = bfd_section_size(ibfd, sect);  
+	bfd_size_type debuglink_size = bfd_section_size(sect);  
 	char * contents = (char *) xmalloc(debuglink_size);
 	cverb << vbfd
 	      << ".gnu_debuglink section has size " << debuglink_size << endl;
@@ -346,7 +346,7 @@ void fixup_linenr(bfd * abfd, asection * section, asymbol ** syms,
 	// first restrict the search on a sensible range of vma, 16 is
 	// an intuitive value based on epilog code look
 	size_t max_search = 16;
-	size_t section_size = bfd_section_size(abfd, section);
+	size_t section_size = bfd_section_size(section);
 	if (pc + max_search > section_size)
 		max_search = section_size - pc;
 
@@ -819,10 +819,10 @@ find_nearest_line(bfd_info const & b, op_bfd_symbol const & sym,
 	else
 		pc = (sym.value() + offset) - sym.filepos();
 
-	if ((bfd_get_section_flags(abfd, section) & SEC_ALLOC) == 0)
+	if ((bfd_section_flags(section) & SEC_ALLOC) == 0)
 		goto fail;
 
-	if (pc >= bfd_section_size(abfd, section))
+	if (pc >= bfd_section_size(section))
 		goto fail;
 
 	ret = bfd_find_nearest_line(abfd, section, syms, pc, &cfilename,
diff --git a/opjitconv/create_bfd.c b/opjitconv/create_bfd.c
index 48db143b..5c0e9152 100644
--- a/opjitconv/create_bfd.c
+++ b/opjitconv/create_bfd.c
@@ -86,12 +86,12 @@ asection * create_section(bfd * abfd, char const * section_name,
 		bfd_perror("bfd_make_section");
 		goto error;
 	}
-	bfd_set_section_vma(abfd, section, vma);
-	if (bfd_set_section_size(abfd, section, size) == FALSE) {
+	bfd_set_section_vma(section, vma);
+	if (bfd_set_section_size(section, size) == FALSE) {
 		bfd_perror("bfd_set_section_size");
 		goto error;
 	}
-	if (bfd_set_section_flags(abfd, section, flags) == FALSE) {
+	if (bfd_set_section_flags(section, flags) == FALSE) {
 		bfd_perror("bfd_set_section_flags");
 		goto error;
 	}
-- 
2.25.1



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
