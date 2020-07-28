Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A5D23147E
	for <lists+oprofile-list@lfdr.de>; Tue, 28 Jul 2020 23:16:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1k0Wxc-0003nH-OG; Tue, 28 Jul 2020 21:16:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wcohen@redhat.com>) id 1k0Wxb-0003nA-GE
 for oprofile-list@lists.sourceforge.net; Tue, 28 Jul 2020 21:16:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oK7k+l0NQX8lgGv7J/gBWgpJ0wXvewZV7atIdZwRB68=; b=PDcFcJC+Jpry756UkOrisEeoFl
 an/6VaoUotzf3Ez7k26HTGWbwgzAiIXt8oj0RqG5fT6x1U8Fp6qMsqQDFyMV3x+NR0wCuU5c90MV7
 VbPcqHRqEWwO73sA5O78l1I2ceb0W3achDSp6QBz9oi03DgeiG0bxApm6XsKmVYZFBEI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oK7k+l0NQX8lgGv7J/gBWgpJ0wXvewZV7atIdZwRB68=; b=WC9Y0icSPOpk/7zVZbkGcBAign
 5T0etjdtygis7k6k7FyA5dIOcD6QN9B4x0nr3HyddHlr2C6OQHKNanDdMlcglakAD6pIMqZxHwSsR
 r8g7rZpm+3AbsKq/tfTZ9OVeQBHJyXPVZVY6JMse8GKfMtS7cNassQuo+iRlJe2J2S4w=;
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1k0WxY-00CW4K-SW
 for oprofile-list@lists.sourceforge.net; Tue, 28 Jul 2020 21:16:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1595970982;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oK7k+l0NQX8lgGv7J/gBWgpJ0wXvewZV7atIdZwRB68=;
 b=K0PJ6YO1XP8L6T1yOGqkg1WyLhSJjeNcxa+8Cy+j6bMAVIrff1uXFBD7nIswvvQsReWukO
 VqTsq5abGyP6gQcKiuMZy495tHhbHQhvY5K1aHtg0YixQ0z4CN1zGS5ANZ0OITm7hxKUvo
 FVecNOgx4FCm8bGpZWGRm+Fkkx24b7A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-120-MK0RoAcAPoC2GDhraWlHQg-1; Tue, 28 Jul 2020 17:00:46 -0400
X-MC-Unique: MK0RoAcAPoC2GDhraWlHQg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 42176E91B;
 Tue, 28 Jul 2020 21:00:43 +0000 (UTC)
Received: from [10.10.112.189] (ovpn-112-189.rdu2.redhat.com [10.10.112.189])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F339660BF4;
 Tue, 28 Jul 2020 21:00:42 +0000 (UTC)
Subject: Re: samples lost due to no permanent mapping and no file mapping
To: oprofile-list@lists.sourceforge.net, J Lumby <johnlumby@hotmail.com>
References: <DM6PR06MB5562A262A03E919CEFBCA3C1A3780@DM6PR06MB5562.namprd06.prod.outlook.com>
 <2ae5d919-c1b6-556a-803c-dd269ce6855a@redhat.com>
 <DM6PR06MB55625E86C64B60DCEF775BA6A3780@DM6PR06MB5562.namprd06.prod.outlook.com>
 <DM6PR06MB5562226C0020B732B8447FA6A3770@DM6PR06MB5562.namprd06.prod.outlook.com>
From: William Cohen <wcohen@redhat.com>
Message-ID: <ad063653-752c-f1c3-bd22-bee6923def58@redhat.com>
Date: Tue, 28 Jul 2020 17:00:42 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <DM6PR06MB5562226C0020B732B8447FA6A3770@DM6PR06MB5562.namprd06.prod.outlook.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=wcohen@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.8 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1k0WxY-00CW4K-SW
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: oprofile-list-bounces@lists.sourceforge.net

