	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x60
	s_load_b256 s[36:43], s[0:1], 0x0
	v_dual_mov_b32 v46, 0x6420 :: v_dual_and_b32 v39, 1, v0
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v40, 1, v0
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s6, s2, 6
	.loc	1 583 26                        ; attention.py:583:26
	s_lshl_b32 s2, s3, 11
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v47, 0x7531 :: v_dual_lshlrev_b32 v38, 4, v39
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s33, s6, s2
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v41, s6, v40
	.loc	1 584 26                        ; attention.py:584:26
	v_or_b32_e32 v1, s33, v40
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v94, 0xff800000
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v43, 0x60, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v41
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	v_dual_mov_b32 v49, 0x7632 :: v_dual_and_b32 v44, 15, v0
	.loc	1 584 26                        ; attention.py:584:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[1:2], null, s28, v1, v[38:39]
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s2, s28, v38
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s45, s37, 0xffff
	s_mov_b32 s44, s36
	v_mov_b32_e32 v26, v33
	s_load_b64 s[4:5], s[0:1], 0x70
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 s2, vcc_lo, s2
	s_load_b256 s[20:27], s[0:1], 0x20
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v95, 0xff800000 :: v_dual_lshlrev_b32 v52, 1, v0
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_u32 v56, v0, 4, 1
	.loc	1 585 26                        ; attention.py:585:26
	buffer_load_b128 v[34:37], v1, s[44:47], 0 offen
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v1, 1, v43
	.loc	1 590 31                        ; attention.py:590:31
	s_and_b32 s45, s43, 0xffff
	s_mov_b32 s44, s42
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s0, s0, 28
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v66, 0x70, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v55, v1, v44
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v9, 0 :: v_dual_lshlrev_b32 v68, 5, v0
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_i32 v51, v0, 0, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 591 17                        ; attention.py:591:17
	v_or_b32_e32 v1, s33, v55
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, s6, v55
	v_dual_mov_b32 v48, 0x5410 :: v_dual_lshlrev_b32 v67, 7, v0
	v_dual_mov_b32 v18, v33 :: v_dual_lshlrev_b32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x800, v2
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s1, s0, -16
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s6, s0, 4
	.loc	1 585 26                        ; attention.py:585:26
	v_and_or_b32 v70, v52, 30, v56
	v_cmp_eq_u32_e64 s0, 0, v39
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_bfe_i32 v69, v0, 2, 1
	v_dual_mov_b32 v29, v33 :: v_dual_lshlrev_b32 v88, 3, v39
	v_dual_mov_b32 v19, v33 :: v_dual_and_b32 v52, 24, v52
	buffer_load_u16 v45, v1, s[44:47], 0 offen
	v_dual_mov_b32 v20, v33 :: v_dual_and_b32 v51, 0x90, v51
	v_mov_b32_e32 v21, v33
	v_dual_mov_b32 v23, v33 :: v_dual_and_b32 v68, 0x160, v68
	v_mov_b32_e32 v11, v33
	v_cndmask_b32_e64 v39, 0x7531, v46, s0
	v_and_b32_e32 v46, 0x700, v67
	v_lshrrev_b32_e32 v67, 2, v66
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v66, 2, v70
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s3, s3, s1
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v54, 2, v0
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_u32 s1, s3, 0x10007
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v50, 3, v0
	v_lshrrev_b32_e32 v57, 4, v0
	v_dual_mov_b32 v32, v33 :: v_dual_and_b32 v53, 16, v0
	v_dual_mov_b32 v27, v33 :: v_dual_lshlrev_b32 v0, 2, v44
	v_lshrrev_b32_e32 v43, 2, v43
	.loc	1 569 19                        ; attention.py:569:19
	s_add_i32 s1, s3, s1
	v_lshl_or_b32 v44, v44, 5, v52
	v_and_or_b32 v38, v40, 15, v38
	v_xor_b32_e32 v40, v51, v67
	v_and_or_b32 v67, 0x90, v69, v68
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v68, 4, v66
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_i32 s1, s1, 0x80000
	v_dual_mov_b32 v31, v33 :: v_dual_and_b32 v42, 28, v54
	s_sext_i32_i16 s1, s1
	v_dual_mov_b32 v24, v33 :: v_dual_lshlrev_b32 v69, 2, v38
	v_dual_mov_b32 v10, v33 :: v_dual_add_nc_u32 v71, 0, v44
	v_xor_b32_e32 v43, v54, v43
	v_cndmask_b32_e64 v47, 0x6420, v47, s0
	v_lshl_or_b32 v39, v39, 8, v39
	v_xor_b32_e32 v51, 8, v44
	v_xor_b32_e32 v52, 16, v44
	v_xor_b32_e32 v54, 24, v44
	v_xor_b32_e32 v38, 16, v67
	s_ashr_i32 s1, s1, 1
	v_dual_mov_b32 v13, v33 :: v_dual_add_nc_u32 v46, 0, v46
	.loc	1 710 33                        ; attention.py:710:33
	s_lshl3_add_u32 s7, s6, s1
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s6, s31, s6
	.loc	1 754 27                        ; attention.py:754:27
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s4, s4, s3
	v_dual_mov_b32 v22, v33 :: v_dual_and_b32 v39, 0x750031, v39
	v_dual_mov_b32 v7, v33 :: v_dual_add_nc_u32 v78, 0, v38
	v_lshl_or_b32 v47, v47, 8, v47
	s_add_i32 s6, s4, s6
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s4, 0, v53
	v_dual_mov_b32 v3, v33 :: v_dual_add_nc_u32 v72, v46, v40
	v_mul_lo_u32 v40, s5, v41
	.loc	1 710 32                        ; attention.py:710:32
	s_lshl_b32 s5, s7, 11
	v_dual_mov_b32 v12, v33 :: v_dual_and_b32 v41, 0x750031, v47
	v_dual_mov_b32 v14, v33 :: v_dual_add_nc_u32 v75, 0, v51
	v_lshl_or_b32 v39, v39, 4, v39
	v_or_b32_e32 v79, s5, v50
	v_cndmask_b32_e64 v46, 0x1054, v48, s4
	v_cndmask_b32_e64 v47, 0x3276, v49, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v2, v33 :: v_dual_and_b32 v89, 0x7050301, v39
	v_add3_u32 v88, s6, v88, v40
	v_lshl_or_b32 v39, v46, 8, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v40, v47, 8, v47
	v_dual_mov_b32 v15, v33 :: v_dual_add_nc_u32 v70, 0, v43
	v_mov_b32_e32 v4, v33
	v_mov_b32_e32 v6, v33
	.loc	1 571 21                        ; attention.py:571:21
	v_or_b32_e32 v64, 2, v56
	v_or_b32_e32 v63, 4, v56
	v_or_b32_e32 v62, 6, v56
	v_or_b32_e32 v61, 8, v56
	v_or_b32_e32 v60, 10, v56
	v_or_b32_e32 v59, 12, v56
	v_or_b32_e32 v58, 14, v56
	v_lshl_or_b32 v41, v41, 4, v41
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v28, v33
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v30, v33
	v_dual_mov_b32 v16, v33 :: v_dual_add_nc_u32 v77, 0, v54
	v_dual_mov_b32 v5, v33 :: v_dual_add_nc_u32 v76, 0, v52
	.loc	1 714 31                        ; attention.py:714:31
	v_cmp_gt_i32_e64 s1, s28, v42
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e64 s3, s29, v0
	v_lshl_or_b32 v73, s7, 10, v57
	v_xor_b32_e32 v74, 64, v69
	v_or_b32_e32 v80, s5, v56
	v_or_b32_e32 v81, s5, v64
	v_or_b32_e32 v82, s5, v63
	v_or_b32_e32 v83, s5, v62
	v_or_b32_e32 v84, s5, v61
	v_or_b32_e32 v85, s5, v60
	v_or_b32_e32 v86, s5, v59
	v_or_b32_e32 v87, s5, v58
	v_and_b32_e32 v90, 0x7050301, v41
	v_mov_b32_e32 v96, 0xff800000
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s30, s30, 0x3fb8aa3b
	s_and_b32 s39, s39, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s23, s23, 0xffff
	s_mov_b32 s34, 0
	s_mov_b32 s35, 0x76543210
	s_mov_b32 s50, s46
	s_mov_b32 s51, s47
	s_mov_b32 s54, s46
	s_mov_b32 s55, s47
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s48, s20
	s_mov_b32 s52, s22
	.loc	1 794 21                        ; attention.py:794:21
	s_lshl_b32 s31, s7, 7
	s_mov_b32 s49, s21
	s_mov_b32 s53, s23
	s_mov_b32 s42, s46
	s_mov_b32 s43, s47
	s_mov_b32 s44, s38
	s_mov_b32 s45, s39
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v44, v66, v34
	ds_bpermute_b32 v34, v68, v34
	ds_bpermute_b32 v38, v66, v35
	ds_bpermute_b32 v35, v68, v35
	ds_bpermute_b32 v50, v66, v36
	ds_bpermute_b32 v36, v68, v36
	ds_bpermute_b32 v51, v66, v37
	ds_bpermute_b32 v37, v68, v37
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v43, v34, v44, s4
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v46, v38, v35, s4
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v47, v36, v50, s4
	v_cndmask_b32_e64 v49, v50, v36, s4
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v48, v37, v51, s4
	v_cndmask_b32_e64 v50, v51, v37, s4
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v91, 16, v45
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v45, v44, v34, s4
	v_and_b32_e32 v34, 0x540054, v39
	v_and_b32_e32 v39, 0x760076, v40
	v_cndmask_b32_e64 v44, v35, v38, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v34, v34, 4, v34
	v_lshl_or_b32 v35, v39, 4, v39
	v_mov_b32_e32 v8, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v92, 0x5040504, v34
	v_and_b32_e32 v93, 0x7060706, v35
	s_branch .LBB0_2
