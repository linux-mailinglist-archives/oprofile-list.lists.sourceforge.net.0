Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4EF2F6A1A
	for <lists+oprofile-list@lfdr.de>; Thu, 14 Jan 2021 19:54:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l07lc-0003cA-GY; Thu, 14 Jan 2021 18:54:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Vineet.Gupta1@synopsys.com>) id 1l074I-0001w3-V7
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 18:09:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bp3TEd4ezresERKVRPtKd99/oMoLsRvoKgwcJ3hQ6vs=; b=CuHpumgBwgpgEez1zCH+VY0rgo
 EkQFUpbVX8G4SpMKN/nYR7aDOUjCSFByX2fWi+WXJA7PFA8hiOPxc9Z95pQnllICfWPuucvogcdpA
 10vmIzsTkSYmXH4/AWod65mvhzPInu4nbDtPmbQmwr1khD9kD9a8jk8mOxxkIDU/cFMo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bp3TEd4ezresERKVRPtKd99/oMoLsRvoKgwcJ3hQ6vs=; b=Z5esZ3CYDTDgWBLBS83s3WBW/H
 SEk8ZMoNo4nJQbn5+47Hrkom8TOmbF6O4irNekQ/61ChqzRjlSn49wEyCYe3Fvp/eAUAXy+0uLq3N
 +RbYygi1YLYtvlCgqfXXKdPlE9/2Sr8BDO5t7Uf4mbGdx3VkbPk7b3qYPqV3aIKXHgYQ=;
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l074A-009mjb-5m
 for oprofile-list@lists.sourceforge.net; Thu, 14 Jan 2021 18:09:58 +0000
Received: from mailhost.synopsys.com (sv1-mailhost1.synopsys.com
 [10.205.2.131])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 9A00840660;
 Thu, 14 Jan 2021 17:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1610646709; bh=bp3TEd4ezresERKVRPtKd99/oMoLsRvoKgwcJ3hQ6vs=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=PLqV2jKNCnaU3OH+KPvMjTIXklmu1inAQSQMEdGIrhlJO/of1F1MvcRm+0FVE2SrJ
 O/qu/71shr4O4oiOFvkPOp/Uv4FMQAqrmT2gRRo/SiQg+ZPKlgjz4azc8BHOjc8ymf
 DozXEzWbiuKou7LH/X9ydMcLTWLTYOFpSnB1rU93o9S90B9G4qT5En7TtrghG30Tae
 yyhhpbWOcMBJ05CSnYgQOiOcog8ELEdxV1U6I3B/uUVtSSN49PiNe4EKDNcE1Sa64Z
 gjsvMEs8X6tH8eJsYYRzbuztvp1ab0U+JMWpjPz0yNTaeMX30AFgBOlSrdMvqL8O71
 AkKMDM6anSrCw==
Received: from o365relay-in.synopsys.com (sv2-o365relay1.synopsys.com
 [10.202.1.137])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 11202A005E;
 Thu, 14 Jan 2021 17:51:46 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2048.outbound.protection.outlook.com [104.47.66.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "mail.protection.outlook.com",
 Issuer "GlobalSign Organization Validation CA - SHA256 - G3" (verified OK))
 by o365relay-in.synopsys.com (Postfix) with ESMTPS id 4CDD04009D;
 Thu, 14 Jan 2021 17:51:45 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com;
 dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com;
 spf=pass smtp.mailfrom=vgupta@synopsys.com
Authentication-Results: o365relay-in.synopsys.com; dkim=pass (1024-bit key;
 unprotected) header.d=synopsys.com header.i=@synopsys.com header.b="vv64Uzq9";
 dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XxPv+2s/7ziU5sdAu0pkOaEIPdguruzMqZDdKwiiz3roTcFE9Dg6mECszphK8cvBA2m0sjKEIoVC16t+6NisF4GMgond1HzfBmTzeToyGIjNXMJ5suqNcEaGqqtZs9qmjuynZGCPn7x1PPCK8clhFBx7JDc59weKFI6yYy0rEsrPxtdpW+wU9YfjKwCsZ0HtdPnwa+89VvSiTt2OM10CzctpSc+cjVaF+8KIcesAhysqa/gXSKwE41wMJBdUikLnfXJ3Ek1wOEGthU5/X4zcJGMldlya9uLTFQYsChFEHipO7frak8gdNwEpxy//Hkv9Wcz601LQDeRPT3RL0orhkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bp3TEd4ezresERKVRPtKd99/oMoLsRvoKgwcJ3hQ6vs=;
 b=GGry112KIBRJUQIrJCQ5POY18DPozXEGCS8WSG418eP6tR0J1xB1CpRGaT0fc5yCnMytWttzerx53n22z/E/BW/n8vnUHDjPwue6XPFY3WSU2n9PTXVcDbVeZR2nwMwPYUyn3CYOWaXhHxo8q5z4ylVFeiDiYvI8hAxDIaYO2Oa+p25Df5w4pjRiHCGBn2fkB1Uj1OskU7BmeDwjxIESCu2lSphquZYjmHLik3x4+Bvx7vjHQxnpp3JmIeijC7/1npun+od+XvjefS/agtllqEWJO9vxDXfWFoqSVBUA2jW9OPDkxRo3LqobslYS0iO/gZ2wCrjP9aFXbqCrflBlpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bp3TEd4ezresERKVRPtKd99/oMoLsRvoKgwcJ3hQ6vs=;
 b=vv64Uzq9AKJy0s2d82+q07HCrTQuIp84hlVlUBYyRk7lOpJ35+sD7GTgeFb0Yi5gPBvXaDuLj6o0IOwaAzWKCv9MybOeKlo2CEaeSljZzQQGaxgSyFpkzQgIeWpGrE4abP/c7GRrBheW59vlR4HxyMs+fPzzbua7tMnzM2kmk4k=
