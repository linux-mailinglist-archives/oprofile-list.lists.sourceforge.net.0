Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A018318AE6
	for <lists+oprofile-list@lfdr.de>; Thu,  9 May 2019 15:41:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1hOjJ5-0003Ia-QQ; Thu, 09 May 2019 13:41:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wcohen@redhat.com>) id 1hOjJ3-0003IT-Tg
 for oprofile-list@lists.sourceforge.net; Thu, 09 May 2019 13:41:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m9P7r+Z2KtfI/Buuc+/K1Ve+7lpJELI9CDEp7z4uYhs=; b=hLbxAO/zKJ0zjAX2jAVgFN7WZQ
 EaQUAIW7X9j2MkpxbuV6M1eEq2biZ3AzpY7oijXBxHxbNhX7xZzhH2iLBtxeWxLB8sPhGK2bniy8x
 q3iZ2am39S2u8lh3W8Pfsv6Cx9jdasHG4rBjsg9Es9ZkYwaaUyYlpDDWYinzzaoCDqR4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=m9P7r+Z2KtfI/Buuc+/K1Ve+7lpJELI9CDEp7z4uYhs=; b=L23RMzUE3oVS/hVU7RUlLt9uYQ
 ttvUfmh96Ju71yCxXspgkdGtb2IDwh6ANykZgq9/m/VzyW/iS5KUpYxDjnQXlNA1K9FssMhYD0IPB
 MomYtsUGH2mJEK0au0Z3qY7eKJZaBcoVRiwoF5q1oCkl3Y4WNm9aa/7fHvL1Ri/lyLGk=;
Received: from mx1.redhat.com ([209.132.183.28])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hOjJ1-00AUlD-Tg
 for oprofile-list@lists.sourceforge.net; Thu, 09 May 2019 13:41:53 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5A474792CD;
 Thu,  9 May 2019 13:41:46 +0000 (UTC)
