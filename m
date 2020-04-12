Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E8ECC1A67DB
	for <lists+oprofile-list@lfdr.de>; Mon, 13 Apr 2020 16:20:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=From:Message-Id:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:MIME-Version:References:In-Reply-To:Date:
	Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0Jurv7Obwb69FK2iAJqbyRQfkJtITMaX5zy7z17DGEw=; b=nQ8YWMX7p2qkbN3OS4rA9xqGc1
	Fmf/gq5HxBGaMSLmgASxL+yUFsua6b+/eFeJidAysZWVczAsHYmJuI/hIoo/xNezSDv/y/UAhLzOD
	oUEXJ47nYX0C7DIsNouLkKqhyPmlM/SAltSrBBoqJ2qfI4Wd8Dvf8nmxzRWY6VhPPa6o=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jNzxG-0001iR-Mj; Mon, 13 Apr 2020 14:20:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiaxun.yang@flygoat.com>) id 1jNZGG-0002Uc-MR
 for oprofile-list@lists.sourceforge.net; Sun, 12 Apr 2020 09:50:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=CC:To:Subject:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Date:From:Sender:Reply-To:
 Message-ID:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i9SPmH6pAMbmIOTDruOUyXnZy7OjY53AA5gy/xbjSgI=; b=BLxkuMVVK2El2IQ1mU4pfXK+oc
 kr0iNJwBpDrKjUnRZ4N95AW+H/z1I724RBe96vvv0nTrTBOwd14IQ0L07L9Zen73FvIvJiFOyCueD
 6veJ0//J0Ao9BZeV/wn/d4AWPU/bnDCG91HIWY0prERFTUMkxjP0x0ls0VE1nAdhTYBQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=CC:To:Subject:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:In-Reply-To:Date:From:Sender:Reply-To:Message-ID:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i9SPmH6pAMbmIOTDruOUyXnZy7OjY53AA5gy/xbjSgI=; b=DYo2XFOw6CSr2y8eFJ47utbiDB
 4eSR3OSM+5zrnAhppaQixyLgDH09J+8dzuJtjW+lUgQOgQxLTK0V7hxvvOlUWTtLJ3+h+9pE5CQ7U
 hFgNkaY18jM0lNFMs3B6316s5HmZ00EO7ByKe9eo+6RsbOwj1DoIB1Xu5jWsDRCqObGA=;
Received: from sender3-op-o12.zoho.com.cn ([124.251.121.243])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jNZGB-00C8au-He
 for oprofile-list@lists.sourceforge.net; Sun, 12 Apr 2020 09:50:44 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1586684856; cv=none; d=zoho.com.cn; s=zohoarc; 
 b=qBG18JWBcAqU4Z54xE/J3uLYAKZR2zjBqTo4DdVvtpyQjtxAyiqzya/ltkMHfSAdHTkBWiwsCh50PCgsLZ8s6whPtJGhxgczuexNGUyJcIL/X5+YWCzxuJwsxyTqgDN2wbdcpSQSvwCQDovykY4mcmVVC+m/euFhVLylw/G9lGA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com.cn;
 s=zohoarc; t=1586684856;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=RIYk80wenKFYv8VikD4ikazmjBVWfzuMMZfdBSoJTnM=; 
 b=X7ZIut0GUhy7z3LkomqH8w+2CayFylCHv47CB380XrWeZhGC0KexSgSl7NbPA+kt/E1PH44wief0+dwUDk3JNRtdhBSDh5HeiGVvcnVLV9u11n4orAjAHP91EnZoAXP1C4V/74dfcZThqzz5HiLOR5Cp/5myMiIgpDKLypP8Fe8=
