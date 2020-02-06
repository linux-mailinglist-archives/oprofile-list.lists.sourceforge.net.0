Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E4362154B3E
	for <lists+oprofile-list@lfdr.de>; Thu,  6 Feb 2020 19:34:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1izlz5-0002hj-J2; Thu, 06 Feb 2020 18:34:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexey.budankov@linux.intel.com>) id 1izlVI-0006s9-Ih
 for oprofile-list@lists.sourceforge.net; Thu, 06 Feb 2020 18:03:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hg01Wa3ppW6fmcfARcvw7GP26qc7g8YqH/HvtMsYPPI=; b=EHklxsvrsKBBc9wxIyVlZ5arto
 00TD+dTNQ8F+MFf27W2IxvdCUqlQI1ivi1FcAlBAkZnPlvEGUSfD+sKYD8nvxPFtF5Cicm0gMwjjd
 MOosWkBmsjLiPyFRpQ8unfnWVu7HwHP8cX2cYC7FSpykBUId1ZLxCnabcbRMLVMRe6zg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hg01Wa3ppW6fmcfARcvw7GP26qc7g8YqH/HvtMsYPPI=; b=fi1pv1SVB4d09os8XtgXsj5DIj
 U1SgRidcY4ahuHonnM+3Zt1Aerg5xsH9YXq+gzB3M2YU9ZtOnmpFOdikiLG+9lDuW6bWMYNQvFYdL
 SfhW5m7RRfQhWPOIHNSBF3k5/ZXmVQSjDDl2Z7dmasOI1OJFnGI9o6GLbxErCHirgiqU=;
Received: from mga06.intel.com ([134.134.136.31])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1izlVG-00CAi7-Qd
 for oprofile-list@lists.sourceforge.net; Thu, 06 Feb 2020 18:03:52 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 10:03:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,410,1574150400"; d="scan'208";a="236053402"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga006.jf.intel.com with ESMTP; 06 Feb 2020 10:03:42 -0800
Received: from [10.251.88.4] (abudanko-mobl.ccr.corp.intel.com [10.251.88.4])
 by linux.intel.com (Postfix) with ESMTP id 1AA19580698;
 Thu,  6 Feb 2020 10:03:32 -0800 (PST)
Subject: Re: [PATCH v5 01/10] capabilities: introduce CAP_PERFMON to kernel
 and user space
From: Alexey Budankov <alexey.budankov@linux.intel.com>
To: Stephen Smalley <sds@tycho.nsa.gov>, Serge Hallyn <serge@hallyn.com>,
 James Morris <jmorris@namei.org>
References: <0548c832-7f4b-dc4c-8883-3f2b6d351a08@linux.intel.com>
 <9b77124b-675d-5ac7-3741-edec575bd425@linux.intel.com>
 <64cab472-806e-38c4-fb26-0ffbee485367@tycho.nsa.gov>
 <05297eff-8e14-ccdf-55a4-870c64516de8@linux.intel.com>
 <CAADnVQK-JzK-GUk4KOozn4c1xr=7TiCpB9Fi0QDC9nE6iVn8iQ@mail.gmail.com>
 <537bdb28-c9e4-f44f-d665-25250065a6bb@linux.intel.com>
 <63d9700f-231d-7973-5307-3e56a48c54cb@linux.intel.com>
 <d7213569-9578-7201-6106-f5ebc95bd6be@tycho.nsa.gov>
 <ac0dbab7-de47-ee34-bb88-4c43d3538b7d@linux.intel.com>
Organization: Intel Corp.
Message-ID: <2b608e26-354b-3df9-aea9-58e56dc0c5e5@linux.intel.com>
Date: Thu, 6 Feb 2020 21:03:31 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <ac0dbab7-de47-ee34-bb88-4c43d3538b7d@linux.intel.com>
Content-Language: en-US
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1izlVG-00CAi7-Qd
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
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Stephane Eranian <eranian@google.com>,
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

