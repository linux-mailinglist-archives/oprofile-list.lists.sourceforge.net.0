Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 250D91A67DE
	for <lists+oprofile-list@lfdr.de>; Mon, 13 Apr 2020 16:20:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jNzxF-0001eU-Kf; Mon, 13 Apr 2020 14:20:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jiaxun.yang@flygoat.com>) id 1jMTfx-0005ke-4E
 for oprofile-list@lists.sourceforge.net; Thu, 09 Apr 2020 09:40:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U3OUEi6suDWXBHYtmbz9aBjh2aLvWTneUmFTniJfo9s=; b=LKNdgUdIimTS7/qTZ4RHmC7Jse
 A1AxUpCyMwFJEhI9vyL0vC5aBIo7+Q2SPsQYxtJRieUHnMRx6o1dx/74phMvK+NGY86ryWMwpWQEu
 X9RmK2FBKM0u76es7DIKW2RO381Kgx2tAsvxQraqoFnAXlozLhDLkfjPtz8oJi6Hr/4w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=U3OUEi6suDWXBHYtmbz9aBjh2aLvWTneUmFTniJfo9s=; b=ITgi86PT4bwGI0xDn6+Yb+G1yv
 ey+BACtwvXzSDTN/Rh5c3qVQ7lS577T4zWAi/4oR49PbhuQwNaaGM2lsXH7j7crCgQlKNpdejKs5c
 af6gzDoLoYTcTCfIStNiVYQrL08/T/Cpycf3r4mP+fBgYsF29w/1gLvYAW6KrROOFEmw=;
Received: from sender3-op-o12.zoho.com.cn ([124.251.121.243])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jMTft-00DCuV-QH
 for oprofile-list@lists.sourceforge.net; Thu, 09 Apr 2020 09:40:45 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1586425119; cv=none; d=zoho.com.cn; s=zohoarc; 
 b=Xm3Is2wmldS7Fqn/L5Q9W0eSTd20L/QVaCDc+Vfft1gdW9dt2kAAM0cIAf9QqwZYe8gMrCxaAmMGZMQ1HMXv8nn09ncigMrsB35uIxZx8cKqBtt5nYMjyYbr0ze1VofG7oJ1Spoc777iaizchzhflfRo27m2GzynOdL3uVDXdTM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com.cn;
 s=zohoarc; t=1586425119;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=U3OUEi6suDWXBHYtmbz9aBjh2aLvWTneUmFTniJfo9s=; 
 b=GnkLlFKnSKLj7DTVZTCdrjRlP13qvpGHkadT06XRSrxPEvlumpO+GPjc4eFAZNA/+11z+vefJoRIa8E0aQNKXGHzBlmH09EHBsTXKKACzHrgeWMIg4XqMX+WIOwauAR0mVVTTWOHMuhDnGg9h+EuxU9vOwviXM9vr+zuu+DJ/YI=
ARC-Authentication-Results: i=1; mx.zoho.com.cn;
 dkim=pass  header.i=flygoat.com;
 spf=pass  smtp.mailfrom=jiaxun.yang@flygoat.com;
 dmarc=pass header.from=<jiaxun.yang@flygoat.com>
 header.from=<jiaxun.yang@flygoat.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1586425119; 
 s=mail; d=flygoat.com; i=jiaxun.yang@flygoat.com;
 h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:MIME-Version:Content-Type:Content-Transfer-Encoding;
 bh=U3OUEi6suDWXBHYtmbz9aBjh2aLvWTneUmFTniJfo9s=;
 b=WqgMCsmN0p2/AV8ZdfiD+DjoAfTXs8dItcVu2zIm6F/K0Y2L8txyGC+aMAhLvVJo
 BJmAcvz5IYBaC1PS2faE4yaDdTxyVP9q6rmPEzDOI5h2xnckGO1KYfiyVAo3FP/hr2T
 qfo7neCcoswAdkrD/N6mKWV5xwB5PSobKn1Lek4c=
Received: from flygoat-x1e (122.235.212.87 [122.235.212.87]) by mx.zoho.com.cn
 with SMTPS id 1586425116678346.8969598464105;
 Thu, 9 Apr 2020 17:38:36 +0800 (CST)
Date: Thu, 9 Apr 2020 17:38:35 +0800
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: Mike Rapoport <rppt@linux.ibm.com>
Subject: Re: [PATCH 12/12] MIPS: ip27: Fix includes
Message-ID: <20200409173835.27ed1e64@flygoat-x1e>
In-Reply-To: <20200409091922.GA17293@linux.ibm.com>
References: <20200408113505.2528103-1-jiaxun.yang@flygoat.com>
 <20200408130024.2529220-7-jiaxun.yang@flygoat.com>
 <20200409091922.GA17293@linux.ibm.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-ZohoCNMailClient: External
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [124.251.121.243 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: flygoat.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jMTft-00DCuV-QH
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

On Thu, 9 Apr 2020 12:19:22 +0300
Mike Rapoport <rppt@linux.ibm.com> wrote:

> On Wed, Apr 08, 2020 at 08:59:54PM +0800, Jiaxun Yang wrote:
> > Somehow changes in topology messed up headers.
> > So just add necessary headers to make it compile again.  
> 
> Please avoid aftermath build fixes because it breaks bisection.
> Each commit should be buildable, so this changes should go into the
> patches that actually require them.

I'd love to but for that I'll have to squash patch #5~#12 into a single
patch. T thought it's to big and touching too many files.

Is that acceptable? 

Thanks.
>  
> > Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
> > ---
--
Jiaxun Yang




_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
