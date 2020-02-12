Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1306F15AC14
	for <lists+oprofile-list@lfdr.de>; Wed, 12 Feb 2020 16:37:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pHUu0frlKTCDCMhlc5Op3ZbiyD/qyyHnPYNnBebuSkg=; b=giYMgSZ66/5yY3Dwv/Q+eE36xV
	Bu8eeSJ2qEb0xqu5olhJiCB4muLjjA3bN7BRexHxUkYpDOKHEAsQBpjzMIwYTF23fjRz1TGfT9wnb
	sVXmhb1oq7NZwcJuYEu4ayWs7VjTzvNxG1YynCv25LhlytBZs7ZbDfSWg+0dv4y+0Z58=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1j1u4P-0007y5-5p; Wed, 12 Feb 2020 15:36:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sds@tycho.nsa.gov>) id 1j1s7P-0004dg-6z
 for oprofile-list@lists.sourceforge.net; Wed, 12 Feb 2020 13:31:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4E6NdF8sYemfNDGEjWXx29tiVX+0McGJ92YpwPd8UrY=; b=BP5gNwzsLMNSqlirKSD3KEoEN9
 6omkvA3Vzog7k1WmvYJJb3ldTN5/RE8pKNd+sRP3hAFJi9Y/F9v2oZjpr8KQjraB6eFhY6YQIJuJ8
 h3yKkiFnW6eqyynOJyo6zZPZNBxSDoNvEqj6K8rcpw+NNKWhYgMgZRI/sZvPqtIR52Ew=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4E6NdF8sYemfNDGEjWXx29tiVX+0McGJ92YpwPd8UrY=; b=fivYsASVv8DOgv7OGvgGOIMEDX
 W/kAOhYi9T0BsfHv9JdzhM/gbsTaJCHYXjGnfuZD62egfCTTGuzD94mg+HMZTzauOqcfwMxOUcM98
 5Xz8abornzwfr2dhfhLhg3Pho2a9dpkKTjXDLMwtXtLEUC9VGUX94KRo40Pky+hUntZg=;
Received: from usfb19pa36.eemsg.mail.mil ([214.24.26.199])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j1s7J-001R6X-Gn
 for oprofile-list@lists.sourceforge.net; Wed, 12 Feb 2020 13:31:55 +0000
X-EEMSG-check-017: 55300792|USFB19PA36_ESA_OUT06.csd.disa.mil
X-IronPort-AV: E=Sophos;i="5.70,433,1574121600"; d="scan'208";a="55300792"
Received: from emsm-gh1-uea10.ncsc.mil ([214.29.60.2])
 by USFB19PA36.eemsg.mail.mil with ESMTP/TLS/DHE-RSA-AES256-SHA256;
 12 Feb 2020 13:31:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tycho.nsa.gov; i=@tycho.nsa.gov; q=dns/txt;
 s=tycho.nsa.gov; t=1581514302; x=1613050302;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=4E6NdF8sYemfNDGEjWXx29tiVX+0McGJ92YpwPd8UrY=;
 b=dTj/HpjMFK+CwtnbH1SUjnUs2qiieY9aegIGStqkXVcTHbj+T2exW639
 aIjwWvVLPAP4BJLSKBWac+8oco+GIVASc643tIjmyfDuS3Jpo/WOEHcpW
 N4WtMkFSwcMQUuHeM/VVNNBrbJDLXsHT0nA685D5I+aOvoNrJ+EabyQan
 lviQytvbflrE+FZfn1MomFLbGsE6U8+jeqeux1VOF3JwK0dfG2zEoMXNx
 M7GAWD6zAnydXscQnpbc9UpmuoTUcvOKl1eI/W7yGPxyLWItRD226wxjc
 bszB71lu6n34OjpkpqGDTPaCE/VjLtQLHfxiYNpEgBwB7LG/no1CKEixq w==;
