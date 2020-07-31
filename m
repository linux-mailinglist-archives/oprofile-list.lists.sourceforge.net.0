Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCC4234AE4
	for <lists+oprofile-list@lfdr.de>; Fri, 31 Jul 2020 20:27:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1k1ZkC-0008Ea-DU; Fri, 31 Jul 2020 18:27:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <johnlumby@hotmail.com>) id 1k1X1T-0004YL-Dm
 for oprofile-list@lists.sourceforge.net; Fri, 31 Jul 2020 15:32:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NTdtT1BZotdrjlZ7yVuiZcEPtpuqbMRop7QC6kD5Ik0=; b=Doe+aQYG1Iobd/1VUPcg5jHEpS
 WwbZeasIBduxQKpBaAPcR/BfJNmxnQqMzUNlEwSQf9ONfUfs1smyHRvT+8nq7RkzjK5OC/ATWNQiu
 9FBJY6Tjw3+prDpn2StUa9mE6Z5d/nkjNgxUjJfuqFXlOVn31yX/7OMXKRl2uPNMgXqo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NTdtT1BZotdrjlZ7yVuiZcEPtpuqbMRop7QC6kD5Ik0=; b=RSoO7ZTHQNQKBuKYt0WD3mapFm
 Jw9WqwgJ55K2MIXccBp28KCe5ejGnbGOpUk1F9k/eq323S5zr7gkYwEzNPdJqLQoaaG+o6KxlGBhD
 9tBhx43cAsDCugdzYDNsej/wQLh7Rq8Bi/Eut0BUETIoGj4qdw3EcP7pERNTG4qeIs4s=;
Received: from mail-bn8nam12olkn2068.outbound.protection.outlook.com
 ([40.92.21.68] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k1X1O-005Meh-T9
 for oprofile-list@lists.sourceforge.net; Fri, 31 Jul 2020 15:32:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n3hvj+yX3f2veVkxVFMMxVSaywmiI2XABC27oDW+bCt1cyDxPW1hWE3u/doQ7/bKKi8WnsOcnAuGwnoY0wrH9nQixeFrRrkz0wVtAeBMFvk5UlcbvBr1cODXyUQkGedAxzQRT8Wj6Kid9IXDTQlpOz0YQ0AvIINA/qLPhyNkLnBUx1Dx56XhFUGPX1X8AMAhY0Ij4YPRcAVfFY/KJGs9gUT9LKvY7h270pdord0EsAUivZj4gPMXbcegB1DYaI7hEpQmLJSvWeKAwFOoAjnxtze4tyA4zZ4/tg+aitp4NVnryR+IG3ybqVPPB4wkstON79/vHu5Q5J/UAaLB6rLgAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NTdtT1BZotdrjlZ7yVuiZcEPtpuqbMRop7QC6kD5Ik0=;
 b=jYd/9pS/TEg82agdqIvOksyvrmsC3t5M/hdZYZ39Cop45NTJLSyHHa9m0DDRUJC33U8tlo2rJjnx2HvO+yeqdq1iNjEhXew6ULOo/GLfY4vhoClOz0hMsfBuwCJOSLkECPFvMmYFPoQ0nmL3Z2iRBKAgd0tR+Midz/mjeXaI9zFv7tNmg/zDV6oLYjvc87UniaxHeVVeSCt3vk3XBKHO5zWzFrhwirc+WxA2Vm5DcO7Tli/Fg8iRFtlbwRt1I/LI5CoV4h+U4oeUTs/O0341TUGsKzk0kbIKDcrwTZ4A64GpbrsouqXCCR9jel6E4UAiYDHws87b7i5X2qAXQEQwgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NTdtT1BZotdrjlZ7yVuiZcEPtpuqbMRop7QC6kD5Ik0=;
 b=JI/S/hC7/10SQJJlr1qnvvuYn7G2+fKU8LS7edW85jTruReal17O+zXZARfUUYVL8AfqhQkBYF3NfxJGV3uzqRqn8EHRa+kQJmy4j+92JeBYPUzywXntK34ZsgHighsJyMsdP3rBjOqwa1YWJtQoqiwLYV8pXehUPt/zl0jjboAnT4edFTPflx4KcSAVR9u3OyMoaTyBsOqoEJRxHDNMomC7orAqGvVJIyw/Qm9xFIn8Y3VOCWJwV62JDhdvCEnp7dBsriNnYlmPTwF/15n0IEt2hsaPnTmkRqRoOLMmsyEfJCebQF/fU8T/ebguGe3kFav39JpgZSxkNSun62Vsvw==
Received: from DM6NAM12FT026.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc64::48) by
 DM6NAM12HT028.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc64::382)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.14; Fri, 31 Jul
 2020 15:32:28 +0000
Received: from DM6PR06MB5562.namprd06.prod.outlook.com
 (2a01:111:e400:fc64::45) by DM6NAM12FT026.mail.protection.outlook.com
 (2a01:111:e400:fc64::475) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.14 via Frontend
 Transport; Fri, 31 Jul 2020 15:32:28 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:D07DB4825EDB612008DAF3C191D23434685F9873E1442137488C39F8A7187295;
 UpperCasedChecksum:2E73BC73BBE3377B401EA342E958567F07315B3EC293138AC7550E27C716B748;
 SizeAsReceived:9117; Count:47
