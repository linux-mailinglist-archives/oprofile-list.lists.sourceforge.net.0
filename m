Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 622DF16152D
	for <lists+oprofile-list@lfdr.de>; Mon, 17 Feb 2020 15:54:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1j3hml-0006Zt-I4; Mon, 17 Feb 2020 14:54:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexey.budankov@linux.intel.com>) id 1j3bSf-0007Uk-IR
 for oprofile-list@lists.sourceforge.net; Mon, 17 Feb 2020 08:09:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ap+gTkmOfgWhhRz0MDhwrwh/Z2DVc06fb/SpgAVe8rE=; b=he3p0/m8YW2SdQam2ZRFMmBlAr
 M045tBp60xA6rlSKcvnE33j5J+qNsaNwD3zXfTI+RZjOvn/sFHzTzSgHgIIGNztSek+b4VSyEeqg8
 1MqF4Zt3JAMYvIHAzOHJ/ii3R27Wcud4107wzQsA8hZQ7q2fDb18XPZa0MyO2yejsm7E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ap+gTkmOfgWhhRz0MDhwrwh/Z2DVc06fb/SpgAVe8rE=; b=fMEXF7Ncr6nrc1L9IZ6PdlQe7U
 QdoMuehbPF9G1pRS0ufravYCaM1fc9y38xxS2UN93xaoivk+fredCWqEqUdJF1RQoeNP/lR/DjP/l
 X5WTHAzxsAiqMqX8ghlr9pcnKIdYjo2Na0JbFUG2dZ0+0r2AwCfQQbO6tVhWbnBB4Sqc=;
Received: from mga07.intel.com ([134.134.136.100])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j3bSe-006CO9-7u
 for oprofile-list@lists.sourceforge.net; Mon, 17 Feb 2020 08:09:01 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Feb 2020 00:08:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,451,1574150400"; d="scan'208";a="268327753"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga002.fm.intel.com with ESMTP; 17 Feb 2020 00:08:53 -0800
Received: from [10.125.252.180] (abudanko-mobl.ccr.corp.intel.com
 [10.125.252.180])
 by linux.intel.com (Postfix) with ESMTP id 3FB5158060A;
 Mon, 17 Feb 2020 00:08:47 -0800 (PST)
Subject: [PATCH v7 05/12] drm/i915/perf: open access for CAP_PERFMON
 privileged process
From: Alexey Budankov <alexey.budankov@linux.intel.com>
To: James Morris <jmorris@namei.org>, Serge Hallyn <serge@hallyn.com>,
 Stephen Smalley <sds@tycho.nsa.gov>, Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
 Paul Mackerras <paulus@samba.org>, Helge Deller <deller@gmx.de>,
 Thomas Gleixner <tglx@linutronix.de>
References: <c8de937a-0b3a-7147-f5ef-69f467e87a13@linux.intel.com>
Organization: Intel Corp.
Message-ID: <8b408c10-9bb0-4b08-8681-93c0f4a1132e@linux.intel.com>
Date: Mon, 17 Feb 2020 11:08:46 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <c8de937a-0b3a-7147-f5ef-69f467e87a13@linux.intel.com>
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j3bSe-006CO9-7u
X-Mailman-Approved-At: Mon, 17 Feb 2020 14:54:08 +0000
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net


Open access to i915_perf monitoring for CAP_PERFMON privileged process.
Providing the access under CAP_PERFMON capability singly, without the
rest of CAP_SYS_ADMIN credentials, excludes chances to misuse the
credentials and makes operation more secure.

CAP_PERFMON implements the principal of least privilege for performance
monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39
principle of least privilege: A security design principle that states
that a process or program be granted only those privileges (e.g.,
capabilities) necessary to accomplish its legitimate function, and only
for the time that such privileges are actually required)

For backward compatibility reasons access to i915_events subsystem
remains open for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN
usage for secure i915_events monitoring is discouraged with respect to
CAP_PERFMON capability.

Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 0f556d80ba36..a3f32bd0aa47 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3378,10 +3378,10 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
 	/* Similar to perf's kernel.perf_paranoid_cpu sysctl option
 	 * we check a dev.i915.perf_stream_paranoid sysctl option
 	 * to determine if it's ok to access system wide OA counters
-	 * without CAP_SYS_ADMIN privileges.
+	 * without CAP_PERFMON or CAP_SYS_ADMIN privileges.
 	 */
 	if (privileged_op &&
-	    i915_perf_stream_paranoid && !capable(CAP_SYS_ADMIN)) {
+	    i915_perf_stream_paranoid && !perfmon_capable()) {
 		DRM_DEBUG("Insufficient privileges to open i915 perf stream\n");
 		ret = -EACCES;
 		goto err_ctx;
@@ -3574,9 +3574,8 @@ static int read_properties_unlocked(struct i915_perf *perf,
 			} else
 				oa_freq_hz = 0;
 
-			if (oa_freq_hz > i915_oa_max_sample_rate &&
-			    !capable(CAP_SYS_ADMIN)) {
-				DRM_DEBUG("OA exponent would exceed the max sampling frequency (sysctl dev.i915.oa_max_sample_rate) %uHz without root privileges\n",
+			if (oa_freq_hz > i915_oa_max_sample_rate && !perfmon_capable()) {
+				DRM_DEBUG("OA exponent would exceed the max sampling frequency (sysctl dev.i915.oa_max_sample_rate) %uHz without CAP_PERFMON or CAP_SYS_ADMIN privileges\n",
 					  i915_oa_max_sample_rate);
 				return -EACCES;
 			}
@@ -3997,7 +3996,7 @@ int i915_perf_add_config_ioctl(struct drm_device *dev, void *data,
 		return -EINVAL;
 	}
 
-	if (i915_perf_stream_paranoid && !capable(CAP_SYS_ADMIN)) {
+	if (i915_perf_stream_paranoid && !perfmon_capable()) {
 		DRM_DEBUG("Insufficient privileges to add i915 OA config\n");
 		return -EACCES;
 	}
@@ -4144,7 +4143,7 @@ int i915_perf_remove_config_ioctl(struct drm_device *dev, void *data,
 		return -ENOTSUPP;
 	}
 
-	if (i915_perf_stream_paranoid && !capable(CAP_SYS_ADMIN)) {
+	if (i915_perf_stream_paranoid && !perfmon_capable()) {
 		DRM_DEBUG("Insufficient privileges to remove i915 OA config\n");
 		return -EACCES;
 	}
-- 
2.20.1




_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
