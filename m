Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B13313AD7B
	for <lists+oprofile-list@lfdr.de>; Tue, 14 Jan 2020 16:21:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1irO0E-0007RN-Ks; Tue, 14 Jan 2020 15:21:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=8281b9063c=songliubraving@fb.com>)
 id 1ir6IV-0000ck-5V
 for oprofile-list@lists.sourceforge.net; Mon, 13 Jan 2020 20:26:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YMVBJbGmTCMPeM/KVL6fG5VRMvMQhDHKxQT5748iQoI=; b=Z+fOnsj9ONnsH1Jd9QMU5viz9q
 YsNwPRsMkWps4v3IUxUSKFuWbWBJNMiuk6AECXtMC1FqO29Wy6g3K0f0YTpicv/q1nmDnhGjeJROC
 eVSQI66vcXYq7+HhrnBfOmzjjLkZ/OhUXj8xmHfXKoLE26CBaHoRnyhW8+UqiGH7L7Ss=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YMVBJbGmTCMPeM/KVL6fG5VRMvMQhDHKxQT5748iQoI=; b=OeWFuae/5Qbwu5H0J/71gVDjjf
 k79dLZ364/m1WSF59g7QyE0ljJ/VCPazqRXfqX1xHw1UlopOu9tjEtNgwOADiKH4xJWhmQ87/YbgF
 p8GrYd28i7J4gcjzW90sXF/s3p01tiCdgeAgjUrS5xU3H5EwFxq5yINuKZebIyVLK5mg=;
Received: from mx0b-00082601.pphosted.com ([67.231.153.30])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ir6IT-001RGT-JL
 for oprofile-list@lists.sourceforge.net; Mon, 13 Jan 2020 20:26:51 +0000
Received: from pps.filterd (m0148460.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00DKOPB7007093; Mon, 13 Jan 2020 12:25:42 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=facebook;
 bh=YMVBJbGmTCMPeM/KVL6fG5VRMvMQhDHKxQT5748iQoI=;
 b=J1yz0yzFlWbAqfSdSFvN18+X/vkzNVaNVdkMmu90ykfymEeEPIrNIlbCqePr2SiXZT5E
 YBrdfbfJRb9n6AJuCyjsMfYL+ibbtwCnfkPR7D5JxhdLO5whLSrjYiSsabN5zmrHffct
 rbO1BrOAvaq8t14boTTD2cDLQSw4Ku5HhSc= 
Received: from maileast.thefacebook.com ([163.114.130.16])
 by mx0a-00082601.pphosted.com with ESMTP id 2xfcrshsg2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Mon, 13 Jan 2020 12:25:42 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.35.175) with Microsoft SMTP
 Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 13 Jan 2020 12:25:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eY87z+fcajIgIiB0WyUvT0oRz5pI9CqN2atf1I+Cge+CBUTSmdqOg0hhTbkoQFZvMpJdwgluFB5nOqeoD8jj/AYp1GoaW/8Xf76/LxcPDrj+8SnYOWc/iAg1glWnmWJ2274pRaFbEVJQlSgxomAhDpAnIveCfe1lYLFJsGWD/cjJA09dUXmlAaWsCEgb2g2aL5Ft2fRIUKNRYV18ng55kirHKoA/OGbYAMdRMRXU54ULlSCK1IGCOvTSFrNGSpu6SFLb0A08gajOgj2yiykPwtzMypUnVI9beW3I22PMCgwTdRacHMoOrmbRHe107tXqFoAIWvxnTKnXsIODU8aT5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YMVBJbGmTCMPeM/KVL6fG5VRMvMQhDHKxQT5748iQoI=;
 b=nnLDJ4QKQ29/uQ9ryWgIARhJwpyxMF8W8FGJgT+Zhs9rgStRVX86Bg/29UgXzxisDTrFkNIt0sGNNIEA3ej1BAJdGDzjZ2cWkLhM7uBOfX4dpPA5772lPAY/ZzeKOhJT+KPyP02/vQBeAFiqevO3gg9/xnyt9Rb9N9XwIMl4SDMiXnHo9s6xiJ7fvhKjicmwymSvWgIeb3wnrHX/H138c8Q16Eu6rloKvWA5BI1veaRQKXvG3AFDyZ0ot/9TUBXYrMcp8NgM8ME7etn6TDJaf6kze4bTxHFvlpiv+wKRkk6B8KiSFWXlwDfDe4NLTeCc5pgd8qeS8x8Kn0I0ZqKUSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector2-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YMVBJbGmTCMPeM/KVL6fG5VRMvMQhDHKxQT5748iQoI=;
 b=UejVoVVehUKHXOKod/wLceoE+nTaCc2CLL0TwnuEC27LqH/bRd3nJaYN+cQJ65qEEh15Yv20XdTiSnBRWhMdIzFaKw5LMuax/Zbkdd3uCjNFEycv/gleddpLZx1aNyTQA4pGvFJPOzRVU2Q3y1YlUD1kIxUD2oi/L2PuGt3sgAk=