Received: from [10.13.129.212] (dhcp129-212.rdu.redhat.com [10.13.129.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2D7B7643E4;
 Thu,  9 May 2019 13:41:46 +0000 (UTC)
Subject: Re: [oprof-cvs] [PATCH] Add support for Hygon Dhyana CPU
To: Jinke Fan <fanjinke51@yeah.net>,
 oprofile-list <oprofile-list@lists.sourceforge.net>
References: <3ee89afc-714c-aabd-adeb-5bd613c44e8f@yeah.net>
From: William Cohen <wcohen@redhat.com>
Message-ID: <848b1c77-e203-57b3-8ffc-431e7e7626b1@redhat.com>
Date: Thu, 9 May 2019 09:41:45 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <3ee89afc-714c-aabd-adeb-5bd613c44e8f@yeah.net>
Content-Language: en-MW
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Thu, 09 May 2019 13:41:46 +0000 (UTC)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: yeah.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1hOjJ1-00AUlD-Tg
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

T24gNS85LzE5IDU6NTIgQU0sIEppbmtlIEZhbiB3cm90ZToKPiBCYWNrZ3JvdW5kOgo+IENoZW5n
ZHUgSGFpZ3VhbmcgSUMgRGVzaWduIENvLiwgTHRkIChIeWdvbikgaXMgYSBKb2ludCBWZW50dXJl
IGJldHdlZW4KPiBBTUQgYW5kIEhhaWd1YW5nIEluZm9ybWF0aW9uIFRlY2hub2xvZ3kgQ28uLEx0
ZC4sIGFpbXMgYXQgcHJvdmlkaW5nIGhpZ2gKPiBwZXJmb3JtYW5jZSB4ODYgcHJvY2Vzc29yIGZv
ciBDaGluYSBzZXJ2ZXIgbWFya2V0LiBJdHMgZmlyc3QgZ2VuZXJhdGlvbgo+IHByb2Nlc3NvciBj
b2RlbmFtZSBpcyBEaHlhbmEsIHdoaWNoIG9yaWdpbmF0ZXMgZnJvbSBBTUQgdGVjaG5vbG9neSBh
bmQKPiBzaGFyZXMgbW9zdCBvZiB0aGUgYXJjaGl0ZWN0dXJlIHdpdGggQU1EJ3MgZmFtaWx5IDE3
aCwgYnV0IHdpdGgKPiBkaWZmZXJlbnQgQ1BVIFZlbmRvciBJRCgiSHlnb25HZW51aW5lIikvRmFt
aWx5IHNlcmllcyBudW1iZXIoRmFtaWx5IDE4aCkuCj4gCj4gUmVsYXRlZCBIeWdvbiBrZXJuZWwg
cGF0Y2ggY2FuIGJlIGZvdW5kIG9uCj4gaHR0cDovL2xrbWwua2VybmVsLm9yZy9yLzVjZTg2MTIz
YTdiOWRhZDkyNWFjNTgzZDg4ZDJmOTIxMDQwZTg1OWIuMTUzODU4MzI4Mi5naXQucHV3ZW5AaHln
b24uY24KPiAKPiBTaWduZWQtb2ZmLWJ5OiBmYW5qaW5rZSA8ZmFuamlua2U1MUB5ZWFoLm5ldD4K
PiAtLS0KCkhpLAoKVGhlIHBhdGNoIGxvb2tzIHJlYXNvbmFibGUgYW5kIGl0IGhhcyBiZWVuIG1l
cmdlZCBpbnRvIHRoZSB1cHN0cmVhbSBnaXQgcmVwb3NpdG9yeS4gIENvdWxkIG1ha2UgYSBwYXRj
aCBmb3IgaHR0cHM6Ly9zb3VyY2Vmb3JnZS5uZXQvcC9vcHJvZmlsZS9vcHJvZmlsZS10ZXN0cy9j
aS9tYXN0ZXIvdHJlZS8gc28gdGhlIHRlc3RzdWl0ZSB3b3JrcyBmb3IgdGhpcyBwcm9jZXNzb3I/
CgpUaGFua3MgYWdhaW4gZm9yIHRoZSBwYXRjaC4KCi1XaWxsIENvaGVuCgo+IMKgbGlib3Avb3Bf
Y3B1X3R5cGUuY8KgwqDCoMKgwqDCoMKgwqAgfCAzICsrLQo+IMKgbGlicGVfdXRpbHMvb3BfcGVf
dXRpbHMuY3BwIHwgNCArKystCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvbGlib3Avb3BfY3B1X3R5cGUuYyBiL2xp
Ym9wL29wX2NwdV90eXBlLmMKPiBpbmRleCAxZDYwMWM2Li4zYWFiNGEyIDEwMDY0NAo+IC0tLSBh
L2xpYm9wL29wX2NwdV90eXBlLmMKPiArKysgYi9saWJvcC9vcF9jcHVfdHlwZS5jCj4gQEAgLTU5
OSw3ICs1OTksOCBAQCBzdGF0aWMgb3BfY3B1IF9nZXRfeDg2XzY0X2NwdV90eXBlKHZvaWQpCj4g
Cj4gwqDCoMKgwqAgaWYgKGNwdWlkX3ZlbmRvcigiR2VudWluZUludGVsIikpIHsKPiDCoMKgwqDC
oMKgwqDCoMKgIHJldCA9IF9nZXRfaW50ZWxfY3B1X3R5cGUoKTsKPiAtwqDCoMKgIH0gZWxzZSBp
ZiAoY3B1aWRfdmVuZG9yKCJBdXRoZW50aWNBTUQiKSkgewo+ICvCoMKgwqAgfSBlbHNlIGlmIChj
cHVpZF92ZW5kb3IoIkF1dGhlbnRpY0FNRCIpIHx8Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIGNw
dWlkX3ZlbmRvcigiSHlnb25HZW51aW5lIikpIHsKPiDCoMKgwqDCoMKgwqDCoMKgIHJldCA9IF9n
ZXRfYW1kX2NwdV90eXBlKCk7Cj4gwqDCoMKgwqAgfQo+IAo+IGRpZmYgLS1naXQgYS9saWJwZV91
dGlscy9vcF9wZV91dGlscy5jcHAgYi9saWJwZV91dGlscy9vcF9wZV91dGlscy5jcHAKPiBpbmRl
eCBkNTQ1Y2VlLi4xY2E0Y2UzIDEwMDY0NAo+IC0tLSBhL2xpYnBlX3V0aWxzL29wX3BlX3V0aWxz
LmNwcAo+ICsrKyBiL2xpYnBlX3V0aWxzL29wX3BlX3V0aWxzLmNwcAo+IEBAIC00MTUsNyArNDE1
LDkgQEAgc3RhdGljIHZvaWQgX2dldF9ldmVudF9jb2RlKG9wZXJmX2V2ZW50X3QgKiBldmVudCwg
b3BfY3B1IGNwdV90eXBlKQo+IMKgI2lmIGRlZmluZWQoX19pMzg2X18pIHx8IGRlZmluZWQoX194
ODZfNjRfXykKPiDCoMKgwqDCoCAvLyBTZXR1cCBFdmVudFNlbGN0WzExOjhdIGZpZWxkIGZvciBB
TUQKPiDCoMKgwqDCoCBjb25zdCBjaGFyICogdmVuZG9yX0FNRCA9ICJBdXRoZW50aWNBTUQiOwo+
IC3CoMKgwqAgaWYgKG9wX2lzX2NwdV92ZW5kb3IoKGNoYXIgKil2ZW5kb3JfQU1EKSkgewo+ICvC
oMKgwqAgY29uc3QgY2hhciAqIHZlbmRvcl9IeWdvbiA9ICJIeWdvbkdlbnVpbmUiOwo+ICvCoMKg
wqAgaWYgKG9wX2lzX2NwdV92ZW5kb3IoKGNoYXIgKil2ZW5kb3JfQU1EKSB8fAo+ICvCoMKgwqDC
oMKgwqDCoCBvcF9pc19jcHVfdmVuZG9yKChjaGFyICopdmVuZG9yX0h5Z29uKSkgewo+IMKgwqDC
oMKgwqDCoMKgwqAgY29uZmlnID0gYmFzZV9jb2RlICYgMHhGMDBVTEw7Cj4gwqDCoMKgwqDCoMKg
wqDCoCBjb25maWcgPSBjb25maWcgPDwgMzI7Cj4gwqDCoMKgwqAgfQoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcHJvZmlsZS1saXN0IG1haWxpbmcg
bGlzdApvcHJvZmlsZS1saXN0QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcHJvZmlsZS1saXN0Cg==