T24gNy8yNC8yMCAxMTo0NyBBTSwgSiBMdW1ieSB3cm90ZToKPiBPbiA3LzIxLzIwIDU6NDcgUE0s
IEogTHVtYnkgd3JvdGU6Cj4+Cj4+IE9uIDcvMjEvMjAgOTo0OCBBTSwgV2lsbGlhbSBDb2hlbiB3
cm90ZToKPj4+Cj4+PiBDb3VsZCB5b3UgZ2l2ZSB0aGF0IG5ldyByZWxlYXNlIG9mIG9wcm9maWxl
IGEgdHJ5Pwo+Pj4KPj4+IC1XaWxsCj4+Cj4+Cj4+IEkgc2F3IDEuNC4wIGF2YWlsYWJsZSBhbG1v
c3QgaW1tZWRpYXRlbHkgYWZ0ZXIgSSBwb3N0ZWQgdGhhdC4gSSd2ZSBub3cgdHJpZWQgdGhlIHNh
bWUgcnVuIG9uIDEuNC4wIChjb21waWxlZCBvbiB0aGUgdGFyZ2V0IG1hY2hpbmUganVzdCB0byBi
ZSBzdXJlIGl0IGNvbXBpbGVzIHdpdGggdGhlIHNhbWUgYmZkIGhlYWRlcnMgYW5kIGxpYnMpIGFu
ZCB0aGVyZSBhcmUgbWl4ZWQgcmVzdWx0cy4KPj4KPj4gSXQgaXMgc3RpbGwgbG9zaW5nIDgwJSBv
ZiBhbGwgdXNlcnNwYWNlIGV2ZW50cyA6wqAgc2VlIGJlbG93Owo+Pgo+Pgo+IEkgdHVybmVkIG9u
wqAgLS12ZXJib3NlPSJkZWJ1Zyxjb252ZXJ0IiBhbmQgZnJvbSB0aGF0LCBkaXNjb3ZlcmVkIHRo
ZSBleHBsYW5hdGlvbiBmb3IgdGhlIHZlcnkgaGlnaCBsb3NzLgo+IAo+IE15IHdvcmtsb2FkIHdh
cyBmb3JraW5nIGEgbGFyZ2UgbnVtYmVyIG9mIHByb2Nlc3NlcyBpbiBzZXF1ZW5jZSwgZWFjaCBv
ZiB3aGljaCBkaWQgYSBjZXJ0YWluIGFtb3VudCBvZiB3b3JrICh0eXBpY2FsbHkgYXJvdW5kIDUg
c2Vjb25kcy13b3J0aCBvbiBhIHNpbmdsZSBDUFUpIGFuZCB0aGVuIGV4aXRlZC7CoMKgwqDCoCBJ
IGd1ZXNzIG9wZXJmJ3MgaGFuZGxpbmcgb2YgdGhlIG1hcHBpbmcgZXZlbnRzIHRha2VzIHNvbWV0
aGluZyBvZiB0aGUgc2FtZSBvcmRlciBvZiB0aW1lIHRvIHVuZGVyc3RhbmQgZWFjaCBwcm9jZXNz
LMKgIGJ5IHdoaWNoIHRpbWUgaXQgaGFzIGdvbmUuCgpPbmUgdGhvdWdoIGlzIGhvdyBleGFjdGx5
IGFyZSB5b3Ugc3RhcnRpbmcgZG9pbmcgdGhlIHByb2ZpbGluZz8gIExpa2UgdGhlIHRoZSBmb2xs
b3dpbmc6CgpvcGVyZiA8Y29tbWFuZF90b19wcm9maWxlPgoKT3IgYXR0YWNoaW5nIHRvIGEgcnVu
bmluZyBwcm9jZXNzPwoKb3BlcmYgLS1waWQgPHBpZD4KCk9yIGRvaW5nIHN5c3RlbXdpZGUgbW9u
aXRvcmluZyB3aXRoIC0tc3lzdGVtLXdpZGU/CgpZb3UgbWlnaHQgY2hlY2sgdG8gc2VlIGlmIHRo
ZSBsaW51eCBwZXJmIGNvbW1hbmQgaGFzIGEgc2ltaWxhciBwcm9ibGVtIHdpdGggdGhlIHF1aWNr
IHNwYXduIGFuZCBkZWF0aCBvZiBwcm9jZXNzZXMuCm9wZXJmIGlzIHVzaW5nIHRoZSBzYW1lIG1l
Y2hhbmlzbSBpbiB0aGUga2VybmVsIHRvIGNvbGxlY3QgcGVyZm9ybWFuY2UgZXZlbnQgc2FtcGxl
cy4gIFRoZXJlIGFyZSBzb21lIGNhc2VzIHdoZXJlIHRoZSBzY2FubmluZyBvZiAvcHJvYyBjYW4g
Z2V0IGJlaGluZCB0aGUgcmFwaWQgY3JlYXRpb24gYW5kIGRlYXRoIG9mIHByb2Nlc3Nlcy4gIEl0
IHdvdWxkIGJlIHVzZWZ1bCB0byBrbm93IGlmIHRoZSBwcm9ibGVtIGxpZXMgd2l0aCBvcHJvZmls
ZSBvciBpcyBhbHNvIHNlZW4gaW4gcGVyZi4KCi1XaWxsCgo+IAo+IEkgY2hhbmdlZCB0aGUgd29y
a2xvYWQgdG8gZG8gYWxsIHRoZSB3b3JrIGluIGEgc2luZ2xlIGNvbnRpbnVvdXMgcHJvY2VzcyBh
bmQgbm93IGl0IHdvcmtzIHdlbGwgOgo+IAo+IFByb2ZpbGluZyBzdGFydGVkIGF0IEZyaSBKdWwg
MjQgMTE6MTU6NDEgMjAyMAo+IFByb2ZpbGluZyBzdG9wcGVkIGF0IEZyaSBKdWwgMjQgMTE6MTc6
MDcgMjAyMAo+IAo+IC0tIE9Qcm9maWxlL29wZXJmIFN0YXRpc3RpY3MgLS0KPiBOci4gbm9uLWJh
Y2t0cmFjZSBzYW1wbGVzOiAxMjc5MQo+IE5yLiBrZXJuZWwgc2FtcGxlczogMjI0OAo+IE5yLiB1
c2VyIHNwYWNlIHNhbXBsZXM6IDEwNTQzCj4gTnIuIHNhbXBsZXMgbG9zdCBkdWUgdG8gc2FtcGxl
IGFkZHJlc3Mgbm90IGluIGV4cGVjdGVkIHJhbmdlIGZvciBkb21haW46IDAKPiBOci4gbG9zdCBr
ZXJuZWwgc2FtcGxlczogMAo+IE5yLiBzYW1wbGVzIGxvc3QgZHVlIHRvIHNhbXBsZSBmaWxlIG9w
ZW4gZmFpbHVyZTogMAo+IE5yLiBzYW1wbGVzIGxvc3QgZHVlIHRvIG5vIHBlcm1hbmVudCBtYXBw
aW5nOiAzNAo+IE5yLiB1c2VyIGNvbnRleHQga2VybmVsIHNhbXBsZXMgbG9zdCBkdWUgdG8gbm8g
YXBwIGluZm8gYXZhaWxhYmxlOiA4OQo+IE5yLiB1c2VyIHNhbXBsZXMgbG9zdCBkdWUgdG8gbm8g
YXBwIGluZm8gYXZhaWxhYmxlOiAwCj4gTnIuIGJhY2t0cmFjZXMgc2tpcHBlZCBkdWUgdG8gbm8g
ZmlsZSBtYXBwaW5nOiAzNAo+IE5yLiBoeXBlcnZpc29yIHNhbXBsZXMgZHJvcHBlZCBkdWUgdG8g
YWRkcmVzcyBvdXQtb2YtcmFuZ2U6IDAKPiBOci4gc2FtcGxlcyBsb3N0IHJlcG9ydGVkIGJ5IHBl
cmZfZXZlbnRzIGtlcm5lbDogMAo+IAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcHJvZmlsZS1saXN0IG1haWxpbmcgbGlzdApvcHJvZmlsZS1saXN0
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0
cy9saXN0aW5mby9vcHJvZmlsZS1saXN0Cg==
