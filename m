Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F801265FE
	for <lists+oprofile-list@lfdr.de>; Thu, 19 Dec 2019 16:45:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1ihxzD-0003XS-O1; Thu, 19 Dec 2019 15:45:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexey.budankov@linux.intel.com>) id 1ihVhF-0004Ig-6S
 for oprofile-list@lists.sourceforge.net; Wed, 18 Dec 2019 09:32:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Cc:To:Subject:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SNDq+hfSzIAn70mnFlvhtvKnegXwECeJ7cVzhcme+WM=; b=R10Mhm6hCVKhcYl50Lqq/AgIee
 DamENvz50I/lrwZYLykxfpAFtVbKk4eSWhcqZU5dhs+m6tkOMpNForONHENyV9qeEg9jMwT1e5sTm
 bGaI3bB9acrfQMzIhw/v2v5tH8eA5f2CvQLJN/c5y/FCyemF7ypxuJZknMc7TS7Xss9E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:Cc:To
 :Subject:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SNDq+hfSzIAn70mnFlvhtvKnegXwECeJ7cVzhcme+WM=; b=e
 LfpXxwhzTWsrLKj11mBerkWcswNa97v33I/WsrDFWSmM0Sm17OyfHYk3zauHvBq3ir6aWS3NQAPcK
 jpBLme4S8Eh30YHv7swiFU8vWoucfcAoGf1k2GkygZxslVvpRv72jffGFfuSIyKkZste3AJzYqgXn
 rjT11uFi3N4ITpeU=;
Received: from mga12.intel.com ([192.55.52.136])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ihVhD-008Wia-FZ
 for oprofile-list@lists.sourceforge.net; Wed, 18 Dec 2019 09:32:45 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 01:17:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,328,1571727600"; d="scan'208";a="205782211"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga007.jf.intel.com with ESMTP; 18 Dec 2019 01:17:08 -0800
Received: from [10.125.252.219] (abudanko-mobl.ccr.corp.intel.com
 [10.125.252.219])
 by linux.intel.com (Postfix) with ESMTP id 0400D5802C9;
 Wed, 18 Dec 2019 01:16:59 -0800 (PST)
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Subject: [PATCH v4 0/7] Introduce CAP_SYS_PERFMON to secure system performance
 monitoring and observability
To: Peter Zijlstra <peterz@infradead.org>,
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
Organization: Intel Corp.
Message-ID: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
Date: Wed, 18 Dec 2019 12:16:58 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: man7.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ihVhD-008Wia-FZ
X-Mailman-Approved-At: Thu, 19 Dec 2019 15:45:09 +0000
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
Cc: Song Liu <songliubraving@fb.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Stephane Eranian <eranian@google.com>, Jiri Olsa <jolsa@redhat.com>,
 Andi Kleen <ak@linux.intel.com>, Igor Lubashev <ilubashe@akamai.com>,
 oprofile-list@lists.sf.net, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net


Currently access to perf_events, i915_perf and other performance monitoring and
observability subsystems of the kernel is open for a privileged process [1] with
CAP_SYS_ADMIN capability enabled in the process effective set [2].

This patch set introduces CAP_SYS_PERFMON capability devoted to secure system
performance monitoring and observability operations so that CAP_SYS_PERFMON would
assist CAP_SYS_ADMIN capability in its governing role for perf_events, i915_perf
and other performance monitoring and observability subsystems of the kernel.

CAP_SYS_PERFMON intends to meet the demand to secure system performance monitoring
and observability operations in security sensitive, restricted, production
environments (e.g. HPC clusters, cloud and virtual compute environments) where root
or CAP_SYS_ADMIN credentials are not available to mass users of a system because
of security considerations.

CAP_SYS_PERFMON intends to harden system security and integrity during system
performance monitoring and observability operations by decreasing attack surface
that is available to CAP_SYS_ADMIN privileged processes [2].

CAP_SYS_PERFMON intends to take over CAP_SYS_ADMIN credentials related to system
performance monitoring and observability operations and balance amount of
CAP_SYS_ADMIN credentials following the recommendations in the capabilities man
page [2] for CAP_SYS_ADMIN: "Note: this capability is overloaded; see Notes to
kernel developers, below."

For backward compatibility reasons access to system performance monitoring and
observability subsystems of the kernel remains open for CAP_SYS_ADMIN privileged
processes but CAP_SYS_ADMIN capability usage for secure system performance
monitoring and observability operations is discouraged with respect to the
introduced CAP_SYS_PERFMON capability.

The patch set is for tip perf/core repository:
git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip perf/core
sha1: ceb9e77324fa661b1001a0ae66f061b5fcb4e4e6

---
Changes in v4:
- converted perfmon_capable() into an inline function
- made perf_events kprobes, uprobes, hw breakpoints and namespaces data available
  to CAP_SYS_PERFMON privileged processes
