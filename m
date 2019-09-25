Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4F3BE169
	for <lists+oprofile-list@lfdr.de>; Wed, 25 Sep 2019 17:34:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1iD9Ja-0000Fh-Ad; Wed, 25 Sep 2019 15:34:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <will_schmidt@vnet.ibm.com>) id 1iD9JY-0000FZ-Ak
 for oprofile-list@lists.sourceforge.net; Wed, 25 Sep 2019 15:34:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Mime-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A4RW2Hh8D9O7Nbqgqev8Dk56SR3CH5y0Z2V3V9LdxdY=; b=Fvyy0Liv3RPtbBVICeA9jONXss
 eNRqEmJ9UZfucd0q6VIxX3De37IfnVCEWp7yPh+ewbqj3Fa/cUtCF2yoqvhenPlU0lfTtemXxZetX
 8V58ZwcSWf2tJ+9eBp6VWF63/RpO/c0qCe1qh2R8bQICzQ5o59p73nlbHpNX5Amzgobc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Mime-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=A4RW2Hh8D9O7Nbqgqev8Dk56SR3CH5y0Z2V3V9LdxdY=; b=TecTByXq4DQTvObQXD1xcBxFhM
 Z6e82oLY4itpEEUu+UD0L1kl+CfA3f2IqVYPDrWCpj+Ix9heFvqI65pqPMrWULrPig1KgpTs2dWfc
 z3qpibXD/qLqiXJ/zvPjiHXHXSVesqDz28GzHFUYSjIqiPopjvljUugw3Z9by4WKuDgw=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iD9JW-006Rf2-1W
 for oprofile-list@lists.sourceforge.net; Wed, 25 Sep 2019 15:34:48 +0000
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x8PFNDgb107057
 for <oprofile-list@lists.sourceforge.net>; Wed, 25 Sep 2019 11:34:40 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2v8ahj1bx6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <oprofile-list@lists.sourceforge.net>; Wed, 25 Sep 2019 11:34:40 -0400
Received: from m0098409.ppops.net (m0098409.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id x8PFNep7108701
 for <oprofile-list@lists.sourceforge.net>; Wed, 25 Sep 2019 11:34:39 -0400
Received: from ppma01dal.us.ibm.com (83.d6.3fa9.ip4.static.sl-reverse.com
 [169.63.214.131])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2v8ahj1bws-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 25 Sep 2019 11:34:39 -0400
Received: from pps.filterd (ppma01dal.us.ibm.com [127.0.0.1])
 by ppma01dal.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id x8PFU4Q4029857;
 Wed, 25 Sep 2019 15:34:38 GMT
Received: from b01cxnp22034.gho.pok.ibm.com (b01cxnp22034.gho.pok.ibm.com
 [9.57.198.24]) by ppma01dal.us.ibm.com with ESMTP id 2v5bg7gt4p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 25 Sep 2019 15:34:38 +0000
Received: from b01ledav006.gho.pok.ibm.com (b01ledav006.gho.pok.ibm.com
 [9.57.199.111])
 by b01cxnp22034.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x8PFYbMJ48366060
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 25 Sep 2019 15:34:38 GMT
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id E5BD6AC064;
 Wed, 25 Sep 2019 15:34:37 +0000 (GMT)
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id A1137AC05E;
 Wed, 25 Sep 2019 15:34:37 +0000 (GMT)
Received: from brimstone.rchland.ibm.com (unknown [9.10.86.107])
 by b01ledav006.gho.pok.ibm.com (Postfix) with ESMTP;
 Wed, 25 Sep 2019 15:34:37 +0000 (GMT)
Message-ID: <853a3bef8925f7095d4d856fa5108802f830cc95.camel@vnet.ibm.com>
Subject: Re: [PATCH] oprofile-tests Add test to exercise libjvmti_oprofile.so
From: will schmidt <will_schmidt@vnet.ibm.com>
To: William Cohen <wcohen@redhat.com>, oprofile-list@lists.sourceforge.net
Date: Wed, 25 Sep 2019 10:34:37 -0500
In-Reply-To: <01e03f9f-8f48-51ee-fdff-f69a135bcce9@redhat.com>
References: <b3d743ad26a29adc1ac5d513d5f9d36d6cdca20d.camel@vnet.ibm.com>
 <01e03f9f-8f48-51ee-fdff-f69a135bcce9@redhat.com>
X-Mailer: Evolution 3.28.5 (3.28.5-5.el7) 
Mime-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-09-25_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1909250145
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: libjvmti_oprofile.so]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iD9JW-006Rf2-1W
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
Cc: "Carl E. Love" <cel@us.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On Mon, 2019-09-23 at 16:33 -0400, William Cohen wrote:
> On 9/6/19 12:25 PM, will schmidt wrote:
> > Hi,
> > 
> > This is a testsuite follow-on to the fix for the oprofile JIT
> > bad event spec error patch that was posted a month or so ago.
> > 
> > Assorted changes to exercise the use of oprofiles JVMTI hook.
> > (libjvmti_oprofile.so  - Oprofile library interface into the
> > Java Virtual Machine Tools Interface).
> >     
> > This has been tested this on assorted ppc64* systems with a mixture
> > of having the libjvmti_oprofile present and not.
> 
> Hi,
> 
> Sorry for the slow turn around on the patch.  The checking for
> libjvmti.so in op_resolve_java_dependencies() doesn't correctly
> identify location of libjvmti.so.  On machines with both 32-bit and
> 64-bit versions such as x86-64 the library could be in /usr/lib64 or
> /usr/lib.  Also will need to be careful to use the appropriate
> libjvmti.so.  One might find 32-bit libjvmti.so but have 64-bit java
> installed.