ARC-Authentication-Results: i=1; mx.zoho.com.cn;
 dkim=pass  header.i=flygoat.com;
 spf=pass  smtp.mailfrom=jiaxun.yang@flygoat.com;
 dmarc=pass header.from=<jiaxun.yang@flygoat.com>
 header.from=<jiaxun.yang@flygoat.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1586684856; 
 s=mail; d=flygoat.com; i=jiaxun.yang@flygoat.com;
 h=Date:In-Reply-To:References:MIME-Version:Content-Type:Content-Transfer-Encoding:Subject:To:CC:From:Message-ID;
 bh=RIYk80wenKFYv8VikD4ikazmjBVWfzuMMZfdBSoJTnM=;
 b=fvw9WiuN8kKREX1yFmqumCfCBgbhKOBrk3nXVUCBP5+7x2cwWaA/9xYEV66MP3ub
 zj/HAVTLAsby6Q5gkgvzNLXCAcUCRodlIL2OQTx2+vP7pQc8G2BiE33wWYE3NH6//7Z
 jHceYFXOvrhq/JwxJaf4JffSPILm/sm8qLdELhDk=
Received: from [26.26.26.1] (122.235.212.87 [122.235.212.87]) by mx.zoho.com.cn
 with SMTPS id 1586684852657719.6809540036462;
 Sun, 12 Apr 2020 17:47:32 +0800 (CST)
Date: Sun, 12 Apr 2020 17:47:30 +0800
User-Agent: K-9 Mail for Android
In-Reply-To: <20200412103908.2594483d@why>
References: <20200412032123.3896114-6-jiaxun.yang@flygoat.com>
 <202004121349.xFzTOGS4%lkp@intel.com> <20200412154927.7ac453d5@flygoat-x1e>
 <20200412103908.2594483d@why>
MIME-Version: 1.0
Subject: Re: [PATCH v2 05/11] MIPS: Switch to arch_topology
To: Marc Zyngier <maz@kernel.org>
X-Spam-Score: 2.2 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mips.com]
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
X-Headers-End: 1jNZGB-00C8au-He
X-Mailman-Approved-At: Mon, 13 Apr 2020 14:20:51 +0000
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
 Paul Cercueil <paul@crapouillou.net>, Huacai Chen <chenhc@lemote.com>,
 Jiri Olsa <jolsa@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 kbuild test robot <lkp@intel.com>, Paul Burton <paulburton@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>,
 Vladimir Kondratiev <vladimir.kondratiev@intel.com>,
 Robert Richter <rric@kernel.org>, Jason Cooper <jason@lakedaemon.net>, Zhou,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Namhyung Kim <namhyung@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, kbuild-all@lists.01.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: oprofile-list-bounces@lists.sourceforge.net
Message-Id: <E1jNzxG-0001iR-Mj@sfs-ml-3.v29.lw.sourceforge.com>
From: oprofile-list-bounces@lists.sourceforge.net

