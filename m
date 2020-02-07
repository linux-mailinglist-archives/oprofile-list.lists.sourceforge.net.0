Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 16108155A97
	for <lists+oprofile-list@lfdr.de>; Fri,  7 Feb 2020 16:22:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1j05SP-0004js-D0; Fri, 07 Feb 2020 15:22:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexey.budankov@linux.intel.com>) id 1j03r0-00025l-GZ
 for oprofile-list@lists.sourceforge.net; Fri, 07 Feb 2020 13:39:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:Cc:To:Subject:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=et0RpIKk2WYw0zZTPU5buo7t8C8GLk2hG7JMSgRvrcY=; b=AswFvfoNM/QhlbX2xSci6TN6Zg
 LUMUe7e3g+QuWa3B9qFqvlFvmIAI+WIgbIZaDHY3M3dypdcu97WPdJk10CVbtWVNZipw/HZE830dq
 VwXSVwrfiIekmVNBbq8kJtAiY+yiIOYj1iPSac1FCyFWkogdzi3L3VnqeU1TjwZ7MW8w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:Cc:To:Subject:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=et0RpIKk2WYw0zZTPU5buo7t8C8GLk2hG7JMSgRvrcY=; b=entFe0yvLM8a06vu+Fyv9uHyb/
 drwSgGnE3FdJsc6WhrScLpNY6yEFj276jVIxnvf4gJQXT2wpo2VPkNyknoWU2rCQsDPcimu3G5eCA
 LyN3u8NbXSDy4Z4I39RvxdDVenAuwRmmKM+k56aXlS2hQQiwbd9ae0GxuTN7W1gGk3pQ=;
Received: from mga04.intel.com ([192.55.52.120])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j03qx-00D2rc-Nt
 for oprofile-list@lists.sourceforge.net; Fri, 07 Feb 2020 13:39:29 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 05:39:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,413,1574150400"; d="scan'208";a="220798400"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga007.jf.intel.com with ESMTP; 07 Feb 2020 05:39:21 -0800
Received: from [10.125.252.178] (abudanko-mobl.ccr.corp.intel.com
 [10.125.252.178])
 by linux.intel.com (Postfix) with ESMTP id 7EB57580458;
 Fri,  7 Feb 2020 05:39:13 -0800 (PST)
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Subject: Re: [PATCH v5 01/10] capabilities: introduce CAP_PERFMON to kernel
 and user space
To: Thomas Gleixner <tglx@linutronix.de>, Stephen Smalley
 <sds@tycho.nsa.gov>, Serge Hallyn <serge@hallyn.com>,
 James Morris <jmorris@namei.org>
References: <875zgizkyk.fsf@nanos.tec.linutronix.de>
Organization: Intel Corp.
Message-ID: <7d6f4210-423f-e454-3910-9f8e17dff1aa@linux.intel.com>
Date: Fri, 7 Feb 2020 16:39:12 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <875zgizkyk.fsf@nanos.tec.linutronix.de>
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
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j03qx-00D2rc-Nt
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

