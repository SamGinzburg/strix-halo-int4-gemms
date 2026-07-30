	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b128 s[44:47], s[0:1], 0x20
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s9, s2
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x0
	s_load_b32 s48, s[0:1], 0x38
	v_mov_b32_e32 v8, 0
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v42, 0x7f, v0
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v47, 5, v0
	.loc	1 1011 18                       ; ragged.py:1011:18
	v_and_b32_e32 v3, 0x80, v0
	v_lshrrev_b32_e32 v50, 7, v0
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_and_b32_e32 v39, 32, v0
	.loc	1 1011 18                       ; ragged.py:1011:18
	v_and_b32_e32 v33, 31, v0
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v48, 24, v47
	v_or_b32_e32 v46, 56, v47
	v_lshlrev_b32_e32 v43, 1, v0
	v_lshlrev_b32_e32 v45, 4, v39
	v_add_nc_u32_e32 v41, 0, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s26, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s27, 63
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
	v_mul_lo_u32 v49, s26, v50
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 998 20                        ; ragged.py:998:20
	s_abs_i32 s6, s4
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s7, s8
	s_add_i32 s7, s7, s8
	s_xor_b32 s8, s2, s4
	s_mul_hi_u32 s7, s9, s7
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s10, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_sub_i32 s34, s1, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s1, 0, s7
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s34, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s2, s2, s4
	.loc	1 1049 39                       ; ragged.py:1049:39
	s_mul_i32 s20, s34, s48
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s4, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s0, v1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v1, 15, v0
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_mul_f32 s0, s0, 0x4f7ffffe
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_or_b32 v38, v2, 48, v1
	v_lshlrev_b32_e32 v44, 5, v1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_u32_f32 s0, s0
	v_add_nc_u32_e32 v40, 0, v38
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
	s_ashr_i32 s35, s34, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s4, s0, s1
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[0:1], s[34:35], 2
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s5, s4, s5
	.loc	1 1003 18                       ; ragged.py:1003:18
	s_lshl_b32 s35, s4, 7
	.loc	1 1001 17                       ; ragged.py:1001:17
	s_sub_i32 s2, s2, s5
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v1, s35, v42
	.loc	1 1004 18                       ; ragged.py:1004:18
	s_lshl_b32 s33, s2, 6
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_add_u32 s4, s44, s0
	s_addc_u32 s5, s45, s1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v2, s33, v47
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s21, s[4:5], 0x0
	v_cmp_eq_u32_e64 s0, 0, v3
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v3, s33, v48
	v_or_b32_e32 v4, s33, v46
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s9, s26, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v1, 8, v2
	v_or_b32_e32 v5, 16, v2
	v_or_b32_e32 v6, 32, v2
	v_or_b32_e32 v7, 40, v2
	v_or_b32_e32 v9, 48, v2
	.loc	1 1016 22                       ; ragged.py:1016:22
	s_lshl_b32 s44, s3, 5
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s8, s27, v2
	v_cmp_gt_i32_e64 s4, s27, v3
	v_cmp_gt_i32_e64 s1, s27, v4
	v_cmp_gt_i32_e64 s7, s27, v1
	v_cmp_gt_i32_e64 s6, s27, v5
	v_cmp_gt_i32_e64 s5, s27, v6
	.loc	1 1053 39                       ; ragged.py:1053:39
	s_mul_i32 s45, s34, s27
	.loc	1 1044 21                       ; ragged.py:1044:21
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s2, s21, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s2, s2, 26
	s_add_i32 s3, s21, s2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s2, s27, v7
	.loc	1 1044 21                       ; ragged.py:1044:21
	s_ashr_i32 s10, s3, 6
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s3, s27, v9
	.loc	1 1043 39                       ; ragged.py:1043:39
	s_lshl_b32 s10, s10, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1046 23                       ; ragged.py:1046:23
	s_cmp_ge_i32 s44, s10
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_cndmask_b32_e64 v1, 0x88, 0, s0
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v2, 24, v43
	.loc	1 1046 23                       ; ragged.py:1046:23
	v_mad_u64_u32 v[34:35], null, s48, v47, v[33:34]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v1, v1, v42
	v_or3_b32 v2, v44, v2, v45
	v_or_b32_e32 v3, 0x300, v0
	v_or_b32_e32 v4, 0x700, v0
	v_or_b32_e32 v5, 0xb00, v0
	v_or_b32_e32 v6, 0xf00, v0
	v_xor_b32_e32 v7, 0x110, v1
	v_xor_b32_e32 v8, 8, v2
	v_xor_b32_e32 v10, 16, v2
	v_xor_b32_e32 v11, 24, v2
	v_mad_u64_u32 v[35:36], null, s48, v48, v[33:34]
	v_mad_u64_u32 v[36:37], null, s48, v46, v[33:34]
	v_add3_u32 v37, v42, v49, s35
	v_add_nc_u32_e32 v51, 0, v3
	v_add_nc_u32_e32 v52, 0, v4
	v_dual_mov_b32 v12, v9 :: v_dual_add_nc_u32 v53, 0, v5
	v_dual_mov_b32 v13, v9 :: v_dual_add_nc_u32 v54, 0, v6
	v_dual_mov_b32 v14, v9 :: v_dual_add_nc_u32 v55, 0, v1
	v_dual_mov_b32 v15, v9 :: v_dual_add_nc_u32 v56, 0, v7
	v_dual_mov_b32 v16, v9 :: v_dual_add_nc_u32 v57, 0, v2
	v_dual_mov_b32 v25, v9 :: v_dual_add_nc_u32 v58, 0, v8
	v_dual_mov_b32 v26, v9 :: v_dual_add_nc_u32 v59, 0, v10
	v_dual_mov_b32 v27, v9 :: v_dual_add_nc_u32 v60, 0, v11
	v_mov_b32_e32 v10, v9
	v_mov_b32_e32 v11, v9
	v_mov_b32_e32 v28, v9
	v_mov_b32_e32 v29, v9
	v_mov_b32_e32 v30, v9
	v_mov_b32_e32 v31, v9
	v_mov_b32_e32 v32, v9
	v_mov_b32_e32 v17, v9
	v_mov_b32_e32 v18, v9
	v_mov_b32_e32 v19, v9
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
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s60, s33, s45
	s_lshl_b32 s11, s26, 1
	s_lshl_b32 s22, s26, 2
	s_mul_i32 s23, s26, 6
	s_lshl_b32 s24, s26, 3
	s_mul_i32 s25, s26, 10
	s_mul_i32 s28, s26, 12
	s_mul_i32 s29, s26, 14
	s_lshl_b32 s30, s26, 4
	s_mul_i32 s31, s26, 18
	s_mul_i32 s49, s26, 20
	s_mul_i32 s50, s26, 22
	s_mul_i32 s51, s26, 24
	s_mul_i32 s52, s26, 26
	s_mul_i32 s53, s26, 28
	s_mul_i32 s54, s26, 30
	s_and_b32 s13, s37, 0xffff
	s_mov_b32 s12, s36
	s_lshl_b32 s55, s48, 3
	s_lshl_b32 s56, s48, 4
	s_lshl_b32 s57, s48, 5
	s_mul_i32 s58, s48, 40
	s_mul_i32 s59, s48, 48
	s_mul_i32 s60, s60, s48
	s_and_b32 s17, s39, 0xffff
	s_mov_b32 s16, s38
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1057 42 is_stmt 1             ; ragged.py:1057:42
	s_add_i32 s61, s44, s60
	.loc	1 1056 42                       ; ragged.py:1056:42
	s_add_i32 s62, s44, s20
	v_add_nc_u32_e32 v63, s61, v34
	v_mad_u64_u32 v[61:62], null, s62, s26, v[37:38]
	v_add_nc_u32_e32 v62, s61, v35
	v_add_nc_u32_e32 v64, s61, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v67, s57, v63
	v_add_nc_u32_e32 v69, s59, v63
	v_add_nc_u32_e32 v68, s58, v63
	v_add_nc_u32_e32 v66, s56, v63
	v_add_nc_u32_e32 v65, s55, v63
	v_add_nc_u32_e32 v70, s11, v61
	v_add_nc_u32_e32 v71, s22, v61
	v_add_nc_u32_e32 v72, s23, v61
	v_add_nc_u32_e32 v73, s24, v61
	v_add_nc_u32_e32 v74, s25, v61
	v_add_nc_u32_e32 v75, s28, v61
	v_add_nc_u32_e32 v76, s29, v61
	v_add_nc_u32_e32 v77, s30, v61
	v_add_nc_u32_e32 v78, s31, v61
	v_add_nc_u32_e32 v79, s49, v61
	v_add_nc_u32_e32 v80, s50, v61
	v_add_nc_u32_e32 v81, s51, v61
	v_add_nc_u32_e32 v82, s52, v61
	v_add_nc_u32_e32 v83, s53, v61
	v_add_nc_u32_e32 v84, s54, v61
	.loc	1 1057 34                       ; ragged.py:1057:34
	v_cndmask_b32_e64 v63, 0x80000000, v63, s8
	v_cndmask_b32_e64 v67, 0x80000000, v67, s5
	v_cndmask_b32_e64 v62, 0x80000000, v62, s4
	v_cndmask_b32_e64 v69, 0x80000000, v69, s3
	v_cndmask_b32_e64 v64, 0x80000000, v64, s1
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	.loc	1 1056 34                       ; ragged.py:1056:34
	v_cndmask_b32_e64 v61, 0x80000000, v61, s9
	.loc	1 1057 34                       ; ragged.py:1057:34
	v_cndmask_b32_e64 v66, 0x80000000, v66, s6
	v_cndmask_b32_e64 v65, 0x80000000, v65, s7
	.loc	1 1056 34                       ; ragged.py:1056:34
	v_cndmask_b32_e64 v70, 0x80000000, v70, s9
	v_cndmask_b32_e64 v71, 0x80000000, v71, s9
	v_cndmask_b32_e64 v72, 0x80000000, v72, s9
	v_cndmask_b32_e64 v73, 0x80000000, v73, s9
	v_cndmask_b32_e64 v74, 0x80000000, v74, s9
	v_cndmask_b32_e64 v75, 0x80000000, v75, s9
	v_cndmask_b32_e64 v76, 0x80000000, v76, s9
	v_cndmask_b32_e64 v77, 0x80000000, v77, s9
	v_cndmask_b32_e64 v78, 0x80000000, v78, s9
	v_cndmask_b32_e64 v79, 0x80000000, v79, s9
	v_cndmask_b32_e64 v80, 0x80000000, v80, s9
	v_cndmask_b32_e64 v81, 0x80000000, v81, s9
	v_cndmask_b32_e64 v82, 0x80000000, v82, s9
	v_cndmask_b32_e64 v83, 0x80000000, v83, s9
	v_cndmask_b32_e64 v84, 0x80000000, v84, s9
	.loc	1 1057 34                       ; ragged.py:1057:34
	s_clause 0x2
	buffer_load_u8 v63, v63, s[16:19], 0 offen
	buffer_load_u8 v62, v62, s[16:19], 0 offen
	buffer_load_u8 v64, v64, s[16:19], 0 offen
	.loc	1 1056 34                       ; ragged.py:1056:34
	buffer_load_u8 v61, v61, s[12:15], 0 offen
	.loc	1 1057 34                       ; ragged.py:1057:34
	s_clause 0x3
	buffer_load_u8 v67, v67, s[16:19], 0 offen
	buffer_load_u8 v69, v69, s[16:19], 0 offen
	buffer_load_u8 v68, v68, s[16:19], 0 offen
	buffer_load_u8 v66, v66, s[16:19], 0 offen
	.loc	1 1056 34                       ; ragged.py:1056:34
	s_clause 0xe
	buffer_load_u8 v74, v74, s[12:15], 0 offen
	buffer_load_u8 v75, v75, s[12:15], 0 offen
	buffer_load_u8 v77, v77, s[12:15], 0 offen
	buffer_load_u8 v78, v78, s[12:15], 0 offen
	buffer_load_u8 v79, v79, s[12:15], 0 offen
	buffer_load_u8 v81, v81, s[12:15], 0 offen
	buffer_load_u8 v82, v82, s[12:15], 0 offen
	buffer_load_u8 v83, v83, s[12:15], 0 offen
	buffer_load_u8 v72, v72, s[12:15], 0 offen
	buffer_load_u8 v76, v76, s[12:15], 0 offen
	buffer_load_u8 v84, v84, s[12:15], 0 offen
	buffer_load_u8 v80, v80, s[12:15], 0 offen
	buffer_load_u8 v70, v70, s[12:15], 0 offen
	buffer_load_u8 v73, v73, s[12:15], 0 offen
	buffer_load_u8 v71, v71, s[12:15], 0 offen
	.loc	1 1057 34                       ; ragged.py:1057:34
	buffer_load_u8 v65, v65, s[16:19], 0 offen
	.loc	1 1056 34                       ; ragged.py:1056:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1068 21                       ; ragged.py:1068:21
	s_add_i32 s44, s44, 32
	.loc	1 1056 34                       ; ragged.py:1056:34
	s_waitcnt vmcnt(15)
	ds_store_b8 v41, v74 offset:1280
	s_waitcnt vmcnt(14)
	ds_store_b8 v41, v75 offset:1536
	s_waitcnt vmcnt(13)
	ds_store_b8 v41, v77 offset:2048
	s_waitcnt vmcnt(12)
	ds_store_b8 v41, v78 offset:2304
	s_waitcnt vmcnt(11)
	ds_store_b8 v41, v79 offset:2560
	s_waitcnt vmcnt(10)
	ds_store_b8 v41, v81 offset:3072
	s_waitcnt vmcnt(9)
	ds_store_b8 v41, v82 offset:3328
	s_waitcnt vmcnt(8)
	ds_store_b8 v41, v83 offset:3584
	s_waitcnt vmcnt(7)
	ds_store_b8 v51, v72
	s_waitcnt vmcnt(6)
	ds_store_b8 v52, v76
	s_waitcnt vmcnt(4)
	ds_store_b8 v53, v80
	ds_store_b8 v41, v61
	s_waitcnt vmcnt(3)
	ds_store_b8 v41, v70 offset:256
	s_waitcnt vmcnt(1)
	ds_store_b8 v41, v71 offset:512
	ds_store_b8 v41, v73 offset:1024
	ds_store_b8 v54, v84
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1058 31                       ; ragged.py:1058:31
	ds_load_u8 v77, v40 offset:384
	ds_load_u8 v78, v40 offset:256
	ds_load_u8 v79, v40 offset:128
	ds_load_u8 v80, v40
	ds_load_u8 v81, v40 offset:448
	ds_load_u8 v82, v40 offset:320
	ds_load_u8 v83, v40 offset:192
	ds_load_u8 v84, v40 offset:64
	ds_load_u8 v85, v40 offset:896
	ds_load_u8 v86, v40 offset:768
	ds_load_u8 v87, v40 offset:640
	ds_load_u8 v88, v40 offset:512
	ds_load_u8 v89, v40 offset:960
	ds_load_u8 v90, v40 offset:832
	ds_load_u8 v91, v40 offset:704
	ds_load_u8 v92, v40 offset:576
	ds_load_u8 v93, v40 offset:1408
	ds_load_u8 v94, v40 offset:1280
	ds_load_u8 v95, v40 offset:1152
	ds_load_u8 v96, v40 offset:1024
	ds_load_u8 v97, v40 offset:1472
	ds_load_u8 v98, v40 offset:1344
	ds_load_u8 v99, v40 offset:1216
	ds_load_u8 v100, v40 offset:1088
	ds_load_u8 v101, v40 offset:1920
	ds_load_u8 v102, v40 offset:1792
	ds_load_u8 v103, v40 offset:1664
	ds_load_u8 v104, v40 offset:1536
	ds_load_u8 v105, v40 offset:1984
	ds_load_u8 v106, v40 offset:1856
	ds_load_u8 v107, v40 offset:1728
	ds_load_u8 v108, v40 offset:1600
	ds_load_u8 v109, v40 offset:2432
	ds_load_u8 v110, v40 offset:2304
	ds_load_u8 v111, v40 offset:2176
	ds_load_u8 v112, v40 offset:2048
	ds_load_u8 v113, v40 offset:2496
	ds_load_u8 v114, v40 offset:2368
	ds_load_u8 v115, v40 offset:2240
	ds_load_u8 v116, v40 offset:2112
	ds_load_u8 v117, v40 offset:2944
	ds_load_u8 v118, v40 offset:2816
	ds_load_u8 v119, v40 offset:2688
	ds_load_u8 v120, v40 offset:2560
	ds_load_u8 v121, v40 offset:3008
	ds_load_u8 v122, v40 offset:2880
	ds_load_u8 v123, v40 offset:2752
	ds_load_u8 v124, v40 offset:2624
	ds_load_u8 v125, v40 offset:3456
	ds_load_u8 v126, v40 offset:3328
	ds_load_u8 v127, v40 offset:3200
	ds_load_u8 v128, v40 offset:3072
	ds_load_u8 v129, v40 offset:3520
	ds_load_u8 v130, v40 offset:3392
	ds_load_u8 v131, v40 offset:3264
	ds_load_u8 v132, v40 offset:3136
	ds_load_u8 v133, v40 offset:3968
	ds_load_u8 v134, v40 offset:3840
	ds_load_u8 v135, v40 offset:3712
	ds_load_u8 v136, v40 offset:3584
	ds_load_u8 v137, v40 offset:4032
	ds_load_u8 v138, v40 offset:3904
	ds_load_u8 v139, v40 offset:3776
	ds_load_u8 v140, v40 offset:3648
	.loc	1 1057 34                       ; ragged.py:1057:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v55, v63
	ds_store_b8 v55, v66 offset:512
	ds_store_b8 v55, v67 offset:1024
	ds_store_b8 v55, v69 offset:1536
	s_waitcnt vmcnt(0)
	ds_store_b8 v56, v65
	ds_store_b8 v56, v62 offset:512
	ds_store_b8 v56, v68 offset:1024
	ds_store_b8 v56, v64 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[61:64], v57 offset1:2
	ds_load_2addr_stride64_b64 v[65:68], v58 offset1:2
	ds_load_2addr_stride64_b64 v[69:72], v59 offset1:2
	ds_load_2addr_stride64_b64 v[73:76], v60 offset1:2
	.loc	1 1058 31                       ; ragged.py:1058:31
	v_perm_b32 v87, v88, v87, 0xc0c0004
	v_perm_b32 v85, v86, v85, 0xc0c0004
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_perm_b32 v77, v78, v77, 0xc0c0004
	v_perm_b32 v80, v104, v103, 0xc0c0004
	v_perm_b32 v86, v102, v101, 0xc0c0004
	v_perm_b32 v91, v92, v91, 0xc0c0004
	v_perm_b32 v89, v90, v89, 0xc0c0004
	v_perm_b32 v90, v84, v83, 0xc0c0004
	v_perm_b32 v92, v82, v81, 0xc0c0004
	v_perm_b32 v88, v96, v95, 0xc0c0004
	v_perm_b32 v93, v94, v93, 0xc0c0004
	v_perm_b32 v107, v108, v107, 0xc0c0004
	v_perm_b32 v105, v106, v105, 0xc0c0004
	v_perm_b32 v99, v100, v99, 0xc0c0004
	v_perm_b32 v97, v98, v97, 0xc0c0004
	v_lshl_or_b32 v78, v85, 16, v87
	v_lshl_or_b32 v77, v77, 16, v79
	v_lshl_or_b32 v80, v86, 16, v80
	v_lshl_or_b32 v86, v89, 16, v91
	v_lshl_or_b32 v85, v92, 16, v90
	v_perm_b32 v94, v120, v119, 0xc0c0004
	v_perm_b32 v95, v118, v117, 0xc0c0004
	v_perm_b32 v96, v112, v111, 0xc0c0004
	v_perm_b32 v101, v110, v109, 0xc0c0004
	v_perm_b32 v98, v124, v123, 0xc0c0004
	v_perm_b32 v100, v122, v121, 0xc0c0004
	v_perm_b32 v106, v116, v115, 0xc0c0004
	v_perm_b32 v108, v114, v113, 0xc0c0004
	v_lshl_or_b32 v79, v93, 16, v88
	v_lshl_or_b32 v88, v105, 16, v107
	v_lshl_or_b32 v87, v97, 16, v99
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[61:62], v[77:78], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[63:64], v[77:78], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[61:62], v[85:86], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[63:64], v[85:86], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v102, v136, v135, 0xc0c0004
	v_perm_b32 v103, v134, v133, 0xc0c0004
	v_perm_b32 v104, v128, v127, 0xc0c0004
	v_perm_b32 v109, v126, v125, 0xc0c0004
	v_perm_b32 v110, v140, v139, 0xc0c0004
	v_perm_b32 v111, v138, v137, 0xc0c0004
	v_perm_b32 v112, v132, v131, 0xc0c0004
	v_perm_b32 v113, v130, v129, 0xc0c0004
	v_lshl_or_b32 v82, v95, 16, v94
	v_lshl_or_b32 v81, v101, 16, v96
	v_lshl_or_b32 v90, v100, 16, v98
	v_lshl_or_b32 v89, v108, 16, v106
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[79:80], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[79:80], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[87:88], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[87:88], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v84, v103, 16, v102
	v_lshl_or_b32 v83, v109, 16, v104
	v_lshl_or_b32 v62, v111, 16, v110
	v_lshl_or_b32 v61, v113, 16, v112
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[69:70], v[81:82], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[71:72], v[81:82], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[69:70], v[89:90], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[71:72], v[89:90], v[1:8] neg_lo:[1,1,0]
	.loc	1 1046 23                       ; ragged.py:1046:23
	s_cmp_lt_i32 s44, s10
	.loc	1 1058 31                       ; ragged.py:1058:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[83:84], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[75:76], v[83:84], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[61:62], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[75:76], v[61:62], v[1:8] neg_lo:[1,1,0]
	.loc	1 1046 23                       ; ragged.py:1046:23
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1008 27 is_stmt 1             ; ragged.py:1008:27
	s_add_i32 s10, s21, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1008 26 is_stmt 0             ; ragged.py:1008:26
	s_lshr_b32 s11, s10, 31
	s_add_i32 s10, s10, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s49, s10, 1
	.loc	1 1069 20 is_stmt 1             ; ragged.py:1069:20
	s_cmp_lt_i32 s44, s49
	.loc	1 1069 17 is_stmt 0             ; ragged.py:1069:17
	s_cbranch_scc1 .LBB0_6
