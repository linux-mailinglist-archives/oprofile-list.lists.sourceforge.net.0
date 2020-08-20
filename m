Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F3FE524C264
	for <lists+oprofile-list@lfdr.de>; Thu, 20 Aug 2020 17:44:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1k8mjU-0002lR-OD; Thu, 20 Aug 2020 15:44:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Zhe.He@windriver.com>) id 1k8m30-0000xo-NZ
 for oprofile-list@lists.sourceforge.net; Thu, 20 Aug 2020 15:00:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cAJrzrwsQdMJLvwng7DIEKcrpiNUA68yErDa8/6xZaA=; b=PN9MVXBtVcuR+MLLNQiyF18jAr
 yczA9ejx8NOmXwxVKlCldAa9mS3nUhrOlgCecv602Ctu3qFVtEsFwpsPUv6HaZQLNKM5sHw/MWGzf
 LAGxkXK7YO+fOxkBTgamvKbN0E8G1Ptu17w87Dl0BS5l9RzlM4HhIXq7+kX9K0TFSdJo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cAJrzrwsQdMJLvwng7DIEKcrpiNUA68yErDa8/6xZaA=; b=d
 MHD/T8I9XXSTWTtnFu2NqxnTFg/xtZ1G5sN/uFOAEdlQmp+5s5Vt7j0EpvXJugKLYSZTzAswCsmhB
 184Fo4hBx9PExf+rjrDwRbf4xVWkBD70WvNXPaFXL+79Nca/Nsek/vQmIyw68hgzJrAxqpxBYhldW
 8TlS9HjtIT4a6h2E=;
Received: from mail1.windriver.com ([147.11.146.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1k8m2w-00DaSv-TW
 for oprofile-list@lists.sourceforge.net; Thu, 20 Aug 2020 15:00:10 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 07KCxkOl018093
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
 Thu, 20 Aug 2020 05:59:47 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
 ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
 14.3.487.0; Thu, 20 Aug 2020 05:59:45 -0700
From: <zhe.he@windriver.com>
To: <rric@kernel.org>, <tsbogend@alpha.franken.de>,
 <oprofile-list@lists.sf.net>, <linux-mips@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <zhe.he@windriver.com>
Subject: [PATCH] mips/oprofile: Fix fallthrough placement
Date: Thu, 20 Aug 2020 20:54:40 +0800
Message-ID: <20200820125440.350184-1-zhe.he@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1k8m2w-00DaSv-TW
X-Mailman-Approved-At: Thu, 20 Aug 2020 15:44:03 +0000
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

From: He Zhe <zhe.he@windriver.com>

We want neither
"
include/linux/compiler_attributes.h:201:41: warning: statement will never
be executed [-Wswitch-unreachable]
  201 | # define fallthrough __attribute__((__fallthrough__))
      |                      ^~~~~~~~~~~~~
"
nor
"
include/linux/compiler_attributes.h:201:41: warning: attribute
'fallthrough' not preceding a case label or default label
  201 | # define fallthrough __attribute__((__fallthrough__))
      |                      ^~~~~~~~~~~~~
"

It's not worth adding one more macro. Let's simply place the fallthrough
in between the expansions.

Signed-off-by: He Zhe <zhe.he@windriver.com>
---
 arch/mips/oprofile/op_model_mipsxx.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/mips/oprofile/op_model_mipsxx.c b/arch/mips/oprofile/op_model_mipsxx.c
index 1493c49ca47a..55d7b7fd18b6 100644
--- a/arch/mips/oprofile/op_model_mipsxx.c
+++ b/arch/mips/oprofile/op_model_mipsxx.c
@@ -245,7 +245,6 @@ static int mipsxx_perfcount_handler(void)
 
 	switch (counters) {
 #define HANDLE_COUNTER(n)						\
-	fallthrough;							\
 	case n + 1:							\
 		control = r_c0_perfctrl ## n();				\
 		counter = r_c0_perfcntr ## n();				\
@@ -256,8 +255,11 @@ static int mipsxx_perfcount_handler(void)
 			handled = IRQ_HANDLED;				\
 		}
 	HANDLE_COUNTER(3)
+	fallthrough;
 	HANDLE_COUNTER(2)
+	fallthrough;
 	HANDLE_COUNTER(1)
+	fallthrough;
 	HANDLE_COUNTER(0)
 	}
 
-- 
2.17.1



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
