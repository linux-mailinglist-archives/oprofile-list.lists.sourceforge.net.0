Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF4C4F29A6
	for <lists+oprofile-list@lfdr.de>; Tue,  5 Apr 2022 11:59:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1nbfyQ-0005id-Gb; Tue, 05 Apr 2022 09:59:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <shashanka2005@gmail.com>) id 1nbfyP-0005iW-3Y
 for oprofile-list@lists.sourceforge.net; Tue, 05 Apr 2022 09:59:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mbfUmmgpp7Imhq5VLZ4h6QeVtx1OoKYjx7+n3snpWuw=; b=HhE1QNLkYa0Mo1ovWlIetsH81A
 KKBjinLSkAyLL5+nATDous9qI/Kwql/QXmbFZ4Jqru5hBjq3km2+dlW6DF3/u/9/FbnqVI41ybn9I
 xJamyXfH6ufZmZbsEP5GSG8guukzlpwbggsEPFx1fPbtWlNLbelQM9Axb4HYjhBARiCY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mbfUmmgpp7Imhq5VLZ4h6QeVtx1OoKYjx7+n3snpWuw=; b=O
 uJ/+ndi3mjIAse90dlIVld6PJ9EZc5WjowGYmtKCQ9T2mulc0JTIqcjbtsV6osAVv/h/+wTXMuKvM
 o6spRwda7LVw+yn4ty6ki1FkAS1yFhGS256zFY2DC+NsmONXXWAujl/tBuR0S6IhIc5wpXYY6MixX
 QD0GVP1iK9AZDOpI=;
Received: from mail-vk1-f179.google.com ([209.85.221.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nbfyN-0005b3-0b
 for oprofile-list@lists.sourceforge.net; Tue, 05 Apr 2022 09:59:39 +0000
Received: by mail-vk1-f179.google.com with SMTP id l184so6218930vkh.0
 for <oprofile-list@lists.sourceforge.net>;
 Tue, 05 Apr 2022 02:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=mbfUmmgpp7Imhq5VLZ4h6QeVtx1OoKYjx7+n3snpWuw=;
 b=M5/sKCvW4LleJPADpOwu0BeJ6ooTm30FRlNIHfyqoU/1WL2ULf527+EHEA0yoaitnC
 Mjiavsbtlbth62XV1DsKpxjbhe/6ZAnoxBjC6n+yw/+ODoeTtB35hNvEBWeLgbDiMC42
 hN3Puky4SVfZd7+tpzNwHV9dA1CLmK3j1WpnA8HLN7cPv76xx/0suaG8HZNJw9a/v8gh
 g98NoGYuCBa4O6ajYWP+QHEO/vToDYoVcr1xYXo2If2keyIWqXlQCWB3eZXc8f1GefbZ
 nitWjJ3AriK/Czq8TWQdWZI17k8+OEB7HS/574tx2RnncmoqpS71J1G/D1EkVqzgRl+S
 VrtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=mbfUmmgpp7Imhq5VLZ4h6QeVtx1OoKYjx7+n3snpWuw=;
 b=KezcoewCVhY+GYZ2c3U91E/rvOkwySVkZPpXbHMuJ150uONO0ujXVRZk1Qn2/CHM/9
 2ZLCjbYg1hOaMp4Rl8/uKuyEZVfjUD/BRNBUC/NvQ8sl+pMPOKYSUXzttVaLCGy95V1j
 H7Mkpy4usWpTvm8PaciJ+5FsQDiltYmeCF6vzTl5csRDM/veXDNPL3mTNB74ik/zcdUR
 qLmtdEKduTDo0mlLI/pc+BKFs14m4yxCeCrH6QcDmUfJXu6hISNyBqu8z7wbbdN/XZgf
 f7NlNEFf/rCpgsQDF9S686xJYR9WlxbSZnvV7VV4hcirBy8em1cD9Q02FTrOXTHJ4POM
 4Cgg==
X-Gm-Message-State: AOAM5310sAUI+K/yN9F48qCWTQo7CCDrSDtHm4mzPYnwwUPPJOafr2zU
 4hBOH4/rJJjchjW379vYtY3xohjrAzmtMzVWNai+Y7i/e60=
X-Google-Smtp-Source: ABdhPJxAOnpuI0adxtXffjWlujKZBaVFuwLUV9biZ93tOX85FZMfmywDpaTdliAom1wTCuwJ/RJR+Uhd9czTU+vsNxU=
X-Received: by 2002:a05:6122:2092:b0:344:2ed5:8c3e with SMTP id
 i18-20020a056122209200b003442ed58c3emr955105vkd.8.1649152773093; Tue, 05 Apr
 2022 02:59:33 -0700 (PDT)
MIME-Version: 1.0
From: Giri Prasad <shashanka2005@gmail.com>
Date: Tue, 5 Apr 2022 15:29:22 +0530
Message-ID: <CABHJPfakLLMSAL=NW6FTSXQQs+A1vkFUxqj3Ruin8EfWeUSPzg@mail.gmail.com>
Subject: Help needed
To: oprofile-list@lists.sourceforge.net
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  1) I installed operf in linux machine, below is the version:
 operf: oprofile 1.3.0 compiled on Feb 2 2020 20:33:34 2) I wrote a simple
 program and ran : *operf ./a.out* 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shashanka2005[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [shashanka2005[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.179 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.179 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nbfyN-0005b3-0b
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
Content-Type: multipart/mixed; boundary="===============8620371493869257823=="
Errors-To: oprofile-list-bounces@lists.sourceforge.net

--===============8620371493869257823==
Content-Type: multipart/alternative; boundary="000000000000387b4505dbe54d9e"

--000000000000387b4505dbe54d9e
Content-Type: text/plain; charset="UTF-8"

1) I installed operf in linux machine, below is the version:

operf: oprofile 1.3.0 compiled on Feb  2 2020 20:33:34

2) I wrote a simple program and ran : *operf ./a.out*

3) it generated the folder: *oprofile_data*

