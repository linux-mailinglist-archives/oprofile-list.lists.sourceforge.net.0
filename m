Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3192B228CCE
	for <lists+oprofile-list@lfdr.de>; Wed, 22 Jul 2020 01:45:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jy1xG-0001g5-Hv; Tue, 21 Jul 2020 23:45:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <johnlumby@hotmail.com>) id 1jy06d-0004nv-9Z
 for oprofile-list@lists.sourceforge.net; Tue, 21 Jul 2020 21:47:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=otUaWBPU1z9SpXWHACXkJpWd7yhmgvbV3n8rJgrPMIU=; b=kATwexGzjAQS6Z964wRVk6CmAl
 +PTyYqlcRkg8pSKk8yyuCPKojtYJr9G76rGCOSwCZ27FMCENxknx63EA07GIKgF7lXZEoYKjxzJ4r
 6NSAoC45VbvBlNgoKqJ1+XoQ19kUYu5g2QiuyqeyVlBs5bPRWAFvcc3mdWT014gS1Urw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=otUaWBPU1z9SpXWHACXkJpWd7yhmgvbV3n8rJgrPMIU=; b=ASklmCI4jiW8olS5X1CbfXZMBZ
 z6fhP+cS4T7A7Xq3OvD3G2Bpx9SQ9Jt5FGHOjOTTahYTt9L8N0GagK0fvmHZa3i5Txn53mlKafptf
 dySKFXXf6zOEd3n5f6zchcIDjVzz8+gDOqqCXZJ2qTozRPm4bDE8caPiO2qiRs/7pUCI=;
Received: from mail-dm6nam12olkn2078.outbound.protection.outlook.com
 ([40.92.22.78] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jy06X-00CeUj-Lr
 for oprofile-list@lists.sourceforge.net; Tue, 21 Jul 2020 21:47:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KXFASI3VigpYXvvCXQNQidcyV5Cm8EKR+XjdP7eKAHaS8HOgRVgOVkE+strGSdy2pns1hr3dZIkmYtPT7J71kS/91kOpGBjfc2kHwqUEssH9p7Ww+3AWjolfvykPvan1dn7eaD52Xqn6cmloojIAlsBnSiw96m/ZeNdndpRe3kokGifs5pPdjNI68jY6IGR0LegSOhZAYQnpabWJ59BWT5l9L1lS8sMbFjw8n0AnWdy0EpEEHnM81YL1Nf+Z+8oZbgGQY4/synmdn9XM4LF6yWmbkPwcufR7iEGipi2DuYWMOScT5aUSYGKjzlodNpFCH9VdlsyPEd6iqkUJD8F7Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=otUaWBPU1z9SpXWHACXkJpWd7yhmgvbV3n8rJgrPMIU=;
 b=FM2+OW8ourUmQl/Clh1TaNPJX+giRtfuNNveWgPhwGIksVEiuCIMtGBKW1OcHsdxGR2w799287FbGs7x3TbwXAZqjzCYhoCl6b+LI4Y65r/7HVxhaJy4LvivnXGwG8M89EvywoeVZdcwwYr/NHYgCYTrfXTgbo0M/c9L9M0AKhQaOLZo9VIqgDhjupcXucxKw139+Lwyh6F7AgLvkP7ZuYNeV3kR8sEuLy5Ll0eGajBtQZp5nAdVjeLYwruj/FgiArHPFbYoooxbjCpNqulZE7CaSqH+VgAeqCPPxnQWbmYUQD2qH7swbrczaVDNdiYPT0zvlob4uYpkKA4s8hQAqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=otUaWBPU1z9SpXWHACXkJpWd7yhmgvbV3n8rJgrPMIU=;
 b=VkO/eSY5p7i0gZ+LpDTANt7UKLecafnVIZHysM2Ne/D/FegUoBQ0Cfl6s81pIWCJgpGUMrWBPs9ePK9KoNIPJUKz7xTB2JyJwtf3Qb0zTBw11nEeiiBF3wz5RStJkcwp+fZeHUoWzFpxYxQ6UlGFX9G2tR8733V4xDCslrWGK2DKLzoP6X8OIFDS4RLLDdRcFJbHLe3GjcL7Afm4TeHxN7cAX1hLTcdCeCfuCCR0ohBnxoF5MDp4gYvXUc1g+uFXRNOm7CVUHGeITBShFS4aMKZKsTiq1fD0+zqPxuZev0IaqSwDjjHirGWE895LHKyua2nqcmadVBiyGKmm08xQuQ==
Received: from BN8NAM12FT045.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc66::4a) by
 BN8NAM12HT056.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc66::245)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.9; Tue, 21 Jul
 2020 21:47:11 +0000