Ck9uIDA3LjAyLjIwMjAgMTQ6MzgsIFRob21hcyBHbGVpeG5lciB3cm90ZToKPiBBbGV4ZXkgQnVk
YW5rb3YgPGFsZXhleS5idWRhbmtvdkBsaW51eC5pbnRlbC5jb20+IHdyaXRlczoKPj4gT24gMjIu
MDEuMjAyMCAxNzoyNSwgQWxleGV5IEJ1ZGFua292IHdyb3RlOgo+Pj4gT24gMjIuMDEuMjAyMCAx
NzowNywgU3RlcGhlbiBTbWFsbGV5IHdyb3RlOgo+Pj4+PiBJdCBrZWVwcyB0aGUgaW1wbGVtZW50
YXRpb24gc2ltcGxlIGFuZCByZWFkYWJsZS4gVGhlIGltcGxlbWVudGF0aW9uIGlzIG1vcmUKPj4+
Pj4gcGVyZm9ybWFudCBpbiB0aGUgc2Vuc2Ugb2YgY2FsbGluZyB0aGUgQVBJIC0gb25lIGNhcGFi
bGUoKSBjYWxsIGZvciBDQVBfUEVSRk1PTgo+Pj4+PiBwcml2aWxlZ2VkIHByb2Nlc3MuCj4+Pj4+
Cj4+Pj4+IFllcywgaXQgYmxvYXRzIGF1ZGl0IGxvZyBmb3IgQ0FQX1NZU19BRE1JTiBwcml2aWxl
Z2VkIGFuZCB1bnByaXZpbGVnZWQgcHJvY2Vzc2VzLAo+Pj4+PiBidXQgdGhpcyBibG9hdGluZyBh
bHNvIGFkdmVydGlzZXMgYW5kIGxldmVyYWdlcyB1c2luZyBtb3JlIHNlY3VyZSBDQVBfUEVSRk1P
Tgo+Pj4+PiBiYXNlZCBhcHByb2FjaCB0byB1c2UgcGVyZl9ldmVudF9vcGVuIHN5c3RlbSBjYWxs
Lgo+Pj4+Cj4+Pj4gSSBjYW4gbGl2ZSB3aXRoIHRoYXQuwqAgV2UganVzdCBuZWVkIHRvIGRvY3Vt
ZW50IHRoYXQgd2hlbiB5b3Ugc2VlCj4+Pj4gYm90aCBhIENBUF9QRVJGTU9OIGFuZCBhIENBUF9T
WVNfQURNSU4gYXVkaXQgbWVzc2FnZSBmb3IgYSBwcm9jZXNzLAo+Pj4+IHRyeSBvbmx5IGFsbG93
aW5nIENBUF9QRVJGTU9OIGZpcnN0IGFuZCBzZWUgaWYgdGhhdCByZXNvbHZlcyB0aGUKPj4+PiBp
c3N1ZS7CoCBXZSBoYXZlIGEgc2ltaWxhciBpc3N1ZSB3aXRoIENBUF9EQUNfUkVBRF9TRUFSQ0gg
dmVyc3VzCj4+Pj4gQ0FQX0RBQ19PVkVSUklERS4KPj4+Cj4+PiBwZXJmIHNlY3VyaXR5IFsxXSBk
b2N1bWVudCBjYW4gYmUgdXBkYXRlZCwgYXQgbGVhc3QsIHRvIGFsaWduIGFuZCBkb2N1bWVudCAK
Pj4+IHRoaXMgYXVkaXQgbG9nZ2luZyBzcGVjaWZpY3MuCj4+Cj4+IEFuZCBJIHBsYW4gdG8gdXBk
YXRlIHRoZSBkb2N1bWVudCByaWdodCBhZnRlciB0aGlzIHBhdGNoIHNldCBpcyBhY2NlcHRlZC4K
Pj4gRmVlbCBmcmVlIHRvIGxldCBtZSBrbm93IG9mIHRoZSBwbGFjZXMgaW4gdGhlIGtlcm5lbCBk
b2NzIHRoYXQgYWxzbwo+PiByZXF1aXJlIHVwZGF0ZSB3LnIudCBDQVBfUEVSRk1PTiBleHRlbnNp
b24uCj4gCj4gVGhlIGRvY3VtZW50YXRpb24gdXBkYXRlIHdhbnRzIGJlIHBhcnQgb2YgdGhlIHBh
dGNoIHNldCBhbmQgbm90IHBsYW5uZWQKPiB0byBiZSBkb25lIF9hZnRlcl8gdGhlIHBhdGNoIHNl
dCBpcyBtZXJnZWQuCgpXZWxsLCBhY2NlcHRlZC4gSXQgaXMgZ29pbmcgdG8gbWFrZSBwYXRjaGVz
ICMxMSBhbmQgYmV5b25kLgoKVGhhbmtzLApBbGV4ZXkKCj4gCj4gVGhhbmtzLAo+IAo+ICAgICAg
ICAgdGdseAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wcm9maWxlLWxpc3QgbWFpbGluZyBsaXN0Cm9wcm9maWxlLWxpc3RAbGlzdHMuc291cmNl
Zm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29w
cm9maWxlLWxpc3QK
