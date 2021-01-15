Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0522F7807
	for <lists+oprofile-list@lfdr.de>; Fri, 15 Jan 2021 12:54:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l0NgZ-0001HT-TX; Fri, 15 Jan 2021 11:54:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hca@linux.ibm.com>) id 1l0NEB-0007HD-GD
 for oprofile-list@lists.sourceforge.net; Fri, 15 Jan 2021 11:25:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uMFKz03h1DX2pC5sxsmXxwVVWxuuWyUP4nN3/edQMuI=; b=ZDOh4b8+wjuO9kNEC6POOQZNwS
 PmgxVmG9zQYyJ6P3BqfkssxKu8XFA/w5KQhsf3FT2N3tzMhSvanxm6fNjFbSeUYvbmZiarOYh5pDm
 +mtWannqBYmKx4Xk1o4KtCwQHIKXmhujZxn94u0jG1vqfqEpwCFFL4/+RXZuJxjeVLbU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uMFKz03h1DX2pC5sxsmXxwVVWxuuWyUP4nN3/edQMuI=; b=fE6eF0NPd2dAXTOAMLb+kiLs/C
 HWDt/nBgO0sTTMgH+Q8cnoAx/zkdAcmbY2/wyB7PltHvjaDOq9L7sa6/u1kPyUCoOlOXnrBupsCIU
 mqSmKWdLZfFiBg6O5lCn6IS/a26gZjYjWCRjozsQce1DmxmFeHcPWK8zy8w2VsZSg0BY=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l0NE0-004SRE-4w
 for oprofile-list@lists.sourceforge.net; Fri, 15 Jan 2021 11:25:15 +0000
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 10FAXIKY050288; Fri, 15 Jan 2021 05:35:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=date : from : to : cc :
 subject : message-id : references : mime-version : content-type :
 in-reply-to; s=pp1; bh=uMFKz03h1DX2pC5sxsmXxwVVWxuuWyUP4nN3/edQMuI=;
 b=M47PKe4gtZbrCjLMNeyo+IzV3vyXdPWb5TD2OewNLbkchUgKtzQXISRxnxoYGHj58as0
 TPSOf8gkQIyDELS2xN6rTLjLMxOIzLSlWH47P6BPrxcNFSXjQImjvcDUXUFPcb9GMq8J
 WQVgZHCVD+/EoCeWNF4bvh+bdv463LA5uI0FHf3IuphS78vH+r1kqE6TLTbSNPfZq14U
 2PDyo2hKQ7J3aQN9IGmb5xBy31W7JSboBmo/7EsSzABrPNs3T6yFL3AWhnfc5WG2yXK4
 td07nawRcrKAjehpc1A6o4h/YXAM/WyfjojKziJyoz//w7QXFcM0OzWBeO8Lg1ZFQNIg uQ== 
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 3639cnr324-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 15 Jan 2021 05:35:36 -0500
Received: from m0098410.ppops.net (m0098410.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 10FAXMWG050701;
 Fri, 15 Jan 2021 05:35:36 -0500
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.99])
 by mx0a-001b2d01.pphosted.com with ESMTP id 3639cnr317-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 15 Jan 2021 05:35:36 -0500
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
 by ppma04ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 10FAWVxY030484;
 Fri, 15 Jan 2021 10:35:34 GMT
Received: from b06cxnps4074.portsmouth.uk.ibm.com
 (d06relay11.portsmouth.uk.ibm.com [9.149.109.196])
 by ppma04ams.nl.ibm.com with ESMTP id 35y448fkg0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 15 Jan 2021 10:35:33 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com
 [9.149.105.232])
 by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 10FAZVKB45613484
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 15 Jan 2021 10:35:31 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 1AB2852054;
 Fri, 15 Jan 2021 10:35:31 +0000 (GMT)
Received: from osiris (unknown [9.171.39.233])
 by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTPS id 86FC95204F;
 Fri, 15 Jan 2021 10:35:30 +0000 (GMT)
Date: Fri, 15 Jan 2021 11:35:29 +0100
From: Heiko Carstens <hca@linux.ibm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH 12/18] arch: s390: Remove CONFIG_OPROFILE support
Message-ID: <20210115103529.GA10194@osiris>
References: <cover.1610622251.git.viresh.kumar@linaro.org>
 <d898acaf9320125e9c23b18a16ecd88d70f24170.1610622251.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d898acaf9320125e9c23b18a16ecd88d70f24170.1610622251.git.viresh.kumar@linaro.org>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2021-01-15_06:2021-01-15,
 2021-01-15 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999
 malwarescore=0 mlxscore=0 adultscore=0 spamscore=0 impostorscore=0
 phishscore=0 bulkscore=0 clxscore=1011 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2101150063
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [148.163.156.1 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1l0NE0-004SRE-4w
X-Mailman-Approved-At: Fri, 15 Jan 2021 11:53:41 +0000
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
Cc: Arnd Bergmann <arnd@kernel.org>, Robert Richter <rric@kernel.org>,
 Vasily Gorbik <gor@linux.ibm.com>, Christoph Hellwig <hch@infradead.org>,
 linux-s390@vger.kernel.org, linux-kernel@vger.kernel.org,
 anmar.oueja@linaro.org, Christian Borntraeger <borntraeger@de.ibm.com>,
 oprofile-list@lists.sf.net, Alexander Viro <viro@zeniv.linux.org.uk>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 William Cohen <wcohen@redhat.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Thu, Jan 14, 2021 at 05:05:25PM +0530, Viresh Kumar wrote:
> The "oprofile" user-space tools don't use the kernel OPROFILE support
> any more, and haven't in a long time. User-space has been converted to
> the perf interfaces.
> 
> Remove the old oprofile's architecture specific support.
> 
> Suggested-by: Christoph Hellwig <hch@infradead.org>
> Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> ---
>  arch/s390/Kconfig                 |  1 -
>  arch/s390/Makefile                |  3 ---
>  arch/s390/configs/debug_defconfig |  1 -
>  arch/s390/configs/defconfig       |  1 -
>  arch/s390/oprofile/Makefile       | 10 ---------
>  arch/s390/oprofile/init.c         | 37 -------------------------------
>  6 files changed, 53 deletions(-)
>  delete mode 100644 arch/s390/oprofile/Makefile
>  delete mode 100644 arch/s390/oprofile/init.c

Acked-by: Heiko Carstens <hca@linux.ibm.com>


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
