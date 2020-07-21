Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3421622814B
	for <lists+oprofile-list@lfdr.de>; Tue, 21 Jul 2020 15:49:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jxsdi-00061w-P1; Tue, 21 Jul 2020 13:49:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wcohen@redhat.com>) id 1jxsdh-00061p-Pv
 for oprofile-list@lists.sourceforge.net; Tue, 21 Jul 2020 13:49:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xMBJeVRj5bTO9u9n6lA7beoKJQyRwrq8iCkwXQ8rQdI=; b=GNmOc+zbx0mnLbk3A/udVlSrAL
 FE4YfWj8S21SHVD9evHRAJkW9YbxfkecnE1ReKdCS5DgPu0aAUx/IvJX67alB8s2Qhw5ciNlZxo3b
 tQ7z2zngl3XxHZSDuV+CUld7RLarWcr1fNF5vX+W8mkzUGimUnUOYlWImspyNq/ziPSI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xMBJeVRj5bTO9u9n6lA7beoKJQyRwrq8iCkwXQ8rQdI=; b=Bmint1Foss1EtI0V6CPRvPEUqg
 jzwTTYTuqc02RzaAPpIt1IUi7PNWzJV46HBh5btm8JxSNpaO4jjE8BKjryVoZ4qy+FlW2Mv5jnBF7
 jrOUBQWZA3wh0nWNz6gVR5hKW2Nr9neaS4RIO4kECLm++63NGNfBqrthYLQSdVOLbiUA=;
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jxsdf-00F9Tw-VG
 for oprofile-list@lists.sourceforge.net; Tue, 21 Jul 2020 13:49:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1595339334;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xMBJeVRj5bTO9u9n6lA7beoKJQyRwrq8iCkwXQ8rQdI=;
 b=dtrHu9y6peTo4ulPhr3Ae9oYhhCbb2OycjLke4jYz6ZLwxqk0ycarLsDLPnu52884RpTIF
 ilWjYMTpxrlbYLz2rM7Jttj7OpFzUaAl9beV2vlTzKoJxN35sSd9eU6KjO8aVhKO2/JEoW
 rCBFocm3ejxrYOOWWtKvTFuqDcBws00=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-179-lzCbvYTsNU6dx5dwvXLR2Q-1; Tue, 21 Jul 2020 09:48:50 -0400
X-MC-Unique: lzCbvYTsNU6dx5dwvXLR2Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2EB8B58;
 Tue, 21 Jul 2020 13:48:49 +0000 (UTC)
Received: from [10.10.114.218] (ovpn-114-218.rdu2.redhat.com [10.10.114.218])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E949F100EBAE;
 Tue, 21 Jul 2020 13:48:48 +0000 (UTC)
Subject: Re: samples lost due to no permanent mapping and no file mapping
To: J Lumby <johnlumby@hotmail.com>, oprofile-list@lists.sourceforge.net
References: <DM6PR06MB5562A262A03E919CEFBCA3C1A3780@DM6PR06MB5562.namprd06.prod.outlook.com>
From: William Cohen <wcohen@redhat.com>
Message-ID: <2ae5d919-c1b6-556a-803c-dd269ce6855a@redhat.com>
Date: Tue, 21 Jul 2020 09:48:48 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <DM6PR06MB5562A262A03E919CEFBCA3C1A3780@DM6PR06MB5562.namprd06.prod.outlook.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.81 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jxsdf-00F9Tw-VG
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

