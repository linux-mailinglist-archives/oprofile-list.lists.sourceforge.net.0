Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B6CFD36
	for <lists+oprofile-list@lfdr.de>; Tue, 30 Apr 2019 17:51:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1hLV2V-0006Aw-W1; Tue, 30 Apr 2019 15:51:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wcohen@redhat.com>) id 1hLV2U-0006Ap-JJ
 for oprofile-list@lists.sourceforge.net; Tue, 30 Apr 2019 15:51:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DkR+SLO2oX5GmkDJct71w2+XvCyHiTbec1xRJwo8Gvo=; b=iUSCb5F1aumKyhAWMaSZkXKlYF
 fJBg6UzNmU2QK/lC9pydGcZT3BjbJyX6sXzWYKOlixbubJTjzCWQOQ4NccPC4MEwrwexKtz1Wg5SS
 DchZiLL3c9pQUIXACJ7GoOsDmf4XPShw8akpK1Jk/1V86MFTXWpkhWPgzP4ls7ibwMIw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DkR+SLO2oX5GmkDJct71w2+XvCyHiTbec1xRJwo8Gvo=; b=eJMcLlSVejtXCRDH/ZeRPr7jk7
 MqPLL05n+LiBvUYn4ToN28x4jvEJqv1nJ5tEcza5xuf6zPN1v5BTZ/9MstzhkfTEF8zDA/g4IEj4f
 6QJ9QYJ5uehMdOxM3LmMZ1keSqwb+w8xhBxngBkGRXdmHxnOWCcY8piRKoKBybBtImPs=;
Received: from mx1.redhat.com ([209.132.183.28])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hLV2S-001DQ6-M6
 for oprofile-list@lists.sourceforge.net; Tue, 30 Apr 2019 15:51:26 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 567223084249;
 Tue, 30 Apr 2019 15:51:18 +0000 (UTC)
Received: from [10.13.129.212] (dhcp129-212.rdu.redhat.com [10.13.129.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0F30510013D9;
 Tue, 30 Apr 2019 15:51:18 +0000 (UTC)
Subject: Re: oprofile - fix compiler warnings seen with newer gcc
To: will schmidt <will_schmidt@vnet.ibm.com>, oprofile-list@lists.sf.net
References: <5d08f0b431f86c54317f7f3677d38d65ddbfb3b7.camel@vnet.ibm.com>
From: William Cohen <wcohen@redhat.com>
Message-ID: <da445fbd-eb82-82a5-570a-1f5177df7903@redhat.com>
Date: Tue, 30 Apr 2019 11:51:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <5d08f0b431f86c54317f7f3677d38d65ddbfb3b7.camel@vnet.ibm.com>
Content-Language: en-MW
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Tue, 30 Apr 2019 15:51:18 +0000 (UTC)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1hLV2S-001DQ6-M6
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

On 4/29/19 6:18 PM, will schmidt wrote:
> Hi, 
> 
> This is intended to fix some compiler warnings noted when building oprofile with gcc 9.0.1
>     
>      * libutil++/tests/utility_tests.cpp:  Remove deprecated dynamic exception
>        specifications. (gcc -Werror=deprecated).
>      * libpe_utils/op_pe_utils.cpp: strncpy already copies the size of the
>        string, limit it to the size of the destination.
>      * opjitconf/opjitconv.c:  convert sprintf to snprintf and check the return
>        length from the call to ensure we do not overrun our buffer.
>        (gcc -Werror=format-overflow)
> 
> ---
> Thanks
> -Will

Hi Will,

The changes look fine.  There are committed to the mainline oprofile git repository.  Thanks,  -Will Cohen

> 
> 
> diff --git a/libpe_utils/op_pe_utils.cpp b/libpe_utils/op_pe_utils.cpp
> index 2cae784..d545cee 100644
> --- a/libpe_utils/op_pe_utils.cpp
> +++ b/libpe_utils/op_pe_utils.cpp
> @@ -652,11 +652,11 @@ static bool _get_codes_for_match(unsigned int pfm_idx, const char name[],
>  			strcpy(evt_name ,"PM_CYC") ;
>  		} else if (strstr(event.name, "_GRP")) {
>  			string str = event.name;
>  			strncpy(evt_name, event.name, str.rfind("_GRP"));
>  		} else {
> -			strncpy(evt_name, event.name, strlen(event.name));
> +			strncpy(evt_name, event.name, strlen(evt_name));
>  		}
>  
>  		/* Events where the "_EDGE_COUNT" suffix has been appended to a
>  		 * real native event name are pseudo events (events that have
>  		 * not been formally defined in processor documentation), where
> @@ -732,11 +732,11 @@ static bool _op_get_event_codes(vector<operf_event_t> * evt_vec)
>  			strcpy(evt_name ,"PM_CYC") ;
>  		} else if (strstr(event.name, "_GRP")) {
>  			string str = event.name;
>  			strncpy(evt_name, event.name, str.rfind("_GRP"));
>  		} else {
> -			strncpy(evt_name, event.name, strlen(event.name));
> +			strncpy(evt_name, event.name, sizeof(evt_name));
>  		}
>  
>  		/* Events where the "_EDGE_COUNT" suffix has been appended to a
>  		 * real native event name are pseudo events (events that have
>  		 * not been formally defined in processor documentation), where
> diff --git a/libutil++/tests/utility_tests.cpp b/libutil++/tests/utility_tests.cpp
> index 3955fd0..2f8286f 100644
> --- a/libutil++/tests/utility_tests.cpp
> +++ b/libutil++/tests/utility_tests.cpp
> @@ -19,17 +19,17 @@
>  using namespace std;
>  
>  static int nb_new;
>  static int nb_new_array;
>  
> -void* operator new(size_t size) throw(bad_alloc)
> +void* operator new(size_t size)
>  {
>  	nb_new++;
>  	return malloc(size);
>  }
>  
> -void* operator new[](size_t size) throw(bad_alloc)
> +void* operator new[](size_t size)
>  {
>  	nb_new_array++;
>  	return malloc(size);
>  }
>  
> diff --git a/opjitconv/opjitconv.c b/opjitconv/opjitconv.c
> index 207054a..c55d8b1 100644
> --- a/opjitconv/opjitconv.c
> +++ b/opjitconv/opjitconv.c
> @@ -720,12 +720,12 @@ static int op_process_jit_dumpfiles(char const * session_dir,
>  	
>  rm_tmp:
>  	/* Delete temporary working directory with all its files
>  	 * (i.e. dump and ELF file).
>  	 */
> -	sprintf(sys_cmd_buffer, "/bin/rm -rf '%s'", tmp_conv_dir);
> -	if (system(sys_cmd_buffer) != 0) {
> +	retlen=snprintf(sys_cmd_buffer,sizeof(sys_cmd_buffer), "/bin/rm -rf '%s'", tmp_conv_dir);
> +	if ((retlen <=0 ) || (system(sys_cmd_buffer) != 0)) {
>  		printf("opjitconv: Removing temporary working directory failed.\n");
>  		rc = OP_JIT_CONV_TMPDIR_NOT_REMOVED;
>  	}
>  	
>  out:
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
