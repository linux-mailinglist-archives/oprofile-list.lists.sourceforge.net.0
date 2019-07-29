Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 218F880BA9
	for <lists+oprofile-list@lfdr.de>; Sun,  4 Aug 2019 18:22:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1huJHK-00087a-S6; Sun, 04 Aug 2019 16:22:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <solal.amouyal@gmail.com>) id 1hs00C-0001ri-Gp
 for oprofile-list@lists.sourceforge.net; Mon, 29 Jul 2019 07:23:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2FDy9dTjqMX0qCQiQqjV64w/rI9nxzygm5N/OOj56cI=; b=EdJQuZvCf1y3/bqTu+82MLRpfF
 dFXo4QKJ3isFQC7Chj+TwZvSu/Jk8F0ZfVcHJ6RjzFdf1HiGJt49SwnaegBgX8Cp7M1/czIt4hHT/
 7ZuquvbZsn2xgxijgm7k4RQwekGpkZGxvZSeLkD9QpmyHBx94otrr1+VVruMkU2faK+U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2FDy9dTjqMX0qCQiQqjV64w/rI9nxzygm5N/OOj56cI=; b=R6wCd59YRx6535XxORwWdhe1ll
 qTBE8uezlIJ8IhONK2wxJzSWl+GDfnY1zKRj6HKLHkArsvh1SBJwrXTchPa4Zl03AaUrzak+SdiHi
 qGqEuOXzLQmaJpgehBqvrOtsn3WIWzOo/v0BbcNEUkgBiu6nUot7i1eiQUguT8XHoJKk=;
Received: from mail-wm1-f47.google.com ([209.85.128.47])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hs00A-0035mI-VQ
 for oprofile-list@lists.sourceforge.net; Mon, 29 Jul 2019 07:23:24 +0000
Received: by mail-wm1-f47.google.com with SMTP id s3so52781155wms.2
 for <oprofile-list@lists.sourceforge.net>;
 Mon, 29 Jul 2019 00:23:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2FDy9dTjqMX0qCQiQqjV64w/rI9nxzygm5N/OOj56cI=;
 b=Wz65KJqCpP6+FmuE+5FLomYQUbcJ5pWWesr1KmEhh6qSTd6Rj+UJ6f5QZYMvx9OhCu
 yJ8uJayhfArNY679yGg56MQNJoQAhBFiJB5dJlqUYHZZDdsdTPctZmeZTzQeH13gOU71
 KL3isdO8RUjNfUmUQlyAMwXHKaVPjEOZogdGvY6CEYN5u1v08CDG6LvHmGds3dyi+10T
 3MrFPdnnI7TpbxPJ6USGTQuBDdW9JT4uB44lrCCeRwECVzkGizQxkJWIcZQcTBGKBnUB
 w5JfHec9ntTxDYuiSalNHyFnqEHufYm/rgNZ6Qwy9JvW2Bd4KlheT7Jenh6AWmdCaWbU
 YaIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2FDy9dTjqMX0qCQiQqjV64w/rI9nxzygm5N/OOj56cI=;
 b=VYrXqVuUpsrwrQQbDkQFaVc3N4NjOvzYCl1Xo1BXlJvrmje/YGp3gTqxV7/SWmjH8V
 3gKGnpj6WSp43n290Xx51LG9033VPFCVE5YT/85Xm+p24HK6OcVSLIrzznldLBtK4MrQ
 HAAmqqe6d+Q090ybsQueSrvf3Tybw0/J+Ee1a0+NdNHH6WFfguHeSTgPNlslQpGMeWpO
 0/cvLQ+Gev0llR04qXctMewOowyEOT7IIDiOnmX02FyLJ3CdOSgAexvhjHXaQbN/O39g
 yPONacJkR4dMobVH8LvWKDrqJcZ7ekYHYU2KJwF+T1/zpOvZENiYQ83QrqmXQsK1SvCr
 RcWw==
X-Gm-Message-State: APjAAAXFCggIwfqDkfTkmHFoH7gYKCfkwzRFgeuzbuN7mBEFzM6TwlMx
 u+9/RzINZTHTN0Xgncf/LNo/STnKugzdP0bzd34=
X-Google-Smtp-Source: APXvYqwSD6fNGAG3kbyc7BvbjBRz+KHaKlW7m9kLqqcVn6HrAj7WoprcwK2KFcA8ZVUUnedpxizy6U/CpWxT3weFxyk=
X-Received: by 2002:a1c:f418:: with SMTP id z24mr48597370wma.80.1564384996269; 
 Mon, 29 Jul 2019 00:23:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAN8ajf7-cJcW6cWLiQSQ_2q2s-XNnMJaOx1EtAvCJ4MP9h6WfA@mail.gmail.com>
 <bb35ef0b-1001-0a48-b0f1-31eb775bc87e@redhat.com>
