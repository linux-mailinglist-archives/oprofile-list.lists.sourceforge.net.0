Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 339D24F52D0
	for <lists+oprofile-list@lfdr.de>; Wed,  6 Apr 2022 05:27:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1nbwK5-0002Jy-4s; Wed, 06 Apr 2022 03:27:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <shashanka2005@gmail.com>) id 1nbwK2-0002Js-Vz
 for oprofile-list@lists.sourceforge.net; Wed, 06 Apr 2022 03:27:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UD9mtkSeoYgUbd437WkJqSSud9/39V7teWCdXfiErcI=; b=IeJ6Vux6M12XAX3UBFDFwXOd1y
 lfWaHg4rZNSQYV3TRcrxZt3cCtNoE5hhReH6xH6PlDS/19Im2K64eisTiuYQWfPDa0KMXfZjbgwQb
 j8Kb2M0kz956gLKxnhpHjaX7mahw0hfCupFuTcplNBuLDRRIxZxC0HUwkRiFQgy/3aoY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UD9mtkSeoYgUbd437WkJqSSud9/39V7teWCdXfiErcI=; b=CPt3fSGZa6hzPi3GNBCsOpjsjg
 OY7731PazxQ17L6wcS+NVcllRiCSTTG8/+3FtwvpMh+w/tBXw9YsyBSYPvdCbFtTkML4F+usUVBEu
 fn/p6Z/l49avhyjO+mOYxNp2eS7XAeDHcV27UbkthRv6U/tV7mpg6/3AC3nQyHP9arvQ=;
Received: from mail-ua1-f47.google.com ([209.85.222.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nbwJx-0001p6-9Z
 for oprofile-list@lists.sourceforge.net; Wed, 06 Apr 2022 03:27:05 +0000
Received: by mail-ua1-f47.google.com with SMTP id i26so1271139uap.6
 for <oprofile-list@lists.sourceforge.net>;
 Tue, 05 Apr 2022 20:27:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UD9mtkSeoYgUbd437WkJqSSud9/39V7teWCdXfiErcI=;
 b=UGge54dP7jMuH5MfjjBI1CMz08SuQomgw/Oe0gACSEDQc62E2Usnz6k2D2Nhgjbq7N
 IRRZgT3nEKajEEpAVeoK1zPMFAQxCwrrjVbSnit0uNmL2nCbWQYVOzWwNoa3gCB9uAKN
 iRtOhZpsEIZmvrwkxK2Uz7Is781WmV8ud5ppMGETCZingWhpfNhgqTIzUBNS0VWujyY6
 GWFcHwR8DBuKmWB4kztQ/ijV0l2bDKtYhb/u2VzL+DFkL5maii6adf7/oCmWy7ODjhB+
 4kEzl/ncBsPtEMbR53y6cRnNdz7d35rsLmDZauPBEiPgPDy9kSPigthyQiCg49hBewEs
 +JGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UD9mtkSeoYgUbd437WkJqSSud9/39V7teWCdXfiErcI=;
 b=zU8ro8Iu+2lCrH+v2rCdeen78fT1P2x02ocPm4jq+mq1t+o6+AVxmOu8KDHkyPIaO0
 7kPR/FP9WaL/xL1j/zAPXUFSDJiUMav30A6dvcCbpYKMRPcaTdZSWtFrmTK8ifHvoT9A
 bLNmWF3tG4mz7iqx5cy50vG7wbYvH4gVbnrgQMzV+e3lxIAGDvR7InDH03w8FXJmLuwd
 uNqVdRATbOEHK9ATU5FkGUcBKoKjVpvjXmjeWoah3Q588i8Jk2TTWmk+NsgkGn7Hky8+
 FIGiGmfJltNH2zfWLqoTK/8KAVDe+oi4I3+6NYir3Ha1KYBizb2QgRsW2Srh4VYqrltL
 8neA==
X-Gm-Message-State: AOAM531dpJ67siSw8Ng1rChxLPU1b9j2Myq7nb9dtyVOKlckZFAYQHdP
 SnV7DCo6C9FRQTnjORfIrO1u8QWKsYbBkPPTaQRWNfk73LQ=
X-Google-Smtp-Source: ABdhPJxpf9PwhGqw0i3LjeaRAU4Cqckj2FHSewDgx+jg6ipZFJFM+KXu9ZXv7nqeN+yktNLsrTCU1a/p08JN4rslBPc=
X-Received: by 2002:ab0:6804:0:b0:33c:6fe1:3266 with SMTP id
 z4-20020ab06804000000b0033c6fe13266mr1885254uar.91.1649215615381; Tue, 05 Apr
 2022 20:26:55 -0700 (PDT)
MIME-Version: 1.0
References: <CABHJPfakLLMSAL=NW6FTSXQQs+A1vkFUxqj3Ruin8EfWeUSPzg@mail.gmail.com>
 <14ec0cbcd38317deea6e39e39966cb7d51ab4b9b.camel@vnet.ibm.com>
In-Reply-To: <14ec0cbcd38317deea6e39e39966cb7d51ab4b9b.camel@vnet.ibm.com>
From: Giri Prasad <shashanka2005@gmail.com>
Date: Wed, 6 Apr 2022 08:56:44 +0530
Message-ID: <CABHJPfb6NNtJeRpt5E1z6X0h19Uwm4d5kTO=-s8GppkH=hGQ0g@mail.gmail.com>
Subject: Re: Help needed
To: will schmidt <will_schmidt@vnet.ibm.com>, wcohen@redhat.com
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Thanks a lot Will and William for your responses. My
 apologies
 for being novice in this aspect: 1) My program looks like this. [Just to
 learn operf] *#include <iostream>using namespace std;void fun1(){ for(auto
 i = 0; i < 1000000000; i++) { std::cout << "Fun1" << endl; }}void fun2(){
 for(auto i = 0; i < 1000000000; i++) { std::cout << "Fun2" << en [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shashanka2005[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [shashanka2005[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.47 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.47 listed in list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nbwJx-0001p6-9Z
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
Cc: oprofile-list@lists.sourceforge.net
Content-Type: multipart/mixed; boundary="===============6972472723637669370=="
Errors-To: oprofile-list-bounces@lists.sourceforge.net

--===============6972472723637669370==
Content-Type: multipart/alternative; boundary="000000000000e9b39405dbf3eeaa"

--000000000000e9b39405dbf3eeaa
Content-Type: text/plain; charset="UTF-8"

Thanks a lot Will and William for your responses. My apologies for being
novice in this aspect:

1) My program looks like this. [Just to learn operf]
























*#include <iostream>using namespace std;void fun1(){  for(auto i = 0; i <
1000000000; i++) {     std::cout << "Fun1" << endl;  }}void fun2(){
for(auto i = 0; i < 1000000000; i++) {     std::cout << "Fun2" << endl;
}}int main(){   fun1();   fun2();}*


2) I ran the command : *operf -g ./a.out*

3) It ran for almost 20 minutes and then I killed the process.

4) Can you please let me know how to run opreport to : get the call graph *with
details of Functions fun1 and fun2 *with details such as *how many cycles
they consumed, how many times they're called* etc.

