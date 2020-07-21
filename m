Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E91D2228112
	for <lists+oprofile-list@lfdr.de>; Tue, 21 Jul 2020 15:38:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jxsT7-00077O-30; Tue, 21 Jul 2020 13:38:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <johnlumby@hotmail.com>) id 1jxggP-0004m5-2r
 for oprofile-list@lists.sourceforge.net; Tue, 21 Jul 2020 01:03:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4UL0nqhSv5p/YZu4XF3naI2raCY1uHqVwxYZRUNHzWY=; b=B+ZB08k+IGB0bYffv4EDhF3UJV
 EOAKbYg+H/g8LbBFbZgo4v8mzqDxKxSGmFvA/usqUnG2aZ4rRTVWf45QgwvFYc1DEaYSvkm0qj3Pg
 PrOrMp5QkqJ45uBi/ikXHVGT+OHuNdmg4PsePylGhCaz51ddSZGsDUjjDcZJSEcjiUlo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:Date:Message-ID:
 Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=4UL0nqhSv5p/YZu4XF3naI2raCY1uHqVwxYZRUNHzWY=; b=m
 kL6egnmYRnsrUSrtcqcv7FE+GpB5OF+g82IlxFrwNVV65IaJiRXb25HlufWuRX3tGnwWPihpfeW0h
 XhuaM5Ow+akQBsVFw5K8xy0ZeBi2UnKFMzoLdrRSIDw8A8RfNh+No+9NxOEQ6AJcv4UQfj8UZYhD+
 +Me/r5b0AHizy2Tw=;
Received: from mail-oln040092011088.outbound.protection.outlook.com
 ([40.92.11.88] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jxggL-00BSej-HP
 for oprofile-list@lists.sourceforge.net; Tue, 21 Jul 2020 01:03:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VGYjKFXThBZs1JPxN2mAD15mWQ8p4iiRqrv1p0cOqTaMVDYKRbhtdHNL2AhrFvhNa0fHwTd5BeCamt0AbVHXCfuig5ITTy5/Yyg0jnLts6lyOM/vgZHIiflwk0sbIQiWf9KQanxRNIiUs1KRTF23aNcsqPXy/9ohiT1uCkFRGcJB7DAEcsWoCGW/uH+CPi9OlhnTnTkzgvjN+MgY+OIFBcN5GUjjJFh/rN5Q/8gf9HGI0PHjbR8/EWmpdaJkigmtRi2f85pTa76vHmM5mdPybaaf2oCW8RnGmHqdntWh35NPfidhg5WG7xlFdCak/y6ZQ8woLj57R69txUIuyrFKZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4UL0nqhSv5p/YZu4XF3naI2raCY1uHqVwxYZRUNHzWY=;
 b=JK06N3DHKGGPAKK4qAKKKzylC06QEARrAhh/eTe90d7UJ/oNbFnPM6+AJ2b6yh23CX7YBIgmZ73PEICgb1pSJ4ufkVa7jZK2h39sIGwVa0OKyfLiCkMlG2rGfGIwFS+skOlNfmd+3EY3vQLXX1eQFQQIuZQXuxf7iw5HuYRD4ijXcaW7TgmzwUXJVgea0w5NNZ6LyR2vJ9M6iC2Y8vM1M1fA/kAmZ/FFBX4ZYIWOrEXTEpp5YMkVSaZM/1600SRW40k5dWso/evAIG6RBjCIBtH9YrQ92cRDvSSjg9HHw5oTn/svjpC6toGgFdb9/z2SsBDl/ktg47IhAIYQGAAaZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4UL0nqhSv5p/YZu4XF3naI2raCY1uHqVwxYZRUNHzWY=;
 b=YK9+Mp454p/LM+gTkB7ULnQvr8IypWWADkbHzCCm+Z416djfWPv+uLclV1HYEA9dG4vEoXgIlGGTdiQKAIDOG/oYbGSx3N9JhcB8E6VuWD0tWQM/oBTcWYhxB+5HzlkpQ7piU7iormPMWfEjAouIVdP9qUPEeMnuF3/Mh+7trQrhASln3Vo1DKOgkH6f+zvj6dqtmPTL09hO3n8LqnjQPGfqowVSbfViF3XjXIolgFU6MrkgWhGPgNcQnNqT7KoPtfTW4I2x/pGeNLGl+EqVVPYtG676mIt4A6BUQ6wUk36+yiMvonwURaikLxFQt2kCmw3mMTQUPIO3ly9ahKx+uw==
Received: from SN1NAM04FT053.eop-NAM04.prod.protection.outlook.com
 (10.152.88.54) by SN1NAM04HT237.eop-NAM04.prod.protection.outlook.com
 (10.152.89.223) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.22; Tue, 21 Jul
 2020 01:02:50 +0000
Received: from DM6PR06MB5562.namprd06.prod.outlook.com
 (2a01:111:e400:7e4c::4f) by SN1NAM04FT053.mail.protection.outlook.com
 (2a01:111:e400:7e4c::241) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.22 via Frontend
 Transport; Tue, 21 Jul 2020 01:02:50 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:62E022DEBE1A3974971518FF1CA93C62589D1093D40BC23DC8895E027446C2FB;
 UpperCasedChecksum:6C23EC1D43AC6494835B5502D7AF80306F73BE2145793C0CE498A1BA64FE58A2;
 SizeAsReceived:8582; Count:46
Received: from DM6PR06MB5562.namprd06.prod.outlook.com
 ([fe80::c837:ab85:9b36:7ac3]) by DM6PR06MB5562.namprd06.prod.outlook.com
 ([fe80::c837:ab85:9b36:7ac3%5]) with mapi id 15.20.3195.025; Tue, 21 Jul 2020
 01:02:50 +0000
To: oprofile-list@lists.sourceforge.net
From: J Lumby <johnlumby@hotmail.com>
Subject: samples lost due to no permanent mapping and no file mapping
Message-ID: <DM6PR06MB5562A262A03E919CEFBCA3C1A3780@DM6PR06MB5562.namprd06.prod.outlook.com>
Date: Mon, 20 Jul 2020 21:03:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
Content-Language: en-US
X-ClientProxiedBy: YTOPR0101CA0029.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b00:15::42) To DM6PR06MB5562.namprd06.prod.outlook.com
 (2603:10b6:5:3e::12)
