Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE6B10D2E
	for <lists+oprofile-list@lfdr.de>; Wed,  1 May 2019 21:30:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Subject:References:In-Reply-To:Message-ID:To:Date:Sender:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bWgQuMp+XzgiwqtfJezAwIjUbhxzI2weInzdpO63R2A=; b=m8lFRKl1DlQTX80KBY7gM3ig/
	Hh+uWUbziAABl34l+rarxRgVHEnJJQNRgNg76/WdBhb3M5nguBMfFQUmGZnrldUUFpUeWEsae3XKg
	O7ynAJ8kqM5RIKIQez8gKRDUtxiK5GJt2X3qmoq7o9NXW1Jay7ZMH3RemMwPvlTlbz/fU=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1hLuvw-0002QI-2q; Wed, 01 May 2019 19:30:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jerryduan100@yahoo.com>) id 1hLuvu-0002Q2-KS
 for oprofile-list@lists.sourceforge.net; Wed, 01 May 2019 19:30:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:To:Reply-To:From:Date:Sender:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=utm3fXanWMihENvxB9csVsNqPDvWwVQxmSYlK65/eYI=; b=g2fqT68Glyf08GXBfYE3VgITU
 nInD1I8avlptH/aSAzB8DMIlxskE8GlqKylQ8Qhn+r3XzRLqpuINivvx+zeye+1FAngy2ciCnkUpW
 LPmVOX1ePW7qbqrk1QLtjirVm6lQDbl8FI79AhwqgBf4cEB+DKpkVjEwAxLJ/u27pJ3Pk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Subject:References:In-Reply-To:Message-ID:To:
 Reply-To:From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=utm3fXanWMihENvxB9csVsNqPDvWwVQxmSYlK65/eYI=; b=UpPHLGSlLCbKgGggxM5NnN8uET
 4H2LUSdGcnZNm4B0QYBVSHWdXg1mTW2tyfYqVY1vedMo9zHxeLXLbp7kFSrYPfeqEGRiy+D86J7yK
 auKXtrYJTTRaorAqrOzdWqx5ps62ppA+wurHd/JQhmAAtvWdqla4BjQ+KqhJcQ33L0ts=;
Received: from sonic303-3.consmr.mail.bf2.yahoo.com ([74.6.131.42])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hLuvs-002Q26-F6
 for oprofile-list@lists.sourceforge.net; Wed, 01 May 2019 19:30:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1556739014; bh=utm3fXanWMihENvxB9csVsNqPDvWwVQxmSYlK65/eYI=;
 h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
 b=pvTXm5ENEPN0CtQO1bP8x9BVRfSB6CdkQDweG9CyjtjxpBmbgYbAVhwlzaht0qb5EgSFOQLSPGy4Ysw+B3fszFpLZsijAh2Ql1PPv4Le6yk76aBHJeDGTt8VDrN+UA8ud4RgK/9qhE+Pv/9nQdYmZxBU5Q8Yjbl5CKfiZQ5PvwGISlooYqY1VqYki5L7z++RKvMJ7K8pdGkljQsrzUSaHs1MyVZRVGVHIkwlEr+Upgoer0Bs5WTzBkXHddvZF4A1nF0XsVc3v4bHFdKEDMIqTqy0LzOg8yWurpc4anQ5Kbbnm42tNhIK1apC4cIhmBygRYHWf/IguijI8ZUIUbptlg==
