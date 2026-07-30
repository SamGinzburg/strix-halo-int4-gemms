	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x60
	s_load_b256 s[36:43], s[0:1], 0x0
	v_dual_mov_b32 v48, 0x7531 :: v_dual_and_b32 v41, 1, v0
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v42, 1, v0
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s4, s2, 6
	.loc	1 583 26                        ; attention.py:583:26
	s_lshl_b32 s6, s3, 9
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v47, 0x6420 :: v_dual_lshlrev_b32 v38, 4, v41
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s33, s4, s6
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v44, s4, v42
	.loc	1 584 26                        ; attention.py:584:26
	v_or_b32_e32 v1, s33, v42
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v60, 0x70, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v43, 0x60, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v44
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	v_dual_mov_b32 v50, 0x7632 :: v_dual_and_b32 v45, 15, v0
	.loc	1 584 26                        ; attention.py:584:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[1:2], null, s28, v1, v[38:39]
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s2, s28, v38
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s45, s37, 0xffff
	s_mov_b32 s44, s36
	v_mov_b32_e32 v26, v33
	s_load_b256 s[20:27], s[0:1], 0x20
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 s2, vcc_lo, s2
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_u32 v57, v0, 4, 1
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v22, v33 :: v_dual_lshlrev_b32 v53, 1, v0
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_i32 v52, v0, 0, 1
	v_dual_mov_b32 v10, v33 :: v_dual_lshlrev_b32 v61, 7, v0
	.loc	1 585 26                        ; attention.py:585:26
	buffer_load_b128 v[34:37], v1, s[44:47], 0 offen
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v1, 1, v43
	.loc	1 590 31                        ; attention.py:590:31
	s_and_b32 s45, s43, 0xffff
	s_mov_b32 s44, s42
	v_dual_mov_b32 v49, 0x5410 :: v_dual_and_b32 v54, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v56, v1, v45
	v_dual_mov_b32 v81, 0xff800000 :: v_dual_lshlrev_b32 v62, 5, v0
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v51, 3, v0
	v_lshrrev_b32_e32 v58, 4, v0
	.loc	1 591 17                        ; attention.py:591:17
	v_or_b32_e32 v1, s33, v56
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, s4, v56
	v_mov_b32_e32 v80, 0xff800000
	s_load_b64 s[4:5], s[0:1], 0x70
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	.loc	1 590 31                        ; attention.py:590:31
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x200, v2
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v24, v33 :: v_dual_lshlrev_b32 v55, 2, v0
	s_add_i32 s0, s3, s0
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s1, s0, -8
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s7, s0, 3
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s0, 0, v41
	v_bfe_i32 v63, v0, 2, 1
	.loc	1 590 31                        ; attention.py:590:31
	buffer_load_u16 v46, v1, s[44:47], 0 offen
	.loc	1 585 26                        ; attention.py:585:26
	v_and_or_b32 v0, v53, 30, v57
	v_dual_mov_b32 v29, v33 :: v_dual_and_b32 v52, 0x90, v52
	v_cndmask_b32_e64 v47, 0x7531, v47, s0
	v_dual_mov_b32 v16, v33 :: v_dual_and_b32 v61, 0x700, v61
	v_lshrrev_b32_e32 v43, 2, v43
	v_lshrrev_b32_e32 v60, 2, v60
	v_dual_mov_b32 v31, v33 :: v_dual_and_b32 v62, 0x160, v62
	v_dual_mov_b32 v21, v33 :: v_dual_lshlrev_b32 v0, 2, v0
	v_lshl_or_b32 v47, v47, 8, v47
	v_dual_mov_b32 v27, v33 :: v_dual_and_b32 v40, 28, v55
	v_dual_mov_b32 v19, v33 :: v_dual_lshlrev_b32 v64, 1, v57
	v_mov_b32_e32 v23, v33
	v_dual_mov_b32 v12, v33 :: v_dual_lshlrev_b32 v39, 2, v45
	.loc	1 707 13                        ; attention.py:707:13
	v_lshl_or_b32 v67, s3, 8, v58
	v_xor_b32_e32 v43, v55, v43
	v_and_or_b32 v38, v42, 15, v38
	v_xor_b32_e32 v42, v52, v60
	v_add_nc_u32_e32 v52, 0, v61
	v_dual_mov_b32 v2, v33 :: v_dual_and_b32 v47, 0x750031, v47
	v_or_b32_e32 v51, s6, v51
	v_and_or_b32 v60, 0x90, v63, v62
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v62, 4, v0
	v_mov_b32_e32 v11, v33
	v_dual_mov_b32 v13, v33 :: v_dual_add_nc_u32 v66, v52, v42
	.loc	1 707 13                        ; attention.py:707:13
	v_lshl_or_b32 v61, s3, 10, v64
	v_add_nc_u32_e32 v64, 0, v43
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e64 s15, s29, v39
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[42:43], null, s29, v67, v[39:40]
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v39, s5, v44
	v_dual_mov_b32 v4, v33 :: v_dual_lshlrev_b32 v63, 2, v38
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s8, s3, s1
	v_cndmask_b32_e64 v48, 0x6420, v48, s0
	v_xor_b32_e32 v38, 16, v60
	.loc	1 714 31                        ; attention.py:714:31
	v_cmp_gt_i32_e64 s1, s28, v40
	.loc	1 707 13                        ; attention.py:707:13
	v_mad_u64_u32 v[43:44], null, s28, v51, v[40:41]
	v_lshl_or_b32 v40, v47, 4, v47
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s6, s31, s7
	.loc	1 754 27                        ; attention.py:754:27
	s_mul_i32 s4, s4, s8
	v_dual_mov_b32 v14, v33 :: v_dual_and_b32 v53, 24, v53
	v_lshl_or_b32 v48, v48, 8, v48
	v_add_nc_u32_e32 v71, 0, v38
	.loc	1 707 13                        ; attention.py:707:13
	v_add3_u32 v38, s6, s4, v39
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s4, 0, v54
	.loc	1 707 13                        ; attention.py:707:13
	s_mul_i32 s3, s3, s29
	v_dual_mov_b32 v15, v33 :: v_dual_and_b32 v44, 0x750031, v48
	s_lshl_b32 s3, s3, 6
	v_lshl_or_b32 v53, v45, 5, v53
	v_lshl_add_u32 v72, v45, 3, s3
	v_and_b32_e32 v73, 0x7050301, v40
	v_lshl_add_u32 v75, v41, 3, v38
	v_cndmask_b32_e64 v41, 0x1054, v49, s4
	v_cndmask_b32_e64 v45, 0x3276, v50, s4
	v_lshl_or_b32 v44, v44, 4, v44
	v_mov_b32_e32 v7, v33
	v_xor_b32_e32 v55, 8, v53
	v_lshl_or_b32 v41, v41, 8, v41
	v_lshl_or_b32 v45, v45, 8, v45
	v_and_b32_e32 v74, 0x7050301, v44
	v_xor_b32_e32 v69, 16, v53
	v_xor_b32_e32 v70, 24, v53
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, v33
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v30, v33
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v32, v33
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v18, v33
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v20, v33
	v_dual_mov_b32 v3, v33 :: v_dual_add_nc_u32 v68, 0, v55
	v_dual_mov_b32 v5, v33 :: v_dual_add_nc_u32 v70, 0, v70
	v_dual_mov_b32 v6, v33 :: v_dual_add_nc_u32 v65, 0, v53
	v_dual_mov_b32 v8, v33 :: v_dual_add_nc_u32 v69, 0, v69
	v_xor_b32_e32 v67, 64, v63
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s30, s30, 0x3fb8aa3b
	s_and_b32 s39, s39, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s23, s23, 0xffff
	s_mov_b32 s34, -16
	s_mov_b32 s35, 0x76543210
	s_mov_b32 s50, s46
	s_mov_b32 s51, s47
	s_and_b32 s41, s41, 0xffff
	.loc	1 707 13                        ; attention.py:707:13
	s_lshl_b32 s31, s29, 1
	s_lshl_b32 s52, s29, 3
	s_lshl_b32 s28, s28, 4
	s_mov_b32 s48, s20
	s_mov_b32 s36, s22
	s_mov_b32 s49, s21
	s_mov_b32 s42, s46
	s_mov_b32 s43, s47
	s_mov_b32 s44, s38
	s_mov_b32 s45, s39
	s_mov_b32 s37, s23
	s_mov_b32 s38, s46
	s_mov_b32 s39, s47
	v_mov_b32_e32 v79, 0xff800000
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v47, v0, v34
	ds_bpermute_b32 v34, v62, v34
	ds_bpermute_b32 v39, v0, v35
	ds_bpermute_b32 v35, v62, v35
	ds_bpermute_b32 v40, v0, v36
	ds_bpermute_b32 v36, v62, v36
	ds_bpermute_b32 v38, v0, v37
	ds_bpermute_b32 v37, v62, v37
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v44, v34, v47, s4
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v48, v36, v40, s4
	v_cndmask_b32_e64 v50, v40, v36, s4
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v76, 16, v46
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v46, v47, v34, s4
	v_and_b32_e32 v34, 0x540054, v41
	v_and_b32_e32 v41, 0x760076, v45
	v_cndmask_b32_e64 v45, v35, v39, s4
	v_cndmask_b32_e64 v47, v39, v35, s4
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v49, v37, v38, s4
	v_lshl_or_b32 v34, v34, 4, v34
	v_lshl_or_b32 v35, v41, 4, v41
	v_cndmask_b32_e64 v51, v38, v37, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v77, 0x5040504, v34
	v_and_b32_e32 v78, 0x7060706, v35
	s_branch .LBB0_2
