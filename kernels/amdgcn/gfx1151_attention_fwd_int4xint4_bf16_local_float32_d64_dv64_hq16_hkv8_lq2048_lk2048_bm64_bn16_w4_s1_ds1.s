	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x60
	s_load_b64 s[28:29], s[0:1], 0x0
.Ltmp0:
	.loc	1 571 21 prologue_end           ; attention.py:571:21
	v_and_b32_e32 v3, 1, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v33, 1, v0
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s6, s2, 6
	.loc	1 583 26                        ; attention.py:583:26
	s_lshl_b32 s2, s3, 11
	s_mov_b32 s31, 0x31027000
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s26, s6, s2
	.loc	1 584 86 is_stmt 0              ; attention.py:584:86
	v_lshlrev_b32_e32 v1, 4, v3
	.loc	1 584 26                        ; attention.py:584:26
	v_or_b32_e32 v2, s26, v33
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v4, s6, v33
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_u32 v54, v0, 4, 1
	s_clause 0x2
	s_load_b64 s[4:5], s[0:1], 0x7c
	s_load_b64 s[24:25], s[0:1], 0x38
	s_load_b32 s7, s[0:1], 0x84
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v59, 4, v0
	v_or_b32_e32 v56, 2, v54
	v_or_b32_e32 v55, 4, v54
	v_or_b32_e32 v53, 6, v54
	.loc	1 584 26                        ; attention.py:584:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[5:6], null, s34, v2, v[1:2]
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s2, s34, v1
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s29, s29, 0xffff
	v_lshlrev_b32_e32 v6, 1, v0
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v52, 8, v54
	v_or_b32_e32 v51, 10, v54
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 s2, vcc_lo, s2
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v58, 12, v54
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v2, 0x80000000, v5, s2
	v_and_or_b32 v12, v6, 30, v54
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v5, 0x60, v0
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s6, s5
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s9, s6, s4
	.loc	1 585 26                        ; attention.py:585:26
	buffer_load_b128 v[7:10], v2, s[28:31], 0 offen
	v_lshlrev_b32_e32 v61, 2, v12
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v2, 15, v0
	v_lshrrev_b32_e32 v11, 1, v5
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, s7
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s9, s9, s7
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v62, 4, v61
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, 64
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v60, v11, v2
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s8, s2, 0x800
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s9, s9, 0
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s8, s8, 15
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v57, 14, v54
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v11, s6, v60
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s10, s8, 31
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s27, s9, 0x7ffffff0
	.loc	1 619 34                        ; attention.py:619:34
	s_lshr_b32 s10, s10, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, s10
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x800, v11
	.loc	1 619 33                        ; attention.py:619:33
	s_and_b32 s33, s8, -16
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_ge_i32 s27, s33
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v34, v61, v7
	ds_bpermute_b32 v35, v61, v8
	ds_bpermute_b32 v36, v61, v9
	ds_bpermute_b32 v38, v61, v10
	ds_bpermute_b32 v37, v62, v7
	ds_bpermute_b32 v39, v62, v8
	ds_bpermute_b32 v40, v62, v9
	ds_bpermute_b32 v47, v62, v10
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[8:15], s[0:1], 0x8
	.loc	1 591 17 is_stmt 1              ; attention.py:591:17
	v_or_b32_e32 v7, s26, v60
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x68
	s_load_b128 s[36:39], s[0:1], 0x28
	v_dual_mov_b32 v77, 0x5410 :: v_dual_add_nc_u32 v4, s7, v4
	v_dual_mov_b32 v78, 0x7632 :: v_dual_lshlrev_b32 v7, 1, v7
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s0, 0, v3
	v_dual_mov_b32 v11, 0x7531 :: v_dual_and_b32 v6, 24, v6
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s1, s3, 31
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	v_cndmask_b32_e64 v81, 0x7632, v77, s0
	v_cndmask_b32_e64 v82, 0x5410, v78, s0
	v_dual_mov_b32 v32, 0 :: v_dual_lshlrev_b32 v41, 2, v2
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v9, 0x70, v0
	v_dual_mov_b32 v117, 0xff800000 :: v_dual_lshlrev_b32 v12, 7, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	v_mov_b32_e32 v10, 0x6420
	buffer_load_u16 v115, v7, s[28:31], 0 offen
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_and_b32_e32 v7, 16, v0
	v_lshlrev_b32_e32 v13, 5, v0
	.loc	1 566 23 is_stmt 1              ; attention.py:566:23
	s_lshr_b32 s1, s1, 28
	v_cndmask_b32_e64 v83, 0x7531, v10, s0
	v_lshl_or_b32 v71, v2, 5, v6
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s17, 0, v7
	v_cndmask_b32_e64 v84, 0x6420, v11, s0
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s7, s3, s1
	.loc	1 748 47                        ; attention.py:748:47
	v_subrev_nc_u32_e32 v70, s4, v4
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s4, s7, -16
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v44, v38, v47, s17
	v_cndmask_b32_e64 v46, v35, v39, s17
	v_cndmask_b32_e64 v45, v34, v37, s17
	v_cndmask_b32_e64 v48, v47, v38, s17
	v_cndmask_b32_e64 v50, v39, v35, s17
	v_cndmask_b32_e64 v49, v37, v34, s17
	v_lshl_or_b32 v37, v81, 8, v81
	v_lshl_or_b32 v38, v82, 8, v82
	v_lshl_or_b32 v39, v83, 8, v83
	v_cndmask_b32_e64 v89, 0x1054, v77, s17
	v_cndmask_b32_e64 v90, 0x3276, v78, s17
	v_dual_mov_b32 v24, 0 :: v_dual_lshlrev_b32 v63, 3, v3
	v_dual_mov_b32 v16, 0 :: v_dual_lshlrev_b32 v3, 2, v0
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v92, 3, v0
	v_bfe_i32 v79, v0, 2, 1
	v_dual_mov_b32 v0, 0 :: v_dual_and_b32 v85, 0x700, v12
	v_mov_b32_e32 v28, v32
	v_lshrrev_b32_e32 v86, 2, v9
	v_cndmask_b32_e64 v87, 0x90, 0, s0
	v_dual_mov_b32 v29, v32 :: v_dual_and_b32 v88, 0x160, v13
	v_dual_mov_b32 v23, v32 :: v_dual_and_b32 v38, 0x760032, v38
	v_dual_mov_b32 v10, v32 :: v_dual_and_b32 v37, 0x760032, v37
	v_dual_mov_b32 v12, v32 :: v_dual_and_b32 v39, 0x750031, v39
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v43, v36, v40, s17
	v_cndmask_b32_e64 v47, v40, v36, s17
	v_xor_b32_e32 v34, 8, v71
	v_xor_b32_e32 v35, 16, v71
	v_xor_b32_e32 v36, 24, v71
	v_lshl_or_b32 v40, v84, 8, v84
	v_lshl_or_b32 v94, v89, 8, v89
	v_lshl_or_b32 v90, v90, 8, v90
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s3, s3, s4
	v_and_or_b32 v1, v33, 15, v1
	v_mul_lo_u32 v33, s23, v33
	v_dual_mov_b32 v26, v32 :: v_dual_add_nc_u32 v69, s5, v4
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s5, s7, 4
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_u32 s7, s3, 0x10007
	v_lshrrev_b32_e32 v5, 2, v5
	v_dual_mov_b32 v9, v32 :: v_dual_and_b32 v40, 0x750031, v40
	v_mov_b32_e32 v11, v32
	v_mov_b32_e32 v13, v32
	v_mov_b32_e32 v14, v32
	v_mov_b32_e32 v15, v32
	v_mov_b32_e32 v4, v32
	v_xor_b32_e32 v91, v87, v86
	v_and_or_b32 v77, 0x90, v79, v88
	s_add_i32 s7, s3, s7
	v_add_nc_u32_e32 v86, 0, v34
	v_add_nc_u32_e32 v87, 0, v35
	v_add_nc_u32_e32 v88, 0, v36
	v_lshl_or_b32 v34, v37, 4, v37
	v_lshl_or_b32 v35, v38, 4, v38
	v_lshl_or_b32 v36, v39, 4, v39
	v_and_b32_e32 v38, 0x540054, v94
	v_and_b32_e32 v39, 0x760076, v90
	s_sext_i32_i8 s7, s7
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v64, 7, v63
	.loc	1 569 19                        ; attention.py:569:19
	s_ashr_i32 s7, s7, 1
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v65, 6, v63
	v_or_b32_e32 v66, 5, v63
	v_or_b32_e32 v67, 4, v63
	v_dual_mov_b32 v25, v32 :: v_dual_and_b32 v42, 28, v3
	v_xor_b32_e32 v80, v3, v5
	v_dual_mov_b32 v27, v32 :: v_dual_lshlrev_b32 v72, 2, v1
	v_dual_mov_b32 v30, v32 :: v_dual_add_nc_u32 v93, 0, v85
	v_dual_mov_b32 v3, v32 :: v_dual_and_b32 v102, 0x7060302, v35
	v_dual_mov_b32 v6, v32 :: v_dual_and_b32 v101, 0x7060302, v34
	v_xor_b32_e32 v95, 16, v77
	v_lshl_or_b32 v37, v40, 4, v40
	v_lshl_or_b32 v34, v38, 4, v38
	v_lshl_or_b32 v35, v39, 4, v39
	v_dual_mov_b32 v116, 0xff800000 :: v_dual_add_nc_u32 v105, v33, v63
	.loc	1 710 33                        ; attention.py:710:33
	s_lshl3_add_u32 s7, s5, s7
	.loc	1 754 27                        ; attention.py:754:27
	s_mul_i32 s3, s22, s3
	.loc	1 710 32                        ; attention.py:710:32
	s_lshl_b32 s12, s7, 11
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s5, s21, s5
	v_dual_mov_b32 v73, 0xff800000 :: v_dual_mov_b32 v68, 0
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e64 s1, s35, v41
	v_dual_mov_b32 v31, v32 :: v_dual_add_nc_u32 v78, 0, v80
	v_dual_mov_b32 v17, v32 :: v_dual_mov_b32 v80, v70
	v_dual_mov_b32 v18, v32 :: v_dual_mov_b32 v81, v70
	v_dual_mov_b32 v19, v32 :: v_dual_mov_b32 v82, v70
	v_dual_mov_b32 v20, v32 :: v_dual_mov_b32 v83, v69
	v_dual_mov_b32 v21, v32 :: v_dual_mov_b32 v84, v69
	v_dual_mov_b32 v22, v32 :: v_dual_mov_b32 v85, v69
	v_dual_mov_b32 v1, v32 :: v_dual_add_nc_u32 v90, 0, v95
	v_dual_mov_b32 v2, v32 :: v_dual_add_nc_u32 v89, v93, v91
	v_dual_mov_b32 v5, v32 :: v_dual_and_b32 v104, 0x7050301, v37
	v_dual_mov_b32 v7, v32 :: v_dual_add_nc_u32 v106, v33, v67
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v74, 3, v63
	v_or_b32_e32 v75, 2, v63
	v_or_b32_e32 v76, 1, v63
	.loc	1 714 31                        ; attention.py:714:31
	v_cmp_gt_i32_e64 s4, s34, v42
	v_xor_b32_e32 v79, 64, v72
	v_lshl_or_b32 v91, s7, 10, v59
	v_or_b32_e32 v92, s12, v92
	v_or_b32_e32 v93, s12, v54
	v_or_b32_e32 v94, s12, v56
	v_or_b32_e32 v95, s12, v55
	v_or_b32_e32 v96, s12, v53
	v_or_b32_e32 v97, s12, v52
	v_or_b32_e32 v98, s12, v51
	v_or_b32_e32 v99, s12, v58
	v_or_b32_e32 v100, s12, v57
	v_and_b32_e32 v103, 0x7050301, v36
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v107, v33, v66
	v_add_nc_u32_e32 v108, v33, v65
	v_add_nc_u32_e32 v109, v33, v64
	v_and_b32_e32 v110, 0x5040504, v34
	v_and_b32_e32 v111, 0x7060706, v35
	v_add_nc_u32_e32 v112, 1, v105
	v_add_nc_u32_e32 v113, 2, v105
	v_add_nc_u32_e32 v114, 3, v105
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s53, s20, 0x3fb8aa3b
	.loc	1 752 25                        ; attention.py:752:25
	s_mul_i32 s6, s23, s6
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s39, s39, 0xffff
	s_add_i32 s22, s3, s5
	s_mov_b32 s52, 0x76543210
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
	s_mov_b32 s50, s30
	s_mov_b32 s51, s31
	.loc	1 794 21                        ; attention.py:794:21
	s_lshl_b32 s54, s7, 7
	s_and_b32 s49, s11, 0xffff
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s40, s14
	s_mov_b32 s44, s38
	s_mov_b32 s48, s10
	s_mov_b32 s38, s30
	s_mov_b32 s28, s8
	s_mov_b32 s29, s9
	s_mov_b32 s41, s15
	s_mov_b32 s45, s39
	s_mov_b32 s39, s31
	s_add_i32 s22, s22, s6
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v115, 16, v115
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 717 33                        ; attention.py:717:33
	v_dual_mov_b32 v34, v32 :: v_dual_add_nc_u32 v123, s27, v92
	v_mov_b32_e32 v39, v32
	v_dual_mov_b32 v36, v32 :: v_dual_add_nc_u32 v133, 0, v71
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 711 32                        ; attention.py:711:32
	v_mad_u64_u32 v[131:132], null, v123, s34, v[42:43]
	.loc	1 717 33                        ; attention.py:717:33
	v_mov_b32_e32 v33, v32
	v_mov_b32_e32 v35, v32
	v_mov_b32_e32 v37, v32
	.loc	1 771 36                        ; attention.py:771:36
	s_lshr_b32 s16, s27, 1
	.loc	1 717 33                        ; attention.py:717:33
	v_mov_b32_e32 v38, v32
	v_dual_mov_b32 v130, v39 :: v_dual_mov_b32 v127, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v128, v37
	v_dual_mov_b32 v126, v35 :: v_dual_mov_b32 v125, v34
	v_dual_mov_b32 v129, v38 :: v_dual_mov_b32 v124, v33
	v_mov_b32_e32 v123, v32
	.loc	1 712 32                        ; attention.py:712:32
	v_cndmask_b32_e64 v33, 0x80000000, v131, s4
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v136, s27, v76
	v_or_b32_e32 v122, s27, v63
	v_or_b32_e32 v119, s27, v66
	v_or_b32_e32 v118, s27, v67
	.loc	1 712 32                        ; attention.py:712:32
	buffer_load_b32 v33, v33, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 774 30                        ; attention.py:774:30
	v_add_nc_u32_e32 v39, s16, v91
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s15, s27, 4
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s8, v136, v80
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s18, s15, s54
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s9, v136, v83
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s10, v122, v70
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s11, v122, v69
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s21, s18, s35
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s16, v119, v80
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s18, v119, v83
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s19, v118, v70
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s20, v118, v69
	.loc	1 774 30                        ; attention.py:774:30
	v_mad_u64_u32 v[118:119], null, v39, s35, v[41:42]
	.loc	1 752 25                        ; attention.py:752:25
	s_add_i32 s14, s22, s27
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v134, s27, v74
	v_or_b32_e32 v135, s27, v75
	.loc	1 749 21                        ; attention.py:749:21
	s_and_b32 s8, s8, s9
	s_and_b32 s9, s10, s11
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v121, s27, v64
	v_or_b32_e32 v120, s27, v65
	.loc	1 749 21                        ; attention.py:749:21
	s_and_b32 s8, vcc_lo, s8
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s3, v134, v82
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s5, v134, v85
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s6, v135, v81
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s7, v135, v84
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s9, vcc_lo, s9
	.loc	1 775 32 is_stmt 1              ; attention.py:775:32
	v_cndmask_b32_e64 v39, 0x80000000, v118, s1
	.loc	1 761 36                        ; attention.py:761:36
	v_add_lshl_u32 v122, s14, v108, 1
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s12, v121, v82
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s13, v121, v85
	.loc	1 761 36                        ; attention.py:761:36
	v_add_lshl_u32 v121, s14, v109, 1
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s15, v120, v84
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s6, s6, s7
	s_and_b32 s5, s3, s5
	s_and_b32 s10, s16, s18
	s_and_b32 s3, vcc_lo, s6
	s_and_b32 s6, vcc_lo, s5
	s_and_b32 s7, s19, s20
	.loc	1 775 32 is_stmt 1              ; attention.py:775:32
	v_mov_b16_e32 v40.l, 0
	.loc	1 749 21                        ; attention.py:749:21
	s_and_b32 s11, vcc_lo, s7
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v132, v93, s27, 1
	v_add_lshl_u32 v137, v94, s27, 1
	v_add_lshl_u32 v138, v95, s27, 1
	.loc	1 761 36                        ; attention.py:761:36
	v_mov_b16_e64 v134.l, v40.l
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v139, v96, s27, 1
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v73, v73, v73
	.loc	1 763 25                        ; attention.py:763:25
	.loc	1 787 39                        ; attention.py:787:39
	.loc	1 712 32                        ; attention.py:712:32
	s_waitcnt vmcnt(0)
	ds_store_b32 v78, v33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[33:34], v133
	ds_load_b64 v[35:36], v86
	ds_load_b64 v[37:38], v87
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[123:130], v[33:34], v[49:50], v[123:130] neg_lo:[1,1,0]
	.loc	1 712 32                        ; attention.py:712:32
	ds_load_b64 v[33:34], v88
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[123:130], v[35:36], v[47:48], v[123:130] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[123:130], v[37:38], v[45:46], v[123:130] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[123:130], v[33:34], v[43:44], v[123:130] neg_lo:[1,1,0]
	.loc	1 761 36                        ; attention.py:761:36
	v_add_lshl_u32 v33, s14, v105, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v131, v123
	.loc	1 761 36                        ; attention.py:761:36
	v_add_lshl_u32 v123, s14, v112, 1
	v_cndmask_b32_e64 v33, 0x80000000, v33, s9
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v133, v125
	v_cvt_f32_i32_e32 v34, v126
	v_cvt_f32_i32_e32 v35, v127
	.loc	1 761 36                        ; attention.py:761:36
	v_cndmask_b32_e64 v118, 0x80000000, v123, s8
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v36, v128
	.loc	1 761 36                        ; attention.py:761:36
	v_add_lshl_u32 v125, s14, v113, 1
	v_add_lshl_u32 v126, s14, v114, 1
	v_add_lshl_u32 v127, s14, v106, 1
	v_add_lshl_u32 v128, s14, v107, 1
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s14, v120, v81
	.loc	1 761 36                        ; attention.py:761:36
	s_clause 0x1
	buffer_load_u16 v118, v118, s[44:47], 0 offen
	buffer_load_u16 v33, v33, s[44:47], 0 offen
	v_cndmask_b32_e64 v123, 0x80000000, v126, s6
	v_cndmask_b32_e64 v119, 0x80000000, v125, s3
	v_cndmask_b32_e64 v125, 0x80000000, v127, s11
	.loc	1 749 21                        ; attention.py:749:21
	s_and_b32 s14, s14, s15
	s_and_b32 s15, s12, s13
	s_and_b32 s12, vcc_lo, s10
	s_and_b32 s13, vcc_lo, s14
	s_and_b32 s14, vcc_lo, s15
	.loc	1 761 36                        ; attention.py:761:36
	v_cndmask_b32_e64 v126, 0x80000000, v128, s12
	v_cndmask_b32_e64 v122, 0x80000000, v122, s13
	v_cndmask_b32_e64 v121, 0x80000000, v121, s14
	s_clause 0x5
	buffer_load_u16 v123, v123, s[44:47], 0 offen
	buffer_load_u16 v119, v119, s[44:47], 0 offen
	buffer_load_u16 v126, v126, s[44:47], 0 offen
	buffer_load_u16 v125, v125, s[44:47], 0 offen
	buffer_load_u16 v121, v121, s[44:47], 0 offen
	buffer_load_u16 v122, v122, s[44:47], 0 offen
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v37, v129
	v_cvt_f32_i32_e32 v38, v130
	.loc	1 761 36                        ; attention.py:761:36
	v_mov_b16_e32 v120.l, v40.l
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v124, v124
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v127.l, v40.l
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v34, v115, v34
	v_mul_f32_e32 v36, v115, v36
	v_mul_f32_e32 v38, v115, v38
	v_mul_f32_e32 v124, v115, v124
	.loc	1 761 36                        ; attention.py:761:36
	s_waitcnt vmcnt(6)
	v_cndmask_b16 v33.h, 0xff80, v118.l, s8
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v118, s21, v41, 1
	.loc	1 761 36                        ; attention.py:761:36
	v_cndmask_b16 v33.l, 0xff80, v33.l, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v118, 0x80000000, v118, s1
	.loc	1 761 36                        ; attention.py:761:36
	v_mov_b16_e32 v40.h, v33.l
	s_waitcnt vmcnt(5)
	v_cndmask_b16 v123.h, 0xff80, v123.l, s6
	s_waitcnt vmcnt(4)
	v_cndmask_b16 v123.l, 0xff80, v119.l, s3
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v125.h, 0xff80, v126.l, s12
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_b64 v[129:130], v118, s[36:39], 0 offen
	.loc	1 761 36                        ; attention.py:761:36
	v_cndmask_b16 v125.l, 0xff80, v125.l, s11
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v126.h, 0xff80, v121.l, s14
	.loc	1 762 35                        ; attention.py:762:35
	v_perm_b32 v118, v123, v33, v101
	v_perm_b32 v119, v123, v33, v102
	.loc	1 761 36                        ; attention.py:761:36
	v_mov_b16_e32 v120.h, v123.l
	v_mov_b16_e32 v123.l, v40.l
	v_mov_b16_e32 v33.l, v40.l
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v126.l, 0xff80, v122.l, s13
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v40
	v_cmp_neq_f32_e64 s5, 0xff800000, v120
	v_cmp_neq_f32_e64 s7, 0xff800000, v123
	v_cmp_neq_f32_e64 s10, 0xff800000, v33
	.loc	1 762 35                        ; attention.py:762:35
	v_perm_b32 v121, v126, v125, v101
	v_perm_b32 v122, v126, v125, v102
	.loc	1 761 36                        ; attention.py:761:36
	v_mov_b16_e64 v134.h, v126.l
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s7, s6, s7
	.loc	1 761 36                        ; attention.py:761:36
	v_mov_b16_e32 v126.l, v40.l
	.loc	1 763 25                        ; attention.py:763:25
	v_cndmask_b32_e64 v33, 0, 1, s7
	s_and_b32 s5, s3, s5
	s_and_b32 s10, s8, s10
	.loc	1 761 36                        ; attention.py:761:36
	v_mov_b16_e32 v40.h, v125.l
	v_mov_b16_e32 v125.l, v40.l
	.loc	1 763 25                        ; attention.py:763:25
	v_cndmask_b32_e64 v120, 0, 1, s5
	v_cndmask_b32_e64 v123, 0, 1, s10
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 763 34 is_stmt 0              ; attention.py:763:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v126
	.loc	1 763 25                        ; attention.py:763:25
	s_and_b32 s9, s9, s15
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v125
	.loc	1 763 25                        ; attention.py:763:25
	v_cndmask_b32_e64 v125, 0, 1, s9
	v_or_b16 v120.h, v120.l, v33.l
	v_mov_b16_e32 v33.l, v123.l
	s_and_b32 s8, s14, s16
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v134
	.loc	1 763 25                        ; attention.py:763:25
	v_cndmask_b32_e64 v126, 0, 1, s8
	v_mov_b16_e32 v120.l, v125.l
	v_lshlrev_b16 v33.l, 8, v33.l
	s_and_b32 s12, s12, s3
	s_and_b32 s6, s13, s18
	.loc	1 763 34                        ; attention.py:763:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v40
	.loc	1 763 25                        ; attention.py:763:25
	v_cndmask_b32_e64 v123, 0, 1, s6
	v_or_b16 v120.l, v120.l, v33.l
	v_mov_b16_e32 v33.l, v126.l
	v_cndmask_b32_e64 v126, 0, 1, s12
	s_and_b32 s11, s11, s13
	.loc	1 727 37 is_stmt 1              ; attention.py:727:37
	v_add_lshl_u32 v134, v97, s27, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 763 25                        ; attention.py:763:25
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v125.h, v123.l, v33.l
	v_mov_b16_e32 v33.l, v126.l
	v_cndmask_b32_e64 v123, 0, 1, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v125.l, v123.l, v33.l
	.loc	1 727 37                        ; attention.py:727:37
	buffer_load_u16 v33, v132, s[40:43], 0 offen
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v123, v115, v131
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v132, v99, s27, 1
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v127.h, v130.l
	v_and_b32_e32 v126, 0xffff0000, v130
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v130, v115, v133
	.loc	1 797 41                        ; attention.py:797:41
	v_and_b32_e32 v128, 0xffff0000, v129
	v_mov_b16_e64 v40.h, v129.l
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v129, v98, s27, 1
	v_add_lshl_u32 v133, v100, s27, 1
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v37, v115, v37
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s27, s27, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	s_cmp_lt_i32 s27, s33
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v123, v123, v33
	.loc	1 727 37                        ; attention.py:727:37
	buffer_load_u16 v33, v137, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v124, v124, v33
	.loc	1 727 37                        ; attention.py:727:37
	buffer_load_u16 v33, v138, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v33, v130, v33
	.loc	1 727 37                        ; attention.py:727:37
	s_clause 0x1
	buffer_load_u16 v130, v139, s[40:43], 0 offen
	buffer_load_u16 v131, v134, s[40:43], 0 offen
	.loc	1 775 32                        ; attention.py:775:32
	buffer_load_b32 v134, v39, s[48:51], 0 offen
	.loc	1 727 37                        ; attention.py:727:37
	s_clause 0x2
	buffer_load_u16 v129, v129, s[40:43], 0 offen
	buffer_load_u16 v132, v132, s[40:43], 0 offen
	buffer_load_u16 v133, v133, s[40:43], 0 offen
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v39, 16, v130
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v130, 16, v131
	.loc	1 775 32                        ; attention.py:775:32
	s_waitcnt vmcnt(3)
	v_bfe_i32 v135, v134, 0, 8
	.loc	1 727 37                        ; attention.py:727:37
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v129, 16, v129
	.loc	1 732 30                        ; attention.py:732:30
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v35, v115, v35 :: v_dual_lshlrev_b32 v132, 16, v132
	v_mul_f32_e32 v39, v34, v39
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v34.l, v134.l, 15
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v131, v36, v129
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v34.h, 4, v134.l
	.loc	1 732 30                        ; attention.py:732:30
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v136, v35, v130 :: v_dual_lshlrev_b32 v35, 16, v133
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s3, 7, v34.l
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v36, 8, v134
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v34.h, v34.h, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v130, v37, v132 :: v_dual_mul_f32 v129, v38, v35
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e64 v35.l, v135.l
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e64 v37.l, v134.h
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s13, 0, v35.l
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v35.l, 0, -16, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_or_b16 v137.l, v34.l, v35.l
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v34.l, v34.h, -16
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v35, v37, 0, 8
	v_lshrrev_b32_e32 v37, 24, v134
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v138.l, v34.h, v34.l, s13
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v34, v36, 0, 8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s14, 0, v35.l
	v_cmp_gt_i16_e64 s3, 0, v34.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v34.l, v134.h, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s13, 7, v34.l
	.loc	1 786 29 is_stmt 0              ; attention.py:786:29
	v_cndmask_b16 v34.h, 0, -16, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b16 v35.l, v34.l, v34.h
	.loc	1 775 32 is_stmt 1              ; attention.py:775:32
	v_bfe_i32 v34, v37, 0, 8
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v35, v35, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s13, 0, v34.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v34.l, v36.l, 15
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s15, 7, v34.l
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v35, v127, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v34.h, 0, -16, s15
	v_or_b16 v38.l, v34.l, v34.h
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v34.l, 4, v36.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b16 v34.l, v34.l, 15
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v34.h, v34.l, -16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 787 30 is_stmt 0              ; attention.py:787:30
	v_cndmask_b16 v36.l, v34.l, v34.h, s3
	.loc	1 785 32 is_stmt 1              ; attention.py:785:32
	v_lshrrev_b32_e32 v34, 20, v134
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v36, v36, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v34.l, v34.l, 15
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v34.h, v34.l, -16
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v132, v128, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v139.l, v34.l, v34.h, s14
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v34.l, v37.l, 15
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v36, v139, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s3, 7, v34.l
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v34.h, 0, -16, s3
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s3, v132, v132
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v140.l, v34.l, v34.h
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v34.l, 4, v37.l
	.loc	1 762 35                        ; attention.py:762:35
	ds_bpermute_b32 v37, v61, v118
	ds_bpermute_b32 v118, v62, v119
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v34.h, v34.l, -16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 787 30 is_stmt 0              ; attention.py:787:30
	v_cndmask_b16 v34.l, v34.l, v34.h, s13
	.loc	1 767 25 is_stmt 1              ; attention.py:767:25
	v_cmp_neq_f32_e64 s13, 0xff800000, v117
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v34, v34, 0, 16
	s_delay_alu instid0(VALU_DEP_1)
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 762 35                        ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v141, v118, v37, s17
	v_cndmask_b32_e64 v135, v37, v118, s17
	ds_bpermute_b32 v118, v62, v122
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v122, v127, v36
	v_bfe_i32 v36, v140, 0, 16
	.loc	1 762 35                        ; attention.py:762:35
	ds_bpermute_b32 v37, v61, v121
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v127, v126, v34
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e32 v34.h, v40.l
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v121, v126, v36
	v_bfe_i32 v36, v137, 0, 16
	v_cvt_f32_i32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v36, v40, v36
	.loc	1 762 35 is_stmt 1              ; attention.py:762:35
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v134, v118, v37, s17
	v_cndmask_b32_e64 v133, v37, v118, s17
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v37, v38, 0, 16
	.loc	1 763 25                        ; attention.py:763:25
	v_perm_b32 v38, v125, v120, v104
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v34.l, v36.h
	v_cmp_o_f32_e64 s15, v36, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 763 25 is_stmt 1              ; attention.py:763:25
	ds_bpermute_b32 v38, v62, v38
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v34, 1, v34
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_mul_f32_e32 v128, v128, v37
	.loc	1 763 25 is_stmt 1              ; attention.py:763:25
	v_perm_b32 v37, v125, v120, v103
	.loc	1 814 30                        ; attention.py:814:30
	v_add3_u32 v120, v36, v34, 0x7fff
	.loc	1 814 31 is_stmt 0              ; attention.py:814:31
	v_bfe_i32 v36, v138, 0, 16
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v34.h, v40.l
	v_cmp_o_f32_e64 s18, v128, v128
	.loc	1 763 25 is_stmt 1              ; attention.py:763:25
	ds_bpermute_b32 v37, v61, v37
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v36, v40, v36
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v40.h, v40.l
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v34.l, v36.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s16, v36, v36
	v_and_b32_e32 v34, 1, v34
	v_cmp_o_f32_e64 s14, v35, v35
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v125, v36, v34, 0x7fff
	v_mov_b16_e32 v34.h, v40.l
	v_mov_b16_e32 v34.l, v35.h
	.loc	1 761 36                        ; attention.py:761:36
	v_lshlrev_b32_e32 v36, 16, v135
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v125.l, 0x7fff, v120.h, s15
	v_cmp_o_f32_e64 s15, v122, v122
	v_cndmask_b16 v125.h, 0x7fff, v125.h, s16
	v_and_b32_e32 v34, 1, v34
	.loc	1 762 35                        ; attention.py:762:35
	v_mul_f32_e32 v36, 0x3fb8aa3b, v36
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s19, v121, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v119, v35, v34, 0x7fff
	.loc	1 761 36                        ; attention.py:761:36
	v_lshlrev_b32_e32 v34, 16, v141
	.loc	1 762 25                        ; attention.py:762:25
	v_dual_fmac_f32 v36, s53, v136 :: v_dual_and_b32 v35, 0xffff0000, v141
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s16, v127, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v119.l, 0x7fff, v119.h, s14
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v34, 0x3fb8aa3b, v34 :: v_dual_mul_f32 v35, 0x3fb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 762 25 is_stmt 0              ; attention.py:762:25
	v_dual_fmac_f32 v34, s53, v123 :: v_dual_fmac_f32 v35, s53, v124
	.loc	1 761 36 is_stmt 1              ; attention.py:761:36
	v_and_b32_e32 v124, 0xffff0000, v135
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v123.h, v40.l
	v_mov_b16_e64 v123.l, v132.h
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v135.h, v40.l
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v124, 0x3fb8aa3b, v124 :: v_dual_and_b32 v123, 1, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 762 25 is_stmt 0              ; attention.py:762:25
	v_dual_fmac_f32 v124, s53, v131 :: v_dual_and_b32 v131, 0xffff0000, v134
	.loc	1 814 30 is_stmt 1              ; attention.py:814:30
	v_add_nc_u32_e32 v118, 0, v77
	v_add3_u32 v123, v132, v123, 0x7fff
	v_mov_b16_e64 v132.h, v40.l
	v_mov_b16_e64 v132.l, v121.h
	.loc	1 762 35                        ; attention.py:762:35
	v_mul_f32_e32 v131, 0x3fb8aa3b, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v123.h, 0x7fff, v123.h, s3
	.loc	1 762 25                        ; attention.py:762:25
	v_fmac_f32_e32 v131, s53, v39
	.loc	1 761 36                        ; attention.py:761:36
	v_lshlrev_b32_e32 v39, 16, v133
	v_lshlrev_b32_e32 v126, 16, v134
	v_and_b32_e32 v133, 0xffff0000, v133
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v134.h, v40.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 762 35                        ; attention.py:762:35
	v_dual_mul_f32 v39, 0x3fb8aa3b, v39 :: v_dual_mul_f32 v126, 0x3fb8aa3b, v126
	v_mul_f32_e32 v133, 0x3fb8aa3b, v133
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 762 25 is_stmt 0              ; attention.py:762:25
	v_fmac_f32_e32 v39, s53, v130
	.loc	1 814 30 is_stmt 1              ; attention.py:814:30
	v_mov_b16_e64 v130.h, v40.l
	v_mov_b16_e64 v130.l, v122.h
	.loc	1 762 25                        ; attention.py:762:25
	v_fmac_f32_e32 v126, s53, v33
	v_fmac_f32_e32 v133, s53, v129
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e64 v129.h, v40.l
	v_mov_b16_e64 v129.l, v127.h
	v_and_b32_e32 v120, 1, v130
	v_mov_b16_e32 v33.h, v40.l
	v_mov_b16_e64 v33.l, v128.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v120, v122, v120, 0x7fff
	v_and_b32_e32 v122, 1, v129
	v_and_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v119.h, 0x7fff, v120.h, s15
	v_add3_u32 v122, v127, v122, 0x7fff
	v_and_b32_e32 v127, 1, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v33, v128, v33, 0x7fff
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v128.h, v40.l
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v120.h, 0x7fff, v122.h, s16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v121, v121, v127, 0x7fff
	v_cndmask_b16 v123.l, 0x7fff, v33.h, s18
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v33.h, v40.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v120.l, 0x7fff, v121.h, s19
	ds_store_2addr_b32 v89, v125, v123 offset1:8
	ds_store_2addr_b32 v89, v119, v120 offset0:16 offset1:24
	.loc	1 763 25                        ; attention.py:763:25
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v119, v38, v37, s17
	v_cndmask_b32_e64 v37, v37, v38, s17
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 763 25                        ; attention.py:763:25
	v_and_b32_e32 v38, 0x100, v119
	v_and_b32_e32 v122, 0x1000000, v37
	v_and_b32_e32 v123, 1, v119
	v_and_b32_e32 v120, 1, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u32_e64 s3, 0, v38
	v_and_b32_e32 v38, 0x1000000, v119
	v_cmp_eq_u32_e64 s18, 0, v122
	v_and_b32_e32 v119, 0x10000, v119
	v_cmp_eq_u32_e64 s16, 1, v123
	v_cmp_eq_u32_e64 s14, 1, v120
	v_cmp_eq_u32_e64 s20, 0, v38
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v123, v133, 0xff800000, s18
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u32_e64 s21, 0, v119
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v120, v35, 0xff800000, s3
	v_cndmask_b32_e64 v125, 0xff800000, v36, s14
	v_cndmask_b32_e64 v127, v131, 0xff800000, s20
	.loc	1 763 25                        ; attention.py:763:25
	v_and_b32_e32 v121, 0x100, v37
	v_and_b32_e32 v37, 0x10000, v37
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v126, v126, 0xff800000, s21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 763 25                        ; attention.py:763:25
	v_cmp_eq_u32_e64 s15, 0, v121
	v_cmp_eq_u32_e64 s19, 0, v37
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v121, 0xff800000, v34, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v124, v124, 0xff800000, s15
	v_cndmask_b32_e64 v122, v39, 0xff800000, s19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v35, v121, v120, v126
	v_max3_f32 v36, v127, v125, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v34, v122, v123
	v_max3_f32 v34, v35, v36, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp2:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v35, v34, s52, 0xfedcba98 op_sel:[1,0]
