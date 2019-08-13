Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4297D8C225
	for <lists+oprofile-list@lfdr.de>; Tue, 13 Aug 2019 22:36:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1hxdXJ-0004vB-VJ; Tue, 13 Aug 2019 20:36:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wcohen@redhat.com>) id 1hxdXI-0004ux-9a
 for oprofile-list@lists.sourceforge.net; Tue, 13 Aug 2019 20:36:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:Cc:From:References:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lCB3V4Y7n75ImPwnH58c4dRwB1+3L1Sl+H+7FoxVoAU=; b=IAuHSnXctqjcRrtYl8P4V9cbdb
 F6fIbGFIykLE9ibF0mRxOnWn0iTOxe8doLGOpZfBPMJC+ia27tG59ResDLqLqwtyVUA/quTx37KeF
 4QFc2ppKgQXJtYazVyXNSbPspKn4GeOMqx8UGjg1PjZS5EBYjy3Z2QHugGkJIkq/AFo4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:Cc:From:References:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lCB3V4Y7n75ImPwnH58c4dRwB1+3L1Sl+H+7FoxVoAU=; b=UQATtnRMtUDbhzs/863w80VaUs
 +/Q9Db0aTSgMVf3pSL9mtqZcMo8WsX6QZCq/fkvEMfr1HhHpg31+iJoAYrnCRo64LCwFZawsO6/3I
 rLgVWgUKkxUzzWVxXvxGnwrQ+eUidWuWkgWwnBukP6e1ZtM+LDSlhHcJVOyt2edj4g5o=;
Received: from mx1.redhat.com ([209.132.183.28])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hxdXG-003CvL-Hy
 for oprofile-list@lists.sourceforge.net; Tue, 13 Aug 2019 20:36:52 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 049CD30A5A4E;
 Tue, 13 Aug 2019 20:36:45 +0000 (UTC)
Received: from [10.13.129.96] (dhcp129-96.rdu.redhat.com [10.13.129.96])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 93BFE413A;
 Tue, 13 Aug 2019 20:36:44 +0000 (UTC)
Subject: Re: [PATCH] Proposed fix for oprofile JIT bad event spec error
To: oprofile-list@lists.sourceforge.net,
 Will Schmidt <will_schmidt@vnet.ibm.com>
References: <e76daaf713130240ccc6eac0c2f24455c52a1608.camel@vnet.ibm.com>
From: William Cohen <wcohen@redhat.com>
Message-ID: <e8afcf76-61e2-ff07-1c86-c2d7443c4886@redhat.com>
Date: Tue, 13 Aug 2019 16:36:44 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <e76daaf713130240ccc6eac0c2f24455c52a1608.camel@vnet.ibm.com>
Content-Language: en-MW
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Tue, 13 Aug 2019 20:36:45 +0000 (UTC)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: s.jo]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1hxdXG-003CvL-Hy
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

On 7/26/19 4:38 PM, will schmidt wrote:
> Hi Oprofile-devs,
> Attached is a fix for a problem we have seen recently when
> trying to profile against java/JIT workloads.

Hi,

Sorry for the delay reviewing the patch.  I do have a question about the code below.


>     
> The error floated to the user at opreport time is:
>     
>   opreport error: parse_event_spec(): bad event specification: 165624.0x
>     
> Where the 165624 value will match the PIDs of the processes being profiled.
>     
> This ends up being an issue with how we are building the string for the file
> that contains the ELF blob for the java/JIT code (i.e.  12345.jo).  We were
> not truncating our 'path' string such that when we strncpy'd it into our
> path-and-file variable, we were getting part of an address range (12345.0x)
> instead of the desired .jo suffix.
>     
> The code has been updated to correct that.  Sniff testing shows we are
> now successfully processing the .jo contents, and no longer seeing the bad
> event spec error.
>     
> Tested locally, this appears to resolve the issue.
>     
>     agents/jvmti/libjvmti_oprofile.c:
>      - update strncpy call to avoid gcc warning on strncpy parameters.
>     opjitconv/opjitconv.c:
>      - update logic around calculation of elf_file_size, and rework snprintf
>      calls so we properly truncate the input string.
>     
>      Signed-off-by: Will Schmidt  <will_schmidt@vnet.ibm.com>
> 
> ---
> 
> 
> diff --git a/agents/jvmti/libjvmti_oprofile.c b/agents/jvmti/libjvmti_oprofile.c
> index 40f9979..b518eb1 100644
> --- a/agents/jvmti/libjvmti_oprofile.c
> +++ b/agents/jvmti/libjvmti_oprofile.c
> @@ -174,11 +174,11 @@ static void JNICALL cb_compiled_method_load(jvmtiEnv * jvmti,
>  
>  	{
>  	int cnt = strlen(method_name) + strlen(class_signature) +
>  		strlen(method_signature) + 2;
>  	char buf[cnt];
> -	strncpy(buf, class_signature, cnt - 1);
> +	strncpy(buf, class_signature, sizeof(buf) - 1);
>  	strncat(buf, method_name, cnt - strlen(buf) - 1);
>  	strncat(buf, method_signature, cnt - strlen(buf) - 1);
>  	if (op_write_native_code(agent_hdl, buf,
>  				 (uint64_t)(uintptr_t) code_addr,
>  				 code_addr, code_size)) {
> diff --git a/opjitconv/opjitconv.c b/opjitconv/opjitconv.c
> index c55d8b1..5b46142 100644
> --- a/opjitconv/opjitconv.c
> +++ b/opjitconv/opjitconv.c
> @@ -311,10 +311,11 @@ static int process_jit_dumpfile(char const * dmp_pathname,
>  	int jofd;
>  	struct stat file_stat;
>  	time_t dumpfile_modtime;
>  	struct op_jitdump_info dmp_info;
>  	char * elf_file = NULL;
> +	char * tempstring = NULL;
>  	char * proc_id = NULL;
>  	char const * anon_dir;
>  	char const * dumpfilename = rindex(dmp_pathname, '/');
>  	/* temporary copy of dump file created for conversion step */
>  	char * tmp_dumpfile;
> @@ -388,15 +389,16 @@ chk_proc_id:
>  			rc = OP_JIT_CONV_FAIL;
>  			goto free_res2;
>  		}
>  		result_dir_length = ++anon_path_seg - anon_dir;
>  		/* create final ELF file name */
> -		elf_file_size = result_dir_length
> +		elf_file_size = result_dir_length + strlen("/")
>  			+ strlen(proc_id) + strlen(".jo") + 1;
>  		elf_file = xmalloc(elf_file_size);
> -		snprintf(elf_file, elf_file_size, "%s%s.jo",
> -			 anon_dir, proc_id);
> +		tempstring = xmalloc(elf_file_size);
> +		snprintf(tempstring, result_dir_length, "%s",anon_dir);> +		snprintf(elf_file, elf_file_size, "%s/%s.jo",tempstring,proc_id);

Why not directly use anon_dir in the snprintf above rather than having another variable tempstring, allocating space for it, and doing a snprintf on tempstring then immediately using the result of for snprintf into elf_file?  Looks like result_dir_length might need to be adjected for this change.

-Will Cohen

>  		/* create temporary ELF file name */
>  		tmp_elffile_size = strlen(tmp_conv_dir) + 1
>  			+ strlen(proc_id) + strlen(".jo") + 1;
>  		tmp_elffile = xmalloc(tmp_elffile_size);
>  		snprintf(tmp_elffile, tmp_elffile_size, "%s/%s.jo",
> 
> 
> 
> _______________________________________________
> oprofile-list mailing list
> oprofile-list@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/oprofile-list
> 



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
