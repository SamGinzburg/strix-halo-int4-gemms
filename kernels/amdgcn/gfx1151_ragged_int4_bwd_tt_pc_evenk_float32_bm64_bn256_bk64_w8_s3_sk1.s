	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
	v_lshlrev_b32_e32 v78, 1, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s35, 0xff
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
	s_lshr_b32 s7, s7, 24
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
	s_ashr_i32 s6, s5, 8
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
	s_sub_i32 s38, s5, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s5, 0, s7
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s38, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s8, s2, s4
	.loc	1 1025 39                       ; ragged.py:1025:39
	s_mul_i32 s91, s38, s35
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s10, s8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
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
	s_ashr_i32 s39, s38, 31
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
	s_lshl_b64 s[6:7], s[38:39], 2
	.loc	1 1004 18                       ; ragged.py:1004:18
	s_lshl_b32 s33, s8, 8
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 1016 22                       ; ragged.py:1016:22
	s_lshl_b32 s53, s3, 5
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
	s_ashr_i32 s54, s4, 1
	.loc	1 1018 23 is_stmt 1             ; ragged.py:1018:23
	s_cmp_lt_i32 s53, s54
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_lshlrev_b32_e32 v1, 1, v0
	.loc	1 1105 21                       ; ragged.py:1105:21
	s_add_i32 s39, s33, s91
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 21 is_stmt 0                ; ragged.py:0:21
	s_mov_b32 s3, -1
                                        ; implicit-def: $sgpr39
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[40:43], s[0:1], 0x10
	s_load_b64 s[36:37], s[0:1], 0x28
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v76, 15, v0
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v77, 0xe0, v0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	v_mov_b32_e32 v97, 0
	v_mov_b32_e32 v99, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_lshl_b32 s52, s2, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1004 36 is_stmt 1             ; ragged.py:1004:36
	v_lshrrev_b32_e32 v2, 5, v77
	s_clause 0x1
	s_load_b128 s[48:51], s[0:1], 0x0
	s_load_b32 s92, s[0:1], 0x38
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v1, 63, v0
	s_add_i32 s39, s33, s91
	s_lshl_b32 s56, s34, 2
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v3, s33, v2
	s_lshl_b32 s57, s34, 3
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v4, s52, v1
	s_lshl_b32 s58, s34, 4
	s_mul_i32 s59, s34, 20
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v5, 8, v3
	v_or_b32_e32 v6, 16, v3
	v_or_b32_e32 v7, 24, v3
	v_or_b32_e32 v8, 32, v3
	v_or_b32_e32 v9, 40, v3
	v_or_b32_e32 v10, 48, v3
	v_or_b32_e32 v11, 56, v3
	v_or_b32_e32 v12, 64, v3
	v_or_b32_e32 v13, 0x48, v3
	v_or_b32_e32 v14, 0x50, v3
	v_or_b32_e32 v15, 0x58, v3
	v_or_b32_e32 v16, 0x60, v3
	v_or_b32_e32 v17, 0x68, v3
	v_or_b32_e32 v18, 0x70, v3
	v_or_b32_e32 v19, 0x78, v3
	v_or_b32_e32 v20, 0x80, v3
	v_or_b32_e32 v21, 0x88, v3
	v_or_b32_e32 v22, 0x90, v3
	v_or_b32_e32 v23, 0x98, v3
	v_or_b32_e32 v24, 0xa0, v3
	v_or_b32_e32 v25, 0xa8, v3
	v_or_b32_e32 v26, 0xb0, v3
	v_or_b32_e32 v27, 0xb8, v3
	v_or_b32_e32 v28, 0xc0, v3
	v_or_b32_e32 v29, 0xc8, v3
	v_or_b32_e32 v30, 0xd0, v3
	v_or_b32_e32 v31, 0xd8, v3
	v_or_b32_e32 v32, 0xe0, v3
	v_or_b32_e32 v33, 0xe8, v3
	v_or_b32_e32 v34, 0xf0, v3
	v_or_b32_e32 v35, 0xf8, v3
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s0, s35, v3
	.loc	1 1011 18                       ; ragged.py:1011:18
	v_lshrrev_b32_e32 v3, 6, v0
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s35, v5
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v4
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s2, s35, v6
	.loc	1 1011 18                       ; ragged.py:1011:18
	v_and_b32_e32 v6, 31, v0
	v_or_b32_e32 v5, 12, v3
	v_or_b32_e32 v4, 28, v3
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_mad_u64_u32 v[69:70], null, s34, v3, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s44, s48
	v_mad_u64_u32 v[70:71], null, s34, v5, v[1:2]
	v_mad_u64_u32 v[71:72], null, s34, v4, v[1:2]
	v_mul_lo_u32 v1, s92, v2
	v_bfe_i32 v2, v0, 7, 1
	s_mul_i32 s48, s39, s92
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s3, s35, v7
	v_cmp_gt_i32_e64 s4, s35, v8
	v_cmp_gt_i32_e64 s5, s35, v9
	v_cmp_gt_i32_e64 s6, s35, v10
	v_cmp_gt_i32_e64 s7, s35, v11
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_add3_u32 v80, v6, v1, s48
	v_mov_b32_e32 v1, 0
	v_and_b32_e32 v3, 0x7f, v0
	v_and_b32_e32 v2, 0x88, v2
	v_lshlrev_b32_e32 v4, 5, v76
	v_lshlrev_b32_e32 v5, 4, v77
	v_dual_mov_b32 v6, v1 :: v_dual_and_b32 v7, 24, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v2, v2, v3
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s8, s35, v12
	v_or_b32_e32 v8, 0x300, v0
	v_or3_b32 v3, v4, v7, v5
	v_or_b32_e32 v9, 0x700, v0
	v_or_b32_e32 v4, 0x3f0, v0
	v_or_b32_e32 v5, 0x7f0, v0
	v_xor_b32_e32 v7, 0x110, v2
	v_xor_b32_e32 v10, 8, v3
	v_xor_b32_e32 v11, 16, v3
	v_xor_b32_e32 v12, 24, v3
	v_cmp_gt_i32_e64 s9, s35, v13
	v_cmp_gt_i32_e64 s10, s35, v14
	v_cmp_gt_i32_e64 s11, s35, v15
	v_cmp_gt_i32_e64 s12, s35, v16
	v_cmp_gt_i32_e64 s13, s35, v17
	v_cmp_gt_i32_e64 s14, s35, v18
	v_cmp_gt_i32_e64 s15, s35, v19
	v_cmp_gt_i32_e64 s16, s35, v20
	v_cmp_gt_i32_e64 s17, s35, v21
	v_cmp_gt_i32_e64 s18, s35, v22
	v_cmp_gt_i32_e64 s19, s35, v23
	v_cmp_gt_i32_e64 s20, s35, v24
	v_cmp_gt_i32_e64 s21, s35, v25
	v_cmp_gt_i32_e64 s22, s35, v26
	v_cmp_gt_i32_e64 s23, s35, v27
	v_cmp_gt_i32_e64 s24, s35, v28
	v_cmp_gt_i32_e64 s25, s35, v29
	v_cmp_gt_i32_e64 s26, s35, v30
	v_cmp_gt_i32_e64 s27, s35, v31
	v_cmp_gt_i32_e64 s28, s35, v32
	v_cmp_gt_i32_e64 s29, s35, v33
	v_cmp_gt_i32_e64 s30, s35, v34
	v_cmp_gt_i32_e64 s31, s35, v35
	v_add_nc_u32_e32 v79, 0, v76
	v_add_nc_u32_e32 v81, 0, v0
	v_add_nc_u32_e32 v82, 0, v8
	v_add_nc_u32_e32 v83, 0, v9
	v_dual_mov_b32 v9, v1 :: v_dual_add_nc_u32 v84, 0, v4
	v_dual_mov_b32 v14, v1 :: v_dual_add_nc_u32 v85, 0, v5
	v_add_nc_u32_e32 v86, 0, v2
	v_dual_mov_b32 v16, v1 :: v_dual_add_nc_u32 v87, 0, v7
	v_dual_mov_b32 v13, v1 :: v_dual_add_nc_u32 v88, 0, v3
	v_dual_mov_b32 v18, v1 :: v_dual_add_nc_u32 v89, 0, v10
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v90, 0, v11
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v91, 0, v12
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v19, v1
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
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v54, v1
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v57, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v64, v1
	.loc	1 1021 39                       ; ragged.py:1021:39
	s_mul_i32 s55, s38, s92
	s_mul_i32 s60, s34, 24
	s_and_b32 s45, s49, 0xffff
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	s_lshl_b32 s61, s92, 3
	s_lshl_b32 s62, s92, 4
	s_mul_i32 s63, s92, 24
	s_lshl_b32 s64, s92, 5
	s_mul_i32 s65, s92, 40
	s_mul_i32 s66, s92, 48
	s_mul_i32 s67, s92, 56
	s_lshl_b32 s68, s92, 6
	s_mul_i32 s69, s92, 0x48
	s_mul_i32 s70, s92, 0x50
	s_mul_i32 s71, s92, 0x58
	s_mul_i32 s72, s92, 0x60
	s_mul_i32 s73, s92, 0x68
	s_mul_i32 s74, s92, 0x70
	s_mul_i32 s75, s92, 0x78
	s_lshl_b32 s76, s92, 7
	s_mul_i32 s77, s92, 0x88
	s_mul_i32 s78, s92, 0x90
	s_mul_i32 s79, s92, 0x98
	s_mul_i32 s80, s92, 0xa0
	s_mul_i32 s81, s92, 0xa8
	s_mul_i32 s82, s92, 0xb0
	s_mul_i32 s83, s92, 0xb8
	s_mul_i32 s84, s92, 0xc0
	s_mul_i32 s85, s92, 0xc8
	s_mul_i32 s86, s92, 0xd0
	s_mul_i32 s87, s92, 0xd8
	s_mul_i32 s88, s92, 0xe0
	s_mul_i32 s89, s92, 0xe8
	s_mul_i32 s90, s92, 0xf0
	s_mul_i32 s91, s92, 0xf8
	s_and_b32 s49, s51, 0xffff
	s_mov_b32 s48, s50
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 39 is_stmt 0                ; ragged.py:0:39
	v_add_nc_u32_e32 v65, s53, v80
	.loc	1 1028 42 is_stmt 1             ; ragged.py:1028:42
	s_add_i32 s92, s53, s55
	.loc	1 1029 34                       ; ragged.py:1029:34
	s_mov_b32 s50, s46
	.loc	1 1028 42                       ; ragged.py:1028:42
	s_mul_i32 s92, s92, s34
	.loc	1 1029 34                       ; ragged.py:1029:34
	s_mov_b32 s51, s47
	v_add_nc_u32_e32 v101, s77, v65
	v_cndmask_b32_e64 v112, 0x80000000, v65, s0
	.loc	1 1028 42                       ; ragged.py:1028:42
	s_add_i32 s92, s92, s52
	v_add_nc_u32_e32 v66, s61, v65
	v_add_nc_u32_e32 v67, s62, v65
	v_add_nc_u32_e32 v68, s63, v65
	v_add_nc_u32_e32 v72, s64, v65
	v_add_nc_u32_e32 v73, s65, v65
	v_add_nc_u32_e32 v74, s66, v65
	v_add_nc_u32_e32 v75, s67, v65
	v_add_nc_u32_e32 v92, s68, v65
	v_add_nc_u32_e32 v93, s69, v65
	v_add_nc_u32_e32 v94, s70, v65
	v_add_nc_u32_e32 v95, s71, v65
	v_add_nc_u32_e32 v96, s72, v65
	v_add_nc_u32_e32 v97, s73, v65
	v_add_nc_u32_e32 v98, s74, v65
	v_add_nc_u32_e32 v99, s75, v65
	v_add_nc_u32_e32 v100, s76, v65
	v_add_nc_u32_e32 v102, s78, v65
	v_add_nc_u32_e32 v103, s79, v65
	v_add_nc_u32_e32 v104, s80, v65
	v_add_nc_u32_e32 v105, s81, v65
	v_add_nc_u32_e32 v106, s82, v65
	v_add_nc_u32_e32 v107, s83, v65
	v_add_nc_u32_e32 v108, s84, v65
	v_add_nc_u32_e32 v109, s85, v65
	v_add_nc_u32_e32 v110, s86, v65
	v_add_nc_u32_e32 v111, s87, v65
	v_add_nc_u32_e32 v113, s88, v65
	v_add_nc_u32_e32 v114, s89, v65
	v_add_nc_u32_e32 v115, s90, v65
	v_add_nc_u32_e32 v116, s91, v65
	.loc	1 1029 34                       ; ragged.py:1029:34
	buffer_load_u8 v65, v112, s[48:51], 0 offen
	v_cndmask_b32_e64 v112, 0x80000000, v101, s17
	v_add_nc_u32_e32 v101, s92, v69
	v_cndmask_b32_e64 v66, 0x80000000, v66, s1
	v_cndmask_b32_e64 v67, 0x80000000, v67, s2
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	v_cndmask_b32_e64 v72, 0x80000000, v72, s4
	v_add_nc_u32_e32 v129, s56, v101
	v_add_nc_u32_e32 v130, s57, v101
	v_add_nc_u32_e32 v131, s58, v101
	v_add_nc_u32_e32 v132, s59, v101
	v_add_nc_u32_e32 v133, s60, v101
	.loc	1 1028 34                       ; ragged.py:1028:34
	v_cndmask_b32_e32 v134, 0x80000000, v101, vcc_lo
	v_add_nc_u32_e32 v101, s92, v70
	.loc	1 1029 34                       ; ragged.py:1029:34
	v_cndmask_b32_e64 v73, 0x80000000, v73, s5
	v_cndmask_b32_e64 v74, 0x80000000, v74, s6
	v_cndmask_b32_e64 v75, 0x80000000, v75, s7
	v_cndmask_b32_e64 v92, 0x80000000, v92, s8
	.loc	1 1028 34                       ; ragged.py:1028:34
	v_cndmask_b32_e32 v135, 0x80000000, v101, vcc_lo
	v_add_nc_u32_e32 v101, s92, v71
	.loc	1 1029 34                       ; ragged.py:1029:34
	v_cndmask_b32_e64 v93, 0x80000000, v93, s9
	v_cndmask_b32_e64 v94, 0x80000000, v94, s10
	v_cndmask_b32_e64 v95, 0x80000000, v95, s11
	v_cndmask_b32_e64 v96, 0x80000000, v96, s12
	v_cndmask_b32_e64 v97, 0x80000000, v97, s13
	v_cndmask_b32_e64 v98, 0x80000000, v98, s14
	v_cndmask_b32_e64 v99, 0x80000000, v99, s15
	v_cndmask_b32_e64 v100, 0x80000000, v100, s16
	v_cndmask_b32_e64 v115, 0x80000000, v115, s30
	v_cndmask_b32_e64 v116, 0x80000000, v116, s31
	v_cndmask_b32_e64 v117, 0x80000000, v102, s18
	v_cndmask_b32_e64 v118, 0x80000000, v103, s19
	v_cndmask_b32_e64 v119, 0x80000000, v104, s20
	v_cndmask_b32_e64 v120, 0x80000000, v105, s21
	v_cndmask_b32_e64 v121, 0x80000000, v106, s22
	v_cndmask_b32_e64 v122, 0x80000000, v107, s23
	v_cndmask_b32_e64 v123, 0x80000000, v108, s24
	v_cndmask_b32_e64 v124, 0x80000000, v109, s25
	v_cndmask_b32_e64 v125, 0x80000000, v110, s26
	v_cndmask_b32_e64 v126, 0x80000000, v111, s27
	v_cndmask_b32_e64 v127, 0x80000000, v113, s28
	v_cndmask_b32_e64 v128, 0x80000000, v114, s29
	.loc	1 1028 34                       ; ragged.py:1028:34
	v_cndmask_b32_e32 v136, 0x80000000, v101, vcc_lo
	.loc	1 1029 34                       ; ragged.py:1029:34
	s_clause 0x1e
	buffer_load_u8 v66, v66, s[48:51], 0 offen
	buffer_load_u8 v101, v67, s[48:51], 0 offen
	buffer_load_u8 v67, v68, s[48:51], 0 offen
	buffer_load_u8 v102, v72, s[48:51], 0 offen
	buffer_load_u8 v68, v73, s[48:51], 0 offen
	buffer_load_u8 v103, v74, s[48:51], 0 offen
	buffer_load_u8 v72, v75, s[48:51], 0 offen
	buffer_load_u8 v104, v92, s[48:51], 0 offen
	buffer_load_u8 v73, v93, s[48:51], 0 offen
	buffer_load_u8 v105, v94, s[48:51], 0 offen
	buffer_load_u8 v74, v95, s[48:51], 0 offen
	buffer_load_u8 v106, v96, s[48:51], 0 offen
	buffer_load_u8 v75, v97, s[48:51], 0 offen
	buffer_load_u8 v107, v98, s[48:51], 0 offen
	buffer_load_u8 v92, v99, s[48:51], 0 offen
	buffer_load_u8 v108, v100, s[48:51], 0 offen
	buffer_load_u8 v93, v112, s[48:51], 0 offen
	buffer_load_u8 v109, v117, s[48:51], 0 offen
	buffer_load_u8 v94, v118, s[48:51], 0 offen
	buffer_load_u8 v110, v119, s[48:51], 0 offen
	buffer_load_u8 v95, v120, s[48:51], 0 offen
	buffer_load_u8 v111, v121, s[48:51], 0 offen
	buffer_load_u8 v96, v122, s[48:51], 0 offen
	buffer_load_u8 v112, v123, s[48:51], 0 offen
	buffer_load_u8 v97, v124, s[48:51], 0 offen
	buffer_load_u8 v113, v125, s[48:51], 0 offen
	buffer_load_u8 v98, v126, s[48:51], 0 offen
	buffer_load_u8 v114, v127, s[48:51], 0 offen
	buffer_load_u8 v99, v128, s[48:51], 0 offen
	buffer_load_u8 v115, v115, s[48:51], 0 offen
	buffer_load_u8 v100, v116, s[48:51], 0 offen
	.loc	1 1028 34                       ; ragged.py:1028:34
	v_dual_cndmask_b32 v116, 0x80000000, v129 :: v_dual_cndmask_b32 v117, 0x80000000, v130
	v_dual_cndmask_b32 v118, 0x80000000, v131 :: v_dual_cndmask_b32 v119, 0x80000000, v132
	v_cndmask_b32_e32 v120, 0x80000000, v133, vcc_lo
	s_clause 0x7
	buffer_load_u8 v121, v134, s[44:47], 0 offen
	buffer_load_u8 v116, v116, s[44:47], 0 offen
	buffer_load_u8 v117, v117, s[44:47], 0 offen
	buffer_load_u8 v118, v118, s[44:47], 0 offen
	buffer_load_u8 v119, v119, s[44:47], 0 offen
	buffer_load_u8 v122, v135, s[44:47], 0 offen
	buffer_load_u8 v120, v120, s[44:47], 0 offen
	buffer_load_u8 v123, v136, s[44:47], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1040 21                       ; ragged.py:1040:21
	s_add_i32 s53, s53, 32
	.loc	1 1028 34                       ; ragged.py:1028:34
	s_waitcnt vmcnt(7)
	ds_store_b8 v81, v121
	s_waitcnt vmcnt(6)
	ds_store_b8 v81, v116 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v81, v117 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v81, v118 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v81, v119 offset:1280
	s_waitcnt vmcnt(2)
	ds_store_b8 v82, v122
	s_waitcnt vmcnt(1)
	ds_store_b8 v81, v120 offset:1536
	s_waitcnt vmcnt(0)
	ds_store_b8 v83, v123
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1030 31                       ; ragged.py:1030:31
	ds_load_u8 v116, v79 offset:320
	ds_load_u8 v117, v79 offset:256
	ds_load_u8 v118, v79 offset:336
	ds_load_u8 v119, v79 offset:272
	ds_load_u8 v120, v79 offset:352
	ds_load_u8 v121, v79 offset:288
	ds_load_u8 v122, v79 offset:368
	ds_load_u8 v123, v79 offset:304
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_cmp_lt_i32 s53, s54
	.loc	1 1030 31                       ; ragged.py:1030:31
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	ds_load_u8 v117, v79 offset:448
	ds_load_u8 v124, v79 offset:384
	ds_load_u8 v125, v79 offset:464
	ds_load_u8 v126, v79 offset:400
	ds_load_u8 v127, v79 offset:480
	ds_load_u8 v128, v79 offset:416
	ds_load_u8 v129, v79 offset:496
	ds_load_u8 v130, v79 offset:432
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v117, v124, v117, 0xc0c0004
	ds_load_u8 v124, v79 offset:64
	ds_load_u8 v131, v79
	ds_load_u8 v132, v79 offset:80
	ds_load_u8 v133, v79 offset:96
	ds_load_u8 v134, v79 offset:112
	ds_load_u8 v135, v79 offset:16
	ds_load_u8 v136, v79 offset:32
	ds_load_u8 v137, v79 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v119, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v121, v128, v127, 0xc0c0004
	v_lshl_or_b32 v117, v117, 16, v116
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v123, v130, v129, 0xc0c0004
	v_lshl_or_b32 v119, v119, 16, v118
	v_lshl_or_b32 v121, v121, 16, v120
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v123, v123, 16, v122
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v124, v131, v124, 0xc0c0004
	ds_load_u8 v131, v79 offset:192
	ds_load_u8 v138, v79 offset:128
	ds_load_u8 v139, v79 offset:208
	ds_load_u8 v140, v79 offset:144
	ds_load_u8 v141, v79 offset:224
	ds_load_u8 v142, v79 offset:160
	ds_load_u8 v143, v79 offset:240
	ds_load_u8 v144, v79 offset:176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v131, v138, v131, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v125, v140, v139, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v116, v131, 16, v124
	v_perm_b32 v124, v135, v132, 0xc0c0004
	v_lshl_or_b32 v118, v125, 16, v124
	v_perm_b32 v124, v136, v133, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v125, v142, v141, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v120, v125, 16, v124
	v_perm_b32 v124, v137, v134, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v144, v143, 0xc0c0004
	v_lshl_or_b32 v122, v125, 16, v124
	ds_load_u8 v124, v79 offset:960
	ds_load_u8 v125, v79 offset:896
	ds_load_u8 v126, v79 offset:1024
	ds_load_u8 v127, v79 offset:976
	ds_load_u8 v128, v79 offset:912
	ds_load_u8 v129, v79 offset:992
	ds_load_u8 v130, v79 offset:928
	ds_load_u8 v131, v79 offset:944
	ds_load_u8 v132, v79 offset:832
	ds_load_u8 v133, v79 offset:768
	ds_load_u8 v134, v79 offset:848
	ds_load_u8 v135, v79 offset:784
	ds_load_u8 v136, v79 offset:864
	ds_load_u8 v137, v79 offset:800
	ds_load_u8 v138, v79 offset:880
	ds_load_u8 v139, v79 offset:816
	ds_load_u8 v140, v79 offset:704
	ds_load_u8 v141, v79 offset:640
	ds_load_u8 v142, v79 offset:720
	ds_load_u8 v143, v79 offset:656
	ds_load_u8 v144, v79 offset:736
	ds_load_u8 v145, v79 offset:672
	ds_load_u8 v146, v79 offset:752
	ds_load_u8 v147, v79 offset:688
	ds_load_u8 v148, v79 offset:576
	ds_load_u8 v149, v79 offset:512
	ds_load_u8 v150, v79 offset:592
	ds_load_u8 v151, v79 offset:528
	ds_load_u8 v152, v79 offset:608
	ds_load_u8 v153, v79 offset:544
	ds_load_u8 v154, v79 offset:624
	ds_load_u8 v155, v79 offset:560
	ds_load_u8 v156, v79 offset:1216
	ds_load_u8 v157, v79 offset:1280
	ds_load_u8 v158, v79 offset:1232
	ds_load_u8 v159, v79 offset:1168
	ds_load_u8 v160, v79 offset:1248
	ds_load_u8 v161, v79 offset:1184
	ds_load_u8 v162, v79 offset:1264
	ds_load_u8 v163, v79 offset:1200
	ds_load_u8 v164, v79 offset:1152
	ds_load_u8 v165, v79 offset:1088
	ds_load_u8 v166, v79 offset:1104
	ds_load_u8 v167, v79 offset:1040
	ds_load_u8 v168, v79 offset:1120
	ds_load_u8 v169, v79 offset:1056
	ds_load_u8 v170, v79 offset:1136
	ds_load_u8 v171, v79 offset:1072
	ds_load_u8 v172, v79 offset:1472
	ds_load_u8 v173, v79 offset:1536
	ds_load_u8 v174, v79 offset:1488
	ds_load_u8 v175, v79 offset:1424
	ds_load_u8 v176, v79 offset:1504
	ds_load_u8 v177, v79 offset:1440
	ds_load_u8 v178, v79 offset:1520
	ds_load_u8 v179, v79 offset:1456
	ds_load_u8 v180, v79 offset:1408
	ds_load_u8 v181, v79 offset:1344
	ds_load_u8 v182, v79 offset:1360
	ds_load_u8 v183, v79 offset:1296
	ds_load_u8 v184, v79 offset:1376
	ds_load_u8 v185, v79 offset:1312
	ds_load_u8 v186, v79 offset:1392
	ds_load_u8 v187, v79 offset:1328
	ds_load_u8 v188, v79 offset:1984
	ds_load_u8 v189, v79 offset:2000
	ds_load_u8 v190, v79 offset:1936
	ds_load_u8 v191, v79 offset:2016
	ds_load_u8 v192, v79 offset:1952
	ds_load_u8 v193, v84
	ds_load_u8 v194, v85
	ds_load_u8 v195, v79 offset:1968
	ds_load_u8 v196, v79 offset:1920
	ds_load_u8 v197, v79 offset:1856
	ds_load_u8 v198, v79 offset:1872
	ds_load_u8 v199, v79 offset:1808
	ds_load_u8 v200, v79 offset:1888
	ds_load_u8 v201, v79 offset:1824
	ds_load_u8 v202, v79 offset:1904
	ds_load_u8 v203, v79 offset:1840
	ds_load_u8 v204, v79 offset:1728
	ds_load_u8 v205, v79 offset:1792
	ds_load_u8 v206, v79 offset:1744
	ds_load_u8 v207, v79 offset:1680
	ds_load_u8 v208, v79 offset:1760
	ds_load_u8 v209, v79 offset:1696
	ds_load_u8 v210, v79 offset:1776
	ds_load_u8 v211, v79 offset:1712
	ds_load_u8 v212, v79 offset:1664
	ds_load_u8 v213, v79 offset:1600
	ds_load_u8 v214, v79 offset:1616
	ds_load_u8 v215, v79 offset:1552
	ds_load_u8 v216, v79 offset:1632
	ds_load_u8 v217, v79 offset:1568
	ds_load_u8 v218, v79 offset:1648
	ds_load_u8 v219, v79 offset:1584
	.loc	1 1029 34                       ; ragged.py:1029:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v86, v65
	ds_store_b8 v86, v101 offset:512
	ds_store_b8 v86, v102 offset:1024
	ds_store_b8 v86, v103 offset:1536
	ds_store_b8 v86, v104 offset:2048
	ds_store_b8 v86, v105 offset:2560
	ds_store_b8 v86, v106 offset:3072
	ds_store_b8 v86, v107 offset:3584
	ds_store_b8 v86, v108 offset:4096
	ds_store_b8 v86, v109 offset:4608
	ds_store_b8 v86, v110 offset:5120
	ds_store_b8 v86, v111 offset:5632
	ds_store_b8 v86, v112 offset:6144
	ds_store_b8 v86, v113 offset:6656
	ds_store_b8 v86, v114 offset:7168
	ds_store_b8 v86, v115 offset:7680
	ds_store_b8 v87, v66
	ds_store_b8 v87, v67 offset:512
	ds_store_b8 v87, v68 offset:1024
	ds_store_b8 v87, v72 offset:1536
	ds_store_b8 v87, v73 offset:2048
	ds_store_b8 v87, v74 offset:2560
	ds_store_b8 v87, v75 offset:3072
	ds_store_b8 v87, v92 offset:3584
	ds_store_b8 v87, v93 offset:4096
	ds_store_b8 v87, v94 offset:4608
	ds_store_b8 v87, v95 offset:5120
	ds_store_b8 v87, v96 offset:5632
	ds_store_b8 v87, v97 offset:6144
	ds_store_b8 v87, v98 offset:6656
	ds_store_b8 v87, v99 offset:7168
	ds_store_b8 v87, v100 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[65:68], v88 offset1:8
	.loc	1 1030 31                       ; ragged.py:1030:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[65:66], v[116:117], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[67:68], v[116:117], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[118:119], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[118:119], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[65:66], v[120:121], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[120:121], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[65:66], v[122:123], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[67:68], v[122:123], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v65, v133, v132, 0xc0c0004
	v_perm_b32 v66, v125, v124, 0xc0c0004
	v_perm_b32 v67, v149, v148, 0xc0c0004
	v_perm_b32 v68, v141, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v73, v66, 16, v65
	v_perm_b32 v65, v135, v134, 0xc0c0004
	v_lshl_or_b32 v72, v68, 16, v67
	v_perm_b32 v66, v128, v127, 0xc0c0004
	v_perm_b32 v67, v151, v150, 0xc0c0004
	v_perm_b32 v68, v143, v142, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v75, v66, 16, v65
	v_perm_b32 v65, v137, v136, 0xc0c0004
	v_lshl_or_b32 v74, v68, 16, v67
	v_perm_b32 v66, v130, v129, 0xc0c0004
	v_perm_b32 v67, v153, v152, 0xc0c0004
	v_perm_b32 v68, v145, v144, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v93, v66, 16, v65
	v_perm_b32 v65, v155, v154, 0xc0c0004
	v_lshl_or_b32 v92, v68, 16, v67
	v_perm_b32 v66, v147, v146, 0xc0c0004
	v_perm_b32 v67, v139, v138, 0xc0c0004
	v_perm_b32 v68, v131, v193, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v94, v66, 16, v65
	v_lshl_or_b32 v95, v68, 16, v67
	.loc	1 1029 34                       ; ragged.py:1029:34
	ds_load_2addr_stride64_b64 v[65:68], v89 offset1:8
	.loc	1 1030 31                       ; ragged.py:1030:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[65:66], v[72:73], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[67:68], v[72:73], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[74:75], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[74:75], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[65:66], v[92:93], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[92:93], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[65:66], v[94:95], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[67:68], v[94:95], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v65, v157, v181, 0xc0c0004
	v_perm_b32 v66, v180, v172, 0xc0c0004
	v_perm_b32 v67, v126, v165, 0xc0c0004
	v_perm_b32 v68, v164, v156, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v73, v66, 16, v65
	v_perm_b32 v65, v183, v182, 0xc0c0004
	v_lshl_or_b32 v72, v68, 16, v67
	v_perm_b32 v66, v175, v174, 0xc0c0004
	v_perm_b32 v67, v167, v166, 0xc0c0004
	v_perm_b32 v68, v159, v158, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v75, v66, 16, v65
	v_perm_b32 v65, v185, v184, 0xc0c0004
	v_lshl_or_b32 v74, v68, 16, v67
	v_perm_b32 v66, v177, v176, 0xc0c0004
	v_perm_b32 v67, v169, v168, 0xc0c0004
	v_perm_b32 v68, v161, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v93, v66, 16, v65
	v_perm_b32 v65, v187, v186, 0xc0c0004
	v_lshl_or_b32 v92, v68, 16, v67
	v_perm_b32 v66, v179, v178, 0xc0c0004
	v_perm_b32 v67, v171, v170, 0xc0c0004
	v_perm_b32 v68, v163, v162, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v95, v66, 16, v65
	v_lshl_or_b32 v94, v68, 16, v67
	.loc	1 1029 34                       ; ragged.py:1029:34
	ds_load_2addr_stride64_b64 v[65:68], v90 offset1:8
	.loc	1 1030 31                       ; ragged.py:1030:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[65:66], v[72:73], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[67:68], v[72:73], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[74:75], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[74:75], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[65:66], v[92:93], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[92:93], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[65:66], v[94:95], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[67:68], v[94:95], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v65, v205, v197, 0xc0c0004
	v_perm_b32 v66, v196, v188, 0xc0c0004
	v_perm_b32 v67, v173, v213, 0xc0c0004
	v_perm_b32 v68, v212, v204, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v93, v66, 16, v65
	v_perm_b32 v65, v199, v198, 0xc0c0004
	v_lshl_or_b32 v92, v68, 16, v67
	v_perm_b32 v66, v190, v189, 0xc0c0004
	v_perm_b32 v67, v215, v214, 0xc0c0004
	v_perm_b32 v68, v207, v206, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v95, v66, 16, v65
	v_perm_b32 v65, v201, v200, 0xc0c0004
	v_lshl_or_b32 v94, v68, 16, v67
	v_perm_b32 v66, v192, v191, 0xc0c0004
	v_perm_b32 v67, v217, v216, 0xc0c0004
	v_perm_b32 v68, v209, v208, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v73, v66, 16, v65
	v_perm_b32 v65, v219, v218, 0xc0c0004
	v_lshl_or_b32 v72, v68, 16, v67
	v_perm_b32 v66, v211, v210, 0xc0c0004
	v_perm_b32 v67, v203, v202, 0xc0c0004
	v_perm_b32 v68, v195, v194, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v74, v66, 16, v65
	v_lshl_or_b32 v75, v68, 16, v67
	.loc	1 1029 34                       ; ragged.py:1029:34
	ds_load_2addr_stride64_b64 v[65:68], v91 offset1:8
	.loc	1 1030 31                       ; ragged.py:1030:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[65:66], v[92:93], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[67:68], v[92:93], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[94:95], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[94:95], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[65:66], v[72:73], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[72:73], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[65:66], v[74:75], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[67:68], v[74:75], v[57:64] neg_lo:[1,1,0]
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v99, v1
	v_cvt_f32_i32_e32 v98, v2
	v_cvt_f32_i32_e32 v97, v3
	v_cvt_f32_i32_e32 v96, v4
	v_cvt_f32_i32_e32 v95, v5
	v_cvt_f32_i32_e32 v94, v6
	v_cvt_f32_i32_e32 v93, v7
	v_cvt_f32_i32_e32 v92, v8
	v_cvt_f32_i32_e32 v91, v9
	v_cvt_f32_i32_e32 v90, v10
	v_cvt_f32_i32_e32 v89, v11
	v_cvt_f32_i32_e32 v88, v12
	v_cvt_f32_i32_e32 v87, v13
	v_cvt_f32_i32_e32 v86, v14
	v_cvt_f32_i32_e32 v85, v15
	v_cvt_f32_i32_e32 v84, v16
	v_cvt_f32_i32_e32 v83, v17
	v_cvt_f32_i32_e32 v82, v18
	v_cvt_f32_i32_e32 v81, v19
	v_cvt_f32_i32_e32 v80, v20
	v_cvt_f32_i32_e32 v79, v21
	v_cvt_f32_i32_e32 v75, v22
	v_cvt_f32_i32_e32 v74, v23
	v_cvt_f32_i32_e32 v73, v24
	v_cvt_f32_i32_e32 v72, v25
	v_cvt_f32_i32_e32 v71, v26
	v_cvt_f32_i32_e32 v70, v27
	v_cvt_f32_i32_e32 v69, v28
	v_cvt_f32_i32_e32 v68, v29
	v_cvt_f32_i32_e32 v67, v30
	v_cvt_f32_i32_e32 v66, v31
	v_cvt_f32_i32_e32 v65, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v32, v34
	v_cvt_f32_i32_e32 v31, v35
	v_cvt_f32_i32_e32 v30, v36
	v_cvt_f32_i32_e32 v29, v37
	v_cvt_f32_i32_e32 v28, v38
	v_cvt_f32_i32_e32 v27, v39
	v_cvt_f32_i32_e32 v26, v40
	v_cvt_f32_i32_e32 v25, v41
	v_cvt_f32_i32_e32 v24, v42
	v_cvt_f32_i32_e32 v23, v43
	v_cvt_f32_i32_e32 v22, v44
	v_cvt_f32_i32_e32 v21, v45
	v_cvt_f32_i32_e32 v20, v46
	v_cvt_f32_i32_e32 v19, v47
	v_cvt_f32_i32_e32 v18, v48
	v_cvt_f32_i32_e32 v17, v49
	v_cvt_f32_i32_e32 v16, v50
	v_cvt_f32_i32_e32 v15, v51
	v_cvt_f32_i32_e32 v14, v52
	v_cvt_f32_i32_e32 v13, v53
	v_cvt_f32_i32_e32 v12, v54
	v_cvt_f32_i32_e32 v11, v55
	v_cvt_f32_i32_e32 v10, v56
	v_cvt_f32_i32_e32 v9, v57
	v_cvt_f32_i32_e32 v8, v58
	v_cvt_f32_i32_e32 v7, v59
	v_cvt_f32_i32_e32 v6, v60
	v_cvt_f32_i32_e32 v5, v61
	v_cvt_f32_i32_e32 v4, v62
	v_cvt_f32_i32_e32 v3, v63
	v_cvt_f32_i32_e32 v2, v64
	v_mov_b32_e32 v1, v78
