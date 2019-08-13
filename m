Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F248C3F8
	for <lists+oprofile-list@lfdr.de>; Tue, 13 Aug 2019 23:56:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1hxelt-0005vz-G8; Tue, 13 Aug 2019 21:56:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <will_schmidt@vnet.ibm.com>) id 1hxels-0005vm-Fl
 for oprofile-list@lists.sourceforge.net; Tue, 13 Aug 2019 21:56:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Content-Transfer-Encoding:Mime-Version:
 Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QU2ZnhI6ujOXsl9VwHl2ZMSy4OPFg8eZZ/8Mg55Vi1w=; b=bV9PWjn50qrYm7+PMF5rCZYaqk
 wgfG308/PvB4CmLQDBnaqH5AtoC5p5CzrbIagKul2w6GQiB05in0GZyIwkukeS7huMtocfQgRPQ1Y
 hK62Q0yq1OXTuEf3Q9zCGN+FGAEvL74a+VY0h0BjHDoXWEOHuc2s9V/tbDUuwjDQG55A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Content-Transfer-Encoding:Mime-Version:Content-Type:References
 :In-Reply-To:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QU2ZnhI6ujOXsl9VwHl2ZMSy4OPFg8eZZ/8Mg55Vi1w=; b=LwIL1jI7oBRtM3utegmh7eXAEj
 qpruZ2izPAVby0dNy+30DkVg02ede78k3fXuNKBWeVCGZMfH2KQlkj4GRK+G7MOspd9RAwkDoVPjm
 FnApX2fHddxCjnpRvqat2qbPsJiYgJuaNzLoOoSL24Bzjj7yH8StmjjyE3E4K9FVRopA=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hxelp-003Gri-51
 for oprofile-list@lists.sourceforge.net; Tue, 13 Aug 2019 21:56:00 +0000
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7DLHBV8027602
 for <oprofile-list@lists.sourceforge.net>; Tue, 13 Aug 2019 17:30:17 -0400
Received: from e34.co.us.ibm.com (e34.co.us.ibm.com [32.97.110.152])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2uc4gwhf0y-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <oprofile-list@lists.sourceforge.net>; Tue, 13 Aug 2019 17:30:17 -0400
Received: from localhost
 by e34.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <oprofile-list@lists.sourceforge.net> from <will_schmidt@vnet.ibm.com>;
 Tue, 13 Aug 2019 22:30:16 +0100
Received: from b03cxnp08027.gho.boulder.ibm.com (9.17.130.19)
 by e34.co.us.ibm.com (192.168.1.134) with IBM ESMTP SMTP Gateway: Authorized
 Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 13 Aug 2019 22:30:13 +0100
Received: from b03ledav003.gho.boulder.ibm.com
 (b03ledav003.gho.boulder.ibm.com [9.17.130.234])
 by b03cxnp08027.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x7DLUCRV30212514
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 13 Aug 2019 21:30:12 GMT
Received: from b03ledav003.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 85D0A6A057;
 Tue, 13 Aug 2019 21:30:12 +0000 (GMT)
Received: from b03ledav003.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 40A6F6A04D;
 Tue, 13 Aug 2019 21:30:12 +0000 (GMT)
Received: from brimstone.rchland.ibm.com (unknown [9.10.86.107])
 by b03ledav003.gho.boulder.ibm.com (Postfix) with ESMTP;
 Tue, 13 Aug 2019 21:30:12 +0000 (GMT)
Subject: Re: [PATCH] Proposed fix for oprofile JIT bad event spec error
From: will schmidt <will_schmidt@vnet.ibm.com>
To: William Cohen <wcohen@redhat.com>, oprofile-list@lists.sourceforge.net
Date: Tue, 13 Aug 2019 16:30:11 -0500
In-Reply-To: <e8afcf76-61e2-ff07-1c86-c2d7443c4886@redhat.com>
References: <e76daaf713130240ccc6eac0c2f24455c52a1608.camel@vnet.ibm.com>
 <e8afcf76-61e2-ff07-1c86-c2d7443c4886@redhat.com>
