Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FCCD15AC12
	for <lists+oprofile-list@lfdr.de>; Wed, 12 Feb 2020 16:36:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1j1u4P-0007xw-2H; Wed, 12 Feb 2020 15:36:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexey.budankov@linux.intel.com>) id 1j1nmS-0005ru-G3
 for oprofile-list@lists.sourceforge.net; Wed, 12 Feb 2020 08:54:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x91IwLchWofTiSgHe0KD7dVtU2SDz7n7Te46FpJp4d8=; b=hYlDt8RMz0/ssxpO/LF4hB3g50
 SQWlIqdl0Xj88Tx58Gv9zP6wP4W7RrgUtTc9xYoO2UIJG4JGpasFbuMgZPbpYcy4/x0zmGxJbIqG9
 S5b9Q261CKjnoptZ2J6Y9A6nv/k99m59SMRPHokVb9AG8vzhFC0sHIKcKq027zmaXG3M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x91IwLchWofTiSgHe0KD7dVtU2SDz7n7Te46FpJp4d8=; b=f+b5PQ+IJIvV2ouV5Ex4zFxu8n
 iGJ+Eb/nUSISEyAZ7RJC31sP37K5QMMQip9uE8k3JVwwM3C3Qmqa7wEEc/yWEUSpUzDXcD8GQ63Y/
 3DMs/NU1WIpGhyuBBKwiEqWWsr5qeR5JPLTdsN1hfGJOjoVqiLQr2FuZlSXNnXfk2qVM=;
Received: from mga03.intel.com ([134.134.136.65])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j1nmP-001Ghr-5h
 for oprofile-list@lists.sourceforge.net; Wed, 12 Feb 2020 08:54:00 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 00:53:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="226740960"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga007.fm.intel.com with ESMTP; 12 Feb 2020 00:53:37 -0800
Received: from [10.125.252.164] (abudanko-mobl.ccr.corp.intel.com
 [10.125.252.164])
 by linux.intel.com (Postfix) with ESMTP id 25BB9580409;
 Wed, 12 Feb 2020 00:53:28 -0800 (PST)
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
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <2e38c33d-f085-1320-8cc2-45f74b6ad86d@linux.intel.com>
Date: Wed, 12 Feb 2020 11:53:27 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <d7213569-9578-7201-6106-f5ebc95bd6be@tycho.nsa.gov>
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
X-Headers-End: 1j1nmP-001Ghr-5h
X-Mailman-Approved-At: Wed, 12 Feb 2020 15:36:55 +0000
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

