Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9921B1B0DA4
	for <lists+oprofile-list@lfdr.de>; Mon, 20 Apr 2020 16:02:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jQWzq-0006Av-Jt; Mon, 20 Apr 2020 14:02:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <eesposit@redhat.com>) id 1jQWwL-0002qp-TO
 for oprofile-list@lists.sourceforge.net; Mon, 20 Apr 2020 13:58:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:Cc:To:Subject:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xUgf1dELTVkqbl5oz8lk6XQ7zC/RuDwFip+M0efFdJc=; b=jph32spHp+B8CL8VE3XFMxkErl
 cSEtAniQ9LnnDXW2or4RFQU1KWOwoC7lAmfPyBX5+fP9lj8EowrF05Ryq4MCHV17h9bCu8/nUrEBJ
 qtChpXuOSU0xXNzIABJUMxw/ChBTYVaoavUI8Z8beZKlbMwApdtK+/sfVgpDd9sCtaS8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:Cc:To:Subject:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xUgf1dELTVkqbl5oz8lk6XQ7zC/RuDwFip+M0efFdJc=; b=Efo5517C0agdxk+AQbzf+fLrG2
 ZKtfozXXFFSL7X+dMuJnZf4mSqQzqNewdYQDRQM5Nq61b1txlyhlDGqrqOX6Ima4vD9jjcs1PRIwZ
 /t4vPAtuA4eYPT+ugMGyVOGVQ7OXLaWiG86ZTp5iv9YvE6T9hmyUryxDC28srMkQEZMs=;
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jQWwH-007Gba-18
 for oprofile-list@lists.sourceforge.net; Mon, 20 Apr 2020 13:58:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587391091;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xUgf1dELTVkqbl5oz8lk6XQ7zC/RuDwFip+M0efFdJc=;
 b=bXyaw7FqWAsTBovH9OASnYheQMJHoLqEYSPllAfJvgpnrGG1BqQlE5R2ZOHmZxKlBWr1Rh
 5ZLzRTjCh8X9UukdOBSiewaTEnsuzUFgqFyCxL4gUfjC8FXjLsmQFyJf79XmrMl34oSSaQ
 7euSQ+BjPHRpmRYMbwQ4ZcoVns5yow8=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-289-uH0Wzz_fNw2RCPiVjm1QdA-1; Mon, 20 Apr 2020 09:58:07 -0400
X-MC-Unique: uH0Wzz_fNw2RCPiVjm1QdA-1
Received: by mail-wm1-f72.google.com with SMTP id f128so4189772wmf.8
 for <oprofile-list@lists.sf.net>; Mon, 20 Apr 2020 06:58:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xUgf1dELTVkqbl5oz8lk6XQ7zC/RuDwFip+M0efFdJc=;
 b=d7776MtNseHNH75os8dwvsfOUGmrwf3JX/bvhm0sMQayjn3CRyY2H/BtHvZWqQx7Le
 76NvMorIULW62CrbSYJz7Cut3oRlqntSQ8BT69xgHyquIZsa3hF+OfGg9A39DXNgqMFY
 WqbwQcU5UcBObjoBQBwfHOq4si6XV4Ej36Zsfz1FiP9e9lOGYY83rgJAcOTQ/v5+8LH0
 Oyb0WFtI/vX/HGBo2PuVvzI57gONGnxEvt7k6BoLq96c2YZHlZEVP0AyWRED1G8LC4CL
 mMNg73mONZSn7uveBzirh7kke5w1+XSGw3qZwlRlABkn8WOCPR/le8D/yoAkzLfeJi7R
 8GRA==
X-Gm-Message-State: AGi0PuaksDIohvWF0yvUJZNMffivshxPWmfPVrSin8zpRma8amsBhveM
 Eqz6z3MdpFGQcftMgb9aqocmkRSV4Jss6MBK0fydgm12lkiDKnNGFtEC9BlvGwYdG82kSxwJt4F
 fqLtiswDemZiyEr/N47ALZQ==
X-Received: by 2002:adf:f343:: with SMTP id e3mr18182985wrp.51.1587391086588; 
 Mon, 20 Apr 2020 06:58:06 -0700 (PDT)
X-Google-Smtp-Source: APiQypKgfh4+u4HEj4PPYW/XSZ46PCQmhZFzPWrmjnxffDGdhSBfk7/303BzRADycOzBMc3ansohTA==
X-Received: by 2002:adf:f343:: with SMTP id e3mr18182928wrp.51.1587391086383; 
 Mon, 20 Apr 2020 06:58:06 -0700 (PDT)
Received: from localhost.localdomain ([194.230.155.102])
 by smtp.gmail.com with ESMTPSA id y18sm1584636wmc.45.2020.04.20.06.58.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Apr 2020 06:58:05 -0700 (PDT)
From: Emanuele Giuseppe Esposito <eesposit@redhat.com>
Subject: Re: [PATCH 4/8] fs: introduce simple_new_inode
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20200414124304.4470-1-eesposit@redhat.com>
 <20200414124304.4470-5-eesposit@redhat.com>
 <20200414130140.GD720679@kroah.com>
Message-ID: <e87e032e-32cf-a6fc-af8f-3bcece2fcff7@redhat.com>
Date: Mon, 20 Apr 2020 15:58:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200414130140.GD720679@kroah.com>
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
X-Headers-End: 1jQWwH-007Gba-18
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



On 4/14/20 3:01 PM, Greg Kroah-Hartman wrote:
> On Tue, Apr 14, 2020 at 02:42:58PM +0200, Emanuele Giuseppe Esposito wrote:
>> It is a common special case for new_inode to initialize the
>> time to the current time and the inode to get_next_ino().
>> Introduce a core function that does it and use it throughout
>> Linux.
> 
> Shouldn't this just be called new_inode_current_time()?
> 
> How is anyone going to remember what simple_new_inode() does to the
> inode structure?

I noticed that most functions in libfs.c are called "simple_*" when they 
do the right thing for the majority of simple use cases (e.g., 
simple_symlink_inode_operations or simple_dir_operations). I can 
certainly rename the function.

Thank you for all the feedback, I will incorporate it and send a new 
patch series soon.


Emanuele
> 
>> --- a/fs/libfs.c
>> +++ b/fs/libfs.c
>> @@ -595,6 +595,18 @@ int simple_write_end(struct file *file, struct address_space *mapping,
>>   }
>>   EXPORT_SYMBOL(simple_write_end);
>>   
>> +struct inode *simple_new_inode(struct super_block *sb)
>> +{
>> +	struct inode *inode = new_inode(sb);
>> +	if (inode) {
>> +		inode->i_ino = get_next_ino();
>> +		inode->i_atime = inode->i_mtime =
>> +			inode->i_ctime = current_time(inode);
>> +	}
>> +	return inode;
>> +}
>> +EXPORT_SYMBOL(simple_new_inode);



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
