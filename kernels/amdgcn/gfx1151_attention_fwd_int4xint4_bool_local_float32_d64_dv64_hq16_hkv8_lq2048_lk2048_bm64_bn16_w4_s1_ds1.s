	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
	s_add_i32 s33, s6, s2
	.loc	1 584 86 is_stmt 0              ; attention.py:584:86
	v_lshlrev_b32_e32 v1, 4, v3
	.loc	1 584 26                        ; attention.py:584:26
	v_or_b32_e32 v2, s33, v33
	.loc	1 570 21 is_stmt 1              ; attention.py:570:21
	v_or_b32_e32 v6, s6, v33
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_u32 v58, v0, 4, 1
	s_clause 0x2
	s_load_b64 s[4:5], s[0:1], 0x7c
	s_load_b64 s[24:25], s[0:1], 0x38
	s_load_b32 s7, s[0:1], 0x84
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v6
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v63, 4, v0
	v_or_b32_e32 v60, 2, v58
	v_or_b32_e32 v59, 4, v58
	v_or_b32_e32 v57, 6, v58
	.loc	1 584 26                        ; attention.py:584:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[4:5], null, s34, v2, v[1:2]
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s2, s34, v1
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s29, s29, 0xffff
	v_lshlrev_b32_e32 v5, 1, v0
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v56, 8, v58
	v_or_b32_e32 v55, 10, v58
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 s2, vcc_lo, s2
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v62, 12, v58
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v2, 0x80000000, v4, s2
	v_and_or_b32 v12, v5, 30, v58
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v4, 0x60, v0
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s6, s5
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s9, s6, s4
	.loc	1 585 26                        ; attention.py:585:26
	buffer_load_b128 v[7:10], v2, s[28:31], 0 offen
	v_lshlrev_b32_e32 v65, 2, v12
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v2, 15, v0
	v_lshrrev_b32_e32 v11, 1, v4
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, s7
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s9, s9, s7
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v66, 4, v65
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s2, s2, 64
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v64, v11, v2
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s8, s2, 0x800
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s9, s9, 0
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s8, s8, 15
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v61, 14, v58
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v11, s6, v64
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s10, s8, 31
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s48, s9, 0x7ffffff0
	.loc	1 619 34                        ; attention.py:619:34
	s_lshr_b32 s10, s10, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, s10
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x800, v11
	.loc	1 619 33                        ; attention.py:619:33
	s_and_b32 s49, s8, -16
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_ge_i32 s48, s49
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v34, v65, v7
	ds_bpermute_b32 v35, v65, v8
	ds_bpermute_b32 v36, v65, v9
	ds_bpermute_b32 v38, v65, v10
	ds_bpermute_b32 v37, v66, v7
	ds_bpermute_b32 v39, v66, v8
	ds_bpermute_b32 v40, v66, v9
	ds_bpermute_b32 v41, v66, v10
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_19
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[8:15], s[0:1], 0x8
	.loc	1 591 17 is_stmt 1              ; attention.py:591:17
	v_or_b32_e32 v7, s33, v64
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x68
	s_load_b128 s[36:39], s[0:1], 0x28
	v_dual_mov_b32 v9, 0x6420 :: v_dual_add_nc_u32 v6, s7, v6
	v_dual_mov_b32 v44, 0x5410 :: v_dual_lshlrev_b32 v7, 1, v7
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s0, 0, v3
	v_dual_mov_b32 v11, 0x7531 :: v_dual_lshlrev_b32 v12, 7, v0
	v_and_b32_e32 v5, 24, v5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	v_dual_mov_b32 v81, 0x7632 :: v_dual_mov_b32 v80, 0
	v_cndmask_b32_e64 v84, 0x7531, v9, s0
	v_cndmask_b32_e64 v85, 0x6420, v11, s0
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s1, s3, 31
	v_dual_mov_b32 v16, 0 :: v_dual_lshlrev_b32 v67, 3, v3
	s_lshr_b32 s1, s1, 28
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	v_mov_b32_e32 v32, 0
	buffer_load_u16 v42, v7, s[28:31], 0 offen
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_and_b32_e32 v7, 16, v0
	v_dual_mov_b32 v8, 0 :: v_dual_lshlrev_b32 v3, 2, v0
	v_dual_mov_b32 v25, v32 :: v_dual_and_b32 v10, 0x70, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 585 26 is_stmt 1              ; attention.py:585:26
	v_cmp_eq_u32_e64 s17, 0, v7
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v43, 3, v0
	v_dual_mov_b32 v112, 0xff800000 :: v_dual_lshlrev_b32 v13, 5, v0
	v_bfe_i32 v82, v0, 2, 1
	v_mov_b32_e32 v0, 0
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s7, s3, s1
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v48, v38, v41, s17
	v_lshl_or_b32 v78, v2, 5, v5
	v_cndmask_b32_e64 v47, v36, v40, s17
	v_cndmask_b32_e64 v50, v35, v39, s17
	v_cndmask_b32_e64 v49, v34, v37, s17
	v_cndmask_b32_e64 v52, v41, v38, s17
	v_cndmask_b32_e64 v51, v40, v36, s17
	v_cndmask_b32_e64 v54, v39, v35, s17
	v_cndmask_b32_e64 v53, v37, v34, s17
	v_lshl_or_b32 v37, v84, 8, v84
	v_lshl_or_b32 v38, v85, 8, v85
	v_cndmask_b32_e64 v39, 0x1054, v44, s17
	v_cndmask_b32_e64 v40, 0x3276, v81, s17
	.loc	1 748 47                        ; attention.py:748:47
	v_subrev_nc_u32_e32 v76, s4, v6
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s4, s7, -16
	v_dual_mov_b32 v29, v32 :: v_dual_and_b32 v86, 0x700, v12
	s_sub_i32 s3, s3, s4
	v_dual_mov_b32 v28, v32 :: v_dual_and_b32 v89, 0x160, v13
	v_dual_mov_b32 v30, v32 :: v_dual_and_b32 v37, 0x750031, v37
	v_dual_mov_b32 v19, v32 :: v_dual_and_b32 v38, 0x750031, v38
	v_xor_b32_e32 v34, 8, v78
	v_xor_b32_e32 v35, 16, v78
	v_xor_b32_e32 v36, 24, v78
	v_lshl_or_b32 v39, v39, 8, v39
	v_lshl_or_b32 v40, v40, 8, v40
	v_dual_mov_b32 v68, 0xff800000 :: v_dual_add_nc_u32 v77, s5, v6
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s5, s7, 4
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_u32 s7, s3, 0x10007
	v_lshrrev_b32_e32 v4, 2, v4
	s_add_i32 s7, s3, s7
	v_and_or_b32 v1, v33, 15, v1
	v_lshrrev_b32_e32 v87, 2, v10
	v_cndmask_b32_e64 v88, 0x90, 0, s0
	v_dual_mov_b32 v31, v32 :: v_dual_add_nc_u32 v44, 0, v86
	v_dual_mov_b32 v18, v32 :: v_dual_add_nc_u32 v85, 0, v35
	v_mov_b32_e32 v20, v32
	v_dual_mov_b32 v21, v32 :: v_dual_add_nc_u32 v84, 0, v34
	v_dual_mov_b32 v23, v32 :: v_dual_add_nc_u32 v86, 0, v36
	v_dual_mov_b32 v9, v32 :: v_dual_and_b32 v36, 0x540054, v39
	v_and_or_b32 v81, 0x90, v82, v89
	s_bfe_i32 s7, s7, 0x80000
	v_lshl_or_b32 v34, v37, 4, v37
	v_lshl_or_b32 v35, v38, 4, v38
	v_and_b32_e32 v37, 0x760076, v40
	s_sext_i32_i16 s7, s7
	v_mul_lo_u32 v33, s23, v33
	s_ashr_i32 s7, s7, 1
	v_dual_mov_b32 v24, 0 :: v_dual_lshlrev_b32 v45, 2, v2
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v69, 1, v67
	v_or_b32_e32 v70, 2, v67
	v_or_b32_e32 v71, 3, v67
	v_or_b32_e32 v72, 4, v67
	v_or_b32_e32 v73, 5, v67
	v_or_b32_e32 v74, 6, v67
	v_or_b32_e32 v75, 7, v67
	v_dual_mov_b32 v27, v32 :: v_dual_and_b32 v46, 28, v3
	v_xor_b32_e32 v83, v3, v4
	v_dual_mov_b32 v26, v32 :: v_dual_lshlrev_b32 v79, 2, v1
	v_dual_mov_b32 v22, v32 :: v_dual_and_b32 v99, 0x7050301, v34
	v_dual_mov_b32 v13, v32 :: v_dual_and_b32 v100, 0x7050301, v35
	v_xor_b32_e32 v41, v88, v87
	v_xor_b32_e32 v88, 16, v81
	v_lshl_or_b32 v34, v36, 4, v36
	v_lshl_or_b32 v35, v37, 4, v37
	.loc	1 710 33                        ; attention.py:710:33
	s_lshl3_add_u32 s7, s5, s7
	.loc	1 754 27                        ; attention.py:754:27
	s_mul_i32 s3, s22, s3
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s5, s21, s5
	.loc	1 752 25                        ; attention.py:752:25
	s_mul_i32 s6, s23, s6
	s_add_i32 s23, s3, s5
	.loc	1 710 32                        ; attention.py:710:32
	s_lshl_b32 s3, s7, 11
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e64 s1, s35, v45
	v_dual_mov_b32 v17, v32 :: v_dual_add_nc_u32 v82, 0, v83
	v_dual_mov_b32 v10, v32 :: v_dual_add_nc_u32 v101, v33, v69
	v_dual_mov_b32 v11, v32 :: v_dual_add_nc_u32 v88, 0, v88
	v_dual_mov_b32 v12, v32 :: v_dual_add_nc_u32 v103, v33, v71
	v_dual_mov_b32 v14, v32 :: v_dual_add_nc_u32 v105, v33, v73
	v_dual_mov_b32 v15, v32 :: v_dual_add_nc_u32 v102, v33, v70
	v_dual_mov_b32 v1, v32 :: v_dual_add_nc_u32 v104, v33, v72
	v_dual_mov_b32 v2, v32 :: v_dual_add_nc_u32 v107, v33, v75
	v_dual_mov_b32 v3, v32 :: v_dual_add_nc_u32 v106, v33, v74
	v_dual_mov_b32 v4, v32 :: v_dual_and_b32 v109, 0x5040504, v34
	v_dual_mov_b32 v5, v32 :: v_dual_add_nc_u32 v108, v33, v67
	v_mov_b32_e32 v6, v32
	v_dual_mov_b32 v7, v32 :: v_dual_and_b32 v110, 0x7060706, v35
	.loc	1 714 31                        ; attention.py:714:31
	v_cmp_gt_i32_e64 s4, s34, v46
	v_xor_b32_e32 v83, 64, v79
	v_add_nc_u32_e32 v87, v44, v41
	v_lshl_or_b32 v89, s7, 10, v63
	v_or_b32_e32 v90, s3, v43
	v_or_b32_e32 v91, s3, v58
	v_or_b32_e32 v92, s3, v60
	v_or_b32_e32 v93, s3, v59
	v_or_b32_e32 v94, s3, v57
	v_or_b32_e32 v95, s3, v56
	v_or_b32_e32 v96, s3, v55
	v_or_b32_e32 v97, s3, v62
	v_or_b32_e32 v98, s3, v61
	v_mov_b32_e32 v113, 0xff800000
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s51, s20, 0x3fb8aa3b
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_mov_b32 s50, 0x76543210
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
	s_mov_b64 s[26:27], s[38:39]
	s_and_b32 s45, s11, 0xffff
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s40, s14
	s_mov_b32 s44, s10
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	.loc	1 794 21                        ; attention.py:794:21
	s_lshl_b32 s22, s7, 7
	s_mov_b32 s28, s8
	s_mov_b32 s29, s9
	s_mov_b32 s41, s15
	s_add_i32 s23, s23, s6
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v111, 16, v42
	s_branch .LBB0_3
