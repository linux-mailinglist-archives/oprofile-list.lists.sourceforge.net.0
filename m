Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 065051A67CF
	for <lists+oprofile-list@lfdr.de>; Mon, 13 Apr 2020 16:20:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=From:Message-Id:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:MIME-Version:References:In-Reply-To:Date:
	Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tHsjrsuj7mGi7AlPqcUFEiUQR2DlgCt5ZsEnfwEwi0c=; b=Aohzi7ta87tNqiesChQw5tyzf/
	bh6SMIAs7sfL4JeK/GtCXndJx6WtyV2ICG9RCC+7qkDpUITtDSp06DsNQdouvgX/V8bzkO5G3fqKj
	bll8jjmi6558MP47QKl8Cq6jCzRtBe79aZC/a2Anl8iQAZqExl0I9c1gBCXTzuFezaAk=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jNzxF-0001eg-MP; Mon, 13 Apr 2020 14:20:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiaxun.yang@flygoat.com>) id 1jMUZo-0005UR-8o
 for oprofile-list@lists.sourceforge.net; Thu, 09 Apr 2020 10:38:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=CC:To:Subject:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Date:From:Sender:Reply-To:
 Message-ID:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hBOQm1Fr+MVVkAgnSe00cTLLVzHIARKzsuNA08dxmzU=; b=JLzvSoicGa8dy1RQeRnm5fWXi4
 Is3RzntYYWwaUBhwzqAMKzp0gV3zZMEFnVsN1QuK4o5R5CZ39cL5HcK71rWoK7GSkFCsZQazeXDo8
 k81JA4NLBhJqEPffnWQNABRLuAooJiOtgAdcTN8Q75+DCE9Xq6WSlKd7g+30iWxjpf20=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=CC:To:Subject:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:In-Reply-To:Date:From:Sender:Reply-To:Message-ID:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hBOQm1Fr+MVVkAgnSe00cTLLVzHIARKzsuNA08dxmzU=; b=YGBu+KAEQRYNwPxMPyccJhGGxI
 Lc27UsacL11AqBqv6a47oZWu9eW2hF8/xqM3PojU9MJXlGpW9Ny81+ThGyLR0N0NwOJLOak46uYeR
 Rhv61Z6KqWPvz/wqsoxF2UFPpfj4XVb5jYz/mRiyGyAVV5I/gRcGIyE4V/8rqs++wWvg=;
Received: from sender3-op-o12.zoho.com.cn ([124.251.121.243])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jMUZj-009GUW-Js
 for oprofile-list@lists.sourceforge.net; Thu, 09 Apr 2020 10:38:28 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1586428530; cv=none; d=zoho.com.cn; s=zohoarc; 
 b=dS4y6vQqA2ljSD8qfUDVnSSseCRqsoOXIMTQu85LZoNcO3puHuWa1hfJmFhjWqzvZYa+/Q1RFC5cciPa/RMrTkOyQZ+oL2NIzPbp5U6Fv1HdWpzAjQ0fGf6wuyuipa91W6p/IA9HMpSA6ck7/ambEns7vEs3OjWjRgVdGPPXVwM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com.cn;
 s=zohoarc; t=1586428530;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=g/TjLQdTc1do8bCXLo9nSCnJYrVaNcjqHpOGlmweTQ0=; 
 b=DnmtX1G9iMaHEJ0S2uFGf63lEm/mL4yAr4TOOP0NWQ6Ycon85n1rDGZoqrhmxfUW5HwpR1XXXH2DvQS5oQTR74zK0w7DbrIhqSboND4YkfynVl4adv2BGF0UlEiIwyD6N0tUBu8qibGXiqqgzu7zIiyLsfXnRTXyzpMlrlwCOFQ=
