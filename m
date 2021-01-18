Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 463F92F9A41
	for <lists+oprofile-list@lfdr.de>; Mon, 18 Jan 2021 07:57:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1l1OTZ-0004kF-DR; Mon, 18 Jan 2021 06:57:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <viresh.kumar@linaro.org>) id 1l1OTY-0004k8-7t
 for oprofile-list@lists.sourceforge.net; Mon, 18 Jan 2021 06:57:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/gluZUdXxWJf3r6BZqyyjnO+KL/Ab5/mk7/bC0aKLm4=; b=I/e8+kY4aTcqyqk2uKKXwTWHwZ
 XTlKOWnWFs/VkUez1yf3Rbk5gRlUqkZ8jpA7ww1bgNSOPlEsG7VLahLYGjNeeWBq9jOzBFsR7mwLt
 ctK7bgj0zg92IZdTnnDuxlnNDVlfEE24Dg9n/NZ44gEAcuUNoouNXrW2fm05uPTU2cug=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/gluZUdXxWJf3r6BZqyyjnO+KL/Ab5/mk7/bC0aKLm4=; b=EiquPo0EG9YKHc19puY4PT5bQp
 e3wHcDFUOMshczYGo0WfekcAyblrzQJ0XEv9isg839s7XcH7/qPeBcvqrBTGU8TWJ9oyHTm7nhX0t
 SGo6a3B6T0zqyoyNdLlTnro8gIrBqcV5Tk+ADSA6LYQomsjebRMsi8MsEjMu0JVRlMIw=;
Received: from mail-pg1-f179.google.com ([209.85.215.179])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l1OTO-004hRV-Q6
 for oprofile-list@lists.sourceforge.net; Mon, 18 Jan 2021 06:57:20 +0000
Received: by mail-pg1-f179.google.com with SMTP id q7so10352603pgm.5
 for <oprofile-list@lists.sf.net>; Sun, 17 Jan 2021 22:57:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/gluZUdXxWJf3r6BZqyyjnO+KL/Ab5/mk7/bC0aKLm4=;
 b=KjZrTh8XQgItnmM9oaeLcxC7WN5sMZikMcBi9gOEC2jizb6SJYY/9mIlqrM+uTmPgX
 agtUG0bu4KZeTBXelftKmei+HOOMLAGBv+ZSGMOrASJ6ET/uolU8r9IYV7Nw+gjZW8JD
 HZQyNVy42+ClehEyDATgfZtcmOAUkJiN85cx4PuHqpBTjTY8nMYRk4fGqzCGi7+FNOOA
 YOoQukNfWSI20rlmwsxDIP72j/m8u8EfqMRzavENjas4mjXJGcTix7l2mYyc2jbmAk62
 ny33X6nv8cc1rKlCUUZrdDIn+XevPN/srG1ZD9pY0akVJtWYO7Nm9uz1JSlsDpLsBpqP
 PgfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/gluZUdXxWJf3r6BZqyyjnO+KL/Ab5/mk7/bC0aKLm4=;
 b=sEqI1MBlWEvYQ27P+aACbgufpdSLyUW8n0hbfIPqDrytIIRM0L0IsYycqEI/TM/M6P
 gw1ZzBW+t0upcPPCPZHfs4LKV+MU7b9ZZ6eAM0eJRj8lXro86gKFXl6TksETDle/qRw5
 RJGSaYl3XCDohBTSWio2+bSihJHIxzuzo4l9Dqq+anhpAKD1eH/tQUJqa7h3KThcq9Sj
 H3IX7d17DBfW/FEtp/dFoIn6bNuEiHUo53ppGICZ7M8cMsfzzW4m7gtmsWV01aVqH2zg
 HncnpWCnqsWYjJt8PTC9OYGodBlVYPATrCnjlN4YU4+h20dHF+whlx19Qfc/ocwgTXhL
 6U+A==
X-Gm-Message-State: AOAM532iflzc8eg/x6Cq+0y5oKBlNEQSjnVvkNjS2peHebUuPtFRi09B
 RiZXz0UEGFcSJUi1nvXaT8VpQw==
X-Google-Smtp-Source: ABdhPJx6WcQLEt09vtf7Tq0fEQfa1sBZU3JTh5QwJhr3FrvYQ34qgGS/DZ1/EUyQKxU4B15RjL2q6A==
X-Received: by 2002:a63:1b1e:: with SMTP id b30mr24762455pgb.421.1610953025278; 
 Sun, 17 Jan 2021 22:57:05 -0800 (PST)
Received: from localhost ([122.172.59.240])
 by smtp.gmail.com with ESMTPSA id y26sm9840259pgk.42.2021.01.17.22.57.04
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 17 Jan 2021 22:57:04 -0800 (PST)
Date: Mon, 18 Jan 2021 12:27:02 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH 00/18] drivers: Remove oprofile and dcookies
Message-ID: <20210118065702.2hquoixuhim5jsop@vireshk-i7>
References: <cover.1610622251.git.viresh.kumar@linaro.org>
 <CAHk-=whaPiPCM6erqqe5Q-Ugn7u-jY6w7iA-kEBBc8aB40sBoA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=whaPiPCM6erqqe5Q-Ugn7u-jY6w7iA-kEBBc8aB40sBoA@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.179 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.179 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1l1OTO-004hRV-Q6
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
Cc: Arnd Bergmann <arnd@kernel.org>,
 Vincent Guittot <vincent.guittot@linaro.org>, linux-kernel@vger.kernel.org,
 Anmar Oueja <anmar.oueja@linaro.org>, oprofile-list@lists.sf.net,
 Alexander Viro <viro@zeniv.linux.org.uk>, Robert Richter <rric@kernel.org>,
 William Cohen <wcohen@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On 14-01-21, 09:51, Linus Torvalds wrote:
> On Thu, Jan 14, 2021 at 3:34 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> >
> > This is build/boot tested by kernel test robot (Intel) and Linaro's
> > Tuxmake[2] for a lot of architectures and no failures were reported.
> 
> Can you make sure this is in linux-next, and we'll get this in for 5.12?

This series is in linux-next now.

-- 
viresh


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
