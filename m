Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3FB155A98
	for <lists+oprofile-list@lfdr.de>; Fri,  7 Feb 2020 16:22:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1j05SP-0004jj-9v; Fri, 07 Feb 2020 15:22:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tglx@linutronix.de>) id 1j02MK-0004Jf-1V
 for oprofile-list@lists.sourceforge.net; Fri, 07 Feb 2020 12:03:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Czvp/TyCbGGhKIob5ZsCecIlGxXNm5gApo6ZYRXPLfc=; b=ge/rNjUafzkjLPOjzumXBxfF+A
 muA5bdhjpswezEqsTZnA5Kj3p1FkfOM5lsnVO9gIloS8Og7cHCg2YQOWenxzxOiQs6wZ11hrnJNAx
 a5rUyccmOd5iKyj5rW6rbeKJ1NPq7lek6PK3HRYq0MkS3tEhlJyhBmb4BT2ZHcLvRgVA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Czvp/TyCbGGhKIob5ZsCecIlGxXNm5gApo6ZYRXPLfc=; b=P
 sqqTem+bB72wZdyWvV++2nEv/WXGfR5on8mxN4skCeYWW0JrrdMNe8UDf8JsqJcYhLsyiU2aGz6K8
 qvX34oO5Ib2fIKj6UaYsXgtvxBQmnv6vFpIS3cAHDtgw+Ubv4FTw+Iszbx8o2nlQ+3M2GT9y5xpyu
 +J4DOYQIQHQHnLRA=;
Received: from galois.linutronix.de ([193.142.43.55])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:DHE-RSA-AES128-SHA:128) (Exim 4.92.2) id 1j02MH-00Cv0y-Nx
 for oprofile-list@lists.sourceforge.net; Fri, 07 Feb 2020 12:03:43 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1j01xc-000288-1g; Fri, 07 Feb 2020 12:38:12 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 7CCA5100375; Fri,  7 Feb 2020 11:38:11 +0000 (GMT)
From: Thomas Gleixner <tglx@linutronix.de>
To: Alexey Budankov <alexey.budankov@linux.intel.com>,
 Stephen Smalley <sds@tycho.nsa.gov>, Serge Hallyn <serge@hallyn.com>,
 James Morris <jmorris@namei.org>
Subject: Re: [PATCH v5 01/10] capabilities: introduce CAP_PERFMON to kernel
 and user space
In-Reply-To: <2b608e26-354b-3df9-aea9-58e56dc0c5e5@linux.intel.com>
Date: Fri, 07 Feb 2020 11:38:11 +0000
Message-ID: <875zgizkyk.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1j02MH-00Cv0y-Nx
X-Mailman-Approved-At: Fri, 07 Feb 2020 15:22:12 +0000
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
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Paul Mackerras <paulus@samba.org>, Jiri Olsa <jolsa@redhat.com>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>,
 Andi Kleen <ak@linux.intel.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Igor Lubashev <ilubashe@akamai.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Robert Richter <rric@kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Stephane Eranian <eranian@google.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Andy Lutomirski <luto@amacapital.net>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: oprofile-list-bounces@lists.sourceforge.net

