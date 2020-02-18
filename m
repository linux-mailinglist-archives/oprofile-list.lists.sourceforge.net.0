Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B058E16308D
	for <lists+oprofile-list@lfdr.de>; Tue, 18 Feb 2020 20:48:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hkLWAIKitGIV3NFiREf+rMEYhkqKmdEsjZYiHt61mFQ=; b=CqC2B0coc3OTKdEQ8frIlnfmIz
	Sn4N4X6iIZZK21bnjp0c8JhrVJdfGJCPWaMjF+8oHTnsmZWCWKr71WpvD23IIbnR67aIY3R3P+/Q5
	QtI0L8thEHzS7f0/TU6X9jHqE9wa1p+bT9iRK+zXAa3+yVGac0aR6W1ENjM+HvyLOq0c=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1j48r0-000094-Od; Tue, 18 Feb 2020 19:48:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sds@tycho.nsa.gov>) id 1j47le-00085h-GG
 for oprofile-list@lists.sourceforge.net; Tue, 18 Feb 2020 18:38:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t056j3xez4XxxDTksbJVc3+OMTywu4PBL8Ajb4e16gA=; b=F4jxAeuUEevwP+i1sy4g5nPkUu
 3ZLH6NjSXoxmNLMR263MsRYUB/DSbdQL+F5sFimkvVBEEn0lVBfwWG+KM72lYjiJLOXRQH+bjHviw
 xFRjXNiomIS4IrwACQeY8f4JdbWK/zFjFCW4A2SWDp5QkHWt2hGTNy097kBKazTjtoig=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=t056j3xez4XxxDTksbJVc3+OMTywu4PBL8Ajb4e16gA=; b=dqiok8QWc2AW7HiuORetZfg/r3
 b0avitd8MGXQYgKP4Kg6Tve1GJnysR2YmEAWh1IHYwJvangf1S4XTn5goMCtfU5ypeVWfpbfbgHJA
 nKbFnWYf4fFgk2FvVDQeU4ZAtE2Jj0XUyNTw3lA+6WjjujseGsTxcOtzq7HUzmNnEV4M=;
Received: from ucol19pa37.eemsg.mail.mil ([214.24.24.197])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j47la-00GoUy-Kp
 for oprofile-list@lists.sourceforge.net; Tue, 18 Feb 2020 18:38:46 +0000
X-EEMSG-check-017: 77746026|UCOL19PA37_ESA_OUT04.csd.disa.mil
X-IronPort-AV: E=Sophos;i="5.70,456,1574121600"; d="scan'208";a="77746026"
Received: from emsm-gh1-uea10.ncsc.mil ([214.29.60.2])
 by UCOL19PA37.eemsg.mail.mil with ESMTP/TLS/DHE-RSA-AES256-SHA256;
 18 Feb 2020 18:21:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tycho.nsa.gov; i=@tycho.nsa.gov; q=dns/txt;
 s=tycho.nsa.gov; t=1582050089; x=1613586089;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=t056j3xez4XxxDTksbJVc3+OMTywu4PBL8Ajb4e16gA=;
 b=X78puukiS0hpOLdHLDcpVolfj3TddR4C1udfeG931L41hM37TJHj+gxt
 Yg2Ptu9MrxYl+2UfnNCE66ZZSJg14NrdCCVIxRg0ej6+N8KJqHiXou5Kj
 PE35XfzrqsCo9zK1LQn87plUCmc8XJPqJFNxGJLMZyQJt+26Fgvh831Jl
 b12a9un9fSXxZBF7KeAjlAhIN7eYeOYsxc4vjnkeovSFs7fn41iJ5jNW1
 70nSBfu/Pty/fLeChdVmrsKtoI+BWuZbOFy2FJ0uYLtplcVmQU/HGUpUE
 nLLjbtf6fnOGN/TvcnbWOPdNbk5vWfQ4KtM+FRHbMD7VBKFZowsZksFTc Q==;
