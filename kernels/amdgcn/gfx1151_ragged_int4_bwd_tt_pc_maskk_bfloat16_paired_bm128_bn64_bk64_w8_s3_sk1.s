	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b128 s[44:47], s[0:1], 0x20
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s9, s2
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x0
	s_load_b32 s30, s[0:1], 0x38
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v41, 5, v0
	v_and_b32_e32 v49, 0x7f, v0
	v_and_b32_e32 v43, 15, v0
	.loc	1 1011 18                       ; ragged.py:1011:18
	v_lshrrev_b32_e32 v56, 7, v0
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_and_b32_e32 v45, 32, v0
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v40, 8, v41
	v_or_b32_e32 v39, 16, v41
	v_or_b32_e32 v38, 24, v41
	v_or_b32_e32 v37, 32, v41
	v_or_b32_e32 v36, 40, v41
	v_or_b32_e32 v35, 48, v41
	v_or_b32_e32 v34, 56, v41
	.loc	1 1011 18                       ; ragged.py:1011:18
	v_and_b32_e32 v42, 31, v0
	v_and_b32_e32 v53, 0x80, v0
	v_lshlrev_b32_e32 v52, 1, v0
	v_lshlrev_b32_e32 v50, 5, v43
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s35, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_lshr_b32 s7, s7, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s5, s5, 6
	v_mul_lo_u32 v55, s34, v56
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s5, s4
	v_mul_lo_u32 v54, s30, v41
	.loc	1 998 20                        ; ragged.py:998:20
	s_abs_i32 s6, s4
	v_lshlrev_b32_e32 v51, 4, v45
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	v_add_nc_u32_e32 v48, 0, v0
	s_mov_b64 s[28:29], s[42:43]
	v_rcp_iflag_f32_e32 v1, s7
	v_cmp_eq_u32_e32 vcc_lo, 0, v53
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v44, 0xc0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	.loc	1 998 20                        ; ragged.py:998:20
	v_readfirstlane_b32 s7, v1
	v_mov_b32_e32 v1, 0
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s7
	s_mul_hi_u32 s8, s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s8
	s_xor_b32 s8, s2, s4
	s_mul_hi_u32 s7, s9, s7
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s10, s7, s6
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s7, 1
	s_sub_i32 s11, s9, s6
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s7, s10, s7
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s7, 1
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s6, s10, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s7, s5
	.loc	1 998 20                        ; ragged.py:998:20
	s_xor_b32 s1, s6, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_f32_u32 s9, s7
	.loc	1 998 20                        ; ragged.py:998:20
	s_sub_i32 s26, s1, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s1, 0, s7
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s26, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v2, s9
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s2, s2, s4
	.loc	1 1049 39                       ; ragged.py:1049:39
	s_mul_i32 s20, s26, s30
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s4, s2
	.loc	1 1053 39                       ; ragged.py:1053:39
	s_mul_i32 s31, s26, s35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_readfirstlane_b32 s0, v2
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v2, 2, v44
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_mul_f32 s0, s0, 0x4f7ffffe
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v46, v2, v43
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_u32_f32 s0, s0
	v_add_nc_u32_e32 v47, 0, v46
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s1, s1, s0
	s_mul_hi_u32 s1, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s0, s0, s1
	s_xor_b32 s1, s2, s5
	s_mul_hi_u32 s0, s4, s0
	s_ashr_i32 s1, s1, 31
	s_mul_i32 s6, s0, s7
	s_sub_i32 s4, s4, s6
	s_add_i32 s6, s0, 1
	s_sub_i32 s8, s4, s7
	s_cmp_ge_u32 s4, s7
	s_cselect_b32 s0, s6, s0
	s_cselect_b32 s4, s8, s4
	s_add_i32 s6, s0, 1
	s_cmp_ge_u32 s4, s7
	s_cselect_b32 s0, s6, s0
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_ashr_i32 s27, s26, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s4, s0, s1
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[0:1], s[26:27], 2
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s5, s4, s5
	.loc	1 1003 18                       ; ragged.py:1003:18
	s_lshl_b32 s33, s4, 7
	.loc	1 1001 17                       ; ragged.py:1001:17
	s_sub_i32 s52, s2, s5
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v2, s33, v49
	.loc	1 1004 18                       ; ragged.py:1004:18
	s_lshl_b32 s25, s52, 6
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_add_u32 s0, s44, s0
	s_addc_u32 s1, s45, s1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v3, s25, v41
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s21, s[0:1], 0x0
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v4, s25, v40
	v_or_b32_e32 v5, s25, v39
	v_or_b32_e32 v6, s25, v38
	v_or_b32_e32 v7, s25, v37
	v_or_b32_e32 v8, s25, v36
	v_or_b32_e32 v9, s25, v35
	v_or_b32_e32 v10, s25, v34
	.loc	1 1016 22                       ; ragged.py:1016:22
	s_lshl_b32 s27, s3, 5
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s8, s34, v2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s7, s35, v3
	v_cmp_gt_i32_e64 s6, s35, v4
	v_cmp_gt_i32_e64 s5, s35, v5
	v_cmp_gt_i32_e64 s4, s35, v6
	v_cmp_gt_i32_e64 s3, s35, v7
	v_cmp_gt_i32_e64 s2, s35, v8
	v_cmp_gt_i32_e64 s1, s35, v9
	.loc	1 1044 21                       ; ragged.py:1044:21
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s0, s21, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s0, s0, 26
	s_add_i32 s0, s21, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s9, s0, 6
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s0, s35, v10
	.loc	1 1043 39                       ; ragged.py:1043:39
	s_lshl_b32 s9, s9, 5
	.loc	1 1046 23                       ; ragged.py:1046:23
	s_cmp_ge_i32 s27, s9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_cndmask_b32_e64 v1, 0x88, 0, vcc_lo
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v2, 24, v52
	v_or_b32_e32 v3, 0x300, v0
	v_or_b32_e32 v4, 0x700, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v1, v1, v49
	v_or3_b32 v2, v50, v2, v51
	v_or_b32_e32 v5, 0xb00, v0
	v_or_b32_e32 v6, 0xf00, v0
	s_add_i32 s16, s25, s31
	v_xor_b32_e32 v7, 0x110, v1
	v_xor_b32_e32 v8, 8, v2
	v_xor_b32_e32 v10, 16, v2
	v_xor_b32_e32 v11, 24, v2
	s_mul_i32 s16, s16, s30
	.loc	1 1046 23                       ; ragged.py:1046:23
	v_add3_u32 v33, v49, v55, s33
	v_add3_u32 v57, v42, v54, s16
	v_add_nc_u32_e32 v58, 0, v3
	v_add_nc_u32_e32 v59, 0, v4
	v_dual_mov_b32 v13, v9 :: v_dual_add_nc_u32 v60, 0, v5
	v_dual_mov_b32 v12, v9 :: v_dual_add_nc_u32 v61, 0, v6
	v_dual_mov_b32 v15, v9 :: v_dual_add_nc_u32 v62, 0, v1
	v_dual_mov_b32 v14, v9 :: v_dual_add_nc_u32 v63, 0, v7
	v_dual_mov_b32 v17, v9 :: v_dual_add_nc_u32 v64, 0, v2
	v_dual_mov_b32 v16, v9 :: v_dual_add_nc_u32 v65, 0, v8
	v_dual_mov_b32 v19, v9 :: v_dual_add_nc_u32 v66, 0, v10
	v_dual_mov_b32 v18, v9 :: v_dual_add_nc_u32 v67, 0, v11
	v_mov_b32_e32 v10, v9
	v_mov_b32_e32 v11, v9
	v_mov_b32_e32 v20, v9
	v_mov_b32_e32 v21, v9
	v_mov_b32_e32 v22, v9
	v_mov_b32_e32 v23, v9
	v_mov_b32_e32 v24, v9
	v_mov_b32_e32 v1, v9
	v_mov_b32_e32 v2, v9
	v_mov_b32_e32 v3, v9
	v_mov_b32_e32 v4, v9
	v_mov_b32_e32 v5, v9
	v_mov_b32_e32 v6, v9
	v_mov_b32_e32 v7, v9
	v_mov_b32_e32 v8, v9
	v_mov_b32_e32 v25, v9
	v_mov_b32_e32 v26, v9
	v_mov_b32_e32 v27, v9
	v_mov_b32_e32 v28, v9
	v_mov_b32_e32 v29, v9
	v_mov_b32_e32 v30, v9
	v_mov_b32_e32 v31, v9
	v_mov_b32_e32 v32, v9
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_lshl_b32 s10, s34, 1
	s_lshl_b32 s11, s34, 2
	s_mul_i32 s22, s34, 6
	s_lshl_b32 s23, s34, 3
	s_mul_i32 s24, s34, 10
	s_mul_i32 s42, s34, 12
	s_mul_i32 s43, s34, 14
	s_lshl_b32 s44, s34, 4
	s_mul_i32 s45, s34, 18
	s_mul_i32 s48, s34, 20
	s_mul_i32 s49, s34, 22
	s_mul_i32 s50, s34, 24
	s_mul_i32 s51, s34, 26
	s_mul_i32 s53, s34, 28
	s_mul_i32 s54, s34, 30
	s_and_b32 s13, s37, 0xffff
	s_mov_b32 s12, s36
	s_lshl_b32 s55, s30, 3
	s_lshl_b32 s56, s30, 4
	s_mul_i32 s57, s30, 24
	s_lshl_b32 s58, s30, 5
	s_mul_i32 s59, s30, 40
	s_mul_i32 s60, s30, 48
	s_mul_i32 s61, s30, 56
	s_and_b32 s17, s39, 0xffff
	s_mov_b32 s16, s38
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1056 42 is_stmt 1             ; ragged.py:1056:42
	s_add_i32 s62, s27, s20
	v_add_nc_u32_e32 v70, s27, v57
	v_mad_u64_u32 v[68:69], null, s62, s34, v[33:34]
	.loc	1 1068 21                       ; ragged.py:1068:21
	s_add_i32 s27, s27, 32
	v_add_nc_u32_e32 v69, s55, v70
	v_add_nc_u32_e32 v71, s56, v70
	v_add_nc_u32_e32 v72, s57, v70
	v_add_nc_u32_e32 v73, s58, v70
	v_add_nc_u32_e32 v74, s59, v70
	v_add_nc_u32_e32 v75, s60, v70
	v_add_nc_u32_e32 v76, s61, v70
	v_add_nc_u32_e32 v77, s10, v68
	v_add_nc_u32_e32 v78, s11, v68
	v_add_nc_u32_e32 v79, s22, v68
	v_add_nc_u32_e32 v80, s23, v68
	v_add_nc_u32_e32 v81, s24, v68
	v_add_nc_u32_e32 v82, s42, v68
	v_add_nc_u32_e32 v83, s43, v68
	v_add_nc_u32_e32 v84, s44, v68
	v_add_nc_u32_e32 v85, s45, v68
	v_add_nc_u32_e32 v86, s48, v68
	v_add_nc_u32_e32 v87, s49, v68
	v_add_nc_u32_e32 v88, s50, v68
	v_add_nc_u32_e32 v89, s51, v68
	v_add_nc_u32_e32 v90, s53, v68
	v_add_nc_u32_e32 v91, s54, v68
	.loc	1 1057 34                       ; ragged.py:1057:34
	v_cndmask_b32_e64 v70, 0x80000000, v70, s7
	v_cndmask_b32_e64 v69, 0x80000000, v69, s6
	v_cndmask_b32_e64 v71, 0x80000000, v71, s5
	v_cndmask_b32_e64 v72, 0x80000000, v72, s4
	v_cndmask_b32_e64 v73, 0x80000000, v73, s3
	.loc	1 1056 34                       ; ragged.py:1056:34
	v_cndmask_b32_e64 v68, 0x80000000, v68, s8
	.loc	1 1057 34                       ; ragged.py:1057:34
	v_cndmask_b32_e64 v74, 0x80000000, v74, s2
	v_cndmask_b32_e64 v75, 0x80000000, v75, s1
	v_cndmask_b32_e64 v76, 0x80000000, v76, s0
	.loc	1 1056 34                       ; ragged.py:1056:34
	v_cndmask_b32_e64 v77, 0x80000000, v77, s8
	v_cndmask_b32_e64 v78, 0x80000000, v78, s8
	v_cndmask_b32_e64 v79, 0x80000000, v79, s8
	v_cndmask_b32_e64 v80, 0x80000000, v80, s8
	v_cndmask_b32_e64 v81, 0x80000000, v81, s8
	v_cndmask_b32_e64 v82, 0x80000000, v82, s8
	v_cndmask_b32_e64 v83, 0x80000000, v83, s8
	v_cndmask_b32_e64 v84, 0x80000000, v84, s8
	v_cndmask_b32_e64 v85, 0x80000000, v85, s8
	v_cndmask_b32_e64 v86, 0x80000000, v86, s8
	v_cndmask_b32_e64 v87, 0x80000000, v87, s8
	v_cndmask_b32_e64 v88, 0x80000000, v88, s8
	v_cndmask_b32_e64 v89, 0x80000000, v89, s8
	v_cndmask_b32_e64 v90, 0x80000000, v90, s8
	v_cndmask_b32_e64 v91, 0x80000000, v91, s8
	.loc	1 1057 34                       ; ragged.py:1057:34
	s_clause 0x6
	buffer_load_u8 v70, v70, s[16:19], 0 offen
	buffer_load_u8 v69, v69, s[16:19], 0 offen
	buffer_load_u8 v71, v71, s[16:19], 0 offen
	buffer_load_u8 v72, v72, s[16:19], 0 offen
	buffer_load_u8 v73, v73, s[16:19], 0 offen
	buffer_load_u8 v74, v74, s[16:19], 0 offen
	buffer_load_u8 v75, v75, s[16:19], 0 offen
	.loc	1 1056 34                       ; ragged.py:1056:34
	s_clause 0xf
	buffer_load_u8 v68, v68, s[12:15], 0 offen
	buffer_load_u8 v81, v81, s[12:15], 0 offen
	buffer_load_u8 v82, v82, s[12:15], 0 offen
	buffer_load_u8 v84, v84, s[12:15], 0 offen
	buffer_load_u8 v85, v85, s[12:15], 0 offen
	buffer_load_u8 v86, v86, s[12:15], 0 offen
	buffer_load_u8 v88, v88, s[12:15], 0 offen
	buffer_load_u8 v89, v89, s[12:15], 0 offen
	buffer_load_u8 v90, v90, s[12:15], 0 offen
	buffer_load_u8 v79, v79, s[12:15], 0 offen
	buffer_load_u8 v83, v83, s[12:15], 0 offen
	buffer_load_u8 v87, v87, s[12:15], 0 offen
	buffer_load_u8 v77, v77, s[12:15], 0 offen
	buffer_load_u8 v78, v78, s[12:15], 0 offen
	buffer_load_u8 v80, v80, s[12:15], 0 offen
	buffer_load_u8 v91, v91, s[12:15], 0 offen
	.loc	1 1057 34                       ; ragged.py:1057:34
	buffer_load_u8 v76, v76, s[16:19], 0 offen
	.loc	1 1056 34                       ; ragged.py:1056:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1046 23                       ; ragged.py:1046:23
	s_cmp_lt_i32 s27, s9
	.loc	1 1056 34                       ; ragged.py:1056:34
	s_waitcnt vmcnt(16)
	ds_store_b8 v48, v68
	s_waitcnt vmcnt(15)
	ds_store_b8 v48, v81 offset:1280
	s_waitcnt vmcnt(14)
	ds_store_b8 v48, v82 offset:1536
	s_waitcnt vmcnt(13)
	ds_store_b8 v48, v84 offset:2048
	s_waitcnt vmcnt(12)
	ds_store_b8 v48, v85 offset:2304
	s_waitcnt vmcnt(11)
	ds_store_b8 v48, v86 offset:2560
	s_waitcnt vmcnt(10)
	ds_store_b8 v48, v88 offset:3072
	s_waitcnt vmcnt(9)
	ds_store_b8 v48, v89 offset:3328
	s_waitcnt vmcnt(8)
	ds_store_b8 v48, v90 offset:3584
	s_waitcnt vmcnt(7)
	ds_store_b8 v58, v79
	s_waitcnt vmcnt(6)
	ds_store_b8 v59, v83
	s_waitcnt vmcnt(5)
	ds_store_b8 v60, v87
	s_waitcnt vmcnt(4)
	ds_store_b8 v48, v77 offset:256
	s_waitcnt vmcnt(3)
	ds_store_b8 v48, v78 offset:512
	s_waitcnt vmcnt(2)
	ds_store_b8 v48, v80 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b8 v61, v91
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1058 31                       ; ragged.py:1058:31
	ds_load_u8 v68, v47 offset:384
	ds_load_u8 v77, v47 offset:256
	ds_load_u8 v78, v47 offset:128
	ds_load_u8 v79, v47
	ds_load_u8 v84, v47 offset:448
	ds_load_u8 v85, v47 offset:320
	ds_load_u8 v86, v47 offset:192
	ds_load_u8 v87, v47 offset:64
	ds_load_u8 v80, v47 offset:896
	ds_load_u8 v81, v47 offset:768
	ds_load_u8 v82, v47 offset:640
	ds_load_u8 v83, v47 offset:512
	ds_load_u8 v88, v47 offset:960
	ds_load_u8 v89, v47 offset:832
	ds_load_u8 v90, v47 offset:704
	ds_load_u8 v91, v47 offset:576
	ds_load_u8 v92, v47 offset:1408
	ds_load_u8 v93, v47 offset:1280
	ds_load_u8 v94, v47 offset:1152
	ds_load_u8 v95, v47 offset:1024
	ds_load_u8 v96, v47 offset:1472
	ds_load_u8 v97, v47 offset:1344
	ds_load_u8 v98, v47 offset:1216
	ds_load_u8 v99, v47 offset:1088
	ds_load_u8 v100, v47 offset:1920
	ds_load_u8 v101, v47 offset:1792
	ds_load_u8 v102, v47 offset:1664
	ds_load_u8 v103, v47 offset:1536
	ds_load_u8 v104, v47 offset:1984
	ds_load_u8 v105, v47 offset:1856
	ds_load_u8 v106, v47 offset:1728
	ds_load_u8 v107, v47 offset:1600
	ds_load_u8 v108, v47 offset:2432
	ds_load_u8 v109, v47 offset:2304
	ds_load_u8 v110, v47 offset:2176
	ds_load_u8 v111, v47 offset:2048
	ds_load_u8 v112, v47 offset:2496
	ds_load_u8 v113, v47 offset:2368
	ds_load_u8 v114, v47 offset:2240
	ds_load_u8 v115, v47 offset:2112
	ds_load_u8 v116, v47 offset:2944
	ds_load_u8 v117, v47 offset:2816
	ds_load_u8 v118, v47 offset:2688
	ds_load_u8 v119, v47 offset:2560
	ds_load_u8 v120, v47 offset:3008
	ds_load_u8 v121, v47 offset:2880
	ds_load_u8 v122, v47 offset:2752
	ds_load_u8 v123, v47 offset:2624
	ds_load_u8 v124, v47 offset:3456
	ds_load_u8 v125, v47 offset:3328
	ds_load_u8 v126, v47 offset:3200
	ds_load_u8 v127, v47 offset:3072
	ds_load_u8 v128, v47 offset:3520
	ds_load_u8 v129, v47 offset:3392
	ds_load_u8 v130, v47 offset:3264
	ds_load_u8 v131, v47 offset:3136
	ds_load_u8 v132, v47 offset:3968
	ds_load_u8 v133, v47 offset:3840
	ds_load_u8 v134, v47 offset:3712
	ds_load_u8 v135, v47 offset:3584
	ds_load_u8 v136, v47 offset:4032
	ds_load_u8 v137, v47 offset:3904
	ds_load_u8 v138, v47 offset:3776
	ds_load_u8 v139, v47 offset:3648
	.loc	1 1057 34                       ; ragged.py:1057:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v62, v70
	ds_store_b8 v62, v71 offset:512
	ds_store_b8 v62, v73 offset:1024
	ds_store_b8 v62, v75 offset:1536
	ds_store_b8 v63, v69
	ds_store_b8 v63, v72 offset:512
	ds_store_b8 v63, v74 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v63, v76 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1058 31                       ; ragged.py:1058:31
	v_perm_b32 v143, v77, v68, 0xc0c0004
	.loc	1 1057 34                       ; ragged.py:1057:34
	ds_load_2addr_stride64_b64 v[68:71], v64 offset1:2
	ds_load_2addr_stride64_b64 v[72:75], v65 offset1:2
	.loc	1 1058 31                       ; ragged.py:1058:31
	v_perm_b32 v140, v83, v82, 0xc0c0004
	v_perm_b32 v141, v81, v80, 0xc0c0004
	v_perm_b32 v142, v79, v78, 0xc0c0004
	v_perm_b32 v94, v95, v94, 0xc0c0004
	v_perm_b32 v92, v93, v92, 0xc0c0004
	v_perm_b32 v93, v119, v118, 0xc0c0004
	v_perm_b32 v95, v117, v116, 0xc0c0004
	.loc	1 1057 34                       ; ragged.py:1057:34
	ds_load_2addr_stride64_b64 v[76:79], v66 offset1:2
	.loc	1 1058 31                       ; ragged.py:1058:31
	v_perm_b32 v116, v91, v90, 0xc0c0004
	v_perm_b32 v117, v89, v88, 0xc0c0004
	v_perm_b32 v118, v87, v86, 0xc0c0004
	v_perm_b32 v119, v85, v84, 0xc0c0004
	v_perm_b32 v102, v103, v102, 0xc0c0004
	v_perm_b32 v100, v101, v100, 0xc0c0004
	.loc	1 1057 34                       ; ragged.py:1057:34
	ds_load_2addr_stride64_b64 v[80:83], v67 offset1:2
	.loc	1 1058 31                       ; ragged.py:1058:31
	v_perm_b32 v106, v107, v106, 0xc0c0004
	v_perm_b32 v104, v105, v104, 0xc0c0004
	v_perm_b32 v98, v99, v98, 0xc0c0004
	v_perm_b32 v96, v97, v96, 0xc0c0004
	v_lshl_or_b32 v85, v141, 16, v140
	v_lshl_or_b32 v84, v143, 16, v142
	v_lshl_or_b32 v86, v92, 16, v94
	v_lshl_or_b32 v89, v95, 16, v93
	v_lshl_or_b32 v93, v117, 16, v116
	v_lshl_or_b32 v92, v119, 16, v118
	v_perm_b32 v101, v111, v110, 0xc0c0004
	v_perm_b32 v103, v109, v108, 0xc0c0004
	v_perm_b32 v97, v123, v122, 0xc0c0004
	v_perm_b32 v99, v121, v120, 0xc0c0004
	v_perm_b32 v105, v115, v114, 0xc0c0004
	v_perm_b32 v107, v113, v112, 0xc0c0004
	v_lshl_or_b32 v87, v100, 16, v102
	v_lshl_or_b32 v95, v104, 16, v106
	v_lshl_or_b32 v94, v96, 16, v98
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[68:69], v[84:85], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[70:71], v[84:85], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[68:69], v[92:93], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[70:71], v[92:93], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v108, v135, v134, 0xc0c0004
	v_perm_b32 v109, v133, v132, 0xc0c0004
	v_perm_b32 v110, v127, v126, 0xc0c0004
	v_perm_b32 v111, v125, v124, 0xc0c0004
	v_perm_b32 v112, v139, v138, 0xc0c0004
	v_perm_b32 v113, v137, v136, 0xc0c0004
	v_perm_b32 v114, v131, v130, 0xc0c0004
	v_perm_b32 v115, v129, v128, 0xc0c0004
	v_lshl_or_b32 v88, v103, 16, v101
	v_lshl_or_b32 v97, v99, 16, v97
	v_lshl_or_b32 v96, v107, 16, v105
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[72:73], v[86:87], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[74:75], v[86:87], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[72:73], v[94:95], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[74:75], v[94:95], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v91, v109, 16, v108
	v_lshl_or_b32 v90, v111, 16, v110
	v_lshl_or_b32 v69, v113, 16, v112
	v_lshl_or_b32 v68, v115, 16, v114
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[76:77], v[88:89], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[78:79], v[88:89], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[76:77], v[96:97], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[78:79], v[96:97], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[80:81], v[90:91], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[82:83], v[90:91], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[80:81], v[68:69], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[82:83], v[68:69], v[25:32] neg_lo:[1,1,0]
	.loc	1 1046 23                       ; ragged.py:1046:23
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v32, 0
	v_mov_b32_e32 v24, 0