X-IronPort-AV: E=Sophos;i="5.70,428,1574121600"; d="scan'208";a="32966495"
IronPort-PHdr: =?us-ascii?q?9a23=3AQxEdcxMOstBwQrwplEYl6mtUPXoX/o7sNwtQ0K?=
 =?us-ascii?q?IMzox0Kf37r8bcNUDSrc9gkEXOFd2Cra4d16yI7uu9AyQp2tWojjMrSNR0TR?=
 =?us-ascii?q?gLiMEbzUQLIfWuLgnFFsPsdDEwB89YVVVorDmROElRH9viNRWJ+iXhpTEdFQ?=
 =?us-ascii?q?/iOgVrO+/7BpDdj9it1+C15pbffxhEiCCybL9vIxi6twTcu8kZjYZiNKo61w?=
 =?us-ascii?q?fErGZPd+lKymxkIk6ekQzh7cmq5p5j9CpQu/Ml98FeVKjxYro1Q79FAjk4Km?=
 =?us-ascii?q?45/MLkuwXNQguJ/XscT34ZkgFUDAjf7RH1RYn+vy3nvedgwiaaPMn2TbcpWT?=
 =?us-ascii?q?S+6qpgVRHlhDsbOzM/7WrakdJ7gr5Frx29phx/24/Ub5+TNPpiZaPWYNcWSX?=
 =?us-ascii?q?NcUspNSyBNB4WxYIUVD+oFIO1WsY/zqVUTphe6HAWhCufixjpOi3Tr36M1zv?=
 =?us-ascii?q?4hHBnb0gI+EdIAsHfaotv7O6gdU++60KbGwC7fb/5Vwzrx9JTEfx4jrPyKQL?=
 =?us-ascii?q?l+cdDRyU4qFw7dk1uQtZLqPyuV1usTtWiQ8vduVee1hG4jrwF+vDiuzdorh4?=
 =?us-ascii?q?nSm40V0UvJ9Tl5wYkpJd24T1R3Ydi/EJRKrS2aOIx2Qt07TmxupS00yaUGtI?=
 =?us-ascii?q?amcCUFx5kr3R7SZ+Gdf4SW7R/vSvydLSp+iXl4YrywnQyy/lKlyuDkU8m010?=
 =?us-ascii?q?tFoTRdn9nXs3ANywTT6s+aSvth5kuh2SiA1wTU6uxcPUA7j7DbK588wr4rjJ?=
 =?us-ascii?q?YTsELDHiHxmEXtkqCZal8o+vSo6uv7YrXmoYWQN4lohQHlLqsigMm/AeU8Mg?=
 =?us-ascii?q?QWXmib//qz1KH78EHkT7hHgec6n6nEvJzAO8gWqbC1DxVI3oo77hawFTam0N?=
 =?us-ascii?q?AWnXkdK1JFfQqKj5P0NFHVO/34Efe+jEiskDds3fzGOKbhDY/XInjMl7fhY6?=
 =?us-ascii?q?5x61RAxwor0dBf+5VUB6kbL/L3REDwu8LXDx8jPwOv3uboFc9y1oUdWWKIHK?=
 =?us-ascii?q?+UK6fSsV6O5uIyLOiAfo4VuDDhK/c74/7il2M2mVgYfaOxx5sYdGi4Huh6I0?=
 =?us-ascii?q?WeeXfjmNMBHnkFvwUgTezmkkaCUSJJaHaoWKI8+DY7CIO6DYfEWICgm7OB3C?=
 =?us-ascii?q?KhEZ1XYmBKEEyDEXDtd4+cQfcDdDqSItN9kjwDTbWhU5Eu1Q2wuw/gyrtqNe?=
 =?us-ascii?q?vU+isWtZL5ztd6+vPcmgsv+jBuCMSdyW6NRXlunmwUXz82wLx/oUtlx1iZza?=
 =?us-ascii?q?d4huJXGMdQ5/xXSAc6M4DTz+hgB9D1QALBcc+DSEy6TdW+HTExUtUxzscLY0?=
 =?us-ascii?q?Z8HdWigRfD0jGwA7ALirOLBIY78r7G03ftIMZ9zm7M1LM9gFk+XstPKWqmi7?=
 =?us-ascii?q?Z99wfJAY7Jkl+Vl6CrdaQfwS7N8H2MwHGKvEFZVg5wTKrEUWoeZkvQsdT2+E?=
 =?us-ascii?q?fCQ6WyBrQgNwtL0dSCJbdSat31kVVGQ+/uONbZY2K2nWe/Hw2IyqmIbIXwe2?=
 =?us-ascii?q?UdwCTdCE4anAAV5nuGMQk+BiG8o2PRFjBuFFTvY1/y/ul6sn+0Ukg0zwSSZU?=
 =?us-ascii?q?17y7W14gIVheCbS/4LxLIEvzouqy91HFay2NLaEcSApwt/fKVdet494VFH1X?=
 =?us-ascii?q?7HuAx5JJCvM6dihlsGeQRto0zuzwl3CplHkcUyt3wl0gxyKaKD3VNCaTyYx5?=
 =?us-ascii?q?bwNaPTKmXo4B+vcbTZ2kre0NaX/KcP5+40q1L5vAGmDkAi6Wlo08FJ03uA4Z?=
 =?us-ascii?q?XHFBISXojsUkYz6hh6vKrXYjIn6IPRznJjK7O4sjjY29ImHOEl0Aqvf89DMK?=
 =?us-ascii?q?OYEw//C8gaB9CwJ+ExhVepahYEM/5I9K4xJcymceGK2K+2M+p6hj2mkHxN4J?=
 =?us-ascii?q?ph3UKU6yp8VunI0o4Hw/6C2wuISSz8gE26vcDwhYBEeTYSHm+7ySf6BI9cfa?=
 =?us-ascii?q?1ycpwNCWe1PcK3wM1+iIT3W35E8l6sGUkG2NSpeRqTd1zxxxFf1UMSoXa/gy?=
 =?us-ascii?q?u30yR0ky01rqqYxCHO2PrtdAAIOmFVX2RijU3jIYywj9EaWkikdRQmlByg5U?=
 =?us-ascii?q?zi3ahUuLx/L3XPQUdPZyX2LWRiUqyqtrqYYs5P84glsSNNX+S5f1+aS6Txox?=
 =?us-ascii?q?wA0yPsB2Fe3iw0dym2upXlmBx3kGycLHd3rHrdY81/2AnQ68bASv5W2DoLXz?=
 =?us-ascii?q?N3iSPSBlSmI9ap+tCUnY/Zsu+iT2KhSoFTcS7zwIOFriS7/25qDQeln/Cuht?=
 =?us-ascii?q?3nFRI10Snm2NRxTyrIthP8bpP32KS9NOJtZlNoC0Pk68pmBoF+lZM9hIsK2X?=
 =?us-ascii?q?gbmpqY5nkHnnnpMdVdx63+aGABRTkRw97a+ALlwlFsLmqVx4LlUXWQ2tFuZ8?=
 =?us-ascii?q?KmYm4N2SIy8dpKCKGK47xAhyd1pUC4rQ3Ja/hngjgd0ecu6GIdg+wRugotyS?=
 =?us-ascii?q?GdAqsIEkRDJyzjiQmH79Cko6VLfmqgbb+w1E9ml9C7EL6Cuh1cWGr+epo6By?=
 =?us-ascii?q?Bw7d5yMFbN0H3194Hld8PcbdMVth2IjRjAi/JZJ442lvoPnSBnI37yvWU5y+?=
 =?us-ascii?q?4nihxjxY+1vJKdJGVr/aK2GBhYOyb6Z8MU/THtgqJekdiM04+zGZVhHy0BXI?=
 =?us-ascii?q?H0QvKwDDISqfPnOh6PED04t3eUAqDQHRSf6Eh4tH/ACZOrOGuSJHYDzNVuXg?=
 =?us-ascii?q?WSJEtagAoMRjU1goY5Fhy2xMzmaEp2/DQR6UD3qxRWzOJnKgfwUn3FqAezaj?=
 =?us-ascii?q?c0SYOfLBpV7gFD4UfYKsie7uN1HyFF8Zyttg2NKmqHZwtWCWEFQFCLB1fmPr?=
 =?us-ascii?q?O2/9nP7/CYBvaiL/vJebiOr/ZRV/KIxZOvz4tm+TmMO96MPnZ8Ff073FRMXX?=
 =?us-ascii?q?RjF8TegTUPRDQdlzjRYM6DuBe85ip3o9ik8PTsXgLv6o+PC7pPMdp04RC5m7?=
 =?us-ascii?q?mDN++WhCZ2MjtY2IgDyWXUx7gY2V4YkztueCW1EbQcqS7NS7rdmqtWDx4cbS?=
 =?us-ascii?q?N8Ks9I47gz3gVXPc7UkNX12aN2j/ErEVdFUV3hmseyaMwLJWG9KE3IBEKROL?=
 =?us-ascii?q?uaIj3Lxtn9YbmgRr1IkOVUqxqwtC6HE0/sOjSCmCLkVxSuMeFKkSGbIAZeuI?=
 =?us-ascii?q?a7chZsBmnvVs/pZQOjOt9tkTI22aE0hm/NNWMENTh8ckVNrqCf7C9BgfVwBX?=
 =?us-ascii?q?ZB7nx7IumAgCuZ8ebYJYgMsfdxASR7ifha4HIkxLtR9i1EQ+Z1mCTKpN50v1?=
 =?us-ascii?q?6mivWPyiZgUBdWrjZLhYSLvVhtOKnA7ZlPR2rL/A8X7WWRFxQLp8JpCtjou6?=
 =?us-ascii?q?9N19jPkLz8JSxc89Lb48QcHdLYKMGZP3o7NxrmBjrUABECTT6xOmHVn1Zdn+?=
 =?us-ascii?q?2K9n2Jspg6rYDhmIEQRb9fVVw1EO4aC0t+EdwcL5d4QCkknaSYjMEW/3q+qg?=
 =?us-ascii?q?feRMFAspDATPKSDu3lKCyFgrlcexsI3bT4IJwSNo39x0xtdF16kJ3FG0reUt?=
 =?us-ascii?q?FAuSlhbg4voEVR63hyVGMz21j7ZQyz/XAcC+W0nh0qigt5eeQh7jDs4004Jl?=
 =?us-ascii?q?DSvis/jFExmcn5gTCWaDPxKKawXYdLCyv7rkQxKon0Qxx0bQ2pgUNpLynER7?=
 =?us-ascii?q?1PgLt6b2xrixHTuYFJGfFCSa1IehgQxeuYZ/8wy1RTtj2nxVNb5evCEZZikA?=
 =?us-ascii?q?oqcZixr3NPwwJjdMI6KbXNK6VX0FhdnaaOvi6z1uAt2w8SPUEN8WKWeCESo0?=
 =?us-ascii?q?MILaMqJy2y/uxj8QaCgSdMeHAQV/o2pfJn7kc9O+WGzyL93L9PM1q+N/aaL6?=
 =?us-ascii?q?+AuGjPi9SIQlUu2UMMjERF+bl20dw/c0qPTUwvzb2RFxoTNcXYNA5acdBd+2?=
 =?us-ascii?q?XJcSaJq+XNzop/P5+hGeDwUe+OqKEUj1qgHAYoGYQM88sAEoC00E7GN8fnIq?=
 =?us-ascii?q?cJyQg25Av1PlWFF+9EeAyEkDgZucGz1px30pdHJjEbH2p9NT+75rHNpg8lmP?=
 =?us-ascii?q?CDRss5Ym8GXosYMXI7QMq6mzZDv3RHAjm30+YZxxab4z/4pyTQFyX8YsFnZP?=
 =?us-ascii?q?eVfhNsFMq29S8k86i4k1LX9IvRJ33iP9R4ptDP8f8ap4qAC/5MSbl9rlvcm4?=
 =?us-ascii?q?5DSnOwVm7AC8K6KILoa4ktcdz7EHK6Xka5iz0rU8eidOqqe4GMjBHlVM5+rY?=
 =?us-ascii?q?WS2jMkK4fpHzUTCxph4ese6Kt6ZgodS546ZwP48QU4K6G7Zgyf14P9bXyqLG?=
 =?us-ascii?q?5tU/RHzei8L4dSxi4oY/7ynGAsVbkm3uK39ggLX5hMgRbAk6XwL7JCWDT+Ty?=
 =?us-ascii?q?QOMz7EojA0wi04bbc/?=