.LBB0_1:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 26 is_stmt 0                ; attention.py:0:26
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 775 32 is_stmt 1              ; attention.py:775:32
	v_cndmask_b32_e64 v52, 0x80000000, v42, s15
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v53, 0x80000000, v72, s15
	.loc	1 759 34                        ; attention.py:759:34
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v96, 24, v55
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v90.h, v91.l
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v91, v37
	.loc	1 775 32                        ; attention.py:775:32
	buffer_load_b32 v83, v52, s[40:43], 0 offen
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_b64 v[52:53], v53, s[36:39], 0 offen
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v37, v41
	.loc	1 759 34                        ; attention.py:759:34
	v_lshrrev_b32_e32 v41, 24, v54
	.loc	1 717 33                        ; attention.py:717:33
	v_lshrrev_b32_e32 v92, 8, v55
	.loc	1 732 30                        ; attention.py:732:30
	v_cvt_f32_i32_e32 v94, v35
	v_cvt_f32_i32_e32 v95, v36
	v_cvt_f32_i32_e32 v35, v39
	v_cvt_f32_i32_e32 v36, v40
	.loc	1 759 34                        ; attention.py:759:34
	v_lshrrev_b32_e32 v40, 8, v54
	v_and_b16 v39.h, 0xff, v55.h
	v_cmp_ne_u16_e64 s12, 0, v96.l
	v_cmp_ne_u16_e64 s6, 0, v41.l
	v_and_b16 v40.h, 0xff, v92.l
	v_and_b16 v40.l, 0xff, v40.l
	v_cmp_ne_u16_e64 s11, 0, v39.h
	.loc	1 759 25 is_stmt 0              ; attention.py:759:25
	s_and_b32 s12, vcc_lo, s12
	.loc	1 732 30 is_stmt 1              ; attention.py:732:30
	v_cvt_f32_i32_e32 v93, v34
	v_cvt_f32_i32_e32 v34, v38
	.loc	1 759 34                        ; attention.py:759:34
	v_and_b16 v38.l, 0xff, v54.l
	v_and_b16 v38.h, 0xff, v54.h
	.loc	1 759 25 is_stmt 0              ; attention.py:759:25
	v_cndmask_b32_e64 v41, 0, 1, s12
	s_and_b32 s9, vcc_lo, s6
	.loc	1 759 34                        ; attention.py:759:34
	v_and_b16 v39.l, 0xff, v55.l
	v_cmp_ne_u16_e64 s13, 0, v40.l
	v_cmp_ne_u16_e64 s16, 0, v40.h
	.loc	1 759 25                        ; attention.py:759:25
	s_and_b32 s11, vcc_lo, s11
	.loc	1 759 34                        ; attention.py:759:34
	v_cmp_ne_u16_e64 s3, 0, v38.l
	v_cmp_ne_u16_e64 s5, 0, v38.h
	.loc	1 759 25                        ; attention.py:759:25
	v_cndmask_b32_e64 v38, 0, 1, s9
	.loc	1 717 33 is_stmt 1              ; attention.py:717:33
	v_mov_b16_e32 v82.l, 0
	.loc	1 766 24                        ; attention.py:766:24
	v_dual_max_f32 v55, v81, v81 :: v_dual_max_f32 v54, v79, v79
	.loc	1 759 25                        ; attention.py:759:25
	v_cndmask_b32_e64 v81, 0, 1, s11
	v_lshlrev_b16 v38.h, 8, v41.l
	.loc	1 759 34 is_stmt 0              ; attention.py:759:34
	v_cmp_ne_u16_e64 s10, 0, v39.l
	.loc	1 759 25                        ; attention.py:759:25
	s_and_b32 s14, vcc_lo, s13
	s_and_b32 s13, vcc_lo, s16
	.loc	1 727 37 is_stmt 1              ; attention.py:727:37
	v_mov_b16_e32 v85.h, v86.l
	v_mov_b16_e32 v86.h, v87.l
	v_mov_b16_e32 v87.h, v88.l
	v_mov_b16_e32 v88.h, v89.l
	v_mov_b16_e32 v86.l, v82.l
	v_mov_b16_e32 v88.l, v82.l
	.loc	1 759 25                        ; attention.py:759:25
	v_cndmask_b32_e64 v92, 0, 1, s14
	v_or_b16 v38.h, v81.l, v38.h
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v81, v76, v35
	v_mul_f32_e32 v96, v76, v93
	.loc	1 759 25                        ; attention.py:759:25
	v_cndmask_b32_e64 v93, 0, 1, s13
	s_and_b32 s7, vcc_lo, s3
	s_and_b32 s8, vcc_lo, s5
	s_and_b32 s10, vcc_lo, s10
	v_cndmask_b32_e64 v40, 0, 1, s7
	v_cndmask_b32_e64 v39, 0, 1, s8
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v84.h, v85.l
	v_mov_b16_e32 v85.l, v82.l
	v_mov_b16_e32 v87.l, v82.l
	.loc	1 759 25                        ; attention.py:759:25
	v_lshlrev_b16 v38.l, 8, v38.l
	v_lshlrev_b16 v39.h, 8, v92.l
	v_lshlrev_b16 v40.h, 8, v93.l
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v34, v76, v34
	v_mul_f32_e32 v97, v76, v94
	.loc	1 759 25                        ; attention.py:759:25
	v_cndmask_b32_e64 v94, 0, 1, s10
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v82.h, v84.l
	v_mov_b16_e32 v84.l, v82.l
	.loc	1 759 25                        ; attention.py:759:25
	v_or_b16 v41.h, v39.l, v38.l
	v_or_b16 v41.l, v40.l, v39.h
	v_or_b16 v38.l, v94.l, v40.h
	.loc	1 732 30                        ; attention.py:732:30
	v_mul_f32_e32 v34, v34, v87
	v_dual_mul_f32 v95, v76, v95 :: v_dual_mul_f32 v84, v97, v84
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v89.h, v90.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 759 25                        ; attention.py:759:25
	v_perm_b32 v35, v38, v41, v73
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v90.l, v82.l
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v85, v95, v85 :: v_dual_mul_f32 v92, v76, v36
	.loc	1 759 25                        ; attention.py:759:25
	v_perm_b32 v36, v38, v41, v74
	ds_bpermute_b32 v94, v0, v35
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v93, v76, v37 :: v_dual_mul_f32 v84, s30, v84
	v_mul_f32_e32 v91, v76, v91
	.loc	1 759 25                        ; attention.py:759:25
	ds_bpermute_b32 v98, v62, v36
	.loc	1 727 37                        ; attention.py:727:37
	v_mov_b16_e32 v89.l, v82.l
	.loc	1 732 30                        ; attention.py:732:30
	v_dual_mul_f32 v81, v81, v88 :: v_dual_mul_f32 v96, v96, v82
	v_mul_f32_e32 v88, v93, v90
	v_dual_mul_f32 v86, v91, v86 :: v_dual_mul_f32 v85, s30, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v87, v92, v89
	.loc	1 742 17                        ; attention.py:742:17
	v_mul_f32_e32 v81, s30, v81
	v_dual_mul_f32 v89, s30, v96 :: v_dual_mul_f32 v34, s30, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v86, s30, v86 :: v_dual_mul_f32 v87, s30, v87
	v_mul_f32_e32 v88, s30, v88
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v38.h, v82.l
	v_mov_b16_e32 v40.h, v82.l
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v99.h, v82.l
	v_mov_b16_e32 v100.h, v82.l
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v36.h, v82.l
	v_mov_b16_e32 v39.h, v82.l
	.loc	1 759 25                        ; attention.py:759:25
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v90, v98, v94, s4
	v_cndmask_b32_e64 v91, v94, v98, s4
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v104.h, v82.l
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v35.h, v82.l
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v41.l, v82.l
	.loc	1 759 25                        ; attention.py:759:25
	v_and_b32_e32 v97, 0x1000000, v90
	v_and_b32_e32 v96, 0x1000000, v91
	v_and_b32_e32 v92, 1, v90
	v_and_b32_e32 v95, 0x100, v91
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v37.h, v82.l
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u32_e64 s20, 0, v97
	v_cmp_eq_u32_e64 s18, 0, v96
	v_cmp_eq_u32_e64 s3, 1, v92
	v_cmp_eq_u32_e64 s5, 0, v95
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v103.h, v82.l
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v86, v86, 0xff800000, s20
	v_cndmask_b32_e64 v88, v88, 0xff800000, s18
	v_cndmask_b32_e64 v89, 0xff800000, v89, s3
	.loc	1 759 25                        ; attention.py:759:25
	v_and_b32_e32 v94, 1, v91
	v_and_b32_e32 v91, 0x10000, v91
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v81, v81, 0xff800000, s5
	v_cndmask_b32_e64 v98, v88, v86, s4
	v_cndmask_b32_e64 v101, v86, v88, s4
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u32_e64 s6, 1, v94
	v_cmp_eq_u32_e64 s16, 0, v91
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	.loc	1 764 26                        ; attention.py:764:26
	ds_bpermute_b32 v98, v63, v98
	.loc	1 814 30                        ; attention.py:814:30
	s_barrier
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v92, 0xff800000, v34, s6
	v_cndmask_b32_e64 v87, v87, 0xff800000, s16
	.loc	1 759 25                        ; attention.py:759:25
	v_and_b32_e32 v93, 0x100, v90
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v61, 32, v61
	v_add_nc_u32_e32 v43, s28, v43
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v96, v86, v92, v81
	v_max_f32_e32 v94, v87, v88
