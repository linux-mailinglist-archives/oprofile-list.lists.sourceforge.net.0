Return-Path: <oprofile-list-bounces@lists.sourceforge.net>
X-Original-To: lists+oprofile-list@lfdr.de
Delivered-To: lists+oprofile-list@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A561F3AB8
	for <lists+oprofile-list@lfdr.de>; Thu,  7 Nov 2019 22:48:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <oprofile-list-bounces@lists.sourceforge.net>)
	id 1iSpdH-0003zz-EY; Thu, 07 Nov 2019 21:47:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willschm@linux.vnet.ibm.com>) id 1iSpBG-0002Hm-L2
 for oprofile-list@lists.sourceforge.net; Thu, 07 Nov 2019 21:19:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:References:In-Reply-To:Subject:Cc:To:
 From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z6pgylpH2k9jWYoREzqO7tgo9RAR6OlxZuOZI/fYYcg=; b=LqxaZy0uUDRyqX/XXCmbaXQPX+
 r1N7jIQzEKLYSJYw7y3RLhu4JOuuc8PSS/ZIZlhf/o4HOh0cxtFS5w7LrSYl/k05rPbffLv0Q+8a4
 F9eKjk+qaat/AAtBKV7lemHud9qrJmo3azXt8WyWdfKvLA4EwLe3rHXNZOaclCP0BbH8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z6pgylpH2k9jWYoREzqO7tgo9RAR6OlxZuOZI/fYYcg=; b=eE8SFA+vKlj5otzUn7mZVKNbzk
 d+hrZphT02YzOFVoKiNifMmIXFhZqVK71R8BVF31xXHtoSDVW15tRyTpWcbz26EUKO/DgDjP3pU/E
 /WgAirp/cdzh7+mv/8thCX42wcPLV26Pm7xnCFLDl/2aQJkXEn1HFv+Ad7lTTNq2vFNU=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iSpBC-0048OU-B7
 for oprofile-list@lists.sourceforge.net; Thu, 07 Nov 2019 21:19:02 +0000
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 xA7LCphS028234
 for <oprofile-list@lists.sourceforge.net>; Thu, 7 Nov 2019 16:18:46 -0500
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2w4s6mmkvb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <oprofile-list@lists.sourceforge.net>; Thu, 07 Nov 2019 16:18:46 -0500
Received: from m0098409.ppops.net (m0098409.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id xA7LDCNu030438
 for <oprofile-list@lists.sourceforge.net>; Thu, 7 Nov 2019 16:18:45 -0500
Received: from ppma04dal.us.ibm.com (7a.29.35a9.ip4.static.sl-reverse.com
 [169.53.41.122])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2w4s6mmkus-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 Nov 2019 16:18:45 -0500
Received: from pps.filterd (ppma04dal.us.ibm.com [127.0.0.1])
 by ppma04dal.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id xA7LBF3g006018;
 Thu, 7 Nov 2019 21:18:44 GMT
Received: from b03cxnp08027.gho.boulder.ibm.com
 (b03cxnp08027.gho.boulder.ibm.com [9.17.130.19])
 by ppma04dal.us.ibm.com with ESMTP id 2w41ujq0fn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 Nov 2019 21:18:44 +0000
Received: from b03ledav006.gho.boulder.ibm.com
 (b03ledav006.gho.boulder.ibm.com [9.17.130.237])
 by b03cxnp08027.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 xA7LIh6I61145356
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 7 Nov 2019 21:18:43 GMT
Received: from b03ledav006.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 3520EC6057;
 Thu,  7 Nov 2019 21:18:43 +0000 (GMT)
Received: from b03ledav006.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 05A5FC6055;
 Thu,  7 Nov 2019 21:18:43 +0000 (GMT)
Received: from ltc.linux.ibm.com (unknown [9.16.170.189])
 by b03ledav006.gho.boulder.ibm.com (Postfix) with ESMTP;
 Thu,  7 Nov 2019 21:18:42 +0000 (GMT)
MIME-Version: 1.0
Date: Thu, 07 Nov 2019 15:20:05 -0600
From: willschm <willschm@linux.vnet.ibm.com>
To: William Cohen <wcohen@redhat.com>
Subject: Re: [PATCH V2] oprofile-tests Add test to exercise
 libjvmti_oprofile.so
In-Reply-To: <2d3be06a-7a3e-599c-badd-0c40f5fd825f@redhat.com>
References: <b3d743ad26a29adc1ac5d513d5f9d36d6cdca20d.camel@vnet.ibm.com>
 <01e03f9f-8f48-51ee-fdff-f69a135bcce9@redhat.com>
 <c015f3f1e51ba0d84e688dd2b8be5c07cfc3a67b.camel@vnet.ibm.com>
 <2d3be06a-7a3e-599c-badd-0c40f5fd825f@redhat.com>
Message-ID: <71522521f2d82ff622aab75c85ff259e@linux.vnet.ibm.com>
X-Sender: willschm@linux.vnet.ibm.com
User-Agent: Roundcube Webmail/1.0.1
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-11-07_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1910280000 definitions=main-1911070197
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: jvmti.so]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iSpBC-0048OU-B7
X-Mailman-Approved-At: Thu, 07 Nov 2019 21:47:58 +0000
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
Cc: oprofile-list@lists.sourceforge.net, "Carl E. Love" <cel@us.ibm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: oprofile-list-bounces@lists.sourceforge.net

