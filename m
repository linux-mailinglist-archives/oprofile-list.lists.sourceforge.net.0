Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4721B0DA3
	for <lists+oprofile-list@lfdr.de>; Mon, 20 Apr 2020 16:02:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jQWzq-0006Am-IK; Mon, 20 Apr 2020 14:02:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <eesposit@redhat.com>) id 1jQWw1-00020k-Ij
 for oprofile-list@lists.sourceforge.net; Mon, 20 Apr 2020 13:58:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:Cc:To:Subject:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pK26z2Uz8J+xMXGm08XY3fCeYfVumTWEKpq3I9uMJ70=; b=CJNYEC1Q+DhqkW7uwKg7x6/CKS
 sfQiuCcGEb4rfBeaL6PWOWIopZkluklzkDEDMq1c4/mNf7eH6bzDxnmHyFEnbQSbZh6yAMzsaDXlh
 Lir9OSvWwV6R+pvwwctD4JBz+mR58/40b6GVGaO9nS8Z7wuG2lU7LgPm/f3GbqHjLa74=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:Cc:To:Subject:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pK26z2Uz8J+xMXGm08XY3fCeYfVumTWEKpq3I9uMJ70=; b=IpNgF2oUJCzIOccyOchOjGfGI8
 YIxNI93OOKwRQ4p4A51ZRj6P02RJCNon3Enm2j9kBSRLnGCBnks+Jo5Tsj1sKvoycTVZOiinUJ+O7
 JNdiHvs0kbyM2ZoV7b1AL85exicb2DCEmEfnXRMQEuAQDFq06RP8Je1kVYCFnVrogRjg=;
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jQWvz-004Rz3-RJ
 for oprofile-list@lists.sourceforge.net; Mon, 20 Apr 2020 13:58:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587391076;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pK26z2Uz8J+xMXGm08XY3fCeYfVumTWEKpq3I9uMJ70=;
 b=JBeBupR2hI6+yPH2Jr9g+YknQbpgbnCv1v3pgHYKCX5jxVmhwOeJeXfoNscz03zlTY5JBe
 p2Kfp7etIPFA2k2wP3aoJIy1xhhLs7Qc/+KcpvVdx+gJIVV3Od3gbg+HSCrLR8AVcsQ5Zs
 BFebMb+Romn4HGK1c81Jx2O3JxmWMog=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-357-54stG5efOqeJKtRxI7nNuQ-1; Mon, 20 Apr 2020 09:57:54 -0400
X-MC-Unique: 54stG5efOqeJKtRxI7nNuQ-1
Received: by mail-wr1-f71.google.com with SMTP id h95so5716170wrh.11
 for <oprofile-list@lists.sf.net>; Mon, 20 Apr 2020 06:57:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pK26z2Uz8J+xMXGm08XY3fCeYfVumTWEKpq3I9uMJ70=;
 b=iocRd5le+E+7DbOlQebWRROPFqM33mvKk+Ul0IadVL6GotqUtqLXAZe7WpA5udcdo8
 1V1GqzuE6dBUALaEXTtxPluSnf4aAAx9UzraYBO+saHyuCwZu+ZzVpL5aqvxu9jt8jWf
 dD4Vi7mfWJuZywiox9IvQMztzWiULIxtS+FZg7+zslbfSNCJQlfyuCDHis00IUiee7wx
 zR4cFrx9aKkVPhaTolW+/LUwS4Mm2MT6xyRhpnV4BiPFgSlI7+791EC3aT2QPmDxgZ0h
 yUr4pwzXBa3j+Plaf9aL3N7Z3gldHMdzlaDsuAy4RpZyCSHHgeXifR17drBCWND5phIa
 qxhw==
X-Gm-Message-State: AGi0PubDI6A8g6Pif7lgZlzQH2qIKjH8SNKL544fd48BF173gAlTDzxM
 5eiL6PMYMtVzcxL86LezQdlOuX69FgfDT5JKYLiGpiB6uTar5EJiL6v47YWSxoSzHTvebEIs1BJ
 jzlEWEC8vd+92U66PsvMVYw==
X-Received: by 2002:a7b:cf2b:: with SMTP id m11mr16860492wmg.147.1587391073775; 
 Mon, 20 Apr 2020 06:57:53 -0700 (PDT)
X-Google-Smtp-Source: APiQypKZBYixV5ajKWzxEAUUh742/WPOg+S3dMK8bDyvyM4eMw8EIY0hxy1C7QN16yJpeFB4fL8+FQ==
X-Received: by 2002:a7b:cf2b:: with SMTP id m11mr16860432wmg.147.1587391073551; 
 Mon, 20 Apr 2020 06:57:53 -0700 (PDT)
Received: from localhost.localdomain ([194.230.155.102])
 by smtp.gmail.com with ESMTPSA id l5sm1432890wmi.22.2020.04.20.06.57.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Apr 2020 06:57:52 -0700 (PDT)
From: Emanuele Giuseppe Esposito <eesposit@redhat.com>
Subject: Re: [PATCH 6/8] simplefs: add file creation functions
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20200414124304.4470-1-eesposit@redhat.com>
 <20200414124304.4470-7-eesposit@redhat.com>
 <20200414125626.GC720679@kroah.com>