T24gNy8yMC8yMCA5OjAzIFBNLCBKIEx1bWJ5IHdyb3RlOgo+IE9wcm9maWxpbmcgYW4gaW50ZW5z
aXZlIHBvc3RncmVzcWwgd29ya2xvYWQgcnVubmluZyBvbiBhIExlbm92byBQNTIgYW5kIGxuaXV4
IGtlcm5lbCA1LjcuNCzCoMKgIEkgc2VlIHZlcnkgaGlnaCBudW1iZXJzIG9mIGJvdGggb2YgdGhl
c2UgOiBhcHByb3hpbWF0ZWx5IHR3by10aGlyZHMgb2YgYWxsIHVzZXItc3BhY2Ugc2FtcGxlcyBh
cmUgYmVpbmcgbG9zdC7CoCBzZWUgb3BlcmYubG9nIGJlbG93Cj4gCj4gCj4gVGhlIG9wZXJmIGNv
bW1hbmQgSSd2ZSB1c2VkIGlzCj4gCj4gb3BlcmYgLS12bWxpbnV4IC9tbnQvYnVsbGJpbGQvbGlu
dXgtNS43LjQtYnVsbGFyY2gvdm1saW51eCAtLXNlc3Npb24tZGlyIC90bXAvb3Byb2Zfc2Vzc2lv
bi4yMDA3MjAtMTk1MDI0IC0tZXZlbnRzIGNwdV9jbGtfdW5oYWx0ZWQ6MzAwMDAwNDU6dGhyZWFk
OjE6MSAtLWNhbGxncmFwaCAtLXNlcGFyYXRlLWNwdSAtLXN5c3RlbS13aWRlCj4gCj4gCj4gYW5k
IGl0IHdvcmtzIGJ1dCB0ZWxscyBtZQo+IAo+IFdBUk5JTkc6IExvc3Qgc2FtcGxlcyBkZXRlY3Rl
ZCEgU2VlIC90bXAvb3Byb2Zfc2Vzc2lvbi4yMDA3MjAtMTk1MDI0L3NhbXBsZXMvb3BlcmYubG9n
IGZvciBkZXRhaWxzLgo+IAo+IAo+IExvd2VyaW5nIHRoZSBzYW1wbGluZyByYXRlIGFzIHN1Z2dl
c3RlZCBkb2VzIG5vdCBoZWxwIDrCoCBJIHRyaWVkIHdpdGggYSBjb3VudCBvZiA5OTk5OTk5OSBh
bmQgc2FtZSBoaWdoIGxvc3Qgc2FtcGxlcy4KPiAKPiAKPiBJIGFzc3VtZSBvcHJvZmlsZSBzb21l
aG93IGlzIHVuYWJsZSB0byBtYXAgdGhlIGluc3RydWN0aW9uIHBvaW50ZXIgb2YgdGhlIGV2ZW50
IHRvIGFueSBwcm9jZXNzP8KgwqDCoMKgwqAgSG93IGRvZXMgaXQgZG8gdGhpcz8gSXMgdGhlcmUg
YW55IHNldHRpbmcgb3IgY29udHJvbCBvciBoaW50IHRoYXQgSSBjYW4gc2V0IHRvIGhlbHAgaXQ/
wqDCoMKgwqAgb3IgLMKgIGZhaWxpbmcgdGhhdCzCoCBpcyB0aGVyZSBhbnkgd2F5IEkgY2FuIGFz
ayBvcHJlcG9ydCB0byBnaXZlIG1lIHRoZSByZXN1bHRzIGFzIHJhdyBpbnN0cnVjdGlvbiBhZGRy
ZXNzZXM/Cj4gCj4gCj4gSGVscCEKCkhpLAoKV2hpY2ggdmVyc2lvbiBvZiBvcHJvZmlsZSB3YXMg
YmVpbmcgdXNlZD8gIEkganVzdCBkaWQgYSByZWxlYXNlIG9mIG9wcm9maWxlLTEuNC4wIGl0IGhh
cyBjb21taXQgW2EzNzQyZl06CgpVc2UgdGhlIG1tYXAgb2Zmc2V0IHRvIGNvcnJlY3RseSBjb21w
dXRlIHRoZSBJUCBsb2NhdGlvbiBpbiBhIGZpbGUKCk5ld2VyIHZlcnNpb25zIG9mIGJpbnV0aWxz
IGFyZSBub3cgbm93IHNwbGl0dGluZyB0aGUgZmlsZSBpbnRvCm11bHRpcGxlIG1tYXAgbG9hZHMu
IFRoZSBhc3N1bXB0aW9uIHRoYXQgdGhlIG1tYXAgZm9yIHRoZSBleGVjdXRhYmxlCmNvZGUgaW4g
dGhlIGZpbGUgc3RhcnRzIGF0IHRoZSBiZWdpbm5pbmcgb2YgdGhlIGZpbGUgKHRoYXQgdGhlIGZp
bGUKb2Zmc2V0IGlzIGFsd2F5cyB6ZXJvKSBpcyBubyBsb25nZXIgdHJ1ZS4gVGhlIGNvbXB1dGF0
aW9uIHRvIGNvbnZlcnQKdGhlIElQIGFkZHJlc3MgaW50byBhbiBvZmZzZXQgbmVlZHMgdG8gYWxz
byB1c2UgdGhlIG9mZnNldC4KCkkgd29uZGVyIGlmIG1heWJlIHRoYXQgYSBudW1iZXIgb2YgdGhl
IHNhbXBsZXMgbWlnaHQgYmUgZGlzY2FyZGVkIGJlY2F1c2UgdGhleSBhcmUgbm90IGJlaW5nIG1h
cHBlZCB0byByZWFzb25hYmxlIGxvY2F0aW9ucyBpbiBleGVjdXRhYmxlcy4KCkNvdWxkIHlvdSBn
aXZlIHRoYXQgbmV3IHJlbGVhc2Ugb2Ygb3Byb2ZpbGUgYSB0cnk/CgotV2lsbAo+IAo+IAo+IENo
ZWVycyzCoCBKb2huIEx1bWJ5Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiAKPiBQcm9maWxpbmcgc3RhcnRlZCBhdCBNb24g
SnVsIDIwIDE5OjUwOjI0IDIwMjAKPiBQcm9maWxpbmcgc3RvcHBlZCBhdCBNb24gSnVsIDIwIDE5
OjUxOjI1IDIwMjAKPiAKPiAtLSBPUHJvZmlsZS9vcGVyZiBTdGF0aXN0aWNzIC0tCj4gTnIuIG5v
bi1iYWNrdHJhY2Ugc2FtcGxlczogOTQzNQo+IE5yLiBrZXJuZWwgc2FtcGxlczogMTkyNAo+IE5y
LiB1c2VyIHNwYWNlIHNhbXBsZXM6IDc1MTEKPiBOci4gc2FtcGxlcyBsb3N0IGR1ZSB0byBzYW1w
bGUgYWRkcmVzcyBub3QgaW4gZXhwZWN0ZWQgcmFuZ2UgZm9yIGRvbWFpbjogMAo+IE5yLiBsb3N0
IGtlcm5lbCBzYW1wbGVzOiAwCj4gTnIuIHNhbXBsZXMgbG9zdCBkdWUgdG8gc2FtcGxlIGZpbGUg
b3BlbiBmYWlsdXJlOiAwCj4gTnIuIHNhbXBsZXMgbG9zdCBkdWUgdG8gbm8gcGVybWFuZW50IG1h
cHBpbmc6IDQ5NjcKPiBOci4gdXNlciBjb250ZXh0IGtlcm5lbCBzYW1wbGVzIGxvc3QgZHVlIHRv
IG5vIGFwcCBpbmZvIGF2YWlsYWJsZTogMAo+IE5yLiB1c2VyIHNhbXBsZXMgbG9zdCBkdWUgdG8g
bm8gYXBwIGluZm8gYXZhaWxhYmxlOiAwCj4gTnIuIGJhY2t0cmFjZXMgc2tpcHBlZCBkdWUgdG8g
bm8gZmlsZSBtYXBwaW5nOiA0OTY3Cj4gTnIuIGh5cGVydmlzb3Igc2FtcGxlcyBkcm9wcGVkIGR1
ZSB0byBhZGRyZXNzIG91dC1vZi1yYW5nZTogMAo+IE5yLiBzYW1wbGVzIGxvc3QgcmVwb3J0ZWQg
YnkgcGVyZl9ldmVudHMga2VybmVsOiAwCj4gCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBvcHJvZmlsZS1saXN0IG1haWxpbmcgbGlzdAo+
IG9wcm9maWxlLWxpc3RAbGlzdHMuc291cmNlZm9yZ2UubmV0Cj4gaHR0cHM6Ly9saXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3Byb2ZpbGUtbGlzdAoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcHJvZmlsZS1saXN0IG1haWxpbmcg
bGlzdApvcHJvZmlsZS1saXN0QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcHJvZmlsZS1saXN0Cg==
