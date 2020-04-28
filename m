Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B501BC0DF
	for <lists+oprofile-list@lfdr.de>; Tue, 28 Apr 2020 16:13:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jTQz3-00037Z-Cz; Tue, 28 Apr 2020 14:13:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yanaijie@huawei.com>) id 1jTK3Y-0005d6-NH
 for oprofile-list@lists.sourceforge.net; Tue, 28 Apr 2020 06:49:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hvudf9bih+7lUl2ZRQaydXObjXayQG3QVBKp4f19YYA=; b=G+wtdiRjG2K9TUcN/XLV4/AbFh
 xBuIephyhmFFaGk6WrpJ6aETJFRCcYFti+k4RWufDWqr5Kab6wW67WBTlmFfUb5J51oshn+QbAVWg
 u0aLruHZJGrhiHzK4FwpBw2ks5vBZewydi+rRa2TDLkmsG7M3H89nmyMU4tPhwyaWs+8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hvudf9bih+7lUl2ZRQaydXObjXayQG3QVBKp4f19YYA=; b=k
 2XBSfpTYwaCDGwq+K0qlvF2mQE3zjGvwuIJhitAaWGzhpoeJj5frvp5c+GoYkHFaJCDjdPBJH1U/1
 Fdk87ZLcxNEedHnJVL2aAMl/4sGR/FMAEc4oCpcYkugv0rUvC69xpPVHKIeZArvV8xmYRwl+T4QVu
 iElE4Fz6CN68satI=;
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jTK3W-00DaqG-HR
 for oprofile-list@lists.sourceforge.net; Tue, 28 Apr 2020 06:49:24 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id B2A8A569E5E26E311EAB;
 Tue, 28 Apr 2020 14:33:36 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.487.0; Tue, 28 Apr 2020
 14:33:28 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <rric@kernel.org>, <tsbogend@alpha.franken.de>,
 <oprofile-list@lists.sf.net>, <linux-mips@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] MIPS: oprofile: remove unneeded semicolon in common.c
Date: Tue, 28 Apr 2020 14:32:54 +0800
Message-ID: <20200428063254.33337-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jTK3W-00DaqG-HR
X-Mailman-Approved-At: Tue, 28 Apr 2020 14:13:12 +0000
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
Cc: Jason Yan <yanaijie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

Fix the following coccicheck warning:

arch/mips/oprofile/common.c:113:2-3: Unneeded semicolon

Signed-off-by: Jason Yan <yanaijie@huawei.com>
---
 arch/mips/oprofile/common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/oprofile/common.c b/arch/mips/oprofile/common.c
index 03db268cba5c..d3996c4c6440 100644
--- a/arch/mips/oprofile/common.c
+++ b/arch/mips/oprofile/common.c
@@ -110,7 +110,7 @@ int __init oprofile_arch_init(struct oprofile_operations *ops)
 	case CPU_LOONGSON64:
 		lmodel = &op_model_loongson3_ops;
 		break;
-	};
+	}
 
 	/*
 	 * Always set the backtrace. This allows unsupported CPU types to still
-- 
2.21.1



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
