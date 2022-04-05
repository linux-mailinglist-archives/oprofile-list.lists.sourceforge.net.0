Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D09184F37AD
	for <lists+oprofile-list@lfdr.de>; Tue,  5 Apr 2022 16:21:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1nbjwC-0005gs-A8; Tue, 05 Apr 2022 14:21:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <wcohen@redhat.com>) id 1nbjwA-0005gm-MH
 for oprofile-list@lists.sourceforge.net; Tue, 05 Apr 2022 14:21:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:Cc:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dOww3suy97DtoqzN58x+HUHNIqyhdJ563+3JvNLvMPU=; b=mAfi8hHx+zl8bgZ1QHlk+30t3e
 EOKA2fJDzIfkAnhscniGg8peDOgJeWjiH5ddVhfkOBMA5p6jGRSe5ntr/vFHBhsG3nNPvHAm0w4s5
 weALqqym4HR2P3NbgJQXFmgEFrG6EKxteDdZ3gEYe/2hWuwEWtqVfB5/S48R34GudL+4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:Cc:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dOww3suy97DtoqzN58x+HUHNIqyhdJ563+3JvNLvMPU=; b=m0hdy+teGGrCOT2NQ7djdI/ECA
 xbh9YVvJ3RaDFc6fbB6dq6kU5kdPXg7dtcOtz8tMQwgdrC8tCnuDJueixO9cQ7VdhWRDZHhyrpYIQ
 i2wYNnzunpRG/Z3SyVIcuyv1nPxRcsCVp8EGpbmdRRB9acrAY/j1jvQaLuVNSPQOb7Ss=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nbk41-0000rd-RY
 for oprofile-list@lists.sourceforge.net; Tue, 05 Apr 2022 14:21:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1649168498;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dOww3suy97DtoqzN58x+HUHNIqyhdJ563+3JvNLvMPU=;
 b=i+bRAfNTZ0H//oxKLsN94y6i0/AxgZUnGoWQZRYtiGWiof1fvOBp6c9YigKKk8UeSGfPqz
 Hq1yZj4RlAlaMW/GL9Z30aUNtIYlwItXu8G1c3V9EQEErRizipndSS/6O7xzbYuFszrxch
 B+NG6JAahOuEknBR2crPauW3IDpwvhU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-453-qec5S-xRPI-NfPi_JO3mww-1; Tue, 05 Apr 2022 10:21:37 -0400
X-MC-Unique: qec5S-xRPI-NfPi_JO3mww-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0DC6B811E76;
 Tue,  5 Apr 2022 14:21:37 +0000 (UTC)
Received: from [10.13.121.77] (dhcp-121-77.rdu.redhat.com [10.13.121.77])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E432E42496A;
 Tue,  5 Apr 2022 14:21:36 +0000 (UTC)
