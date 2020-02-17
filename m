Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B62C161530
	for <lists+oprofile-list@lfdr.de>; Mon, 17 Feb 2020 15:54:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1j3hml-0006Z6-7k; Mon, 17 Feb 2020 14:54:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexey.budankov@linux.intel.com>) id 1j3bMN-0003yA-HM
 for oprofile-list@lists.sourceforge.net; Mon, 17 Feb 2020 08:02:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Cc:To:Subject:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IfowQzUBrmibz7qzYm1+276Bt1Nu3xajdo8emF6ESJA=; b=Q0v49EPOeS0WIFa1VQW/YmKVvg
 zwuKxJJFUcfAG/sfb9Yzyx932tv9nqRRznGMnxNxjpqpbOGDpYLsXX/eFJLxIXH50bKqXnVfdo6KZ
 jfwV3YhxVsvmJR6l8U/zlD3LOIkE6VFvZlY8f4NJz6ookNpWlpEcNykhtzUZ32kC+f1I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:Cc:To
 :Subject:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=IfowQzUBrmibz7qzYm1+276Bt1Nu3xajdo8emF6ESJA=; b=i
 K2XWkLY/xAEOpeG0NRZmpAr/LrbJfqEIba3ATqLQHguVH5npG611bG2EHhhc0VyW5JeX0XxcYIWTX
 rQWc8a0QbQ19Y2TW/F+fUcT8rllKz0yUSCEHa8wGW4oYlxkM7+IkKiGGIqH0SRqxYDbIFKh+JAxsM
 Dg5eRaRwP3kl+Dss=;
Received: from mga07.intel.com ([134.134.136.100])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j3bML-005trM-Oi
 for oprofile-list@lists.sourceforge.net; Mon, 17 Feb 2020 08:02:31 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Feb 2020 00:02:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,451,1574150400"; d="scan'208";a="258189636"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga004.fm.intel.com with ESMTP; 17 Feb 2020 00:02:22 -0800
Received: from [10.125.252.180] (abudanko-mobl.ccr.corp.intel.com
 [10.125.252.180])
 by linux.intel.com (Postfix) with ESMTP id 9B7B558060A;
 Mon, 17 Feb 2020 00:02:16 -0800 (PST)
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Subject: [PATCH v7 00/12] Introduce CAP_PERFMON to secure system performance
 monitoring and observability
To: James Morris <jmorris@namei.org>, Serge Hallyn <serge@hallyn.com>,
 Stephen Smalley <sds@tycho.nsa.gov>, Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
 Paul Mackerras <paulus@samba.org>, Helge Deller <deller@gmx.de>,
 Thomas Gleixner <tglx@linutronix.de>
Organization: Intel Corp.
Message-ID: <c8de937a-0b3a-7147-f5ef-69f467e87a13@linux.intel.com>
Date: Mon, 17 Feb 2020 11:02:15 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j3bML-005trM-Oi
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


Currently access to perf_events, i915_perf and other performance
monitoring and observability subsystems of the kernel is open only for
a privileged process [1] with CAP_SYS_ADMIN capability enabled in the
process effective set [2].

This patch set introduces CAP_PERFMON capability designed to secure
system performance monitoring and observability operations so that
CAP_PERFMON would assist CAP_SYS_ADMIN capability in its governing role
for performance monitoring and observability subsystems of the kernel.

CAP_PERFMON intends to harden system security and integrity during
performance monitoring and observability operations by decreasing attack
surface that is available to a CAP_SYS_ADMIN privileged process [2].
Providing the access to performance monitoring and observability
operations under CAP_PERFMON capability singly, without the rest of
CAP_SYS_ADMIN credentials, excludes chances to misuse the credentials
and makes the operation more secure. Thus, CAP_PERFMON implements the
principal of least privilege for performance monitoring and
observability operations (POSIX IEEE 1003.1e: 2.2.2.39 principle of
least privilege: A security design principle that states that a process
or program be granted only those privileges (e.g., capabilities)
necessary to accomplish its legitimate function, and only for the time
that such privileges are actually required)