SGkgU3RlcGhlbiwKCk9uIDIyLjAxLjIwMjAgMTc6MDcsIFN0ZXBoZW4gU21hbGxleSB3cm90ZToK
PiBPbiAxLzIyLzIwIDU6NDUgQU0sIEFsZXhleSBCdWRhbmtvdiB3cm90ZToKPj4KPj4gT24gMjEu
MDEuMjAyMCAyMToyNywgQWxleGV5IEJ1ZGFua292IHdyb3RlOgo+Pj4KPj4+IE9uIDIxLjAxLjIw
MjAgMjA6NTUsIEFsZXhlaSBTdGFyb3ZvaXRvdiB3cm90ZToKPj4+PiBPbiBUdWUsIEphbiAyMSwg
MjAyMCBhdCA5OjMxIEFNIEFsZXhleSBCdWRhbmtvdgo+Pj4+IDxhbGV4ZXkuYnVkYW5rb3ZAbGlu
dXguaW50ZWwuY29tPiB3cm90ZToKPj4+Pj4KPj4+Pj4KPj4+Pj4gT24gMjEuMDEuMjAyMCAxNzo0
MywgU3RlcGhlbiBTbWFsbGV5IHdyb3RlOgo+Pj4+Pj4gT24gMS8yMC8yMCA2OjIzIEFNLCBBbGV4
ZXkgQnVkYW5rb3Ygd3JvdGU6Cj4+Pj4+Pj4KPFNOSVA+Cj4+Pj4+Pj4gSW50cm9kdWNlIENBUF9Q
RVJGTU9OIGNhcGFiaWxpdHkgZGVzaWduZWQgdG8gc2VjdXJlIHN5c3RlbSBwZXJmb3JtYW5jZQo+
Pj4+Pj4KPj4+Pj4+IFdoeSBfbm9hdWRpdCgpP8KgIE5vcm1hbGx5IG9ubHkgdXNlZCB3aGVuIGEg
cGVybWlzc2lvbiBmYWlsdXJlIGlzIG5vbi1mYXRhbCB0byB0aGUgb3BlcmF0aW9uLsKgIE90aGVy
d2lzZSwgd2Ugd2FudCB0aGUgYXVkaXQgbWVzc2FnZS4KPj4KPj4gU28gZmFyIHNvIGdvb2QsIEkg
c3VnZ2VzdCB1c2luZyB0aGUgc2ltcGxlc3QgdmVyc2lvbiBmb3IgdjY6Cj4+Cj4+IHN0YXRpYyBp
bmxpbmUgYm9vbCBwZXJmbW9uX2NhcGFibGUodm9pZCkKPj4gewo+PiDCoMKgwqDCoHJldHVybiBj
YXBhYmxlKENBUF9QRVJGTU9OKSB8fCBjYXBhYmxlKENBUF9TWVNfQURNSU4pOwo+PiB9Cj4+Cj4+
IEl0IGtlZXBzIHRoZSBpbXBsZW1lbnRhdGlvbiBzaW1wbGUgYW5kIHJlYWRhYmxlLiBUaGUgaW1w
bGVtZW50YXRpb24gaXMgbW9yZQo+PiBwZXJmb3JtYW50IGluIHRoZSBzZW5zZSBvZiBjYWxsaW5n
IHRoZSBBUEkgLSBvbmUgY2FwYWJsZSgpIGNhbGwgZm9yIENBUF9QRVJGTU9OCj4+IHByaXZpbGVn
ZWQgcHJvY2Vzcy4KPj4KPj4gWWVzLCBpdCBibG9hdHMgYXVkaXQgbG9nIGZvciBDQVBfU1lTX0FE
TUlOIHByaXZpbGVnZWQgYW5kIHVucHJpdmlsZWdlZCBwcm9jZXNzZXMsCj4+IGJ1dCB0aGlzIGJs
b2F0aW5nIGFsc28gYWR2ZXJ0aXNlcyBhbmQgbGV2ZXJhZ2VzIHVzaW5nIG1vcmUgc2VjdXJlIENB
UF9QRVJGTU9OCj4+IGJhc2VkIGFwcHJvYWNoIHRvIHVzZSBwZXJmX2V2ZW50X29wZW4gc3lzdGVt
IGNhbGwuCj4gCj4gSSBjYW4gbGl2ZSB3aXRoIHRoYXQuwqAgV2UganVzdCBuZWVkIHRvIGRvY3Vt
ZW50IHRoYXQgd2hlbiB5b3Ugc2VlIGJvdGggYSBDQVBfUEVSRk1PTiBhbmQgYSBDQVBfU1lTX0FE
TUlOIGF1ZGl0IG1lc3NhZ2UgZm9yIGEgcHJvY2VzcywgdHJ5IG9ubHkgYWxsb3dpbmcgQ0FQX1BF
UkZNT04gZmlyc3QgYW5kIHNlZSBpZiB0aGF0IHJlc29sdmVzIHRoZSBpc3N1ZS7CoCBXZSBoYXZl
IGEgc2ltaWxhciBpc3N1ZSB3aXRoIENBUF9EQUNfUkVBRF9TRUFSQ0ggdmVyc3VzIENBUF9EQUNf
T1ZFUlJJREUuCgpJIGFtIHRyeWluZyB0byByZXByb2R1Y2UgdGhpcyBkb3VibGUgbG9nZ2luZyB3
aXRoIENBUF9QRVJGTU9OLgpJIGFtIHVzaW5nIHRoZSByZWZwb2xpY3kgdmVyc2lvbiB3aXRoIGVu
YWJsZWQgcGVyZl9ldmVudCB0Y2xhc3MgWzFdLCBpbiBwZXJtaXNzaXZlIG1vZGUuCldoZW4gcnVu
bmluZyBwZXJmIHN0YXQgLWEgSSBhbSBvYnNlcnZpbmcgdGhpcyBBVkMgYXVkaXQgbWVzc2FnZXM6
Cgp0eXBlPUFWQyBtc2c9YXVkaXQoMTU4MTQ5NjY5NS42NjY6ODY5MSk6IGF2YzogIGRlbmllZCAg
eyBvcGVuIH0gZm9yICBwaWQ9Mjc3OSBjb21tPSJwZXJmIiBzY29udGV4dD11c2VyX3U6dXNlcl9y
OnVzZXJfc3lzdGVtZF90IHRjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl9zeXN0ZW1kX3QgdGNs
YXNzPXBlcmZfZXZlbnQgcGVybWlzc2l2ZT0xCnR5cGU9QVZDIG1zZz1hdWRpdCgxNTgxNDk2Njk1
LjY2Njo4NjkxKTogYXZjOiAgZGVuaWVkICB7IGtlcm5lbCB9IGZvciAgcGlkPTI3NzkgY29tbT0i
cGVyZiIgc2NvbnRleHQ9dXNlcl91OnVzZXJfcjp1c2VyX3N5c3RlbWRfdCB0Y29udGV4dD11c2Vy
X3U6dXNlcl9yOnVzZXJfc3lzdGVtZF90IHRjbGFzcz1wZXJmX2V2ZW50IHBlcm1pc3NpdmU9MQp0
eXBlPUFWQyBtc2c9YXVkaXQoMTU4MTQ5NjY5NS42NjY6ODY5MSk6IGF2YzogIGRlbmllZCAgeyBj
cHUgfSBmb3IgIHBpZD0yNzc5IGNvbW09InBlcmYiIHNjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNl
cl9zeXN0ZW1kX3QgdGNvbnRleHQ9dXNlcl91OnVzZXJfcjp1c2VyX3N5c3RlbWRfdCB0Y2xhc3M9
cGVyZl9ldmVudCBwZXJtaXNzaXZlPTEKdHlwZT1BVkMgbXNnPWF1ZGl0KDE1ODE0OTY2OTUuNjY2
Ojg2OTIpOiBhdmM6ICBkZW5pZWQgIHsgd3JpdGUgfSBmb3IgIHBpZD0yNzc5IGNvbW09InBlcmYi
IHNjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl9zeXN0ZW1kX3QgdGNvbnRleHQ9dXNlcl91OnVz
ZXJfcjp1c2VyX3N5c3RlbWRfdCB0Y2xhc3M9cGVyZl9ldmVudCBwZXJtaXNzaXZlPTEKCkhvd2V2
ZXIgdGhlcmUgaXMgbm8gY2FwYWJpbGl0eSByZWxhdGVkIG1lc3NhZ2VzIGFyb3VuZC4gSSBzdXBw
b3NlIG15IHJlZnBvbGljeSBzaG91bGQgCmJlIG1vZGlmaWVkIHNvbWVob3cgdG8gb2JzZXJ2ZSBj
YXBhYmlsaXR5IHJlbGF0ZWQgQVZDcy4KCkNvdWxkIHlvdSBwbGVhc2UgY29tbWVudCBvciBjbGFy
aWZ5IG9uIGhvdyB0byBlbmFibGUgY2FwcyByZWxhdGVkIEFWQ3MgaW4gb3JkZXIKdG8gdGVzdCB0
aGUgY29uY2VybmVkIGxvZ2dpbmcuCgpUaGFua3MsCkFsZXhleQoKLS0tClsxXSBodHRwczovL2dp
dGh1Yi5jb20vU0VMaW51eFByb2plY3QvcmVmcG9saWN5LmdpdAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wcm9maWxlLWxpc3QgbWFpbGluZyBsaXN0
Cm9wcm9maWxlLWxpc3RAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wcm9maWxlLWxpc3QK