Right..   This part seems most troublesome.    I also ran into issues
in finding older versions of the library. 

Thanks for the review comments, I have a few thoughts on how to add and
update the logic, i'll get something re-posted..  but probably not
right away.  :-) 

Thanks
-Will (Schmidt)


> -Will Cohen
> > 
> > 
> >     
> >     testsuite/lib/op_util.exp:
> >     * Update compile_workload() procedure to allow building of
> > .java files.
> >     * Add procedure op_resolve_java_dependencies() to ensure that
> > dependencies
> >       for building and running the java test can be found. This
> > includes java,
> >       javac, and libjvmti_oprofile.so. Since the
> > libjvmti_oprofile.so object
> >       can't be readily found via 'which', logic is in place that
> > assumes it can
> >       be found in a path relative to where the operf binary is
> > found.
> >     
> >     testsuite/lib/op_workloads.exp:
> >     * Add an op_java_workload_table containing the new test.
> >     
> >     testsuite/lib/operf_util.exp:
> >     * Add procedure (check_java_samples_exist) to see that samples
> > can be
> >       found that are associated with the generated .jo object.
> >     * Add procedure (check_java_object_file_exists) to ensure that
> > at
> >       least one "*.jo" file was created during the run.
> >     * Add procedure (do_java_test) to do the actual test.
> >     
> >     testsuite/workloads/java/Fibonacci.java:
> >     * Add the java test itself.
> > 
> > 
> > Thanks
> > -Will (Schmidt)
> > 
> > 
> > 
> > diff --git a/testsuite/lib/op_util.exp b/testsuite/lib/op_util.exp
> > index 7f0473d..d29e6eb 100644
> > --- a/testsuite/lib/op_util.exp
> > +++ b/testsuite/lib/op_util.exp
> > @@ -179,15 +179,15 @@ proc check_user {} {
> >  proc compile_workload {workload_src compile_options } {
> >  
> >      # Ideally the TCL command target_compile should be
> > used.  However,
> >      # target_compile is ignoring the compiler options argument.
> >  
> > -    set compiler "cc"
> >      set extension [lindex [split $workload_src "."] 1]
> > -    set workload_exc [ lindex [split $workload_src "."] 0]_bin
> >  
> >      if { [string compare $extension "c"] == 0 } {
> > +	set workload_exc [ lindex [split $workload_src "."] 0]_bin
> > +	set compiler "cc"
> >  	# workload is a C program, see if it needs to be compiled.
> >  	set test [local_exec "ls $workload_exc" "" "" 10]
> >  
> >  	if { [lindex $test 0] == 1 } {
> >  	    # workload has not been compiled
> > @@ -198,10 +198,28 @@ proc compile_workload {workload_src
> > compile_options } {
> >  	    }
> >  	}
> >  	return [ lindex [split $workload_src "."] 0]_bin
> >      }
> >  
> > +    if { [string compare $extension "java"] == 0 } {
> > +	set compiler "javac"
> > +	set workload_exc [ lindex [split $workload_src "."] 0].class
> > +	# workload is a java program, see if it needs to be compiled.
> > +	set test [local_exec "ls $workload_exc" "" "" 10]
> > +	if { [lindex $test 0] == 1 } {
> > +	    # workload has not been compiled
> > +	    set result [local_exec "$compiler $workload_src
> > $compile_options" "" "" 10 ]
> > +	    if { [lindex $result 0] == 1 } {
> > +		print "\nERROR compiling workload: $workload_src"
> > +		print "Compiler error message: $result\n"
> > +	    }
> > +	}
> > +	set path_and_basename [lindex [split $workload_src "."] 0]
> > +	set classonly [ lindex [ split $path_and_basename "/"] 2]
> > +	return $classonly
> > +    }
> > +
> >      # Assume the workload is a script, set the executable
> >      # name to the same as the source name.
> >      return $workload_src
> >  }
> >  
> > @@ -243,5 +261,57 @@ proc op_check_dependencies {} {
> >          set op_deps_ok 0
> >      } else {
> >          set op_deps_ok 1
> >      }
> >  }
> > +
> > +proc op_resolve_java_dependencies {} {
> > +    global java_deps_ok
> > +    global path_to_libjvmti
> > +    set libjvmti_oprofile_present 0
> > +    set java_present 0
> > +    set javac_present 0
> > +    set operf_present 0
> > +
> > +    set path_to_operf [ local_exec "which operf" "" "" 100 ]
> > +    if {[regexp "operf" $path_to_operf operf_present] == 1} {
> > +        verbose "Found operf ($operf_present) at $path_to_operf ."
> > +    } else {
> > +        send "Didn't find operf.\n"
> > +    }
> > +
> > +    set path_to_javac [ local_exec "which javac" "" "" 100 ]
> > +    if {[regexp "javac" $path_to_javac javac_present] == 1} {
> > +        verbose "Found javac ($javac_present) at $path_to_javac ."
> > +    } else {
> > +        send "javac is require to build the java testcase.  I
> > didn't find javac via 'which'.\n"
> > +    }
> > +
> > +    set path_to_java [ local_exec "which java" "" "" 100 ]
> > +    if {[regexp "java" $path_to_java java_present] == 1} {
> > +        verbose "Found java ($java_present) at $path_to_java ."
> > +    } else {
> > +        send "java is require to run the java testcase.  I didn't
> > find java via 'which'.\n"
> > +    }
> > +
> > +# Finding libjvmti_oprofile.so may be more interesting.
> > +# Lets assume the oprofile install has sibling /bin/ and /lib/
> > directories,
> > +# so as long as we have found the operf binary, we should be able
> > to infer
> > +# the location of libjvmti_oprofile.so.
> > +    set path_to_libjvmti [string map {bin/operf
> > lib/oprofile/libjvmti_oprofile.so} $path_to_operf ]
> > +    set path_to_libjvmti [string trimleft $path_to_libjvmti "0\
> > \{"]
> > +    set path_to_libjvmti [string trim $path_to_libjvmti "\
> > \n\r\}"]
> > +
> > +    set libjvmti_oprofile_present [file exists $path_to_libjvmti ]
> > +    if {$libjvmti_oprofile_present == 1 } {
> > +        verbose "found libjvmti_oprofile
> > ($libjvmti_oprofile_present) at $path_to_libjvmti. \n"
> > +    } else {
> > +        send "did not find libjvmti_oprofile (checked
> > $path_to_libjvmti ) .\n"
> > +    }
> > +
> > +    if {$operf_present == 0 || $java_present == 0 ||
> > $javac_present == 0 || $libjvmti_oprofile_present == 0} {
> > +        set java_deps_ok 0
> > +    } else {
> > +        set java_deps_ok 1
> > +    }
> > +}
> > +
> > diff --git a/testsuite/lib/op_workloads.exp
> > b/testsuite/lib/op_workloads.exp
> > index 661e280..9e96b52 100644
> > --- a/testsuite/lib/op_workloads.exp
> > +++ b/testsuite/lib/op_workloads.exp
> > @@ -2,10 +2,14 @@
> >  
> >  if {! [array exists op_workload_table]} {
> >      array set op_workload_table {}
> >  }
> >  
> > +if {! [array exists op_java_workload_table]} {
> > +    array set op_java_workload_table {}
> > +}
> > +
> >  # Make sure the workload binary name is unique and not a substring
> > of the
> >  # directory or the test to see if the symbol exists may find the
> > symbol in
> >  # the directory name not the executable.
> >  #
> >  # The op_workload_table consists of three or more entries.  The
> > entries
> > @@ -59,5 +63,15 @@ set
> > op_workload_table(anon_remap)                  \
> >        {workloads/anon_remap_src/anon_remap.c}      \
> >        {}                                           \
> >        {}                                           \
> >        { anon }                                       \
> >      }
> > +
> > +# A new/different table for the java workload(s).
> > +set op_java_workload_table(fibonacci)              \
> > +        {                                          \
> > +        {workloads/java/Fibonacci.java}            \
> > +        {}                                         \
> > +        {Fibonacci.main}                           \
> > +        {}                                         \
> > +}
> > +
> > diff --git a/testsuite/lib/operf_util.exp
> > b/testsuite/lib/operf_util.exp
> > index b34fd33..10ea9ac 100644
> > --- a/testsuite/lib/operf_util.exp
> > +++ b/testsuite/lib/operf_util.exp
> > @@ -1,7 +1,7 @@
> > -# op_util.exp
> > -#   Copyright (C) 2012 IBM
> > +# operf_util.exp
> > +#   Copyright (C) 2012-2019 IBM
> >  #
> >  # This file is free software; you can redistribute it and/or
> > modify
> >  # it under the terms of the GNU General Public License as
> > published by
> >  # the Free Software Foundation; either version 2 of the License,
> > or
> >  # (at your option) any later version.
> > @@ -86,10 +86,41 @@ proc operf_check_samples_exist {ctrs} {
> >              pass "$test: {$event} created nonzero sample files"
> >          }
> >      }
> >  }
> >  
> > +proc operf_check_java_samples_exist {ctrs} {
> > +    set test "checking for samples associated with *.jo"
> > +    verbose "checking for samples associated with *.jo"
> > +
> > +    foreach ctr $ctrs {
> > +        set n [lindex $ctr 0]
> > +        set event [lindex $ctr 1]
> > +        # add "-t 3" as a percentage threshold to cull some noise.
> > +        # add "-n" to suppress the opreport header (easier for
> > debug).
> > +        # add a regexp blurb to get just the .jo entries.
> > +        set result [ local_exec "opreport  event:$event -t 3 -n "
> > "" "" 100 ]
> > +        if { [regexp "\[0-9\].jo" "$result" ]} {
> > +            pass "$test: {$event} found samples associated with
> > *.jo"
> > +        } else {
> > +            fail "$test: {$event} didn't find samples associated
> > with *.jo"
> > +        }
> > +    }
> > +}
> > +
> > +proc operf_check_java_object_file_exists {} {
> > +    set test "At least one java object (.jo) file exists."
> > +    verbose "At least one java object (.jo) file exists."
> > +
> > +    set result [ local_exec "find . -name \"*.jo\" "  "" "" 100 ]
> > +    if {[regexp ".jo" "$result"]} {
> > +            pass "$test: found at least one java object file."
> > +    } else {
> > +            fail "$test: Did not find a java object (*.jo) file."
> > +    }
> > +}
> > +
> >  proc operf_ocount_get_version {tool} {
> >      global operf_ocount_version
> >      global user_is_root
> >  
> >      if { [string compare $tool "operf"] == 0 } {
> > @@ -159,10 +190,85 @@ proc operf_get_version {} {
> >      set test "OProfile operf version check"
> >      operf_ocount_get_version "operf"
> >      set operf_version $operf_ocount_version
> >  }
> >  
> > +# run a java test.
> > +proc do_java_test {ctrs output_check test_debug_option} {
> > +
> > +    global op_java_workload_table
> > +    global op_workload_table
> > +    global path_to_libjvmti
> > +    set kernel 1
> > +    set user 1
> > +    set ctr_opts {}
> > +
> > +    if { $output_check == 1 && $test_debug_option == 0 } {
> > +        validate_xml_help
> > +    }
> > +
> > +    foreach ctr $ctrs {
> > +#       n - counter number, no longer used but didn't want to
> > change
> > +#       specification format
> > +        set n [lindex $ctr 0]
> > +        set event [lindex $ctr 1]
> > +        set um [lindex $ctr 2]
> > +        if {$output_check == 3} {
> > +            # With callgraph profiling, we only use the cycles-
> > based event for the
> > +            # architecture.  Just set the count value high enough
> > to make sure it's
> > +            # at least 15x the minimum; 1,500,000 should do it.
> > +            set count 1500000
> > +        } else {
> > +            set count [lindex $ctr 3]
> > +        }
> > +        append ctr_opts
> > "${event}:${count}:${um}:${kernel}:${user},"
> > +    }
> > +
> > +    foreach entry [array name op_java_workload_table] {
> > +        set workload_src [lindex $op_java_workload_table($entry)
> > 0]
> > +        set compile_options [lindex
> > $op_java_workload_table($entry) 1]
> > +        set workload_exc [compile_workload
> > $workload_src  $compile_options]
> > +        verbose "Workload: $workload_exc\n"
> > +        verbose "Counter options: $ctr_opts\n"
> > +        # Run the workload
> > +        set java_classpath "workloads/java/"
> > +        set cmd "operf java -agentpath:${path_to_libjvmti} -cp
> > ${java_classpath} ${workload_exc}"
> > +        verbose "operf command is: $cmd \n"
> > +
> > +        if {$test_debug_option == 1} {
> > +            set dbg_test " (--debug-info)"
> > +        } else {
> > +            set dbg_test ""
> > +        }
> > +        set test "operf test against java: $cmd"
> > +        verbose "\nTest: $test\n"
> > +        if {[lindex [local_exec $cmd "" "" 100] 0] == 0} {
> > +            pass $test
> > +        } else {
> > +            fail $test
> > +        }
> > +
> > +        # - verify that the test ran.
> > +        operf_check_samples_exist $ctrs
> > +        # - verify that at least one .jo file exists.
> > +        operf_check_java_object_file_exists
> > +        # - verify that the .jo entry shows up in the output.
> > +        operf_check_java_samples_exist $ctrs
> > +
> > +        # Verify the interesting symbols for this test are found
> > in
> > +        # the output.  Only checking the symbols for the first
> > group of
> > +        # events.
> > +        if {$output_check == 1} {
> > +            local_exec "sleep 1" "" "" 10
> > +            verify_output $op_java_workload_table($entry)
> > $workload_exc $ctr_opts $test_debug_option
> > +        }
> > +
> > +        operf_delete_samples
> > +    }
> > +}
> > +
> > +
> >  proc do_single_process_test {ctrs output_check test_debug_option}
> > {
> >  #   The tests are run in single process mode which does not
> > require root
> >  #
> >  #   output_check values:
> >  #     1 - check output for symbols from workload table
> > diff --git a/testsuite/oprofile-java/oprofile-java.exp
> > b/testsuite/oprofile-java/oprofile-java.exp
> > new file mode 100644
> > index 0000000..47fe175
> > --- /dev/null
> > +++ b/testsuite/oprofile-java/oprofile-java.exp
> > @@ -0,0 +1,112 @@
> > +# oprofile-java.exp
> > +#   Copyright (C) 2019 IBM Corporation
> > +#
> > +# This file is free software; you can redistribute it and/or
> > modify
> > +# it under the terms of the GNU General Public License as
> > published by
> > +# the Free Software Foundation; either version 2 of the License,
> > or
> > +# (at your option) any later version.
> > +#
> > +# This program is distributed in the hope that it will be useful,
> > +# but WITHOUT ANY WARRANTY; without even the implied warranty of
> > +# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > +# GNU General Public License for more details.
> > +#
> > +# You should have received a copy of the GNU General Public
> > License
> > +# along with this program; if not, write to the Free Software
> > +# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-
> > 1307, USA.
> > +#
> > +
> > +global path_to_libjvmti
> > +
> > +check_user
> > +load_lib "op_events.exp"
> > +load_lib "op_util.exp"
> > +load_lib "operf_util.exp"
> > +load_lib "op_workloads.exp"
> > +
> > +# run operf against a java utility, verify that a .jo file is
> > created,
> > +# and that an oreport can run successfully against the run.
> > +
> > +proc oprofile_run_java_tests {} {
> > +    global op_event_table
> > +
> > +    set cpu [operf_cpu_type]
> > +    if {$cpu == "bogus"} {
> > +        send "Error, not able to find a valid cpu type.
> > Exiting.\n"
> > +    } else {
> > +        set output_check 2
> > +        set test_debug_option  0
> > +        # Test using the first event entry only.
> > +        set spec [lindex $op_event_table($cpu) 0]
> > +        do_java_test $spec $output_check $test_debug_option
> > +    }
> > +}
> > +
> > +#main
> > +
> > +set operf_version 0
> > +set op_version 0
> > +
> > +op_check_dependencies
> > +if {$op_deps_ok == 0} {
> > +    return
> > +}
> > +
> > +op_resolve_java_dependencies
> > +if {$java_deps_ok == 0} {
> > +#send "returning from java_deps_ok check"
> > +    send "Skipping the java test due to missing dependencies.\n"
> > +    send "Oprofile needs to be built --with-java=<path/to/jdk/>,
> > such \n"
> > +    send "that the libjvmti_oprofile.so object is built and
> > installed.\n"
> > +    send "java,javac,operf also need to be available and in the
> > PATH. \n"
> > +    return
> > +}
> > +
> > +# Check to see of opcontrol is installed.  Need to do this first
> > as
> > +# to set opcontrol_installed.  If opcontrol is not installed, then
> > we do
> > +# not make any opcontrol calls to do cleanup of existing opcontrol
> > data samples
> > +# or call --deinit when exiting.
> > +
> > +operf_get_version
> > +op_get_version
> > +
> > +if {$op_version == 0} {
> > +    # could not find opcontrol
> > +    set opcontrol_installed 0
> > +} else {
> > +    if {$op_version < $operf_version} {
> > +        # Don't run the opcontrol tests at all if the opcontrol
> > binary appears to
> > +        # be from an earlier version of OProfile.
> > +        set opcontrol_installed 0
> > +    } else {
> > +        set opcontrol_installed 1
> > +    }
> > +}
> > +
> > +if { $operf_version == 0 } {
> > +    send "Skipping the operf tests.\n"
> > +    send "Unable to find or verify the version of the OProfile
> > operf utility.\n"
> > +} else {
> > +    # Ensure that the oprofile kernel module is unloaded, since it
> > can
> > +    # interfere with proper operf operation on some platforms.
> > +#    if {$opcontrol_installed == 1} {
> > +#        local_exec "opcontrol --deinit" "" "" 100
> > +#        # Make sure there are no samples from the opcontrol
> > laying
> > +#        # around that opreport might inadvertently pick up.
> > +#        op_daemon_delete_any_samples
> > +#    }
> > +    # Make sure there are no samples from the operf laying
> > +    # around that opreport might inadvertently pick up.
> > +    operf_delete_samples
> > +
> > +    case $operf_version {
> > +        { 0.* } {
> > +            # Just don't run this on old versions.
> > +            send "v==0, skipping. \n"
> > +            }
> > +        { * } {
> > +            send "Running operf against a java workload. \n"
> > +            oprofile_run_java_tests
> > +        }
> > +    }
> > +}
> > diff --git a/testsuite/workloads/java/Fibonacci.java
> > b/testsuite/workloads/java/Fibonacci.java
> > new file mode 100644
> > index 0000000..8d92b6a
> > --- /dev/null
> > +++ b/testsuite/workloads/java/Fibonacci.java
> > @@ -0,0 +1,25 @@
> > +
> > +/* A simple java test to generate some activity to verify operf is
> > working
> > + * properly. */
> > +
> > +public class Fibonacci {
> > +   public static void main(String[] args) {
> > +      long sum=0;
> > +      int i = 1;
> > +      /* The test harness does not easily handle passing arguments
> > +       * to the test, so hardcode a value here.
> > +       * This (sum) will overflow, but that is fine as we are only
> > after
> > +       * activity, and are not concerned with the result.  */
> > +      int n = 12345; /*Integer.parseInt(args[0]);*/
> > +      long f1 = 0;
> > +      long f2 = f1 + 1;
> > +      while (i <= n) {
> > +         sum = f1 + f2;
> > +         f1 = f2;
> > +         f2 = sum;
> > +         i++;
> > +      }
> > +      System.out.print(sum);
> > +      System.out.print("\n");
> > +     }
> > +}
> > 
> 
> 



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