In-Reply-To: <bb35ef0b-1001-0a48-b0f1-31eb775bc87e@redhat.com>
From: Solal Amouyal <solal.amouyal@gmail.com>
Date: Mon, 29 Jul 2019 10:23:05 +0300
Message-ID: <CAN8ajf6KE4K_yZPKq0jGTLhC6N0+QrPKEaJWK76O+3AuRu-7tQ@mail.gmail.com>
Subject: Re: [oprof-cvs] popt.h: File not found
To: William Cohen <wcohen@redhat.com>
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (solal.amouyal[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.47 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.47 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hs00A-0035mI-VQ
X-Mailman-Approved-At: Sun, 04 Aug 2019 16:22:37 +0000
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
Cc: oprofile-list <oprofile-list@lists.sourceforge.net>
Content-Type: multipart/mixed; boundary="===============5308335521262416601=="
Errors-To: oprofile-list-bounces@lists.sourceforge.net

--===============5308335521262416601==
Content-Type: multipart/alternative; boundary="000000000000fea2bf058eccc30e"

--000000000000fea2bf058eccc30e
Content-Type: text/plain; charset="UTF-8"

Will,

Thank you for your reply.

I was able to successfully install it. I do have some experience with Linux
but am new to Centos, I'm just learning my way around it.

Thanks again,

_________________________

Solal Amouyal


On Tue, Jul 23, 2019 at 11:31 PM William Cohen <wcohen@redhat.com> wrote:

> On 7/23/19 10:17 AM, Solal Amouyal wrote:
> > Hello,
>
> Hi,
>
> cc'ing the appropriate list for this reply.
>
> >
> > I am running on CentOS Linux release 7.6.1810.
> >
> > I am trying to install oprofile on my machine. It is available to
> install from yum but only as an older version (0.9.9).
> >
>
> It is a good starting point to download the source rpm and look at the
> packages that you need to have installed to build the package.  These
> should be pretty much the same for the more recent version of the package
> (the yum install... and yum-builddep will need to be run as root):
>
> yum install yum-utils rpm-build
> yumdownloader --source oprofile
> yum-builddep ./oprofile*.rpm
>
> You can see what they are your self with:
>
> rpm -Uvh oprofile*.rpm
> more ~/rpm/SPECS/oprofile.spec
>
>
> > I downloaded the git repository and run ./configure && make. The make
> command terminated with the following error:
> > op_popt.h:16:18: fatal error: popt.h: No such file or directory
> >  #include <popt.h>
> >
> > op_popt.h is located in ./libutil.h
> > There is not popt.h file in the repository, only popt_options.h located
> in libopt++.
> > I tried adding a popt.h file found online, modifying op_popt.h to
> include popt_options.h instead... I couldnt get it to work. I have attached
> the config.log file.
>
> It looks like you are missing popt-devel.  You will need to install that.
> There may be some other packages that you need to install besides that.
>
> -Will
> >
> > Any help is appreciated. Thanks,
> >
> > _________________________
> >
> > Solal Amouyal
> >
> >
> > _______________________________________________
> > Oprofile-commits mailing list
> > Oprofile-commits@lists.sourceforge.net
> > https://lists.sourceforge.net/lists/listinfo/oprofile-commits
> >
>
>

--000000000000fea2bf058eccc30e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Will,<div><br></div><div>Thank you for your reply.=C2=A0</=
div><div><br></div><div>I was able to successfully install it. I do have so=
me experience with Linux but am new to Centos, I&#39;m just learning my way=
 around it.</div><div><br></div><div>Thanks again,</div><div><br></div><div=
><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signatu=
re"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>_________________________<b=
r><br>Solal Amouyal</div></div></div></div></div></div><br></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 23, =
2019 at 11:31 PM William Cohen &lt;<a href=3D"mailto:wcohen@redhat.com">wco=
hen@redhat.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">On 7/23/19 10:17 AM, Solal Amouyal wrote:<br>
&gt; Hello,<br>
<br>
Hi,<br>
<br>
cc&#39;ing the appropriate list for this reply.<br>
<br>
&gt; <br>
&gt; I am running on CentOS Linux release 7.6.1810.<br>
&gt; <br>
&gt; I am trying to install oprofile on my machine. It is available to inst=
all from yum but only as an older version (0.9.9).<br>
&gt; <br>
<br>
It is a good starting point to download the source rpm and look at the pack=
ages that you need to have installed to build the package.=C2=A0 These shou=
ld be pretty much the same for the more recent version of the package (the =
yum install... and yum-builddep will need to be run as root):<br>
<br>
yum install yum-utils rpm-build<br>
yumdownloader --source oprofile<br>
yum-builddep ./oprofile*.rpm<br>
<br>
You can see what they are your self with:<br>
<br>
rpm -Uvh oprofile*.rpm<br>
more ~/rpm/SPECS/oprofile.spec<br>
<br>
<br>
&gt; I downloaded the git repository and run ./configure &amp;&amp; make. T=
he make command terminated with the following error:<br>
&gt; op_popt.h:16:18: fatal error: popt.h: No such file or directory<br>
&gt; =C2=A0#include &lt;popt.h&gt;<br>
&gt; <br>
&gt; op_popt.h is located in ./libutil.h<br>
&gt; There is not popt.h file in the repository, only popt_options.h locate=
d in libopt++.<br>
&gt; I tried adding a popt.h file found online, modifying op_popt.h to incl=
ude popt_options.h instead... I couldnt get it to work. I have attached the=
 config.log file.<br>
<br>
It looks like you are missing popt-devel.=C2=A0 You will need to install th=
at.=C2=A0 There may be some other packages that you need to install besides=
 that.<br>
<br>
-Will<br>
&gt; <br>
&gt; Any help is appreciated. Thanks,<br>
&gt; <br>
&gt; _________________________<br>
&gt; <br>
&gt; Solal Amouyal<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; Oprofile-commits mailing list<br>
&gt; <a href=3D"mailto:Oprofile-commits@lists.sourceforge.net" target=3D"_b=
lank">Oprofile-commits@lists.sourceforge.net</a><br>
&gt; <a href=3D"https://lists.sourceforge.net/lists/listinfo/oprofile-commi=
ts" rel=3D"noreferrer" target=3D"_blank">https://lists.sourceforge.net/list=
s/listinfo/oprofile-commits</a><br>
&gt; <br>
<br>
</blockquote></div>

--000000000000fea2bf058eccc30e--


--===============5308335521262416601==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5308335521262416601==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list

--===============5308335521262416601==--