X-IronPort-AV: E=Sophos;i="5.70,456,1574121600"; d="scan'208";a="33169528"
IronPort-PHdr: =?us-ascii?q?9a23=3AguxcAB11borM6JmdsmDT+DRfVm0co7zxezQtwd?=
 =?us-ascii?q?8ZsegeLv3xwZ3uMQTl6Ol3ixeRBMOHsq4C1Lqd6vm5EUU7or+/81k6OKRWUB?=
 =?us-ascii?q?EEjchE1ycBO+WiTXPBEfjxciYhF95DXlI2t1uyMExSBdqsLwaK+i764jEdAA?=
 =?us-ascii?q?jwOhRoLerpBIHSk9631+ev8JHPfglEnjWwba59IRmsrwjctcYajZZ/Jqos1x?=
 =?us-ascii?q?DEvmZGd+NKyGxnIl6egwzy7dqq8p559CRQtfMh98peXqj/Yq81U79WAik4Pm?=
 =?us-ascii?q?4s/MHkugXNQgWJ5nsHT2UZiQFIDBTf7BH7RZj+rC33vfdg1SaAPM32Sbc0WS?=
 =?us-ascii?q?m+76puVRTlhjsLOyI//WrKkcF7kr5Vrwy9qBx+247UYZ+aNPxifqPGYNgWQX?=
 =?us-ascii?q?NNUttNWyBdB4+xaYUAD/AFPe1FsYfzoVUApga6CQW1Gu/izjpEi3nr1qM4zu?=
 =?us-ascii?q?shCxnL0hE+EdIAsHrar9v7O6kdXu+30KbGwi7Ob+9U1Drn9ITEbh4srPOKUL?=
 =?us-ascii?q?ltccTR004vFwbdg1uNtYzqISuV1uQTvGid8uFuSOevhHQjqwF1vDeuxtonh4?=
 =?us-ascii?q?7Sho0I0VDJ7jl5wYYpKt24T053e9ikEIBKuC2AOIt2Rd0iTnhutS0nxLMGvp?=
 =?us-ascii?q?u7czILyJQh3xPfbuaIc46K7x75U+aROzh4iGpmeL2hnRay91avyunmWsmzyl?=
 =?us-ascii?q?ZKoSxImcTPuHAVzxHf98eKR/Rn8kqhxDqDzR7f5+5aLUwuiKbWLYMqzKQqmZ?=
 =?us-ascii?q?oJq0vDGzf7mEDxjKCLaEop4vOo6+H7YrX+oZ+cKpN0hhn+Mqswnsy/Bvw1Mh?=
 =?us-ascii?q?QUUGiB+OS8yabj8Vf4QLVMgP02lbLZv47GKsgBuq64AxNa0oYk6xqlCTepzM?=
 =?us-ascii?q?8YkmUdIFJAeRKHi5DlO1DIIP/mEfeym0mgnThkyvzcPrDtH4/BImbMnbv/Z7?=
 =?us-ascii?q?px9lZQyA8pwtBe45JUBKsBIPX2WkLpr9zXEwQ5Pheow+fnFNp91oQeVXiJAq?=
 =?us-ascii?q?+CKqzeq1CI5uUxI+WUfo8apC79K+Q55/7plXI2g1sdcrem3JQJaHG0BO9pI1?=
 =?us-ascii?q?iEbnX2hNcBEmAKvhQlQezuiV2CVyNTZnmoU6I94DE7FJypDYPZSo+xh7yB2T?=
 =?us-ascii?q?+xHodKaWBeFlCMDXDoep2GW/cJbyKSONVhkj0fVbW6TY8uzxSuuxH7y7Z9Ke?=
 =?us-ascii?q?rU4CIYv4r51Ndp/+3TiQ0y9TtsAsSGzW6NVW50kX0TSj82xq9/pUh9y1eF0a?=
 =?us-ascii?q?Rin/NYEtlT7etTUggmLZ7c0/B6C9fqVwLZYNiJVEipQs+nADwqT9IxxdEOY1?=
 =?us-ascii?q?xnFNq/kB/MxTelD6USl7yRC5w+6rjc0GTpJ8Zh13bG07EsgEM6TctKK2Krna?=
 =?us-ascii?q?1/+BbJB47PjUqZk7ymdaMG3C7C7G2D13aBvFlEUA5sVqXIRXUfZkrQrdT24U?=
 =?us-ascii?q?PPVLyuBqo9MgtH18GCLrFGatrzjVVJXP3jIsjRY3qtm2esAhaF3rGMbI3te2?=
 =?us-ascii?q?UbxirdE1IIkwQJ8naGKQg+ByGhrHzYDDF1EVLvYkXs8fRxqX+hT080yR2KYF?=
 =?us-ascii?q?Nl17av5hEVgvmcQesJ3r0YoCchtyl0HFGl0t3MENqAuxFsfKZCbtMn5ldIy2?=
 =?us-ascii?q?bZuxZ6Ppy6IKBonkQefBhvv0PyyxV3DZ1NkMYrrHMuyAp/MqGY301bdzOew5?=
 =?us-ascii?q?/wPqfbKm7o/BCgc6TWwE3R0M6K+qcT7/Q1s03jsxu0Fkom7nVnyMJY02CG6Z?=
 =?us-ascii?q?XPFwUdS4j9UkEt9xh1v7vaeDUy55vI1X1wNqm5qiLN1MwtBOsh1BmgZcxSMK?=
 =?us-ascii?q?yBFA79CcEVGtahIvQwm1e1dhIEIPxS9KksMsO6ePuG3KGqMf1knDKni2RH/Z?=
 =?us-ascii?q?x90liL9yp6S+7J0IwJzOyG0QGfTTfzkE+hstzrmYBDfTwdBGm/xDPgBI5QYK?=
 =?us-ascii?q?1yYIkKBX2vI82x2tVxmZrtV2RE+16kAlMMwNWpdgaKb1zhwQ1Q0lwarmK9mS?=
 =?us-ascii?q?SiyTx0kismrqyE0SzBxOTicxUHOmpVS2V4kVjsJo20hcgAXEe0dwgpiAel5U?=
 =?us-ascii?q?HiyqhaoKR/MnLcTl1Tfyj2MW5vSbG/trmYbM5K8pwosD9bX/i7YVCfUrT9uQ?=
 =?us-ascii?q?cV0zv/H2tCwzA2bzOqupL9nxxhkm2QN2xzo2TEdsFw3xjf+MbQSuJW3joDXC?=
 =?us-ascii?q?N4kyXYBkCgP9m1+tWZj5PDsuG4V2K8WZxfaCrrwp2atCu9+2JqBQayn+68mt?=
 =?us-ascii?q?L5Cwg2yyz72MdwVSXOshn8ZpPn16OgMeJoZkNoHkPz69JmGoFilYs9nJAQ2X?=
 =?us-ascii?q?4GhpqL+XoLiGjzMdtU2K/laHoNRCULw8LO4AT/1k1jNGyGyJzkWXqD2cthZM?=
 =?us-ascii?q?W6YmQO2i4n6MBKEqiU5qRenSRpulq4sR7RYf9lkzcZyPsu7mMagu4QtAo20C?=
 =?us-ascii?q?qSHq0SHVNZPSzwlxWE9tW+rKJKa2aydbi/ylFznc6uDL6cuAFQQnX5dYk4HS?=
 =?us-ascii?q?928Mp/NEjA0Hrp6oHrYNPQd84ctgWIkxfciOhYMIkxmeQOhSpmP2L9oHIkxv?=
 =?us-ascii?q?UljRxhw566ppKLK2Zz86KjBB5XKDn1a9kU+jH3gqZUhtyW0Jy3HpV9BjULW4?=
 =?us-ascii?q?PlTfapEDIUqPTmOB+CHycmqneeALbfHhGQ6F1gr33RF5CmLHWXJHgCzdV+Xx?=
 =?us-ascii?q?mRPk1fgAYaXDUghJE2Cx6ly9b8f0tj4TAR/FH4oANWyu10Lxn/TnvfpACwZz?=
 =?us-ascii?q?cwSZifKgdW7w5a50fNLcOS9/98ED9G/pC6qAyNK3ebZxhTDW0TXUyFBlTjMa?=
 =?us-ascii?q?O16tnb6eSYAfC+L/TWa7WUteNeT+uIxY6o0oZ++zaMN8OPPmRtDvEiwkpMR2?=
 =?us-ascii?q?p5G8XCmzoTUCEXiS3NYNCBpBum+S14sNq/8PL1VwLr/4ePDKFSMdp38RCsna?=
 =?us-ascii?q?iDL/KQhDp+KTtA0ZMM3WXIyL8R3F4TjyFhaSChEbABtS7WUKLdgatXDx8Aay?=
 =?us-ascii?q?NvL8tE9bk83gdXNc7dlNz1yqZyjuQpBFddSVzhhsapaNQOI2G8MlPHGUmKOK?=
 =?us-ascii?q?2bKj3M3876er28SbJOg+VOrRGwuiiUE1XlPjudkznlTRevMftDjCuDJhxRpJ?=
 =?us-ascii?q?m9cgpxCWjkVN/mbhy7MNlqjTw52LE0g2nFNWgHPDhifENCsKeQ4TlbgvphAW?=
 =?us-ascii?q?xB6GRqLe2elyae9enYJcVejfw+KyB5h+9LqF4nx7JT7yZaDKh8nCbCo88oqU?=
 =?us-ascii?q?yqm++MzSRPVBtItyYNhYSXsEEkMqLcoN0Ie3/B8QlFyGKKERUR749nD9r1oa?=
 =?us-ascii?q?FL4t7Gka/ybjBY/ISQtfARHcfZYOKONH4wN1K9AzPOAwYtTTevMXDZwUdala?=
 =?us-ascii?q?fWvkWYspUg4qrtmp4VVqVSHAgtG+8XEFZNHdoMOp57Uzoo17mBg5hMrVOkqh?=
 =?us-ascii?q?DVSMISlZndSPuWAfKnJDvRqLRAYFNcyLj9IKwQO5f91kgkbUN1ysCCOkzfWp?=
 =?us-ascii?q?hopSlnZxV89EBM9nd5Zm4+wUTobkWq+nBFUbb+nBkxjAJlJ+Ak9Cvt5VoxDl?=
 =?us-ascii?q?7LojYg1kg3hdjhxzuWdXS5eKW3WodfEGzwvkgtM5X2RS5xbAuvjQplMivJQ/?=
 =?us-ascii?q?RaiL42MShCjALMtJoHIuJVV6paZx4Mwu/fM/wzzXxfpz+hyEsB4vHKX98qqw?=
 =?us-ascii?q?ouddaAontL3AQrOME0Iaj4J6dTyFVUwKWUsXnsntg43QtWAk8G826IYicT8B?=
 =?us-ascii?q?gQP6QiOjGA5eVp4wXEnCFMLixEd/curf8i2k45P+mah3bs3rpHJ1qZOOmPaa?=
 =?us-ascii?q?+U7SyIqc6PR1ornmwMmkhV+7VsmZM/fE6Ef0QuyqaNDRMPNNqEJQwDPORI83?=
 =?us-ascii?q?2GRjqDqeXAx9pOOoy5Eu35BbuVuL08nlOvHAFvGZ8FqMsGAM//gwnjMc77Ie?=
 =?us-ascii?q?tdml0W7wPxKQDAVa4YdQ=3D=3D?=