.Ltmp3:
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v119, v117, v34, v35
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v34, v120, v119
	v_sub_f32_e32 v35, v121, v119
	v_sub_f32_e32 v37, v126, v119
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v117, v117, v119
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v36, v127, v119
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v37, v37
	.loc	1 767 61 is_stmt 1              ; attention.py:767:61
	v_exp_f32_e32 v117, v117
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v38, v124, v119
	v_sub_f32_e32 v39, v125, v119
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v38, v38
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v34, v34, 0, s3
	v_cndmask_b32_e64 v35, 0, v35, s16
	v_cndmask_b32_e64 v37, v37, 0, s21
	.loc	1 767 25 is_stmt 1              ; attention.py:767:25
	v_cndmask_b32_e64 v117, 0, v117, s13
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v39, v39
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v40.l, v34.h
	v_mov_b16_e64 v128.l, v35.h
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s16, v35, v35
	v_mov_b16_e64 v129.l, v37.h
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v29, v29, v117 :: v_dual_and_b32 v40, 1, v40
	v_dual_mul_f32 v31, v31, v117 :: v_dual_and_b32 v128, 1, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v129, 1, v129
	v_add3_u32 v34, v34, v40, 0x7fff
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v40, v123, v119
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v35, v35, v128, 0x7fff
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v128, v122, v119
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v36, v36, 0, s20
	v_cndmask_b32_e64 v38, v38, 0, s15
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v40, v40
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v39, 0, v39, s14
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v128, v128
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e64 v130.l, v36.h
	v_mov_b16_e64 v132.l, v38.h
	v_cmp_o_f32_e64 s14, v36, v36
	v_mov_b16_e32 v33.l, v39.h
	v_cmp_o_f32_e64 s15, v37, v37
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v17, v17, v117 :: v_dual_and_b32 v130, 1, v130
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v40, v40, 0, s18
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v28, v28, v117 :: v_dual_and_b32 v131, 1, v132
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v128, v128, 0, s19
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e64 v134.l, v40.h
	v_cmp_o_f32_e64 s18, v38, v38
	v_cmp_o_f32_e64 s19, v39, v39
	v_mov_b16_e64 v135.l, v128.h
	v_cmp_o_f32_e64 s20, v40, v40
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v19, v19, v117 :: v_dual_and_b32 v132, 1, v134
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s21, v128, v128
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v30, v30, v117 :: v_dual_and_b32 v133, 1, v135
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v36, v36, v130, 0x7fff
	v_add3_u32 v37, v37, v129, 0x7fff
	v_add3_u32 v38, v38, v131, 0x7fff
	v_add3_u32 v33, v39, v33, 0x7fff
	v_add3_u32 v39, v40, v132, 0x7fff
	v_add3_u32 v40, v128, v133, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s16
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s14
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s15
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s18
	v_cndmask_b16 v38.l, 0x7fff, v33.h, s19
	v_cndmask_b16 v128.h, 0x7fff, v39.h, s20
	v_cndmask_b16 v128.l, 0x7fff, v40.h, s21
	v_permlanex16_b32 v35, v34, s52, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v36, s52, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v38, s52, 0xfedcba98 op_sel:[1,0]
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v24, v24, v117
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v40, v128, s52, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v35, v34, v110
	v_perm_b32 v34, v35, v34, v111
	v_perm_b32 v35, v37, v36, v110
	v_perm_b32 v36, v37, v36, v111
	v_perm_b32 v37, v39, v38, v110
	v_perm_b32 v38, v39, v38, v111
	v_perm_b32 v39, v40, v128, v110
	v_perm_b32 v40, v40, v128, v111
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_b128 v[132:135], v90
	ds_load_b128 v[128:131], v118
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v25, v25, v117
	v_mul_f32_e32 v26, v26, v117
	v_mul_f32_e32 v27, v27, v117
	v_mul_f32_e32 v16, v16, v117
	v_mul_f32_e32 v18, v18, v117
	v_mul_f32_e32 v20, v20, v117
	v_mul_f32_e32 v21, v21, v117
	v_mul_f32_e32 v22, v22, v117
	v_mul_f32_e32 v23, v23, v117
	v_mul_f32_e32 v8, v8, v117
	v_mul_f32_e32 v10, v10, v117
	v_mul_f32_e32 v12, v12, v117
	v_mul_f32_e32 v13, v13, v117
	v_mul_f32_e32 v14, v14, v117
	v_mul_f32_e32 v15, v15, v117
	v_mul_f32_e32 v0, v0, v117
	v_mul_f32_e32 v2, v2, v117
	v_mul_f32_e32 v3, v3, v117
	v_mul_f32_e32 v4, v4, v117
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[128:135], v[33:40], v[24:31]
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_b128 v[128:131], v118 offset:512
	ds_load_b128 v[132:135], v90 offset:512
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v5, v5, v117
	v_mul_f32_e32 v6, v6, v117
	v_mul_f32_e32 v7, v7, v117
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v116
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v11, v11, v117
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[128:135], v[33:40], v[16:23]
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v129, v125, v121, s17
	v_cndmask_b32_e64 v121, v121, v125, s17
	v_cndmask_b32_e64 v125, v124, v120, s17
	v_cndmask_b32_e64 v120, v120, v124, s17
	v_cndmask_b32_e64 v124, v122, v126, s17
	v_cndmask_b32_e64 v122, v126, v122, s17
	v_cndmask_b32_e64 v126, v123, v127, s17
	v_cndmask_b32_e64 v123, v127, v123, s17
	ds_bpermute_b32 v125, v72, v125
	ds_bpermute_b32 v120, v79, v120
	ds_bpermute_b32 v124, v72, v124
	ds_bpermute_b32 v122, v79, v122
	ds_bpermute_b32 v123, v79, v123
	ds_bpermute_b32 v126, v72, v126
	ds_bpermute_b32 v127, v72, v129
	ds_bpermute_b32 v121, v79, v121
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v128, v116, v116
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v129, v120, v125, s0
	v_cndmask_b32_e64 v120, v125, v120, s0
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v125, v122, v124, s0
	v_cndmask_b32_e64 v122, v124, v122, s0
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	s_waitcnt lgkmcnt(3)
	v_max_f32_e32 v124, v123, v123
	s_waitcnt lgkmcnt(2)
	v_max_f32_e32 v130, v126, v126