Received: from DM6PR06MB5562.namprd06.prod.outlook.com
 (2a01:111:e400:fc66::51) by BN8NAM12FT045.mail.protection.outlook.com
 (2a01:111:e400:fc66::307) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.9 via Frontend
 Transport; Tue, 21 Jul 2020 21:47:11 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:71505FA90AEE350E4D3B5E875266DC79330E4FCF3CF2250295122C5ACAD28F30;
 UpperCasedChecksum:CF431DC57E1A02CCEBFF62F3B6E93CD67C65DEA075C3E812993800B79A79569A;
 SizeAsReceived:8829; Count:48
Received: from DM6PR06MB5562.namprd06.prod.outlook.com
 ([fe80::c837:ab85:9b36:7ac3]) by DM6PR06MB5562.namprd06.prod.outlook.com
 ([fe80::c837:ab85:9b36:7ac3%5]) with mapi id 15.20.3195.026; Tue, 21 Jul 2020
 21:47:11 +0000
Subject: Re: samples lost due to no permanent mapping and no file mapping
To: William Cohen <wcohen@redhat.com>, oprofile-list@lists.sourceforge.net
References: <DM6PR06MB5562A262A03E919CEFBCA3C1A3780@DM6PR06MB5562.namprd06.prod.outlook.com>
 <2ae5d919-c1b6-556a-803c-dd269ce6855a@redhat.com>
From: J Lumby <johnlumby@hotmail.com>
Message-ID: <DM6PR06MB55625E86C64B60DCEF775BA6A3780@DM6PR06MB5562.namprd06.prod.outlook.com>
Date: Tue, 21 Jul 2020 17:47:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
In-Reply-To: <2ae5d919-c1b6-556a-803c-dd269ce6855a@redhat.com>
Content-Language: en-US
X-ClientProxiedBy: YT1PR01CA0094.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2d::33) To DM6PR06MB5562.namprd06.prod.outlook.com
 (2603:10b6:5:3e::12)
X-Microsoft-Original-Message-ID: <1f7cdf1d-4ac0-3ee8-1b16-f077063ccbde@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from archstar.localdomain (69.165.169.141) by
 YT1PR01CA0094.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:2d::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3195.18 via Frontend Transport; Tue, 21 Jul 2020 21:47:10 +0000
