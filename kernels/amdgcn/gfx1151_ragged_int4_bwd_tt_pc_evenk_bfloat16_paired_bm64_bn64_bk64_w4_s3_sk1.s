	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s9, s2
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v51, 64, v0
	v_lshrrev_b32_e32 v49, 5, v0
	v_and_b32_e32 v52, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 63
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
	s_sub_i32 s28, s5, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s5, 0, s7
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s28, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s8, s2, s4
	.loc	1 1025 39                       ; ragged.py:1025:39
	s_mul_i32 s20, s28, s35
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s10, s8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v1, 2, v51
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
	s_ashr_i32 s29, s28, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s2, s2, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s2, s9
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s6, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1001 17 is_stmt 0             ; ragged.py:1001:17
	s_sub_i32 s33, s8, s6
	.loc	1 1007 19 is_stmt 1             ; ragged.py:1007:19
	s_lshl_b64 s[6:7], s[28:29], 2
	.loc	1 1004 18                       ; ragged.py:1004:18
	s_lshl_b32 s29, s33, 6
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 1016 22                       ; ragged.py:1016:22
	s_lshl_b32 s39, s3, 5
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
	s_ashr_i32 s38, s4, 1
	.loc	1 1018 23 is_stmt 1             ; ragged.py:1018:23
	s_cmp_lt_i32 s39, s38
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1105 21                       ; ragged.py:1105:21
	s_add_i32 s30, s29, s20
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 21 is_stmt 0                ; ragged.py:0:21
	s_mov_b32 s3, -1
                                        ; implicit-def: $sgpr30
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[36:37], s[0:1], 0x28
	v_or_b32_e32 v48, 4, v49
	v_or_b32_e32 v47, 8, v49
	v_or_b32_e32 v46, 12, v49
	v_or_b32_e32 v45, 16, v49
	v_or_b32_e32 v44, 20, v49
	v_or_b32_e32 v43, 24, v49
	v_or_b32_e32 v42, 28, v49
	v_or_b32_e32 v41, 32, v49
	v_or_b32_e32 v40, 36, v49
	v_or_b32_e32 v39, 40, v49
	v_or_b32_e32 v38, 44, v49
	v_or_b32_e32 v37, 48, v49
	v_or_b32_e32 v36, 52, v49
	v_or_b32_e32 v35, 56, v49
	v_or_b32_e32 v34, 60, v49
	v_or_b32_e32 v54, v1, v52
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v53, 32, v0
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v50, 31, v0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v23, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_lshl_b32 s31, s2, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x0
	s_load_b32 s21, s[0:1], 0x38
	.loc	1 1004 18 is_stmt 1             ; ragged.py:1004:18
	v_or_b32_e32 v2, s29, v49
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v1, 63, v0
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v3, s29, v48
	v_or_b32_e32 v5, s29, v47
	v_or_b32_e32 v6, s29, v46
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s0, s35, v2
	.loc	1 1011 18                       ; ragged.py:1011:18
	v_lshrrev_b32_e32 v2, 6, v51
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v4, s31, v1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s35, v3
	v_cmp_gt_i32_e64 s2, s35, v5
	v_cmp_gt_i32_e64 s3, s35, v6
	v_mul_lo_u32 v2, s34, v2
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v4
	v_lshlrev_b32_e32 v4, 1, v0
	s_add_i32 s30, s29, s20
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v7, s29, v45
	v_or_b32_e32 v8, s29, v44
	v_or_b32_e32 v9, s29, v43
	v_or_b32_e32 v10, s29, v42
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v3, s21, v49
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_add3_u32 v33, v1, v2, s31
	v_mov_b32_e32 v1, 0
	v_lshlrev_b32_e32 v5, 5, v52
	v_and_b32_e32 v4, 24, v4
	v_lshlrev_b32_e32 v6, 4, v53
	s_mul_i32 s20, s30, s21
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v11, s29, v41
	v_or_b32_e32 v12, s29, v40
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_add3_u32 v56, v50, v3, s20
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_or3_b32 v4, v5, v4, v6
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v13, s29, v39
	v_or_b32_e32 v14, s29, v38
	v_or_b32_e32 v15, s29, v37
	v_or_b32_e32 v16, s29, v36
	v_or_b32_e32 v17, s29, v35
	v_or_b32_e32 v18, s29, v34
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s4, s35, v7
	v_cmp_gt_i32_e64 s5, s35, v8
	v_cmp_gt_i32_e64 s6, s35, v9
	v_cmp_gt_i32_e64 s7, s35, v10
	v_cmp_gt_i32_e64 s8, s35, v11
	v_cmp_gt_i32_e64 s9, s35, v12
	v_or_b32_e32 v7, 0x380, v0
	v_or_b32_e32 v8, 0x780, v0
	v_xor_b32_e32 v5, 0x88, v0
	v_xor_b32_e32 v6, 0x110, v0
	v_xor_b32_e32 v9, 0x198, v0
	v_xor_b32_e32 v10, 8, v4
	v_xor_b32_e32 v11, 16, v4
	v_xor_b32_e32 v12, 24, v4
	v_cmp_gt_i32_e64 s10, s35, v13
	v_cmp_gt_i32_e64 s11, s35, v14
	v_cmp_gt_i32_e64 s12, s35, v15
	v_cmp_gt_i32_e64 s13, s35, v16
	v_cmp_gt_i32_e64 s14, s35, v17
	v_cmp_gt_i32_e64 s15, s35, v18
	v_add_nc_u32_e32 v55, 0, v54
	v_add_nc_u32_e32 v57, 0, v0
	v_add_nc_u32_e32 v58, 0, v7
	v_mov_b32_e32 v7, v1
	v_add_nc_u32_e32 v59, 0, v8
	v_mov_b32_e32 v8, v1
	v_add_nc_u32_e32 v60, 0, v5
	v_add_nc_u32_e32 v61, 0, v6
	v_add_nc_u32_e32 v62, 0, v9
	v_add_nc_u32_e32 v63, 0, v4
	v_dual_mov_b32 v13, v1 :: v_dual_add_nc_u32 v64, 0, v10
	v_dual_mov_b32 v14, v1 :: v_dual_add_nc_u32 v65, 0, v11
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v66, 0, v12
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s27, s27, 0xffff
	.loc	1 1021 39                       ; ragged.py:1021:39
	s_mul_i32 s40, s28, s21
	s_lshl_b32 s41, s34, 1
	s_lshl_b32 s42, s34, 2
	s_mul_i32 s43, s34, 6
	s_lshl_b32 s44, s34, 3
	s_mul_i32 s45, s34, 10
	s_mul_i32 s46, s34, 12
	s_mul_i32 s47, s34, 14
	s_lshl_b32 s48, s34, 4
	s_mul_i32 s49, s34, 18
	s_mul_i32 s50, s34, 20
	s_mul_i32 s51, s34, 22
	s_mul_i32 s52, s34, 24
	s_mul_i32 s53, s34, 26
	s_mul_i32 s54, s34, 28
	s_mul_i32 s55, s34, 30
	s_lshl_b32 s56, s21, 2
	s_lshl_b32 s57, s21, 3
	s_mul_i32 s58, s21, 12
	s_lshl_b32 s59, s21, 4
	s_mul_i32 s60, s21, 20
	s_mul_i32 s61, s21, 24
	s_mul_i32 s62, s21, 28
	s_lshl_b32 s63, s21, 5
	s_mul_i32 s64, s21, 36
	s_mul_i32 s65, s21, 40
	s_mul_i32 s66, s21, 44
	s_mul_i32 s67, s21, 48
	s_mul_i32 s68, s21, 52
	s_mul_i32 s69, s21, 56
	s_mul_i32 s70, s21, 60
	s_mov_b32 s20, s24
	s_mov_b32 s21, s25
	s_mov_b32 s24, s26
	s_mov_b32 s25, s27
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1028 42                       ; ragged.py:1028:42
	s_add_i32 s71, s39, s40
	v_add_nc_u32_e32 v69, s39, v56
	v_mad_u64_u32 v[67:68], null, s71, s34, v[33:34]
	.loc	1 1040 21                       ; ragged.py:1040:21
	s_add_i32 s39, s39, 32
	v_add_nc_u32_e32 v68, s56, v69
	v_add_nc_u32_e32 v70, s57, v69
	v_add_nc_u32_e32 v71, s58, v69
	v_add_nc_u32_e32 v72, s59, v69
	v_add_nc_u32_e32 v73, s60, v69
	v_add_nc_u32_e32 v74, s61, v69
	v_add_nc_u32_e32 v75, s62, v69
	v_add_nc_u32_e32 v76, s63, v69
	v_add_nc_u32_e32 v77, s64, v69
	v_add_nc_u32_e32 v78, s65, v69
	v_add_nc_u32_e32 v79, s66, v69
	v_add_nc_u32_e32 v80, s67, v69
	v_add_nc_u32_e32 v81, s68, v69
	v_add_nc_u32_e32 v82, s69, v69
	v_add_nc_u32_e32 v83, s70, v69
	v_add_nc_u32_e32 v84, s41, v67
	v_add_nc_u32_e32 v85, s42, v67
	v_add_nc_u32_e32 v86, s43, v67
	v_add_nc_u32_e32 v87, s44, v67
	v_add_nc_u32_e32 v88, s45, v67
	v_add_nc_u32_e32 v89, s46, v67
	v_add_nc_u32_e32 v90, s47, v67
	v_add_nc_u32_e32 v91, s48, v67
	v_add_nc_u32_e32 v92, s49, v67
	v_add_nc_u32_e32 v93, s50, v67
	v_add_nc_u32_e32 v94, s51, v67
	v_add_nc_u32_e32 v95, s52, v67
	v_add_nc_u32_e32 v96, s53, v67
	v_add_nc_u32_e32 v97, s54, v67
	v_add_nc_u32_e32 v98, s55, v67
	.loc	1 1029 34                       ; ragged.py:1029:34
	v_cndmask_b32_e64 v69, 0x80000000, v69, s0
	v_cndmask_b32_e64 v68, 0x80000000, v68, s1
	v_cndmask_b32_e64 v70, 0x80000000, v70, s2
	v_cndmask_b32_e64 v71, 0x80000000, v71, s3
	v_cndmask_b32_e64 v72, 0x80000000, v72, s4
	.loc	1 1028 34                       ; ragged.py:1028:34
	v_dual_cndmask_b32 v67, 0x80000000, v67 :: v_dual_cndmask_b32 v84, 0x80000000, v84
	.loc	1 1029 34                       ; ragged.py:1029:34
	v_cndmask_b32_e64 v73, 0x80000000, v73, s5
	v_cndmask_b32_e64 v74, 0x80000000, v74, s6
	v_cndmask_b32_e64 v75, 0x80000000, v75, s7
	v_cndmask_b32_e64 v76, 0x80000000, v76, s8
	v_cndmask_b32_e64 v77, 0x80000000, v77, s9
	v_cndmask_b32_e64 v78, 0x80000000, v78, s10
	v_cndmask_b32_e64 v79, 0x80000000, v79, s11
	v_cndmask_b32_e64 v80, 0x80000000, v80, s12
	v_cndmask_b32_e64 v81, 0x80000000, v81, s13
	v_cndmask_b32_e64 v82, 0x80000000, v82, s14
	v_cndmask_b32_e64 v83, 0x80000000, v83, s15
	.loc	1 1028 34                       ; ragged.py:1028:34
	v_dual_cndmask_b32 v85, 0x80000000, v85 :: v_dual_cndmask_b32 v86, 0x80000000, v86
	v_dual_cndmask_b32 v87, 0x80000000, v87 :: v_dual_cndmask_b32 v88, 0x80000000, v88
	v_dual_cndmask_b32 v89, 0x80000000, v89 :: v_dual_cndmask_b32 v90, 0x80000000, v90
	v_dual_cndmask_b32 v91, 0x80000000, v91 :: v_dual_cndmask_b32 v92, 0x80000000, v92
	v_dual_cndmask_b32 v93, 0x80000000, v93 :: v_dual_cndmask_b32 v94, 0x80000000, v94
	v_dual_cndmask_b32 v95, 0x80000000, v95 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	.loc	1 1029 34                       ; ragged.py:1029:34
	s_clause 0xe
	buffer_load_u8 v69, v69, s[24:27], 0 offen
	buffer_load_u8 v68, v68, s[24:27], 0 offen
	buffer_load_u8 v70, v70, s[24:27], 0 offen
	buffer_load_u8 v71, v71, s[24:27], 0 offen
	buffer_load_u8 v72, v72, s[24:27], 0 offen
	buffer_load_u8 v73, v73, s[24:27], 0 offen
	buffer_load_u8 v74, v74, s[24:27], 0 offen
	buffer_load_u8 v75, v75, s[24:27], 0 offen
	buffer_load_u8 v76, v76, s[24:27], 0 offen
	buffer_load_u8 v77, v77, s[24:27], 0 offen
	buffer_load_u8 v78, v78, s[24:27], 0 offen
	buffer_load_u8 v79, v79, s[24:27], 0 offen
	buffer_load_u8 v80, v80, s[24:27], 0 offen
	buffer_load_u8 v81, v81, s[24:27], 0 offen
	buffer_load_u8 v82, v82, s[24:27], 0 offen
	.loc	1 1028 34                       ; ragged.py:1028:34
	s_clause 0xf
	buffer_load_u8 v67, v67, s[20:23], 0 offen
	buffer_load_u8 v84, v84, s[20:23], 0 offen
	buffer_load_u8 v85, v85, s[20:23], 0 offen
	buffer_load_u8 v86, v86, s[20:23], 0 offen
	buffer_load_u8 v87, v87, s[20:23], 0 offen
	buffer_load_u8 v88, v88, s[20:23], 0 offen
	buffer_load_u8 v89, v89, s[20:23], 0 offen
	buffer_load_u8 v91, v91, s[20:23], 0 offen
	buffer_load_u8 v92, v92, s[20:23], 0 offen
	buffer_load_u8 v93, v93, s[20:23], 0 offen
	buffer_load_u8 v94, v94, s[20:23], 0 offen
	buffer_load_u8 v95, v95, s[20:23], 0 offen
	buffer_load_u8 v96, v96, s[20:23], 0 offen
	buffer_load_u8 v90, v90, s[20:23], 0 offen
	buffer_load_u8 v97, v97, s[20:23], 0 offen
	buffer_load_u8 v98, v98, s[20:23], 0 offen
	.loc	1 1029 34                       ; ragged.py:1029:34
	buffer_load_u8 v83, v83, s[24:27], 0 offen
	.loc	1 1028 34                       ; ragged.py:1028:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_cmp_lt_i32 s39, s38
	.loc	1 1028 34                       ; ragged.py:1028:34
	s_waitcnt vmcnt(16)
	ds_store_b8 v57, v67
	s_waitcnt vmcnt(15)
	ds_store_b8 v57, v84 offset:128
	s_waitcnt vmcnt(14)
	ds_store_b8 v57, v85 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b8 v57, v86 offset:384
	s_waitcnt vmcnt(12)
	ds_store_b8 v57, v87 offset:512
	s_waitcnt vmcnt(11)
	ds_store_b8 v57, v88 offset:640
	s_waitcnt vmcnt(10)
	ds_store_b8 v57, v89 offset:768
	s_waitcnt vmcnt(9)
	ds_store_b8 v57, v91 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v57, v92 offset:1152
	s_waitcnt vmcnt(7)
	ds_store_b8 v57, v93 offset:1280
	s_waitcnt vmcnt(6)
	ds_store_b8 v57, v94 offset:1408
	s_waitcnt vmcnt(5)
	ds_store_b8 v57, v95 offset:1536
	s_waitcnt vmcnt(4)
	ds_store_b8 v57, v96 offset:1664
	s_waitcnt vmcnt(3)
	ds_store_b8 v58, v90
	s_waitcnt vmcnt(2)
	ds_store_b8 v57, v97 offset:1792
	s_waitcnt vmcnt(1)
	ds_store_b8 v59, v98
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1030 31                       ; ragged.py:1030:31
	ds_load_u8 v84, v55 offset:448
	ds_load_u8 v85, v55 offset:384
	ds_load_u8 v86, v55 offset:320
	ds_load_u8 v87, v55 offset:256
	ds_load_u8 v88, v55 offset:480
	ds_load_u8 v89, v55 offset:416
	ds_load_u8 v90, v55 offset:352
	ds_load_u8 v91, v55 offset:288
	ds_load_u8 v92, v55 offset:192
	ds_load_u8 v93, v55 offset:128
	ds_load_u8 v94, v55 offset:64
	ds_load_u8 v95, v55 offset:224
	ds_load_u8 v96, v55 offset:160
	ds_load_u8 v97, v55 offset:96
	ds_load_u8 v98, v55
	ds_load_u8 v99, v55 offset:32
	ds_load_u8 v100, v55 offset:704
	ds_load_u8 v101, v55 offset:640
	ds_load_u8 v102, v55 offset:576
	ds_load_u8 v103, v55 offset:512
	ds_load_u8 v104, v55 offset:736
	ds_load_u8 v105, v55 offset:672
	ds_load_u8 v106, v55 offset:608
	ds_load_u8 v107, v55 offset:544
	ds_load_u8 v108, v55 offset:960
	ds_load_u8 v109, v55 offset:896
	ds_load_u8 v110, v55 offset:832
	ds_load_u8 v111, v55 offset:768
	ds_load_u8 v112, v55 offset:992
	ds_load_u8 v113, v55 offset:928
	ds_load_u8 v114, v55 offset:864
	ds_load_u8 v115, v55 offset:800
	ds_load_u8 v116, v55 offset:1216
	ds_load_u8 v117, v55 offset:1152
	ds_load_u8 v118, v55 offset:1088
	ds_load_u8 v119, v55 offset:1024
	ds_load_u8 v120, v55 offset:1248
	ds_load_u8 v121, v55 offset:1184
	ds_load_u8 v122, v55 offset:1120
	ds_load_u8 v123, v55 offset:1056
	ds_load_u8 v124, v55 offset:1472
	ds_load_u8 v125, v55 offset:1408
	ds_load_u8 v126, v55 offset:1344
	ds_load_u8 v127, v55 offset:1280
	ds_load_u8 v128, v55 offset:1504
	ds_load_u8 v129, v55 offset:1440
	ds_load_u8 v130, v55 offset:1376
	ds_load_u8 v131, v55 offset:1312
	ds_load_u8 v132, v55 offset:1728
	ds_load_u8 v133, v55 offset:1664
	ds_load_u8 v134, v55 offset:1600
	ds_load_u8 v135, v55 offset:1536
	ds_load_u8 v136, v55 offset:1760
	ds_load_u8 v137, v55 offset:1696
	ds_load_u8 v138, v55 offset:1632
	ds_load_u8 v139, v55 offset:1568
	ds_load_u8 v140, v55 offset:1984
	ds_load_u8 v141, v55 offset:1920
	ds_load_u8 v142, v55 offset:1856
	ds_load_u8 v143, v55 offset:1792
	ds_load_u8 v144, v55 offset:2016
	ds_load_u8 v145, v55 offset:1952
	ds_load_u8 v146, v55 offset:1888
	ds_load_u8 v147, v55 offset:1824
	.loc	1 1029 34                       ; ragged.py:1029:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v57, v69
	ds_store_b8 v57, v72 offset:512
	ds_store_b8 v57, v76 offset:1024
	ds_store_b8 v57, v80 offset:1536
	ds_store_b8 v60, v68
	ds_store_b8 v60, v73 offset:512
	ds_store_b8 v60, v77 offset:1024
	ds_store_b8 v60, v81 offset:1536
	ds_store_b8 v61, v70
	ds_store_b8 v61, v74 offset:512
	ds_store_b8 v61, v78 offset:1024
	ds_store_b8 v61, v82 offset:1536
	ds_store_b8 v62, v71
	ds_store_b8 v62, v75 offset:512
	ds_store_b8 v62, v79 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v62, v83 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[67:70], v63 offset1:2
	ds_load_2addr_stride64_b64 v[71:74], v64 offset1:2
	ds_load_2addr_stride64_b64 v[75:78], v65 offset1:2
	ds_load_2addr_stride64_b64 v[79:82], v66 offset1:2
	.loc	1 1030 31                       ; ragged.py:1030:31
	v_perm_b32 v83, v87, v86, 0xc0c0004
	v_perm_b32 v84, v85, v84, 0xc0c0004
	v_perm_b32 v85, v98, v94, 0xc0c0004
	v_perm_b32 v86, v93, v92, 0xc0c0004
	v_perm_b32 v87, v111, v110, 0xc0c0004
	v_perm_b32 v92, v109, v108, 0xc0c0004
	v_perm_b32 v91, v91, v90, 0xc0c0004
	v_perm_b32 v111, v89, v88, 0xc0c0004
	v_perm_b32 v97, v99, v97, 0xc0c0004
	v_perm_b32 v95, v96, v95, 0xc0c0004
	v_perm_b32 v93, v103, v102, 0xc0c0004
	v_perm_b32 v94, v101, v100, 0xc0c0004
	v_perm_b32 v96, v115, v114, 0xc0c0004
	v_perm_b32 v99, v113, v112, 0xc0c0004
	v_perm_b32 v106, v107, v106, 0xc0c0004
	v_perm_b32 v104, v105, v104, 0xc0c0004
	v_lshl_or_b32 v84, v84, 16, v83
	v_lshl_or_b32 v83, v86, 16, v85
	v_lshl_or_b32 v86, v92, 16, v87
	v_lshl_or_b32 v92, v111, 16, v91
	v_lshl_or_b32 v91, v95, 16, v97
	v_perm_b32 v98, v127, v126, 0xc0c0004
	v_perm_b32 v100, v125, v124, 0xc0c0004
	v_perm_b32 v101, v119, v118, 0xc0c0004
	v_perm_b32 v102, v117, v116, 0xc0c0004
	v_perm_b32 v105, v131, v130, 0xc0c0004
	v_perm_b32 v107, v129, v128, 0xc0c0004
	v_perm_b32 v112, v123, v122, 0xc0c0004
	v_perm_b32 v113, v121, v120, 0xc0c0004
	v_lshl_or_b32 v85, v94, 16, v93
	v_lshl_or_b32 v94, v99, 16, v96
	v_lshl_or_b32 v93, v104, 16, v106
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[67:68], v[83:84], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[69:70], v[83:84], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[91:92], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[69:70], v[91:92], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v103, v143, v142, 0xc0c0004
	v_perm_b32 v108, v141, v140, 0xc0c0004
	v_perm_b32 v109, v135, v134, 0xc0c0004
	v_perm_b32 v110, v133, v132, 0xc0c0004
	v_perm_b32 v114, v147, v146, 0xc0c0004
	v_perm_b32 v115, v145, v144, 0xc0c0004
	v_perm_b32 v116, v139, v138, 0xc0c0004
	v_perm_b32 v117, v137, v136, 0xc0c0004
	v_lshl_or_b32 v88, v100, 16, v98
	v_lshl_or_b32 v87, v102, 16, v101
	v_lshl_or_b32 v96, v107, 16, v105
	v_lshl_or_b32 v95, v113, 16, v112
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[71:72], v[85:86], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[85:86], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[71:72], v[93:94], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[93:94], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v90, v108, 16, v103
	v_lshl_or_b32 v89, v110, 16, v109
	v_lshl_or_b32 v68, v115, 16, v114
	v_lshl_or_b32 v67, v117, 16, v116
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[75:76], v[87:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[77:78], v[87:88], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[75:76], v[95:96], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[77:78], v[95:96], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[79:80], v[89:90], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[89:90], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[79:80], v[67:68], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[67:68], v[17:24] neg_lo:[1,1,0]
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v33, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v1, v25
	v_cvt_f32_i32_e32 v25, v2
	v_cvt_f32_i32_e32 v2, v26
	v_cvt_f32_i32_e32 v26, v3
	v_cvt_f32_i32_e32 v3, v27
	v_cvt_f32_i32_e32 v27, v4
	v_cvt_f32_i32_e32 v4, v28
	v_cvt_f32_i32_e32 v28, v5
	v_cvt_f32_i32_e32 v5, v29
	v_cvt_f32_i32_e32 v29, v6
	v_cvt_f32_i32_e32 v6, v30
	v_cvt_f32_i32_e32 v30, v7
	v_cvt_f32_i32_e32 v7, v31
	v_cvt_f32_i32_e32 v31, v8
	v_cvt_f32_i32_e32 v8, v32
	v_cvt_f32_i32_e32 v32, v9
	v_cvt_f32_i32_e32 v9, v17
	v_cvt_f32_i32_e32 v17, v10
	v_cvt_f32_i32_e32 v10, v18
	v_cvt_f32_i32_e32 v18, v11
	v_cvt_f32_i32_e32 v11, v19
	v_cvt_f32_i32_e32 v19, v12
	v_cvt_f32_i32_e32 v12, v20
	v_cvt_f32_i32_e32 v20, v13
	v_cvt_f32_i32_e32 v13, v21
	v_cvt_f32_i32_e32 v21, v14
	v_cvt_f32_i32_e32 v14, v22
	v_cvt_f32_i32_e32 v22, v15
	v_cvt_f32_i32_e32 v15, v23
	v_cvt_f32_i32_e32 v23, v16
	v_cvt_f32_i32_e32 v16, v24
.LBB0_7:                                ; %Flow190
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v24, 4, v0
	v_lshrrev_b32_e32 v56, 1, v53
	.loc	1 1003 18 is_stmt 0             ; ragged.py:1003:18
	v_or_b32_e32 v72, s31, v54
	.loc	1 1098 33 is_stmt 1             ; ragged.py:1098:33
	s_mul_i32 s38, s28, s34
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s1, s17, 0xffff
	.loc	1 1098 21                       ; ragged.py:1098:21
	s_add_i32 s0, s31, s38
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_or_b32 v24, v24, 1, v56
	v_or_b32_e32 v56, 32, v54
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_add_lshl_u32 v54, s0, v54, 1
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v72
	s_mov_b32 s3, 0x31027000
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v57, 2, v24
	.loc	1 1003 18 is_stmt 0             ; ragged.py:1003:18
	v_or_b32_e32 v73, s31, v56
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v59, 6, v24
	.loc	1 1004 18 is_stmt 1             ; ragged.py:1004:18
	v_or_b32_e32 v74, s29, v24
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_add_lshl_u32 v56, s0, v56, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v75, s29, v57
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v57, s30, v57, 1
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v73
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v58, 4, v24
	v_or_b32_e32 v60, 8, v24
	v_or_b32_e32 v61, 10, v24
	v_or_b32_e32 v62, 12, v24
	v_or_b32_e32 v63, 14, v24
	v_or_b32_e32 v64, 32, v24
	v_or_b32_e32 v65, 34, v24
	v_or_b32_e32 v66, 36, v24
	v_or_b32_e32 v67, 38, v24
	v_or_b32_e32 v68, 40, v24
	v_or_b32_e32 v69, 42, v24
	v_or_b32_e32 v70, 44, v24
	v_or_b32_e32 v71, 46, v24
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v77, s29, v59
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v24, s30, v24, 1
	v_add_lshl_u32 v59, s30, v59, 1
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_cndmask_b32_e32 v72, 0x80000000, v56, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v74
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v76, s29, v58
	v_or_b32_e32 v79, s29, v61
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v61, s30, v61, 1
	v_add_lshl_u32 v58, s30, v58, 1
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v75
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v81, s29, v63
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v63, s30, v63, 1
	s_mov_b32 s2, 0x7ffffffe
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_mov_b32 s0, s16
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v76
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v78, s29, v60
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v60, s30, v60, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v80, s29, v62
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v62, s30, v62, 1
	v_cndmask_b32_e32 v58, 0x80000000, v58, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v77
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v82, s29, v64
	v_or_b32_e32 v83, s29, v65
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v64, s30, v64, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v84, s29, v66
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v59, 0x80000000, v59, vcc_lo
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_clause 0x1
	buffer_load_u16 v56, v54, s[0:3], 0 offen
	buffer_load_u16 v54, v72, s[0:3], 0 offen
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v78
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_and_b32 s1, s19, 0xffff
	s_mov_b32 s0, s18
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v85, s29, v67
	v_or_b32_e32 v86, s29, v68
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v60, 0x80000000, v60, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v79
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v87, s29, v69
	v_or_b32_e32 v88, s29, v70
	v_or_b32_e32 v73, s29, v71
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_dual_cndmask_b32 v61, 0x80000000, v61 :: v_dual_lshlrev_b32 v74, 2, v52
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v80
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v62, 0x80000000, v62, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v81
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	s_clause 0x7
	buffer_load_u16 v72, v24, s[0:3], 0 offen
	buffer_load_u16 v57, v57, s[0:3], 0 offen
	buffer_load_u16 v58, v58, s[0:3], 0 offen
	buffer_load_u16 v59, v59, s[0:3], 0 offen
	buffer_load_u16 v60, v60, s[0:3], 0 offen
	buffer_load_u16 v61, v61, s[0:3], 0 offen
	buffer_load_u16 v62, v62, s[0:3], 0 offen
	buffer_load_u16 v63, v63, s[0:3], 0 offen
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v82
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v24, s30, v65, 1
	v_add_lshl_u32 v65, s30, v66, 1
	v_add_lshl_u32 v66, s30, v67, 1
	v_add_lshl_u32 v67, s30, v68, 1
	v_add_lshl_u32 v68, s30, v69, 1
	v_add_lshl_u32 v69, s30, v70, 1
	v_cndmask_b32_e32 v64, 0x80000000, v64, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v83
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v70, s30, v71, 1
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v84
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v85
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v86
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v87
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v88
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v73
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshlrev_b32_e32 v73, 2, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v52, v52, 8, v73
	v_xor_b32_e32 v52, v52, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v51, v51, 1, v52
	v_xad_u32 v94, 0x1040, v51, 0
	v_xad_u32 v87, v51, 4, 0
	v_xad_u32 v95, 0x1044, v51, 0
	v_xad_u32 v88, v51, 8, 0
	v_xad_u32 v96, 0x1048, v51, 0
	v_xad_u32 v89, v51, 12, 0
	v_xad_u32 v90, v51, 16, 0
	v_xad_u32 v91, v51, 20, 0
	v_xad_u32 v97, 0x104c, v51, 0
	v_xad_u32 v98, 0x1050, v51, 0
	v_xad_u32 v99, 0x1054, v51, 0
	v_xad_u32 v92, v51, 24, 0
	v_xad_u32 v100, 0x1058, v51, 0
	v_xad_u32 v93, v51, 28, 0
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v56, 16, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v27, v27, v56
	v_and_b32_e32 v55, 0x60, v0
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_bfe_i32 v0, v0, 4, 1
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v33, v33, v56
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshrrev_b32_e32 v75, 3, v55
	v_lshl_or_b32 v55, v55, 3, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v55, v55, v75
	v_and_or_b32 v0, 0x1040, v0, v55
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_dual_cndmask_b32 v70, 0x80000000, v70 :: v_dual_add_nc_u32 v55, 0, v51
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xad_u32 v51, 0x105c, v51, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v101, 0, v0
	v_xad_u32 v102, v0, 64, 0
	v_xad_u32 v103, 0x410, v0, 0
	v_xad_u32 v104, 0x450, v0, 0
	v_xad_u32 v105, 0x820, v0, 0
	v_xad_u32 v106, 0x860, v0, 0
	v_xad_u32 v107, 0xc30, v0, 0
	v_xad_u32 v108, 0xc70, v0, 0
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v0, 16, v54
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v54, 16, v72
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v4, v4, v0
	v_mul_f32_e32 v5, v5, v0
	v_mul_f32_e32 v6, v6, v0
	v_mul_f32_e32 v1, v1, v0
	v_mul_f32_e32 v10, v10, v0
	v_mul_f32_e32 v7, v7, v0
	v_mul_f32_e32 v14, v14, v0
	v_mul_f32_e32 v13, v13, v0
	v_mul_f32_e32 v8, v8, v0
	v_mul_f32_e32 v3, v3, v0
	v_mul_f32_e32 v15, v15, v0
	v_mul_f32_e32 v12, v12, v0
	v_mul_f32_e32 v9, v9, v0
	v_dual_mul_f32 v2, v2, v0 :: v_dual_mul_f32 v33, v33, v54
	v_mul_f32_e32 v25, v25, v56
	v_mul_f32_e32 v20, v20, v56
	v_mul_f32_e32 v11, v11, v0
	v_mul_f32_e32 v0, v16, v0
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v16, 16, v57
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v57, 16, v59
	s_clause 0x7
	buffer_load_u16 v64, v64, s[0:3], 0 offen
	buffer_load_u16 v71, v24, s[0:3], 0 offen
	buffer_load_u16 v65, v65, s[0:3], 0 offen
	buffer_load_u16 v66, v66, s[0:3], 0 offen
	buffer_load_u16 v67, v67, s[0:3], 0 offen
	buffer_load_u16 v68, v68, s[0:3], 0 offen
	buffer_load_u16 v69, v69, s[0:3], 0 offen
	buffer_load_u16 v70, v70, s[0:3], 0 offen
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_mov_b16_e32 v24.h, 0
	.loc	1 1102 17                       ; ragged.py:1102:17
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v26, v26, v56 :: v_dual_lshlrev_b32 v59, 16, v61
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v28, v28, v56 :: v_dual_lshlrev_b32 v61, 16, v63
	v_mul_f32_e32 v29, v29, v56
	v_mul_f32_e32 v30, v30, v56
	v_mul_f32_e32 v31, v31, v56
	v_mul_f32_e32 v32, v32, v56
	v_mul_f32_e32 v17, v17, v56
	v_mul_f32_e32 v18, v18, v56
	v_mul_f32_e32 v19, v19, v56
	v_mul_f32_e32 v21, v21, v56
	v_mul_f32_e32 v22, v22, v56
	v_dual_mul_f32 v23, v23, v56 :: v_dual_lshlrev_b32 v56, 16, v58
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_lshlrev_b32_e32 v58, 16, v60
	v_lshlrev_b32_e32 v60, 16, v62
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_mov_b16_e32 v85.h, v24.h
	v_mov_b16_e32 v77.h, v24.h
	v_mov_b16_e32 v82.h, v24.h
	v_mov_b16_e32 v73.h, v24.h
	v_mov_b16_e32 v53.h, v24.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v25, v25, v16 :: v_dual_mul_f32 v6, v6, v59
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_mov_b16_e32 v79.h, v24.h
	v_mov_b16_e32 v76.h, v24.h
	v_mov_b16_e32 v78.h, v24.h
	v_mov_b16_e32 v76.l, v33.h
	v_mov_b16_e32 v52.h, v24.h
	v_cmp_o_f32_e64 s0, v33, v33
	v_mov_b16_e32 v77.l, v25.h
	v_mov_b16_e32 v80.h, v24.h
	v_mov_b16_e32 v83.h, v24.h
	v_mov_b16_e32 v75.h, v24.h
	v_mov_b16_e32 v84.h, v24.h
	v_mov_b16_e32 v81.h, v24.h
	v_mov_b16_e32 v86.h, v24.h
	v_mov_b16_e32 v74.h, v24.h
	v_cmp_o_f32_e64 s9, v6, v6
	.loc	1 1228 34                       ; ragged.py:1228:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v62, 16, v64
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v63, 16, v71
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v64, 16, v65
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v65, 16, v66
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v66, 16, v67
	.loc	1 1109 17                       ; ragged.py:1109:17
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v18, v18, v64 :: v_dual_lshlrev_b32 v67, 16, v69
	v_dual_mul_f32 v17, v17, v63 :: v_dual_mul_f32 v4, v4, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v15, v15, v67 :: v_dual_mul_f32 v12, v12, v65
	v_dual_mul_f32 v9, v9, v62 :: v_dual_mul_f32 v2, v2, v16
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_mov_b16_e32 v53.l, v18.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v16, v26, v56
	v_dual_mul_f32 v26, v27, v57 :: v_dual_mul_f32 v27, v28, v58
	v_dual_mul_f32 v28, v29, v59 :: v_dual_mul_f32 v29, v30, v60
	v_dual_mul_f32 v30, v31, v61 :: v_dual_mul_f32 v31, v32, v62
	v_dual_mul_f32 v1, v1, v54 :: v_dual_lshlrev_b32 v54, 16, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_mov_b16_e32 v79.l, v26.h
	v_mov_b16_e32 v73.l, v30.h
	v_and_b32_e32 v53, 1, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v24.l, v1.h
	v_mov_b16_e32 v78.l, v16.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v14, v14, v54 :: v_dual_and_b32 v57, 1, v79
	v_dual_mul_f32 v13, v13, v66 :: v_dual_mul_f32 v8, v8, v61
	v_dual_mul_f32 v3, v3, v56 :: v_dual_and_b32 v56, 1, v78
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_and_b32_e32 v32, 1, v24
	v_and_b32_e32 v61, 1, v73
	v_mov_b16_e32 v24.l, v2.h
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v21, v21, v54 :: v_dual_and_b32 v54, 1, v76
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_add3_u32 v1, v1, v32, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v32, 1, v24
	v_mov_b16_e32 v24.l, v3.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v5, v5, v58
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cmp_o_f32_e64 s1, v2, v2
	v_mov_b16_e32 v52.l, v21.h
	v_add3_u32 v33, v33, v54, 0x7fff
	v_add3_u32 v2, v2, v32, 0x7fff
	v_and_b32_e32 v32, 1, v24
	v_mov_b16_e32 v24.l, v4.h
	v_and_b32_e32 v52, 1, v52
	v_cndmask_b16 v1.l, 0x7fff, v33.h, s0
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v10, v10, v63
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cmp_o_f32_e64 s4, v16, v16
	v_and_b32_e32 v33, 1, v24
	v_mov_b16_e32 v24.l, v5.h
	v_mov_b16_e32 v80.l, v27.h
	v_mov_b16_e32 v83.l, v31.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v7, v7, v60
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cmp_o_f32_e64 s26, v21, v21
	v_and_b32_e32 v54, 1, v77
	v_add3_u32 v16, v16, v56, 0x7fff
	v_add3_u32 v21, v21, v52, 0x7fff
	v_and_b32_e32 v52, 1, v24
	v_mov_b16_e32 v24.l, v6.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v20, v20, v66
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cmp_o_f32_e64 s3, v3, v3
	v_add3_u32 v3, v3, v32, 0x7fff
	v_cmp_o_f32_e64 s2, v25, v25
	v_and_b32_e32 v58, 1, v80
	v_and_b32_e32 v62, 1, v83
	v_add3_u32 v25, v25, v54, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v16.h, s4
	v_and_b32_e32 v16, 1, v24
	v_mov_b16_e32 v24.l, v7.h
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v68, 16, v70
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v22, v22, v67
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_mov_b16_e32 v85.l, v20.h
	v_cmp_o_f32_e64 s8, v27, v27
	v_add3_u32 v27, v27, v58, 0x7fff
	v_cndmask_b16 v2.l, 0x7fff, v25.h, s2
	v_and_b32_e32 v25, 1, v24
	v_mov_b16_e32 v24.l, v8.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v19, v19, v65
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_mov_b16_e32 v75.l, v22.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v23, v23, v68
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_and_b32_e32 v65, 1, v85
	v_cmp_o_f32_e64 s20, v18, v18
	v_add3_u32 v18, v18, v53, 0x7fff
	v_mov_b16_e32 v84.l, v17.h
	v_cndmask_b16 v18.l, 0x7fff, v27.h, s8
	v_and_b32_e32 v27, 1, v24
	v_mov_b16_e32 v24.l, v9.h
	v_mov_b16_e32 v81.l, v28.h
	v_and_b32_e32 v66, 1, v75
	v_mov_b16_e32 v86.l, v23.h
	v_mov_b16_e32 v74.l, v19.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v11, v11, v64
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_and_b32_e32 v63, 1, v84
	v_and_b32_e32 v32, 1, v24
	v_mov_b16_e32 v24.l, v10.h
	v_mov_b16_e32 v82.l, v29.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v0, v0, v68 :: v_dual_and_b32 v59, 1, v81
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_and_b32_e32 v67, 1, v86
	v_cmp_o_f32_e64 s5, v4, v4
	v_cmp_o_f32_e64 s7, v5, v5
	v_cmp_o_f32_e64 s18, v17, v17
	v_and_b32_e32 v64, 1, v74
	v_add3_u32 v17, v17, v63, 0x7fff
	v_add3_u32 v4, v4, v33, 0x7fff
	v_add3_u32 v5, v5, v52, 0x7fff
	v_and_b32_e32 v33, 1, v24
	v_mov_b16_e32 v24.l, v11.h
	v_cmp_o_f32_e64 s6, v26, v26
	v_cmp_o_f32_e64 s30, v23, v23
	v_and_b32_e32 v60, 1, v82
	v_add3_u32 v26, v26, v57, 0x7fff
	v_add3_u32 v23, v23, v67, 0x7fff
	v_cmp_o_f32_e64 s11, v7, v7
	v_cmp_o_f32_e64 s24, v20, v20
	v_add3_u32 v20, v20, v65, 0x7fff
	v_cndmask_b16 v23.l, 0x7fff, v17.h, s18
	v_cndmask_b16 v26.l, 0x7fff, v18.h, s20
	v_cndmask_b16 v17.h, 0x7fff, v4.h, s5
	v_add3_u32 v4, v6, v16, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v5.h, s7
	v_add3_u32 v5, v7, v25, 0x7fff
	v_and_b32_e32 v6, 1, v24
	v_mov_b16_e32 v24.l, v12.h
	v_cmp_o_f32_e64 s22, v19, v19
	v_add3_u32 v19, v19, v64, 0x7fff
	v_cmp_o_f32_e64 s12, v29, v29
	v_add3_u32 v29, v29, v60, 0x7fff
	v_cmp_o_f32_e64 s10, v28, v28
	v_cmp_o_f32_e64 s15, v9, v9
	v_cmp_o_f32_e64 s28, v22, v22
	v_add3_u32 v28, v28, v59, 0x7fff
	v_add3_u32 v22, v22, v66, 0x7fff
	v_cndmask_b16 v29.l, 0x7fff, v20.h, s24
	v_cndmask_b16 v20.h, 0x7fff, v5.h, s11
	v_add3_u32 v5, v9, v32, 0x7fff
	v_and_b32_e32 v7, 1, v24
	v_mov_b16_e32 v24.l, v13.h
	v_cmp_o_f32_e64 s13, v8, v8
	v_cmp_o_f32_e64 s16, v31, v31
	v_add3_u32 v31, v31, v62, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v19.h, s22
	v_cndmask_b16 v19.h, 0x7fff, v4.h, s9
	v_add3_u32 v4, v8, v27, 0x7fff
	v_cmp_o_f32_e64 s14, v30, v30
	v_cndmask_b16 v1.h, 0x7fff, v1.h, vcc_lo
	v_add3_u32 v30, v30, v61, 0x7fff
	v_cndmask_b16 v31.l, 0x7fff, v22.h, s28
	v_cndmask_b16 v22.h, 0x7fff, v5.h, s15
	v_add3_u32 v5, v11, v6, 0x7fff
	v_and_b32_e32 v6, 1, v24
	v_mov_b16_e32 v24.l, v14.h
	v_cmp_o_f32_e64 s17, v10, v10
	v_cndmask_b16 v22.l, 0x7fff, v31.h, s16
	v_cndmask_b16 v30.l, 0x7fff, v21.h, s26
	v_cndmask_b16 v21.h, 0x7fff, v4.h, s13
	v_add3_u32 v4, v10, v33, 0x7fff
	v_cmp_o_f32_e64 s19, v11, v11
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s1
	.loc	1 1228 34                       ; ragged.py:1228:34
	ds_store_b32 v55, v1
	ds_store_b32 v94, v22
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_and_b32_e32 v1, 1, v24
	v_mov_b16_e32 v24.l, v15.h
	v_cndmask_b16 v53.l, 0x7fff, v23.h, s30
	v_cndmask_b16 v23.h, 0x7fff, v4.h, s17
	v_cmp_o_f32_e64 s23, v13, v13
	v_cndmask_b16 v17.l, 0x7fff, v26.h, s6
	v_cndmask_b16 v26.h, 0x7fff, v5.h, s19
	.loc	1 1228 34                       ; ragged.py:1228:34
	ds_store_b32 v87, v2
	ds_store_b32 v95, v23
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_add3_u32 v2, v13, v6, 0x7fff
	v_and_b32_e32 v5, 1, v24
	v_mov_b16_e32 v24.l, v0.h
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v20.l, 0x7fff, v29.h, s12
	v_cndmask_b16 v29.h, 0x7fff, v2.h, s23
	v_cmp_o_f32_e64 s21, v12, v12
	v_and_b32_e32 v2, 1, v24
	v_cmp_o_f32_e64 s25, v14, v14
	v_add3_u32 v4, v12, v7, 0x7fff
	v_add3_u32 v1, v14, v1, 0x7fff
	v_cmp_o_f32_e64 s27, v15, v15
	.loc	1 1228 34                       ; ragged.py:1228:34
	ds_store_b32 v88, v3
	ds_store_b32 v96, v26
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_add3_u32 v3, v15, v5, 0x7fff
	v_cmp_o_f32_e64 s29, v0, v0
	v_cndmask_b16 v19.l, 0x7fff, v28.h, s10
	v_add3_u32 v0, v0, v2, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v30.h, s14
	v_cndmask_b16 v28.h, 0x7fff, v4.h, s21
	v_cndmask_b16 v30.h, 0x7fff, v1.h, s25
	v_cndmask_b16 v31.h, 0x7fff, v3.h, s27
	.loc	1 1228 34                       ; ragged.py:1228:34
	ds_store_b32 v89, v17
	ds_store_b32 v97, v28
	ds_store_b32 v90, v18
	ds_store_b32 v98, v29
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cndmask_b16 v53.h, 0x7fff, v0.h, s29
	.loc	1 1228 34                       ; ragged.py:1228:34
	ds_store_b32 v91, v19
	ds_store_b32 v99, v30
	ds_store_b32 v92, v20
	ds_store_b32 v100, v31
	ds_store_b32 v93, v21
	ds_store_b32 v51, v53
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[13:14], v101 offset1:32
	ds_load_2addr_b32 v[15:16], v102 offset1:32
	ds_load_2addr_b32 v[9:10], v103 offset1:32
	ds_load_2addr_b32 v[11:12], v104 offset1:32
	ds_load_2addr_b32 v[5:6], v105 offset1:32
	ds_load_2addr_b32 v[7:8], v106 offset1:32
	ds_load_2addr_b32 v[0:1], v107 offset1:32
	ds_load_2addr_b32 v[2:3], v108 offset1:32
	.loc	1 1232 37                       ; ragged.py:1232:37
	s_lshr_b32 s0, s35, 31
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v17, s31, v49
	.loc	1 1230 31                       ; ragged.py:1230:31
	v_lshl_or_b32 v4, s33, 5, v50
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
	s_cbranch_execz .LBB0_9
; %bb.8:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s38, v17
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v19, v13, v15, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s36, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s37, v18, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
.LBB0_9:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v17, s31, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v17
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_11
; %bb.10:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s38, v17
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v19, v9, v11, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s36, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s37, v18, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
.LBB0_11:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v17, s31, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v17
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_13
; %bb.12:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s38, v17
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v5, v7, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s36, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s37, v18, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
.LBB0_13:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v17, s31, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v17
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_15
; %bb.14:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s38, v17
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v0, v2, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s36, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s37, v18, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
.LBB0_15:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v17, s31, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v17
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_17
; %bb.16:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s38, v17
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v19, v14, v16, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s36, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s37, v18, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
.LBB0_17:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v17, s31, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v17
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_19
; %bb.18:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s38, v17
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v19, v10, v12, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s36, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s37, v18, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
.LBB0_19:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v17, s31, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v17
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_21
; %bb.20:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s38, v17
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v6, v8, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s36, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s37, v18, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
.LBB0_21:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v17, s31, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v17
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_23
; %bb.22:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s38, v17
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v1, v3, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s36, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s37, v18, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v19, off
.LBB0_23:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v17, s31, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v17
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_25
; %bb.24:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v17, s38, v17
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v13, v15, 0x3020706
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[17:18], null, v17, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s36, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s37, v18, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v13, off
.LBB0_25:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v13, s31, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v13
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_27
; %bb.26:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v13, s38, v13
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v9, v11, 0x3020706
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[17:18], null, v13, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s36, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s37, v18, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v9, off
.LBB0_27:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v9, s31, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v9
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_29
; %bb.28:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v9, s38, v9
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[17:18], null, v9, s1, v[4:5]
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v5, v7, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s36, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s37, v18, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v5, off
.LBB0_29:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(3)
	v_or_b32_e32 v5, s31, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v5
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_31
; %bb.30:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v5, s38, v5
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v2, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[17:18], null, v5, s1, v[4:5]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, s0, s36, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s37, v18, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[17:18], v0, off
.LBB0_31:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(1)
	v_or_b32_e32 v0, s31, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_33
; %bb.32:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s38, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[17:18], null, v0, s1, v[4:5]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v14, v16, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v13, s0, s36, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s37, v18, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[13:14], v0, off
.LBB0_33:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, s31, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_35
; %bb.34:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s38, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[13:14], null, v0, s1, v[4:5]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v10, v12, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v14, 31, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	v_add_co_u32 v9, s0, s36, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s37, v14, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[9:10], v0, off
.LBB0_35:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, s31, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_37
; %bb.36:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s38, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[9:10], null, v0, s1, v[4:5]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v6, v8, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v5, s0, s36, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s37, v10, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[5:6], v0, off
.LBB0_37:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, s31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_39
; %bb.38:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s38, v0
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
	v_add_co_u32 v0, vcc_lo, s36, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s37, v5, vcc_lo
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[0:1], v2, off
.LBB0_39:
	.loc	1 970 5 is_stmt 1               ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 148
		.amdhsa_next_free_sgpr 72
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 148
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 72
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8568
; TotalNumSgprs: 74
; NumVgprs: 148
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 74
; NumVGPRsForWavesPerEU: 148
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     74
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     148
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
