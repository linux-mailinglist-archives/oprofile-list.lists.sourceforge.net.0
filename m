Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E696E154B3F
	for <lists+oprofile-list@lfdr.de>; Thu,  6 Feb 2020 19:34:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1izlz5-0002iA-Ne; Thu, 06 Feb 2020 18:34:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexey.budankov@linux.intel.com>) id 1izlrN-0007qn-6C
 for oprofile-list@lists.sourceforge.net; Thu, 06 Feb 2020 18:26:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hm0B2vPHmCGj0VDYuwsnroMAlFQIzATqKnpFaYkSRHQ=; b=c76BTQ47sweD944fl9RLOJKIpT
 s4tfrl6nmzTKN/iAKfrjNXCDqvtLKKE20Z6Fyclz/oZX23B7/kRHndAdBWCzY9rTmiKQ9JoiqDyR/
 M6SgA7Qt/3a4euWFxUyk7ApETu+cFPcljM8SzeWdpySQuG/nPhI1obnW8RaUTIs8S4wU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Hm0B2vPHmCGj0VDYuwsnroMAlFQIzATqKnpFaYkSRHQ=; b=A2U9RoBpqmZC6OZ1moZ2+9G0XB
 Dx4+aP/7KPMkSDEwb+cdiqVaW2yK65j+glCYcZgAn+3ilsUIn78pdgbZ+/yPJyGirp7ix7s0cVEbO
 dME9BKYTIMTKnPf3JnWbDcxLju0TraS4t/QPC+dK+SnoSsmpoi6FG8GtWlIuiDnXJvA8=;