On 2019-11-07 14:53, William Cohen wrote:
> On 10/15/19 2:21 PM, will schmidt wrote:
>> Hi,
>> 
>> For V2 of this patch, I have updated the logic that looks for
>> libjvmti_oprofile.so to also search /usr/lib64/ and /usr/lib/
>> for the library, stopping when the library is found.  I have
>> tested a few additional variations locally.
>> 
>> (V1:)
>> Assorted changes to exercise the use of oprofiles JVMTI hook.
>> (libjvmti_oprofile.so  - Java Virtual Machine Tools Interface).
>> 
>> This has been tested this on assorted ppc64* systems with a mixture
>> of having the libjvmti_oprofile present and not.
>> 
>>     testsuite/lib/op_util.exp:
>>     * Update compile_workload() procedure to allow building of .java 
>> files.
>>     * Add procedure op_resolve_java_dependencies() to ensure that 
>> dependencies
>>       for building and running the java test can be found. This 
>> includes java,
>>       javac, and libjvmti_oprofile.so. Since the libjvmti_oprofile.so 
>> object
>>       can't be readily found via 'which', logic is in place that 
>> assumes it can
>>       be found in a path relative to where the operf binary is found.
>> 
>>     testsuite/lib/op_workloads.exp:
>>     * Add an op_java_workload_table containing the new test.
>> 
>>     testsuite/lib/operf_util.exp:
>>     * Add procedure (check_java_samples_exist) to see that samples can 
>> be
>>       found that are associated with the generated .jo object.
>>     * Add procedure (check_java_object_file_exists) to ensure that at
>>       least one "*.jo" file was created during the run.
>>     * Add procedure (do_java_test) to do the actual test.
>> 
>>     testsuite/workloads/java/Fibonacci.java:
>>     * Add the java test itself.
>> 
>> --
>> 
>> Thanks,
>> -Will (Schmidt)
>> 
>> 
>> diff --git a/testsuite/lib/op_util.exp b/testsuite/lib/op_util.exp
>> index 7f0473d..863d46f 100644
>> --- a/testsuite/lib/op_util.exp
>> +++ b/testsuite/lib/op_util.exp
>> @@ -179,15 +179,15 @@ proc check_user {} {
>>  proc compile_workload {workload_src compile_options } {
>> 
>>      # Ideally the TCL command target_compile should be used.  
>> However,
>>      # target_compile is ignoring the compiler options argument.
>> 
>> -    set compiler "cc"
>>      set extension [lindex [split $workload_src "."] 1]
>> -    set workload_exc [ lindex [split $workload_src "."] 0]_bin
>> 
>>      if { [string compare $extension "c"] == 0 } {
>> +	set workload_exc [ lindex [split $workload_src "."] 0]_bin
>> +	set compiler "cc"
>>  	# workload is a C program, see if it needs to be compiled.
>>  	set test [local_exec "ls $workload_exc" "" "" 10]
>> 
>>  	if { [lindex $test 0] == 1 } {
>>  	    # workload has not been compiled
>> @@ -198,10 +198,28 @@ proc compile_workload {workload_src 
>> compile_options } {
>>  	    }
>>  	}
>>  	return [ lindex [split $workload_src "."] 0]_bin
>>      }
>> 
>> +    if { [string compare $extension "java"] == 0 } {
>> +	set compiler "javac"
>> +	set workload_exc [ lindex [split $workload_src "."] 0].class
>> +	# workload is a java program, see if it needs to be compiled.
>> +	set test [local_exec "ls $workload_exc" "" "" 10]
>> +	if { [lindex $test 0] == 1 } {
>> +	    # workload has not been compiled
>> +	    set result [local_exec "$compiler $workload_src 
>> $compile_options" "" "" 10 ]
>> +	    if { [lindex $result 0] == 1 } {
>> +		print "\nERROR compiling workload: $workload_src"
>> +		print "Compiler error message: $result\n"
>> +	    }
>> +	}
>> +	set path_and_basename [lindex [split $workload_src "."] 0]
>> +	set classonly [ lindex [ split $path_and_basename "/"] 2]
>> +	return $classonly
>> +    }
>> +
>>      # Assume the workload is a script, set the executable
>>      # name to the same as the source name.
>>      return $workload_src
>>  }
>> 
>> @@ -243,5 +261,67 @@ proc op_check_dependencies {} {
>>          set op_deps_ok 0
>>      } else {
>>          set op_deps_ok 1
>>      }
>>  }
>> +
>> +proc op_resolve_java_dependencies {} {
>> +    global java_deps_ok
>> +    global path_to_libjvmti
>> +    set libjvmti_oprofile_present 0
>> +    set java_present 0
>> +    set javac_present 0
>> +    set operf_present 0
>> +
>> +    set path_to_operf [ local_exec "which operf" "" "" 100 ]
>> +    if {[regexp "operf" $path_to_operf operf_present] == 1} {
>> +	verbose "Found operf ($operf_present) at $path_to_operf ."
>> +    } else {
>> +	send "Didn't find operf.\n"
>> +    }
>> +
>> +    set path_to_javac [ local_exec "which javac" "" "" 100 ]
>> +    if {[regexp "javac" $path_to_javac javac_present] == 1} {
>> +	verbose "Found javac ($javac_present) at $path_to_javac ."
>> +    } else {
>> +	send "javac is require to build the java testcase.  I didn't find 
>> javac via 'which'.\n"
>> +    }
>> +
>> +    set path_to_java [ local_exec "which java" "" "" 100 ]
>> +    if {[regexp "java" $path_to_java java_present] == 1} {
>> +	verbose "Found java ($java_present) at $path_to_java ."
>> +    } else {
>> +	send "java is require to run the java testcase.  I didn't find java 
>> via 'which'.\n"
>> +    }
>> +
>> +    # Finding libjvmti_oprofile.so.
>> +    # In the case of a userspace build, the oprofile install location 
>> has
>> +    # sibling /bin/ and /lib/ directories, so as long as we have 
>> found the
>> +    # operf binary, we should be able to infer the location of 
>> libjvmti_oprofile.so.
>> +    set path_to_libjvmti [string map {bin/operf 
>> lib/oprofile/libjvmti_oprofile.so} $path_to_operf ]
>> +    set path_to_libjvmti [string trimleft $path_to_libjvmti "0\ \{"]
>> +    set path_to_libjvmti [string trim $path_to_libjvmti "\ \n\r\}"]
>> +    set libjvmti_oprofile_present [file exists $path_to_libjvmti ]
>> +    if {$libjvmti_oprofile_present == 1 } {
>> +	send "found libjvmti_oprofile ($libjvmti_oprofile_present) at 
>> $path_to_libjvmti . \n"
>> +    } else {
>> +	send "did not find libjvmti_oprofile in $path_to_libjvmti ) .\n"
>> +	# search a few other common spots for the library.
>> +	foreach path_to_libjvmti  { /usr/lib64/libjvmti_oprofile.so 
>> /usr/lib/libjvmti_oprofile.so } {
> 
> Hi,
> 
> There are some other places that libjvmti_oprofile.so might end up.  
> For rhel7:
> 
> /usr/lib64/oprofile/libjvmti_oprofile.so
> 
> For Red Hat developer tool 9 and 8:
> 
> /opt/rh/devtoolset-9/root/usr/lib64/libjvmti_oprofile.so
> /opt/rh/devtoolset-8/root/usr/lib64/libjvmti_oprofile.so
> 
> For locally built oprofile default installs ended up with:
> 
> /usr/local/lib/oprofile/lib/libjvmti_oprofile.so
> 
> It might be better to determine which operf is being used and use the
> beginning of its path to find the associated jvmti.so

Right.. earlier versions of this found some false positives in the 
environments I have, which is why the first spot I check was/is relative 
to wherever i found 'operf'.    Looks like I only look for a 'lib' 
sibling, so adding a lib64 sibling will probably resolve the others you 
have listed. .. as long as the operf binary is in a relative path to the 
libs.

> /usr/lib64/oprofile/libjvmti_oprofile.so

So, operf for this one is at .. /usr/bin/operf ?

> /opt/rh/devtoolset-9/root/usr/lib64/libjvmti_oprofile.so
> /opt/rh/devtoolset-8/root/usr/lib64/libjvmti_oprofile.so

operf for these in /opt/rh/devtoolset-{7,8}/root/usr/bin/operf ?

> /usr/local/lib/oprofile/lib/libjvmti_oprofile.so

with operf at /usr/local/lib/oprofile/bin/operf  ?


Thanks
-Will (Schmidt)

> 
> -Will Cohen



_______________________________________________
oprofile-list mailing list
oprofile-list@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/oprofile-list