X-IPAS-Result: =?us-ascii?q?A2BPBACF/ENe/wHyM5BmHgELHIN4gWwBIBIqhBSJA4ZlA?=
 =?us-ascii?q?QEBAQEBBoE3iXCRSQkBAQEBAQEBAQE3AQGEQAKCbTgTAhABAQEEAQEBAQEFA?=
 =?us-ascii?q?wEBbIVDgjspAYMCAQUdBg8BBUEQCQIYAgImAgJXBg0GAgEBgmM/glclj1Gbe?=
 =?us-ascii?q?YEyhUqDSIE+gQ4qjD55gQeBEScPgl0+h1uCXgSNTYJPh298lm+CRIJOikaJN?=
 =?us-ascii?q?QYcgkiIEpA7Lat0IoFYKwgCGAghD4MnUBgNjikXFY4sIwMwApFfAQE?=
Received: from tarius.tycho.ncsc.mil (HELO tarius.infosec.tycho.ncsc.mil)
 ([144.51.242.1])
 by EMSM-GH1-UEA10.NCSC.MIL with ESMTP; 12 Feb 2020 13:31:40 +0000
Received: from moss-pluto.infosec.tycho.ncsc.mil (moss-pluto [192.168.25.131])
 by tarius.infosec.tycho.ncsc.mil (8.14.7/8.14.4) with ESMTP id
 01CDU4TT018798; Wed, 12 Feb 2020 08:30:10 -0500
