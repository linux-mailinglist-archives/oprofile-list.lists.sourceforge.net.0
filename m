Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC7915B2B0
	for <lists+oprofile-list@lfdr.de>; Wed, 12 Feb 2020 22:27:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1j1zXJ-0000u6-GN; Wed, 12 Feb 2020 21:27:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexey.budankov@linux.intel.com>) id 1j1vKB-00063J-3A
 for oprofile-list@lists.sourceforge.net; Wed, 12 Feb 2020 16:57:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+NGayTA1ICDnuWdrzwuFjRTE2o5z8HSE63p1uifQEb0=; b=godk/V0e1bSpD5Wz7oOusRF4kC
 mWImmf2AHKUr8dHWco+0YgpA9o9zGvRDUsrdkSueIiJtZLQxwY9ABQmK7+Y642kNAnScLOGSxm+61
 PSryXSUCUiYJRd5q37UbxAyGRs7q4q66iQXK3TX6Dhss3ov7tWRK4JC1loIYDpTo0YwQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+NGayTA1ICDnuWdrzwuFjRTE2o5z8HSE63p1uifQEb0=; b=Hl66xKEJPuUgwj/s842S7Kqg7a
 GPrSWpRdghKy8K3gK3JIzLGh+q7i+gd5IZqe92g2fPTPPACD/QuvWHfpvZzDkvZxSNFqygIEP6WqV
 5xvjy7kjIrlvEB69rS7TmtI8iYoIly02SoIp64PAGY7FDSLvP5vZXOvD4eH0sj5JSQ6c=;
Received: from mga07.intel.com ([134.134.136.100])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j1vK9-001Tbw-BP
 for oprofile-list@lists.sourceforge.net; Wed, 12 Feb 2020 16:57:19 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 08:57:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; d="scan'208";a="227877504"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga008.fm.intel.com with ESMTP; 12 Feb 2020 08:57:07 -0800
Received: from [10.252.13.176] (abudanko-mobl.ccr.corp.intel.com
 [10.252.13.176])
 by linux.intel.com (Postfix) with ESMTP id BA161580696;
 Wed, 12 Feb 2020 08:56:56 -0800 (PST)
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
 <280e6644-c129-15f6-ea5c-0f66bf764e0f@tycho.nsa.gov>
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <950cc6a4-5823-d607-1210-6f62c96cf67f@linux.intel.com>
Date: Wed, 12 Feb 2020 19:56:55 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <280e6644-c129-15f6-ea5c-0f66bf764e0f@tycho.nsa.gov>
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j1vK9-001Tbw-BP
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

