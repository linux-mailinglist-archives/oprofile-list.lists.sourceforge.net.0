Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F9B80BAB
	for <lists+oprofile-list@lfdr.de>; Sun,  4 Aug 2019 18:22:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1huJHL-00087h-1t; Sun, 04 Aug 2019 16:22:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gustavo@embeddedor.com>) id 1hsFSR-0003wQ-Dm
 for oprofile-list@lists.sourceforge.net; Mon, 29 Jul 2019 23:53:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KpUpOxxdU+KhG7Hocsjej/GA+sI7fVcCM88qfdZm4Nk=; b=YuG/4Ne8gLAAOG1btuatBPcMiN
 TvQn3N/THf0IPmbbWAzNgI6SiRc7+8tnBanFgznzAezvTRipCWS2g59asrNZZjZNEIU1wI7x0eWYJ
 TzfUijzrC1Qli2YTuEaEiUciWWB2xOVFVKxM7pPzShoWZ0sMSjUFMo8nQXI93RawFcuI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:Cc
 :To:From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=KpUpOxxdU+KhG7Hocsjej/GA+sI7fVcCM88qfdZm4Nk=; b=R
 ciSZ2nSbBjU/w7Ur4X4ipZe6d/fM3FIkAototsOG7hIkesh2ZGz6SqNHwt2gsHdGb5yWNWS3UzBjY
 Y9EQSQDsxLMwWT+1J9g0EWrb03tShT2OK92G+59N/u2EeczGY/swJY5bReCYxlD0alGO2ovDTr+cD
 hZMNcM4x+Ki5Z+Tc=;
Received: from gateway23.websitewelcome.com ([192.185.48.71])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hsFSP-00GPvw-Nk
 for oprofile-list@lists.sourceforge.net; Mon, 29 Jul 2019 23:53:35 +0000
Received: from cm16.websitewelcome.com (cm16.websitewelcome.com [100.42.49.19])
 by gateway23.websitewelcome.com (Postfix) with ESMTP id 9AC018624
 for <oprofile-list@lists.sf.net>; Mon, 29 Jul 2019 18:32:12 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id sF7khj4Yk4FKpsF7khsrfK; Mon, 29 Jul 2019 18:32:12 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KpUpOxxdU+KhG7Hocsjej/GA+sI7fVcCM88qfdZm4Nk=; b=z5f1wjJKlzs0jlKdEdS03CIAiU
 asTWm2FuWtrMWHm4TAL1uQg5hBgvO6HgRa04/BfwxMrtF6R5jI2Dldkl8uKPBcmF/vTyQL6rLQG3P
 p0VCBi5NJMns6GaJzkMrpu5o2wVHhDfML87lbncx5Ae2225YbDpu9Ul/Je47cwZ+6G/Tj1eVbjRcP
 qkTBzpYM6Z7+/Kqih/W7Haf0RjaVjF0Zuev8UCBMtaY8rEIu3g5Ggzhef2ywZbyilOJO261rHFaMV
 OpYDDGfFCIb1eqLmyksnaMGGn7wJIiNL1+ZauI9nS4YWdeopFgzxUpSDWMpzTKFJawByzwZiQRcAY
 7+ugJ65Q==;
