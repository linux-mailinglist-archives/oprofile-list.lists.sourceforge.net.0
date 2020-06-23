Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E02D20467E
	for <lists+oprofile-list@lfdr.de>; Tue, 23 Jun 2020 03:05:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Message-ID:Subject:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=00qJfpHpXbHXUCYo60Nw8aPkg3j/0uBEyBNAonLyhWg=; b=WY1KyYsSL4VByKpIU3AT5LVviH
	58dL2Cn+Q0/Ko/74ItI6EFJNri0WPZjW6RwpCYDqPNuYEWsBQtuz7xDWvjwcVcj5XRy3Yzn9GjzBZ
	ldY2N+mdm1Qy7u68jXPdbtwjz5HPWFi7Akg9PIP3gcPeUBhqtMror9eBHjFR99vCLz7c=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1jnXMz-0000D8-9m; Tue, 23 Jun 2020 01:05:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mr284@protonmail.com>) id 1jnXMx-0000D0-2R
 for oprofile-list@lists.sourceforge.net; Tue, 23 Jun 2020 01:04:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8nkIyybqoxX/Xxj7mEhGKT2jRmhWncZmBqdI+41/WpY=; b=ROy/VQ53PMiW5cs9yw3TvaC1R7
 skxa91n9ZLFnOXI9O9RGEaMLUVNEdeGGM0J0W1FYS06o4gvcfXN1xO2fudp1Rgp9/5yaXIVHqXxj1
 6TVc3uUgps0M1ZDUH/MImRCRQ3ZjYjlW2Uhr9769ndewamblRN/9GtynQYnI0VwdiPVc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Reply-To:From:To:Date:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=8nkIyybqoxX/Xxj7mEhGKT2jRmhWncZmBqdI+41/WpY=; b=d
 qsXJZL0E0lGaKlDyTX0XfS56KVwOKkgApctJcrLPLaUXG3Dqnmuq/ifrxkg4ZKRpdekGTunxqaPy1
 CnY4a8Yrr7tTBjktPgtDUnCuSlI02o5b3CjfapBClRElZz7hkKmW+7WHwTPiZGmhYq8xhTmKGHhtZ
 SwGSbrQXoQR3EmbI=;
Received: from mail-40133.protonmail.ch ([185.70.40.133])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jnXMt-00CSVO-QX
 for oprofile-list@lists.sourceforge.net; Tue, 23 Jun 2020 01:04:59 +0000
Date: Tue, 23 Jun 2020 01:04:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=protonmail; t=1592874281;
 bh=8nkIyybqoxX/Xxj7mEhGKT2jRmhWncZmBqdI+41/WpY=;
 h=Date:To:From:Reply-To:Subject:From;
 b=fTPOl3ZbAY8NKI0twIzwGa/6E4RKF9g3Lla4aIBnX2FFYhH2C5PILLBsM9hObbmwC
 WiAo4AdtAjp1dU6vfA73cUZG+/oeSFXVe95emx9FlahkScAb0vKG/FhGEBrLG7apbQ
 v42j4drgUtHdzUT5cbs+E8b12PKbulRiyF/tnq2w=
To: "oprofile-list@lists.sourceforge.net" <oprofile-list@lists.sourceforge.net>
Subject: Questions re three Items not covered in the documentation
Message-ID: <0uxNPLzr-90je7uwgwPfIgkMHX5CnpnyicZNXscUXDfIKWOZ26Etxm0hCIqQ-LLTs9JKbuvcdFbJP0qcMLedglVRFILq0Sylw8Gp1cCqAWA=@protonmail.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-0.7 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
 FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,HTML_MESSAGE shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on mail.protonmail.ch