.LBB0_1:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 26 is_stmt 0                ; attention.py:0:26
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 717 33 is_stmt 1              ; attention.py:717:33
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v104, 8, v54
	.loc	1 759 34                        ; attention.py:759:34
	v_lshrrev_b32_e32 v109, 8, v53
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v104.h, v106.l
	v_mov_b16_e32 v105.h, v107.l
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v106, v34
	v_cvt_f32_i32_e32 v107, v35
	v_cvt_f32_i32_e32 v34, v40
	v_cvt_f32_i32_e32 v35, v41
	.loc	1 759 34                        ; attention.py:759:34
	v_lshrrev_b32_e32 v40, 24, v53
	v_lshrrev_b32_e32 v41, 24, v54
	v_and_b16 v40.h, 0xff, v54.l
	v_and_b16 v110.l, 0xff, v54.h
	v_and_b16 v41.h, 0xff, v109.l
	v_and_b16 v54.l, 0xff, v104.l
	v_and_b16 v109.h, 0xff, v53.h
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s5, s34, 4
	.loc	1 759 34                        ; attention.py:759:34
	v_cmp_ne_u16_e64 s11, 0, v110.l
	v_cmp_ne_u16_e64 s13, 0, v41.h
	v_cmp_ne_u16_e64 s14, 0, v54.l
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v103.h, v105.l
	.loc	1 759 34                        ; attention.py:759:34
	v_and_b16 v105.l, 0xff, v53.l
	.loc	1 771 36                        ; attention.py:771:36
	s_lshr_b32 s6, s34, 1
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s5, s5, s31
	.loc	1 759 34                        ; attention.py:759:34
	v_cmp_ne_u16_e64 s9, 0, v40.l
	.loc	1 759 25 is_stmt 0              ; attention.py:759:25
	s_and_b32 s11, vcc_lo, s11
	s_and_b32 s13, vcc_lo, s13
	s_and_b32 s14, vcc_lo, s14
	.loc	1 774 30 is_stmt 1              ; attention.py:774:30
	v_add_nc_u32_e32 v51, s6, v73
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s5, s5, s29
	.loc	1 759 34                        ; attention.py:759:34
	v_cmp_ne_u16_e64 s6, 0, v109.h
	.loc	1 759 25 is_stmt 0              ; attention.py:759:25
	v_cndmask_b32_e64 v109, 0, 1, s11
	v_cndmask_b32_e64 v111, 0, 1, s13
	v_cndmask_b32_e64 v112, 0, 1, s14
	.loc	1 797 41 is_stmt 1              ; attention.py:797:41
	v_add_lshl_u32 v97, s5, v0, 1
	.loc	1 759 34                        ; attention.py:759:34
	v_cmp_ne_u16_e64 s5, 0, v105.l
	v_cmp_ne_u16_e64 s10, 0, v40.h
	v_cmp_ne_u16_e64 s12, 0, v41.l
	.loc	1 759 25 is_stmt 0              ; attention.py:759:25
	s_and_b32 s9, vcc_lo, s9
	.loc	1 732 30 is_stmt 1              ; attention.py:732:30
	v_cvt_f32_i32_e32 v108, v36
	v_cvt_f32_i32_e32 v36, v37
	v_cvt_f32_i32_e32 v37, v38
	v_cvt_f32_i32_e32 v38, v39
	.loc	1 759 25                        ; attention.py:759:25
	v_cndmask_b32_e64 v40, 0, 1, s9
	v_mov_b16_e32 v105.l, v109.l
	v_mov_b16_e32 v104.l, v111.l
	v_mov_b16_e32 v109.l, v112.l
	s_and_b32 s15, vcc_lo, s5
	s_and_b32 s16, vcc_lo, s6
	s_and_b32 s10, vcc_lo, s10
	s_and_b32 s12, vcc_lo, s12
	v_cndmask_b32_e64 v54, 0, 1, s15
	v_cndmask_b32_e64 v41, 0, 1, s16
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v101.h, v102.l
	v_mov_b16_e32 v102.h, v103.l
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v39, v96, v96 :: v_dual_mul_f32 v38, v91, v38
	.loc	1 759 25                        ; attention.py:759:25
	v_cndmask_b32_e64 v110, 0, 1, s10
	v_lshlrev_b16 v40.l, 8, v40.l
	v_lshlrev_b16 v41.h, 8, v104.l
	v_lshlrev_b16 v54.h, 8, v109.l
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v37, v91, v37
	v_mul_f32_e32 v36, v91, v36
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v53, v95, v95
	.loc	1 759 25                        ; attention.py:759:25
	v_cndmask_b32_e64 v95, 0, 1, s12
	v_or_b16 v95.h, v41.l, v40.l
	v_or_b16 v40.l, v110.l, v54.h
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v99.h, v100.l
	v_mov_b16_e32 v100.h, v101.l
	.loc	1 759 25                        ; attention.py:759:25
	v_lshlrev_b16 v40.h, 8, v95.l
	v_or_b16 v95.l, v54.l, v41.h
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v54, v91, v107
	.loc	1 774 30                        ; attention.py:774:30
	v_mad_u64_u32 v[51:52], null, v51, s29, v[0:1]
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v52, 0x80000000, v97, s3
	.loc	1 759 25                        ; attention.py:759:25
	v_or_b16 v40.h, v105.l, v40.h
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s7, 0xff800000, v94
	v_cmp_neq_f32_e64 s8, 0xff800000, v96
	.loc	1 759 25                        ; attention.py:759:25
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v97, 0x80000000, v51, s3
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_b64 v[51:52], v52, s[52:55], 0 offen
	.loc	1 775 32                        ; attention.py:775:32
	buffer_load_b32 v98, v97, s[40:43], 0 offen
	.loc	1 759 25                        ; attention.py:759:25
	v_perm_b32 v107, v40, v95, v89
	v_perm_b32 v40, v40, v95, v90
	.loc	1 717 33                        ; attention.py:717:33
	v_mov_b16_e32 v97.l, 0
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v97.h, v99.l
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	.loc	1 759 25                        ; attention.py:759:25
	ds_bpermute_b32 v95, v66, v107
	ds_bpermute_b32 v40, v68, v40
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v99.l, v97.l
	v_mov_b16_e32 v100.l, v97.l
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v41, v91, v106
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v104.l, v97.l
	v_mov_b16_e32 v105.l, v97.l
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v54, v54, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v106, v91, v108 :: v_dual_mul_f32 v41, v41, v97
	v_mul_f32_e32 v34, v91, v34
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v102.l, v97.l
	v_mov_b16_e32 v103.l, v97.l
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v99, v106, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v35, v91, v35 :: v_dual_mul_f32 v34, v34, v104
	.loc	1 742 17                        ; attention.py:742:17
	v_mul_f32_e32 v54, s30, v54
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v38, v38, v103 :: v_dual_mul_f32 v37, v37, v102
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v35, v35, v105
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v101.l, v97.l
	.loc	1 759 25                        ; attention.py:759:25
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v100, v40, v95, s4
	v_cndmask_b32_e64 v40, v95, v40, s4
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v37, s30, v37 :: v_dual_mul_f32 v34, s30, v34
	v_dual_mul_f32 v35, s30, v35 :: v_dual_mul_f32 v36, v36, v101
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 759 25                        ; attention.py:759:25
	v_and_b32_e32 v102, 1, v40
	v_and_b32_e32 v103, 0x100, v40
	v_and_b32_e32 v104, 0x1000000, v40
	v_and_b32_e32 v40, 0x10000, v40
	v_and_b32_e32 v101, 0x100, v100
	v_and_b32_e32 v105, 0x1000000, v100
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v41, s30, v41 :: v_dual_mul_f32 v36, s30, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u32_e64 s19, 0, v40
	v_cmp_eq_u32_e64 s20, 0, v104
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v99, s30, v99 :: v_dual_mul_f32 v38, s30, v38
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u32_e64 s18, 0, v101
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v34, v34, 0xff800000, s19
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v35, v35, 0xff800000, s20
	.loc	1 759 25                        ; attention.py:759:25
	v_and_b32_e32 v95, 1, v100
	v_and_b32_e32 v100, 0x10000, v100
	v_cmp_eq_u32_e64 s6, 1, v102
	v_cmp_eq_u32_e64 s5, 0, v103
	v_cmp_eq_u32_e64 s22, 0, v105
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v102, v34, v35
.Ltmp2:
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u32_e64 s17, 1, v95
	v_cmp_eq_u32_e64 s21, 0, v100
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v37, 0xff800000, v37, s6
	v_cndmask_b32_e64 v38, v38, 0xff800000, s5
	v_cndmask_b32_e64 v36, v36, 0xff800000, s22
	v_cndmask_b32_e64 v40, 0xff800000, v41, s17
	v_cndmask_b32_e64 v41, v54, 0xff800000, s18
	v_cndmask_b32_e64 v54, v99, 0xff800000, s21
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v107.l, v97.l
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v104, v36, v37, v38
.Ltmp4:
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v111, v35, v36, s4
	v_cndmask_b32_e64 v100, v38, v41, s4
	v_cndmask_b32_e64 v101, v41, v38, s4
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v103, v40, v41, v54
.Ltmp6:
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v105, v34, v54, s4
	v_cndmask_b32_e64 v106, v54, v34, s4
	v_cndmask_b32_e64 v112, v36, v35, s4
	v_cndmask_b32_e64 v95, v37, v40, s4
	v_cndmask_b32_e64 v99, v40, v37, s4
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v102, v103, v104, v102
.Ltmp8:
	.loc	1 764 26                        ; attention.py:764:26
	ds_bpermute_b32 v100, v69, v100
	ds_bpermute_b32 v101, v74, v101
	ds_bpermute_b32 v103, v69, v105
	ds_bpermute_b32 v104, v74, v106
	ds_bpermute_b32 v105, v74, v112
	ds_bpermute_b32 v106, v69, v111
	ds_bpermute_b32 v95, v69, v95
	ds_bpermute_b32 v99, v74, v99
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v111, v102, s35, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v109.h, v97.l
	v_mov_b16_e32 v112.h, v97.l
	v_mov_b16_e32 v108.h, v97.l
	v_mov_b16_e32 v114.h, v97.l
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v136, v94, v102, v111
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v102.h, v97.l
	v_mov_b16_e32 v111.h, v97.l
	v_mov_b16_e32 v110.h, v97.l
	v_mov_b16_e32 v113.h, v97.l
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v37, v37, v136
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v115.h, v97.l
	.loc	1 814 30                        ; attention.py:814:30
	s_barrier
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v116, v101, v100, s0
	v_cndmask_b32_e64 v100, v100, v101, s0
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v101, v104, v103, s0
	v_cndmask_b32_e64 v103, v103, v104, s0
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	s_waitcnt lgkmcnt(2)
	v_dual_max_f32 v104, v105, v105 :: v_dual_max_f32 v117, v106, v106
	s_waitcnt lgkmcnt(0)
	v_max3_f32 v118, v95, v99, v116
