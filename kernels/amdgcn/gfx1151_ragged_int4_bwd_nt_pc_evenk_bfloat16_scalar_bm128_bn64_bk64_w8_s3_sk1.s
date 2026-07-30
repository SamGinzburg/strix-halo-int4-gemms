	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s8, s2
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
	s_ashr_i32 s46, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s45, s5, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s45, s46
	.loc	1 998 20                        ; ragged.py:998:20
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s6
	s_mul_hi_u32 s7, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s6, s45
	.loc	1 998 20                        ; ragged.py:998:20
	s_xor_b32 s5, s5, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_f32_u32 s8, s6
	.loc	1 998 20                        ; ragged.py:998:20
	s_sub_i32 s28, s5, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s5, 0, s6
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s28, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v1, s8
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s9, s2, s4
	.loc	1 1023 39                       ; ragged.py:1023:39
	s_mul_i32 s41, s28, s34
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s7, s9
	s_xor_b32 s10, s9, s45
	.loc	1 1025 39                       ; ragged.py:1025:39
	s_mul_i32 s42, s28, s35
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_ashr_i32 s47, s10, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_cvt_u32_f32 s8, s8
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s8
	s_mul_hi_u32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_i32 s8, s8, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s8, s7, s8
	s_mul_i32 s11, s8, s6
	s_add_i32 s10, s8, 1
	s_sub_i32 s7, s7, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s11, s7, s6
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s8, s10, s8
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s8, 1
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s6, s10, s8
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_ashr_i32 s29, s28, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s48, s6, s47
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[6:7], s[28:29], 2
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s8, s48, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s10, s8, s45
	.loc	1 1003 18                       ; ragged.py:1003:18
	s_lshl_b32 s40, s8, 7
	.loc	1 1001 17                       ; ragged.py:1001:17
	s_sub_i32 s9, s9, s10
	.loc	1 1004 18                       ; ragged.py:1004:18
	s_lshl_b32 s33, s9, 6
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 1016 22                       ; ragged.py:1016:22
	s_lshl_b32 s44, s3, 5
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s4, s[4:5], 0x0
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1008 26 is_stmt 0             ; ragged.py:1008:26
	s_lshr_b32 s5, s4, 31
	s_add_i32 s4, s4, s5
	s_mov_b32 s5, 0
	s_ashr_i32 s43, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1018 23 is_stmt 1             ; ragged.py:1018:23
	s_cmp_lt_i32 s44, s43
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1098 21                       ; ragged.py:1098:21
	s_add_i32 s3, s40, s41
	.loc	1 1105 21                       ; ragged.py:1105:21
	s_add_i32 s4, s33, s42
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 21 is_stmt 0                ; ragged.py:0:21
	s_mov_b32 s5, -1
                                        ; implicit-def: $sgpr3
                                        ; implicit-def: $sgpr4
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x10
	s_load_b64 s[52:53], s[0:1], 0x28
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v58, 15, v0
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v59, 0xc0, v0
	v_dual_mov_b32 v5, 0 :: v_dual_and_b32 v60, 32, v0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_mov_b32_e32 v48, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1003 36 is_stmt 1             ; ragged.py:1003:36
	v_lshrrev_b32_e32 v2, 5, v0
	s_clause 0x1
	s_load_b128 s[36:39], s[0:1], 0x0
	s_load_b32 s29, s[0:1], 0x38
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_mul_i32 s46, s46, s28
	s_lshl_b32 s2, s2, 6
	s_sub_i32 s28, s47, s46
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v1, 8, v2
	v_or_b32_e32 v4, 24, v2
	v_or_b32_e32 v6, 40, v2
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_sub_i32 s28, s28, s48
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v11, s40, v2
	v_or_b32_e32 v12, s40, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v1, s33, v1
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_mul_i32 s45, s45, s28
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v14, s40, v4
	.loc	1 1003 36 is_stmt 0             ; ragged.py:1003:36
	v_or_b32_e32 v8, 56, v2
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v16, s40, v6
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s16, s35, v1
	v_lshlrev_b32_e32 v1, 1, v0
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v6, s33, v6
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_lshl_b32 s28, s45, 6
	s_add_i32 s45, s2, s42
	s_add_i32 s46, s28, s42
	v_and_b32_e32 v1, 24, v1
	s_add_i32 s45, s45, s28
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v19, 64, v11
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s23, s34, v14
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_add3_u32 v14, s46, s2, v2
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s4, s34, v16
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s20, s35, v6
	v_lshl_or_b32 v6, v58, 5, v1
	.loc	1 1011 18                       ; ragged.py:1011:18
	v_and_b32_e32 v1, 31, v0
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_add_nc_u32_e32 v16, s45, v8
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s7, s34, v19
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_add_nc_u32_e32 v19, 48, v14
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v10, 0x78, v2
	v_or_b32_e32 v9, 0x58, v2
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[33:34], null, s29, v16, v[1:2]
	v_add_nc_u32_e32 v16, 40, v14
	v_mad_u64_u32 v[34:35], null, s29, v19, v[1:2]
	v_add_nc_u32_e32 v19, 32, v14
	s_lshl_b32 s2, s48, 7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[35:36], null, s29, v16, v[1:2]
	v_add_nc_u32_e32 v16, s45, v4
	v_mad_u64_u32 v[36:37], null, s29, v19, v[1:2]
	v_add_nc_u32_e32 v19, 16, v14
	s_add_i32 s2, s41, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[37:38], null, s29, v16, v[1:2]
	v_add_nc_u32_e32 v16, 8, v14
	v_mad_u64_u32 v[38:39], null, s29, v19, v[1:2]
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v3, 16, v2
	v_or_b32_e32 v5, 32, v2
	v_or_b32_e32 v7, 48, v2
	.loc	1 1003 18 is_stmt 0             ; ragged.py:1003:18
	v_or_b32_e32 v26, s40, v10
	.loc	1 1004 18 is_stmt 1             ; ragged.py:1004:18
	v_or_b32_e32 v27, s33, v2
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_mad_u64_u32 v[39:40], null, s29, v16, v[1:2]
	v_add_nc_u32_e32 v10, s2, v10
	v_add_nc_u32_e32 v2, s2, v2
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v22, s40, v9
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_add_nc_u32_e32 v9, s2, v9
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v18, s40, v8
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v29, s33, v8
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_lshl_b32 s28, s47, 7
	v_add_nc_u32_e32 v8, s2, v8
	v_mad_u64_u32 v[40:41], null, s29, v14, v[1:2]
	v_subrev_nc_u32_e32 v10, s28, v10
	v_subrev_nc_u32_e32 v2, s28, v2
	v_subrev_nc_u32_e32 v9, s28, v9
	v_subrev_nc_u32_e32 v8, s28, v8
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v28, s33, v4
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_add_nc_u32_e32 v4, s2, v4
	v_mad_u64_u32 v[41:42], null, s29, v10, v[1:2]
	v_mad_u64_u32 v[42:43], null, s29, v9, v[1:2]
	v_add_nc_u32_e32 v9, 48, v2
	v_mad_u64_u32 v[43:44], null, s29, v8, v[1:2]
	v_add_nc_u32_e32 v8, 40, v2
	v_subrev_nc_u32_e32 v4, s28, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[44:45], null, s29, v9, v[1:2]
	v_add_nc_u32_e32 v9, 32, v2
	v_mad_u64_u32 v[45:46], null, s29, v8, v[1:2]
	v_add_nc_u32_e32 v8, 16, v2
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v13, s40, v3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_mad_u64_u32 v[46:47], null, s29, v9, v[1:2]
	v_mad_u64_u32 v[47:48], null, s29, v4, v[1:2]
	v_add_nc_u32_e32 v4, 8, v2
	v_mad_u64_u32 v[48:49], null, s29, v8, v[1:2]
	v_add_nc_u32_e32 v8, 0x70, v2
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v3, s33, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_mad_u64_u32 v[49:50], null, s29, v4, v[1:2]
	v_add_nc_u32_e32 v4, 0x68, v2
	v_mad_u64_u32 v[50:51], null, s29, v8, v[1:2]
	v_add_nc_u32_e32 v8, 0x60, v2
	v_add_nc_u32_e32 v9, 64, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[51:52], null, s29, v4, v[1:2]
	v_add_nc_u32_e32 v4, 0x50, v2
	v_mad_u64_u32 v[52:53], null, s29, v8, v[1:2]
	v_add_nc_u32_e32 v8, 0x48, v2
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v15, s40, v5
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v5, s33, v5
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s17, s35, v3
	v_bfe_i32 v3, v0, 7, 1
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_mad_u64_u32 v[53:54], null, s29, v4, v[1:2]
	v_mad_u64_u32 v[54:55], null, s29, v8, v[1:2]
	v_mad_u64_u32 v[55:56], null, s29, v9, v[1:2]
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s19, s35, v5
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_mad_u64_u32 v[56:57], null, s29, v2, v[1:2]
	v_mov_b32_e32 v1, 0
	v_and_b32_e32 v5, 0x7f, v0
	v_and_b32_e32 v3, 0x88, v3
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v17, s40, v7
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v7, s33, v7
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v4, v1
	v_xor_b32_e32 v3, v3, v5
	v_lshl_or_b32 v5, v59, 3, v6
	v_lshl_or_b32 v6, v60, 4, v6
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v20, 0x48, v11
	v_or_b32_e32 v21, 0x50, v11
	v_or_b32_e32 v23, 0x60, v11
	v_or_b32_e32 v24, 0x68, v11
	v_or_b32_e32 v25, 0x70, v11
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v11
	v_cmp_gt_i32_e64 s0, s34, v12
	v_cmp_gt_i32_e64 s1, s34, v13
	v_cmp_gt_i32_e64 s3, s34, v15
	v_cmp_gt_i32_e64 s5, s34, v17
	v_cmp_gt_i32_e64 s6, s34, v18
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s21, s35, v7
	v_xor_b32_e32 v7, 0x110, v3
	v_xor_b32_e32 v11, 8, v5
	v_xor_b32_e32 v12, 16, v5
	v_xor_b32_e32 v13, 24, v5
	v_xor_b32_e32 v15, 8, v6
	v_xor_b32_e32 v17, 16, v6
	v_xor_b32_e32 v18, 24, v6
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s8, s34, v20
	v_cmp_gt_i32_e64 s9, s34, v21
	v_cmp_gt_i32_e64 s10, s34, v22
	v_cmp_gt_i32_e64 s11, s34, v23
	v_cmp_gt_i32_e64 s12, s34, v24
	v_cmp_gt_i32_e64 s13, s34, v25
	v_cmp_gt_i32_e64 s14, s34, v26
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s15, s35, v27
	v_cmp_gt_i32_e64 s18, s35, v28
	v_cmp_gt_i32_e64 s22, s35, v29
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v57, 0, v3
	v_dual_mov_b32 v22, v1 :: v_dual_add_nc_u32 v61, 0, v7
	v_add_nc_u32_e32 v62, 0, v5
	v_dual_mov_b32 v24, v1 :: v_dual_add_nc_u32 v63, 0, v11
	v_add_nc_u32_e32 v64, 0, v12
	v_dual_mov_b32 v26, v1 :: v_dual_add_nc_u32 v65, 0, v13
	v_add_nc_u32_e32 v66, 0, v6
	v_dual_mov_b32 v28, v1 :: v_dual_add_nc_u32 v67, 0, v15
	v_add_nc_u32_e32 v68, 0, v17
	v_dual_mov_b32 v30, v1 :: v_dual_add_nc_u32 v69, 0, v18
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s39, s39, 0xffff
	s_mov_b32 s28, s36
	s_mov_b32 s29, s37
	s_mov_b32 s36, s38
	s_mov_b32 s37, s39
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1028 42                       ; ragged.py:1028:42
	v_add_nc_u32_e32 v70, s44, v56
	v_add_nc_u32_e32 v72, s44, v48
	v_add_nc_u32_e32 v74, s44, v46
	v_add_nc_u32_e32 v76, s44, v44
	v_add_nc_u32_e32 v71, s44, v49
	v_add_nc_u32_e32 v73, s44, v47
	v_add_nc_u32_e32 v75, s44, v45
	v_add_nc_u32_e32 v77, s44, v43
	v_add_nc_u32_e32 v78, s44, v55
	v_add_nc_u32_e32 v79, s44, v54
	v_add_nc_u32_e32 v80, s44, v53
	v_add_nc_u32_e32 v81, s44, v42
	v_add_nc_u32_e32 v82, s44, v52
	v_add_nc_u32_e32 v83, s44, v51
	v_add_nc_u32_e32 v84, s44, v50
	.loc	1 1028 34 is_stmt 0             ; ragged.py:1028:34
	v_add_nc_u32_e32 v85, s44, v41
	.loc	1 1029 42 is_stmt 1             ; ragged.py:1029:42
	v_add_nc_u32_e32 v86, s44, v40
	v_add_nc_u32_e32 v87, s44, v39
	v_add_nc_u32_e32 v88, s44, v38
	v_add_nc_u32_e32 v89, s44, v37
	v_add_nc_u32_e32 v90, s44, v36
	v_add_nc_u32_e32 v91, s44, v35
	v_add_nc_u32_e32 v92, s44, v34
	.loc	1 1029 34 is_stmt 0             ; ragged.py:1029:34
	v_add_nc_u32_e32 v93, s44, v33
	.loc	1 1028 34 is_stmt 1             ; ragged.py:1028:34
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	v_cndmask_b32_e64 v72, 0x80000000, v72, s1
	v_cndmask_b32_e64 v74, 0x80000000, v74, s3
	v_cndmask_b32_e64 v76, 0x80000000, v76, s5
	v_cndmask_b32_e64 v71, 0x80000000, v71, s0
	v_cndmask_b32_e64 v73, 0x80000000, v73, s23
	v_cndmask_b32_e64 v75, 0x80000000, v75, s4
	v_cndmask_b32_e64 v77, 0x80000000, v77, s6
	v_cndmask_b32_e64 v78, 0x80000000, v78, s7
	v_cndmask_b32_e64 v79, 0x80000000, v79, s8
	v_cndmask_b32_e64 v80, 0x80000000, v80, s9
	v_cndmask_b32_e64 v81, 0x80000000, v81, s10
	v_cndmask_b32_e64 v82, 0x80000000, v82, s11
	v_cndmask_b32_e64 v83, 0x80000000, v83, s12
	v_cndmask_b32_e64 v84, 0x80000000, v84, s13
	v_cndmask_b32_e64 v85, 0x80000000, v85, s14
	.loc	1 1029 34                       ; ragged.py:1029:34
	v_cndmask_b32_e64 v86, 0x80000000, v86, s15
	v_cndmask_b32_e64 v87, 0x80000000, v87, s16
	v_cndmask_b32_e64 v88, 0x80000000, v88, s17
	v_cndmask_b32_e64 v89, 0x80000000, v89, s18
	v_cndmask_b32_e64 v90, 0x80000000, v90, s19
	v_cndmask_b32_e64 v91, 0x80000000, v91, s20
	v_cndmask_b32_e64 v92, 0x80000000, v92, s21
	v_cndmask_b32_e64 v93, 0x80000000, v93, s22
	.loc	1 1028 34                       ; ragged.py:1028:34
	s_clause 0xf
	buffer_load_u8 v70, v70, s[28:31], 0 offen
	buffer_load_u8 v72, v72, s[28:31], 0 offen
	buffer_load_u8 v74, v74, s[28:31], 0 offen
	buffer_load_u8 v76, v76, s[28:31], 0 offen
	buffer_load_u8 v78, v78, s[28:31], 0 offen
	buffer_load_u8 v80, v80, s[28:31], 0 offen
	buffer_load_u8 v82, v82, s[28:31], 0 offen
	buffer_load_u8 v84, v84, s[28:31], 0 offen
	buffer_load_u8 v71, v71, s[28:31], 0 offen
	buffer_load_u8 v73, v73, s[28:31], 0 offen
	buffer_load_u8 v75, v75, s[28:31], 0 offen
	buffer_load_u8 v77, v77, s[28:31], 0 offen
	buffer_load_u8 v79, v79, s[28:31], 0 offen
	buffer_load_u8 v81, v81, s[28:31], 0 offen
	buffer_load_u8 v83, v83, s[28:31], 0 offen
	buffer_load_u8 v85, v85, s[28:31], 0 offen
	.loc	1 1029 34                       ; ragged.py:1029:34
	s_clause 0x7
	buffer_load_u8 v86, v86, s[36:39], 0 offen
	buffer_load_u8 v88, v88, s[36:39], 0 offen
	buffer_load_u8 v90, v90, s[36:39], 0 offen
	buffer_load_u8 v92, v92, s[36:39], 0 offen
	buffer_load_u8 v87, v87, s[36:39], 0 offen
	buffer_load_u8 v89, v89, s[36:39], 0 offen
	buffer_load_u8 v91, v91, s[36:39], 0 offen
	buffer_load_u8 v93, v93, s[36:39], 0 offen
	.loc	1 1028 34                       ; ragged.py:1028:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1040 21                       ; ragged.py:1040:21
	s_add_i32 s44, s44, 32
	.loc	1 1028 34                       ; ragged.py:1028:34
	s_waitcnt vmcnt(23)
	ds_store_b8 v57, v70
	s_waitcnt vmcnt(22)
	ds_store_b8 v57, v72 offset:512
	s_waitcnt vmcnt(21)
	ds_store_b8 v57, v74 offset:1024
	s_waitcnt vmcnt(20)
	ds_store_b8 v57, v76 offset:1536
	s_waitcnt vmcnt(19)
	ds_store_b8 v57, v78 offset:2048
	s_waitcnt vmcnt(18)
	ds_store_b8 v57, v80 offset:2560
	s_waitcnt vmcnt(17)
	ds_store_b8 v57, v82 offset:3072
	s_waitcnt vmcnt(16)
	ds_store_b8 v57, v84 offset:3584
	s_waitcnt vmcnt(15)
	ds_store_b8 v61, v71
	s_waitcnt vmcnt(14)
	ds_store_b8 v61, v73 offset:512
	s_waitcnt vmcnt(13)
	ds_store_b8 v61, v75 offset:1024
	s_waitcnt vmcnt(12)
	ds_store_b8 v61, v77 offset:1536
	s_waitcnt vmcnt(11)
	ds_store_b8 v61, v79 offset:2048
	s_waitcnt vmcnt(10)
	ds_store_b8 v61, v81 offset:2560
	s_waitcnt vmcnt(9)
	ds_store_b8 v61, v83 offset:3072
	s_waitcnt vmcnt(8)
	ds_store_b8 v61, v85 offset:3584
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[70:73], v62 offset1:4
	ds_load_2addr_stride64_b64 v[74:77], v63 offset1:4
	ds_load_2addr_stride64_b64 v[78:81], v64 offset1:4
	ds_load_2addr_stride64_b64 v[82:85], v65 offset1:4
	.loc	1 1029 34                       ; ragged.py:1029:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v57, v86
	s_waitcnt vmcnt(6)
	ds_store_b8 v57, v88 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v57, v90 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v57, v92 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v61, v87
	s_waitcnt vmcnt(2)
	ds_store_b8 v61, v89 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v61, v91 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v61, v93 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[86:89], v66 offset1:2
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_cmp_lt_i32 s44, s43
	.loc	1 1030 31                       ; ragged.py:1030:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[86:87], v[70:71], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[88:89], v[70:71], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[86:87], v[72:73], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[88:89], v[72:73], v[25:32] neg_lo:[1,1,0]
	.loc	1 1029 34                       ; ragged.py:1029:34
	ds_load_2addr_stride64_b64 v[70:73], v67 offset1:2
	.loc	1 1030 31                       ; ragged.py:1030:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[70:71], v[74:75], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[72:73], v[74:75], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[70:71], v[76:77], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[72:73], v[76:77], v[25:32] neg_lo:[1,1,0]
	.loc	1 1029 34                       ; ragged.py:1029:34
	ds_load_2addr_stride64_b64 v[70:73], v68 offset1:2
	.loc	1 1030 31                       ; ragged.py:1030:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[70:71], v[78:79], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[72:73], v[78:79], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[70:71], v[80:81], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[72:73], v[80:81], v[25:32] neg_lo:[1,1,0]
	.loc	1 1029 34                       ; ragged.py:1029:34
	ds_load_2addr_stride64_b64 v[70:73], v69 offset1:2
	.loc	1 1030 31                       ; ragged.py:1030:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[70:71], v[82:83], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[72:73], v[82:83], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[70:71], v[84:85], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[72:73], v[84:85], v[25:32] neg_lo:[1,1,0]
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v48, v1
	v_cvt_f32_i32_e32 v47, v2
	v_cvt_f32_i32_e32 v46, v3
	v_cvt_f32_i32_e32 v45, v4
	v_cvt_f32_i32_e32 v44, v5
	v_cvt_f32_i32_e32 v43, v6
	v_cvt_f32_i32_e32 v42, v7
	v_cvt_f32_i32_e32 v41, v8
	v_cvt_f32_i32_e32 v40, v9
	v_cvt_f32_i32_e32 v39, v10
	v_cvt_f32_i32_e32 v38, v11
	v_cvt_f32_i32_e32 v37, v12
	v_cvt_f32_i32_e32 v36, v13
	v_cvt_f32_i32_e32 v35, v14
	v_cvt_f32_i32_e32 v34, v15
	v_cvt_f32_i32_e32 v33, v16
	v_cvt_f32_i32_e32 v16, v17
	v_cvt_f32_i32_e32 v17, v18
	v_cvt_f32_i32_e32 v12, v19
	v_cvt_f32_i32_e32 v13, v20
	v_cvt_f32_i32_e32 v14, v21
	v_cvt_f32_i32_e32 v15, v22
	v_cvt_f32_i32_e32 v10, v23
	v_cvt_f32_i32_e32 v11, v24
	v_cvt_f32_i32_e32 v8, v25
	v_cvt_f32_i32_e32 v9, v26
	v_cvt_f32_i32_e32 v4, v27
	v_cvt_f32_i32_e32 v5, v28
	v_cvt_f32_i32_e32 v6, v29
	v_cvt_f32_i32_e32 v7, v30
	v_cvt_f32_i32_e32 v3, v31
	v_cvt_f32_i32_e32 v2, v32
	s_add_i32 s3, s40, s41
	s_add_i32 s4, s33, s42
