Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 279479EB949
	for <lists+oprofile-list@lfdr.de>; Tue, 10 Dec 2024 19:25:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1tL4vT-0001PD-Vr;
	Tue, 10 Dec 2024 18:25:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wcohen@redhat.com>) id 1tL4vS-0001P6-GS
 for oprofile-list@lists.sourceforge.net;
 Tue, 10 Dec 2024 18:25:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:Cc:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rFEFxC2DjYlEmYeB8dqcVhliNvbO2NdFGQyR6ltqGDY=; b=Ia3fTyk5YNc/MY7uHLIUpKuJe6
 I6hHK0WlStvB0xXUoZCUCggUtx4NeozpG2XbcVmlN2X0KWGbEQaz/Wslv0fvHTf56vH+mUr3lGsuB
 o8hW7eOUbzs18B3uJgVQlhcsTk2lLypQrhBBw4iJ0ZuCNHo0sjWKVuLIrc/vpW7FO4wI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:Cc:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rFEFxC2DjYlEmYeB8dqcVhliNvbO2NdFGQyR6ltqGDY=; b=fErl+3fIAo+Lc3+wOVxfgNUZt9
 OJ6bcURFFnuiWuc1GCrHyajFNn7DyxqIp30jawKwGUmNNon6qKoD6J3X+G+4sgDxjrlkFK6NgFszO
 mFmmhWsT1zJfDHOucNQ26gwHDjYQxOTjNZNfCRgc5c7Q2KWxecm5IzDb+wqJ59H4W2Yg=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tL4vQ-0003gE-7j for oprofile-list@lists.sourceforge.net;
 Tue, 10 Dec 2024 18:25:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1733855125;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rFEFxC2DjYlEmYeB8dqcVhliNvbO2NdFGQyR6ltqGDY=;
 b=gNHxjJ4xlthGLeBoDS93W7WDMz412lw0lEQHzn3dF4lQy3rYOZbMsxruVSNi1Fjjxt2bWT
 6JPOc1UUViYwYrCMPjY3ad3UTUeiBhv++Wgvdw9nk+Ow2NhRsfmi2ur0Mtb4NDf/IsYSfT
 cu50WsWqtjksEVG0UYCq80i+SS/onCc=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-529-1E5EMp6HN26e5066wMdsew-1; Tue,
 10 Dec 2024 13:09:39 -0500
X-MC-Unique: 1E5EMp6HN26e5066wMdsew-1
X-Mimecast-MFC-AGG-ID: 1E5EMp6HN26e5066wMdsew
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id A0B401953957; Tue, 10 Dec 2024 18:09:38 +0000 (UTC)
Received: from [10.22.88.89] (unknown [10.22.88.89])
 by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 08B6B1956089; Tue, 10 Dec 2024 18:09:37 +0000 (UTC)
Message-ID: <efbb60c7-a150-4118-a832-3bb905c34a34@redhat.com>
Date: Tue, 10 Dec 2024 13:09:36 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] Add Broadcom Brahma-B53 CPU implementor and part number
To: Florian Fainelli <florian.fainelli@broadcom.com>
References: <20241210000228.1992992-1-florian.fainelli@broadcom.com>
From: William Cohen <wcohen@redhat.com>
In-Reply-To: <20241210000228.1992992-1-florian.fainelli@broadcom.com>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: hlgU_Q1A03EpKRrBw8KggW23K4DdyJ6FwXcRzoWnZCQ_1733854178
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 12/9/24 19:02,
 Florian Fainelli wrote: > Broadcom's Brahma-B53
 CPU features a PMU which is 100% software > compatible with those found on
 Cortex-A53 designs. Add the required > code to recognize th [...] 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.129.124 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [170.10.129.124 listed in sa-accredit.habeas.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tL4vQ-0003gE-7j
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
Cc: wcohen@redhat.com, oprofile-list@lists.sf.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On 12/9/24 19:02, Florian Fainelli wrote:
> Broadcom's Brahma-B53 CPU features a PMU which is 100% software
> compatible with those found on Cortex-A53 designs. Add the required
> code to recognize the implementor id (0x42) and the Brahma-B53 part
> number (0x100) and return "arm/armv8-ca53" so we can utilize the PMU.
> 
> Signed-off-by: Florian Fainelli <florian.fainelli@broadcom.com>
> ---
>  libop/op_cpu_type.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/libop/op_cpu_type.c b/libop/op_cpu_type.c
> index 3aab4a2d418d..69e9098cf516 100644
> --- a/libop/op_cpu_type.c
> +++ b/libop/op_cpu_type.c
> @@ -430,6 +430,8 @@ static op_cpu _get_arm_cpu_type(void)
>  		switch (cpuid) {
>  		case 0x00f:
>  			return op_get_cpu_number("arm/armv7-ca15");
> +		case 0x100:
> +			return op_get_cpu_number("arm/armv8-ca53");
>  		case 0x516:
>  			return op_get_cpu_number("arm/armv8-thunderx2");
>  		}

Hi,

The patch looks reasonable and it has been merged into the upstream oprofile git master repository.

-Will



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
