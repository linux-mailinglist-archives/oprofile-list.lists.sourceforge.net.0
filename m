Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E34D7ED1
	for <lists+oprofile-list@lfdr.de>; Tue, 15 Oct 2019 20:22:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1iKRSi-0000Gm-A1; Tue, 15 Oct 2019 18:22:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <will_schmidt@vnet.ibm.com>) id 1iKRSg-0000Gd-Im
 for oprofile-list@lists.sourceforge.net; Tue, 15 Oct 2019 18:22:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Mime-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zP6oc3NHtrt93NIC+8I7XOAzSEah0AXjo+rzR1shKL8=; b=E5VEKiNmo0X+rDmDBfr8XvnlSv
 G585ytq/gUgH8hMomaqeC7bkrXDqaVFqdK9rQoJY2fT7OLeVgME9ZuI0hsnBJCYCtEHNpZnL6zfPO
 EAMW76LPfb4eYcnQuOqfiL5XPRLNAIg83bm+aWwU6VpYYNND4xV5iee1Af7tr4LNonYE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Mime-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zP6oc3NHtrt93NIC+8I7XOAzSEah0AXjo+rzR1shKL8=; b=Q3leOaMNWeCMACWmI16pGD/F1M
 UvVKlIwsIeX4Ep3bg9K01FugHXkP8/Set+mD3DlkCLwf1cP+zhFarFteKcibJsr9Fi+Q83wKeke8c
 fvuRWcDn+hAwETTyY1O1qQhM/tt0j1BHtQIYeTdmoNZsP57vwor648H7nYa+2dLgvbtw=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iKRSc-002YTI-OA
 for oprofile-list@lists.sourceforge.net; Tue, 15 Oct 2019 18:22:22 +0000
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x9FIKLKB134171
 for <oprofile-list@lists.sourceforge.net>; Tue, 15 Oct 2019 14:22:06 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2vng18fe7y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <oprofile-list@lists.sourceforge.net>; Tue, 15 Oct 2019 14:22:05 -0400
