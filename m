Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D0A24D041
	for <lists+oprofile-list@lfdr.de>; Fri, 21 Aug 2020 10:04:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1k921v-0005Xi-U3; Fri, 21 Aug 2020 08:04:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tsbogend@alpha.franken.de>) id 1k921u-0005Xb-S2
 for oprofile-list@lists.sourceforge.net; Fri, 21 Aug 2020 08:04:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vP64w8HRnyd+MSr7b5TCk/3x+QH+EMTF7KIk0bnZgI4=; b=mJ87BAnVG0MFbxMuypu6AQEJ3h
 UCkeVnnUYPz4K+malwpIfL3KZZfPlUsjIk+Y8u3bHfQkFa1gbiN5DdX3rWiY2zJ6xosLdfp8+oqiZ
 z6ZzTK2pd+lsF/xpfiJA5YN/EZgQoORbXx/23Gbram6pMwRng57+I9vaKjSjxZkTKA7o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vP64w8HRnyd+MSr7b5TCk/3x+QH+EMTF7KIk0bnZgI4=; b=cHNymllsZ9PJcxyUWCGKA0yKs/
 n3m2eRhnCJNOYS3nBHthM2zl35zFuQjafJNCnpnNXdBW5D1KaKfeqz1iRwJ/9kaU/JAW1vcX/3xy8
 nRIELgYIip+5mBjpjOidEHApb9XBMoVYMEbBxh0SxkoJiaEdDiRSw5+ZbBcGIUnNMhtA=;
Received: from elvis.franken.de ([193.175.24.41])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1k921t-002xHX-6d
 for oprofile-list@lists.sourceforge.net; Fri, 21 Aug 2020 08:04:06 +0000
Received: from uucp (helo=alpha)
 by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
 id 1k91oP-00079q-00; Fri, 21 Aug 2020 09:50:09 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
 id D9FBCC0D76; Fri, 21 Aug 2020 09:46:25 +0200 (CEST)
Date: Fri, 21 Aug 2020 09:46:25 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH] MIPS: op_model_mipsxx: Fix non-executable code bug
Message-ID: <20200821074625.GA8336@alpha.franken.de>
References: <20200819045813.GA24181@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200819045813.GA24181@embeddedor>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1k921t-002xHX-6d
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
Cc: Robert Richter <rric@kernel.org>, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, oprofile-list@lists.sf.net,
 Liangliang Huang <huanglllzu@gmail.com>, Huacai Chen <chenhc@lemote.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: oprofile-list-bounces@lists.sourceforge.net

T24gVHVlLCBBdWcgMTgsIDIwMjAgYXQgMTE6NTg6MTNQTSAtMDUwMCwgR3VzdGF2byBBLiBSLiBT
aWx2YSB3cm90ZToKPiBUaGUgZmFsbHRocm91Z2ggcHNldWRvLWtleXdvcmQgaXMgYmVpbmcgd3Jv
bmdseSB1c2VkIGFuZCBpcyBjYXVzaW5nCj4gdGhlIG5vbi1leGVjdXRhYmxlIGNvZGUgZXJyb3Ig
YmVsb3c6Cj4gCj4gYXJjaC9taXBzL29wcm9maWxlL29wX21vZGVsX21pcHN4eC5jOiBJbiBmdW5j
dGlvbiDigJhtaXBzeHhfcGVyZmNvdW50X2hhbmRsZXLigJk6Cj4gLi9pbmNsdWRlL2xpbnV4L2Nv
bXBpbGVyX2F0dHJpYnV0ZXMuaDoyMTQ6NDE6IHdhcm5pbmc6IHN0YXRlbWVudCB3aWxsIG5ldmVy
IGJlIGV4ZWN1dGVkIFstV3N3aXRjaC11bnJlYWNoYWJsZV0KPiAgIyBkZWZpbmUgZmFsbHRocm91
Z2ggICAgICAgICAgICAgICAgICAgIF9fYXR0cmlidXRlX18oKF9fZmFsbHRocm91Z2hfXykpCj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeCj4gYXJjaC9taXBzL29w
cm9maWxlL29wX21vZGVsX21pcHN4eC5jOjI0ODoyOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFj
cm8g4oCYZmFsbHRocm91Z2jigJkKPiAgIGZhbGx0aHJvdWdoOyAgICAgICBcCj4gICBefn5+fn5+
fn5+fgo+IGFyY2gvbWlwcy9vcHJvZmlsZS9vcF9tb2RlbF9taXBzeHguYzoyNTg6Mjogbm90ZTog
aW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmEhBTkRMRV9DT1VOVEVS4oCZCj4gICBIQU5ETEVfQ09V
TlRFUigzKQo+ICAgXn5+fn5+fn5+fn5+fn4KPiAKPiBGaXggdGhpcyBieSBwbGFjaW5nIHRoZSBm
YWxsdGhyb3VnaCBtYWNybyBhdCB0aGUgcHJvcGVyIHBsYWNlLgo+IAo+IEZpeGVzOiBjOWIwMjk5
MDM0NjYgKCJNSVBTOiBVc2UgZmFsbHRocm91Z2ggZm9yIGFyY2gvbWlwcyIpCj4gQ2M6IHN0YWJs
ZUB2Z2VyLmtlcm5lbC5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBHdXN0YXZvIEEuIFIuIFNpbHZhIDxn
dXN0YXZvYXJzQGtlcm5lbC5vcmc+Cj4gLS0tCj4gIGFyY2gvbWlwcy9vcHJvZmlsZS9vcF9tb2Rl
bF9taXBzeHguYyB8IDQgKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQoKYXBwbGllZCB0byBtaXBzLWZpeGVzLgoKVGhvbWFzLgoKLS0gCkNyYXAg
Y2FuIHdvcmsuIEdpdmVuIGVub3VnaCB0aHJ1c3QgcGlncyB3aWxsIGZseSwgYnV0IGl0J3Mgbm90
IG5lY2Vzc2FyaWx5IGEKZ29vZCBpZGVhLiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIFsgUkZDMTkyNSwgMi4zIF0KCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpvcHJvZmlsZS1saXN0IG1haWxpbmcgbGlzdApvcHJv
ZmlsZS1saXN0QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdl
Lm5ldC9saXN0cy9saXN0aW5mby9vcHJvZmlsZS1saXN0Cg==