.Ltmp2:
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u32_e64 s17, 0, v93
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v34, v92, v89, s4
	v_cndmask_b32_e64 v102, v89, v92, s4
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s34, s34, 16
	.loc	1 759 25                        ; attention.py:759:25
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v84, v84, 0xff800000, s17
	.loc	1 707 13                        ; attention.py:707:13
	s_cmpk_lt_u32 s34, 0x1f0
	.loc	1 764 26                        ; attention.py:764:26
	ds_bpermute_b32 v102, v67, v102
	.loc	1 759 25                        ; attention.py:759:25
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v91, v84, v81, s4
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v107, v98, v98
.Ltmp4:
	.loc	1 759 25                        ; attention.py:759:25
	v_and_b32_e32 v90, 0x10000, v90
	.loc	1 764 26                        ; attention.py:764:26
	ds_bpermute_b32 v91, v67, v91
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u32_e64 s19, 0, v90
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v90, v81, v84, s4
	.loc	1 759 25                        ; attention.py:759:25
	.loc	1 787 39                        ; attention.py:787:39
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v85, v85, 0xff800000, s19
	ds_bpermute_b32 v90, v63, v90
	.loc	1 707 13                        ; attention.py:707:13
	v_add_nc_u32_e32 v72, s31, v72
	v_add_nc_u32_e32 v42, s52, v42
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v93, v87, v85, s4
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v95, v89, v84, v85
.Ltmp6:
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v97, v85, v87, s4
	ds_bpermute_b32 v93, v63, v93
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v94, v95, v96, v94
.Ltmp8:
	.loc	1 764 26                        ; attention.py:764:26
	ds_bpermute_b32 v95, v67, v97
	ds_bpermute_b32 v97, v67, v101
	ds_bpermute_b32 v101, v63, v34
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v96, v94, s35, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v106, v91, v90, s0
	v_cndmask_b32_e64 v90, v90, v91, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v34, v80, v94, v96
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v94.h, v82.l
	v_mov_b16_e32 v96.h, v82.l
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v89, v89, v34
	v_sub_f32_e32 v81, v81, v34
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v105, v80, v34
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v84, v84, v34
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v91, v95, v93, s0
	v_cndmask_b32_e64 v93, v93, v95, s0
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v95, v97, v97
.Ltmp12:
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v108, v102, v101, s0
	v_cndmask_b32_e64 v109, v101, v102, s0
	v_cndmask_b32_e64 v110, v97, v98, s0
	v_cndmask_b32_e64 v97, v98, v97, s0
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v98, v101, v102, v106
	v_max3_f32 v101, v90, v91, v93
	v_max_f32_e32 v95, v107, v95