Received: from m0098394.ppops.net (m0098394.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id x9FIKldo137844
 for <oprofile-list@lists.sourceforge.net>; Tue, 15 Oct 2019 14:21:43 -0400
Received: from ppma01dal.us.ibm.com (83.d6.3fa9.ip4.static.sl-reverse.com
 [169.63.214.131])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2vng18fe2q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Oct 2019 14:21:39 -0400
Received: from pps.filterd (ppma01dal.us.ibm.com [127.0.0.1])
 by ppma01dal.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id x9FIKrws027778;
 Tue, 15 Oct 2019 18:21:27 GMT
Received: from b03cxnp08026.gho.boulder.ibm.com
 (b03cxnp08026.gho.boulder.ibm.com [9.17.130.18])
 by ppma01dal.us.ibm.com with ESMTP id 2vk6f7d0yv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 15 Oct 2019 18:21:27 +0000
Received: from b03ledav002.gho.boulder.ibm.com
 (b03ledav002.gho.boulder.ibm.com [9.17.130.233])
 by b03cxnp08026.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x9FILQlh56885678
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 15 Oct 2019 18:21:26 GMT
Received: from b03ledav002.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 373C5136055;
 Tue, 15 Oct 2019 18:21:26 +0000 (GMT)
Received: from b03ledav002.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C2D4B136051;
 Tue, 15 Oct 2019 18:21:25 +0000 (GMT)
Received: from brimstone.rchland.ibm.com (unknown [9.10.86.107])
 by b03ledav002.gho.boulder.ibm.com (Postfix) with ESMTP;
 Tue, 15 Oct 2019 18:21:25 +0000 (GMT)
Message-ID: <c015f3f1e51ba0d84e688dd2b8be5c07cfc3a67b.camel@vnet.ibm.com>
Subject: [PATCH V2] oprofile-tests Add test to exercise libjvmti_oprofile.so
From: will schmidt <will_schmidt@vnet.ibm.com>
To: William Cohen <wcohen@redhat.com>, oprofile-list@lists.sourceforge.net
Date: Tue, 15 Oct 2019 13:21:25 -0500
In-Reply-To: <01e03f9f-8f48-51ee-fdff-f69a135bcce9@redhat.com>
References: <b3d743ad26a29adc1ac5d513d5f9d36d6cdca20d.camel@vnet.ibm.com>
 <01e03f9f-8f48-51ee-fdff-f69a135bcce9@redhat.com>
X-Mailer: Evolution 3.28.5 (3.28.5-5.el7) 
Mime-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-15_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1910150155
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iKRSc-002YTI-OA
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

Hi,

For V2 of this patch, I have updated the logic that looks for
libjvmti_oprofile.so to also search /usr/lib64/ and /usr/lib/
for the library, stopping when the library is found.  I have
tested a few additional variations locally. 

(V1:)    
Assorted changes to exercise the use of oprofiles JVMTI hook.
(libjvmti_oprofile.so  - Java Virtual Machine Tools Interface).
    
This has been tested this on assorted ppc64* systems with a mixture
of having the libjvmti_oprofile present and not.

    testsuite/lib/op_util.exp:
    * Update compile_workload() procedure to allow building of .java files.
    * Add procedure op_resolve_java_dependencies() to ensure that dependencies
      for building and running the java test can be found. This includes java,
      javac, and libjvmti_oprofile.so. Since the libjvmti_oprofile.so object
      can't be readily found via 'which', logic is in place that assumes it can
      be found in a path relative to where the operf binary is found.
    
    testsuite/lib/op_workloads.exp:
    * Add an op_java_workload_table containing the new test.
    
    testsuite/lib/operf_util.exp:
    * Add procedure (check_java_samples_exist) to see that samples can be
      found that are associated with the generated .jo object.
    * Add procedure (check_java_object_file_exists) to ensure that at
      least one "*.jo" file was created during the run.
    * Add procedure (do_java_test) to do the actual test.
    
    testsuite/workloads/java/Fibonacci.java:
    * Add the java test itself.

--

Thanks,
-Will (Schmidt)


diff --git a/testsuite/lib/op_util.exp b/testsuite/lib/op_util.exp
index 7f0473d..863d46f 100644
--- a/testsuite/lib/op_util.exp
+++ b/testsuite/lib/op_util.exp
@@ -179,15 +179,15 @@ proc check_user {} {
 proc compile_workload {workload_src compile_options } {
 
     # Ideally the TCL command target_compile should be used.  However,
     # target_compile is ignoring the compiler options argument.
 
-    set compiler "cc"
     set extension [lindex [split $workload_src "."] 1]
-    set workload_exc [ lindex [split $workload_src "."] 0]_bin
 
     if { [string compare $extension "c"] == 0 } {
+	set workload_exc [ lindex [split $workload_src "."] 0]_bin
+	set compiler "cc"
 	# workload is a C program, see if it needs to be compiled.
 	set test [local_exec "ls $workload_exc" "" "" 10]
 
 	if { [lindex $test 0] == 1 } {
 	    # workload has not been compiled
@@ -198,10 +198,28 @@ proc compile_workload {workload_src compile_options } {
 	    }
 	}
 	return [ lindex [split $workload_src "."] 0]_bin
     }
 
+    if { [string compare $extension "java"] == 0 } {
+	set compiler "javac"
+	set workload_exc [ lindex [split $workload_src "."] 0].class
+	# workload is a java program, see if it needs to be compiled.
+	set test [local_exec "ls $workload_exc" "" "" 10]
+	if { [lindex $test 0] == 1 } {
+	    # workload has not been compiled
+	    set result [local_exec "$compiler $workload_src $compile_options" "" "" 10 ]
+	    if { [lindex $result 0] == 1 } {
+		print "\nERROR compiling workload: $workload_src"
+		print "Compiler error message: $result\n"
+	    }
+	}
+	set path_and_basename [lindex [split $workload_src "."] 0]
+	set classonly [ lindex [ split $path_and_basename "/"] 2]
+	return $classonly
+    }
+
     # Assume the workload is a script, set the executable
     # name to the same as the source name.
     return $workload_src
 }
 
@@ -243,5 +261,67 @@ proc op_check_dependencies {} {
         set op_deps_ok 0
     } else {
         set op_deps_ok 1
     }
 }
+
+proc op_resolve_java_dependencies {} {
+    global java_deps_ok
+    global path_to_libjvmti
+    set libjvmti_oprofile_present 0
+    set java_present 0
+    set javac_present 0
+    set operf_present 0
+
+    set path_to_operf [ local_exec "which operf" "" "" 100 ]
+    if {[regexp "operf" $path_to_operf operf_present] == 1} {
+	verbose "Found operf ($operf_present) at $path_to_operf ."
+    } else {
+	send "Didn't find operf.\n"
+    }
+
+    set path_to_javac [ local_exec "which javac" "" "" 100 ]
+    if {[regexp "javac" $path_to_javac javac_present] == 1} {
+	verbose "Found javac ($javac_present) at $path_to_javac ."
+    } else {
+	send "javac is require to build the java testcase.  I didn't find javac via 'which'.\n"
+    }
+
+    set path_to_java [ local_exec "which java" "" "" 100 ]
+    if {[regexp "java" $path_to_java java_present] == 1} {
+	verbose "Found java ($java_present) at $path_to_java ."
+    } else {
+	send "java is require to run the java testcase.  I didn't find java via 'which'.\n"
+    }
+
+    # Finding libjvmti_oprofile.so.
+    # In the case of a userspace build, the oprofile install location has
+    # sibling /bin/ and /lib/ directories, so as long as we have found the
+    # operf binary, we should be able to infer the location of libjvmti_oprofile.so.
+    set path_to_libjvmti [string map {bin/operf lib/oprofile/libjvmti_oprofile.so} $path_to_operf ]
+    set path_to_libjvmti [string trimleft $path_to_libjvmti "0\ \{"]
+    set path_to_libjvmti [string trim $path_to_libjvmti "\ \n\r\}"]
+    set libjvmti_oprofile_present [file exists $path_to_libjvmti ]
+    if {$libjvmti_oprofile_present == 1 } {
+	send "found libjvmti_oprofile ($libjvmti_oprofile_present) at $path_to_libjvmti . \n"
+    } else {
+	send "did not find libjvmti_oprofile in $path_to_libjvmti ) .\n"
+	# search a few other common spots for the library.
+	foreach path_to_libjvmti  { /usr/lib64/libjvmti_oprofile.so /usr/lib/libjvmti_oprofile.so } {
+	   verbose "looking for $path_to_libjvmti . "
+	   set libjvmti_oprofile_present [file exists $path_to_libjvmti ]
+	   if {$libjvmti_oprofile_present == 1 } {
+		send "found libjvmti_oprofile ($libjvmti_oprofile_present) at $path_to_libjvmti . \n"
+		break
+	   } else {
+		send "did not find libjvmti_oprofile in $path_to_libjvmti ) .\n"
+	   }
+       }
+    }
+
+    if {$operf_present == 0 || $java_present == 0 || $javac_present == 0 || $libjvmti_oprofile_present == 0} {
+	set java_deps_ok 0
+    } else {
+	set java_deps_ok 1
+    }
+}
+
diff --git a/testsuite/lib/op_workloads.exp b/testsuite/lib/op_workloads.exp
index 661e280..9e96b52 100644
--- a/testsuite/lib/op_workloads.exp
+++ b/testsuite/lib/op_workloads.exp
@@ -2,10 +2,14 @@
 
 if {! [array exists op_workload_table]} {
     array set op_workload_table {}
 }
 
+if {! [array exists op_java_workload_table]} {
+    array set op_java_workload_table {}
+}
+
 # Make sure the workload binary name is unique and not a substring of the
 # directory or the test to see if the symbol exists may find the symbol in
 # the directory name not the executable.
 #
 # The op_workload_table consists of three or more entries.  The entries
@@ -59,5 +63,15 @@ set op_workload_table(anon_remap)                  \
       {workloads/anon_remap_src/anon_remap.c}      \
       {}                                           \
       {}                                           \
       { anon }                                       \
     }