.LBB0_2:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 31 is_stmt 0                ; attention.py:0:31
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 759 34 is_stmt 1              ; attention.py:759:34
	v_and_b16 v114.h, 0xff, v41.l
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e32 v41.l, 0
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v122.h, v114.l
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v122.l, v41.l
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v40, v111, v40
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v120.h, v119.l
	v_mov_b16_e32 v119.l, v41.l
	v_mov_b16_e32 v119.h, v118.l
	v_mov_b16_e32 v118.l, v41.l
	v_mov_b16_e32 v118.h, v117.l
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v33, v33
	v_dual_mul_f32 v37, v111, v37 :: v_dual_mul_f32 v40, v40, v122
	v_mul_f32_e32 v36, v111, v36
	.loc	1 759 34                        ; attention.py:759:34
	v_and_b16 v115.h, 0xff, v41.h
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v41.h, v121.l
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_mul_f32_e32 v37, v37, v118
	v_dual_mul_f32 v33, v111, v33 :: v_dual_mul_f32 v36, v36, v119
	.loc	1 759 34                        ; attention.py:759:34
	v_and_b16 v42.l, 0xff, v42.l
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v121.l, v41.l
	v_mov_b16_e32 v121.h, v120.l
	v_mov_b16_e32 v120.l, v41.l
	v_mov_b16_e32 v117.l, v41.l
	v_mov_b16_e32 v117.h, v116.l
	v_mov_b16_e32 v116.l, v41.l
	v_mov_b16_e32 v116.h, v115.l
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v34, v111, v34 :: v_dual_mul_f32 v33, v33, v41
	v_mul_f32_e32 v35, v111, v35
	v_dual_mul_f32 v38, v111, v38 :: v_dual_mul_f32 v119, s51, v36
	v_mul_f32_e32 v39, v111, v39
	.loc	1 759 34                        ; attention.py:759:34
	v_and_b16 v42.h, 0xff, v42.h
	v_cmp_ne_u16_e64 s7, 0, v42.l
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v34, v34, v121 :: v_dual_mul_f32 v35, v35, v120
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v38, v38, v117 :: v_dual_mul_f32 v39, v39, v116
	.loc	1 742 17                        ; attention.py:742:17
	v_mul_f32_e32 v116, s51, v33
	.loc	1 759 34                        ; attention.py:759:34
	s_waitcnt vmcnt(0)
	v_and_b16 v33.l, 0xff, v43.l
	v_cmp_ne_u16_e64 s5, 0, v114.h
	v_cmp_ne_u16_e64 s6, 0, v42.h
	.loc	1 759 25 is_stmt 0              ; attention.py:759:25
	s_and_b32 s12, s12, s7
	.loc	1 759 34                        ; attention.py:759:34
	v_cmp_ne_u16_e64 s3, 0, v115.h
	v_cmp_ne_u16_e64 s16, 0, v33.l
	.loc	1 759 25                        ; attention.py:759:25
	v_cndmask_b32_e64 v33, 0, 1, s12
	s_and_b32 s10, s10, s5
	s_and_b32 s11, s11, s6
	.loc	1 742 17 is_stmt 1              ; attention.py:742:17
	v_dual_mul_f32 v117, s51, v34 :: v_dual_mul_f32 v118, s51, v35
	v_dual_mul_f32 v35, s51, v37 :: v_dual_mul_f32 v36, s51, v38
	.loc	1 759 25                        ; attention.py:759:25
	v_cndmask_b32_e64 v38, 0, 1, s10
	v_cndmask_b32_e64 v34, 0, 1, s11
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 759 34 is_stmt 0              ; attention.py:759:34
	v_and_b16 v44.h, 0xff, v44.h
	.loc	1 759 25                        ; attention.py:759:25
	s_and_b32 s9, s9, s3
	.loc	1 759 34                        ; attention.py:759:34
	v_and_b16 v43.h, 0xff, v43.h
	.loc	1 759 25                        ; attention.py:759:25
	v_cndmask_b32_e64 v37, 0, 1, s9
	v_or_b16 v115.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v38.l
	.loc	1 759 34                        ; attention.py:759:34
	v_cmp_ne_u16_e64 s15, 0, v44.h
	.loc	1 759 25                        ; attention.py:759:25
	s_and_b32 s16, s20, s16
	.loc	1 759 34                        ; attention.py:759:34
	v_and_b16 v44.l, 0xff, v44.l
	.loc	1 759 25                        ; attention.py:759:25
	v_cndmask_b32_e64 v114, 0, 1, s16
	v_lshlrev_b16 v33.l, 8, v33.l
	v_mov_b16_e32 v34.l, v37.l
	.loc	1 759 34                        ; attention.py:759:34
	v_cmp_ne_u16_e64 s14, 0, v43.h
	.loc	1 759 25                        ; attention.py:759:25
	s_and_b32 s15, s19, s15
	.loc	1 759 34                        ; attention.py:759:34
	v_cmp_ne_u16_e64 s8, 0, v44.l
	.loc	1 759 25                        ; attention.py:759:25
	v_cndmask_b32_e64 v44, 0, 1, s15
	v_or_b16 v115.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v114.l
	s_and_b32 s14, s18, s14
	s_and_b32 s13, s13, s8
	v_cndmask_b32_e64 v43, 0, 1, s14
	v_mov_b16_e32 v34.l, v44.l
	v_lshlrev_b16 v33.l, 8, v33.l
	v_cndmask_b32_e64 v42, 0, 1, s13
	.loc	1 797 41 is_stmt 1              ; attention.py:797:41
	v_mov_b16_e64 v128.l, v41.l
	.loc	1 771 36                        ; attention.py:771:36
	s_lshr_b32 s3, s48, 1
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e64 v130.h, v41.l
	.loc	1 759 25                        ; attention.py:759:25
	v_or_b16 v33.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v43.l
	v_mov_b16_e32 v34.l, v42.l
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v39, s51, v39 :: v_dual_mul_f32 v40, s51, v40
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s21, 0xff800000, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 759 25                        ; attention.py:759:25
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v33.l, v34.l, v33.l
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v34, v33, v115, v99
	v_perm_b32 v33, v33, v115, v100
	ds_bpermute_b32 v34, v65, v34
	ds_bpermute_b32 v33, v66, v33
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v120, v33, v34, s17
	v_cndmask_b32_e64 v121, v34, v33, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v33, 1, v120
	v_cmp_eq_u32_e64 s7, 1, v33
	v_and_b32_e32 v33, 0x100, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v43, 0xff800000, v116, s7
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u32_e64 s8, 0, v33
	v_and_b32_e32 v33, 1, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v44, v117, 0xff800000, s8
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u32_e64 s5, 1, v33
	v_and_b32_e32 v33, 0x100, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v37, 0xff800000, v35, s5
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u32_e64 s6, 0, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v33, v37, v43, s17
	v_cndmask_b32_e64 v42, v36, 0xff800000, s6
	v_cndmask_b32_e64 v34, v43, v37, s17
	ds_bpermute_b32 v33, v79, v33
	v_cndmask_b32_e64 v35, v42, v44, s17
	v_cndmask_b32_e64 v36, v44, v42, s17
	ds_bpermute_b32 v34, v83, v34
	ds_bpermute_b32 v35, v79, v35
	ds_bpermute_b32 v36, v83, v36
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v114, v34, v33, s0
	v_cndmask_b32_e64 v115, v33, v34, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v116, v36, v35, s0
	v_cndmask_b32_e64 v117, v35, v36, s0
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v122, v33, v34, v116
.Ltmp2:
	.loc	1 774 30                        ; attention.py:774:30
	v_add_nc_u32_e32 v33, s3, v89
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s3, s48, 4
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s48, s48, 16
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s3, s3, s22
	.loc	1 707 13                        ; attention.py:707:13
	s_cmp_lt_i32 s48, s49
	.loc	1 774 30                        ; attention.py:774:30
	v_mad_u64_u32 v[33:34], null, v33, s35, v[45:46]
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s3, s3, s35
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	buffer_load_b32 v36, v33, s[44:47], 0 offen
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v33.l, v36.h
	v_bfe_i32 v35, v36, 0, 8
	v_lshrrev_b32_e32 v38, 8, v36
	v_lshrrev_b32_e32 v125, 24, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_bfe_i32 v124, v33, 0, 8
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v33, s3, v45, 1
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v123, v38, 0, 8
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v123.h, v41.l
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v126, v125, 0, 8
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v124.h, v41.l
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	buffer_load_b64 v[33:34], v33, s[36:39], 0 offen
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v127, 0xffff0000, v33
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v33.h, v36.l, 15
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v41.h, v33.l
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v33.l, 4, v36.l
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e64 v128.h, v34.l
	v_and_b32_e32 v129, 0xffff0000, v34
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s18, 7, v33.h
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v34.l, v35.l
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v33.l, v33.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v34.h, 0, -16, s18
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s3, 0, v34.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b16 v34.l, v33.l, -16
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_or_b16 v35.l, v33.h, v34.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v33.l, v33.l, v34.l, s3
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v34, v35, 0, 16
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e32 v35.h, v41.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v33, v33, 0, 16
	v_cvt_f32_i32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v33, v33
	v_mul_f32_e32 v34, v41, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e64 v130.l, v34.h
	.loc	1 814 31                        ; attention.py:814:31
	v_dual_mul_f32 v33, v41, v33 :: v_dual_and_b32 v130, 1, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v35.l, v33.h
	v_cmp_o_f32_e64 s3, v33, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v130, v34, v130, 0x7fff
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v35, v33, v35, 0x7fff
	.loc	1 787 39 is_stmt 1              ; attention.py:787:39
	v_mov_b16_e32 v35.l, v123.l
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s3
	v_cmp_o_f32_e64 s3, v34, v34
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v34.l, 4, v38.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v34.h, v38.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v33.l, 0x7fff, v130.h, s3
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v34.l, v34.l, 15
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s3, 0, v35.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s18, 7, v34.h
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v35.l, v34.l, -16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v35.h, 0, -16, s18
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v34.l, v34.l, v35.l, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v38.l, v34.h, v35.h
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v34, v34, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_bfe_i32 v35, v38, 0, 16
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e32 v38.h, v41.l
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v35, v35
	v_mul_f32_e32 v34, v127, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v38.l, v34.h
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v35, v127, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s3, v34, v34
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v123.l, v35.h
	v_add3_u32 v38, v34, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v123, 1, v123
	v_cndmask_b16 v34.h, 0x7fff, v38.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v123, v35, v123, 0x7fff
	v_cmp_o_f32_e64 s3, v35, v35
	.loc	1 785 32 is_stmt 1              ; attention.py:785:32
	v_lshrrev_b32_e32 v35, 20, v36
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v35.h, v36.h, 15
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v36.l, v124.l
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v34.l, 0x7fff, v123.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v35.l, v35.l, 15
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s18, 7, v35.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s3, 0, v36.l
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v123.h, v41.l
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v36.l, v35.l, -16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v36.h, 0, -16, s18
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v35.l, v35.l, v36.l, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v38.l, v35.h, v36.h
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v35, v35, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_bfe_i32 v36, v38, 0, 16
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e32 v38.h, v41.l
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v36, v36
	v_mul_f32_e32 v35, v128, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v36, v128, v36
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v38.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v123.l, v36.h
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v123, 1, v123
	v_cmp_o_f32_e64 s3, v35, v35
	v_add3_u32 v38, v35, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v123, v36, v123, 0x7fff
	.loc	1 787 39 is_stmt 1              ; attention.py:787:39
	v_mov_b16_e32 v38.l, v126.l
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v35.h, 0x7fff, v38.h, s3
	v_cmp_o_f32_e64 s3, v36, v36
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v36.l, 4, v125.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v36.h, v125.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v35.l, 0x7fff, v123.h, s3
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s3, 0, v38.l
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s18, 7, v36.h
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v38.l, v36.l, -16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v38.h, 0, -16, s18
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v36.l, v36.l, v38.l, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v123.l, v36.h, v38.h
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v36, v36, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_bfe_i32 v38, v123, 0, 16
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e32 v123.h, v41.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v38, v38
	v_mul_f32_e32 v36, v129, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v38, v129, v38
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v123.l, v36.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v36, v36
	v_mov_b16_e32 v124.l, v38.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v123, 1, v123
	v_and_b32_e32 v124, 1, v124
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v123, v36, v123, 0x7fff
	v_add3_u32 v124, v38, v124, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v36.h, 0x7fff, v123.h, s3
	v_cmp_o_f32_e64 s3, v38, v38
	.loc	1 759 25 is_stmt 1              ; attention.py:759:25
	v_and_b32_e32 v38, 0x1000000, v121
	v_and_b32_e32 v121, 0x10000, v121
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v36.l, 0x7fff, v124.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u32_e64 s3, 0, v38
	v_cmp_eq_u32_e64 s18, 0, v121
	.loc	1 814 30                        ; attention.py:814:30
	ds_store_2addr_b32 v87, v33, v34 offset1:8
	ds_store_2addr_b32 v87, v35, v36 offset0:16 offset1:24
	v_add_nc_u32_e32 v33, 0, v81
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v123, v40, 0xff800000, s3
	v_cndmask_b32_e64 v121, v39, 0xff800000, s18
	.loc	1 759 25                        ; attention.py:759:25
	v_and_b32_e32 v39, 0x1000000, v120
	v_and_b32_e32 v40, 0x10000, v120
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v38, v121, v123
.Ltmp4:
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u32_e64 s19, 0, v39
	v_cmp_eq_u32_e64 s20, 0, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v119, v119, 0xff800000, s19
	v_cndmask_b32_e64 v118, v118, 0xff800000, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v125, v123, v119, s17
	v_cndmask_b32_e64 v120, v121, v118, s17
	v_cndmask_b32_e64 v124, v118, v121, s17
	v_cndmask_b32_e64 v126, v119, v123, s17
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v39, v43, v44, v118
.Ltmp6:
	.loc	1 764 26                        ; attention.py:764:26
	ds_bpermute_b32 v125, v79, v125
	ds_bpermute_b32 v120, v79, v120
	ds_bpermute_b32 v124, v83, v124
	ds_bpermute_b32 v126, v83, v126
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v40, v119, v37, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v38, v39, v40, v38
.Ltmp8:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v40, v68, v68
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v39, v38, s50, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp10:
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v39, v112, v38, v39
	v_max_f32_e32 v38, v113, v113
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v127, v124, v120, s0
	v_cndmask_b32_e64 v120, v120, v124, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v124, v126, v125, s0
	v_cndmask_b32_e64 v128, v125, v126, s0
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v126, v126, v126 :: v_dual_max_f32 v125, v125, v125
	v_max3_f32 v129, v117, v127, v120