.LBB0_4:                                ; %Flow309
	.loc	1 1008 27 is_stmt 1             ; ragged.py:1008:27
	s_add_i32 s9, s21, 1
	v_and_b32_e32 v33, 0xe0, v0
	.loc	1 1008 26 is_stmt 0             ; ragged.py:1008:26
	s_lshr_b32 s10, s9, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s10
	s_ashr_i32 s42, s9, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1069 20 is_stmt 1             ; ragged.py:1069:20
	s_cmp_lt_i32 s27, s42
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %._crit_edge._crit_edge
	.loc	1 1105 21                       ; ragged.py:1105:21
	s_add_i32 s16, s25, s31
	s_cbranch_execz .LBB0_7
	s_branch .LBB0_8
.LBB0_6:
                                        ; implicit-def: $sgpr16
.LBB0_7:
	.loc	1 1080 33                       ; ragged.py:1080:33
	s_and_b32 s17, s21, 0x80000001
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v68, s27, v56
	.loc	1 1080 33                       ; ragged.py:1080:33
	s_cmp_eq_u32 s17, 1
	s_mov_b32 s51, 0x31027000
	s_cselect_b32 s43, -1, 0
	.loc	1 1081 42                       ; ragged.py:1081:42
	s_add_i32 s19, s27, s20
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v70, 2, v68
	.loc	1 1081 42                       ; ragged.py:1081:42
	s_mul_i32 s20, s19, s34
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v71, 4, v68
	.loc	1 1081 42                       ; ragged.py:1081:42
	s_add_i32 s21, s20, s33
	.loc	1 1079 30                       ; ragged.py:1079:30
	v_cmp_gt_i32_e32 vcc_lo, s42, v68
	.loc	1 1081 42                       ; ragged.py:1081:42
	v_add3_u32 v55, s21, v49, v55
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v72, 6, v68
	.loc	1 1079 30                       ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s9, s42, v70
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v73, 8, v68
	.loc	1 1079 30                       ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s10, s42, v71
	.loc	1 1081 42                       ; ragged.py:1081:42
	v_mad_u64_u32 v[56:57], null, s34, 6, v[55:56]
	v_lshl_add_u32 v85, s34, 1, v55
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v74, 10, v68
	.loc	1 1081 66                       ; ragged.py:1081:66
	s_and_b32 vcc_lo, s8, vcc_lo
	.loc	1 1079 30                       ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s11, s42, v72
	.loc	1 1081 42                       ; ragged.py:1081:42
	v_lshl_add_u32 v86, s34, 2, v55
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v75, 12, v68
	.loc	1 1081 42                       ; ragged.py:1081:42
	v_mad_u64_u32 v[57:58], null, s34, 10, v[55:56]
	v_mad_u64_u32 v[58:59], null, s34, 12, v[55:56]
	v_mad_u64_u32 v[59:60], null, s34, 14, v[55:56]
	v_mad_u64_u32 v[60:61], null, s34, 18, v[55:56]
	v_mad_u64_u32 v[61:62], null, s34, 20, v[55:56]
	v_mad_u64_u32 v[62:63], null, s34, 22, v[55:56]
	v_mad_u64_u32 v[63:64], null, s34, 24, v[55:56]
	v_mad_u64_u32 v[64:65], null, s34, 26, v[55:56]
	v_mad_u64_u32 v[65:66], null, s34, 28, v[55:56]
	v_lshl_add_u32 v87, s34, 3, v55
	v_lshl_add_u32 v88, s34, 4, v55
	v_mad_u64_u32 v[66:67], null, s34, 30, v[55:56]
	.loc	1 1081 34 is_stmt 0             ; ragged.py:1081:34
	v_cndmask_b32_e32 v55, 0x80000000, v55, vcc_lo
	.loc	1 1081 66                       ; ragged.py:1081:66
	s_and_b32 vcc_lo, s8, s9
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s12, s42, v73
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v76, 14, v68
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v67, 0x80000000, v85, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s8, s10
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s13, s42, v74
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v77, 16, v68
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v85, 0x80000000, v86, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s8, s11
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s14, s42, v75
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v78, 18, v68
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v56, 0x80000000, v56, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s8, s12
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s15, s42, v76
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v79, 20, v68
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v86, 0x80000000, v87, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s8, s13
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s16, s42, v77
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v80, 22, v68
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s8, s14
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s17, s42, v78
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v81, 24, v68
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s8, s15
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s18, s42, v79
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v82, 26, v68
	.loc	1 1081 34                       ; ragged.py:1081:34
	s_and_b32 s49, s37, 0xffff
	s_mov_b32 s50, 0x7ffffffe
	s_mov_b32 s48, s36
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s8, s16
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s19, s42, v80
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v83, 28, v68
	.loc	1 1081 34                       ; ragged.py:1081:34
	s_clause 0x7
	buffer_load_u8 v87, v55, s[48:51], 0 offen
	buffer_load_u8 v67, v67, s[48:51], 0 offen
	buffer_load_u8 v85, v85, s[48:51], 0 offen
	buffer_load_u8 v89, v56, s[48:51], 0 offen
	buffer_load_u8 v86, v86, s[48:51], 0 offen
	buffer_load_u8 v90, v57, s[48:51], 0 offen
	buffer_load_u8 v91, v58, s[48:51], 0 offen
	buffer_load_u8 v92, v59, s[48:51], 0 offen
	v_cndmask_b32_e32 v55, 0x80000000, v88, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s8, s17
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s20, s42, v81
	.loc	1 1082 42                       ; ragged.py:1082:42
	s_add_i32 s16, s25, s31
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v84, 30, v68
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v56, 0x80000000, v60, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s8, s18
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s21, s42, v82
	.loc	1 1082 42                       ; ragged.py:1082:42
	s_mul_i32 s9, s16, s30
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v57, 0x80000000, v61, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s8, s19
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s22, s42, v83
	.loc	1 1082 42                       ; ragged.py:1082:42
	s_add_i32 s9, s27, s9
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v58, 0x80000000, v62, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s8, s20
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s23, s42, v84
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_add3_u32 v54, s9, v42, v54
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v59, 0x80000000, v63, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s8, s21
	.loc	1 1070 26 is_stmt 1             ; ragged.py:1070:26
	v_or_b32_e32 v69, s27, v42
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v60, 0x80000000, v64, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s8, s22
	.loc	1 1082 42 is_stmt 1             ; ragged.py:1082:42
	v_lshl_add_u32 v94, s30, 4, v54
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v61, 0x80000000, v65, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s8, s23
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s24, s42, v69
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v62, 0x80000000, v66, vcc_lo
	s_clause 0x7
	buffer_load_u8 v63, v55, s[48:51], 0 offen
	buffer_load_u8 v64, v56, s[48:51], 0 offen
	buffer_load_u8 v65, v57, s[48:51], 0 offen
	buffer_load_u8 v66, v58, s[48:51], 0 offen
	buffer_load_u8 v88, v59, s[48:51], 0 offen
	buffer_load_u8 v93, v60, s[48:51], 0 offen
	buffer_load_u8 v61, v61, s[48:51], 0 offen
	buffer_load_u8 v62, v62, s[48:51], 0 offen
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_mad_u64_u32 v[55:56], null, s30, 24, v[54:55]
	v_lshl_add_u32 v60, s30, 3, v54
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s7, s24
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_lshl_add_u32 v95, s30, 5, v54
	.loc	1 1082 34                       ; ragged.py:1082:34
	s_and_b32 s49, s39, 0xffff
	s_mov_b32 s48, s38
	.loc	1 1084 34 is_stmt 1             ; ragged.py:1084:34
	v_and_b32_e32 v52, 24, v52
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_mad_u64_u32 v[56:57], null, s30, 40, v[54:55]
	v_mad_u64_u32 v[57:58], null, s30, 48, v[54:55]
	v_mad_u64_u32 v[58:59], null, s30, 56, v[54:55]
	.loc	1 1082 34 is_stmt 0             ; ragged.py:1082:34
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 vcc_lo, s6, s24
	.loc	1 1080 63 is_stmt 1             ; ragged.py:1080:63
	s_add_i32 s42, s42, -1
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v59, 0x80000000, v60, vcc_lo
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s5, s24
	.loc	1 1084 34 is_stmt 1             ; ragged.py:1084:34
	v_or3_b32 v50, v50, v52, v51
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v60, 0x80000000, v94, vcc_lo
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s4, s24
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s4, s42, v73
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v55, 0x80000000, v55, vcc_lo
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s3, s24
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s3, s42, v72
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v94, 0x80000000, v95, vcc_lo
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s2, s24
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s2, s42, v71
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v56, 0x80000000, v56, vcc_lo
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s1, s24
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s1, s42, v70
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s0, s24
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s0, s42, v69
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	s_clause 0x7
	buffer_load_u8 v95, v54, s[48:51], 0 offen
	buffer_load_u8 v96, v59, s[48:51], 0 offen
	buffer_load_u8 v97, v60, s[48:51], 0 offen
	buffer_load_u8 v98, v55, s[48:51], 0 offen
	buffer_load_u8 v94, v94, s[48:51], 0 offen
	buffer_load_u8 v99, v56, s[48:51], 0 offen
	buffer_load_u8 v100, v57, s[48:51], 0 offen
	buffer_load_u8 v101, v58, s[48:51], 0 offen
	.loc	1 1084 34                       ; ragged.py:1084:34
	v_cmp_eq_u32_e32 vcc_lo, 0, v53
	.loc	1 1080 56                       ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s5, s42, v74
	v_cmp_eq_u32_e64 s6, s42, v75
	v_cmp_eq_u32_e64 s7, s42, v76
	v_cmp_eq_u32_e64 s8, s42, v77
	.loc	1 1084 34                       ; ragged.py:1084:34
	v_cndmask_b32_e64 v53, 0x88, 0, vcc_lo
	.loc	1 1080 56                       ; ragged.py:1080:56
	v_cmp_eq_u32_e32 vcc_lo, s42, v68
	v_cmp_eq_u32_e64 s9, s42, v78
	v_cmp_eq_u32_e64 s10, s42, v79
	v_cmp_eq_u32_e64 s11, s42, v80
	.loc	1 1084 34                       ; ragged.py:1084:34
	v_xor_b32_e32 v49, v53, v49
	.loc	1 1080 56                       ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s12, s42, v81
	v_cmp_eq_u32_e64 s13, s42, v82
	v_cmp_eq_u32_e64 s14, s42, v83
	v_cmp_eq_u32_e64 s15, s42, v84
	.loc	1 1084 34                       ; ragged.py:1084:34
	v_add_nc_u32_e32 v68, 0, v49
	v_xad_u32 v69, 0x110, v49, 0
	v_add_nc_u32_e32 v70, 0, v50
	v_xad_u32 v71, v50, 8, 0
	v_xad_u32 v72, v50, 16, 0
	v_xad_u32 v73, v50, 24, 0
	.loc	1 1080 32                       ; ragged.py:1080:32
	s_and_b32 s17, s43, vcc_lo
	s_and_b32 s0, s43, s0
	s_and_b32 s1, s43, s1
	s_and_b32 s2, s43, s2
	s_and_b32 s3, s43, s3
	s_and_b32 s4, s43, s4
	s_and_b32 s5, s43, s5
	s_and_b32 s6, s43, s6
	s_and_b32 s7, s43, s7
	s_and_b32 s8, s43, s8
	s_and_b32 s9, s43, s9
	s_and_b32 s10, s43, s10
	s_and_b32 s11, s43, s11
	s_and_b32 s12, s43, s12
	s_and_b32 s13, s43, s13
	s_and_b32 s14, s43, s14
	s_and_b32 s15, s43, s15
	.loc	1 1083 34                       ; ragged.py:1083:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1083 62 is_stmt 0             ; ragged.py:1083:62
	s_waitcnt vmcnt(23)
	v_and_b16 v49.l, v87.l, 15
	s_waitcnt vmcnt(22)
	v_and_b16 v49.h, v67.l, 15
	s_waitcnt vmcnt(21)
	v_and_b16 v50.l, v85.l, 15
	s_waitcnt vmcnt(20)
	v_and_b16 v51.l, v89.l, 15
	s_waitcnt vmcnt(19)
	v_and_b16 v51.h, v86.l, 15
	s_waitcnt vmcnt(18)
	v_and_b16 v52.l, v90.l, 15
	s_waitcnt vmcnt(17)
	v_and_b16 v52.h, v91.l, 15
	s_waitcnt vmcnt(16)
	v_and_b16 v53.l, v92.l, 15
	.loc	1 1083 34                       ; ragged.py:1083:34
	v_cndmask_b16 v49.l, v87.l, v49.l, s17
	v_cndmask_b16 v49.h, v67.l, v49.h, s1
	v_cndmask_b16 v50.l, v85.l, v50.l, s2
	v_cndmask_b16 v51.l, v89.l, v51.l, s3
	v_cndmask_b16 v51.h, v86.l, v51.h, s4
	v_cndmask_b16 v52.l, v90.l, v52.l, s5
	v_cndmask_b16 v52.h, v91.l, v52.h, s6
	v_cndmask_b16 v53.l, v92.l, v53.l, s7
	.loc	1 1083 62                       ; ragged.py:1083:62
	s_waitcnt vmcnt(15)
	v_and_b16 v50.h, v63.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v53.h, v64.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v54.l, v65.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v54.h, v66.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v55.l, v88.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v55.h, v93.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v56.l, v61.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v56.h, v62.l, 15
	.loc	1 1083 34                       ; ragged.py:1083:34
	v_cndmask_b16 v50.h, v63.l, v50.h, s8
	v_cndmask_b16 v53.h, v64.l, v53.h, s9
	v_cndmask_b16 v54.l, v65.l, v54.l, s10
	v_cndmask_b16 v54.h, v66.l, v54.h, s11
	v_cndmask_b16 v55.l, v88.l, v55.l, s12
	v_cndmask_b16 v55.h, v93.l, v55.h, s13
	v_cndmask_b16 v56.l, v61.l, v56.l, s14
	v_cndmask_b16 v56.h, v62.l, v56.h, s15
	ds_store_b8 v48, v49
	ds_store_b8_d16_hi v48, v49 offset:256
	ds_store_b8 v48, v50 offset:512
	ds_store_b8 v48, v51 offset:768
	ds_store_b8_d16_hi v48, v51 offset:1024
	ds_store_b8 v48, v52 offset:1280
	ds_store_b8_d16_hi v48, v52 offset:1536
	ds_store_b8 v48, v53 offset:1792
	ds_store_b8_d16_hi v48, v50 offset:2048
	ds_store_b8_d16_hi v48, v53 offset:2304
	ds_store_b8 v48, v54 offset:2560
	ds_store_b8_d16_hi v48, v54 offset:2816
	ds_store_b8 v48, v55 offset:3072
	ds_store_b8_d16_hi v48, v55 offset:3328
	ds_store_b8 v48, v56 offset:3584
	ds_store_b8_d16_hi v48, v56 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1084 62 is_stmt 1             ; ragged.py:1084:62
	s_waitcnt vmcnt(7)
	v_and_b16 v57.l, v95.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v57.h, v96.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v58.l, v97.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v58.h, v98.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v59.l, v94.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v59.h, v99.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v60.l, v100.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v60.h, v101.l, 15
	.loc	1 1084 34 is_stmt 0             ; ragged.py:1084:34
	v_cndmask_b16 v57.l, v95.l, v57.l, s0
	v_cndmask_b16 v58.l, v97.l, v58.l, s0
	v_cndmask_b16 v59.l, v94.l, v59.l, s0
	v_cndmask_b16 v60.l, v100.l, v60.l, s0
	v_cndmask_b16 v57.h, v96.l, v57.h, s0
	v_cndmask_b16 v58.h, v98.l, v58.h, s0
	v_cndmask_b16 v59.h, v99.l, v59.h, s0
	v_cndmask_b16 v60.h, v101.l, v60.h, s0
	.loc	1 1085 31 is_stmt 1             ; ragged.py:1085:31
	ds_load_u8 v63, v47 offset:384
	ds_load_u8 v64, v47 offset:256
	ds_load_u8 v65, v47 offset:128
	ds_load_u8 v66, v47
	ds_load_u8 v74, v47 offset:448
	ds_load_u8 v75, v47 offset:320
	ds_load_u8 v76, v47 offset:192
	ds_load_u8 v77, v47 offset:64
	ds_load_u8 v67, v47 offset:896
	ds_load_u8 v78, v47 offset:768
	ds_load_u8 v79, v47 offset:640
	ds_load_u8 v80, v47 offset:512
	ds_load_u8 v81, v47 offset:960
	ds_load_u8 v82, v47 offset:832
	ds_load_u8 v83, v47 offset:704
	ds_load_u8 v84, v47 offset:576
	ds_load_u8 v85, v47 offset:1408
	ds_load_u8 v86, v47 offset:1280
	ds_load_u8 v87, v47 offset:1152
	ds_load_u8 v88, v47 offset:1024
	ds_load_u8 v89, v47 offset:1472
	ds_load_u8 v90, v47 offset:1344
	ds_load_u8 v91, v47 offset:1216
	ds_load_u8 v92, v47 offset:1088
	ds_load_u8 v93, v47 offset:1920
	ds_load_u8 v94, v47 offset:1792
	ds_load_u8 v95, v47 offset:1664
	ds_load_u8 v96, v47 offset:1536
	ds_load_u8 v97, v47 offset:1984
	ds_load_u8 v98, v47 offset:1856
	ds_load_u8 v99, v47 offset:1728
	ds_load_u8 v100, v47 offset:1600
	ds_load_u8 v101, v47 offset:2432
	ds_load_u8 v102, v47 offset:2304
	ds_load_u8 v103, v47 offset:2176
	ds_load_u8 v104, v47 offset:2048
	ds_load_u8 v105, v47 offset:2496
	ds_load_u8 v106, v47 offset:2368
	ds_load_u8 v107, v47 offset:2240
	ds_load_u8 v108, v47 offset:2112
	ds_load_u8 v109, v47 offset:2944
	ds_load_u8 v110, v47 offset:2816
	ds_load_u8 v111, v47 offset:2688
	ds_load_u8 v112, v47 offset:2560
	ds_load_u8 v113, v47 offset:3008
	ds_load_u8 v114, v47 offset:2880
	ds_load_u8 v115, v47 offset:2752
	ds_load_u8 v116, v47 offset:2624
	ds_load_u8 v117, v47 offset:3456
	ds_load_u8 v118, v47 offset:3328
	ds_load_u8 v119, v47 offset:3200
	ds_load_u8 v120, v47 offset:3072
	ds_load_u8 v121, v47 offset:3520
	ds_load_u8 v122, v47 offset:3392
	ds_load_u8 v123, v47 offset:3264
	ds_load_u8 v124, v47 offset:3136
	ds_load_u8 v125, v47 offset:3968
	ds_load_u8 v126, v47 offset:3840
	ds_load_u8 v127, v47 offset:3712
	ds_load_u8 v128, v47 offset:3584
	ds_load_u8 v129, v47 offset:4032
	ds_load_u8 v130, v47 offset:3904
	ds_load_u8 v131, v47 offset:3776
	ds_load_u8 v132, v47 offset:3648
	.loc	1 1084 34                       ; ragged.py:1084:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v68, v57
	ds_store_b8 v68, v58 offset:512
	ds_store_b8 v68, v59 offset:1024
	ds_store_b8 v68, v60 offset:1536
	ds_store_b8_d16_hi v69, v57
	ds_store_b8_d16_hi v69, v58 offset:512
	ds_store_b8_d16_hi v69, v59 offset:1024
	ds_store_b8_d16_hi v69, v60 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[47:50], v70 offset1:2
	ds_load_2addr_stride64_b64 v[51:54], v71 offset1:2
	ds_load_2addr_stride64_b64 v[55:58], v72 offset1:2
	ds_load_2addr_stride64_b64 v[59:62], v73 offset1:2
	.loc	1 1085 31                       ; ragged.py:1085:31
	v_perm_b32 v68, v80, v79, 0xc0c0004
	v_perm_b32 v67, v78, v67, 0xc0c0004
	v_perm_b32 v65, v66, v65, 0xc0c0004
	v_perm_b32 v63, v64, v63, 0xc0c0004
	v_perm_b32 v70, v88, v87, 0xc0c0004
	v_perm_b32 v71, v86, v85, 0xc0c0004
	v_perm_b32 v72, v112, v111, 0xc0c0004
	v_perm_b32 v73, v110, v109, 0xc0c0004
	v_lshl_or_b32 v64, v67, 16, v68
	v_lshl_or_b32 v63, v63, 16, v65
	v_lshl_or_b32 v65, v71, 16, v70
	v_perm_b32 v71, v84, v83, 0xc0c0004
	v_lshl_or_b32 v68, v73, 16, v72
	v_perm_b32 v72, v82, v81, 0xc0c0004
	v_perm_b32 v73, v77, v76, 0xc0c0004
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_perm_b32 v66, v96, v95, 0xc0c0004
	v_perm_b32 v69, v94, v93, 0xc0c0004
	v_lshl_or_b32 v72, v72, 16, v71
	v_perm_b32 v75, v92, v91, 0xc0c0004
	v_lshl_or_b32 v71, v74, 16, v73
	v_perm_b32 v73, v100, v99, 0xc0c0004
	v_perm_b32 v74, v98, v97, 0xc0c0004
	v_perm_b32 v76, v90, v89, 0xc0c0004
	v_perm_b32 v78, v104, v103, 0xc0c0004
	v_perm_b32 v79, v102, v101, 0xc0c0004
	v_lshl_or_b32 v66, v69, 16, v66
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[63:64], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[49:50], v[63:64], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[47:48], v[71:72], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v48, v74, 16, v73
	v_lshl_or_b32 v47, v76, 16, v75
	v_perm_b32 v63, v116, v115, 0xc0c0004
	v_perm_b32 v64, v114, v113, 0xc0c0004
	v_perm_b32 v73, v108, v107, 0xc0c0004
	v_perm_b32 v74, v106, v105, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[49:50], v[71:72], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v80, v128, v127, 0xc0c0004
	v_perm_b32 v85, v126, v125, 0xc0c0004
	v_perm_b32 v86, v120, v119, 0xc0c0004
	v_perm_b32 v69, v118, v117, 0xc0c0004
	v_lshl_or_b32 v67, v79, 16, v78
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[51:52], v[65:66], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[51:52], v[47:48], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v52, v64, 16, v63
	v_lshl_or_b32 v51, v74, 16, v73
	v_perm_b32 v63, v132, v131, 0xc0c0004
	v_perm_b32 v49, v130, v129, 0xc0c0004
	v_perm_b32 v50, v124, v123, 0xc0c0004
	v_perm_b32 v64, v122, v121, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[53:54], v[65:66], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[53:54], v[47:48], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v70, v85, 16, v80
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[55:56], v[67:68], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v69, v69, 16, v86
	v_wmma_i32_16x16x16_iu4 v[1:8], v[55:56], v[51:52], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v48, v49, 16, v63
	v_lshl_or_b32 v47, v64, 16, v50
	v_wmma_i32_16x16x16_iu4 v[17:24], v[57:58], v[67:68], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[57:58], v[51:52], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[59:60], v[69:70], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[59:60], v[47:48], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[61:62], v[69:70], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[61:62], v[47:48], v[25:32] neg_lo:[1,1,0]