Regards,
Giri Prasad


On Tue, Apr 5, 2022 at 9:16 PM will schmidt <will_schmidt@vnet.ibm.com>
wrote:

> On Tue, 2022-04-05 at 15:29 +0530, Giri Prasad wrote:
> >
> > 1) I installed operf in linux machine, below is the version:
> >
> > operf: oprofile 1.3.0 compiled on Feb  2 2020 20:33:34
> >
>
> > 2) I wrote a simple program and ran : operf ./a.out
> >
> > 3) it generated the folder: oprofile_data
> >
> > 4) when i run opreport as below:
> >
> > ##> opreport session:oprofile_data event:DATA_MEM_REFS
> > Using /home/prasadgi/tools/cpp/oprofile_data/samples/ for samples
> > directory.
> > opreport error: No sample found: Please specify a session containing
> > sample data.
> >
> > Please help what is missing ?
>
>
> Most likely the program did not run long enough or simply did not
> trigger any DATA_MEM_REFS events.
>
> Does opreport give you any output if
> you leave off the "event:" qualifier?
>
> Thanks
> -Will (Schmidt)
>
>
> >
> > Regards,
> > Giri Prasad
> > _______________________________________________
> > oprofile-list mailing list
> > oprofile-list@lists.sourceforge.net
> > https://lists.sourceforge.net/lists/listinfo/oprofile-list
>
>

--000000000000e9b39405dbf3eeaa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif;font-size:small">Thanks a lot Will and William for your responses=
. My apologies for being novice in this aspect:</div><div class=3D"gmail_de=
fault" style=3D"font-family:tahoma,sans-serif;font-size:small"><br></div><d=
iv class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif;font-size=
:small">1) My program looks like this. [Just to learn operf]</div><div clas=
s=3D"gmail_default" style=3D"font-family:tahoma,sans-serif;font-size:small"=
><span style=3D"color:rgb(0,0,255)"><b><br></b></span></div><div class=3D"g=
mail_default" style=3D"font-family:tahoma,sans-serif;font-size:small"><span=
 style=3D"color:rgb(0,0,255)"><b>#include &lt;iostream&gt;<br><br>using nam=