X-IPAS-Result: =?us-ascii?q?A2BkAgCmKkxe/wHyM5BmHAEBAQEBBwEBEQEEBAEBgXuBf?=
 =?us-ascii?q?YEYVAEgEiqEFIkDhmADBoE3iXCRSgkBAQEBAQEBAQEtCgQBAYFMgi9FAoInO?=
 =?us-ascii?q?BMCEAEBAQUBAQEBAQUDAQFshTcMgjspAYMCAQUjFS0UEAsYAgImAgJXBgEMB?=
 =?us-ascii?q?gIBAYJjPwGCViUPrXGBMoRJQUCDaYE+gQ4qiVuCY3mBB4E4D4JdPoJkAQIBA?=
 =?us-ascii?q?oRxgl4EkCKHMEaXcoJFglCEf48EBhyDRpdgLY5AiHeUWCKBWCsIAhgIIQ+DJ?=
 =?us-ascii?q?wkWMRgNjlWIT4UIAVQjAzACBQaQXAEB?=
Received: from tarius.tycho.ncsc.mil (HELO tarius.infosec.tycho.ncsc.mil)
 ([144.51.242.1])
 by EMSM-GH1-UEA10.NCSC.MIL with ESMTP; 18 Feb 2020 18:21:28 +0000
Received: from moss-pluto.infosec.tycho.ncsc.mil (moss-pluto [192.168.25.131])
 by tarius.infosec.tycho.ncsc.mil (8.14.7/8.14.4) with ESMTP id
 01IIKDP1111818; Tue, 18 Feb 2020 13:20:13 -0500