.LBB0_8:
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v47, 4, v0
	v_lshrrev_b32_e32 v48, 1, v45
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v49, 64, v46
	.loc	1 1098 33                       ; ragged.py:1098:33
	s_mul_i32 s36, s26, s34
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_and_b32 s41, s41, 0xffff
	.loc	1 1098 21                       ; ragged.py:1098:21
	s_add_i32 s0, s33, s36
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_and_or_b32 v48, v47, 1, v48
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v47, s33, v46
	v_or_b32_e32 v50, s33, v49
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_add_lshl_u32 v46, s0, v46, 1
	v_add_lshl_u32 v49, s0, v49, 1
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v51, 2, v48
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v47
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v66, s25, v48
	.loc	1 1004 36 is_stmt 0             ; ragged.py:1004:36
	v_or_b32_e32 v52, 4, v48
	v_or_b32_e32 v53, 6, v48
	v_or_b32_e32 v54, 8, v48
	.loc	1 1097 36 is_stmt 1             ; ragged.py:1097:36
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v50
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v55, 10, v48
	v_or_b32_e32 v56, 12, v48
	v_or_b32_e32 v57, 14, v48
	v_or_b32_e32 v58, 32, v48
	v_or_b32_e32 v59, 34, v48
	v_or_b32_e32 v60, 36, v48
	v_or_b32_e32 v61, 38, v48
	v_or_b32_e32 v62, 40, v48
	v_or_b32_e32 v63, 42, v48
	v_or_b32_e32 v64, 44, v48
	v_or_b32_e32 v65, 46, v48
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v67, s25, v51
	.loc	1 1097 36 is_stmt 1             ; ragged.py:1097:36
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v48, s16, v48, 1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v66
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v68, s25, v52
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_clause 0x1
	buffer_load_u16 v47, v46, s[40:43], 0 offen
	buffer_load_u16 v46, v49, s[40:43], 0 offen
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v49, s16, v51, 1
	v_cndmask_b32_e32 v48, 0x80000000, v48, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v67
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v69, s25, v53
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v50, s16, v52, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v70, s25, v54
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v51, s16, v53, 1
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v68
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v71, s25, v55
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v52, s16, v54, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v72, s25, v56
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v53, s16, v55, 1
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v69
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v73, s25, v57
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v54, s16, v56, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v74, s25, v58
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v55, s16, v57, 1
	v_cndmask_b32_e32 v51, 0x80000000, v51, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v70
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v57, s16, v58, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v75, s25, v59
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s30, s42
	v_cndmask_b32_e32 v52, 0x80000000, v52, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v71
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_mov_b32 s31, s43
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v76, s25, v60
	v_or_b32_e32 v77, s25, v61
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v58, s16, v60, 1
	v_cndmask_b32_e32 v53, 0x80000000, v53, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v72
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v78, s25, v62
	v_or_b32_e32 v79, s25, v63
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v60, s16, v62, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v80, s25, v64
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v73
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v81, s25, v65
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v62, s16, v64, 1
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshl_or_b32 v44, v44, 1, v45
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v56, 0x80000000, v55, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v74
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v64, v1
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v11, v11
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	s_clause 0x7
	buffer_load_u16 v55, v48, s[28:31], 0 offen
	buffer_load_u16 v48, v49, s[28:31], 0 offen
	buffer_load_u16 v49, v50, s[28:31], 0 offen
	buffer_load_u16 v50, v51, s[28:31], 0 offen
	buffer_load_u16 v51, v52, s[28:31], 0 offen
	buffer_load_u16 v52, v53, s[28:31], 0 offen
	buffer_load_u16 v53, v54, s[28:31], 0 offen
	buffer_load_u16 v54, v56, s[28:31], 0 offen
	v_add_lshl_u32 v56, s16, v59, 1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v75
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v59, s16, v61, 1
	v_add_lshl_u32 v61, s16, v63, 1
	v_add_lshl_u32 v63, s16, v65, 1
	v_dual_cndmask_b32 v56, 0x80000000, v56 :: v_dual_lshlrev_b32 v65, 2, v42
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v76
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshlrev_b32_e32 v45, 2, v43
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshl_or_b32 v43, v43, 9, v65
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v77
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v14, v14
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v78
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v60, 0x80000000, v60, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v79
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v18, v18
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v80
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v81
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	s_clause 0x7
	buffer_load_u16 v57, v57, s[28:31], 0 offen
	buffer_load_u16 v56, v56, s[28:31], 0 offen
	buffer_load_u16 v58, v58, s[28:31], 0 offen
	buffer_load_u16 v59, v59, s[28:31], 0 offen
	buffer_load_u16 v60, v60, s[28:31], 0 offen
	buffer_load_u16 v61, v61, s[28:31], 0 offen
	buffer_load_u16 v62, v62, s[28:31], 0 offen
	buffer_load_u16 v63, v63, s[28:31], 0 offen
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshrrev_b32_e32 v66, 3, v33
	v_lshl_or_b32 v33, v33, 4, v45
	v_xor_b32_e32 v43, v43, v44
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_mov_b16_e32 v1.h, 0
	.loc	1 1228 34                       ; ragged.py:1228:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xor_b32_e32 v33, v33, v66
	v_xad_u32 v80, v43, 4, 0
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_mov_b16_e32 v67.h, v1.h
	v_mov_b16_e32 v68.h, v1.h
	v_mov_b16_e32 v44.h, v1.h
	v_mov_b16_e32 v73.h, v1.h
	v_mov_b16_e32 v71.h, v1.h
	v_mov_b16_e32 v77.h, v1.h
	v_mov_b16_e32 v65.h, v1.h
	v_mov_b16_e32 v45.h, v1.h
	v_mov_b16_e32 v69.h, v1.h
	v_mov_b16_e32 v70.h, v1.h
	v_mov_b16_e32 v72.h, v1.h
	v_mov_b16_e32 v74.h, v1.h
	v_mov_b16_e32 v76.h, v1.h
	v_mov_b16_e32 v75.h, v1.h
	v_mov_b16_e32 v78.h, v1.h
	v_mov_b16_e32 v79.h, v1.h
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xad_u32 v87, 0x2040, v43, 0
	v_xad_u32 v88, 0x2044, v43, 0
	v_xad_u32 v81, v43, 8, 0
	v_xad_u32 v89, 0x2048, v43, 0
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_bfe_i32 v0, v0, 4, 1
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xad_u32 v82, v43, 12, 0
	v_xad_u32 v83, v43, 16, 0
	v_xad_u32 v84, v43, 20, 0
	v_xad_u32 v85, v43, 24, 0
	v_xad_u32 v86, v43, 28, 0
	v_and_or_b32 v0, 0x2040, v0, v33
	v_xad_u32 v90, 0x204c, v43, 0
	v_xad_u32 v91, 0x2050, v43, 0
	v_xad_u32 v92, 0x2054, v43, 0
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v46, 16, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v2, v2, v46 :: v_dual_lshlrev_b32 v47, 16, v47
	v_mul_f32_e32 v9, v9, v47
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_add_nc_u32_e32 v66, 0, v43
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v10, v10, v47 :: v_dual_mul_f32 v3, v3, v46
	v_dual_mul_f32 v11, v11, v47 :: v_dual_mul_f32 v4, v4, v46
	v_dual_mul_f32 v12, v12, v47 :: v_dual_mul_f32 v5, v5, v46
	v_dual_mul_f32 v13, v13, v47 :: v_dual_mul_f32 v6, v6, v46
	v_dual_mul_f32 v14, v14, v47 :: v_dual_mul_f32 v7, v7, v46
	v_dual_mul_f32 v15, v15, v47 :: v_dual_mul_f32 v8, v8, v46
	v_dual_mul_f32 v16, v16, v47 :: v_dual_mul_f32 v25, v25, v46
	v_dual_mul_f32 v17, v17, v47 :: v_dual_mul_f32 v26, v26, v46
	v_dual_mul_f32 v18, v18, v47 :: v_dual_mul_f32 v27, v27, v46
	v_dual_mul_f32 v19, v19, v47 :: v_dual_mul_f32 v28, v28, v46
	v_dual_mul_f32 v20, v20, v47 :: v_dual_mul_f32 v29, v29, v46
	v_dual_mul_f32 v21, v21, v47 :: v_dual_mul_f32 v30, v30, v46
	v_dual_mul_f32 v22, v22, v47 :: v_dual_mul_f32 v31, v31, v46
	v_dual_mul_f32 v23, v23, v47 :: v_dual_mul_f32 v32, v32, v46
	v_mul_f32_e32 v24, v24, v47
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v47, 16, v55
	.loc	1 1102 17                       ; ragged.py:1102:17
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v55, v64, v46 :: v_dual_lshlrev_b32 v46, 16, v48
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v10, v10, v46
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v9, v9, v47 :: v_dual_lshlrev_b32 v48, 16, v49
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v49, 16, v50
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v55, v55, v47
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v11, v11, v48 :: v_dual_lshlrev_b32 v50, 16, v51
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v2, v2, v46 :: v_dual_lshlrev_b32 v51, 16, v52
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v3, v3, v48 :: v_dual_lshlrev_b32 v52, 16, v53
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v12, v12, v49 :: v_dual_lshlrev_b32 v53, 16, v54
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_mov_b16_e32 v1.l, v55.h
	v_mov_b16_e32 v67.l, v9.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v6, v6, v51 :: v_dual_mul_f32 v7, v7, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v16, v16, v53
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_and_b32_e32 v46, 1, v1
	v_mov_b16_e32 v1.l, v2.h
	v_mov_b16_e32 v68.l, v10.h
	v_cmp_o_f32_e64 s0, v9, v9
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v4, v4, v49
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_add3_u32 v46, v55, v46, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v5, v5, v50 :: v_dual_and_b32 v48, 1, v68
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cmp_o_f32_e64 s2, v10, v10
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v15, v15, v52
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cmp_o_f32_e64 s1, v2, v2
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v13, v13, v50 :: v_dual_mul_f32 v14, v14, v51
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cmp_o_f32_e64 s3, v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v73.l, v15.h
	v_cmp_o_f32_e64 s12, v15, v15
	v_mov_b16_e32 v71.l, v13.h
	v_cmp_o_f32_e64 s8, v13, v13
	v_mov_b16_e32 v69.l, v11.h
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v54, 16, v57
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v56, 16, v56
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v57, 16, v58
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v58, 16, v59
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v59, 16, v60
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v47, 16, v61
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v60, 16, v62
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v61, 16, v63
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v27, v27, v57 :: v_dual_mul_f32 v20, v20, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v22, v22, v47 :: v_dual_mul_f32 v23, v23, v60
	v_dual_mul_f32 v30, v30, v47 :: v_dual_mul_f32 v31, v31, v60
	v_dual_mul_f32 v32, v32, v61 :: v_dual_and_b32 v47, 1, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_mov_b16_e32 v44.l, v22.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v26, v26, v56 :: v_dual_mul_f32 v19, v19, v57
	v_dual_mul_f32 v8, v8, v53 :: v_dual_mul_f32 v17, v17, v54
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_add3_u32 v9, v9, v47, 0x7fff
	v_and_b32_e32 v47, 1, v1
	v_mov_b16_e32 v1.l, v3.h
	v_and_b32_e32 v44, 1, v44
	v_mov_b16_e32 v77.l, v20.h
	v_cndmask_b16 v46.l, 0x7fff, v9.h, s0
	v_add3_u32 v9, v10, v48, 0x7fff
	v_and_b32_e32 v10, 1, v1
	v_mov_b16_e32 v1.l, v4.h
	v_add3_u32 v2, v2, v47, 0x7fff
	v_cmp_o_f32_e64 s26, v22, v22
	v_and_b32_e32 v53, 1, v73
	v_add3_u32 v22, v22, v44, 0x7fff
	v_and_b32_e32 v47, 1, v1
	v_mov_b16_e32 v1.l, v5.h
	v_mov_b16_e32 v65.l, v19.h
	v_and_b32_e32 v51, 1, v71
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v25, v25, v54 :: v_dual_mul_f32 v18, v18, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_and_b32_e32 v48, 1, v1
	v_mov_b16_e32 v1.l, v6.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v28, v28, v58 :: v_dual_mul_f32 v21, v21, v59
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_and_b32_e32 v58, 1, v77
	v_add3_u32 v15, v15, v53, 0x7fff
	v_and_b32_e32 v44, 1, v1
	v_mov_b16_e32 v1.l, v7.h
	v_add3_u32 v3, v3, v10, 0x7fff
	v_and_b32_e32 v57, 1, v65
	v_add3_u32 v13, v13, v51, 0x7fff
	v_cmp_o_f32_e64 s22, v20, v20
	v_and_b32_e32 v10, 1, v1
	v_mov_b16_e32 v1.l, v8.h
	v_mov_b16_e32 v45.l, v23.h
	v_add3_u32 v20, v20, v58, 0x7fff
	v_cndmask_b16 v13.l, 0x7fff, v15.h, s12
	v_cmp_o_f32_e64 s20, v19, v19
	v_and_b32_e32 v15, 1, v1
	v_mov_b16_e32 v1.l, v25.h
	v_add3_u32 v19, v19, v57, 0x7fff
	v_and_b32_e32 v45, 1, v45
	v_cndmask_b16 v19.l, 0x7fff, v20.h, s22
	v_mov_b16_e32 v70.l, v12.h
	v_and_b32_e32 v20, 1, v1
	v_mov_b16_e32 v1.l, v26.h
	v_cmp_o_f32_e64 s28, v23, v23
	v_and_b32_e32 v49, 1, v69
	v_add3_u32 v23, v23, v45, 0x7fff
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v29, v29, v59 :: v_dual_mul_f32 v24, v24, v61
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_and_b32_e32 v45, 1, v1
	v_mov_b16_e32 v1.l, v27.h
	v_cmp_o_f32_e64 s4, v11, v11
	v_cmp_o_f32_e64 s5, v4, v4
	v_cmp_o_f32_e64 s7, v5, v5
	v_mov_b16_e32 v72.l, v14.h
	v_cmp_o_f32_e64 s9, v6, v6
	v_mov_b16_e32 v74.l, v16.h
	v_and_b32_e32 v50, 1, v70
	v_add3_u32 v11, v11, v49, 0x7fff
	v_add3_u32 v4, v4, v47, 0x7fff
	v_add3_u32 v5, v5, v48, 0x7fff
	v_add3_u32 v6, v6, v44, 0x7fff
	v_and_b32_e32 v44, 1, v1
	v_mov_b16_e32 v1.l, v28.h
	v_cmp_o_f32_e64 s6, v12, v12
	v_cmp_o_f32_e64 s11, v7, v7
	v_mov_b16_e32 v76.l, v18.h
	v_and_b32_e32 v52, 1, v72
	v_and_b32_e32 v54, 1, v74
	v_add3_u32 v12, v12, v50, 0x7fff
	v_cndmask_b16 v2.l, 0x7fff, v9.h, s2
	v_cndmask_b16 v3.l, 0x7fff, v11.h, s4
	v_cndmask_b16 v9.h, 0x7fff, v4.h, s5
	v_add3_u32 v4, v7, v10, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v5.h, s7
	v_and_b32_e32 v5, 1, v1
	v_mov_b16_e32 v1.l, v29.h
	v_mov_b16_e32 v75.l, v17.h
	v_cmp_o_f32_e64 s10, v14, v14
	v_cmp_o_f32_e64 s13, v8, v8
	v_cmp_o_f32_e64 s14, v16, v16
	v_cmp_o_f32_e64 s15, v25, v25
	v_and_b32_e32 v56, 1, v76
	v_add3_u32 v14, v14, v52, 0x7fff
	v_add3_u32 v16, v16, v54, 0x7fff
	v_cndmask_b16 v9.l, 0x7fff, v12.h, s6
	v_cndmask_b16 v11.l, 0x7fff, v13.h, s8
	v_cndmask_b16 v12.h, 0x7fff, v6.h, s9
	v_cndmask_b16 v13.h, 0x7fff, v4.h, s11
	v_add3_u32 v4, v8, v15, 0x7fff
	v_add3_u32 v6, v25, v20, 0x7fff
	v_and_b32_e32 v8, 1, v1
	v_mov_b16_e32 v1.l, v30.h
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	v_and_b32_e32 v55, 1, v75
	v_cmp_o_f32_e64 s18, v18, v18
	v_cmp_o_f32_e64 s19, v27, v27
	v_mov_b16_e32 v78.l, v21.h
	v_add3_u32 v18, v18, v56, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v14.h, s10
	v_cndmask_b16 v14.l, 0x7fff, v16.h, s14
	v_cndmask_b16 v14.h, 0x7fff, v4.h, s13
	v_cndmask_b16 v16.h, 0x7fff, v6.h, s15
	v_add3_u32 v4, v27, v44, 0x7fff
	v_and_b32_e32 v6, 1, v1
	v_mov_b16_e32 v1.l, v31.h
	v_cmp_o_f32_e64 s16, v17, v17
	v_cmp_o_f32_e64 s17, v26, v26
	v_add3_u32 v17, v17, v55, 0x7fff
	v_add3_u32 v7, v26, v45, 0x7fff
	v_mov_b16_e32 v79.l, v24.h
	v_and_b32_e32 v59, 1, v78
	v_cndmask_b16 v46.h, 0x7fff, v46.h, vcc_lo
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s1
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s18
	v_cndmask_b16 v18.h, 0x7fff, v4.h, s19
	v_add3_u32 v4, v28, v5, 0x7fff
	v_and_b32_e32 v5, 1, v1
	v_mov_b16_e32 v1.l, v32.h
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s16
	v_cndmask_b16 v17.h, 0x7fff, v7.h, s17
	v_cmp_o_f32_e64 s23, v29, v29
	v_cmp_o_f32_e64 s24, v21, v21
	v_and_b32_e32 v60, 1, v79
	v_add3_u32 v21, v21, v59, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s3
	.loc	1 1228 34                       ; ragged.py:1228:34
	ds_store_b32 v66, v46
	ds_store_b32 v87, v16
	ds_store_b32 v80, v2
	ds_store_b32 v88, v17
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_add3_u32 v2, v29, v8, 0x7fff
	v_and_b32_e32 v1, 1, v1
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s20
	v_cmp_o_f32_e64 s21, v28, v28
	v_cmp_o_f32_e64 s25, v30, v30
	v_cmp_o_f32_e64 s27, v31, v31
	v_cmp_o_f32_e64 s29, v32, v32
	v_cmp_o_f32_e64 s30, v24, v24
	v_add3_u32 v24, v24, v60, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s24
	.loc	1 1228 34                       ; ragged.py:1228:34
	ds_store_b32 v81, v3
	ds_store_b32 v89, v18
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cndmask_b16 v21.h, 0x7fff, v2.h, s23
	v_add3_u32 v2, v30, v6, 0x7fff
	v_add3_u32 v3, v31, v5, 0x7fff
	v_add3_u32 v1, v32, v1, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s26
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s28
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s30
	v_cndmask_b16 v19.h, 0x7fff, v4.h, s21
	v_cndmask_b16 v22.h, 0x7fff, v2.h, s25
	v_cndmask_b16 v23.h, 0x7fff, v3.h, s27
	v_cndmask_b16 v24.h, 0x7fff, v1.h, s29
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xad_u32 v1, 0x2058, v43, 0
	v_xad_u32 v2, 0x205c, v43, 0
	ds_store_b32 v82, v9
	ds_store_b32 v90, v19
	ds_store_b32 v83, v11
	ds_store_b32 v91, v21
	ds_store_b32 v84, v12
	ds_store_b32 v92, v22
	ds_store_b32 v85, v13
	ds_store_b32 v1, v23
	v_add_nc_u32_e32 v1, 0, v0
	ds_store_b32 v86, v14
	ds_store_b32 v2, v24
	v_xad_u32 v2, v0, 64, 0
	v_xad_u32 v3, 0x1020, v0, 0
	v_xad_u32 v4, 0x1060, v0, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[13:14], v1 offset1:32
	ds_load_2addr_b32 v[5:6], v1 offset0:64 offset1:96
	ds_load_2addr_b32 v[15:16], v2 offset1:32
	ds_load_2addr_b32 v[7:8], v2 offset0:64 offset1:96
	ds_load_2addr_b32 v[9:10], v3 offset1:32
	ds_load_2addr_b32 v[0:1], v3 offset0:64 offset1:96
	ds_load_2addr_b32 v[11:12], v4 offset1:32
	ds_load_2addr_b32 v[2:3], v4 offset0:64 offset1:96
	.loc	1 1232 37                       ; ragged.py:1232:37
	s_lshr_b32 s0, s35, 31
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v17, s33, v41
	.loc	1 1230 31                       ; ragged.py:1230:31
	v_lshl_or_b32 v4, s52, 5, v42
	.loc	1 1232 37                       ; ragged.py:1232:37
	s_add_i32 s0, s35, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_ashr_i32 s1, s0, 1
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1236 54                       ; ragged.py:1236:54
	v_cmp_gt_i32_e32 vcc_lo, s1, v4
	.loc	1 1236 33 is_stmt 0             ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17 is_stmt 1             ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_10