.Ltmp12:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v43, v43, v39
	v_sub_f32_e32 v44, v44, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_sub_f32 v118, v118, v39 :: v_dual_max_f32 v125, v125, v126
	v_sub_f32_e32 v119, v119, v39
	v_sub_f32_e32 v37, v37, v39
	v_sub_f32_e32 v42, v42, v39
	v_sub_f32_e32 v121, v121, v39
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v122, v122, v129, v125
.Ltmp14:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v123, v123, v39
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v126, v43
	v_exp_f32_e32 v43, v118
	v_exp_f32_e32 v118, v119
.Ltmp15:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v125, v122
.Ltmp16:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v119, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v125, v125 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v125, v125, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v122, v122, v125
.Ltmp19:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v68, v40, v122
	v_max_f32_e32 v38, v38, v122
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v40, v112, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v112, v114, v68
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v122, v113, v38
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 767 61 is_stmt 0              ; attention.py:767:61
	v_exp_f32_e32 v40, v40
	.loc	1 768 62 is_stmt 1              ; attention.py:768:62
	v_sub_f32_e32 v114, v116, v68
	v_sub_f32_e32 v116, v127, v68
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v127, v44
	.loc	1 767 61 is_stmt 1              ; attention.py:767:61
	v_exp_f32_e32 v122, v122
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v44, v37
	v_exp_f32_e32 v114, v114
	v_exp_f32_e32 v116, v116
	v_exp_f32_e32 v37, v121
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v125, 0, v40, s21
	v_cmp_neq_f32_e64 s21, 0xff800000, v113
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v113, v115, v68
	v_sub_f32_e32 v115, v117, v68
	v_sub_f32_e32 v117, v120, v68
	v_sub_f32_e32 v120, v124, v68
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v40, 0, v122, s21
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v122, v128, v68
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v124, v112
	v_exp_f32_e32 v113, v113
	v_exp_f32_e32 v115, v115
	v_exp_f32_e32 v117, v117
	v_exp_f32_e32 v120, v120
	v_exp_f32_e32 v122, v122
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v116, 0, v116, s13
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v112, v42
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v42, v37, 0, s18
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_mul_f32_e32 v26, v26, v125
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v121, 0, v124, s9
	v_cndmask_b32_e64 v123, 0, v113, s10
	v_cndmask_b32_e64 v124, 0, v114, s11
	v_cndmask_b32_e64 v115, 0, v115, s12
	v_cndmask_b32_e64 v117, 0, v117, s14
	v_cndmask_b32_e64 v120, 0, v120, s15
	v_cndmask_b32_e64 v122, 0, v122, s16
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v37, v121, v123
	v_add_f32_e32 v115, v124, v115
	v_add_f32_e32 v116, v116, v117