; %bb.5:                                ; %._crit_edge._crit_edge
	.loc	1 1105 21 is_stmt 1             ; ragged.py:1105:21
	s_add_i32 s16, s33, s45
	s_cbranch_execz .LBB0_7
	s_branch .LBB0_8
.LBB0_6:
                                        ; implicit-def: $sgpr16
.LBB0_7:
	.loc	1 1080 33                       ; ragged.py:1080:33
	s_and_b32 s18, s21, 0x80000001
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v59, s44, v50
	.loc	1 1080 33                       ; ragged.py:1080:33
	s_cmp_eq_u32 s18, 1
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v60, s44, v33
	.loc	1 1080 33                       ; ragged.py:1080:33
	s_cselect_b32 s50, -1, 0
	.loc	1 1081 42                       ; ragged.py:1081:42
	s_add_i32 s20, s44, s20
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v61, 2, v59
	.loc	1 1081 42                       ; ragged.py:1081:42
	s_mul_i32 s21, s20, s26
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v62, 4, v59
	.loc	1 1081 42                       ; ragged.py:1081:42
	s_add_i32 s22, s21, s35
	.loc	1 1079 30                       ; ragged.py:1079:30
	v_cmp_gt_i32_e32 vcc_lo, s49, v59
	.loc	1 1081 42                       ; ragged.py:1081:42
	v_add3_u32 v34, s22, v42, v49
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v63, 6, v59
	.loc	1 1079 30                       ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s10, s49, v61
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v64, 8, v59
	.loc	1 1079 30                       ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s11, s49, v62
	.loc	1 1081 42                       ; ragged.py:1081:42
	v_mad_u64_u32 v[35:36], null, s26, 6, v[34:35]
	v_lshl_add_u32 v76, s26, 1, v34
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v65, 10, v59
	.loc	1 1081 66                       ; ragged.py:1081:66
	s_and_b32 vcc_lo, s9, vcc_lo
	.loc	1 1079 30                       ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s12, s49, v63
	.loc	1 1081 42                       ; ragged.py:1081:42
	v_lshl_add_u32 v77, s26, 2, v34
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v66, 12, v59
	.loc	1 1081 42                       ; ragged.py:1081:42
	v_mad_u64_u32 v[49:50], null, s26, 12, v[34:35]
	v_mad_u64_u32 v[50:51], null, s26, 14, v[34:35]
	v_mad_u64_u32 v[51:52], null, s26, 18, v[34:35]
	v_mad_u64_u32 v[52:53], null, s26, 20, v[34:35]
	v_mad_u64_u32 v[53:54], null, s26, 22, v[34:35]
	v_mad_u64_u32 v[54:55], null, s26, 24, v[34:35]
	v_mad_u64_u32 v[55:56], null, s26, 26, v[34:35]
	v_mad_u64_u32 v[36:37], null, s26, 10, v[34:35]
	v_mad_u64_u32 v[56:57], null, s26, 28, v[34:35]
	v_lshl_add_u32 v78, s26, 3, v34
	v_lshl_add_u32 v37, s26, 4, v34
	v_mad_u64_u32 v[57:58], null, s26, 30, v[34:35]
	.loc	1 1081 34 is_stmt 0             ; ragged.py:1081:34
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 1081 66                       ; ragged.py:1081:66
	s_and_b32 vcc_lo, s9, s10
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s13, s49, v64
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v67, 14, v59
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v58, 0x80000000, v76, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s9, s11
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s14, s49, v65
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v76, 0x80000000, v77, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s9, s12
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s15, s49, v66
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s9, s13
	.loc	1 1070 26 is_stmt 1             ; ragged.py:1070:26
	v_or_b32_e32 v68, 16, v59
	.loc	1 1079 30                       ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s16, s49, v67
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v77, 0x80000000, v78, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s9, s14
	.loc	1 1070 26 is_stmt 1             ; ragged.py:1070:26
	v_or_b32_e32 v69, 18, v59
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s9, s15
	.loc	1 1070 26 is_stmt 1             ; ragged.py:1070:26
	v_or_b32_e32 v70, 20, v59
	.loc	1 1079 30                       ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s17, s49, v68
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s9, s16
	.loc	1 1082 42 is_stmt 1             ; ragged.py:1082:42
	s_add_i32 s16, s33, s45
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v71, 22, v59
	.loc	1 1079 30                       ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s18, s49, v69
	.loc	1 1082 42                       ; ragged.py:1082:42
	s_mul_i32 s10, s16, s48
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v72, 24, v59
	.loc	1 1079 30                       ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s19, s49, v70
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_add3_u32 v33, s44, s10, v33
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v73, 26, v59
	.loc	1 1081 34                       ; ragged.py:1081:34
	s_and_b32 s29, s37, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b32 s28, s36
	v_cndmask_b32_e32 v50, 0x80000000, v50, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s9, s17
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s20, s49, v71
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v74, 28, v59
	.loc	1 1081 34                       ; ragged.py:1081:34
	s_clause 0x7
	buffer_load_u8 v78, v34, s[28:31], 0 offen
	buffer_load_u8 v58, v58, s[28:31], 0 offen
	buffer_load_u8 v76, v76, s[28:31], 0 offen
	buffer_load_u8 v79, v35, s[28:31], 0 offen
	buffer_load_u8 v77, v77, s[28:31], 0 offen
	buffer_load_u8 v80, v36, s[28:31], 0 offen
	buffer_load_u8 v49, v49, s[28:31], 0 offen
	buffer_load_u8 v50, v50, s[28:31], 0 offen
	v_cndmask_b32_e32 v36, 0x80000000, v37, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s9, s18
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s21, s49, v72
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v75, 30, v59
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v37, 0x80000000, v51, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s9, s19
	.loc	1 1082 42 is_stmt 1             ; ragged.py:1082:42
	v_mad_u64_u32 v[34:35], null, s48, v47, v[33:34]
	.loc	1 1079 30                       ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s22, s49, v73
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v51, 0x80000000, v52, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s9, s20
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s23, s49, v74
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v52, 0x80000000, v53, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s9, s21
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s24, s49, v75
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v53, 0x80000000, v54, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s9, s22
	.loc	1 1082 42 is_stmt 1             ; ragged.py:1082:42
	v_lshl_add_u32 v82, s48, 3, v34
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v54, 0x80000000, v55, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s9, s23
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s25, s49, v60
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v55, 0x80000000, v56, vcc_lo
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 vcc_lo, s9, s24
	.loc	1 1082 42 is_stmt 1             ; ragged.py:1082:42
	v_lshl_add_u32 v83, s48, 4, v34
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e32 v56, 0x80000000, v57, vcc_lo
	s_clause 0x7
	buffer_load_u8 v57, v36, s[28:31], 0 offen
	buffer_load_u8 v81, v37, s[28:31], 0 offen
	buffer_load_u8 v51, v51, s[28:31], 0 offen
	buffer_load_u8 v52, v52, s[28:31], 0 offen
	buffer_load_u8 v53, v53, s[28:31], 0 offen
	buffer_load_u8 v54, v54, s[28:31], 0 offen
	buffer_load_u8 v55, v55, s[28:31], 0 offen
	buffer_load_u8 v56, v56, s[28:31], 0 offen
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_mad_u64_u32 v[35:36], null, s48, v48, v[33:34]
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s8, s25
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_lshl_add_u32 v84, s48, 5, v34
	.loc	1 1082 34                       ; ragged.py:1082:34
	s_and_b32 s29, s39, 0xffff
	s_mov_b32 s28, s38
	.loc	1 1080 63 is_stmt 1             ; ragged.py:1080:63
	s_add_i32 s49, s49, -1
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_mad_u64_u32 v[36:37], null, s48, 40, v[34:35]
	v_mad_u64_u32 v[47:48], null, s48, 48, v[34:35]
	.loc	1 1082 34 is_stmt 0             ; ragged.py:1082:34
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 vcc_lo, s7, s25
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s7, s49, v67
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v37, 0x80000000, v82, vcc_lo
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s6, s25
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s6, s49, v66
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v48, 0x80000000, v83, vcc_lo
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s4, s25
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s4, s49, v64
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s5, s25
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s5, s49, v65
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v82, 0x80000000, v84, vcc_lo
	s_clause 0x4
	buffer_load_u8 v83, v34, s[28:31], 0 offen
	buffer_load_u8 v84, v37, s[28:31], 0 offen
	buffer_load_u8 v85, v48, s[28:31], 0 offen
	buffer_load_u8 v86, v35, s[28:31], 0 offen
	buffer_load_u8 v82, v82, s[28:31], 0 offen
	.loc	1 1082 42 is_stmt 0             ; ragged.py:1082:42
	v_mad_u64_u32 v[33:34], null, s48, v46, v[33:34]
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 vcc_lo, s2, s25
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s2, s49, v62
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v34, 0x80000000, v36, vcc_lo
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s3, s25
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s3, s49, v63
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v35, 0x80000000, v47, vcc_lo
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 vcc_lo, s1, s25
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s1, s49, v61
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	s_clause 0x2
	buffer_load_u8 v87, v34, s[28:31], 0 offen
	buffer_load_u8 v88, v35, s[28:31], 0 offen
	buffer_load_u8 v89, v33, s[28:31], 0 offen
	.loc	1 1084 34                       ; ragged.py:1084:34
	v_cndmask_b32_e64 v33, 0x88, 0, s0
	v_and_b32_e32 v34, 24, v43
	.loc	1 1080 56                       ; ragged.py:1080:56
	v_cmp_eq_u32_e32 vcc_lo, s49, v59
	v_cmp_eq_u32_e64 s0, s49, v60
	v_cmp_eq_u32_e64 s8, s49, v68
	.loc	1 1084 34                       ; ragged.py:1084:34
	v_xor_b32_e32 v33, v33, v42
	v_or3_b32 v34, v44, v34, v45
	.loc	1 1080 56                       ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s9, s49, v69
	v_cmp_eq_u32_e64 s10, s49, v70
	v_cmp_eq_u32_e64 s11, s49, v71
	.loc	1 1084 34                       ; ragged.py:1084:34
	v_add_nc_u32_e32 v59, 0, v33
	v_xad_u32 v60, 0x110, v33, 0
	v_add_nc_u32_e32 v61, 0, v34
	v_xad_u32 v62, v34, 8, 0
	v_xad_u32 v63, v34, 16, 0
	v_xad_u32 v64, v34, 24, 0
	.loc	1 1080 56                       ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s12, s49, v72
	v_cmp_eq_u32_e64 s13, s49, v73
	v_cmp_eq_u32_e64 s14, s49, v74
	v_cmp_eq_u32_e64 s15, s49, v75
	.loc	1 1080 32 is_stmt 0             ; ragged.py:1080:32
	s_and_b32 s17, s50, vcc_lo
	s_and_b32 s1, s50, s1
	s_and_b32 s0, s50, s0
	s_and_b32 s2, s50, s2
	s_and_b32 s3, s50, s3
	s_and_b32 s4, s50, s4
	s_and_b32 s5, s50, s5
	s_and_b32 s6, s50, s6
	s_and_b32 s7, s50, s7
	s_and_b32 s8, s50, s8
	s_and_b32 s9, s50, s9
	s_and_b32 s10, s50, s10
	s_and_b32 s11, s50, s11
	s_and_b32 s12, s50, s12
	s_and_b32 s13, s50, s13
	s_and_b32 s14, s50, s14
	s_and_b32 s15, s50, s15
	.loc	1 1083 34 is_stmt 1             ; ragged.py:1083:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1083 62 is_stmt 0             ; ragged.py:1083:62
	s_waitcnt vmcnt(23)
	v_and_b16 v33.l, v78.l, 15
	s_waitcnt vmcnt(22)
	v_and_b16 v33.h, v58.l, 15
	s_waitcnt vmcnt(21)
	v_and_b16 v34.l, v76.l, 15
	s_waitcnt vmcnt(20)
	v_and_b16 v35.l, v79.l, 15
	s_waitcnt vmcnt(19)
	v_and_b16 v35.h, v77.l, 15
	.loc	1 1083 34                       ; ragged.py:1083:34
	v_cndmask_b16 v33.l, v78.l, v33.l, s17
	.loc	1 1083 62                       ; ragged.py:1083:62
	s_waitcnt vmcnt(18)
	v_and_b16 v36.l, v80.l, 15
	s_waitcnt vmcnt(17)
	v_and_b16 v36.h, v49.l, 15
	s_waitcnt vmcnt(16)
	v_and_b16 v37.l, v50.l, 15
	.loc	1 1083 34                       ; ragged.py:1083:34
	v_cndmask_b16 v33.h, v58.l, v33.h, s1
	v_cndmask_b16 v34.l, v76.l, v34.l, s2
	v_cndmask_b16 v35.l, v79.l, v35.l, s3
	v_cndmask_b16 v35.h, v77.l, v35.h, s4
	v_cndmask_b16 v36.l, v80.l, v36.l, s5
	v_cndmask_b16 v36.h, v49.l, v36.h, s6
	v_cndmask_b16 v37.l, v50.l, v37.l, s7
	.loc	1 1083 62                       ; ragged.py:1083:62
	s_waitcnt vmcnt(15)
	v_and_b16 v34.h, v57.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v37.h, v81.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v42.l, v51.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v42.h, v52.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v43.l, v53.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v43.h, v54.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v44.l, v55.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v44.h, v56.l, 15
	.loc	1 1083 34                       ; ragged.py:1083:34
	v_cndmask_b16 v34.h, v57.l, v34.h, s8
	v_cndmask_b16 v37.h, v81.l, v37.h, s9
	v_cndmask_b16 v42.l, v51.l, v42.l, s10
	v_cndmask_b16 v42.h, v52.l, v42.h, s11
	v_cndmask_b16 v43.l, v53.l, v43.l, s12
	v_cndmask_b16 v43.h, v54.l, v43.h, s13
	v_cndmask_b16 v44.l, v55.l, v44.l, s14
	v_cndmask_b16 v44.h, v56.l, v44.h, s15
	ds_store_b8 v41, v33
	ds_store_b8_d16_hi v41, v33 offset:256
	ds_store_b8 v41, v34 offset:512
	ds_store_b8 v41, v35 offset:768
	ds_store_b8_d16_hi v41, v35 offset:1024
	ds_store_b8 v41, v36 offset:1280
	ds_store_b8_d16_hi v41, v36 offset:1536
	ds_store_b8 v41, v37 offset:1792
	ds_store_b8_d16_hi v41, v34 offset:2048
	ds_store_b8_d16_hi v41, v37 offset:2304
	ds_store_b8 v41, v42 offset:2560
	ds_store_b8_d16_hi v41, v42 offset:2816
	ds_store_b8 v41, v43 offset:3072
	ds_store_b8_d16_hi v41, v43 offset:3328
	ds_store_b8 v41, v44 offset:3584
	ds_store_b8_d16_hi v41, v44 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1084 62 is_stmt 1             ; ragged.py:1084:62
	s_waitcnt vmcnt(7)
	v_and_b16 v45.l, v83.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v45.h, v84.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v46.l, v85.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v46.h, v86.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v47.l, v82.l, 15
	.loc	1 1084 34 is_stmt 0             ; ragged.py:1084:34
	v_cndmask_b16 v45.l, v83.l, v45.l, s0
	v_cndmask_b16 v45.h, v84.l, v45.h, s0
	v_cndmask_b16 v46.l, v85.l, v46.l, s0
	v_cndmask_b16 v46.h, v86.l, v46.h, s0
	v_cndmask_b16 v47.l, v82.l, v47.l, s0
	.loc	1 1085 31 is_stmt 1             ; ragged.py:1085:31
	ds_load_u8 v37, v40 offset:384
	ds_load_u8 v52, v40 offset:256
	ds_load_u8 v53, v40 offset:128
	ds_load_u8 v54, v40
	ds_load_u8 v55, v40 offset:448
	ds_load_u8 v56, v40 offset:320
	ds_load_u8 v57, v40 offset:192
	ds_load_u8 v58, v40 offset:64
	ds_load_u8 v65, v40 offset:896
	ds_load_u8 v66, v40 offset:768
	ds_load_u8 v67, v40 offset:640
	ds_load_u8 v68, v40 offset:512
	ds_load_u8 v69, v40 offset:960
	ds_load_u8 v70, v40 offset:832
	ds_load_u8 v71, v40 offset:704
	ds_load_u8 v72, v40 offset:576
	ds_load_u8 v73, v40 offset:1408
	ds_load_u8 v74, v40 offset:1280
	ds_load_u8 v75, v40 offset:1152
	ds_load_u8 v76, v40 offset:1024
	ds_load_u8 v77, v40 offset:1472
	ds_load_u8 v78, v40 offset:1344
	ds_load_u8 v79, v40 offset:1216
	ds_load_u8 v80, v40 offset:1088
	ds_load_u8 v81, v40 offset:1920
	ds_load_u8 v82, v40 offset:1792
	ds_load_u8 v83, v40 offset:1664
	ds_load_u8 v84, v40 offset:1536
	ds_load_u8 v85, v40 offset:1984
	ds_load_u8 v86, v40 offset:1856
	ds_load_u8 v90, v40 offset:1728
	ds_load_u8 v91, v40 offset:1600
	ds_load_u8 v92, v40 offset:2432
	ds_load_u8 v93, v40 offset:2304
	ds_load_u8 v94, v40 offset:2176
	ds_load_u8 v95, v40 offset:2048
	ds_load_u8 v96, v40 offset:2496
	ds_load_u8 v97, v40 offset:2368
	ds_load_u8 v98, v40 offset:2240
	ds_load_u8 v99, v40 offset:2112
	ds_load_u8 v100, v40 offset:2944
	ds_load_u8 v101, v40 offset:2816
	ds_load_u8 v102, v40 offset:2688
	ds_load_u8 v103, v40 offset:2560
	ds_load_u8 v104, v40 offset:3008
	ds_load_u8 v105, v40 offset:2880
	ds_load_u8 v106, v40 offset:2752
	ds_load_u8 v107, v40 offset:2624
	ds_load_u8 v108, v40 offset:3456
	ds_load_u8 v109, v40 offset:3328
	ds_load_u8 v110, v40 offset:3200
	ds_load_u8 v111, v40 offset:3072
	ds_load_u8 v112, v40 offset:3520
	ds_load_u8 v113, v40 offset:3392
	ds_load_u8 v114, v40 offset:3264
	ds_load_u8 v115, v40 offset:3136
	ds_load_u8 v116, v40 offset:3968
	ds_load_u8 v117, v40 offset:3840
	ds_load_u8 v118, v40 offset:3712
	ds_load_u8 v119, v40 offset:3584
	ds_load_u8 v120, v40 offset:4032
	ds_load_u8 v121, v40 offset:3904
	ds_load_u8 v122, v40 offset:3776
	ds_load_u8 v123, v40 offset:3648
	.loc	1 1084 34                       ; ragged.py:1084:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1085 31                       ; ragged.py:1085:31
	v_perm_b32 v54, v54, v53, 0xc0c0004
	v_perm_b32 v37, v52, v37, 0xc0c0004
	v_perm_b32 v71, v72, v71, 0xc0c0004
	.loc	1 1084 62                       ; ragged.py:1084:62
	s_waitcnt vmcnt(2)
	v_and_b16 v47.h, v87.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v48.l, v88.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v48.h, v89.l, 15
	.loc	1 1085 31                       ; ragged.py:1085:31
	v_perm_b32 v69, v70, v69, 0xc0c0004
	v_perm_b32 v58, v58, v57, 0xc0c0004
	.loc	1 1084 34                       ; ragged.py:1084:34
	v_cndmask_b16 v33.l, v87.l, v47.h, s0
	v_cndmask_b16 v33.h, v88.l, v48.l, s0
	v_cndmask_b16 v34.l, v89.l, v48.h, s0
	ds_store_b8 v59, v45
	ds_store_b8 v59, v46 offset:512
	ds_store_b8 v59, v47 offset:1024
	ds_store_b8_d16_hi v59, v33 offset:1536
	ds_store_b8_d16_hi v60, v45
	ds_store_b8_d16_hi v60, v46 offset:512
	ds_store_b8 v60, v33 offset:1024
	ds_store_b8 v60, v34 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[33:36], v61 offset1:2
	ds_load_2addr_stride64_b64 v[40:43], v62 offset1:2
	ds_load_2addr_stride64_b64 v[44:47], v63 offset1:2
	ds_load_2addr_stride64_b64 v[48:51], v64 offset1:2
	.loc	1 1085 31                       ; ragged.py:1085:31
	v_perm_b32 v59, v68, v67, 0xc0c0004
	v_perm_b32 v60, v66, v65, 0xc0c0004
	v_perm_b32 v70, v56, v55, 0xc0c0004
	v_perm_b32 v61, v84, v83, 0xc0c0004
	v_perm_b32 v62, v82, v81, 0xc0c0004
	v_perm_b32 v63, v76, v75, 0xc0c0004
	v_perm_b32 v64, v74, v73, 0xc0c0004
	v_perm_b32 v72, v91, v90, 0xc0c0004
	v_perm_b32 v81, v86, v85, 0xc0c0004
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_perm_b32 v77, v78, v77, 0xc0c0004
	v_lshl_or_b32 v53, v60, 16, v59
	v_lshl_or_b32 v52, v37, 16, v54
	v_lshl_or_b32 v59, v69, 16, v71
	v_lshl_or_b32 v58, v70, 16, v58
	v_perm_b32 v65, v103, v102, 0xc0c0004
	v_perm_b32 v66, v101, v100, 0xc0c0004
	v_perm_b32 v67, v95, v94, 0xc0c0004
	v_perm_b32 v68, v93, v92, 0xc0c0004
	v_perm_b32 v78, v107, v106, 0xc0c0004
	v_perm_b32 v80, v105, v104, 0xc0c0004
	v_perm_b32 v82, v99, v98, 0xc0c0004
	v_perm_b32 v83, v97, v96, 0xc0c0004
	v_lshl_or_b32 v55, v62, 16, v61
	v_lshl_or_b32 v54, v64, 16, v63
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[33:34], v[52:53], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v61, v81, 16, v72
	v_lshl_or_b32 v60, v77, 16, v79
	v_wmma_i32_16x16x16_iu4 v[25:32], v[35:36], v[52:53], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[33:34], v[58:59], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[35:36], v[58:59], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v73, v119, v118, 0xc0c0004
	v_perm_b32 v74, v117, v116, 0xc0c0004
	v_perm_b32 v75, v111, v110, 0xc0c0004
	v_perm_b32 v76, v109, v108, 0xc0c0004
	v_lshl_or_b32 v57, v66, 16, v65
	v_lshl_or_b32 v56, v68, 16, v67
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[40:41], v[54:55], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[42:43], v[54:55], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[40:41], v[60:61], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v41, v80, 16, v78
	v_lshl_or_b32 v40, v83, 16, v82
	v_perm_b32 v35, v123, v122, 0xc0c0004
	v_perm_b32 v36, v121, v120, 0xc0c0004
	v_perm_b32 v37, v115, v114, 0xc0c0004
	v_perm_b32 v52, v113, v112, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[42:43], v[60:61], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v34, v74, 16, v73
	v_lshl_or_b32 v33, v76, 16, v75
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[44:45], v[56:57], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[46:47], v[56:57], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[44:45], v[40:41], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v36, v36, 16, v35
	v_lshl_or_b32 v35, v52, 16, v37
	v_wmma_i32_16x16x16_iu4 v[1:8], v[46:47], v[40:41], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[48:49], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[50:51], v[33:34], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[48:49], v[35:36], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[50:51], v[35:36], v[1:8] neg_lo:[1,1,0]
