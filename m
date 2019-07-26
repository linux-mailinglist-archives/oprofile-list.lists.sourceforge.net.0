Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E849772E7
	for <lists+oprofile-list@lfdr.de>; Fri, 26 Jul 2019 22:39:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1hr6zc-00009y-Ep; Fri, 26 Jul 2019 20:39:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <will_schmidt@vnet.ibm.com>) id 1hr6zb-00009q-Mc
 for oprofile-list@lists.sourceforge.net; Fri, 26 Jul 2019 20:39:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Mime-Version:Content-Type
 :Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Bup3B9zNTzdlTo++3uW/rxFa/0spHycOiiX7DZepOjw=; b=Tim5x0Nof+t4Fyq4pis0Jrbpod
 0dYjaxAo5YMsUS5Cj9aQNtr/18hLzYaxWbQWvNPFPUA6r1mGnclpLgrdvcfvukFHoODCnqJc7OaBj
 SjF544EAkrxIR5qhuiMhR2aBR2Jm7t/YYHqz4GuoQoo27REarNnLpctzvnmt9pzlsCJI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Mime-Version:Content-Type:Date:Cc:To:From:
 Subject:Message-ID:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Bup3B9zNTzdlTo++3uW/rxFa/0spHycOiiX7DZepOjw=; b=b
 HpKnSBuC8RErjXl2rhS2R5u+XaSEtMSajFotjQdeDNNPPSMhHvr3vSK8V6ffL23IzhP3KOZ2/fn59
 HTR+Me7mYVs4ltxmadj0oevD4zL78nsEDbsPBn7qAQ0S+7JZ/3hguMY0PT2Hga7sG+LJrvzbFEarZ
 rDBv8eM+T5/+s+Z8=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hr6za-000KO0-4V
 for oprofile-list@lists.sourceforge.net; Fri, 26 Jul 2019 20:39:07 +0000
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6QKSWqL113886
 for <oprofile-list@lists.sourceforge.net>; Fri, 26 Jul 2019 16:39:00 -0400
Received: from ppma03wdc.us.ibm.com (ba.79.3fa9.ip4.static.sl-reverse.com
 [169.63.121.186])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2u06rd5gfd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <oprofile-list@lists.sourceforge.net>; Fri, 26 Jul 2019 16:39:00 -0400
Received: from pps.filterd (ppma03wdc.us.ibm.com [127.0.0.1])
 by ppma03wdc.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id x6QKVrDY019648
 for <oprofile-list@lists.sourceforge.net>; Fri, 26 Jul 2019 20:38:59 GMT
Received: from b01cxnp22034.gho.pok.ibm.com (b01cxnp22034.gho.pok.ibm.com
 [9.57.198.24]) by ppma03wdc.us.ibm.com with ESMTP id 2tymfds1g6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <oprofile-list@lists.sourceforge.net>; Fri, 26 Jul 2019 20:38:59 +0000
Received: from b01ledav006.gho.pok.ibm.com (b01ledav006.gho.pok.ibm.com
 [9.57.199.111])
 by b01cxnp22034.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x6QKcwWf50790674
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 26 Jul 2019 20:38:59 GMT
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id E153BAC05E;
 Fri, 26 Jul 2019 20:38:58 +0000 (GMT)
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B5983AC059;
 Fri, 26 Jul 2019 20:38:58 +0000 (GMT)
Received: from brimstone.rchland.ibm.com (unknown [9.10.86.107])
 by b01ledav006.gho.pok.ibm.com (Postfix) with ESMTP;
 Fri, 26 Jul 2019 20:38:58 +0000 (GMT)
Message-ID: <e76daaf713130240ccc6eac0c2f24455c52a1608.camel@vnet.ibm.com>
Subject: [PATCH] Proposed fix for oprofile JIT bad event spec error
From: will schmidt <will_schmidt@vnet.ibm.com>
To: oprofile-list <oprofile-list@lists.sourceforge.net>
Date: Fri, 26 Jul 2019 15:38:58 -0500
X-Mailer: Evolution 3.28.5 (3.28.5-2.el7) 
Mime-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-26_15:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1907260234
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: s.jo]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hr6za-000KO0-4V
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

