Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 07751EBD1
	for <lists+oprofile-list@lfdr.de>; Mon, 29 Apr 2019 22:49:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1hLDDm-0001gf-QA; Mon, 29 Apr 2019 20:49:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <will_schmidt@vnet.ibm.com>) id 1hLDDl-0001gR-D9
 for oprofile-list@lists.sourceforge.net; Mon, 29 Apr 2019 20:49:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Content-Transfer-Encoding:Mime-Version:
 Content-Type:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KjZ7gzlz69OBHQUhDLeM/Rkpa2DhOUSXS9HKZWrXxW0=; b=dpX0qC61z6bosN/HFaBbflqIsW
 gZCJAB87dP7vJJX/igYQp21dqIp0GtvMa/I/8q+70cfeMBBX3Fzlu0TiXQrP/JdxTF8S2XO+DaUAB
 vKZyz2MwBqhENyPHIbk9SUEXKyPqS4jkV1Q/yZCfYFg7qxU9ZmR9B7SoKH9X7ykKpWBg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Content-Transfer-Encoding:Mime-Version:Content-Type:Date:Cc:To
 :From:Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=KjZ7gzlz69OBHQUhDLeM/Rkpa2DhOUSXS9HKZWrXxW0=; b=c
 YFNpurcMHsM4KZY2DsHlLd4feGn1V7cZAezBzwZVg644MsDGajb7oWhntgftEDw3x0zWbUhBGD0AY
 cmchrkvHPRGIe06leCU6dIiG+vtxmP1I5tz6BhlfbnTFV9/MyJolRHp1NrX0WsqP9PwjDX+/e/+yZ
 H+S5mKo0TbzDCudw=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hLDDj-00HPk7-Ar
 for oprofile-list@lists.sourceforge.net; Mon, 29 Apr 2019 20:49:53 +0000