Message-ID: <508a9317-1362-fc3b-4372-381ad4d369ad@redhat.com>
Date: Tue, 5 Apr 2022 10:21:36 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: Help needed
To: Giri Prasad <shashanka2005@gmail.com>, oprofile-list@lists.sourceforge.net
References: <CABHJPfakLLMSAL=NW6FTSXQQs+A1vkFUxqj3Ruin8EfWeUSPzg@mail.gmail.com>
From: William Cohen <wcohen@redhat.com>
In-Reply-To: <CABHJPfakLLMSAL=NW6FTSXQQs+A1vkFUxqj3Ruin8EfWeUSPzg@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=wcohen@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 4/5/22 05:59, Giri Prasad wrote: > 1) I installed operf
    in linux machine, below is the version: > > operf: oprofile 1.3.0 compiled
    on Feb  2 2020 20:33:34 > > 2) I wrote a simple program and ran : [...] 
 
 Content analysis details:   (-3.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [170.10.129.124 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
                             [170.10.129.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nbk41-0000rd-RY
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
Cc: wcohen@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: oprofile-list-bounces@lists.sourceforge.net

T24gNC81LzIyIDA1OjU5LCBHaXJpIFByYXNhZCB3cm90ZToKPiAxKSBJIGluc3RhbGxlZCBvcGVy
ZiBpbiBsaW51eCBtYWNoaW5lLCBiZWxvdyBpcyB0aGUgdmVyc2lvbjoKPiAKPiBvcGVyZjogb3By
b2ZpbGUgMS4zLjAgY29tcGlsZWQgb24gRmViIMKgMiAyMDIwIDIwOjMzOjM0Cj4gCj4gMikgSSB3
cm90ZSBhIHNpbXBsZSBwcm9ncmFtIGFuZCByYW4gOiAqb3BlcmYgLi9hLm91dCoKPiAKPiAzKSBp
dCBnZW5lcmF0ZWQgdGhlIGZvbGRlcjogKm9wcm9maWxlX2RhdGEqCj4gKgo+ICoKPiA0KSB3aGVu
IGkgcnVuIG9wcmVwb3J0IGFzIGJlbG93Ogo+ICoKPiAqCj4gKiMjPiBvcHJlcG9ydCBzZXNzaW9u
Om9wcm9maWxlX2RhdGEgZXZlbnQ6REFUQV9NRU1fUkVGUwo+IFVzaW5nIC9ob21lL3ByYXNhZGdp
L3Rvb2xzL2NwcC9vcHJvZmlsZV9kYXRhL3NhbXBsZXMvIGZvciBzYW1wbGVzIGRpcmVjdG9yeS4K
PiBvcHJlcG9ydCBlcnJvcjogTm8gc2FtcGxlIGZvdW5kOiBQbGVhc2Ugc3BlY2lmeSBhIHNlc3Np
b24gY29udGFpbmluZwo+IHNhbXBsZSBkYXRhLioKPiAqCj4gKgo+ICpQbGVhc2UgaGVscCB3aGF0
IGlzIG1pc3NpbmcgPyoKPiAqCj4gKgo+IFJlZ2FyZHMsCj4gR2lyaSBQcmFzYWQKPiAKPiAKPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IG9wcm9maWxl
LWxpc3QgbWFpbGluZyBsaXN0Cj4gb3Byb2ZpbGUtbGlzdEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQK
PiBodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcHJvZmlsZS1s
aXN0CgpIaSwKCkJ5IGRlZmF1bHQgb3BlcmYgaXMgZ29pbmcgdG8gdXNlIGEgY2xvY2sgY3ljbGUg
ZXZlbnQgdG8gcmVjb3JkIHNhbXBsZXMgLiAgIFlvdSBzaG91bGQgc2VlIHNhbXBsZXMgaWYgeW91
IGRvICJvcHJlcG9ydCIuICBIb3dldmVyLCBpZiB0aGUgcHJvZ3JhbSBydW5zIGZvciBhIHZlcnkg
c2hvcnQgYW1vdW50IG9mIHRpbWUgdGhlcmUgbWlnaHQgbm90IGJlIGVub3VnaCBldmVudHMgKGN5
Y2xlcykgdG8gdHJpZ2dlciBhIHNhbXBsZS4gIElmIHlvdSB3YW50IHRvIGdldCBzYW1wbGVzIG9m
IHRoZSBEQVRBX01FTV9SRUZTIHlvdSBhcmUgZ29pbmcgdG8gbmVlZCB0byBzcGVjaWZ5IHRoZSBl
dmVudHMgd2l0aCB0aGUgLS1ldmVudHMgLyAtZSBvcHRpb24gZm9yIG9wZXJmOgoKCmh0dHBzOi8v
b3Byb2ZpbGUuc291cmNlZm9yZ2UuaW8vZG9jL2NvbnRyb2xsaW5nLXByb2ZpbGVyLmh0bWwjY29u
dHJvbGxpbmctb3BlcmYKCllvdSBtaWdodCBhbHNvIGNvbnNpZGVyIHVzaW5nIGxpbnV4IHBlcmY6
CgpodHRwczovL3BlcmYud2lraS5rZXJuZWwub3JnL2luZGV4LnBocC9NYWluX1BhZ2UKCi1XaWxs
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wcm9m
aWxlLWxpc3QgbWFpbGluZyBsaXN0Cm9wcm9maWxlLWxpc3RAbGlzdHMuc291cmNlZm9yZ2UubmV0
Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wcm9maWxlLWxp
c3QK
