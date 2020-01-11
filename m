Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B381394DA
	for <lists+oprofile-list@lfdr.de>; Mon, 13 Jan 2020 16:33:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1ir1i8-0004bJ-Bm; Mon, 13 Jan 2020 15:33:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <arnaldo.melo@gmail.com>) id 1iq4kA-000353-4D
 for oprofile-list@lists.sourceforge.net; Sat, 11 Jan 2020 00:35:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=CC:To:Subject:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Date:From:Message-ID:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6ZxdMaOqxAtsCLY7Lzkx2L/EBnUsDnrBslrx0A7xKC4=; b=WeAZ55/q1H8YfzaF2FqCUFsf1t
 A8YrsxT9LNlIkWiboDLCZXFJMNVbNBVIG3xt+BjN2q3HnrDGmLK1UI7LLF0BSdCFEOSp03A3PYI90
 NP4IHhMBapvDDjMrZwjKm2bceJV8D5YaCCgOFQypOzoAwrTj/w/yE30L/fiJwmP7YOZI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=CC:To:Subject:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:In-Reply-To:Date:From:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6ZxdMaOqxAtsCLY7Lzkx2L/EBnUsDnrBslrx0A7xKC4=; b=LHVhNl7LyhtBs8A27AS5RzpCbt
 r+feFDy/IT3B6MBODg5S2nThQfP13KnRKeE84fd6NAU5lzp9l8Pp9tX7nXb6UJGDxMkX2vqhIR1J9
 on770i0EzLZBmN9xcaqBJmk+f2UcMMNUD4d+MHCEUeYlmlMP0LbmA67OeBf46+JTS/HM=;
