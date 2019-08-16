Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 739E5908E0
	for <lists+oprofile-list@lfdr.de>; Fri, 16 Aug 2019 21:45:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1hyi9z-0005y7-Tr; Fri, 16 Aug 2019 19:45:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <will_schmidt@vnet.ibm.com>) id 1hyi9y-0005xz-Kr
 for oprofile-list@lists.sourceforge.net; Fri, 16 Aug 2019 19:45:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Mime-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WEScalEgXQznZd6ymvz7iYgq3ehpVV30+ga0hZ6pL/4=; b=NLVP3c9qeNhB676nekSX9kjK5Y
 qNCKY2ndDsiQFsZYqdW7ApgeKxIOmcJqbwOv7o549iUpq3NV8Px455zL+u+i4aiflkQ3VpsJg/CRi
 P+DYI88m67FUN8C6jsh0kzrM7MCdLgtBsc1hA48Jp0+FbQtJkFr87UMgWof/831YlL9M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Mime-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WEScalEgXQznZd6ymvz7iYgq3ehpVV30+ga0hZ6pL/4=; b=fp4f8iHg/ha5tkiXlM4pA7oOC7
 dDX8IcCDma+blhCc0HStTHf+D8EG+Tsx4FxDu0FqQXkePdHa8rfyWe5W4roekySzSkQj47hhD7PUF
 XOH8F+wqJPyNtuhbvDYmcKLGxovUbouCuYgCHm9hvSLMYxmTQm51vEWOlF6VkLBHAZpM=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hyi9W-006BY4-1u
 for oprofile-list@lists.sourceforge.net; Fri, 16 Aug 2019 19:45:08 +0000