.Ltmp21:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v114, v118, 0, s19
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v117, v120, v122 :: v_dual_mul_f32 v30, v30, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_add_f32 v37, v37, v115 :: v_dual_mul_f32 v24, v24, v125
.Ltmp23:
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v118.h, v41.l
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v115, v116, v117
.Ltmp25:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v116, 0, v126, s7
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v28, v28, v125
	v_mul_f32_e32 v16, v16, v125
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v117.h, v41.l
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v113, v43, 0, s20
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v118.l, v116.h
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v43, v119, 0, s3
	v_cndmask_b32_e64 v112, v112, 0, s6
	v_cndmask_b32_e64 v44, 0, v44, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v17, v17, v125 :: v_dual_and_b32 v118, 1, v118
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v37, v37, v115 :: v_dual_mul_f32 v18, v18, v125
.Ltmp27:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v19, v19, v125
	v_mul_f32_e32 v21, v21, v125
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v118, v116, v118, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp28:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v115, v37
.Ltmp29:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v23, v23, v125
	v_mul_f32_e32 v8, v8, v125
	v_mul_f32_e32 v9, v9, v125
	v_mul_f32_e32 v10, v10, v125
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v115, v115 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v11, v11, v125
	v_mul_f32_e32 v12, v12, v125
	v_mul_f32_e32 v13, v13, v125
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v14, v14, v125 :: v_dual_add_f32 v37, v37, v115
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v115, v127, 0, s8
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v22, v22, v125
	v_mul_f32_e32 v15, v15, v125
	v_mul_f32_e32 v0, v0, v125
	v_mul_f32_e32 v1, v1, v125
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v117.l, v115.h
	v_cmp_o_f32_e64 s3, v115, v115
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v2, v2, v125
	v_mul_f32_e32 v3, v3, v125
	v_mul_f32_e32 v4, v4, v125
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v117, 1, v117
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v5, v5, v125
	v_mul_f32_e32 v6, v6, v125
	v_mul_f32_e32 v7, v7, v125
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v37, v80, v40
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v117, v115, v117, 0x7fff
	v_mov_b16_e32 v117.l, v113.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v31, v31, v125 :: v_dual_mov_b32 v80, v37
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v115.h, 0x7fff, v117.h, s3
	v_cmp_o_f32_e64 s3, v116, v116
	v_mov_b16_e32 v116.l, v114.h
	v_mov_b16_e32 v116.h, v41.l
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v25, v25, v125
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v117.h, v41.l
	v_cndmask_b16 v115.l, 0x7fff, v118.h, s3
	v_cmp_o_f32_e64 s3, v114, v114
	v_and_b32_e32 v116, 1, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v117, 1, v117
	v_add3_u32 v116, v114, v116, 0x7fff
	v_mov_b16_e32 v114.l, v44.h
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v117, v113, v117, 0x7fff
	v_mov_b16_e32 v114.h, v41.l
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v27, v27, v125
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v116.h, 0x7fff, v116.h, s3
	v_cmp_o_f32_e64 s3, v113, v113
	v_mov_b16_e32 v113.l, v112.h
	v_mov_b16_e32 v113.h, v41.l
	v_and_b32_e32 v114, 1, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v116.l, 0x7fff, v117.h, s3
	v_cmp_o_f32_e64 s3, v112, v112
	v_and_b32_e32 v113, 1, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v114, v44, v114, 0x7fff
	v_add3_u32 v113, v112, v113, 0x7fff
	v_mov_b16_e32 v112.l, v42.h
	v_mov_b16_e32 v112.h, v41.l
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v29, v29, v125
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v117.h, 0x7fff, v113.h, s3
	v_cmp_o_f32_e64 s3, v44, v44
	v_mov_b16_e32 v44.l, v43.h
	v_mov_b16_e32 v44.h, v41.l
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v20, v20, v125
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_b128 v[120:123], v33
	ds_load_b128 v[128:131], v33 offset:512
	ds_load_b128 v[136:139], v33 offset:1024
	ds_load_b128 v[144:147], v33 offset:1536
	ds_load_b128 v[124:127], v88
	ds_load_b128 v[132:135], v88 offset:512
	ds_load_b128 v[140:143], v88 offset:1024
	ds_load_b128 v[148:151], v88 offset:1536
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v117.l, 0x7fff, v114.h, s3
	v_cmp_o_f32_e64 s3, v43, v43
	v_and_b32_e32 v41, 1, v44
	v_and_b32_e32 v44, 1, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v41, v43, v41, 0x7fff
	v_add3_u32 v44, v42, v44, 0x7fff
	v_permlanex16_b32 v43, v116, s50, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s3
	v_cmp_o_f32_e64 s3, v42, v42
	v_permlanex16_b32 v42, v115, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v114, v43, v116, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v41.l, 0x7fff, v44.h, s3
	v_permlanex16_b32 v44, v117, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v112, v42, v115, v109
	v_perm_b32 v113, v42, v115, v110
	v_perm_b32 v115, v43, v116, v110
	v_permlanex16_b32 v119, v41, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v116, v44, v117, v109
	v_perm_b32 v117, v44, v117, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v118, v119, v41, v109
	v_perm_b32 v119, v119, v41, v110
	.loc	1 816 23 is_stmt 0              ; attention.py:816:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[120:127], v[112:119], v[24:31]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[128:135], v[112:119], v[16:23]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[136:143], v[112:119], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[144:151], v[112:119], v[0:7]
	v_dual_mov_b32 v112, v39 :: v_dual_mov_b32 v113, v38
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	s_cbranch_scc0 .LBB0_20
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 711 32                        ; attention.py:711:32
	v_add_nc_u32_e32 v33, s48, v90
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v35, v92, s48, 1
	v_add_lshl_u32 v36, v93, s48, 1
	v_add_lshl_u32 v37, v94, s48, 1
	v_add_lshl_u32 v38, v95, s48, 1
	.loc	1 711 32                        ; attention.py:711:32
	v_mad_u64_u32 v[33:34], null, v33, s34, v[46:47]
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v34, v91, s48, 1
	v_add_lshl_u32 v39, v96, s48, 1
	v_add_lshl_u32 v40, v97, s48, 1
	v_add_lshl_u32 v41, v98, s48, 1
	.loc	1 752 25                        ; attention.py:752:25
	s_add_i32 s6, s23, s48
	.loc	1 712 32                        ; attention.py:712:32
	v_cndmask_b32_e64 v33, 0x80000000, v33, s4
	buffer_load_b32 v33, v33, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b32 v82, v33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 727 37                        ; attention.py:727:37
	s_clause 0x7
	buffer_load_u16 v121, v34, s[40:43], 0 offen
	buffer_load_u16 v120, v35, s[40:43], 0 offen
	buffer_load_u16 v119, v36, s[40:43], 0 offen
	buffer_load_u16 v118, v37, s[40:43], 0 offen
	buffer_load_u16 v117, v38, s[40:43], 0 offen
	buffer_load_u16 v116, v39, s[40:43], 0 offen
	buffer_load_u16 v115, v40, s[40:43], 0 offen
	buffer_load_u16 v114, v41, s[40:43], 0 offen
	.loc	1 717 33                        ; attention.py:717:33
	v_dual_mov_b32 v36, v32 :: v_dual_add_nc_u32 v33, 0, v78
	.loc	1 712 32                        ; attention.py:712:32
	ds_load_b64 v[41:42], v33
	ds_load_b64 v[43:44], v84
	ds_load_b64 v[122:123], v85
	.loc	1 717 33                        ; attention.py:717:33
	v_mov_b32_e32 v39, v32
	v_mov_b32_e32 v33, v32
	v_mov_b32_e32 v34, v32
	v_mov_b32_e32 v35, v32
	v_mov_b32_e32 v37, v32
	v_mov_b32_e32 v38, v32
	v_mov_b32_e32 v40, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v39, v38
	v_mov_b32_e32 v38, v37
	v_mov_b32_e32 v37, v36
	v_mov_b32_e32 v36, v35
	v_mov_b32_e32 v35, v34
	v_mov_b32_e32 v34, v33
	v_mov_b32_e32 v33, v32
	.loc	1 712 32                        ; attention.py:712:32
	ds_load_b64 v[124:125], v86
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[53:54], v[33:40] neg_lo:[1,1,0]
	.loc	1 708 31                        ; attention.py:708:31
	v_or_b32_e32 v41, s48, v67
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[43:44], v[51:52], v[33:40] neg_lo:[1,1,0]
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s3, v41, v76
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s5, v41, v77
	v_mov_b16_e32 v41.l, 0
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[122:123], v[49:50], v[33:40] neg_lo:[1,1,0]
	.loc	1 749 21                        ; attention.py:749:21
	s_and_b32 s3, s3, s5
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b16_e32 v41.h, v41.l
	s_and_b32 s9, vcc_lo, s3
	.loc	1 717 33                        ; attention.py:717:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[124:125], v[47:48], v[33:40] neg_lo:[1,1,0]
	.loc	1 759 34                        ; attention.py:759:34
	s_and_saveexec_b32 s5, s9
	s_cbranch_execz .LBB0_5
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v42, s6, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v43, 31, v42
	v_add_co_u32 v42, s3, s26, v42
	v_add_co_ci_u32_e64 v43, null, s27, v43, s3
	.loc	1 759 34                        ; attention.py:759:34
	global_load_d16_hi_u8 v41, v[42:43], off