X-Spam-Score: 1.4 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (mr284[at]protonmail.com)
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [185.70.40.133 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (mr284[at]protonmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (mr284[at]protonmail.com)
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jnXMt-00CSVO-QX
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
From: Mark via oprofile-list <oprofile-list@lists.sourceforge.net>
Reply-To: Mark <mr284@protonmail.com>
Content-Type: multipart/mixed; boundary="===============2259540623319975876=="
Errors-To: oprofile-list-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.

--===============2259540623319975876==
Content-Type: multipart/alternative;
 boundary="b1_ifLkq0BSHMaSnBccwte8wDrNccXsamOppTKEI1083F4"

This is a multi-part message in MIME format.

--b1_ifLkq0BSHMaSnBccwte8wDrNccXsamOppTKEI1083F4
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

SSBqdXN0IHN0YXJ0ZWQgdXNpbmcgT1Byb2ZpbGUgdGhpcyB3ZWVrIGFuZCBJIGhhdmUgdGhyZWUg
cXVlc3Rpb25zIHRoYXQgYXJlIG5vdCBjb3ZlcmVkIGluIHRoZSBkb2N1bWVudGF0aW9uLiBJIGFt
IHByb2ZpbGluZyBhIHByb2dyYW0gd3JpdHRlbiBpbiBOQVNNOyBpdCBoYXMgYXJvdW5kIDEsMDAw
IGxpbmVzLCBhbmQgdXNlcyBBVlgtNTEyIGV4dGVuc2l2ZWx5LgoKRmlyc3QgcXVlc3Rpb246IEkg
Y3JlYXRlZCB0aGUgZm9sbG93aW5nIHJlcG9ydDoKCnN1ZG8gb3BlcmYgLWUgbDFkX3BlbmRfbWlz
czoyMDAwMDAzOnBlbmRpbmcgLS1zZXBhcmF0ZS1jcHUgLi9DYWxsX1Rlc3RfUHJvZ3JhbS5leGUK
Cm9wYW5ub3RhdGUgLWEgLXMgPiBhbm5vdGF0ZV8wNjIyMjBfMDEudHh0CgpIZXJlIGlzIGEgc2Ft
cGxlIHNlY3Rpb246CgoxNzg5OiB2bW92ZHF1NjQgKCVyZGkpLCV6bW0weyVrN317en0KbW92IHJk
aSxbcmJwLTE2XQowIDAgMTc4IDY4LjE5OTIgMTA5IDQ3LjM5MTMgMTQzIDU2Ljk3MjEgMCAwCjog
MTc4ZjogbW92IC0weDEwKCVyYnApLCVyZGkKOnZtb3ZkcXU2NCBbcmRpXSx6bW0wCjAgMCAxIDAu
MzgzMSAxIDAuNDM0OCAxIDAuMzk4NCAwIDAKOiAxNzkzOiB2bW92ZHF1NjQgJXptbTAsKCVyZGkp
CgpJIGFzc3VtZSB0aGUgc3RhdHMgc2hvd24gb24gdGhvc2UgbGluZXMgYXJlICgxKSBudW1iZXIg
b2YgaW5zdGFuY2VzICgyKSBwZXJjZW50IG9mIGFsbCBpbnN0YW5jZXMuIElzIHRoYXQgY29ycmVj
dD8KClNlY29uZCBxdWVzdGlvbjogSSBjcmVhdGVkIHNldmVuIHJlcG9ydHMgdG9kYXkgdXNpbmcg
b3Bhbm5vdGF0ZSAtYSAtcyA+IGFubm90YXRlXzA2MjIyMF8wMS50eHQsIGJ1dCBub25lIG9mIHRo
ZSByZXBvcnRzIHNob3dzIGFsbCBvZiB0aGUgc291cmNlIGNvZGUgZnJvbSB0aGlzIH4xLDAwMCBs
aW5lIHByb2dyYW0uIFdoYXQgZG8gSSBuZWVkIHRvIGRvIHRvIHNob3cgYWxsIHNvdXJjZSBjb2Rl
IGxpbmVzPwoKVGhpcmQgcXVlc3Rpb246IGNhbiBJIHNlZSB0aGUgc291cmNlIGFuZCBhc3NlbWJs
eSBvdXRwdXQgaW4gSW50ZWwgc3ludGF4PwoKVGhhbmtzLg==

--b1_ifLkq0BSHMaSnBccwte8wDrNccXsamOppTKEI1083F4
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdj5JIGp1c3Qgc3RhcnRlZCB1c2luZyBPUHJvZmlsZSB0aGlzIHdlZWsgYW5kIEkgaGF2ZSB0
aHJlZSBxdWVzdGlvbnMgdGhhdCBhcmUgbm90IGNvdmVyZWQgaW4gdGhlIGRvY3VtZW50YXRpb24u
Jm5ic3A7IEkgYW0gcHJvZmlsaW5nIGEgcHJvZ3JhbSB3cml0dGVuIGluIE5BU007IGl0IGhhcyBh
cm91bmQgMSwwMDAgbGluZXMsIGFuZCB1c2VzIEFWWC01MTIgZXh0ZW5zaXZlbHkuJm5ic3A7PGJy
PjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+Rmlyc3QgcXVlc3Rpb246Jm5ic3A7IEkgY3JlYXRl
ZCB0aGUgZm9sbG93aW5nIHJlcG9ydDo8YnI+PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5zdWRv
IG9wZXJmIC1lIGwxZF9wZW5kX21pc3M6MjAwMDAwMzpwZW5kaW5nIC0tc2VwYXJhdGUtY3B1IC4v
Q2FsbF9UZXN0X1Byb2dyYW0uZXhlPGJyPjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+b3Bhbm5v
dGF0ZSAtYSAtcyAmZ3Q7IGFubm90YXRlXzA2MjIyMF8wMS50eHQ8YnI+PC9kaXY+PGRpdj48YnI+
PC9kaXY+PGRpdj5IZXJlIGlzIGEgc2FtcGxlIHNlY3Rpb246PGJyPjwvZGl2PjxkaXY+PGJyPjwv
ZGl2PjxkaXY+MTc4OTogdm1vdmRxdTY0ICglcmRpKSwlem1tMHslazd9e3p9PGJyPjwvZGl2Pjxk
aXY+bW92IHJkaSxbcmJwLTE2XTxicj48L2Rpdj48ZGl2PjAgMCAxNzggNjguMTk5MiAxMDkgNDcu
MzkxMyAxNDMgNTYuOTcyMSAwIDA8YnI+PC9kaXY+PGRpdj46IDE3OGY6IG1vdiAtMHgxMCglcmJw
KSwlcmRpPGJyPjwvZGl2PjxkaXY+OnZtb3ZkcXU2NCBbcmRpXSx6bW0wPGJyPjwvZGl2PjxkaXY+
MCAwIDEgMC4zODMxIDEgMC40MzQ4IDEgMC4zOTg0IDAgMDxicj48L2Rpdj48ZGl2PjogMTc5Mzog
dm1vdmRxdTY0ICV6bW0wLCglcmRpKTxicj48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PkkgYXNz
dW1lIHRoZSBzdGF0cyBzaG93biBvbiB0aG9zZSBsaW5lcyBhcmUgKDEpIG51bWJlciBvZiBpbnN0
YW5jZXMgKDIpIHBlcmNlbnQgb2YgYWxsIGluc3RhbmNlcy4mbmJzcDsgSXMgdGhhdCBjb3JyZWN0
PyZuYnNwOzxicj48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PlNlY29uZCBxdWVzdGlvbjombmJz
cDsgSSBjcmVhdGVkIHNldmVuIHJlcG9ydHMgdG9kYXkgdXNpbmcgb3Bhbm5vdGF0ZSAtYSAtcyAm
Z3Q7IGFubm90YXRlXzA2MjIyMF8wMS50eHQsIGJ1dCBub25lIG9mIHRoZSByZXBvcnRzIHNob3dz
IGFsbCBvZiB0aGUgc291cmNlIGNvZGUgZnJvbSB0aGlzIH4xLDAwMCBsaW5lIHByb2dyYW0uJm5i
c3A7IFdoYXQgZG8gSSBuZWVkIHRvIGRvIHRvIHNob3cgYWxsIHNvdXJjZSBjb2RlIGxpbmVzPyZu
YnNwOzxicj48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PlRoaXJkIHF1ZXN0aW9uOiZuYnNwOyBj
YW4gSSBzZWUgdGhlIHNvdXJjZSBhbmQgYXNzZW1ibHkgb3V0cHV0IGluIEludGVsIHN5bnRheD8m
bmJzcDs8YnI+PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5UaGFua3MuJm5ic3A7PGJyPjwvZGl2
PjxkaXY+PGJyPjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXYgY2xhc3M9InByb3Rvbm1haWxfc2ln
bmF0dXJlX2Jsb2NrIj48ZGl2IGNsYXNzPSJwcm90b25tYWlsX3NpZ25hdHVyZV9ibG9jay1wcm90
b24gcHJvdG9ubWFpbF9zaWduYXR1cmVfYmxvY2stZW1wdHkiPjxicj48L2Rpdj48L2Rpdj48ZGl2
Pjxicj48L2Rpdj4=


--b1_ifLkq0BSHMaSnBccwte8wDrNccXsamOppTKEI1083F4--



--===============2259540623319975876==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2259540623319975876==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list

--===============2259540623319975876==--


