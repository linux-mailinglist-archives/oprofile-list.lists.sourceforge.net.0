Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B185720CE
	for <lists+oprofile-list@lfdr.de>; Tue, 23 Jul 2019 22:31:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1hq1Ri-0007Q2-DO; Tue, 23 Jul 2019 20:31:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wcohen@redhat.com>) id 1hq1Rf-0007Po-0u
 for oprofile-list@lists.sourceforge.net; Tue, 23 Jul 2019 20:31:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:Cc:References:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ttuIqVe0O4CEROdUItmdzzH10FNbdVP6GLV71gXCBd8=; b=hF+6azhosI3/umA8EuMP1Yi6Zb
 2N2lobyNIRAJFm7Iy2PP6AtgQkWzQvG31qMAE7tyxdzd7bPoSOGDlLXw1OMWZirR4AYS6Xd071XKi
 U7zNJryTAxFOH7Rmw7DBQHIwHOcZYNZglh3oqtzB9f7BlvGNsQEWdpXaJjr4WtNkWIC0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:Cc:References:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ttuIqVe0O4CEROdUItmdzzH10FNbdVP6GLV71gXCBd8=; b=af8SE2Z5gtxlArtKsivoL9myls
 GIXEB3CpCwAmClBoNN0ESqjDn4Xu/pTlJ1rbKaZqi+ZTDQRwDPY9AYCCta2xUbfNXzq7wWBMdjnUy
 ++Jq893lprN02othMLpBZ1zvlxX2dC+0QLg8Dwqyo6QP1dlXSElB4ec3ruRgb7sGEAFs=;
Received: from mx1.redhat.com ([209.132.183.28])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hq1Rb-00DD5U-EL
 for oprofile-list@lists.sourceforge.net; Tue, 23 Jul 2019 20:31:33 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 005CB30A7C7D;
 Tue, 23 Jul 2019 20:31:26 +0000 (UTC)