CAP_PERFMON intends to meet the demand to secure system performance
monitoring and observability operations for adoption in security
sensitive, restricted, multiuser production environments (e.g. HPC
clusters, cloud and virtual compute environments), where root or
CAP_SYS_ADMIN credentials are not available to mass users of a system,
and securely unblock accessibility of system performance monitoring and
observability operations beyond root and CAP_SYS_ADMIN use cases.

CAP_PERFMON intends to take over CAP_SYS_ADMIN credentials related to
system performance monitoring and observability operations and balance
amount of CAP_SYS_ADMIN credentials following the recommendations in
the capabilities man page [2] for CAP_SYS_ADMIN: "Note: this capability
is overloaded; see Notes to kernel developers, below." For backward
compatibility reasons access to system performance monitoring and
observability subsystems of the kernel remains open for CAP_SYS_ADMIN
privileged processes but CAP_SYS_ADMIN capability usage for secure
system performance monitoring and observability operations is
discouraged with respect to the designed CAP_PERFMON capability.

Possible alternative solution to this system security hardening,
capabilities balancing task of making performance monitoring and
observability operations more secure and accessible could be to use
the existing CAP_SYS_PTRACE capability to govern system performance
monitoring and observability subsystems. However CAP_SYS_PTRACE
capability still provides users with more credentials than are
required for secure performance monitoring and observability
operations and this excess is avoided by the designed CAP_PERFMON.

Although software running under CAP_PERFMON can not ensure avoidance of
related hardware issues, the software can still mitigate those issues
following the official hardware issues mitigation procedure [3]. The
bugs in the software itself can be fixed following the standard kernel
development process [4] to maintain and harden security of system
performance monitoring and observability operations. Finally, the patch
set is shaped in the way that simplifies backtracking procedure of
possible induced issues [5] as much as possible.

The patch set is for tip perf/core repository:
git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip perf/core
sha1: fdb64822443ec9fb8c3a74b598a74790ae8d2e22

---
Changes in v7:
- updated and extended kernel.rst and perf-security.rst documentation 
  files with the information about CAP_PERFMON capability and its use cases
- documented the case of double audit logging of CAP_PERFMON and CAP_SYS_ADMIN
  capabilities on a SELinux enabled system
Changes in v6:
- avoided noaudit checks in perfmon_capable() to explicitly advertise
  CAP_PERFMON usage thru audit logs to secure system performance
  monitoring and observability
Changes in v5:
- renamed CAP_SYS_PERFMON to CAP_PERFMON
- extended perfmon_capable() with noaudit checks
Changes in v4:
- converted perfmon_capable() into an inline function
- made perf_events kprobes, uprobes, hw breakpoints and namespaces data
  available to CAP_SYS_PERFMON privileged processes
- applied perfmon_capable() to drivers/perf and drivers/oprofile
- extended __cmd_ftrace() with support of CAP_SYS_PERFMON
Changes in v3:
- implemented perfmon_capable() macros aggregating required capabilities
  checks
Changes in v2:
- made perf_events trace points available to CAP_SYS_PERFMON privileged
  processes
- made perf_event_paranoid_check() treat CAP_SYS_PERFMON equally to
  CAP_SYS_ADMIN
- applied CAP_SYS_PERFMON to i915_perf, bpf_trace, powerpc and parisc
  system performance monitoring and observability related subsystems