.Ltmp14:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v89, v89
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v102, v105
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v84, v84
	.loc	1 768 62 is_stmt 0              ; attention.py:768:62
	v_sub_f32_e32 v86, v86, v34
.Ltmp15:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v95, v98, v101, v95
.Ltmp16:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v92, v92, v34
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v98, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v86, v86
.Ltmp17:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v81, v95
.Ltmp18:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v89, 0, v89, s3
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v80
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v84, v84, 0, s17
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v92, v92
.Ltmp19:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp20:
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v100.l, v89.h
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v122, 0, v102, s3
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v99.l, v84.h
	v_cmp_o_f32_e64 s3, v89, v89
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v80, v81, v81
.Ltmp22:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v85, v85, v34
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v18, v18, v122
	v_mul_f32_e32 v24, v24, v122
	v_mul_f32_e32 v22, v22, v122
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v80, v95, v80
.Ltmp24:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v88, v88, v34
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v85, v85
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_mul_f32_e32 v2, v2, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v12, v12, v122 :: v_dual_max_f32 v81, v55, v80
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v87, v87, v34
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v30, v30, v122
	v_mul_f32_e32 v32, v32, v122
	v_dual_mul_f32 v25, v25, v122 :: v_dual_sub_f32 v102, v110, v81
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v101, v106, v81
	v_sub_f32_e32 v90, v90, v81
	v_sub_f32_e32 v91, v91, v81
	v_dual_sub_f32 v93, v93, v81 :: v_dual_mul_f32 v26, v26, v122
	v_sub_f32_e32 v55, v108, v81
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v28, v28, v122 :: v_dual_sub_f32 v95, v109, v81
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v97, v97, v81
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v101, v101
	v_exp_f32_e32 v90, v90
	v_exp_f32_e32 v91, v91
	v_exp_f32_e32 v93, v93
	v_exp_f32_e32 v55, v55
	v_exp_f32_e32 v95, v95
	v_exp_f32_e32 v102, v102
	v_exp_f32_e32 v97, v97
	.loc	1 766 24 is_stmt 1              ; attention.py:766:24
	v_max_f32_e32 v54, v54, v80
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v87, v87
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v101, 0, v101, s8
	v_cndmask_b32_e64 v90, 0, v90, s9
	v_cndmask_b32_e64 v91, 0, v91, s10
	v_cndmask_b32_e64 v93, 0, v93, s13
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_and_b32_e32 v99, 1, v99
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v55, 0, v55, s7
	v_cndmask_b32_e64 v95, 0, v95, s14
	v_cndmask_b32_e64 v102, 0, v102, s11
	v_cndmask_b32_e64 v97, 0, v97, s12
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v80, v101, v90
	v_dual_add_f32 v90, v91, v93 :: v_dual_and_b32 v93, 1, v100
	v_add_f32_e32 v55, v55, v95