.Ltmp5:
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v131, v121, v127, s0
	v_cndmask_b32_e64 v132, v127, v121, s0
	v_cndmask_b32_e64 v133, v123, v126, s0
	v_cndmask_b32_e64 v123, v126, v123, s0
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v124, v130, v124
	v_max3_f32 v121, v127, v121, v129
	v_max3_f32 v126, v120, v125, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v121, v121, v126, v124
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v124, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v124, v124 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v124, v124, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v130, v121, v124
.Ltmp9:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v73, v73, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v122, v122, v73
	v_sub_f32_e32 v125, v125, v73
	v_sub_f32_e32 v123, v123, v73
	v_dual_sub_f32 v127, v133, v73 :: v_dual_max_f32 v128, v128, v130
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v122, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v125, v125
	v_exp_f32_e32 v123, v123
	s_delay_alu instid0(VALU_DEP_1)
	v_exp_f32_e32 v127, v127
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v121, v132, v73
	v_sub_f32_e32 v120, v120, v73
	v_sub_f32_e32 v126, v129, v73
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_mul_f32_e32 v9, v9, v117
	v_mul_f32_e32 v1, v1, v117
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v121, v121
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v122, 0, v122, s12
	v_cndmask_b32_e64 v125, 0, v125, s11
	v_cndmask_b32_e64 v123, 0, v123, s8
	v_cndmask_b32_e64 v127, 0, v127, s6
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v126, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v117, v119 :: v_dual_add_f32 v132, v125, v122
	v_exp_f32_e32 v120, v120