Message-ID: <f371bcc0-266a-cb0b-3bde-fed336b8c9b5@redhat.com>
Date: Mon, 20 Apr 2020 15:57:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200414125626.GC720679@kroah.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jQWvz-004Rz3-RJ
X-Mailman-Approved-At: Mon, 20 Apr 2020 14:02:01 +0000
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
Cc: Song Liu <songliubraving@fb.com>, linux-usb@vger.kernel.org,
 bpf@vger.kernel.org, "Rafael J. Wysocki" <rafael@kernel.org>,
 David Airlie <airlied@linux.ie>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Alexei Starovoitov <ast@kernel.org>, dri-devel@lists.freedesktop.org,
 "J. Bruce Fields" <bfields@fieldses.org>,
 Joseph Qi <joseph.qi@linux.alibaba.com>, Hugh Dickins <hughd@google.com>,
 Paul Mackerras <paulus@samba.org>, John Johansen <john.johansen@canonical.com>,
 netdev@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 Christoph Hellwig <hch@lst.de>, Andrew Donnellan <ajd@linux.ibm.com>,
 Matthew Garrett <matthew.garrett@nebula.com>, linux-efi@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Daniel Borkmann <daniel@iogearbox.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, linux-rdma@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, Mark Fasheh <mark@fasheh.com>,
 Anton Vorontsov <anton@enomsg.org>, John Fastabend <john.fastabend@gmail.com>,
 James Morris <jmorris@namei.org>, Ard Biesheuvel <ardb@kernel.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Doug Ledford <dledford@redhat.com>,
 oprofile-list@lists.sf.net, Yonghong Song <yhs@fb.com>,
 Ian Kent <raven@themaw.net>, Andrii Nakryiko <andriin@fb.com>,
 Alexey Dobriyan <adobriyan@gmail.com>, "Serge E. Hallyn" <serge@hallyn.com>,
 Robert Richter <rric@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Vasily Gorbik <gor@linux.ibm.com>, Tony Luck <tony.luck@intel.com>,
 Kees Cook <keescook@chromium.org>, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 autofs@vger.kernel.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Mike Marciniszyn <mike.marciniszyn@intel.com>,
 Maxime Ripard <mripard@kernel.org>, linux-fsdevel@vger.kernel.org,
 "Manoj N. Kumar" <manoj@linux.ibm.com>, Uma Krishnan <ukrishn@linux.ibm.com>,
 Jakub Kicinski <kuba@kernel.org>, KP Singh <kpsingh@chromium.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 "Matthew R. Ochs" <mrochs@linux.ibm.com>,
 "David S. Miller" <davem@davemloft.net>, Felipe Balbi <balbi@kernel.org>,
 linux-nfs@vger.kernel.org, Iurii Zaikin <yzaikin@google.com>,
 linux-scsi@vger.kernel.org, "Martin K. Petersen" <martin.petersen@oracle.com>,
 linux-mm@kvack.org, linux-s390@vger.kernel.org,
 Dennis Dalessandro <dennis.dalessandro@intel.com>,
 Miklos Szeredi <miklos@szeredi.hu>, linux-security-module@vger.kernel.org,
 linux-kernel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Chuck Lever <chuck.lever@oracle.com>,
 Jeremy Kerr <jk@ozlabs.org>, Daniel Vetter <daniel@ffwll.ch>,
 Colin Cross <ccross@android.com>, Frederic Barrat <fbarrat@linux.ibm.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Mike Kravetz <mike.kravetz@oracle.com>, linuxppc-dev@lists.ozlabs.org,
 Martin KaFai Lau <kafai@fb.com>, Joel Becker <jlbec@evilplan.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: oprofile-list-bounces@lists.sourceforge.net



On 4/14/20 2:56 PM, Greg Kroah-Hartman wrote:
> On Tue, Apr 14, 2020 at 02:43:00PM +0200, Emanuele Giuseppe Esposito wrote:
>> A bunch of code is duplicated between debugfs and tracefs, unify it to the
>> simplefs library.
>>
>> The code is very similar, except that dentry and inode creation are unified
>> into a single function (unlike start_creating in debugfs and tracefs, which
>> only takes care of dentries).  This adds an output parameter to the creation
>> functions, but pushes all error recovery into fs/simplefs.c.
>>
>> Signed-off-by: Emanuele Giuseppe Esposito <eesposit@redhat.com>
>> ---
>>   fs/simplefs.c            | 150 +++++++++++++++++++++++++++++++++++++++
>>   include/linux/simplefs.h |  19 +++++
>>   2 files changed, 169 insertions(+)
> 
> What's wrong with libfs, isn't that supposed to be for these types of
> "common" filesystem interactions?
> 
> Why create a whole "new" fs for this?

I assume you meant a new file. These new functions are used only by a 
few filesystems, and I didn't want to include them in vmlinux 
unconditionally, so I introduced simplefs.c and CONFIG_SIMPLEFS instead 
of extending libfs.c. In this way only fs that need this code like 
debugfs and tracefs will load it.

Thank you,

Emanuele



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
