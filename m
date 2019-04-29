Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8426EECA8
	for <lists+oprofile-list@lfdr.de>; Tue, 30 Apr 2019 00:18:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1hLEbd-0006xV-9i; Mon, 29 Apr 2019 22:18:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <will_schmidt@vnet.ibm.com>) id 1hLEbb-0006xM-KI
 for oprofile-list@lists.sourceforge.net; Mon, 29 Apr 2019 22:18:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Content-Transfer-Encoding:Mime-Version:
 Content-Type:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iiYcOTPskG2y1XmDtFj4FYgjqT/lRK63G2r+GiYoY0Y=; b=BgQcQ0fSr0jReYNDouNdbQ+0Ak
 6w1TUDvnsA8lcjFYqe6BbIOR32Fj0G+x4VQ8rbcHCGTpW37tHqEOX6igd5lwdMomENpndCzw695Ct
 0i8u3KMwU3QEGkfxfzry+4GQuY1MO0FR/aQhITNePM/iixu1uvacTNUxdm9Rik9wOtUE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Content-Transfer-Encoding:Mime-Version:Content-Type:Date:Cc:To
 :From:Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=iiYcOTPskG2y1XmDtFj4FYgjqT/lRK63G2r+GiYoY0Y=; b=S
 mSpBlrN0fL7Tht3AbuQq8YbcE7/lmPyJZF/sbz2YHm/UwbPrKFCQNuF+iArn+KuYtChXzjkVTuD+o
 KAWIBMuiiHMHT7EZ0xPCrYrPH+c1XWUm2ywzldbODQu/z1VaRnsag50LCHivO6SV6FG7LGlUUeMHO
 4VkZ08gyvYhnXETo=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hLEbX-000Mib-PC
 for oprofile-list@lists.sourceforge.net; Mon, 29 Apr 2019 22:18:35 +0000
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x3TMHOvP093233
 for <oprofile-list@lists.sf.net>; Mon, 29 Apr 2019 18:18:25 -0400
Received: from e35.co.us.ibm.com (e35.co.us.ibm.com [32.97.110.153])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2s67jwcu2t-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <oprofile-list@lists.sf.net>; Mon, 29 Apr 2019 18:18:24 -0400
Received: from localhost
 by e35.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <oprofile-list@lists.sf.net> from <will_schmidt@vnet.ibm.com>;
 Mon, 29 Apr 2019 23:18:24 +0100
Received: from b03cxnp07028.gho.boulder.ibm.com (9.17.130.15)
 by e35.co.us.ibm.com (192.168.1.135) with IBM ESMTP SMTP Gateway: Authorized
 Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 29 Apr 2019 23:18:22 +0100
Received: from b03ledav006.gho.boulder.ibm.com
 (b03ledav006.gho.boulder.ibm.com [9.17.130.237])
 by b03cxnp07028.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x3TMILlc61800608
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 29 Apr 2019 22:18:21 GMT
Received: from b03ledav006.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 3E974C605B;
 Mon, 29 Apr 2019 22:18:21 +0000 (GMT)
Received: from b03ledav006.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 0632EC605D;
 Mon, 29 Apr 2019 22:18:20 +0000 (GMT)
Received: from brimstone.rchland.ibm.com (unknown [9.10.86.107])
 by b03ledav006.gho.boulder.ibm.com (Postfix) with ESMTP;
 Mon, 29 Apr 2019 22:18:20 +0000 (GMT)
Subject: oprofile - fix compiler warnings seen with newer gcc
From: will schmidt <will_schmidt@vnet.ibm.com>
To: oprofile-list@lists.sf.net
Date: Mon, 29 Apr 2019 17:18:19 -0500
X-Mailer: Evolution 3.28.5 (3.28.5-2.el7) 
Mime-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19042922-0012-0000-0000-0000172D6D8F
X-IBM-SpamModules-Scores: 
X-IBM-SpamModules-Versions: BY=3.00011019; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000285; SDB=6.01196260; UDB=6.00627337; IPR=6.00977109; 
 MB=3.00026655; MTD=3.00000008; XFM=3.00000015; UTC=2019-04-29 22:18:23
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19042922-0013-0000-0000-0000570E795B
Message-Id: <5d08f0b431f86c54317f7f3677d38d65ddbfb3b7.camel@vnet.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-04-29_13:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1904290144
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 KHOP_DYNAMIC           Relay looks like a dynamic address
X-Headers-End: 1hLEbX-000Mib-PC
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

