Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 201AA24D75F
	for <lists+oprofile-list@lfdr.de>; Fri, 21 Aug 2020 16:32:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1k985x-0004X2-F7; Fri, 21 Aug 2020 14:32:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Zhe.He@windriver.com>) id 1k93Dk-0000mg-DJ
 for oprofile-list@lists.sourceforge.net; Fri, 21 Aug 2020 09:20:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3mdL0QKGf1VMaxE+yFFiPcOi2C+u5aL005WruikGTZs=; b=Ul1VuDjG5KcrddlVgygGWPNB4+
 6yGFQ4ifJFv+/erzneFrjwcTNQ8nNiUBUVaFc3EKeFyklfpO8hkb3FMSfhdIrh9vMnk72HsWl5s3s
 Vvl8N+r1wucohtcxDRDfEkjGo1GxtMQar5uQGT9w7ltL9RdYMut9d7wWJpbZENuGc2Jc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3mdL0QKGf1VMaxE+yFFiPcOi2C+u5aL005WruikGTZs=; b=adUGIMA3Q8fvMACJgwcaTD+u2E
 efOTgSnR7CkvKXIFYkdinva72/cX5AZNpQAgJIhTC3xvBYS+JKmsOAqUx/+d8Js+TTPctvCOaR1vj
 rX49VJi/8lP6R/rnQadACk2NcEi60oo3AfCStBjc3nVSwl+AF5dAqKuc08MfyO0j0fMA=;
