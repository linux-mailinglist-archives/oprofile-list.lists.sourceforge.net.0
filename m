Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D8AFA7C5
	for <lists+oprofile-list@lfdr.de>; Wed, 13 Nov 2019 05:00:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1iUjpi-0002jf-AF; Wed, 13 Nov 2019 04:00:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lironatedgi@gmail.com>) id 1iUe32-0005qi-1z
 for oprofile-list@lists.sourceforge.net; Tue, 12 Nov 2019 21:50:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z4SivzcJMhq2PymTj9V5Cc0doMWQ3mwzp2xREmSa6Tw=; b=hczfKgk2AvsbzpwsCzxpaabAcw
 fScWFI/Wjq61treIDC91Vsz2lwEOJKd0y1kcinKUJIWW7hDpJZ+sGicRwA8vD424fVZcimYFgm0vB
 Pts5RrlHhJj5cFWYLHycFgDCwY0c450nKIEo579aNcMLwgn2AGniS+bPLf9Sadpk4tnw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Z4SivzcJMhq2PymTj9V5Cc0doMWQ3mwzp2xREmSa6Tw=; b=I
 7J1XkGoxZVAetoOMzywyVxUXj37EYrp+9DgE3zaiiIqM/wYkCXBV45gbEDOs8igt7fw9eOz5P1Mve
 MvZB3MSKdU5ypsAXQ/jHznssWBsrPBtoffwz57t/7upMiQfj56o8IUaFw+pnyx/k5k7FMNRMVJnVN
 XP7xBJfHXzo07RK0=;
Received: from mail-il1-f181.google.com ([209.85.166.181])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iUe30-00HZPb-5a
 for oprofile-list@lists.sourceforge.net; Tue, 12 Nov 2019 21:50:03 +0000
Received: by mail-il1-f181.google.com with SMTP id q15so11867651ils.8
 for <oprofile-list@lists.sf.net>; Tue, 12 Nov 2019 13:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Z4SivzcJMhq2PymTj9V5Cc0doMWQ3mwzp2xREmSa6Tw=;
 b=KNJSRkBdfR0uIFU6XfxhV4bY4OPI4Nc9se8KPtAI2aOO5jFWnuAbXWmt4OgX0Q5ZzS
 VOPZJkWxOilQPkO/s+Qr2GmP4Ku8R6r0KMhrVIDXAA5wiAOp3Jt1cNpd8hsCnQoSKYXC
 qzE3nX34/N6fat0ODzAVzUUWv4cMiil8FTC6x7Uv1bQL7whl2vaIOa2Foh7qJRtQ88am
 IrRYUENpqMfkGhgsKpJL9eUngNLF/kvvf7MjPpMje+t3z/DDBvJ/fCD+Eto2nZNc9em0
 DWFLQvc1snJCt03EvuNf1bBk3abKgGpR8ANxatk6tLeFVHlDAqBTvrnAwEje0rMsmg2z
 s4Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Z4SivzcJMhq2PymTj9V5Cc0doMWQ3mwzp2xREmSa6Tw=;
 b=MNmHnVC5qblbZiWf2V5OeEWTUveeoDNKdg2lh44C2OhohdLyZV47ixVAFICCdZgfyF
 tJRfxHEi+4s7DGhIfVoAdd0vLoLIpW3jGra+kDOva4e4ZJ6XLWshRKNdAQ5kXG+o4ueC
 IDHcx1sI7v1tCjr80N+YwKZ901RW/FudhcW5V9zw75wiuszOZTTlK+BCpGV37V0xLakq
 V19Ra7zsAnghdZMDqRkUGXwtvuFQlp4Y5rz8+fYcpr1X6ztbHSbz5QqTJ70KOEsz++LL
 m2g5YLrAdLmeLqcZydjWrdybCSfN4nt/VfMd27QzH18lOU2zm/a8ryDSr5Du/Ybse0C+
 CmeA==
X-Gm-Message-State: APjAAAWvXc8wS8qyhuO8sLYcvbkjBot2ZNHkOXIcB1ccThxhWu06HU+e
 Oaevt61ALAq6Ps/aV4Yd0Jx5YwUuTabE9NBmxd+HpGcK
X-Google-Smtp-Source: APXvYqxR7LLCLRhgSLmvOKxYvv86k0AtlVXoKSQc+UdT01q9voY1nyiSL24s5g58QKFnZITLs3w4ju6fRDiiKdzpo2E=
X-Received: by 2002:a92:d64d:: with SMTP id x13mr140661ilp.54.1573595395999;
 Tue, 12 Nov 2019 13:49:55 -0800 (PST)
MIME-Version: 1.0
From: Liron Atedgi <lironatedgi@gmail.com>
Date: Tue, 12 Nov 2019 23:49:44 +0200
Message-ID: <CAE-X+We6wRnCFhBPp8fh6Q202WiDBJuj5GHRm4x-OfmoPnMhag@mail.gmail.com>
Subject: Does the oprofile support mips64r6 ?
To: oprofile-list@lists.sf.net
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lironatedgi[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.181 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.181 listed in wl.mailspike.net]
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iUe30-00HZPb-5a
X-Mailman-Approved-At: Wed, 13 Nov 2019 04:00:39 +0000
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
Content-Type: multipart/mixed; boundary="===============0051664179763716123=="
Errors-To: oprofile-list-bounces@lists.sourceforge.net

--===============0051664179763716123==
Content-Type: multipart/alternative; boundary="000000000000994e4305972d3aca"

--000000000000994e4305972d3aca
Content-Type: text/plain; charset="UTF-8"

Hi,

Does the oprofile support the mips64r6 ?

Thanks,
Liron

--000000000000994e4305972d3aca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">Does the=
 oprofile support the mips64r6 ?=C2=A0</div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">Thanks,</div><div dir=3D"auto">Liron</div></div>

--000000000000994e4305972d3aca--


--===============0051664179763716123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0051664179763716123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list

--===============0051664179763716123==--

