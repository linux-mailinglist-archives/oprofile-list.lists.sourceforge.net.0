Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F0965A43
	for <lists+oprofile-list@lfdr.de>; Thu, 11 Jul 2019 17:20:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1hlasK-0000k0-8G; Thu, 11 Jul 2019 15:20:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cel@us.ibm.com>) id 1hlasI-0000jk-OM
 for oprofile-list@lists.sourceforge.net; Thu, 11 Jul 2019 15:20:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Content-Transfer-Encoding:Mime-Version:
 Content-Type:References:In-Reply-To:Date:To:From:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q027LLb4oNv3t7vysOwUWffru9zzJ0fT7FShX5N31jU=; b=ACoNrOZ2zYe+CUVTK4uaxwj65r
 sQNcKBX1eD8K3yfWW3MajjZ/Pc7XKR1urIQf36jLyEltRnY7idbnjvvDhcI9yzK21v92j5Nml2/+E
 O52twSqxsDB1/XwkabzIOqJ6WE2dJgTunj/+HwTgbfrPeYHLM7UJBDT8iY9wNH/kVE5U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Content-Transfer-Encoding:Mime-Version:Content-Type:References
 :In-Reply-To:Date:To:From:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Q027LLb4oNv3t7vysOwUWffru9zzJ0fT7FShX5N31jU=; b=EdxVvT+B7bBEVtrsiIh1yPvNLg
 rNdDv4UOEn/UCBiZZlLzw6M3PvQkqcXcuDh/SgoW/Wh/Oj/FChuqRIIaVOu2KpxI7Ye1LeOlsvAwS
 +jHA99Uj5byKT/DZ5OivdApZ3HU18/owGYzviTKoTGFTeEdXvPawEn2E89OIXPJHQdg4=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hlasG-00FIZN-CD
 for oprofile-list@lists.sourceforge.net; Thu, 11 Jul 2019 15:20:46 +0000
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6BF9Vm0091584
 for <oprofile-list@lists.sf.net>; Thu, 11 Jul 2019 11:20:38 -0400
Received: from e16.ny.us.ibm.com (e16.ny.us.ibm.com [129.33.205.206])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2tp7cms0yk-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <oprofile-list@lists.sf.net>; Thu, 11 Jul 2019 11:20:38 -0400
Received: from localhost
 by e16.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <oprofile-list@lists.sf.net> from <cel@us.ibm.com>;
 Thu, 11 Jul 2019 16:20:37 +0100
Received: from b01cxnp23033.gho.pok.ibm.com (9.57.198.28)
 by e16.ny.us.ibm.com (146.89.104.203) with IBM ESMTP SMTP Gateway: Authorized
 Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 11 Jul 2019 16:20:35 +0100
Received: from b01ledav006.gho.pok.ibm.com (b01ledav006.gho.pok.ibm.com
 [9.57.199.111])
 by b01cxnp23033.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x6BFKYlg49086872
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 11 Jul 2019 15:20:34 GMT
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 46B07AC065;
 Thu, 11 Jul 2019 15:20:34 +0000 (GMT)
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id E2107AC066;
 Thu, 11 Jul 2019 15:20:33 +0000 (GMT)
Received: from oc3304648336.ibm.com (unknown [9.85.136.221])
 by b01ledav006.gho.pok.ibm.com (Postfix) with ESMTP;
 Thu, 11 Jul 2019 15:20:33 +0000 (GMT)
Subject: Re: [PATCH] Fix setting of app_started in ocount
From: Carl Love <cel@us.ibm.com>
To: William Cohen <wcohen@users.sourceforge.net>, oprofile-list@lists.sf.net
Date: Thu, 11 Jul 2019 08:20:33 -0700
In-Reply-To: <1562780800.6423.22.camel@us.ibm.com>
References: <1562780800.6423.22.camel@us.ibm.com>
X-Mailer: Evolution 3.22.6 (3.22.6-14.el7) 
Mime-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19071115-0072-0000-0000-000004479BA2
X-IBM-SpamModules-Scores: 
X-IBM-SpamModules-Versions: BY=3.00011409; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000286; SDB=6.01230677; UDB=6.00648243; IPR=6.01011953; 
 MB=3.00027681; MTD=3.00000008; XFM=3.00000015; UTC=2019-07-11 15:20:36
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19071115-0073-0000-0000-00004CB7E02E
Message-Id: <1562858433.6423.26.camel@us.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-11_03:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1907110172
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hlasG-00FIZN-CD
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

