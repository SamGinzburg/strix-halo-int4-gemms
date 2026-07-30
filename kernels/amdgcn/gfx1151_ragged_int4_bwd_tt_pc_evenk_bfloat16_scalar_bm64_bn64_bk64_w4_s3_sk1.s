	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[28:29], s[0:1], 0x30
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s9, s2
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v2, 64, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_lshrrev_b32_e32 v3, 2, v2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s28, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s29, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_lshr_b32 s6, s6, 26
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
	s_ashr_i32 s4, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s6, s5, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s6, s4
	.loc	1 998 20                        ; ragged.py:998:20
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s8, 0, s5
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
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
	s_mul_i32 s10, s7, s5
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s7, 1
	s_sub_i32 s11, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s7, s10, s7
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s7, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s10, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s7, s6
	.loc	1 998 20                        ; ragged.py:998:20
	s_xor_b32 s5, s5, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_f32_u32 s9, s7
	.loc	1 998 20                        ; ragged.py:998:20
	s_sub_i32 s30, s5, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s5, 0, s7
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s30, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s8, s2, s4
	.loc	1 1025 39                       ; ragged.py:1025:39
	s_mul_i32 s20, s30, s29
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s10, s8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v1, 15, v0
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s9
	s_mul_hi_u32 s2, s9, s5
	s_load_b64 s[4:5], s[0:1], 0x20
	s_add_i32 s9, s9, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s10, s9
	s_xor_b32 s9, s8, s6
	s_mul_i32 s11, s2, s7
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s10, s10, s11
	s_add_i32 s11, s2, 1
	s_sub_i32 s12, s10, s7
	s_cmp_ge_u32 s10, s7
	s_cselect_b32 s2, s11, s2
	s_cselect_b32 s10, s12, s10
	s_add_i32 s11, s2, 1
	s_cmp_ge_u32 s10, s7
	s_cselect_b32 s2, s11, s2
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_ashr_i32 s31, s30, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s2, s2, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s2, s9
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s6, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1001 17 is_stmt 0             ; ragged.py:1001:17
	s_sub_i32 s8, s8, s6
	.loc	1 1007 19 is_stmt 1             ; ragged.py:1007:19
	s_lshl_b64 s[6:7], s[30:31], 2
	.loc	1 1004 18                       ; ragged.py:1004:18
	s_lshl_b32 s31, s8, 6
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 1016 22                       ; ragged.py:1016:22
	s_lshl_b32 s36, s3, 5
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s4, s[4:5], 0x0
	s_mov_b32 s3, 0
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1008 26 is_stmt 0             ; ragged.py:1008:26
	s_lshr_b32 s5, s4, 31
	s_add_i32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s35, s4, 1
	.loc	1 1018 23 is_stmt 1             ; ragged.py:1018:23
	s_cmp_lt_i32 s36, s35
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1105 21                       ; ragged.py:1105:21
	s_add_i32 s33, s31, s20
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 21 is_stmt 0                ; ragged.py:0:21
	s_mov_b32 s3, -1
                                        ; implicit-def: $sgpr33
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[48:49], s[0:1], 0x28
	v_or_b32_e32 v37, v3, v1
	v_dual_mov_b32 v7, 0 :: v_dual_and_b32 v38, 32, v0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_mov_b32_e32 v52, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_lshl_b32 s34, s2, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x0
	s_load_b32 s21, s[0:1], 0x38
	.loc	1 1003 36 is_stmt 1             ; ragged.py:1003:36
	v_lshrrev_b32_e32 v3, 5, v0
	v_and_b32_e32 v4, 63, v0
	v_lshlrev_b32_e32 v1, 5, v1
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v5, s31, v3
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v8, s34, v4
	.loc	1 1003 36 is_stmt 0             ; ragged.py:1003:36
	v_or_b32_e32 v6, 28, v3
	v_or_b32_e32 v7, 60, v3
	s_add_i32 s33, s31, s20
	.loc	1 1004 18 is_stmt 1             ; ragged.py:1004:18
	v_or_b32_e32 v9, 4, v5
	v_or_b32_e32 v10, 8, v5
	v_or_b32_e32 v11, 12, v5
	v_or_b32_e32 v12, 16, v5
	v_or_b32_e32 v13, 20, v5
	v_or_b32_e32 v14, 24, v5
	v_or_b32_e32 v16, 32, v5
	v_or_b32_e32 v17, 36, v5
	v_or_b32_e32 v18, 40, v5
	v_or_b32_e32 v19, 44, v5
	v_or_b32_e32 v20, 48, v5
	v_or_b32_e32 v21, 52, v5
	v_or_b32_e32 v22, 56, v5
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s0, s29, v5
	.loc	1 1011 18                       ; ragged.py:1011:18
	v_lshrrev_b32_e32 v5, 6, v2
	v_and_b32_e32 v2, 31, v0
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s28, v8
	v_lshlrev_b32_e32 v8, 1, v0
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v15, s31, v6
	v_mul_lo_u32 v5, s28, v5
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[33:34], null, s21, v3, v[2:3]
	v_mad_u64_u32 v[34:35], null, s21, v6, v[2:3]
	v_and_b32_e32 v3, 24, v8
	v_lshlrev_b32_e32 v6, 4, v38
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v23, s31, v7
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s29, v9
	v_cmp_gt_i32_e64 s2, s29, v10
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_mad_u64_u32 v[35:36], null, s21, v7, v[2:3]
	v_or3_b32 v3, v1, v3, v6
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s3, s29, v11
	v_cmp_gt_i32_e64 s4, s29, v12
	v_or_b32_e32 v2, 0x380, v0
	v_or_b32_e32 v7, 0x780, v0
	v_xor_b32_e32 v6, 0x88, v0
	v_xor_b32_e32 v8, 0x110, v0
	v_xor_b32_e32 v9, 0x198, v0
	v_xor_b32_e32 v10, 8, v3
	v_xor_b32_e32 v11, 16, v3
	v_xor_b32_e32 v12, 24, v3
	v_mov_b32_e32 v1, 0
	v_cmp_gt_i32_e64 s5, s29, v13
	v_cmp_gt_i32_e64 s6, s29, v14
	v_cmp_gt_i32_e64 s7, s29, v15
	v_cmp_gt_i32_e64 s8, s29, v16
	v_cmp_gt_i32_e64 s9, s29, v17
	v_cmp_gt_i32_e64 s10, s29, v18
	v_cmp_gt_i32_e64 s11, s29, v19
	v_cmp_gt_i32_e64 s12, s29, v20
	v_cmp_gt_i32_e64 s13, s29, v21
	v_cmp_gt_i32_e64 s14, s29, v22
	v_cmp_gt_i32_e64 s15, s29, v23
	v_add_nc_u32_e32 v39, 0, v37
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_add3_u32 v36, v4, v5, s34
	v_add_nc_u32_e32 v40, 0, v0
	v_add_nc_u32_e32 v41, 0, v2
	v_add_nc_u32_e32 v42, 0, v7
	v_add_nc_u32_e32 v43, 0, v6
	v_dual_mov_b32 v13, v1 :: v_dual_add_nc_u32 v44, 0, v8
	v_add_nc_u32_e32 v45, 0, v9
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v46, 0, v3
	v_add_nc_u32_e32 v47, 0, v10
	v_dual_mov_b32 v17, v1 :: v_dual_add_nc_u32 v48, 0, v11
	v_dual_mov_b32 v14, v1 :: v_dual_add_nc_u32 v49, 0, v12
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s27, s27, 0xffff
	.loc	1 1021 39                       ; ragged.py:1021:39
	s_mul_i32 s37, s30, s21
	s_lshl_b32 s38, s28, 1
	s_lshl_b32 s39, s28, 2
	s_mul_i32 s40, s28, 6
	s_lshl_b32 s41, s28, 3
	s_mul_i32 s42, s28, 10
	s_mul_i32 s43, s28, 12
	s_mul_i32 s44, s28, 14
	s_lshl_b32 s45, s28, 4
	s_mul_i32 s46, s28, 18
	s_mul_i32 s47, s28, 20
	s_mul_i32 s50, s28, 22
	s_mul_i32 s51, s28, 24
	s_mul_i32 s52, s28, 26
	s_mul_i32 s53, s28, 28
	s_mul_i32 s54, s28, 30
	s_lshl_b32 s55, s21, 2
	s_lshl_b32 s56, s21, 3
	s_mul_i32 s57, s21, 12
	s_lshl_b32 s58, s21, 4
	s_mul_i32 s59, s21, 20
	s_mul_i32 s60, s21, 24
	s_lshl_b32 s61, s21, 5
	s_mul_i32 s62, s21, 36
	s_mul_i32 s63, s21, 40
	s_mul_i32 s64, s21, 44
	s_mul_i32 s65, s21, 48
	s_mul_i32 s66, s21, 52
	s_mul_i32 s67, s21, 56
	s_mul_i32 s68, s33, s21
	s_mov_b32 s20, s24
	s_mov_b32 s21, s25
	s_mov_b32 s24, s26
	s_mov_b32 s25, s27
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1029 42                       ; ragged.py:1029:42
	s_add_i32 s69, s36, s68
	.loc	1 1028 42                       ; ragged.py:1028:42
	s_add_i32 s70, s36, s37
	v_add_nc_u32_e32 v52, s69, v33
	v_mad_u64_u32 v[50:51], null, s70, s28, v[36:37]
	v_add_nc_u32_e32 v51, s69, v34
	v_add_nc_u32_e32 v53, s69, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v54, s55, v52
	v_add_nc_u32_e32 v55, s56, v52
	v_add_nc_u32_e32 v56, s57, v52
	v_add_nc_u32_e32 v57, s58, v52
	v_add_nc_u32_e32 v58, s59, v52
	v_add_nc_u32_e32 v59, s60, v52
	v_add_nc_u32_e32 v60, s61, v52
	v_add_nc_u32_e32 v61, s62, v52
	v_add_nc_u32_e32 v62, s63, v52
	v_add_nc_u32_e32 v63, s64, v52
	v_add_nc_u32_e32 v64, s65, v52
	v_add_nc_u32_e32 v65, s66, v52
	v_add_nc_u32_e32 v66, s67, v52
	v_add_nc_u32_e32 v67, s38, v50
	v_add_nc_u32_e32 v68, s39, v50
	v_add_nc_u32_e32 v69, s40, v50
	v_add_nc_u32_e32 v70, s41, v50
	v_add_nc_u32_e32 v71, s42, v50
	v_add_nc_u32_e32 v72, s43, v50
	v_add_nc_u32_e32 v73, s44, v50
	v_add_nc_u32_e32 v74, s45, v50
	v_add_nc_u32_e32 v75, s46, v50
	v_add_nc_u32_e32 v76, s47, v50
	v_add_nc_u32_e32 v77, s50, v50
	v_add_nc_u32_e32 v78, s51, v50
	v_add_nc_u32_e32 v79, s52, v50
	v_add_nc_u32_e32 v80, s53, v50
	v_add_nc_u32_e32 v81, s54, v50
	.loc	1 1029 34                       ; ragged.py:1029:34
	v_cndmask_b32_e64 v52, 0x80000000, v52, s0
	v_cndmask_b32_e64 v54, 0x80000000, v54, s1
	v_cndmask_b32_e64 v51, 0x80000000, v51, s7
	v_cndmask_b32_e64 v55, 0x80000000, v55, s2
	v_cndmask_b32_e64 v53, 0x80000000, v53, s15
	v_cndmask_b32_e64 v56, 0x80000000, v56, s3
	.loc	1 1028 34                       ; ragged.py:1028:34
	v_dual_cndmask_b32 v50, 0x80000000, v50 :: v_dual_cndmask_b32 v67, 0x80000000, v67
	.loc	1 1029 34                       ; ragged.py:1029:34
	v_cndmask_b32_e64 v57, 0x80000000, v57, s4
	v_cndmask_b32_e64 v58, 0x80000000, v58, s5
	v_cndmask_b32_e64 v59, 0x80000000, v59, s6
	v_cndmask_b32_e64 v60, 0x80000000, v60, s8
	v_cndmask_b32_e64 v61, 0x80000000, v61, s9
	v_cndmask_b32_e64 v62, 0x80000000, v62, s10
	v_cndmask_b32_e64 v63, 0x80000000, v63, s11
	v_cndmask_b32_e64 v64, 0x80000000, v64, s12
	v_cndmask_b32_e64 v65, 0x80000000, v65, s13
	v_cndmask_b32_e64 v66, 0x80000000, v66, s14
	.loc	1 1028 34                       ; ragged.py:1028:34
	v_dual_cndmask_b32 v68, 0x80000000, v68 :: v_dual_cndmask_b32 v69, 0x80000000, v69
	v_dual_cndmask_b32 v70, 0x80000000, v70 :: v_dual_cndmask_b32 v71, 0x80000000, v71
	v_dual_cndmask_b32 v72, 0x80000000, v72 :: v_dual_cndmask_b32 v73, 0x80000000, v73
	v_dual_cndmask_b32 v74, 0x80000000, v74 :: v_dual_cndmask_b32 v75, 0x80000000, v75
	v_dual_cndmask_b32 v76, 0x80000000, v76 :: v_dual_cndmask_b32 v77, 0x80000000, v77
	v_dual_cndmask_b32 v78, 0x80000000, v78 :: v_dual_cndmask_b32 v79, 0x80000000, v79
	v_dual_cndmask_b32 v80, 0x80000000, v80 :: v_dual_cndmask_b32 v81, 0x80000000, v81
	.loc	1 1029 34                       ; ragged.py:1029:34
	s_clause 0x2
	buffer_load_u8 v52, v52, s[24:27], 0 offen
	buffer_load_u8 v51, v51, s[24:27], 0 offen
	buffer_load_u8 v53, v53, s[24:27], 0 offen
	.loc	1 1028 34                       ; ragged.py:1028:34
	buffer_load_u8 v50, v50, s[20:23], 0 offen
	.loc	1 1029 34                       ; ragged.py:1029:34
	s_clause 0xb
	buffer_load_u8 v54, v54, s[24:27], 0 offen
	buffer_load_u8 v55, v55, s[24:27], 0 offen
	buffer_load_u8 v56, v56, s[24:27], 0 offen
	buffer_load_u8 v57, v57, s[24:27], 0 offen
	buffer_load_u8 v58, v58, s[24:27], 0 offen
	buffer_load_u8 v59, v59, s[24:27], 0 offen
	buffer_load_u8 v60, v60, s[24:27], 0 offen
	buffer_load_u8 v61, v61, s[24:27], 0 offen
	buffer_load_u8 v62, v62, s[24:27], 0 offen
	buffer_load_u8 v64, v64, s[24:27], 0 offen
	buffer_load_u8 v65, v65, s[24:27], 0 offen
	buffer_load_u8 v66, v66, s[24:27], 0 offen
	.loc	1 1028 34                       ; ragged.py:1028:34
	s_clause 0xe
	buffer_load_u8 v67, v67, s[20:23], 0 offen
	buffer_load_u8 v68, v68, s[20:23], 0 offen
	buffer_load_u8 v69, v69, s[20:23], 0 offen
	buffer_load_u8 v70, v70, s[20:23], 0 offen
	buffer_load_u8 v71, v71, s[20:23], 0 offen
	buffer_load_u8 v72, v72, s[20:23], 0 offen
	buffer_load_u8 v74, v74, s[20:23], 0 offen
	buffer_load_u8 v75, v75, s[20:23], 0 offen
	buffer_load_u8 v76, v76, s[20:23], 0 offen
	buffer_load_u8 v77, v77, s[20:23], 0 offen
	buffer_load_u8 v78, v78, s[20:23], 0 offen
	buffer_load_u8 v79, v79, s[20:23], 0 offen
	buffer_load_u8 v73, v73, s[20:23], 0 offen
	buffer_load_u8 v80, v80, s[20:23], 0 offen
	buffer_load_u8 v81, v81, s[20:23], 0 offen
	.loc	1 1029 34                       ; ragged.py:1029:34
	buffer_load_u8 v63, v63, s[24:27], 0 offen
	.loc	1 1028 34                       ; ragged.py:1028:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1040 21                       ; ragged.py:1040:21
	s_add_i32 s36, s36, 32
	.loc	1 1028 34                       ; ragged.py:1028:34
	s_waitcnt vmcnt(28)
	ds_store_b8 v40, v50
	s_waitcnt vmcnt(15)
	ds_store_b8 v40, v67 offset:128
	s_waitcnt vmcnt(14)
	ds_store_b8 v40, v68 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b8 v40, v69 offset:384
	s_waitcnt vmcnt(12)
	ds_store_b8 v40, v70 offset:512
	s_waitcnt vmcnt(11)
	ds_store_b8 v40, v71 offset:640
	s_waitcnt vmcnt(10)
	ds_store_b8 v40, v72 offset:768
	s_waitcnt vmcnt(9)
	ds_store_b8 v40, v74 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v40, v75 offset:1152
	s_waitcnt vmcnt(7)
	ds_store_b8 v40, v76 offset:1280
	s_waitcnt vmcnt(6)
	ds_store_b8 v40, v77 offset:1408
	s_waitcnt vmcnt(5)
	ds_store_b8 v40, v78 offset:1536
	s_waitcnt vmcnt(4)
	ds_store_b8 v40, v79 offset:1664
	s_waitcnt vmcnt(3)
	ds_store_b8 v41, v73
	s_waitcnt vmcnt(2)
	ds_store_b8 v40, v80 offset:1792
	s_waitcnt vmcnt(1)
	ds_store_b8 v42, v81
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1030 31                       ; ragged.py:1030:31
	ds_load_u8 v67, v39 offset:448
	ds_load_u8 v68, v39 offset:384
	ds_load_u8 v69, v39 offset:320
	ds_load_u8 v70, v39 offset:256
	ds_load_u8 v71, v39 offset:480
	ds_load_u8 v72, v39 offset:416
	ds_load_u8 v73, v39 offset:352
	ds_load_u8 v74, v39 offset:288
	ds_load_u8 v75, v39 offset:192
	ds_load_u8 v76, v39 offset:128
	ds_load_u8 v77, v39 offset:64
	ds_load_u8 v78, v39 offset:224
	ds_load_u8 v79, v39 offset:160
	ds_load_u8 v80, v39 offset:96
	ds_load_u8 v81, v39
	ds_load_u8 v82, v39 offset:32
	ds_load_u8 v83, v39 offset:704
	ds_load_u8 v84, v39 offset:640
	ds_load_u8 v85, v39 offset:576
	ds_load_u8 v86, v39 offset:512
	ds_load_u8 v87, v39 offset:736
	ds_load_u8 v88, v39 offset:672
	ds_load_u8 v89, v39 offset:608
	ds_load_u8 v90, v39 offset:544
	ds_load_u8 v91, v39 offset:960
	ds_load_u8 v92, v39 offset:896
	ds_load_u8 v93, v39 offset:832
	ds_load_u8 v94, v39 offset:768
	ds_load_u8 v95, v39 offset:992
	ds_load_u8 v96, v39 offset:928
	ds_load_u8 v97, v39 offset:864
	ds_load_u8 v98, v39 offset:800
	ds_load_u8 v99, v39 offset:1216
	ds_load_u8 v100, v39 offset:1152
	ds_load_u8 v101, v39 offset:1088
	ds_load_u8 v102, v39 offset:1024
	ds_load_u8 v103, v39 offset:1248
	ds_load_u8 v104, v39 offset:1184
	ds_load_u8 v105, v39 offset:1120
	ds_load_u8 v106, v39 offset:1056
	ds_load_u8 v107, v39 offset:1472
	ds_load_u8 v108, v39 offset:1408
	ds_load_u8 v109, v39 offset:1344
	ds_load_u8 v110, v39 offset:1280
	ds_load_u8 v111, v39 offset:1504
	ds_load_u8 v112, v39 offset:1440
	ds_load_u8 v113, v39 offset:1376
	ds_load_u8 v114, v39 offset:1312
	ds_load_u8 v115, v39 offset:1728
	ds_load_u8 v116, v39 offset:1664
	ds_load_u8 v117, v39 offset:1600
	ds_load_u8 v118, v39 offset:1536
	ds_load_u8 v119, v39 offset:1760
	ds_load_u8 v120, v39 offset:1696
	ds_load_u8 v121, v39 offset:1632
	ds_load_u8 v122, v39 offset:1568
	ds_load_u8 v123, v39 offset:1984
	ds_load_u8 v124, v39 offset:1920
	ds_load_u8 v125, v39 offset:1856
	ds_load_u8 v126, v39 offset:1792
	ds_load_u8 v127, v39 offset:2016
	ds_load_u8 v128, v39 offset:1952
	ds_load_u8 v129, v39 offset:1888
	ds_load_u8 v130, v39 offset:1824
	.loc	1 1029 34                       ; ragged.py:1029:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v40, v52
	ds_store_b8 v40, v57 offset:512
	ds_store_b8 v40, v60 offset:1024
	ds_store_b8 v40, v64 offset:1536
	ds_store_b8 v43, v54
	ds_store_b8 v43, v58 offset:512
	ds_store_b8 v43, v61 offset:1024
	ds_store_b8 v43, v65 offset:1536
	ds_store_b8 v44, v55
	ds_store_b8 v44, v59 offset:512
	ds_store_b8 v44, v62 offset:1024
	ds_store_b8 v44, v66 offset:1536
	ds_store_b8 v45, v56
	ds_store_b8 v45, v51 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v45, v63 offset:1024
	ds_store_b8 v45, v53 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[50:53], v46 offset1:2
	ds_load_2addr_stride64_b64 v[54:57], v47 offset1:2
	ds_load_2addr_stride64_b64 v[58:61], v48 offset1:2
	ds_load_2addr_stride64_b64 v[62:65], v49 offset1:2
	.loc	1 1030 31                       ; ragged.py:1030:31
	v_perm_b32 v66, v70, v69, 0xc0c0004
	v_perm_b32 v67, v68, v67, 0xc0c0004
	v_perm_b32 v68, v81, v77, 0xc0c0004
	v_perm_b32 v69, v76, v75, 0xc0c0004
	v_perm_b32 v70, v94, v93, 0xc0c0004
	v_perm_b32 v75, v92, v91, 0xc0c0004
	v_perm_b32 v74, v74, v73, 0xc0c0004
	v_perm_b32 v94, v72, v71, 0xc0c0004
	v_perm_b32 v80, v82, v80, 0xc0c0004
	v_perm_b32 v78, v79, v78, 0xc0c0004
	v_perm_b32 v76, v86, v85, 0xc0c0004
	v_perm_b32 v77, v84, v83, 0xc0c0004
	v_perm_b32 v79, v98, v97, 0xc0c0004
	v_perm_b32 v82, v96, v95, 0xc0c0004
	v_perm_b32 v89, v90, v89, 0xc0c0004
	v_perm_b32 v87, v88, v87, 0xc0c0004
	v_lshl_or_b32 v67, v67, 16, v66
	v_lshl_or_b32 v66, v69, 16, v68
	v_lshl_or_b32 v69, v75, 16, v70
	v_lshl_or_b32 v75, v94, 16, v74
	v_lshl_or_b32 v74, v78, 16, v80
	v_perm_b32 v81, v110, v109, 0xc0c0004
	v_perm_b32 v83, v108, v107, 0xc0c0004
	v_perm_b32 v84, v102, v101, 0xc0c0004
	v_perm_b32 v85, v100, v99, 0xc0c0004
	v_perm_b32 v88, v114, v113, 0xc0c0004
	v_perm_b32 v90, v112, v111, 0xc0c0004
	v_perm_b32 v95, v106, v105, 0xc0c0004
	v_perm_b32 v96, v104, v103, 0xc0c0004
	v_lshl_or_b32 v68, v77, 16, v76
	v_lshl_or_b32 v77, v82, 16, v79
	v_lshl_or_b32 v76, v87, 16, v89
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[50:51], v[66:67], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[52:53], v[66:67], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[50:51], v[74:75], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[52:53], v[74:75], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v86, v126, v125, 0xc0c0004
	v_perm_b32 v91, v124, v123, 0xc0c0004
	v_perm_b32 v92, v118, v117, 0xc0c0004
	v_perm_b32 v93, v116, v115, 0xc0c0004
	v_perm_b32 v97, v130, v129, 0xc0c0004
	v_perm_b32 v98, v128, v127, 0xc0c0004
	v_perm_b32 v99, v122, v121, 0xc0c0004
	v_perm_b32 v100, v120, v119, 0xc0c0004
	v_lshl_or_b32 v71, v83, 16, v81
	v_lshl_or_b32 v70, v85, 16, v84
	v_lshl_or_b32 v79, v90, 16, v88
	v_lshl_or_b32 v78, v96, 16, v95
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[54:55], v[68:69], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[56:57], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[54:55], v[76:77], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[56:57], v[76:77], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v73, v91, 16, v86
	v_lshl_or_b32 v72, v93, 16, v92
	v_lshl_or_b32 v51, v98, 16, v97
	v_lshl_or_b32 v50, v100, 16, v99
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[58:59], v[70:71], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[60:61], v[70:71], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[58:59], v[78:79], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[60:61], v[78:79], v[25:32] neg_lo:[1,1,0]
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_cmp_lt_i32 s36, s35
	.loc	1 1030 31                       ; ragged.py:1030:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[62:63], v[72:73], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[64:65], v[72:73], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[62:63], v[50:51], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[64:65], v[50:51], v[25:32] neg_lo:[1,1,0]
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v52, v1
	v_cvt_f32_i32_e32 v51, v2
	v_cvt_f32_i32_e32 v50, v3
	v_cvt_f32_i32_e32 v49, v4
	v_cvt_f32_i32_e32 v48, v5
	v_cvt_f32_i32_e32 v47, v6
	v_cvt_f32_i32_e32 v46, v7
	v_cvt_f32_i32_e32 v45, v8
	v_cvt_f32_i32_e32 v44, v9
	v_cvt_f32_i32_e32 v43, v10
	v_cvt_f32_i32_e32 v42, v11
	v_cvt_f32_i32_e32 v41, v12
	v_cvt_f32_i32_e32 v40, v13
	v_cvt_f32_i32_e32 v39, v14
	v_cvt_f32_i32_e32 v36, v15
	v_cvt_f32_i32_e32 v35, v16
	v_cvt_f32_i32_e32 v34, v17
	v_cvt_f32_i32_e32 v33, v18
	v_cvt_f32_i32_e32 v16, v19
	v_cvt_f32_i32_e32 v17, v20
	v_cvt_f32_i32_e32 v18, v21
	v_cvt_f32_i32_e32 v19, v22
	v_cvt_f32_i32_e32 v14, v23
	v_cvt_f32_i32_e32 v15, v24
	v_cvt_f32_i32_e32 v12, v25
	v_cvt_f32_i32_e32 v13, v26
	v_cvt_f32_i32_e32 v8, v27
	v_cvt_f32_i32_e32 v9, v28
	v_cvt_f32_i32_e32 v10, v29
	v_cvt_f32_i32_e32 v11, v30
	v_cvt_f32_i32_e32 v7, v31
	v_cvt_f32_i32_e32 v6, v32