Received: from DM6PR06MB5562.namprd06.prod.outlook.com
 ([fe80::8d37:b8a9:bb0:624d]) by DM6PR06MB5562.namprd06.prod.outlook.com
 ([fe80::8d37:b8a9:bb0:624d%3]) with mapi id 15.20.3239.019; Fri, 31 Jul 2020
 15:32:28 +0000
Subject: Re: samples lost due to no permanent mapping and no file mapping
To: William Cohen <wcohen@redhat.com>, oprofile-list@lists.sourceforge.net
References: <DM6PR06MB5562A262A03E919CEFBCA3C1A3780@DM6PR06MB5562.namprd06.prod.outlook.com>
 <2ae5d919-c1b6-556a-803c-dd269ce6855a@redhat.com>
 <DM6PR06MB55625E86C64B60DCEF775BA6A3780@DM6PR06MB5562.namprd06.prod.outlook.com>
 <DM6PR06MB5562226C0020B732B8447FA6A3770@DM6PR06MB5562.namprd06.prod.outlook.com>
 <ad063653-752c-f1c3-bd22-bee6923def58@redhat.com>
From: John Lumby <johnlumby@hotmail.com>
Message-ID: <DM6PR06MB556219085B146E8BE758A970A34E0@DM6PR06MB5562.namprd06.prod.outlook.com>
Date: Fri, 31 Jul 2020 11:32:47 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
In-Reply-To: <ad063653-752c-f1c3-bd22-bee6923def58@redhat.com>
X-ClientProxiedBy: YTXPR0101CA0026.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b00::39) To DM6PR06MB5562.namprd06.prod.outlook.com
 (2603:10b6:5:3e::12)
X-Microsoft-Original-Message-ID: <4c6d44bf-2a33-654a-ae95-90e0485f8811@hotmail.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from tulipsofwhite.net (2607:f2c0:eed0:1c15:211:aff:fe00:5253) by
 YTXPR0101CA0026.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b00::39) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.3239.17 via Frontend Transport; Fri, 31 Jul 2020 15:32:27 +0000
X-Microsoft-Original-Message-ID: <4c6d44bf-2a33-654a-ae95-90e0485f8811@hotmail.com>
X-TMN: [ciS6HMA7PM6QrhKtdNNvCyakzkkY8+a6lmgBup3IGV87/yleecCunTylL1j8y/w8]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 47
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: ec2495ec-54c6-40d1-7544-08d83566eead
X-MS-TrafficTypeDiagnostic: DM6NAM12HT028:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PyoAaK4zMvG6WSDNSKF8z2tXFXryPnLE97PeowwcfXd4I/gFx6EBt2G9rh0bvhtcgKPs2Ewt5Dt1tYCEo6pRdzXxFKVFTA6FiR60KuB+pU/AnRTLjFDmEXfQbtshytLJ2iAgczS7nXV1aUrWv/wO3RSVhcDANIlt1gsbxzsI2BgD1nhXgxcaBKfWp3iH17FOVE7gI7N+2PfUNLGWUNpPbg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR06MB5562.namprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: bYQvAt0x9p7QM7Gl/eaMnSDNfs8wKcPVOCwARRS47iqPC0ibDpHDWAi1dUlBLuI3BrQlMkZ18lFS1KLXuy0oJVIqCratrhmh9PiG4LhrKuChLBPRO05HEq0oGQzDKw2p3AgUga5l5KiHBCRhN9JIt2ISCaK9Pe/WyRKTF+BPBmpTXLO8Z5Fy/1MTVGgR5eXL7dO4MMtyjSskRKHF5ehx2g==
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec2495ec-54c6-40d1-7544-08d83566eead
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2020 15:32:28.7352 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM12FT026.eop-nam12.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT028
X-Spam-Score: 2.0 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (johnlumby[at]hotmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.92.21.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.21.68 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.2 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address, but no 'Received:'
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 NICE_REPLY_A           Looks like a legit reply (A)
 1.6 FORGED_MUA_MOZILLA     Forged mail pretending to be from Mozilla
X-Headers-End: 1k1X1O-005Meh-T9
X-Mailman-Approved-At: Fri, 31 Jul 2020 18:26:58 +0000
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On 07/28/20 17:00, William Cohen wrote:
>
> One though is how exactly are you starting doing the profiling?  Like the the following:
>
> operf <command_to_profile>
>
> Or attaching to a running process?
>
> operf --pid <pid>
>
> Or doing systemwide monitoring with --system-wide?

Thanks William,  my operf command is

operf --vmlinux /mnt/bullbild/linux-5.7.4-bullarch/vmlinux 
--session-dir=/tmp/oprof_session.200724_120854 --callgraph 
--separate-cpu --system-wide

so yes,  system-wide.
>
> You might check to see if the linux perf command has a similar problem with the quick spawn and death of processes.
> operf is using the same mechanism in the kernel to collect performance event samples.  There are some cases where the scanning of /proc can get behind the rapid creation and death of processes.  It would be useful to know if the problem lies with oprofile or is also seen in perf.
I will try with perf some time but have never used that before (did not 
know about it) so may be a little while getting to it.

Cheers,  John



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