.LBB0_5:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 708 31 is_stmt 1              ; attention.py:708:31
	v_or_b32_e32 v42, s48, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s3, v42, v76
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s5, v42, v77
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s3, s3, s5
	s_and_b32 s10, vcc_lo, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 759 34 is_stmt 1              ; attention.py:759:34
	s_and_saveexec_b32 s5, s10
	s_cbranch_execz .LBB0_7
; %bb.6:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v42, s6, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v43, 31, v42
	v_add_co_u32 v42, s3, s26, v42
	v_add_co_ci_u32_e64 v43, null, s27, v43, s3
	global_load_d16_u8 v41, v[42:43], off
.LBB0_7:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 708 31 is_stmt 1              ; attention.py:708:31
	v_or_b32_e32 v43, s48, v70
	v_mov_b16_e32 v42.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s3, v43, v76
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s5, v43, v77
	v_mov_b16_e32 v42.h, v42.l
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s3, s3, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s11, vcc_lo, s3
	.loc	1 759 34 is_stmt 1              ; attention.py:759:34
	s_and_saveexec_b32 s5, s11
	s_cbranch_execz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v43, s6, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v44, 31, v43
	v_add_co_u32 v43, s3, s26, v43
	v_add_co_ci_u32_e64 v44, null, s27, v44, s3
	global_load_d16_hi_u8 v42, v[43:44], off
