Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F67CF3A96
	for <lists+oprofile-list@lfdr.de>; Thu,  7 Nov 2019 22:33:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1iSpPE-0003sm-Er; Thu, 07 Nov 2019 21:33:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wcohen@redhat.com>) id 1iSpPD-0003se-6j
 for oprofile-list@lists.sourceforge.net; Thu, 07 Nov 2019 21:33:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b8zSS/5UGMyZ00AS75nE/ESghxvbR6n9PTRFxnfo08g=; b=ULhnzCUcn6T4H8pHGXCsL53X13
 qRwVr0p5rhDOQBV3ensTgG/5y0MrT43JLzgVoLvM6yNmggEsxtGzBCTvqea1LkpoNHe8wQa2VC7H3
 iMZesMJvuJzNRhM16tgzPota0yEzxLe4gBem8wc7A1XGq4K8Isky0SW/KQwl9PhNoL6o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b8zSS/5UGMyZ00AS75nE/ESghxvbR6n9PTRFxnfo08g=; b=U/5VLemDrADQfBOvA6e/WStTuJ
 Pmv5RWv4PVTQKsSEZ3jQM7rggN2DJPZQE1vC6RorswQLRI4oMsXyZOlY0xjyMU86ZcPkGrjw0OpZS
 uY15uB/k28u0c2BXIuzvTc37k0e9gbzmIJMCWjOAuEzuoPtNJ/btraW8wMKjTXt7jSKs=;
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1iSpP8-004999-1V
 for oprofile-list@lists.sourceforge.net; Thu, 07 Nov 2019 21:33:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573162395;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=b8zSS/5UGMyZ00AS75nE/ESghxvbR6n9PTRFxnfo08g=;
 b=WBpODbJ9i+5p5Z7JCJpQ4Fzphim4YZQu99gjKcJM3AbgE/VUH4ZdaHCTgIaZ5GRvn59kYW
 i3XTgJbIb5wOUUz6Cd4rWanL9pYL00+PM2Ajlnof0Pe3aLdVqwbA6wE+td0CIz1zLZ3a3C
 n1hCpxBduG61tmehqETkYsRiY6Vr8wc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-148-KR7o5y3lPmiymtTlrWxqNQ-1; Thu, 07 Nov 2019 16:33:11 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 855858017DD;
 Thu,  7 Nov 2019 21:33:10 +0000 (UTC)
Received: from [10.13.129.217] (dhcp129-217.rdu.redhat.com [10.13.129.217])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1F4551001B09;
 Thu,  7 Nov 2019 21:33:10 +0000 (UTC)
Subject: Re: [PATCH V2] oprofile-tests Add test to exercise
 libjvmti_oprofile.so
To: willschm <willschm@linux.vnet.ibm.com>
References: <b3d743ad26a29adc1ac5d513d5f9d36d6cdca20d.camel@vnet.ibm.com>
 <01e03f9f-8f48-51ee-fdff-f69a135bcce9@redhat.com>
 <c015f3f1e51ba0d84e688dd2b8be5c07cfc3a67b.camel@vnet.ibm.com>
 <2d3be06a-7a3e-599c-badd-0c40f5fd825f@redhat.com>
 <71522521f2d82ff622aab75c85ff259e@linux.vnet.ibm.com>
From: William Cohen <wcohen@redhat.com>
Message-ID: <ef4354b0-6fef-7898-2e5c-3cf297d5c8df@redhat.com>
Date: Thu, 7 Nov 2019 16:33:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <71522521f2d82ff622aab75c85ff259e@linux.vnet.ibm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: KR7o5y3lPmiymtTlrWxqNQ-1
X-Mimecast-Spam-Score: 0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: libjvmti_oprofile.so]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iSpP8-004999-1V
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
Cc: oprofile-list@lists.sourceforge.net, "Carl E. Love" <cel@us.ibm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: oprofile-list-bounces@lists.sourceforge.net

