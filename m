Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B8264C7B
	for <lists+oprofile-list@lfdr.de>; Wed, 10 Jul 2019 21:02:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1hlHr8-0000NJ-GH; Wed, 10 Jul 2019 19:02:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cel@us.ibm.com>) id 1hlHr6-0000N0-Cw
 for oprofile-list@lists.sourceforge.net; Wed, 10 Jul 2019 19:02:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Mime-Version:Content-Type
 :Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oThjVno3hig9mUBKyojSU3cL/FHuP4+NnjLlxTSY0nw=; b=bflSHe7t39D0RahD8ZK9ssbSCe
 8ObPNLFgrLfEiEr36eqGNmKniORRM0V3VTxaC67A9//Zh69ENYeeSfE4bNhBWcm+6oXx1dxj8vd7U
 /dyuX4zQogWpxd8Lbmmd7cZplM/kg5Ta5DCSFU0l26heAYkfBurnheeqTf55B3ViqEH8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Mime-Version:Content-Type:Date:Cc:To:From:
 Subject:Message-ID:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oThjVno3hig9mUBKyojSU3cL/FHuP4+NnjLlxTSY0nw=; b=F
 u6GTDLBBlreo7gQionEbv8kSYnki8Rjgo+gpHIbeIHw2xRWIasC5v56qMFB8ElDy8Eian1sbL7SbD
 RK8ykXmijJduB8s07WpOkfeePAUZFP5konipvntMH4JuI1TtIC0no5NZndSsBYcSVPr4deIy5JtM5
 R5KFX3bWnvY4lTg4=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hlHr3-00EsA1-Vh; Wed, 10 Jul 2019 19:02:16 +0000
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6AHfuHM038213; Wed, 10 Jul 2019 13:46:42 -0400
Received: from ppma01wdc.us.ibm.com (fd.55.37a9.ip4.static.sl-reverse.com
 [169.55.85.253])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2tnjsun2ef-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 10 Jul 2019 13:46:42 -0400
Received: from pps.filterd (ppma01wdc.us.ibm.com [127.0.0.1])
 by ppma01wdc.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id x6AHj1Ak009833;
 Wed, 10 Jul 2019 17:46:42 GMT
Received: from b01cxnp22034.gho.pok.ibm.com (b01cxnp22034.gho.pok.ibm.com
 [9.57.198.24]) by ppma01wdc.us.ibm.com with ESMTP id 2tjk96nff7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 10 Jul 2019 17:46:42 +0000
Received: from b01ledav001.gho.pok.ibm.com (b01ledav001.gho.pok.ibm.com
 [9.57.199.106])
 by b01cxnp22034.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x6AHkffk45744492
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 10 Jul 2019 17:46:41 GMT
Received: from b01ledav001.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id A0A8028059;
 Wed, 10 Jul 2019 17:46:41 +0000 (GMT)
Received: from b01ledav001.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 2FB3E2805E;
 Wed, 10 Jul 2019 17:46:41 +0000 (GMT)
Received: from oc3304648336.ibm.com (unknown [9.85.136.221])
 by b01ledav001.gho.pok.ibm.com (Postfix) with ESMTP;
 Wed, 10 Jul 2019 17:46:41 +0000 (GMT)
Message-ID: <1562780800.6423.22.camel@us.ibm.com>
Subject: [PATCH] Fix setting of app_started in ocount
From: Carl Love <cel@us.ibm.com>
To: William Cohen <wcohen@users.sourceforge.net>, oprofile-list@lists.sf.net
Date: Wed, 10 Jul 2019 10:46:40 -0700
X-Mailer: Evolution 3.22.6 (3.22.6-14.el7) 
Mime-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-10_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1907100200
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hlHr3-00EsA1-Vh
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
Cc: cel@us.ibm.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: oprofile-list-bounces@lists.sourceforge.net

