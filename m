Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D02218931
	for <lists+oprofile-list@lfdr.de>; Wed,  8 Jul 2020 15:35:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jtAEe-00032N-ML; Wed, 08 Jul 2020 13:35:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <grandmaster@al2klimov.de>) id 1jt7No-0000ys-Pm
 for oprofile-list@lists.sourceforge.net; Wed, 08 Jul 2020 10:32:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e6SptA2jGLr7H0lWjC+m+jAZeheiEtH49q6RufHERxs=; b=ZEQQfRPVPTC6HMxSzTcGE4i9vF
 F0C/znD0PQV21lVuDr1e+OeOMdqZ8szr1DNw0mSD3dkdO/IGdd/m7KBV5xqm7ZWhsylTqy8U5Segv
 Yk8J9ghe2i+lM5sb/t9U+Em3Ui3Bz/n92E9w/voVoIKGwSAkHpWiL1D6SfRjMrkOHjOo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=e6SptA2jGLr7H0lWjC+m+jAZeheiEtH49q6RufHERxs=; b=D
 1K/1RjDu3OK3H6j9EiAi7n6pSQrGGdyY7CO/B3Dpvqh1Lo+4l9vGWxXBiCy7MWticmcfVlpMMhvLA
 4vJ6JDnjfGHFonzKCRpck6x2TEhDivXzj2Xk5HlRuiDNWyzUb1GP/uhXI5VWjXY0knY3t8xyNfchf
 Rj5GgMFO/G0fgcAw=;
Received: from smtp.al2klimov.de ([78.46.175.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jt7Nm-00HBGt-Fu
 for oprofile-list@lists.sourceforge.net; Wed, 08 Jul 2020 10:32:56 +0000
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
 by smtp.al2klimov.de (Postfix) with ESMTPA id E6231BC0D1;
 Wed,  8 Jul 2020 10:15:14 +0000 (UTC)
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
To: rric@kernel.org, tglx@linutronix.de, mingo@redhat.com, bp@alien8.de,
 x86@kernel.org, hpa@zytor.com, oprofile-list@lists.sf.net,
 linux-kernel@vger.kernel.org
Subject: [PATCH] Replace HTTP links with HTTPS ones: OPROFILE
Date: Wed,  8 Jul 2020 12:15:08 +0200
Message-Id: <20200708101508.13766-1-grandmaster@al2klimov.de>
MIME-Version: 1.0
X-Spamd-Bar: +++++
X-Spam-Level: *****
Authentication-Results: smtp.al2klimov.de;
 auth=pass smtp.auth=aklimov@al2klimov.de
 smtp.mailfrom=grandmaster@al2klimov.de
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jt7Nm-00HBGt-Fu
X-Mailman-Approved-At: Wed, 08 Jul 2020 13:35:40 +0000
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
Cc: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

Rationale:
Reduces attack surface on kernel devs opening the links for MITM
as HTTPS traffic is much harder to manipulate.

Deterministic algorithm:
For each file:
  If not .svg:
    For each line:
      If doesn't contain `\bxmlns\b`:
        For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
	  If neither `\bgnu\.org/license`, nor `\bmozilla\.org/MPL\b`:
            If both the HTTP and HTTPS versions
            return 200 OK and serve the same content:
              Replace HTTP with HTTPS.

Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
---
 Continuing my work started at 93431e0607e5.
 See also: git log --oneline '--author=Alexander A. Klimov <grandmaster@al2klimov.de>' v5.7..master
 (Actually letting a shell for loop submit all this stuff for me.)

 If there are any URLs to be removed completely or at least not HTTPSified:
 Just clearly say so and I'll *undo my change*.
 See also: https://lkml.org/lkml/2020/6/27/64

 If there are any valid, but yet not changed URLs:
 See: https://lkml.org/lkml/2020/6/26/837

 If you apply the patch, please let me know.


 arch/x86/oprofile/nmi_int.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/oprofile/nmi_int.c b/arch/x86/oprofile/nmi_int.c
index a7a7677265b6..0db06895cf90 100644
--- a/arch/x86/oprofile/nmi_int.c
+++ b/arch/x86/oprofile/nmi_int.c
@@ -621,7 +621,7 @@ static int __init ppro_init(char **cpu_type)
 	 * and model can be found in the Intel Software Developer's
 	 * Manuals (SDM):
 	 *
-	 *  http://www.intel.com/products/processor/manuals/
+	 *  https://www.intel.com/products/processor/manuals/
 	 *
 	 * As of May 2010 the documentation for this was in the:
 	 * "Intel 64 and IA-32 Architectures Software Developer's
-- 
2.27.0



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
