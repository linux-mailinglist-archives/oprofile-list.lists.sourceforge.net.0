Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 991A31440CB
	for <lists+oprofile-list@lfdr.de>; Tue, 21 Jan 2020 16:45:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BtyNXJbZNuxLojiXknPJ3AoBQ2GCVO+N3+e2ybw8ehw=; b=FkSUmXyLoxhkQsJQTzNlruz+iV
	9+WJWU8Zq4ot2cCOfxAvSXUhAoyNlm2YrMTccnvUBdj6b7jtQw904zHEGIgYlPE7hnOLGnrmwpT/c
	F/bweLp4hZWjBBNCzQaM1YCsouoFYFATg7QtQDtRlYaVzOavQmlrxACAABGNbkUUB/DE=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1itvim-0004K7-7W; Tue, 21 Jan 2020 15:45:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sds@tycho.nsa.gov>) id 1ituzx-00033l-6g
 for oprofile-list@lists.sourceforge.net; Tue, 21 Jan 2020 14:59:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q7wU+nWbAbNGsWzh4Vz0AEmjlART2AXJwd31XJVS1FY=; b=axPBmuxttpq5H96CcPXCz9KIQ0
 FieP4KGWZ4ehXfmwmDGde3kTt1v4d/8+iA24u3ky42dsBpxefjxnPjTnhhpNsuQ4QvGmkZIBQLThi
 xgtIvHOJxGQCUAD1nShrMAXetGu2EhfXX4avVC5wQXX8YaqTue2uGEkgM87u0lgxjDSg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Q7wU+nWbAbNGsWzh4Vz0AEmjlART2AXJwd31XJVS1FY=; b=a3TJe+jz5EUNkyk/bQXg5CSgi5
 2q/9hY/QLTfK91L90Alz7OAtsWoNM4uGHuxH7P4I1v0mB2PkRiuODnIy2URM+NSeNdH01CThDTBSE
 QSssWHVH0U3MW4+s16+U2oobPu5r+b1xIA5g8/H4cidyBHbkoarR/dbteTQNMp01Hruc=;
Received: from updc19pa21.eemsg.mail.mil ([214.24.27.196])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ituzp-00GLuc-1w
 for oprofile-list@lists.sourceforge.net; Tue, 21 Jan 2020 14:59:21 +0000
X-EEMSG-check-017: 47940638|UPDC19PA21_ESA_OUT03.csd.disa.mil
X-IronPort-AV: E=Sophos;i="5.70,346,1574121600"; d="scan'208";a="47940638"
Received: from emsm-gh1-uea11.ncsc.mil ([214.29.60.3])
 by UPDC19PA21.eemsg.mail.mil with ESMTP/TLS/DHE-RSA-AES256-SHA256;
 21 Jan 2020 14:43:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tycho.nsa.gov; i=@tycho.nsa.gov; q=dns/txt;
 s=tycho.nsa.gov; t=1579617795; x=1611153795;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=Q7wU+nWbAbNGsWzh4Vz0AEmjlART2AXJwd31XJVS1FY=;
 b=nSb0lUjgJpRVj7ot68h+mqezrFbBaw2WunQwNAevAHw4CwMoXlcsPPs7
 YNnIdh68GyBWlK0H+oWUwWzli0Oy1T7bNx2KP5mzigeqSOtJawspkQlN2
 /tBJ7pk8JlmN0vLe+oW2NS9ua/O75lN/353cFQqBOhifsUaCEXw/Kj80n
 xBlKridM9pYPCv4ikdMOiJfTXxPilIunQ8xhhkCyrTFAaeiucyzJSG2Oq
 rHXhneJEyLIlUbmpAbJmpZZhSkvjtr5zFMJgO+FGs6RMDx6mf+Dszp+xS
 0LjYe2SQYhhirtMIrAKcpgK70+VlEJ+z3lsI+I7+C7tkije4X1ckBAAq9 w==;