T24gMTEvNy8xOSA0OjIwIFBNLCB3aWxsc2NobSB3cm90ZToKPiBPbiAyMDE5LTExLTA3IDE0OjUz
LCBXaWxsaWFtIENvaGVuIHdyb3RlOgo+PiBPbiAxMC8xNS8xOSAyOjIxIFBNLCB3aWxsIHNjaG1p
ZHQgd3JvdGU6Cj4+PiBIaSwKPj4+Cj4+PiBGb3IgVjIgb2YgdGhpcyBwYXRjaCwgSSBoYXZlIHVw
ZGF0ZWQgdGhlIGxvZ2ljIHRoYXQgbG9va3MgZm9yCj4+PiBsaWJqdm10aV9vcHJvZmlsZS5zbyB0
byBhbHNvIHNlYXJjaCAvdXNyL2xpYjY0LyBhbmQgL3Vzci9saWIvCj4+PiBmb3IgdGhlIGxpYnJh
cnksIHN0b3BwaW5nIHdoZW4gdGhlIGxpYnJhcnkgaXMgZm91bmQuwqAgSSBoYXZlCj4+PiB0ZXN0
ZWQgYSBmZXcgYWRkaXRpb25hbCB2YXJpYXRpb25zIGxvY2FsbHkuCj4+Pgo+Pj4gKFYxOikKPj4+
IEFzc29ydGVkIGNoYW5nZXMgdG8gZXhlcmNpc2UgdGhlIHVzZSBvZiBvcHJvZmlsZXMgSlZNVEkg
aG9vay4KPj4+IChsaWJqdm10aV9vcHJvZmlsZS5zb8KgIC0gSmF2YSBWaXJ0dWFsIE1hY2hpbmUg
VG9vbHMgSW50ZXJmYWNlKS4KPj4+Cj4+PiBUaGlzIGhhcyBiZWVuIHRlc3RlZCB0aGlzIG9uIGFz
c29ydGVkIHBwYzY0KiBzeXN0ZW1zIHdpdGggYSBtaXh0dXJlCj4+PiBvZiBoYXZpbmcgdGhlIGxp
Ymp2bXRpX29wcm9maWxlIHByZXNlbnQgYW5kIG5vdC4KPj4+Cj4+PiDCoMKgwqAgdGVzdHN1aXRl
L2xpYi9vcF91dGlsLmV4cDoKPj4+IMKgwqDCoCAqIFVwZGF0ZSBjb21waWxlX3dvcmtsb2FkKCkg
cHJvY2VkdXJlIHRvIGFsbG93IGJ1aWxkaW5nIG9mIC5qYXZhIGZpbGVzLgo+Pj4gwqDCoMKgICog
QWRkIHByb2NlZHVyZSBvcF9yZXNvbHZlX2phdmFfZGVwZW5kZW5jaWVzKCkgdG8gZW5zdXJlIHRo
YXQgZGVwZW5kZW5jaWVzCj4+PiDCoMKgwqDCoMKgIGZvciBidWlsZGluZyBhbmQgcnVubmluZyB0
aGUgamF2YSB0ZXN0IGNhbiBiZSBmb3VuZC4gVGhpcyBpbmNsdWRlcyBqYXZhLAo+Pj4gwqDCoMKg
wqDCoCBqYXZhYywgYW5kIGxpYmp2bXRpX29wcm9maWxlLnNvLiBTaW5jZSB0aGUgbGlianZtdGlf
b3Byb2ZpbGUuc28gb2JqZWN0Cj4+PiDCoMKgwqDCoMKgIGNhbid0IGJlIHJlYWRpbHkgZm91bmQg
dmlhICd3aGljaCcsIGxvZ2ljIGlzIGluIHBsYWNlIHRoYXQgYXNzdW1lcyBpdCBjYW4KPj4+IMKg
wqDCoMKgwqAgYmUgZm91bmQgaW4gYSBwYXRoIHJlbGF0aXZlIHRvIHdoZXJlIHRoZSBvcGVyZiBi
aW5hcnkgaXMgZm91bmQuCj4+Pgo+Pj4gwqDCoMKgIHRlc3RzdWl0ZS9saWIvb3Bfd29ya2xvYWRz
LmV4cDoKPj4+IMKgwqDCoCAqIEFkZCBhbiBvcF9qYXZhX3dvcmtsb2FkX3RhYmxlIGNvbnRhaW5p
bmcgdGhlIG5ldyB0ZXN0Lgo+Pj4KPj4+IMKgwqDCoCB0ZXN0c3VpdGUvbGliL29wZXJmX3V0aWwu
ZXhwOgo+Pj4gwqDCoMKgICogQWRkIHByb2NlZHVyZSAoY2hlY2tfamF2YV9zYW1wbGVzX2V4aXN0
KSB0byBzZWUgdGhhdCBzYW1wbGVzIGNhbiBiZQo+Pj4gwqDCoMKgwqDCoCBmb3VuZCB0aGF0IGFy
ZSBhc3NvY2lhdGVkIHdpdGggdGhlIGdlbmVyYXRlZCAuam8gb2JqZWN0Lgo+Pj4gwqDCoMKgICog
QWRkIHByb2NlZHVyZSAoY2hlY2tfamF2YV9vYmplY3RfZmlsZV9leGlzdHMpIHRvIGVuc3VyZSB0
aGF0IGF0Cj4+PiDCoMKgwqDCoMKgIGxlYXN0IG9uZSAiKi5qbyIgZmlsZSB3YXMgY3JlYXRlZCBk
dXJpbmcgdGhlIHJ1bi4KPj4+IMKgwqDCoCAqIEFkZCBwcm9jZWR1cmUgKGRvX2phdmFfdGVzdCkg
dG8gZG8gdGhlIGFjdHVhbCB0ZXN0Lgo+Pj4KPj4+IMKgwqDCoCB0ZXN0c3VpdGUvd29ya2xvYWRz
L2phdmEvRmlib25hY2NpLmphdmE6Cj4+PiDCoMKgwqAgKiBBZGQgdGhlIGphdmEgdGVzdCBpdHNl
bGYuCj4+Pgo+Pj4gLS0gCj4+Pgo+Pj4gVGhhbmtzLAo+Pj4gLVdpbGwgKFNjaG1pZHQpCj4+Pgo+
Pj4KPj4+IGRpZmYgLS1naXQgYS90ZXN0c3VpdGUvbGliL29wX3V0aWwuZXhwIGIvdGVzdHN1aXRl
L2xpYi9vcF91dGlsLmV4cAo+Pj4gaW5kZXggN2YwNDczZC4uODYzZDQ2ZiAxMDA2NDQKPj4+IC0t
LSBhL3Rlc3RzdWl0ZS9saWIvb3BfdXRpbC5leHAKPj4+ICsrKyBiL3Rlc3RzdWl0ZS9saWIvb3Bf
dXRpbC5leHAKPj4+IEBAIC0xNzksMTUgKzE3OSwxNSBAQCBwcm9jIGNoZWNrX3VzZXIge30gewo+
Pj4gwqBwcm9jIGNvbXBpbGVfd29ya2xvYWQge3dvcmtsb2FkX3NyYyBjb21waWxlX29wdGlvbnMg
fSB7Cj4+Pgo+Pj4gwqDCoMKgwqAgIyBJZGVhbGx5IHRoZSBUQ0wgY29tbWFuZCB0YXJnZXRfY29t
cGlsZSBzaG91bGQgYmUgdXNlZC7CoCBIb3dldmVyLAo+Pj4gwqDCoMKgwqAgIyB0YXJnZXRfY29t
cGlsZSBpcyBpZ25vcmluZyB0aGUgY29tcGlsZXIgb3B0aW9ucyBhcmd1bWVudC4KPj4+Cj4+PiAt
wqDCoMKgIHNldCBjb21waWxlciAiY2MiCj4+PiDCoMKgwqDCoCBzZXQgZXh0ZW5zaW9uIFtsaW5k
ZXggW3NwbGl0ICR3b3JrbG9hZF9zcmMgIi4iXSAxXQo+Pj4gLcKgwqDCoCBzZXQgd29ya2xvYWRf
ZXhjIFsgbGluZGV4IFtzcGxpdCAkd29ya2xvYWRfc3JjICIuIl0gMF1fYmluCj4+Pgo+Pj4gwqDC
oMKgwqAgaWYgeyBbc3RyaW5nIGNvbXBhcmUgJGV4dGVuc2lvbiAiYyJdID09IDAgfSB7Cj4+PiAr
wqDCoMKgIHNldCB3b3JrbG9hZF9leGMgWyBsaW5kZXggW3NwbGl0ICR3b3JrbG9hZF9zcmMgIi4i
XSAwXV9iaW4KPj4+ICvCoMKgwqAgc2V0IGNvbXBpbGVyICJjYyIKPj4+IMKgwqDCoMKgICMgd29y
a2xvYWQgaXMgYSBDIHByb2dyYW0sIHNlZSBpZiBpdCBuZWVkcyB0byBiZSBjb21waWxlZC4KPj4+
IMKgwqDCoMKgIHNldCB0ZXN0IFtsb2NhbF9leGVjICJscyAkd29ya2xvYWRfZXhjIiAiIiAiIiAx
MF0KPj4+Cj4+PiDCoMKgwqDCoCBpZiB7IFtsaW5kZXggJHRlc3QgMF0gPT0gMSB9IHsKPj4+IMKg
wqDCoMKgwqDCoMKgwqAgIyB3b3JrbG9hZCBoYXMgbm90IGJlZW4gY29tcGlsZWQKPj4+IEBAIC0x
OTgsMTAgKzE5OCwyOCBAQCBwcm9jIGNvbXBpbGVfd29ya2xvYWQge3dvcmtsb2FkX3NyYyBjb21w
aWxlX29wdGlvbnMgfSB7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgIH0KPj4+IMKgwqDCoMKgIH0KPj4+
IMKgwqDCoMKgIHJldHVybiBbIGxpbmRleCBbc3BsaXQgJHdvcmtsb2FkX3NyYyAiLiJdIDBdX2Jp
bgo+Pj4gwqDCoMKgwqAgfQo+Pj4KPj4+ICvCoMKgwqAgaWYgeyBbc3RyaW5nIGNvbXBhcmUgJGV4
dGVuc2lvbiAiamF2YSJdID09IDAgfSB7Cj4+PiArwqDCoMKgIHNldCBjb21waWxlciAiamF2YWMi
Cj4+PiArwqDCoMKgIHNldCB3b3JrbG9hZF9leGMgWyBsaW5kZXggW3NwbGl0ICR3b3JrbG9hZF9z
cmMgIi4iXSAwXS5jbGFzcwo+Pj4gK8KgwqDCoCAjIHdvcmtsb2FkIGlzIGEgamF2YSBwcm9ncmFt
LCBzZWUgaWYgaXQgbmVlZHMgdG8gYmUgY29tcGlsZWQuCj4+PiArwqDCoMKgIHNldCB0ZXN0IFts
b2NhbF9leGVjICJscyAkd29ya2xvYWRfZXhjIiAiIiAiIiAxMF0KPj4+ICvCoMKgwqAgaWYgeyBb
bGluZGV4ICR0ZXN0IDBdID09IDEgfSB7Cj4+PiArwqDCoMKgwqDCoMKgwqAgIyB3b3JrbG9hZCBo
YXMgbm90IGJlZW4gY29tcGlsZWQKPj4+ICvCoMKgwqDCoMKgwqDCoCBzZXQgcmVzdWx0IFtsb2Nh
bF9leGVjICIkY29tcGlsZXIgJHdvcmtsb2FkX3NyYyAkY29tcGlsZV9vcHRpb25zIiAiIiAiIiAx
MCBdCj4+PiArwqDCoMKgwqDCoMKgwqAgaWYgeyBbbGluZGV4ICRyZXN1bHQgMF0gPT0gMSB9IHsK
Pj4+ICvCoMKgwqDCoMKgwqDCoCBwcmludCAiXG5FUlJPUiBjb21waWxpbmcgd29ya2xvYWQ6ICR3
b3JrbG9hZF9zcmMiCj4+PiArwqDCoMKgwqDCoMKgwqAgcHJpbnQgIkNvbXBpbGVyIGVycm9yIG1l
c3NhZ2U6ICRyZXN1bHRcbiIKPj4+ICvCoMKgwqDCoMKgwqDCoCB9Cj4+PiArwqDCoMKgIH0KPj4+
ICvCoMKgwqAgc2V0IHBhdGhfYW5kX2Jhc2VuYW1lIFtsaW5kZXggW3NwbGl0ICR3b3JrbG9hZF9z
cmMgIi4iXSAwXQo+Pj4gK8KgwqDCoCBzZXQgY2xhc3Nvbmx5IFsgbGluZGV4IFsgc3BsaXQgJHBh
dGhfYW5kX2Jhc2VuYW1lICIvIl0gMl0KPj4+ICvCoMKgwqAgcmV0dXJuICRjbGFzc29ubHkKPj4+
ICvCoMKgwqAgfQo+Pj4gKwo+Pj4gwqDCoMKgwqAgIyBBc3N1bWUgdGhlIHdvcmtsb2FkIGlzIGEg
c2NyaXB0LCBzZXQgdGhlIGV4ZWN1dGFibGUKPj4+IMKgwqDCoMKgICMgbmFtZSB0byB0aGUgc2Ft
ZSBhcyB0aGUgc291cmNlIG5hbWUuCj4+PiDCoMKgwqDCoCByZXR1cm4gJHdvcmtsb2FkX3NyYwo+
Pj4gwqB9Cj4+Pgo+Pj4gQEAgLTI0Myw1ICsyNjEsNjcgQEAgcHJvYyBvcF9jaGVja19kZXBlbmRl
bmNpZXMge30gewo+Pj4gwqDCoMKgwqDCoMKgwqDCoCBzZXQgb3BfZGVwc19vayAwCj4+PiDCoMKg
wqDCoCB9IGVsc2Ugewo+Pj4gwqDCoMKgwqDCoMKgwqDCoCBzZXQgb3BfZGVwc19vayAxCj4+PiDC
oMKgwqDCoCB9Cj4+PiDCoH0KPj4+ICsKPj4+ICtwcm9jIG9wX3Jlc29sdmVfamF2YV9kZXBlbmRl
bmNpZXMge30gewo+Pj4gK8KgwqDCoCBnbG9iYWwgamF2YV9kZXBzX29rCj4+PiArwqDCoMKgIGds
b2JhbCBwYXRoX3RvX2xpYmp2bXRpCj4+PiArwqDCoMKgIHNldCBsaWJqdm10aV9vcHJvZmlsZV9w
cmVzZW50IDAKPj4+ICvCoMKgwqAgc2V0IGphdmFfcHJlc2VudCAwCj4+PiArwqDCoMKgIHNldCBq
YXZhY19wcmVzZW50IDAKPj4+ICvCoMKgwqAgc2V0IG9wZXJmX3ByZXNlbnQgMAo+Pj4gKwo+Pj4g
K8KgwqDCoCBzZXQgcGF0aF90b19vcGVyZiBbIGxvY2FsX2V4ZWMgIndoaWNoIG9wZXJmIiAiIiAi
IiAxMDAgXQo+Pj4gK8KgwqDCoCBpZiB7W3JlZ2V4cCAib3BlcmYiICRwYXRoX3RvX29wZXJmIG9w
ZXJmX3ByZXNlbnRdID09IDF9IHsKPj4+ICvCoMKgwqAgdmVyYm9zZSAiRm91bmQgb3BlcmYgKCRv
cGVyZl9wcmVzZW50KSBhdCAkcGF0aF90b19vcGVyZiAuIgo+Pj4gK8KgwqDCoCB9IGVsc2Ugewo+
Pj4gK8KgwqDCoCBzZW5kICJEaWRuJ3QgZmluZCBvcGVyZi5cbiIKPj4+ICvCoMKgwqAgfQo+Pj4g
Kwo+Pj4gK8KgwqDCoCBzZXQgcGF0aF90b19qYXZhYyBbIGxvY2FsX2V4ZWMgIndoaWNoIGphdmFj
IiAiIiAiIiAxMDAgXQo+Pj4gK8KgwqDCoCBpZiB7W3JlZ2V4cCAiamF2YWMiICRwYXRoX3RvX2ph
dmFjIGphdmFjX3ByZXNlbnRdID09IDF9IHsKPj4+ICvCoMKgwqAgdmVyYm9zZSAiRm91bmQgamF2
YWMgKCRqYXZhY19wcmVzZW50KSBhdCAkcGF0aF90b19qYXZhYyAuIgo+Pj4gK8KgwqDCoCB9IGVs
c2Ugewo+Pj4gK8KgwqDCoCBzZW5kICJqYXZhYyBpcyByZXF1aXJlIHRvIGJ1aWxkIHRoZSBqYXZh
IHRlc3RjYXNlLsKgIEkgZGlkbid0IGZpbmQgamF2YWMgdmlhICd3aGljaCcuXG4iCj4+PiArwqDC
oMKgIH0KPj4+ICsKPj4+ICvCoMKgwqAgc2V0IHBhdGhfdG9famF2YSBbIGxvY2FsX2V4ZWMgIndo
aWNoIGphdmEiICIiICIiIDEwMCBdCj4+PiArwqDCoMKgIGlmIHtbcmVnZXhwICJqYXZhIiAkcGF0
aF90b19qYXZhIGphdmFfcHJlc2VudF0gPT0gMX0gewo+Pj4gK8KgwqDCoCB2ZXJib3NlICJGb3Vu
ZCBqYXZhICgkamF2YV9wcmVzZW50KSBhdCAkcGF0aF90b19qYXZhIC4iCj4+PiArwqDCoMKgIH0g
ZWxzZSB7Cj4+PiArwqDCoMKgIHNlbmQgImphdmEgaXMgcmVxdWlyZSB0byBydW4gdGhlIGphdmEg
dGVzdGNhc2UuwqAgSSBkaWRuJ3QgZmluZCBqYXZhIHZpYSAnd2hpY2gnLlxuIgo+Pj4gK8KgwqDC
oCB9Cj4+PiArCj4+PiArwqDCoMKgICMgRmluZGluZyBsaWJqdm10aV9vcHJvZmlsZS5zby4KPj4+
ICvCoMKgwqAgIyBJbiB0aGUgY2FzZSBvZiBhIHVzZXJzcGFjZSBidWlsZCwgdGhlIG9wcm9maWxl
IGluc3RhbGwgbG9jYXRpb24gaGFzCj4+PiArwqDCoMKgICMgc2libGluZyAvYmluLyBhbmQgL2xp
Yi8gZGlyZWN0b3JpZXMsIHNvIGFzIGxvbmcgYXMgd2UgaGF2ZSBmb3VuZCB0aGUKPj4+ICvCoMKg
wqAgIyBvcGVyZiBiaW5hcnksIHdlIHNob3VsZCBiZSBhYmxlIHRvIGluZmVyIHRoZSBsb2NhdGlv
biBvZiBsaWJqdm10aV9vcHJvZmlsZS5zby4KPj4+ICvCoMKgwqAgc2V0IHBhdGhfdG9fbGlianZt
dGkgW3N0cmluZyBtYXAge2Jpbi9vcGVyZiBsaWIvb3Byb2ZpbGUvbGlianZtdGlfb3Byb2ZpbGUu
c299ICRwYXRoX3RvX29wZXJmIF0KPj4+ICvCoMKgwqAgc2V0IHBhdGhfdG9fbGlianZtdGkgW3N0
cmluZyB0cmltbGVmdCAkcGF0aF90b19saWJqdm10aSAiMFwgXHsiXQo+Pj4gK8KgwqDCoCBzZXQg
cGF0aF90b19saWJqdm10aSBbc3RyaW5nIHRyaW0gJHBhdGhfdG9fbGlianZtdGkgIlwgXG5cclx9
Il0KPj4+ICvCoMKgwqAgc2V0IGxpYmp2bXRpX29wcm9maWxlX3ByZXNlbnQgW2ZpbGUgZXhpc3Rz
ICRwYXRoX3RvX2xpYmp2bXRpIF0KPj4+ICvCoMKgwqAgaWYgeyRsaWJqdm10aV9vcHJvZmlsZV9w
cmVzZW50ID09IDEgfSB7Cj4+PiArwqDCoMKgIHNlbmQgImZvdW5kIGxpYmp2bXRpX29wcm9maWxl
ICgkbGlianZtdGlfb3Byb2ZpbGVfcHJlc2VudCkgYXQgJHBhdGhfdG9fbGlianZtdGkgLiBcbiIK
Pj4+ICvCoMKgwqAgfSBlbHNlIHsKPj4+ICvCoMKgwqAgc2VuZCAiZGlkIG5vdCBmaW5kIGxpYmp2
bXRpX29wcm9maWxlIGluICRwYXRoX3RvX2xpYmp2bXRpICkgLlxuIgo+Pj4gK8KgwqDCoCAjIHNl
YXJjaCBhIGZldyBvdGhlciBjb21tb24gc3BvdHMgZm9yIHRoZSBsaWJyYXJ5Lgo+Pj4gK8KgwqDC
oCBmb3JlYWNoIHBhdGhfdG9fbGlianZtdGnCoCB7IC91c3IvbGliNjQvbGlianZtdGlfb3Byb2Zp
bGUuc28gL3Vzci9saWIvbGlianZtdGlfb3Byb2ZpbGUuc28gfSB7Cj4+Cj4+IEhpLAo+Pgo+PiBU
aGVyZSBhcmUgc29tZSBvdGhlciBwbGFjZXMgdGhhdCBsaWJqdm10aV9vcHJvZmlsZS5zbyBtaWdo
dCBlbmQgdXAuwqAgRm9yIHJoZWw3Ogo+Pgo+PiAvdXNyL2xpYjY0L29wcm9maWxlL2xpYmp2bXRp
X29wcm9maWxlLnNvCj4+Cj4+IEZvciBSZWQgSGF0IGRldmVsb3BlciB0b29sIDkgYW5kIDg6Cj4+
Cj4+IC9vcHQvcmgvZGV2dG9vbHNldC05L3Jvb3QvdXNyL2xpYjY0L2xpYmp2bXRpX29wcm9maWxl
LnNvCj4+IC9vcHQvcmgvZGV2dG9vbHNldC04L3Jvb3QvdXNyL2xpYjY0L2xpYmp2bXRpX29wcm9m
aWxlLnNvCj4+Cj4+IEZvciBsb2NhbGx5IGJ1aWx0IG9wcm9maWxlIGRlZmF1bHQgaW5zdGFsbHMg
ZW5kZWQgdXAgd2l0aDoKPj4KPj4gL3Vzci9sb2NhbC9saWIvb3Byb2ZpbGUvbGliL2xpYmp2bXRp
X29wcm9maWxlLnNvCj4+Cj4+IEl0IG1pZ2h0IGJlIGJldHRlciB0byBkZXRlcm1pbmUgd2hpY2gg
b3BlcmYgaXMgYmVpbmcgdXNlZCBhbmQgdXNlIHRoZQo+PiBiZWdpbm5pbmcgb2YgaXRzIHBhdGgg
dG8gZmluZCB0aGUgYXNzb2NpYXRlZCBqdm10aS5zbwo+IAo+IFJpZ2h0Li4gZWFybGllciB2ZXJz
aW9ucyBvZiB0aGlzIGZvdW5kIHNvbWUgZmFsc2UgcG9zaXRpdmVzIGluIHRoZSBlbnZpcm9ubWVu
dHMgSSBoYXZlLCB3aGljaCBpcyB3aHkgdGhlIGZpcnN0IHNwb3QgSSBjaGVjayB3YXMvaXMgcmVs
YXRpdmUgdG8gd2hlcmV2ZXIgaSBmb3VuZCAnb3BlcmYnLsKgwqDCoCBMb29rcyBsaWtlIEkgb25s
eSBsb29rIGZvciBhICdsaWInIHNpYmxpbmcsIHNvIGFkZGluZyBhIGxpYjY0IHNpYmxpbmcgd2ls
bCBwcm9iYWJseSByZXNvbHZlIHRoZSBvdGhlcnMgeW91IGhhdmUgbGlzdGVkLiAuLiBhcyBsb25n
IGFzIHRoZSBvcGVyZiBiaW5hcnkgaXMgaW4gYSByZWxhdGl2ZSBwYXRoIHRvIHRoZSBsaWJzLgoK
SXQgbG9va3MgbGlrZSB0aGUgcmVsYXRpdmUgcGF0aCB0byBvcGVyZiB3aXRoIGNoZWNrIGluIGxp
YjY0IHdvdWxkIGltcHJvdmUgdGhlIHNpdHVhdGlvbi4KCj4gCj4+IC91c3IvbGliNjQvb3Byb2Zp
bGUvbGlianZtdGlfb3Byb2ZpbGUuc28KPiAKPiBTbywgb3BlcmYgZm9yIHRoaXMgb25lIGlzIGF0
IC4uIC91c3IvYmluL29wZXJmID8KPiAKPj4gL29wdC9yaC9kZXZ0b29sc2V0LTkvcm9vdC91c3Iv
bGliNjQvbGlianZtdGlfb3Byb2ZpbGUuc28KPj4gL29wdC9yaC9kZXZ0b29sc2V0LTgvcm9vdC91
c3IvbGliNjQvbGlianZtdGlfb3Byb2ZpbGUuc28KPiAKPiBvcGVyZiBmb3IgdGhlc2UgaW4gL29w
dC9yaC9kZXZ0b29sc2V0LXs3LDh9L3Jvb3QvdXNyL2Jpbi9vcGVyZiA/Cj4gCj4+IC91c3IvbG9j
YWwvbGliL29wcm9maWxlL2xpYi9saWJqdm10aV9vcHJvZmlsZS5zbwo+IAo+IHdpdGggb3BlcmYg
YXQgL3Vzci9sb2NhbC9saWIvb3Byb2ZpbGUvYmluL29wZXJmwqAgPwoKSGVyZSBpcyB0aGVyZSBp
cyBmb3IgdGhlIG1hdGNoaW5nIG9wZXJmIGV4ZWN1dGFibGUgYW5kIGxpYmp2bWl0X29wcm9maWxl
LnNvOgoKRm9yIHg4Nl82NCByaGVsNzoKCi91c3IvYmluL29wZXJmCi91c3IvbGliNjQvb3Byb2Zp
bGUvbGlianZtdGlfb3Byb2ZpbGUuc28KCmRldnRvb2xzZXQtOAoKL29wdC9yaC9kZXZ0b29sc2V0
LTgvcm9vdC91c3IvYmluL29wZXJmCi9vcHQvcmgvZGV2dG9vbHNldC04L3Jvb3QvdXNyL2xpYjY0
L2xpYmp2bXRpX29wcm9maWxlLnNvCgpGb3IgdGhlIGxvY2FsIGluc3RhbGwgaGF2ZQoKL3Vzci9s
b2NhbC9iaW4vb3BlcmYKL3Vzci9sb2NhbC9saWIvb3Byb2ZpbGUvbGlianZtdGlfb3Byb2ZpbGUu
c28KCi1XaWxsCgo+IAo+IAo+IFRoYW5rcwo+IC1XaWxsIChTY2htaWR0KQo+IAo+Pgo+PiAtV2ls
bCBDb2hlbgo+IAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcHJvZmlsZS1saXN0IG1haWxpbmcgbGlzdApvcHJvZmlsZS1saXN0QGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9v
cHJvZmlsZS1saXN0Cg==
