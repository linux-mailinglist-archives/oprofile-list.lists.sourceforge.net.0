Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 940C81660B3
	for <lists+oprofile-list@lfdr.de>; Thu, 20 Feb 2020 16:14:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1j4nXG-0005Tm-DU; Thu, 20 Feb 2020 15:14:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexey.budankov@linux.intel.com>) id 1j4lWQ-0002UO-6e
 for oprofile-list@lists.sourceforge.net; Thu, 20 Feb 2020 13:05:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+a8G5ATKsM3Z2qLhi6mdn5qfjeKNpXy1li83Jsv0D9s=; b=GE+GSh0BxEgmQL5D+1drolMM0x
 RnruwMa8p92tYxBloTAziYQg6PGscWV/AR6VPXRhT89JGY8U6FWm10vpNZTGw+rT+3yGRALMDgV7o
 FIE1udvoqm+yMRSqHwZSXDerLuICqzlDOUYJVls0AsL8joijueMiaW9TB1C2k79Xs03I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+a8G5ATKsM3Z2qLhi6mdn5qfjeKNpXy1li83Jsv0D9s=; b=ZFyTauaLTWLZrB68yA2qs/cqUa
 LdVyJzFwhIE4rWIKZlaAya8u7NALpXKjRpeUW2K5WNo3NhQDgCoST6jleYCV/x1D+hQW/j1YNPwpJ
 7z6Q/KyzB7gubHks/ppAgmyOXWjTHf0NBcOLqMD6OcRBYzo+M1JvyuxM726jh2pbt6Cg=;
Received: from mga07.intel.com ([134.134.136.100])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j4lWH-000r1G-Us
 for oprofile-list@lists.sourceforge.net; Thu, 20 Feb 2020 13:05:42 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 05:05:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,464,1574150400"; d="scan'208";a="283399590"
Received: from linux.intel.com ([10.54.29.200])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Feb 2020 05:05:21 -0800
Received: from [10.125.252.166] (abudanko-mobl.ccr.corp.intel.com
 [10.125.252.166])
 by linux.intel.com (Postfix) with ESMTP id 253CC580472;
 Thu, 20 Feb 2020 05:05:12 -0800 (PST)
Subject: Re: [PATCH v5 01/10] capabilities: introduce CAP_PERFMON to kernel
 and user space
From: Alexey Budankov <alexey.budankov@linux.intel.com>
To: Thomas Gleixner <tglx@linutronix.de>, Stephen Smalley
 <sds@tycho.nsa.gov>, Serge Hallyn <serge@hallyn.com>,
 James Morris <jmorris@namei.org>
References: <875zgizkyk.fsf@nanos.tec.linutronix.de>
 <7d6f4210-423f-e454-3910-9f8e17dff1aa@linux.intel.com>
Organization: Intel Corp.
Message-ID: <95aa57e6-4d78-39df-386c-a98734f19777@linux.intel.com>
Date: Thu, 20 Feb 2020 16:05:11 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <7d6f4210-423f-e454-3910-9f8e17dff1aa@linux.intel.com>
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
X-Headers-End: 1j4lWH-000r1G-Us
X-Mailman-Approved-At: Thu, 20 Feb 2020 15:14:41 +0000
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