X-IronPort-AV: E=Sophos;i="5.70,346,1574121600"; d="scan'208";a="38029898"
IronPort-PHdr: =?us-ascii?q?9a23=3AQrLYLh3RJDRd/hJUsmDT+DRfVm0co7zxezQtwd?=
 =?us-ascii?q?8ZsekRIv3xwZ3uMQTl6Ol3ixeRBMOHsq4C0rqd7f2oGTRZp8rY6zZaKN0Efi?=
 =?us-ascii?q?RGoP1epxYnDs+BBB+zB9/RRAt+Iv5/UkR49WqwK0lfFZW2TVTTpnqv8WxaQU?=
 =?us-ascii?q?2nZkJ6KevvB4Hdkdm82fys9J3PeQVIgye2ba9vIBmsogjdq8YbjZF/JqsyxR?=
 =?us-ascii?q?fEo3tFcPlSyW90OF6fhRnx6tq+8ZJ57yhcp/ct/NNcXKvneKg1UaZWByk8PW?=
 =?us-ascii?q?Av483ruxjDTQ+R6XYZT24bjBlGDRXb4R/jRpv+vTf0ueR72CmBIM35Vqs0Vi?=
 =?us-ascii?q?i476dqUxDnliEKPCMk/W7Ni8xwiKVboA+9pxF63oXZbp2ZOOZ4c6jAZt4RW3?=
 =?us-ascii?q?ZPUdhNWCxAGoO8bpUAD+wdPeZDsoLxo0ICoQaiCQWwAe/izDFHhmXy3aYnze?=
 =?us-ascii?q?ovFw/I1xEkE94XrnjZqND5OaEPWu630abI1y3OYe5I1zfz6IbGcR4vrv+DUr?=
 =?us-ascii?q?1ybcXfxlIiFx/Hg1iKtYDpIz2Y2+YLvmOG7+RgT+Wvi2s/pg9svjig2N8sio?=
 =?us-ascii?q?nXiYIT11vK6CB5z5wxJd28VkF6YcOvHZxLty6HLIt7Wd8iQmF0tyY6zb0Ko5?=
 =?us-ascii?q?i7fDMQx5g9yB7fbOKHfpGO7xn+WuiRJjJ4i2hkeLK5nxuy8lavyvf6Vsaq1F?=
 =?us-ascii?q?ZGtC1FksPDtnwV0hzc8M6HR/ln8kemwzaP2Abe4fxHL0AsjafXNpEsz7Eqmp?=
 =?us-ascii?q?cTrEjPBDH6lUrogKOMa0kp/PWj5f79bbX8vJCcMpd5igT5MqszhMOyGf84Mg?=
 =?us-ascii?q?0SX2iD/uS8yaHj8VX5QLpUiv02lbHUsIzAKsQBp665HhRV3pwi6xa5ATem18?=
 =?us-ascii?q?8YkmcbI15fZBKGj5TmO1HJIPziC/ewn0+snytxy/DDP73hBo3BLnnFkLj/Yb?=
 =?us-ascii?q?Zw81NQxQU8wNxF559YF6sNLOz8V0PvrtDUEwc1MwmuzObmDNV92JkeWWWKAq?=
 =?us-ascii?q?KBK6PdrESI6/kzI+iMeIAVuDH9J+Ij5/71l3A1g1Adfa633ZcPcnC3AuxmI1?=
 =?us-ascii?q?mFYXrrmtoOC2MKsRQxTeP0iFyOSyVcZ2uvUK0m4DE7C4WmDZnYS4CpgbyB2j?=
 =?us-ascii?q?q7H5JMamBHDFCMDWnnd4GeV/gQbyKSJ9drkiYYWri5V48hyRauuRfiy7V5Mu?=
 =?us-ascii?q?rb5DcYtJP42dh04e3Tmwsy+iZpAMuDyW6CUnt4nmQSRz85xKp/u1Byyk+f0a?=
 =?us-ascii?q?hkhPxVDcZc6O9MUggkLpPczPJ1C8r0Wg3feteFUlGmQs+pATspVNI+38cOY1?=
 =?us-ascii?q?phG9Wllh3D2iuqA7kal7yMH5E06LzT0GXxJ8ln13bKzrUuj14jQsFXL22pmr?=
 =?us-ascii?q?Z/9xTPB47Oi0iZlbyldaId3CLX8meDzGmOvFxcUAFqSqjFWXEfZk3LrdX2/E?=
 =?us-ascii?q?/CTrmuCag5PQtF08KNNqxKatjxh1VcWPjjIMjeY362m2qoBxaIwbSMbIzwdG?=
 =?us-ascii?q?UGxindDFILkwAP/XaHMwgxGCGhrnnaDDxvE1Lvfkzt/fN/qHO9Uk870QWKY1?=
 =?us-ascii?q?d92Lqy/x4fneacRO8L3rIYpCchrC15HEy6393LEdqApgVhfKJGbdMj4VdHy2?=
 =?us-ascii?q?PZuhd8PpymM6BtmFoefx5rsEPp0hV9Ep9AntQyrHM20ApyLrqV30hfeDOe3Z?=
 =?us-ascii?q?D9Ib7XJXfo/BCpdaHW3kvS38qM+qgV8/Q4q1TjvAemFkY49HVnydZV2WOG5p?=
 =?us-ascii?q?rWFAoSTY7xUkEv+hhivb7afy09557P1XB3Kqm7qDrC1MkzC+c/zRagZdhfOr?=
 =?us-ascii?q?ueFADuC80aG9SuKOsyllisdhILIvtf+7AwP8OiafSGwqurM/xmnD68jGRI/Z?=
 =?us-ascii?q?px3ViR9yBkUO7Hw44Fw+2E3guATzr8jk2ussXploBffz0dBW2/yTT4BI5WY6?=
 =?us-ascii?q?1yeZgECGe1Ls233Np+gYXtVGBe9F67HVwGwtOpeRyMYFznxg1Q1UUXoWS9lS?=
 =?us-ascii?q?SkyDx0likjrrCD0yzW3+TiaB0HN3ZQRGZ8l1fsLpa7gssaXEeyawgpkBuk5U?=
 =?us-ascii?q?Dgy6dHo6R/KnHZQV1UcCjuM2FiTqywu6KAY85K75Moqz9XUOWnYV2BTL7yuR?=
 =?us-ascii?q?4a3D3iH2dEwzA7bT6qsI3jnxNmkGKdMGpzrH3BdMB+xBff4NjcSeRM0TUYXi?=
 =?us-ascii?q?Z3lT7XBl6nMtaz59WUko3Pvfy5V2KkTpdTazXkzZuctCun4m1nGRi/kOqpmt?=
 =?us-ascii?q?3kCwQ6yzL718VuVSrSqhbzf5Lm2L6gMeJiZEVnGFj8689iEIFkjoQwnI0Q2W?=
 =?us-ascii?q?QdhpiN53oHi2bzPslA1KL9cnUNXzgLzMDR4AT/301jNH2JzZrjVnqB2sthe8?=
 =?us-ascii?q?W6YmQO1y0n9MBKFLyZ7L9akitvpFq3swbRbeJ6njcHxvsk8GQajP0RuAox0i?=
 =?us-ascii?q?WdBagfHUtfPSzojBSH9cuzrL9Ja2mycbi/zlZ+kcq9A7GFpwFWQGz5dYs6HS?=
 =?us-ascii?q?9s8sV/N0rB32fw6oz/fNnQbNQTtgCbkhvajuhVLo4xmeQOhSZ9JW39unglwf?=
 =?us-ascii?q?YhjRNyxZG6oJSHK2J18a2nGB5XLDv1Z8IJ9THrlqtekcGW34egHpVlBDoHRo?=
 =?us-ascii?q?fnTfWtEDgKr/ToKx6OECEgqnecAbffHAuf6Fp9oH3VCJCrN2+YKWIDwtVhXh?=
 =?us-ascii?q?adIVZQgAEOUDommZ45ExigxNb9f0dh+jAR+ln4pwNWxeJsKRb+XX3QpAG1ZT?=
 =?us-ascii?q?gqUpiTNgFW7gFD50fOMcye7eNzHydD852lrQyNLHGbZgtSAWEIXEyEG07sPr?=
 =?us-ascii?q?206dbc9OiYA/K0L+HSbrWWtexeS/CIyIqp0oR8+jaMNsWOPmRkD/00wUdDXm?=
 =?us-ascii?q?52G97fmzoRTywbjSXNb9SUpB2k4C14sti/8Oj3WALo/YaPELxSMdNg+xCygK?=
 =?us-ascii?q?eDKvWfhDxjJjZG15MMw3DIxaMR3FEJkS1haz6tEbEYvy7XUK3QgrNXDwIcay?=
 =?us-ascii?q?5rMMtI7qU83g9TNs7fkN/12aR0jvovBFdDSFPglN+mZdYOI2G8MlPKH0eLNL?=
 =?us-ascii?q?KaJTLVx8H7e7+zSbpVjO9MrR2/pS6bE1P/PjSEjzTpSx+vMeVDjSyAOBxeuY?=
 =?us-ascii?q?e9cgtxCWj5S9LmbBy7MdBtgTIr37I+nmnKOnIEMThgb0NNqaWd7SdZgvV5Bm?=
 =?us-ascii?q?xA4WNpLeqalCaD6enXNJIWvOB1AiR7ie1a+m42y7hL4yFeQvx6hi/SosRpo1?=
 =?us-ascii?q?G8nemF0iBnXwZWqjZXmIKLul1vOaHY9plGRHbF8wsB7X6OBBsWuttlENzvu7?=
 =?us-ascii?q?xQy9TWkaLzLypN88/Q/cQCHMXUNs2HP2Q7MRbzGz7bEhEFTTi1OmHbnUBdl+?=
 =?us-ascii?q?uS9nKNpJggtpfsgIYOSqNcVFEtDfMVFEBlHN0EIJdqUTIpiqCbjMEW6nqkth?=
 =?us-ascii?q?XRR9tVvorBVv2MBfXjMjGZjaNLZxEQ27P3MZwTNpHn20xlclR6nYLKG1bOUt?=
 =?us-ascii?q?BJuyFhYQE0oUpW/Xh6T20zwF7lahi37H8dD/67gAA5hRZgbuQ29zfs/1A3Jk?=
 =?us-ascii?q?LQqCs3ikkxls3vgSqNfz7pMKewQYZWBjLwt0gwNJP7Xgl0YRSqnUN+LjfERq?=
 =?us-ascii?q?lRgKd7eGB1hw/Tp4FPFeRfTaJaeh8Qw++YZ/Ey3VRbsCWnyldN5fHZBpt6iA?=
 =?us-ascii?q?sqbZmsompE2wJiat41OKPRJLJRzldMn66BozGn1v4qzQ8aJkYN63+SeDUStE?=
 =?us-ascii?q?wPN7gmIzCn8fd36QCYnDtDYmcMXeIwov127kM9J/iAzyX43r5HK0CxMfGfLq?=
 =?us-ascii?q?yAt2faj86IR0o81kAWmElf+7h5z8MjflGQV0Au17uRCw8JOdDDKQFTYcpS7m?=
 =?us-ascii?q?LccjuQvurX3J15JYK9FvrnTeWWrqYbnlqkHBo1H4QL9skBGpis0EfFLcboNb?=
 =?us-ascii?q?IF0Qsi5B7lJFmcEfRJYwyEkC0co8yk0p930pdSJisHDWV+Lyq3/LDXqREugP?=
 =?us-ascii?q?aZW9c2eHgaVJMeNn0qQM26hzJZv3NYATmwyuIZ0g+C7zH9piTUEjbwdt5jZP?=
 =?us-ascii?q?aPZRNwE9y2/TQ/87OqiV7M6JnePG/6Oc5kutDR9eNJ76qAXtpQQKlwog/2ho?=
 =?us-ascii?q?VRQX+tTSabGNq4N5XhLYMxYdXyCXGkeli+jS8lCcb3INupaKOPhFesDb5ZrI?=
 =?us-ascii?q?SBlAIiN8umCisXU0Noqv0O/rBUZAsNeZM3bBfk8QMkOPr7aC6C1NyqT2HlAj?=
 =?us-ascii?q?JMUfBbzeLya7Ef6icoaafuwXAlQ7k5wvOx/EpLQ4sF2FWW5PCsYMF7Viz1E2?=
 =?us-ascii?q?YVLwDOoyU+v3JsOuY73qE0xxae9RFWMTmNdapvaW9Zu9gUAVKUPGUwC2wkSl?=
 =?us-ascii?q?vaho3GqEb43bkU/m1bntVJ1eRttHn4o4+ZYTSwVajtopLQ5W5oJ9ohpKt4Ks?=
 =?us-ascii?q?rnK8uatZXTmBTbTZ/NokuEVjK3E7xRnd0aaHZaR/5OkHpjPcUGpYtH5EwZUs?=
 =?us-ascii?q?Y4OqwJCa8wq7TsYj1hW2pahzUeW5mB0ztEnOai2pPbkAuddNIpNxlO+MFYhd?=
 =?us-ascii?q?cHUiFxJD0fuq6LVoPKmmvCQW8OdkNbpw5B4gIolYJqeO3hpoHSRYRMyjhZ5f?=
 =?us-ascii?q?VuXWGDQpNl8VvTSWyMh1X8Dv67mvep3ARdivX23Y9fECZ2FEwV4u9dlUYyMr?=
 =?us-ascii?q?hsY/0It5POrySgbkr/tmurz/Gpch0Z7Mzfd1T1CMLosW7xSCgV/zVAQJdC4H?=
 =?us-ascii?q?zbEZkIlgN/Lqcn4lxRdsTuMET34jE/gY5uA6W/UMSm1n4lpHAdSiGyGsBdDe?=
 =?us-ascii?q?x8q1LWQHtuZJXh4MHnMpBfWSla/4GBrFJdnVRFMye/0pdaM8hX/jgBRiNPoC?=
 =?us-ascii?q?3bt9y3HokL4sJsAJJEAt57v2b7UPdfNYKerlU2s7jr23mf8Dc55hPy5jy2Fr?=
 =?us-ascii?q?TwauVD5WwFUlErImOEsEg0J+0l92rTtFfXvQYwt9haArzHoUh4qzF7VsRRBz?=
 =?us-ascii?q?JNk3yoJl90SlFPqeAcI6PQJYgUZvAoZleVJgA6HPgqlxiM9Ft3223kfyh7sA?=
 =?us-ascii?q?dy8jrYGQIzUH9Ryo3qkzAEtomdODQaV59SJWE7dSbOAwGWgyZauFBYcU48H9?=
 =?us-ascii?q?gwBttV9rBT5pdd5M3cTkewLj9NCBV5Kio73OBZmEoFt1+XL3PzFw2tIM3Tvw?=
 =?us-ascii?q?V3cMHZl8ugKPD07U8TkY/8mPwp/KUEAXu9kEuiRs6I/Ny0jcGDqkbbLPSwCO?=
 =?us-ascii?q?a7e3KUCWGW3B0=3D?=
