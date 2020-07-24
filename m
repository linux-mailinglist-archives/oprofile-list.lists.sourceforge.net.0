Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B63822DFC8
	for <lists+oprofile-list@lfdr.de>; Sun, 26 Jul 2020 17:00:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jzi8f-0004br-6t; Sun, 26 Jul 2020 15:00:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <johnlumby@hotmail.com>) id 1jyzv6-00047g-As
 for oprofile-list@lists.sourceforge.net; Fri, 24 Jul 2020 15:47:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:Cc:From:References:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m5C1mNKRz//R4POyWGHRdzr1okHyM13djI4MXXgQ7rU=; b=OtRHiVyFIWomMf+eufs6W2sLpF
 SihK72EP2b6Abgsgmorbkufzks/M63vwQeIki92U0+eUFTb4UqCyQvglQCw5H/ZX3Zh6e4vZtWBBx
 0fOUbqfkJjXEj9k/1cbRnJFhXWz9jtjqXwQpaJMOHsGvk3JY0PfzfWcuCHyYTDO4uJZA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:Cc:From:References:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=m5C1mNKRz//R4POyWGHRdzr1okHyM13djI4MXXgQ7rU=; b=D8gjjfh3fObeQsyLpKFxQRGbNS
 GzhuHECwquSIGS6vzQXXCaWXUi9qHlxUZ+rHdo9a6pvmcasfUqUla21wOtvKxeEtook5u50xTycjL
 dNLlKFyDh7Qkf02NRvQ6WizmsKwuFr4w2k0pSuxwGPQeew8bwBoUPaHqLfgkCyVLiAkU=;
