Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3F6262F52
	for <lists+oprofile-list@lfdr.de>; Wed,  9 Sep 2020 15:49:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1kG0TE-0005e7-Pm; Wed, 09 Sep 2020 13:49:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <martin.petersen@oracle.com>) id 1kFqeO-0004Qm-Oy
 for oprofile-list@lists.sourceforge.net; Wed, 09 Sep 2020 03:20:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vtum29krzlUsLIvRnyVxjLuvhWBtLTr/qnU9AvnGbCE=; b=AdO3sYCG0SA/ORjqTm+HHMmp1d
 EeSp7V3AHg5sM3biMp8FfLfXHKifLuDFlDK65JGlNPTz8vAxaBVY5C28dnWE4WmaVsvpXc0tkAMDk
 d/5Ywk+UtwjHUU7D57FOUpoQa8Q/nIy0BroZjndgF+1UbYCLk05DYccnw9/R22Y2xyYI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vtum29krzlUsLIvRnyVxjLuvhWBtLTr/qnU9AvnGbCE=; b=YGUFk97Xeiqho2DxkXrG8Te8YG
 BPai7T6iA+hYIqKA3h+p/MWJfKfJuq6pgCCxUwjNrnjlNkmiWwHiBDGmfnGF4zE9XfnOAWMCdRY1h
 O849Zr1RzKPo8EUI157InJMLS9cS4Gci37aJ5Bj0K0Jlnk0rqawM8snnVR0We2xEHmxE=;
Received: from aserp2120.oracle.com ([141.146.126.78])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kFqeH-0001Y4-D7
 for oprofile-list@lists.sourceforge.net; Wed, 09 Sep 2020 03:20:00 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0892AS5c094075;
 Wed, 9 Sep 2020 02:11:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=vtum29krzlUsLIvRnyVxjLuvhWBtLTr/qnU9AvnGbCE=;
 b=xBu1bvtfDZ9503xniraz9muXI2Eg0qhYCYcOf6RobuyNUO3o1Po7XLCiySpH1j3NqLzx
 2jgXXHktcetcwXVddyuNr8Y2tEFe3S1Fic84p/c7b/8cWZhzNvssHJn72rt+zNyDQI3g
 W6nGbDQrnBPjzFv3JHhmeBC2Lng7TyLH4twd3n8hvyY34Y8B6srBiufkC1dha4TbTt8U
 iYM7VJ+79F4uaHjvVJydS3mD7NcVtBky/+GEZFGwxEWNcRrsg0F0s6PbT0Xh+BU3JioS
 8YO2a/M76MlnuYxeGIlhqTuBmwNwX5juOavRg+aCtHeGvwObjWNA43YKkCVKSbI3nWmM bw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 33c2mkxvtd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 09 Sep 2020 02:11:40 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 089252Ah095301;
 Wed, 9 Sep 2020 02:09:40 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 33cmk53euj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Sep 2020 02:09:40 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 08929Zlw022818;
 Wed, 9 Sep 2020 02:09:35 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 08 Sep 2020 19:09:35 -0700
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: linuxppc-dev@lists.ozlabs.org, linux-ide@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-hwmon@vger.kernel.org,
 Joe Perches <joe@perches.com>, oprofile-list@lists.sf.net,
 linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, drbd-dev@tron.linbit.com,
 intel-gfx@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-input@vger.kernel.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, reiserfs-devel@vger.kernel.org,
 linux-bcache@vger.kernel.org, Jiri Kosina <trivial@kernel.org>
Subject: Re: [PATCH 00/29] treewide: Convert comma separated statements
Date: Tue,  8 Sep 2020 22:09:14 -0400
Message-Id: <159961731707.5787.13988542229153933257.b4-ty@oracle.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <cover.1598331148.git.joe@perches.com>
References: <cover.1598331148.git.joe@perches.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9738
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 malwarescore=0 phishscore=0
 mlxlogscore=999 bulkscore=0 adultscore=0 mlxscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009090018
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9738
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 priorityscore=1501
 phishscore=0 adultscore=0 bulkscore=0 clxscore=1011 mlxlogscore=999
 malwarescore=0 suspectscore=0 lowpriorityscore=0 spamscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009090018
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1kFqeH-0001Y4-D7
X-Mailman-Approved-At: Wed, 09 Sep 2020 13:49:07 +0000
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 linux-fbdev@vger.kernel.org, linux-ia64@vger.kernel.org,
 linux-scsi@vger.kernel.org, "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-doc@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-kselftest@vger.kernel.org,
 linux-alpha@vger.kernel.org, sparclinux@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Mon, 24 Aug 2020 21:55:57 -0700, Joe Perches wrote:

> There are many comma separated statements in the kernel.
> See:https://lore.kernel.org/lkml/alpine.DEB.2.22.394.2008201856110.2524@hadrien/
> 
> Convert the comma separated statements that are in if/do/while blocks
> to use braces and semicolons.
> 
> Many comma separated statements still exist but those are changes for
> another day.
> 
> [...]

Applied to 5.10/scsi-queue, thanks!

[01/29] coding-style.rst: Avoid comma statements
        (no commit info)
[02/29] alpha: Avoid comma separated statements
        (no commit info)
[03/29] ia64: Avoid comma separated statements
        (no commit info)
[04/29] sparc: Avoid comma separated statements
        (no commit info)
[05/29] ata: Avoid comma separated statements
        (no commit info)
[06/29] drbd: Avoid comma separated statements
        (no commit info)
[07/29] lp: Avoid comma separated statements
        (no commit info)
[08/29] dma-buf: Avoid comma separated statements
        (no commit info)
[09/29] drm/gma500: Avoid comma separated statements
        (no commit info)
[10/29] drm/i915: Avoid comma separated statements
        (no commit info)
[11/29] hwmon: (scmi-hwmon): Avoid comma separated statements
        (no commit info)
[12/29] Input: MT - Avoid comma separated statements
        (no commit info)
[13/29] bcache: Avoid comma separated statements
        (no commit info)
[14/29] media: Avoid comma separated statements
        (no commit info)
[15/29] mtd: Avoid comma separated statements
        (no commit info)
[16/29] 8390: Avoid comma separated statements
        (no commit info)
[17/29] fs_enet: Avoid comma separated statements
        (no commit info)
[18/29] wan: sbni: Avoid comma separated statements
        (no commit info)
[19/29] s390/tty3270: Avoid comma separated statements
        (no commit info)
[20/29] scsi: arm: Avoid comma separated statements
        https://git.kernel.org/mkp/scsi/c/a08a07326510
[21/29] media: atomisp: Avoid comma separated statements
        (no commit info)
[22/29] video: fbdev: Avoid comma separated statements
        (no commit info)
[23/29] fuse: Avoid comma separated statements
        (no commit info)
[24/29] reiserfs: Avoid comma separated statements
        (no commit info)
[25/29] lib/zlib: Avoid comma separated statements
        (no commit info)
[26/29] lib: zstd: Avoid comma separated statements
        (no commit info)
[27/29] ipv6: fib6: Avoid comma separated statements
        (no commit info)
[28/29] sunrpc: Avoid comma separated statements
        (no commit info)
[29/29] tools: Avoid comma separated statements
        (no commit info)

-- 
Martin K. Petersen	Oracle Linux Engineering


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