Subject: Re: [PATCH v5 01/10] capabilities: introduce CAP_PERFMON to kernel
 and user space
To: Alexey Budankov <alexey.budankov@linux.intel.com>
References: <0548c832-7f4b-dc4c-8883-3f2b6d351a08@linux.intel.com>
 <9b77124b-675d-5ac7-3741-edec575bd425@linux.intel.com>
 <64cab472-806e-38c4-fb26-0ffbee485367@tycho.nsa.gov>
 <05297eff-8e14-ccdf-55a4-870c64516de8@linux.intel.com>
 <CAADnVQK-JzK-GUk4KOozn4c1xr=7TiCpB9Fi0QDC9nE6iVn8iQ@mail.gmail.com>
 <537bdb28-c9e4-f44f-d665-25250065a6bb@linux.intel.com>
 <63d9700f-231d-7973-5307-3e56a48c54cb@linux.intel.com>
 <d7213569-9578-7201-6106-f5ebc95bd6be@tycho.nsa.gov>
 <2e38c33d-f085-1320-8cc2-45f74b6ad86d@linux.intel.com>
Message-ID: <dd6a1382-7b2f-a6e6-a1ac-009566d7f556@tycho.nsa.gov>
Date: Wed, 12 Feb 2020 08:32:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <2e38c33d-f085-1320-8cc2-45f74b6ad86d@linux.intel.com>
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
X-Headers-End: 1j1s7J-001R6X-Gn
X-Mailman-Approved-At: Wed, 12 Feb 2020 15:36:56 +0000
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
Cc: Mark Rutland <mark.rutland@arm.com>, Song Liu <songliubraving@fb.com>,
 Peter Zijlstra <peterz@infradead.org>,
 "benh@kernel.crashing.org" <benh@kernel.crashing.org>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 Will Deacon <will.deacon@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Paul Mackerras <paulus@samba.org>,
 Jiri Olsa <jolsa@redhat.com>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>,
 Andi Kleen <ak@linux.intel.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Igor Lubashev <ilubashe@akamai.com>, James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 Serge Hallyn <serge@hallyn.com>, Robert Richter <rric@kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Andy Lutomirski <luto@amacapital.net>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: oprofile-list-bounces@lists.sourceforge.net