CldpbGw6CgpXZSBoYWQgYSB1c2VyIHJlcG9ydCBvcnBoYW5lZCBwcm9jZXNzZXMgbGVmdCBiZWhp
bmQgYnkgb2NvdW50IHdoZW4KaXQgZmFpbGVkIHRvIHN0YXJ0IGNvcnJlY3RseS4gIFNwZWNpZmlj
YWxseSwgdGhleSBub3RlZCB0aGUgZXJyb3IKbWVzc2FnZSB3YXM6CgogIG9jb3VudCAuL3Rlc3Q2
NAogIHBlcmZfZXZlbnRfb3BlbiBmYWlsZWQgd2l0aCBQZXJtaXNzaW9uIGRlbmllZAogIENhdWdo
dCBydW50aW1lIGVycm9yIHdoaWxlIHNldHRpbmcgdXAgY291bnRlcnMKICBJbnRlcm5hbCBFcnJv
ci4gIFBlcmYgZXZlbnQgc2V0dXAgZmFpbGVkLgogIEVycm9yIHJ1bm5pbmcgb2NvdW50CgpJIHdh
cyBhYmxlIHRvIHJlcHJvZHVjZSB0aGUgZXJyb3IgYnkgZm9yY2luZyB0aGUgb3BfcGVyZl9ldmVu
X29wZW4oKSB0bwpmYWlsIHdpdGggdGhlIGZvbGxvd2luZyBwYXRjaC4KCi0tLQogcGVfY291bnRp
bmcvb2NvdW50X2NvdW50ZXIuY3BwIHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9wZV9jb3VudGluZy9vY291bnRfY291bnRlci5jcHAgYi9wZV9j
b3VudGluZy9vY291bnRfY291bnRlci5jcHAKaW5kZXggNzEyYzIyOS4uMzkyNjQyOCAxMDA2NDQK
LS0tIGEvcGVfY291bnRpbmcvb2NvdW50X2NvdW50ZXIuY3BwCisrKyBiL3BlX2NvdW50aW5nL29j
b3VudF9jb3VudGVyLmNwcApAQCAtOTgsNiArOTgsOSBAQCBvY291bnRfY291bnRlcjo6fm9jb3Vu
dF9jb3VudGVyKCkgewogaW50IG9jb3VudF9jb3VudGVyOjpwZXJmX2V2ZW50X29wZW4ocGlkX3Qg
X3BpZCwgaW50IF9jcHUpCiB7CiAJZmQgPSBvcF9wZXJmX2V2ZW50X29wZW4oJmF0dHIsIF9waWQs
IF9jcHUsIC0xLCAwKTsKKyAgIGZkID0gLTk5OyAgIC8vIGNhcmxsIGZvcmNlIGVycm9yCisgICBj
ZXJyIDw8ICJjYXJsbCwgZm9yY2VkIGVycm9yXG4iOworCiAJaWYgKGZkIDwgMCkgewogCQlpbnQg
cmV0ID0gLTE7CiAJCWN2ZXJiIDw8IHZkZWJ1ZyA8PCAicGVyZl9ldmVudF9vcGVuIGZhaWxlZDog
IiA8PCBzdHJlcnJvcihlcnJubykgPDwgZW5kbDsKLS0gCgpUaGUgb3JwaGFuZWQgcHJvY2VzcyBz
ZWVtcyB0byBiZSB0aGUgcmVzdWx0IG9mIGEgY29tbWl0IHRoYXQgY2hhbmdlZCB0aGUgb3JkZXIK
b2Ygc3RhcnRpbmcgdGhlIGFwcGxpY2F0aW9uIGFuZCBwZXJmIGV2ZW50cy4gIFRoZSBpc3N1ZSBp
cyBkZXNjcmliZWQgaW4gdGhlCnBhdGNoIGJlbG93IHRoYXQgZml4ZXMgdGhlIGlzc3VlLiAgV291
bGQgeW91IHBsZWFzZSByZXZpZXcgdGhlIHBhdGNoIGFuZCBzZWUgaWYKeW91IGFncmVlIHdpdGgg
bXkgYW5hbHlzaXMgb2YgdGhlIGlzc3VlIGFuZCBpZiB0aGlzIHBhdGNoIGlzIGEgY29ycmVjdCBm
aXguIMKgCgpUaGFuayB5b3UuCgogICAgICAgICAgICAgICAgICAgQ2FybCBMb3ZlCgotLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCltQQVRDSF0gRml4IHNldHRpbmcgb2YgYXBwX3N0YXJ0ZWQgaW4gb2NvdW50CgpJIGJl
bGlldmUgdGhlIGZvbGxvd2luZyBjb21taXQgaW50cm9kdWNlZCBhbiBlcnJvciB0aGF0IGNhdXNl
cwpvY291bnQgdG8gbGVhdmUgb3JwaGFuZWQgcHJvY2Vzc2VzIHJ1bm5pbmcuCgpUaGUgY29tbWl0
CiAgY29tbWl0IDI0OWZlMGE0YmI2OWU1YmQyZTllZTBhMDY2N2Q5MjVhODZkNDMzN2MKICAgIEF1
dGhvcjogV2lsbGlhbSBDb2hlbiA8d2NvaGVuQHJlZGhhdC5jb20+CiAgICBEYXRlOiAgIFR1ZSBB
dWcgOSAyMjoyNTo1MiAyMDE2IC0wNDAwCgogICAgICAgIE9ubHkgc3RhcnQgdGhlIGFwcGxpY2F0
aW9uIGlmIHRoZSBwZXJmIGV2ZW50cyBzZXR1cCB3YXMgc3VjY2Vzc2Z1bAoKVGhlIHBhdGNoIGNo
YW5nZXMgdGhlIG9yZGVyIG9mIHN0YXJ0aW5nIHRoZSBhcHBsaWNhdGlvbiBhbmQgcGVyZm9ybWFu
Y2UKZXZlbnRzLiBHaXZlbiB0aGlzIGNoYW5nZSB3ZSBoYXZlIGEgbmV3IGlzc3VlLiAgVGhlIGlz
c3VlIGlzIHRoZQpyb3V0aW5lIHN0YXJ0X2NvdW50aW5nKCkgY2FsbHMgZm9yaywgY3JlYXRpbmcg
YXBwX1BJRCBwcm9jZXNzLiBUaGUgcGFyZW50CnRoZW4gdHJpZXMgdG8gc2V0dXAgdGhlIHBlcmZv
cm1hbmNlIGV2ZW50cywgdGhlbiBpZiB0aGUgcGVyZm9ybWFuY2UgZXZlbnRzCndlcmUgc2V0dXAg
Y29ycmVjdGx5LCBhcHBfUElEIGlzIHRoZW4gdG9sZCB0byBzdGFydCBiZWZvcmUgZXhpdGluZy4g
IElmIHRoZQpwZXJmb3JtYW5jZSBjb3VudGVyIHNldHVwIGZhaWxzLCB0aGUgYXBwX1BJRCBpcyBs
ZWZ0IHJ1bm5pbmcuICBUaGUgYXBwX1BJRAppcyBuZXZlciB0b2xkIHRvIHN0YXJ0IHRoZSB3b3Jr
bG9hZCwgd2hpY2ggaXMgY29ycmVjdCwgYnV0IHdlIGRvbid0IHJlY29yZAp0aGUgZmFjdCB0aGF0
IGFwcF9QSUQgaXMgcnVubmluZy4gIFRoZSBlcnJvciBwYXRoIHRoZW4gZmFpbHMgdG8ga2lsbCBh
cHBfUElECmluIHJvdXRpbmUgbWFpbigpLCBpbiBmaWxlIG9wcm9maWxlLWdpdC9wZV9jb3VudGlu
ZywgYXQgYWJvdXQgbGluZSA5MDkKYmVjYXVzZSB0aGUgaWYgc3RhdGVtZW50OgoKIGlmIChzdGFy
dEFwcCAmJiBhcHBfc3RhcnRlZCAmJiAocnVuX3Jlc3VsdCAhPSBBUFBfQUJOT1JNQUxfRU5EKSkg
ewoKaXMgZmFsc2UgYmVjYXVzZSBhcHBfc3RhcnRlZCBpcyBGYWxzZS4KClRoZSBmaXgsIEkgYmVs
aWV2ZSwgaXMgdG8gc2V0IGFwcF9zdGFydGVkIHRvIFRydWUgaW4gdGhlIHBhcmVudCBjb2RlIGlm
CnRoZSBmb3JrIHdhcyBzdWNjZXNzZnVsLiAgV2l0aCB0aGlzIGZpeCwgdGhlcmUgaXMgbm8gb3Jw
aGFuIHByb2Nlc3NlcwpsZWZ0IGFmdGVyIG9jb3VudCBleGl0cy4gIEN1cnJlbnRseSwgYXBwX3N0
YXJ0ZWQgaXMgb25seSBzZXQgdG8gVHJ1ZSBpZgp0aGUgcGVyZm9ybWFuY2UgY291bnRlciBldmVu
dHMgd2VyZSBzdWNjZXNzZnVsbHkgc2V0dXAuCi0tLQogcGVfY291bnRpbmcvb2NvdW50LmNwcCB8
IDYgKysrKystCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvcGVfY291bnRpbmcvb2NvdW50LmNwcCBiL3BlX2NvdW50aW5nL29jb3Vu
dC5jcHAKaW5kZXggNzcxNzcxNy4uM2U1OTEyMCAxMDA2NDQKLS0tIGEvcGVfY291bnRpbmcvb2Nv
dW50LmNwcAorKysgYi9wZV9jb3VudGluZy9vY291bnQuY3BwCkBAIC0yNDIsNiArMjQyLDExIEBA
IGJvb2wgc3RhcnRfY291bnRpbmcodm9pZCkKIAogCS8vIHBhcmVudAogCWludCBzdGFydHVwOwor
CisJaWYgKCBhcHBfUElEICE9IC0xKQorCQkvLyBhcHBfUElEIGNoaWxkIHByb2Nlc3MgY3JlYXRl
ZCBzdWNjZXNzZnVsbHkKKwkJYXBwX3N0YXJ0ZWQgPSB0cnVlOworCiAJaWYgKHN0YXJ0QXBwKSB7
CiAJCWlmIChyZWFkKGFwcF9yZWFkeV9waXBlWzBdLCAmc3RhcnR1cCwgc2l6ZW9mKHN0YXJ0dXAp
KSA9PSAtMSkgewogCQkJcGVycm9yKCJJbnRlcm5hbCBlcnJvciBvbiBhcHBfcmVhZHlfcGlwZSIp
OwpAQCAtMjk3LDcgKzMwMiw2IEBAIGJvb2wgc3RhcnRfY291bnRpbmcodm9pZCkKIAkJCXBlcnJv
cigiSW50ZXJuYWwgZXJyb3Igb24gc3RhcnRfYXBwX3BpcGUiKTsKIAkJCXJldHVybiBmYWxzZTsK
IAkJfQotCQlhcHBfc3RhcnRlZCA9IHRydWU7CiAJfQogCiAJcmV0dXJuIHJldDsKLS0gCjEuOC4z
LjEKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3By
b2ZpbGUtbGlzdCBtYWlsaW5nIGxpc3QKb3Byb2ZpbGUtbGlzdEBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3Byb2ZpbGUt
bGlzdAo=