.LBB0_9:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 708 31 is_stmt 1              ; attention.py:708:31
	v_or_b32_e32 v43, s48, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s3, v43, v76
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s5, v43, v77
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s3, s3, s5
	s_and_b32 s12, vcc_lo, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 759 34 is_stmt 1              ; attention.py:759:34
	s_and_saveexec_b32 s5, s12
	s_cbranch_execz .LBB0_11
; %bb.10:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v43, s6, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v44, 31, v43
	v_add_co_u32 v43, s3, s26, v43
	v_add_co_ci_u32_e64 v44, null, s27, v44, s3
	global_load_d16_u8 v42, v[43:44], off
.LBB0_11:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 708 31 is_stmt 1              ; attention.py:708:31
	v_or_b32_e32 v44, s48, v72
	v_mov_b16_e32 v43.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s3, v44, v76
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s5, v44, v77
	v_mov_b16_e32 v44.l, v43.h
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s3, s3, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s13, vcc_lo, s3
	.loc	1 759 34 is_stmt 1              ; attention.py:759:34
	s_and_saveexec_b32 s5, s13
	s_cbranch_execz .LBB0_13
; %bb.12:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v44, s6, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v123, 31, v44
	v_add_co_u32 v122, s3, s26, v44
	v_add_co_ci_u32_e64 v123, null, s27, v123, s3
	global_load_d16_u8 v44, v[122:123], off