X-Mailer: Evolution 3.28.5 (3.28.5-2.el7) 
Mime-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19081321-0016-0000-0000-000009DB3974
X-IBM-SpamModules-Scores: 
X-IBM-SpamModules-Versions: BY=3.00011589; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000287; SDB=6.01246387; UDB=6.00657729; IPR=6.01027893; 
 MB=3.00028164; MTD=3.00000008; XFM=3.00000015; UTC=2019-08-13 21:30:14
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19081321-0017-0000-0000-00004469FF9B
Message-Id: <9e9eb55a19b513e8e38b46c1c38c8c59150d380e.camel@vnet.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-13_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908130202
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: s.jo]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hxelp-003Gri-51
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
Cc: Carl Love <cel@us.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Tue, 2019-08-13 at 16:36 -0400, William Cohen wrote:
> On 7/26/19 4:38 PM, will schmidt wrote:
> > Hi Oprofile-devs,
> > Attached is a fix for a problem we have seen recently when
> > trying to profile against java/JIT workloads.
> 
> Hi,
> 
> Sorry for the delay reviewing the patch.  I do have a question about
> the code below.
> 
> 
> >     
> > The error floated to the user at opreport time is:
> >     
> >   opreport error: parse_event_spec(): bad event specification:
> > 165624.0x
> >     
> > Where the 165624 value will match the PIDs of the processes being
> > profiled.
> >     
> > This ends up being an issue with how we are building the string for
> > the file
> > that contains the ELF blob for the java/JIT code
> > (i.e.  12345.jo).  We were
> > not truncating our 'path' string such that when we strncpy'd it
> > into our
> > path-and-file variable, we were getting part of an address range
> > (12345.0x)
> > instead of the desired .jo suffix.
> >     
> > The code has been updated to correct that.  Sniff testing shows we
> > are
> > now successfully processing the .jo contents, and no longer seeing
> > the bad
> > event spec error.
> >     
> > Tested locally, this appears to resolve the issue.
> >     
> >     agents/jvmti/libjvmti_oprofile.c:
> >      - update strncpy call to avoid gcc warning on strncpy
> > parameters.
> >     opjitconv/opjitconv.c:
> >      - update logic around calculation of elf_file_size, and rework
> > snprintf
> >      calls so we properly truncate the input string.
> >     
> >      Signed-off-by: Will Schmidt  <will_schmidt@vnet.ibm.com>
> > 
> > ---
> > 
> > 
> > diff --git a/agents/jvmti/libjvmti_oprofile.c
> > b/agents/jvmti/libjvmti_oprofile.c
> > index 40f9979..b518eb1 100644
> > --- a/agents/jvmti/libjvmti_oprofile.c
> > +++ b/agents/jvmti/libjvmti_oprofile.c
> > @@ -174,11 +174,11 @@ static void JNICALL
> > cb_compiled_method_load(jvmtiEnv * jvmti,
> >  
> >  	{
> >  	int cnt = strlen(method_name) + strlen(class_signature) +
> >  		strlen(method_signature) + 2;
> >  	char buf[cnt];
> > -	strncpy(buf, class_signature, cnt - 1);
> > +	strncpy(buf, class_signature, sizeof(buf) - 1);
> >  	strncat(buf, method_name, cnt - strlen(buf) - 1);
> >  	strncat(buf, method_signature, cnt - strlen(buf) - 1);
> >  	if (op_write_native_code(agent_hdl, buf,
> >  				 (uint64_t)(uintptr_t) code_addr,
> >  				 code_addr, code_size)) {
> > diff --git a/opjitconv/opjitconv.c b/opjitconv/opjitconv.c
> > index c55d8b1..5b46142 100644
> > --- a/opjitconv/opjitconv.c
> > +++ b/opjitconv/opjitconv.c
> > @@ -311,10 +311,11 @@ static int process_jit_dumpfile(char const *
> > dmp_pathname,
> >  	int jofd;
> >  	struct stat file_stat;
> >  	time_t dumpfile_modtime;
> >  	struct op_jitdump_info dmp_info;
> >  	char * elf_file = NULL;
> > +	char * tempstring = NULL;
> >  	char * proc_id = NULL;
> >  	char const * anon_dir;
> >  	char const * dumpfilename = rindex(dmp_pathname, '/');
> >  	/* temporary copy of dump file created for conversion step */
> >  	char * tmp_dumpfile;
> > @@ -388,15 +389,16 @@ chk_proc_id:
> >  			rc = OP_JIT_CONV_FAIL;
> >  			goto free_res2;
> >  		}
> >  		result_dir_length = ++anon_path_seg - anon_dir;
> >  		/* create final ELF file name */
> > -		elf_file_size = result_dir_length
> > +		elf_file_size = result_dir_length + strlen("/")
> >  			+ strlen(proc_id) + strlen(".jo") + 1;
> >  		elf_file = xmalloc(elf_file_size);
> > -		snprintf(elf_file, elf_file_size, "%s%s.jo",
> > -			 anon_dir, proc_id);
> > +		tempstring = xmalloc(elf_file_size);
> > +		snprintf(tempstring, result_dir_length, "%s",anon_dir);
> > +		snprintf(elf_file, elf_file_size,"%s/%s.jo",tempstring,proc_id);
> 
> Why not directly use anon_dir in the snprintf above rather than
> having another variable tempstring, allocating space for it, and
> doing a snprintf on tempstring then immediately using the result of
> for snprintf into elf_file?  Looks like result_dir_length might need
> to be adjected for this change.

I think I had coded that up at first.  Don't immediately recall if I
got a compiler warning, or just the spider sense awareness, but per a
double-check of the manpage, tesults are undefined if we were to have
anon_dir as both source and destination on the snprintf.
None of the existing strings seemed like good choices for re-use, so I
went with a new one.
Tempstring could probably be better named something like
full_path_to_elf_object .   variable naming isn't my strength. :-)
I'm not strongly tied to this if there is another approach you have in
mind. 

Thanks
-Will (Schmidt)




> 
> -Will Cohen
> 
> >  		/* create temporary ELF file name */
> >  		tmp_elffile_size = strlen(tmp_conv_dir) + 1
> >  			+ strlen(proc_id) + strlen(".jo") + 1;
> >  		tmp_elffile = xmalloc(tmp_elffile_size);
> >  		snprintf(tmp_elffile, tmp_elffile_size, "%s/%s.jo",
> > 
> > 
> > 
> > _______________________________________________
> > oprofile-list mailing list
> > oprofile-list@lists.sourceforge.net
> > https://lists.sourceforge.net/lists/listinfo/oprofile-list
> > 
> 
> 



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
