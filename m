Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBE41A67D5
	for <lists+oprofile-list@lfdr.de>; Mon, 13 Apr 2020 16:20:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jNzxF-0001ch-37; Mon, 13 Apr 2020 14:20:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rppt@linux.ibm.com>) id 1jMU6B-0000HA-0g
 for oprofile-list@lists.sourceforge.net; Thu, 09 Apr 2020 10:07:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:In-Reply-To:Content-Type:MIME-Version:
 References:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U32s1UInPk4VixUur5z8BfuGEQPxvUqJzebAgTl4Uxo=; b=YNUQNVoKJW6l7IBypnxpNr60En
 lWAWZIda2IdFnoyjRhBRr5kkV2eVyg3EIG35c7T6UUpgmBWU52TKF0Sed+BR378MW3MwwYs/WaxvU
 AVXfcYu++YquZrgZlENd6zm/ACFLMsuuPzBS+c9Co6b7t6T3gwV9buNxxXoK6z/yXTy8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:In-Reply-To:Content-Type:MIME-Version:References:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=U32s1UInPk4VixUur5z8BfuGEQPxvUqJzebAgTl4Uxo=; b=YC2kSStnYWJNzXwOvRdwM2X7Ho
 ygtQgOe6UiULskCqfI2aNI7pfZZRovzY1zoMnyNFU0MSbuQzdhwJTq7hCtGbMNGDIWtktXVe9sPJT
 uj6tAHQcwcvINvYOmDTcUuXyubhQg1LwY8Wtb75p/8sMdKHS9XnyfFS6VwT7ULLnnfl0=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jMU68-009YHB-RB
 for oprofile-list@lists.sourceforge.net; Thu, 09 Apr 2020 10:07:50 +0000
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 039A4Yos109430
 for <oprofile-list@lists.sf.net>; Thu, 9 Apr 2020 06:07:43 -0400
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0b-001b2d01.pphosted.com with ESMTP id 30920tryh3-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <oprofile-list@lists.sf.net>; Thu, 09 Apr 2020 06:07:42 -0400
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <oprofile-list@lists.sf.net> from <rppt@linux.ibm.com>;
 Thu, 9 Apr 2020 11:07:20 +0100
Received: from b06avi18878370.portsmouth.uk.ibm.com (9.149.26.194)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 9 Apr 2020 11:07:12 +0100
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id 039A7VBW33358272
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 9 Apr 2020 10:07:31 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 5F75411C05C;
 Thu,  9 Apr 2020 10:07:31 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id A2EEE11C05E;
 Thu,  9 Apr 2020 10:07:28 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.207.228])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Thu,  9 Apr 2020 10:07:28 +0000 (GMT)
Date: Thu, 9 Apr 2020 13:07:26 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: Re: [PATCH 12/12] MIPS: ip27: Fix includes
References: <20200408113505.2528103-1-jiaxun.yang@flygoat.com>
 <20200408130024.2529220-7-jiaxun.yang@flygoat.com>
 <20200409091922.GA17293@linux.ibm.com>
 <20200409173835.27ed1e64@flygoat-x1e>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409173835.27ed1e64@flygoat-x1e>
X-TM-AS-GCONF: 00
x-cbid: 20040910-0008-0000-0000-0000036D7458
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20040910-0009-0000-0000-00004A8F160C
Message-Id: <20200409100726.GB17293@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-09_03:2020-04-07,
 2020-04-09 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=1
 impostorscore=0 mlxscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 adultscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 clxscore=1015
 mlxlogscore=266 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004090073
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: flygoat.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jMU68-009YHB-RB
X-Mailman-Approved-At: Mon, 13 Apr 2020 14:20:50 +0000
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Peter Zijlstra <peterz@infradead.org>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>, Huacai Chen <chenhc@lemote.com>,
 Jiri Olsa <jolsa@redhat.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Paul Burton <paulburton@kernel.org>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Marc Zyngier <maz@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, bcm-kernel-feedback-list@broadcom.com,
 oprofile-list@lists.sf.net,
 Vladimir Kondratiev <vladimir.kondratiev@intel.com>,
 Robert Richter <rric@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 Arnd Bergmann <arnd@arndb.de>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexios Zavras <alexios.zavras@intel.com>, Steve Winslow <swinslow@gmail.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Matt Redfearn <matt.redfearn@mips.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>, Oleksij Rempel <linux@rempel-privat.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Thu, Apr 09, 2020 at 05:38:35PM +0800, Jiaxun Yang wrote:
> On Thu, 9 Apr 2020 12:19:22 +0300
> Mike Rapoport <rppt@linux.ibm.com> wrote:
> 
> > On Wed, Apr 08, 2020 at 08:59:54PM +0800, Jiaxun Yang wrote:
> > > Somehow changes in topology messed up headers.
> > > So just add necessary headers to make it compile again.  
> > 
> > Please avoid aftermath build fixes because it breaks bisection.
> > Each commit should be buildable, so this changes should go into the
> > patches that actually require them.
> 
> I'd love to but for that I'll have to squash patch #5~#12 into a single
> patch. T thought it's to big and touching too many files.
> 
> Is that acceptable? 

If I understand correctly, the patches #5-#12 replace custom MIPS
implementation of CPU topology with a generic one, so making them a single
patch could be Ok as it is single logical change.

But I'm not sure it is required. Judging by diffstat, my guess would be
that patch #5 breaks ip27 builds. If that's true, only patch #5 should be
redacted
 
> Thanks.
> >  
> > > Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
> > > ---
> --
> Jiaxun Yang
> 
> 

-- 
Sincerely yours,
Mike.



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
