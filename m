Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C01D71B2905
	for <lists+oprofile-list@lfdr.de>; Tue, 21 Apr 2020 16:07:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jQtYl-0000L6-Mx; Tue, 21 Apr 2020 14:07:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <eesposit@redhat.com>) id 1jQr3O-0003KU-3d
 for oprofile-list@lists.sourceforge.net; Tue, 21 Apr 2020 11:27:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wz4VbvB++wEfRs6vgYsKShIscVlUFGxxa9BcmRhqVZE=; b=gmhJoFVFNzyBsN/ZxvUgXgmors
 rC0XTadzUIPbOzdUoIJb5gg2nMUyksFUSsU1Z16HAxYFKqxpLRy6Bctv+xhthmu5YmpMN5Pgwv0B3
 0YO5O1OS/EqO+NAM4y6jIesBmbWUsOuwe3kppDd4bhd/vs8HEAnvcLNxCHvrYIWwVNpA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wz4VbvB++wEfRs6vgYsKShIscVlUFGxxa9BcmRhqVZE=; b=gvSNpXY072L/JVMp0qfEWQuGqT
 AL7hRjjxixmqUWQ4wT+dQzmvgP4qGJ34sBYGalAVLkYgtlSE6mq36pxmsuSaDgYJlb07bCV6sqdYo
 tY5qVreZ2YfS3BE4RHOCUTzmklu+QGpEi/rCRf5d6A5GcqQE520jfHpFhWES4LFffC9c=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jQr3J-008NGr-Tp
 for oprofile-list@lists.sourceforge.net; Tue, 21 Apr 2020 11:27:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587468411;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wz4VbvB++wEfRs6vgYsKShIscVlUFGxxa9BcmRhqVZE=;
 b=WV1gucei3YnCpNYP3q1Fts70RtlRprH5c7iq0RjT21Bc7GaxTkmoImRJmuU4P0m83l/3zs
 OFXOZc+Sc5vm5dgUqgUwyjbdwJtceGHwCD30ucE74QDt5hJkSwkpYMAaxm7fQgmYhn/HS5
 BPtIIYyQliSire1oNZv9uhP538occ3E=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-302-jQKzI5FzOQy0peiG8Wv4xw-1; Tue, 21 Apr 2020 07:26:49 -0400
X-MC-Unique: jQKzI5FzOQy0peiG8Wv4xw-1
Received: by mail-wr1-f72.google.com with SMTP id j16so7317985wrw.20
 for <oprofile-list@lists.sf.net>; Tue, 21 Apr 2020 04:26:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rdnJwtlpirvD/9L7xBhvp5m2pmFh+za9be9mrI0LQDE=;
 b=Nl/cRwOshYli+ipM/ILZpSsJkcUgjXmrDW9UwEooQxqg0oT6VquFYhmC44kqb496bm
 ln5kMCFW+gyX+JXtRpdmgUhtUq1QlqjJjFKHH9wheMJ3/p4zaikHew/UUNuFLAsa0q6/
 sqGp98mDFd1YsOsJ/zbXuSPWv+tNG+Jke4q7Ek4x+SKrAYMNNcgwcmcdJvqNH/dUe0Ob
 aSxzEZneEdcdtlu5hITui2tKDlzPd+dDXuHO9xdCqypZ3d8dV48sC05Bz0IKfDdeSb8Z
 WNqgrI5tCSoY+ClfSZ3a3AbnV4HrF6UKz3R5Mjt5aEU7hiRHkS4Bgp885Cew4/AdkciZ
 x4+Q==
X-Gm-Message-State: AGi0PuaSh87dPfEq79CYXKtni59b/UGjmb0rIdLlhCsBe6R7WnUbjsL6
 X2gmet5FG+FF+kTEhplvWDQHDmN/46ytVJ1ffUoNWzOuXLNM7u4md1s2SiYiRzy4nH0evS/uSOo
 JfonjMFrntwt8YZ7eh9GNwA==
X-Received: by 2002:adf:9d8b:: with SMTP id p11mr19729410wre.322.1587468408408; 
 Tue, 21 Apr 2020 04:26:48 -0700 (PDT)
