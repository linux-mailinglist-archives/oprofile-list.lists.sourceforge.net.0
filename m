Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E84A615AF22
	for <lists+oprofile-list@lfdr.de>; Wed, 12 Feb 2020 18:54:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1j1wDG-0004gk-UL; Wed, 12 Feb 2020 17:54:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Kirill.Brilliantov@rt.ru>) id 1j1wDF-0004gW-Jd
 for oprofile-list@lists.sourceforge.net; Wed, 12 Feb 2020 17:54:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3N2/mldjkWc+N1yk7pxUO7AXM+yjN2ITXf4vtq/OVvk=; b=CUgfcGC1PIxM704+dg2LU8kO1+
 hFjbhal066uQSg8ZesLJZ/ISKw1bYtzXRcAS+q9JhR9AaY2qeRXVoC1LmrhSbmfi1G6a2Fz00xQBn
 Gjmr5goH7tA+/VHb4+PF5mLaTEAZ2fTV+ExQIjk+Vh+shWQzMs2RMGTsfwJ0tSKhsFhc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3N2/mldjkWc+N1yk7pxUO7AXM+yjN2ITXf4vtq/OVvk=; b=V
 1vu1qGft5JuyV6QLe36M2IZElff9NXJi8ceaCvIwYLcHOi+uM3uV+ImA0bJ2tpGXopmeDLqCVGspW
 ZH9oFhROioCMO7mR6Azxmeba/FnZPa7uZiLk/2d67ZbDNBkylFJ0ahhytgPIAnVJaY3U9vSP+yPJZ
 MYBRYpvUz8/61yn4=;
Received: from mail12.rt.ru ([87.226.162.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j1wDC-009pDN-7p
 for oprofile-list@lists.sourceforge.net; Wed, 12 Feb 2020 17:54:13 +0000
IronPort-SDR: Hn1s4coHvSQUVx+Vv0Jlgp8+K8gL2E2zUKtjiyDREvxJIFmEQpuaXzb4pyB0xhHPtEy2HtKXoS
 VqBqLEy1oh4Q==
X-IronPort-AV: E=Sophos;i="5.70,433,1574110800"; d="scan'208";a="26251281"
Date: Wed, 12 Feb 2020 20:38:15 +0300
From: Brilliantov Kirill Vladimirovich <kirill.brilliantov@rt.ru>
To: <oprofile-list@lists.sourceforge.net>
Subject: libbfd version
Message-ID: <20200212173815.3qkhf2dqmnt2mbos@lenovo.restrim.rt.ru>
MIME-Version: 1.0
Content-Disposition: inline
X-Originating-IP: [10.0.16.173]
X-ClientProxiedBy: sgd02ex005.GD.RT.RU (10.0.16.221) To sgd02ex005.GD.RT.RU
 (10.0.16.221)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [87.226.162.67 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [87.226.162.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1j1wDC-009pDN-7p
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

Hello!
I try cross-compile oprofile-1.0.0, unfortunately build failed with error
```
...........
Making all in .
bfd_support.cpp: In function 'bool {anonymous}::get_build_id(bfd*, unsigned char*)':
bfd_support.cpp:142:63: error: cannot convert 'bfd*' to 'const asection* {aka const bfd_section*}' for argument '1' to 'bfd_size_type bfd_section_size(const asection*)'
  bfd_size_type buildid_sect_size = bfd_section_size(ibfd, sect);
                                                               ^
bfd_support.cpp: In function 'bool {anonymous}::get_debug_link_info(bfd*, std::string&, long unsigned int&)':
bfd_support.cpp:193:60: error: cannot convert 'bfd*' to 'const asection* {aka const bfd_section*}' for argument '1' to 'bfd_size_type bfd_section_size(const asection*)'
  bfd_size_type debuglink_size = bfd_section_size(ibfd, sect);
                                                            ^
bfd_support.cpp: In function 'void {anonymous}::fixup_linenr(bfd*, asection*, asymbol**, const string&, bfd_vma, const char**, unsigned int*)':
bfd_support.cpp:351:54: error: cannot convert 'bfd*' to 'const asection* {aka const bfd_section*}' for argument '1' to 'bfd_size_type bfd_section_size(const asection*)'
  size_t section_size = bfd_section_size(abfd, section);
                                                      ^
bfd_support.cpp: In function 'const linenr_info find_nearest_line(const bfd_info&, const op_bfd_symbol&, bfd_vma, bool)':
bfd_support.cpp:824:42: error: 'bfd_get_section_flags' was not declared in this scope
  if ((bfd_get_section_flags(abfd, section) & SEC_ALLOC) == 0)
                                          ^
bfd_support.cpp:827:42: error: cannot convert 'bfd*' to 'const asection* {aka const bfd_section*}' for argument '1' to 'bfd_size_type bfd_section_size(const asection*)'
  if (pc >= bfd_section_size(abfd, section))
                                          ^
Makefile:383: recipe for target 'bfd_support.o' failed
...........
```
I check libbfd API and found what it different, file bfd.h
static inline bfd_size_type bfd_section_size (const asection *sec)
I build libbfd.a and libiberty.a from binutils-2.34, which version of the
binutils should I use?
Thank you and excuse my bad english.


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