X-Microsoft-Original-Message-ID: <1f7cdf1d-4ac0-3ee8-1b16-f077063ccbde@hotmail.com>
X-TMN: [q+5Bh77Ca1JOyuSdPgPEUOYYOCHjhgzg]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 48
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: e4b848ed-ebe7-4927-58de-08d82dbf9f31
X-MS-TrafficTypeDiagnostic: BN8NAM12HT056:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: d29hLxA1vmMVE8a0Br8AZobAcwJGc9hASWjgxHzg5QCKOyT9q00Vy3KJpbr19jSxXv9gKDK1eX++KNTuUZZF4xZrZarED/yRfCR0KaIqgvHq4Vfm3WYtTtol39kmtHx43NcTdHy5nPehGY+JoxIwlhIFMAh5vyLZ1Fx68cQZFNkpXQUPHMwYAV/x2bbc9a4VO+K7mOc+5Gt4E26MSJtu9Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR06MB5562.namprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: 2uvJcqIVMoZGlvvrk4TF/6C0hANInd5YYG53OyePROqj1OzYfa3wb37HKOqaN6dha4CcW05AIlFndO8QZkwE5eYbf52m3YKKrx08kEuYkQJJvm2xOw6y6uH+cFYs3e7Fla7mB3QlZrXy9MNbMy2QrA==
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4b848ed-ebe7-4927-58de-08d82dbf9f31
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2020 21:47:11.4225 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM12FT045.eop-nam12.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8NAM12HT056
X-Spam-Score: 2.7 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (johnlumby[at]hotmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.92.22.78 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.22.78 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.2 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address, but no 'Received:'
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 1.6 FORGED_MUA_MOZILLA     Forged mail pretending to be from Mozilla
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jy06X-00CeUj-Lr
X-Mailman-Approved-At: Tue, 21 Jul 2020 23:45:48 +0000
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

Ck9uIDcvMjEvMjAgOTo0OCBBTSwgV2lsbGlhbSBDb2hlbiB3cm90ZToKPiBPbiA3LzIwLzIwIDk6
MDMgUE0sIEogTHVtYnkgd3JvdGU6Cj4+IE9wcm9maWxpbmcgYW4gaW50ZW5zaXZlIHBvc3RncmVz
cWwgd29ya2xvYWQgcnVubmluZyBvbiBhIExlbm92byBQNTIgYW5kIGxuaXV4IGtlcm5lbCA1Ljcu
NCzCoMKgIEkgc2VlIHZlcnkgaGlnaCBudW1iZXJzIG9mIGJvdGggb2YgdGhlc2UgOiBhcHByb3hp
bWF0ZWx5IHR3by10aGlyZHMgb2YgYWxsIHVzZXItc3BhY2Ugc2FtcGxlcyBhcmUgYmVpbmcgbG9z
dC7CoCBzZWUgb3BlcmYubG9nIGJlbG93Cj4+Cj4+Cj4gSGksCj4KPiBXaGljaCB2ZXJzaW9uIG9m
IG9wcm9maWxlIHdhcyBiZWluZyB1c2VkPyAgSSBqdXN0IGRpZCBhIHJlbGVhc2Ugb2Ygb3Byb2Zp
bGUtMS40LjAgaXQgaGFzIGNvbW1pdCBbYTM3NDJmXToKCgpUaGF0IHJ1biB3YXMgb24gMS4zLjAK
Cgo+Cj4gVXNlIHRoZSBtbWFwIG9mZnNldCB0byBjb3JyZWN0bHkgY29tcHV0ZSB0aGUgSVAgbG9j
YXRpb24gaW4gYSBmaWxlCj4KPiBOZXdlciB2ZXJzaW9ucyBvZiBiaW51dGlscyBhcmUgbm93IG5v
dyBzcGxpdHRpbmcgdGhlIGZpbGUgaW50bwo+IG11bHRpcGxlIG1tYXAgbG9hZHMuIFRoZSBhc3N1
bXB0aW9uIHRoYXQgdGhlIG1tYXAgZm9yIHRoZSBleGVjdXRhYmxlCj4gY29kZSBpbiB0aGUgZmls
ZSBzdGFydHMgYXQgdGhlIGJlZ2lubmluZyBvZiB0aGUgZmlsZSAodGhhdCB0aGUgZmlsZQo+IG9m
ZnNldCBpcyBhbHdheXMgemVybykgaXMgbm8gbG9uZ2VyIHRydWUuIFRoZSBjb21wdXRhdGlvbiB0
byBjb252ZXJ0Cj4gdGhlIElQIGFkZHJlc3MgaW50byBhbiBvZmZzZXQgbmVlZHMgdG8gYWxzbyB1
c2UgdGhlIG9mZnNldC4KPgo+IEkgd29uZGVyIGlmIG1heWJlIHRoYXQgYSBudW1iZXIgb2YgdGhl
IHNhbXBsZXMgbWlnaHQgYmUgZGlzY2FyZGVkIGJlY2F1c2UgdGhleSBhcmUgbm90IGJlaW5nIG1h
cHBlZCB0byByZWFzb25hYmxlIGxvY2F0aW9ucyBpbiBleGVjdXRhYmxlcy4KPgo+IENvdWxkIHlv
dSBnaXZlIHRoYXQgbmV3IHJlbGVhc2Ugb2Ygb3Byb2ZpbGUgYSB0cnk/Cj4KPiAtV2lsbAoKCkkg
c2F3IDEuNC4wIGF2YWlsYWJsZSBhbG1vc3QgaW1tZWRpYXRlbHkgYWZ0ZXIgSSBwb3N0ZWQgdGhh
dC4gSSd2ZSBub3cgCnRyaWVkIHRoZSBzYW1lIHJ1biBvbiAxLjQuMCAoY29tcGlsZWQgb24gdGhl
IHRhcmdldCBtYWNoaW5lIGp1c3QgdG8gYmUgCnN1cmUgaXQgY29tcGlsZXMgd2l0aCB0aGUgc2Ft
ZSBiZmQgaGVhZGVycyBhbmQgbGlicykgYW5kIHRoZXJlIGFyZSBtaXhlZCAKcmVzdWx0cy4KCkl0
IGlzIHN0aWxsIGxvc2luZyA4MCUgb2YgYWxsIHVzZXJzcGFjZSBldmVudHMgOsKgIHNlZSBiZWxv
dzsKCmJ1dCBhbHNvIHRoZSByZXBvcnRzIG5vdyBzaG93IGEgY29tcGxldGVseSBkaWZmZXJlbnQg
YW5kIG11Y2ggbW9yZSAKIndoYXQtSS13b3VsZC1leHBlY3QiIGxpc3Qgb2YgdGlja2NvdW50cyBi
eSBmdW5jdGlvbizCoMKgIHNvIG1heWJlIEkgY2FuIAptYWtlIGRvIHdpdGggdGhpcyByZWxlYXNl
LsKgwqDCoMKgIEJ1dCB0aGlzIGltcHJvdmVtZW50IG1ha2VzIG1lIHdvbmRlciBpZiAKbWF5YmUg
dGhlIGZpeCBpcyBpbiB0aGUgcmlnaHQgZGlyZWN0aW9uIGJ1dCBub3QgcXVpdGUgdGhlcmUgeWV0
LsKgwqDCoCBJcyAKdGhhdCBwb3NzaWJsZT/CoMKgwqDCoMKgIFdvdWxkIHN3aXRjaGluZyBvbiB0
aGUgLVYgImFsbCcgZGVidWdnaW5nIGhlbHAgCm5hcnJvdyBkb3duIHdoYXQgaXMgaGFwcGVuaW5n
P8KgwqDCoMKgwqDCoCBBbHNvIGlmIHlvdSBjYW4gcG9pbnQgbWUgdG8gdGhlIApjb2RlIGNoYW5n
ZXMgSSBjYW4gdGFrZSBhIGxvb2sgYW5kIG1heWJlIHNwb3Qgc29tZXRoaW5nLgoKCkNoZWVycyzC
oMKgIEpvaG4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCgpvbiAxLjQuMAoKb3BlcmYgLS12bWxpbnV4IC9tbnQvYnVsbGJpbGQvbGlu
dXgtNS43LjQtYnVsbGFyY2gvdm1saW51eCAtLXNlc3Npb24tZGlyIAovdG1wL29wcm9mX3Nlc3Np
b24uMjAwNzIxLTE3MzExMSAtLWV2ZW50cyAKY3B1X2Nsa191bmhhbHRlZDo1MDAwMDAwMDp0aHJl
YWQ6MToxIC0tY2FsbGdyYXBoIC0tc2VwYXJhdGUtY3B1IAotLXN5c3RlbS13aWRlCgpQcm9maWxp
bmcgc3RhcnRlZCBhdCBUdWUgSnVsIDIxIDE3OjMxOjExIDIwMjAKUHJvZmlsaW5nIHN0b3BwZWQg
YXQgVHVlIEp1bCAyMSAxNzozMzozMCAyMDIwCgotLSBPUHJvZmlsZS9vcGVyZiBTdGF0aXN0aWNz
IC0tCk5yLiBub24tYmFja3RyYWNlIHNhbXBsZXM6IDEyNDIzCk5yLiBrZXJuZWwgc2FtcGxlczog
MjE3MApOci4gdXNlciBzcGFjZSBzYW1wbGVzOiAxMDI1MwpOci4gc2FtcGxlcyBsb3N0IGR1ZSB0
byBzYW1wbGUgYWRkcmVzcyBub3QgaW4gZXhwZWN0ZWQgcmFuZ2UgZm9yIGRvbWFpbjogMApOci4g
bG9zdCBrZXJuZWwgc2FtcGxlczogMApOci4gc2FtcGxlcyBsb3N0IGR1ZSB0byBzYW1wbGUgZmls
ZSBvcGVuIGZhaWx1cmU6IDAKTnIuIHNhbXBsZXMgbG9zdCBkdWUgdG8gbm8gcGVybWFuZW50IG1h
cHBpbmc6IDgwMzEKTnIuIHVzZXIgY29udGV4dCBrZXJuZWwgc2FtcGxlcyBsb3N0IGR1ZSB0byBu
byBhcHAgaW5mbyBhdmFpbGFibGU6IDAKTnIuIHVzZXIgc2FtcGxlcyBsb3N0IGR1ZSB0byBubyBh
cHAgaW5mbyBhdmFpbGFibGU6IDAKTnIuIGJhY2t0cmFjZXMgc2tpcHBlZCBkdWUgdG8gbm8gZmls
ZSBtYXBwaW5nOiA4MDI5Ck5yLiBoeXBlcnZpc29yIHNhbXBsZXMgZHJvcHBlZCBkdWUgdG8gYWRk
cmVzcyBvdXQtb2YtcmFuZ2U6IDAKTnIuIHNhbXBsZXMgbG9zdCByZXBvcnRlZCBieSBwZXJmX2V2
ZW50cyBrZXJuZWw6IDAKCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Kb3Byb2ZpbGUtbGlzdCBtYWlsaW5nIGxpc3QKb3Byb2ZpbGUtbGlzdEBsaXN0
cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlz
dGluZm8vb3Byb2ZpbGUtbGlzdAo=