Hi Oprofile-devs,
Attached is a fix for a problem we have seen recently when
trying to profile against java/JIT workloads.
    
The error floated to the user at opreport time is:
    
  opreport error: parse_event_spec(): bad event specification: 165624.0x
    
Where the 165624 value will match the PIDs of the processes being profiled.
    
This ends up being an issue with how we are building the string for the file
that contains the ELF blob for the java/JIT code (i.e.  12345.jo).  We were
not truncating our 'path' string such that when we strncpy'd it into our
path-and-file variable, we were getting part of an address range (12345.0x)
instead of the desired .jo suffix.
    
The code has been updated to correct that.  Sniff testing shows we are
now successfully processing the .jo contents, and no longer seeing the bad
event spec error.
    
Tested locally, this appears to resolve the issue.
    
    agents/jvmti/libjvmti_oprofile.c:
     - update strncpy call to avoid gcc warning on strncpy parameters.
    opjitconv/opjitconv.c:
     - update logic around calculation of elf_file_size, and rework snprintf
     calls so we properly truncate the input string.
    
     Signed-off-by: Will Schmidt  <will_schmidt@vnet.ibm.com>

---


diff --git a/agents/jvmti/libjvmti_oprofile.c b/agents/jvmti/libjvmti_oprofile.c
index 40f9979..b518eb1 100644
--- a/agents/jvmti/libjvmti_oprofile.c
+++ b/agents/jvmti/libjvmti_oprofile.c
@@ -174,11 +174,11 @@ static void JNICALL cb_compiled_method_load(jvmtiEnv * jvmti,
 
 	{
 	int cnt = strlen(method_name) + strlen(class_signature) +
 		strlen(method_signature) + 2;
 	char buf[cnt];
-	strncpy(buf, class_signature, cnt - 1);
+	strncpy(buf, class_signature, sizeof(buf) - 1);
 	strncat(buf, method_name, cnt - strlen(buf) - 1);
 	strncat(buf, method_signature, cnt - strlen(buf) - 1);
 	if (op_write_native_code(agent_hdl, buf,
 				 (uint64_t)(uintptr_t) code_addr,
 				 code_addr, code_size)) {
diff --git a/opjitconv/opjitconv.c b/opjitconv/opjitconv.c
index c55d8b1..5b46142 100644
--- a/opjitconv/opjitconv.c
+++ b/opjitconv/opjitconv.c
@@ -311,10 +311,11 @@ static int process_jit_dumpfile(char const * dmp_pathname,
 	int jofd;
 	struct stat file_stat;
 	time_t dumpfile_modtime;
 	struct op_jitdump_info dmp_info;
 	char * elf_file = NULL;
+	char * tempstring = NULL;
 	char * proc_id = NULL;
 	char const * anon_dir;
 	char const * dumpfilename = rindex(dmp_pathname, '/');
 	/* temporary copy of dump file created for conversion step */
 	char * tmp_dumpfile;
@@ -388,15 +389,16 @@ chk_proc_id:
 			rc = OP_JIT_CONV_FAIL;
 			goto free_res2;
 		}
 		result_dir_length = ++anon_path_seg - anon_dir;
 		/* create final ELF file name */
-		elf_file_size = result_dir_length
+		elf_file_size = result_dir_length + strlen("/")
 			+ strlen(proc_id) + strlen(".jo") + 1;
 		elf_file = xmalloc(elf_file_size);
-		snprintf(elf_file, elf_file_size, "%s%s.jo",
-			 anon_dir, proc_id);
+		tempstring = xmalloc(elf_file_size);
+		snprintf(tempstring, result_dir_length, "%s",anon_dir);
+		snprintf(elf_file, elf_file_size, "%s/%s.jo",tempstring,proc_id);
 		/* create temporary ELF file name */
 		tmp_elffile_size = strlen(tmp_conv_dir) + 1
 			+ strlen(proc_id) + strlen(".jo") + 1;
 		tmp_elffile = xmalloc(tmp_elffile_size);
 		snprintf(tmp_elffile, tmp_elffile_size, "%s/%s.jo",



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
