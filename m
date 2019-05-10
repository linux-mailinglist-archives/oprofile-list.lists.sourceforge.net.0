Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 041A819E65
	for <lists+oprofile-list@lfdr.de>; Fri, 10 May 2019 15:43:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1hP5ne-0001hd-Gp; Fri, 10 May 2019 13:42:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <fanjinke51@yeah.net>) id 1hP1hW-0005xX-Cs
 for oprofile-list@lists.sourceforge.net; Fri, 10 May 2019 09:20:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:To:Subject:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9UzJlDbqklYbj279M/FTaMZlN24c8UIvSQJCDTPPS6k=; b=ePPnct5tTbc895ZMh9GTBsti+p
 VT8ZXsGWBPMsI1ZcU+lr0zB7m1Jt0yGBvCWlLyPkmfRKhBZ42GWKzy1X6MVM3R85TVVfC5T3P+b5Y
 5rz8b6C6HPdOubkOmSyHVpT84+IuyY9Yq9CRsddm2YDpuPx3P0sf46DFRkZ2b7FPEzrY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:To:Subject:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9UzJlDbqklYbj279M/FTaMZlN24c8UIvSQJCDTPPS6k=; b=nT8sHAGNINMAZIT6w5cyxCHv9d
 noC3WUx2HZLfrsBTouxFkyG+yi6CAT5XN3COhs6CgNuxw+erV+uEVAzu7CgwN35ScFi9iuqKSplm1
 mZh9Cs0gF3rZ0qGwb0YMfCvHC17M/ZDcvq7Xm/ArY4fEEWFBubcQSWOMQIUEJes+naBg=;
Received: from proxy25211.mail.163.com ([103.129.252.11]
 helo=proxy41131.mail.163.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.90_1)
 id 1hP1hS-00FSsA-8X
 for oprofile-list@lists.sourceforge.net; Fri, 10 May 2019 09:20:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
 s=s110527; h=From:Subject:Message-ID:Date:MIME-Version; bh=9UzJl
 DbqklYbj279M/FTaMZlN24c8UIvSQJCDTPPS6k=; b=B+8xIJ1WoHB9M0vmjTDb5
 LcRi1DBkvSdG3N76wxDbI/ATLLkg/VgyJ3QjzR3FVpnY1GQv8hYmhTU12UDO0CBt
 X77eVJx1uq6bfk2n+AkB5vVMsX928t3XUNUjdIIHkgdMhl2hxU0jVIcWzSv+rdkW
 d2oIkBPNXlIsEXfgNsIKP0=
Received: from [172.20.24.165] (unknown [182.150.46.145])
 by smtp2 (Coremail) with SMTP id C1UQrADHv2shQtVcIsz5EA--.4610S2;
 Fri, 10 May 2019 17:19:30 +0800 (CST)
From: Jinke Fan <fanjinke51@yeah.net>
Subject: Re: [oprof-cvs] [PATCH] Add support for Hygon Dhyana CPU
To: William Cohen <wcohen@redhat.com>,
 oprofile-list <oprofile-list@lists.sourceforge.net>
References: <3ee89afc-714c-aabd-adeb-5bd613c44e8f@yeah.net>
 <848b1c77-e203-57b3-8ffc-431e7e7626b1@redhat.com>
Message-ID: <e14d05e2-9782-fe91-625e-0256a11f0d37@yeah.net>
Date: Fri, 10 May 2019 17:19:29 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <848b1c77-e203-57b3-8ffc-431e7e7626b1@redhat.com>
Content-Language: en-US
X-CM-TRANSID: C1UQrADHv2shQtVcIsz5EA--.4610S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxZF4xCFyxAr48Kw48GFWDXFb_yoW5Xw4Upr
 Z7JF15t3y8Cr97G397Jr1DXrWfXr48JayDXrs0qa4rZF4UAF12qr1UWF4Sgw18uFs7ur4U
 try5WF1kZFnrJF7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j6ApnUUUUU=