Subject: Re: [PATCH v7 01/12] capabilities: introduce CAP_PERFMON to kernel
 and user space
To: Alexey Budankov <alexey.budankov@linux.intel.com>,
 James Morris <jmorris@namei.org>, Serge Hallyn <serge@hallyn.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
 Paul Mackerras <paulus@samba.org>, Helge Deller <deller@gmx.de>,
 Thomas Gleixner <tglx@linutronix.de>
References: <c8de937a-0b3a-7147-f5ef-69f467e87a13@linux.intel.com>
 <f56fbb5c-1477-44d5-7346-85a1ca0869dc@linux.intel.com>
Message-ID: <00025c5f-d497-f541-710a-bc3ee3665652@tycho.nsa.gov>
Date: Tue, 18 Feb 2020 13:22:17 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <f56fbb5c-1477-44d5-7346-85a1ca0869dc@linux.intel.com>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1j47la-00GoUy-Kp
X-Mailman-Approved-At: Tue, 18 Feb 2020 19:48:21 +0000
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
Cc: linux-man@vger.kernel.org, Andi Kleen <ak@linux.intel.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Igor Lubashev <ilubashe@akamai.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, oprofile-list@lists.sf.net,
 Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On 2/17/20 3:06 AM, Alexey Budankov wrote:
> 
> Introduce CAP_PERFMON capability designed to secure system performance
> monitoring and observability operations so that CAP_PERFMON would assist
> CAP_SYS_ADMIN capability in its governing role for performance
> monitoring and observability subsystems.
> 
> CAP_PERFMON hardens system security and integrity during performance
> monitoring and observability operations by decreasing attack surface
> that is available to a CAP_SYS_ADMIN privileged process [2]. Providing
> the access to system performance monitoring and observability operations
> under CAP_PERFMON capability singly, without the rest of CAP_SYS_ADMIN
> credentials, excludes chances to misuse the credentials and makes the
> operation more secure. Thus, CAP_PERFMON implements the principal of
> least privilege for performance monitoring and observability operations
> (POSIX IEEE 1003.1e: 2.2.2.39 principle of least privilege: A security
> design principle that states that a process or program be granted only
> those privileges (e.g., capabilities) necessary to accomplish its
> legitimate function, and only for the time that such privileges are
> actually required)
> 
> CAP_PERFMON meets the demand to secure system performance monitoring and
> observability operations for adoption in security sensitive, restricted,
> multiuser production environments (e.g. HPC clusters, cloud and virtual
> compute environments), where root or CAP_SYS_ADMIN credentials are not
> available to mass users of a system, and securely unblocks accessibility
> of system performance monitoring and observability operations beyond
> the root and CAP_SYS_ADMIN use cases.
> 
> CAP_PERFMON takes over CAP_SYS_ADMIN credentials related to system
> performance monitoring and observability operations and balances amount
> of CAP_SYS_ADMIN credentials following the recommendations in the
> capabilities man page [1] for CAP_SYS_ADMIN: "Note: this capability is
> overloaded; see Notes to kernel developers, below." For backward
> compatibility reasons access to system performance monitoring and
> observability subsystems of the kernel remains open for CAP_SYS_ADMIN
> privileged processes but CAP_SYS_ADMIN usage for secure system
> performance monitoring and observability operations is discouraged with
> respect to the designed CAP_PERFMON capability.
> 
> Although the software running under CAP_PERFMON can not ensure avoidance
> of related hardware issues, the software can still mitigate these issues
> following the official hardware issues mitigation procedure [2].
> The bugs in the software itself can be fixed following the standard
> kernel development process [3] to maintain and harden security of system
> performance monitoring and observability operations.
> 
> [1] http://man7.org/linux/man-pages/man7/capabilities.7.html
> [2] https://www.kernel.org/doc/html/latest/process/embargoed-hardware-issues.html
> [3] https://www.kernel.org/doc/html/latest/admin-guide/security-bugs.html
> 
> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>

Acked-by: Stephen Smalley <sds@tycho.nsa.gov>

[...]


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