.Ltmp10:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v133, v127, v123
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp11:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v121, 0, v121, s10
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v130, v132, v133
.Ltmp13:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v124, v131, v73
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v126, 0, v126, s5
	v_cndmask_b32_e64 v120, 0, v120, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v124, v124
.Ltmp14:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v131, v126, v120
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v124, 0, v124, s9
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v129, v124, v121
.Ltmp17:
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_b128 v[124:127], v90 offset:1024
	ds_load_b128 v[120:123], v118 offset:1024
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v129, v129, v131
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_add_f32 v129, v129, v130 :: v_dual_mov_b32 v130, v68
.Ltmp19:
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[120:127], v[33:40], v[8:15]
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_b128 v[120:123], v118 offset:1536
	ds_load_b128 v[124:127], v90 offset:1536
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v118, v116, v128
.Ltmp20:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v116, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v68, v118
.Ltmp22:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v116, v116 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp23:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v118, 0, v68, s3
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v68, v129, v116
	v_mov_b32_e32 v116, v128
.Ltmp25:
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[120:127], v[33:40], v[0:7]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v68, v130, v118
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v68, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v6, v7
	v_mov_b32_e32 v5, v7
	v_mov_b32_e32 v4, v7
	v_mov_b32_e32 v3, v7
	v_mov_b32_e32 v2, v7
	v_mov_b32_e32 v1, v7
	v_mov_b32_e32 v0, v7
	v_mov_b32_e32 v15, v7
	v_mov_b32_e32 v14, v7
	v_mov_b32_e32 v13, v7
	v_mov_b32_e32 v12, v7
	v_mov_b32_e32 v11, v7
	v_mov_b32_e32 v10, v7
	v_mov_b32_e32 v9, v7
	v_mov_b32_e32 v8, v7
	v_mov_b32_e32 v23, v7
	v_mov_b32_e32 v22, v7
	v_mov_b32_e32 v21, v7
	v_mov_b32_e32 v20, v7
	v_mov_b32_e32 v19, v7
	v_mov_b32_e32 v18, v7
	v_mov_b32_e32 v17, v7
	v_mov_b32_e32 v16, v7
	v_mov_b32_e32 v31, v7
	v_mov_b32_e32 v30, v7
	v_mov_b32_e32 v29, v7
	v_mov_b32_e32 v28, v7
	v_mov_b32_e32 v27, v7
	v_mov_b32_e32 v26, v7
	v_mov_b32_e32 v25, v7
	v_mov_b32_e32 v24, v7