.LBB0_13:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 708 31 is_stmt 1              ; attention.py:708:31
	v_or_b32_e32 v122, s48, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s3, v122, v76
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s5, v122, v77
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s3, s3, s5
	s_and_b32 s18, vcc_lo, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 759 34 is_stmt 1              ; attention.py:759:34
	s_and_saveexec_b32 s5, s18
	s_cbranch_execz .LBB0_15
; %bb.14:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v43, s6, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v123, 31, v43
	v_add_co_u32 v122, s3, s26, v43
	v_add_co_ci_u32_e64 v123, null, s27, v123, s3
	global_load_d16_hi_u8 v43, v[122:123], off
.LBB0_15:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 708 31 is_stmt 1              ; attention.py:708:31
	v_or_b32_e32 v122, s48, v74
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v43.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s3, v122, v76
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s5, v122, v77
	v_mov_b16_e32 v44.h, v43.l
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s3, s3, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s19, vcc_lo, s3
	.loc	1 759 34 is_stmt 1              ; attention.py:759:34
	s_and_saveexec_b32 s5, s19
	s_cbranch_execz .LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v122, s6, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v123, 31, v122
	v_add_co_u32 v122, s3, s26, v122
	v_add_co_ci_u32_e64 v123, null, s27, v123, s3
	global_load_d16_hi_u8 v44, v[122:123], off
.LBB0_17:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 708 31 is_stmt 1              ; attention.py:708:31
	v_or_b32_e32 v122, s48, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 748 30                        ; attention.py:748:30
	v_cmp_ge_i32_e64 s3, v122, v76
	.loc	1 749 30                        ; attention.py:749:30
	v_cmp_le_i32_e64 s5, v122, v77
	.loc	1 749 21 is_stmt 0              ; attention.py:749:21
	s_and_b32 s3, s3, s5
	s_and_b32 s20, vcc_lo, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 759 34 is_stmt 1              ; attention.py:759:34
	s_and_saveexec_b32 s5, s20
	s_cbranch_execz .LBB0_2
; %bb.18:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v122, s6, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v123, 31, v122
	v_add_co_u32 v122, s3, s26, v122
	v_add_co_ci_u32_e64 v123, null, s27, v123, s3
	global_load_d16_u8 v43, v[122:123], off
	s_branch .LBB0_2