Received: from mail-qv1-f65.google.com ([209.85.219.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iq4k6-00HVZu-Bz
 for oprofile-list@lists.sourceforge.net; Sat, 11 Jan 2020 00:35:09 +0000
Received: by mail-qv1-f65.google.com with SMTP id m14so1652075qvl.3
 for <oprofile-list@lists.sf.net>; Fri, 10 Jan 2020 16:35:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:from:date:user-agent:in-reply-to:references:mime-version
 :content-transfer-encoding:subject:to:cc;
 bh=6ZxdMaOqxAtsCLY7Lzkx2L/EBnUsDnrBslrx0A7xKC4=;
 b=YvNIeLoxxUS8MiKp2Ri8iAcXzrJxtE44cmCaAzEOlIiO3zdIjAdic6y/7gp05iDy+4
 Psa6obfkZ/2miGQ5CBZOM2hPQw13LKvkvkvxdObU65wzP3ra2LNlPLoI/PvksYjlJJGl
 iSS8P5cVN9p61Gb6Nps3ktzRFCv0Ing6Li0w3f+VU2FaDbtR+UbZqnBI7f57XL6zxiwV
 8zc0GQwvgUDLz68MUfzUHbkOWN6RgoAeVP6n6Ni+2wDy9pXZ/Y5jKoEYEgnhpY8BItXX
 +vICW1PeMxcX+zNfgGRTBkMaN4NCrNgM0PyEOAUoMMz1lYO2qTltSh4Ch14nfdS6Qmzl
 zsBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:from:date:user-agent:in-reply-to
 :references:mime-version:content-transfer-encoding:subject:to:cc;
 bh=6ZxdMaOqxAtsCLY7Lzkx2L/EBnUsDnrBslrx0A7xKC4=;
 b=kOPCAr9g9LJYr6eNfiYs8Bh3ydUgeCM5KZ6PWU0jpwnej1RmrHT8gcD80ZBj3UjMP8
 i77pKIcpCjpyqkuLyI9YumxV8iHhsBWBxtJONdlxxxxfe/teEY6yiADnuEA3XuwLWxSQ
 VjqeMo/bZm2XE/v/Hzd7pPitk+/TUTW3htm+25/rJa70aRGSh+fKdQym1UX6o9rfcRvQ
 YQJppKhXAqtjGCQEJswiX9hqHviN4l4A21BrqXG+BMZ8Yap3+1bDPsz9y/lnXn5JYaQI
 Hu6Jj1HHwNOoCrbRb8EWhcoDkY4yEh4G8PIoL/i0U8WPjAB5AMrWdIBVagptSE+yziT9
 RGow==
X-Gm-Message-State: APjAAAUFgnA7Uu8bb8nDrKDsZb7ffyM+N3UGR4KdaCA83S/47lfpOJdY
 ijLWOTMTGGa2Y2qD9aM6mKE=
X-Google-Smtp-Source: APXvYqxPyWA8KpmKGMVMME8gPN1B98zu6uMFW1TJ+TYPsRSpYEPZl4k9D7BDYVrpcTXTD8zwqLuGjQ==
X-Received: by 2002:a0c:f7c3:: with SMTP id f3mr1362344qvo.52.1578702900264;
 Fri, 10 Jan 2020 16:35:00 -0800 (PST)
Received: from [192.168.86.249] ([179.97.37.151])
 by smtp.gmail.com with ESMTPSA id z141sm1638958qkb.63.2020.01.10.16.34.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 Jan 2020 16:34:59 -0800 (PST)
Message-ID: <5e191833.1c69fb81.8bc25.a88c@mx.google.com>
From: arnaldo.melo@gmail.com
Date: Fri, 10 Jan 2020 21:35:12 -0300
User-Agent: K-9 Mail for Android
In-Reply-To: <2B79131A-3F76-47F5-AAB4-08BCA820473F@fb.com>
References: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
 <c93309dc-b920-f5fa-f997-e8b2faf47b88@linux.intel.com>
 <20200108160713.GI2844@hirez.programming.kicks-ass.net>
 <cc239899-5c52-2fd0-286d-4bff18877937@linux.intel.com>
 <20200110140234.GO2844@hirez.programming.kicks-ass.net>
 <20200111005213.6dfd98fb36ace098004bde0e@kernel.org>
 <20200110164531.GA2598@kernel.org>
 <20200111084735.0ff01c758bfbfd0ae2e1f24e@kernel.org>
 <2B79131A-3F76-47F5-AAB4-08BCA820473F@fb.com>
MIME-Version: 1.0
Subject: Re: [PATCH v4 2/9] perf/core: open access for CAP_SYS_PERFMON
 privileged process
To: Song Liu <songliubraving@fb.com>,Masami Hiramatsu <mhiramat@kernel.org>
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: chromium.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [179.97.37.151 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (arnaldo.melo[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_QP_LONG_LINE      RAW: Quoted-printable line longer than 76 chars
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iq4k6-00HVZu-Bz
X-Mailman-Approved-At: Mon, 13 Jan 2020 15:32:58 +0000
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
 <james.bottomley@hansenpartnership.com>, Paul Mackerras <paulus@samba.org>,
 Jiri Olsa <jolsa@redhat.com>, Andi Kleen <ak@linux.intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 Igor Lubashev <ilubashe@akamai.com>, James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Serge Hallyn <serge@hallyn.com>,
 Robert Richter <rric@kernel.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Kees,
 Casey Schaufler <casey@schaufler-ca.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

<keescook@chromium.org>,Jann Horn <jannh@google.com>,Thomas Gleixner <tglx@linutronix.de>,Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,Lionel Landwerlin <lionel.g.landwerlin@intel.com>,linux-kernel <linux-kernel@vger.kernel.org>,"linux-security-module@vger.kernel.org" <linux-security-module@vger.kernel.org>,"selinux@vger.kernel.org" <selinux@vger.kernel.org>,"intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,"bpf@vger.kernel.org" <bpf@vger.kernel.org>,"linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,"linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,"linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,"oprofile-list@lists.sf.net" <oprofile-list@lists.sf.net>
From: Arnaldo Carvalho de Melo <acme@kernel.org>
Message-ID: <A7F0BF73-9189-44BA-9264-C88F2F51CBF3@kernel.org>

On January 10, 2020 9:23:27 PM GMT-03:00, Song Liu <songliubraving@fb.com> wrote:
>
>
>> On Jan 10, 2020, at 3:47 PM, Masami Hiramatsu <mhiramat@kernel.org>
>wrote:
>> 
>> On Fri, 10 Jan 2020 13:45:31 -0300
>> Arnaldo Carvalho de Melo <acme@kernel.org> wrote:
>> 
>>> Em Sat, Jan 11, 2020 at 12:52:13AM +0900, Masami Hiramatsu escreveu:
>>>> On Fri, 10 Jan 2020 15:02:34 +0100 Peter Zijlstra
><peterz@infradead.org> wrote:
>>>>> Again, this only allows attaching to previously created kprobes,
>it does
>>>>> not allow creating kprobes, right?
>>> 
>>>>> That is; I don't think CAP_SYS_PERFMON should be allowed to create
>>>>> kprobes.
>>> 
>>>>> As might be clear; I don't actually know what the user-ABI is for
>>>>> creating kprobes.
>>> 
>>>> There are 2 ABIs nowadays, ftrace and ebpf. perf-probe uses ftrace
>interface to
>>>> define new kprobe events, and those events are treated as
>completely same as
>>>> tracepoint events. On the other hand, ebpf tries to define new
>probe event
>>>> via perf_event interface. Above one is that interface. IOW, it
>creates new kprobe.
>>> 
>>> Masami, any plans to make 'perf probe' use the perf_event_open()
>>> interface for creating kprobes/uprobes?
>> 
>> Would you mean perf probe to switch to perf_event_open()?
>> No, perf probe is for setting up the ftrace probe events. I think we
>can add an
>> option to use perf_event_open(). But current kprobe creation from
>perf_event_open()
>> is separated from ftrace by design.
>
>I guess we can extend event parser to understand kprobe directly.
>Instead of
>
>	perf probe kernel_func
>	perf stat/record -e probe:kernel_func ...
>
>We can just do 
>
>	perf stat/record -e kprobe:kernel_func ...


You took the words from my mouth, exactly, that is a perfect use case, an alternative to the 'perf probe' one of making a disabled event that then gets activated via record/stat/trace, in many cases it's better, removes the explicit probe setup case.

Regards, 

- Arnaldo

>
>Thanks,
>Song



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