Received: from [187.192.11.120] (port=33296 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1hsF7j-002agT-EA; Mon, 29 Jul 2019 18:32:11 -0500
Date: Mon, 29 Jul 2019 18:32:10 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Robert Richter <rric@kernel.org>, Ralf Baechle <ralf@linux-mips.org>,
 Paul Burton <paul.burton@mips.com>, James Hogan <jhogan@kernel.org>
Subject: [PATCH] MIPS: OProfile: Mark expected switch fall-throughs
Message-ID: <20190729233209.GA28779@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.sf.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.192.11.120
X-Source-L: No
X-Exim-ID: 1hsF7j-002agT-EA
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [187.192.11.120]:33296
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 5
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [192.185.48.71 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hsFSP-00GPvw-Nk
X-Mailman-Approved-At: Sun, 04 Aug 2019 16:22:37 +0000
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
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, oprofile-list@lists.sf.net,
 linux-mips@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: oprofile-list-bounces@lists.sourceforge.net

TWFyayBzd2l0Y2ggY2FzZXMgd2hlcmUgd2UgYXJlIGV4cGVjdGluZyB0byBmYWxsIHRocm91Z2gu
CgpUaGlzIHBhdGNoIGZpeGVzIHRoZSBmb2xsb3dpbmcgd2FybmluZyAoQnVpbGRpbmc6IG1pcHMp
OgoKYXJjaC9taXBzL29wcm9maWxlL29wX21vZGVsX21pcHN4eC5jOiBJbiBmdW5jdGlvbiDigJht
aXBzeHhfY3B1X3N0b3DigJk6CmFyY2gvbWlwcy9vcHJvZmlsZS9vcF9tb2RlbF9taXBzeHguYzoy
MTc6Mzogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwgdGhyb3VnaCBbLVdpbXBsaWNp
dC1mYWxsdGhyb3VnaD1dCiAgIHdfYzBfcGVyZmN0cmwzKDApOwogICBefn5+fn5+fn5+fn5+fn5+
fgphcmNoL21pcHMvb3Byb2ZpbGUvb3BfbW9kZWxfbWlwc3h4LmM6MjE4OjI6IG5vdGU6IGhlcmUK
ICBjYXNlIDM6CiAgXn5+fgphcmNoL21pcHMvb3Byb2ZpbGUvb3BfbW9kZWxfbWlwc3h4LmM6MjE5
OjM6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsIHRocm91Z2ggWy1XaW1wbGljaXQt
ZmFsbHRocm91Z2g9XQogICB3X2MwX3BlcmZjdHJsMigwKTsKICAgXn5+fn5+fn5+fn5+fn5+fn4K
YXJjaC9taXBzL29wcm9maWxlL29wX21vZGVsX21pcHN4eC5jOjIyMDoyOiBub3RlOiBoZXJlCiAg
Y2FzZSAyOgogIF5+fn4KYXJjaC9taXBzL29wcm9maWxlL29wX21vZGVsX21pcHN4eC5jOjIyMToz
OiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbCB0aHJvdWdoIFstV2ltcGxpY2l0LWZh
bGx0aHJvdWdoPV0KICAgd19jMF9wZXJmY3RybDEoMCk7CiAgIF5+fn5+fn5+fn5+fn5+fn5+CmFy
Y2gvbWlwcy9vcHJvZmlsZS9vcF9tb2RlbF9taXBzeHguYzoyMjI6Mjogbm90ZTogaGVyZQogIGNh
c2UgMToKICBefn5+CmFyY2gvbWlwcy9vcHJvZmlsZS9vcF9tb2RlbF9taXBzeHguYzogSW4gZnVu
Y3Rpb24g4oCYbWlwc3h4X2NwdV9zdGFydOKAmToKYXJjaC9taXBzL29wcm9maWxlL29wX21vZGVs
X21pcHN4eC5jOjE5NzozOiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbCB0aHJvdWdo
IFstV2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KICAgd19jMF9wZXJmY3RybDMoV0hBVCB8IHJlZy5j
b250cm9sWzNdKTsKICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgphcmNo
L21pcHMvb3Byb2ZpbGUvb3BfbW9kZWxfbWlwc3h4LmM6MTk4OjI6IG5vdGU6IGhlcmUKICBjYXNl
IDM6CiAgXn5+fgphcmNoL21pcHMvb3Byb2ZpbGUvb3BfbW9kZWxfbWlwc3h4LmM6MTk5OjM6IHdh
cm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRo
cm91Z2g9XQogICB3X2MwX3BlcmZjdHJsMihXSEFUIHwgcmVnLmNvbnRyb2xbMl0pOwogICBefn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CmFyY2gvbWlwcy9vcHJvZmlsZS9vcF9t
b2RlbF9taXBzeHguYzoyMDA6Mjogbm90ZTogaGVyZQogIGNhc2UgMjoKICBefn5+CmFyY2gvbWlw
cy9vcHJvZmlsZS9vcF9tb2RlbF9taXBzeHguYzoyMDE6Mzogd2FybmluZzogdGhpcyBzdGF0ZW1l
bnQgbWF5IGZhbGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCiAgIHdfYzBfcGVy
ZmN0cmwxKFdIQVQgfCByZWcuY29udHJvbFsxXSk7CiAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn4KYXJjaC9taXBzL29wcm9maWxlL29wX21vZGVsX21pcHN4eC5jOjIwMjoy
OiBub3RlOiBoZXJlCiAgY2FzZSAxOgogIF5+fn4KYXJjaC9taXBzL29wcm9maWxlL29wX21vZGVs
X21pcHN4eC5jOiBJbiBmdW5jdGlvbiDigJhyZXNldF9jb3VudGVyc+KAmToKYXJjaC9taXBzL29w
cm9maWxlL29wX21vZGVsX21pcHN4eC5jOjI5OTozOiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBt
YXkgZmFsbCB0aHJvdWdoIFstV2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KICAgd19jMF9wZXJmY250
cjMoMCk7CiAgIF5+fn5+fn5+fn5+fn5+fn5+CmFyY2gvbWlwcy9vcHJvZmlsZS9vcF9tb2RlbF9t
aXBzeHguYzozMDA6Mjogbm90ZTogaGVyZQogIGNhc2UgMzoKICBefn5+CmFyY2gvbWlwcy9vcHJv
ZmlsZS9vcF9tb2RlbF9taXBzeHguYzozMDI6Mzogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5
IGZhbGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCiAgIHdfYzBfcGVyZmNudHIy
KDApOwogICBefn5+fn5+fn5+fn5+fn5+fgphcmNoL21pcHMvb3Byb2ZpbGUvb3BfbW9kZWxfbWlw
c3h4LmM6MzAzOjI6IG5vdGU6IGhlcmUKICBjYXNlIDI6CiAgXn5+fgphcmNoL21pcHMvb3Byb2Zp
bGUvb3BfbW9kZWxfbWlwc3h4LmM6MzA1OjM6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBm
YWxsIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQogICB3X2MwX3BlcmZjbnRyMSgw
KTsKICAgXn5+fn5+fn5+fn5+fn5+fn4KYXJjaC9taXBzL29wcm9maWxlL29wX21vZGVsX21pcHN4
eC5jOjMwNjoyOiBub3RlOiBoZXJlCiAgY2FzZSAxOgogIF5+fn4KYXJjaC9taXBzL29wcm9maWxl
L29wX21vZGVsX21pcHN4eC5jOiBJbiBmdW5jdGlvbiDigJhtaXBzeHhfcGVyZmNvdW50X2hhbmRs
ZXLigJk6CmFyY2gvbWlwcy9vcHJvZmlsZS9vcF9tb2RlbF9taXBzeHguYzoyNDI6Njogd2Fybmlu
ZzogdGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3Vn
aD1dCiAgIGlmICgoY29udHJvbCAmIE1JUFNfUEVSRkNUUkxfSUUpICYmICAgXAogICAgICBeCmFy
Y2gvbWlwcy9vcHJvZmlsZS9vcF9tb2RlbF9taXBzeHguYzoyNDg6Mjogbm90ZTogaW4gZXhwYW5z
aW9uIG9mIG1hY3JvIOKAmEhBTkRMRV9DT1VOVEVS4oCZCiAgSEFORExFX0NPVU5URVIoMykKICBe
fn5+fn5+fn5+fn5+fgphcmNoL21pcHMvb3Byb2ZpbGUvb3BfbW9kZWxfbWlwc3h4LmM6MjM5OjI6
IG5vdGU6IGhlcmUKICBjYXNlIG4gKyAxOiAgICAgICBcCiAgXgphcmNoL21pcHMvb3Byb2ZpbGUv
b3BfbW9kZWxfbWlwc3h4LmM6MjQ5OjI6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhI
QU5ETEVfQ09VTlRFUuKAmQogIEhBTkRMRV9DT1VOVEVSKDIpCiAgXn5+fn5+fn5+fn5+fn4KYXJj
aC9taXBzL29wcm9maWxlL29wX21vZGVsX21pcHN4eC5jOjI0Mjo2OiB3YXJuaW5nOiB0aGlzIHN0
YXRlbWVudCBtYXkgZmFsbCB0aHJvdWdoIFstV2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KICAgaWYg
KChjb250cm9sICYgTUlQU19QRVJGQ1RSTF9JRSkgJiYgICBcCiAgICAgIF4KYXJjaC9taXBzL29w
cm9maWxlL29wX21vZGVsX21pcHN4eC5jOjI0OToyOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFj
cm8g4oCYSEFORExFX0NPVU5URVLigJkKICBIQU5ETEVfQ09VTlRFUigyKQogIF5+fn5+fn5+fn5+
fn5+CmFyY2gvbWlwcy9vcHJvZmlsZS9vcF9tb2RlbF9taXBzeHguYzoyMzk6Mjogbm90ZTogaGVy
ZQogIGNhc2UgbiArIDE6ICAgICAgIFwKICBeCmFyY2gvbWlwcy9vcHJvZmlsZS9vcF9tb2RlbF9t
aXBzeHguYzoyNTA6Mjogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmEhBTkRMRV9DT1VO
VEVS4oCZCiAgSEFORExFX0NPVU5URVIoMSkKICBefn5+fn5+fn5+fn5+fgphcmNoL21pcHMvb3By
b2ZpbGUvb3BfbW9kZWxfbWlwc3h4LmM6MjQyOjY6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1h
eSBmYWxsIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQogICBpZiAoKGNvbnRyb2wg
JiBNSVBTX1BFUkZDVFJMX0lFKSAmJiAgIFwKICAgICAgXgphcmNoL21pcHMvb3Byb2ZpbGUvb3Bf
bW9kZWxfbWlwc3h4LmM6MjUwOjI6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhIQU5E
TEVfQ09VTlRFUuKAmQogIEhBTkRMRV9DT1VOVEVSKDEpCiAgXn5+fn5+fn5+fn5+fn4KYXJjaC9t
aXBzL29wcm9maWxlL29wX21vZGVsX21pcHN4eC5jOjIzOToyOiBub3RlOiBoZXJlCiAgY2FzZSBu
ICsgMTogICAgICAgXAogIF4KYXJjaC9taXBzL29wcm9maWxlL29wX21vZGVsX21pcHN4eC5jOjI1
MToyOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYSEFORExFX0NPVU5URVLigJkKICBI
QU5ETEVfQ09VTlRFUigwKQogIF5+fn5+fn5+fn5+fn5+CiAgQ0MgICAgICB1c3IvaW5jbHVkZS9s
aW51eC9wbXUuaC5zCmFyY2gvbWlwcy9vcHJvZmlsZS9vcF9tb2RlbF9taXBzeHguYzogSW4gZnVu
Y3Rpb24g4oCYbWlwc3h4X2NwdV9zZXR1cOKAmToKYXJjaC9taXBzL29wcm9maWxlL29wX21vZGVs
X21pcHN4eC5jOjE3NDozOiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbCB0aHJvdWdo
IFstV2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KICAgd19jMF9wZXJmY250cjMocmVnLmNvdW50ZXJb
M10pOwogICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KYXJjaC9taXBzL29wcm9maWxl
L29wX21vZGVsX21pcHN4eC5jOjE3NToyOiBub3RlOiBoZXJlCiAgY2FzZSAzOgogIF5+fn4KYXJj
aC9taXBzL29wcm9maWxlL29wX21vZGVsX21pcHN4eC5jOjE3NzozOiB3YXJuaW5nOiB0aGlzIHN0
YXRlbWVudCBtYXkgZmFsbCB0aHJvdWdoIFstV2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KICAgd19j
MF9wZXJmY250cjIocmVnLmNvdW50ZXJbMl0pOwogICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn4KYXJjaC9taXBzL29wcm9maWxlL29wX21vZGVsX21pcHN4eC5jOjE3ODoyOiBub3RlOiBo
ZXJlCiAgY2FzZSAyOgogIF5+fn4KYXJjaC9taXBzL29wcm9maWxlL29wX21vZGVsX21pcHN4eC5j
OjE4MDozOiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbCB0aHJvdWdoIFstV2ltcGxp
Y2l0LWZhbGx0aHJvdWdoPV0KICAgd19jMF9wZXJmY250cjEocmVnLmNvdW50ZXJbMV0pOwogICBe
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KYXJjaC9taXBzL29wcm9maWxlL29wX21vZGVs
X21pcHN4eC5jOjE4MToyOiBub3RlOiBoZXJlCiAgY2FzZSAxOgogIF5+fn4KClNpZ25lZC1vZmYt
Ynk6IEd1c3Rhdm8gQS4gUi4gU2lsdmEgPGd1c3Rhdm9AZW1iZWRkZWRvci5jb20+Ci0tLQogYXJj
aC9taXBzL29wcm9maWxlL29wX21vZGVsX21pcHN4eC5jIHwgMTMgKysrKysrKysrKysrKwogMSBm
aWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL21pcHMvb3By
b2ZpbGUvb3BfbW9kZWxfbWlwc3h4LmMgYi9hcmNoL21pcHMvb3Byb2ZpbGUvb3BfbW9kZWxfbWlw
c3h4LmMKaW5kZXggN2MwNGIxN2Y0YTQ4Li45NmMxM2EwYWIwNzggMTAwNjQ0Ci0tLSBhL2FyY2gv
bWlwcy9vcHJvZmlsZS9vcF9tb2RlbF9taXBzeHguYworKysgYi9hcmNoL21pcHMvb3Byb2ZpbGUv
b3BfbW9kZWxfbWlwc3h4LmMKQEAgLTE3MiwxMiArMTcyLDE1IEBAIHN0YXRpYyB2b2lkIG1pcHN4
eF9jcHVfc2V0dXAodm9pZCAqYXJncykKIAljYXNlIDQ6CiAJCXdfYzBfcGVyZmN0cmwzKDApOwog
CQl3X2MwX3BlcmZjbnRyMyhyZWcuY291bnRlclszXSk7CisJCS8qIGZhbGwgdGhyb3VnaCAqLwog
CWNhc2UgMzoKIAkJd19jMF9wZXJmY3RybDIoMCk7CiAJCXdfYzBfcGVyZmNudHIyKHJlZy5jb3Vu
dGVyWzJdKTsKKwkJLyogZmFsbCB0aHJvdWdoICovCiAJY2FzZSAyOgogCQl3X2MwX3BlcmZjdHJs
MSgwKTsKIAkJd19jMF9wZXJmY250cjEocmVnLmNvdW50ZXJbMV0pOworCQkvKiBmYWxsIHRocm91
Z2ggKi8KIAljYXNlIDE6CiAJCXdfYzBfcGVyZmN0cmwwKDApOwogCQl3X2MwX3BlcmZjbnRyMChy
ZWcuY291bnRlclswXSk7CkBAIC0xOTUsMTAgKzE5OCwxMyBAQCBzdGF0aWMgdm9pZCBtaXBzeHhf
Y3B1X3N0YXJ0KHZvaWQgKmFyZ3MpCiAJc3dpdGNoIChjb3VudGVycykgewogCWNhc2UgNDoKIAkJ
d19jMF9wZXJmY3RybDMoV0hBVCB8IHJlZy5jb250cm9sWzNdKTsKKwkJLyogZmFsbCB0aHJvdWdo
ICovCiAJY2FzZSAzOgogCQl3X2MwX3BlcmZjdHJsMihXSEFUIHwgcmVnLmNvbnRyb2xbMl0pOwor
CQkvKiBmYWxsIHRocm91Z2ggKi8KIAljYXNlIDI6CiAJCXdfYzBfcGVyZmN0cmwxKFdIQVQgfCBy
ZWcuY29udHJvbFsxXSk7CisJCS8qIGZhbGwgdGhyb3VnaCAqLwogCWNhc2UgMToKIAkJd19jMF9w
ZXJmY3RybDAoV0hBVCB8IHJlZy5jb250cm9sWzBdKTsKIAl9CkBAIC0yMTUsMTAgKzIyMSwxMyBA
QCBzdGF0aWMgdm9pZCBtaXBzeHhfY3B1X3N0b3Aodm9pZCAqYXJncykKIAlzd2l0Y2ggKGNvdW50
ZXJzKSB7CiAJY2FzZSA0OgogCQl3X2MwX3BlcmZjdHJsMygwKTsKKwkJLyogZmFsbCB0aHJvdWdo
ICovCiAJY2FzZSAzOgogCQl3X2MwX3BlcmZjdHJsMigwKTsKKwkJLyogZmFsbCB0aHJvdWdoICov
CiAJY2FzZSAyOgogCQl3X2MwX3BlcmZjdHJsMSgwKTsKKwkJLyogZmFsbCB0aHJvdWdoICovCiAJ
Y2FzZSAxOgogCQl3X2MwX3BlcmZjdHJsMCgwKTsKIAl9CkBAIC0yMzYsNiArMjQ1LDcgQEAgc3Rh
dGljIGludCBtaXBzeHhfcGVyZmNvdW50X2hhbmRsZXIodm9pZCkKIAogCXN3aXRjaCAoY291bnRl
cnMpIHsKICNkZWZpbmUgSEFORExFX0NPVU5URVIobikJCQkJCQlcCisJLyogZmFsbCB0aHJvdWdo
ICovCQkJCQkJXAogCWNhc2UgbiArIDE6CQkJCQkJCVwKIAkJY29udHJvbCA9IHJfYzBfcGVyZmN0
cmwgIyMgbigpOwkJCQlcCiAJCWNvdW50ZXIgPSByX2MwX3BlcmZjbnRyICMjIG4oKTsJCQkJXApA
QCAtMjk3LDEyICszMDcsMTUgQEAgc3RhdGljIHZvaWQgcmVzZXRfY291bnRlcnModm9pZCAqYXJn
KQogCWNhc2UgNDoKIAkJd19jMF9wZXJmY3RybDMoMCk7CiAJCXdfYzBfcGVyZmNudHIzKDApOwor
CQkvKiBmYWxsIHRocm91Z2ggKi8KIAljYXNlIDM6CiAJCXdfYzBfcGVyZmN0cmwyKDApOwogCQl3
X2MwX3BlcmZjbnRyMigwKTsKKwkJLyogZmFsbCB0aHJvdWdoICovCiAJY2FzZSAyOgogCQl3X2Mw
X3BlcmZjdHJsMSgwKTsKIAkJd19jMF9wZXJmY250cjEoMCk7CisJCS8qIGZhbGwgdGhyb3VnaCAq
LwogCWNhc2UgMToKIAkJd19jMF9wZXJmY3RybDAoMCk7CiAJCXdfYzBfcGVyZmNudHIwKDApOwot
LSAKMi4yMi4wCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wcm9maWxlLWxpc3QgbWFpbGluZyBsaXN0Cm9wcm9maWxlLWxpc3RAbGlzdHMuc291cmNl
Zm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29w
cm9maWxlLWxpc3QK