CgpPbiAxMi4wMi4yMDIwIDE4OjQ1LCBTdGVwaGVuIFNtYWxsZXkgd3JvdGU6Cj4gT24gMi8xMi8y
MCAxMDoyMSBBTSwgU3RlcGhlbiBTbWFsbGV5IHdyb3RlOgo+PiBPbiAyLzEyLzIwIDg6NTMgQU0s
IEFsZXhleSBCdWRhbmtvdiB3cm90ZToKPj4+IE9uIDEyLjAyLjIwMjAgMTY6MzIsIFN0ZXBoZW4g
U21hbGxleSB3cm90ZToKPj4+PiBPbiAyLzEyLzIwIDM6NTMgQU0sIEFsZXhleSBCdWRhbmtvdiB3
cm90ZToKPj4+Pj4gSGkgU3RlcGhlbiwKPj4+Pj4KPj4+Pj4gT24gMjIuMDEuMjAyMCAxNzowNywg
U3RlcGhlbiBTbWFsbGV5IHdyb3RlOgo+Pj4+Pj4gT24gMS8yMi8yMCA1OjQ1IEFNLCBBbGV4ZXkg
QnVkYW5rb3Ygd3JvdGU6Cj4+Pj4+Pj4KPj4+Pj4+PiBPbiAyMS4wMS4yMDIwIDIxOjI3LCBBbGV4
ZXkgQnVkYW5rb3Ygd3JvdGU6Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IE9uIDIxLjAxLjIwMjAgMjA6NTUs
IEFsZXhlaSBTdGFyb3ZvaXRvdiB3cm90ZToKPj4+Pj4+Pj4+IE9uIFR1ZSwgSmFuIDIxLCAyMDIw
IGF0IDk6MzEgQU0gQWxleGV5IEJ1ZGFua292Cj4+Pj4+Pj4+PiA8YWxleGV5LmJ1ZGFua292QGxp
bnV4LmludGVsLmNvbT4gd3JvdGU6Cj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IE9u
IDIxLjAxLjIwMjAgMTc6NDMsIFN0ZXBoZW4gU21hbGxleSB3cm90ZToKPj4+Pj4+Pj4+Pj4gT24g
MS8yMC8yMCA2OjIzIEFNLCBBbGV4ZXkgQnVkYW5rb3Ygd3JvdGU6Cj4+Pj4+Pj4+Pj4+Pgo+Pj4+
PiA8U05JUD4KPj4+Pj4+Pj4+Pj4+IEludHJvZHVjZSBDQVBfUEVSRk1PTiBjYXBhYmlsaXR5IGRl
c2lnbmVkIHRvIHNlY3VyZSBzeXN0ZW0gcGVyZm9ybWFuY2UKPj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+
Pj4gV2h5IF9ub2F1ZGl0KCk/wqAgTm9ybWFsbHkgb25seSB1c2VkIHdoZW4gYSBwZXJtaXNzaW9u
IGZhaWx1cmUgaXMgbm9uLWZhdGFsIHRvIHRoZSBvcGVyYXRpb24uwqAgT3RoZXJ3aXNlLCB3ZSB3
YW50IHRoZSBhdWRpdCBtZXNzYWdlLgo+Pj4+Pj4+Cj4+Pj4+Pj4gU28gZmFyIHNvIGdvb2QsIEkg
c3VnZ2VzdCB1c2luZyB0aGUgc2ltcGxlc3QgdmVyc2lvbiBmb3IgdjY6Cj4+Pj4+Pj4KPj4+Pj4+
PiBzdGF0aWMgaW5saW5lIGJvb2wgcGVyZm1vbl9jYXBhYmxlKHZvaWQpCj4+Pj4+Pj4gewo+Pj4+
Pj4+IMKgwqDCoMKgwqDCoHJldHVybiBjYXBhYmxlKENBUF9QRVJGTU9OKSB8fCBjYXBhYmxlKENB
UF9TWVNfQURNSU4pOwo+Pj4+Pj4+IH0KPj4+Pj4+Pgo+Pj4+Pj4+IEl0IGtlZXBzIHRoZSBpbXBs
ZW1lbnRhdGlvbiBzaW1wbGUgYW5kIHJlYWRhYmxlLiBUaGUgaW1wbGVtZW50YXRpb24gaXMgbW9y
ZQo+Pj4+Pj4+IHBlcmZvcm1hbnQgaW4gdGhlIHNlbnNlIG9mIGNhbGxpbmcgdGhlIEFQSSAtIG9u
ZSBjYXBhYmxlKCkgY2FsbCBmb3IgQ0FQX1BFUkZNT04KPj4+Pj4+PiBwcml2aWxlZ2VkIHByb2Nl
c3MuCj4+Pj4+Pj4KPj4+Pj4+PiBZZXMsIGl0IGJsb2F0cyBhdWRpdCBsb2cgZm9yIENBUF9TWVNf
QURNSU4gcHJpdmlsZWdlZCBhbmQgdW5wcml2aWxlZ2VkIHByb2Nlc3NlcywKPj4+Pj4+PiBidXQg
dGhpcyBibG9hdGluZyBhbHNvIGFkdmVydGlzZXMgYW5kIGxldmVyYWdlcyB1c2luZyBtb3JlIHNl
Y3VyZSBDQVBfUEVSRk1PTgo+Pj4+Pj4+IGJhc2VkIGFwcHJvYWNoIHRvIHVzZSBwZXJmX2V2ZW50
X29wZW4gc3lzdGVtIGNhbGwuCj4+Pj4+Pgo+Pj4+Pj4gSSBjYW4gbGl2ZSB3aXRoIHRoYXQuwqAg
V2UganVzdCBuZWVkIHRvIGRvY3VtZW50IHRoYXQgd2hlbiB5b3Ugc2VlIGJvdGggYSBDQVBfUEVS
Rk1PTiBhbmQgYSBDQVBfU1lTX0FETUlOIGF1ZGl0IG1lc3NhZ2UgZm9yIGEgcHJvY2VzcywgdHJ5
IG9ubHkgYWxsb3dpbmcgQ0FQX1BFUkZNT04gZmlyc3QgYW5kIHNlZSBpZiB0aGF0IHJlc29sdmVz
IHRoZSBpc3N1ZS7CoCBXZSBoYXZlIGEgc2ltaWxhciBpc3N1ZSB3aXRoIENBUF9EQUNfUkVBRF9T
RUFSQ0ggdmVyc3VzIENBUF9EQUNfT1ZFUlJJREUuCj4+Pj4+Cj4+Pj4+IEkgYW0gdHJ5aW5nIHRv
IHJlcHJvZHVjZSB0aGlzIGRvdWJsZSBsb2dnaW5nIHdpdGggQ0FQX1BFUkZNT04uCj4+Pj4+IEkg
YW0gdXNpbmcgdGhlIHJlZnBvbGljeSB2ZXJzaW9uIHdpdGggZW5hYmxlZCBwZXJmX2V2ZW50IHRj
bGFzcyBbMV0sIGluIHBlcm1pc3NpdmUgbW9kZS4KPj4+Pj4gV2hlbiBydW5uaW5nIHBlcmYgc3Rh
dCAtYSBJIGFtIG9ic2VydmluZyB0aGlzIEFWQyBhdWRpdCBtZXNzYWdlczoKPj4+Pj4KPj4+Pj4g
dHlwZT1BVkMgbXNnPWF1ZGl0KDE1ODE0OTY2OTUuNjY2Ojg2OTEpOiBhdmM6wqAgZGVuaWVkwqAg
eyBvcGVuIH0gZm9ywqAgcGlkPTI3NzkgY29tbT0icGVyZiIgc2NvbnRleHQ9dXNlcl91OnVzZXJf
cjp1c2VyX3N5c3RlbWRfdCB0Y29udGV4dD11c2VyX3U6dXNlcl9yOnVzZXJfc3lzdGVtZF90IHRj
bGFzcz1wZXJmX2V2ZW50IHBlcm1pc3NpdmU9MQo+Pj4+PiB0eXBlPUFWQyBtc2c9YXVkaXQoMTU4
MTQ5NjY5NS42NjY6ODY5MSk6IGF2YzrCoCBkZW5pZWTCoCB7IGtlcm5lbCB9IGZvcsKgIHBpZD0y
Nzc5IGNvbW09InBlcmYiIHNjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl9zeXN0ZW1kX3QgdGNv
bnRleHQ9dXNlcl91OnVzZXJfcjp1c2VyX3N5c3RlbWRfdCB0Y2xhc3M9cGVyZl9ldmVudCBwZXJt
aXNzaXZlPTEKPj4+Pj4gdHlwZT1BVkMgbXNnPWF1ZGl0KDE1ODE0OTY2OTUuNjY2Ojg2OTEpOiBh
dmM6wqAgZGVuaWVkwqAgeyBjcHUgfSBmb3LCoCBwaWQ9Mjc3OSBjb21tPSJwZXJmIiBzY29udGV4
dD11c2VyX3U6dXNlcl9yOnVzZXJfc3lzdGVtZF90IHRjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNl
cl9zeXN0ZW1kX3QgdGNsYXNzPXBlcmZfZXZlbnQgcGVybWlzc2l2ZT0xCj4+Pj4+IHR5cGU9QVZD
IG1zZz1hdWRpdCgxNTgxNDk2Njk1LjY2Njo4NjkyKTogYXZjOsKgIGRlbmllZMKgIHsgd3JpdGUg
fSBmb3LCoCBwaWQ9Mjc3OSBjb21tPSJwZXJmIiBzY29udGV4dD11c2VyX3U6dXNlcl9yOnVzZXJf
c3lzdGVtZF90IHRjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl9zeXN0ZW1kX3QgdGNsYXNzPXBl
cmZfZXZlbnQgcGVybWlzc2l2ZT0xCj4+Pj4+Cj4+Pj4+IEhvd2V2ZXIgdGhlcmUgaXMgbm8gY2Fw
YWJpbGl0eSByZWxhdGVkIG1lc3NhZ2VzIGFyb3VuZC4gSSBzdXBwb3NlIG15IHJlZnBvbGljeSBz
aG91bGQKPj4+Pj4gYmUgbW9kaWZpZWQgc29tZWhvdyB0byBvYnNlcnZlIGNhcGFiaWxpdHkgcmVs
YXRlZCBBVkNzLgo+Pj4+Pgo+Pj4+PiBDb3VsZCB5b3UgcGxlYXNlIGNvbW1lbnQgb3IgY2xhcmlm
eSBvbiBob3cgdG8gZW5hYmxlIGNhcHMgcmVsYXRlZCBBVkNzIGluIG9yZGVyCj4+Pj4+IHRvIHRl
c3QgdGhlIGNvbmNlcm5lZCBsb2dnaW5nLgo+Pj4+Cj4+Pj4gVGhlIG5ldyBwZXJmbW9uIHBlcm1p
c3Npb24gaGFzIHRvIGJlIGRlZmluZWQgaW4geW91ciBwb2xpY3k7IHlvdSdsbCBoYXZlIGEgbWVz
c2FnZSBpbiBkbWVzZyBhYm91dCAiUGVybWlzc2lvbiBwZXJmbW9uIGluIGNsYXNzIGNhcGFiaWxp
dHkyIG5vdCBkZWZpbmVkIGluIHBvbGljeS4iLsKgIFlvdSBjYW4gZWl0aGVyIGFkZCBpdCB0byB0
aGUgY29tbW9uIGNhcDIgZGVmaW5pdGlvbiBpbiByZWZwb2xpY3kvcG9saWN5L2ZsYXNrL2FjY2Vz
c192ZWN0b3JzIGFuZCByZWJ1aWxkIHlvdXIgcG9saWN5IG9yIGV4dHJhY3QgeW91ciBiYXNlIG1v
ZHVsZSBhcyBDSUwsIGFkZCBpdCB0aGVyZSwgYW5kIGluc2VydCB0aGUgdXBkYXRlZCBtb2R1bGUu
Cj4+Pgo+Pj4gWWVzLCBJIGFscmVhZHkgaGF2ZSBpdCBsaWtlIHRoaXM6Cj4+PiBjb21tb24gY2Fw
Mgo+Pj4gewo+Pj4gPC0tLS0tLT5tYWNfb3ZlcnJpZGU8LS0+IyB1bnVzZWQgYnkgU0VMaW51eAo+
Pj4gPC0tLS0tLT5tYWNfYWRtaW4KPj4+IDwtLS0tLS0+c3lzbG9nCj4+PiA8LS0tLS0tPndha2Vf
YWxhcm0KPj4+IDwtLS0tLS0+YmxvY2tfc3VzcGVuZAo+Pj4gPC0tLS0tLT5hdWRpdF9yZWFkCj4+
PiA8LS0tLS0tPnBlcmZtb24KPj4+IH0KPj4+Cj4+PiBkbWVzZyBzdG9wcGVkIHJlcG9ydGluZyBw
ZXJmbW9uIGFzIG5vdCBkZWZpbmVkIGJ1dCBhdWRpdC5sb2cgc3RpbGwgZG9lc24ndCByZXBvcnQg
Q0FQX1BFUkZNT04gZGVuaWFscy4KPj4+IEJUVywgYXVkaXQgZXZlbiBkb2Vzbid0IHJlcG9ydCBD
QVBfU1lTX0FETUlOIGRlbmlhbHMsIGhvd2V2ZXIgcGVyZm1vbl9jYXBhYmxlKCkgZG9lcyBjaGVj
ayBmb3IgaXQuCj4+Cj4+IFNvbWUgZGVuaWFscyBtYXkgYmUgc2lsZW5jZWQgYnkgZG9udGF1ZGl0
IHJ1bGVzOyBzZW1vZHVsZSAtREIgd2lsbCBzdHJpcCB0aG9zZSBhbmQgc2Vtb2R1bGUgLUIgd2ls
bCByZXN0b3JlIHRoZW0uwqAgT3RoZXIgcG9zc2liaWxpdHkgaXMgdGhhdCB0aGUgcHJvY2VzcyBk
b2Vzbid0IGhhdmUgQ0FQX1BFUkZNT04gaW4gaXRzIGVmZmVjdGl2ZSBzZXQgYW5kIHRoZXJlZm9y
ZSBuZXZlciByZWFjaGVzIFNFTGludXggYXQgYWxsOyBkZW5pZWQgZmlyc3QgYnkgdGhlIGNhcGFi
aWxpdHkgbW9kdWxlLgo+IAo+IEFsc28sIHRoZSBmYWN0IHRoYXQgeW91ciBkZW5pYWxzIGFyZSBz
aG93aW5nIHVwIGluIHVzZXJfc3lzdGVtZF90IHN1Z2dlc3RzIHRoYXQgc29tZXRoaW5nIGlzIG9m
ZiBpbiB5b3VyIHBvbGljeSBvciB1c2Vyc3BhY2UvZGlzdHJvOyBJIGFzc3VtZSB0aGF0IGlzIGEg
ZG9tYWluIHR5cGUgZm9yIHRoZSBzeXN0ZW1kIC0tdXNlciBpbnN0YW5jZSwgYnV0IHlvdXIgc2hl
bGwgYW5kIGNvbW1hbmRzIHNob3VsZG4ndCBiZSBydW5uaW5nIGluIHRoYXQgZG9tYWluICh1c2Vy
X3Qgd291bGQgYmUgbW9yZSBhcHByb3ByaWF0ZSBmb3IgdGhhdCkuCgpJdCBpcyB1c2VyX3QgZm9y
IGxvY2FsIHRlcm1pbmFsIHNlc3Npb246CnBzIC1aCkxBQkVMICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBQSUQgVFRZICAgICAgICAgIFRJTUUgQ01ECnVzZXJfdTp1c2VyX3I6dXNlcl90ICAg
ICAgICAgICAgMTEzMTcgcHRzLzkgICAgMDA6MDA6MDAgYmFzaAp1c2VyX3U6dXNlcl9yOnVzZXJf
dCAgICAgICAgICAgIDExNzk2IHB0cy85ICAgIDAwOjAwOjAwIHBzCgpGb3IgbG9jYWwgdGVybWlu
YWwgcm9vdCBzZXNzaW9uOgpwcyAtWgpMQUJFTCAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
UElEIFRUWSAgICAgICAgICBUSU1FIENNRAp1c2VyX3U6dXNlcl9yOnVzZXJfc3VfdCAgICAgICAg
ICAyOTI2IHB0cy8zICAgIDAwOjAwOjAwIGJhc2gKdXNlcl91OnVzZXJfcjp1c2VyX3N1X3QgICAg
ICAgICAxMDk5NSBwdHMvMyAgICAwMDowMDowMCBwcwoKRm9yIHJlbW90ZSBzc2ggc2Vzc2lvbjoK
cHMgLVoKTEFCRUwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFBJRCBUVFkgICAgICAgICAg
VElNRSBDTUQKdXNlcl91OnVzZXJfcjp1c2VyX3QgICAgICAgICAgICAgNzU0MCBwdHMvOCAgICAw
MDowMDowMCBwcwp1c2VyX3U6dXNlcl9yOnVzZXJfc3lzdGVtZF90ICAgICA4ODc1IHB0cy84ICAg
IDAwOjAwOjAwIGJhc2gKCn5BbGV4ZXkKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcHJvZmlsZS1saXN0IG1haWxpbmcgbGlzdApvcHJvZmlsZS1saXN0
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0
cy9saXN0aW5mby9vcHJvZmlsZS1saXN0Cg==