Ck9uIDIyLjAxLjIwMjAgMTc6MjUsIEFsZXhleSBCdWRhbmtvdiB3cm90ZToKPiAKPiBPbiAyMi4w
MS4yMDIwIDE3OjA3LCBTdGVwaGVuIFNtYWxsZXkgd3JvdGU6Cj4+IE9uIDEvMjIvMjAgNTo0NSBB
TSwgQWxleGV5IEJ1ZGFua292IHdyb3RlOgo+Pj4KPj4+IE9uIDIxLjAxLjIwMjAgMjE6MjcsIEFs
ZXhleSBCdWRhbmtvdiB3cm90ZToKPj4+Pgo+Pj4+IE9uIDIxLjAxLjIwMjAgMjA6NTUsIEFsZXhl
aSBTdGFyb3ZvaXRvdiB3cm90ZToKPj4+Pj4gT24gVHVlLCBKYW4gMjEsIDIwMjAgYXQgOTozMSBB
TSBBbGV4ZXkgQnVkYW5rb3YKPj4+Pj4gPGFsZXhleS5idWRhbmtvdkBsaW51eC5pbnRlbC5jb20+
IHdyb3RlOgo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBPbiAyMS4wMS4yMDIwIDE3OjQzLCBTdGVwaGVu
IFNtYWxsZXkgd3JvdGU6Cj4+Pj4+Pj4gT24gMS8yMC8yMCA2OjIzIEFNLCBBbGV4ZXkgQnVkYW5r
b3Ygd3JvdGU6Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IEludHJvZHVjZSBDQVBfUEVSRk1PTiBjYXBhYmls
aXR5IGRlc2lnbmVkIHRvIHNlY3VyZSBzeXN0ZW0gcGVyZm9ybWFuY2UKPj4+Pj4+Pj4gbW9uaXRv
cmluZyBhbmQgb2JzZXJ2YWJpbGl0eSBvcGVyYXRpb25zIHNvIHRoYXQgQ0FQX1BFUkZNT04gd291
bGQgYXNzaXN0Cj4+Pj4+Pj4+IENBUF9TWVNfQURNSU4gY2FwYWJpbGl0eSBpbiBpdHMgZ292ZXJu
aW5nIHJvbGUgZm9yIHBlcmZfZXZlbnRzLCBpOTE1X3BlcmYKPj4+Pj4+Pj4gYW5kIG90aGVyIHBl
cmZvcm1hbmNlIG1vbml0b3JpbmcgYW5kIG9ic2VydmFiaWxpdHkgc3Vic3lzdGVtcy4KPj4+Pj4+
Pj4KPj4+Pj4+Pj4gQ0FQX1BFUkZNT04gaW50ZW5kcyB0byBoYXJkZW4gc3lzdGVtIHNlY3VyaXR5
IGFuZCBpbnRlZ3JpdHkgZHVyaW5nIHN5c3RlbQo+Pj4+Pj4+PiBwZXJmb3JtYW5jZSBtb25pdG9y
aW5nIGFuZCBvYnNlcnZhYmlsaXR5IG9wZXJhdGlvbnMgYnkgZGVjcmVhc2luZyBhdHRhY2sKPj4+
Pj4+Pj4gc3VyZmFjZSB0aGF0IGlzIGF2YWlsYWJsZSB0byBhIENBUF9TWVNfQURNSU4gcHJpdmls
ZWdlZCBwcm9jZXNzIFsxXS4KPj4+Pj4+Pj4gUHJvdmlkaW5nIGFjY2VzcyB0byBzeXN0ZW0gcGVy
Zm9ybWFuY2UgbW9uaXRvcmluZyBhbmQgb2JzZXJ2YWJpbGl0eQo+Pj4+Pj4+PiBvcGVyYXRpb25z
IHVuZGVyIENBUF9QRVJGTU9OIGNhcGFiaWxpdHkgc2luZ2x5LCB3aXRob3V0IHRoZSByZXN0IG9m
Cj4+Pj4+Pj4+IENBUF9TWVNfQURNSU4gY3JlZGVudGlhbHMsIGV4Y2x1ZGVzIGNoYW5jZXMgdG8g
bWlzdXNlIHRoZSBjcmVkZW50aWFscyBhbmQKPj4+Pj4+Pj4gbWFrZXMgb3BlcmF0aW9uIG1vcmUg
c2VjdXJlLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBDQVBfUEVSRk1PTiBpbnRlbmRzIHRvIHRha2Ugb3Zl
ciBDQVBfU1lTX0FETUlOIGNyZWRlbnRpYWxzIHJlbGF0ZWQgdG8KPj4+Pj4+Pj4gc3lzdGVtIHBl
cmZvcm1hbmNlIG1vbml0b3JpbmcgYW5kIG9ic2VydmFiaWxpdHkgb3BlcmF0aW9ucyBhbmQgYmFs
YW5jZQo+Pj4+Pj4+PiBhbW91bnQgb2YgQ0FQX1NZU19BRE1JTiBjcmVkZW50aWFscyBmb2xsb3dp
bmcgdGhlIHJlY29tbWVuZGF0aW9ucyBpbiB0aGUKPj4+Pj4+Pj4gY2FwYWJpbGl0aWVzIG1hbiBw
YWdlIFsxXSBmb3IgQ0FQX1NZU19BRE1JTjogIk5vdGU6IHRoaXMgY2FwYWJpbGl0eSBpcwo+Pj4+
Pj4+PiBvdmVybG9hZGVkOyBzZWUgTm90ZXMgdG8ga2VybmVsIGRldmVsb3BlcnMsIGJlbG93LiIK
Pj4+Pj4+Pj4KPj4+Pj4+Pj4gQWx0aG91Z2ggdGhlIHNvZnR3YXJlIHJ1bm5pbmcgdW5kZXIgQ0FQ
X1BFUkZNT04gY2FuIG5vdCBlbnN1cmUgYXZvaWRhbmNlCj4+Pj4+Pj4+IG9mIHJlbGF0ZWQgaGFy
ZHdhcmUgaXNzdWVzLCB0aGUgc29mdHdhcmUgY2FuIHN0aWxsIG1pdGlnYXRlIHRoZXNlIGlzc3Vl
cwo+Pj4+Pj4+PiBmb2xsb3dpbmcgdGhlIG9mZmljaWFsIGVtYmFyZ29lZCBoYXJkd2FyZSBpc3N1
ZXMgbWl0aWdhdGlvbiBwcm9jZWR1cmUgWzJdLgo+Pj4+Pj4+PiBUaGUgYnVncyBpbiB0aGUgc29m
dHdhcmUgaXRzZWxmIGNvdWxkIGJlIGZpeGVkIGZvbGxvd2luZyB0aGUgc3RhbmRhcmQKPj4+Pj4+
Pj4ga2VybmVsIGRldmVsb3BtZW50IHByb2Nlc3MgWzNdIHRvIG1haW50YWluIGFuZCBoYXJkZW4g
c2VjdXJpdHkgb2Ygc3lzdGVtCj4+Pj4+Pj4+IHBlcmZvcm1hbmNlIG1vbml0b3JpbmcgYW5kIG9i
c2VydmFiaWxpdHkgb3BlcmF0aW9ucy4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gWzFdIGh0dHA6Ly9tYW43
Lm9yZy9saW51eC9tYW4tcGFnZXMvbWFuNy9jYXBhYmlsaXRpZXMuNy5odG1sCj4+Pj4+Pj4+IFsy
XSBodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL2xhdGVzdC9wcm9jZXNzL2VtYmFyZ29l
ZC1oYXJkd2FyZS1pc3N1ZXMuaHRtbAo+Pj4+Pj4+PiBbM10gaHR0cHM6Ly93d3cua2VybmVsLm9y
Zy9kb2MvaHRtbC9sYXRlc3QvYWRtaW4tZ3VpZGUvc2VjdXJpdHktYnVncy5odG1sCjxTTklQPgo+
Pj4+Pj4+Pgo+Pj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBBbGV4ZXkgQnVkYW5rb3YgPGFsZXhleS5i
dWRhbmtvdkBsaW51eC5pbnRlbC5jb20+Cj4+Pj4+Pj4KPj4+Pj4+PiBXaHkgX25vYXVkaXQoKT/C
oCBOb3JtYWxseSBvbmx5IHVzZWQgd2hlbiBhIHBlcm1pc3Npb24gZmFpbHVyZSBpcyBub24tZmF0
YWwgdG8gdGhlIG9wZXJhdGlvbi7CoCBPdGhlcndpc2UsIHdlIHdhbnQgdGhlIGF1ZGl0IG1lc3Nh
Z2UuCj4+Pgo+Pj4gU28gZmFyIHNvIGdvb2QsIEkgc3VnZ2VzdCB1c2luZyB0aGUgc2ltcGxlc3Qg
dmVyc2lvbiBmb3IgdjY6Cj4+Pgo+Pj4gc3RhdGljIGlubGluZSBib29sIHBlcmZtb25fY2FwYWJs
ZSh2b2lkKQo+Pj4gewo+Pj4gwqDCoMKgwqByZXR1cm4gY2FwYWJsZShDQVBfUEVSRk1PTikgfHwg
Y2FwYWJsZShDQVBfU1lTX0FETUlOKTsKPj4+IH0KPj4+Cj4+PiBJdCBrZWVwcyB0aGUgaW1wbGVt
ZW50YXRpb24gc2ltcGxlIGFuZCByZWFkYWJsZS4gVGhlIGltcGxlbWVudGF0aW9uIGlzIG1vcmUK
Pj4+IHBlcmZvcm1hbnQgaW4gdGhlIHNlbnNlIG9mIGNhbGxpbmcgdGhlIEFQSSAtIG9uZSBjYXBh
YmxlKCkgY2FsbCBmb3IgQ0FQX1BFUkZNT04KPj4+IHByaXZpbGVnZWQgcHJvY2Vzcy4KPj4+Cj4+
PiBZZXMsIGl0IGJsb2F0cyBhdWRpdCBsb2cgZm9yIENBUF9TWVNfQURNSU4gcHJpdmlsZWdlZCBh
bmQgdW5wcml2aWxlZ2VkIHByb2Nlc3NlcywKPj4+IGJ1dCB0aGlzIGJsb2F0aW5nIGFsc28gYWR2
ZXJ0aXNlcyBhbmQgbGV2ZXJhZ2VzIHVzaW5nIG1vcmUgc2VjdXJlIENBUF9QRVJGTU9OCj4+PiBi
YXNlZCBhcHByb2FjaCB0byB1c2UgcGVyZl9ldmVudF9vcGVuIHN5c3RlbSBjYWxsLgo+Pgo+PiBJ
IGNhbiBsaXZlIHdpdGggdGhhdC7CoCBXZSBqdXN0IG5lZWQgdG8gZG9jdW1lbnQgdGhhdCB3aGVu
IHlvdSBzZWUgYm90aCBhIENBUF9QRVJGTU9OIGFuZCBhIENBUF9TWVNfQURNSU4gYXVkaXQgbWVz
c2FnZSBmb3IgYSBwcm9jZXNzLCB0cnkgb25seSBhbGxvd2luZyBDQVBfUEVSRk1PTiBmaXJzdCBh
bmQgc2VlIGlmIHRoYXQgcmVzb2x2ZXMgdGhlIGlzc3VlLsKgIFdlIGhhdmUgYSBzaW1pbGFyIGlz
c3VlIHdpdGggQ0FQX0RBQ19SRUFEX1NFQVJDSCB2ZXJzdXMgQ0FQX0RBQ19PVkVSUklERS4KPiAK
PiBwZXJmIHNlY3VyaXR5IFsxXSBkb2N1bWVudCBjYW4gYmUgdXBkYXRlZCwgYXQgbGVhc3QsIHRv
IGFsaWduIGFuZCBkb2N1bWVudCAKPiB0aGlzIGF1ZGl0IGxvZ2dpbmcgc3BlY2lmaWNzLgoKQW5k
IEkgcGxhbiB0byB1cGRhdGUgdGhlIGRvY3VtZW50IHJpZ2h0IGFmdGVyIHRoaXMgcGF0Y2ggc2V0
IGlzIGFjY2VwdGVkLgpGZWVsIGZyZWUgdG8gbGV0IG1lIGtub3cgb2YgdGhlIHBsYWNlcyBpbiB0
aGUga2VybmVsIGRvY3MgdGhhdCBhbHNvCnJlcXVpcmUgdXBkYXRlIHcuci50IENBUF9QRVJGTU9O
IGV4dGVuc2lvbi4KCn5BbGV4ZXkKCj4gCj4gfkFsZXhleQo+IAo+IFsxXSBodHRwczovL3d3dy5r
ZXJuZWwub3JnL2RvYy9odG1sL2xhdGVzdC9hZG1pbi1ndWlkZS9wZXJmLXNlY3VyaXR5Lmh0bWwK
PiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcHJv
ZmlsZS1saXN0IG1haWxpbmcgbGlzdApvcHJvZmlsZS1saXN0QGxpc3RzLnNvdXJjZWZvcmdlLm5l
dApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcHJvZmlsZS1s
aXN0Cg==
