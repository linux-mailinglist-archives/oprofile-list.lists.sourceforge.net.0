Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1AD15B2B3
	for <lists+oprofile-list@lfdr.de>; Wed, 12 Feb 2020 22:27:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1j1zXJ-0000tv-Dv; Wed, 12 Feb 2020 21:27:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexey.budankov@linux.intel.com>) id 1j1uh6-0001bp-4X
 for oprofile-list@lists.sourceforge.net; Wed, 12 Feb 2020 16:16:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kj51z6dViRGt9Z8fMvbXrmE9gOfBlhE6/XqF8IHTYwA=; b=Wi/D+lSQFg+QtB7M7gBOmv5dfv
 USKQH2WSi73D60yMgVxRUWTgDDS9gJZITsYlRFhyEQiHtdDaHFK/3D5Vc9O77UGXhxk13PnKO+wIW
 myGOVqKYRPKjBHOf0RSjFZUy1jd9rsJ6anmpLNSa6Y0kjzTzHjzpY1QY8h57/QKKJkvc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kj51z6dViRGt9Z8fMvbXrmE9gOfBlhE6/XqF8IHTYwA=; b=jw/hMgSNaC+35NqoOwNNZSHKDy
 br+eDeVgB84JIWDKKVxGwkwmUC29RWChlLKERYF1oR7v1H/sGED+L13RxSR1JGhgoh39coNbOiFLB
 IBuf9wQH7rmPMCKS7BkrExwRPM0kzpEiJZjyPdCKnnLOZwMZOFvpSjDRx0mx6F9BTOd8=;
Received: from mga09.intel.com ([134.134.136.24])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j1uh0-001SAX-MZ
 for oprofile-list@lists.sourceforge.net; Wed, 12 Feb 2020 16:16:54 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 08:16:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; d="scan'208";a="237749520"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga006.jf.intel.com with ESMTP; 12 Feb 2020 08:16:42 -0800
Received: from [10.252.13.176] (abudanko-mobl.ccr.corp.intel.com
 [10.252.13.176])
 by linux.intel.com (Postfix) with ESMTP id F2D1D5803DA;
 Wed, 12 Feb 2020 08:16:32 -0800 (PST)
Subject: Re: [PATCH v5 01/10] capabilities: introduce CAP_PERFMON to kernel
 and user space
To: Stephen Smalley <sds@tycho.nsa.gov>
References: <0548c832-7f4b-dc4c-8883-3f2b6d351a08@linux.intel.com>
 <9b77124b-675d-5ac7-3741-edec575bd425@linux.intel.com>
 <64cab472-806e-38c4-fb26-0ffbee485367@tycho.nsa.gov>
 <05297eff-8e14-ccdf-55a4-870c64516de8@linux.intel.com>
 <CAADnVQK-JzK-GUk4KOozn4c1xr=7TiCpB9Fi0QDC9nE6iVn8iQ@mail.gmail.com>
 <537bdb28-c9e4-f44f-d665-25250065a6bb@linux.intel.com>
 <63d9700f-231d-7973-5307-3e56a48c54cb@linux.intel.com>
 <d7213569-9578-7201-6106-f5ebc95bd6be@tycho.nsa.gov>
 <2e38c33d-f085-1320-8cc2-45f74b6ad86d@linux.intel.com>
 <dd6a1382-7b2f-a6e6-a1ac-009566d7f556@tycho.nsa.gov>
 <8141da2e-49cf-c02d-69e9-8a7cbdc91431@linux.intel.com>
 <7c367905-e8c9-7665-d923-c850e05c757a@tycho.nsa.gov>
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <220e87bf-226e-ca35-acc0-89dc82dc7811@linux.intel.com>
Date: Wed, 12 Feb 2020 19:16:31 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <7c367905-e8c9-7665-d923-c850e05c757a@tycho.nsa.gov>
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j1uh0-001SAX-MZ
X-Mailman-Approved-At: Wed, 12 Feb 2020 21:27:06 +0000
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
Cc: Mark Rutland <mark.rutland@arm.com>, Song Liu <songliubraving@fb.com>,
 Peter Zijlstra <peterz@infradead.org>,
 "benh@kernel.crashing.org" <benh@kernel.crashing.org>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 Will Deacon <will.deacon@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Paul Mackerras <paulus@samba.org>,
 Jiri Olsa <jolsa@redhat.com>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>,
 Andi Kleen <ak@linux.intel.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Igor Lubashev <ilubashe@akamai.com>, James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 Serge Hallyn <serge@hallyn.com>, Robert Richter <rric@kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Andy Lutomirski <luto@amacapital.net>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: oprofile-list-bounces@lists.sourceforge.net