+
+# A new/different table for the java workload(s).
+set op_java_workload_table(fibonacci)              \
+        {                                          \
+        {workloads/java/Fibonacci.java}            \
+        {}                                         \
+        {Fibonacci.main}                           \
+        {}                                         \
+}
+
diff --git a/testsuite/lib/operf_util.exp b/testsuite/lib/operf_util.exp
index b34fd33..10ea9ac 100644
--- a/testsuite/lib/operf_util.exp
+++ b/testsuite/lib/operf_util.exp
@@ -1,7 +1,7 @@
-# op_util.exp
-#   Copyright (C) 2012 IBM
+# operf_util.exp
+#   Copyright (C) 2012-2019 IBM
 #
 # This file is free software; you can redistribute it and/or modify
 # it under the terms of the GNU General Public License as published by
 # the Free Software Foundation; either version 2 of the License, or
 # (at your option) any later version.
@@ -86,10 +86,41 @@ proc operf_check_samples_exist {ctrs} {
             pass "$test: {$event} created nonzero sample files"
         }
     }
 }
 
+proc operf_check_java_samples_exist {ctrs} {
+    set test "checking for samples associated with *.jo"
+    verbose "checking for samples associated with *.jo"
+
+    foreach ctr $ctrs {
+        set n [lindex $ctr 0]
+        set event [lindex $ctr 1]
+        # add "-t 3" as a percentage threshold to cull some noise.
+        # add "-n" to suppress the opreport header (easier for debug).
+        # add a regexp blurb to get just the .jo entries.
+        set result [ local_exec "opreport  event:$event -t 3 -n " "" "" 100 ]
+        if { [regexp "\[0-9\].jo" "$result" ]} {
+            pass "$test: {$event} found samples associated with *.jo"
+        } else {
+            fail "$test: {$event} didn't find samples associated with *.jo"
+        }
+    }
+}
+
+proc operf_check_java_object_file_exists {} {
+    set test "At least one java object (.jo) file exists."
+    verbose "At least one java object (.jo) file exists."
+
+    set result [ local_exec "find . -name \"*.jo\" "  "" "" 100 ]
+    if {[regexp ".jo" "$result"]} {
+            pass "$test: found at least one java object file."
+    } else {
+            fail "$test: Did not find a java object (*.jo) file."
+    }
+}
+
 proc operf_ocount_get_version {tool} {
     global operf_ocount_version
     global user_is_root
 
     if { [string compare $tool "operf"] == 0 } {
@@ -159,10 +190,85 @@ proc operf_get_version {} {
     set test "OProfile operf version check"
     operf_ocount_get_version "operf"
     set operf_version $operf_ocount_version
 }
 
+# run a java test.
+proc do_java_test {ctrs output_check test_debug_option} {
+
+    global op_java_workload_table
+    global op_workload_table
+    global path_to_libjvmti
+    set kernel 1
+    set user 1
+    set ctr_opts {}
+
+    if { $output_check == 1 && $test_debug_option == 0 } {
+        validate_xml_help
+    }
+
+    foreach ctr $ctrs {
+#       n - counter number, no longer used but didn't want to change
+#       specification format
+        set n [lindex $ctr 0]
+        set event [lindex $ctr 1]
+        set um [lindex $ctr 2]
+        if {$output_check == 3} {
+            # With callgraph profiling, we only use the cycles-based event for the
+            # architecture.  Just set the count value high enough to make sure it's
+            # at least 15x the minimum; 1,500,000 should do it.
+            set count 1500000
+        } else {
+            set count [lindex $ctr 3]
+        }
+        append ctr_opts "${event}:${count}:${um}:${kernel}:${user},"
+    }
+
+    foreach entry [array name op_java_workload_table] {
+        set workload_src [lindex $op_java_workload_table($entry) 0]
+        set compile_options [lindex $op_java_workload_table($entry) 1]
+        set workload_exc [compile_workload $workload_src  $compile_options]
+        verbose "Workload: $workload_exc\n"
+        verbose "Counter options: $ctr_opts\n"
+        # Run the workload
+        set java_classpath "workloads/java/"
+        set cmd "operf java -agentpath:${path_to_libjvmti} -cp ${java_classpath} ${workload_exc}"
+        verbose "operf command is: $cmd \n"
+
+        if {$test_debug_option == 1} {
+            set dbg_test " (--debug-info)"
+        } else {
+            set dbg_test ""
+        }
+        set test "operf test against java: $cmd"
+        verbose "\nTest: $test\n"
+        if {[lindex [local_exec $cmd "" "" 100] 0] == 0} {
+            pass $test
+        } else {
+            fail $test
+        }
+
+        # - verify that the test ran.
+        operf_check_samples_exist $ctrs
+        # - verify that at least one .jo file exists.
+        operf_check_java_object_file_exists
+        # - verify that the .jo entry shows up in the output.
+        operf_check_java_samples_exist $ctrs
+
+        # Verify the interesting symbols for this test are found in
+        # the output.  Only checking the symbols for the first group of
+        # events.
+        if {$output_check == 1} {
+            local_exec "sleep 1" "" "" 10
+            verify_output $op_java_workload_table($entry) $workload_exc $ctr_opts $test_debug_option
+        }
+
+        operf_delete_samples
+    }
+}
+
+
 proc do_single_process_test {ctrs output_check test_debug_option} {
 #   The tests are run in single process mode which does not require root
 #
 #   output_check values:
 #     1 - check output for symbols from workload table
diff --git a/testsuite/oprofile-java/oprofile-java.exp b/testsuite/oprofile-java/oprofile-java.exp
new file mode 100644
index 0000000..1c9cd0b
--- /dev/null
+++ b/testsuite/oprofile-java/oprofile-java.exp
@@ -0,0 +1,112 @@
+# oprofile-java.exp
+#   Copyright (C) 2019 IBM Corporation
+#
+# This file is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License as published by
+# the Free Software Foundation; either version 2 of the License, or
+# (at your option) any later version.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program; if not, write to the Free Software
+# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
+#
+
+global path_to_libjvmti
+
+check_user
+load_lib "op_events.exp"
+load_lib "op_util.exp"
+load_lib "operf_util.exp"
+load_lib "op_workloads.exp"
+
+# run operf against a java utility, verify that a .jo file is created,
+# and that an oreport can run successfully against the run.
+
+proc oprofile_run_java_tests {} {
+    global op_event_table
+
+    set cpu [operf_cpu_type]
+    if {$cpu == "bogus"} {
+        send "Error, not able to find a valid cpu type. Exiting.\n"
+    } else {
+        set output_check 2
+        set test_debug_option  0
+        # Test using the first event entry only.
+        set spec [lindex $op_event_table($cpu) 0]
+        do_java_test $spec $output_check $test_debug_option
+    }
+}
+
+#main
+
+set operf_version 0
+set op_version 0
+
+op_check_dependencies
+if {$op_deps_ok == 0} {
+    return
+}
+
+op_resolve_java_dependencies
+if {$java_deps_ok == 0} {
+#send "returning from java_deps_ok check"
+    send "Skipping the java test due to missing dependencies."
+    send "Oprofile needs to be built --with-java=<path/to/jdk/>, such "
+    send "that the libjvmti_oprofile.so object is built and installed."
+    send "java, javac, operf also need to be available and in the PATH."
+    return
+}
+
+# Check to see of opcontrol is installed.  Need to do this first as
+# to set opcontrol_installed.  If opcontrol is not installed, then we do
+# not make any opcontrol calls to do cleanup of existing opcontrol data samples
+# or call --deinit when exiting.
+
+operf_get_version
+op_get_version
+
+if {$op_version == 0} {
+    # could not find opcontrol
+    set opcontrol_installed 0
+} else {
+    if {$op_version < $operf_version} {
+        # Don't run the opcontrol tests at all if the opcontrol binary appears to
+        # be from an earlier version of OProfile.
+        set opcontrol_installed 0
+    } else {
+        set opcontrol_installed 1
+    }
+}
+
+if { $operf_version == 0 } {
+    send "Skipping the operf tests.\n"
+    send "Unable to find or verify the version of the OProfile operf utility.\n"
+} else {
+    # Ensure that the oprofile kernel module is unloaded, since it can
+    # interfere with proper operf operation on some platforms.
+#    if {$opcontrol_installed == 1} {
+#        local_exec "opcontrol --deinit" "" "" 100
+#        # Make sure there are no samples from the opcontrol laying
+#        # around that opreport might inadvertently pick up.
+#        op_daemon_delete_any_samples
+#    }
+    # Make sure there are no samples from the operf laying
+    # around that opreport might inadvertently pick up.
+    operf_delete_samples
+
+    case $operf_version {
+        { 0.* } {
+            # Just don't run this on old versions.
+            send "v==0, skipping. \n"
+            }
+        { * } {
+            send "Running operf against a java workload. \n"
+            oprofile_run_java_tests
+        }
+    }
+}
diff --git a/testsuite/workloads/java/Fibonacci.java b/testsuite/workloads/java/Fibonacci.java
new file mode 100644
index 0000000..8d92b6a
--- /dev/null
+++ b/testsuite/workloads/java/Fibonacci.java
@@ -0,0 +1,25 @@
+
+/* A simple java test to generate some activity to verify operf is working
+ * properly. */
+
+public class Fibonacci {
+   public static void main(String[] args) {
+      long sum=0;
+      int i = 1;
+      /* The test harness does not easily handle passing arguments
+       * to the test, so hardcode a value here.
+       * This (sum) will overflow, but that is fine as we are only after
+       * activity, and are not concerned with the result.  */
+      int n = 12345; /*Integer.parseInt(args[0]);*/
+      long f1 = 0;
+      long f2 = f1 + 1;
+      while (i <= n) {
+         sum = f1 + f2;
+         f1 = f2;
+         f2 = sum;
+         i++;
+      }
+      System.out.print(sum);
+      System.out.print("\n");
+     }
+}





_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