QWxleGV5IEJ1ZGFua292IDxhbGV4ZXkuYnVkYW5rb3ZAbGludXguaW50ZWwuY29tPiB3cml0ZXM6
Cj4gT24gMjIuMDEuMjAyMCAxNzoyNSwgQWxleGV5IEJ1ZGFua292IHdyb3RlOgo+PiBPbiAyMi4w
MS4yMDIwIDE3OjA3LCBTdGVwaGVuIFNtYWxsZXkgd3JvdGU6Cj4+Pj4gSXQga2VlcHMgdGhlIGlt
cGxlbWVudGF0aW9uIHNpbXBsZSBhbmQgcmVhZGFibGUuIFRoZSBpbXBsZW1lbnRhdGlvbiBpcyBt
b3JlCj4+Pj4gcGVyZm9ybWFudCBpbiB0aGUgc2Vuc2Ugb2YgY2FsbGluZyB0aGUgQVBJIC0gb25l
IGNhcGFibGUoKSBjYWxsIGZvciBDQVBfUEVSRk1PTgo+Pj4+IHByaXZpbGVnZWQgcHJvY2Vzcy4K
Pj4+Pgo+Pj4+IFllcywgaXQgYmxvYXRzIGF1ZGl0IGxvZyBmb3IgQ0FQX1NZU19BRE1JTiBwcml2
aWxlZ2VkIGFuZCB1bnByaXZpbGVnZWQgcHJvY2Vzc2VzLAo+Pj4+IGJ1dCB0aGlzIGJsb2F0aW5n
IGFsc28gYWR2ZXJ0aXNlcyBhbmQgbGV2ZXJhZ2VzIHVzaW5nIG1vcmUgc2VjdXJlIENBUF9QRVJG
TU9OCj4+Pj4gYmFzZWQgYXBwcm9hY2ggdG8gdXNlIHBlcmZfZXZlbnRfb3BlbiBzeXN0ZW0gY2Fs
bC4KPj4+Cj4+PiBJIGNhbiBsaXZlIHdpdGggdGhhdC7CoCBXZSBqdXN0IG5lZWQgdG8gZG9jdW1l
bnQgdGhhdCB3aGVuIHlvdSBzZWUKPj4+IGJvdGggYSBDQVBfUEVSRk1PTiBhbmQgYSBDQVBfU1lT
X0FETUlOIGF1ZGl0IG1lc3NhZ2UgZm9yIGEgcHJvY2VzcywKPj4+IHRyeSBvbmx5IGFsbG93aW5n
IENBUF9QRVJGTU9OIGZpcnN0IGFuZCBzZWUgaWYgdGhhdCByZXNvbHZlcyB0aGUKPj4+IGlzc3Vl
LsKgIFdlIGhhdmUgYSBzaW1pbGFyIGlzc3VlIHdpdGggQ0FQX0RBQ19SRUFEX1NFQVJDSCB2ZXJz
dXMKPj4+IENBUF9EQUNfT1ZFUlJJREUuCj4+IAo+PiBwZXJmIHNlY3VyaXR5IFsxXSBkb2N1bWVu
dCBjYW4gYmUgdXBkYXRlZCwgYXQgbGVhc3QsIHRvIGFsaWduIGFuZCBkb2N1bWVudCAKPj4gdGhp
cyBhdWRpdCBsb2dnaW5nIHNwZWNpZmljcy4KPgo+IEFuZCBJIHBsYW4gdG8gdXBkYXRlIHRoZSBk
b2N1bWVudCByaWdodCBhZnRlciB0aGlzIHBhdGNoIHNldCBpcyBhY2NlcHRlZC4KPiBGZWVsIGZy
ZWUgdG8gbGV0IG1lIGtub3cgb2YgdGhlIHBsYWNlcyBpbiB0aGUga2VybmVsIGRvY3MgdGhhdCBh
bHNvCj4gcmVxdWlyZSB1cGRhdGUgdy5yLnQgQ0FQX1BFUkZNT04gZXh0ZW5zaW9uLgoKVGhlIGRv
Y3VtZW50YXRpb24gdXBkYXRlIHdhbnRzIGJlIHBhcnQgb2YgdGhlIHBhdGNoIHNldCBhbmQgbm90
IHBsYW5uZWQKdG8gYmUgZG9uZSBfYWZ0ZXJfIHRoZSBwYXRjaCBzZXQgaXMgbWVyZ2VkLgoKVGhh
bmtzLAoKICAgICAgICB0Z2x4CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Kb3Byb2ZpbGUtbGlzdCBtYWlsaW5nIGxpc3QKb3Byb2ZpbGUtbGlzdEBsaXN0
cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlz
dGluZm8vb3Byb2ZpbGUtbGlzdAo=
