Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0C28DCBC
	for <lists+oprofile-list@lfdr.de>; Wed, 14 Aug 2019 20:07:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1hxxgJ-0005Oe-GT; Wed, 14 Aug 2019 18:07:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wcohen@redhat.com>) id 1hxxgI-0005OT-JF
 for oprofile-list@lists.sourceforge.net; Wed, 14 Aug 2019 18:07:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WaCpg1Cnf+63ggpmS7vLxbLOhOZvGEVwctygDJQONGs=; b=V2J4szHqK3BWxFoIHNliYulG40
 fzllpBqVJwTU7VLHVLC36/Dt8qRrZUBhfucsGR4UI7uYVr1K42d+DhGYCN8b7qdNfub/a7U2e67C2
 qxsozCzaVRYVwN3u5HsrApcGkAkDMwJgYTj4PP03tzSVQdg+tmELWSRQtqIf8WrUd3I0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WaCpg1Cnf+63ggpmS7vLxbLOhOZvGEVwctygDJQONGs=; b=M22D73RnG7CX0d8osue8X4Eb83
 w3ofG+Gqxwkll3JPokWCUcht0riAL6KSYF1W+YiQxzkvPhVkFMkDv56ffJy59CAJDOxzeJCGAEMuO
 KyqonyinppCmwQ0C+ZeWgL8WH6ffygpPNIsNcpLzMuRlVSKmWNL4cqoIqe+tbF0H5tpA=;