4) when i run opreport as below:




*##> opreport session:oprofile_data event:DATA_MEM_REFSUsing
/home/prasadgi/tools/cpp/oprofile_data/samples/ for samples
directory.opreport error: No sample found: Please specify a session
containingsample data.*

*Please help what is missing ?*

Regards,
Giri Prasad

--000000000000387b4505dbe54d9e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif;font-size:small">1) I installed operf in linux machine, below is =
the version:</div><div class=3D"gmail_default" style=3D"font-family:tahoma,=
sans-serif;font-size:small"><br></div><div class=3D"gmail_default" style=3D=
"font-family:tahoma,sans-serif;font-size:small">operf: oprofile 1.3.0 compi=
led on Feb =C2=A02 2020 20:33:34</div><div class=3D"gmail_default" style=3D=
"font-family:tahoma,sans-serif;font-size:small"><br></div><div class=3D"gma=
il_default" style=3D"font-family:tahoma,sans-serif;font-size:small">2) I wr=
ote a simple program and ran : <b>operf ./a.out</b></div><div class=3D"gmai=
l_default" style=3D"font-family:tahoma,sans-serif;font-size:small"><br></di=
v><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif;font-=
size:small">3) it generated the folder: <b>oprofile_data</b></div><div clas=
s=3D"gmail_default" style=3D"font-family:tahoma,sans-serif;font-size:small"=
><b><br></b></div><div class=3D"gmail_default" style=3D"font-family:tahoma,=
sans-serif;font-size:small">4) when i run opreport as below:</div><div clas=
s=3D"gmail_default" style=3D"font-family:tahoma,sans-serif;font-size:small"=
><b><br></b></div><div class=3D"gmail_default" style=3D"font-family:tahoma,=
sans-serif;font-size:small"><b>##&gt; opreport session:oprofile_data event:=
DATA_MEM_REFS<br>Using /home/prasadgi/tools/cpp/oprofile_data/samples/ for =
samples directory.<br><span style=3D"color:rgb(255,0,0)">opreport error: No=
 sample found: Please specify a session containing<br>sample data.</span></=
b></div><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif=
;font-size:small"><b><br></b></div><div class=3D"gmail_default" style=3D"fo=
nt-family:tahoma,sans-serif;font-size:small"><b>Please help what is missing=
 ?</b></div><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-s=
erif;font-size:small"><b><br></b></div><div><div dir=3D"ltr" class=3D"gmail=
_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div d=
ir=3D"ltr"><div><font size=3D"2"><span style=3D"font-family:tahoma,sans-ser=
if"><font color=3D"#000000">Regards,</font></span></font></div><div><font s=
ize=3D"2"><span style=3D"font-family:tahoma,sans-serif"><font color=3D"#000=
000">Giri Prasad</font></span></font></div></div></div></div></div></div></=
div>

--000000000000387b4505dbe54d9e--


--===============8620371493869257823==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8620371493869257823==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list

--===============8620371493869257823==--