Received: from mga03.intel.com ([134.134.136.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1izlrL-001dzK-5a
 for oprofile-list@lists.sourceforge.net; Thu, 06 Feb 2020 18:26:41 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 10:26:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,410,1574150400"; d="scan'208";a="345053139"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga001.fm.intel.com with ESMTP; 06 Feb 2020 10:26:32 -0800
Received: from [10.251.88.4] (abudanko-mobl.ccr.corp.intel.com [10.251.88.4])
 by linux.intel.com (Postfix) with ESMTP id CA6F05803E3;
 Thu,  6 Feb 2020 10:26:25 -0800 (PST)
Subject: Re: [PATCH v6 01/10] capabilities: introduce CAP_PERFMON to kernel
 and user space
To: Stephen Smalley <sds@tycho.nsa.gov>, James Morris <jmorris@namei.org>,
 Serge Hallyn <serge@hallyn.com>, Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>
References: <576a6141-36d4-14c0-b395-8d195892b916@linux.intel.com>
 <a4c5da70-b6d1-b133-9b64-34e164834b03@linux.intel.com>
 <5be0f67c-17e2-7861-37f3-a0f8a82be8f0@tycho.nsa.gov>
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <1bcb4cb1-98c4-cc1a-b8e3-fd8a0e1e606f@linux.intel.com>
Date: Thu, 6 Feb 2020 21:26:24 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <5be0f67c-17e2-7861-37f3-a0f8a82be8f0@tycho.nsa.gov>
Content-Language: en-US
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nsa.gov]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1izlrL-001dzK-5a
X-Mailman-Approved-At: Thu, 06 Feb 2020 18:34:37 +0000
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
Cc: Andi Kleen <ak@linux.intel.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Igor Lubashev <ilubashe@akamai.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, oprofile-list@lists.sf.net,
 Thomas Gleixner <tglx@linutronix.de>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: oprofile-list-bounces@lists.sourceforge.net

Ck9uIDA2LjAyLjIwMjAgMjE6MjMsIFN0ZXBoZW4gU21hbGxleSB3cm90ZToKPiBPbiAyLzUvMjAg
MTI6MzAgUE0sIEFsZXhleSBCdWRhbmtvdiB3cm90ZToKPj4KPj4gSW50cm9kdWNlIENBUF9QRVJG
TU9OIGNhcGFiaWxpdHkgZGVzaWduZWQgdG8gc2VjdXJlIHN5c3RlbSBwZXJmb3JtYW5jZQo+PiBt
b25pdG9yaW5nIGFuZCBvYnNlcnZhYmlsaXR5IG9wZXJhdGlvbnMgc28gdGhhdCBDQVBfUEVSRk1P
TiB3b3VsZCBhc3Npc3QKPj4gQ0FQX1NZU19BRE1JTiBjYXBhYmlsaXR5IGluIGl0cyBnb3Zlcm5p
bmcgcm9sZSBmb3IgcGVyZm9ybWFuY2UgbW9uaXRvcmluZwo+PiBhbmQgb2JzZXJ2YWJpbGl0eSBz
dWJzeXN0ZW1zLgo+Pgo+PiBDQVBfUEVSRk1PTiBoYXJkZW5zIHN5c3RlbSBzZWN1cml0eSBhbmQg
aW50ZWdyaXR5IGR1cmluZyBwZXJmb3JtYW5jZQo+PiBtb25pdG9yaW5nIGFuZCBvYnNlcnZhYmls
aXR5IG9wZXJhdGlvbnMgYnkgZGVjcmVhc2luZyBhdHRhY2sgc3VyZmFjZSB0aGF0Cj4+IGlzIGF2
YWlsYWJsZSB0byBhIENBUF9TWVNfQURNSU4gcHJpdmlsZWdlZCBwcm9jZXNzIFsyXS4gUHJvdmlk
aW5nIHRoZSBhY2Nlc3MKPj4gdG8gc3lzdGVtIHBlcmZvcm1hbmNlIG1vbml0b3JpbmcgYW5kIG9i
c2VydmFiaWxpdHkgb3BlcmF0aW9ucyB1bmRlciBDQVBfUEVSRk1PTgo+PiBjYXBhYmlsaXR5IHNp
bmdseSwgd2l0aG91dCB0aGUgcmVzdCBvZiBDQVBfU1lTX0FETUlOIGNyZWRlbnRpYWxzLCBleGNs
dWRlcwo+PiBjaGFuY2VzIHRvIG1pc3VzZSB0aGUgY3JlZGVudGlhbHMgYW5kIG1ha2VzIHRoZSBv
cGVyYXRpb24gbW9yZSBzZWN1cmUuCj4+IFRodXMsIENBUF9QRVJGTU9OIGltcGxlbWVudHMgdGhl
IHByaW5jaXBhbCBvZiBsZWFzdCBwcml2aWxlZ2UgZm9yIHBlcmZvcm1hbmNlCj4+IG1vbml0b3Jp
bmcgYW5kIG9ic2VydmFiaWxpdHkgb3BlcmF0aW9ucyAoUE9TSVggSUVFRSAxMDAzLjFlOiAyLjIu
Mi4zOSBwcmluY2lwbGUKPj4gb2YgbGVhc3QgcHJpdmlsZWdlOiBBIHNlY3VyaXR5IGRlc2lnbiBw
cmluY2lwbGUgdGhhdCBzdGF0ZXMgdGhhdCBhIHByb2Nlc3MKPj4gb3IgcHJvZ3JhbSBiZSBncmFu
dGVkIG9ubHkgdGhvc2UgcHJpdmlsZWdlcyAoZS5nLiwgY2FwYWJpbGl0aWVzKSBuZWNlc3NhcnkK
Pj4gdG8gYWNjb21wbGlzaCBpdHMgbGVnaXRpbWF0ZSBmdW5jdGlvbiwgYW5kIG9ubHkgZm9yIHRo
ZSB0aW1lIHRoYXQgc3VjaAo+PiBwcml2aWxlZ2VzIGFyZSBhY3R1YWxseSByZXF1aXJlZCkKPj4K
Pj4gQ0FQX1BFUkZNT04gbWVldHMgdGhlIGRlbWFuZCB0byBzZWN1cmUgc3lzdGVtIHBlcmZvcm1h
bmNlIG1vbml0b3JpbmcgYW5kCj4+IG9ic2VydmFiaWxpdHkgb3BlcmF0aW9ucyBmb3IgYWRvcHRp
b24gaW4gc2VjdXJpdHkgc2Vuc2l0aXZlLCByZXN0cmljdGVkLAo+PiBtdWx0aXVzZXIgcHJvZHVj
dGlvbiBlbnZpcm9ubWVudHMgKGUuZy4gSFBDIGNsdXN0ZXJzLCBjbG91ZCBhbmQgdmlydHVhbCBj
b21wdXRlCj4+IGVudmlyb25tZW50cyksIHdoZXJlIHJvb3Qgb3IgQ0FQX1NZU19BRE1JTiBjcmVk
ZW50aWFscyBhcmUgbm90IGF2YWlsYWJsZSB0bwo+PiBtYXNzIHVzZXJzIG9mIGEgc3lzdGVtLCBh
bmQgc2VjdXJlbHkgdW5ibG9ja3MgYWNjZXNzaWJpbGl0eSBvZiBzeXN0ZW0gcGVyZm9ybWFuY2Ug
bW9uaXRvcmluZyBhbmQgb2JzZXJ2YWJpbGl0eSBvcGVyYXRpb25zIGJleW9uZCByb290IGFuZCBD
QVBfU1lTX0FETUlOIHVzZSBjYXNlcy4KPj4KPj4gQ0FQX1BFUkZNT04gdGFrZXMgb3ZlciBDQVBf
U1lTX0FETUlOIGNyZWRlbnRpYWxzIHJlbGF0ZWQgdG8gc3lzdGVtIHBlcmZvcm1hbmNlCj4+IG1v
bml0b3JpbmcgYW5kIG9ic2VydmFiaWxpdHkgb3BlcmF0aW9ucyBhbmQgYmFsYW5jZXMgYW1vdW50
IG9mIENBUF9TWVNfQURNSU4KPj4gY3JlZGVudGlhbHMgZm9sbG93aW5nIHRoZSByZWNvbW1lbmRh
dGlvbnMgaW4gdGhlIGNhcGFiaWxpdGllcyBtYW4gcGFnZSBbMV0KPj4gZm9yIENBUF9TWVNfQURN
SU46ICJOb3RlOiB0aGlzIGNhcGFiaWxpdHkgaXMgb3ZlcmxvYWRlZDsgc2VlIE5vdGVzIHRvIGtl
cm5lbAo+PiBkZXZlbG9wZXJzLCBiZWxvdy4iIEZvciBiYWNrd2FyZCBjb21wYXRpYmlsaXR5IHJl
YXNvbnMgYWNjZXNzIHRvIHN5c3RlbQo+PiBwZXJmb3JtYW5jZSBtb25pdG9yaW5nIGFuZCBvYnNl
cnZhYmlsaXR5IHN1YnN5c3RlbXMgb2YgdGhlIGtlcm5lbCByZW1haW5zCj4+IG9wZW4gZm9yIENB
UF9TWVNfQURNSU4gcHJpdmlsZWdlZCBwcm9jZXNzZXMgYnV0IENBUF9TWVNfQURNSU4gY2FwYWJp
bGl0eQo+PiB1c2FnZSBmb3Igc2VjdXJlIHN5c3RlbSBwZXJmb3JtYW5jZSBtb25pdG9yaW5nIGFu
ZCBvYnNlcnZhYmlsaXR5IG9wZXJhdGlvbnMKPj4gaXMgZGlzY291cmFnZWQgd2l0aCByZXNwZWN0
IHRvIHRoZSBkZXNpZ25lZCBDQVBfUEVSRk1PTiBjYXBhYmlsaXR5Lgo+Pgo+PiBBbHRob3VnaCB0
aGUgc29mdHdhcmUgcnVubmluZyB1bmRlciBDQVBfUEVSRk1PTiBjYW4gbm90IGVuc3VyZSBhdm9p
ZGFuY2UKPj4gb2YgcmVsYXRlZCBoYXJkd2FyZSBpc3N1ZXMsIHRoZSBzb2Z0d2FyZSBjYW4gc3Rp
bGwgbWl0aWdhdGUgdGhlc2UgaXNzdWVzCj4+IGZvbGxvd2luZyB0aGUgb2ZmaWNpYWwgaGFyZHdh
cmUgaXNzdWVzIG1pdGlnYXRpb24gcHJvY2VkdXJlIFsyXS4gVGhlIGJ1Z3MKPj4gaW4gdGhlIHNv
ZnR3YXJlIGl0c2VsZiBjYW4gYmUgZml4ZWQgZm9sbG93aW5nIHRoZSBzdGFuZGFyZCBrZXJuZWwg
ZGV2ZWxvcG1lbnQKPj4gcHJvY2VzcyBbM10gdG8gbWFpbnRhaW4gYW5kIGhhcmRlbiBzZWN1cml0
eSBvZiBzeXN0ZW0gcGVyZm9ybWFuY2UgbW9uaXRvcmluZwo+PiBhbmQgb2JzZXJ2YWJpbGl0eSBv
cGVyYXRpb25zLgo+Pgo+PiBbMV0gaHR0cDovL21hbjcub3JnL2xpbnV4L21hbi1wYWdlcy9tYW43
L2NhcGFiaWxpdGllcy43Lmh0bWwKPj4gWzJdIGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0
bWwvbGF0ZXN0L3Byb2Nlc3MvZW1iYXJnb2VkLWhhcmR3YXJlLWlzc3Vlcy5odG1sCj4+IFszXSBo
dHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL2xhdGVzdC9hZG1pbi1ndWlkZS9zZWN1cml0
eS1idWdzLmh0bWwKPj4KPj4gU2lnbmVkLW9mZi1ieTogQWxleGV5IEJ1ZGFua292IDxhbGV4ZXku
YnVkYW5rb3ZAbGludXguaW50ZWwuY29tPgo+IAo+IFRoaXMgd2lsbCByZXF1aXJlIGEgc21hbGwg
dXBkYXRlIHRvIHRoZSBzZWxpbnV4LXRlc3RzdWl0ZSB0byBjb3JyZWN0bHkgcmVmbGVjdCB0aGUg
bmV3IGNhcGFiaWxpdHkgcmVxdWlyZW1lbnRzLCBidXQgdGhhdCdzIGVhc3kgZW5vdWdoLgoKSXMg
dGhlIHN1aXRlIGEgcGFydCBvZiB0aGUga2VybmVsIHNvdXJjZXMgb3Igc29tZXRoaW5nIGVsc2U/
Cgp+QWxleGV5Cgo+IAo+IEFja2VkLWJ5OiBTdGVwaGVuIFNtYWxsZXkgPHNkc0B0eWNoby5uc2Eu
Z292Pgo+IAo+PiAtLS0KPj4gwqAgaW5jbHVkZS9saW51eC9jYXBhYmlsaXR5LmjCoMKgwqDCoMKg
wqDCoMKgwqAgfCA0ICsrKysKPj4gwqAgaW5jbHVkZS91YXBpL2xpbnV4L2NhcGFiaWxpdHkuaMKg
wqDCoMKgIHwgOCArKysrKysrLQo+PiDCoCBzZWN1cml0eS9zZWxpbnV4L2luY2x1ZGUvY2xhc3Nt
YXAuaCB8IDQgKystLQo+PiDCoCAzIGZpbGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDMg
ZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2NhcGFiaWxpdHku
aCBiL2luY2x1ZGUvbGludXgvY2FwYWJpbGl0eS5oCj4+IGluZGV4IGVjY2UwZjQzYzczYS4uMDI3
ZDdlNGE4NTNiIDEwMDY0NAo+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L2NhcGFiaWxpdHkuaAo+PiAr
KysgYi9pbmNsdWRlL2xpbnV4L2NhcGFiaWxpdHkuaAo+PiBAQCAtMjUxLDYgKzI1MSwxMCBAQCBl
eHRlcm4gYm9vbCBwcml2aWxlZ2VkX3dydF9pbm9kZV91aWRnaWQoc3RydWN0IHVzZXJfbmFtZXNw
YWNlICpucywgY29uc3Qgc3RydWN0Cj4+IMKgIGV4dGVybiBib29sIGNhcGFibGVfd3J0X2lub2Rl
X3VpZGdpZChjb25zdCBzdHJ1Y3QgaW5vZGUgKmlub2RlLCBpbnQgY2FwKTsKPj4gwqAgZXh0ZXJu
IGJvb2wgZmlsZV9uc19jYXBhYmxlKGNvbnN0IHN0cnVjdCBmaWxlICpmaWxlLCBzdHJ1Y3QgdXNl
cl9uYW1lc3BhY2UgKm5zLCBpbnQgY2FwKTsKPj4gwqAgZXh0ZXJuIGJvb2wgcHRyYWNlcl9jYXBh
YmxlKHN0cnVjdCB0YXNrX3N0cnVjdCAqdHNrLCBzdHJ1Y3QgdXNlcl9uYW1lc3BhY2UgKm5zKTsK
Pj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBwZXJmbW9uX2NhcGFibGUodm9pZCkKPj4gK3sKPj4gK8Kg
wqDCoCByZXR1cm4gY2FwYWJsZShDQVBfUEVSRk1PTikgfHwgY2FwYWJsZShDQVBfU1lTX0FETUlO
KTsKPj4gK30KPj4gwqAgwqAgLyogYXVkaXQgc3lzdGVtIHdhbnRzIHRvIGdldCBjYXAgaW5mbyBm
cm9tIGZpbGVzIGFzIHdlbGwgKi8KPj4gwqAgZXh0ZXJuIGludCBnZXRfdmZzX2NhcHNfZnJvbV9k
aXNrKGNvbnN0IHN0cnVjdCBkZW50cnkgKmRlbnRyeSwgc3RydWN0IGNwdV92ZnNfY2FwX2RhdGEg
KmNwdV9jYXBzKTsKPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9saW51eC9jYXBhYmlsaXR5
LmggYi9pbmNsdWRlL3VhcGkvbGludXgvY2FwYWJpbGl0eS5oCj4+IGluZGV4IDI0MGZkYjlhNjBm
Ni4uOGI0MTZlNWYzYWZhIDEwMDY0NAo+PiAtLS0gYS9pbmNsdWRlL3VhcGkvbGludXgvY2FwYWJp
bGl0eS5oCj4+ICsrKyBiL2luY2x1ZGUvdWFwaS9saW51eC9jYXBhYmlsaXR5LmgKPj4gQEAgLTM2
Niw4ICszNjYsMTQgQEAgc3RydWN0IHZmc19uc19jYXBfZGF0YSB7Cj4+IMKgIMKgICNkZWZpbmUg
Q0FQX0FVRElUX1JFQUTCoMKgwqDCoMKgwqDCoCAzNwo+PiDCoCArLyoKPj4gKyAqIEFsbG93IHN5
c3RlbSBwZXJmb3JtYW5jZSBhbmQgb2JzZXJ2YWJpbGl0eSBwcml2aWxlZ2VkIG9wZXJhdGlvbnMK
Pj4gKyAqIHVzaW5nIHBlcmZfZXZlbnRzLCBpOTE1X3BlcmYgYW5kIG90aGVyIGtlcm5lbCBzdWJz
eXN0ZW1zCj4+ICsgKi8KPj4gKwo+PiArI2RlZmluZSBDQVBfUEVSRk1PTsKgwqDCoMKgwqDCoMKg
IDM4Cj4+IMKgIC0jZGVmaW5lIENBUF9MQVNUX0NBUMKgwqDCoMKgwqDCoMKgwqAgQ0FQX0FVRElU
X1JFQUQKPj4gKyNkZWZpbmUgQ0FQX0xBU1RfQ0FQwqDCoMKgwqDCoMKgwqDCoCBDQVBfUEVSRk1P
Tgo+PiDCoCDCoCAjZGVmaW5lIGNhcF92YWxpZCh4KSAoKHgpID49IDAgJiYgKHgpIDw9IENBUF9M
QVNUX0NBUCkKPj4gwqAgZGlmZiAtLWdpdCBhL3NlY3VyaXR5L3NlbGludXgvaW5jbHVkZS9jbGFz
c21hcC5oIGIvc2VjdXJpdHkvc2VsaW51eC9pbmNsdWRlL2NsYXNzbWFwLmgKPj4gaW5kZXggN2Ri
MjQ4NTVlMTJkLi5jNTk5YjBjMmIwZTcgMTAwNjQ0Cj4+IC0tLSBhL3NlY3VyaXR5L3NlbGludXgv
aW5jbHVkZS9jbGFzc21hcC5oCj4+ICsrKyBiL3NlY3VyaXR5L3NlbGludXgvaW5jbHVkZS9jbGFz
c21hcC5oCj4+IEBAIC0yNyw5ICsyNyw5IEBACj4+IMKgwqDCoMKgwqDCoMKgwqDCoCAiYXVkaXRf
Y29udHJvbCIsICJzZXRmY2FwIgo+PiDCoCDCoCAjZGVmaW5lIENPTU1PTl9DQVAyX1BFUk1TwqAg
Im1hY19vdmVycmlkZSIsICJtYWNfYWRtaW4iLCAic3lzbG9nIiwgXAo+PiAtwqDCoMKgwqDCoMKg
wqAgIndha2VfYWxhcm0iLCAiYmxvY2tfc3VzcGVuZCIsICJhdWRpdF9yZWFkIgo+PiArwqDCoMKg
wqDCoMKgwqAgIndha2VfYWxhcm0iLCAiYmxvY2tfc3VzcGVuZCIsICJhdWRpdF9yZWFkIiwgInBl
cmZtb24iCj4+IMKgIC0jaWYgQ0FQX0xBU1RfQ0FQID4gQ0FQX0FVRElUX1JFQUQKPj4gKyNpZiBD
QVBfTEFTVF9DQVAgPiBDQVBfUEVSRk1PTgo+PiDCoCAjZXJyb3IgTmV3IGNhcGFiaWxpdHkgZGVm
aW5lZCwgcGxlYXNlIHVwZGF0ZSBDT01NT05fQ0FQMl9QRVJNUy4KPj4gwqAgI2VuZGlmCj4+IMKg
Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3By
b2ZpbGUtbGlzdCBtYWlsaW5nIGxpc3QKb3Byb2ZpbGUtbGlzdEBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3Byb2ZpbGUt
bGlzdAo=