espace std;<br><br>void fun1()<br>{<br>=C2=A0 for(auto i =3D 0; i &lt; 1000=
000000; i++) {<br>=C2=A0 =C2=A0 =C2=A0std::cout &lt;&lt; &quot;Fun1&quot; &=
lt;&lt; endl;<br>=C2=A0 }<br>}<br><br><br>void fun2()<br>{<br>=C2=A0 for(au=
to i =3D 0; i &lt; 1000000000; i++) {<br>=C2=A0 =C2=A0 =C2=A0std::cout &lt;=
&lt; &quot;Fun2&quot; &lt;&lt; endl;<br>=C2=A0 }<br>}<br><br>int main()<br>=
{<br>=C2=A0 =C2=A0fun1();<br>=C2=A0 =C2=A0fun2();<br>}</b></span></div><div=
 class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif;font-size:s=
mall"><br></div><div class=3D"gmail_default" style=3D"font-family:tahoma,sa=
ns-serif;font-size:small"><br></div><div class=3D"gmail_default" style=3D"f=
ont-family:tahoma,sans-serif;font-size:small">2) I ran the command : <b>ope=
rf -g ./a.out</b><br></div><div class=3D"gmail_default" style=3D"font-famil=
y:tahoma,sans-serif;font-size:small"><br></div><div class=3D"gmail_default"=
 style=3D"font-family:tahoma,sans-serif;font-size:small">3) It ran for almo=
st 20 minutes and then I killed the process.</div><div class=3D"gmail_defau=
lt" style=3D"font-family:tahoma,sans-serif;font-size:small"><br></div><div =
class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif;font-size:sm=
all">4) Can you please let me know how to run opreport to : get the call gr=
aph <b>with details<span style=3D"color:rgb(0,0,255)"> of Functions fun1 an=
d fun2 </span></b>with details such as <b>how many cycles they consumed, ho=
w many times they&#39;re called</b> etc.</div><div class=3D"gmail_default" =
style=3D"font-family:tahoma,sans-serif;font-size:small"><br clear=3D"all"><=
/div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmai=
l_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><font size=3D"2"><=
span style=3D"font-family:tahoma,sans-serif"><font color=3D"#000000">Regard=
s,</font></span></font></div><div><font size=3D"2"><span style=3D"font-fami=
ly:tahoma,sans-serif"><font color=3D"#000000">Giri Prasad</font></span></fo=
nt></div></div></div></div></div></div><br></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 5, 2022 at 9:16 PM w=
ill schmidt &lt;<a href=3D"mailto:will_schmidt@vnet.ibm.com">will_schmidt@v=
net.ibm.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">On Tue, 2022-04-05 at 15:29 +0530, Giri Prasad wrote:<br>
&gt; <br>
&gt; 1) I installed operf in linux machine, below is the version:<br>
&gt; <br>
&gt; operf: oprofile 1.3.0 compiled on Feb=C2=A0 2 2020 20:33:34<br>
&gt; <br>
<br>
&gt; 2) I wrote a simple program and ran : operf ./a.out<br>
&gt; <br>
&gt; 3) it generated the folder: oprofile_data<br>
&gt; <br>
&gt; 4) when i run opreport as below:<br>
&gt; <br>
&gt; ##&gt; opreport session:oprofile_data event:DATA_MEM_REFS<br>
&gt; Using /home/prasadgi/tools/cpp/oprofile_data/samples/ for samples<br>
&gt; directory.<br>
&gt; opreport error: No sample found: Please specify a session containing<b=
r>
&gt; sample data.<br>
&gt; <br>
&gt; Please help what is missing ?<br>
<br>
<br>
Most likely the program did not run long enough or simply did not<br>
trigger any DATA_MEM_REFS events.<br>
<br>
Does opreport give you any output if<br>
you leave off the &quot;event:&quot; qualifier? <br>
<br>
Thanks<br>
-Will (Schmidt)<br>
<br>
<br>
&gt; <br>
&gt; Regards,<br>
&gt; Giri Prasad<br>
&gt; _______________________________________________<br>
&gt; oprofile-list mailing list<br>
&gt; <a href=3D"mailto:oprofile-list@lists.sourceforge.net" target=3D"_blan=
k">oprofile-list@lists.sourceforge.net</a><br>
&gt; <a href=3D"https://lists.sourceforge.net/lists/listinfo/oprofile-list"=
 rel=3D"noreferrer" target=3D"_blank">https://lists.sourceforge.net/lists/l=
istinfo/oprofile-list</a><br>
<br>
</blockquote></div>

--000000000000e9b39405dbf3eeaa--


--===============6972472723637669370==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6972472723637669370==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list

--===============6972472723637669370==--