X-Google-Smtp-Source: APiQypLFuKY9/+ahvd0H1GaLlnzWhUfHQUCFYS4RPKLURvSUVIanlHjWMhAT2wQvuycrqclvo4/jpg==
X-Received: by 2002:adf:9d8b:: with SMTP id p11mr19729360wre.322.1587468408223; 
 Tue, 21 Apr 2020 04:26:48 -0700 (PDT)
Received: from localhost.localdomain ([194.230.155.194])
 by smtp.gmail.com with ESMTPSA id z15sm3213949wrs.47.2020.04.21.04.26.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Apr 2020 04:26:47 -0700 (PDT)
Subject: Re: [PATCH 2/8] fs: extract simple_pin/release_fs to separate files
To: Frederic Barrat <fbarrat@linux.ibm.com>, linux-nfs@vger.kernel.org
References: <20200414124304.4470-1-eesposit@redhat.com>
 <20200414124304.4470-3-eesposit@redhat.com>
 <7abfdd3b-dbbe-52ab-df53-95e9f86d39cd@linux.ibm.com>
From: Emanuele Giuseppe Esposito <eesposit@redhat.com>
Message-ID: <0d33b363-3801-8147-6f49-f1d6a845fdaf@redhat.com>
Date: Tue, 21 Apr 2020 13:26:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <7abfdd3b-dbbe-52ab-df53-95e9f86d39cd@linux.ibm.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jQr3J-008NGr-Tp
X-Mailman-Approved-At: Tue, 21 Apr 2020 14:07:34 +0000
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
 netdev@vger.kernel.org, linux-s390@vger.kernel.org,
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
 Uma Krishnan <ukrishn@linux.ibm.com>, Maxime Ripard <mripard@kernel.org>,
 "Manoj N. Kumar" <manoj@linux.ibm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Jakub Kicinski <kuba@kernel.org>,
 KP Singh <kpsingh@chromium.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 "Matthew R. Ochs" <mrochs@linux.ibm.com>,
 "David S. Miller" <davem@davemloft.net>, Felipe Balbi <balbi@kernel.org>,
 Mike Marciniszyn <mike.marciniszyn@intel.com>,
 Iurii Zaikin <yzaikin@google.com>, linux-scsi@vger.kernel.org,
 "Martin K. Petersen" <martin.petersen@oracle.com>, linux-mm@kvack.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dennis Dalessandro <dennis.dalessandro@intel.com>,
 Miklos Szeredi <miklos@szeredi.hu>, linux-security-module@vger.kernel.org,
 linux-kernel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Chuck Lever <chuck.lever@oracle.com>,
 Jeremy Kerr <jk@ozlabs.org>, Daniel Vetter <daniel@ffwll.ch>,
 Colin Cross <ccross@android.com>, linux-fsdevel@vger.kernel.org,
 Paolo Bonzini <pbonzini@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Mike Kravetz <mike.kravetz@oracle.com>, linuxppc-dev@lists.ozlabs.org,
 Martin KaFai Lau <kafai@fb.com>, ocfs2-devel@oss.oracle.com,
 Joel Becker <jlbec@evilplan.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: oprofile-list-bounces@lists.sourceforge.net