X-IPAS-Result: =?us-ascii?q?A2BRBACODCde/wHyM5BlHQEBAQkBEQUFAYF7gX2BGFQBI?=
 =?us-ascii?q?BIqhBKJA4ZjAQEEBoE3iW6RSQkBAQEBAQEBAQEtCgEBgUyCL0UCgjY4EwIQA?=
 =?us-ascii?q?QEBBAEBAQEBBQMBAWyFNwyCOykBgnoBBQ4VFS0UEAsYAgImAgJXBgEMBgIBA?=
 =?us-ascii?q?YJjPwGCViUPrX2BMoRJQUCDM4E+gQ4qiUuCY3mBB4E4D4JdPoJkAQIBAoRvg?=
 =?us-ascii?q?l4EkBaHHEaXWoJDgkmEdI5uBhuDP5c4LY4xiGGUNiKBWCsIAhgIIQ+DJwkWM?=
 =?us-ascii?q?RgNiA0XFYhPhQgBVCMDMAIFBo4EAQE?=
Received: from tarius.tycho.ncsc.mil (HELO tarius.infosec.tycho.ncsc.mil)
 ([144.51.242.1])
 by emsm-gh1-uea11.NCSC.MIL with ESMTP; 21 Jan 2020 14:43:11 +0000
Received: from moss-pluto.infosec.tycho.ncsc.mil (moss-pluto [192.168.25.131])
 by tarius.infosec.tycho.ncsc.mil (8.14.7/8.14.4) with ESMTP id
 00LEfrIu015620; Tue, 21 Jan 2020 09:41:56 -0500
