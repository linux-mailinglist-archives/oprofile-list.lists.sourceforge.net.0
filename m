Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 283E780BAA
	for <lists+oprofile-list@lfdr.de>; Sun,  4 Aug 2019 18:22:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1huJHL-00087p-8k; Sun, 04 Aug 2019 16:22:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pburton@wavecomp.com>) id 1hsZX2-0002A2-7q
 for oprofile-list@lists.sourceforge.net; Tue, 30 Jul 2019 21:19:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RcHmNgJCTalrdpPZmR54TBgAbOVoLC5Rl1LXw9n2XJo=; b=TDkhZuVuJp1voNX77rw4KlfXgE
 dk0D2mycIvCeL0X1yuilCOqAIeat5DnrWQydSt0k+2w6lwrZ1sIsc7N+Wn6UDeey9BDhzzr3b6wq7
 QDCIcRentU9ze63RHgNwACrLvrdPLukZ6NVRwm+YONQa4Cxb7dqGXzQyc3QUS6g60ABg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RcHmNgJCTalrdpPZmR54TBgAbOVoLC5Rl1LXw9n2XJo=; b=RWKSpMcHjwMs2+HscSkWH7+hw3
 yYXhPr5m0yALlddTa3GX9CgNdGkgqE1jmUM6PRFc0oAtffW3Xw6WIPUqfiCP2aAGcrfJWLxEXuI7c
 fxkbJn2C0hJgicASjTG/HkonV+ezIU//HAjAptqYM3H+GunEynDY1/GROfPDnjEinaLo=;
Received: from mail-eopbgr700091.outbound.protection.outlook.com
 ([40.107.70.91] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hsZWw-004i3a-ES
 for oprofile-list@lists.sourceforge.net; Tue, 30 Jul 2019 21:19:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QqwJIOVGMnnBc9sgfvK05W1be4butqKcXA772uM5ow1j50+rx6HfrWbijQAiRKjM6rvYWUb2sNyVc+UQ7zaSaqBmgf6hvQceIACZHcS4NXfIsJg6vhonnfTsnPFgkYHp/eV/lZyezFB/S/mzW291ntTTUXOjvYgYcuUdWhzS4xwN1CGwyYHk1EvqtopwNqOrLXTBPezQxxsmuVU8Fppif+7Kue91ppphvc/VoGaG7kKqdKT34ZomRLJFznDURzZrBzMyzhCxHySP4arUc4XX9DvnHy03QC5/KPnALkcixrU1PW3AX4FDNkg59oszz67Ko5kbxQIiRoRRagv9nUEkfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RcHmNgJCTalrdpPZmR54TBgAbOVoLC5Rl1LXw9n2XJo=;
 b=M2Px/lsGUT0C5bq5kRdXyo7U1/rl95J03mKuyvzdGj3+fCfvU8YZBcMIdHGNPN3f7KoreuBxhz1+ulGALcQf9aNXFdshsr3vQndYyX2FQGwGcsYgy7Td6RxWRBk033DARhsstwObCNGQSWN5Y2iqMGWrvb5CwMA1hygSe3KLP8rUNzoaU2YY6XFaTgmQ93XKvn75AWCQmkLPXLE5waa4qAyjsTAJBBG4MSYCZlWQMM37xbqW7XcrbzLBa6uQTzRtxZllCq/f787WBJ+5wx4DGwLaG8s3YMliPiP1GDV/Ip8nKR+Ptgub6Dmd0eyNzKagD/dFJ7NA8Sp6IUUyzl4Nkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wavecomp.com;dmarc=pass action=none
 header.from=mips.com;dkim=pass header.d=mips.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wavecomp.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RcHmNgJCTalrdpPZmR54TBgAbOVoLC5Rl1LXw9n2XJo=;
 b=Dnh3iW9a/8lL2gpoI5eNe52zLIzrfGGHPEeX4OwkP5qyV2cE5AeUJSlygSXdD/C8+BBbQh4Tf0sfKa+EDFRAFy/VmWYcP1ho9S8LiVdqzbIJBsiMXjIiOPycotO54aj4pdg+khzGuh36zF656VK3ZxSuF4wt2/D9hw2rCvuTFLQ=
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com (10.172.60.12) by
 MWHPR2201MB1453.namprd22.prod.outlook.com (10.174.170.138) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Tue, 30 Jul 2019 16:44:29 +0000
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::105a:1595:b6ef:cbdf]) by MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::105a:1595:b6ef:cbdf%4]) with mapi id 15.20.2115.005; Tue, 30 Jul 2019
 16:44:29 +0000
