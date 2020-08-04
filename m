Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E3F23C0A6
	for <lists+oprofile-list@lfdr.de>; Tue,  4 Aug 2020 22:18:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1k33O6-0006Gm-78; Tue, 04 Aug 2020 20:18:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <colin.king@canonical.com>) id 1k31F1-0007M7-D2
 for oprofile-list@lists.sourceforge.net; Tue, 04 Aug 2020 18:00:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3etm18ZrQgzVTCkP6Oni3qFW500noUXWmNpeW7gKuzc=; b=OskLyKzDSwZZIdeb0q0dmUi3g/
 2OF90Qy6M3968QILdR7CTup9OU8koo4Dxy8Y8jA//aw4OtuOhNVy0qlmCsrAApGayvrJ36OzWuCdT
 XPZLf1jfTFocZNZbYrdABD1faih4TzpgL7qQJrru6VqcGpFjE0/RQm1T8QKMab0qkCO8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3etm18ZrQgzVTCkP6Oni3qFW500noUXWmNpeW7gKuzc=; b=L
 rqVKZNPWyFD9jZDQyNjTBeRJOsBM9yyayNvf4Gt81RBbZLhXzXIxBhkgE7kBSRStkHsO2pGxFzdlS
 zM1sanQQ+AoEpPcFDdZjJG9tbqFnHmVT1u5gPoxfOlJEUtEjY0VzcrFFqsEhzoWwXlnv42Jj8oGnb
 Eywm+vEHapLNDLU8=;
Received: from youngberry.canonical.com ([91.189.89.112])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA:128) (Exim 4.92.2) id 1k31Ez-003naU-PY
 for oprofile-list@lists.sourceforge.net; Tue, 04 Aug 2020 18:00:47 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1k30y4-0004z3-QE; Tue, 04 Aug 2020 17:43:16 +0000
From: Colin King <colin.king@canonical.com>
To: Robert Richter <rric@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, oprofile-list@lists.sf.net,
 linuxppc-dev@lists.ozlabs.org
Subject: [PATCH] powerpc/oprofile: fix spelling mistake "contex" -> "context"
Date: Tue,  4 Aug 2020 18:43:16 +0100
Message-Id: <20200804174316.402425-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: canonical.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k31Ez-003naU-PY
X-Mailman-Approved-At: Tue, 04 Aug 2020 20:18:17 +0000
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

From: Colin Ian King <colin.king@canonical.com>

There is a spelling mistake in a pr_debug message. Fix it.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 arch/powerpc/oprofile/cell/spu_task_sync.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/powerpc/oprofile/cell/spu_task_sync.c b/arch/powerpc/oprofile/cell/spu_task_sync.c
index df59d0bb121f..489f993100d5 100644
--- a/arch/powerpc/oprofile/cell/spu_task_sync.c
+++ b/arch/powerpc/oprofile/cell/spu_task_sync.c
@@ -572,7 +572,7 @@ void spu_sync_buffer(int spu_num, unsigned int *samples,
 		 * samples are recorded.
 		 * No big deal -- so we just drop a few samples.
 		 */
-		pr_debug("SPU_PROF: No cached SPU contex "
+		pr_debug("SPU_PROF: No cached SPU context "
 			  "for SPU #%d. Dropping samples.\n", spu_num);
 		goto out;
 	}
-- 
2.27.0



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