Received: from mx1.redhat.com ([209.132.183.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hxxgG-006BDm-An
 for oprofile-list@lists.sourceforge.net; Wed, 14 Aug 2019 18:07:30 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 683D230BCB8C;
 Wed, 14 Aug 2019 18:07:22 +0000 (UTC)
Received: from [10.13.129.96] (dhcp129-96.rdu.redhat.com [10.13.129.96])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 08A6683078;
 Wed, 14 Aug 2019 18:07:21 +0000 (UTC)
Subject: Re: [PATCH] Proposed fix for oprofile JIT bad event spec error
To: will schmidt <will_schmidt@vnet.ibm.com>,
 oprofile-list@lists.sourceforge.net
References: <e76daaf713130240ccc6eac0c2f24455c52a1608.camel@vnet.ibm.com>
 <e8afcf76-61e2-ff07-1c86-c2d7443c4886@redhat.com>
 <9e9eb55a19b513e8e38b46c1c38c8c59150d380e.camel@vnet.ibm.com>
From: William Cohen <wcohen@redhat.com>
Message-ID: <894a7f50-31a8-4d81-5db6-3dce98228c54@redhat.com>
Date: Wed, 14 Aug 2019 14:07:21 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <9e9eb55a19b513e8e38b46c1c38c8c59150d380e.camel@vnet.ibm.com>
Content-Language: en-MW
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Wed, 14 Aug 2019 18:07:22 +0000 (UTC)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: s.jo]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1hxxgG-006BDm-An
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

On 8/13/19 5:30 PM, will schmidt wrote:
> On Tue, 2019-08-13 at 16:36 -0400, William Cohen wrote:
>> On 7/26/19 4:38 PM, will schmidt wrote:
>>> Hi Oprofile-devs,
>>> Attached is a fix for a problem we have seen recently when
>>> trying to profile against java/JIT workloads.
>>
>> Hi,
>>
>> Sorry for the delay reviewing the patch.  I do have a question about
>> the code below.
>>
>>
>>>     
>>> The error floated to the user at opreport time is:
>>>     
>>>   opreport error: parse_event_spec(): bad event specification:
>>> 165624.0x
>>>     
>>> Where the 165624 value will match the PIDs of the processes being
>>> profiled.
>>>     
>>> This ends up being an issue with how we are building the string for
>>> the file
>>> that contains the ELF blob for the java/JIT code
>>> (i.e.  12345.jo).  We were
>>> not truncating our 'path' string such that when we strncpy'd it
>>> into our
>>> path-and-file variable, we were getting part of an address range
>>> (12345.0x)
>>> instead of the desired .jo suffix.
>>>     
>>> The code has been updated to correct that.  Sniff testing shows we
>>> are
>>> now successfully processing the .jo contents, and no longer seeing
>>> the bad
>>> event spec error.
>>>     
>>> Tested locally, this appears to resolve the issue.
>>>     
>>>     agents/jvmti/libjvmti_oprofile.c:
>>>      - update strncpy call to avoid gcc warning on strncpy
>>> parameters.
>>>     opjitconv/opjitconv.c:
>>>      - update logic around calculation of elf_file_size, and rework
>>> snprintf
>>>      calls so we properly truncate the input string.
>>>     
>>>      Signed-off-by: Will Schmidt  <will_schmidt@vnet.ibm.com>
>>>
>>> ---
>>>
>>>
>>> diff --git a/agents/jvmti/libjvmti_oprofile.c
>>> b/agents/jvmti/libjvmti_oprofile.c
>>> index 40f9979..b518eb1 100644
>>> --- a/agents/jvmti/libjvmti_oprofile.c
>>> +++ b/agents/jvmti/libjvmti_oprofile.c
>>> @@ -174,11 +174,11 @@ static void JNICALL
>>> cb_compiled_method_load(jvmtiEnv * jvmti,
>>>  
>>>  	{
>>>  	int cnt = strlen(method_name) + strlen(class_signature) +
>>>  		strlen(method_signature) + 2;
>>>  	char buf[cnt];
>>> -	strncpy(buf, class_signature, cnt - 1);
>>> +	strncpy(buf, class_signature, sizeof(buf) - 1);
>>>  	strncat(buf, method_name, cnt - strlen(buf) - 1);
>>>  	strncat(buf, method_signature, cnt - strlen(buf) - 1);
>>>  	if (op_write_native_code(agent_hdl, buf,
>>>  				 (uint64_t)(uintptr_t) code_addr,
>>>  				 code_addr, code_size)) {
>>> diff --git a/opjitconv/opjitconv.c b/opjitconv/opjitconv.c
>>> index c55d8b1..5b46142 100644
>>> --- a/opjitconv/opjitconv.c
>>> +++ b/opjitconv/opjitconv.c
>>> @@ -311,10 +311,11 @@ static int process_jit_dumpfile(char const *
>>> dmp_pathname,
>>>  	int jofd;
>>>  	struct stat file_stat;
>>>  	time_t dumpfile_modtime;
>>>  	struct op_jitdump_info dmp_info;
>>>  	char * elf_file = NULL;
>>> +	char * tempstring = NULL;
>>>  	char * proc_id = NULL;
>>>  	char const * anon_dir;
>>>  	char const * dumpfilename = rindex(dmp_pathname, '/');
>>>  	/* temporary copy of dump file created for conversion step */
>>>  	char * tmp_dumpfile;
>>> @@ -388,15 +389,16 @@ chk_proc_id:
>>>  			rc = OP_JIT_CONV_FAIL;
>>>  			goto free_res2;
>>>  		}
>>>  		result_dir_length = ++anon_path_seg - anon_dir;
>>>  		/* create final ELF file name */
>>> -		elf_file_size = result_dir_length
>>> +		elf_file_size = result_dir_length + strlen("/")
>>>  			+ strlen(proc_id) + strlen(".jo") + 1;
>>>  		elf_file = xmalloc(elf_file_size);
>>> -		snprintf(elf_file, elf_file_size, "%s%s.jo",
>>> -			 anon_dir, proc_id);
>>> +		tempstring = xmalloc(elf_file_size);
>>> +		snprintf(tempstring, result_dir_length, "%s",anon_dir);
>>> +		snprintf(elf_file, elf_file_size,"%s/%s.jo",tempstring,proc_id);
>>
>> Why not directly use anon_dir in the snprintf above rather than
>> having another variable tempstring, allocating space for it, and
>> doing a snprintf on tempstring then immediately using the result of
>> for snprintf into elf_file?  Looks like result_dir_length might need
>> to be adjected for this change.
> 
> I think I had coded that up at first.  Don't immediately recall if I
> got a compiler warning, or just the spider sense awareness, but per a
> double-check of the manpage, tesults are undefined if we were to have
> anon_dir as both source and destination on the snprintf.
> None of the existing strings seemed like good choices for re-use, so I
> went with a new one.
> Tempstring could probably be better named something like
> full_path_to_elf_object .   variable naming isn't my strength. :-)
> I'm not strongly tied to this if there is another approach you have in
> mind. 

Hi,

String handling is not the strong suite of C/C++.  Having to parse through the string handling is a pain as one needs to be careful about the index values to the char arrays.  I am comfortable with the patch now and have merged it in.  Thanks.  Is there a testcase that could be put into oprofile-testsuite?

-Will Cohen
> 
> Thanks
> -Will (Schmidt)
> 
> 
> 
> 
>>
>> -Will Cohen
>>
>>>  		/* create temporary ELF file name */
>>>  		tmp_elffile_size = strlen(tmp_conv_dir) + 1
>>>  			+ strlen(proc_id) + strlen(".jo") + 1;
>>>  		tmp_elffile = xmalloc(tmp_elffile_size);
>>>  		snprintf(tmp_elffile, tmp_elffile_size, "%s/%s.jo",
>>>
>>>
>>>
>>> _______________________________________________
>>> oprofile-list mailing list
>>> oprofile-list@lists.sourceforge.net
>>> https://lists.sourceforge.net/lists/listinfo/oprofile-list
>>>
>>
>>
> 



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