Received: from pps.filterd (m0098396.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7GJg7fk057608
 for <oprofile-list@lists.sourceforge.net>; Fri, 16 Aug 2019 15:44:40 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2ue1r4afny-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <oprofile-list@lists.sourceforge.net>; Fri, 16 Aug 2019 15:44:40 -0400
Received: from m0098396.ppops.net (m0098396.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id x7GJgKLI058585
 for <oprofile-list@lists.sourceforge.net>; Fri, 16 Aug 2019 15:44:39 -0400
Received: from ppma01dal.us.ibm.com (83.d6.3fa9.ip4.static.sl-reverse.com
 [169.63.214.131])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2ue1r4afne-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 16 Aug 2019 15:44:39 -0400
Received: from pps.filterd (ppma01dal.us.ibm.com [127.0.0.1])
 by ppma01dal.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id x7GJZJKs013020;
 Fri, 16 Aug 2019 19:44:38 GMT
Received: from b01cxnp22034.gho.pok.ibm.com (b01cxnp22034.gho.pok.ibm.com
 [9.57.198.24]) by ppma01dal.us.ibm.com with ESMTP id 2ucr3qdyvy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 16 Aug 2019 19:44:38 +0000
Received: from b01ledav005.gho.pok.ibm.com (b01ledav005.gho.pok.ibm.com
 [9.57.199.110])
 by b01cxnp22034.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x7GJib2o21496152
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 16 Aug 2019 19:44:38 GMT
Received: from b01ledav005.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id DAD58AE064;
 Fri, 16 Aug 2019 19:44:37 +0000 (GMT)
Received: from b01ledav005.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 9945FAE05F;
 Fri, 16 Aug 2019 19:44:37 +0000 (GMT)
Received: from brimstone.rchland.ibm.com (unknown [9.10.86.107])
 by b01ledav005.gho.pok.ibm.com (Postfix) with ESMTP;
 Fri, 16 Aug 2019 19:44:37 +0000 (GMT)
Message-ID: <93485e6c3f36dfbbaef6c262098ca44d54c9969e.camel@vnet.ibm.com>
Subject: Re: [PATCH] Proposed fix for oprofile JIT bad event spec error
From: will schmidt <will_schmidt@vnet.ibm.com>
To: William Cohen <wcohen@redhat.com>, oprofile-list@lists.sourceforge.net
Date: Fri, 16 Aug 2019 14:44:37 -0500
In-Reply-To: <894a7f50-31a8-4d81-5db6-3dce98228c54@redhat.com>
References: <e76daaf713130240ccc6eac0c2f24455c52a1608.camel@vnet.ibm.com>
 <e8afcf76-61e2-ff07-1c86-c2d7443c4886@redhat.com>
 <9e9eb55a19b513e8e38b46c1c38c8c59150d380e.camel@vnet.ibm.com>
 <894a7f50-31a8-4d81-5db6-3dce98228c54@redhat.com>
X-Mailer: Evolution 3.28.5 (3.28.5-2.el7) 
Mime-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-16_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908160200
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: s.jo]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1hyi9W-006BY4-1u
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

On Wed, 2019-08-14 at 14:07 -0400, William Cohen wrote:
> On 8/13/19 5:30 PM, will schmidt wrote:
> > On Tue, 2019-08-13 at 16:36 -0400, William Cohen wrote:
> > > On 7/26/19 4:38 PM, will schmidt wrote:
> > > > Hi Oprofile-devs,
> > > > Attached is a fix for a problem we have seen recently when
> > > > trying to profile against java/JIT workloads.
> > > 
> > > Hi,
> > > 
> > > Sorry for the delay reviewing the patch.  I do have a question
> > > about
> > > the code below.
> > > 
> > > 
> > > >     
> > > > The error floated to the user at opreport time is:
> > > >     
> > > >   opreport error: parse_event_spec(): bad event specification:
> > > > 165624.0x
> > > >     
> > > > Where the 165624 value will match the PIDs of the processes
> > > > being
> > > > profiled.
> > > >     
> > > > This ends up being an issue with how we are building the string
> > > > for
> > > > the file
> > > > that contains the ELF blob for the java/JIT code
> > > > (i.e.  12345.jo).  We were
> > > > not truncating our 'path' string such that when we strncpy'd it
> > > > into our
> > > > path-and-file variable, we were getting part of an address
> > > > range
> > > > (12345.0x)
> > > > instead of the desired .jo suffix.
> > > >     
> > > > The code has been updated to correct that.  Sniff testing shows
> > > > we
> > > > are
> > > > now successfully processing the .jo contents, and no longer
> > > > seeing
> > > > the bad
> > > > event spec error.
> > > >     
> > > > Tested locally, this appears to resolve the issue.
> > > >     
> > > >     agents/jvmti/libjvmti_oprofile.c:
> > > >      - update strncpy call to avoid gcc warning on strncpy
> > > > parameters.
> > > >     opjitconv/opjitconv.c:
> > > >      - update logic around calculation of elf_file_size, and
> > > > rework
> > > > snprintf
> > > >      calls so we properly truncate the input string.
> > > >     
> > > >      Signed-off-by: Will Schmidt  <will_schmidt@vnet.ibm.com>
> > > > 
> > > > ---
> > > > 
> > > > 
> > > > diff --git a/agents/jvmti/libjvmti_oprofile.c
> > > > b/agents/jvmti/libjvmti_oprofile.c
> > > > index 40f9979..b518eb1 100644
> > > > --- a/agents/jvmti/libjvmti_oprofile.c
> > > > +++ b/agents/jvmti/libjvmti_oprofile.c
> > > > @@ -174,11 +174,11 @@ static void JNICALL
> > > > cb_compiled_method_load(jvmtiEnv * jvmti,
> > > >  
> > > >  	{
> > > >  	int cnt = strlen(method_name) + strlen(class_signature)
> > > > +
> > > >  		strlen(method_signature) + 2;
> > > >  	char buf[cnt];
> > > > -	strncpy(buf, class_signature, cnt - 1);
> > > > +	strncpy(buf, class_signature, sizeof(buf) - 1);
> > > >  	strncat(buf, method_name, cnt - strlen(buf) - 1);
> > > >  	strncat(buf, method_signature, cnt - strlen(buf) - 1);
> > > >  	if (op_write_native_code(agent_hdl, buf,
> > > >  				 (uint64_t)(uintptr_t)
> > > > code_addr,
> > > >  				 code_addr, code_size)) {
> > > > diff --git a/opjitconv/opjitconv.c b/opjitconv/opjitconv.c
> > > > index c55d8b1..5b46142 100644
> > > > --- a/opjitconv/opjitconv.c
> > > > +++ b/opjitconv/opjitconv.c
> > > > @@ -311,10 +311,11 @@ static int process_jit_dumpfile(char
> > > > const *
> > > > dmp_pathname,
> > > >  	int jofd;
> > > >  	struct stat file_stat;
> > > >  	time_t dumpfile_modtime;
> > > >  	struct op_jitdump_info dmp_info;
> > > >  	char * elf_file = NULL;
> > > > +	char * tempstring = NULL;
> > > >  	char * proc_id = NULL;
> > > >  	char const * anon_dir;
> > > >  	char const * dumpfilename = rindex(dmp_pathname, '/');
> > > >  	/* temporary copy of dump file created for conversion
> > > > step */
> > > >  	char * tmp_dumpfile;
> > > > @@ -388,15 +389,16 @@ chk_proc_id:
> > > >  			rc = OP_JIT_CONV_FAIL;
> > > >  			goto free_res2;
> > > >  		}
> > > >  		result_dir_length = ++anon_path_seg - anon_dir;
> > > >  		/* create final ELF file name */
> > > > -		elf_file_size = result_dir_length
> > > > +		elf_file_size = result_dir_length + strlen("/")
> > > >  			+ strlen(proc_id) + strlen(".jo") + 1;
> > > >  		elf_file = xmalloc(elf_file_size);
> > > > -		snprintf(elf_file, elf_file_size, "%s%s.jo",
> > > > -			 anon_dir, proc_id);
> > > > +		tempstring = xmalloc(elf_file_size);
> > > > +		snprintf(tempstring, result_dir_length,
> > > > "%s",anon_dir);
> > > > +		snprintf(elf_file,
> > > > elf_file_size,"%s/%s.jo",tempstring,proc_id);
> > > 
> > > Why not directly use anon_dir in the snprintf above rather than
> > > having another variable tempstring, allocating space for it, and
> > > doing a snprintf on tempstring then immediately using the result
> > > of
> > > for snprintf into elf_file?  Looks like result_dir_length might
> > > need
> > > to be adjected for this change.
> > 
> > I think I had coded that up at first.  Don't immediately recall if
> > I
> > got a compiler warning, or just the spider sense awareness, but per
> > a
> > double-check of the manpage, tesults are undefined if we were to
> > have
> > anon_dir as both source and destination on the snprintf.
> > None of the existing strings seemed like good choices for re-use,
> > so I
> > went with a new one.
> > Tempstring could probably be better named something like
> > full_path_to_elf_object .   variable naming isn't my strength. :-)
> > I'm not strongly tied to this if there is another approach you have
> > in
> > mind. 
> 
> Hi,
> 
> String handling is not the strong suite of C/C++.  Having to parse
> through the string handling is a pain as one needs to be careful
> about the index values to the char arrays.  I am comfortable with the
> patch now and have merged it in.  Thanks.  Is there a testcase that
> could be put into oprofile-testsuite?

Thanks for the review and the commit.   :-)

I'll investigate adding a test case to the testsuite.  (in the queue,
won't be right away). 

Thanks,
-Will (Schmidt)


> 
> -Will Cohen
> > 
> > Thanks
> > -Will (Schmidt)
> > 
> > 
> > 
> > 
> > > 
> > > -Will Cohen
> > > 
> > > >  		/* create temporary ELF file name */
> > > >  		tmp_elffile_size = strlen(tmp_conv_dir) + 1
> > > >  			+ strlen(proc_id) + strlen(".jo") + 1;
> > > >  		tmp_elffile = xmalloc(tmp_elffile_size);
> > > >  		snprintf(tmp_elffile, tmp_elffile_size,
> > > > "%s/%s.jo",
> > > > 
> > > > 
> > > > 
> > > > _______________________________________________
> > > > oprofile-list mailing list
> > > > oprofile-list@lists.sourceforge.net
> > > > https://lists.sourceforge.net/lists/listinfo/oprofile-list
> > > > 
> > > 
> > > 
> 
> 



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