Hi, 

This is intended to fix some compiler warnings noted when building oprofile with gcc 9.0.1
    
     * libutil++/tests/utility_tests.cpp:  Remove deprecated dynamic exception
       specifications. (gcc -Werror=deprecated).
     * libpe_utils/op_pe_utils.cpp: strncpy already copies the size of the
       string, limit it to the size of the destination.
     * opjitconf/opjitconv.c:  convert sprintf to snprintf and check the return
       length from the call to ensure we do not overrun our buffer.
       (gcc -Werror=format-overflow)

---
Thanks
-Will


diff --git a/libpe_utils/op_pe_utils.cpp b/libpe_utils/op_pe_utils.cpp
index 2cae784..d545cee 100644
--- a/libpe_utils/op_pe_utils.cpp
+++ b/libpe_utils/op_pe_utils.cpp
@@ -652,11 +652,11 @@ static bool _get_codes_for_match(unsigned int pfm_idx, const char name[],
 			strcpy(evt_name ,"PM_CYC") ;
 		} else if (strstr(event.name, "_GRP")) {
 			string str = event.name;
 			strncpy(evt_name, event.name, str.rfind("_GRP"));
 		} else {
-			strncpy(evt_name, event.name, strlen(event.name));
+			strncpy(evt_name, event.name, strlen(evt_name));
 		}
 
 		/* Events where the "_EDGE_COUNT" suffix has been appended to a
 		 * real native event name are pseudo events (events that have
 		 * not been formally defined in processor documentation), where
@@ -732,11 +732,11 @@ static bool _op_get_event_codes(vector<operf_event_t> * evt_vec)
 			strcpy(evt_name ,"PM_CYC") ;
 		} else if (strstr(event.name, "_GRP")) {
 			string str = event.name;
 			strncpy(evt_name, event.name, str.rfind("_GRP"));
 		} else {
-			strncpy(evt_name, event.name, strlen(event.name));
+			strncpy(evt_name, event.name, sizeof(evt_name));
 		}
 
 		/* Events where the "_EDGE_COUNT" suffix has been appended to a
 		 * real native event name are pseudo events (events that have
 		 * not been formally defined in processor documentation), where
diff --git a/libutil++/tests/utility_tests.cpp b/libutil++/tests/utility_tests.cpp
index 3955fd0..2f8286f 100644
--- a/libutil++/tests/utility_tests.cpp
+++ b/libutil++/tests/utility_tests.cpp
@@ -19,17 +19,17 @@
 using namespace std;
 
 static int nb_new;
 static int nb_new_array;
 
-void* operator new(size_t size) throw(bad_alloc)
+void* operator new(size_t size)
 {
 	nb_new++;
 	return malloc(size);
 }
 
-void* operator new[](size_t size) throw(bad_alloc)
+void* operator new[](size_t size)
 {
 	nb_new_array++;
 	return malloc(size);
 }
 
diff --git a/opjitconv/opjitconv.c b/opjitconv/opjitconv.c
index 207054a..c55d8b1 100644
--- a/opjitconv/opjitconv.c
+++ b/opjitconv/opjitconv.c
@@ -720,12 +720,12 @@ static int op_process_jit_dumpfiles(char const * session_dir,
 	
 rm_tmp:
 	/* Delete temporary working directory with all its files
 	 * (i.e. dump and ELF file).
 	 */
-	sprintf(sys_cmd_buffer, "/bin/rm -rf '%s'", tmp_conv_dir);
-	if (system(sys_cmd_buffer) != 0) {
+	retlen=snprintf(sys_cmd_buffer,sizeof(sys_cmd_buffer), "/bin/rm -rf '%s'", tmp_conv_dir);
+	if ((retlen <=0 ) || (system(sys_cmd_buffer) != 0)) {
 		printf("opjitconv: Removing temporary working directory failed.\n");
 		rc = OP_JIT_CONV_TMPDIR_NOT_REMOVED;
 	}
 	
 out:



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