Received: from mail-bn7nam10olkn2020.outbound.protection.outlook.com
 ([40.92.40.20] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jyzv1-001XHD-Me
 for oprofile-list@lists.sourceforge.net; Fri, 24 Jul 2020 15:47:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EE5AOBz9fpqeFAnqAvnBNPmGYrTN/S1bRN3ErBqW+Kh86wkMoihVMhwrcpVp0O3mverB7OYn3S9hL91WsFfej7irDcUQugI1IxLO2/mSOlyT8Gy6/521vAZ4byvzOK5+mcBU9Ox1xUF4e7oxYRp3QOjOsrZfe8W4vU4EYvx2OfYY6uzyvBC4K8l+WVUa7XcFjyrw84udLq8o6GprReSkqbYyfL3O/CnxDSEOC15U7nqXpk1w6VkAFqXmZGGEU9+oLp6veNJ9SmgdRdUZCfznfTJPMQndDjKw63Ld4Wop5WVlvU1Lbktwa0fdbGfdakq96NkpHmIaPOg8FK3ziKHu+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m5C1mNKRz//R4POyWGHRdzr1okHyM13djI4MXXgQ7rU=;
 b=SOJIBeR9RtP7rsmMoVIkfl6a/sLJJmTJKJOJQZybC3/BYN4Zc7TDepgTKXVNxeqkvKp4acwiO2JQnDqQQJAcudv5ajBeCYo6gFI/1cy5yr9W4g4FhaMQk4byooyIiOcmuWUXz9uKrUmZDwqoOBkGRjoQ1ROHeF9H7NiKBFMmYgumB5EHytb5BMhp11H2rwug1ZXAbFc2PXwbZ6gVI559oM+1vZF3lkDcRnah1vSMKm1XyZ2ZwWvomheQAkiwaFmBCO/dld0raNG3Nr94241g1iwSXYX8r1Er6MN+A1ZQ4FppcYbUfBHgP6f9aUWA3ed6wpBtZWB5IMlOta1sd/+Swg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m5C1mNKRz//R4POyWGHRdzr1okHyM13djI4MXXgQ7rU=;
 b=eWIOqNgJpXaX6u1h3inznn1ohieIYe9rPqBgYrq7XQqJTv8DaEzYahQkumabN8K257ngVOWHf8e3vZD6m/DiCTpdNjXu0fdgPbtEMVsLNCs7xB40JSksEf6A1+Mw6rCGBN2Ytem4MDmGLUmuhaKA+TyjNpECpgAaQKEz2hbDBKPpApoh4wIOhor+KXyoL7mQ09fjIaiTCKGYVilysdai1LCz6CIiLmX0G7f6dQhqa6JFLomGnfNN2Zt1aM3qZ24F+ermRTh9epJBqTHf56JzIv3bVZUkLenBJkEQzFrjQVJofPSfN3NVG1vIoafMSOr062uHC2CAzgZEpkFiMs6j9w==
Received: from BN7NAM10FT017.eop-nam10.prod.protection.outlook.com
 (2a01:111:e400:7e8f::4c) by
 BN7NAM10HT194.eop-nam10.prod.protection.outlook.com (2a01:111:e400:7e8f::286)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.10; Fri, 24 Jul
 2020 15:47:25 +0000
Received: from DM6PR06MB5562.namprd06.prod.outlook.com
 (2a01:111:e400:7e8f::49) by BN7NAM10FT017.mail.protection.outlook.com
 (2a01:111:e400:7e8f::62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.10 via Frontend
 Transport; Fri, 24 Jul 2020 15:47:24 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:ACC4C23B082B3CE83F222C6703252D4216CCA358B5A5D97A3DAE16FCD643A6E0;
 UpperCasedChecksum:375023EB5950F2E9AB728E56E030C7696385236DA2493010C21B5ABA021A09B3;
 SizeAsReceived:8929; Count:49
Received: from DM6PR06MB5562.namprd06.prod.outlook.com
 ([fe80::8d37:b8a9:bb0:624d]) by DM6PR06MB5562.namprd06.prod.outlook.com
 ([fe80::8d37:b8a9:bb0:624d%3]) with mapi id 15.20.3216.025; Fri, 24 Jul 2020
 15:47:24 +0000
Subject: Re: samples lost due to no permanent mapping and no file mapping
To: oprofile-list@lists.sourceforge.net
References: <DM6PR06MB5562A262A03E919CEFBCA3C1A3780@DM6PR06MB5562.namprd06.prod.outlook.com>
 <2ae5d919-c1b6-556a-803c-dd269ce6855a@redhat.com>
 <DM6PR06MB55625E86C64B60DCEF775BA6A3780@DM6PR06MB5562.namprd06.prod.outlook.com>
From: J Lumby <johnlumby@hotmail.com>
Message-ID: <DM6PR06MB5562226C0020B732B8447FA6A3770@DM6PR06MB5562.namprd06.prod.outlook.com>
Date: Fri, 24 Jul 2020 11:47:51 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
In-Reply-To: <DM6PR06MB55625E86C64B60DCEF775BA6A3780@DM6PR06MB5562.namprd06.prod.outlook.com>
Content-Language: en-US
X-ClientProxiedBy: YT1PR01CA0071.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2d::10) To DM6PR06MB5562.namprd06.prod.outlook.com
 (2603:10b6:5:3e::12)
X-Microsoft-Original-Message-ID: <013d7f98-924e-3cf8-0962-f706a1a4eb50@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from archstar.localdomain (69.165.169.141) by
 YT1PR01CA0071.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:2d::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3216.20 via Frontend Transport; Fri, 24 Jul 2020 15:47:22 +0000
X-Microsoft-Original-Message-ID: <013d7f98-924e-3cf8-0962-f706a1a4eb50@hotmail.com>
X-TMN: [e2d8PYEkmtaX03xqf4KGf1laXHyYjOcA]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 49
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: ccc2dbb4-a517-4532-7703-08d82fe8db49
X-MS-TrafficTypeDiagnostic: BN7NAM10HT194:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WbzH25rDxzE6BLfKsZkX2RAfAt28xPfkgX6Z9E2SDpPkSYjG5q5wTJRv1dAo2x+yLokfdpllwJTo8+EYPb7FwXjKCAjOR15pdaJzxcw6pHlpzlf0ck8xK9VnjOggkLKBYzQekCZok5nuIA25ASkzWGrSqh3g9Al5VdPfOOq5SzpqAIPD8EncBMpNEn9ox/Nw4pIyNXVE5+OVl8+NNeOBZA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR06MB5562.namprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: 0B7E4voXMhNNFQRtAHFgp88xucmQh24PFJXjcr0Mwm3Eu6bGh05DiCzE7h8JdZ2OfCa4FAPKeo4yoMHKhVtpeBB+wavjuS5Hup9nWc9Oua1huXoHh7h9oXXVEVtcP5gwBS41kI+cubo6XtBi9RX7tQ==
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ccc2dbb4-a517-4532-7703-08d82fe8db49
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2020 15:47:24.7038 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: BN7NAM10FT017.eop-nam10.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7NAM10HT194
X-Spam-Score: 2.5 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (johnlumby[at]hotmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.92.40.20 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.40.20 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.2 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address, but no 'Received:'
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 NICE_REPLY_A           Looks like a legit reply (A)
 1.6 FORGED_MUA_MOZILLA     Forged mail pretending to be from Mozilla
 0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jyzv1-001XHD-Me
X-Mailman-Approved-At: Sun, 26 Jul 2020 15:00:30 +0000
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
Cc: wcohen@redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: oprofile-list-bounces@lists.sourceforge.net

T24gNy8yMS8yMCA1OjQ3IFBNLCBKIEx1bWJ5IHdyb3RlOgo+Cj4gT24gNy8yMS8yMCA5OjQ4IEFN
LCBXaWxsaWFtIENvaGVuIHdyb3RlOgo+Pgo+PiBDb3VsZCB5b3UgZ2l2ZSB0aGF0IG5ldyByZWxl
YXNlIG9mIG9wcm9maWxlIGEgdHJ5Pwo+Pgo+PiAtV2lsbAo+Cj4KPiBJIHNhdyAxLjQuMCBhdmFp
bGFibGUgYWxtb3N0IGltbWVkaWF0ZWx5IGFmdGVyIEkgcG9zdGVkIHRoYXQuIEkndmUgbm93IAo+
IHRyaWVkIHRoZSBzYW1lIHJ1biBvbiAxLjQuMCAoY29tcGlsZWQgb24gdGhlIHRhcmdldCBtYWNo
aW5lIGp1c3QgdG8gYmUgCj4gc3VyZSBpdCBjb21waWxlcyB3aXRoIHRoZSBzYW1lIGJmZCBoZWFk
ZXJzIGFuZCBsaWJzKSBhbmQgdGhlcmUgYXJlIAo+IG1peGVkIHJlc3VsdHMuCj4KPiBJdCBpcyBz
dGlsbCBsb3NpbmcgODAlIG9mIGFsbCB1c2Vyc3BhY2UgZXZlbnRzIDrCoCBzZWUgYmVsb3c7Cj4K
PgpJIHR1cm5lZCBvbsKgIC0tdmVyYm9zZT0iZGVidWcsY29udmVydCIgYW5kIGZyb20gdGhhdCwg
ZGlzY292ZXJlZCB0aGUgCmV4cGxhbmF0aW9uIGZvciB0aGUgdmVyeSBoaWdoIGxvc3MuCgpNeSB3
b3JrbG9hZCB3YXMgZm9ya2luZyBhIGxhcmdlIG51bWJlciBvZiBwcm9jZXNzZXMgaW4gc2VxdWVu
Y2UsIGVhY2ggb2YgCndoaWNoIGRpZCBhIGNlcnRhaW4gYW1vdW50IG9mIHdvcmsgKHR5cGljYWxs
eSBhcm91bmQgNSBzZWNvbmRzLXdvcnRoIG9uIAphIHNpbmdsZSBDUFUpIGFuZCB0aGVuIGV4aXRl
ZC7CoMKgwqDCoCBJIGd1ZXNzIG9wZXJmJ3MgaGFuZGxpbmcgb2YgdGhlIAptYXBwaW5nIGV2ZW50
cyB0YWtlcyBzb21ldGhpbmcgb2YgdGhlIHNhbWUgb3JkZXIgb2YgdGltZSB0byB1bmRlcnN0YW5k
IAplYWNoIHByb2Nlc3MswqAgYnkgd2hpY2ggdGltZSBpdCBoYXMgZ29uZS4KCkkgY2hhbmdlZCB0
aGUgd29ya2xvYWQgdG8gZG8gYWxsIHRoZSB3b3JrIGluIGEgc2luZ2xlIGNvbnRpbnVvdXMgcHJv
Y2VzcyAKYW5kIG5vdyBpdCB3b3JrcyB3ZWxsIDoKClByb2ZpbGluZyBzdGFydGVkIGF0IEZyaSBK
dWwgMjQgMTE6MTU6NDEgMjAyMApQcm9maWxpbmcgc3RvcHBlZCBhdCBGcmkgSnVsIDI0IDExOjE3
OjA3IDIwMjAKCi0tIE9Qcm9maWxlL29wZXJmIFN0YXRpc3RpY3MgLS0KTnIuIG5vbi1iYWNrdHJh
Y2Ugc2FtcGxlczogMTI3OTEKTnIuIGtlcm5lbCBzYW1wbGVzOiAyMjQ4Ck5yLiB1c2VyIHNwYWNl
IHNhbXBsZXM6IDEwNTQzCk5yLiBzYW1wbGVzIGxvc3QgZHVlIHRvIHNhbXBsZSBhZGRyZXNzIG5v
dCBpbiBleHBlY3RlZCByYW5nZSBmb3IgZG9tYWluOiAwCk5yLiBsb3N0IGtlcm5lbCBzYW1wbGVz
OiAwCk5yLiBzYW1wbGVzIGxvc3QgZHVlIHRvIHNhbXBsZSBmaWxlIG9wZW4gZmFpbHVyZTogMApO
ci4gc2FtcGxlcyBsb3N0IGR1ZSB0byBubyBwZXJtYW5lbnQgbWFwcGluZzogMzQKTnIuIHVzZXIg
Y29udGV4dCBrZXJuZWwgc2FtcGxlcyBsb3N0IGR1ZSB0byBubyBhcHAgaW5mbyBhdmFpbGFibGU6
IDg5Ck5yLiB1c2VyIHNhbXBsZXMgbG9zdCBkdWUgdG8gbm8gYXBwIGluZm8gYXZhaWxhYmxlOiAw
Ck5yLiBiYWNrdHJhY2VzIHNraXBwZWQgZHVlIHRvIG5vIGZpbGUgbWFwcGluZzogMzQKTnIuIGh5
cGVydmlzb3Igc2FtcGxlcyBkcm9wcGVkIGR1ZSB0byBhZGRyZXNzIG91dC1vZi1yYW5nZTogMApO
ci4gc2FtcGxlcyBsb3N0IHJlcG9ydGVkIGJ5IHBlcmZfZXZlbnRzIGtlcm5lbDogMAoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcHJvZmlsZS1saXN0
IG1haWxpbmcgbGlzdApvcHJvZmlsZS1saXN0QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczov
L2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcHJvZmlsZS1saXN0Cg==