.Ltmp26:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v85, v85, 0, s19
	v_cndmask_b32_e64 v87, v87, 0, s16
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s16, v84, v84
	v_add3_u32 v89, v89, v93, 0x7fff
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v55, v55, v80
.Ltmp28:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v84, v84, v99, 0x7fff
	v_mov_b16_e32 v104.l, v85.h
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v95, v79, v54
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v88, v88
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v16, v16, v122
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v84.h, 0x7fff, v84.h, s16
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v10, v10, v122
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v106, v95
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v86, v86, 0, s20
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v14, v14, v122
	v_mul_f32_e32 v4, v4, v122
	v_mul_f32_e32 v6, v6, v122
	v_mul_f32_e32 v8, v8, v122
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v88, v88, 0, s18
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v103.l, v86.h
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v20, v20, v122
	v_mul_f32_e32 v17, v17, v122
	v_mul_f32_e32 v19, v19, v122
	v_mul_f32_e32 v21, v21, v122
	v_mul_f32_e32 v23, v23, v122
	v_mul_f32_e32 v9, v9, v122
	v_mul_f32_e32 v11, v11, v122
	v_mul_f32_e32 v13, v13, v122
	v_mul_f32_e32 v15, v15, v122
	v_mul_f32_e32 v1, v1, v122
	v_mul_f32_e32 v3, v3, v122
	v_mul_f32_e32 v5, v5, v122
	v_mul_f32_e32 v7, v7, v122
	.loc	1 775 32                        ; attention.py:775:32
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v39.l, v83.h
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v93, 0xffff0000, v53
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v91, v102, v97
.Ltmp30:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v27, v27, v122
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v35.l, v83.l, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v36.l, 4, v83.l
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v41.h, v53.l
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v80, v90, v91
.Ltmp32:
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v90, 24, v83
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b32_e32 v53, 20, v83
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v37.l, v83.h, 15
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s7, 7, v35.l
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v123, v55, v80
.Ltmp34:
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v55, v83, 0, 8
	v_lshrrev_b32_e32 v80, 8, v83
	v_bfe_i32 v83, v39, 0, 8
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v36.l, v36.l, 15
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v53.h, 0, -16, s7
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v38.l, v55.l
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v39.l, 4, v80.l
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v55, v80, 0, 8
	.loc	1 797 41                        ; attention.py:797:41
	v_and_b32_e32 v91, 0xffff0000, v52
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v40.l, v80.l, 15
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s7, 0, v38.l
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b16 v38.l, v36.l, -16
	.loc	1 785 32 is_stmt 1              ; attention.py:785:32
	v_and_b16 v39.l, v39.l, 15
	v_and_b16 v52.h, v53.l, 15
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v80.l, v83.l
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v84.l, v35.l, v53.h
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v38.l, v36.l, v38.l, s7
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_gt_i16_e64 s7, 0, v55.l
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v35.l, v39.l, -16
	v_or_b16 v80.h, v52.h, -16
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s10, 0, v80.l
	.loc	1 797 41 is_stmt 1              ; attention.py:797:41
	v_mov_b16_e32 v82.h, v52.l
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s8, 7, v37.l
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v35.l, v39.l, v35.l, s7
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v95, v90, 0, 8
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v52.l, v90.l, 15
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v39.l, v52.h, v80.h, s10
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v53.l, 4, v90.l
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v80, v35, 0, 16
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s9, 7, v40.l
	.loc	1 786 29 is_stmt 0              ; attention.py:786:29
	v_cndmask_b16 v55.h, 0, -16, s8
	.loc	1 787 39 is_stmt 1              ; attention.py:787:39
	v_mov_b16_e32 v83.l, v95.l
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s8, 7, v52.l
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v80, v80
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v83.h, v53.l, -16
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v36.l, 0, -16, s9
	v_or_b16 v55.l, v37.l, v55.h
	v_cndmask_b16 v37.l, 0, -16, s8
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s8, 0, v83.l
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v29, v29, v122 :: v_dual_mul_f32 v80, v91, v80
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v36.l, v40.l, v36.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b16 v37.l, v52.l, v37.l
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v40.l, v53.l, v83.h, s8
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v52, v55, 0, 16
	v_bfe_i32 v55, v84, 0, 16
	v_bfe_i32 v53, v38, 0, 16
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e32 v35.l, v80.h
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v90, v39, 0, 16
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v55, v55
	v_bfe_i32 v95, v40, 0, 16
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v35, 1, v35
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_dual_mul_f32 v31, v31, v122 :: v_dual_mul_f32 v52, v41, v52
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v90, v90
	v_mul_f32_e32 v55, v82, v55
	v_cvt_f32_i32_e32 v95, v95
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_cmp_o_f32_e64 s10, v80, v80
	v_add3_u32 v35, v80, v35, 0x7fff
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e32 v80.l, v88.h
	v_mov_b16_e32 v80.h, v82.l
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v53, v82, v53
	v_mul_f32_e32 v41, v41, v90
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e32 v39.l, v55.h
	v_mov_b16_e32 v40.l, v52.h
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v90, v93, v95
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v38.l, v53.h
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v83, v36, 0, 16
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v39, 1, v39
	v_and_b32_e32 v40, 1, v40
	v_mov_b16_e32 v94.l, v90.h
	v_and_b32_e32 v38, 1, v38
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v97, v37, 0, 16
	v_cvt_f32_i32_e32 v83, v83
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s8, v55, v55
	v_cmp_o_f32_e64 s9, v52, v52
	v_add3_u32 v39, v55, v39, 0x7fff
	v_add3_u32 v40, v52, v40, 0x7fff
	v_and_b32_e32 v52, 1, v94
	v_add3_u32 v38, v53, v38, 0x7fff
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v97, v97
	v_mul_f32_e32 v83, v91, v83
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v37.l, v41.h
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s8
	v_add3_u32 v39, v90, v52, 0x7fff
	.loc	1 768 33 is_stmt 1              ; attention.py:768:33
	v_cndmask_b32_e64 v52, v98, 0, s5
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v91, v93, v97
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e32 v36.l, v83.h
	v_and_b32_e32 v37, 1, v37
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e32 v55.h, v82.l
	v_mov_b16_e32 v55.l, v52.h
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s12, v41, v41
	v_mov_b16_e32 v96.l, v91.h
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v37, v41, v37, 0x7fff
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v55, 1, v55
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s11, v83, v83
	v_cmp_o_f32_e64 s13, v90, v90
	v_add3_u32 v36, v83, v36, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v35.h, s10
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s12
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v37, 0, v92, s6
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v55, v52, v55, 0x7fff
	v_cmp_o_f32_e64 s5, v52, v52
	v_and_b32_e32 v52, 1, v80
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s7, v53, v53
	v_and_b32_e32 v53, 1, v96
	v_cmp_o_f32_e64 s14, v91, v91
	v_cndmask_b16 v35.l, 0x7fff, v40.h, s9
	v_cndmask_b16 v41.l, 0x7fff, v36.h, s11
	v_cndmask_b16 v36.h, 0x7fff, v39.h, s13
	v_add3_u32 v40, v91, v53, 0x7fff
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v39, 1, v103
	v_mov_b16_e32 v53.l, v37.h
	v_mov_b16_e32 v53.h, v82.l
	v_cndmask_b16 v84.l, 0x7fff, v89.h, s3
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v36.l, 0x7fff, v40.h, s14
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v40, 1, v104
	v_add3_u32 v39, v86, v39, 0x7fff
	v_cmp_o_f32_e64 s3, v86, v86
	v_dual_mov_b32 v80, v34 :: v_dual_and_b32 v53, 1, v53
	v_mov_b16_e32 v83.l, v87.h
	v_mov_b16_e32 v83.h, v82.l
	v_add3_u32 v40, v85, v40, 0x7fff
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s3
	v_cmp_o_f32_e64 s3, v85, v85
	v_add3_u32 v53, v37, v53, 0x7fff
	v_cmp_o_f32_e64 s6, v37, v37
	v_and_b32_e32 v37, 1, v83
	.loc	1 814 30                        ; attention.py:814:30
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s7
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v39.l, 0x7fff, v40.h, s3
	v_cndmask_b16 v40.h, 0x7fff, v55.h, s5
	v_cndmask_b16 v40.l, 0x7fff, v53.h, s6
	v_add3_u32 v37, v87, v37, 0x7fff
	v_add3_u32 v52, v88, v52, 0x7fff
	v_cmp_o_f32_e64 s3, v88, v88
	v_cmp_o_f32_e64 s5, v87, v87
	.loc	1 814 30                        ; attention.py:814:30
	v_add_nc_u32_e32 v53, 0, v60
	ds_store_2addr_b32 v66, v38, v41 offset1:8
	ds_store_2addr_b32 v66, v35, v36 offset0:16 offset1:24
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v35, v84, s35, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v36.h, 0x7fff, v52.h, s3
	v_permlanex16_b32 v38, v39, s35, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s5
	v_permlanex16_b32 v37, v40, s35, 0xfedcba98 op_sel:[1,0]
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v79
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v82, v35, v84, v77
	v_perm_b32 v83, v35, v84, v78
	v_perm_b32 v84, v38, v39, v77
	v_perm_b32 v85, v38, v39, v78
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_b128 v[90:93], v53
	ds_load_b128 v[98:101], v53 offset:512
	ds_load_b128 v[94:97], v71
	ds_load_b128 v[102:105], v71 offset:512
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v86, v37, v40, v77
	v_perm_b32 v87, v37, v40, v78
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v37, v123
.Ltmp36:
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v38, 0, v106, s3
	.loc	1 814 30                        ; attention.py:814:30
	ds_load_b128 v[106:109], v53 offset:1024
	ds_load_b128 v[114:117], v53 offset:1536
	ds_load_b128 v[110:113], v71 offset:1024
	ds_load_b128 v[118:121], v71 offset:1536
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v35, v36, s35, 0xfedcba98 op_sel:[1,0]
	v_mov_b32_e32 v79, v54
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp38:
	.loc	1 816 30                        ; attention.py:816:30
	v_perm_b32 v88, v35, v36, v77
	v_perm_b32 v89, v35, v36, v78
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v35, v123, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v35, v59, v38
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[90:97], v[82:89], v[25:32]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[98:105], v[82:89], v[17:24]
	v_mov_b32_e32 v59, v35
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[106:113], v[82:89], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[114:121], v[82:89], v[1:8]
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc0 .LBB0_4
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 712 32                        ; attention.py:712:32
	v_cndmask_b32_e64 v34, 0x80000000, v43, s1
	.loc	1 717 33                        ; attention.py:717:33
	v_mov_b32_e32 v40, v33
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	.loc	1 712 32                        ; attention.py:712:32
	buffer_load_b32 v34, v34, s[44:47], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 717 33                        ; attention.py:717:33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	.loc	1 712 32                        ; attention.py:712:32
	s_waitcnt vmcnt(0)
	ds_store_b32 v64, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[52:53], v65
	ds_load_b64 v[54:55], v68
	ds_load_b64 v[82:83], v69
	ds_load_b64 v[84:85], v70
	.loc	1 717 33                        ; attention.py:717:33
	v_mov_b32_e32 v34, v33
	v_mov_b32_e32 v41, v40
	v_mov_b32_e32 v40, v39
	v_mov_b32_e32 v39, v38
	v_mov_b32_e32 v38, v37
	v_mov_b32_e32 v37, v36
	v_mov_b32_e32 v36, v35
	v_mov_b32_e32 v35, v34
	v_mov_b32_e32 v34, v33
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[52:53], v[44:45], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[54:55], v[48:49], v[34:41] neg_lo:[1,1,0]
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[82:83], v[46:47], v[34:41] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[84:85], v[50:51], v[34:41] neg_lo:[1,1,0]
	.loc	1 727 37                        ; attention.py:727:37
	s_clause 0x7
	buffer_load_u16 v84, v61, s[48:51], 0 offen
	buffer_load_u16 v85, v61, s[48:51], 0 offen offset:4
	buffer_load_u16 v86, v61, s[48:51], 0 offen offset:8
	buffer_load_u16 v87, v61, s[48:51], 0 offen offset:12
	buffer_load_u16 v88, v61, s[48:51], 0 offen offset:16
	buffer_load_u16 v89, v61, s[48:51], 0 offen offset:20
	buffer_load_u16 v90, v61, s[48:51], 0 offen offset:24
	buffer_load_u16 v91, v61, s[48:51], 0 offen offset:28
	.loc	1 759 34                        ; attention.py:759:34
	s_and_saveexec_b32 s5, vcc_lo
	s_cbranch_execz .LBB0_1
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	v_add3_u32 v52, v75, s34, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v53, 31, v52
	v_add_co_u32 v52, s3, s24, v52
	v_add_co_ci_u32_e64 v53, null, s25, v53, s3
	global_load_b64 v[54:55], v[52:53], off
	s_branch .LBB0_1