Ck9uIDA3LjAyLjIwMjAgMTY6MzksIEFsZXhleSBCdWRhbmtvdiB3cm90ZToKPiAKPiBPbiAwNy4w
Mi4yMDIwIDE0OjM4LCBUaG9tYXMgR2xlaXhuZXIgd3JvdGU6Cj4+IEFsZXhleSBCdWRhbmtvdiA8
YWxleGV5LmJ1ZGFua292QGxpbnV4LmludGVsLmNvbT4gd3JpdGVzOgo+Pj4gT24gMjIuMDEuMjAy
MCAxNzoyNSwgQWxleGV5IEJ1ZGFua292IHdyb3RlOgo+Pj4+IE9uIDIyLjAxLjIwMjAgMTc6MDcs
IFN0ZXBoZW4gU21hbGxleSB3cm90ZToKPj4+Pj4+IEl0IGtlZXBzIHRoZSBpbXBsZW1lbnRhdGlv
biBzaW1wbGUgYW5kIHJlYWRhYmxlLiBUaGUgaW1wbGVtZW50YXRpb24gaXMgbW9yZQo+Pj4+Pj4g
cGVyZm9ybWFudCBpbiB0aGUgc2Vuc2Ugb2YgY2FsbGluZyB0aGUgQVBJIC0gb25lIGNhcGFibGUo
KSBjYWxsIGZvciBDQVBfUEVSRk1PTgo+Pj4+Pj4gcHJpdmlsZWdlZCBwcm9jZXNzLgo+Pj4+Pj4K
Pj4+Pj4+IFllcywgaXQgYmxvYXRzIGF1ZGl0IGxvZyBmb3IgQ0FQX1NZU19BRE1JTiBwcml2aWxl
Z2VkIGFuZCB1bnByaXZpbGVnZWQgcHJvY2Vzc2VzLAo+Pj4+Pj4gYnV0IHRoaXMgYmxvYXRpbmcg
YWxzbyBhZHZlcnRpc2VzIGFuZCBsZXZlcmFnZXMgdXNpbmcgbW9yZSBzZWN1cmUgQ0FQX1BFUkZN
T04KPj4+Pj4+IGJhc2VkIGFwcHJvYWNoIHRvIHVzZSBwZXJmX2V2ZW50X29wZW4gc3lzdGVtIGNh
bGwuCj4+Pj4+Cj4+Pj4+IEkgY2FuIGxpdmUgd2l0aCB0aGF0LsKgIFdlIGp1c3QgbmVlZCB0byBk
b2N1bWVudCB0aGF0IHdoZW4geW91IHNlZQo+Pj4+PiBib3RoIGEgQ0FQX1BFUkZNT04gYW5kIGEg
Q0FQX1NZU19BRE1JTiBhdWRpdCBtZXNzYWdlIGZvciBhIHByb2Nlc3MsCj4+Pj4+IHRyeSBvbmx5
IGFsbG93aW5nIENBUF9QRVJGTU9OIGZpcnN0IGFuZCBzZWUgaWYgdGhhdCByZXNvbHZlcyB0aGUK
Pj4+Pj4gaXNzdWUuwqAgV2UgaGF2ZSBhIHNpbWlsYXIgaXNzdWUgd2l0aCBDQVBfREFDX1JFQURf
U0VBUkNIIHZlcnN1cwo+Pj4+PiBDQVBfREFDX09WRVJSSURFLgo+Pj4+Cj4+Pj4gcGVyZiBzZWN1
cml0eSBbMV0gZG9jdW1lbnQgY2FuIGJlIHVwZGF0ZWQsIGF0IGxlYXN0LCB0byBhbGlnbiBhbmQg
ZG9jdW1lbnQgCj4+Pj4gdGhpcyBhdWRpdCBsb2dnaW5nIHNwZWNpZmljcy4KPj4+Cj4+PiBBbmQg
SSBwbGFuIHRvIHVwZGF0ZSB0aGUgZG9jdW1lbnQgcmlnaHQgYWZ0ZXIgdGhpcyBwYXRjaCBzZXQg
aXMgYWNjZXB0ZWQuCj4+PiBGZWVsIGZyZWUgdG8gbGV0IG1lIGtub3cgb2YgdGhlIHBsYWNlcyBp
biB0aGUga2VybmVsIGRvY3MgdGhhdCBhbHNvCj4+PiByZXF1aXJlIHVwZGF0ZSB3LnIudCBDQVBf
UEVSRk1PTiBleHRlbnNpb24uCj4+Cj4+IFRoZSBkb2N1bWVudGF0aW9uIHVwZGF0ZSB3YW50cyBi
ZSBwYXJ0IG9mIHRoZSBwYXRjaCBzZXQgYW5kIG5vdCBwbGFubmVkCj4+IHRvIGJlIGRvbmUgX2Fm
dGVyXyB0aGUgcGF0Y2ggc2V0IGlzIG1lcmdlZC4KPiAKPiBXZWxsLCBhY2NlcHRlZC4gSXQgaXMg
Z29pbmcgdG8gbWFrZSBwYXRjaGVzICMxMSBhbmQgYmV5b25kLgoKUGF0Y2hlcyAjMTEgYW5kICMx
MiBvZiB2NyBbMV0gY29udGFpbiBpbmZvcm1hdGlvbiBvbiBDQVBfUEVSRk1PTiBpbnRlbnRpb24g
YW5kIHVzYWdlLgpQYXRjaCBmb3IgbWFuLXBhZ2VzIFsyXSBleHRlbmRzIHBlcmZfZXZlbnRfb3Bl
bi4yIGRvY3VtZW50YXRpb24uCgpUaGFua3MsCkFsZXhleQoKLS0tClsxXSBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9sa21sL2M4ZGU5MzdhLTBiM2EtNzE0Ny1mNWVmLTY5ZjQ2N2U4N2ExM0BsaW51
eC5pbnRlbC5jb20vClsyXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzE4ZDEwODNkLWVm
ZTUtZjVmOC1jNTMxLWQxNDJjMGU1YzFhOEBsaW51eC5pbnRlbC5jb20vCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wcm9maWxlLWxpc3QgbWFpbGlu
ZyBsaXN0Cm9wcm9maWxlLWxpc3RAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wcm9maWxlLWxpc3QK