X-Originating-IP: [182.150.46.145]
X-CM-SenderInfo: xidqyx5qnhkio61htxgoqh3/1tbiDwOwLFnxWO2cBgAAsX
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [103.129.252.11 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (fanjinke51[at]yeah.net)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: yeah.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (fanjinke51[at]yeah.net)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hP1hS-00FSsA-8X
X-Mailman-Approved-At: Fri, 10 May 2019 13:42:57 +0000
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: oprofile-list-bounces@lists.sourceforge.net

T24gMjAxOS81LzkgMjE6NDEsIFdpbGxpYW0gQ29oZW4gd3JvdGU6Cj4gT24gNS85LzE5IDU6NTIg
QU0sIEppbmtlIEZhbiB3cm90ZToKPj4gQmFja2dyb3VuZDoKPj4gQ2hlbmdkdSBIYWlndWFuZyBJ
QyBEZXNpZ24gQ28uLCBMdGQgKEh5Z29uKSBpcyBhIEpvaW50IFZlbnR1cmUgYmV0d2Vlbgo+PiBB
TUQgYW5kIEhhaWd1YW5nIEluZm9ybWF0aW9uIFRlY2hub2xvZ3kgQ28uLEx0ZC4sIGFpbXMgYXQg
cHJvdmlkaW5nIGhpZ2gKPj4gcGVyZm9ybWFuY2UgeDg2IHByb2Nlc3NvciBmb3IgQ2hpbmEgc2Vy
dmVyIG1hcmtldC4gSXRzIGZpcnN0IGdlbmVyYXRpb24KPj4gcHJvY2Vzc29yIGNvZGVuYW1lIGlz
IERoeWFuYSwgd2hpY2ggb3JpZ2luYXRlcyBmcm9tIEFNRCB0ZWNobm9sb2d5IGFuZAo+PiBzaGFy
ZXMgbW9zdCBvZiB0aGUgYXJjaGl0ZWN0dXJlIHdpdGggQU1EJ3MgZmFtaWx5IDE3aCwgYnV0IHdp
dGgKPj4gZGlmZmVyZW50IENQVSBWZW5kb3IgSUQoIkh5Z29uR2VudWluZSIpL0ZhbWlseSBzZXJp
ZXMgbnVtYmVyKEZhbWlseSAxOGgpLgo+Pgo+PiBSZWxhdGVkIEh5Z29uIGtlcm5lbCBwYXRjaCBj
YW4gYmUgZm91bmQgb24KPj4gaHR0cDovL2xrbWwua2VybmVsLm9yZy9yLzVjZTg2MTIzYTdiOWRh
ZDkyNWFjNTgzZDg4ZDJmOTIxMDQwZTg1OWIuMTUzODU4MzI4Mi5naXQucHV3ZW5AaHlnb24uY24K
Pj4KPj4gU2lnbmVkLW9mZi1ieTogZmFuamlua2UgPGZhbmppbmtlNTFAeWVhaC5uZXQ+Cj4+IC0t
LQo+IAo+IEhpLAo+IAo+IFRoZSBwYXRjaCBsb29rcyByZWFzb25hYmxlIGFuZCBpdCBoYXMgYmVl
biBtZXJnZWQgaW50byB0aGUgdXBzdHJlYW0gZ2l0IHJlcG9zaXRvcnkuICBDb3VsZCBtYWtlIGEg
cGF0Y2ggZm9yIGh0dHBzOi8vc291cmNlZm9yZ2UubmV0L3Avb3Byb2ZpbGUvb3Byb2ZpbGUtdGVz
dHMvY2kvbWFzdGVyL3RyZWUvIHNvIHRoZSB0ZXN0c3VpdGUgd29ya3MgZm9yIHRoaXMgcHJvY2Vz
c29yPwo+IAo+IFRoYW5rcyBhZ2FpbiBmb3IgdGhlIHBhdGNoLgo+IAo+IC1XaWxsIENvaGVuCj4g
CkhpIFdpbGxpYW0sCgpUaGFuayB5b3UgdmVyeSBtdWNoIGZvciB5b3VyIHJlcGx5LgpOZXh0LCBJ
IHdpbGwgc3VibWl0IHRoZSBwcm9maWxlLXRlc3RzIHJlcG9zaXRvcnkgcGF0Y2guClRoYW5rcyBm
b3IgeW91ciByZW1pbmRpbmcuCgpCZXN0IHJlZ2FyZHMhCkppbmtlIEZhbi4KPj4gIMKgbGlib3Av
b3BfY3B1X3R5cGUuY8KgwqDCoMKgwqDCoMKgwqAgfCAzICsrLQo+PiAgwqBsaWJwZV91dGlscy9v
cF9wZV91dGlscy5jcHAgfCA0ICsrKy0KPj4gIMKgMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9saWJvcC9vcF9jcHVfdHlw
ZS5jIGIvbGlib3Avb3BfY3B1X3R5cGUuYwo+PiBpbmRleCAxZDYwMWM2Li4zYWFiNGEyIDEwMDY0
NAo+PiAtLS0gYS9saWJvcC9vcF9jcHVfdHlwZS5jCj4+ICsrKyBiL2xpYm9wL29wX2NwdV90eXBl
LmMKPj4gQEAgLTU5OSw3ICs1OTksOCBAQCBzdGF0aWMgb3BfY3B1IF9nZXRfeDg2XzY0X2NwdV90
eXBlKHZvaWQpCj4+Cj4+ICDCoMKgwqDCoCBpZiAoY3B1aWRfdmVuZG9yKCJHZW51aW5lSW50ZWwi
KSkgewo+PiAgwqDCoMKgwqDCoMKgwqDCoCByZXQgPSBfZ2V0X2ludGVsX2NwdV90eXBlKCk7Cj4+
IC3CoMKgwqAgfSBlbHNlIGlmIChjcHVpZF92ZW5kb3IoIkF1dGhlbnRpY0FNRCIpKSB7Cj4+ICvC
oMKgwqAgfSBlbHNlIGlmIChjcHVpZF92ZW5kb3IoIkF1dGhlbnRpY0FNRCIpIHx8Cj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoCBjcHVpZF92ZW5kb3IoIkh5Z29uR2VudWluZSIpKSB7Cj4+ICDCoMKg
wqDCoMKgwqDCoMKgIHJldCA9IF9nZXRfYW1kX2NwdV90eXBlKCk7Cj4+ICDCoMKgwqDCoCB9Cj4+
Cj4+IGRpZmYgLS1naXQgYS9saWJwZV91dGlscy9vcF9wZV91dGlscy5jcHAgYi9saWJwZV91dGls
cy9vcF9wZV91dGlscy5jcHAKPj4gaW5kZXggZDU0NWNlZS4uMWNhNGNlMyAxMDA2NDQKPj4gLS0t
IGEvbGlicGVfdXRpbHMvb3BfcGVfdXRpbHMuY3BwCj4+ICsrKyBiL2xpYnBlX3V0aWxzL29wX3Bl
X3V0aWxzLmNwcAo+PiBAQCAtNDE1LDcgKzQxNSw5IEBAIHN0YXRpYyB2b2lkIF9nZXRfZXZlbnRf
Y29kZShvcGVyZl9ldmVudF90ICogZXZlbnQsIG9wX2NwdSBjcHVfdHlwZSkKPj4gIMKgI2lmIGRl
ZmluZWQoX19pMzg2X18pIHx8IGRlZmluZWQoX194ODZfNjRfXykKPj4gIMKgwqDCoMKgIC8vIFNl
dHVwIEV2ZW50U2VsY3RbMTE6OF0gZmllbGQgZm9yIEFNRAo+PiAgwqDCoMKgwqAgY29uc3QgY2hh
ciAqIHZlbmRvcl9BTUQgPSAiQXV0aGVudGljQU1EIjsKPj4gLcKgwqDCoCBpZiAob3BfaXNfY3B1
X3ZlbmRvcigoY2hhciAqKXZlbmRvcl9BTUQpKSB7Cj4+ICvCoMKgwqAgY29uc3QgY2hhciAqIHZl
bmRvcl9IeWdvbiA9ICJIeWdvbkdlbnVpbmUiOwo+PiArwqDCoMKgIGlmIChvcF9pc19jcHVfdmVu
ZG9yKChjaGFyICopdmVuZG9yX0FNRCkgfHwKPj4gK8KgwqDCoMKgwqDCoMKgIG9wX2lzX2NwdV92
ZW5kb3IoKGNoYXIgKil2ZW5kb3JfSHlnb24pKSB7Cj4+ICDCoMKgwqDCoMKgwqDCoMKgIGNvbmZp
ZyA9IGJhc2VfY29kZSAmIDB4RjAwVUxMOwo+PiAgwqDCoMKgwqDCoMKgwqDCoCBjb25maWcgPSBj
b25maWcgPDwgMzI7Cj4+ICDCoMKgwqDCoCB9Cj4gCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCm9wcm9maWxlLWxpc3QgbWFpbGluZyBsaXN0Cm9wcm9m
aWxlLWxpc3RAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2Uu
bmV0L2xpc3RzL2xpc3RpbmZvL29wcm9maWxlLWxpc3QK
