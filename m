Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4A72F7806
	for <lists+oprofile-list@lfdr.de>; Fri, 15 Jan 2021 12:54:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l0NgZ-0001Gt-Mp; Fri, 15 Jan 2021 11:54:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <viresh.kumar@linaro.org>) id 1l0Ft4-00088Y-RM
 for oprofile-list@lists.sourceforge.net; Fri, 15 Jan 2021 03:34:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W07ZLPVszbueA12F97uxqmYwsZjLziE6s+z1n5bz+MA=; b=SMQrU60u6OyR/CiJiBwdrUnHXV
 0ouhcMmpewLd1qTZQMf2fQnYdbNRX6R2grGmb5gwl+eEC1Zy7+P2+ywHMBWZDmKJ3Io9ynVKuMu/b
 KygS3+Ed5BMN02xwabsDck5GWD/H1GJGigbzI8cvaldsfmfzP6uuD8DaaMhGT/FE1PmY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W07ZLPVszbueA12F97uxqmYwsZjLziE6s+z1n5bz+MA=; b=JMe47OYkzXOC8zcJh5BVxomqar
 NLFdJm7GluiUlboC38KpvOjIwE7oOGTUEbdEp4Jgv/yJ+McyFW2+NLwRp6K9w5weASDfbLQwHHURP
 V/NLN7tyPJkFh87mGgz/Qv8Y96uIb58bfOZ0JSsISB8txcUG0xTdd+TGzESYpmcOdIkM=;
Received: from mail-pj1-f51.google.com ([209.85.216.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l0Fss-00DD7D-IR
 for oprofile-list@lists.sourceforge.net; Fri, 15 Jan 2021 03:34:58 +0000
Received: by mail-pj1-f51.google.com with SMTP id md11so4298618pjb.0
 for <oprofile-list@lists.sf.net>; Thu, 14 Jan 2021 19:34:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=W07ZLPVszbueA12F97uxqmYwsZjLziE6s+z1n5bz+MA=;
 b=wzlU1v608Bp/5Fbh2LlphjOSHK6mVDaFC9eNHaDC2tGh7ihu4qx096kwF8127c89Ll
 jthd9Pm03WUosaLQezx/FRs71g/jon1IpEWnRmEIJEaa3/RqTfuKh6EMgw46I8CXq3D9
 /yeQBRNBhq99IYpe4/dgheqrWnGGRqaYp/pD0KqlsmA1/e3f3WRIf+s3I5FSkj6zEi7s
 mSj3ocJxC5OWg1FORIgSX/GK+xHgCI/Dhp8fJw5qax5XWl3Z/oGS5Gv9uAB9MWHMXIod
 s7Jvto4y8yKloaXd1xK705vZEuAc5yfmVaCbXy26Vk1daNcozz+ePsuEWmbi/gaCCTJB
 l6Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=W07ZLPVszbueA12F97uxqmYwsZjLziE6s+z1n5bz+MA=;
 b=CMOTLf8dIdFiH8lRNazux+CimLonAj2s9wPZyxZX+cs1O6cYUbpTP0UxXdfZWohGtG
 iiRSo+jvhs0txmCKsNovhhhGpdH/yyWUPTpFUlsrUOCcTlxDIbx5Vbcz1U2QTxXrf7s+
 IcOiDOYrOzpOvHuf6dmWngG2hRpmZG9lTZSUSjAmXGVzGMbahygDsGB4HRnNIZTGmekM
 av/QKrkCLVFhPkG3EXJFBKLByixpf4xfy5wwlJj9p+yWn3oMcQW+5jKLBkkjcfmi31LQ
 mOgc4z3rdvbw8FXjE/yeMWIi6wPe8W0rCJB4UaG8OGUs03bX6bpiJZQ7clSlLsJAA8Uy
 uRJA==
X-Gm-Message-State: AOAM532lwLkgmDO0c0MUb31fgu1M8hHh3X8FKtZkdMSP2Xs+TWjtHO0v
 QDlr0fMykGL368qpeQx5vUB+ag==
X-Google-Smtp-Source: ABdhPJyYdlMuN2pkKJ7RYKVFFcTi9PZ8+oVHWdgcn5YANMzdEyqNgbQgng2M+wNGbbyh/9Rvip/U2A==
X-Received: by 2002:a17:90a:4cc5:: with SMTP id
 k63mr8252416pjh.202.1610681673757; 
 Thu, 14 Jan 2021 19:34:33 -0800 (PST)
Received: from localhost ([122.172.85.111])
 by smtp.gmail.com with ESMTPSA id w19sm6454293pgf.23.2021.01.14.19.34.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 Jan 2021 19:34:32 -0800 (PST)
Date: Fri, 15 Jan 2021 09:04:30 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH 03/18] arch: arc: Remove CONFIG_OPROFILE support
Message-ID: <20210115033430.rzyja2diwp7lbmni@vireshk-i7>
References: <cover.1610622251.git.viresh.kumar@linaro.org>
 <906d9d40746bb1b60823a288d00820cb50d29138.1610622251.git.viresh.kumar@linaro.org>
 <16e1ec02-e6da-b49d-ee21-c98660605cf8@synopsys.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <16e1ec02-e6da-b49d-ee21-c98660605cf8@synopsys.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.51 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1l0Fss-00DD7D-IR
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
 Christoph Hellwig <hch@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "anmar.oueja@linaro.org" <anmar.oueja@linaro.org>,
 "oprofile-list@lists.sf.net" <oprofile-list@lists.sf.net>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 William Cohen <wcohen@redhat.com>,
 "linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On 14-01-21, 17:51, Vineet Gupta wrote:
> On 1/14/21 3:35 AM, Viresh Kumar wrote:
> > The "oprofile" user-space tools don't use the kernel OPROFILE support
> > any more, and haven't in a long time. User-space has been converted to
> > the perf interfaces.
> >
> > Remove the old oprofile's architecture specific support.
> >
> > Suggested-by: Christoph Hellwig <hch@infradead.org>
> > Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
> > Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> 
> Acked-by: Vineet Gupta <vgupta@synopsys.com>
> 
> I presume this doesn't need to go through ARC tree.

Yes.

-- 
viresh


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