ARC-Authentication-Results: i=1; mx.zoho.com.cn;
 dkim=pass  header.i=flygoat.com;
 spf=pass  smtp.mailfrom=jiaxun.yang@flygoat.com;
 dmarc=pass header.from=<jiaxun.yang@flygoat.com>
 header.from=<jiaxun.yang@flygoat.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1586428530; 
 s=mail; d=flygoat.com; i=jiaxun.yang@flygoat.com;
 h=Date:In-Reply-To:References:MIME-Version:Content-Type:Content-Transfer-Encoding:Subject:To:CC:From:Message-ID;
 bh=g/TjLQdTc1do8bCXLo9nSCnJYrVaNcjqHpOGlmweTQ0=;
 b=eL6nhpn9OGNqmdW4U5/iXNqaezU6Yvv545x//1eJADcqsUd8IxLkeFkPOEPGvkDa
 d0ba9pZw2+6aHJgOi3u7OiTCZSUurEj+4fJBunGr/ubGnRkC23bersZ/xXWeyAJQpDA
 YXR4h0/lJbO3GYZmW1///sSG+4rGJM2xvF8m9jec=
Received: from [26.26.26.1] (122.235.212.87 [122.235.212.87]) by mx.zoho.com.cn
 with SMTPS id 1586428528596145.39390333824656;
 Thu, 9 Apr 2020 18:35:28 +0800 (CST)
Date: Thu, 09 Apr 2020 18:35:21 +0800
User-Agent: K-9 Mail for Android
In-Reply-To: <20200409103121.GD25948@bogus>
References: <20200408113505.2528103-1-jiaxun.yang@flygoat.com>
 <20200408113505.2528103-6-jiaxun.yang@flygoat.com>
 <20200409103121.GD25948@bogus>
MIME-Version: 1.0
Subject: Re: [PATCH 05/12] MIPS: Switch to arch_topology
To: Sudeep Holla <sudeep.holla@arm.com>
X-Spam-Score: 2.2 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: flygoat.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_QP_LONG_LINE      RAW: Quoted-printable line longer than 76 chars
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [124.251.121.243 listed in list.dnswl.org]
 1.0 MISSING_MID            Missing Message-Id: header
 1.0 MISSING_FROM           Missing From: header
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-Headers-End: 1jMUZj-009GUW-Js
X-Mailman-Approved-At: Mon, 13 Apr 2020 14:20:50 +0000
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Paul Cercueil <paul@crapouillou.net>, Richard Fontana <rfontana@redhat.com>,
 Huacai Chen <chenhc@lemote.com>, Jiri Olsa <jolsa@redhat.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Paul Burton <paulburton@kernel.org>,
 Marc Zyngier <maz@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>,
 Vladimir Kondratiev <vladimir.kondratiev@intel.com>,
 Robert Richter <rric@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Namhyung Kim <namhyung@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Zhou Yanjie <zhouyanjie@zoho.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 =?UTF-8?B?5ZGo55Cw5p2wIChaaG91IFlhbmppZSk=?=,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: oprofile-list-bounces@lists.sourceforge.net
Message-Id: <E1jNzxF-0001eg-MP@sfs-ml-3.v29.lw.sourceforge.com>
From: oprofile-list-bounces@lists.sourceforge.net