.LBB0_19:
	.loc	1 0 34                          ; attention.py:0:34
	v_mov_b32_e32 v7, 0
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v6, v7
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
.LBB0_20:                               ; %._crit_edge
	.loc	1 707 13 is_stmt 1              ; attention.py:707:13
	ds_bpermute_b32 v32, v65, v37
	.loc	1 848 17                        ; attention.py:848:17
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
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
	v_rcp_f32_e32 v51, v42
	v_fma_f32 v53, -v33, v44, 1.0
	v_div_scale_f32 v34, vcc_lo, v24, v32, v24
	v_div_scale_f32 v36, s0, v25, v32, v25
	v_fma_f32 v54, -v35, v45, 1.0
	v_fma_f32 v65, -v37, v46, 1.0
	v_fmac_f32_e32 v44, v53, v44
	v_div_scale_f32 v38, s1, v26, v32, v26
	v_fma_f32 v66, -v39, v47, 1.0
	v_fma_f32 v67, -v41, v48, 1.0
	v_dual_fmac_f32 v45, v54, v45 :: v_dual_fmac_f32 v46, v65, v46
	v_fma_f32 v53, -v42, v51, 1.0
	v_mul_f32_e32 v54, v34, v44
	v_div_scale_f32 v50, s5, v29, v32, v29
	v_fmac_f32_e32 v47, v66, v47
	v_dual_mul_f32 v65, v36, v45 :: v_dual_mul_f32 v66, v38, v46
	v_dual_fmac_f32 v51, v53, v51 :: v_dual_fmac_f32 v48, v67, v48
	v_fma_f32 v67, -v33, v54, v34
	v_div_scale_f32 v40, s3, v27, v32, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v69, -v35, v65, v36
	v_fma_f32 v70, -v37, v66, v38
	v_fmac_f32_e32 v54, v67, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v68, v40, v47
	v_div_scale_f32 v43, null, v32, v32, v30
	v_div_scale_f32 v49, s4, v28, v32, v28
	v_fma_f32 v33, -v33, v54, v34
	v_fmac_f32_e32 v65, v69, v45
	v_fma_f32 v71, -v39, v68, v40
	v_fmac_f32_e32 v66, v70, v46
	v_rcp_f32_e32 v52, v43
	v_div_fmas_f32 v33, v33, v44, v54
	v_fma_f32 v34, -v35, v65, v36
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v35, -v37, v66, v38
	v_mul_f32_e32 v37, v50, v51
	v_dual_mul_f32 v53, v49, v48 :: v_dual_fmac_f32 v68, v71, v47
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
	v_fma_f32 v38, -v43, v52, 1.0
	v_div_fixup_f32 v26, v35, v32, v26
	v_div_scale_f32 v35, s1, v30, v32, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v27, v34, v32, v27
	v_fma_f32 v34, -v42, v37, v50
	v_fmac_f32_e32 v52, v38, v52
	v_fma_f32 v38, -v33, v39, 1.0
	v_fma_f32 v36, -v41, v53, v49
	v_div_scale_f32 v47, null, v32, v32, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v37, v34, v51 :: v_dual_mul_f32 v34, v35, v52
	v_fmac_f32_e32 v39, v38, v39
	v_div_scale_f32 v38, s3, v31, v32, v31
	v_fmac_f32_e32 v53, v36, v48
	v_div_scale_f32 v36, null, v32, v32, v16
	v_fma_f32 v44, -v43, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v38, v39
	v_fma_f32 v40, -v41, v53, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v41, v36
	v_fma_f32 v42, -v42, v37, v50
	v_fmac_f32_e32 v34, v44, v52
	v_fma_f32 v44, -v33, v45, v38
	s_mov_b32 vcc_lo, s4
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s0, 0, v32
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v40, v40, v48, v53
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v35, -v43, v34, v35
	v_div_fmas_f32 v37, v42, v51, v37
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
	v_div_fmas_f32 v34, v35, v52, v34
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
	v_mul_f32_e32 v51, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v1, v32, v1
	v_div_fixup_f32 v13, v36, v32, v13
	v_fma_f32 v35, -v38, v40, v35
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v33, -v43, v42, v33
	v_fmac_f32_e32 v51, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v2, v32, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_div_fmas_f32 v35, v35, v44, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, null, v32, v32, v3
	v_div_fmas_f32 v33, v33, v45, v42
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v14, v35, v32, v14
	v_div_fmas_f32 v34, v34, v37, v51
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
	v_dual_mul_f32 v51, v45, v39 :: v_dual_mul_f32 v52, v48, v41
	v_fmac_f32_e32 v49, v47, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v51, v45
	v_fma_f32 v47, -v37, v52, v48
	v_fma_f32 v33, -v34, v49, v33
	v_fma_f32 v34, -v44, v53, v50
	v_div_fmas_f32 v38, v38, v42, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v51, v40, v39 :: v_dual_fmac_f32 v52, v47, v41
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v53, v34, v46
	v_div_fmas_f32 v33, v33, v36, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v44, v53, v50
	v_div_fixup_f32 v3, v38, v32, v3
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v4, v33, v32, v4
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v35, v32, v5
	v_div_fmas_f32 v36, v36, v46, v53
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
	v_mul_lo_u32 v32, s35, v64
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
	s_mul_i32 s0, s35, s33
	v_add_nc_u32_e32 v35, v32, v58
	v_add_nc_u32_e32 v32, s0, v32
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s35, v58
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v33, 16, v58
	v_or_b32_e32 v34, 32, v58
	.loc	1 843 24 is_stmt 0              ; attention.py:843:24
	v_add_lshl_u32 v35, v35, s0, 2
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_add_lshl_u32 v38, v32, v58, 2
	v_add_lshl_u32 v39, v32, v60, 2
	v_add_lshl_u32 v40, v32, v59, 2
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
	v_add_lshl_u32 v24, v32, v57, 2
	v_add_lshl_u32 v25, v32, v56, 2
	v_add_lshl_u32 v26, v32, v55, 2
	v_add_lshl_u32 v38, v32, v62, 2
	v_add_lshl_u32 v39, v32, v61, 2
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
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x2
	buffer_store_b32 v16, v24, s[24:27], 0 offen
	buffer_store_b32 v17, v25, s[24:27], 0 offen
	buffer_store_b32 v18, v26, s[24:27], 0 offen
	v_add_nc_u32_e32 v17, 0x68, v35
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s35, v34
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e32 v16, 0x80000000, v28, vcc_lo
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
	v_or_b32_e32 v36, 48, v58
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
	v_or_b32_e32 v37, 62, v63
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
.Ltmp32:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 152
		.amdhsa_next_free_sgpr 52
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_vgpr, 152
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9948
; TotalNumSgprs: 54
; NumVgprs: 152
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 54
; NumVGPRsForWavesPerEU: 152
; Occupancy: 9
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
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     152
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
