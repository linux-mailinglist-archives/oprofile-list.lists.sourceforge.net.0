Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E624B15C3F8
	for <lists+oprofile-list@lfdr.de>; Thu, 13 Feb 2020 16:52:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1j2Gmy-0008FY-6X; Thu, 13 Feb 2020 15:52:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexey.budankov@linux.intel.com>) id 1j2ARL-0005fu-R0
 for oprofile-list@lists.sourceforge.net; Thu, 13 Feb 2020 09:05:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0c2xGmpZE+nS/npHgtuWoevjpYUY4MoEcmiPSt3B37w=; b=GuzvgUSG7nMtMitv/UB59Q+NTq
 UetQJk4m+7IUPv6Cin8fMa/MC5CS2OCeMSrmjwSsWM8gVmJEBSsw4V8mPdqpuPdj/WtGy4QNBqr4P
 tZtOPUSFDYcp0zOP5upDj2+QYQ2tw5/bLmAQCreQFMBqDZA6wAXiuSW+tW+v3wK5wh8c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0c2xGmpZE+nS/npHgtuWoevjpYUY4MoEcmiPSt3B37w=; b=m5PxehcQ6PNUN5fMeZ3Hbi5Dqd
 sKE2JIJhcDNODXtUqvMGBjy2FD+qjWskeBT9FoLpOt/Bk0mQ1U8gFLZ3AleKAjjQBtGBJ5Hj7Ly8n
 n+j2kZkAmd2hv566U3TrK/4c8cTXep5aGMvhnnzYQUWS2+yKgnhNR6LLZ4WswB8KrORo=;
Received: from mga02.intel.com ([134.134.136.20])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j2ARJ-002oVk-Tp
 for oprofile-list@lists.sourceforge.net; Thu, 13 Feb 2020 09:05:43 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 01:05:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,436,1574150400"; d="scan'208";a="267006589"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga002.fm.intel.com with ESMTP; 13 Feb 2020 01:05:33 -0800
Received: from [10.125.252.71] (abudanko-mobl.ccr.corp.intel.com
 [10.125.252.71])
 by linux.intel.com (Postfix) with ESMTP id 49A115802C1;
 Thu, 13 Feb 2020 01:05:25 -0800 (PST)
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
 <950cc6a4-5823-d607-1210-6f62c96cf67f@linux.intel.com>
 <46751eb9-deca-53cc-95fb-1602cfdf62a2@tycho.nsa.gov>
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <874115a9-fb11-b7f4-7e92-46aedc5f26af@linux.intel.com>
Date: Thu, 13 Feb 2020 12:05:24 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <46751eb9-deca-53cc-95fb-1602cfdf62a2@tycho.nsa.gov>
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j2ARJ-002oVk-Tp
X-Mailman-Approved-At: Thu, 13 Feb 2020 15:52:26 +0000
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