Received: from pps.filterd (m0098416.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x3TJ6Ys7048883
 for <oprofile-list@lists.sf.net>; Mon, 29 Apr 2019 15:18:21 -0400
Received: from e34.co.us.ibm.com (e34.co.us.ibm.com [32.97.110.152])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2s66sh97wa-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <oprofile-list@lists.sf.net>; Mon, 29 Apr 2019 15:18:20 -0400
Received: from localhost
 by e34.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <oprofile-list@lists.sf.net> from <will_schmidt@vnet.ibm.com>;
 Mon, 29 Apr 2019 20:18:20 +0100
Received: from b03cxnp08025.gho.boulder.ibm.com (9.17.130.17)
 by e34.co.us.ibm.com (192.168.1.134) with IBM ESMTP SMTP Gateway: Authorized
 Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 29 Apr 2019 20:18:18 +0100
Received: from b03ledav002.gho.boulder.ibm.com
 (b03ledav002.gho.boulder.ibm.com [9.17.130.233])
 by b03cxnp08025.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x3TJIHWA47775758
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 29 Apr 2019 19:18:17 GMT
Received: from b03ledav002.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 4AB1913604F;
 Mon, 29 Apr 2019 19:18:17 +0000 (GMT)
Received: from b03ledav002.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 15BF1136053;
 Mon, 29 Apr 2019 19:18:17 +0000 (GMT)
Received: from brimstone.rchland.ibm.com (unknown [9.10.86.107])
 by b03ledav002.gho.boulder.ibm.com (Postfix) with ESMTP;
 Mon, 29 Apr 2019 19:18:16 +0000 (GMT)
Subject: Update powerpc / P9 event list (PM_ST_CMPL,PM_ST_FIN)
From: will schmidt <will_schmidt@vnet.ibm.com>
To: oprofile-list@lists.sf.net
Date: Mon, 29 Apr 2019 14:18:16 -0500
X-Mailer: Evolution 3.28.5 (3.28.5-2.el7) 
Mime-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19042919-0016-0000-0000-000009A86715
X-IBM-SpamModules-Scores: 
X-IBM-SpamModules-Versions: BY=3.00011018; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000285; SDB=6.01196199; UDB=6.00627301; IPR=6.00977049; 
 MB=3.00026652; MTD=3.00000008; XFM=3.00000015; UTC=2019-04-29 19:18:19
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19042919-0017-0000-0000-000043010206
Message-Id: <205f74bbe692906b16b42102da2a75431da72231.camel@vnet.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-04-29_11:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1904290129
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 KHOP_DYNAMIC           Relay looks like a dynamic address
X-Headers-End: 1hLDDj-00HPk7-Ar
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
Cc: "Carl E. Love" <cel@us.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net


The entries for PM_ST_CMPL and PM_ST_FIN event numbers conflict between the
ppc64/architected_events_v1/events file and the power9/events file.

PM_ST_FIN event is (P9) associated with #0x20016, PM_ST_CMPL has the
#0x200f0 event number.
    
This was noticed in a P9 environment when ophelp was not returning the expected
event number for PM_ST_FIN.
    
After closer review, all but four entries in the 'architected' list are
redundant with respect to the P9 list.  So our inclusion of that list in our
P9 event list file is an error.
    
This patch
 - removes the include of architected_events from the p9 event list file.
 - adds CYCLES,PM_CYC,PM_RUN_CYC, PM_RUN_INST_CMPL to the p9 events file.


Signed-Off-By: Will Schmidt <will_schmidt@vnet.ibm.com>
CC: Carl  



diff --git a/events/ppc64/power9/events b/events/ppc64/power9/events
index 2116c9b..5cbfed5 100644
--- a/events/ppc64/power9/events
+++ b/events/ppc64/power9/events
@@ -1,17 +1,18 @@
 
 #  Copyright OProfile authors
-#  Copyright (c) International Business Machines, 2017.
+#  Copyright (c) International Business Machines, 2017-2019.
 #  Contributed by Will Schmidt <will_schmidt@vnet.ibm.com>.
 #
 #  IBM POWER9 Events
 
-include:ppc64/architected_events_v1
+# Disable the include here.  All of the events in 'architected_events_v1' are
+# represented in this (power9/events) event list.
+# include:ppc64/architected_events_v1
 
-# This table has been automatically generated with a preliminary list of
-# events, and is subject to verification and update.
-# Last Refresh. ( will schmidt , Jun 06,2017  ).
+# Initial ( will schmidt , Jun 06,2017  ).
+# Updated Apr 26, 2019.
 
 # Abbreviation hints:
 # BHS - Branch History Table
 # DARQ - Data and Address Recycle/Recirculation Queue
 # ERAT - Effective to Real Address Translation
@@ -27,10 +28,14 @@ include:ppc64/architected_events_v1
 # RIS - Random Instruction Sampling
 # rty - retry
 # TAGE - Tagged Geometric History Length predictor (branch prediction)
 # TM - Transactional Memory
 
+event:0x1e counters:0,1,2,3 um:zero minimum:100000 name:PM_CYC : Cycles .
+event:0x100f0 counters:0 um:zero minimum:100000 name:CYCLES : Cycles
+event:0x600f4 counters:5 um:zero minimum:100000 name:PM_RUN_CYC : Run_cycles.
+event:0x500fa counters:4 um:zero minimum:100000 name:PM_RUN_INST_CMPL : Run_Instructions.
 
 event:0x0000045050 counters:3       um:zero minimum:10000  name:PM_1FLOP_CMPL : one flop (fadd, fmul, fsub, fcmp, fsel, fabs, fnabs, fres, fsqrte, fneg) operation completed
 event:0x00000100F2 counters:0       um:zero minimum:10000  name:PM_1PLUS_PPC_CMPL : 1 or more ppc insts finished
 event:0x00000400F2 counters:3       um:zero minimum:10000  name:PM_1PLUS_PPC_DISP : Cycles at least one Instr Dispatched
 event:0x000004D052 counters:3       um:zero minimum:10000  name:PM_2FLOP_CMPL : DP vector version of fmul, fsub, fcmp, fsel, fabs, fnabs, fres ,fsqrte, fneg 



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
