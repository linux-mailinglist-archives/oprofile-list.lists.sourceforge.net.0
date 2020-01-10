Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F101394D9
	for <lists+oprofile-list@lfdr.de>; Mon, 13 Jan 2020 16:33:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1ir1i8-0004au-8Z; Mon, 13 Jan 2020 15:33:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <arnaldo.melo@gmail.com>) id 1ipxPs-0007TA-D7
 for oprofile-list@lists.sourceforge.net; Fri, 10 Jan 2020 16:45:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:Date:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s80UcNQvKwGgKWzgf5mb0xu3daHQpbt1S8dMQfZFc54=; b=edorWGpOEeldzErksR6GAGVdFn
 cXgum4nhnths+gezRFXmrubHgXvOeig0WZ1lKoGcof8c+UWYr5OJqoX+N5sqla3/gBpXRH9YWn5LD
 PeVAD7rnJUywRiriHnI5Hoq2hYelClr+CWBu7G1/leNDoCV/HWic/xAx+JROYNzXALXk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :Date:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=s80UcNQvKwGgKWzgf5mb0xu3daHQpbt1S8dMQfZFc54=; b=JIe9VLz0o+27gNOR4OQa7Xe3ff
 AJZKPZCSgbi9Geqr+6aQcF2tVhkEkdvmdr73Lv3qcA9+eO7WNxR1Z1wobUzqjU4G2Lz+wiCPsd+up
 r/CmZcPA7nKTilO1Zxx6ZCkf10vy5VL76UzXttIqFqXW6leDJDLNey4prrMXgHQ/KNlI=;
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1ipxPo-00FdMC-IM
 for oprofile-list@lists.sourceforge.net; Fri, 10 Jan 2020 16:45:44 +0000
Received: by mail-qt1-f193.google.com with SMTP id w30so2405775qtd.12
 for <oprofile-list@lists.sf.net>; Fri, 10 Jan 2020 08:45:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=s80UcNQvKwGgKWzgf5mb0xu3daHQpbt1S8dMQfZFc54=;
 b=Ok+PdgOkxWfVNZDBHC7AxcoITL4nnSC4kT9KjSqRuC1eTjfmC3LmiPvnvS171U4tna
 EP8iijKW402NqG5BQx0coWKMEOVLMeGKc7ap98b6Rxbh9hPjWfSYFuB8E80W7o5tEa0O
 ek9FW+VSI8iQh6VP6skYcf093r9SVtaSVemJCMeYaE/PnLp/tTkEDChLmjDKQF0AdxlE
 fPjw+quRMzhLGO443NvQb4dIgcflvLFBLkxMtRcloEjnxDpZATC4idego7WSfiaP3Jw3
 BAz+Hsmc+r9gtv6eKgFDuF1OwZhT+5WqFpA+9hhpFHz1e0iBUICVW9826sBvrRCXXr80
 32OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=s80UcNQvKwGgKWzgf5mb0xu3daHQpbt1S8dMQfZFc54=;
 b=Xtd5BMznKsh82VqzH2k1sphhSmHjDAmJA6IiYMzXen03FaseyRcJSvNQvJhH/ZuX0n
 CeLJqC9H6wY/rAJnHR5YFnhbWsowaHjqcbkh0fxKekT9uNMsHQATsvJFbyO9i168Dn30
 RteY0F9y6L5yDh0C4uvL3gbsQGAHOAzr08Mxm3t1DGgzMVcY6sgDYZMi1/p+jsiT3g1g
 AmVlRXyCKmifbkJmq4CXZe84awHWxKu43XJ3WVM2m7XiYHGBG+iDTrGqS0y99D755UyH
 SYJ5jCfgjzLSSzcgJe7DW51wUd5jdt+JkWoY6B6ezFDcPryPxcF7x30cZm8/6Ej2EX9Z
 bG8w==
X-Gm-Message-State: APjAAAXn4dz9xKPlj8oJKgWCtQ8gak52CHQLQEwOdOV232kYsbL1o1dH
 1bdCPcLCsnx5z6ywDqYt1gM=
X-Google-Smtp-Source: APXvYqynM7DSjiVb/K1cuj10GL5Qx3F6jhpXa1DeMyONRynlWzC2QHu0QHM7eFjM/sX/8EKaoo1NZQ==
X-Received: by 2002:ac8:163c:: with SMTP id p57mr3289416qtj.106.1578674734400; 
 Fri, 10 Jan 2020 08:45:34 -0800 (PST)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
 by smtp.gmail.com with ESMTPSA id g81sm1091649qkb.70.2020.01.10.08.45.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 08:45:33 -0800 (PST)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
X-Google-Original-From: Arnaldo Carvalho de Melo <acme@kernel.org>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id BCA6F40DFD; Fri, 10 Jan 2020 13:45:31 -0300 (-03)
Date: Fri, 10 Jan 2020 13:45:31 -0300
To: Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v4 2/9] perf/core: open access for CAP_SYS_PERFMON
 privileged process
Message-ID: <20200110164531.GA2598@kernel.org>
References: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
 <c93309dc-b920-f5fa-f997-e8b2faf47b88@linux.intel.com>
 <20200108160713.GI2844@hirez.programming.kicks-ass.net>
 <cc239899-5c52-2fd0-286d-4bff18877937@linux.intel.com>
 <20200110140234.GO2844@hirez.programming.kicks-ass.net>
 <20200111005213.6dfd98fb36ace098004bde0e@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200111005213.6dfd98fb36ace098004bde0e@kernel.org>
X-Url: http://acmel.wordpress.com
X-Spam-Score: 2.4 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [179.97.37.151 listed in zen.spamhaus.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (arnaldo.melo[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.160.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ipxPo-00FdMC-IM
X-Mailman-Approved-At: Mon, 13 Jan 2020 15:32:57 +0000
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
Cc: Mark Rutland <mark.rutland@arm.com>, Song Liu <songliubraving@fb.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 Will Deacon <will.deacon@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Paul Mackerras <paulus@samba.org>,
 Jiri Olsa <jolsa@redhat.com>, Andi Kleen <ak@linux.intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 Igor Lubashev <ilubashe@akamai.com>, James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 Serge Hallyn <serge@hallyn.com>, Robert Richter <rric@kernel.org>,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 Casey Schaufler <casey@schaufler-ca.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

Em Sat, Jan 11, 2020 at 12:52:13AM +0900, Masami Hiramatsu escreveu:
> On Fri, 10 Jan 2020 15:02:34 +0100 Peter Zijlstra <peterz@infradead.org> wrote:
> > Again, this only allows attaching to previously created kprobes, it does
> > not allow creating kprobes, right?

> > That is; I don't think CAP_SYS_PERFMON should be allowed to create
> > kprobes.

> > As might be clear; I don't actually know what the user-ABI is for
> > creating kprobes.

> There are 2 ABIs nowadays, ftrace and ebpf. perf-probe uses ftrace interface to
> define new kprobe events, and those events are treated as completely same as
> tracepoint events. On the other hand, ebpf tries to define new probe event
> via perf_event interface. Above one is that interface. IOW, it creates new kprobe.

Masami, any plans to make 'perf probe' use the perf_event_open()
interface for creating kprobes/uprobes?

- Arnaldo


_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