T24gMi8xMi8yMCAzOjUzIEFNLCBBbGV4ZXkgQnVkYW5rb3Ygd3JvdGU6Cj4gSGkgU3RlcGhlbiwK
PiAKPiBPbiAyMi4wMS4yMDIwIDE3OjA3LCBTdGVwaGVuIFNtYWxsZXkgd3JvdGU6Cj4+IE9uIDEv
MjIvMjAgNTo0NSBBTSwgQWxleGV5IEJ1ZGFua292IHdyb3RlOgo+Pj4KPj4+IE9uIDIxLjAxLjIw
MjAgMjE6MjcsIEFsZXhleSBCdWRhbmtvdiB3cm90ZToKPj4+Pgo+Pj4+IE9uIDIxLjAxLjIwMjAg
MjA6NTUsIEFsZXhlaSBTdGFyb3ZvaXRvdiB3cm90ZToKPj4+Pj4gT24gVHVlLCBKYW4gMjEsIDIw
MjAgYXQgOTozMSBBTSBBbGV4ZXkgQnVkYW5rb3YKPj4+Pj4gPGFsZXhleS5idWRhbmtvdkBsaW51
eC5pbnRlbC5jb20+IHdyb3RlOgo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBPbiAyMS4wMS4yMDIwIDE3
OjQzLCBTdGVwaGVuIFNtYWxsZXkgd3JvdGU6Cj4+Pj4+Pj4gT24gMS8yMC8yMCA2OjIzIEFNLCBB
bGV4ZXkgQnVkYW5rb3Ygd3JvdGU6Cj4+Pj4+Pj4+Cj4gPFNOSVA+Cj4+Pj4+Pj4+IEludHJvZHVj
ZSBDQVBfUEVSRk1PTiBjYXBhYmlsaXR5IGRlc2lnbmVkIHRvIHNlY3VyZSBzeXN0ZW0gcGVyZm9y
bWFuY2UKPj4+Pj4+Pgo+Pj4+Pj4+IFdoeSBfbm9hdWRpdCgpP8KgIE5vcm1hbGx5IG9ubHkgdXNl
ZCB3aGVuIGEgcGVybWlzc2lvbiBmYWlsdXJlIGlzIG5vbi1mYXRhbCB0byB0aGUgb3BlcmF0aW9u
LsKgIE90aGVyd2lzZSwgd2Ugd2FudCB0aGUgYXVkaXQgbWVzc2FnZS4KPj4+Cj4+PiBTbyBmYXIg
c28gZ29vZCwgSSBzdWdnZXN0IHVzaW5nIHRoZSBzaW1wbGVzdCB2ZXJzaW9uIGZvciB2NjoKPj4+
Cj4+PiBzdGF0aWMgaW5saW5lIGJvb2wgcGVyZm1vbl9jYXBhYmxlKHZvaWQpCj4+PiB7Cj4+PiAg
wqDCoMKgwqByZXR1cm4gY2FwYWJsZShDQVBfUEVSRk1PTikgfHwgY2FwYWJsZShDQVBfU1lTX0FE
TUlOKTsKPj4+IH0KPj4+Cj4+PiBJdCBrZWVwcyB0aGUgaW1wbGVtZW50YXRpb24gc2ltcGxlIGFu
ZCByZWFkYWJsZS4gVGhlIGltcGxlbWVudGF0aW9uIGlzIG1vcmUKPj4+IHBlcmZvcm1hbnQgaW4g
dGhlIHNlbnNlIG9mIGNhbGxpbmcgdGhlIEFQSSAtIG9uZSBjYXBhYmxlKCkgY2FsbCBmb3IgQ0FQ
X1BFUkZNT04KPj4+IHByaXZpbGVnZWQgcHJvY2Vzcy4KPj4+Cj4+PiBZZXMsIGl0IGJsb2F0cyBh
dWRpdCBsb2cgZm9yIENBUF9TWVNfQURNSU4gcHJpdmlsZWdlZCBhbmQgdW5wcml2aWxlZ2VkIHBy
b2Nlc3NlcywKPj4+IGJ1dCB0aGlzIGJsb2F0aW5nIGFsc28gYWR2ZXJ0aXNlcyBhbmQgbGV2ZXJh
Z2VzIHVzaW5nIG1vcmUgc2VjdXJlIENBUF9QRVJGTU9OCj4+PiBiYXNlZCBhcHByb2FjaCB0byB1
c2UgcGVyZl9ldmVudF9vcGVuIHN5c3RlbSBjYWxsLgo+Pgo+PiBJIGNhbiBsaXZlIHdpdGggdGhh
dC7CoCBXZSBqdXN0IG5lZWQgdG8gZG9jdW1lbnQgdGhhdCB3aGVuIHlvdSBzZWUgYm90aCBhIENB
UF9QRVJGTU9OIGFuZCBhIENBUF9TWVNfQURNSU4gYXVkaXQgbWVzc2FnZSBmb3IgYSBwcm9jZXNz
LCB0cnkgb25seSBhbGxvd2luZyBDQVBfUEVSRk1PTiBmaXJzdCBhbmQgc2VlIGlmIHRoYXQgcmVz
b2x2ZXMgdGhlIGlzc3VlLsKgIFdlIGhhdmUgYSBzaW1pbGFyIGlzc3VlIHdpdGggQ0FQX0RBQ19S
RUFEX1NFQVJDSCB2ZXJzdXMgQ0FQX0RBQ19PVkVSUklERS4KPiAKPiBJIGFtIHRyeWluZyB0byBy
ZXByb2R1Y2UgdGhpcyBkb3VibGUgbG9nZ2luZyB3aXRoIENBUF9QRVJGTU9OLgo+IEkgYW0gdXNp
bmcgdGhlIHJlZnBvbGljeSB2ZXJzaW9uIHdpdGggZW5hYmxlZCBwZXJmX2V2ZW50IHRjbGFzcyBb
MV0sIGluIHBlcm1pc3NpdmUgbW9kZS4KPiBXaGVuIHJ1bm5pbmcgcGVyZiBzdGF0IC1hIEkgYW0g
b2JzZXJ2aW5nIHRoaXMgQVZDIGF1ZGl0IG1lc3NhZ2VzOgo+IAo+IHR5cGU9QVZDIG1zZz1hdWRp
dCgxNTgxNDk2Njk1LjY2Njo4NjkxKTogYXZjOiAgZGVuaWVkICB7IG9wZW4gfSBmb3IgIHBpZD0y
Nzc5IGNvbW09InBlcmYiIHNjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl9zeXN0ZW1kX3QgdGNv
bnRleHQ9dXNlcl91OnVzZXJfcjp1c2VyX3N5c3RlbWRfdCB0Y2xhc3M9cGVyZl9ldmVudCBwZXJt
aXNzaXZlPTEKPiB0eXBlPUFWQyBtc2c9YXVkaXQoMTU4MTQ5NjY5NS42NjY6ODY5MSk6IGF2Yzog
IGRlbmllZCAgeyBrZXJuZWwgfSBmb3IgIHBpZD0yNzc5IGNvbW09InBlcmYiIHNjb250ZXh0PXVz
ZXJfdTp1c2VyX3I6dXNlcl9zeXN0ZW1kX3QgdGNvbnRleHQ9dXNlcl91OnVzZXJfcjp1c2VyX3N5
c3RlbWRfdCB0Y2xhc3M9cGVyZl9ldmVudCBwZXJtaXNzaXZlPTEKPiB0eXBlPUFWQyBtc2c9YXVk
aXQoMTU4MTQ5NjY5NS42NjY6ODY5MSk6IGF2YzogIGRlbmllZCAgeyBjcHUgfSBmb3IgIHBpZD0y
Nzc5IGNvbW09InBlcmYiIHNjb250ZXh0PXVzZXJfdTp1c2VyX3I6dXNlcl9zeXN0ZW1kX3QgdGNv
bnRleHQ9dXNlcl91OnVzZXJfcjp1c2VyX3N5c3RlbWRfdCB0Y2xhc3M9cGVyZl9ldmVudCBwZXJt
aXNzaXZlPTEKPiB0eXBlPUFWQyBtc2c9YXVkaXQoMTU4MTQ5NjY5NS42NjY6ODY5Mik6IGF2Yzog
IGRlbmllZCAgeyB3cml0ZSB9IGZvciAgcGlkPTI3NzkgY29tbT0icGVyZiIgc2NvbnRleHQ9dXNl
cl91OnVzZXJfcjp1c2VyX3N5c3RlbWRfdCB0Y29udGV4dD11c2VyX3U6dXNlcl9yOnVzZXJfc3lz
dGVtZF90IHRjbGFzcz1wZXJmX2V2ZW50IHBlcm1pc3NpdmU9MQo+IAo+IEhvd2V2ZXIgdGhlcmUg
aXMgbm8gY2FwYWJpbGl0eSByZWxhdGVkIG1lc3NhZ2VzIGFyb3VuZC4gSSBzdXBwb3NlIG15IHJl
ZnBvbGljeSBzaG91bGQKPiBiZSBtb2RpZmllZCBzb21laG93IHRvIG9ic2VydmUgY2FwYWJpbGl0
eSByZWxhdGVkIEFWQ3MuCj4gCj4gQ291bGQgeW91IHBsZWFzZSBjb21tZW50IG9yIGNsYXJpZnkg
b24gaG93IHRvIGVuYWJsZSBjYXBzIHJlbGF0ZWQgQVZDcyBpbiBvcmRlcgo+IHRvIHRlc3QgdGhl
IGNvbmNlcm5lZCBsb2dnaW5nLgoKVGhlIG5ldyBwZXJmbW9uIHBlcm1pc3Npb24gaGFzIHRvIGJl
IGRlZmluZWQgaW4geW91ciBwb2xpY3k7IHlvdSdsbCBoYXZlIAphIG1lc3NhZ2UgaW4gZG1lc2cg
YWJvdXQgIlBlcm1pc3Npb24gcGVyZm1vbiBpbiBjbGFzcyBjYXBhYmlsaXR5MiBub3QgCmRlZmlu
ZWQgaW4gcG9saWN5LiIuICBZb3UgY2FuIGVpdGhlciBhZGQgaXQgdG8gdGhlIGNvbW1vbiBjYXAy
IApkZWZpbml0aW9uIGluIHJlZnBvbGljeS9wb2xpY3kvZmxhc2svYWNjZXNzX3ZlY3RvcnMgYW5k
IHJlYnVpbGQgeW91ciAKcG9saWN5IG9yIGV4dHJhY3QgeW91ciBiYXNlIG1vZHVsZSBhcyBDSUws
IGFkZCBpdCB0aGVyZSwgYW5kIGluc2VydCB0aGUgCnVwZGF0ZWQgbW9kdWxlLgoKCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Byb2ZpbGUtbGlzdCBt
YWlsaW5nIGxpc3QKb3Byb2ZpbGUtbGlzdEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3Byb2ZpbGUtbGlzdAo=