CgpPbiA0LzIxLzIwIDE6MTkgUE0sIEZyZWRlcmljIEJhcnJhdCB3cm90ZToKPiAKPiAKPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbWlzYy9jeGwvS2NvbmZpZyBiL2RyaXZlcnMvbWlzYy9jeGwvS2Nv
bmZpZwo+PiBpbmRleCAzOWVlYzkwMzE0ODcuLmE2Mjc5NTA3OWQ5YyAxMDA2NDQKPj4gLS0tIGEv
ZHJpdmVycy9taXNjL2N4bC9LY29uZmlnCj4+ICsrKyBiL2RyaXZlcnMvbWlzYy9jeGwvS2NvbmZp
Zwo+PiBAQCAtMTksNiArMTksNyBAQCBjb25maWcgQ1hMCj4+IMKgwqDCoMKgwqAgc2VsZWN0IENY
TF9CQVNFCj4+IMKgwqDCoMKgwqAgc2VsZWN0IENYTF9BRlVfRFJJVkVSX09QUwo+PiDCoMKgwqDC
oMKgIHNlbGVjdCBDWExfTElCCj4+ICvCoMKgwqAgc2VsZWN0IFNJTVBMRUZTCj4+IMKgwqDCoMKg
wqAgZGVmYXVsdCBtCj4+IMKgwqDCoMKgwqAgaGVscAo+PiDCoMKgwqDCoMKgwqDCoCBTZWxlY3Qg
dGhpcyBvcHRpb24gdG8gZW5hYmxlIGRyaXZlciBzdXBwb3J0IGZvciBJQk0gQ29oZXJlbnQKPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWlzYy9jeGwvYXBpLmMgYi9kcml2ZXJzL21pc2MvY3hsL2Fw
aS5jCj4+IGluZGV4IGI0OTNkZTk2MjE1My4uMGI4ZjhkZTc0NzVhIDEwMDY0NAo+PiAtLS0gYS9k
cml2ZXJzL21pc2MvY3hsL2FwaS5jCj4+ICsrKyBiL2RyaXZlcnMvbWlzYy9jeGwvYXBpLmMKPj4g
QEAgLTksNiArOSw3IEBACj4+IMKgICNpbmNsdWRlIDxtaXNjL2N4bC5oPgo+PiDCoCAjaW5jbHVk
ZSA8bGludXgvbW9kdWxlLmg+Cj4+IMKgICNpbmNsdWRlIDxsaW51eC9tb3VudC5oPgo+PiArI2lu
Y2x1ZGUgPGxpbnV4L3NpbXBsZWZzLmg+Cj4+IMKgICNpbmNsdWRlIDxsaW51eC9wc2V1ZG9fZnMu
aD4KPj4gwqAgI2luY2x1ZGUgPGxpbnV4L3NjaGVkL21tLmg+Cj4+IMKgICNpbmNsdWRlIDxsaW51
eC9tbXVfY29udGV4dC5oPgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9taXNjL29jeGwvS2NvbmZp
ZyBiL2RyaXZlcnMvbWlzYy9vY3hsL0tjb25maWcKPj4gaW5kZXggMmQyMjY2YzE0MzllLi5kZGQ5
MjQ1ZmZmM2QgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbWlzYy9vY3hsL0tjb25maWcKPj4gKysr
IGIvZHJpdmVycy9taXNjL29jeGwvS2NvbmZpZwo+PiBAQCAtMTIsNiArMTIsNyBAQCBjb25maWcg
T0NYTAo+PiDCoMKgwqDCoMKgIGRlcGVuZHMgb24gUFBDX1BPV0VSTlYgJiYgUENJICYmIEVFSAo+
PiDCoMKgwqDCoMKgIHNlbGVjdCBPQ1hMX0JBU0UKPj4gwqDCoMKgwqDCoCBzZWxlY3QgSE9UUExV
R19QQ0lfUE9XRVJOVgo+PiArwqDCoMKgIHNlbGVjdCBTSU1QTEVGUwo+IAo+IAo+IEl0J3Mgbm90
IGNsZWFyIHRvIG1lIHRoZSBLY29uZmlnIHVwZGF0ZWQgaXMgbmVlZGVkIGZvciB0aGUgb2N4bCBk
cml2ZXIuIAo+IEkgdGhpbmsgaXQncyBvbmx5IG5lZWRlZCBmb3IgdGhlIGN4bCBkcml2ZXIuCgpJ
IGFtIGdvaW5nIHRvIGdldCByaWQgb2YgdGhlIHNlcGFyYXRlIHNpbXBsZWZzLmMgZmlsZSBhbmQg
cmVsYXRlZCAKS2NvbmZpZyBlbnRyeSBhbmQgcHV0IGV2ZXJ5dGhpbmcgaW4gZnMvbGliZnMuYywg
c28gdGhpcyBmaWxlICh0b2dldGhlciAKd2l0aCBtYW55IG90aGVycyB0b3VjaGVkIGluIHRoaXMg
cGF0Y2gpIHdvbid0IGJlIG1vZGlmaWVkIGluIHYyLgoKVGhhbmtzLAoKRW1hbnVlbGUKCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Byb2ZpbGUtbGlz
dCBtYWlsaW5nIGxpc3QKb3Byb2ZpbGUtbGlzdEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6
Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3Byb2ZpbGUtbGlzdAo=