.LBB0_4:
	.loc	1 707 13                        ; attention.py:707:13
	ds_bpermute_b32 v0, v0, v35
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v25
	v_div_scale_f32 v35, null, v0, v0, v26
	v_div_scale_f32 v37, null, v0, v0, v27
	v_div_scale_f32 v39, null, v0, v0, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v44, v33
	v_rcp_f32_e32 v45, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v37
	v_div_scale_f32 v41, null, v0, v0, v29
	v_rcp_f32_e32 v47, v39
	v_div_scale_f32 v42, null, v0, v0, v30
	v_rcp_f32_e32 v48, v41
	v_div_scale_f32 v34, vcc_lo, v25, v0, v25
	v_fma_f32 v53, -v33, v44, 1.0
	v_fma_f32 v54, -v35, v45, 1.0
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v55, -v37, v46, 1.0
	v_div_scale_f32 v36, s0, v26, v0, v26
	v_div_scale_f32 v38, s1, v27, v0, v27
	v_rcp_f32_e32 v51, v42
	v_fma_f32 v59, -v39, v47, 1.0
	v_dual_fmac_f32 v44, v53, v44 :: v_dual_fmac_f32 v45, v54, v45
	v_fmac_f32_e32 v46, v55, v46
	v_div_scale_f32 v43, null, v0, v0, v31
	v_fma_f32 v60, -v41, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v47, v59, v47 :: v_dual_mul_f32 v54, v34, v44
	v_mul_f32_e32 v55, v36, v45
	v_dual_mul_f32 v59, v38, v46 :: v_dual_fmac_f32 v48, v60, v48
	v_rcp_f32_e32 v52, v43
	v_fma_f32 v53, -v42, v51, 1.0
	v_fma_f32 v60, -v33, v54, v34
	v_fma_f32 v62, -v35, v55, v36
	v_fma_f32 v63, -v37, v59, v38
	v_div_scale_f32 v40, s3, v28, v0, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v51, v53, v51 :: v_dual_fmac_f32 v54, v60, v44
	v_fmac_f32_e32 v55, v62, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v59, v63, v46
	v_div_scale_f32 v49, s4, v29, v0, v29
	v_fma_f32 v33, -v33, v54, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v35, v55, v36
	v_fma_f32 v35, -v37, v59, v38
	v_fma_f32 v38, -v43, v52, 1.0
	v_mul_f32_e32 v61, v40, v47
	v_div_fmas_f32 v33, v33, v44, v54
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v53, v49, v48
	v_fmac_f32_e32 v52, v38, v52
	v_fma_f32 v64, -v39, v61, v40
	v_div_fmas_f32 v34, v34, v45, v55
	v_div_fixup_f32 v25, v33, v0, v25
	v_div_scale_f32 v33, null, v0, v0, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v61, v64, v47
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v50, s5, v30, v0, v30
	v_div_fmas_f32 v35, v35, v46, v59
	v_fma_f32 v36, -v39, v61, v40
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v34, v0, v26
	v_rcp_f32_e32 v39, v33
	v_mul_f32_e32 v37, v50, v51
	v_div_fmas_f32 v34, v36, v47, v61
	v_fma_f32 v36, -v41, v53, v49
	v_div_fixup_f32 v27, v35, v0, v27
	v_div_scale_f32 v35, s1, v31, v0, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v28, v34, v0, v28
	v_fmac_f32_e32 v53, v36, v48
	v_div_scale_f32 v36, null, v0, v0, v17
	v_fma_f32 v34, -v42, v37, v50
	v_fma_f32 v38, -v33, v39, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v41, v53, v49
	v_rcp_f32_e32 v41, v36
	s_mov_b32 vcc_lo, s4
	v_dual_fmac_f32 v37, v34, v51 :: v_dual_mul_f32 v34, v35, v52
	v_fmac_f32_e32 v39, v38, v39
	v_div_scale_f32 v38, s3, v32, v0, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v42, v37, v50
	v_fma_f32 v44, -v43, v34, v35
	v_div_fmas_f32 v40, v40, v48, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v45, v38, v39
	v_fma_f32 v46, -v36, v41, 1.0
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v47, null, v0, v0, v18
	v_div_fmas_f32 v37, v42, v51, v37
	v_fmac_f32_e32 v34, v44, v52
	v_fma_f32 v44, -v33, v45, v38
	v_fmac_f32_e32 v41, v46, v41
	v_div_scale_f32 v46, s4, v17, v0, v17
	v_rcp_f32_e32 v42, v47
	v_div_fixup_f32 v30, v37, v0, v30
	v_fma_f32 v35, -v43, v34, v35
	v_fmac_f32_e32 v45, v44, v39
	v_mul_f32_e32 v37, v46, v41
	v_div_scale_f32 v43, null, v0, v0, v19
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v33, -v33, v45, v38
	v_div_fmas_f32 v34, v35, v52, v34
	v_fma_f32 v35, -v36, v37, v46
	v_rcp_f32_e32 v38, v43
	v_div_scale_f32 v44, null, v0, v0, v20
	v_div_fixup_f32 v29, v40, v0, v29
	v_fma_f32 v40, -v47, v42, 1.0
	v_fmac_f32_e32 v37, v35, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v35, v44
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v31, v34, v0, v31
	v_fmac_f32_e32 v42, v40, v42
	v_div_scale_f32 v40, s1, v18, v0, v18
	v_div_fmas_f32 v33, v33, v39, v45
	v_fma_f32 v45, -v43, v38, 1.0
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v39, v40, v42
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s0, 0, v0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v32, v33, v0, v32
	v_fmac_f32_e32 v38, v45, v38
	v_fma_f32 v45, -v44, v35, 1.0
	v_fma_f32 v33, -v36, v37, v46
	v_fma_f32 v34, -v47, v39, v40
	v_div_scale_f32 v36, s3, v19, v0, v19
	v_div_scale_f32 v46, null, v0, v0, v21
	v_fmac_f32_e32 v35, v45, v35
	v_div_scale_f32 v45, null, v0, v0, v22
	v_div_fmas_f32 v33, v33, v41, v37
	v_fmac_f32_e32 v39, v34, v42
	v_mul_f32_e32 v34, v36, v38
	v_rcp_f32_e32 v37, v46
	v_div_scale_f32 v41, s4, v20, v0, v20
	v_rcp_f32_e32 v48, v45
	v_div_fixup_f32 v17, v33, v0, v17
	v_fma_f32 v33, -v47, v39, v40
	v_fma_f32 v40, -v43, v34, v36
	v_mul_f32_e32 v47, v41, v35
	s_mov_b32 vcc_lo, s1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v49, -v46, v37, 1.0
	v_div_fmas_f32 v33, v33, v42, v39
	v_fmac_f32_e32 v34, v40, v38
	v_fma_f32 v39, -v44, v47, v41
	v_fma_f32 v42, -v45, v48, 1.0
	v_fmac_f32_e32 v37, v49, v37
	v_div_scale_f32 v40, s1, v21, v0, v21
	v_div_fixup_f32 v18, v33, v0, v18
	v_fma_f32 v33, -v43, v34, v36
	v_dual_fmac_f32 v47, v39, v35 :: v_dual_fmac_f32 v48, v42, v48
	v_div_scale_f32 v42, null, v0, v0, v23
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v36, v40, v37
	v_div_scale_f32 v39, s5, v22, v0, v22
	v_div_fmas_f32 v33, v33, v38, v34
	v_fma_f32 v34, -v44, v47, v41
	v_rcp_f32_e32 v41, v42
	v_div_scale_f32 v44, null, v0, v0, v24
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v38, -v46, v36, v40
	v_mul_f32_e32 v43, v39, v48
	v_div_fmas_f32 v34, v34, v35, v47
	v_rcp_f32_e32 v35, v44
	v_div_fixup_f32 v19, v33, v0, v19
	v_fmac_f32_e32 v36, v38, v37
	v_fma_f32 v38, -v45, v43, v39
	v_fma_f32 v47, -v42, v41, 1.0
	v_div_fixup_f32 v20, v34, v0, v20
	v_div_scale_f32 v34, s3, v23, v0, v23
	v_fma_f32 v33, -v46, v36, v40
	v_fmac_f32_e32 v43, v38, v48
	v_fmac_f32_e32 v41, v47, v41
	v_fma_f32 v38, -v44, v35, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v46, null, v0, v0, v10
	v_div_fmas_f32 v33, v33, v37, v36
	v_fma_f32 v36, -v45, v43, v39
	v_mul_f32_e32 v37, v34, v41
	v_fmac_f32_e32 v35, v38, v35
	v_div_scale_f32 v38, null, v0, v0, v9
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v39, s1, v24, v0, v24
	v_div_fmas_f32 v36, v36, v48, v43
	v_rcp_f32_e32 v40, v38
	v_fma_f32 v43, -v42, v37, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v45, v39, v35
	v_div_fixup_f32 v21, v33, v0, v21
	v_div_fixup_f32 v22, v36, v0, v22
	v_rcp_f32_e32 v36, v46
	v_fmac_f32_e32 v37, v43, v41
	v_fma_f32 v33, -v44, v45, v39
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v48, null, v0, v0, v12
	v_fma_f32 v43, -v38, v40, 1.0
	v_fma_f32 v34, -v42, v37, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v45, v33, v35 :: v_dual_fmac_f32 v40, v43, v40
	v_fma_f32 v47, -v46, v36, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v43, v42
	v_div_fmas_f32 v34, v34, v41, v37
	v_fma_f32 v37, -v44, v45, v39
	v_div_scale_f32 v41, s3, v10, v0, v10
	v_fmac_f32_e32 v36, v47, v36
	v_div_scale_f32 v33, s4, v9, v0, v9
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v44, -v42, v43, 1.0
	v_mul_f32_e32 v49, v41, v36
	v_mul_f32_e32 v39, v33, v40
	v_div_fmas_f32 v35, v37, v35, v45
	v_div_fixup_f32 v23, v34, v0, v23
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, s5, v11, v0, v11
	v_fma_f32 v37, -v46, v49, v41
	v_fma_f32 v47, -v38, v39, v33
	v_div_fixup_f32 v24, v35, v0, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v35, -v48, v50, 1.0
	v_fmac_f32_e32 v49, v37, v36
	v_div_scale_f32 v37, null, v0, v0, v13
	v_fma_f32 v34, -v42, v45, v44
	v_fmac_f32_e32 v39, v47, v40
	v_fmac_f32_e32 v50, v35, v50
	v_div_scale_f32 v35, s1, v12, v0, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v45, v34, v43
	v_rcp_f32_e32 v34, v37
	v_fma_f32 v33, -v38, v39, v33
	v_fma_f32 v38, -v46, v49, v41
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v33, v33, v40, v39
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v39, v35, v50
	v_div_fmas_f32 v36, v38, v36, v49
	v_fma_f32 v38, -v42, v45, v44
	v_div_scale_f32 v40, null, v0, v0, v14
	v_fma_f32 v41, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v33, v0, v9
	v_div_fmas_f32 v38, v38, v43, v45
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v43, -v48, v39, v35
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v13, v0, v13
	v_div_fixup_f32 v10, v36, v0, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v43, v50
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v33, v41, v34
	v_div_fixup_f32 v11, v38, v0, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v40, v42, 1.0
	v_fma_f32 v35, -v48, v39, v35
	v_div_scale_f32 v38, null, v0, v0, v15
	v_fma_f32 v43, -v37, v33, v41
	v_fmac_f32_e32 v42, v36, v42
	v_div_scale_f32 v36, s4, v14, v0, v14
	v_div_fmas_f32 v35, v35, v50, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v43, v34
	v_rcp_f32_e32 v44, v38
	v_mul_f32_e32 v39, v36, v42
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v12, v35, v0, v12
	v_fma_f32 v35, -v37, v33, v41
	v_div_scale_f32 v43, null, v0, v0, v16
	v_fma_f32 v37, -v40, v39, v36
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v33, v35, v34, v33
	v_div_scale_f32 v34, null, v0, v0, v1
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v35, s1, v15, v0, v15
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_fixup_f32 v13, v33, v0, v13
	v_fma_f32 v36, -v40, v39, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v34, v37, 1.0
	v_mul_f32_e32 v40, v35, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s3, v16, v0, v16
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	v_div_fmas_f32 v36, v36, v42, v39
	v_fma_f32 v39, -v38, v40, v35
	v_mul_f32_e32 v42, v33, v45
	v_div_scale_f32 v48, s4, v1, v0, v1
	v_fma_f32 v49, -v41, v47, 1.0
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
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
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
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	v_cndmask_b32_e64 v9, 0, v9, s0
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
	v_mul_lo_u32 v32, s29, v56
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v11, 0, v11, s0
	v_cndmask_b32_e64 v12, 0, v12, s0
	v_cndmask_b32_e64 v13, 0, v13, s0
	v_cndmask_b32_e64 v14, 0, v14, s0
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
	v_add_nc_u32_e32 v34, v32, v57
	v_add_nc_u32_e32 v32, s0, v32
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s29, v57
	.loc	1 848 17                        ; attention.py:848:17
	s_and_b32 s5, s27, 0xffff
	s_mov_b32 s4, s26
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v33, 16, v57
	.loc	1 843 24 is_stmt 0              ; attention.py:843:24
	v_add_lshl_u32 v38, v32, v57, 2
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 843 24                        ; attention.py:843:24
	v_add_lshl_u32 v34, v34, s0, 2
	.loc	1 843 74 is_stmt 0              ; attention.py:843:74
	v_or_b32_e32 v35, 32, v57
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s0, s29, v33
	.loc	1 848 17                        ; attention.py:848:17
	v_add_nc_u32_e32 v39, 8, v38
	v_add_nc_u32_e32 v40, 16, v38
	v_cndmask_b32_e32 v41, 0x80000000, v38, vcc_lo
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s29, v35
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v36, 48, v57
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v40, 0x80000000, v40
	s_clause 0x2
	buffer_store_b32 v8, v41, s[4:7], 0 offen
	buffer_store_b32 v25, v39, s[4:7], 0 offen
	buffer_store_b32 v26, v40, s[4:7], 0 offen
	v_add_nc_u32_e32 v8, 24, v38
	v_add_nc_u32_e32 v25, 32, v38
	v_add_nc_u32_e32 v26, 40, v38
	v_add_nc_u32_e32 v39, 48, v38
	v_add_nc_u32_e32 v38, 56, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	s_clause 0x4
	buffer_store_b32 v27, v8, s[4:7], 0 offen
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	buffer_store_b32 v30, v39, s[4:7], 0 offen
	buffer_store_b32 v31, v38, s[4:7], 0 offen
	v_add_lshl_u32 v8, v32, v33, 2
	v_add_nc_u32_e32 v25, 0x48, v34
	v_add_nc_u32_e32 v26, 0x50, v34
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_add_nc_u32_e32 v27, 0x58, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_nc_u32_e32 v28, 0x60, v34
	s_clause 0x2
	buffer_store_b32 v17, v8, s[4:7], 0 offen
	buffer_store_b32 v18, v25, s[4:7], 0 offen
	buffer_store_b32 v19, v26, s[4:7], 0 offen
	v_add_nc_u32_e32 v17, 0x68, v34
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v8, 0x80000000, v28
	v_add_nc_u32_e32 v18, 0x70, v34
	v_add_nc_u32_e32 v19, 0x78, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x1
	buffer_store_b32 v20, v27, s[4:7], 0 offen
	buffer_store_b32 v21, v8, s[4:7], 0 offen
	v_add_lshl_u32 v8, v32, v35, 2
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 848 17                        ; attention.py:848:17
	buffer_store_b32 v22, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v17, 0x88, v34
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v18, s[4:7], 0 offen
	buffer_store_b32 v24, v19, s[4:7], 0 offen
	buffer_store_b32 v9, v8, s[4:7], 0 offen
	v_add_nc_u32_e32 v8, 0x90, v34
	v_cndmask_b32_e32 v9, 0x80000000, v17, vcc_lo
	v_add_nc_u32_e32 v17, 0x98, v34
	v_add_nc_u32_e32 v18, 0xa0, v34
	v_add_nc_u32_e32 v19, 0xa8, v34
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v10, v9, s[4:7], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v10, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s29, v36
	.loc	1 848 17                        ; attention.py:848:17
	buffer_store_b32 v11, v8, s[4:7], 0 offen
	v_add_nc_u32_e32 v8, 0xb0, v34
	s_clause 0x2
	buffer_store_b32 v12, v9, s[4:7], 0 offen
	buffer_store_b32 v13, v10, s[4:7], 0 offen
	buffer_store_b32 v14, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v9, 0xb8, v34
	v_add_lshl_u32 v10, v32, v36, 2
	v_add_nc_u32_e32 v11, 0xc8, v34
	v_add_nc_u32_e32 v12, 0xd0, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v37, 62, v58
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v8, s[4:7], 0 offen
	buffer_store_b32 v16, v9, s[4:7], 0 offen
	buffer_store_b32 v1, v10, s[4:7], 0 offen
	buffer_store_b32 v2, v11, s[4:7], 0 offen
	buffer_store_b32 v3, v12, s[4:7], 0 offen
	v_add_nc_u32_e32 v1, 0xd8, v34
	v_add_nc_u32_e32 v2, 0xe0, v34
	v_add_nc_u32_e32 v3, 0xe8, v34
	v_add_nc_u32_e32 v8, 0xf0, v34
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
.Ltmp41:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 124
		.amdhsa_next_free_sgpr 53
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_vgpr, 124
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8480
; TotalNumSgprs: 55
; NumVgprs: 124
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 55
; NumVGPRsForWavesPerEU: 124
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     124
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
