Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F19631B0EE8
	for <lists+oprofile-list@lfdr.de>; Mon, 20 Apr 2020 16:53:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jQXnW-0005ZI-1S; Mon, 20 Apr 2020 14:53:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pbonzini@redhat.com>) id 1jQXU9-0005Xv-93
 for oprofile-list@lists.sourceforge.net; Mon, 20 Apr 2020 14:33:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/BICmOxm1sDjBE0Fw16pReYLCBtQ7NAWk0hypsbt5YE=; b=gR3d2hOOQXV6HcVd17Ie4NFEo2
 eKV6u31tI41tuh+7TcV/dxmIX91lplxiYjS0YdiCwl5778ZoqXsH6pP9GR2fy/WslqopvZhGPLD2Q
 myJfi8SmF/AryTwZ/xU/AKOR2F0c8D18Jimowe2wJKPzMmtfH2NcQJ72r/Vefs4TaTzs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/BICmOxm1sDjBE0Fw16pReYLCBtQ7NAWk0hypsbt5YE=; b=IJ2mSm0mDyw5EEPFIzdhKzQlvB
 3SMfQd9ewCI++Kr85Cl1DZ/FQ9VAEgJMqZKaKiszamB152rbo70f9N0jRiRi+fKqXsiFrDhy9m+tW
 aMAIjCF14bpMY4EJA7lXSykFtKiZSKv//3mOAYiS3ruZsy8DUH4mYq4NNVU66rJiiA3k=;
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jQXU7-007IPC-UF
 for oprofile-list@lists.sourceforge.net; Mon, 20 Apr 2020 14:33:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587393193;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/BICmOxm1sDjBE0Fw16pReYLCBtQ7NAWk0hypsbt5YE=;
 b=bmnKa3ezmg3iI1DZKglhGQwcaUqqoKFPkyirnCM0wiPWofvL2/8XTfnhKKSjE+mQosu2Rt
 Xpc1rFgIYoVZKrD/z6J08LP+pZfYLCkUvCRqRkwlA/B1ZP4k+/bH8kpjoHcgGs+ms7/C7y
 70S5aLHgxpF9yoEc7Fy/WSHeit0ncEg=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-272-a4hVGnMmNlmk11V3wmXdtQ-1; Mon, 20 Apr 2020 10:33:11 -0400
X-MC-Unique: a4hVGnMmNlmk11V3wmXdtQ-1
Received: by mail-wr1-f69.google.com with SMTP id o12so5800133wra.14
 for <oprofile-list@lists.sf.net>; Mon, 20 Apr 2020 07:33:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/BICmOxm1sDjBE0Fw16pReYLCBtQ7NAWk0hypsbt5YE=;
 b=JQ2k293kGrnzMkLv4FtRBdY08ROMg5sbn2ZMjiww4kzc2izLWL+Z5ZZkF6EQzC7TXq
 aO7rXz1CyxROh0GApS8/PgyXHTt5KBvo479tFX0+W36Z6Q2fYVP7B8lW8eqnKZi5OB9C
 qb8BX+WuFg53WK8uKSx7JG834gD4vP01UzK1r5y5LJLFC67OSay4AGJeKegc8u4zSY8/
 IzCk0/pRmXUp9TPIy21Z9PMMELerqfVG0vc2tx3MK3YSVck5PKUF+1LPWvkKR09vOlpo
 /MKopRoJL/7sqq6nFZU2V42FpQg0a2NrvvO0HCKkC92UNN63XXuGb3OYYJRIToVa7E8r
 qfdA==
X-Gm-Message-State: AGi0PubYGP/xC7NFNGvf+d3VFYitBlOlmevKpoOD0bQ6sI+hcT/LU5ia
 yJoEJ05WdGZAu7cMKt+MaSDYOtwWSkkpP3t5fjVGDXqzpIPkAyrnJXnH2o+fOmPjtGtsUxgDkFw
 ctj4vxkRMBoL1fcDVRRC0jg==
X-Received: by 2002:a5d:6689:: with SMTP id l9mr10607533wru.261.1587393190509; 
 Mon, 20 Apr 2020 07:33:10 -0700 (PDT)
X-Google-Smtp-Source: APiQypIE3DMH5xFDwGNUfVPw+X70x/SDiUNUfiLWd0azjzp9qQ2tZy+YP/738/NNIg43An+9cygOww==
X-Received: by 2002:a5d:6689:: with SMTP id l9mr10607487wru.261.1587393190204; 
 Mon, 20 Apr 2020 07:33:10 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:199a:e5ab:a38c:544c?
 ([2001:b07:6468:f312:199a:e5ab:a38c:544c])
 by smtp.gmail.com with ESMTPSA id l5sm1432000wrm.66.2020.04.20.07.33.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Apr 2020 07:33:09 -0700 (PDT)
Subject: Re: [PATCH 6/8] simplefs: add file creation functions
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Emanuele Giuseppe Esposito <eesposit@redhat.com>
References: <20200414124304.4470-1-eesposit@redhat.com>
 <20200414124304.4470-7-eesposit@redhat.com>
 <20200414125626.GC720679@kroah.com>
 <f371bcc0-266a-cb0b-3bde-fed336b8c9b5@redhat.com>
 <20200420142842.GA4125486@kroah.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <7d7a9ccc-022d-f60d-d28a-f063ab9494bc@redhat.com>
Date: Mon, 20 Apr 2020 16:33:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200420142842.GA4125486@kroah.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jQXU7-007IPC-UF
X-Mailman-Approved-At: Mon, 20 Apr 2020 14:53:21 +0000
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
 Robert Richter <rric@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
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
 Jeremy Kerr <jk@ozlabs.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Colin Cross <ccross@android.com>, Frederic Barrat <fbarrat@linux.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mike Kravetz <mike.kravetz@oracle.com>, linuxppc-dev@lists.ozlabs.org,
 Martin KaFai Lau <kafai@fb.com>, Joel Becker <jlbec@evilplan.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On 20/04/20 16:28, Greg Kroah-Hartman wrote:
>> I assume you meant a new file. These new functions are used only by a few
>> filesystems, and I didn't want to include them in vmlinux unconditionally,
>> so I introduced simplefs.c and CONFIG_SIMPLEFS instead of extending libfs.c.
>> In this way only fs that need this code like debugfs and tracefs will load
>> it.
> Nothing "loads it", why not just make these libfs functions instead?  As
> the difference between the two is not obvious at all, please don't make
> things confusing.

I think Emanuele meant "will link it" not "will load it".

Emanuele, you can just move everything to libfs.c and get rid of
CONFIG_SIMPLEFS too.  "Do less" is not an offer you want to turn down!

Thanks,

Paolo



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
