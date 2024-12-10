Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4079EB4B1
	for <lists+oprofile-list@lfdr.de>; Tue, 10 Dec 2024 16:23:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1tL24j-0000Kk-2c;
	Tue, 10 Dec 2024 15:23:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <florian.fainelli@broadcom.com>) id 1tKnxs-00011U-9Z
 for oprofile-list@lists.sourceforge.net;
 Tue, 10 Dec 2024 00:18:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m6c8hmo/hB1u19JAoThOSbkw8V6TPXkcCvxmYU40uJs=; b=MiI4bQAmaBJ33TvVyPUy641/D7
 J2SV6SnL+TPLwxC6K4Y6Jkj03eTW3QP2V1QEfFyafHVoQrgbfn7KvWtMyM0rl5Pd2lY9vIXr4G0m1
 ZM87zLgepghO4vy1ixnAiVMiHh4SCImsUu/xGCnxauvtzrGj2BMqNx3DMkSASryMTrs4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=m6c8hmo/hB1u19JAoThOSbkw8V6TPXkcCvxmYU40uJs=; b=Y
 i0NrlCCZp1ygXUDnLoS1gLDFjMx1ApGJHI9eyM56+/L0fU0uu+7nvl1zusZ7sczFhh+6j+Y/oVUUA
 uNz8QKDsvXurHkUHlymH4V0bmM8LzXSwPjXnPRVB24P0nY2hPBsIHsTOgAlpO0DKzD41NSbSJ/Gh6
 jpeYnT3ZbU2MTnh8=;
Received: from saphodev.broadcom.com ([192.19.144.205]
 helo=relay.smtp-ext.broadcom.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tKnxq-0007rM-VE for oprofile-list@lists.sourceforge.net;
 Tue, 10 Dec 2024 00:18:59 +0000
Received: from mail-lvn-it-01.lvn.broadcom.net
 (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
 by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id A08C0C0000D8;
 Mon,  9 Dec 2024 16:02:32 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com A08C0C0000D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1733788952;
 bh=rTTY3xMOwRHK8ihmasX5A7pOVD/FZ+aslmWJO1/EM8g=;
 h=From:To:Cc:Subject:Date:From;
 b=EvoI2Z1QNTnGLOPlj9epaMjGkmcfKAr0VxxxpSQlPJuU1fXKUOrlnIkl48+VKhAW4
 HsZubgCyKdTpTrtBagb3CiseAPCK5bJitD188HNUa15Mc7kjVNd+l+AVTblDkgo+a/
 PWYYvFwIKWob5UpKwwWaaeO+LuM+9ZMBV0m2Zvas=
Received: from stbirv-lnx-1.igp.broadcom.net (stbirv-lnx-1.igp.broadcom.net
 [10.67.48.32])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id 5AEBA18041CAC6;
 Mon,  9 Dec 2024 16:02:32 -0800 (PST)
To: wcohen@redhat.com
Subject: [PATCH] Add Broadcom Brahma-B53 CPU implementor and part number
Date: Mon,  9 Dec 2024 16:02:28 -0800
Message-Id: <20241210000228.1992992-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Broadcom's Brahma-B53 CPU features a PMU which is 100%
 software
 compatible with those found on Cortex-A53 designs. Add the required code
 to recognize the implementor id (0x42) and the Brahma-B53 part [...] 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [192.19.144.205 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [192.19.144.205 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tKnxq-0007rM-VE
X-Mailman-Approved-At: Tue, 10 Dec 2024 15:23:00 +0000
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
From: Florian Fainelli via oprofile-list <oprofile-list@lists.sourceforge.net>
Reply-To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: oprofile-list@lists.sf.net,
 Florian Fainelli <florian.fainelli@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

Broadcom's Brahma-B53 CPU features a PMU which is 100% software
compatible with those found on Cortex-A53 designs. Add the required
code to recognize the implementor id (0x42) and the Brahma-B53 part
number (0x100) and return "arm/armv8-ca53" so we can utilize the PMU.

Signed-off-by: Florian Fainelli <florian.fainelli@broadcom.com>
---
 libop/op_cpu_type.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/libop/op_cpu_type.c b/libop/op_cpu_type.c
index 3aab4a2d418d..69e9098cf516 100644
--- a/libop/op_cpu_type.c
+++ b/libop/op_cpu_type.c
@@ -430,6 +430,8 @@ static op_cpu _get_arm_cpu_type(void)
 		switch (cpuid) {
 		case 0x00f:
 			return op_get_cpu_number("arm/armv7-ca15");
+		case 0x100:
+			return op_get_cpu_number("arm/armv8-ca53");
 		case 0x516:
 			return op_get_cpu_number("arm/armv8-thunderx2");
 		}
-- 
2.34.1



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
