Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 026C8133487
	for <lists+oprofile-list@lfdr.de>; Tue,  7 Jan 2020 22:26:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1iowN4-0005pC-Fz; Tue, 07 Jan 2020 21:26:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <heiko.carstens@de.ibm.com>) id 1iotEe-0001Pu-DU
 for oprofile-list@lists.sourceforge.net; Tue, 07 Jan 2020 18:05:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:In-Reply-To:Content-Type:MIME-Version:
 References:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RyfnbZF150Brcveix2vC2oOmufIeJCze3sBuDQoHkeM=; b=Z508UycpBMsO8LBi2HZOKUwQ6l
 NF2ox04YBJouPYRvi/6YKe8KeegB1SIPG3hsi4R8fiJDLkJJpq9QNMCCGI47iLsXu6PS853CjdeJL
 3vesMcSrVZXCES+9/rI+244qShHJdE0728zPvKi78XxWAIZ37cjLfOm5Ezv7m5dEW5W4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:In-Reply-To:Content-Type:MIME-Version:References:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RyfnbZF150Brcveix2vC2oOmufIeJCze3sBuDQoHkeM=; b=JbUUzfemu/6ipkpaeYb5YwRAwq
 PikHrQjVJSfAIPWIVUXFUFYAMdQwL+InRNN3D/rvs5g66bcqP18YriVwFTG16QpEFTcFngGo7pT1k
 q5SDImpU4VhTFRXXOgpSF9f8i5whzPw0uH9CJ4n/0qWIRLqKf/Sctu+zd0vPYPhqnzBc=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iotEQ-00CWvf-L0
 for oprofile-list@lists.sourceforge.net; Tue, 07 Jan 2020 18:05:43 +0000
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 007HeLOd128737
 for <oprofile-list@lists.sf.net>; Tue, 7 Jan 2020 12:51:35 -0500
Received: from e06smtp04.uk.ibm.com (e06smtp04.uk.ibm.com [195.75.94.100])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2xb8s931a3-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <oprofile-list@lists.sf.net>; Tue, 07 Jan 2020 12:51:35 -0500
Received: from localhost
 by e06smtp04.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <oprofile-list@lists.sf.net> from <heiko.carstens@de.ibm.com>;
 Tue, 7 Jan 2020 17:51:33 -0000
Received: from b06cxnps4075.portsmouth.uk.ibm.com (9.149.109.197)
 by e06smtp04.uk.ibm.com (192.168.101.134) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 7 Jan 2020 17:51:24 -0000
Received: from b06wcsmtp001.portsmouth.uk.ibm.com
 (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
 by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 007HpN7f58654844
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 7 Jan 2020 17:51:23 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 485AFA405C;
 Tue,  7 Jan 2020 17:51:23 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 4789EA4062;
 Tue,  7 Jan 2020 17:51:22 +0000 (GMT)
Received: from osiris (unknown [9.145.85.21])
 by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Tue,  7 Jan 2020 17:51:22 +0000 (GMT)
Date: Tue, 7 Jan 2020 18:51:20 +0100
From: Heiko Carstens <heiko.carstens@de.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v3 02/22] compat: provide compat_ptr() on all architectures
References: <20200102145552.1853992-1-arnd@arndb.de>
 <20200102145552.1853992-3-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200102145552.1853992-3-arnd@arndb.de>
X-TM-AS-GCONF: 00
x-cbid: 20010717-0016-0000-0000-000002DB3EDC
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20010717-0017-0000-0000-0000333DB70D
Message-Id: <20200107175120.GC4684@osiris>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-07_06:2020-01-07,
 2020-01-07 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0
 malwarescore=0 lowpriorityscore=0 bulkscore=0 clxscore=1011
 impostorscore=0 mlxlogscore=413 spamscore=0 mlxscore=0 priorityscore=1501
 suspectscore=1 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-2001070140
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arndb.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iotEQ-00CWvf-L0
X-Mailman-Approved-At: Tue, 07 Jan 2020 21:26:37 +0000
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-mips@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-s390@vger.kernel.org, Paul Burton <paulburton@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Christian Borntraeger <borntraeger@de.ibm.com>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 Catalin Marinas <catalin.marinas@arm.com>, James Hogan <jhogan@kernel.org>,
 Robert Richter <rric@kernel.org>, Vasily Gorbik <gor@linux.ibm.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, linux-parisc@vger.kernel.org,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Thu, Jan 02, 2020 at 03:55:20PM +0100, Arnd Bergmann wrote:
> In order to avoid needless #ifdef CONFIG_COMPAT checks,
> move the compat_ptr() definition to linux/compat.h
> where it can be seen by any file regardless of the
> architecture.
> 
> Only s390 needs a special definition, this can use the
> self-#define trick we have elsewhere.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm64/include/asm/compat.h   | 17 -----------------
>  arch/mips/include/asm/compat.h    | 18 ------------------
>  arch/parisc/include/asm/compat.h  | 17 -----------------
>  arch/powerpc/include/asm/compat.h | 17 -----------------
>  arch/powerpc/oprofile/backtrace.c |  2 +-
>  arch/s390/include/asm/compat.h    |  6 +-----
>  arch/sparc/include/asm/compat.h   | 17 -----------------
>  arch/x86/include/asm/compat.h     | 17 -----------------
>  include/linux/compat.h            | 18 ++++++++++++++++++
>  9 files changed, 20 insertions(+), 109 deletions(-)

For s390:

Acked-by: Heiko Carstens <heiko.carstens@de.ibm.com>



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
