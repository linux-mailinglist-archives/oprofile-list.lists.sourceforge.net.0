Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8EA1265FF
	for <lists+oprofile-list@lfdr.de>; Thu, 19 Dec 2019 16:45:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1ihxzE-0003Ys-7R; Thu, 19 Dec 2019 15:45:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lionel.g.landwerlin@intel.com>) id 1ihs4T-0007Qs-V0
 for oprofile-list@lists.sourceforge.net; Thu, 19 Dec 2019 09:26:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IEL343hCP9msoCCQ9Q0kIY+F18Ajjb/RRru0WV959/g=; b=Jo6J3xlkXDCeAoeJLp/pCNoWvC
 6uPFYQFLuiC9er7g1/wmR1zR3hJgItm+3weDxi8iREF7iCzmkpUkQCpUntRhOI7mo1QexVyXHU27J
 LM3wjuDNLUmisNoXBibdxgyIxjLlLk4qtQI9S8rtc9x70TAJOqnl78myVFmZjnpThflc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IEL343hCP9msoCCQ9Q0kIY+F18Ajjb/RRru0WV959/g=; b=W67KdwKKRrLQmQ6cSIJ61xK7Id
 xzO0/W1s/OzRizUPa3MT/qfi7NouotA3z3szu0VJUd+EY2ud3WChVunMtbAcXUklCIeyY7ueA/yIE
 QoPrhjGHNv7solQVvx52LrdB4MWISMc9jH8eUk8yqPVMtYSsGZiLprN5N7lw2m4vHl7c=;
Received: from mga11.intel.com ([192.55.52.93])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ihs4R-006twi-T6
 for oprofile-list@lists.sourceforge.net; Thu, 19 Dec 2019 09:26:13 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 01:10:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,331,1571727600"; d="scan'208";a="212954494"
Received: from bbartede-mobl2.ger.corp.intel.com (HELO [10.252.33.233])
 ([10.252.33.233])
 by fmsmga007.fm.intel.com with ESMTP; 19 Dec 2019 01:10:30 -0800
Subject: Re: [PATCH v4 4/9] drm/i915/perf: open access for CAP_SYS_PERFMON
 privileged process
To: Alexey Budankov <alexey.budankov@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Serge Hallyn <serge@hallyn.com>,
 James Morris <jmorris@namei.org>, Will Deacon <will.deacon@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Casey Schaufler
 <casey@schaufler-ca.com>, Robert Richter <rric@kernel.org>
References: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
 <ea050255-a125-8831-ce91-ee23bd6ad08b@linux.intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <d5f908f3-b545-7953-8c72-ceb7177609d3@intel.com>
Date: Thu, 19 Dec 2019 11:10:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <ea050255-a125-8831-ce91-ee23bd6ad08b@linux.intel.com>
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [192.55.52.93 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1ihs4R-006twi-T6
X-Mailman-Approved-At: Thu, 19 Dec 2019 15:45:10 +0000
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
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Song Liu <songliubraving@fb.com>, Andi Kleen <ak@linux.intel.com>,
 Kees Cook <keescook@chromium.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 Jann Horn <jannh@google.com>,
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
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jiri Olsa <jolsa@redhat.com>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On 18/12/2019 11:27, Alexey Budankov wrote:
> Open access to i915_perf monitoring for CAP_SYS_PERFMON privileged
> processes. For backward compatibility reasons access to i915_perf
> subsystem remains open for CAP_SYS_ADMIN privileged processes but
> CAP_SYS_ADMIN usage for secure i915_perf monitoring is discouraged
> with respect to CAP_SYS_PERFMON capability.
>
> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>

Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>

> ---
>   drivers/gpu/drm/i915/i915_perf.c | 13 ++++++-------
>   1 file changed, 6 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index e42b86827d6b..e2697f8d04de 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -2748,10 +2748,10 @@ i915_perf_open_ioctl_locked(struct drm_i915_private *dev_priv,
>   	/* Similar to perf's kernel.perf_paranoid_cpu sysctl option
>   	 * we check a dev.i915.perf_stream_paranoid sysctl option
>   	 * to determine if it's ok to access system wide OA counters
> -	 * without CAP_SYS_ADMIN privileges.
> +	 * without CAP_SYS_PERFMON or CAP_SYS_ADMIN privileges.
>   	 */
>   	if (privileged_op &&
> -	    i915_perf_stream_paranoid && !capable(CAP_SYS_ADMIN)) {
> +	    i915_perf_stream_paranoid && !perfmon_capable()) {
>   		DRM_DEBUG("Insufficient privileges to open system-wide i915 perf stream\n");
>   		ret = -EACCES;
>   		goto err_ctx;
> @@ -2939,9 +2939,8 @@ static int read_properties_unlocked(struct drm_i915_private *dev_priv,
>   			} else
>   				oa_freq_hz = 0;
>   
> -			if (oa_freq_hz > i915_oa_max_sample_rate &&
> -			    !capable(CAP_SYS_ADMIN)) {
> -				DRM_DEBUG("OA exponent would exceed the max sampling frequency (sysctl dev.i915.oa_max_sample_rate) %uHz without root privileges\n",
> +			if (oa_freq_hz > i915_oa_max_sample_rate && !perfmon_capable()) {
> +				DRM_DEBUG("OA exponent would exceed the max sampling frequency (sysctl dev.i915.oa_max_sample_rate) %uHz without CAP_SYS_PERFMON or CAP_SYS_ADMIN privileges\n",
>   					  i915_oa_max_sample_rate);
>   				return -EACCES;
>   			}
> @@ -3328,7 +3327,7 @@ int i915_perf_add_config_ioctl(struct drm_device *dev, void *data,
>   		return -EINVAL;
>   	}
>   
> -	if (i915_perf_stream_paranoid && !capable(CAP_SYS_ADMIN)) {
> +	if (i915_perf_stream_paranoid && !perfmon_capable()) {
>   		DRM_DEBUG("Insufficient privileges to add i915 OA config\n");
>   		return -EACCES;
>   	}
> @@ -3474,7 +3473,7 @@ int i915_perf_remove_config_ioctl(struct drm_device *dev, void *data,
>   		return -ENOTSUPP;
>   	}
>   
> -	if (i915_perf_stream_paranoid && !capable(CAP_SYS_ADMIN)) {
> +	if (i915_perf_stream_paranoid && !perfmon_capable()) {
>   		DRM_DEBUG("Insufficient privileges to remove i915 OA config\n");
>   		return -EACCES;
>   	}




_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