X-YMail-OSG: oslO0bsVM1lbHOhHIm8XC446RhQvNDYxVTfy7.IMV59Jr7ttg8Ati0.QTfnaIAb
 W4WljQwDxugJSgsWFEvhTJ1zA48kk9uvP8ejXw0RNxPzNMb1zI6hF.k7O065TaMYgToUbqbWJlCB
 Iq3IG9_ZGCYollzkwkRXfR6Ls26s.JFAKM2_OFXd3IYbzyzjnoRESSbsNVK7bjfEvz30GIll7EjO
 EbxDV0dhqdreUhDohoWH2UuWvk9lydbCt1GEo8U7SF9uuVY_Si7hD._dSTVSWoa_s3.xOmB9ps8I
 LUNRw5WEIal9gRI31q3Z_LoRFhn0TRxhIc5Bz2h0bKmIx0JrLqTqeUeY9W8cP7oJeU65yD9ZUx1m
 XV.xTh9sW9J6YH1gaT1JsVwY4L355Wxw8pieRaIXeAkmBUEiBcbEJRt.Nz8UNX6cu.xqakdbjujC
 y070aDv9OAdYHlQgeDxi_7cOB_PgMnB.cC2O_9DfIYxNNAz4Z4ObBfaSWtK6.FRbl40ZkWyg3FOb
 AVb3etBno9TVyRdE1Uzc1PhJ_pTILPtQhVfWKzqIsszT2_Syqr07l.fC_lEIlRrgrHRiyIt5Zg8_
 fC99Qucsj5Od1bQaFNK6.NJZB3svEPFhVPWi3MgpIRTly2aSuWG5RjNgpuZdPrNga_0ac6lV3QvD
 Zi6x3T8kOFGZejo_6ffBdvQZ8wmKKDJCZ2kiq0bTjxYgM57BpMiHwoDzzPefDxsCSSgUnlIs.mAk
 Z_uDmxuLt3szu_V7kKukXir.dFwPRqWa8MuReXWYak5ZvXWERpXkED8rdBL.w5Pv5YPy.HJFGmex
 f08HuCOLClu9weh01Aj5m0SKYTPK9WAhVdU6NBBrDwD0YcJdd57tnjmOkH7nM4gv3vwExxg.SmYe
 fXa1v3phx2TrENNuwsIroYXAam4oaq9VXbp6oSvL_gqjUcRTQwqUbJsbtuN.V5z.vfEPPnI0rwQc
 P9rcE1GN09.weCvTN08fYwGlO.dWF5AydRJ.bzI2fH8.6ye6jyBkMNY5pIK6Dv0dt5_A_78yqSqu
 BrUtgke740.M7eFE_iA5oL6KVSaF7NSWZPXUkGj9QBoV5NFH4.EEHKr1cYS_Hxw4BqKr893oBxJL
 CqWwhENJ4sodTpcNRb.f_vLe1Zl6g1wmyhcYNJGgx_4bcWfVPmkotIz2huoGJNaiyUT_Hx6c8K4w
 rz4Q00bwavVb128pZHC.UQzNhlbsOmE42WQ--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic303.consmr.mail.bf2.yahoo.com with HTTP; Wed, 1 May 2019 19:30:14 +0000
Date: Wed, 1 May 2019 19:29:12 +0000 (UTC)
To: "oprofile-list@lists.sourceforge.net"
 <oprofile-list@lists.sourceforge.net>, William Cohen <wcohen@redhat.com>
Message-ID: <1103934131.2969616.1556738952262@mail.yahoo.com>
In-Reply-To: <1099690386.2954181.1556732503242@mail.yahoo.com>
References: <1656720488.1989768.1556563020320.ref@mail.yahoo.com>
 <1656720488.1989768.1556563020320@mail.yahoo.com>
 <1181b2fe-be48-41e2-eeb1-8f3e82050aac@redhat.com>
 <1099690386.2954181.1556732503242@mail.yahoo.com>
Subject: Re: Having trouble profiling multiple events for an existing
 process in ARM CortexA53
MIME-Version: 1.0
X-Mailer: WebService/1.1.13554 YMailNorrin Mozilla/5.0 (X11; Ubuntu;
 Linux x86_64; rv:66.0) Gecko/20100101 Firefox/66.0
X-Spam-Score: 1.4 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (jerryduan100[at]yahoo.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [74.6.131.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (jerryduan100[at]yahoo.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (jerryduan100[at]yahoo.com)
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hLuvs-002Q26-F6
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
From: Jerry Duan via oprofile-list <oprofile-list@lists.sourceforge.net>
Reply-To: Jerry Duan <jerryduan100@yahoo.com>
Content-Type: multipart/mixed; boundary="===============2289912032679067271=="
Errors-To: oprofile-list-bounces@lists.sourceforge.net

--===============2289912032679067271==
Content-Type: multipart/alternative; 
	boundary="----=_Part_2969615_611410010.1556738952261"
Content-Length: 1379

------=_Part_2969615_611410010.1556738952261
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,
I am not sure I understand you correctly. But, I don't think the issue is caused by the short duration. The process I was trying to measure never ends once my system is up. Also, as I mentioned in the previous email, if I use "--system-wide" rather than "-p <PID>", the operf does collect data for all processes, including the trouble one.

I also changed the dts to "arm,cortex-a53-pmu", but still the same issue.

Thanks,
Jerry

------=_Part_2969615_611410010.1556738952261
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydp23830094yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div></div><div><div>Hi,<br>I am not sure I understand you correctly. But, I don't think the issue is caused by the short duration. The process I was trying to measure never ends once my system is up. Also, as I mentioned in the previous email, if I use "--system-wide" rather than "-p &lt;PID&gt;", the operf does collect data for all processes, including the trouble one.<br><br>I also changed the dts to "arm,cortex-a53-pmu", but still the same issue.<br><br>Thanks,<br>Jerry</div><br></div></body></html>
------=_Part_2969615_611410010.1556738952261--


--===============2289912032679067271==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2289912032679067271==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list

--===============2289912032679067271==--

