Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CB415C9AD
	for <lists+oprofile-list@lfdr.de>; Thu, 13 Feb 2020 18:44:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1j2IXl-0004Vv-9V; Thu, 13 Feb 2020 17:44:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Kirill.Brilliantov@rt.ru>) id 1j2IXj-0004VM-Bg
 for oprofile-list@lists.sourceforge.net; Thu, 13 Feb 2020 17:44:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q0RSRwmQaiujOe5TjUnjFbTmpxWeRNR4Mp2ekVqfSxQ=; b=Y+tHDa3QkN1t9EF/zJ03GtdrfU
 yym8KTOuZzKZkwJvJNt+NrAFs7W0Hp935IqpzhjAyQAkYmLdpIdmiYnyXuC2vFUoxiAmk4fbF/dbs
 qR9JErTveLsToJFUeZ6j90nHN5/xmtwnocPFGEfit+6DQs/X38iunBIf2RkB5m8jPhlY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=q0RSRwmQaiujOe5TjUnjFbTmpxWeRNR4Mp2ekVqfSxQ=; b=Lis3aPpQ3V9vgto+NymJ5bHCJT
 0wwI0ieJ2wF11RY2OK01A1R2qaKUM+a+TPng8bcmf862uzwBmGiGBfCzUKOPX+ld3nAwSW9v4CL/T
 rY2LmOty1yu6oQz7mN1UKCQBYRr7LofcEJBVOB+CFYwH8BK2W1BEPwN29BBgRR5yTQv8=;
Received: from mail12.rt.ru ([87.226.162.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j2IXf-00BffM-N5
 for oprofile-list@lists.sourceforge.net; Thu, 13 Feb 2020 17:44:51 +0000
IronPort-SDR: 8u8UP8sY+skjmYN9Qc7X0Ls2p2GotGzg79nEb8kqE6Fm0KvsGMtnP2Hb+gvWA419NZPXU2+5Re
 nsA7ON3tIQBw==
X-IronPort-AV: E=Sophos;i="5.70,437,1574110800"; d="scan'208";a="26425077"
Date: Thu, 13 Feb 2020 20:44:31 +0300
From: Brilliantov Kirill Vladimirovich <kirill.brilliantov@rt.ru>
To: <oprofile-list@lists.sourceforge.net>
Subject: Re: libbfd version
Message-ID: <20200213174431.wkpquvno6pgaeoot@lenovo.restrim.rt.ru>
References: <20200212173815.3qkhf2dqmnt2mbos@lenovo.restrim.rt.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212173815.3qkhf2dqmnt2mbos@lenovo.restrim.rt.ru>
X-Originating-IP: [10.0.16.173]
X-ClientProxiedBy: sgd02ex005.GD.RT.RU (10.0.16.221) To sgd02ex005.GD.RT.RU
 (10.0.16.221)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [87.226.162.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [87.226.162.67 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1j2IXf-00BffM-N5
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On 2020-02-12 20:38:15, Brilliantov Kirill Vladimirovich wrote:
> Hello!
> I try cross-compile oprofile-1.0.0, unfortunately build failed with error
> ```
> ...........
> Making all in .
> bfd_support.cpp: In function 'bool {anonymous}::get_build_id(bfd*, unsigned char*)':
> bfd_support.cpp:142:63: error: cannot convert 'bfd*' to 'const asection* {aka const bfd_section*}' for argument '1' to 'bfd_size_type bfd_section_size(const asection*)'
>   bfd_size_type buildid_sect_size = bfd_section_size(ibfd, sect);
>                                                                ^
> bfd_support.cpp: In function 'bool {anonymous}::get_debug_link_info(bfd*, std::string&, long unsigned int&)':
> bfd_support.cpp:193:60: error: cannot convert 'bfd*' to 'const asection* {aka const bfd_section*}' for argument '1' to 'bfd_size_type bfd_section_size(const asection*)'
>   bfd_size_type debuglink_size = bfd_section_size(ibfd, sect);
>                                                             ^
> bfd_support.cpp: In function 'void {anonymous}::fixup_linenr(bfd*, asection*, asymbol**, const string&, bfd_vma, const char**, unsigned int*)':
> bfd_support.cpp:351:54: error: cannot convert 'bfd*' to 'const asection* {aka const bfd_section*}' for argument '1' to 'bfd_size_type bfd_section_size(const asection*)'
>   size_t section_size = bfd_section_size(abfd, section);
>                                                       ^
> bfd_support.cpp: In function 'const linenr_info find_nearest_line(const bfd_info&, const op_bfd_symbol&, bfd_vma, bool)':
> bfd_support.cpp:824:42: error: 'bfd_get_section_flags' was not declared in this scope
>   if ((bfd_get_section_flags(abfd, section) & SEC_ALLOC) == 0)
>                                           ^
> bfd_support.cpp:827:42: error: cannot convert 'bfd*' to 'const asection* {aka const bfd_section*}' for argument '1' to 'bfd_size_type bfd_section_size(const asection*)'
>   if (pc >= bfd_section_size(abfd, section))
>                                           ^
> Makefile:383: recipe for target 'bfd_support.o' failed
> ...........
> ```
> I check libbfd API and found what it different, file bfd.h
> static inline bfd_size_type bfd_section_size (const asection *sec)
> I build libbfd.a and libiberty.a from binutils-2.34, which version of the
> binutils should I use?
> Thank you and excuse my bad english.
> 

Ok, problem solved after rollback to binutils-2.30.
At this moment I also can't build oprofile for mipsel with uclibs
```
operf.cpp: In function 'void convert_sample_data()':
operf.cpp:900:84: error: 'nftw' was not declared in this scope
   if (nftw(previous_sampledir.c_str(), __delete_old_previous_sample_data, 32, flags) !=0 &&
```
But this is another issue ;)


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