Subject: Re: [PATCH v5 01/10] capabilities: introduce CAP_PERFMON to kernel
 and user space
To: Alexey Budankov <alexey.budankov@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 "benh@kernel.crashing.org" <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>,
 Serge Hallyn <serge@hallyn.com>, James Morris <jmorris@namei.org>,
 Will Deacon <will.deacon@arm.com>, Mark Rutland <mark.rutland@arm.com>,
 Robert Richter <rric@kernel.org>, Alexei Starovoitov <ast@kernel.org>
References: <0548c832-7f4b-dc4c-8883-3f2b6d351a08@linux.intel.com>
 <9b77124b-675d-5ac7-3741-edec575bd425@linux.intel.com>
Message-ID: <64cab472-806e-38c4-fb26-0ffbee485367@tycho.nsa.gov>
Date: Tue, 21 Jan 2020 09:43:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <9b77124b-675d-5ac7-3741-edec575bd425@linux.intel.com>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [214.24.27.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1ituzp-00GLuc-1w
X-Mailman-Approved-At: Tue, 21 Jan 2020 15:45:38 +0000
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
From: Stephen Smalley via oprofile-list <oprofile-list@lists.sourceforge.net>
Reply-To: Stephen Smalley <sds@tycho.nsa.gov>
Cc: Song Liu <songliubraving@fb.com>, Andi Kleen <ak@linux.intel.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Igor Lubashev <ilubashe@akamai.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, oprofile-list@lists.sf.net,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On 1/20/20 6:23 AM, Alexey Budankov wrote:
> 
> Introduce CAP_PERFMON capability designed to secure system performance
> monitoring and observability operations so that CAP_PERFMON would assist
> CAP_SYS_ADMIN capability in its governing role for perf_events, i915_perf
> and other performance monitoring and observability subsystems.
> 
> CAP_PERFMON intends to harden system security and integrity during system
> performance monitoring and observability operations by decreasing attack
> surface that is available to a CAP_SYS_ADMIN privileged process [1].
> Providing access to system performance monitoring and observability
> operations under CAP_PERFMON capability singly, without the rest of
> CAP_SYS_ADMIN credentials, excludes chances to misuse the credentials and
> makes operation more secure.
> 
> CAP_PERFMON intends to take over CAP_SYS_ADMIN credentials related to
> system performance monitoring and observability operations and balance
> amount of CAP_SYS_ADMIN credentials following the recommendations in the
> capabilities man page [1] for CAP_SYS_ADMIN: "Note: this capability is
> overloaded; see Notes to kernel developers, below."
> 
> Although the software running under CAP_PERFMON can not ensure avoidance
> of related hardware issues, the software can still mitigate these issues
> following the official embargoed hardware issues mitigation procedure [2].
> The bugs in the software itself could be fixed following the standard
> kernel development process [3] to maintain and harden security of system
> performance monitoring and observability operations.
> 
> [1] http://man7.org/linux/man-pages/man7/capabilities.7.html
> [2] https://www.kernel.org/doc/html/latest/process/embargoed-hardware-issues.html
> [3] https://www.kernel.org/doc/html/latest/admin-guide/security-bugs.html
> 
> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
> ---
>   include/linux/capability.h          | 12 ++++++++++++
>   include/uapi/linux/capability.h     |  8 +++++++-
>   security/selinux/include/classmap.h |  4 ++--
>   3 files changed, 21 insertions(+), 3 deletions(-)
> 
> diff --git a/include/linux/capability.h b/include/linux/capability.h
> index ecce0f43c73a..8784969d91e1 100644
> --- a/include/linux/capability.h
> +++ b/include/linux/capability.h
> @@ -251,6 +251,18 @@ extern bool privileged_wrt_inode_uidgid(struct user_namespace *ns, const struct
>   extern bool capable_wrt_inode_uidgid(const struct inode *inode, int cap);
>   extern bool file_ns_capable(const struct file *file, struct user_namespace *ns, int cap);
>   extern bool ptracer_capable(struct task_struct *tsk, struct user_namespace *ns);
> +static inline bool perfmon_capable(void)
> +{
> +	struct user_namespace *ns = &init_user_ns;
> +
> +	if (ns_capable_noaudit(ns, CAP_PERFMON))
> +		return ns_capable(ns, CAP_PERFMON);
> +
> +	if (ns_capable_noaudit(ns, CAP_SYS_ADMIN))
> +		return ns_capable(ns, CAP_SYS_ADMIN);
> +
> +	return false;
> +}

Why _noaudit()?  Normally only used when a permission failure is 
non-fatal to the operation.  Otherwise, we want the audit message.


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