; %bb.9:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s36, v17
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v20, v13, v15, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[18:19], null, v18, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_10:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, s33, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_12
; %bb.11:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s36, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v20, v9, v11, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[18:19], null, v18, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_12:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, s33, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_14
; %bb.13:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s36, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v20, v14, v16, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[18:19], null, v18, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_14:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, s33, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_16
; %bb.15:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s36, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v20, v10, v12, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[18:19], null, v18, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_16:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, s33, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_18
; %bb.17:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s36, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v5, v7, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[18:19], null, v18, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_18:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, s33, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_20
; %bb.19:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s36, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v0, v2, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[18:19], null, v18, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_20:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, s33, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_22
; %bb.21:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s36, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v6, v8, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[18:19], null, v18, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_22:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, s33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_24
; %bb.23:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s36, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v1, v3, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[18:19], null, v18, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_24:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, 64, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_26
; %bb.25:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s36, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v13, v13, v15, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[18:19], null, v18, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v13, off
.LBB0_26:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v13, 0x48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v13
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_28
; %bb.27:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v13, s36, v13
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v9, v11, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[18:19], null, v13, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v9, off
.LBB0_28:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(3)
	v_or_b32_e32 v9, 0x50, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v9
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_30
; %bb.29:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v9, s36, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[18:19], null, v9, s1, v[4:5]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v9, v14, v16, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v13, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s47, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[13:14], v9, off
.LBB0_30:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v9, 0x58, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v9
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_32
; %bb.31:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v9, s36, v9
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v10, v12, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[13:14], null, v9, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v14, 31, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	v_add_co_u32 v9, s0, s46, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s47, v14, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[9:10], v11, off
.LBB0_32:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v9, 0x60, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v9
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_34
; %bb.33:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v9, s36, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[9:10], null, v9, s1, v[4:5]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v5, v5, v7, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v9, s0, s46, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s47, v10, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[9:10], v5, off
.LBB0_34:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v5, 0x68, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v5
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_36
; %bb.35:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v5, s36, v5
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v2, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[9:10], null, v5, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v9, s0, s46, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s47, v10, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[9:10], v0, off
.LBB0_36:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(2)
	v_or_b32_e32 v0, 0x70, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_38
; %bb.37:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s36, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[9:10], null, v0, s1, v[4:5]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v6, v8, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v5, s0, s46, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s47, v10, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[5:6], v0, off
.LBB0_38:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 0x78, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_40
; %bb.39:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s36, v0
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v1, v3, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[4:5], null, v0, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v0, vcc_lo, s46, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s47, v5, vcc_lo
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[0:1], v2, off
.LBB0_40:
	.loc	1 970 5 is_stmt 1               ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
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
		.amdhsa_next_free_vgpr 144
		.amdhsa_next_free_sgpr 63
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.num_vgpr, 144
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.numbered_sgpr, 63
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11392
; TotalNumSgprs: 65
; NumVgprs: 144
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 65
; NumVGPRsForWavesPerEU: 144
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
	.byte	1                               ; Abbrev [1] 0xb:0x52 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	995                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	996                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
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
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .offset:         60
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     65
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     144
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