- applied perfmon_capable() to drivers/perf and drivers/oprofile
- extended __cmd_ftrace() with support of CAP_SYS_PERFMON
Changes in v3:
- implemented perfmon_capable() macros aggregating required capabilities checks
Changes in v2:
- made perf_events trace points available to CAP_SYS_PERFMON privileged processes
- made perf_event_paranoid_check() treat CAP_SYS_PERFMON equally to CAP_SYS_ADMIN
- applied CAP_SYS_PERFMON to i915_perf, bpf_trace, powerpc and parisc system
  performance monitoring and observability related subsystems

---
Alexey Budankov (9):
  capabilities: introduce CAP_SYS_PERFMON to kernel and user space
  perf/core: open access for CAP_SYS_PERFMON privileged process
  perf tool: extend Perf tool with CAP_SYS_PERFMON capability support
  drm/i915/perf: open access for CAP_SYS_PERFMON privileged process
  trace/bpf_trace: open access for CAP_SYS_PERFMON privileged process
  powerpc/perf: open access for CAP_SYS_PERFMON privileged process
  parisc/perf: open access for CAP_SYS_PERFMON privileged process
  drivers/perf: open access for CAP_SYS_PERFMON privileged process
  drivers/oprofile: open access for CAP_SYS_PERFMON privileged process

 arch/parisc/kernel/perf.c           |  2 +-
 arch/powerpc/perf/imc-pmu.c         |  4 ++--
 drivers/gpu/drm/i915/i915_perf.c    | 13 ++++++-------
 drivers/oprofile/event_buffer.c     |  2 +-
 drivers/perf/arm_spe_pmu.c          |  4 ++--
 include/linux/capability.h          |  4 ++++
 include/linux/perf_event.h          |  6 +++---
 include/uapi/linux/capability.h     |  8 +++++++-
 kernel/events/core.c                |  6 +++---
 kernel/trace/bpf_trace.c            |  2 +-
 security/selinux/include/classmap.h |  4 ++--
 tools/perf/builtin-ftrace.c         |  5 +++--
 tools/perf/design.txt               |  3 ++-
 tools/perf/util/cap.h               |  4 ++++
 tools/perf/util/evsel.c             | 10 +++++-----
 tools/perf/util/util.c              |  1 +
 16 files changed, 47 insertions(+), 31 deletions(-)

---
Testing and validation (Intel Skylake, 8 cores, Fedora 29, 5.4.0-rc8+, x86_64):

libcap library [3], [4] and Perf tool can be used to apply CAP_SYS_PERFMON 
capability for secure system performance monitoring and observability beyond the
scope permitted by the system wide perf_event_paranoid kernel setting [5] and
below are the steps for evaluation:

  - patch, build and boot the kernel
  - patch, build Perf tool e.g. to /home/user/perf
  ...
  # git clone git://git.kernel.org/pub/scm/libs/libcap/libcap.git libcap
  # pushd libcap
  # patch libcap/include/uapi/linux/capabilities.h with [PATCH 1]
  # make
  # pushd progs
  # ./setcap "cap_sys_perfmon,cap_sys_ptrace,cap_syslog=ep" /home/user/perf
  # ./setcap -v "cap_sys_perfmon,cap_sys_ptrace,cap_syslog=ep" /home/user/perf
  /home/user/perf: OK
  # ./getcap /home/user/perf
  /home/user/perf = cap_sys_ptrace,cap_syslog,cap_sys_perfmon+ep
  # echo 2 > /proc/sys/kernel/perf_event_paranoid
  # cat /proc/sys/kernel/perf_event_paranoid 
  2
  ...
  $ /home/user/perf top
    ... works as expected ...
  $ cat /proc/`pidof perf`/status
  Name:	perf
  Umask:	0002
  State:	S (sleeping)
  Tgid:	2958
  Ngid:	0
  Pid:	2958
  PPid:	9847
  TracerPid:	0
  Uid:	500	500	500	500
  Gid:	500	500	500	500
  FDSize:	256
  ...
  CapInh:	0000000000000000
  CapPrm:	0000004400080000
  CapEff:	0000004400080000 => 01000100 00000000 00001000 00000000 00000000
                                     cap_sys_perfmon,cap_sys_ptrace,cap_syslog
  CapBnd:	0000007fffffffff
  CapAmb:	0000000000000000
  NoNewPrivs:	0
  Seccomp:	0
  Speculation_Store_Bypass:	thread vulnerable
  Cpus_allowed:	ff
  Cpus_allowed_list:	0-7
  ...

Usage of cap_sys_perfmon effectively avoids unused credentials excess:

- with cap_sys_admin:
  CapEff:	0000007fffffffff => 01111111 11111111 11111111 11111111 11111111

- with cap_sys_perfmon:
  CapEff:	0000004400080000 => 01000100 00000000 00001000 00000000 00000000
                                    38   34               19
                           sys_perfmon   syslog           sys_ptrace

---

[1] https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html
[2] http://man7.org/linux/man-pages/man7/capabilities.7.html
[3] http://man7.org/linux/man-pages/man8/setcap.8.html
[4] https://git.kernel.org/pub/scm/libs/libcap/libcap.git
[5] http://man7.org/linux/man-pages/man2/perf_event_open.2.html
[6] https://sites.google.com/site/fullycapable/, posix_1003.1e-990310.pdf

-- 
2.20.1



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