.LBB0_4:                                ; %._crit_edge
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	ds_bpermute_b32 v32, v61, v68
	.loc	1 848 17                        ; attention.py:848:17
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v32, v32, v24
	v_div_scale_f32 v35, null, v32, v32, v25
	v_div_scale_f32 v37, null, v32, v32, v26
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v44, v33
	v_div_scale_f32 v39, null, v32, v32, v27
	v_div_scale_f32 v41, null, v32, v32, v28
	v_div_scale_f32 v42, null, v32, v32, v29
	v_rcp_f32_e32 v45, v35
	v_rcp_f32_e32 v46, v37
	v_rcp_f32_e32 v47, v39
	v_rcp_f32_e32 v48, v41
	v_rcp_f32_e32 v61, v42
	v_fma_f32 v63, -v33, v44, 1.0
	v_div_scale_f32 v34, vcc_lo, v24, v32, v24
	v_div_scale_f32 v36, s0, v25, v32, v25
	v_fma_f32 v64, -v35, v45, 1.0
	v_fma_f32 v65, -v37, v46, 1.0
	v_fmac_f32_e32 v44, v63, v44
	v_div_scale_f32 v38, s1, v26, v32, v26
	v_fma_f32 v66, -v39, v47, 1.0
	v_fma_f32 v67, -v41, v48, 1.0
	v_dual_fmac_f32 v45, v64, v45 :: v_dual_fmac_f32 v46, v65, v46
	v_fma_f32 v63, -v42, v61, 1.0
	v_mul_f32_e32 v64, v34, v44
	v_div_scale_f32 v50, s5, v29, v32, v29
	v_fmac_f32_e32 v47, v66, v47
	v_dual_mul_f32 v65, v36, v45 :: v_dual_mul_f32 v66, v38, v46
	v_fmac_f32_e32 v61, v63, v61
	v_fmac_f32_e32 v48, v67, v48
	v_fma_f32 v67, -v33, v64, v34
	v_div_scale_f32 v40, s3, v27, v32, v27
	v_fma_f32 v69, -v35, v65, v36
	v_fma_f32 v70, -v37, v66, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v64, v67, v44
	v_mul_f32_e32 v68, v40, v47
	v_div_scale_f32 v43, null, v32, v32, v30
	v_div_scale_f32 v49, s4, v28, v32, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v33, -v33, v64, v34
	v_fmac_f32_e32 v65, v69, v45
	v_fma_f32 v71, -v39, v68, v40
	v_fmac_f32_e32 v66, v70, v46
	v_rcp_f32_e32 v62, v43
	v_div_fmas_f32 v33, v33, v44, v64
	v_fma_f32 v34, -v35, v65, v36
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v35, -v37, v66, v38
	v_mul_f32_e32 v37, v50, v61
	v_dual_mul_f32 v63, v49, v48 :: v_dual_fmac_f32 v68, v71, v47
	v_div_fixup_f32 v24, v33, v32, v24
	v_div_scale_f32 v33, null, v32, v32, v31
	v_div_fmas_f32 v34, v34, v45, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v39, v68, v40
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v39, v33
	v_div_fmas_f32 v35, v35, v46, v66
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v25, v34, v32, v25
	v_div_fmas_f32 v34, v36, v47, v68
	v_fma_f32 v38, -v43, v62, 1.0
	v_div_fixup_f32 v26, v35, v32, v26
	v_div_scale_f32 v35, s1, v30, v32, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v27, v34, v32, v27
	v_fma_f32 v34, -v42, v37, v50
	v_fmac_f32_e32 v62, v38, v62
	v_fma_f32 v38, -v33, v39, 1.0
	v_fma_f32 v36, -v41, v63, v49
	v_div_scale_f32 v47, null, v32, v32, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v37, v34, v61 :: v_dual_mul_f32 v34, v35, v62
	v_fmac_f32_e32 v39, v38, v39
	v_div_scale_f32 v38, s3, v31, v32, v31
	v_fmac_f32_e32 v63, v36, v48
	v_div_scale_f32 v36, null, v32, v32, v16
	v_fma_f32 v44, -v43, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v38, v39
	v_fma_f32 v40, -v41, v63, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v41, v36
	v_fma_f32 v42, -v42, v37, v50
	v_fmac_f32_e32 v34, v44, v62
	v_fma_f32 v44, -v33, v45, v38
	s_mov_b32 vcc_lo, s4
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s0, 0, v32
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v40, v40, v48, v63
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v35, -v43, v34, v35
	v_div_fmas_f32 v37, v42, v61, v37
	v_rcp_f32_e32 v42, v47
	v_fmac_f32_e32 v45, v44, v39
	v_div_scale_f32 v43, null, v32, v32, v18
	v_fma_f32 v46, -v36, v41, 1.0
	v_div_fixup_f32 v28, v40, v32, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v45, v38
	v_rcp_f32_e32 v38, v43
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v29, v37, v32, v29
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v40, -v47, v42, 1.0
	v_fmac_f32_e32 v41, v46, v41
	v_div_scale_f32 v46, s4, v16, v32, v16
	v_div_fmas_f32 v34, v35, v62, v34
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v42, v40, v42
	v_div_fmas_f32 v33, v33, v39, v45
	v_fma_f32 v45, -v43, v38, 1.0
	v_mul_f32_e32 v37, v46, v41
	v_div_scale_f32 v44, null, v32, v32, v19
	v_div_scale_f32 v40, s1, v17, v32, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v45, v38
	v_fma_f32 v35, -v36, v37, v46
	v_div_fixup_f32 v30, v34, v32, v30
	v_div_fixup_f32 v31, v33, v32, v31
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v37, v35, v41
	v_rcp_f32_e32 v35, v44
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	v_cndmask_b32_e64 v26, 0, v26, s0
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v33, -v36, v37, v46
	v_div_scale_f32 v36, s3, v18, v32, v18
	v_div_scale_f32 v46, null, v32, v32, v20
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v45, -v44, v35, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v35, v45, v35
	v_div_scale_f32 v45, null, v32, v32, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v48, v45
	v_mul_f32_e32 v39, v40, v42
	v_fma_f32 v34, -v47, v39, v40
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v39, v34, v42
	v_mul_f32_e32 v34, v36, v38
	v_div_fmas_f32 v33, v33, v41, v37
	v_rcp_f32_e32 v37, v46
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v41, s4, v19, v32, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v16, v33, v32, v16
	v_fma_f32 v33, -v47, v39, v40
	v_fma_f32 v40, -v43, v34, v36
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v49, -v46, v37, 1.0
	v_div_fmas_f32 v33, v33, v42, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v40, v38
	v_div_scale_f32 v40, s1, v20, v32, v20
	v_fmac_f32_e32 v37, v49, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v17, v33, v32, v17
	v_fma_f32 v33, -v43, v34, v36
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v42, -v45, v48, 1.0
	v_mul_f32_e32 v36, v40, v37
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v33, v33, v38, v34
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v48, v42, v48
	v_fma_f32 v38, -v46, v36, v40
	v_mul_f32_e32 v47, v41, v35
	v_div_scale_f32 v42, null, v32, v32, v22
	v_div_fixup_f32 v18, v33, v32, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v38, v37
	v_fma_f32 v39, -v44, v47, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v33, -v46, v36, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v39, v35
	v_div_scale_f32 v39, s5, v21, v32, v21
	v_div_scale_f32 v46, null, v32, v32, v9
	v_fma_f32 v34, -v44, v47, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v43, v39, v48
	v_rcp_f32_e32 v41, v42
	v_div_scale_f32 v44, null, v32, v32, v23
	v_div_fmas_f32 v34, v34, v35, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v45, v43, v39
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v35, v44
	v_div_fmas_f32 v33, v33, v37, v36
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v43, v38, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v42, v41, 1.0
	v_div_fixup_f32 v19, v34, v32, v19
	v_div_scale_f32 v34, s3, v22, v32, v22
	v_fma_f32 v36, -v45, v43, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v41, v47, v41
	v_fma_f32 v38, -v44, v35, 1.0
	v_div_scale_f32 v39, s1, v23, v32, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v48, v43
	v_div_fixup_f32 v20, v33, v32, v20
	v_fmac_f32_e32 v35, v38, v35
	v_div_scale_f32 v38, null, v32, v32, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v21, v36, v32, v21
	v_rcp_f32_e32 v36, v46
	v_mul_f32_e32 v45, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v38
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v48, null, v32, v32, v11
	v_fma_f32 v33, -v44, v45, v39
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v50, v48
	v_fma_f32 v47, -v46, v36, 1.0
	v_mul_f32_e32 v37, v34, v41
	v_fmac_f32_e32 v45, v33, v35
	v_div_scale_f32 v33, s4, v8, v32, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v47, v36
	v_fma_f32 v43, -v42, v37, v34
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v37, v43, v41
	v_fma_f32 v43, -v38, v40, 1.0
	v_fma_f32 v34, -v42, v37, v34
	v_div_scale_f32 v42, null, v32, v32, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v43, v40
	v_div_fmas_f32 v34, v34, v41, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v37, -v44, v45, v39
	v_div_scale_f32 v41, s3, v9, v32, v9
	v_mul_f32_e32 v39, v33, v40
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v34, v32, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v49, v41, v36
	v_div_fmas_f32 v35, v37, v35, v45
	v_fma_f32 v47, -v38, v39, v33
	v_fma_f32 v44, -v42, v43, 1.0
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v37, -v46, v49, v41
	v_div_fixup_f32 v23, v35, v32, v23
	v_fmac_f32_e32 v39, v47, v40
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, s5, v10, v32, v10
	v_fmac_f32_e32 v49, v37, v36
	v_div_scale_f32 v37, null, v32, v32, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v35, -v48, v50, 1.0
	v_fma_f32 v33, -v38, v39, v33
	v_fma_f32 v38, -v46, v49, v41
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v34, -v42, v45, v44
	v_fmac_f32_e32 v50, v35, v50
	v_div_scale_f32 v35, s1, v11, v32, v11
	v_div_fmas_f32 v33, v33, v40, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v45, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v39, v35, v50
	v_div_fmas_f32 v36, v38, v36, v49
	v_fma_f32 v38, -v42, v45, v44
	v_div_scale_f32 v40, null, v32, v32, v13
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v8, v33, v32, v8
	v_div_fmas_f32 v38, v38, v43, v45
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v34, 1.0
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v43, -v48, v39, v35
	v_div_fixup_f32 v9, v36, v32, v9
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v12, v32, v12
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v10, v38, v32, v10
	v_div_scale_f32 v38, null, v32, v32, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	v_fma_f32 v36, -v40, v42, 1.0
	v_fma_f32 v35, -v48, v39, v35
	v_rcp_f32_e32 v44, v38
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v43, -v37, v33, v41
	v_fmac_f32_e32 v42, v36, v42
	v_div_scale_f32 v36, s4, v13, v32, v13
	v_div_fmas_f32 v35, v35, v50, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v43, v34
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v39, v36, v42
	v_div_scale_f32 v43, null, v32, v32, v15
	v_div_fixup_f32 v11, v35, v32, v11
	v_fma_f32 v35, -v37, v33, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v37, -v40, v39, v36
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v33, v35, v34, v33
	v_div_scale_f32 v34, null, v32, v32, v0
	v_fmac_f32_e32 v39, v37, v42
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v32, v32, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v35, s1, v14, v32, v14
	v_div_fixup_f32 v12, v33, v32, v12
	v_fma_f32 v33, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	v_fma_f32 v36, -v40, v39, v36
	v_mul_f32_e32 v40, v35, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v33, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v34, v37, 1.0
	v_div_scale_f32 v33, s3, v15, v32, v15
	v_div_fmas_f32 v36, v36, v42, v39
	v_fma_f32 v39, -v38, v40, v35
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v32, v32, v2
	v_mul_f32_e32 v42, v33, v45
	v_div_scale_f32 v48, s4, v0, v32, v0
	v_fma_f32 v49, -v41, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	v_mul_f32_e32 v61, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v1, v32, v1
	v_div_fixup_f32 v13, v36, v32, v13
	v_fma_f32 v35, -v38, v40, v35
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v61, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v33, -v43, v42, v33
	v_fmac_f32_e32 v61, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v2, v32, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v61, v48
	v_fmac_f32_e32 v38, v36, v47
	v_div_fmas_f32 v35, v35, v44, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, null, v32, v32, v3
	v_div_fmas_f32 v33, v33, v45, v42
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v14, v35, v32, v14
	v_div_fmas_f32 v34, v34, v37, v61
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v15, v33, v32, v15
	v_div_fixup_f32 v0, v34, v32, v0
	v_div_scale_f32 v34, null, v32, v32, v4
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, null, v32, v32, v7
	v_div_fmas_f32 v37, v37, v47, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v33, -v46, v36, v39
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v1, v37, v32, v1
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v32, v32, v5
	v_div_scale_f32 v37, null, v32, v32, v6
	v_div_scale_f32 v38, vcc_lo, v3, v32, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v2, v33, v32, v2
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v33, -v34, v36, 1.0
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v50, -v44, v46, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v4, v32, v4
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v48, -v37, v41, 1.0
	v_fma_f32 v47, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v49, v33, v36 :: v_dual_fmac_f32 v46, v50, v46
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v5, v32, v5
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v6, v32, v6
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	v_div_scale_f32 v50, s5, v7, v32, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v61, v45, v39 :: v_dual_mul_f32 v62, v48, v41
	v_fmac_f32_e32 v49, v47, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v63, v50, v46
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v61, v45
	v_fma_f32 v47, -v37, v62, v48
	v_fma_f32 v33, -v34, v49, v33
	v_fma_f32 v34, -v44, v63, v50
	v_div_fmas_f32 v38, v38, v42, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v61, v40, v39 :: v_dual_fmac_f32 v62, v47, v41
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v63, v34, v46
	v_div_fmas_f32 v33, v33, v36, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v35, -v35, v61, v45
	v_fma_f32 v34, -v37, v62, v48
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v44, v63, v50
	v_div_fixup_f32 v3, v38, v32, v3
	v_div_fmas_f32 v35, v35, v39, v61
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v4, v33, v32, v4
	v_div_fmas_f32 v34, v34, v41, v62
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v35, v32, v5
	v_div_fmas_f32 v36, v36, v46, v63
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v6, v34, v32, v6
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v36, v32, v7
	.loc	1 843 24 is_stmt 1              ; attention.py:843:24
	v_mul_lo_u32 v32, s35, v60
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 843 24                        ; attention.py:843:24
	s_mul_i32 s0, s35, s26
	v_add_nc_u32_e32 v35, v32, v54
	v_add_nc_u32_e32 v32, s0, v32
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s35, v54
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v33, 16, v54
	.loc	1 843 24 is_stmt 0              ; attention.py:843:24
	v_add_lshl_u32 v35, v35, s0, 2
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_add_lshl_u32 v38, v32, v54, 2
	v_add_lshl_u32 v39, v32, v56, 2
	v_add_lshl_u32 v40, v32, v55, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s0, s35, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	s_clause 0x2
	buffer_store_b32 v24, v38, s[24:27], 0 offen
	buffer_store_b32 v25, v39, s[24:27], 0 offen
	buffer_store_b32 v26, v40, s[24:27], 0 offen
	v_add_lshl_u32 v24, v32, v53, 2
	v_add_lshl_u32 v25, v32, v52, 2
	v_add_lshl_u32 v26, v32, v51, 2
	v_add_lshl_u32 v38, v32, v58, 2
	v_add_lshl_u32 v39, v32, v57, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	s_clause 0x4
	buffer_store_b32 v27, v24, s[24:27], 0 offen
	buffer_store_b32 v28, v25, s[24:27], 0 offen
	buffer_store_b32 v29, v26, s[24:27], 0 offen
	buffer_store_b32 v30, v38, s[24:27], 0 offen
	buffer_store_b32 v31, v39, s[24:27], 0 offen
	v_add_lshl_u32 v24, v32, v33, 2
	v_add_nc_u32_e32 v25, 0x48, v35
	v_add_nc_u32_e32 v26, 0x50, v35
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_add_nc_u32_e32 v27, 0x58, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_nc_u32_e32 v28, 0x60, v35
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v34, 32, v54
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x2
	buffer_store_b32 v16, v24, s[24:27], 0 offen
	buffer_store_b32 v17, v25, s[24:27], 0 offen
	buffer_store_b32 v18, v26, s[24:27], 0 offen
	v_add_nc_u32_e32 v17, 0x68, v35
	v_cndmask_b32_e32 v16, 0x80000000, v28, vcc_lo
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s35, v34
	.loc	1 848 17                        ; attention.py:848:17
	buffer_store_b32 v19, v27, s[24:27], 0 offen
	v_add_nc_u32_e32 v18, 0x70, v35
	v_add_nc_u32_e32 v19, 0x78, v35
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	buffer_store_b32 v20, v16, s[24:27], 0 offen
	v_add_lshl_u32 v16, v32, v34, 2
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 848 17                        ; attention.py:848:17
	buffer_store_b32 v21, v17, s[24:27], 0 offen
	v_add_nc_u32_e32 v17, 0x88, v35
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x2
	buffer_store_b32 v22, v18, s[24:27], 0 offen
	buffer_store_b32 v23, v19, s[24:27], 0 offen
	buffer_store_b32 v8, v16, s[24:27], 0 offen
	v_add_nc_u32_e32 v8, 0x90, v35
	v_cndmask_b32_e32 v16, 0x80000000, v17, vcc_lo
	v_add_nc_u32_e32 v17, 0x98, v35
	v_add_nc_u32_e32 v18, 0xa0, v35
	v_add_nc_u32_e32 v19, 0xa8, v35
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v36, 48, v54
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v9, v16, s[24:27], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v16, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s35, v36
	.loc	1 848 17                        ; attention.py:848:17
	buffer_store_b32 v10, v8, s[24:27], 0 offen
	v_add_nc_u32_e32 v8, 0xb0, v35
	s_clause 0x2
	buffer_store_b32 v11, v9, s[24:27], 0 offen
	buffer_store_b32 v12, v16, s[24:27], 0 offen
	buffer_store_b32 v13, v17, s[24:27], 0 offen
	v_add_nc_u32_e32 v9, 0xb8, v35
	v_add_lshl_u32 v10, v32, v36, 2
	v_add_nc_u32_e32 v11, 0xc8, v35
	v_add_nc_u32_e32 v12, 0xd0, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v37, 62, v59
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v14, v8, s[24:27], 0 offen
	buffer_store_b32 v15, v9, s[24:27], 0 offen
	buffer_store_b32 v0, v10, s[24:27], 0 offen
	buffer_store_b32 v1, v11, s[24:27], 0 offen
	buffer_store_b32 v2, v12, s[24:27], 0 offen
	v_add_nc_u32_e32 v0, 0xd8, v35
	v_add_nc_u32_e32 v1, 0xe0, v35
	v_add_nc_u32_e32 v2, 0xe8, v35
	v_add_nc_u32_e32 v8, 0xf0, v35
	v_add_lshl_u32 v9, v32, v37, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	s_clause 0x4
	buffer_store_b32 v3, v0, s[24:27], 0 offen
	buffer_store_b32 v4, v1, s[24:27], 0 offen
	buffer_store_b32 v5, v2, s[24:27], 0 offen
	buffer_store_b32 v6, v8, s[24:27], 0 offen
	buffer_store_b32 v7, v9, s[24:27], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 142
		.amdhsa_next_free_sgpr 55
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_vgpr, 142
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.numbered_sgpr, 55
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10148
; TotalNumSgprs: 57
; NumVgprs: 142
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 57
; NumVGPRsForWavesPerEU: 142
; Occupancy: 10
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	765                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	769                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     57
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     142
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