WWFuamllIDx6aG91eWFuamllQHpvaG8uY29tPiw9P1VURi04P0I/SU9XUnFPZVFzT2Fkc0NBb1dt
aHZkU0JaWVc1cWFXVXBJQ0FnSUNBZ0lDQT0/PSA8emhvdXlhbmppZUB3YW55ZWV0ZWNoLmNvbT4s
WXVuUWlhbmcgU3UgPHN5cUBkZWJpYW4ub3JnPixBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRl
PixTZXJnZSBTZW1pbiA8ZmFuY2VyLmxhbmNlckBnbWFpbC5jb20+LE1hdHQgUmVkZmVhcm4gPG1h
dHQucmVkZmVhcm5AbWlwcy5jb20+LFN0ZXZlIFdpbnNsb3cgPHN3aW5zbG93QGdtYWlsLmNvbT4s
QWxleGlvcyBaYXZyYXMgPGFsZXhpb3MuemF2cmFzQGludGVsLmNvbT4sUmljaGFyZCBGb250YW5h
IDxyZm9udGFuYUByZWRoYXQuY29tPixQZXRlciBYdSA8cGV0ZXJ4QHJlZGhhdC5jb20+LGFmemFs
IG1vaGFtbWVkIDxhZnphbC5tb2hkLm1hQGdtYWlsLmNvbT4sS2FtYWwgRGFzdSA8a2Rhc3Uua2Rl
dkBnbWFpbC5jb20+LE9sZWtzaWogUmVtcGVsIDxsaW51eEByZW1wZWwtcHJpdmF0LmRlPixsaW51
eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnLGJjbS1rZXJuZWwtZmVlZGJhY2stbGlzdEBicm9hZGNv
bS5jb20sb3Byb2ZpbGUtbGlzdEBsaXN0cy5zZi5uZXQsbGludXgtcG1Admdlci5rZXJuZWwub3Jn
CkZyb206IEppYXh1biBZYW5nIDxqaWF4dW4ueWFuZ0BmbHlnb2F0LmNvbT4KQmNjOiBvcHJvZmls
ZS1saXN0QGxpc3RzLnNmLm5ldApNZXNzYWdlLUlEOiA8OTM4NTJBQzMtMjVBMS00OTUyLTgyOUIt
QzYxRDUxNzNGN0Y0QGZseWdvYXQuY29tPgpYLVpvaG9DTk1haWxDbGllbnQ6IEV4dGVybmFsCgoK
CuS6jiAyMDIw5bm0NOaciDEy5pelIEdNVCswODowMCDkuIvljYg1OjM5OjA4LCBNYXJjIFp5bmdp
ZXIgPG1hekBrZXJuZWwub3JnPiDlhpnliLA6Cj5PbiBTdW4sIDEyIEFwciAyMDIwIDE1OjQ5OjI3
ICswODAwCj5KaWF4dW4gWWFuZyA8amlheHVuLnlhbmdAZmx5Z29hdC5jb20+IHdyb3RlOgo+Cj4+
IE9uIFN1biwgMTIgQXByIDIwMjAgMTM6MjQ6MjEgKzA4MDAKPj4ga2J1aWxkIHRlc3Qgcm9ib3Qg
PGxrcEBpbnRlbC5jb20+IHdyb3RlOgo+PiAKPj4gPiBIaSBKaWF4dW4sCj4+ID4gCj4+ID4gSSBs
b3ZlIHlvdXIgcGF0Y2ghIFlldCBzb21ldGhpbmcgdG8gaW1wcm92ZToKPj4gPiAKPj4gPiBbYXV0
byBidWlsZCB0ZXN0IEVSUk9SIG9uIGRyaXZlci1jb3JlL2RyaXZlci1jb3JlLXRlc3RpbmddCj4+
ID4gW2Fsc28gYnVpbGQgdGVzdCBFUlJPUiBvbiBwbS9saW51eC1uZXh0IGxpbnVzL21hc3RlciBu
ZXh0LTIwMjAwNDExXQo+PiA+IFtjYW5ub3QgYXBwbHkgdG8gdGlwL3BlcmYvY29yZSB0aXAvaXJx
L2NvcmUgdjUuNl0KPj4gPiBbaWYgeW91ciBwYXRjaCBpcyBhcHBsaWVkIHRvIHRoZSB3cm9uZyBn
aXQgdHJlZSwgcGxlYXNlIGRyb3AgdXMgYQo+PiA+IG5vdGUgdG8gaGVscCBpbXByb3ZlIHRoZSBz
eXN0ZW0uIEJUVywgd2UgYWxzbyBzdWdnZXN0IHRvIHVzZQo+Jy0tYmFzZScKPj4gPiBvcHRpb24g
dG8gc3BlY2lmeSB0aGUgYmFzZSB0cmVlIGluIGdpdCBmb3JtYXQtcGF0Y2gsIHBsZWFzZSBzZWUK
Pj4gPiBodHRwczovL3N0YWNrb3ZlcmZsb3cuY29tL2EvMzc0MDY5ODJdCj4+ID4gCj4+ID4gdXJs
Ogo+PiA+Cj5odHRwczovL2dpdGh1Yi5jb20vMGRheS1jaS9saW51eC9jb21taXRzL0ppYXh1bi1Z
YW5nL01JUFMtVG9wb2xvZ3ktRGV2aWNlVHJlZS1DUFUtcmV3b3JrLXYyLzIwMjAwNDEyLTExMzMw
OAo+PiA+IGJhc2U6Cj4+ID4KPmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9r
ZXJuZWwvZ2l0L2dyZWdraC9kcml2ZXItY29yZS5naXQKPj4gPiBhMTBjOWM3MTBmOWVjZWE4N2I5
ZjRiYmI4Mzc0Njc4OTNiNGJlZjAxIGNvbmZpZzogbWlwcy1hbGxub2NvbmZpZwo+PiA+IChhdHRh
Y2hlZCBhcyAuY29uZmlnKSBjb21waWxlcjogbWlwcy1saW51eC1nY2MgKEdDQykgOS4zLjAKPnJl
cHJvZHVjZToKPj4gPiB3Z2V0Cj4+ID4KPmh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNv
bS9pbnRlbC9sa3AtdGVzdHMvbWFzdGVyL3NiaW4vbWFrZS5jcm9zcwo+PiA+IC1PIH4vYmluL21h
a2UuY3Jvc3MgY2htb2QgK3ggfi9iaW4vbWFrZS5jcm9zcyAjIHNhdmUgdGhlIGF0dGFjaGVkCj4+
ID4gLmNvbmZpZyB0byBsaW51eCBidWlsZCB0cmVlIEdDQ19WRVJTSU9OPTkuMy4wIG1ha2UuY3Jv
c3MgQVJDSD1taXBzIAo+PiA+IAo+PiA+IElmIHlvdSBmaXggdGhlIGlzc3VlLCBraW5kbHkgYWRk
IGZvbGxvd2luZyB0YWcgYXMgYXBwcm9wcmlhdGUKPj4gPiBSZXBvcnRlZC1ieToga2J1aWxkIHRl
c3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4+ID4gCj4+ID4gTm90ZTogdGhlCj4+ID4KPmxpbnV4
LXJldmlldy9KaWF4dW4tWWFuZy9NSVBTLVRvcG9sb2d5LURldmljZVRyZWUtQ1BVLXJld29yay12
Mi8yMDIwMDQxMi0xMTMzMDgKPj4gPiBIRUFEIDhlOGU5ZDRmN2FhNzQzNTlmMjE5OTc3Mzc4NmZm
ZTJmYmI3ODc3ZDAgYnVpbGRzIGZpbmUuIEl0IG9ubHkKPj4gPiBodXJ0cyBiaXNlY3RpYmlsaXR5
Lgo+PiA+ICAgCj4+IEhpIGFsbCwKPj4gCj4+IEluIHRoaXMgY2FzZSBJIHRoaW5rIGl0IHNob3Vs
ZCBiZSBmaW5lIHRvIGJyZWFrIGJpc2VjdCwgb3RoZXJ3aXNlICMwNQo+PiB3aWxsIGNvbWJpbmUg
dG9vIG1hbnkgbW9kaWZpY2F0aW9ucyBpbiBkaWZmZXJlbnQgc3Vic3lzdGVtcy4KPgo+Tm8uIEl0
IGlzIG5ldmVyIE9LIHRvIGJyZWFrIGJpc2VjdGlvbiwgc3BlY2lhbGx5IHdoZW4gaXQgYWZmZWN0
cyBhCj53aG9sZSBhcmNoaXRlY3R1cmUuCgpJJ2QgdGhlbiBzcXVhc2ggYWxsIHRoZSBjaGFuZ2Vz
IHRvICM1LgoKQSBncmFkdWFsIGNoYW5nZXMgc2VlbXMgaW1wb3NzaWJsZSBpbiB0aGlzICBjYXNl
LgoKVGhhbmtzLgoKPgo+V2UgaW50cm9kdWNlIGdyYWR1YWwgY2hhbmdlcyBvdmVyIG11bHRpcGxl
IHN1YnN5c3RlbXMgYWxsIHRoZSB0aW1lIGJ5Cj51c2luZyBjb25maWd1cmF0aW9uIHN5bWJvbHMs
IG5vIG1hdHRlciB0aGUgbnVtYmVyIG9mIHBhdGNoZXMuIFllcywgaXQKPmlzCj5zb21ldGltZXMg
aGFyZC4gQnV0IGJyZWFraW5nIHRoZSBrZXJuZWwgYW5kIGZvcmNpbmcgZXZlcnlvbmUgZWxzZSB0
bwo+anVzdCBkZWFsIHdpdGggaXQgaXMgbm90IGFjY2VwdGFibGUuCj4KPlRoYW5rcywKPgo+CU0u
CgotLSAKSmlheHVuIFlhbmcKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpvcHJvZmlsZS1saXN0IG1haWxpbmcgbGlzdApvcHJvZmlsZS1saXN0QGxpc3Rz
LnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0
aW5mby9vcHJvZmlsZS1saXN0Cg==