.LBB0_7:                                ; %._crit_edge
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v34, s52, v76
	.loc	1 1098 33                       ; ragged.py:1098:33
	s_mul_i32 s0, s38, s34
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s41, 0xffff
	.loc	1 1098 21                       ; ragged.py:1098:21
	s_add_i32 s8, s52, s0
	s_mov_b32 s7, 0x31027000
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v37, 16, v34
	.loc	1 1098 21                       ; ragged.py:1098:21
	v_add_lshl_u32 v38, s8, v76, 1
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v36, 32, v34
	v_or_b32_e32 v35, 48, v34
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s2, s34, v34
	v_cmp_gt_i32_e64 s1, s34, v37
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_add_nc_u32_e32 v39, 32, v38
	v_add_nc_u32_e32 v40, 64, v38
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v36
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_cndmask_b32_e64 v34, 0x80000000, v38, s2
	v_add_nc_u32_e32 v38, 0x60, v38
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v35
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_cndmask_b32_e64 v37, 0x80000000, v39, s1
	v_cndmask_b32_e64 v36, 0x80000000, v40, s0
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s40
	v_cndmask_b32_e32 v35, 0x80000000, v38, vcc_lo
	s_clause 0x3
	buffer_load_u16 v43, v34, s[4:7], 0 offen
	buffer_load_u16 v44, v37, s[4:7], 0 offen
	buffer_load_u16 v45, v36, s[4:7], 0 offen
	buffer_load_u16 v46, v35, s[4:7], 0 offen
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v34, s33, v0
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v35, s39, v0, 1
	s_and_b32 s5, s43, 0xffff
	s_mov_b32 s4, s42
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mul_lo_u32 v37, s35, v76
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s3, s35, v34
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_and_b32_e32 v36, 0xf0, v0
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_mul_i32 s8, s8, s35
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_and_b32_e32 v1, 28, v1
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_mov_b32 s38, s6
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v34, 0x80000000, v35, s3
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v35, 1, v77
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_add3_u32 v42, s8, s33, v37
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_lshl_add_u32 v49, v36, 2, 0
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_mov_b32 s39, s7
	.loc	1 1104 36                       ; ragged.py:1104:36
	buffer_load_u16 v47, v34, s[4:7], 0 offen
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v34, 4, v0
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_lshlrev_b32_e32 v0, 5, v0
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_lshl_add_u32 v59, s35, 4, v42
	v_lshl_add_u32 v60, s35, 5, v42
	.loc	1 1109 17                       ; ragged.py:1109:17
	s_waitcnt lgkmcnt(0)
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_and_or_b32 v48, v34, 1, v35
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_and_b32_e32 v0, 32, v0
	s_barrier
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_and_b32 s37, s37, 0xffff
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v57, 2, v48
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v58, s33, v48
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v56, 4, v48
	v_or_b32_e32 v55, 6, v48
	v_or_b32_e32 v34, 0x8e, v48
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v107, s33, v57
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v54, 8, v48
	.loc	1 1109 17 is_stmt 1             ; ragged.py:1109:17
	v_add3_u32 v49, v49, v0, v1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s3, s35, v58
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v106, s33, v56
	.loc	1 1004 36 is_stmt 0             ; ragged.py:1004:36
	v_or_b32_e32 v53, 10, v48
	v_or_b32_e32 v35, 0x8c, v48
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v105, s33, v55
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v52, 12, v48
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v61, s33, v34
	.loc	1 1239 17 is_stmt 1             ; ragged.py:1239:17
	v_add_lshl_u32 v121, v59, v48, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s18, s35, v107
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v104, s33, v54
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s2, s3
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v51, 14, v48
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v58, v42, v57, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s17, s35, v106
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v37, 0x88, v48
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v103, s33, v53
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v41, 0x80, v48
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v62, s33, v35
	.loc	1 1239 17 is_stmt 1             ; ragged.py:1239:17
	v_add_lshl_u32 v108, v42, v56, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s16, s35, v105
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v38, 0x86, v48
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v102, s33, v52
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s4, s35, v61
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v40, 0x82, v48
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v109, v42, v55, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s15, s35, v104
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v39, 0x84, v48
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v101, s33, v51
	v_or_b32_e32 v64, s33, v37
	.loc	1 1239 17 is_stmt 1             ; ragged.py:1239:17
	v_add_lshl_u32 v110, v42, v54, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s14, s35, v103
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v100, s33, v41
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s5, s35, v62
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v76, s33, v38
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v111, v42, v53, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s13, s35, v102
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v78, s33, v40
	v_or_b32_e32 v77, s33, v39
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v112, v42, v52, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s12, s35, v101
	v_cmp_gt_i32_e64 s7, s35, v64
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v113, v42, v51, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s11, s35, v100
	v_cmp_gt_i32_e64 s8, s35, v76
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v114, v42, v41, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s10, s35, v78
	v_cmp_gt_i32_e64 s9, s35, v77
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v115, v42, v40, 2
	v_add_lshl_u32 v116, v42, v39, 2
	v_add_lshl_u32 v117, v42, v38, 2
	v_add_lshl_u32 v118, v42, v37, 2
	v_add_lshl_u32 v120, v42, v35, 2
	v_add_lshl_u32 v122, v59, v57, 2
	v_add_lshl_u32 v123, v59, v56, 2
	v_add_lshl_u32 v124, v59, v55, 2
	v_add_lshl_u32 v125, v59, v54, 2
	v_add_lshl_u32 v126, v59, v53, 2
	v_add_lshl_u32 v127, v59, v52, 2
	v_add_lshl_u32 v128, v59, v51, 2
	v_add_lshl_u32 v129, v59, v41, 2
	v_add_lshl_u32 v130, v59, v40, 2
	v_add_lshl_u32 v131, v59, v39, 2
	v_add_lshl_u32 v132, v59, v38, 2
	v_add_lshl_u32 v133, v59, v37, 2
	v_add_lshl_u32 v135, v59, v35, 2
	v_add_lshl_u32 v136, v60, v48, 2
	v_add_lshl_u32 v137, v60, v57, 2
	v_add_lshl_u32 v138, v60, v56, 2
	.loc	1 1239 26 is_stmt 0             ; ragged.py:1239:26
	s_waitcnt vmcnt(4)
	v_mad_u64_u32 v[0:1], null, s35, 48, v[42:43]
	.loc	1 1097 36 is_stmt 1             ; ragged.py:1097:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v44, 16, v44
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v1, v42, v48, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v82, v82, v44 :: v_dual_mul_f32 v95, v95, v43
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_lshl_add_u32 v50, v36, 1, 0
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v36, 0x8a, v48
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s1, s3
	.loc	1 1102 17                       ; ragged.py:1102:17
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v94, v94, v43 :: v_dual_lshlrev_b32 v45, 16, v45
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v61, 0x80000000, v121, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s2, s18
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v63, s33, v36
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v58, 0x80000000, v58, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s2, s17
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v119, v42, v36, 2
	v_cndmask_b32_e64 v62, 0x80000000, v108, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s2, s16
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s6, s35, v63
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v63, 0x80000000, v109, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s2, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v42, v42, v34, 2
	v_cndmask_b32_e64 v64, 0x80000000, v110, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s2, s14
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v91, v91, v43
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v76, 0x80000000, v111, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s2, s13
	.loc	1 1102 17                       ; ragged.py:1102:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v72, v72, v44 :: v_dual_lshlrev_b32 v47, 16, v47
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v77, 0x80000000, v112, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s2, s12
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v89, v89, v43 :: v_dual_lshlrev_b32 v46, 16, v46
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v78, 0x80000000, v113, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s2, s11
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v99, v99, v43
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v100, 0x80000000, v114, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s2, s10
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v98, v98, v43
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v101, 0x80000000, v115, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s2, s9
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v97, v97, v43
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v102, 0x80000000, v116, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s2, s8
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v96, v96, v43
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v103, 0x80000000, v117, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s2, s7
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v93, v93, v43
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v104, 0x80000000, v118, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s2, s6
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v92, v92, v43 :: v_dual_mul_f32 v83, v83, v44
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v105, 0x80000000, v119, s19
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s19, s2, s5
	s_and_b32 s2, s2, s4
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v90, v90, v43 :: v_dual_mul_f32 v81, v81, v44
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s18
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v88, v88, v43 :: v_dual_mul_f32 v79, v79, v44
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v107, 0x80000000, v122, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s17
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v87, v87, v43 :: v_dual_mul_f32 v80, v80, v44
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v108, 0x80000000, v123, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s16
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v86, v86, v43 :: v_dual_mul_f32 v75, v75, v44
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v109, 0x80000000, v124, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s15
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v85, v85, v43 :: v_dual_mul_f32 v74, v74, v44
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v110, 0x80000000, v125, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s14
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v43, v84, v43 :: v_dual_mul_f32 v70, v70, v44
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v111, 0x80000000, v126, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s13
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v73, v73, v44 :: v_dual_mul_f32 v32, v32, v45
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v112, 0x80000000, v127, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s12
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v71, v71, v44 :: v_dual_mul_f32 v30, v30, v45
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v113, 0x80000000, v128, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s11
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v69, v69, v44 :: v_dual_mul_f32 v84, v28, v45
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v114, 0x80000000, v129, s2
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v68, v68, v44 :: v_dual_mul_f32 v33, v33, v45
	v_dual_mul_f32 v67, v67, v44 :: v_dual_mul_f32 v122, v26, v45
	v_dual_mul_f32 v66, v66, v44 :: v_dual_mul_f32 v31, v31, v45
	v_dual_mul_f32 v44, v65, v44 :: v_dual_mul_f32 v121, v27, v45
	v_dual_mul_f32 v65, v29, v45 :: v_dual_mul_f32 v16, v16, v46
	v_dual_mul_f32 v123, v25, v45 :: v_dual_mul_f32 v10, v10, v46
	v_dual_mul_f32 v124, v24, v45 :: v_dual_mul_f32 v17, v17, v46
	v_mul_f32_e32 v125, v23, v45
	v_mul_f32_e32 v126, v22, v45
	v_dual_mul_f32 v127, v21, v45 :: v_dual_mul_f32 v8, v8, v46
	v_mul_f32_e32 v128, v20, v45
	v_dual_mul_f32 v129, v19, v45 :: v_dual_mul_f32 v6, v6, v46
	v_dual_mul_f32 v45, v18, v45 :: v_dual_mul_f32 v4, v4, v46
	.loc	1 1109 17                       ; ragged.py:1109:17
	ds_store_b32 v49, v47
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v50
	ds_load_b128 v[22:25], v50 offset:16
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s10
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v47, v15, v46
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v115, 0x80000000, v130, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s9
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v49, v14, v46
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v116, 0x80000000, v131, s2
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v130, v13, v46
	v_mul_f32_e32 v131, v12, v46
	.loc	1 1109 17                       ; ragged.py:1109:17
	ds_load_b128 v[12:15], v50 offset:512
	ds_load_b128 v[26:29], v50 offset:528
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v134, v59, v36, 2
	v_cndmask_b32_e64 v117, 0x80000000, v132, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v59, v59, v34, 2
	v_cndmask_b32_e64 v118, 0x80000000, v133, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s6
	.loc	1 1102 17                       ; ragged.py:1102:17
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v11, v11, v46 :: v_dual_mul_f32 v96, v96, v21
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v9, v9, v46 :: v_dual_mul_f32 v94, v94, v23
	v_dual_mul_f32 v7, v7, v46 :: v_dual_mul_f32 v92, v92, v25
	v_mul_f32_e32 v5, v5, v46
	v_mul_f32_e32 v3, v3, v46
	v_dual_mul_f32 v2, v2, v46 :: v_dual_mul_f32 v97, v97, v20
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v46, v99, v18 :: v_dual_mul_f32 v93, v93, v24
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v119, 0x80000000, v134, s2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s2, s1, s5
	s_and_b32 s1, s1, s4
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v50, v98, v19
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v59, 0x80000000, v59, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s3
	.loc	1 1109 17                       ; ragged.py:1109:17
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v95, v95, v22 :: v_dual_mul_f32 v86, v86, v27
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v106, 0x80000000, v120, s19
	v_cndmask_b32_e64 v120, 0x80000000, v135, s2
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v91, v91, v12 :: v_dual_mul_f32 v82, v82, v19
	v_dual_mul_f32 v90, v90, v13 :: v_dual_mul_f32 v89, v89, v14
	v_mul_f32_e32 v80, v80, v21
	v_dual_mul_f32 v88, v88, v15 :: v_dual_mul_f32 v87, v87, v26
	v_mul_f32_e32 v74, v74, v24
	v_dual_mul_f32 v85, v85, v28 :: v_dual_mul_f32 v70, v70, v14
	v_dual_mul_f32 v43, v43, v29 :: v_dual_mul_f32 v72, v72, v12
	v_dual_mul_f32 v83, v83, v18 :: v_dual_mul_f32 v66, v66, v28
	v_dual_mul_f32 v81, v81, v20 :: v_dual_mul_f32 v68, v68, v26
	v_dual_mul_f32 v79, v79, v22 :: v_dual_mul_f32 v44, v44, v29
	v_dual_mul_f32 v75, v75, v23 :: v_dual_mul_f32 v30, v30, v21
	v_dual_mul_f32 v73, v73, v25 :: v_dual_mul_f32 v32, v32, v19
	v_dual_mul_f32 v71, v71, v13 :: v_dual_mul_f32 v84, v84, v23
	v_mul_f32_e32 v69, v69, v15
	v_dual_mul_f32 v67, v67, v27 :: v_dual_mul_f32 v98, v121, v24
	v_mul_f32_e32 v99, v122, v25
	v_mul_f32_e32 v122, v124, v13
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1e
	buffer_store_b32 v46, v1, s[36:39], 0 offen
	buffer_store_b32 v50, v58, s[36:39], 0 offen
	buffer_store_b32 v97, v62, s[36:39], 0 offen
	buffer_store_b32 v96, v63, s[36:39], 0 offen
	buffer_store_b32 v95, v64, s[36:39], 0 offen
	buffer_store_b32 v94, v76, s[36:39], 0 offen
	buffer_store_b32 v93, v77, s[36:39], 0 offen
	buffer_store_b32 v92, v78, s[36:39], 0 offen
	buffer_store_b32 v91, v100, s[36:39], 0 offen
	buffer_store_b32 v90, v101, s[36:39], 0 offen
	buffer_store_b32 v89, v102, s[36:39], 0 offen
	buffer_store_b32 v88, v103, s[36:39], 0 offen
	buffer_store_b32 v87, v104, s[36:39], 0 offen
	buffer_store_b32 v86, v105, s[36:39], 0 offen
	buffer_store_b32 v85, v106, s[36:39], 0 offen
	buffer_store_b32 v43, v42, s[36:39], 0 offen
	buffer_store_b32 v83, v61, s[36:39], 0 offen
	buffer_store_b32 v82, v107, s[36:39], 0 offen
	buffer_store_b32 v81, v108, s[36:39], 0 offen
	buffer_store_b32 v80, v109, s[36:39], 0 offen
	buffer_store_b32 v79, v110, s[36:39], 0 offen
	buffer_store_b32 v75, v111, s[36:39], 0 offen
	buffer_store_b32 v74, v112, s[36:39], 0 offen
	buffer_store_b32 v73, v113, s[36:39], 0 offen
	buffer_store_b32 v72, v114, s[36:39], 0 offen
	buffer_store_b32 v71, v115, s[36:39], 0 offen
	buffer_store_b32 v70, v116, s[36:39], 0 offen
	buffer_store_b32 v69, v117, s[36:39], 0 offen
	buffer_store_b32 v68, v118, s[36:39], 0 offen
	buffer_store_b32 v67, v119, s[36:39], 0 offen
	buffer_store_b32 v66, v120, s[36:39], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v136, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s18
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v33, v33, v18 :: v_dual_mul_f32 v124, v126, v15
	v_mul_f32_e32 v121, v123, v12
	v_mul_f32_e32 v9, v9, v12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v12, 0x80000000, v137, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s17
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v31, v31, v20 :: v_dual_mul_f32 v126, v128, v27
	v_dual_mul_f32 v123, v125, v14 :: v_dual_mul_f32 v10, v10, v25
	v_dual_mul_f32 v125, v127, v26 :: v_dual_mul_f32 v8, v8, v13
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v13, 0x80000000, v138, s1
	s_clause 0x1
	buffer_store_b32 v44, v59, s[36:39], 0 offen
	buffer_store_b32 v33, v1, s[36:39], 0 offen
	v_add_lshl_u32 v1, v60, v55, 2
	s_clause 0x1
	buffer_store_b32 v32, v12, s[36:39], 0 offen
	buffer_store_b32 v31, v13, s[36:39], 0 offen
	v_add_lshl_u32 v12, v60, v54, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v13, v60, v53, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s15
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v7, v7, v14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v14, v60, v52, 2
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v65, v65, v22 :: v_dual_mul_f32 v16, v16, v19
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v30, v1, s[36:39], 0 offen
	buffer_store_b32 v65, v12, s[36:39], 0 offen
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v1, v60, v51, 2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_add_lshl_u32 v12, v60, v41, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v84, v13, s[36:39], 0 offen
	buffer_store_b32 v98, v14, s[36:39], 0 offen
	v_add_lshl_u32 v13, v60, v40, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v14, v60, v39, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s10
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v17, v17, v18 :: v_dual_mul_f32 v2, v2, v29
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s9
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v18, v47, v20
	v_mul_f32_e32 v20, v130, v22
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	s_clause 0x1
	buffer_store_b32 v99, v1, s[36:39], 0 offen
	buffer_store_b32 v121, v12, s[36:39], 0 offen
	v_add_lshl_u32 v1, v60, v38, 2
	v_add_lshl_u32 v12, v60, v37, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v122, v13, s[36:39], 0 offen
	buffer_store_b32 v123, v14, s[36:39], 0 offen
	v_add_lshl_u32 v13, v60, v36, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v14, v60, v35, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s6
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v127, v129, v28 :: v_dual_mul_f32 v6, v6, v15
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s0, s5
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v124, v1, s[36:39], 0 offen
	buffer_store_b32 v125, v12, s[36:39], 0 offen
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_add_lshl_u32 v1, v60, v34, 2
	v_add_lshl_u32 v12, v0, v48, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, s0, s4
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v126, v13, s[36:39], 0 offen
	buffer_store_b32 v127, v14, s[36:39], 0 offen
	v_add_lshl_u32 v13, v0, v57, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s3
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v45, v45, v29 :: v_dual_mul_f32 v4, v4, v27
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v14, v0, v56, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s18
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v45, v1, s[36:39], 0 offen
	buffer_store_b32 v17, v12, s[36:39], 0 offen
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s17
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v1, v0, v55, 2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	v_add_lshl_u32 v12, v0, v54, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v16, v13, s[36:39], 0 offen
	buffer_store_b32 v18, v14, s[36:39], 0 offen
	v_add_lshl_u32 v13, v0, v53, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v14, v0, v52, 2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s14
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v19, v49, v21
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s13
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v21, v131, v23
	v_mul_f32_e32 v11, v11, v24
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	s_clause 0x1
	buffer_store_b32 v19, v1, s[36:39], 0 offen
	buffer_store_b32 v20, v12, s[36:39], 0 offen
	v_add_lshl_u32 v1, v0, v51, 2
	s_clause 0x1
	buffer_store_b32 v21, v13, s[36:39], 0 offen
	buffer_store_b32 v11, v14, s[36:39], 0 offen
	v_add_lshl_u32 v11, v0, v41, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v12, v0, v40, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v13, v0, v39, 2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v10, v1, s[36:39], 0 offen
	buffer_store_b32 v9, v11, s[36:39], 0 offen
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v1, v0, v38, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	s_clause 0x1
	buffer_store_b32 v8, v12, s[36:39], 0 offen
	buffer_store_b32 v7, v13, s[36:39], 0 offen
	v_add_lshl_u32 v7, v0, v37, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v8, v0, v36, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v9, v0, v35, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	v_add_lshl_u32 v0, v0, v34, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s6
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v5, v5, v26
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s5
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v3, v3, v28
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v6, v1, s[36:39], 0 offen
	buffer_store_b32 v5, v7, s[36:39], 0 offen
	buffer_store_b32 v4, v8, s[36:39], 0 offen
	buffer_store_b32 v3, v9, s[36:39], 0 offen
	buffer_store_b32 v2, v0, s[36:39], 0 offen
	.loc	1 970 5                         ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 220
		.amdhsa_next_free_sgpr 93
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 220
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 93
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9460
; TotalNumSgprs: 95
; NumVgprs: 220
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 95
; NumVGPRsForWavesPerEU: 220
; Occupancy: 6
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     95
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_pc_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     220
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