X-Microsoft-Original-Message-ID: <9dee1a4c-4dd1-4046-14f5-633b423b13e7@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from archstar.localdomain (69.165.169.141) by
 YTOPR0101CA0029.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b00:15::42) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.18 via Frontend
 Transport; Tue, 21 Jul 2020 01:02:49 +0000
X-Microsoft-Original-Message-ID: <9dee1a4c-4dd1-4046-14f5-633b423b13e7@hotmail.com>
X-TMN: [BX0FaNZBAo/MMgnCk7CiCkSUof+/8vap]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 46
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 61d49b5c-e70a-440f-3836-08d82d11c9f8
X-MS-TrafficTypeDiagnostic: SN1NAM04HT237:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YbRy3rRgHP7iohtQkG9TemCbj71TdzyWAwvGvfSO2dEvR6qu124+6ZvfR4q1hgCdOp12vGoODL6Xqevws+T4LA51OS9EkExBhhfAaojqk+AYNDyra3l2zVj9BkCp39WeCODWVlZEhprVz95i7fyzn8H2Jfm7h2KFiGjfeusaQFe11w6kCARPDyS066WP0IR9Di9moVKzwwW3jBYm0QpIIw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR06MB5562.namprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: Wj67ySllZjmqgfX4OsBtF5czsn83bflmfMKYx3XkwRguunsV28kMwISYiN4eoc8IfMCal5xF6oySbkKwNcHZFSZ4/o/lae1wqj1IoZVuZcdt4mdr4t4qLdi8gooDhigKTrEGmkBGHWnk45E72lYh5Q==
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61d49b5c-e70a-440f-3836-08d82d11c9f8
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2020 01:02:50.5283 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: SN1NAM04FT053.eop-NAM04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM04HT237
X-Spam-Score: 2.7 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (johnlumby[at]hotmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.92.11.88 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.11.88 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.2 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address, but no 'Received:'
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.6 FORGED_MUA_MOZILLA     Forged mail pretending to be from Mozilla
X-Headers-End: 1jxggL-00BSej-HP
X-Mailman-Approved-At: Tue, 21 Jul 2020 13:38:03 +0000
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

T3Byb2ZpbGluZyBhbiBpbnRlbnNpdmUgcG9zdGdyZXNxbCB3b3JrbG9hZCBydW5uaW5nIG9uIGEg
TGVub3ZvIFA1MiBhbmQgCmxuaXV4IGtlcm5lbCA1LjcuNCzCoMKgIEkgc2VlIHZlcnkgaGlnaCBu
dW1iZXJzIG9mIGJvdGggb2YgdGhlc2UgOiAKYXBwcm94aW1hdGVseSB0d28tdGhpcmRzIG9mIGFs
bCB1c2VyLXNwYWNlIHNhbXBsZXMgYXJlIGJlaW5nIGxvc3QuwqAgc2VlIApvcGVyZi5sb2cgYmVs
b3cKCgpUaGUgb3BlcmYgY29tbWFuZCBJJ3ZlIHVzZWQgaXMKCm9wZXJmIC0tdm1saW51eCAvbW50
L2J1bGxiaWxkL2xpbnV4LTUuNy40LWJ1bGxhcmNoL3ZtbGludXggLS1zZXNzaW9uLWRpciAKL3Rt
cC9vcHJvZl9zZXNzaW9uLjIwMDcyMC0xOTUwMjQgLS1ldmVudHMgCmNwdV9jbGtfdW5oYWx0ZWQ6
MzAwMDAwNDU6dGhyZWFkOjE6MSAtLWNhbGxncmFwaCAtLXNlcGFyYXRlLWNwdSAKLS1zeXN0ZW0t
d2lkZQoKCmFuZCBpdCB3b3JrcyBidXQgdGVsbHMgbWUKCldBUk5JTkc6IExvc3Qgc2FtcGxlcyBk
ZXRlY3RlZCEgU2VlIAovdG1wL29wcm9mX3Nlc3Npb24uMjAwNzIwLTE5NTAyNC9zYW1wbGVzL29w
ZXJmLmxvZyBmb3IgZGV0YWlscy4KCgpMb3dlcmluZyB0aGUgc2FtcGxpbmcgcmF0ZSBhcyBzdWdn
ZXN0ZWQgZG9lcyBub3QgaGVscCA6wqAgSSB0cmllZCB3aXRoIGEgCmNvdW50IG9mIDk5OTk5OTk5
IGFuZCBzYW1lIGhpZ2ggbG9zdCBzYW1wbGVzLgoKCkkgYXNzdW1lIG9wcm9maWxlIHNvbWVob3cg
aXMgdW5hYmxlIHRvIG1hcCB0aGUgaW5zdHJ1Y3Rpb24gcG9pbnRlciBvZiAKdGhlIGV2ZW50IHRv
IGFueSBwcm9jZXNzP8KgwqDCoMKgwqAgSG93IGRvZXMgaXQgZG8gdGhpcz8gSXMgdGhlcmUgYW55
IHNldHRpbmcgCm9yIGNvbnRyb2wgb3IgaGludCB0aGF0IEkgY2FuIHNldCB0byBoZWxwIGl0P8Kg
wqDCoMKgIG9yICzCoCBmYWlsaW5nIHRoYXQswqAgCmlzIHRoZXJlIGFueSB3YXkgSSBjYW4gYXNr
IG9wcmVwb3J0IHRvIGdpdmUgbWUgdGhlIHJlc3VsdHMgYXMgcmF3IAppbnN0cnVjdGlvbiBhZGRy
ZXNzZXM/CgoKSGVscCEKCgpDaGVlcnMswqAgSm9obiBMdW1ieQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KClByb2ZpbGluZyBzdGFy
dGVkIGF0IE1vbiBKdWwgMjAgMTk6NTA6MjQgMjAyMApQcm9maWxpbmcgc3RvcHBlZCBhdCBNb24g
SnVsIDIwIDE5OjUxOjI1IDIwMjAKCi0tIE9Qcm9maWxlL29wZXJmIFN0YXRpc3RpY3MgLS0KTnIu
IG5vbi1iYWNrdHJhY2Ugc2FtcGxlczogOTQzNQpOci4ga2VybmVsIHNhbXBsZXM6IDE5MjQKTnIu
IHVzZXIgc3BhY2Ugc2FtcGxlczogNzUxMQpOci4gc2FtcGxlcyBsb3N0IGR1ZSB0byBzYW1wbGUg
YWRkcmVzcyBub3QgaW4gZXhwZWN0ZWQgcmFuZ2UgZm9yIGRvbWFpbjogMApOci4gbG9zdCBrZXJu
ZWwgc2FtcGxlczogMApOci4gc2FtcGxlcyBsb3N0IGR1ZSB0byBzYW1wbGUgZmlsZSBvcGVuIGZh
aWx1cmU6IDAKTnIuIHNhbXBsZXMgbG9zdCBkdWUgdG8gbm8gcGVybWFuZW50IG1hcHBpbmc6IDQ5
NjcKTnIuIHVzZXIgY29udGV4dCBrZXJuZWwgc2FtcGxlcyBsb3N0IGR1ZSB0byBubyBhcHAgaW5m
byBhdmFpbGFibGU6IDAKTnIuIHVzZXIgc2FtcGxlcyBsb3N0IGR1ZSB0byBubyBhcHAgaW5mbyBh
dmFpbGFibGU6IDAKTnIuIGJhY2t0cmFjZXMgc2tpcHBlZCBkdWUgdG8gbm8gZmlsZSBtYXBwaW5n
OiA0OTY3Ck5yLiBoeXBlcnZpc29yIHNhbXBsZXMgZHJvcHBlZCBkdWUgdG8gYWRkcmVzcyBvdXQt
b2YtcmFuZ2U6IDAKTnIuIHNhbXBsZXMgbG9zdCByZXBvcnRlZCBieSBwZXJmX2V2ZW50cyBrZXJu
ZWw6IDAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
b3Byb2ZpbGUtbGlzdCBtYWlsaW5nIGxpc3QKb3Byb2ZpbGUtbGlzdEBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3Byb2Zp
bGUtbGlzdAo=