V2lsbDoKCkkgb3BlbmVkIE9Qcm9maWxlIGJ1ZyAyOTAgZm9yIHRoaXMgaXNzdWUgc28gaXQgY2Fu
IGJlIHRyYWNrZWQuCgogICAgICAgICAgICAgICAgQ2FybCBMb3ZlCi0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCk9uIFdlZCwgMjAxOS0wNy0xMCBh
dCAxMDo0NiAtMDcwMCwgQ2FybCBMb3ZlIHdyb3RlOgo+IFdpbGw6Cj4gCj4gV2UgaGFkIGEgdXNl
ciByZXBvcnQgb3JwaGFuZWQgcHJvY2Vzc2VzIGxlZnQgYmVoaW5kIGJ5IG9jb3VudCB3aGVuCj4g
aXQgZmFpbGVkIHRvIHN0YXJ0IGNvcnJlY3RseS7CoMKgU3BlY2lmaWNhbGx5LCB0aGV5IG5vdGVk
IHRoZSBlcnJvcgo+IG1lc3NhZ2Ugd2FzOgo+IAo+IMKgIG9jb3VudCAuL3Rlc3Q2NAo+IMKgIHBl
cmZfZXZlbnRfb3BlbiBmYWlsZWQgd2l0aCBQZXJtaXNzaW9uIGRlbmllZAo+IMKgIENhdWdodCBy
dW50aW1lIGVycm9yIHdoaWxlIHNldHRpbmcgdXAgY291bnRlcnMKPiDCoCBJbnRlcm5hbCBFcnJv
ci7CoMKgUGVyZiBldmVudCBzZXR1cCBmYWlsZWQuCj4gwqAgRXJyb3IgcnVubmluZyBvY291bnQK
PiAKPiBJIHdhcyBhYmxlIHRvIHJlcHJvZHVjZSB0aGUgZXJyb3IgYnkgZm9yY2luZyB0aGUgb3Bf
cGVyZl9ldmVuX29wZW4oKQo+IHRvCj4gZmFpbCB3aXRoIHRoZSBmb2xsb3dpbmcgcGF0Y2guCj4g
Cj4gLS0tCj4gwqBwZV9jb3VudGluZy9vY291bnRfY291bnRlci5jcHAgfCAzICsrKwo+IMKgMSBm
aWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9wZV9jb3VudGlu
Zy9vY291bnRfY291bnRlci5jcHAKPiBiL3BlX2NvdW50aW5nL29jb3VudF9jb3VudGVyLmNwcAo+
IGluZGV4IDcxMmMyMjkuLjM5MjY0MjggMTAwNjQ0Cj4gLS0tIGEvcGVfY291bnRpbmcvb2NvdW50
X2NvdW50ZXIuY3BwCj4gKysrIGIvcGVfY291bnRpbmcvb2NvdW50X2NvdW50ZXIuY3BwCj4gQEAg
LTk4LDYgKzk4LDkgQEAgb2NvdW50X2NvdW50ZXI6On5vY291bnRfY291bnRlcigpIHsKPiDCoGlu
dCBvY291bnRfY291bnRlcjo6cGVyZl9ldmVudF9vcGVuKHBpZF90IF9waWQsIGludCBfY3B1KQo+
IMKgewo+IMKgCWZkID0gb3BfcGVyZl9ldmVudF9vcGVuKCZhdHRyLCBfcGlkLCBfY3B1LCAtMSwg
MCk7Cj4gK8KgwqDCoGZkID0gLTk5O8KgwqDCoC8vIGNhcmxsIGZvcmNlIGVycm9yCj4gK8KgwqDC
oGNlcnIgPDwgImNhcmxsLCBmb3JjZWQgZXJyb3JcbiI7Cj4gKwo+IMKgCWlmIChmZCA8IDApIHsK
PiDCoAkJaW50IHJldCA9IC0xOwo+IMKgCQljdmVyYiA8PCB2ZGVidWcgPDwgInBlcmZfZXZlbnRf
b3BlbiBmYWlsZWQ6ICIgPDwKPiBzdHJlcnJvcihlcnJubykgPDwgZW5kbDsKPiAtLcKgCj4gCj4g
VGhlIG9ycGhhbmVkIHByb2Nlc3Mgc2VlbXMgdG8gYmUgdGhlIHJlc3VsdCBvZiBhIGNvbW1pdCB0
aGF0IGNoYW5nZWQKPiB0aGUgb3JkZXIKPiBvZiBzdGFydGluZyB0aGUgYXBwbGljYXRpb24gYW5k
IHBlcmYgZXZlbnRzLsKgwqBUaGUgaXNzdWUgaXMgZGVzY3JpYmVkCj4gaW4gdGhlCj4gcGF0Y2gg
YmVsb3cgdGhhdCBmaXhlcyB0aGUgaXNzdWUuwqDCoFdvdWxkIHlvdSBwbGVhc2UgcmV2aWV3IHRo
ZSBwYXRjaAo+IGFuZCBzZWUgaWYKPiB5b3UgYWdyZWUgd2l0aCBteSBhbmFseXNpcyBvZiB0aGUg
aXNzdWUgYW5kIGlmIHRoaXMgcGF0Y2ggaXMgYQo+IGNvcnJlY3QgZml4LiDCoAo+IAo+IFRoYW5r
IHlvdS4KPiAKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoENhcmwgTG92
ZQo+IAo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KPiAtLS0KPiBbUEFUQ0hdIEZpeCBzZXR0aW5nIG9mIGFwcF9zdGFy
dGVkIGluIG9jb3VudAo+IAo+IEkgYmVsaWV2ZSB0aGUgZm9sbG93aW5nIGNvbW1pdCBpbnRyb2R1
Y2VkIGFuIGVycm9yIHRoYXQgY2F1c2VzCj4gb2NvdW50IHRvIGxlYXZlIG9ycGhhbmVkIHByb2Nl
c3NlcyBydW5uaW5nLgo+IAo+IFRoZSBjb21taXQKPiDCoCBjb21taXQgMjQ5ZmUwYTRiYjY5ZTVi
ZDJlOWVlMGEwNjY3ZDkyNWE4NmQ0MzM3Ywo+IMKgwqDCoMKgQXV0aG9yOiBXaWxsaWFtIENvaGVu
IDx3Y29oZW5AcmVkaGF0LmNvbT4KPiDCoMKgwqDCoERhdGU6wqDCoMKgVHVlIEF1ZyA5IDIyOjI1
OjUyIDIwMTYgLTA0MDAKPiAKPiDCoMKgwqDCoMKgwqDCoMKgT25seSBzdGFydCB0aGUgYXBwbGlj
YXRpb24gaWYgdGhlIHBlcmYgZXZlbnRzIHNldHVwIHdhcwo+IHN1Y2Nlc3NmdWwKPiAKPiBUaGUg
cGF0Y2ggY2hhbmdlcyB0aGUgb3JkZXIgb2Ygc3RhcnRpbmcgdGhlIGFwcGxpY2F0aW9uIGFuZAo+
IHBlcmZvcm1hbmNlCj4gZXZlbnRzLiBHaXZlbiB0aGlzIGNoYW5nZSB3ZSBoYXZlIGEgbmV3IGlz
c3VlLsKgwqBUaGUgaXNzdWUgaXMgdGhlCj4gcm91dGluZSBzdGFydF9jb3VudGluZygpIGNhbGxz
IGZvcmssIGNyZWF0aW5nIGFwcF9QSUQgcHJvY2Vzcy4gVGhlCj4gcGFyZW50Cj4gdGhlbiB0cmll
cyB0byBzZXR1cCB0aGUgcGVyZm9ybWFuY2UgZXZlbnRzLCB0aGVuIGlmIHRoZSBwZXJmb3JtYW5j
ZQo+IGV2ZW50cwo+IHdlcmUgc2V0dXAgY29ycmVjdGx5LCBhcHBfUElEIGlzIHRoZW4gdG9sZCB0
byBzdGFydCBiZWZvcmUKPiBleGl0aW5nLsKgwqBJZiB0aGUKPiBwZXJmb3JtYW5jZSBjb3VudGVy
IHNldHVwIGZhaWxzLCB0aGUgYXBwX1BJRCBpcyBsZWZ0IHJ1bm5pbmcuwqDCoFRoZQo+IGFwcF9Q
SUQKPiBpcyBuZXZlciB0b2xkIHRvIHN0YXJ0IHRoZSB3b3JrbG9hZCwgd2hpY2ggaXMgY29ycmVj
dCwgYnV0IHdlIGRvbid0Cj4gcmVjb3JkCj4gdGhlIGZhY3QgdGhhdCBhcHBfUElEIGlzIHJ1bm5p
bmcuwqDCoFRoZSBlcnJvciBwYXRoIHRoZW4gZmFpbHMgdG8ga2lsbAo+IGFwcF9QSUQKPiBpbiBy
b3V0aW5lIG1haW4oKSwgaW4gZmlsZSBvcHJvZmlsZS1naXQvcGVfY291bnRpbmcsIGF0IGFib3V0
IGxpbmUKPiA5MDkKPiBiZWNhdXNlIHRoZSBpZiBzdGF0ZW1lbnQ6Cj4gCj4gwqBpZiAoc3RhcnRB
cHAgJiYgYXBwX3N0YXJ0ZWQgJiYgKHJ1bl9yZXN1bHQgIT0gQVBQX0FCTk9STUFMX0VORCkpIHsK
PiAKPiBpcyBmYWxzZSBiZWNhdXNlIGFwcF9zdGFydGVkIGlzIEZhbHNlLgo+IAo+IFRoZSBmaXgs
IEkgYmVsaWV2ZSwgaXMgdG8gc2V0IGFwcF9zdGFydGVkIHRvIFRydWUgaW4gdGhlIHBhcmVudCBj
b2RlCj4gaWYKPiB0aGUgZm9yayB3YXMgc3VjY2Vzc2Z1bC7CoMKgV2l0aCB0aGlzIGZpeCwgdGhl
cmUgaXMgbm8gb3JwaGFuIHByb2Nlc3Nlcwo+IGxlZnQgYWZ0ZXIgb2NvdW50IGV4aXRzLsKgwqBD
dXJyZW50bHksIGFwcF9zdGFydGVkIGlzIG9ubHkgc2V0IHRvIFRydWUKPiBpZgo+IHRoZSBwZXJm
b3JtYW5jZSBjb3VudGVyIGV2ZW50cyB3ZXJlIHN1Y2Nlc3NmdWxseSBzZXR1cC4KPiAtLS0KPiDC
oHBlX2NvdW50aW5nL29jb3VudC5jcHAgfCA2ICsrKysrLQo+IMKgMSBmaWxlIGNoYW5nZWQsIDUg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9wZV9jb3VudGlu
Zy9vY291bnQuY3BwIGIvcGVfY291bnRpbmcvb2NvdW50LmNwcAo+IGluZGV4IDc3MTc3MTcuLjNl
NTkxMjAgMTAwNjQ0Cj4gLS0tIGEvcGVfY291bnRpbmcvb2NvdW50LmNwcAo+ICsrKyBiL3BlX2Nv
dW50aW5nL29jb3VudC5jcHAKPiBAQCAtMjQyLDYgKzI0MiwxMSBAQCBib29sIHN0YXJ0X2NvdW50
aW5nKHZvaWQpCj4gwqAKPiDCoAkvLyBwYXJlbnQKPiDCoAlpbnQgc3RhcnR1cDsKPiArCj4gKwlp
ZiAoIGFwcF9QSUQgIT0gLTEpCj4gKwkJLy8gYXBwX1BJRCBjaGlsZCBwcm9jZXNzIGNyZWF0ZWQg
c3VjY2Vzc2Z1bGx5Cj4gKwkJYXBwX3N0YXJ0ZWQgPSB0cnVlOwo+ICsKPiDCoAlpZiAoc3RhcnRB
cHApIHsKPiDCoAkJaWYgKHJlYWQoYXBwX3JlYWR5X3BpcGVbMF0sICZzdGFydHVwLAo+IHNpemVv
ZihzdGFydHVwKSkgPT0gLTEpIHsKPiDCoAkJCXBlcnJvcigiSW50ZXJuYWwgZXJyb3Igb24gYXBw
X3JlYWR5X3BpcGUiKTsKPiBAQCAtMjk3LDcgKzMwMiw2IEBAIGJvb2wgc3RhcnRfY291bnRpbmco
dm9pZCkKPiDCoAkJCXBlcnJvcigiSW50ZXJuYWwgZXJyb3Igb24gc3RhcnRfYXBwX3BpcGUiKTsK
PiDCoAkJCXJldHVybiBmYWxzZTsKPiDCoAkJfQo+IC0JCWFwcF9zdGFydGVkID0gdHJ1ZTsKPiDC
oAl9Cj4gwqAKPiDCoAlyZXR1cm4gcmV0OwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpvcHJvZmlsZS1saXN0IG1haWxpbmcgbGlzdApvcHJvZmlsZS1s
aXN0QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby9vcHJvZmlsZS1saXN0Cg==