.Ltmp12:
	.loc	1 759 25                        ; attention.py:759:25
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v119, v100, v101, v103
.Ltmp14:
	.loc	1 759 25                        ; attention.py:759:25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v104, v117, v104
.Ltmp16:
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v117, v99, v95, s0
	v_cndmask_b32_e64 v99, v95, v99, s0
	.loc	1 759 25                        ; attention.py:759:25
	.loc	1 787 39                        ; attention.py:787:39
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v95, v118, v119, v104
.Ltmp18:
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v104, v105, v106, s0
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v34, v34, v136
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v105, v106, v105, s0
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v118, v37
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v106, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v34, v34
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v106, v106 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v37, v106, v106
.Ltmp23:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v120, v34, 0, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v34, v95, v37
.Ltmp25:
	.loc	1 767 74                        ; attention.py:767:74
	v_dual_sub_f32 v94, v94, v136 :: v_dual_max_f32 v95, v53, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 767 61 is_stmt 0              ; attention.py:767:61
	v_exp_f32_e32 v94, v94
	.loc	1 768 62 is_stmt 1              ; attention.py:768:62
	v_sub_f32_e32 v36, v36, v136
	v_dual_sub_f32 v38, v38, v136 :: v_dual_sub_f32 v37, v116, v95
	v_sub_f32_e32 v53, v104, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v119, v38
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 767 25 is_stmt 1              ; attention.py:767:25
	v_cndmask_b32_e64 v94, 0, v94, s7
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v35, v35, v136
	v_sub_f32_e32 v40, v40, v136
	v_dual_sub_f32 v41, v41, v136 :: v_dual_sub_f32 v38, v100, v95
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v31, v31, v94
	v_mul_f32_e32 v30, v30, v94
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v35, v35
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v26, v26, v94
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v41, v41
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v27, v27, v94
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v40, v40
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v17, v17, v94
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v53, v53
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v32, v32, v94
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v37, 0, v37, s16
	v_cndmask_b32_e64 v121, v35, 0, s20
	.loc	1 768 62 is_stmt 0              ; attention.py:768:62
	v_sub_f32_e32 v35, v117, v95
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v36, v36
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v122, v41, 0, s18
	v_cndmask_b32_e64 v123, 0, v40, s17
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v41, v103, v95
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v35, v35
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v38, 0, v38, s9
	v_cndmask_b32_e64 v53, 0, v53, s11
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_mul_f32_e32 v19, v19, v94
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v41, v41
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v18, v18, v94
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v106, v36, 0, s22
	.loc	1 768 62 is_stmt 0              ; attention.py:768:62
	v_sub_f32_e32 v36, v99, v95
	v_sub_f32_e32 v99, v105, v95
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_mul_f32_e32 v11, v11, v94
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v35, 0, v35, s15
	.loc	1 768 62 is_stmt 0              ; attention.py:768:62
	v_dual_sub_f32 v54, v54, v136 :: v_dual_mul_f32 v29, v29, v94
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v99, v99
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v41, 0, v41, s14
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e32 v115.l, v123.h
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v54, v54
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v25, v25, v94
	v_mul_f32_e32 v28, v28, v94
	v_mul_f32_e32 v2, v2, v94
	v_mul_f32_e32 v4, v4, v94
	v_mul_f32_e32 v6, v6, v94
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v36, 0, v36, s13
	.loc	1 768 62 is_stmt 0              ; attention.py:768:62
	v_sub_f32_e32 v40, v101, v95
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v99, 0, v99, s12
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_mul_f32_e32 v8, v8, v94
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v54, v54, 0, s21
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp27:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v40, v40
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v1, v1, v94
	v_mul_f32_e32 v15, v15, v94
	v_mul_f32_e32 v3, v3, v94
	v_mul_f32_e32 v7, v7, v94
	v_mul_f32_e32 v5, v5, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v40, 0, v40, s10
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v36, v37, v38
	v_dual_add_f32 v38, v53, v99 :: v_dual_max_f32 v53, v39, v34
	v_dual_add_f32 v37, v40, v41 :: v_dual_add_f32 v34, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v35, v37, v38
	v_dual_add_f32 v34, v34, v35 :: v_dual_mul_f32 v21, v21, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp29:
	.loc	1 767 74                        ; attention.py:767:74
	v_dual_sub_f32 v36, v96, v53 :: v_dual_mul_f32 v23, v23, v94
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v96.l, v122.h
	v_mov_b16_e32 v96.h, v97.l
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v35, v36
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v36, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v9, v9, v94
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v137, 0, v35, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v34, v34, v36
.Ltmp33:
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v34, v65, v137
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v65, v34
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v97.h, v51.l
	.loc	1 775 32                        ; attention.py:775:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v38, 8, v98
	v_mov_b16_e32 v39.l, v98.h
	v_lshrrev_b32_e32 v40, 24, v98
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v35.l, 4, v98.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v35.h, v98.l, 15
	v_and_b16 v36.l, v98.h, 15
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v37, v98, 0, 8
	.loc	1 797 41                        ; attention.py:797:41
	v_and_b32_e32 v99, 0xffff0000, v51
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b32_e32 v41, 20, v98
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v51, v38, 0, 8
	v_bfe_i32 v98, v39, 0, 8
	v_bfe_i32 v100, v40, 0, 8
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v35.l, v35.l, 15
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s7, 7, v35.h
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v37.h, v38.l, 15
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s8, 7, v36.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v39.l, v40.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v36.h, 4, v38.l
	v_and_b16 v38.l, v41.l, 15
	v_lshrrev_b16 v38.h, 4, v40.l
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s9, 0, v37.l
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b16 v37.l, v35.l, -16
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_cndmask_b16 v39.h, 0, -16, s7
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v40.l, v51.l
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s7, 7, v37.h
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v41.l, v98.l
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v41.h, 0, -16, s8
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v51.l, v100.l
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s8, 7, v39.l
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v36.h, v36.h, 15
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v40.h, v38.l, -16
	v_or_b16 v51.h, v38.h, -16
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v98.l, v35.h, v39.h
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v37.l, v35.l, v37.l, s9
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_gt_i16_e64 s9, 0, v40.l
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_cndmask_b16 v35.h, 0, -16, s7
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s7, 0, v41.l
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v40.l, v36.l, v41.h
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s10, 0, v51.l
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v36.l, 0, -16, s8
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v35.l, v36.h, -16
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v41, v37, 0, 16
	v_bfe_i32 v98, v98, 0, 16
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v37.l, v37.h, v35.h
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v38.l, v38.l, v40.h, s7
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v40, v40, 0, 16
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v36.l, v39.l, v36.l
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v39.l, v38.h, v51.h, s10
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v107.h, v52.l
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v35.l, v36.h, v35.l, s9
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v51, v98
	v_bfe_i32 v37, v37, 0, 16
	v_cvt_f32_i32_e32 v40, v40
	v_bfe_i32 v39, v39, 0, 16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v22, v22, v94 :: v_dual_mul_f32 v51, v97, v51
	v_dual_mul_f32 v13, v13, v94 :: v_dual_mul_f32 v40, v107, v40
	.loc	1 797 41                        ; attention.py:797:41
	v_and_b32_e32 v52, 0xffff0000, v52
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v35, v35, 0, 16
	v_bfe_i32 v36, v36, 0, 16
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v10, v10, v94
	v_mul_f32_e32 v14, v14, v94
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e32 v109.l, v51.h
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v37, v99, v37
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v102.l, v40.h
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v39, v52, v39
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_dual_mul_f32 v24, v24, v94 :: v_dual_mul_f32 v35, v99, v35
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 814 31                        ; attention.py:814:31
	v_dual_mul_f32 v36, v52, v36 :: v_dual_and_b32 v99, 1, v102
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_and_b32_e32 v98, 1, v109
	v_mov_b16_e32 v112.l, v37.h
	v_mov_b16_e32 v111.l, v39.h
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_mul_f32_e32 v12, v12, v94
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v41, v41
	v_bfe_i32 v38, v38, 0, 16
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_cmp_o_f32_e64 s8, v51, v51
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v51, v51, v98, 0x7fff
	v_and_b32_e32 v98, 1, v112
	v_add3_u32 v40, v40, v99, 0x7fff
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_dual_mul_f32 v20, v20, v94 :: v_dual_and_b32 v99, 1, v111
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v41, v97, v41
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_cmp_o_f32_e64 s11, v37, v37
	v_cmp_o_f32_e64 s13, v39, v39
	v_add3_u32 v37, v37, v98, 0x7fff
	v_add3_u32 v39, v39, v99, 0x7fff
	v_mov_b16_e32 v108.l, v41.h
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e32 v39.l, v106.h
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v114.l, v36.h
	v_cndmask_b16 v40.l, 0x7fff, v37.h, s11
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s13
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v39.h, v97.l
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v38, v107, v38
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_and_b32_e32 v52, 1, v108
	v_mov_b16_e32 v110.l, v35.h
	v_and_b32_e32 v101, 1, v114
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_and_b32_e32 v39, 1, v39
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v113.l, v38.h
	v_cmp_o_f32_e64 s7, v41, v41
	v_add3_u32 v41, v41, v52, 0x7fff
	v_and_b32_e32 v52, 1, v110
	v_cmp_o_f32_e64 s14, v36, v36
	v_and_b32_e32 v100, 1, v113
	v_add3_u32 v36, v36, v101, 0x7fff
	v_cmp_o_f32_e64 s10, v35, v35
	v_cmp_o_f32_e64 s12, v38, v38
	v_add3_u32 v35, v35, v52, 0x7fff
	v_add3_u32 v38, v38, v100, 0x7fff
	v_cndmask_b16 v37.l, 0x7fff, v36.h, s14
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v36, 1, v115
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v35.l, 0x7fff, v40.h, s9
	v_cndmask_b16 v40.h, 0x7fff, v35.h, s10
	v_cndmask_b16 v35.h, 0x7fff, v38.h, s12
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v38, 1, v96
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v41.l, 0x7fff, v51.h, s8
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v36, v123, v36, 0x7fff
	v_cmp_o_f32_e64 s8, v123, v123
	v_mov_b16_e32 v51.l, v54.h
	v_add3_u32 v38, v122, v38, 0x7fff
	v_mov_b16_e32 v51.h, v97.l
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v52, v119, 0, s5
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v38.l, 0x7fff, v36.h, s8
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v36, 0, v118, s6
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s7
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v16, v16, v94 :: v_dual_and_b32 v51, 1, v51
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s7, v122, v122
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v96.l, v36.h
	v_mov_b16_e32 v98.l, v52.h
	v_mov_b16_e32 v98.h, v97.l
	v_add3_u32 v39, v106, v39, 0x7fff
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s7
	v_and_b32_e32 v96, 1, v96
	v_cmp_o_f32_e64 s6, v106, v106
	v_add3_u32 v51, v54, v51, 0x7fff
	v_mov_b16_e32 v99.l, v121.h
	v_mov_b16_e32 v100.l, v120.h
	v_mov_b16_e32 v100.h, v97.l
	v_mov_b16_e32 v99.h, v97.l
	v_dual_mov_b32 v94, v136 :: v_dual_and_b32 v97, 1, v98
	v_cmp_o_f32_e64 s5, v54, v54
	v_add3_u32 v54, v36, v96, 0x7fff
	v_cmp_o_f32_e64 s7, v36, v36
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s6
	v_and_b32_e32 v96, 1, v100
	v_and_b32_e32 v98, 1, v99
	v_add3_u32 v97, v52, v97, 0x7fff
	v_cmp_o_f32_e64 s6, v52, v52
	v_cndmask_b16 v51.l, 0x7fff, v54.h, s7
	.loc	1 814 30                        ; attention.py:814:30
	v_add_nc_u32_e32 v54, 0, v67
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v36, v120, v96, 0x7fff
	v_add3_u32 v52, v121, v98, 0x7fff
	v_cmp_o_f32_e64 s8, v121, v121
	v_cmp_o_f32_e64 s9, v120, v120
	v_cndmask_b16 v39.l, 0x7fff, v51.h, s5
	v_cndmask_b16 v51.h, 0x7fff, v97.h, s6
	.loc	1 814 30                        ; attention.py:814:30
	ds_store_2addr_b32 v72, v41, v40 offset1:8
	ds_store_2addr_b32 v72, v35, v37 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[96:99], v54
	ds_load_b128 v[104:107], v54 offset:512
	ds_load_b128 v[100:103], v78
	ds_load_b128 v[112:115], v54 offset:1024
	ds_load_b128 v[120:123], v54 offset:1536
	ds_load_b128 v[108:111], v78 offset:512
	ds_load_b128 v[116:119], v78 offset:1024
	ds_load_b128 v[124:127], v78 offset:1536
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s8
	v_cndmask_b16 v52.l, 0x7fff, v36.h, s9
	v_permlanex16_b32 v36, v38, s35, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v39, s35, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v51, s35, 0xfedcba98 op_sel:[1,0]
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s5, s34, 16
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v40, v52, s35, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v128, v36, v38, v92
	v_perm_b32 v129, v36, v38, v93
	v_perm_b32 v130, v35, v39, v92
	v_perm_b32 v131, v35, v39, v93
	v_perm_b32 v132, v37, v51, v92
	v_perm_b32 v133, v37, v51, v93
	v_perm_b32 v134, v40, v52, v92
	v_perm_b32 v135, v40, v52, v93
	.loc	1 707 13                        ; attention.py:707:13
	s_cmpk_lt_u32 s34, 0x7f0
	s_mov_b32 s34, s5
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[96:103], v[128:135], v[25:32]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[104:111], v[128:135], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[112:119], v[128:135], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[120:127], v[128:135], v[1:8]
	v_mov_b32_e32 v96, v53
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc0 .LBB0_4
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 711 32                        ; attention.py:711:32
	v_add_nc_u32_e32 v34, s34, v79
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v36, s34, v81, 1
	v_add_lshl_u32 v37, s34, v82, 1
	v_add_lshl_u32 v38, s34, v83, 1
	v_add_lshl_u32 v39, s34, v84, 1
	.loc	1 711 32                        ; attention.py:711:32
	v_mad_u64_u32 v[34:35], null, v34, s28, v[42:43]
	.loc	1 727 37                        ; attention.py:727:37
	v_add_lshl_u32 v35, s34, v80, 1
	v_add_lshl_u32 v40, s34, v85, 1
	v_add_lshl_u32 v41, s34, v86, 1
	v_add_lshl_u32 v51, s34, v87, 1
	.loc	1 712 32                        ; attention.py:712:32
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	buffer_load_b32 v34, v34, s[44:47], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b32 v70, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 727 37                        ; attention.py:727:37
	s_clause 0x7
	buffer_load_u16 v99, v35, s[48:51], 0 offen
	buffer_load_u16 v100, v36, s[48:51], 0 offen
	buffer_load_u16 v101, v37, s[48:51], 0 offen
	buffer_load_u16 v102, v38, s[48:51], 0 offen
	buffer_load_u16 v103, v39, s[48:51], 0 offen
	buffer_load_u16 v105, v40, s[48:51], 0 offen
	buffer_load_u16 v106, v41, s[48:51], 0 offen
	buffer_load_u16 v107, v51, s[48:51], 0 offen
	.loc	1 712 32                        ; attention.py:712:32
	ds_load_b64 v[51:52], v71
	ds_load_b64 v[53:54], v75
	.loc	1 717 33                        ; attention.py:717:33
	v_mov_b32_e32 v40, v33
	.loc	1 712 32                        ; attention.py:712:32
	ds_load_b64 v[97:98], v76
	ds_load_b64 v[108:109], v77
	.loc	1 717 33                        ; attention.py:717:33
	v_mov_b32_e32 v34, v33
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	v_mov_b32_e32 v41, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v40, v39
	v_mov_b32_e32 v39, v38
	v_mov_b32_e32 v38, v37
	v_mov_b32_e32 v37, v36
	v_mov_b32_e32 v36, v35
	v_mov_b32_e32 v35, v34
	v_mov_b32_e32 v34, v33
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[51:52], v[43:44], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[53:54], v[47:48], v[34:41] neg_lo:[1,1,0]
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[97:98], v[45:46], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[108:109], v[49:50], v[34:41] neg_lo:[1,1,0]
	.loc	1 759 34                        ; attention.py:759:34
	s_and_saveexec_b32 s6, vcc_lo
	s_cbranch_execz .LBB0_1
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 752 25                        ; attention.py:752:25
	v_add_nc_u32_e32 v51, s34, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v52, 31, v51
	v_add_co_u32 v51, s5, s24, v51
	v_add_co_ci_u32_e64 v52, null, s25, v52, s5
	global_load_b64 v[53:54], v[51:52], off
	s_branch .LBB0_1