---
Alexey Budankov (12):
  capabilities: introduce CAP_PERFMON to kernel and user space
  perf/core: open access to the core for CAP_PERFMON privileged process
  perf/core: open access to probes for CAP_PERFMON privileged process
  perf tool: extend Perf tool with CAP_PERFMON capability support
  drm/i915/perf: open access for CAP_PERFMON privileged process
  trace/bpf_trace: open access for CAP_PERFMON privileged process
  powerpc/perf: open access for CAP_PERFMON privileged process
  parisc/perf: open access for CAP_PERFMON privileged process
  drivers/perf: open access for CAP_PERFMON privileged process
  drivers/oprofile: open access for CAP_PERFMON privileged process
  doc/admin-guide: update perf-security.rst with CAP_PERFMON information
  doc/admin-guide: update kernel.rst with CAP_PERFMON information

 Documentation/admin-guide/perf-security.rst | 65 +++++++++++++--------
 Documentation/admin-guide/sysctl/kernel.rst | 16 +++--
 arch/parisc/kernel/perf.c                   |  2 +-
 arch/powerpc/perf/imc-pmu.c                 |  4 +-
 drivers/gpu/drm/i915/i915_perf.c            | 13 ++---
 drivers/oprofile/event_buffer.c             |  2 +-
 drivers/perf/arm_spe_pmu.c                  |  4 +-
 include/linux/capability.h                  |  4 ++
 include/linux/perf_event.h                  |  6 +-
 include/uapi/linux/capability.h             |  8 ++-
 kernel/events/core.c                        |  6 +-
 kernel/trace/bpf_trace.c                    |  2 +-
 security/selinux/include/classmap.h         |  4 +-
 tools/perf/builtin-ftrace.c                 |  5 +-
 tools/perf/design.txt                       |  3 +-
 tools/perf/util/cap.h                       |  4 ++
 tools/perf/util/evsel.c                     | 10 ++--
 tools/perf/util/util.c                      |  1 +
 18 files changed, 98 insertions(+), 61 deletions(-)

---
Validation (Intel Skylake, 8 cores, Fedora 29, 5.5.0-rc3+, x86_64):

libcap library [6], [7], [8] and Perf tool can be used to apply
CAP_PERFMON capability for secure system performance monitoring and
observability beyond the scope permitted by the system wide
perf_event_paranoid kernel setting [9] and below are the steps for
evaluation:

  - patch, build and boot the kernel
  - patch, build Perf tool e.g. to /home/user/perf
  ...
  # git clone git://git.kernel.org/pub/scm/libs/libcap/libcap.git libcap
  # pushd libcap
  # patch libcap/include/uapi/linux/capabilities.h with [PATCH 1]
  # make
  # pushd progs
  # ./setcap "cap_perfmon,cap_sys_ptrace,cap_syslog=ep" /home/user/perf
  # ./setcap -v "cap_perfmon,cap_sys_ptrace,cap_syslog=ep" /home/user/perf
  /home/user/perf: OK
  # ./getcap /home/user/perf
  /home/user/perf = cap_sys_ptrace,cap_syslog,cap_perfmon+ep
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
                                     cap_perfmon,cap_sys_ptrace,cap_syslog
  CapBnd:	0000007fffffffff
  CapAmb:	0000000000000000
  NoNewPrivs:	0
  Seccomp:	0
  Speculation_Store_Bypass:	thread vulnerable
  Cpus_allowed:	ff
  Cpus_allowed_list:	0-7
  ...

Usage of cap_perfmon effectively avoids unused credentials excess:

- with cap_sys_admin:
  CapEff:	0000007fffffffff => 01111111 11111111 11111111 11111111 11111111

- with cap_perfmon:
  CapEff:	0000004400080000 => 01000100 00000000 00001000 00000000 00000000
                                    38   34               19
                               perfmon   syslog           sys_ptrace

---
[1] https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html
[2] http://man7.org/linux/man-pages/man7/capabilities.7.html
[3] https://www.kernel.org/doc/html/latest/process/embargoed-hardware-issues.html
[4] https://www.kernel.org/doc/html/latest/admin-guide/security-bugs.html
[5] https://www.kernel.org/doc/html/latest/process/management-style.html#decisions
[6] http://man7.org/linux/man-pages/man8/setcap.8.html
[7] https://git.kernel.org/pub/scm/libs/libcap/libcap.git
[8] https://sites.google.com/site/fullycapable/, posix_1003.1e-990310.pdf
[9] http://man7.org/linux/man-pages/man2/perf_event_open.2.html


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
