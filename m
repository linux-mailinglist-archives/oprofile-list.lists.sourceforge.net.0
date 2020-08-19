Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 67877249453
	for <lists+oprofile-list@lfdr.de>; Wed, 19 Aug 2020 07:10:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1k8GN1-0002Kz-6i; Wed, 19 Aug 2020 05:10:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gustavoars@kernel.org>) id 1k8GN0-0002Ks-2E
 for oprofile-list@lists.sourceforge.net; Wed, 19 Aug 2020 05:10:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U0FlTJ0AdpfKXWJHRUv+HIX/4aKSprtmQUnKmoK020w=; b=lP+grW52z6jL9Peecepsd59ltW
 WaKFUY/oPYLdvr+Wrh2q7ATzBLMKQ6Xxm+lYH7AgVwdNXsbUtPbxoBezLz99PJASHtHSNzcDqbRFW
 IOxFR66/kXMrUPXVSezA8ZM9l8FGZ6A1OSqJOC3et9+MYo2jhjQJ6JEwLeVBie7RxebU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:Cc
 :To:From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=U0FlTJ0AdpfKXWJHRUv+HIX/4aKSprtmQUnKmoK020w=; b=d
 2/DugFVq86BO72zu7MKtL+yoyTzqOd7TeuT8+KFxVqtr+hYnxj02aGnRH4pjXh5HkV5v0iH5Wz7+9
 1FnrDFDjCb8DPGvqiaEjbD+bDqtzYjqCdsOjLipSm24KmMwQYaEbUxK1J7oSzs0IY/JR//1EWWSnf
 6LWpMfoY5jTOi6J4=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k8GMv-0012CK-Ll
 for oprofile-list@lists.sourceforge.net; Wed, 19 Aug 2020 05:10:41 +0000
Received: from embeddedor (187-162-31-110.static.axtel.net [187.162.31.110])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D100220738;
 Wed, 19 Aug 2020 04:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597812750;
 bh=GLznDUKKZKgi2aEq0Zy87y3ImtPsM7YwW72FNOaxyOY=;
 h=Date:From:To:Cc:Subject:From;
 b=0O5cKw3BqHP71o2mkV1jzg3Fsh8EnMW0S+yAqD5Wc7Tprcks77TG1uf7KHbpow1fj
 6gwgmz2YIgL8hblkwvwc4pgzL7A4huihBYYCeYhQXeMIFi2Z9FAK7JncElBiqD1dUt
 r9CDw89Rz/UZdXhI5EYPAjArRR5rGc3VO26/SYf8=
Date: Tue, 18 Aug 2020 23:58:13 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Robert Richter <rric@kernel.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Huacai Chen <chenhc@lemote.com>, Liangliang Huang <huanglllzu@gmail.com>
Subject: [PATCH] MIPS: op_model_mipsxx: Fix non-executable code bug
Message-ID: <20200819045813.GA24181@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1k8GMv-0012CK-Ll
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
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>, oprofile-list@lists.sf.net,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: oprofile-list-bounces@lists.sourceforge.net