From: Paul Burton <paul.burton@mips.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] MIPS: OProfile: Mark expected switch fall-throughs
Thread-Topic: [PATCH] MIPS: OProfile: Mark expected switch fall-throughs
Thread-Index: AQHVRvYOzy74EdKgzEOo0M36d+u1mw==
Date: Tue, 30 Jul 2019 16:44:28 +0000
Message-ID: <MWHPR2201MB12774C1C54015019C8FD92EEC1DC0@MWHPR2201MB1277.namprd22.prod.outlook.com>
References: <20190729233209.GA28779@embeddedor>
In-Reply-To: <20190729233209.GA28779@embeddedor>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR05CA0059.namprd05.prod.outlook.com
 (2603:10b6:a03:74::36) To MWHPR2201MB1277.namprd22.prod.outlook.com
 (2603:10b6:301:18::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pburton@wavecomp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [12.94.197.246]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5da896a3-2aa7-45e0-3955-08d7150d3068
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR2201MB1453; 
x-ms-traffictypediagnostic: MWHPR2201MB1453:
x-microsoft-antispam-prvs: <MWHPR2201MB14539F78969B8F05FE9915C5C1DC0@MWHPR2201MB1453.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:130;
x-forefront-prvs: 0114FF88F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(136003)(376002)(366004)(346002)(39850400004)(189003)(199004)(68736007)(6506007)(386003)(229853002)(76176011)(33656002)(8676002)(25786009)(81156014)(81166006)(42882007)(71200400001)(71190400001)(478600001)(102836004)(186003)(4326008)(14454004)(26005)(316002)(7736002)(55016002)(53936002)(74316002)(305945005)(66446008)(64756008)(66946007)(66556008)(66066001)(99286004)(7696005)(52116002)(66476007)(6246003)(6436002)(54906003)(9686003)(6916009)(446003)(486006)(2906002)(5660300002)(476003)(44832011)(52536014)(6116002)(11346002)(8936002)(256004)(14444005)(3846002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR2201MB1453;
 H:MWHPR2201MB1277.namprd22.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: PyJRRq9b2aaSf7/mDxsa8OSSiagFbMbiwOj3IR9yCUrOLUogcjtDVhq8ndrE25cDICFnDx+VVNAAV6K/ZQscnyQjGwkbTxo6U1NLV/8GAqW6BS2cfoIHEIsVtimN6r0dfo1LH6HJAdcPAjR0vx/MaVDpVUJFnAvG9+ZzkBHFQ0nV1boqqHGtTljMn4T+CodMnrzRR+KZddbWXDNPmO7QHZdjX1ITp2TZ/OuC09JIMRG16feYNmXM2leyjZ6KzbQapldM6uBuU/cBLDOjnT5cqyKlrkILnDo167YhSiPzKJSL3IP4OTReBnPAWJd00y1AX5Wa6LNNkZCxl/KpGE0Y6p+m3CUwNmftfFRzBNanahBkH93uxwQKx9z3Jicg9sJxoQ4cWK7m37fbjovNKE813rv/B2Nt8F0oa4NccjrEyOc=
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5da896a3-2aa7-45e0-3955-08d7150d3068
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2019 16:44:29.0912 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pburton@wavecomp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR2201MB1453
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.70.91 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mips.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hsZWw-004i3a-ES
X-Mailman-Approved-At: Sun, 04 Aug 2019 16:22:37 +0000
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
Cc: Paul Burton <pburton@wavecomp.com>, Robert Richter <rric@kernel.org>,
 Kees Cook <keescook@chromium.org>, "Gustavo A. R.
 Silva" <gustavo@embeddedor.com>, James Hogan <jhogan@kernel.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "oprofile-list@lists.sf.net" <oprofile-list@lists.sf.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: oprofile-list-bounces@lists.sourceforge.net

SGVsbG8sDQoNCkd1c3Rhdm8gQS4gUi4gU2lsdmEgd3JvdGU6DQo+IE1hcmsgc3dpdGNoIGNhc2Vz
IHdoZXJlIHdlIGFyZSBleHBlY3RpbmcgdG8gZmFsbCB0aHJvdWdoLg0KPiANCj4gVGhpcyBwYXRj
aCBmaXhlcyB0aGUgZm9sbG93aW5nIHdhcm5pbmcgKEJ1aWxkaW5nOiBtaXBzKToNCj4gDQo+IGFy
Y2gvbWlwcy9vcHJvZmlsZS9vcF9tb2RlbF9taXBzeHguYzogSW4gZnVuY3Rpb24g4oCYbWlwc3h4
X2NwdV9zdG9w4oCZOg0KPiBhcmNoL21pcHMvb3Byb2ZpbGUvb3BfbW9kZWxfbWlwc3h4LmM6MjE3
OjM6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsIHRocm91Z2ggWy1XaW1wbGljaXQt
ZmFsbHRocm91Z2g9XQ0KPiB3X2MwX3BlcmZjdHJsMygwKTsNCj4gXn5+fn5+fn5+fn5+fn5+fn4N
Cj4gYXJjaC9taXBzL29wcm9maWxlL29wX21vZGVsX21pcHN4eC5jOjIxODoyOiBub3RlOiBoZXJl
DQo+IGNhc2UgMzoNCj4gXn5+fg0KPiBhcmNoL21pcHMvb3Byb2ZpbGUvb3BfbW9kZWxfbWlwc3h4
LmM6MjE5OjM6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsIHRocm91Z2ggWy1XaW1w
bGljaXQtZmFsbHRocm91Z2g9XQ0KPiB3X2MwX3BlcmZjdHJsMigwKTsNCj4gXn5+fn5+fn5+fn5+
fn5+fn4NCj4gYXJjaC9taXBzL29wcm9maWxlL29wX21vZGVsX21pcHN4eC5jOjIyMDoyOiBub3Rl
OiBoZXJlDQo+IGNhc2UgMjoNCj4gXn5+fg0KPiBhcmNoL21pcHMvb3Byb2ZpbGUvb3BfbW9kZWxf
bWlwc3h4LmM6MjIxOjM6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsIHRocm91Z2gg
Wy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQ0KPiB3X2MwX3BlcmZjdHJsMSgwKTsNCj4gXn5+fn5+
fn5+fn5+fn5+fn4NCj4gYXJjaC9taXBzL29wcm9maWxlL29wX21vZGVsX21pcHN4eC5jOjIyMjoy
OiBub3RlOiBoZXJlDQo+IGNhc2UgMToNCj4gXn5+fg0KPiBhcmNoL21pcHMvb3Byb2ZpbGUvb3Bf
bW9kZWxfbWlwc3h4LmM6IEluIGZ1bmN0aW9uIOKAmG1pcHN4eF9jcHVfc3RhcnTigJk6DQo+IGFy
Y2gvbWlwcy9vcHJvZmlsZS9vcF9tb2RlbF9taXBzeHguYzoxOTc6Mzogd2FybmluZzogdGhpcyBz
dGF0ZW1lbnQgbWF5IGZhbGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dDQo+IHdf
YzBfcGVyZmN0cmwzKFdIQVQgfCByZWcuY29udHJvbFszXSk7DQo+IF5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn4NCj4gYXJjaC9taXBzL29wcm9maWxlL29wX21vZGVsX21pcHN4
eC5jOjE5ODoyOiBub3RlOiBoZXJlDQo+IGNhc2UgMzoNCj4gXn5+fg0KPiBhcmNoL21pcHMvb3By
b2ZpbGUvb3BfbW9kZWxfbWlwc3h4LmM6MTk5OjM6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1h
eSBmYWxsIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQ0KPiB3X2MwX3BlcmZjdHJs
MihXSEFUIHwgcmVnLmNvbnRyb2xbMl0pOw0KPiBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+DQo+IGFyY2gvbWlwcy9vcHJvZmlsZS9vcF9tb2RlbF9taXBzeHguYzoyMDA6Mjog
bm90ZTogaGVyZQ0KPiBjYXNlIDI6DQo+IF5+fn4NCj4gYXJjaC9taXBzL29wcm9maWxlL29wX21v
ZGVsX21pcHN4eC5jOjIwMTozOiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbCB0aHJv
dWdoIFstV2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0NCj4gd19jMF9wZXJmY3RybDEoV0hBVCB8IHJl
Zy5jb250cm9sWzFdKTsNCj4gXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fg0K
PiBhcmNoL21pcHMvb3Byb2ZpbGUvb3BfbW9kZWxfbWlwc3h4LmM6MjAyOjI6IG5vdGU6IGhlcmUN
Cj4gY2FzZSAxOg0KPiBefn5+DQo+IGFyY2gvbWlwcy9vcHJvZmlsZS9vcF9tb2RlbF9taXBzeHgu
YzogSW4gZnVuY3Rpb24g4oCYcmVzZXRfY291bnRlcnPigJk6DQo+IGFyY2gvbWlwcy9vcHJvZmls
ZS9vcF9tb2RlbF9taXBzeHguYzoyOTk6Mzogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5IGZh
bGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dDQo+IHdfYzBfcGVyZmNudHIzKDAp
Ow0KPiBefn5+fn5+fn5+fn5+fn5+fg0KPiBhcmNoL21pcHMvb3Byb2ZpbGUvb3BfbW9kZWxfbWlw
c3h4LmM6MzAwOjI6IG5vdGU6IGhlcmUNCj4gY2FzZSAzOg0KPiBefn5+DQo+IGFyY2gvbWlwcy9v
cHJvZmlsZS9vcF9tb2RlbF9taXBzeHguYzozMDI6Mzogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQg
bWF5IGZhbGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dDQo+IHdfYzBfcGVyZmNu
dHIyKDApOw0KPiBefn5+fn5+fn5+fn5+fn5+fg0KPiBhcmNoL21pcHMvb3Byb2ZpbGUvb3BfbW9k
ZWxfbWlwc3h4LmM6MzAzOjI6IG5vdGU6IGhlcmUNCj4gY2FzZSAyOg0KPiBefn5+DQo+IGFyY2gv
bWlwcy9vcHJvZmlsZS9vcF9tb2RlbF9taXBzeHguYzozMDU6Mzogd2FybmluZzogdGhpcyBzdGF0
ZW1lbnQgbWF5IGZhbGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dDQo+IHdfYzBf
cGVyZmNudHIxKDApOw0KPiBefn5+fn5+fn5+fn5+fn5+fg0KPiBhcmNoL21pcHMvb3Byb2ZpbGUv
b3BfbW9kZWxfbWlwc3h4LmM6MzA2OjI6IG5vdGU6IGhlcmUNCj4gY2FzZSAxOg0KPiBefn5+DQo+
IGFyY2gvbWlwcy9vcHJvZmlsZS9vcF9tb2RlbF9taXBzeHguYzogSW4gZnVuY3Rpb24g4oCYbWlw
c3h4X3BlcmZjb3VudF9oYW5kbGVy4oCZOg0KPiBhcmNoL21pcHMvb3Byb2ZpbGUvb3BfbW9kZWxf
bWlwc3h4LmM6MjQyOjY6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsIHRocm91Z2gg
Wy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQ0KPiBpZiAoKGNvbnRyb2wgJiBNSVBTX1BFUkZDVFJM
X0lFKSAmJiAgICAgICAgIF4NCj4gYXJjaC9taXBzL29wcm9maWxlL29wX21vZGVsX21pcHN4eC5j
OjI0ODoyOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYSEFORExFX0NPVU5URVLigJkN
Cj4gSEFORExFX0NPVU5URVIoMykNCj4gXn5+fn5+fn5+fn5+fn4NCj4gYXJjaC9taXBzL29wcm9m
aWxlL29wX21vZGVsX21pcHN4eC5jOjIzOToyOiBub3RlOiBoZXJlDQo+IGNhc2UgbiArIDE6ICAg
ICAgICAgXg0KPiBhcmNoL21pcHMvb3Byb2ZpbGUvb3BfbW9kZWxfbWlwc3h4LmM6MjQ5OjI6IG5v
dGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhIQU5ETEVfQ09VTlRFUuKAmQ0KPiBIQU5ETEVf
Q09VTlRFUigyKQ0KPiBefn5+fn5+fn5+fn5+fg0KPiBhcmNoL21pcHMvb3Byb2ZpbGUvb3BfbW9k
ZWxfbWlwc3h4LmM6MjQyOjY6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsIHRocm91
Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQ0KPiBpZiAoKGNvbnRyb2wgJiBNSVBTX1BFUkZD
VFJMX0lFKSAmJiAgICAgICAgIF4NCj4gYXJjaC9taXBzL29wcm9maWxlL29wX21vZGVsX21pcHN4
eC5jOjI0OToyOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYSEFORExFX0NPVU5URVLi
gJkNCj4gSEFORExFX0NPVU5URVIoMikNCj4gXn5+fn5+fn5+fn5+fn4NCj4gYXJjaC9taXBzL29w
cm9maWxlL29wX21vZGVsX21pcHN4eC5jOjIzOToyOiBub3RlOiBoZXJlDQo+IGNhc2UgbiArIDE6
ICAgICAgICAgXg0KPiBhcmNoL21pcHMvb3Byb2ZpbGUvb3BfbW9kZWxfbWlwc3h4LmM6MjUwOjI6
IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhIQU5ETEVfQ09VTlRFUuKAmQ0KPiBIQU5E
TEVfQ09VTlRFUigxKQ0KPiBefn5+fn5+fn5+fn5+fg0KPiBhcmNoL21pcHMvb3Byb2ZpbGUvb3Bf
bW9kZWxfbWlwc3h4LmM6MjQyOjY6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsIHRo
cm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQ0KPiBpZiAoKGNvbnRyb2wgJiBNSVBTX1BF
UkZDVFJMX0lFKSAmJiAgICAgICAgIF4NCj4gYXJjaC9taXBzL29wcm9maWxlL29wX21vZGVsX21p
cHN4eC5jOjI1MDoyOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYSEFORExFX0NPVU5U
RVLigJkNCj4gSEFORExFX0NPVU5URVIoMSkNCj4gXn5+fn5+fn5+fn5+fn4NCj4gYXJjaC9taXBz
L29wcm9maWxlL29wX21vZGVsX21pcHN4eC5jOjIzOToyOiBub3RlOiBoZXJlDQo+IGNhc2UgbiAr
IDE6ICAgICAgICAgXg0KPiBhcmNoL21pcHMvb3Byb2ZpbGUvb3BfbW9kZWxfbWlwc3h4LmM6MjUx
OjI6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhIQU5ETEVfQ09VTlRFUuKAmQ0KPiBI
QU5ETEVfQ09VTlRFUigwKQ0KPiBefn5+fn5+fn5+fn5+fg0KPiBDQyAgICAgIHVzci9pbmNsdWRl
L2xpbnV4L3BtdS5oLnMNCj4gYXJjaC9taXBzL29wcm9maWxlL29wX21vZGVsX21pcHN4eC5jOiBJ
biBmdW5jdGlvbiDigJhtaXBzeHhfY3B1X3NldHVw4oCZOg0KPiBhcmNoL21pcHMvb3Byb2ZpbGUv
b3BfbW9kZWxfbWlwc3h4LmM6MTc0OjM6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxs
IHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQ0KPiB3X2MwX3BlcmZjbnRyMyhyZWcu
Y291bnRlclszXSk7DQo+IF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fg0KPiBhcmNoL21p
cHMvb3Byb2ZpbGUvb3BfbW9kZWxfbWlwc3h4LmM6MTc1OjI6IG5vdGU6IGhlcmUNCj4gY2FzZSAz
Og0KPiBefn5+DQo+IGFyY2gvbWlwcy9vcHJvZmlsZS9vcF9tb2RlbF9taXBzeHguYzoxNzc6Mzog
d2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxs
dGhyb3VnaD1dDQo+IHdfYzBfcGVyZmNudHIyKHJlZy5jb3VudGVyWzJdKTsNCj4gXn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+DQo+IGFyY2gvbWlwcy9vcHJvZmlsZS9vcF9tb2RlbF9taXBz
eHguYzoxNzg6Mjogbm90ZTogaGVyZQ0KPiBjYXNlIDI6DQo+IF5+fn4NCj4gYXJjaC9taXBzL29w
cm9maWxlL29wX21vZGVsX21pcHN4eC5jOjE4MDozOiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBt
YXkgZmFsbCB0aHJvdWdoIFstV2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0NCj4gd19jMF9wZXJmY250
cjEocmVnLmNvdW50ZXJbMV0pOw0KPiBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4NCj4g
YXJjaC9taXBzL29wcm9maWxlL29wX21vZGVsX21pcHN4eC5jOjE4MToyOiBub3RlOiBoZXJlDQo+
IGNhc2UgMToNCj4gXn5+fg0KPiANCj4gU2lnbmVkLW9mZi1ieTogR3VzdGF2byBBLiBSLiBTaWx2
YSA8Z3VzdGF2b0BlbWJlZGRlZG9yLmNvbT4NCg0KQXBwbGllZCB0byBtaXBzLWZpeGVzLg0KDQpU
aGFua3MsDQogICAgUGF1bA0KDQpbIFRoaXMgbWVzc2FnZSB3YXMgYXV0by1nZW5lcmF0ZWQ7IGlm
IHlvdSBiZWxpZXZlIGFueXRoaW5nIGlzIGluY29ycmVjdA0KICB0aGVuIHBsZWFzZSBlbWFpbCBw
YXVsLmJ1cnRvbkBtaXBzLmNvbSB0byByZXBvcnQgaXQuIF0NCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcHJvZmlsZS1saXN0IG1haWxpbmcgbGlzdApv
cHJvZmlsZS1saXN0QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby9vcHJvZmlsZS1saXN0Cg==