T24gMTIuMDIuMjAyMCAxODoyMSwgU3RlcGhlbiBTbWFsbGV5IHdyb3RlOgo+IE9uIDIvMTIvMjAg
ODo1MyBBTSwgQWxleGV5IEJ1ZGFua292IHdyb3RlOgo+PiBPbiAxMi4wMi4yMDIwIDE2OjMyLCBT
dGVwaGVuIFNtYWxsZXkgd3JvdGU6Cj4+PiBPbiAyLzEyLzIwIDM6NTMgQU0sIEFsZXhleSBCdWRh
bmtvdiB3cm90ZToKPj4+PiBIaSBTdGVwaGVuLAo+Pj4+Cj4+Pj4gT24gMjIuMDEuMjAyMCAxNzow
NywgU3RlcGhlbiBTbWFsbGV5IHdyb3RlOgo+Pj4+PiBPbiAxLzIyLzIwIDU6NDUgQU0sIEFsZXhl
eSBCdWRhbmtvdiB3cm90ZToKPj4+Pj4+Cj4+Pj4+PiBPbiAyMS4wMS4yMDIwIDIxOjI3LCBBbGV4
ZXkgQnVkYW5rb3Ygd3JvdGU6Cj4+Pj4+Pj4KPj4+Pj4+PiBPbiAyMS4wMS4yMDIwIDIwOjU1LCBB
bGV4ZWkgU3Rhcm92b2l0b3Ygd3JvdGU6Cj4+Pj4+Pj4+IE9uIFR1ZSwgSmFuIDIxLCAyMDIwIGF0
IDk6MzEgQU0gQWxleGV5IEJ1ZGFua292Cj4+Pj4+Pj4+IDxhbGV4ZXkuYnVkYW5rb3ZAbGludXgu
aW50ZWwuY29tPiB3cm90ZToKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gT24gMjEuMDEu
MjAyMCAxNzo0MywgU3RlcGhlbiBTbWFsbGV5IHdyb3RlOgo+Pj4+Pj4+Pj4+IE9uIDEvMjAvMjAg
NjoyMyBBTSwgQWxleGV5IEJ1ZGFua292IHdyb3RlOgo+Pj4+Pj4+Pj4+Pgo+Pj4+IDxTTklQPgo+
Pj4+Pj4+Pj4+PiBJbnRyb2R1Y2UgQ0FQX1BFUkZNT04gY2FwYWJpbGl0eSBkZXNpZ25lZCB0byBz
ZWN1cmUgc3lzdGVtIHBlcmZvcm1hbmNlCj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBXaHkgX25vYXVk
aXQoKT/CoCBOb3JtYWxseSBvbmx5IHVzZWQgd2hlbiBhIHBlcm1pc3Npb24gZmFpbHVyZSBpcyBu
b24tZmF0YWwgdG8gdGhlIG9wZXJhdGlvbi7CoCBPdGhlcndpc2UsIHdlIHdhbnQgdGhlIGF1ZGl0
IG1lc3NhZ2UuCj4+Pj4+Pgo+Pj4+Pj4gU28gZmFyIHNvIGdvb2QsIEkgc3VnZ2VzdCB1c2luZyB0
aGUgc2ltcGxlc3QgdmVyc2lvbiBmb3IgdjY6Cj4+Pj4+Pgo+Pj4+Pj4gc3RhdGljIGlubGluZSBi
b29sIHBlcmZtb25fY2FwYWJsZSh2b2lkKQo+Pj4+Pj4gewo+Pj4+Pj4gwqDCoMKgwqDCoMKgcmV0
dXJuIGNhcGFibGUoQ0FQX1BFUkZNT04pIHx8IGNhcGFibGUoQ0FQX1NZU19BRE1JTik7Cj4+Pj4+
PiB9Cj4+Pj4+Pgo+Pj4+Pj4gSXQga2VlcHMgdGhlIGltcGxlbWVudGF0aW9uIHNpbXBsZSBhbmQg
cmVhZGFibGUuIFRoZSBpbXBsZW1lbnRhdGlvbiBpcyBtb3JlCj4+Pj4+PiBwZXJmb3JtYW50IGlu
IHRoZSBzZW5zZSBvZiBjYWxsaW5nIHRoZSBBUEkgLSBvbmUgY2FwYWJsZSgpIGNhbGwgZm9yIENB
UF9QRVJGTU9OCj4+Pj4+PiBwcml2aWxlZ2VkIHByb2Nlc3MuCj4+Pj4+Pgo+Pj4+Pj4gWWVzLCBp
dCBibG9hdHMgYXVkaXQgbG9nIGZvciBDQVBfU1lTX0FETUlOIHByaXZpbGVnZWQgYW5kIHVucHJp
dmlsZWdlZCBwcm9jZXNzZXMsCj4+Pj4+PiBidXQgdGhpcyBibG9hdGluZyBhbHNvIGFkdmVydGlz
ZXMgYW5kIGxldmVyYWdlcyB1c2luZyBtb3JlIHNlY3VyZSBDQVBfUEVSRk1PTgo+Pj4+Pj4gYmFz
ZWQgYXBwcm9hY2ggdG8gdXNlIHBlcmZfZXZlbnRfb3BlbiBzeXN0ZW0gY2FsbC4KPj4+Pj4KPj4+
Pj4gSSBjYW4gbGl2ZSB3aXRoIHRoYXQuwqAgV2UganVzdCBuZWVkIHRvIGRvY3VtZW50IHRoYXQg
d2hlbiB5b3Ugc2VlIGJvdGggYSBDQVBfUEVSRk1PTiBhbmQgYSBDQVBfU1lTX0FETUlOIGF1ZGl0
IG1lc3NhZ2UgZm9yIGEgcHJvY2VzcywgdHJ5IG9ubHkgYWxsb3dpbmcgQ0FQX1BFUkZNT04gZmly
c3QgYW5kIHNlZSBpZiB0aGF0IHJlc29sdmVzIHRoZSBpc3N1ZS7CoCBXZSBoYXZlIGEgc2ltaWxh
ciBpc3N1ZSB3aXRoIENBUF9EQUNfUkVBRF9TRUFSQ0ggdmVyc3VzIENBUF9EQUNfT1ZFUlJJREUu
Cj4+Pj4KPj4+PiBJIGFtIHRyeWluZyB0byByZXByb2R1Y2UgdGhpcyBkb3VibGUgbG9nZ2luZyB3
aXRoIENBUF9QRVJGTU9OLgo+Pj4+IEkgYW0gdXNpbmcgdGhlIHJlZnBvbGljeSB2ZXJzaW9uIHdp
dGggZW5hYmxlZCBwZXJmX2V2ZW50IHRjbGFzcyBbMV0sIGluIHBlcm1pc3NpdmUgbW9kZS4KPj4+
PiBXaGVuIHJ1bm5pbmcgcGVyZiBzdGF0IC1hIEkgYW0gb2JzZXJ2aW5nIHRoaXMgQVZDIGF1ZGl0
IG1lc3NhZ2VzOgo+Pj4+Cj4+Pj4gdHlwZT1BVkMgbXNnPWF1ZGl0KDE1ODE0OTY2OTUuNjY2Ojg2
OTEpOiBhdmM6wqAgZGVuaWVkwqAgeyBvcGVuIH0gZm9ywqAgcGlkPTI3NzkgY29tbT0icGVyZiIg
c2NvbnRleHQ9dXNlcl91OnVzZXJfcjp1c2VyX3N5c3RlbWRfdCB0Y29udGV4dD11c2VyX3U6dXNl
cl9yOnVzZXJfc3lzdGVtZF90IHRjbGFzcz1wZXJmX2V2ZW50IHBlcm1pc3NpdmU9MQo+Pj4+IHR5
cGU9QVZDIG1zZz1hdWRpdCgxNTgxNDk2Njk1LjY2Njo4NjkxKTogYXZjOsKgIGRlbmllZMKgIHsg
a2VybmVsIH0gZm9ywqAgcGlkPTI3NzkgY29tbT0icGVyZiIgc2NvbnRleHQ9dXNlcl91OnVzZXJf
cjp1c2VyX3N5c3RlbWRfdCB0Y29udGV4dD11c2VyX3U6dXNlcl9yOnVzZXJfc3lzdGVtZF90IHRj
bGFzcz1wZXJmX2V2ZW50IHBlcm1pc3NpdmU9MQo+Pj4+IHR5cGU9QVZDIG1zZz1hdWRpdCgxNTgx
NDk2Njk1LjY2Njo4NjkxKTogYXZjOsKgIGRlbmllZMKgIHsgY3B1IH0gZm9ywqAgcGlkPTI3Nzkg
Y29tbT0icGVyZiIgc2NvbnRleHQ9dXNlcl91OnVzZXJfcjp1c2VyX3N5c3RlbWRfdCB0Y29udGV4
dD11c2VyX3U6dXNlcl9yOnVzZXJfc3lzdGVtZF90IHRjbGFzcz1wZXJmX2V2ZW50IHBlcm1pc3Np
dmU9MQo+Pj4+IHR5cGU9QVZDIG1zZz1hdWRpdCgxNTgxNDk2Njk1LjY2Njo4NjkyKTogYXZjOsKg
IGRlbmllZMKgIHsgd3JpdGUgfSBmb3LCoCBwaWQ9Mjc3OSBjb21tPSJwZXJmIiBzY29udGV4dD11
c2VyX3U6dXNlcl9yOnVzZXJfc3lzdGVtZF90IHRjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl9z
eXN0ZW1kX3QgdGNsYXNzPXBlcmZfZXZlbnQgcGVybWlzc2l2ZT0xCj4+Pj4KPj4+PiBIb3dldmVy
IHRoZXJlIGlzIG5vIGNhcGFiaWxpdHkgcmVsYXRlZCBtZXNzYWdlcyBhcm91bmQuIEkgc3VwcG9z
ZSBteSByZWZwb2xpY3kgc2hvdWxkCj4+Pj4gYmUgbW9kaWZpZWQgc29tZWhvdyB0byBvYnNlcnZl
IGNhcGFiaWxpdHkgcmVsYXRlZCBBVkNzLgo+Pj4+Cj4+Pj4gQ291bGQgeW91IHBsZWFzZSBjb21t
ZW50IG9yIGNsYXJpZnkgb24gaG93IHRvIGVuYWJsZSBjYXBzIHJlbGF0ZWQgQVZDcyBpbiBvcmRl
cgo+Pj4+IHRvIHRlc3QgdGhlIGNvbmNlcm5lZCBsb2dnaW5nLgo+Pj4KPj4+IFRoZSBuZXcgcGVy
Zm1vbiBwZXJtaXNzaW9uIGhhcyB0byBiZSBkZWZpbmVkIGluIHlvdXIgcG9saWN5OyB5b3UnbGwg
aGF2ZSBhIG1lc3NhZ2UgaW4gZG1lc2cgYWJvdXQgIlBlcm1pc3Npb24gcGVyZm1vbiBpbiBjbGFz
cyBjYXBhYmlsaXR5MiBub3QgZGVmaW5lZCBpbiBwb2xpY3kuIi7CoCBZb3UgY2FuIGVpdGhlciBh
ZGQgaXQgdG8gdGhlIGNvbW1vbiBjYXAyIGRlZmluaXRpb24gaW4gcmVmcG9saWN5L3BvbGljeS9m
bGFzay9hY2Nlc3NfdmVjdG9ycyBhbmQgcmVidWlsZCB5b3VyIHBvbGljeSBvciBleHRyYWN0IHlv
dXIgYmFzZSBtb2R1bGUgYXMgQ0lMLCBhZGQgaXQgdGhlcmUsIGFuZCBpbnNlcnQgdGhlIHVwZGF0
ZWQgbW9kdWxlLgo+Pgo+PiBZZXMsIEkgYWxyZWFkeSBoYXZlIGl0IGxpa2UgdGhpczoKPj4gY29t
bW9uIGNhcDIKPj4gewo+PiA8LS0tLS0tPm1hY19vdmVycmlkZTwtLT4jIHVudXNlZCBieSBTRUxp
bnV4Cj4+IDwtLS0tLS0+bWFjX2FkbWluCj4+IDwtLS0tLS0+c3lzbG9nCj4+IDwtLS0tLS0+d2Fr
ZV9hbGFybQo+PiA8LS0tLS0tPmJsb2NrX3N1c3BlbmQKPj4gPC0tLS0tLT5hdWRpdF9yZWFkCj4+
IDwtLS0tLS0+cGVyZm1vbgo+PiB9Cj4+Cj4+IGRtZXNnIHN0b3BwZWQgcmVwb3J0aW5nIHBlcmZt
b24gYXMgbm90IGRlZmluZWQgYnV0IGF1ZGl0LmxvZyBzdGlsbCBkb2Vzbid0IHJlcG9ydCBDQVBf
UEVSRk1PTiBkZW5pYWxzLgo+PiBCVFcsIGF1ZGl0IGV2ZW4gZG9lc24ndCByZXBvcnQgQ0FQX1NZ
U19BRE1JTiBkZW5pYWxzLCBob3dldmVyIHBlcmZtb25fY2FwYWJsZSgpIGRvZXMgY2hlY2sgZm9y
IGl0Lgo+IAo+IFNvbWUgZGVuaWFscyBtYXkgYmUgc2lsZW5jZWQgYnkgZG9udGF1ZGl0IHJ1bGVz
OyBzZW1vZHVsZSAtREIgd2lsbCBzdHJpcCB0aG9zZSBhbmQgc2Vtb2R1bGUgLUIgd2lsbCByZXN0
b3JlIHRoZW0uwqAgT3RoZXIgcG9zc2liaWxpdHkgaXMgdGhhdCB0aGUgcHJvY2VzcyBkb2Vzbid0
IGhhdmUgQ0FQX1BFUkZNT04gaW4gaXRzIGVmZmVjdGl2ZSBzZXQgYW5kIHRoZXJlZm9yZSBuZXZl
ciByZWFjaGVzIFNFTGludXggYXQgYWxsOyBkZW5pZWQgZmlyc3QgYnkgdGhlIGNhcGFiaWxpdHkg
bW9kdWxlLgoKWWVzLCB0aGF0IGFsbCBtYWtlcyBzZW5zZS4Kc2VsaW51eF9jYXBhYmxlKCkgY2Fs
bHMgYXZjX2F1ZGl0KCkgbG9nZ2luZyBidXQgY2FwX2NhcGFibGUoKSBkb2Vzbid0LCBzbyBwcm9w
ZXIgb3JkZXIgbWF0dGVycy4KSSBhbSBkb2luZyBkZWJ1ZyB0cmFjaW5nIG9mIHRoZSBrZXJuZWwg
Y29kZSB0byByZXZlYWwgdGhlIGV4YWN0IHJlYXNvbnMuCgp+QWxleGV5CgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Byb2ZpbGUtbGlzdCBtYWlsaW5n
IGxpc3QKb3Byb2ZpbGUtbGlzdEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3Byb2ZpbGUtbGlzdAo=