Received: from BYAPR15MB3029.namprd15.prod.outlook.com (20.178.238.208) by
 BYAPR15MB2934.namprd15.prod.outlook.com (20.178.237.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.8; Mon, 13 Jan 2020 20:25:37 +0000
Received: from BYAPR15MB3029.namprd15.prod.outlook.com
 ([fe80::3541:85d8:c4c8:760d]) by BYAPR15MB3029.namprd15.prod.outlook.com
 ([fe80::3541:85d8:c4c8:760d%3]) with mapi id 15.20.2623.015; Mon, 13 Jan 2020
 20:25:37 +0000
From: Song Liu <songliubraving@fb.com>
To: Alexey Budankov <alexey.budankov@linux.intel.com>
Subject: Re: [PATCH v4 1/9] capabilities: introduce CAP_SYS_PERFMON to kernel
 and user space
Thread-Topic: [PATCH v4 1/9] capabilities: introduce CAP_SYS_PERFMON to kernel
 and user space
Thread-Index: AQHVtYUIRY0pFUyTckCQImxjUxqfyafpNC8A
Date: Mon, 13 Jan 2020 20:25:37 +0000
Message-ID: <7EBC6A81-1DA7-4D5C-972F-4D5987B12E2A@fb.com>
References: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
 <e0cb2b8d-e964-bc23-bf80-58d7ac4ed6f1@linux.intel.com>
In-Reply-To: <e0cb2b8d-e964-bc23-bf80-58d7ac4ed6f1@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.40.2.2.4)
x-originating-ip: [2620:10d:c090:200::6df5]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 03276049-59e7-43f8-60f6-08d79866c03b
x-ms-traffictypediagnostic: BYAPR15MB2934:
x-microsoft-antispam-prvs: <BYAPR15MB2934A2DFF73E81C06F0FB5B1B3350@BYAPR15MB2934.namprd15.prod.outlook.com>
x-fb-source: Internal
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-forefront-prvs: 028166BF91
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(376002)(39860400002)(346002)(396003)(136003)(199004)(189003)(54906003)(186003)(6916009)(5660300002)(6486002)(36756003)(316002)(53546011)(2906002)(6506007)(6512007)(2616005)(478600001)(8676002)(81156014)(966005)(33656002)(7406005)(7416002)(81166006)(4326008)(8936002)(64756008)(86362001)(66476007)(66946007)(66556008)(91956017)(76116006)(66446008)(71200400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR15MB2934;
 H:BYAPR15MB3029.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 93Hm0kDIkITp9ifXxQSnvwqQi/nLTYmv/XQNEvA6iByhmIC42RXbg9GFaRPap1DkmFm2TMjtF+vJQOUc4A15pzLxa/GH7pz2GPIK9k8KFY/eNEh9unpL2aZiK4IohZ0+7or6EhGqWCoN+75t+C9WT10MAjC/5WBt6nT+q+ZZwqcwQ2tyAbBU2aYJDsGpVmRvxJzYisedobb29zt8tu4M2s4FBSVMyC/xirbpxFlFa/dFADwzedAT6mkLIYlzu25g4kAv0Qj/fXBoo0Qv/kN/za3gww/XW1pnjbeX+u4WPiOj9JSsTRg6yqK2TOgAeK0E1mmk6SnkI3s5qXyeQATEChR9u03k8YzDkh45sMx7uwkDKMDQrc8kqUznD3Y8P7xQTJPmPJzALHjUJ733EUJgs+mtnqV+Vq3JJ2H3X7LNdFaFtQ4zFdqpwsUfF0O5Yh4nHZDhDiDLas+WXl/VPIxByL/APdBJmRnsub2jZZvrTdl1sTt9EJcMYUfhPlMBuObiSzRMFIm4v+mSauhJGPx8cA==
x-ms-exchange-transport-forked: True
Content-ID: <05A2858D29365040812017508B06EED0@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 03276049-59e7-43f8-60f6-08d79866c03b
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2020 20:25:37.1870 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8+VmdSsiQuGj0Q9kUsqQcqOgDEsWz97kXDupKj5HtKvzd7cAP55W7Hv5QSr4PnYK5XDcJnsTFBFGVigD0kGpHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB2934
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-13_06:2020-01-13,
 2020-01-13 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 phishscore=0
 mlxlogscore=764 mlxscore=0 adultscore=0 clxscore=1015 bulkscore=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0
 priorityscore=1501 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-1910280000 definitions=main-2001130166
X-FB-Internal: deliver
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [67.231.153.30 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ir6IT-001RGT-JL
X-Mailman-Approved-At: Tue, 14 Jan 2020 15:21:09 +0000
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 Will Deacon <will.deacon@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Paul
 Mackerras <paulus@samba.org>, Jiri Olsa <jolsa@redhat.com>,
 Andi Kleen <ak@linux.intel.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Igor Lubashev <ilubashe@akamai.com>, James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>,
 "oprofile-list@lists.sf.net" <oprofile-list@lists.sf.net>,
 Serge Hallyn <serge@hallyn.com>, Robert Richter <rric@kernel.org>,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 Casey Schaufler <casey@schaufler-ca.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net



> On Dec 18, 2019, at 1:24 AM, Alexey Budankov <alexey.budankov@linux.intel.com> wrote:
> 
> 
> Introduce CAP_SYS_PERFMON capability devoted to secure system performance
> monitoring and observability operations so that CAP_SYS_PERFMON would
> assist CAP_SYS_ADMIN capability in its governing role for perf_events,
> i915_perf and other subsystems of the kernel.
> 
> CAP_SYS_PERFMON intends to harden system security and integrity during
> system performance monitoring and observability operations by decreasing
> attack surface that is available to CAP_SYS_ADMIN privileged processes.
> 
> CAP_SYS_PERFMON intends to take over CAP_SYS_ADMIN credentials related
> to system performance monitoring and observability operations and balance
> amount of CAP_SYS_ADMIN credentials in accordance with the recommendations
> provided in the man page for CAP_SYS_ADMIN [1]: "Note: this capability
> is overloaded; see Notes to kernel developers, below."
> 
> [1] https://urldefense.proofpoint.com/v2/url?u=http-3A__man7.org_linux_man-2Dpages_man7_capabilities.7.html&d=DwICaQ&c=5VD0RTtNlTh3ycd41b3MUw&r=dR8692q0_uaizy0jkrBJQM5k2hfm4CiFxYT8KaysFrg&m=L5qCuMRrTvYhyjR1rpgE9vEv4HppVlOXDIzKzoGL30c&s=FNJpET4buKFRuqktVHQphaY1qE7IsdFpU4iYwpCn4tY&e= 
> 
> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>

Acked-by: Song Liu <songliubraving@fb.com>

_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
