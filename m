Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 062B5251221
	for <lists+oprofile-list@lfdr.de>; Tue, 25 Aug 2020 08:38:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1kASan-0001Hn-T5; Tue, 25 Aug 2020 06:38:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rric.net@gmail.com>) id 1kASam-0001HI-C2
 for oprofile-list@lists.sourceforge.net; Tue, 25 Aug 2020 06:38:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+8J0SMn0DeaTAP1G5XZRDMqDI4C3yEDmcbeRVLLld+A=; b=L0RlzAvHKtLuCj3PiYQZCl4S1K
 RmCLYQRzFtxCQr6u+1QpbrDCs1T8L/u77MOu1W4BZH6uRPGQEjtA/b1VHReawmQJsiaiJFpo1jTxd
 mfmVNQXR3QnYNqXjC5bm/QxSibZZp0HC5vVT9D+Pe+uzSEFksEas7vY4WhEin9rvjCaQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+8J0SMn0DeaTAP1G5XZRDMqDI4C3yEDmcbeRVLLld+A=; b=JetnsdFxWOsgmk02aB4fvghGQq
 1Bn37CoWY1uSYTpshbObXpbMme3133PqtK/ajDtXA6eJi9XzeFbztg0AQflxkGFgECB3N9yg0OeBW
 mNOVBRJV7gUvdOIFEWwR7x5CWDRG/0XLNKvR5uMnWLgenQ2RTV5WK74f2cyi7fiEPBgo=;
Received: from mail-lf1-f67.google.com ([209.85.167.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kASal-0006AQ-4w
 for oprofile-list@lists.sourceforge.net; Tue, 25 Aug 2020 06:38:00 +0000
Received: by mail-lf1-f67.google.com with SMTP id d2so5804005lfj.1
 for <oprofile-list@lists.sf.net>; Mon, 24 Aug 2020 23:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+8J0SMn0DeaTAP1G5XZRDMqDI4C3yEDmcbeRVLLld+A=;
 b=mnVmkRUn6UwjZ7JzQHaQs097X30CHeAIcUM8gXZJXxbz9UzTWzNWiVADcbcGXiSoR1
 j1g8q7WdR8PMG3RPhh0gPyq13YFsLxQ5CqIMko/XwVPuYAN1JO9+0ROyxmUehRI7Db69
 j7xkhYcXWi0BNsm+Aph+dwIZx7EMkLC8pRSebcsmRMvljJWgE4FVXvrYeLF72yNglF8X
 u+rteBw1n/+ZHQ0+EDI1Pm62AcYOPNSjQ3zNNUl73/gyt8b2R9ZFC+62toNOdfIGWlLJ
 HhPgc8uwkHno/75s5bY4Knmom8kUkSkTw0zDIReRuqVun62no/SnF/Qhp0OyLrt58sQ/
 tgrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=+8J0SMn0DeaTAP1G5XZRDMqDI4C3yEDmcbeRVLLld+A=;
 b=X/0aWG8JQOJ4Pv9JvWcSUfZr6zwnG2tc5I9tZ9xerhN44Qlh3lCsJPF6zIgm2p32im
 Eac+/Uf+cnyEF26VH/nEkYKW6yJlCnRQo24wM4fnVeHrW2mjHIYuNVry7HbCt/1sPj+5
 Igwaj3kh5BclhvPEzkrVwdrFYWKm/Aw4Q5cs4uO3XiOZoiaq78lvtzX7QNBDSp6S/JS+
 dd10YFIHtwxXsWPGEf/1iMx0weDb4FdBmCxEYVKu+nitjayDHCXI4wb5YKXUlIr8jHDW
 JmM2ToS1H9p6pz+BFjXWmRPR2NjZ71+J6hHxMIykFMSJsJZhJvzD9BAc822rxntdvfCf
 b0vg==
X-Gm-Message-State: AOAM532rRJvwsKNG1TUJ/iL3amgF6l/fX2pbCO6OJtyFx+UFI5bczgee
 S9R1CQgr1Psiybrbo4iSCQc=
X-Google-Smtp-Source: ABdhPJygsl82djudIj8ldZzBmKIY8fohNI4qVOnN8UerAuDPt0BwxOnPPd5QCHhqoBvJ6EDIa24y/w==
X-Received: by 2002:a19:5046:: with SMTP id z6mr3930462lfj.4.1598337465261;
 Mon, 24 Aug 2020 23:37:45 -0700 (PDT)
Received: from rric.localdomain (31-208-27-44.cust.bredband2.com.
 [31.208.27.44])
 by smtp.gmail.com with ESMTPSA id d6sm2628099lji.110.2020.08.24.23.37.44
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Aug 2020 23:37:44 -0700 (PDT)
Date: Tue, 25 Aug 2020 08:37:42 +0200
From: Robert Richter <rric@kernel.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 02/29] alpha: Avoid comma separated statements
Message-ID: <20200825063742.jopjozosvg5h74fp@rric.localdomain>
References: <cover.1598331148.git.joe@perches.com>
 <4facd57f80c70437f085ba3a1bcf13ae0b63c3bc.1598331148.git.joe@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4facd57f80c70437f085ba3a1bcf13ae0b63c3bc.1598331148.git.joe@perches.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: perches.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (rric.net[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1kASal-0006AQ-4w
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
Cc: Jiri Kosina <trivial@kernel.org>, linux-kernel@vger.kernel.org,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>, linux-alpha@vger.kernel.org,
 oprofile-list@lists.sf.net, Matt Turner <mattst88@gmail.com>,
 Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On 24.08.20 21:55:59, Joe Perches wrote:
> Use semicolons and braces.
> 
> Signed-off-by: Joe Perches <joe@perches.com>
> ---
>  arch/alpha/kernel/pci_iommu.c      |  8 +++++---
>  arch/alpha/oprofile/op_model_ev4.c | 22 ++++++++++++++--------
>  arch/alpha/oprofile/op_model_ev5.c |  8 +++++---
>  3 files changed, 24 insertions(+), 14 deletions(-)

For oprofile:

Acked-by: Robert Richter <rric@kernel.org>


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