PHpob3V5YW5qaWVAd2FueWVldGVjaC5jb20+LFl1blFpYW5nIFN1IDxzeXFAZGViaWFuLm9yZz4s
QXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4sU2VyZ2UgU2VtaW4gPGZhbmNlci5sYW5jZXJA
Z21haWwuY29tPixNYXR0IFJlZGZlYXJuIDxtYXR0LnJlZGZlYXJuQG1pcHMuY29tPixTdGV2ZSBX
aW5zbG93IDxzd2luc2xvd0BnbWFpbC5jb20+LEFsZXhpb3MgWmF2cmFzIDxhbGV4aW9zLnphdnJh
c0BpbnRlbC5jb20+LFBldGVyIFh1IDxwZXRlcnhAcmVkaGF0LmNvbT4sYWZ6YWwgbW9oYW1tZWQg
PGFmemFsLm1vaGQubWFAZ21haWwuY29tPixLYW1hbCBEYXN1IDxrZGFzdS5rZGV2QGdtYWlsLmNv
bT4sTWlrZSBSYXBvcG9ydCA8cnBwdEBsaW51eC5pYm0uY29tPixPbGVrc2lqIFJlbXBlbCA8bGlu
dXhAcmVtcGVsLXByaXZhdC5kZT4sbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZyxiY20ta2Vy
bmVsLWZlZWRiYWNrLWxpc3RAYnJvYWRjb20uY29tLG9wcm9maWxlLWxpc3RAbGlzdHMuc2YubmV0
CkZyb206IEppYXh1biBZYW5nIDxqaWF4dW4ueWFuZ0BmbHlnb2F0LmNvbT4KQmNjOiBvcHJvZmls
ZS1saXN0QGxpc3RzLnNmLm5ldApNZXNzYWdlLUlEOiA8QzI3OTQ5MTAtNDhBMC00NDcyLTk1M0Et
MTNGNDBCQTM5NDIzQGZseWdvYXQuY29tPgpYLVpvaG9DTk1haWxDbGllbnQ6IEV4dGVybmFsCgoK
CuS6jiAyMDIw5bm0NOaciDnml6UgR01UKzA4OjAwIOS4i+WNiDY6MzE6MjEsIFN1ZGVlcCBIb2xs
YSA8c3VkZWVwLmhvbGxhQGFybS5jb20+IOWGmeWIsDoKPk9uIFdlZCwgQXByIDA4LCAyMDIwIGF0
IDA3OjM0OjE1UE0gKzA4MDAsIEppYXh1biBZYW5nIHdyb3RlOgo+PiBQcmV2aW91c2x5LCBNSVBT
IGlzIHVzaW5nIHNlbGYtZGVmaW5lZCAiZ2xvYmFsbnVtYmVyIiBpbiBzdHJ1Y3QKPj4gbWlwc19j
cHVpbmZvIHRvIHN0b3JlIHRvcG9sb2d5IGluZm9ybWF0aW9uLiBIb3dldmVyLCBpdCdzIG5vdAo+
ZnJpZW5kbHkKPj4gdG8gRGV2aWNlVHJlZSBiYXNlZCBzeXN0ZW1zIGFuZCBsYWNrIG9mIGNwdV9j
YXBhY2l0eSByZWxhdGVkIGZlYXR1cmUKPj4gd2hpY2ggY2FuIHRha2UgYWR2YW50YWdlIG9mIG11
bHRpLWNsdXN0ZXIgc3lzdGVtLgo+Pgo+PiBIZXJlLCB3ZSBlbmFibGVkIGFyY2hfdG9wb2xvZ3kg
Zm9yIE1JUFMgYW5kIGFkYXB0ZWQgc29tZSBmdW5jdGlvbnMKPj4gdG8gZml0IGFyY2hfdG9wb2xv
Z3kgc3RydWN0dXJlLgo+PiBBbHNvLCB3ZSBpbXBsbWVudGVkIHNtcF9zdG9yZV9jcHVfaW5mbyB0
byBwcm9iZSBDUFUncyB0b3BvbG9neQo+aW5mb3JtYXRpb24KPj4gYnkgImdsb2JhbG51bWJlciIg
cmVnaXN0ZXJzIGluIFZQIEFTRSBvciBFYmFzZS5DUFVOdW0gZm9yIGxlZ2FjeQo+c3lzdGVtcy4K
Pj4KPj4gU2lnbmVkLW9mZi1ieTogSmlheHVuIFlhbmcgPGppYXh1bi55YW5nQGZseWdvYXQuY29t
Pgo+PiAtLS0KPj4gIGFyY2gvbWlwcy9LY29uZmlnICAgICAgICAgICAgICAgIHwgIDEgKwo+PiAg
YXJjaC9taXBzL2luY2x1ZGUvYXNtL2NwdS1pbmZvLmggfCA0OSAtLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCj4+ICBhcmNoL21pcHMvaW5jbHVkZS9hc20vc21wLmggICAgICB8ICAyIC0tCj4+
ICBhcmNoL21pcHMvaW5jbHVkZS9hc20vdG9wb2xvZ3kuaCB8IDQ4ICsrKysrKysrKysrKysrKysr
KysrKysrKystLS0KPj4gIGFyY2gvbWlwcy9rZXJuZWwvY3B1LXByb2JlLmMgICAgIHwgNDMgLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+PiAgYXJjaC9taXBzL2tlcm5lbC9zZXR1cC5jICAgICAg
ICAgfCAgMSArCj4+ICBhcmNoL21pcHMva2VybmVsL3NtcC5jICAgICAgICAgICB8IDU1Cj4rKysr
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+PiAgYXJjaC9taXBzL2tlcm5lbC90b3BvbG9n
eS5jICAgICAgfCA0MiArKysrKysrKysrKysrKysrKysrKysrKysKPj4gIDggZmlsZXMgY2hhbmdl
ZCwgOTMgaW5zZXJ0aW9ucygrKSwgMTQ4IGRlbGV0aW9ucygtKQo+Pgo+Cj5bLi4uXQo+Cj4+IGRp
ZmYgLS1naXQgYS9hcmNoL21pcHMva2VybmVsL3NldHVwLmMgYi9hcmNoL21pcHMva2VybmVsL3Nl
dHVwLmMKPj4gaW5kZXggOGE0MTg3ODNhNmJiLi5iOWZlZmM1ZGM3MDIgMTAwNjQ0Cj4+IC0tLSBh
L2FyY2gvbWlwcy9rZXJuZWwvc2V0dXAuYwo+PiArKysgYi9hcmNoL21pcHMva2VybmVsL3NldHVw
LmMKPj4gQEAgLTc4NCw2ICs3ODQsNyBAQCB2b2lkIF9faW5pdCBzZXR1cF9hcmNoKGNoYXIgKipj
bWRsaW5lX3ApCj4+ICAJZG1pX3NldHVwKCk7Cj4+Cj4+ICAJcmVzb3VyY2VfaW5pdCgpOwo+PiAr
CWluaXRfY3B1X3RvcG9sb2d5KCk7Cj4+ICAJcGxhdF9zbXBfc2V0dXAoKTsKPj4KPgo+Q29udGlu
dWluZyBteSByZXBseSBvbiBwcmV2aW91cyBwYXRjaCwgSSBzZWUgcG9zc2libGVfY3B1X21hc2sg
YmVpbmcKPnNldCB1cCBpbiBwbGF0X3NtcF9zZXR1cC4gV2h5IG5vdCByZXZlcnNlIHRoZSBvcmRl
ciBhYm92ZS4gRnVydGhlciBJCj5zZWUKPnRoYXQgdGhlIGxvZ2ljYWwtPnBoeXNpY2FsIENQVSBt
YXBwaW5nIGlzIGRvbmUgaW4gcGxhdF9zbXBfc2V0dXAgd2hpY2gKPmlzIHJlcXVpcmVkIHRvIHN0
b3JlL3NhdmUgYW55IHRvcG9sb2d5IGluZm9ybWF0aW9uLgoKU29tZSBwbGF0X3NtcF9zZXR1cCBp
cyB0b3VjaGluZyB0b3BvbG9neSBzbyB3ZSBtdXN0IHJlc2V0IGJlZm9yZSB0aGF0LgoKRm9yIHBs
YXRmb3JtcyBzZXR0aW5nIHBvc3NpYmxlX2NwdSBieSBkZXZpY2V0cmVlIGl0IHBvc3NpYmxlX2Nw
dSB3aWxsCmJlIHNldHVwIGVhcmxpZXIuCgpTZWUgYXJjaC9taXBzL2tlcm5lbC9zbXAtY3BzLmMK
ClRoYW5rcy4KPgo+LS0KPlJlZ2FyZHMsCj5TdWRlZXAKCi0tIApKaWF4dW4gWWFuZwoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wcm9maWxlLWxpc3Qg
bWFpbGluZyBsaXN0Cm9wcm9maWxlLWxpc3RAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8v
bGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wcm9maWxlLWxpc3QK