Received: from [10.13.129.212] (dhcp129-212.rdu.redhat.com [10.13.129.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C049E600C4;
 Tue, 23 Jul 2019 20:31:25 +0000 (UTC)
Subject: Re: [oprof-cvs] popt.h: File not found
To: Solal Amouyal <solal.amouyal@gmail.com>
References: <CAN8ajf7-cJcW6cWLiQSQ_2q2s-XNnMJaOx1EtAvCJ4MP9h6WfA@mail.gmail.com>
From: William Cohen <wcohen@redhat.com>
Message-ID: <bb35ef0b-1001-0a48-b0f1-31eb775bc87e@redhat.com>
Date: Tue, 23 Jul 2019 16:31:25 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAN8ajf7-cJcW6cWLiQSQ_2q2s-XNnMJaOx1EtAvCJ4MP9h6WfA@mail.gmail.com>
Content-Language: en-MW
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Tue, 23 Jul 2019 20:31:26 +0000 (UTC)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1hq1Rb-00DD5U-EL
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
Cc: oprofile-list <oprofile-list@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: oprofile-list-bounces@lists.sourceforge.net

T24gNy8yMy8xOSAxMDoxNyBBTSwgU29sYWwgQW1vdXlhbCB3cm90ZToKPiBIZWxsbywKCkhpLAoK
Y2MnaW5nIHRoZSBhcHByb3ByaWF0ZSBsaXN0IGZvciB0aGlzIHJlcGx5LgoKPiAKPiBJIGFtIHJ1
bm5pbmcgb24gQ2VudE9TIExpbnV4IHJlbGVhc2UgNy42LjE4MTAuCj4gCj4gSSBhbSB0cnlpbmcg
dG8gaW5zdGFsbCBvcHJvZmlsZSBvbiBteSBtYWNoaW5lLiBJdCBpcyBhdmFpbGFibGUgdG8gaW5z
dGFsbCBmcm9tIHl1bSBidXQgb25seSBhcyBhbiBvbGRlciB2ZXJzaW9uICgwLjkuOSkuCj4gCgpJ
dCBpcyBhIGdvb2Qgc3RhcnRpbmcgcG9pbnQgdG8gZG93bmxvYWQgdGhlIHNvdXJjZSBycG0gYW5k
IGxvb2sgYXQgdGhlIHBhY2thZ2VzIHRoYXQgeW91IG5lZWQgdG8gaGF2ZSBpbnN0YWxsZWQgdG8g
YnVpbGQgdGhlIHBhY2thZ2UuICBUaGVzZSBzaG91bGQgYmUgcHJldHR5IG11Y2ggdGhlIHNhbWUg
Zm9yIHRoZSBtb3JlIHJlY2VudCB2ZXJzaW9uIG9mIHRoZSBwYWNrYWdlICh0aGUgeXVtIGluc3Rh
bGwuLi4gYW5kIHl1bS1idWlsZGRlcCB3aWxsIG5lZWQgdG8gYmUgcnVuIGFzIHJvb3QpOgoKeXVt
IGluc3RhbGwgeXVtLXV0aWxzIHJwbS1idWlsZAp5dW1kb3dubG9hZGVyIC0tc291cmNlIG9wcm9m
aWxlCnl1bS1idWlsZGRlcCAuL29wcm9maWxlKi5ycG0KCllvdSBjYW4gc2VlIHdoYXQgdGhleSBh
cmUgeW91ciBzZWxmIHdpdGg6CgpycG0gLVV2aCBvcHJvZmlsZSoucnBtCm1vcmUgfi9ycG0vU1BF
Q1Mvb3Byb2ZpbGUuc3BlYwoKCj4gSSBkb3dubG9hZGVkIHRoZSBnaXQgcmVwb3NpdG9yeSBhbmQg
cnVuIC4vY29uZmlndXJlICYmIG1ha2UuIFRoZSBtYWtlIGNvbW1hbmQgdGVybWluYXRlZCB3aXRo
IHRoZSBmb2xsb3dpbmcgZXJyb3I6Cj4gb3BfcG9wdC5oOjE2OjE4OiBmYXRhbCBlcnJvcjogcG9w
dC5oOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5Cj4gwqAjaW5jbHVkZSA8cG9wdC5oPgo+IAo+
IG9wX3BvcHQuaCBpcyBsb2NhdGVkIGluIC4vbGlidXRpbC5oCj4gVGhlcmUgaXMgbm90IHBvcHQu
aCBmaWxlIGluIHRoZSByZXBvc2l0b3J5LCBvbmx5IHBvcHRfb3B0aW9ucy5oIGxvY2F0ZWQgaW4g
bGlib3B0KysuCj4gSSB0cmllZCBhZGRpbmcgYSBwb3B0LmggZmlsZSBmb3VuZCBvbmxpbmUsIG1v
ZGlmeWluZyBvcF9wb3B0LmggdG8gaW5jbHVkZSBwb3B0X29wdGlvbnMuaCBpbnN0ZWFkLi4uIEkg
Y291bGRudCBnZXQgaXQgdG8gd29yay4gSSBoYXZlIGF0dGFjaGVkIHRoZSBjb25maWcubG9nIGZp
bGUuCgpJdCBsb29rcyBsaWtlIHlvdSBhcmUgbWlzc2luZyBwb3B0LWRldmVsLiAgWW91IHdpbGwg
bmVlZCB0byBpbnN0YWxsIHRoYXQuICBUaGVyZSBtYXkgYmUgc29tZSBvdGhlciBwYWNrYWdlcyB0
aGF0IHlvdSBuZWVkIHRvIGluc3RhbGwgYmVzaWRlcyB0aGF0LgoKLVdpbGwKPiAKPiBBbnkgaGVs
cCBpcyBhcHByZWNpYXRlZC4gVGhhbmtzLAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX18K
PiAKPiBTb2xhbCBBbW91eWFsCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBPcHJvZmlsZS1jb21taXRzIG1haWxpbmcgbGlzdAo+IE9wcm9m
aWxlLWNvbW1pdHNAbGlzdHMuc291cmNlZm9yZ2UubmV0Cj4gaHR0cHM6Ly9saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3Byb2ZpbGUtY29tbWl0cwo+IAoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcHJvZmlsZS1saXN0IG1haWxp
bmcgbGlzdApvcHJvZmlsZS1saXN0QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcHJvZmlsZS1saXN0Cg==
