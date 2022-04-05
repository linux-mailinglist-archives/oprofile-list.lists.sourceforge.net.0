Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A4D4F3C80
	for <lists+oprofile-list@lfdr.de>; Tue,  5 Apr 2022 18:09:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1nblci-0000W2-Qn; Tue, 05 Apr 2022 16:09:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <will_schmidt@vnet.ibm.com>) id 1nblch-0000Vv-PF
 for oprofile-list@lists.sourceforge.net; Tue, 05 Apr 2022 16:09:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jsk4N5+3Wz4YGhEgTGTHzfvNvYNvLN24NQxN3KTT0gY=; b=Cz3TZLzgzqNHsum+hr/sZaEgNt
 uW7I+OVKQA81FymMyogmD595JAbQKfht3VpoAMtDjfy2OpCbXZIB4qFbUL7VmvikILUp2qvjs96Z/
 ln54IkDBu17paZRc95LaKAdL8mXChucZRYojRPTPVXvo4pXDBQkX97L0QGxeyflo3wyY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jsk4N5+3Wz4YGhEgTGTHzfvNvYNvLN24NQxN3KTT0gY=; b=L4i+76QctvXONVgv6dEFSEjlmN
 Ekq9OFPa4JrYUryjwUstVAxJE9LgbMj6U+JX5A3MzEBu8idsw1pRyybtDsw9nyarVPmx5qtawT8Xh
 fQewiUeAGs2KpGQ2Ft6lEn1wfmxL9EXWCsPz+eJc+TQVTHMfwoPUAGhgFF+b3supK1E0=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nblka-006T2b-QI
 for oprofile-list@lists.sourceforge.net; Tue, 05 Apr 2022 16:09:51 +0000
Received: from pps.filterd (m0098416.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 235FaPus013991
 for <oprofile-list@lists.sourceforge.net>; Tue, 5 Apr 2022 15:46:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=message-id : subject :
 from : to : date : in-reply-to : references : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=jsk4N5+3Wz4YGhEgTGTHzfvNvYNvLN24NQxN3KTT0gY=;
 b=U+OvzEl/bcbXc0XEQnCY6W/EOSaskOH0850/REHOKmAhcXhsI+DWrjaycc8qoz6DruYQ
 ZXIZATX6cqrG3kyacnXlWybCvzOmWhfK86NtGTb39Opc+GM2/tjRUMY+Dbi4OqM41aHD
 brRG8oShohg9vf3JyeJEgUq06+8gE+ZaMDaqEDrtLNZH2UD60kHgv67xglSlhUAdPg99
 6M/OlM8j7d/eTwS/koykSR1+TgqKHCTVylBtULk0RhWD0elOZtEwvQg8ujwskruyx0Pp
 87Nr8bWSVH+Bx3CH5Yj9IxZm+NvkbzU+fi5Db/ijVeeJZzqIozXJlblCKYUVDY+GMA96 Yw== 
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0b-001b2d01.pphosted.com with ESMTP id 3f85tcs7wu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <oprofile-list@lists.sourceforge.net>; Tue, 05 Apr 2022 15:46:25 +0000
Received: from m0098416.ppops.net (m0098416.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 235Dp5Q2022956
 for <oprofile-list@lists.sourceforge.net>; Tue, 5 Apr 2022 15:46:25 GMT
Received: from ppma02dal.us.ibm.com (a.bd.3ea9.ip4.static.sl-reverse.com
 [169.62.189.10])
 by mx0b-001b2d01.pphosted.com with ESMTP id 3f85tcs7wp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 Apr 2022 15:46:25 +0000
Received: from pps.filterd (ppma02dal.us.ibm.com [127.0.0.1])
 by ppma02dal.us.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 235Fh9ki002949;
 Tue, 5 Apr 2022 15:46:24 GMT
Received: from b03cxnp08026.gho.boulder.ibm.com
 (b03cxnp08026.gho.boulder.ibm.com [9.17.130.18])
 by ppma02dal.us.ibm.com with ESMTP id 3f6e4aedny-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 Apr 2022 15:46:24 +0000
Received: from b03ledav003.gho.boulder.ibm.com
 (b03ledav003.gho.boulder.ibm.com [9.17.130.234])
 by b03cxnp08026.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 235FkNrH32178462
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 5 Apr 2022 15:46:23 GMT
Received: from b03ledav003.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id BD91F6A04D;
 Tue,  5 Apr 2022 15:46:23 +0000 (GMT)
Received: from b03ledav003.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 57F726A051;
 Tue,  5 Apr 2022 15:46:23 +0000 (GMT)
Received: from lexx (unknown [9.160.28.151])
 by b03ledav003.gho.boulder.ibm.com (Postfix) with ESMTP;
 Tue,  5 Apr 2022 15:46:23 +0000 (GMT)
Message-ID: <14ec0cbcd38317deea6e39e39966cb7d51ab4b9b.camel@vnet.ibm.com>
Subject: Re: Help needed
From: will schmidt <will_schmidt@vnet.ibm.com>
To: Giri Prasad <shashanka2005@gmail.com>, oprofile-list@lists.sourceforge.net
Date: Tue, 05 Apr 2022 10:46:22 -0500
In-Reply-To: <CABHJPfakLLMSAL=NW6FTSXQQs+A1vkFUxqj3Ruin8EfWeUSPzg@mail.gmail.com>
References: <CABHJPfakLLMSAL=NW6FTSXQQs+A1vkFUxqj3Ruin8EfWeUSPzg@mail.gmail.com>
X-Mailer: Evolution 3.28.5 (3.28.5-18.el8) 
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: za5WRSPenFGzUCys9Bs3bltvQ0A9ZrCd
X-Proofpoint-ORIG-GUID: 7VXpeHYwJfM-MusGkKLysBNaGgVS-BKR
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.850,Hydra:6.0.425,FMLib:17.11.64.514
 definitions=2022-04-05_04,2022-04-05_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 mlxscore=0
 impostorscore=0 mlxlogscore=936 bulkscore=0 adultscore=0 clxscore=1011
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2204050088
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 2022-04-05 at 15:29 +0530, Giri Prasad wrote: > >
 1) I installed operf in linux machine,
 below is the version: > > operf: oprofile
 1.3.0 compiled on Feb 2 2020 20:33:34 > > 2) I wrote a simple program and
 ran : operf ./a.out > > 3) it generated the folder: oprofile_data > > 4)
 when i run opreport as below: > > ##> opreport session:oprofile_data
 event:DATA_MEM_REFS > Us [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [148.163.158.5 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1nblka-006T2b-QI
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Tue, 2022-04-05 at 15:29 +0530, Giri Prasad wrote:
> 
> 1) I installed operf in linux machine, below is the version:
> 
> operf: oprofile 1.3.0 compiled on Feb  2 2020 20:33:34
> 

> 2) I wrote a simple program and ran : operf ./a.out
> 
> 3) it generated the folder: oprofile_data
> 
> 4) when i run opreport as below:
> 
> ##> opreport session:oprofile_data event:DATA_MEM_REFS
> Using /home/prasadgi/tools/cpp/oprofile_data/samples/ for samples
> directory.
> opreport error: No sample found: Please specify a session containing
> sample data.
> 
> Please help what is missing ?

 
Most likely the program did not run long enough or simply did not
trigger any DATA_MEM_REFS events.

Does opreport give you any output if
you leave off the "event:" qualifier? 

Thanks
-Will (Schmidt)


> 
> Regards,
> Giri Prasad
> _______________________________________________
> oprofile-list mailing list
> oprofile-list@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/oprofile-list



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