.LBB0_7:                                ; %._crit_edge
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v1, 4, v0
	v_lshrrev_b32_e32 v2, 1, v38
	.loc	1 1003 18 is_stmt 0             ; ragged.py:1003:18
	v_or_b32_e32 v67, s34, v37
	.loc	1 1098 33 is_stmt 1             ; ragged.py:1098:33
	s_mul_i32 s0, s30, s28
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v62, 32, v37
	.loc	1 1098 21                       ; ragged.py:1098:21
	s_add_i32 s2, s34, s0
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_or_b32 v1, v1, 1, v2
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_add_lshl_u32 v68, s2, v37, 1
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s28, v67
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v66, s34, v62
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_add_lshl_u32 v69, s2, v62, 1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v60, 2, v1
	v_or_b32_e32 v2, 46, v1
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_cndmask_b32_e64 v67, 0x80000000, v68, s0
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v68, s31, v1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v3, 44, v1
	v_or_b32_e32 v4, 42, v1
	v_or_b32_e32 v5, 40, v1
	v_or_b32_e32 v20, 38, v1
	v_or_b32_e32 v21, 36, v1
	v_or_b32_e32 v22, 34, v1
	v_or_b32_e32 v29, 32, v1
	v_or_b32_e32 v30, 14, v1
	v_or_b32_e32 v31, 12, v1
	v_or_b32_e32 v38, 10, v1
	v_or_b32_e32 v56, 8, v1
	v_or_b32_e32 v58, 6, v1
	v_or_b32_e32 v59, 4, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v65, s31, v60
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v1, s33, v1, 1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s29, v68
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v60, s33, v60, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v64, s31, v59
	v_or_b32_e32 v63, s31, v58
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v59, s33, v59, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s29, v65
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v61, s31, v56
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v58, s33, v58, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v57, s31, v38
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v56, s33, v56, 1
	v_cndmask_b32_e64 v60, 0x80000000, v60, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s29, v64
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v55, s31, v31
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v38, s33, v38, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v54, s31, v30
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v31, s33, v31, 1
	v_cndmask_b32_e64 v59, 0x80000000, v59, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s29, v63
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s28, v66
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v53, s31, v29
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v30, s33, v30, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v32, s31, v22
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v58, 0x80000000, v58, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s29, v61
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_cndmask_b32_e32 v66, 0x80000000, v69, vcc_lo
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v29, s33, v29, 1
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s53, s17, 0xffff
	s_mov_b32 s55, 0x31027000
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v56, 0x80000000, v56, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s29, v57
	s_mov_b32 s54, 0x7ffffffe
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_mov_b32 s52, s16
	s_clause 0x1
	buffer_load_u16 v67, v67, s[52:55], 0 offen
	buffer_load_u16 v66, v66, s[52:55], 0 offen
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v38, 0x80000000, v38, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s29, v55
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_and_b32 s53, s19, 0xffff
	s_mov_b32 s52, s18
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v28, s31, v21
	v_or_b32_e32 v27, s31, v20
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v31, 0x80000000, v31, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s29, v54
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v21, s33, v21, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v26, s31, v5
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v20, s33, v20, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v25, s31, v4
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v30, 0x80000000, v30, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s29, v53
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_clause 0x7
	buffer_load_u16 v54, v1, s[52:55], 0 offen
	buffer_load_u16 v55, v60, s[52:55], 0 offen
	buffer_load_u16 v57, v59, s[52:55], 0 offen
	buffer_load_u16 v58, v58, s[52:55], 0 offen
	buffer_load_u16 v56, v56, s[52:55], 0 offen
	buffer_load_u16 v38, v38, s[52:55], 0 offen
	buffer_load_u16 v59, v31, s[52:55], 0 offen
	buffer_load_u16 v60, v30, s[52:55], 0 offen
	v_add_lshl_u32 v1, s33, v22, 1
	v_add_lshl_u32 v5, s33, v5, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v24, s31, v3
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v22, 0x80000000, v29, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s29, v32
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v4, s33, v4, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v23, s31, v2
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v3, s33, v3, 1
	v_add_lshl_u32 v2, s33, v2, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s29, v28
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s50, s54
	s_mov_b32 s51, s55
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s29, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v20, 0x80000000, v20, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s29, v26
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v5, 0x80000000, v5, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s29, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v4, 0x80000000, v4, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s29, v24
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s29, v23
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	s_clause 0x7
	buffer_load_u16 v53, v1, s[52:55], 0 offen
	buffer_load_u16 v61, v22, s[52:55], 0 offen
	buffer_load_u16 v63, v20, s[52:55], 0 offen
	buffer_load_u16 v64, v21, s[52:55], 0 offen
	buffer_load_u16 v65, v4, s[52:55], 0 offen
	buffer_load_u16 v68, v5, s[52:55], 0 offen
	buffer_load_u16 v69, v2, s[52:55], 0 offen
	buffer_load_u16 v70, v3, s[52:55], 0 offen
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_mul_i32 s1, s2, s29
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	v_mov_b16_e32 v20.h, 0
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_add_i32 s2, s1, s31
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_and_b32_e32 v0, 16, v0
	.loc	1 1003 36 is_stmt 1             ; ragged.py:1003:36
	v_and_b32_e32 v5, 24, v1
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mad_u64_u32 v[1:2], null, s29, v62, s[2:3]
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	v_mov_b16_e32 v73.h, v20.h
	v_mov_b16_e32 v71.h, v20.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1004 18 is_stmt 1             ; ragged.py:1004:18
	v_or_b32_e32 v62, s31, v5
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v72.h, v20.h
	v_mov_b16_e32 v75.h, v20.h
	v_mov_b16_e32 v77.h, v20.h
	.loc	1 1239 26 is_stmt 0             ; ragged.py:1239:26
	v_mad_u64_u32 v[3:4], null, s29, v37, s[2:3]
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s14, s29, v62
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v76.h, v20.h
	v_mov_b16_e32 v74.h, v20.h
	v_mov_b16_e32 v78.h, v20.h
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v55, 16, v55
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_lshlrev_b32_e32 v66, 16, v66
	v_lshlrev_b32_e32 v62, 16, v67
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v57, 16, v57
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v56, 16, v56
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v59, 16, v59
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v33, v33, v66
	v_mul_f32_e32 v51, v51, v62
	v_mul_f32_e32 v52, v52, v62
	v_mul_f32_e32 v48, v48, v62
	v_mul_f32_e32 v46, v46, v62
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v50, v50, v62 :: v_dual_mul_f32 v51, v51, v55
	v_mul_f32_e32 v13, v13, v66
	v_mul_f32_e32 v49, v49, v62
	v_mul_f32_e32 v47, v47, v62
	v_mul_f32_e32 v45, v45, v62
	v_mul_f32_e32 v44, v44, v62
	v_mul_f32_e32 v43, v43, v62
	v_mul_f32_e32 v42, v42, v62
	v_mul_f32_e32 v41, v41, v62
	v_mul_f32_e32 v40, v40, v62
	v_dual_mul_f32 v39, v39, v62 :: v_dual_mul_f32 v50, v50, v57
	v_mul_f32_e32 v16, v16, v66
	v_mul_f32_e32 v35, v35, v62
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v17, v17, v66 :: v_dual_mul_f32 v48, v48, v56
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s19, v51, v51
	v_cmp_o_f32_e64 s21, v50, v50
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v2, 39, v5
	v_or_b32_e32 v4, 38, v5
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s25, v48, v48
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v21, 37, v5
	v_or_b32_e32 v22, 36, v5
	v_or_b32_e32 v23, 35, v5
	v_or_b32_e32 v24, 34, v5
	v_or_b32_e32 v25, 33, v5
	v_or_b32_e32 v26, 32, v5
	v_or_b32_e32 v27, 7, v5
	v_or_b32_e32 v28, 6, v5
	v_or_b32_e32 v29, 5, v5
	v_or_b32_e32 v30, 4, v5
	v_or_b32_e32 v31, 3, v5
	v_or_b32_e32 v32, 2, v5
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v53, 16, v53
	v_lshlrev_b32_e32 v54, 16, v54
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v15, v15, v66
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v37, 1, v5
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v79, s31, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v13, v13, v53 :: v_dual_mul_f32 v52, v52, v54
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v36, v36, v62 :: v_dual_mul_f32 v33, v33, v55
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v62, 16, v64
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v34, v34, v66 :: v_dual_mul_f32 v43, v43, v53
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v64, 16, v68
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v55, v52, 16, 1
	v_mov_b16_e32 v71.l, v33.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v34, v34, v54
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_lshlrev_b32_e32 v54, 16, v58
	v_lshlrev_b32_e32 v58, 16, v60
	v_lshlrev_b32_e32 v60, 16, v61
	v_lshlrev_b32_e32 v61, 16, v63
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v9, v9, v66
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v49, v49, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v11, v11, v66 :: v_dual_mul_f32 v44, v44, v60
	v_dual_mul_f32 v18, v18, v66 :: v_dual_mul_f32 v9, v9, v61
	v_mul_f32_e32 v19, v19, v66
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v41, v41, v61
	v_mul_f32_e32 v16, v16, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v18, v18, v56 :: v_dual_lshlrev_b32 v63, 16, v65
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v12, v12, v66
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v47, v47, v38
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v72.l, v16.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v19, v19, v38 :: v_dual_mul_f32 v38, v46, v59
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v46, v52, v55, 0x7fff
	v_bfe_u32 v55, v49, 16, 1
	v_mov_b16_e32 v73.l, v18.h
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v65, 16, v69
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s17, v52, v52
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v17, v17, v54
	v_dual_mul_f32 v11, v11, v63 :: v_dual_mul_f32 v12, v12, v60
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v52, v51, 16, 1
	v_cmp_o_f32_e64 s22, v49, v49
	v_add3_u32 v49, v49, v55, 0x7fff
	v_and_b32_e32 v55, 1, v73
	v_mov_b16_e32 v20.l, v34.h
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v10, v10, v66
	v_dual_mul_f32 v8, v8, v66 :: v_dual_mul_f32 v35, v35, v65
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v54, v50, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v53, 1, v20
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v10, v10, v64
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v20.l, v17.h
	v_bfe_u32 v56, v48, 16, 1
	v_mov_b16_e32 v75.l, v12.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v42, v42, v62
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v51, v51, v52, 0x7fff
	v_and_b32_e32 v52, 1, v71
	v_bfe_u32 v57, v47, 16, 1
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v6, v6, v66
	v_dual_mul_f32 v7, v7, v66 :: v_dual_mul_f32 v40, v40, v64
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s18, v34, v34
	v_cmp_o_f32_e64 s26, v47, v47
	v_mov_b16_e32 v77.l, v10.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v8, v8, v62
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v34, v34, v53, 0x7fff
	v_add3_u32 v50, v50, v54, 0x7fff
	v_and_b32_e32 v53, 1, v20
	v_and_b32_e32 v54, 1, v72
	v_add3_u32 v48, v48, v56, 0x7fff
	v_add3_u32 v47, v47, v57, 0x7fff
	v_mov_b16_e32 v20.l, v19.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v15, v15, v58
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_and_b32_e32 v57, 1, v75
	v_bfe_u32 v62, v42, 16, 1
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v14, v14, v66 :: v_dual_mul_f32 v39, v39, v63
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v63, v41, 16, 1
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v66, 16, v70
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s38, v42, v42
	v_bfe_u32 v64, v40, 16, 1
	v_add3_u32 v42, v42, v62, 0x7fff
	v_cndmask_b16 v47.l, 0x7fff, v48.h, s25
	v_and_b32_e32 v48, 1, v20
	v_mov_b16_e32 v20.l, v15.h
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v80, s31, v4
	v_or_b32_e32 v81, s31, v21
	v_or_b32_e32 v82, s31, v22
	v_or_b32_e32 v83, s31, v23
	v_or_b32_e32 v84, s31, v24
	v_or_b32_e32 v85, s31, v25
	v_or_b32_e32 v86, s31, v26
	v_or_b32_e32 v87, s31, v27
	v_or_b32_e32 v88, s31, v28
	v_or_b32_e32 v89, s31, v29
	v_or_b32_e32 v90, s31, v30
	v_or_b32_e32 v91, s31, v31
	v_or_b32_e32 v92, s31, v32
	v_or_b32_e32 v93, s31, v37
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v6, v6, v65
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s39, v41, v41
	v_mov_b16_e32 v76.l, v8.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v45, v45, v58
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v58, v38, 16, 1
	v_bfe_u32 v65, v39, 16, 1
	v_add3_u32 v41, v41, v63, 0x7fff
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v7, v7, v66
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s42, v40, v40
	v_add3_u32 v40, v40, v64, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s38
	v_and_b32_e32 v42, 1, v20
	v_mov_b16_e32 v20.l, v13.h
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s29, v79
	v_cmp_gt_i32_e64 s2, s29, v80
	v_cmp_gt_i32_e64 s3, s29, v81
	v_cmp_gt_i32_e64 s4, s29, v82
	v_cmp_gt_i32_e64 s5, s29, v83
	v_cmp_gt_i32_e64 s6, s29, v84
	v_cmp_gt_i32_e64 s7, s29, v85
	v_cmp_gt_i32_e64 s8, s29, v86
	v_cmp_gt_i32_e64 s9, s29, v87
	v_cmp_gt_i32_e64 s10, s29, v88
	v_cmp_gt_i32_e64 s11, s29, v89
	v_cmp_gt_i32_e64 s12, s29, v90
	v_cmp_gt_i32_e64 s13, s29, v91
	v_cmp_gt_i32_e64 s15, s29, v92
	v_cmp_gt_i32_e64 s16, s29, v93
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v14, v14, v59
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s29, v38, v38
	v_cmp_o_f32_e64 s43, v39, v39
	v_add3_u32 v38, v38, v58, 0x7fff
	v_and_b32_e32 v58, 1, v76
	v_bfe_u32 v59, v45, 16, 1
	v_add3_u32 v39, v39, v65, 0x7fff
	v_cmp_o_f32_e64 s28, v18, v18
	v_add3_u32 v18, v18, v55, 0x7fff
	v_cndmask_b16 v39.l, 0x7fff, v40.h, s42
	v_and_b32_e32 v40, 1, v20
	v_mov_b16_e32 v20.l, v9.h
	v_cmp_o_f32_e64 s30, v45, v45
	v_add3_u32 v45, v45, v59, 0x7fff
	v_and_b32_e32 v59, 1, v77
	v_cmp_o_f32_e64 s41, v8, v8
	v_add3_u32 v8, v8, v58, 0x7fff
	v_cmp_o_f32_e64 s24, v16, v16
	v_mov_b16_e32 v74.l, v14.h
	v_add3_u32 v16, v16, v54, 0x7fff
	v_cndmask_b16 v8.l, 0x7fff, v18.h, s28
	v_and_b32_e32 v18, 1, v20
	v_mov_b16_e32 v20.l, v11.h
	v_cmp_o_f32_e64 s23, v17, v17
	v_add3_u32 v17, v17, v53, 0x7fff
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v36, v36, v66
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s27, v19, v19
	v_bfe_u32 v60, v44, 16, 1
	v_mov_b16_e32 v78.l, v7.h
	v_and_b32_e32 v56, 1, v74
	v_cndmask_b16 v17.l, 0x7fff, v16.h, s24
	v_add3_u32 v16, v19, v48, 0x7fff
	v_and_b32_e32 v19, 1, v20
	v_cmp_o_f32_e64 s20, v33, v33
	v_cmp_o_f32_e64 s33, v14, v14
	v_cmp_o_f32_e64 s34, v44, v44
	v_cmp_o_f32_e64 s36, v13, v13
	v_cmp_o_f32_e64 s37, v12, v12
	v_cmp_o_f32_e64 s40, v9, v9
	v_cmp_o_f32_e64 s44, v11, v11
	v_bfe_u32 v67, v35, 16, 1
	v_add3_u32 v44, v44, v60, 0x7fff
	v_and_b32_e32 v60, 1, v78
	v_add3_u32 v33, v33, v52, 0x7fff
	v_add3_u32 v14, v14, v56, 0x7fff
	v_add3_u32 v12, v12, v57, 0x7fff
	v_add3_u32 v13, v13, v40, 0x7fff
	v_add3_u32 v9, v9, v18, 0x7fff
	v_add3_u32 v11, v11, v19, 0x7fff
	v_mov_b16_e32 v20.l, v6.h
	v_cmp_o_f32_e64 s45, v10, v10
	v_add3_u32 v10, v10, v59, 0x7fff
	v_bfe_u32 v66, v36, 16, 1
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s17
	v_cndmask_b16 v46.h, 0x7fff, v51.h, s19
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s18
	v_cndmask_b16 v34.l, 0x7fff, v50.h, s21
	v_cndmask_b16 v34.h, 0x7fff, v49.h, s22
	v_cndmask_b16 v38.l, 0x7fff, v38.h, s29
	v_cndmask_b16 v38.h, 0x7fff, v45.h, s30
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s20
	v_cndmask_b16 v10.l, 0x7fff, v14.h, s33
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s37
	v_cndmask_b16 v14.l, 0x7fff, v8.h, s41
	v_cndmask_b16 v8.h, 0x7fff, v16.h, s27
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s36
	v_cndmask_b16 v14.h, 0x7fff, v9.h, s40
	v_cndmask_b16 v16.h, 0x7fff, v11.h, s44
	v_and_b32_e32 v9, 1, v20
	v_add3_u32 v11, v35, v67, 0x7fff
	v_cmp_o_f32_e64 s17, v35, v35
	v_add3_u32 v13, v7, v60, 0x7fff
	v_cmp_o_f32_e64 s19, v7, v7
	v_cmp_eq_u32_e64 s20, 0, v0
	v_cmp_o_f32_e64 s46, v36, v36
	v_add3_u32 v36, v36, v66, 0x7fff
	v_add3_u32 v9, v6, v9, 0x7fff
	v_cmp_o_f32_e64 s18, v6, v6
	v_cndmask_b16 v6.h, 0x7fff, v11.h, s17
	v_cndmask_b16 v0.l, 0x7fff, v13.h, s19
	v_cndmask_b32_e64 v11, v38, v34, s20
	v_cndmask_b32_e64 v13, v34, v38, s20
	v_mov_b32_e32 v34, 0x5410
	v_cndmask_b16 v6.l, 0x7fff, v36.h, s46
	v_mov_b32_e32 v35, 0x7632
	v_cndmask_b32_e64 v36, v8, v33, s20
	v_cndmask_b32_e64 v8, v33, v8, s20
	v_cndmask_b32_e64 v33, 0x1054, v34, s20
	v_cmp_o_f32_e64 s31, v15, v15
	v_bfe_u32 v61, v43, 16, 1
	v_add3_u32 v15, v15, v42, 0x7fff
	v_cndmask_b32_e64 v34, 0x3276, v35, s20
	v_lshl_or_b32 v33, v33, 8, v33
	v_cmp_o_f32_e64 s35, v43, v43
	v_add3_u32 v43, v43, v61, 0x7fff
	v_cndmask_b16 v47.h, 0x7fff, v47.h, s26
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s23
	v_cndmask_b16 v16.l, 0x7fff, v10.h, s45
	v_cndmask_b16 v10.h, 0x7fff, v15.h, s31
	v_cndmask_b16 v0.h, 0x7fff, v9.h, s18
	v_lshl_or_b32 v34, v34, 8, v34
	v_and_b32_e32 v33, 0x540054, v33
	v_cndmask_b16 v43.l, 0x7fff, v44.h, s34
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s35
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s39
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s43
	v_cndmask_b32_e64 v9, v46, v47, s20
	v_cndmask_b32_e64 v35, v10, v17, s20
	v_cndmask_b32_e64 v10, v17, v10, s20
	v_cndmask_b32_e64 v17, v16, v12, s20
	v_cndmask_b32_e64 v12, v12, v16, s20
	v_cndmask_b32_e64 v16, v0, v14, s20
	v_and_b32_e32 v34, 0x760076, v34
	v_cndmask_b32_e64 v0, v14, v0, s20
	v_lshl_or_b32 v14, v33, 4, v33
	s_mov_b32 s17, 0x76543210
	v_cndmask_b32_e64 v7, v47, v46, s20
	v_cndmask_b32_e64 v18, v43, v39, s20
	v_cndmask_b32_e64 v19, v6, v41, s20
	v_cndmask_b32_e64 v6, v41, v6, s20
	v_permlanex16_b32 v9, v9, s17, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v33, v34, 4, v34
	v_and_b32_e32 v14, 0x5040504, v14
	v_add_lshl_u32 v50, v3, v5, 1
	v_cndmask_b32_e64 v15, v39, v43, s20
	v_permlanex16_b32 v13, v13, s17, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s17, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v6, s17, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s17, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v33, 0x7060706, v33
	v_permlanex16_b32 v10, v10, s17, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s17, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s17, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v34, v9, v7, v14
	v_add_lshl_u32 v51, v3, v37, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v52, v3, v32, 1
	v_cndmask_b32_e64 v50, 0x80000000, v50, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v7, v9, v7, v33
	v_perm_b32 v9, v13, v11, v14
	v_perm_b32 v11, v13, v11, v33
	v_perm_b32 v13, v18, v15, v14
	v_perm_b32 v15, v18, v15, v33
	v_perm_b32 v18, v6, v19, v14
	v_perm_b32 v6, v6, v19, v33
	v_perm_b32 v19, v8, v36, v14
	v_perm_b32 v8, v8, v36, v33
	v_perm_b32 v36, v10, v35, v14
	v_perm_b32 v10, v10, v35, v33
	v_perm_b32 v35, v12, v17, v14
	v_perm_b32 v14, v0, v16, v14
	v_perm_b32 v0, v0, v16, v33
	v_mov_b16_e32 v16.l, v34.h
	v_mov_b16_e32 v16.h, v20.h
	v_cndmask_b32_e64 v51, 0x80000000, v51, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v34, v50, s[48:51], 0 offen
	v_cndmask_b32_e64 v50, 0x80000000, v52, s17
	v_add_lshl_u32 v34, v3, v31, 1
	buffer_store_b16 v16, v51, s[48:51], 0 offen
	v_add_lshl_u32 v16, v3, v30, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v20.l, v7.h
	buffer_store_b16 v7, v50, s[48:51], 0 offen
	v_add_lshl_u32 v7, v3, v29, 1
	v_cndmask_b32_e64 v34, 0x80000000, v34, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v12, v12, v17, v33
	v_cndmask_b32_e64 v16, 0x80000000, v16, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v33.l, v9.h
	v_mov_b16_e32 v33.h, v20.h
	v_cndmask_b32_e64 v7, 0x80000000, v7, s17
	v_mov_b16_e32 v17.h, v20.h
	v_mov_b16_e32 v38.h, v20.h
	v_mov_b16_e32 v39.h, v20.h
	v_mov_b16_e32 v40.h, v20.h
	v_mov_b16_e32 v41.h, v20.h
	v_mov_b16_e32 v42.h, v20.h
	v_mov_b16_e32 v43.h, v20.h
	v_mov_b16_e32 v44.h, v20.h
	v_mov_b16_e32 v45.h, v20.h
	v_mov_b16_e32 v46.h, v20.h
	v_mov_b16_e32 v47.h, v20.h
	v_mov_b16_e32 v48.h, v20.h
	v_mov_b16_e32 v49.h, v20.h
	buffer_store_b16 v20, v34, s[48:51], 0 offen
	v_add_lshl_u32 v20, v3, v28, 1
	buffer_store_b16 v9, v16, s[48:51], 0 offen
	v_add_lshl_u32 v9, v3, v27, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v33, v7, s[48:51], 0 offen
	v_add_lshl_u32 v7, v3, v26, 1
	v_cndmask_b32_e64 v16, 0x80000000, v20, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v17.l, v11.h
	v_cndmask_b32_e64 v9, 0x80000000, v9, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v11, v16, s[48:51], 0 offen
	v_cndmask_b32_e64 v7, 0x80000000, v7, s17
	v_add_lshl_u32 v11, v3, v25, 1
	buffer_store_b16 v17, v9, s[48:51], 0 offen
	v_add_lshl_u32 v9, v3, v24, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v13, v7, s[48:51], 0 offen
	v_add_lshl_u32 v7, v3, v23, 1
	v_mov_b16_e32 v39.l, v13.h
	v_cndmask_b32_e64 v11, 0x80000000, v11, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v38.l, v15.h
	v_cndmask_b32_e64 v9, 0x80000000, v9, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s5
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v39, v11, s[48:51], 0 offen
	v_cndmask_b32_e64 v7, 0x80000000, v7, s17
	v_add_lshl_u32 v11, v3, v22, 1
	buffer_store_b16 v15, v9, s[48:51], 0 offen
	v_add_lshl_u32 v9, v3, v21, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s4
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v38, v7, s[48:51], 0 offen
	v_add_lshl_u32 v7, v3, v4, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s3
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v41.l, v18.h
	v_cndmask_b32_e64 v9, 0x80000000, v9, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s2
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v3, v3, v2, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s17
	v_add_lshl_u32 v5, v1, v5, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, s0, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v40.l, v6.h
	s_clause 0x2
	buffer_store_b16 v18, v11, s[48:51], 0 offen
	buffer_store_b16 v41, v9, s[48:51], 0 offen
	buffer_store_b16 v6, v7, s[48:51], 0 offen
	v_add_lshl_u32 v6, v1, v37, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v43.l, v19.h
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v40, v3, s[48:51], 0 offen
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_add_lshl_u32 v3, v1, v32, 1
	buffer_store_b16 v19, v5, s[48:51], 0 offen
	v_add_lshl_u32 v5, v1, v31, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v43, v6, s[48:51], 0 offen
	v_add_lshl_u32 v6, v1, v30, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v42.l, v8.h
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v8, v3, s[48:51], 0 offen
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_add_lshl_u32 v3, v1, v29, 1
	buffer_store_b16 v42, v5, s[48:51], 0 offen
	v_add_lshl_u32 v5, v1, v28, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v36, v6, s[48:51], 0 offen
	v_add_lshl_u32 v6, v1, v27, 1
	v_mov_b16_e32 v45.l, v36.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v44.l, v10.h
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v45, v3, s[48:51], 0 offen
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_add_lshl_u32 v3, v1, v26, 1
	buffer_store_b16 v10, v5, s[48:51], 0 offen
	v_add_lshl_u32 v5, v1, v25, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v44, v6, s[48:51], 0 offen
	v_add_lshl_u32 v6, v1, v24, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v47.l, v35.h
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v35, v3, s[48:51], 0 offen
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_add_lshl_u32 v3, v1, v23, 1
	buffer_store_b16 v47, v5, s[48:51], 0 offen
	v_add_lshl_u32 v5, v1, v22, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s5
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v12, v6, s[48:51], 0 offen
	v_add_lshl_u32 v6, v1, v21, 1
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
	v_mov_b16_e32 v46.l, v12.h
	v_cndmask_b32_e64 v2, 0x80000000, v6, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s2
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v49.l, v14.h
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_mov_b16_e32 v48.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b16 v46, v3, s[48:51], 0 offen
	buffer_store_b16 v14, v5, s[48:51], 0 offen
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 131
		.amdhsa_next_free_sgpr 71
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 131
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 71
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8236
; TotalNumSgprs: 73
; NumVgprs: 131
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 16
; NumSGPRsForWavesPerEU: 73
; NumVGPRsForWavesPerEU: 131
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
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
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     73
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     131
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