Received: from BYAPR12MB3479.namprd12.prod.outlook.com (2603:10b6:a03:dc::26)
 by BY5PR12MB3938.namprd12.prod.outlook.com (2603:10b6:a03:1af::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Thu, 14 Jan
 2021 17:51:44 +0000
Received: from BYAPR12MB3479.namprd12.prod.outlook.com
 ([fe80::c0e3:82e9:33d2:9981]) by BYAPR12MB3479.namprd12.prod.outlook.com
 ([fe80::c0e3:82e9:33d2:9981%6]) with mapi id 15.20.3763.009; Thu, 14 Jan 2021
 17:51:44 +0000
X-SNPS-Relay: synopsys.com
From: Vineet Gupta <Vineet.Gupta1@synopsys.com>
To: Viresh Kumar <viresh.kumar@linaro.org>, Linus Torvalds
 <torvalds@linux-foundation.org>, Robert Richter <rric@kernel.org>
Subject: Re: [PATCH 03/18] arch: arc: Remove CONFIG_OPROFILE support
Thread-Topic: [PATCH 03/18] arch: arc: Remove CONFIG_OPROFILE support
Thread-Index: AQHW6mlotr+A3oQG8UiqEMDd75ryJaonZwOA
Date: Thu, 14 Jan 2021 17:51:44 +0000
Message-ID: <16e1ec02-e6da-b49d-ee21-c98660605cf8@synopsys.com>
References: <cover.1610622251.git.viresh.kumar@linaro.org>
 <906d9d40746bb1b60823a288d00820cb50d29138.1610622251.git.viresh.kumar@linaro.org>
In-Reply-To: <906d9d40746bb1b60823a288d00820cb50d29138.1610622251.git.viresh.kumar@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
authentication-results: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none header.from=synopsys.com;
x-originating-ip: [24.4.73.83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c33db4fa-50fe-4119-cf27-08d8b8b50e6e
x-ms-traffictypediagnostic: BY5PR12MB3938:
x-microsoft-antispam-prvs: <BY5PR12MB393869FA9E9ECA3DC595AF10B6A80@BY5PR12MB3938.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +DhvgWN6sV9fSG6af5oS6iZae1caYXvPGBx19rDM8WwolH4mBj485IuErwo3ORYlimsQwuIAH1nCeEq/ZAaipmjxlnQ3yN9jBVGnH+eNdUyqrHxmVma328RRgMrawsu9KR49O1Uddrijnf+ZujWWLUajRYtj9xgWTGKds8oEICajuwvXTGkmgSTpORXBREh72Ha4fiI6SNwo81gaOvc5W747WOi1/WxQQRksF/Mp6+WoCf8nyul7ccIBCFr8X5k9BbOqOlpdi8JyvbxJ59hYaiQDyPgDAJ389jqCMt9jW233xKXTpMVvaYl38029XuQCFGAaYAGqbQhrGUqmvQZ2q26v/LTaEux1Ble8wRcjwuDb1Kmw8HTF1MgvIomtcEklwK+ZAtMfR1SdiP6fxCjReEVzUPAyVhjZtQwArypSVarm8yYcOmk1XK2rMGxOTgMrV7ArBzAJugCyULmuB0Xp2WbtBtZlTf1P5WFJMJ2m7JSn7upCZGyTCBoYvoDihypyJbJbOZ7cKobqyHDWkJKADCiUpB7V5K5K+GI8fx8T5MSfIe/B94nx2mx1GG4lQuW+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB3479.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(39860400002)(376002)(396003)(366004)(346002)(186003)(478600001)(64756008)(53546011)(7416002)(6506007)(76116006)(66476007)(316002)(66446008)(8676002)(66556008)(110136005)(4326008)(86362001)(31686004)(6512007)(6486002)(83380400001)(2616005)(5660300002)(8936002)(26005)(36756003)(66946007)(2906002)(71200400001)(54906003)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?VDNlV3d5Z3VYU2pMb2xJZno0LzhURUtoK2lVOWhyL2ZvK2ptYTJEQmxZczNN?=
 =?utf-8?B?UjdLN1h6bndBL3NDV2JRNXQrWHdpakVmbVoyNXB0RUJXbEZ1UnN3YWFmTkpx?=
 =?utf-8?B?dzFSZHkybTNWc3NXZGZranN3Z0s1cFlCZDMza0JjL3piNFQxY0k2L0ljR3lR?=
 =?utf-8?B?ZWRQbm1sUFVWRnBQMjF0UWdoNXp0Q0pLMURQdkFDdHRZTERRM29RKzZrMDJ5?=
 =?utf-8?B?eGYvODkxYXlDcVZNOExTeTV3VGlUK2ZCQkN1SUJxTERsNVlyU2tEdGZTY2hJ?=
 =?utf-8?B?ZVNrdktyVXFNMEVHa0V5SCtnN0o1aGRZdVo4YkMwSXhHdHhsdWJwemd0MXVl?=
 =?utf-8?B?cDZMMHVFM0Y4dlRPZTFmdHdIWUlrcUYzZ3RhcU14NXFmNXBOMTNuSmRoeG5j?=
 =?utf-8?B?N0lmYjVpSkpOVWppZ0hWVVY2eXZWbkVCY1JtUTd1dEtPMmxJbXlLVStEVnVp?=
 =?utf-8?B?dWxXR1RjNXFibFVzUlNJbXVkNFpGbUxDcnd0RS9tYVRFeVlUNWxRREpCckE4?=
 =?utf-8?B?RWFXRVM1bzlnQUlZNUFuQ0I2OXhlWUVzaTQyZGdkQmFlUXh5bVU2NWNIQ3VL?=
 =?utf-8?B?SFNyN1ZuVkxaaFFGd3Q1eG1rdVI5U2VoRUIrOTdUN3dtWHpYWnlRNjgya2dD?=
 =?utf-8?B?NFYzZWhJNTQ1WmFBVmttUDBsNFRRa2NxSmRPVFNKVmdCd3F1YVZlekppMDZB?=
 =?utf-8?B?OFlHUHU4STlmaC9qUTI2N3Q1WlVOZzUwMllJa0Vud2xiRDJ2dGc1d0tXODNh?=
 =?utf-8?B?YStwZVNweHhsdXh3QnBUQXJhQWR4dmI3L3o1b0xXY25UT3BsZDFUUzVLb1pv?=
 =?utf-8?B?d01EWHI2V3RRSkRyeDVPZXdLZHFBZWV1dGVTYW0vTnpNVHVHV1BLd0hnQW52?=
 =?utf-8?B?RVFvK1UzazhuTThJVWVKek51R04yRU5qQWdVcEo5SVBDKzNKd2tRdFpmbStl?=
 =?utf-8?B?QUlWU2xYL1k4SU1wOUpzUTZiQ0xjVzlxMWQvUTRycXd2a212aTVFdUxGNElC?=
 =?utf-8?B?L2xLc01yRkxmV2JpUmpzQ24wUXJUem03VUE4UHdMTzl3b1Y4MW9sa2t2N0VS?=
 =?utf-8?B?d1owTXBGaVJnWkNYSG9KdTdEYk9GZlhMZkpnQU9kZHI1OWlxVzcwZWVXRUJ3?=
 =?utf-8?B?TlREYk9tWFlucWNhNEMzMmVsZHRhUlRxMFc3cllXV1FzVS91TjN2WWtsRzY5?=
 =?utf-8?B?SHNicUNyeFpUU29GeTVoMGRKd2xhQ3NHSVdyQUNrL3AyRlRlTHFqS2JCQm1r?=
 =?utf-8?B?WXQ0WFVaY2MydjhBTVZwSm54VVpMUFZ1bG52R1RBZTNselgwV1lUUEhmNVZv?=
 =?utf-8?Q?XEqghdENDhwdU=3D?=
x-ms-exchange-transport-forked: True
Content-ID: <F0D7618E4D2D2C498895ABF6B765E8CF@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB3479.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c33db4fa-50fe-4119-cf27-08d8b8b50e6e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2021 17:51:44.3029 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XdQNd6RNtn+aKD53koscM2Hibozsolw+J9bNlwSAt0MkfNcAfqZb+/15Ul+RS2hik+SP6L01enf3LtSLD4TpCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB3938
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: movementarian.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: movementarian.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [149.117.73.133 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1l074A-009mjb-5m
X-Mailman-Approved-At: Thu, 14 Jan 2021 18:54:39 +0000
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
Cc: Arnd Bergmann <arnd@kernel.org>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Christoph Hellwig <hch@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "anmar.oueja@linaro.org" <anmar.oueja@linaro.org>,
 "oprofile-list@lists.sf.net" <oprofile-list@lists.sf.net>,
 Alexander Viro <viro@zeniv.linux.org.uk>, William Cohen <wcohen@redhat.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On 1/14/21 3:35 AM, Viresh Kumar wrote:
> The "oprofile" user-space tools don't use the kernel OPROFILE support
> any more, and haven't in a long time. User-space has been converted to
> the perf interfaces.
>
> Remove the old oprofile's architecture specific support.
>
> Suggested-by: Christoph Hellwig <hch@infradead.org>
> Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>

Acked-by: Vineet Gupta <vgupta@synopsys.com>

I presume this doesn't need to go through ARC tree.

-Vineet

> ---
>   arch/arc/Kconfig           |  1 -
>   arch/arc/Makefile          |  2 --
>   arch/arc/oprofile/Makefile | 10 ----------
>   arch/arc/oprofile/common.c | 23 -----------------------
>   4 files changed, 36 deletions(-)
>   delete mode 100644 arch/arc/oprofile/Makefile
>   delete mode 100644 arch/arc/oprofile/common.c
>
> diff --git a/arch/arc/Kconfig b/arch/arc/Kconfig
> index b55ca77f619b..bc8d6aecfbbd 100644
> --- a/arch/arc/Kconfig
> +++ b/arch/arc/Kconfig
> @@ -37,7 +37,6 @@ config ARC
>   	select HAVE_KPROBES
>   	select HAVE_KRETPROBES
>   	select HAVE_MOD_ARCH_SPECIFIC
> -	select HAVE_OPROFILE
>   	select HAVE_PERF_EVENTS
>   	select HANDLE_DOMAIN_IRQ
>   	select IRQ_DOMAIN
> diff --git a/arch/arc/Makefile b/arch/arc/Makefile
> index 578bdbbb0fa7..4392c9c189c4 100644
> --- a/arch/arc/Makefile
> +++ b/arch/arc/Makefile
> @@ -96,8 +96,6 @@ core-$(CONFIG_ARC_PLAT_TB10X)	+= arch/arc/plat-tb10x/
>   core-$(CONFIG_ARC_PLAT_AXS10X)	+= arch/arc/plat-axs10x/
>   core-$(CONFIG_ARC_SOC_HSDK)	+= arch/arc/plat-hsdk/
>   
> -drivers-$(CONFIG_OPROFILE)	+= arch/arc/oprofile/
> -
>   libs-y		+= arch/arc/lib/ $(LIBGCC)
>   
>   boot		:= arch/arc/boot
> diff --git a/arch/arc/oprofile/Makefile b/arch/arc/oprofile/Makefile
> deleted file mode 100644
> index 698367bb41d0..000000000000
> --- a/arch/arc/oprofile/Makefile
> +++ /dev/null
> @@ -1,10 +0,0 @@
> -# SPDX-License-Identifier: GPL-2.0
> -obj-$(CONFIG_OPROFILE) += oprofile.o
> -
> -DRIVER_OBJS = $(addprefix ../../../drivers/oprofile/, \
> -		oprof.o cpu_buffer.o buffer_sync.o \
> -		event_buffer.o oprofile_files.o \
> -		oprofilefs.o oprofile_stats.o \
> -		timer_int.o )
> -
> -oprofile-y	:= $(DRIVER_OBJS) common.o
> diff --git a/arch/arc/oprofile/common.c b/arch/arc/oprofile/common.c
> deleted file mode 100644
> index 86bf5899533b..000000000000
> --- a/arch/arc/oprofile/common.c
> +++ /dev/null
> @@ -1,23 +0,0 @@
> -// SPDX-License-Identifier: GPL-2.0-only
> -/*
> - * Copyright (C) 2004, 2007-2010, 2011-2012 Synopsys, Inc. (www.synopsys.com)
> - *
> - * Based on orig code from @author John Levon <levon@movementarian.org>
> - */
> -
> -#include <linux/oprofile.h>
> -#include <linux/perf_event.h>
> -
> -int __init oprofile_arch_init(struct oprofile_operations *ops)
> -{
> -	/*
> -	 * A failure here, forces oprofile core to switch to Timer based PC
> -	 * sampling, which will happen if say perf is not enabled/available
> -	 */
> -	return oprofile_perf_init(ops);
> -}
> -
> -void oprofile_arch_exit(void)
> -{
> -	oprofile_perf_exit();
> -}


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