.LBB0_8:
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v33, 4, v0
	v_lshrrev_b32_e32 v34, 1, v39
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v58, 64, v38
	.loc	1 1003 18 is_stmt 0             ; ragged.py:1003:18
	v_or_b32_e32 v63, s35, v38
	.loc	1 1098 33 is_stmt 1             ; ragged.py:1098:33
	s_mul_i32 s0, s34, s26
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_and_b32 s49, s41, 0xffff
	.loc	1 1098 21                       ; ragged.py:1098:21
	s_add_i32 s2, s35, s0
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_and_or_b32 v33, v33, 1, v34
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v62, s35, v58
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_add_lshl_u32 v64, s2, v38, 1
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s26, v63
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_add_lshl_u32 v65, s2, v58, 1
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v56, 2, v33
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s26, v62
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v55, 4, v33
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_cndmask_b32_e64 v63, 0x80000000, v64, s0
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v64, s33, v33
	v_or_b32_e32 v61, s33, v56
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_cndmask_b32_e32 v62, 0x80000000, v65, vcc_lo
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v65, s16, v33, 1
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v54, 6, v33
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s27, v64
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v60, s33, v55
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v56, s16, v56, 1
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v52, 8, v33
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v59, s33, v54
	.loc	1 1104 36 is_stmt 1             ; ragged.py:1104:36
	v_cndmask_b32_e64 v64, 0x80000000, v65, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s27, v61
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v55, s16, v55, 1
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v48, 10, v33
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v57, s33, v52
	.loc	1 1104 36 is_stmt 1             ; ragged.py:1104:36
	v_add_lshl_u32 v54, s16, v54, 1
	v_cndmask_b32_e64 v56, 0x80000000, v56, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s27, v60
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v42, 12, v33
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v53, s33, v48
	.loc	1 1104 36 is_stmt 1             ; ragged.py:1104:36
	v_add_lshl_u32 v52, s16, v52, 1
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v41, 14, v33
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v55, 0x80000000, v55, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s27, v59
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v51, s33, v42
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v48, s16, v48, 1
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v40, 32, v33
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v50, s33, v41
	.loc	1 1104 36 is_stmt 1             ; ragged.py:1104:36
	v_cndmask_b32_e64 v54, 0x80000000, v54, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s27, v57
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v42, s16, v42, 1
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v39, 34, v33
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v49, s33, v40
	.loc	1 1104 36 is_stmt 1             ; ragged.py:1104:36
	v_add_lshl_u32 v41, s16, v41, 1
	v_cndmask_b32_e64 v52, 0x80000000, v52, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s27, v53
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v37, 36, v33
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v47, s33, v39
	.loc	1 1104 36 is_stmt 1             ; ragged.py:1104:36
	v_add_lshl_u32 v40, s16, v40, 1
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v36, 38, v33
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v48, 0x80000000, v48, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s27, v51
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v46, s33, v37
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v39, s16, v39, 1
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v35, 40, v33
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v45, s33, v36
	.loc	1 1104 36 is_stmt 1             ; ragged.py:1104:36
	v_cndmask_b32_e64 v42, 0x80000000, v42, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s27, v50
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v37, s16, v37, 1
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v34, 42, v33
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v44, s33, v35
	.loc	1 1104 36 is_stmt 1             ; ragged.py:1104:36
	v_add_lshl_u32 v36, s16, v36, 1
	v_cndmask_b32_e64 v41, 0x80000000, v41, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s27, v49
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_mov_b32 s48, s40
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v43, s33, v34
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v40, 0x80000000, v40, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s27, v47
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_clause 0x1
	buffer_load_u16 v63, v63, s[48:51], 0 offen
	buffer_load_u16 v62, v62, s[48:51], 0 offen
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v35, s16, v35, 1
	s_and_b32 s49, s43, 0xffff
	s_mov_b32 s48, s42
	v_cndmask_b32_e64 v39, 0x80000000, v39, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s27, v46
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v34, s16, v34, 1
	s_clause 0x7
	buffer_load_u16 v50, v64, s[48:51], 0 offen
	buffer_load_u16 v51, v56, s[48:51], 0 offen
	buffer_load_u16 v53, v55, s[48:51], 0 offen
	buffer_load_u16 v54, v54, s[48:51], 0 offen
	buffer_load_u16 v52, v52, s[48:51], 0 offen
	buffer_load_u16 v48, v48, s[48:51], 0 offen
	buffer_load_u16 v42, v42, s[48:51], 0 offen
	buffer_load_u16 v41, v41, s[48:51], 0 offen
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v69, v5
	v_cvt_f32_i32_e32 v65, v1
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s27, v45
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v66, v2
	v_cvt_f32_i32_e32 v67, v3
	v_cvt_f32_i32_e32 v68, v4
	v_cvt_f32_i32_e32 v46, v10
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v36, 0x80000000, v36, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s27, v44
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v47, v11
	v_cvt_f32_i32_e32 v60, v18
	v_cvt_f32_i32_e32 v64, v19
	v_cvt_f32_i32_e32 v49, v12
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v35, 0x80000000, v35, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s27, v43
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v55, v13
	v_cvt_f32_i32_e32 v56, v14
	v_cvt_f32_i32_e32 v57, v15
	v_cvt_f32_i32_e32 v59, v16
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	s_clause 0x5
	buffer_load_u16 v39, v39, s[48:51], 0 offen
	buffer_load_u16 v40, v40, s[48:51], 0 offen
	buffer_load_u16 v36, v36, s[48:51], 0 offen
	buffer_load_u16 v37, v37, s[48:51], 0 offen
	buffer_load_u16 v43, v34, s[48:51], 0 offen
	buffer_load_u16 v35, v35, s[48:51], 0 offen
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v34, 44, v33
	v_or_b32_e32 v33, 46, v33
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v44, s33, v34
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v34, s16, v34, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v45, s33, v33
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v33, s16, v33, 1
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v28, v28
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s27, v44
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v44, 1, v0
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s27, v45
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_and_b32_e32 v5, 24, v44
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v45, v9
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v61, v17
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	s_clause 0x1
	buffer_load_u16 v34, v34, s[48:51], 0 offen
	buffer_load_u16 v33, v33, s[48:51], 0 offen
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_mul_i32 s1, s2, s27
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_add_i32 s2, s1, s33
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v21, v21
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mad_u64_u32 v[1:2], null, s27, v58, s[2:3]
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v2, 39, v5
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mad_u64_u32 v[3:4], null, s27, v38, s[2:3]
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v38, s33, v5
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v58, s33, v2
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s14, s27, v38
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v70, v6
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s27, v58
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v6.h, 0
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v71, v7
	v_cvt_f32_i32_e32 v72, v8
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v4, 38, v5
	v_or_b32_e32 v7, 37, v5
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v44.h, v6.h
	v_mov_b16_e32 v77.h, v6.h
	v_mov_b16_e32 v75.h, v6.h
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v8, 36, v5
	v_or_b32_e32 v9, 35, v5
	v_or_b32_e32 v10, 34, v5
	v_or_b32_e32 v11, 33, v5
	v_or_b32_e32 v12, 32, v5
	v_or_b32_e32 v13, 7, v5
	v_or_b32_e32 v14, 6, v5
	v_or_b32_e32 v15, 5, v5
	v_or_b32_e32 v16, 4, v5
	v_or_b32_e32 v17, 3, v5
	v_or_b32_e32 v18, 2, v5
	v_or_b32_e32 v19, 1, v5
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v74.h, v6.h
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v78, s33, v4
	v_or_b32_e32 v79, s33, v7
	v_or_b32_e32 v80, s33, v8
	v_or_b32_e32 v81, s33, v9
	v_or_b32_e32 v82, s33, v10
	v_or_b32_e32 v83, s33, v11
	v_or_b32_e32 v84, s33, v12
	v_or_b32_e32 v85, s33, v13
	v_or_b32_e32 v86, s33, v14
	v_or_b32_e32 v87, s33, v15
	v_or_b32_e32 v88, s33, v16
	v_or_b32_e32 v89, s33, v17
	v_or_b32_e32 v90, s33, v18
	v_or_b32_e32 v91, s33, v19
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s2, s27, v78
	v_cmp_gt_i32_e64 s3, s27, v79
	v_cmp_gt_i32_e64 s4, s27, v80
	v_cmp_gt_i32_e64 s5, s27, v81
	v_cmp_gt_i32_e64 s6, s27, v82
	v_cmp_gt_i32_e64 s7, s27, v83
	v_cmp_gt_i32_e64 s8, s27, v84
	v_cmp_gt_i32_e64 s9, s27, v85
	v_cmp_gt_i32_e64 s10, s27, v86
	v_cmp_gt_i32_e64 s11, s27, v87
	v_cmp_gt_i32_e64 s12, s27, v88
	v_cmp_gt_i32_e64 s13, s27, v89
	v_cmp_gt_i32_e64 s15, s27, v90
	v_cmp_gt_i32_e64 s16, s27, v91
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v73.h, v6.h
	v_mov_b16_e32 v76.h, v6.h
	v_and_b32_e32 v0, 16, v0
	s_and_b32 s49, s47, 0xffff
	s_mov_b32 s48, s46
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_lshlrev_b32_e32 v58, 16, v62
	v_lshlrev_b32_e32 v38, 16, v63
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v53, 16, v53
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v52, 16, v52
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v48, 16, v48
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v60, v58, v60 :: v_dual_mul_f32 v47, v47, v38
	v_mul_f32_e32 v46, v46, v38
	v_mul_f32_e32 v59, v59, v38
	v_mul_f32_e32 v25, v25, v38
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v26, v26, v38 :: v_dual_lshlrev_b32 v41, 16, v41
	v_mul_f32_e32 v27, v27, v38
	v_mul_f32_e32 v29, v29, v38
	v_mul_f32_e32 v30, v30, v38
	v_dual_mul_f32 v31, v31, v38 :: v_dual_mul_f32 v46, v46, v51
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v51, v60, v51
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v45, v45, v38
	v_dual_mul_f32 v49, v49, v38 :: v_dual_mul_f32 v20, v58, v20
	v_dual_mul_f32 v55, v55, v38 :: v_dual_mul_f32 v24, v58, v24
	v_dual_mul_f32 v56, v56, v38 :: v_dual_mul_f32 v21, v58, v21
	v_mul_f32_e32 v57, v57, v38
	v_dual_mul_f32 v28, v28, v38 :: v_dual_mul_f32 v23, v58, v23
	v_dual_mul_f32 v32, v32, v38 :: v_dual_mul_f32 v63, v58, v65
	v_mul_f32_e32 v38, v58, v61
	v_dual_mul_f32 v65, v58, v67 :: v_dual_lshlrev_b32 v50, 16, v50
	v_mul_f32_e32 v61, v58, v64
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v67, v58, v69 :: v_dual_lshlrev_b32 v40, 16, v40
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v45, v45, v50
	v_mul_f32_e32 v38, v38, v50
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_lshlrev_b32_e32 v50, 16, v54
	.loc	1 1102 17                       ; ragged.py:1102:17
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v22, v58, v22 :: v_dual_lshlrev_b32 v37, 16, v37
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v62, v58, v66 :: v_dual_lshlrev_b32 v43, 16, v43
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v66, v58, v70 :: v_dual_lshlrev_b32 v35, 16, v35
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v47, v47, v53 :: v_dual_lshlrev_b32 v42, 16, v42
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v6.l, v38.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v49, v49, v50 :: v_dual_mul_f32 v22, v22, v48
	v_dual_mul_f32 v53, v61, v53 :: v_dual_mul_f32 v20, v20, v50
	v_mul_f32_e32 v50, v55, v52
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v54, v45, 16, 1
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_lshlrev_b32_e32 v39, 16, v39
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v25, v25, v40
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v64, v58, v68
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s17, v45, v45
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v55, v56, v48 :: v_dual_mul_f32 v48, v57, v42
	v_dual_mul_f32 v23, v23, v42 :: v_dual_mul_f32 v24, v24, v41
	v_mul_f32_e32 v29, v29, v35
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v42, v45, v54, 0x7fff
	v_bfe_u32 v45, v46, 16, 1
	v_and_b32_e32 v54, 1, v6
	v_bfe_u32 v56, v47, 16, 1
	v_bfe_u32 v57, v49, 16, 1
	v_mov_b16_e32 v6.l, v20.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v26, v26, v39
	v_dual_mul_f32 v40, v63, v40 :: v_dual_mul_f32 v39, v62, v39
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v63, v25, 16, 1
	v_cmp_o_f32_e64 s18, v38, v38
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v27, v27, v37 :: v_dual_mul_f32 v28, v28, v36
	v_dual_mul_f32 v37, v65, v37 :: v_dual_mul_f32 v36, v64, v36
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s19, v46, v46
	v_cmp_o_f32_e64 s21, v47, v47
	v_cmp_o_f32_e64 s22, v49, v49
	v_add3_u32 v45, v46, v45, 0x7fff
	v_add3_u32 v38, v38, v54, 0x7fff
	v_add3_u32 v46, v47, v56, 0x7fff
	v_add3_u32 v47, v49, v57, 0x7fff
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v30, v30, v43 :: v_dual_and_b32 v49, 1, v6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v6.l, v22.h
	v_cmp_o_f32_e64 s34, v25, v25
	v_add3_u32 v25, v25, v63, 0x7fff
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v21, v21, v52 :: v_dual_mul_f32 v52, v59, v41
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v44.l, v51.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v41, v66, v43
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v60, v55, 16, 1
	v_bfe_u32 v65, v27, 16, 1
	v_bfe_u32 v66, v28, 16, 1
	v_mov_b16_e32 v77.l, v37.h
	v_cndmask_b16 v25.l, 0x7fff, v38.h, s18
	v_cndmask_b16 v38.h, 0x7fff, v47.h, s22
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_and_b32_e32 v47, 1, v6
	v_mov_b16_e32 v6.l, v24.h
	v_cmp_o_f32_e64 s23, v20, v20
	v_cmp_o_f32_e64 s26, v55, v55
	v_mov_b16_e32 v75.l, v23.h
	v_cmp_o_f32_e64 s38, v27, v27
	v_cmp_o_f32_e64 s39, v28, v28
	v_and_b32_e32 v44, 1, v44
	v_add3_u32 v55, v55, v60, 0x7fff
	v_add3_u32 v27, v27, v65, 0x7fff
	v_add3_u32 v28, v28, v66, 0x7fff
	v_add3_u32 v20, v20, v49, 0x7fff
	v_and_b32_e32 v49, 1, v6
	v_mov_b16_e32 v6.l, v39.h
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_and_b32_e32 v60, 1, v77
	v_bfe_u32 v64, v26, 16, 1
	v_cmp_o_f32_e64 s20, v51, v51
	v_mov_b16_e32 v74.l, v21.h
	v_cmp_o_f32_e64 s41, v37, v37
	v_and_b32_e32 v57, 1, v75
	v_add3_u32 v44, v51, v44, 0x7fff
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s38
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s39
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v31, v31, v34
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v28, v37, v60, 0x7fff
	v_and_b32_e32 v37, 1, v6
	v_mov_b16_e32 v6.l, v36.h
	v_cmp_o_f32_e64 s35, v26, v26
	v_add3_u32 v26, v26, v64, 0x7fff
	v_cmp_o_f32_e64 s33, v23, v23
	v_and_b32_e32 v56, 1, v74
	v_add3_u32 v23, v23, v57, 0x7fff
	v_cndmask_b16 v26.l, 0x7fff, v25.h, s34
	v_cndmask_b16 v25.h, 0x7fff, v44.h, s20
	v_and_b32_e32 v44, 1, v6
	v_cmp_o_f32_e64 s27, v22, v22
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v32, v32, v33
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v22, v22, v47, 0x7fff
	v_mov_b16_e32 v73.l, v53.h
	v_cmp_o_f32_e64 s28, v21, v21
	v_cmp_o_f32_e64 s31, v24, v24
	v_cmp_o_f32_e64 s36, v39, v39
	v_cmp_o_f32_e64 s40, v36, v36
	v_add3_u32 v21, v21, v56, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s33
	v_add3_u32 v23, v24, v49, 0x7fff
	v_add3_u32 v24, v39, v37, 0x7fff
	v_add3_u32 v36, v36, v44, 0x7fff
	v_bfe_u32 v68, v29, 16, 1
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v35, v67, v35 :: v_dual_and_b32 v54, 1, v73
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s28
	v_cndmask_b16 v21.h, 0x7fff, v22.h, s27
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s31
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s36
	v_cndmask_b16 v24.h, 0x7fff, v36.h, s40
	v_mov_b16_e32 v6.l, v41.h
	v_bfe_u32 v36, v30, 16, 1
	v_bfe_u32 v59, v50, 16, 1
	v_mov_b16_e32 v76.l, v40.h
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s17
	v_cndmask_b16 v24.l, 0x7fff, v28.h, s41
	v_add3_u32 v28, v29, v68, 0x7fff
	v_mov_b16_e32 v37.l, v35.h
	v_mov_b16_e32 v37.h, v6.h
	v_cmp_o_f32_e64 s17, v29, v29
	v_and_b32_e32 v29, 1, v6
	v_add3_u32 v36, v30, v36, 0x7fff
	v_cmp_o_f32_e64 s18, v30, v30
	v_cmp_o_f32_e64 s25, v50, v50
	v_add3_u32 v50, v50, v59, 0x7fff
	v_and_b32_e32 v59, 1, v76
	v_and_b32_e32 v30, 1, v37
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s17
	v_add3_u32 v29, v41, v29, 0x7fff
	v_cmp_o_f32_e64 s17, v41, v41
	v_cndmask_b16 v28.h, 0x7fff, v36.h, s18
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v36, v58, v71
	v_mul_f32_e32 v37, v58, v72
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s18, v32, v32
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s17
	v_cmp_o_f32_e64 s17, v35, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v34, v36, v34 :: v_dual_mul_f32 v33, v37, v33
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b32_e32 v37, 0x7632
	v_add3_u32 v30, v35, v30, 0x7fff
	v_bfe_u32 v35, v31, 16, 1
	v_mov_b16_e32 v36.l, v34.h
	v_mov_b16_e32 v36.h, v6.h
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s35
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s17
	v_bfe_u32 v30, v32, 16, 1
	v_add3_u32 v35, v31, v35, 0x7fff
	v_and_b32_e32 v36, 1, v36
	v_cmp_o_f32_e64 s17, v31, v31
	v_bfe_u32 v61, v48, 16, 1
	v_add3_u32 v30, v32, v30, 0x7fff
	v_bfe_u32 v62, v52, 16, 1
	v_add3_u32 v32, v34, v36, 0x7fff
	v_cndmask_b16 v30.l, 0x7fff, v35.h, s17
	v_cmp_eq_u32_e64 s17, 0, v0
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s18
	v_mov_b32_e32 v36, 0x5410
	v_mov_b16_e32 v6.l, v33.h
	v_cmp_o_f32_e64 s29, v48, v48
	v_cndmask_b32_e64 v35, v28, v26, s17
	v_cndmask_b32_e64 v26, v26, v28, s17
	v_cndmask_b32_e64 v28, v30, v27, s17
	v_cndmask_b32_e64 v27, v27, v30, s17
	v_cndmask_b32_e64 v30, v21, v25, s17
	v_cndmask_b32_e64 v21, v25, v21, s17
	v_cndmask_b32_e64 v25, 0x1054, v36, s17
	v_cmp_o_f32_e64 s30, v52, v52
	v_add3_u32 v48, v48, v61, 0x7fff
	v_add3_u32 v52, v52, v62, 0x7fff
	v_and_b32_e32 v31, 1, v6
	v_cndmask_b32_e64 v36, 0x3276, v37, s17
	v_lshl_or_b32 v25, v25, 8, v25
	v_cmp_o_f32_e64 s24, v53, v53
	v_cmp_o_f32_e64 s37, v40, v40
	v_cndmask_b16 v42.h, 0x7fff, v45.h, s19
	v_cndmask_b16 v38.l, 0x7fff, v46.h, s21
	v_add3_u32 v45, v53, v54, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v50.h, s25
	v_cndmask_b16 v46.h, 0x7fff, v55.h, s26
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s29
	v_cndmask_b16 v48.h, 0x7fff, v52.h, s30
	v_add3_u32 v40, v40, v59, 0x7fff
	v_add3_u32 v31, v33, v31, 0x7fff
	v_cmp_o_f32_e64 s19, v33, v33
	v_cmp_o_f32_e64 s20, v34, v34
	v_lshl_or_b32 v36, v36, 8, v36
	v_and_b32_e32 v25, 0x540054, v25
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s23
	v_cndmask_b16 v20.l, 0x7fff, v45.h, s24
	v_cndmask_b16 v23.l, 0x7fff, v40.h, s37
	v_cndmask_b16 v0.h, 0x7fff, v31.h, s19
	v_cndmask_b16 v0.l, 0x7fff, v32.h, s20
	v_cndmask_b32_e64 v32, v42, v46, s17
	v_cndmask_b32_e64 v34, v38, v48, s17
	v_and_b32_e32 v36, 0x760076, v36
	v_lshl_or_b32 v25, v25, 4, v25
	s_mov_b32 s18, 0x76543210
	v_cndmask_b32_e64 v31, v46, v42, s17
	v_cndmask_b32_e64 v37, v22, v20, s17
	v_cndmask_b32_e64 v20, v20, v22, s17
	v_cndmask_b32_e64 v22, v29, v23, s17
	v_cndmask_b32_e64 v23, v23, v29, s17
	v_cndmask_b32_e64 v29, v0, v24, s17
	v_cndmask_b32_e64 v0, v24, v0, s17
	v_permlanex16_b32 v24, v32, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v34, s18, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v34, v36, 4, v36
	v_and_b32_e32 v25, 0x5040504, v25
	v_add_lshl_u32 v50, v3, v5, 1
	v_cndmask_b32_e64 v33, v48, v38, s17
	v_permlanex16_b32 v26, v26, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v27, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v21, s18, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v34, 0x7060706, v34
	v_permlanex16_b32 v20, v20, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v23, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s18, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v36, v24, v31, v25
	v_add_lshl_u32 v51, v3, v19, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v52, v3, v18, 1
	v_cndmask_b32_e64 v50, 0x80000000, v50, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v24, v24, v31, v34
	v_perm_b32 v31, v32, v33, v25
	v_perm_b32 v32, v32, v33, v34
	v_perm_b32 v33, v26, v35, v25
	v_perm_b32 v26, v26, v35, v34
	v_perm_b32 v35, v27, v28, v25
	v_perm_b32 v27, v27, v28, v34
	v_perm_b32 v28, v21, v30, v25
	v_perm_b32 v21, v21, v30, v34
	v_perm_b32 v30, v20, v37, v25
	v_perm_b32 v20, v20, v37, v34
	v_perm_b32 v37, v23, v22, v25
	v_perm_b32 v22, v23, v22, v34
	v_perm_b32 v23, v0, v29, v25
	v_mov_b16_e32 v25.l, v36.h
	v_mov_b16_e32 v25.h, v6.h
	v_cndmask_b32_e64 v51, 0x80000000, v51, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v36, v50, s[48:51], 0 offen
	v_add_lshl_u32 v36, v3, v17, 1
	v_cndmask_b32_e64 v50, 0x80000000, v52, s17
	buffer_store_b16 v25, v51, s[48:51], 0 offen
	v_add_lshl_u32 v25, v3, v16, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v6.l, v24.h
	v_cndmask_b32_e64 v36, 0x80000000, v36, s17
	buffer_store_b16 v24, v50, s[48:51], 0 offen
	v_add_lshl_u32 v24, v3, v15, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v0, v0, v29, v34
	v_cndmask_b32_e64 v25, 0x80000000, v25, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v29.h, v6.h
	v_mov_b16_e32 v34.l, v31.h
	v_mov_b16_e32 v34.h, v6.h
	v_mov_b16_e32 v38.h, v6.h
	v_mov_b16_e32 v39.h, v6.h
	v_mov_b16_e32 v40.h, v6.h
	v_mov_b16_e32 v41.h, v6.h
	v_mov_b16_e32 v42.h, v6.h
	v_mov_b16_e32 v43.h, v6.h
	v_mov_b16_e32 v44.h, v6.h
	v_mov_b16_e32 v45.h, v6.h
	v_mov_b16_e32 v46.h, v6.h
	v_mov_b16_e32 v47.h, v6.h
	v_mov_b16_e32 v48.h, v6.h
	v_mov_b16_e32 v49.h, v6.h
	buffer_store_b16 v6, v36, s[48:51], 0 offen
	v_add_lshl_u32 v6, v3, v14, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s17
	buffer_store_b16 v31, v25, s[48:51], 0 offen
	v_add_lshl_u32 v25, v3, v13, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v29.l, v32.h
	v_cndmask_b32_e64 v6, 0x80000000, v6, s17
	buffer_store_b16 v34, v24, s[48:51], 0 offen
	v_add_lshl_u32 v24, v3, v12, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v39.l, v33.h
	v_cndmask_b32_e64 v25, 0x80000000, v25, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v32, v6, s[48:51], 0 offen
	v_add_lshl_u32 v6, v3, v11, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s17
	buffer_store_b16 v29, v25, s[48:51], 0 offen
	v_add_lshl_u32 v25, v3, v10, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v38.l, v26.h
	v_cndmask_b32_e64 v6, 0x80000000, v6, s17
	buffer_store_b16 v33, v24, s[48:51], 0 offen
	v_add_lshl_u32 v24, v3, v9, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v41.l, v35.h
	v_cndmask_b32_e64 v25, 0x80000000, v25, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s5
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v39, v6, s[48:51], 0 offen
	v_add_lshl_u32 v6, v3, v8, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s17
	buffer_store_b16 v26, v25, s[48:51], 0 offen
	v_add_lshl_u32 v25, v3, v7, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s4
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v5, v1, v5, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s17
	buffer_store_b16 v38, v24, s[48:51], 0 offen
	v_add_lshl_u32 v24, v3, v4, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s3
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v3, v3, v2, 1
	v_cndmask_b32_e64 v25, 0x80000000, v25, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s2
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v35, v6, s[48:51], 0 offen
	v_cndmask_b32_e64 v6, 0x80000000, v24, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, s0, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v41, v25, s[48:51], 0 offen
	v_mov_b16_e32 v40.l, v27.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	buffer_store_b16 v27, v6, s[48:51], 0 offen
	v_add_lshl_u32 v6, v1, v19, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v43.l, v28.h
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v40, v3, s[48:51], 0 offen
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_add_lshl_u32 v3, v1, v18, 1
	buffer_store_b16 v28, v5, s[48:51], 0 offen
	v_add_lshl_u32 v5, v1, v17, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v43, v6, s[48:51], 0 offen
	v_add_lshl_u32 v6, v1, v16, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v42.l, v21.h
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v21, v3, s[48:51], 0 offen
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_add_lshl_u32 v3, v1, v15, 1
	buffer_store_b16 v42, v5, s[48:51], 0 offen
	v_add_lshl_u32 v5, v1, v14, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v30, v6, s[48:51], 0 offen
	v_add_lshl_u32 v6, v1, v13, 1
	v_mov_b16_e32 v45.l, v30.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v44.l, v20.h
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v45, v3, s[48:51], 0 offen
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_add_lshl_u32 v3, v1, v12, 1
	buffer_store_b16 v20, v5, s[48:51], 0 offen
	v_add_lshl_u32 v5, v1, v11, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v44, v6, s[48:51], 0 offen
	v_add_lshl_u32 v6, v1, v10, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v47.l, v37.h
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v37, v3, s[48:51], 0 offen
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_add_lshl_u32 v3, v1, v9, 1
	buffer_store_b16 v47, v5, s[48:51], 0 offen
	v_add_lshl_u32 v5, v1, v8, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s5
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v22, v6, s[48:51], 0 offen
	v_add_lshl_u32 v6, v1, v7, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s4
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v4, v1, v4, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_add_lshl_u32 v1, v1, v2, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s3
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v46.l, v22.h
	v_cndmask_b32_e64 v2, 0x80000000, v6, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s2
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v49.l, v23.h
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_mov_b16_e32 v48.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b16 v46, v3, s[48:51], 0 offen
	buffer_store_b16 v23, v5, s[48:51], 0 offen
	buffer_store_b16 v49, v2, s[48:51], 0 offen
	buffer_store_b16 v0, v4, s[48:51], 0 offen
	buffer_store_b16 v48, v1, s[48:51], 0 offen
	.loc	1 970 5                         ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 141
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.num_vgpr, 141
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.numbered_sgpr, 63
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11104
; TotalNumSgprs: 65
; NumVgprs: 141
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 65
; NumVGPRsForWavesPerEU: 141
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     65
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_maskk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     141
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