.LBB0_7:                                ; %._crit_edge
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v52, 2, v59
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v1, 4, v0
	v_lshrrev_b32_e32 v18, 1, v60
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s49, s25, 0xffff
	s_mov_b32 s51, 0x31027000
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v52, v52, v58
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_and_or_b32 v1, v1, 1, v18
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_mov_b32 s48, s24
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_and_b32 s53, s53, 0xffff
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v67, s40, v52
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_add_lshl_u32 v68, s3, v52, 1
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v60, 2, v1
	v_or_b32_e32 v18, 46, v1
	v_or_b32_e32 v19, 44, v1
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v67
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v20, 42, v1
	v_or_b32_e32 v21, 40, v1
	v_or_b32_e32 v22, 38, v1
	v_or_b32_e32 v23, 36, v1
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_cndmask_b32_e64 v67, 0x80000000, v68, s0
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v68, s33, v1
	.loc	1 1004 36 is_stmt 0             ; ragged.py:1004:36
	v_or_b32_e32 v24, 34, v1
	v_or_b32_e32 v32, 32, v1
	v_or_b32_e32 v49, 14, v1
	v_or_b32_e32 v50, 12, v1
	v_or_b32_e32 v51, 10, v1
	v_or_b32_e32 v57, 8, v1
	v_or_b32_e32 v58, 6, v1
	v_or_b32_e32 v59, 4, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v65, s33, v60
	.loc	1 1104 36 is_stmt 1             ; ragged.py:1104:36
	v_add_lshl_u32 v1, s4, v1, 1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s35, v68
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v60, s4, v60, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v64, s33, v59
	v_or_b32_e32 v63, s33, v58
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v59, s4, v59, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s35, v65
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v62, s33, v57
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v58, s4, v58, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v56, s33, v51
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v57, s4, v57, 1
	v_cndmask_b32_e64 v60, 0x80000000, v60, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s35, v64
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v61, 64, v52
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v55, s33, v50
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v51, s4, v51, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v54, s33, v49
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v59, 0x80000000, v59, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s35, v63
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v66, s40, v61
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v50, s4, v50, 1
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_add_lshl_u32 v69, s3, v61, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v53, s33, v32
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v58, 0x80000000, v58, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s35, v62
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v66
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v49, s4, v49, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v31, s33, v24
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v32, s4, v32, 1
	v_cndmask_b32_e64 v57, 0x80000000, v57, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s35, v56
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_dual_cndmask_b32 v66, 0x80000000, v69 :: v_dual_and_b32 v69, 16, v0
	s_clause 0x1
	buffer_load_u16 v67, v67, s[48:51], 0 offen
	buffer_load_u16 v66, v66, s[48:51], 0 offen
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v51, 0x80000000, v51, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s35, v55
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_and_b32 s49, s27, 0xffff
	s_mov_b32 s48, s26
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v30, s33, v23
	v_or_b32_e32 v29, s33, v22
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v50, 0x80000000, v50, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s35, v54
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v23, s4, v23, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v28, s33, v21
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v22, s4, v22, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v27, s33, v20
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v49, 0x80000000, v49, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s35, v53
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_clause 0x7
	buffer_load_u16 v54, v1, s[48:51], 0 offen
	buffer_load_u16 v55, v60, s[48:51], 0 offen
	buffer_load_u16 v56, v59, s[48:51], 0 offen
	buffer_load_u16 v58, v58, s[48:51], 0 offen
	buffer_load_u16 v57, v57, s[48:51], 0 offen
	buffer_load_u16 v51, v51, s[48:51], 0 offen
	buffer_load_u16 v50, v50, s[48:51], 0 offen
	buffer_load_u16 v49, v49, s[48:51], 0 offen
	v_add_lshl_u32 v1, s4, v24, 1
	v_add_lshl_u32 v21, s4, v21, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v26, s33, v19
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v24, 0x80000000, v32, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s35, v31
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v20, s4, v20, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v25, s33, v18
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v19, s4, v19, 1
	v_add_lshl_u32 v18, s4, v18, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s35, v30
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s35, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s35, v28
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s35, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v20, 0x80000000, v20, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s35, v26
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s35, v25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v18, 0x80000000, v18, s1
	s_clause 0x7
	buffer_load_u16 v53, v1, s[48:51], 0 offen
	buffer_load_u16 v59, v24, s[48:51], 0 offen
	buffer_load_u16 v60, v22, s[48:51], 0 offen
	buffer_load_u16 v62, v23, s[48:51], 0 offen
	buffer_load_u16 v63, v20, s[48:51], 0 offen
	buffer_load_u16 v64, v21, s[48:51], 0 offen
	buffer_load_u16 v65, v18, s[48:51], 0 offen
	buffer_load_u16 v68, v19, s[48:51], 0 offen
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_mul_i32 s1, s3, s35
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	v_mov_b16_e32 v18.h, 0
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_add_i32 s4, s1, s33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1004 36 is_stmt 1             ; ragged.py:1004:36
	v_and_b32_e32 v70, 24, v1
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mad_u64_u32 v[31:32], null, s35, v52, s[4:5]
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	v_mov_b16_e32 v73.h, v18.h
	v_mov_b16_e32 v72.h, v18.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1004 36 is_stmt 1             ; ragged.py:1004:36
	v_or_b32_e32 v20, 38, v70
	v_or_b32_e32 v81, 1, v70
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v78.h, v18.h
	v_mov_b16_e32 v76.h, v18.h
	v_mov_b16_e32 v71.h, v18.h
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v32, s33, v20
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v74.h, v18.h
	v_mov_b16_e32 v75.h, v18.h
	v_mov_b16_e32 v77.h, v18.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s2, s35, v32
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v32, s33, v81
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s16, s35, v32
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v32, 16, v66
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v17, v17, v32
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v19, 39, v70
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v0, s33, v70
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v21, 37, v70
	.loc	1 1102 17 is_stmt 1             ; ragged.py:1102:17
	v_mul_f32_e32 v16, v16, v32
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v22, 36, v70
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v1, s33, v19
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s14, s35, v0
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v52, s33, v21
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v51, 16, v51
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s35, v1
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mad_u64_u32 v[0:1], null, s35, v61, s[4:5]
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_lshlrev_b32_e32 v1, 16, v67
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s3, s35, v52
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_lshlrev_b32_e32 v52, 16, v54
	v_lshlrev_b32_e32 v54, 16, v58
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v23, 35, v70
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v48, v48, v1
	v_mul_f32_e32 v47, v47, v1
	v_mul_f32_e32 v46, v46, v1
	v_mul_f32_e32 v45, v45, v1
	v_mul_f32_e32 v44, v44, v1
	v_mul_f32_e32 v43, v43, v1
	v_mul_f32_e32 v42, v42, v1
	v_mul_f32_e32 v41, v41, v1
	v_mul_f32_e32 v40, v40, v1
	v_mul_f32_e32 v39, v39, v1
	v_mul_f32_e32 v38, v38, v1
	v_mul_f32_e32 v37, v37, v1
	v_mul_f32_e32 v36, v36, v1
	v_dual_mul_f32 v35, v35, v1 :: v_dual_mul_f32 v12, v12, v32
	v_dual_mul_f32 v34, v34, v1 :: v_dual_mul_f32 v13, v13, v32
	v_dual_mul_f32 v1, v33, v1 :: v_dual_mul_f32 v14, v14, v32
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_lshlrev_b32_e32 v33, 16, v55
	v_lshlrev_b32_e32 v55, 16, v56
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v15, v15, v32 :: v_dual_lshlrev_b32 v56, 16, v57
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v10, v10, v32 :: v_dual_lshlrev_b32 v49, 16, v49
	v_mul_f32_e32 v11, v11, v32
	v_dual_mul_f32 v9, v9, v32 :: v_dual_mul_f32 v46, v46, v55
	v_mul_f32_e32 v8, v8, v32
	v_dual_mul_f32 v4, v4, v32 :: v_dual_mul_f32 v47, v47, v33
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v53, 16, v53
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v57, 16, v59
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v58, 16, v60
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v59, 16, v62
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v60, 16, v63
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v61, 16, v64
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v62, 16, v65
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v63, 16, v68
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v5, v5, v32 :: v_dual_mul_f32 v42, v42, v50
	v_dual_mul_f32 v7, v7, v32 :: v_dual_mul_f32 v40, v40, v57
	v_dual_mul_f32 v6, v6, v32 :: v_dual_mul_f32 v45, v45, v54
	v_dual_mul_f32 v2, v2, v32 :: v_dual_mul_f32 v43, v43, v51
	v_dual_mul_f32 v3, v3, v32 :: v_dual_mul_f32 v38, v38, v59
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v32, v48, v52 :: v_dual_mul_f32 v41, v41, v49
	v_dual_mul_f32 v35, v35, v60 :: v_dual_mul_f32 v34, v34, v63
	v_dual_mul_f32 v17, v17, v33 :: v_dual_mul_f32 v12, v12, v55
	v_dual_mul_f32 v1, v1, v62 :: v_dual_mul_f32 v16, v16, v52
	v_dual_mul_f32 v37, v37, v58 :: v_dual_mul_f32 v36, v36, v61
	v_dual_mul_f32 v13, v13, v54 :: v_dual_mul_f32 v14, v14, v56
	v_dual_mul_f32 v6, v6, v61 :: v_dual_mul_f32 v7, v7, v60
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v33, v32, 16, 1
	v_bfe_u32 v48, v47, 16, 1
	v_bfe_u32 v61, v34, 16, 1
	v_mov_b16_e32 v18.l, v17.h
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v24, 34, v70
	v_or_b32_e32 v25, 33, v70
	v_or_b32_e32 v26, 32, v70
	v_or_b32_e32 v27, 7, v70
	v_or_b32_e32 v28, 6, v70
	v_or_b32_e32 v29, 5, v70
	v_or_b32_e32 v30, 4, v70
	v_or_b32_e32 v79, 3, v70
	v_or_b32_e32 v80, 2, v70
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v9, v9, v53 :: v_dual_mul_f32 v2, v2, v62
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v62, v1, 16, 1
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v15, v15, v51 :: v_dual_mul_f32 v10, v10, v50
	v_dual_mul_f32 v11, v11, v49 :: v_dual_mul_f32 v4, v4, v59
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s17, v32, v32
	v_cmp_o_f32_e64 s18, v47, v47
	v_bfe_u32 v59, v36, 16, 1
	v_cmp_o_f32_e64 s31, v34, v34
	v_add3_u32 v32, v32, v33, 0x7fff
	v_add3_u32 v33, v47, v48, 0x7fff
	v_add3_u32 v34, v34, v61, 0x7fff
	v_and_b32_e32 v47, 1, v18
	v_mov_b16_e32 v18.l, v13.h
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v82, s33, v22
	v_or_b32_e32 v83, s33, v23
	v_or_b32_e32 v84, s33, v24
	v_or_b32_e32 v85, s33, v25
	v_or_b32_e32 v86, s33, v26
	v_or_b32_e32 v87, s33, v27
	v_or_b32_e32 v88, s33, v28
	v_or_b32_e32 v89, s33, v29
	v_or_b32_e32 v90, s33, v30
	v_or_b32_e32 v91, s33, v79
	v_or_b32_e32 v92, s33, v80
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v60, v35, 16, 1
	v_cmp_o_f32_e64 s33, v1, v1
	v_add3_u32 v1, v1, v62, 0x7fff
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v8, v8, v57 :: v_dual_mul_f32 v5, v5, v58
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v57, v38, 16, 1
	v_cmp_o_f32_e64 s29, v36, v36
	v_add3_u32 v36, v36, v59, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v34.h, s31
	v_and_b32_e32 v34, 1, v18
	v_mov_b16_e32 v18.l, v15.h
	v_bfe_u32 v50, v45, 16, 1
	v_bfe_u32 v58, v37, 16, 1
	v_cmp_o_f32_e64 s30, v35, v35
	v_mov_b16_e32 v73.l, v14.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v3, v3, v63
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v35, v35, v60, 0x7fff
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v44, v44, v56 :: v_dual_mul_f32 v39, v39, v53
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v49, v46, 16, 1
	v_bfe_u32 v53, v42, 16, 1
	v_cmp_o_f32_e64 s27, v38, v38
	v_mov_b16_e32 v72.l, v12.h
	v_add3_u32 v38, v38, v57, 0x7fff
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s29
	v_and_b32_e32 v36, 1, v18
	v_mov_b16_e32 v18.l, v11.h
	v_cmp_o_f32_e64 s20, v45, v45
	v_bfe_u32 v54, v41, 16, 1
	v_bfe_u32 v55, v40, 16, 1
	v_cmp_o_f32_e64 s28, v37, v37
	v_add3_u32 v45, v45, v50, 0x7fff
	v_add3_u32 v37, v37, v58, 0x7fff
	v_and_b32_e32 v50, 1, v73
	v_mov_b16_e32 v78.l, v3.h
	v_cmp_o_f32_e64 s19, v46, v46
	v_cmp_o_f32_e64 s23, v42, v42
	v_add3_u32 v46, v46, v49, 0x7fff
	v_add3_u32 v42, v42, v53, 0x7fff
	v_and_b32_e32 v49, 1, v72
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s27
	v_and_b32_e32 v38, 1, v18
	v_mov_b16_e32 v18.l, v9.h
	v_cmp_o_f32_e64 s24, v41, v41
	v_cmp_o_f32_e64 s25, v40, v40
	v_mov_b16_e32 v76.l, v4.h
	v_add3_u32 v41, v41, v54, 0x7fff
	v_add3_u32 v40, v40, v55, 0x7fff
	v_and_b32_e32 v55, 1, v78
	v_cmp_o_f32_e64 s37, v12, v12
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s23
	v_add3_u32 v12, v12, v49, 0x7fff
	v_and_b32_e32 v42, 1, v18
	v_mov_b16_e32 v18.l, v5.h
	v_cmp_o_f32_e64 s49, v3, v3
	v_and_b32_e32 v53, 1, v76
	v_add3_u32 v3, v3, v55, 0x7fff
	v_mov_b16_e32 v71.l, v16.h
	v_cmp_o_f32_e64 s39, v14, v14
	v_add3_u32 v14, v14, v50, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v12.h, s37
	v_and_b32_e32 v12, 1, v18
	v_mov_b16_e32 v18.l, v7.h
	v_cmp_o_f32_e64 s45, v4, v4
	v_add3_u32 v4, v4, v53, 0x7fff
	v_cmp_o_f32_e64 s38, v15, v15
	v_cmp_o_f32_e64 s44, v5, v5
	v_and_b32_e32 v48, 1, v71
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s17
	v_cmp_eq_u32_e64 s17, 0, v69
	v_cndmask_b16 v4.l, 0x7fff, v14.h, s39
	v_add3_u32 v14, v15, v36, 0x7fff
	v_and_b32_e32 v15, 1, v18
	v_add3_u32 v5, v5, v12, 0x7fff
	v_mov_b32_e32 v12, 0x5410
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s4, s35, v82
	v_cmp_gt_i32_e64 s5, s35, v83
	v_cmp_gt_i32_e64 s6, s35, v84
	v_cmp_gt_i32_e64 s7, s35, v85
	v_cmp_gt_i32_e64 s8, s35, v86
	v_cmp_gt_i32_e64 s9, s35, v87
	v_cmp_gt_i32_e64 s10, s35, v88
	v_cmp_gt_i32_e64 s11, s35, v89
	v_cmp_gt_i32_e64 s12, s35, v90
	v_cmp_gt_i32_e64 s13, s35, v91
	v_cmp_gt_i32_e64 s15, s35, v92
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v51, v44, 16, 1
	v_bfe_u32 v52, v43, 16, 1
	v_cmp_o_f32_e64 s35, v16, v16
	v_mov_b16_e32 v74.l, v10.h
	v_mov_b16_e32 v75.l, v8.h
	v_mov_b16_e32 v77.l, v6.h
	v_cmp_o_f32_e64 s46, v7, v7
	v_mov_b16_e32 v18.l, v2.h
	v_add3_u32 v7, v7, v15, 0x7fff
	v_mov_b32_e32 v15, 0x7632
	v_add3_u32 v16, v16, v48, 0x7fff
	v_cndmask_b32_e64 v12, 0x1054, v12, s17
	v_cmp_o_f32_e64 s34, v17, v17
	v_add3_u32 v17, v17, v47, 0x7fff
	v_cmp_o_f32_e64 s21, v44, v44
	v_cmp_o_f32_e64 s22, v43, v43
	v_bfe_u32 v56, v39, 16, 1
	v_add3_u32 v44, v44, v51, 0x7fff
	v_add3_u32 v43, v43, v52, 0x7fff
	v_and_b32_e32 v51, 1, v74
	v_and_b32_e32 v52, 1, v75
	v_and_b32_e32 v54, 1, v77
	v_cndmask_b16 v17.l, 0x7fff, v16.h, s35
	v_and_b32_e32 v16, 1, v18
	v_cndmask_b32_e64 v15, 0x3276, v15, s17
	v_lshl_or_b32 v12, v12, 8, v12
	v_cmp_o_f32_e64 s26, v39, v39
	v_cmp_o_f32_e64 s36, v13, v13
	v_cmp_o_f32_e64 s40, v11, v11
	v_cmp_o_f32_e64 s41, v10, v10
	v_cmp_o_f32_e64 s42, v9, v9
	v_cmp_o_f32_e64 s43, v8, v8
	v_cmp_o_f32_e64 s47, v6, v6
	v_cmp_o_f32_e64 s48, v2, v2
	v_add3_u32 v39, v39, v56, 0x7fff
	v_cndmask_b16 v32.h, 0x7fff, v33.h, s18
	v_cndmask_b16 v43.l, 0x7fff, v44.h, s21
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s22
	v_add3_u32 v10, v10, v51, 0x7fff
	v_add3_u32 v8, v8, v52, 0x7fff
	v_add3_u32 v6, v6, v54, 0x7fff
	v_add3_u32 v13, v13, v34, 0x7fff
	v_add3_u32 v11, v11, v38, 0x7fff
	v_add3_u32 v9, v9, v42, 0x7fff
	v_add3_u32 v2, v2, v16, 0x7fff
	v_lshl_or_b32 v15, v15, 8, v15
	v_and_b32_e32 v12, 0x540054, v12
	v_cndmask_b16 v33.l, 0x7fff, v46.h, s19
	v_cndmask_b16 v33.h, 0x7fff, v45.h, s20
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s24
	v_cndmask_b16 v39.l, 0x7fff, v40.h, s25
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s26
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s28
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s30
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s33
	v_cndmask_b32_e64 v40, v43, v32, s17
	v_cndmask_b32_e64 v32, v32, v43, s17
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s34
	v_cndmask_b16 v6.l, 0x7fff, v10.h, s41
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s43
	v_cndmask_b16 v10.l, 0x7fff, v4.h, s45
	v_cndmask_b16 v13.l, 0x7fff, v6.h, s47
	v_cndmask_b16 v14.l, 0x7fff, v3.h, s49
	v_cndmask_b16 v3.h, 0x7fff, v13.h, s36
	v_cndmask_b16 v4.h, 0x7fff, v14.h, s38
	v_cndmask_b16 v6.h, 0x7fff, v11.h, s40
	v_cndmask_b16 v8.h, 0x7fff, v9.h, s42
	v_cndmask_b16 v10.h, 0x7fff, v5.h, s44
	v_cndmask_b16 v13.h, 0x7fff, v7.h, s46
	v_cndmask_b16 v14.h, 0x7fff, v2.h, s48
	v_and_b32_e32 v15, 0x760076, v15
	v_lshl_or_b32 v12, v12, 4, v12
	s_mov_b32 s18, 0x76543210
	v_cndmask_b32_e64 v5, v33, v41, s17
	v_cndmask_b32_e64 v9, v39, v35, s17
	v_cndmask_b32_e64 v11, v1, v37, s17
	v_cndmask_b32_e64 v1, v37, v1, s17
	v_cndmask_b32_e64 v16, v4, v17, s17
	v_cndmask_b32_e64 v4, v17, v4, s17
	v_cndmask_b32_e64 v17, v6, v3, s17
	v_cndmask_b32_e64 v3, v3, v6, s17
	v_cndmask_b32_e64 v6, v13, v8, s17
	v_cndmask_b32_e64 v8, v8, v13, s17
	v_cndmask_b32_e64 v13, v14, v10, s17
	v_cndmask_b32_e64 v10, v10, v14, s17
	v_permlanex16_b32 v14, v32, s18, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v15, v15, 4, v15
	v_and_b32_e32 v12, 0x5040504, v12
	v_add_lshl_u32 v46, v31, v70, 1
	v_cndmask_b32_e64 v2, v41, v33, s17
	v_cndmask_b32_e64 v7, v35, v39, s17
	v_permlanex16_b32 v5, v5, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v1, v1, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v4, s18, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v15, 0x7060706, v15
	v_permlanex16_b32 v3, v3, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s18, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v32, v14, v40, v12
	v_add_lshl_u32 v47, v31, v81, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v48, v31, v80, 1
	v_cndmask_b32_e64 v46, 0x80000000, v46, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v33, v5, v2, v12
	v_perm_b32 v2, v5, v2, v15
	v_perm_b32 v5, v9, v7, v12
	v_perm_b32 v7, v9, v7, v15
	v_perm_b32 v9, v1, v11, v12
	v_perm_b32 v1, v1, v11, v15
	v_perm_b32 v11, v4, v16, v12
	v_perm_b32 v4, v4, v16, v15
	v_perm_b32 v16, v3, v17, v12
	v_perm_b32 v3, v3, v17, v15
	v_perm_b32 v17, v8, v6, v12
	v_perm_b32 v6, v8, v6, v15
	v_perm_b32 v8, v10, v13, v12
	v_mov_b16_e32 v12.l, v32.h
	v_mov_b16_e32 v12.h, v18.h
	v_cndmask_b32_e64 v47, 0x80000000, v47, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v14, v14, v40, v15
	buffer_store_b16 v32, v46, s[52:55], 0 offen
	v_cndmask_b32_e64 v46, 0x80000000, v48, s17
	v_add_lshl_u32 v32, v31, v79, 1
	buffer_store_b16 v12, v47, s[52:55], 0 offen
	v_add_lshl_u32 v12, v31, v30, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v18.l, v14.h
	buffer_store_b16 v14, v46, s[52:55], 0 offen
	v_add_lshl_u32 v14, v31, v29, 1
	v_cndmask_b32_e64 v32, 0x80000000, v32, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v10, v10, v13, v15
	v_cndmask_b32_e64 v12, 0x80000000, v12, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v15.l, v33.h
	v_mov_b16_e32 v15.h, v18.h
	v_cndmask_b32_e64 v14, 0x80000000, v14, s17
	v_mov_b16_e32 v13.h, v18.h
	v_mov_b16_e32 v34.h, v18.h
	v_mov_b16_e32 v35.h, v18.h
	v_mov_b16_e32 v36.h, v18.h
	v_mov_b16_e32 v37.h, v18.h
	v_mov_b16_e32 v38.h, v18.h
	v_mov_b16_e32 v39.h, v18.h
	v_mov_b16_e32 v40.h, v18.h
	v_mov_b16_e32 v41.h, v18.h
	v_mov_b16_e32 v42.h, v18.h
	v_mov_b16_e32 v43.h, v18.h
	v_mov_b16_e32 v44.h, v18.h
	v_mov_b16_e32 v45.h, v18.h
	buffer_store_b16 v18, v32, s[52:55], 0 offen
	v_add_lshl_u32 v18, v31, v28, 1
	buffer_store_b16 v33, v12, s[52:55], 0 offen
	v_add_lshl_u32 v12, v31, v27, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v15, v14, s[52:55], 0 offen
	v_add_lshl_u32 v14, v31, v26, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v13.l, v2.h
	v_cndmask_b32_e64 v12, 0x80000000, v12, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v2, v18, s[52:55], 0 offen
	v_cndmask_b32_e64 v14, 0x80000000, v14, s17
	v_add_lshl_u32 v2, v31, v25, 1
	buffer_store_b16 v13, v12, s[52:55], 0 offen
	v_add_lshl_u32 v12, v31, v24, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v35.l, v5.h
	buffer_store_b16 v5, v14, s[52:55], 0 offen
	v_add_lshl_u32 v5, v31, v23, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v34.l, v7.h
	v_cndmask_b32_e64 v12, 0x80000000, v12, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s5
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v35, v2, s[52:55], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v5, s17
	v_add_lshl_u32 v2, v31, v22, 1
	buffer_store_b16 v7, v12, s[52:55], 0 offen
	v_add_lshl_u32 v7, v31, v21, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s4
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v34, v5, s[52:55], 0 offen
	v_add_lshl_u32 v5, v31, v20, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s3
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v37.l, v9.h
	v_cndmask_b32_e64 v7, 0x80000000, v7, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s2
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v9, v2, s[52:55], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v5, s17
	v_add_lshl_u32 v2, v31, v19, 1
	buffer_store_b16 v37, v7, s[52:55], 0 offen
	v_add_lshl_u32 v7, v0, v70, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, s0, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v36.l, v1.h
	buffer_store_b16 v1, v5, s[52:55], 0 offen
	v_add_lshl_u32 v1, v0, v81, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v39.l, v11.h
	v_cndmask_b32_e64 v5, 0x80000000, v7, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v36, v2, s[52:55], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_add_lshl_u32 v2, v0, v80, 1
	buffer_store_b16 v11, v5, s[52:55], 0 offen
	v_add_lshl_u32 v5, v0, v79, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v39, v1, s[52:55], 0 offen
	v_add_lshl_u32 v1, v0, v30, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v38.l, v4.h
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v4, v2, s[52:55], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_add_lshl_u32 v2, v0, v29, 1
	v_add_lshl_u32 v4, v0, v28, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b16 v38, v5, s[52:55], 0 offen
	buffer_store_b16 v16, v1, s[52:55], 0 offen
	v_add_lshl_u32 v1, v0, v27, 1
	v_mov_b16_e32 v41.l, v16.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v40.l, v3.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v41, v2, s[52:55], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_add_lshl_u32 v2, v0, v26, 1
	buffer_store_b16 v3, v4, s[52:55], 0 offen
	v_add_lshl_u32 v3, v0, v25, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v40, v1, s[52:55], 0 offen
	v_add_lshl_u32 v1, v0, v24, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v43.l, v17.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v17, v2, s[52:55], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_add_lshl_u32 v2, v0, v23, 1
	buffer_store_b16 v43, v3, s[52:55], 0 offen
	v_add_lshl_u32 v3, v0, v22, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s5
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v6, v1, s[52:55], 0 offen
	v_add_lshl_u32 v1, v0, v21, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s4
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v4, v0, v20, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	v_add_lshl_u32 v0, v0, v19, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s3
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v42.l, v6.h
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s2
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v45.l, v8.h
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_mov_b16_e32 v44.l, v10.h
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b16 v42, v2, s[52:55], 0 offen
	buffer_store_b16 v8, v3, s[52:55], 0 offen
	buffer_store_b16 v45, v1, s[52:55], 0 offen
	buffer_store_b16 v10, v4, s[52:55], 0 offen
	buffer_store_b16 v44, v0, s[52:55], 0 offen
	.loc	1 970 5                         ; ragged.py:970:5
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 94
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
		.amdhsa_inst_pref_size 59
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.num_vgpr, 94
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.numbered_sgpr, 56
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7480
; TotalNumSgprs: 58
; NumVgprs: 94
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 58
; NumVGPRsForWavesPerEU: 94
; Occupancy: 16
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     58
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_pc_evenk_bfloat16_scalar_bm128_bn64_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     94
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
