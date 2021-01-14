Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 301082F6A0D
	for <lists+oprofile-list@lfdr.de>; Thu, 14 Jan 2021 19:54:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l07la-0003YU-To; Thu, 14 Jan 2021 18:54:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <viresh.kumar@linaro.org>) id 1l01O6-0006FM-N7
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 12:06:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0TktqevA8aRkFmrMbxkkdvPIFhPHaEZezQz/aoRFVng=; b=OTRinM57Yq2IqKzKJY8amjiSGj
 kTkQEy3xn21yi17SKOMNTsLtY+r/5g5IG8ACWjNL7IKbWvq6V7JmrFOLhxwQX/Rzp/PK+3y7AascR
 +K8p/L8PRNt3RW+mgSVOzTsAQCag+5rqV9yK07CXXUtazyK7pVyfRz0dfeITg6LETnNE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0TktqevA8aRkFmrMbxkkdvPIFhPHaEZezQz/aoRFVng=; b=YgIyHKVrvlzIsCjGamldEA1AAU
 XCQ+JMYvH2UX7TkAEHix74XhtQdloejoz02FVrJpexr+lnISm6qiIRXPjl7gvxMwETbHD5G04pVh8
 /Gyv6cvXCo38Spmn7N3qJeRS1xoms44CwDlZeBUYBGcUfLKPMWtUILUtDaB1nixOkABU=;
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l01O0-008UFi-Vh
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 12:06:02 +0000
Received: by mail-oi1-f169.google.com with SMTP id l207so5662460oib.4
 for <oprofile-list@lists.sf.net>; Thu, 14 Jan 2021 04:05:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0TktqevA8aRkFmrMbxkkdvPIFhPHaEZezQz/aoRFVng=;
 b=TNUSFgpjYqY77U3gHE2sLGc/y6BYcTK8p+HT7WVOwP7WSCt01u5I0UNjyaBQvJ+HiI
 nCDVv7XvnNyX9yNXGluQsDOln7AewWmnUc+5rE3sHdyhCLcxSg/akxlIT/0MPvP3jaoc
 uq71J03wV2VT1Igm2NIYqz+GT2JesUb6j8+38zYAn3Vfk+tSSP8nP7e0uYiV1AqleAd2
 aeRNSZBfK0x6S1zdK2wsd4M8cMs6s1lscVtIO8creMkqzHCr6vNR7wAaMQ6vsMLHYHWC
 v1OuT3Pk4uMAp8MGVyWWnvfByGZxQVfI9foicND7QUOOs7tqE4crjxsJ/sCVdC5GjC1X
 bZCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0TktqevA8aRkFmrMbxkkdvPIFhPHaEZezQz/aoRFVng=;
 b=QTXPpEmYUN6O5rH1f9SKGvaSKvU5yKZFVX4cZN3mlnAFeP5ixByLm3pLK2qePgctTv
 +gINxWgv+vbcdzDuyqmcN+RQM494KQHJ6sIeRKVY8UQywl6z8PFod3kZt7i/CFvl3Urn
 1vNrE6/HYfw8mS7mkPuOf5qYk1pKvJSdgIekpYr4orjt3W+zhqkYyBDhQl4+LrK+443s
 AcDB/RbDWqogmidGGWEeP0PclhrU6/DsZKEqVDfZU5GtoUCJToWO+GHcTxpFWViVLuWN
 BHNDH5nlYo3eFeb6gkVPeMd4yiSgMh4XgRhnXy3BW8OcP14q5cRBaEwU2i67qwc0NBv3
 STRQ==
X-Gm-Message-State: AOAM531zLFLYSJTM8DmX7OyK7FZMEg3mPXa9Anw+smR47p0xnX0NYPKk
 ppv7ukGS27/c0edoDs6njX1Ia/8ZdW3/gA==
X-Google-Smtp-Source: ABdhPJxnBNQDkI/AQYrAgqsSsn8eW5JbHXkD8iJf7xwnkeQLAJ0B0iT8Ad6kIb/jJX22k9gZrEuWJw==
X-Received: by 2002:a17:90a:fc8e:: with SMTP id
 ci14mr4633127pjb.181.1610624147623; 
 Thu, 14 Jan 2021 03:35:47 -0800 (PST)
Received: from localhost ([122.172.85.111])
 by smtp.gmail.com with ESMTPSA id z3sm5160679pfq.89.2021.01.14.03.35.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 Jan 2021 03:35:47 -0800 (PST)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Robert Richter <rric@kernel.org>, Brian Cain <bcain@codeaurora.org>
Subject: [PATCH 04/18] arch: hexagon: Don't select HAVE_OPROFILE
Date: Thu, 14 Jan 2021 17:05:17 +0530
Message-Id: <041ab89e12a71c1bf40d08926c3914c68af1504c.1610622251.git.viresh.kumar@linaro.org>
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
 for more information. [URIs: linux-foundation.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.169 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.169 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l01O0-008UFi-Vh
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
 Christoph Hellwig <hch@infradead.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 linux-kernel@vger.kernel.org, anmar.oueja@linaro.org,
 oprofile-list@lists.sf.net, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-hexagon@vger.kernel.org, William Cohen <wcohen@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

The "oprofile" user-space tools don't use the kernel OPROFILE support
any more, and haven't in a long time. User-space has been converted to
the perf interfaces.

Don't select HAVE_OPROFILE for hexagon anymore.

Suggested-by: Christoph Hellwig <hch@infradead.org>
Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/hexagon/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/hexagon/Kconfig b/arch/hexagon/Kconfig
index 6e00c16a36b5..44a409967af1 100644
--- a/arch/hexagon/Kconfig
+++ b/arch/hexagon/Kconfig
@@ -7,7 +7,6 @@ config HEXAGON
 	select ARCH_32BIT_OFF_T
 	select ARCH_HAS_SYNC_DMA_FOR_DEVICE
 	select ARCH_NO_PREEMPT
-	select HAVE_OPROFILE
 	# Other pending projects/to-do items.
 	# select HAVE_REGS_AND_STACK_ACCESS_API
 	# select HAVE_HW_BREAKPOINT if PERF_EVENTS
-- 
2.25.0.rc1.19.g042ed3e048af



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