Received: from mail-bn8nam11on2043.outbound.protection.outlook.com
 ([40.107.236.43] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k93Dd-0031DU-D6
 for oprofile-list@lists.sourceforge.net; Fri, 21 Aug 2020 09:20:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kefBkRWNfKeNgghAM2IZFiCbAXNWaADFM4lRTxjfjMSl096Q9qeQbuiGGdzNhKgCjN42T9Vh3MuUE3HCjh48v19Hv2t+J6kKUcQsI+QhgdTdrJx/2rM1kJ8sV1QDaBfY1ZsGNAY01y6fMBPUQgtQ1MnczRJPtJ9Aw8lVHwJjSme4Hv8yuOaLEACONGNq7b/nvs88GIlZo3hj4tf6EZJsxHLLpwC+B8/w0KJTeZ7i+YSfUoiLW0TlUDasiMSlOaIwMWgslOg93xSC35ExC8pmFDyP65KvKA/h08OkYvW113+21gWO1qtBh+U0mrL9JH7JJOFeVoIKJP+XTslafP76bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3mdL0QKGf1VMaxE+yFFiPcOi2C+u5aL005WruikGTZs=;
 b=TvuMQYLTHZfnC87ahfV9OZ2kpEtKQJ0qy0bkrmTg+A+z39pava+EWVOsYa6yJUerzITH5Qy80zfOpD4CGaPsPG5ZDv4Z2LctUJven127035C8AelSx0ChUeHphHg8HAJ+rw8ujx/X5TG4YsJYxmTOfzC+U66owhAvFyChPP7qk7T1S24oHMhotlnwnLoNakWJvTOnni7U1CZil9ujTEnLylTItl/PWEXjTSIj5f7+RlzTVRifcSWloe/YZ03Pj2ONFplp3vzm/cMEWWKJD8zkfxLwSVWls0r0YxRGjWLxJzB48/7d9W+blFrMcSMg6B8fuIVSz/tw2bnYaE6hz4yYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3mdL0QKGf1VMaxE+yFFiPcOi2C+u5aL005WruikGTZs=;
 b=e/tTvIsWDbK+l603Nqljm2zQayPC+Qo2l669nrkzSymAKA2qW5Slbea76u6ZvkVT714+K6kn4Bepj/zSjBHZGXDBIipqdtK+tImeyYXIXSj9IBkjc9Uy6N5Jm1pkDKairICnh5Ym3JMxKkq2TRaiLCFBpw1i9tJJA9menph6qYo=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SN6PR11MB3360.namprd11.prod.outlook.com (2603:10b6:805:c8::30)
 by SA0PR11MB4637.namprd11.prod.outlook.com (2603:10b6:806:97::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.24; Fri, 21 Aug
 2020 08:46:46 +0000
Received: from SN6PR11MB3360.namprd11.prod.outlook.com
 ([fe80::4497:4639:274:54d6]) by SN6PR11MB3360.namprd11.prod.outlook.com
 ([fe80::4497:4639:274:54d6%6]) with mapi id 15.20.3305.025; Fri, 21 Aug 2020
 08:46:46 +0000
Subject: Re: [PATCH] mips/oprofile: Fix fallthrough placement
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
References: <20200820125440.350184-1-zhe.he@windriver.com>
 <20200821074821.GD8336@alpha.franken.de>
From: He Zhe <zhe.he@windriver.com>
Message-ID: <5e86b824-4c92-3cfe-fc36-493425e85f2a@windriver.com>
Date: Fri, 21 Aug 2020 16:46:39 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20200821074821.GD8336@alpha.franken.de>
Content-Language: en-US
X-ClientProxiedBy: BYAPR08CA0053.namprd08.prod.outlook.com
 (2603:10b6:a03:117::30) To SN6PR11MB3360.namprd11.prod.outlook.com
 (2603:10b6:805:c8::30)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from 255.255.255.255 (255.255.255.255) by
 BYAPR08CA0053.namprd08.prod.outlook.com (2603:10b6:a03:117::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.25 via Frontend
 Transport; Fri, 21 Aug 2020 08:46:43 +0000
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2101f93d-d5c1-442c-98b9-08d845aebc33
X-MS-TrafficTypeDiagnostic: SA0PR11MB4637:
X-Microsoft-Antispam-PRVS: <SA0PR11MB4637CB95445D9B262D89388F8F5B0@SA0PR11MB4637.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: m7HQOBQyScLygMHiJiB+FNW3l5N4JnJE9pjmQDjOAkmDvEi5D40TM5GHxayKcoJ4DR0xbLm+UvKSVSlJ30qtqg6ANMeaPY6hhAuTYWzpJPwSX6dnPmWEY6tA4FuYCz2o5ljFQvaanXQbLOZOcWX51Gw1dp+4LtCOPMdgRi/nwSSOT8vE7d2FW9Teyz+bZ68poEKeVyg5M3N9lhyJ8YhYcv3XkAKrUMDlN8x4LlIdMO9zj3OMhM9XUSw/10DoI4aZs8CPLcz1nU5XMjVLsQdElh5288qowM0xpkh4eXOF5c0lIdpWshxOZ2wy1AgCnpqFdkpmD/uzb6qnlhvOr7Dh3S9GX/0z0auE5uXG0EsHEXTr6Y5/qWnQRalbgJO7eelzhqUhHUrejC8bz4/3IuhAY2STkLIe3iQV6bsGEBfTWBd08RkpUZDp4hDYPAYQaMr9vKCx2RWCnXETBqCaE8mznFXhOoqUKLE59Ws92BbA9Zo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(136003)(39850400004)(366004)(346002)(376002)(4326008)(31686004)(6486002)(8676002)(16576012)(186003)(2616005)(956004)(316002)(6666004)(8936002)(52116002)(110011004)(2906002)(83380400001)(66476007)(6916009)(53546011)(66946007)(5660300002)(66556008)(86362001)(966005)(36756003)(478600001)(26005)(31696002)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 4j+G2VRhl7QB4uZhuvM7oWx2bPcq14tLuuNTaO/yjdWs6EktAjLBqMjl88AYJCj5bNL+mKEYl1HV8JFg6zWI7QhPtRW070hp+b1w9/GtoKeEIRMSKqFW392TNHkLe3MyZO4LZg8kshkF0wxVXMLJNNw0jq/dq8HWUVOYP4kJG7FenXZRWZjjq5i91WFFR1PWBNNre0/fkveE3rwOVh7oS7kP8fNz42xr5xbUCrDeHZF8O6Uhvdy6bhvqMfrhidn0BXJ1NQ2MD6YAJY1kGlsF5TEyfDFzYy3mOdWkAi3gwzSB8B3Di9NW8W4de9hGFbcJNf35di+tmqIo7Owe8UgDSbJCMWSMEtRHFy9s6A5+AF38ajwc07J6jPDuqduYV7Qk7SaAEDFowSuXIzFgdIPj5xNFBR3U1uXYGKfQY+pUKwf23HnvkXX8/Ot+3h8p7qY9+qNtBCaPPa3w/w+t3LrG52LM4fT4Gc5XG24lDhw4ST+fzRlhUJVpxO3IqODY6FYyjFhdppNJFoM+oSkd4/A0BiQCFjC1v+im1dcy37QtCAZp1cZy3bOfXAeC9oSug/srZGqpATa1pUotGYI4j2IVF+EMx3CEDjk8rXzY54KsOXsd0eMPT4LQSx2girce9YZ6ujr50FXtl92OBn9B6Iiy1Q==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2101f93d-d5c1-442c-98b9-08d845aebc33
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2020 08:46:46.3135 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4L6yCCAbRhmfD44OtLC9+Sm/NdC7A4lgIhHhZYccjF+QoyhDW4jzgoVzR+xkj2/Ttviubfci2GVqjh7iVsNTHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4637
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.3 RCVD_ILLEGAL_IP        Received: contains illegal IP address
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.236.43 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.236.43 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -2.1 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1k93Dd-0031DU-D6
X-Mailman-Approved-At: Fri, 21 Aug 2020 14:32:39 +0000
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
Cc: oprofile-list@lists.sf.net, rric@kernel.org, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net



On 8/21/20 3:48 PM, Thomas Bogendoerfer wrote:
> On Thu, Aug 20, 2020 at 08:54:40PM +0800, zhe.he@windriver.com wrote:
>> From: He Zhe <zhe.he@windriver.com>
>>
>> We want neither
>> "
>> include/linux/compiler_attributes.h:201:41: warning: statement will never
>> be executed [-Wswitch-unreachable]
>>   201 | # define fallthrough __attribute__((__fallthrough__))
>>       |                      ^~~~~~~~~~~~~
>> "
>> nor
>> "
>> include/linux/compiler_attributes.h:201:41: warning: attribute
>> 'fallthrough' not preceding a case label or default label
>>   201 | # define fallthrough __attribute__((__fallthrough__))
>>       |                      ^~~~~~~~~~~~~
>> "
>>
>> It's not worth adding one more macro. Let's simply place the fallthrough
>> in between the expansions.
>>
>> Signed-off-by: He Zhe <zhe.he@windriver.com>
> there is already another patch for the problem, which I've applied
> to mips-fixes.

You mean the below one?
https://git.kernel.org/pub/scm/linux/kernel/git/mips/linux.git/commit/?h=mips-fixes&id=5900acb374fe2f4f42bbcb2c84db64f582d917a1

That patch handles the first warning in my commit log but does not handle the
second one which is introduced since gcc v10.1.0 commit 6c80b1b56dec
("Make more bad uses of fallthrough attribute into pedwarns.").

Zhe

>
> Thomas.
>



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