.LBB0_4:
	.loc	1 707 13                        ; attention.py:707:13
	ds_bpermute_b32 v0, v66, v34
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v25
	v_div_scale_f32 v35, null, v0, v0, v26
	v_div_scale_f32 v37, null, v0, v0, v27
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v44, v33
	v_div_scale_f32 v39, null, v0, v0, v28
	v_div_scale_f32 v41, null, v0, v0, v29
	v_div_scale_f32 v42, null, v0, v0, v30
	v_rcp_f32_e32 v45, v35
	v_rcp_f32_e32 v46, v37
	v_rcp_f32_e32 v47, v39
	v_rcp_f32_e32 v48, v41
	v_rcp_f32_e32 v51, v42
	v_fma_f32 v53, -v33, v44, 1.0
	v_div_scale_f32 v34, vcc_lo, v25, v0, v25
	v_div_scale_f32 v36, s0, v26, v0, v26
	v_fma_f32 v54, -v35, v45, 1.0
	v_fma_f32 v65, -v37, v46, 1.0
	v_fmac_f32_e32 v44, v53, v44
	v_div_scale_f32 v38, s1, v27, v0, v27
	v_fma_f32 v66, -v39, v47, 1.0
	v_fma_f32 v67, -v41, v48, 1.0
	v_dual_fmac_f32 v45, v54, v45 :: v_dual_fmac_f32 v46, v65, v46
	v_fma_f32 v53, -v42, v51, 1.0
	v_mul_f32_e32 v54, v34, v44
	v_div_scale_f32 v50, s5, v30, v0, v30
	v_fmac_f32_e32 v47, v66, v47
	v_dual_mul_f32 v65, v36, v45 :: v_dual_mul_f32 v66, v38, v46
	v_dual_fmac_f32 v51, v53, v51 :: v_dual_fmac_f32 v48, v67, v48
	v_fma_f32 v67, -v33, v54, v34
	v_div_scale_f32 v40, s3, v28, v0, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v69, -v35, v65, v36
	v_fma_f32 v70, -v37, v66, v38
	v_fmac_f32_e32 v54, v67, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v68, v40, v47
	v_div_scale_f32 v43, null, v0, v0, v31
	v_div_scale_f32 v49, s4, v29, v0, v29
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
	v_div_fixup_f32 v25, v33, v0, v25
	v_div_scale_f32 v33, null, v0, v0, v32
	v_div_fmas_f32 v34, v34, v45, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v39, v68, v40
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v39, v33
	v_div_fmas_f32 v35, v35, v46, v66
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v34, v0, v26
	v_div_fmas_f32 v34, v36, v47, v68
	v_fma_f32 v38, -v43, v52, 1.0
	v_div_fixup_f32 v27, v35, v0, v27
	v_div_scale_f32 v35, s1, v31, v0, v31
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v28, v34, v0, v28
	v_fma_f32 v34, -v42, v37, v50
	v_fmac_f32_e32 v52, v38, v52
	v_fma_f32 v38, -v33, v39, 1.0
	v_fma_f32 v36, -v41, v53, v49
	v_div_scale_f32 v47, null, v0, v0, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v37, v34, v51 :: v_dual_mul_f32 v34, v35, v52
	v_fmac_f32_e32 v39, v38, v39
	v_div_scale_f32 v38, s3, v32, v0, v32
	v_fmac_f32_e32 v53, v36, v48
	v_div_scale_f32 v36, null, v0, v0, v17
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
	v_cmp_lt_f32_e64 s0, 0, v0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v40, v40, v48, v53
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v35, -v43, v34, v35
	v_div_fmas_f32 v37, v42, v51, v37
	v_rcp_f32_e32 v42, v47
	v_fmac_f32_e32 v45, v44, v39
	v_div_scale_f32 v43, null, v0, v0, v19
	v_fma_f32 v46, -v36, v41, 1.0
	v_div_fixup_f32 v29, v40, v0, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v45, v38
	v_rcp_f32_e32 v38, v43
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v30, v37, v0, v30
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v40, -v47, v42, 1.0
	v_fmac_f32_e32 v41, v46, v41
	v_div_scale_f32 v46, s4, v17, v0, v17
	v_div_fmas_f32 v34, v35, v52, v34
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v42, v40, v42
	v_div_fmas_f32 v33, v33, v39, v45
	v_fma_f32 v45, -v43, v38, 1.0
	v_mul_f32_e32 v37, v46, v41
	v_div_scale_f32 v44, null, v0, v0, v20
	v_div_scale_f32 v40, s1, v18, v0, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v45, v38
	v_fma_f32 v35, -v36, v37, v46
	v_div_fixup_f32 v31, v34, v0, v31
	v_div_fixup_f32 v32, v33, v0, v32
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v35, v41
	v_rcp_f32_e32 v35, v44
	v_fma_f32 v33, -v36, v37, v46
	v_div_scale_f32 v36, s3, v19, v0, v19
	v_div_scale_f32 v46, null, v0, v0, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v44, v35, 1.0
	v_fmac_f32_e32 v35, v45, v35
	v_div_scale_f32 v45, null, v0, v0, v22
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
	v_div_scale_f32 v41, s4, v20, v0, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v17, v33, v0, v17
	v_fma_f32 v33, -v47, v39, v40
	v_fma_f32 v40, -v43, v34, v36
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v49, -v46, v37, 1.0
	v_div_fmas_f32 v33, v33, v42, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v40, v38
	v_div_scale_f32 v40, s1, v21, v0, v21
	v_fmac_f32_e32 v37, v49, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v18, v33, v0, v18
	v_fma_f32 v33, -v43, v34, v36
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v42, -v45, v48, 1.0
	v_mul_f32_e32 v36, v40, v37
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v33, v33, v38, v34
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v48, v42, v48
	v_fma_f32 v38, -v46, v36, v40
	v_mul_f32_e32 v47, v41, v35
	v_div_scale_f32 v42, null, v0, v0, v23
	v_div_fixup_f32 v19, v33, v0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v38, v37
	v_fma_f32 v39, -v44, v47, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v33, -v46, v36, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v39, v35
	v_div_scale_f32 v39, s5, v22, v0, v22
	v_div_scale_f32 v46, null, v0, v0, v10
	v_fma_f32 v34, -v44, v47, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v43, v39, v48
	v_rcp_f32_e32 v41, v42
	v_div_scale_f32 v44, null, v0, v0, v24
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
	v_div_fixup_f32 v20, v34, v0, v20
	v_div_scale_f32 v34, s3, v23, v0, v23
	v_fma_f32 v36, -v45, v43, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v41, v47, v41
	v_fma_f32 v38, -v44, v35, 1.0
	v_div_scale_f32 v39, s1, v24, v0, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v48, v43
	v_div_fixup_f32 v21, v33, v0, v21
	v_fmac_f32_e32 v35, v38, v35
	v_div_scale_f32 v38, null, v0, v0, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v36, v0, v22
	v_rcp_f32_e32 v36, v46
	v_mul_f32_e32 v45, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v38
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v48, null, v0, v0, v12
	v_fma_f32 v33, -v44, v45, v39
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v50, v48
	v_fma_f32 v47, -v46, v36, 1.0
	v_mul_f32_e32 v37, v34, v41
	v_fmac_f32_e32 v45, v33, v35
	v_div_scale_f32 v33, s4, v9, v0, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v47, v36
	v_fma_f32 v43, -v42, v37, v34
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v37, v43, v41
	v_fma_f32 v43, -v38, v40, 1.0
	v_fma_f32 v34, -v42, v37, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v43, v40
	v_div_fmas_f32 v34, v34, v41, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v37, -v44, v45, v39
	v_div_scale_f32 v41, s3, v10, v0, v10
	v_mul_f32_e32 v39, v33, v40
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v23, v34, v0, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v49, v41, v36
	v_div_fmas_f32 v35, v37, v35, v45
	v_fma_f32 v47, -v38, v39, v33
	v_fma_f32 v44, -v42, v43, 1.0
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v37, -v46, v49, v41
	v_div_fixup_f32 v24, v35, v0, v24
	v_fmac_f32_e32 v39, v47, v40
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, s5, v11, v0, v11
	v_fmac_f32_e32 v49, v37, v36
	v_div_scale_f32 v37, null, v0, v0, v13
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v35, -v48, v50, 1.0
	v_fma_f32 v33, -v38, v39, v33
	v_fma_f32 v38, -v46, v49, v41
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v34, -v42, v45, v44
	v_fmac_f32_e32 v50, v35, v50
	v_div_scale_f32 v35, s1, v12, v0, v12
	v_div_fmas_f32 v33, v33, v40, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v45, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v39, v35, v50
	v_div_fmas_f32 v36, v38, v36, v49
	v_fma_f32 v38, -v42, v45, v44
	v_div_scale_f32 v40, null, v0, v0, v14
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v33, v0, v9
	v_div_fmas_f32 v38, v38, v43, v45
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v34, 1.0
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v43, -v48, v39, v35
	v_div_fixup_f32 v10, v36, v0, v10
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v13, v0, v13
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v11, v38, v0, v11
	v_div_scale_f32 v38, null, v0, v0, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	v_fma_f32 v36, -v40, v42, 1.0
	v_fma_f32 v35, -v48, v39, v35
	v_rcp_f32_e32 v44, v38
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v43, -v37, v33, v41
	v_fmac_f32_e32 v42, v36, v42
	v_div_scale_f32 v36, s4, v14, v0, v14
	v_div_fmas_f32 v35, v35, v50, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v43, v34
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v39, v36, v42
	v_div_scale_f32 v43, null, v0, v0, v16
	v_div_fixup_f32 v12, v35, v0, v12
	v_fma_f32 v35, -v37, v33, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v37, -v40, v39, v36
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v33, v35, v34, v33
	v_div_scale_f32 v34, null, v0, v0, v1
	v_fmac_f32_e32 v39, v37, v42
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v0, v0, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v35, s1, v15, v0, v15
	v_div_fixup_f32 v13, v33, v0, v13
	v_fma_f32 v33, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	v_fma_f32 v36, -v40, v39, v36
	v_mul_f32_e32 v40, v35, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v33, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v34, v37, 1.0
	v_div_scale_f32 v33, s3, v16, v0, v16
	v_div_fmas_f32 v36, v36, v42, v39
	v_fma_f32 v39, -v38, v40, v35
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	v_mul_f32_e32 v42, v33, v45
	v_div_scale_f32 v48, s4, v1, v0, v1
	v_fma_f32 v49, -v41, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	v_mul_f32_e32 v51, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v0, v2
	v_div_fixup_f32 v14, v36, v0, v14
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
	v_div_scale_f32 v39, s1, v3, v0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_div_fmas_f32 v35, v35, v44, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, null, v0, v0, v4
	v_div_fmas_f32 v33, v33, v45, v42
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v35, v0, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v16, v33, v0, v16
	v_div_fixup_f32 v1, v34, v0, v1
	v_div_scale_f32 v34, null, v0, v0, v5
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, null, v0, v0, v8
	v_div_fmas_f32 v37, v37, v47, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v33, -v46, v36, v39
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v2, v37, v0, v2
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v0, v0, v6
	v_div_scale_f32 v37, null, v0, v0, v7
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v3, v33, v0, v3
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v33, -v34, v36, 1.0
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v50, -v44, v46, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v5, v0, v5
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v48, -v37, v41, 1.0
	v_fma_f32 v47, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v49, v33, v36 :: v_dual_fmac_f32 v46, v50, v46
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v0, v6
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v0, v7
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	v_div_scale_f32 v50, s5, v8, v0, v8
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
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v33, v0, v5
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v25, s0
	v_cndmask_b32_e64 v25, 0, v26, s0
	v_cndmask_b32_e64 v26, 0, v27, s0
	v_cndmask_b32_e64 v27, 0, v28, s0
	v_cndmask_b32_e64 v28, 0, v29, s0
	v_cndmask_b32_e64 v29, 0, v30, s0
	v_cndmask_b32_e64 v30, 0, v31, s0
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 843 24 is_stmt 1              ; attention.py:843:24
	v_mul_lo_u32 v32, s29, v55
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 843 24                        ; attention.py:843:24
	s_mul_i32 s0, s29, s33
	v_add_nc_u32_e32 v35, v32, v56
	v_add_nc_u32_e32 v32, s0, v32
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s29, v56
	.loc	1 848 17                        ; attention.py:848:17
	s_and_b32 s5, s27, 0xffff
	s_mov_b32 s4, s26
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v33, 16, v56
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v38, v32, v56, 2
	v_add_lshl_u32 v39, v32, v64, 2
	v_add_lshl_u32 v40, v32, v63, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 843 24                        ; attention.py:843:24
	v_add_lshl_u32 v35, v35, s0, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	s_clause 0x2
	buffer_store_b32 v8, v38, s[4:7], 0 offen
	buffer_store_b32 v25, v39, s[4:7], 0 offen
	buffer_store_b32 v26, v40, s[4:7], 0 offen
	v_add_lshl_u32 v8, v32, v62, 2
	v_add_lshl_u32 v25, v32, v61, 2
	v_add_lshl_u32 v26, v32, v60, 2
	v_add_lshl_u32 v38, v32, v59, 2
	v_add_lshl_u32 v39, v32, v58, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s0, s29, v33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	s_clause 0x4
	buffer_store_b32 v27, v8, s[4:7], 0 offen
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	buffer_store_b32 v30, v38, s[4:7], 0 offen
	buffer_store_b32 v31, v39, s[4:7], 0 offen
	v_add_lshl_u32 v8, v32, v33, 2
	v_add_nc_u32_e32 v25, 0x48, v35
	v_add_nc_u32_e32 v26, 0x50, v35
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_add_nc_u32_e32 v27, 0x58, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_nc_u32_e32 v28, 0x60, v35
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v34, 32, v56
	.loc	1 848 17                        ; attention.py:848:17
	s_clause 0x2
	buffer_store_b32 v17, v8, s[4:7], 0 offen
	buffer_store_b32 v18, v25, s[4:7], 0 offen
	buffer_store_b32 v19, v26, s[4:7], 0 offen
	v_add_nc_u32_e32 v17, 0x68, v35
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v8, 0x80000000, v28
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s29, v34
	.loc	1 848 17                        ; attention.py:848:17
	v_add_nc_u32_e32 v18, 0x70, v35
	v_add_nc_u32_e32 v19, 0x78, v35
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x1
	buffer_store_b32 v20, v27, s[4:7], 0 offen
	buffer_store_b32 v21, v8, s[4:7], 0 offen
	v_add_lshl_u32 v8, v32, v34, 2
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 848 17                        ; attention.py:848:17
	buffer_store_b32 v22, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v17, 0x88, v35
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v18, s[4:7], 0 offen
	buffer_store_b32 v24, v19, s[4:7], 0 offen
	buffer_store_b32 v9, v8, s[4:7], 0 offen
	v_add_nc_u32_e32 v8, 0x90, v35
	v_cndmask_b32_e32 v9, 0x80000000, v17, vcc_lo
	v_add_nc_u32_e32 v17, 0x98, v35
	v_add_nc_u32_e32 v18, 0xa0, v35
	v_add_nc_u32_e32 v19, 0xa8, v35
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v36, 48, v56
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v10, v9, s[4:7], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v10, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s29, v36
	.loc	1 848 17                        ; attention.py:848:17
	buffer_store_b32 v11, v8, s[4:7], 0 offen
	v_add_nc_u32_e32 v8, 0xb0, v35
	s_clause 0x2
	buffer_store_b32 v12, v9, s[4:7], 0 offen
	buffer_store_b32 v13, v10, s[4:7], 0 offen
	buffer_store_b32 v14, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v9, 0xb8, v35
	v_add_lshl_u32 v10, v32, v36, 2
	v_add_nc_u32_e32 v11, 0xc8, v35
	v_add_nc_u32_e32 v12, 0xd0, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v37, 62, v57
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v8, s[4:7], 0 offen
	buffer_store_b32 v16, v9, s[4:7], 0 offen
	buffer_store_b32 v1, v10, s[4:7], 0 offen
	buffer_store_b32 v2, v11, s[4:7], 0 offen
	buffer_store_b32 v3, v12, s[4:7], 0 offen
	v_add_nc_u32_e32 v1, 0xd8, v35
	v_add_nc_u32_e32 v2, 0xe0, v35
	v_add_nc_u32_e32 v3, 0xe8, v35
	v_add_nc_u32_e32 v8, 0xf0, v35
	v_add_lshl_u32 v9, v32, v37, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[4:7], 0 offen
	buffer_store_b32 v5, v2, s[4:7], 0 offen
	buffer_store_b32 v6, v3, s[4:7], 0 offen
	buffer_store_b32 v7, v8, s[4:7], 0 offen
	buffer_store_b32 v0, v9, s[4:7], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp34:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 138
		.amdhsa_next_free_sgpr 56
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_vgpr, 138
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.numbered_sgpr, 56
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8788
; TotalNumSgprs: 58
; NumVgprs: 138
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 58
; NumVGPRsForWavesPerEU: 138
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     58
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     138
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