VGhlIGZhbGx0aHJvdWdoIHBzZXVkby1rZXl3b3JkIGlzIGJlaW5nIHdyb25nbHkgdXNlZCBhbmQg
aXMgY2F1c2luZwp0aGUgbm9uLWV4ZWN1dGFibGUgY29kZSBlcnJvciBiZWxvdzoKCmFyY2gvbWlw
cy9vcHJvZmlsZS9vcF9tb2RlbF9taXBzeHguYzogSW4gZnVuY3Rpb24g4oCYbWlwc3h4X3BlcmZj
b3VudF9oYW5kbGVy4oCZOgouL2luY2x1ZGUvbGludXgvY29tcGlsZXJfYXR0cmlidXRlcy5oOjIx
NDo0MTogd2FybmluZzogc3RhdGVtZW50IHdpbGwgbmV2ZXIgYmUgZXhlY3V0ZWQgWy1Xc3dpdGNo
LXVucmVhY2hhYmxlXQogIyBkZWZpbmUgZmFsbHRocm91Z2ggICAgICAgICAgICAgICAgICAgIF9f
YXR0cmlidXRlX18oKF9fZmFsbHRocm91Z2hfXykpCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgXgphcmNoL21pcHMvb3Byb2ZpbGUvb3BfbW9kZWxfbWlwc3h4LmM6MjQ4
OjI6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhmYWxsdGhyb3VnaOKAmQogIGZhbGx0
aHJvdWdoOyAgICAgICBcCiAgXn5+fn5+fn5+fn4KYXJjaC9taXBzL29wcm9maWxlL29wX21vZGVs
X21pcHN4eC5jOjI1ODoyOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYSEFORExFX0NP
VU5URVLigJkKICBIQU5ETEVfQ09VTlRFUigzKQogIF5+fn5+fn5+fn5+fn5+CgpGaXggdGhpcyBi
eSBwbGFjaW5nIHRoZSBmYWxsdGhyb3VnaCBtYWNybyBhdCB0aGUgcHJvcGVyIHBsYWNlLgoKRml4
ZXM6IGM5YjAyOTkwMzQ2NiAoIk1JUFM6IFVzZSBmYWxsdGhyb3VnaCBmb3IgYXJjaC9taXBzIikK
Q2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKU2lnbmVkLW9mZi1ieTogR3VzdGF2byBBLiBSLiBT
aWx2YSA8Z3VzdGF2b2Fyc0BrZXJuZWwub3JnPgotLS0KIGFyY2gvbWlwcy9vcHJvZmlsZS9vcF9t
b2RlbF9taXBzeHguYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL21pcHMvb3Byb2ZpbGUvb3BfbW9kZWxf
bWlwc3h4LmMgYi9hcmNoL21pcHMvb3Byb2ZpbGUvb3BfbW9kZWxfbWlwc3h4LmMKaW5kZXggMTQ5
M2M0OWNhNDdhLi5mMjAwYjk3YmRlZjcgMTAwNjQ0Ci0tLSBhL2FyY2gvbWlwcy9vcHJvZmlsZS9v
cF9tb2RlbF9taXBzeHguYworKysgYi9hcmNoL21pcHMvb3Byb2ZpbGUvb3BfbW9kZWxfbWlwc3h4
LmMKQEAgLTI0NSw3ICsyNDUsNiBAQCBzdGF0aWMgaW50IG1pcHN4eF9wZXJmY291bnRfaGFuZGxl
cih2b2lkKQogCiAJc3dpdGNoIChjb3VudGVycykgewogI2RlZmluZSBIQU5ETEVfQ09VTlRFUihu
KQkJCQkJCVwKLQlmYWxsdGhyb3VnaDsJCQkJCQkJXAogCWNhc2UgbiArIDE6CQkJCQkJCVwKIAkJ
Y29udHJvbCA9IHJfYzBfcGVyZmN0cmwgIyMgbigpOwkJCQlcCiAJCWNvdW50ZXIgPSByX2MwX3Bl
cmZjbnRyICMjIG4oKTsJCQkJXApAQCAtMjU0LDcgKzI1Myw4IEBAIHN0YXRpYyBpbnQgbWlwc3h4
X3BlcmZjb3VudF9oYW5kbGVyKHZvaWQpCiAJCQlvcHJvZmlsZV9hZGRfc2FtcGxlKGdldF9pcnFf
cmVncygpLCBuKTsJCVwKIAkJCXdfYzBfcGVyZmNudHIgIyMgbihyZWcuY291bnRlcltuXSk7CQlc
CiAJCQloYW5kbGVkID0gSVJRX0hBTkRMRUQ7CQkJCVwKLQkJfQorCQl9CQkJCQkJCVwKKwlmYWxs
dGhyb3VnaDsKIAlIQU5ETEVfQ09VTlRFUigzKQogCUhBTkRMRV9DT1VOVEVSKDIpCiAJSEFORExF
X0NPVU5URVIoMSkKLS0gCjIuMjcuMAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcHJvZmlsZS1saXN0IG1haWxpbmcgbGlzdApvcHJvZmlsZS1saXN0
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0
cy9saXN0aW5mby9vcHJvZmlsZS1saXN0Cg==