Ck9uIDEyLjAyLjIwMjAgMjA6MDksIFN0ZXBoZW4gU21hbGxleSB3cm90ZToKPiBPbiAyLzEyLzIw
IDExOjU2IEFNLCBBbGV4ZXkgQnVkYW5rb3Ygd3JvdGU6Cj4+Cj4+Cj4+IE9uIDEyLjAyLjIwMjAg
MTg6NDUsIFN0ZXBoZW4gU21hbGxleSB3cm90ZToKPj4+IE9uIDIvMTIvMjAgMTA6MjEgQU0sIFN0
ZXBoZW4gU21hbGxleSB3cm90ZToKPj4+PiBPbiAyLzEyLzIwIDg6NTMgQU0sIEFsZXhleSBCdWRh
bmtvdiB3cm90ZToKPj4+Pj4gT24gMTIuMDIuMjAyMCAxNjozMiwgU3RlcGhlbiBTbWFsbGV5IHdy
b3RlOgo+Pj4+Pj4gT24gMi8xMi8yMCAzOjUzIEFNLCBBbGV4ZXkgQnVkYW5rb3Ygd3JvdGU6Cj4+
Pj4+Pj4gSGkgU3RlcGhlbiwKPj4+Pj4+Pgo+Pj4+Pj4+IE9uIDIyLjAxLjIwMjAgMTc6MDcsIFN0
ZXBoZW4gU21hbGxleSB3cm90ZToKPj4+Pj4+Pj4gT24gMS8yMi8yMCA1OjQ1IEFNLCBBbGV4ZXkg
QnVkYW5rb3Ygd3JvdGU6Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gT24gMjEuMDEuMjAyMCAyMToyNywg
QWxleGV5IEJ1ZGFua292IHdyb3RlOgo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gT24gMjEuMDEuMjAy
MCAyMDo1NSwgQWxleGVpIFN0YXJvdm9pdG92IHdyb3RlOgo+Pj4+Pj4+Pj4+PiBPbiBUdWUsIEph
biAyMSwgMjAyMCBhdCA5OjMxIEFNIEFsZXhleSBCdWRhbmtvdgo+Pj4+Pj4+Pj4+PiA8YWxleGV5
LmJ1ZGFua292QGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+
Pj4KPj4+Pj4+Pj4+Pj4+IE9uIDIxLjAxLjIwMjAgMTc6NDMsIFN0ZXBoZW4gU21hbGxleSB3cm90
ZToKPj4+Pj4+Pj4+Pj4+PiBPbiAxLzIwLzIwIDY6MjMgQU0sIEFsZXhleSBCdWRhbmtvdiB3cm90
ZToKPj4+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+PiA8U05JUD4KPj4+Pj4+Pj4+Pj4+Pj4gSW50cm9kdWNl
IENBUF9QRVJGTU9OIGNhcGFiaWxpdHkgZGVzaWduZWQgdG8gc2VjdXJlIHN5c3RlbSBwZXJmb3Jt
YW5jZQo+Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4gV2h5IF9ub2F1ZGl0KCk/wqAgTm9ybWFs
bHkgb25seSB1c2VkIHdoZW4gYSBwZXJtaXNzaW9uIGZhaWx1cmUgaXMgbm9uLWZhdGFsIHRvIHRo
ZSBvcGVyYXRpb24uwqAgT3RoZXJ3aXNlLCB3ZSB3YW50IHRoZSBhdWRpdCBtZXNzYWdlLgo+Pj4+
Pj4+Pj4KPj4+Pj4+Pj4+IFNvIGZhciBzbyBnb29kLCBJIHN1Z2dlc3QgdXNpbmcgdGhlIHNpbXBs
ZXN0IHZlcnNpb24gZm9yIHY2Ogo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IHN0YXRpYyBpbmxpbmUgYm9v
bCBwZXJmbW9uX2NhcGFibGUodm9pZCkKPj4+Pj4+Pj4+IHsKPj4+Pj4+Pj4+IMKgwqDCoMKgwqDC
oMKgcmV0dXJuIGNhcGFibGUoQ0FQX1BFUkZNT04pIHx8IGNhcGFibGUoQ0FQX1NZU19BRE1JTik7
Cj4+Pj4+Pj4+PiB9Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gSXQga2VlcHMgdGhlIGltcGxlbWVudGF0
aW9uIHNpbXBsZSBhbmQgcmVhZGFibGUuIFRoZSBpbXBsZW1lbnRhdGlvbiBpcyBtb3JlCj4+Pj4+
Pj4+PiBwZXJmb3JtYW50IGluIHRoZSBzZW5zZSBvZiBjYWxsaW5nIHRoZSBBUEkgLSBvbmUgY2Fw
YWJsZSgpIGNhbGwgZm9yIENBUF9QRVJGTU9OCj4+Pj4+Pj4+PiBwcml2aWxlZ2VkIHByb2Nlc3Mu
Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gWWVzLCBpdCBibG9hdHMgYXVkaXQgbG9nIGZvciBDQVBfU1lT
X0FETUlOIHByaXZpbGVnZWQgYW5kIHVucHJpdmlsZWdlZCBwcm9jZXNzZXMsCj4+Pj4+Pj4+PiBi
dXQgdGhpcyBibG9hdGluZyBhbHNvIGFkdmVydGlzZXMgYW5kIGxldmVyYWdlcyB1c2luZyBtb3Jl
IHNlY3VyZSBDQVBfUEVSRk1PTgo+Pj4+Pj4+Pj4gYmFzZWQgYXBwcm9hY2ggdG8gdXNlIHBlcmZf
ZXZlbnRfb3BlbiBzeXN0ZW0gY2FsbC4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gSSBjYW4gbGl2ZSB3aXRo
IHRoYXQuwqAgV2UganVzdCBuZWVkIHRvIGRvY3VtZW50IHRoYXQgd2hlbiB5b3Ugc2VlIGJvdGgg
YSBDQVBfUEVSRk1PTiBhbmQgYSBDQVBfU1lTX0FETUlOIGF1ZGl0IG1lc3NhZ2UgZm9yIGEgcHJv
Y2VzcywgdHJ5IG9ubHkgYWxsb3dpbmcgQ0FQX1BFUkZNT04gZmlyc3QgYW5kIHNlZSBpZiB0aGF0
IHJlc29sdmVzIHRoZSBpc3N1ZS7CoCBXZSBoYXZlIGEgc2ltaWxhciBpc3N1ZSB3aXRoIENBUF9E
QUNfUkVBRF9TRUFSQ0ggdmVyc3VzIENBUF9EQUNfT1ZFUlJJREUuCj4+Pj4+Pj4KPj4+Pj4+PiBJ
IGFtIHRyeWluZyB0byByZXByb2R1Y2UgdGhpcyBkb3VibGUgbG9nZ2luZyB3aXRoIENBUF9QRVJG
TU9OLgo+Pj4+Pj4+IEkgYW0gdXNpbmcgdGhlIHJlZnBvbGljeSB2ZXJzaW9uIHdpdGggZW5hYmxl
ZCBwZXJmX2V2ZW50IHRjbGFzcyBbMV0sIGluIHBlcm1pc3NpdmUgbW9kZS4KPj4+Pj4+PiBXaGVu
IHJ1bm5pbmcgcGVyZiBzdGF0IC1hIEkgYW0gb2JzZXJ2aW5nIHRoaXMgQVZDIGF1ZGl0IG1lc3Nh
Z2VzOgo+Pj4+Pj4+Cj4+Pj4+Pj4gdHlwZT1BVkMgbXNnPWF1ZGl0KDE1ODE0OTY2OTUuNjY2Ojg2
OTEpOiBhdmM6wqAgZGVuaWVkwqAgeyBvcGVuIH0gZm9ywqAgcGlkPTI3NzkgY29tbT0icGVyZiIg
c2NvbnRleHQ9dXNlcl91OnVzZXJfcjp1c2VyX3N5c3RlbWRfdCB0Y29udGV4dD11c2VyX3U6dXNl
cl9yOnVzZXJfc3lzdGVtZF90IHRjbGFzcz1wZXJmX2V2ZW50IHBlcm1pc3NpdmU9MQo+Pj4+Pj4+
IHR5cGU9QVZDIG1zZz1hdWRpdCgxNTgxNDk2Njk1LjY2Njo4NjkxKTogYXZjOsKgIGRlbmllZMKg
IHsga2VybmVsIH0gZm9ywqAgcGlkPTI3NzkgY29tbT0icGVyZiIgc2NvbnRleHQ9dXNlcl91OnVz
ZXJfcjp1c2VyX3N5c3RlbWRfdCB0Y29udGV4dD11c2VyX3U6dXNlcl9yOnVzZXJfc3lzdGVtZF90
IHRjbGFzcz1wZXJmX2V2ZW50IHBlcm1pc3NpdmU9MQo+Pj4+Pj4+IHR5cGU9QVZDIG1zZz1hdWRp
dCgxNTgxNDk2Njk1LjY2Njo4NjkxKTogYXZjOsKgIGRlbmllZMKgIHsgY3B1IH0gZm9ywqAgcGlk
PTI3NzkgY29tbT0icGVyZiIgc2NvbnRleHQ9dXNlcl91OnVzZXJfcjp1c2VyX3N5c3RlbWRfdCB0
Y29udGV4dD11c2VyX3U6dXNlcl9yOnVzZXJfc3lzdGVtZF90IHRjbGFzcz1wZXJmX2V2ZW50IHBl
cm1pc3NpdmU9MQo+Pj4+Pj4+IHR5cGU9QVZDIG1zZz1hdWRpdCgxNTgxNDk2Njk1LjY2Njo4Njky
KTogYXZjOsKgIGRlbmllZMKgIHsgd3JpdGUgfSBmb3LCoCBwaWQ9Mjc3OSBjb21tPSJwZXJmIiBz
Y29udGV4dD11c2VyX3U6dXNlcl9yOnVzZXJfc3lzdGVtZF90IHRjb250ZXh0PXVzZXJfdTp1c2Vy
X3I6dXNlcl9zeXN0ZW1kX3QgdGNsYXNzPXBlcmZfZXZlbnQgcGVybWlzc2l2ZT0xCj4+Pj4+Pj4K
Pj4+Pj4+PiBIb3dldmVyIHRoZXJlIGlzIG5vIGNhcGFiaWxpdHkgcmVsYXRlZCBtZXNzYWdlcyBh
cm91bmQuIEkgc3VwcG9zZSBteSByZWZwb2xpY3kgc2hvdWxkCj4+Pj4+Pj4gYmUgbW9kaWZpZWQg
c29tZWhvdyB0byBvYnNlcnZlIGNhcGFiaWxpdHkgcmVsYXRlZCBBVkNzLgo+Pj4+Pj4+Cj4+Pj4+
Pj4gQ291bGQgeW91IHBsZWFzZSBjb21tZW50IG9yIGNsYXJpZnkgb24gaG93IHRvIGVuYWJsZSBj
YXBzIHJlbGF0ZWQgQVZDcyBpbiBvcmRlcgo+Pj4+Pj4+IHRvIHRlc3QgdGhlIGNvbmNlcm5lZCBs
b2dnaW5nLgo+Pj4+Pj4KPj4+Pj4+IFRoZSBuZXcgcGVyZm1vbiBwZXJtaXNzaW9uIGhhcyB0byBi
ZSBkZWZpbmVkIGluIHlvdXIgcG9saWN5OyB5b3UnbGwgaGF2ZSBhIG1lc3NhZ2UgaW4gZG1lc2cg
YWJvdXQgIlBlcm1pc3Npb24gcGVyZm1vbiBpbiBjbGFzcyBjYXBhYmlsaXR5MiBub3QgZGVmaW5l
ZCBpbiBwb2xpY3kuIi7CoCBZb3UgY2FuIGVpdGhlciBhZGQgaXQgdG8gdGhlIGNvbW1vbiBjYXAy
IGRlZmluaXRpb24gaW4gcmVmcG9saWN5L3BvbGljeS9mbGFzay9hY2Nlc3NfdmVjdG9ycyBhbmQg
cmVidWlsZCB5b3VyIHBvbGljeSBvciBleHRyYWN0IHlvdXIgYmFzZSBtb2R1bGUgYXMgQ0lMLCBh
ZGQgaXQgdGhlcmUsIGFuZCBpbnNlcnQgdGhlIHVwZGF0ZWQgbW9kdWxlLgo+Pj4+Pgo+Pj4+PiBZ
ZXMsIEkgYWxyZWFkeSBoYXZlIGl0IGxpa2UgdGhpczoKPj4+Pj4gY29tbW9uIGNhcDIKPj4+Pj4g
ewo+Pj4+PiA8LS0tLS0tPm1hY19vdmVycmlkZTwtLT4jIHVudXNlZCBieSBTRUxpbnV4Cj4+Pj4+
IDwtLS0tLS0+bWFjX2FkbWluCj4+Pj4+IDwtLS0tLS0+c3lzbG9nCj4+Pj4+IDwtLS0tLS0+d2Fr
ZV9hbGFybQo+Pj4+PiA8LS0tLS0tPmJsb2NrX3N1c3BlbmQKPj4+Pj4gPC0tLS0tLT5hdWRpdF9y
ZWFkCj4+Pj4+IDwtLS0tLS0+cGVyZm1vbgo+Pj4+PiB9Cj4+Pj4+Cj4+Pj4+IGRtZXNnIHN0b3Bw
ZWQgcmVwb3J0aW5nIHBlcmZtb24gYXMgbm90IGRlZmluZWQgYnV0IGF1ZGl0LmxvZyBzdGlsbCBk
b2Vzbid0IHJlcG9ydCBDQVBfUEVSRk1PTiBkZW5pYWxzLgo+Pj4+PiBCVFcsIGF1ZGl0IGV2ZW4g
ZG9lc24ndCByZXBvcnQgQ0FQX1NZU19BRE1JTiBkZW5pYWxzLCBob3dldmVyIHBlcmZtb25fY2Fw
YWJsZSgpIGRvZXMgY2hlY2sgZm9yIGl0Lgo+Pj4+Cj4+Pj4gU29tZSBkZW5pYWxzIG1heSBiZSBz
aWxlbmNlZCBieSBkb250YXVkaXQgcnVsZXM7IHNlbW9kdWxlIC1EQiB3aWxsIHN0cmlwIHRob3Nl
IGFuZCBzZW1vZHVsZSAtQiB3aWxsIHJlc3RvcmUgdGhlbS7CoCBPdGhlciBwb3NzaWJpbGl0eSBp
cyB0aGF0IHRoZSBwcm9jZXNzIGRvZXNuJ3QgaGF2ZSBDQVBfUEVSRk1PTiBpbiBpdHMgZWZmZWN0
aXZlIHNldCBhbmQgdGhlcmVmb3JlIG5ldmVyIHJlYWNoZXMgU0VMaW51eCBhdCBhbGw7IGRlbmll
ZCBmaXJzdCBieSB0aGUgY2FwYWJpbGl0eSBtb2R1bGUuCj4+Pgo+Pj4gQWxzbywgdGhlIGZhY3Qg
dGhhdCB5b3VyIGRlbmlhbHMgYXJlIHNob3dpbmcgdXAgaW4gdXNlcl9zeXN0ZW1kX3Qgc3VnZ2Vz
dHMgdGhhdCBzb21ldGhpbmcgaXMgb2ZmIGluIHlvdXIgcG9saWN5IG9yIHVzZXJzcGFjZS9kaXN0
cm87IEkgYXNzdW1lIHRoYXQgaXMgYSBkb21haW4gdHlwZSBmb3IgdGhlIHN5c3RlbWQgLS11c2Vy
IGluc3RhbmNlLCBidXQgeW91ciBzaGVsbCBhbmQgY29tbWFuZHMgc2hvdWxkbid0IGJlIHJ1bm5p
bmcgaW4gdGhhdCBkb21haW4gKHVzZXJfdCB3b3VsZCBiZSBtb3JlIGFwcHJvcHJpYXRlIGZvciB0
aGF0KS4KPj4KPj4gSXQgaXMgdXNlcl90IGZvciBsb2NhbCB0ZXJtaW5hbCBzZXNzaW9uOgo+PiBw
cyAtWgo+PiBMQUJFTMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIFBJRCBUVFnCoMKgwqDCoMKgwqDCoMKgwqAgVElNRSBDTUQKPj4gdXNlcl91
OnVzZXJfcjp1c2VyX3TCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDExMzE3IHB0cy85wqDCoMKgIDAw
OjAwOjAwIGJhc2gKPj4gdXNlcl91OnVzZXJfcjp1c2VyX3TCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IDExNzk2IHB0cy85wqDCoMKgIDAwOjAwOjAwIHBzCj4+Cj4+IEZvciBsb2NhbCB0ZXJtaW5hbCBy
b290IHNlc3Npb246Cj4+IHBzIC1aCj4+IExBQkVMwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgUElEIFRUWcKgwqDCoMKgwqDCoMKgwqDCoCBU
SU1FIENNRAo+PiB1c2VyX3U6dXNlcl9yOnVzZXJfc3VfdMKgwqDCoMKgwqDCoMKgwqDCoCAyOTI2
IHB0cy8zwqDCoMKgIDAwOjAwOjAwIGJhc2gKPj4gdXNlcl91OnVzZXJfcjp1c2VyX3N1X3TCoMKg
wqDCoMKgwqDCoMKgIDEwOTk1IHB0cy8zwqDCoMKgIDAwOjAwOjAwIHBzCj4+Cj4+IEZvciByZW1v
dGUgc3NoIHNlc3Npb246Cj4+IHBzIC1aCj4+IExBQkVMwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgUElEIFRUWcKgwqDCoMKgwqDCoMKgwqDC
oCBUSU1FIENNRAo+PiB1c2VyX3U6dXNlcl9yOnVzZXJfdMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCA3NTQwIHB0cy84wqDCoMKgIDAwOjAwOjAwIHBzCj4+IHVzZXJfdTp1c2VyX3I6dXNlcl9zeXN0
ZW1kX3TCoMKgwqDCoCA4ODc1IHB0cy84wqDCoMKgIDAwOjAwOjAwIGJhc2gKPiAKPiBUaGF0J3Mg
YSBidWcgaW4gZWl0aGVyIHlvdXIgcG9saWN5IG9yIHlvdXIgdXNlcnNwYWNlL2Rpc3RybyBpbnRl
Z3JhdGlvbi4gwqBJbiBhbnkgZXZlbnQsIHVubGVzcyB1c2VyX3N5c3RlbWRfdCBpcyBhbGxvd2Vk
IGFsbCBjYXBhYmlsaXR5MiBwZXJtaXNzaW9ucyBieSB5b3VyIHBvbGljeSwgeW91IHNob3VsZCBz
ZWUgdGhlIGRlbmlhbHMgaWYgQ0FQX1BFUkZNT04gaXMgc2V0IGluIHRoZSBlZmZlY3RpdmUgY2Fw
YWJpbGl0eSBzZXQgb2YgdGhlIHByb2Nlc3MuCj4gCgpUaGF0IGFsbCBzZWVtcyB0byBiZSB0cnVl
LiBBZnRlciBpbnN0cnVtZW50YXRpb24sIHJlYnVpbGRpbmcgYW5kIHJlYm9vdGluZywgaW4gQ0FQ
X1BFUkZNT04gY2FzZToKCiQgZ2V0Y2FwIHBlcmYKcGVyZiA9IGNhcF9zeXNfcHRyYWNlLGNhcF9z
eXNsb2csY2FwX3BlcmZtb24rZXAKCiQgcGVyZiBzdGF0IC1hCgp0eXBlPUFWQyBtc2c9YXVkaXQo
MTU4MTU4MDM5OS4xNjU6Nzg0KTogYXZjOiAgZGVuaWVkICB7IG9wZW4gfSBmb3IgIHBpZD04ODU5
IGNvbW09InBlcmYiIHNjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl90IHRjb250ZXh0PXVzZXJf
dTp1c2VyX3I6dXNlcl90IHRjbGFzcz1wZXJmX2V2ZW50IHBlcm1pc3NpdmU9MQp0eXBlPUFWQyBt
c2c9YXVkaXQoMTU4MTU4MDM5OS4xNjU6Nzg1KTogYXZjOiAgZGVuaWVkICB7IHBlcmZtb24gfSBm
b3IgIHBpZD04ODU5IGNvbW09InBlcmYiIGNhcGFiaWxpdHk9MzggIHNjb250ZXh0PXVzZXJfdTp1
c2VyX3I6dXNlcl90IHRjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl90IHRjbGFzcz1jYXBhYmls
aXR5MiBwZXJtaXNzaXZlPTEKdHlwZT1BVkMgbXNnPWF1ZGl0KDE1ODE1ODAzOTkuMTY1Ojc4Nik6
IGF2YzogIGRlbmllZCAgeyBrZXJuZWwgfSBmb3IgIHBpZD04ODU5IGNvbW09InBlcmYiIHNjb250
ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl90IHRjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl90IHRj
bGFzcz1wZXJmX2V2ZW50IHBlcm1pc3NpdmU9MQp0eXBlPUFWQyBtc2c9YXVkaXQoMTU4MTU4MDM5
OS4xNjU6Nzg3KTogYXZjOiAgZGVuaWVkICB7IGNwdSB9IGZvciAgcGlkPTg4NTkgY29tbT0icGVy
ZiIgc2NvbnRleHQ9dXNlcl91OnVzZXJfcjp1c2VyX3QgdGNvbnRleHQ9dXNlcl91OnVzZXJfcjp1
c2VyX3QgdGNsYXNzPXBlcmZfZXZlbnQgcGVybWlzc2l2ZT0xCnR5cGU9QVZDIG1zZz1hdWRpdCgx
NTgxNTgwMzk5LjE2NTo3ODgpOiBhdmM6ICBkZW5pZWQgIHsgd3JpdGUgfSBmb3IgIHBpZD04ODU5
IGNvbW09InBlcmYiIHNjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl90IHRjb250ZXh0PXVzZXJf
dTp1c2VyX3I6dXNlcl90IHRjbGFzcz1wZXJmX2V2ZW50IHBlcm1pc3NpdmU9MQp0eXBlPUFWQyBt
c2c9YXVkaXQoMTU4MTU4MDQwOC4wNzg6NzkxKTogYXZjOiAgZGVuaWVkICB7IHJlYWQgfSBmb3Ig
IHBpZD04ODU5IGNvbW09InBlcmYiIHNjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl90IHRjb250
ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl90IHRjbGFzcz1wZXJmX2V2ZW50IHBlcm1pc3NpdmU9MQoK
ZG1lc2c6CgpbICAxMzcuODc3NzEzXSBzZWN1cml0eV9jYXBhYmxlKDAwMDAwMDAwNzFmN2VlNmUs
IDAwMDAwMDAwOWRkN2E1ZmMsIENBUF9QRVJGTU9OLCAwKSA9ID8KWyAgMTM3Ljg3Nzc3NF0gY3Jl
YWRfaGFzX2NhcGFiaWxpdHkoQ0FQX1BFUkZNT04pID0gMApbICAxMzcuODc3Nzc1XSBwcmlvciBh
dmNfYXVkaXQoQ0FQX1BFUkZNT04pClsgIDEzNy44Nzc3NzldIHNlY3VyaXR5X2NhcGFibGUoMDAw
MDAwMDA3MWY3ZWU2ZSwgMDAwMDAwMDA5ZGQ3YTVmYywgQ0FQX1BFUkZNT04sIDApID0gMAoKWyAg
MTM3Ljg3Nzc4NF0gc2VjdXJpdHlfY2FwYWJsZSgwMDAwMDAwMDcxZjdlZTZlLCAwMDAwMDAwMDlk
ZDdhNWZjLCBDQVBfUEVSRk1PTiwgMCkgPSA/ClsgIDEzNy44Nzc3ODVdIGNyZWFkX2hhc19jYXBh
YmlsaXR5KENBUF9QRVJGTU9OKSA9IDAKWyAgMTM3Ljg3Nzc4Nl0gc2VjdXJpdHlfY2FwYWJsZSgw
MDAwMDAwMDcxZjdlZTZlLCAwMDAwMDAwMDlkZDdhNWZjLCBDQVBfUEVSRk1PTiwgMCkgPSAwCgpb
ICAxMzcuODc3Nzk0XSBzZWN1cml0eV9jYXBhYmxlKDAwMDAwMDAwNzFmN2VlNmUsIDAwMDAwMDAw
OWRkN2E1ZmMsIENBUF9QRVJGTU9OLCAwKSA9ID8KWyAgMTM3Ljg3Nzc5NV0gY3JlYWRfaGFzX2Nh
cGFiaWxpdHkoQ0FQX1BFUkZNT04pID0gMApbICAxMzcuODc3Nzk2XSBzZWN1cml0eV9jYXBhYmxl
KDAwMDAwMDAwNzFmN2VlNmUsIDAwMDAwMDAwOWRkN2E1ZmMsIENBUF9QRVJGTU9OLCAwKSA9IDAK
Ci4uLgoKaW4gQ0FQX1NZU19BRE1JTiBjYXNlOgoKJCBnZXRjYXAgcGVyZgpwZXJmID0gY2FwX3N5
c19wdHJhY2UsY2FwX3N5c19hZG1pbixjYXBfc3lzbG9nK2VwCgokIHBlcmYgc3RhdCAtYQoKdHlw
ZT1BVkMgbXNnPWF1ZGl0KDE1ODE1ODA3NDcuOTI4OjgzNSk6IGF2YzogIGRlbmllZCAgeyBvcGVu
IH0gZm9yICBwaWQ9ODkyNyBjb21tPSJwZXJmIiBzY29udGV4dD11c2VyX3U6dXNlcl9yOnVzZXJf
dCB0Y29udGV4dD11c2VyX3U6dXNlcl9yOnVzZXJfdCB0Y2xhc3M9cGVyZl9ldmVudCBwZXJtaXNz
aXZlPTEKdHlwZT1BVkMgbXNnPWF1ZGl0KDE1ODE1ODA3NDcuOTI4OjgzNik6IGF2YzogIGRlbmll
ZCAgeyBjcHUgfSBmb3IgIHBpZD04OTI3IGNvbW09InBlcmYiIHNjb250ZXh0PXVzZXJfdTp1c2Vy
X3I6dXNlcl90IHRjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl90IHRjbGFzcz1wZXJmX2V2ZW50
IHBlcm1pc3NpdmU9MQp0eXBlPUFWQyBtc2c9YXVkaXQoMTU4MTU4MDc0Ny45Mjg6ODM3KTogYXZj
OiAgZGVuaWVkICB7IGtlcm5lbCB9IGZvciAgcGlkPTg5MjcgY29tbT0icGVyZiIgc2NvbnRleHQ9
dXNlcl91OnVzZXJfcjp1c2VyX3QgdGNvbnRleHQ9dXNlcl91OnVzZXJfcjp1c2VyX3QgdGNsYXNz
PXBlcmZfZXZlbnQgcGVybWlzc2l2ZT0xCnR5cGU9QVZDIG1zZz1hdWRpdCgxNTgxNTgwNzQ3Ljky
ODo4MzgpOiBhdmM6ICBkZW5pZWQgIHsgcmVhZCB9IGZvciAgcGlkPTg5MjcgY29tbT0icGVyZiIg
c2NvbnRleHQ9dXNlcl91OnVzZXJfcjp1c2VyX3QgdGNvbnRleHQ9dXNlcl91OnVzZXJfcjp1c2Vy
X3QgdGNsYXNzPXBlcmZfZXZlbnQgcGVybWlzc2l2ZT0xCnR5cGU9QVZDIG1zZz1hdWRpdCgxNTgx
NTgwNzQ3LjkyODo4MzkpOiBhdmM6ICBkZW5pZWQgIHsgd3JpdGUgfSBmb3IgIHBpZD04OTI3IGNv
bW09InBlcmYiIHNjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl90IHRjb250ZXh0PXVzZXJfdTp1
c2VyX3I6dXNlcl90IHRjbGFzcz1wZXJmX2V2ZW50IHBlcm1pc3NpdmU9MQouLi4KCiQgcGVyZiBy
ZWNvcmQgLS0gbHMKLi4uCnR5cGU9QVZDIG1zZz1hdWRpdCgxNTgxNTgwNzQ3LjkzMDo4NDMpOiBh
dmM6ICBkZW5pZWQgIHsgc3lzX3B0cmFjZSB9IGZvciAgcGlkPTg5MjcgY29tbT0icGVyZiIgY2Fw
YWJpbGl0eT0xOSAgc2NvbnRleHQ9dXNlcl91OnVzZXJfcjp1c2VyX3QgdGNvbnRleHQ9dXNlcl91
OnVzZXJfcjp1c2VyX3QgdGNsYXNzPWNhcGFiaWxpdHkgcGVybWlzc2l2ZT0xCi4uLgoKZG1lc2c6
CgpbICAyNzYuNzE0MjY2XSBzZWN1cml0eV9jYXBhYmxlKDAwMDAwMDAwNmIwOWFkOGEsIDAwMDAw
MDAwOWRkN2E1ZmMsIENBUF9QRVJGTU9OLCAwKSA9ID8KWyAgMjc2LjcxNDI2OF0gc2VjdXJpdHlf
Y2FwYWJsZSgwMDAwMDAwMDZiMDlhZDhhLCAwMDAwMDAwMDlkZDdhNWZjLCBDQVBfUEVSRk1PTiwg
MCkgPSAtMQoKWyAgMjc2LjcxNDI2OV0gc2VjdXJpdHlfY2FwYWJsZSgwMDAwMDAwMDZiMDlhZDhh
LCAwMDAwMDAwMDlkZDdhNWZjLCBDQVBfU1lTX0FETUlOLCAwKSA9ID8KWyAgMjc2LjcxNDI3MF0g
Y3JlYWRfaGFzX2NhcGFiaWxpdHkoQ0FQX1NZU19BRE1JTikgPSAwClsgIDI3Ni43MTQyNzBdIHNl
Y3VyaXR5X2NhcGFibGUoMDAwMDAwMDA2YjA5YWQ4YSwgMDAwMDAwMDA5ZGQ3YTVmYywgQ0FQX1NZ
U19BRE1JTiwgMCkgPSAwCgpbICAyNzYuNzE0Mjg3XSBzZWN1cml0eV9jYXBhYmxlKDAwMDAwMDAw
NmIwOWFkOGEsIDAwMDAwMDAwOWRkN2E1ZmMsIENBUF9QRVJGTU9OLCAwKSA9ID8KWyAgMjc2Ljcx
NDI4N10gc2VjdXJpdHlfY2FwYWJsZSgwMDAwMDAwMDZiMDlhZDhhLCAwMDAwMDAwMDlkZDdhNWZj
LCBDQVBfUEVSRk1PTiwgMCkgPSAtMQoKWyAgMjc2LjcxNDI4OF0gc2VjdXJpdHlfY2FwYWJsZSgw
MDAwMDAwMDZiMDlhZDhhLCAwMDAwMDAwMDlkZDdhNWZjLCBDQVBfU1lTX0FETUlOLCAwKSA9ID8K
WyAgMjc2LjcxNDI4OF0gY3JlYWRfaGFzX2NhcGFiaWxpdHkoQ0FQX1NZU19BRE1JTikgPSAwClsg
IDI3Ni43MTQyODldIHNlY3VyaXR5X2NhcGFibGUoMDAwMDAwMDA2YjA5YWQ4YSwgMDAwMDAwMDA5
ZGQ3YTVmYywgQ0FQX1NZU19BRE1JTiwgMCkgPSAwCgpbICAyNzYuNzE0Mjk0XSBzZWN1cml0eV9j
YXBhYmxlKDAwMDAwMDAwNmIwOWFkOGEsIDAwMDAwMDAwOWRkN2E1ZmMsIENBUF9QRVJGTU9OLCAw
KSA9ID8KWyAgMjc2LjcxNDI5NV0gc2VjdXJpdHlfY2FwYWJsZSgwMDAwMDAwMDZiMDlhZDhhLCAw
MDAwMDAwMDlkZDdhNWZjLCBDQVBfUEVSRk1PTiwgMCkgPSAtMQoKWyAgMjc2LjcxNDI5NV0gc2Vj
dXJpdHlfY2FwYWJsZSgwMDAwMDAwMDZiMDlhZDhhLCAwMDAwMDAwMDlkZDdhNWZjLCBDQVBfU1lT
X0FETUlOLCAwKSA9ID8KWyAgMjc2LjcxNDI5Nl0gY3JlYWRfaGFzX2NhcGFiaWxpdHkoQ0FQX1NZ
U19BRE1JTikgPSAwClsgIDI3Ni43MTQyOTZdIHNlY3VyaXR5X2NhcGFibGUoMDAwMDAwMDA2YjA5
YWQ4YSwgMDAwMDAwMDA5ZGQ3YTVmYywgQ0FQX1NZU19BRE1JTiwgMCkgPSAwCgouLi4KCmluIHVu
cHJpdmlsZWdlZCBjYXNlOgoKJCBnZXRjYXAgcGVyZgpwZXJmID0KCiQgcGVyZiBzdGF0IC1hOyBw
ZXJmIHJlY29yZCAtYQoKLi4uCgpkbWVzZzoKClsgIDk0Ny4yNzU2MTFdIHNlY3VyaXR5X2NhcGFi
bGUoMDAwMDAwMDBkM2E3NTM3NywgMDAwMDAwMDA5ZGQ3YTVmYywgQ0FQX1BFUkZNT04sIDApID0g
PwpbICA5NDcuMjc1NjEzXSBzZWN1cml0eV9jYXBhYmxlKDAwMDAwMDAwZDNhNzUzNzcsIDAwMDAw
MDAwOWRkN2E1ZmMsIENBUF9QRVJGTU9OLCAwKSA9IC0xCgpbICA5NDcuMjc1NjE0XSBzZWN1cml0
eV9jYXBhYmxlKDAwMDAwMDAwZDNhNzUzNzcsIDAwMDAwMDAwOWRkN2E1ZmMsIENBUF9TWVNfQURN
SU4sIDApID0gPwpbICA5NDcuMjc1NjE1XSBzZWN1cml0eV9jYXBhYmxlKDAwMDAwMDAwZDNhNzUz
NzcsIDAwMDAwMDAwOWRkN2E1ZmMsIENBUF9TWVNfQURNSU4sIDApID0gLTEKClsgIDk0Ny4yNzU2
MzZdIHNlY3VyaXR5X2NhcGFibGUoMDAwMDAwMDBkM2E3NTM3NywgMDAwMDAwMDA5ZGQ3YTVmYywg
Q0FQX1BFUkZNT04sIDApID0gPwpbICA5NDcuMjc1NjM3XSBzZWN1cml0eV9jYXBhYmxlKDAwMDAw
MDAwZDNhNzUzNzcsIDAwMDAwMDAwOWRkN2E1ZmMsIENBUF9QRVJGTU9OLCAwKSA9IC0xCgpbICA5
NDcuMjc1NjM4XSBzZWN1cml0eV9jYXBhYmxlKDAwMDAwMDAwZDNhNzUzNzcsIDAwMDAwMDAwOWRk
N2E1ZmMsIENBUF9TWVNfQURNSU4sIDApID0gPwpbICA5NDcuMjc1NjM4XSBzZWN1cml0eV9jYXBh
YmxlKDAwMDAwMDAwZDNhNzUzNzcsIDAwMDAwMDAwOWRkN2E1ZmMsIENBUF9TWVNfQURNSU4sIDAp
ID0gLTEKCi4uLgoKU28gaXQgbG9va3MgbGlrZSBDQVBfUEVSRk1PTiBhbmQgQ0FQX1NZU19BRE1J
TiBhcmUgbm90IGV2ZXIgbG9nZ2VkIGJ5IEFWQyBzaW11bHRhbmVvdXNseSwKaW4gdGhlIGN1cnJl
bnQgTFNNIGFuZCBwZXJmbW9uX2NhcGFibGUoKSBpbXBsZW1lbnRhdGlvbnMuCgpJZiBwZXJmbW9u
IGlzIGdyYW50ZWQ6CglwZXJmbW9uIGlzIG5vdCBsb2dnZWQgYnkgY2FwYWJpbGl0aWVzLCBwZXJm
bW9uIGlzIGxvZ2dlZCBieSBBVkMsCglubyBjaGVjayBmb3Igc3lzX2FkbWluIGJ5IHBlcmZtb25f
Y2FwYWJsZSgpLgoKSWYgcGVyZm1vbiBpcyBub3QgZ3JhbnRlZCBidXQgc3lzX2FkbWluIGlzIGdy
YW50ZWQ6CglwZXJmbW9uIGlzIG5vdCBsb2dnZWQgYnkgY2FwYWJpbGl0aWVzLCBBVkMgbG9nZ2lu
ZyBpcyBub3QgY2FsbGVkIGZvciBwZXJmbW9uLAoJc3lzX2FkbWluIGlzIG5vdCBsb2dnZWQgYnkg
Y2FwYWJpbGl0aWVzLCBzeXNfYWRtaW4gaXMgbm90IGxvZ2dlZCBieSBBVkMsIGZvciBzb21lIGlu
dGVuZGVkIHJlYXNvbj8KCk5vIGNhcHMgYXJlIGdyYW50ZWQ6CglBVkMgbG9nZ2luZyBpcyBub3Qg
Y2FsbGVkIGVpdGhlciBmb3IgcGVyZm1vbiBvciBmb3Igc3lzX2FkbWluLgoKQlRXLCBpcyB0aGVy
ZSBhIHdheSB0byBtYXkgYmUgZHJvcCBzb21lIEFWIGNhY2hlIHNvIGRlbmlhbHMgd291bGQgYXBw
ZWFyIGluIGF1ZGl0IGluIHRoZSBuZXh0IEFWIGFjY2Vzcz8KCldlbGwsIEkgZ3Vlc3MgeW91IGhh
dmUgaW5pdGlhbGx5IG1lbnRpb25lZCBzb21lIGNhc2Ugc2ltaWxhciB0byB0aGlzIChub3RlIHRo
YXQgaWRzIGFyZSBub3QgdGhlIHNhbWUgYnV0IHBpZHM9IGFyZSk6Cgp0eXBlPUFWQyBtc2c9YXVk
aXQoMTU4MTU4MDM5OS4xNjU6Nzg0KTogYXZjOiAgZGVuaWVkICB7IG9wZW4gfSBmb3IgIHBpZD04
ODU5IGNvbW09InBlcmYiIHNjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl90IHRjb250ZXh0PXVz
ZXJfdTp1c2VyX3I6dXNlcl90IHRjbGFzcz1wZXJmX2V2ZW50IHBlcm1pc3NpdmU9MQp0eXBlPUFW
QyBtc2c9YXVkaXQoMTU4MTU4MDM5OS4xNjU6Nzg1KTogYXZjOiAgZGVuaWVkICB7IHBlcmZtb24g
fSBmb3IgIHBpZD04ODU5IGNvbW09InBlcmYiIGNhcGFiaWxpdHk9MzggIHNjb250ZXh0PXVzZXJf
dTp1c2VyX3I6dXNlcl90IHRjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl90IHRjbGFzcz1jYXBh
YmlsaXR5MiBwZXJtaXNzaXZlPTEKdHlwZT1BVkMgbXNnPWF1ZGl0KCAgICAgICAgICAuICAgOiAg
ICk6IGF2YzogIGRlbmllZCAgeyBzeXNfYWRtaW4gfSBmb3IgIHBpZD04ODU5IGNvbW09InBlcmYi
IGNhcGFiaWxpdHk9MjEgIHNjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl90IHRjb250ZXh0PXVz
ZXJfdTp1c2VyX3I6dXNlcl90IHRjbGFzcz1jYXBhYmlsaXR5MiBwZXJtaXNzaXZlPTEKdHlwZT1B
VkMgbXNnPWF1ZGl0KDE1ODE1ODAzOTkuMTY1Ojc4Nik6IGF2YzogIGRlbmllZCAgeyBrZXJuZWwg
fSBmb3IgIHBpZD04ODU5IGNvbW09InBlcmYiIHNjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl90
IHRjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl90IHRjbGFzcz1wZXJmX2V2ZW50IHBlcm1pc3Np
dmU9MQp0eXBlPUFWQyBtc2c9YXVkaXQoMTU4MTU4MDM5OS4xNjU6Nzg3KTogYXZjOiAgZGVuaWVk
ICB7IGNwdSB9IGZvciAgcGlkPTg4NTkgY29tbT0icGVyZiIgc2NvbnRleHQ9dXNlcl91OnVzZXJf
cjp1c2VyX3QgdGNvbnRleHQ9dXNlcl91OnVzZXJfcjp1c2VyX3QgdGNsYXNzPXBlcmZfZXZlbnQg
cGVybWlzc2l2ZT0xCnR5cGU9QVZDIG1zZz1hdWRpdCgxNTgxNTgwMzk5LjE2NTo3ODgpOiBhdmM6
ICBkZW5pZWQgIHsgd3JpdGUgfSBmb3IgIHBpZD04ODU5IGNvbW09InBlcmYiIHNjb250ZXh0PXVz
ZXJfdTp1c2VyX3I6dXNlcl90IHRjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl90IHRjbGFzcz1w
ZXJmX2V2ZW50IHBlcm1pc3NpdmU9MQp0eXBlPUFWQyBtc2c9YXVkaXQoMTU4MTU4MDQwOC4wNzg6
NzkxKTogYXZjOiAgZGVuaWVkICB7IHJlYWQgfSBmb3IgIHBpZD04ODU5IGNvbW09InBlcmYiIHNj
b250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl90IHRjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl90
IHRjbGFzcz1wZXJmX2V2ZW50IHBlcm1pc3NpdmU9MQoKU28gdGhlIG1lc3NhZ2UgY291bGQgYmUg
bGlrZSB0aGlzOgoKIklmIGF1ZGl0IGxvZ3MgZm9yIGEgcHJvY2VzcyB1c2luZyBwZXJmX2V2ZW50
cyByZWxhdGVkIHN5c2NhbGxzIGkuZS4gcGVyZl9ldmVudF9vcGVuKCksIHJlYWQoKSwgd3JpdGUo
KSwKIGlvY3RsKCksIG1tYXAoKSBjb250YWluIGRlbmlhbHMgYm90aCBmb3IgQ0FQX1BFUkZNT04g
YW5kIENBUF9TWVNfQURNSU4gY2FwYWJpbGl0aWVzIHRoZW4gcHJvdmlkaW5nIHRoZQogcHJvY2Vz
cyB3aXRoIENBUF9QRVJGTU9OIGNhcGFiaWxpdHkgc2luZ2x5IGlzIHRoZSBzZWN1cmUgcHJlZmVy
cmVkIGFwcHJvYWNoIHRvIHJlc29sdmUgYWNjZXNzIGRlbmlhbHMgCiB0byBwZXJmb3JtYW5jZSBt
b25pdG9yaW5nIGFuZCBvYnNlcnZhYmlsaXR5IG9wZXJhdGlvbnMuIgoKfkFsZXhleQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wcm9maWxlLWxpc3Qg
bWFpbGluZyBsaXN0Cm9wcm9maWxlLWxpc3RAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8v
bGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wcm9maWxlLWxpc3QK
