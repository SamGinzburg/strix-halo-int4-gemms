	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s8, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v20, 15, v0
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b32_e32 v11, 3, v0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshlrev_b32_e32 v21, 1, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v12, 0x100, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v2, 3, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v25, 0, v11
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s34, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s11, s11, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s9, s9, 5
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s5
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[4:5], null, s35, v3, v[2:3]
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s7, s10
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s6, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s6, s10
	s_sub_i32 s6, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s7, s9, s6
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 119 20 is_stmt 0              ; generate_amdgcn.py:119:20
	s_min_i32 s7, s7, 1
	.loc	1 120 29 is_stmt 1              ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s6, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s16, s7
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s17, s16
	s_xor_b32 s18, s2, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s30, s18, 31
	v_rcp_iflag_f32_e32 v1, s17
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[10:11]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v1, 1, v20
	s_mov_b32 s11, 0x31027000
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s23, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s16
	s_mul_i32 s17, s17, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s17
	s_abs_i32 s17, s2
	s_add_i32 s5, s10, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_hi_u32 s5, s17, s5
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s22, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_i32 s19, s5, s16
	s_add_i32 s18, s5, 1
	s_sub_i32 s17, s17, s19
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s19, s17, s16
	s_cmp_ge_u32 s17, s16
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s17, s19, s17
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s17, s16
	s_cselect_b32 s5, s18, s5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s16, s4, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s34, s5, s30
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s17, s4, 63
.Ltmp13:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s16
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s5, s34, s30
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s19, s3, 5
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s17, 31
.Ltmp15:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s31, s4, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s7, s5, s7
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v7, s19, v1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_mad_u64_u32 v[5:6], null, s31, v3, v[1:2]
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s7
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v8, s19, v3
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s18, s17, s3
.Ltmp19:
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s6
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s33, s5, 7
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v7
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 32, v7
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s7, s18, 6
.Ltmp21:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s18, s2, 5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s17, 63
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s5, s31, v8
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 32, v8
	.loc	1 216 34 is_stmt 1              ; generate_amdgcn.py:216:34
	s_mul_i32 s6, s18, s31
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s16, s35, s19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	s_cmp_lt_i32 s17, 64
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_add3_u32 v5, s19, s6, v5
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add3_u32 v4, s16, s33, v4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s6, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s16, s3, vcc_lo
	s_and_b32 s5, s4, s5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u16 v7, v5, s[8:11], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b64 v[5:6], v4, s[20:23], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshrrev_b32_e32 v4, 3, v0
	s_mov_b32 s5, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s17, 0x7f
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v4, 24, v4
	v_xor_b32_e32 v4, v21, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v24, 0, v4
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v4, 1, v0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(1)
	ds_store_b16 v24, v7 offset:4096
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v25, v[5:6]
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	s_mov_b64 s[26:27], s[10:11]
	s_mov_b32 s5, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr24_sgpr25
.LBB0_3:                                ; %Flow91
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[16:17], s[0:1], 0x20
	v_lshrrev_b32_e32 v26, 4, v12
	v_dual_mov_b32 v13, 0 :: v_dual_and_b32 v22, 0x70, v4
	v_bfe_u32 v23, v0, 4, 1
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_mov_b32_e32 v10, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s1, s7, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_add_i32 s19, s19, 32
	v_add3_u32 v10, s18, v26, v20
	v_add_nc_u32_e32 v6, s19, v3
	v_and_b32_e32 v9, 0xe0, v0
	s_lshl_b32 s22, s34, 7
	v_lshlrev_b32_e32 v4, 1, v0
	v_mul_lo_u32 v10, s7, v10
	v_mul_lo_u32 v6, s35, v6
	v_sub_nc_u32_e32 v28, s31, v3
	v_lshl_or_b32 v9, s34, 8, v9
	v_add_nc_u32_e32 v3, s18, v3
	s_lshl_b32 s0, s30, 8
	v_sub_nc_u32_e32 v27, s31, v1
	v_add_nc_u32_e32 v5, 0, v20
	v_subrev_nc_u32_e32 v30, s0, v9
	v_add3_u32 v2, v6, s22, v2
	v_lshlrev_b32_e32 v31, 1, v10
	s_lshl_b32 s0, s30, 7
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v15, 0
	v_mad_u64_u32 v[9:10], null, s31, v3, v[1:2]
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v4, 0x218, v4
	v_lshlrev_b32_e32 v29, 1, v23
	v_subrev_nc_u32_e32 v32, s0, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v3, v1
	v_lshl_or_b32 v4, v20, 5, v4
	v_dual_mov_b32 v14, 0 :: v_dual_add_nc_u32 v37, v5, v22
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v5, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v7, 8, v4
	v_xor_b32_e32 v8, 16, v4
	v_xor_b32_e32 v13, 24, v4
	v_dual_mov_b32 v18, 0 :: v_dual_add_nc_u32 v33, 0, v4
	v_add_nc_u32_e32 v34, 0, v7
	v_mov_b32_e32 v7, v1
	v_dual_mov_b32 v16, 0 :: v_dual_add_nc_u32 v35, 0, v8
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v36, 0, v13
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v6, v1
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v13, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	s_max_i32 s5, s1, 1
	s_mov_b64 s[24:25], s[12:13]
	s_lshl_b32 s34, s35, 1
	s_lshl_b32 s40, s35, 5
	s_mov_b32 s36, s12
	s_mov_b32 s37, s13
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s19, v27
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v38, s19, v9
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s0, s19, v28
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	buffer_load_u16 v64, v31, s[36:39], 0 offen
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s5, s5, -1
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s19, s19, 32
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_add_nc_u32 v31, 2, v31
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, s0, s4
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v39, v29, v30
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s5, 0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u16 v65, v38, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v38, 0x80000000, v32, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v66, v39, s[28:31], 0 offen
	buffer_load_u16 v67, v39, s[28:31], 0 offen offset:4
	buffer_load_u16 v68, v39, s[28:31], 0 offen offset:8
	buffer_load_u16 v69, v39, s[28:31], 0 offen offset:12
	buffer_load_u16 v70, v39, s[28:31], 0 offen offset:16
	buffer_load_u16 v71, v39, s[28:31], 0 offen offset:20
	buffer_load_u16 v72, v39, s[28:31], 0 offen offset:24
	buffer_load_u16 v73, v39, s[28:31], 0 offen offset:28
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b64 v[46:47], v38, s[20:23], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v38, v37 offset:640
	ds_load_u8 v39, v37 offset:896
	ds_load_u8 v40, v37 offset:768
	ds_load_u8 v41, v37 offset:512
	ds_load_u8 v42, v37 offset:128
	ds_load_u8 v43, v37 offset:384
	ds_load_u8 v44, v37 offset:256
	ds_load_u8 v45, v37
	ds_load_u8 v56, v37 offset:1664
	ds_load_u8 v57, v37 offset:1920
	ds_load_u8 v58, v37 offset:1792
	ds_load_u8 v59, v37 offset:1536
	ds_load_u8 v60, v37 offset:1152
	ds_load_u8 v61, v37 offset:1408
	ds_load_u8 v62, v37 offset:1280
	ds_load_u8 v63, v37 offset:1024
	ds_load_u8 v74, v37 offset:2688
	ds_load_u8 v75, v37 offset:2944
	ds_load_u8 v76, v37 offset:2816
	ds_load_u8 v77, v37 offset:2560
	ds_load_u8 v78, v37 offset:2176
	ds_load_u8 v79, v37 offset:2432
	ds_load_u8 v80, v37 offset:2304
	ds_load_u8 v81, v37 offset:2048
	ds_load_u8 v82, v37 offset:3712
	ds_load_u8 v83, v37 offset:3968
	ds_load_u8 v84, v37 offset:3840
	ds_load_u8 v85, v37 offset:3584
	ds_load_u8 v86, v37 offset:3200
	ds_load_u8 v87, v37 offset:3328
	ds_load_u8 v88, v37 offset:3072
	ds_load_u8 v89, v37 offset:3456
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[48:49], v33 offset:4096
	ds_load_b64 v[50:51], v34 offset:4096
	ds_load_b64 v[52:53], v35 offset:4096
	ds_load_b64 v[54:55], v36 offset:4096
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v38, v41, v38, 0xc0c0004
	v_perm_b32 v39, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v40, v45, v42, 0xc0c0004
	v_perm_b32 v41, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v42, v59, v56, 0xc0c0004
	v_perm_b32 v43, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v44, v63, v60, 0xc0c0004
	v_perm_b32 v45, v62, v61, 0xc0c0004
	v_lshl_or_b32 v57, v39, 16, v38
	v_lshl_or_b32 v56, v41, 16, v40
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v60, v77, v74, 0xc0c0004
	v_perm_b32 v61, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v62, v81, v78, 0xc0c0004
	v_perm_b32 v63, v80, v79, 0xc0c0004
	v_lshl_or_b32 v59, v43, 16, v42
	v_lshl_or_b32 v58, v45, 16, v44
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[38:45], v[56:57], v[48:49], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v74, v85, v82, 0xc0c0004
	v_perm_b32 v75, v84, v83, 0xc0c0004
	v_perm_b32 v76, v88, v86, 0xc0c0004
	v_perm_b32 v77, v87, v89, 0xc0c0004
	v_lshl_or_b32 v61, v61, 16, v60
	v_lshl_or_b32 v60, v63, 16, v62
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[38:45], v[58:59], v[50:51], v[38:45] neg_lo:[1,1,0]
	v_lshl_or_b32 v63, v75, 16, v74
	v_lshl_or_b32 v62, v77, 16, v76
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[38:45], v[60:61], v[52:53], v[38:45] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(9)
	ds_store_b16 v24, v65 offset:4096
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v25, v[46:47]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[38:45], v[62:63], v[54:55], v[38:45] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v49, 16, v67
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_lshlrev_b32_e32 v48, 16, v64
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v51, 16, v69
	v_lshlrev_b32_e32 v53, 16, v71
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_dual_mul_f32 v39, v48, v39 :: v_dual_lshlrev_b32 v54, 16, v72
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v55, 16, v73
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v19, v39, v49 :: v_dual_add_nc_u32 v30, s34, v30
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v41, v48, v41 :: v_dual_add_nc_u32 v32, s40, v32
	v_mul_f32_e32 v43, v48, v43
	v_mul_f32_e32 v38, v48, v38
	v_mul_f32_e32 v40, v48, v40
	v_mul_f32_e32 v42, v48, v42
	v_dual_mul_f32 v44, v48, v44 :: v_dual_fmac_f32 v17, v41, v51
	v_dual_mul_f32 v45, v48, v45 :: v_dual_lshlrev_b32 v48, 16, v66
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v15, v43, v53 :: v_dual_lshlrev_b32 v50, 16, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v13, v45, v55 :: v_dual_lshlrev_b32 v52, 16, v70
	v_fmac_f32_e32 v10, v38, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v18, v40, v50
	v_fmac_f32_e32 v14, v44, v54
	v_fmac_f32_e32 v16, v42, v52
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow92
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v2, v26, v20
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_mul_i32 s3, s18, s7
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s0, s1, 0
	v_and_b32_e32 v1, 16, v0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_add_i32 s3, s3, s0
	v_mul_lo_u32 v2, s7, v2
	s_mov_b32 s1, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v2, s3, v2, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	buffer_load_u16 v2, v2, s[24:27], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:                                ; %._crit_edge._crit_edge
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshlrev_b32_e32 v25, 1, v0
	s_branch .LBB0_9
.LBB0_8:
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_mov_b32 s1, -1
                                        ; implicit-def: $vgpr25
.LBB0_9:                                ; %Flow
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v7, 0
	s_and_not1_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 220 26 is_stmt 1              ; generate_amdgcn.py:220:26
	v_add3_u32 v9, 0, v20, v22
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v25, 0x218, v21
	ds_load_u8 v3, v9 offset:640
	ds_load_u8 v4, v9 offset:896
	ds_load_u8 v5, v9 offset:768
	ds_load_u8 v6, v9 offset:512
	ds_load_u8 v7, v9 offset:128
	ds_load_u8 v8, v9 offset:256
	ds_load_u8 v29, v9
	ds_load_u8 v30, v9 offset:384
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshl_or_b32 v20, v20, 5, v25
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_mov_b32_e32 v25, v24
	ds_load_u8 v32, v9 offset:1664
	ds_load_u8 v33, v9 offset:1792
	ds_load_u8 v34, v9 offset:1536
	ds_load_u8 v41, v9 offset:2688
	ds_load_u8 v42, v9 offset:2944
	ds_load_u8 v43, v9 offset:2816
	ds_load_u8 v44, v9 offset:2560
	ds_load_u8 v45, v9 offset:2176
	ds_load_u8 v46, v9 offset:2432
	ds_load_u8 v47, v9 offset:2304
	ds_load_u8 v48, v9 offset:2048
	v_mov_b32_e32 v26, v24
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v31, v20, 8, 0
	v_add_nc_u32_e32 v36, 0, v20
	v_xad_u32 v35, v20, 24, 0
	v_xad_u32 v20, v20, 16, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_mov_b32_e32 v27, v24
	v_mov_b32_e32 v28, v24
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v38, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v37, v6, v3, 0xc0c0004
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[3:4], v31 offset:4096
	ds_load_b64 v[5:6], v36 offset:4096
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_mov_b32_e32 v31, v24
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v7, v29, v7, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v29, v8, v30, 0xc0c0004
	v_lshl_or_b32 v8, v38, 16, v37
	ds_load_u8 v36, v9 offset:1920
	ds_load_u8 v37, v9 offset:1152
	ds_load_u8 v38, v9 offset:1408
	ds_load_u8 v39, v9 offset:1280
	ds_load_u8 v40, v9 offset:1024
	ds_load_u8 v50, v9 offset:3712
	ds_load_u8 v51, v9 offset:3968
	ds_load_u8 v52, v9 offset:3840
	ds_load_u8 v53, v9 offset:3584
	ds_load_u8 v54, v9 offset:3200
	ds_load_u8 v55, v9 offset:3456
	ds_load_u8 v56, v9 offset:3328
	ds_load_u8 v9, v9 offset:3072
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v49, v34, v32, 0xc0c0004
	v_lshl_or_b32 v7, v29, 16, v7
	v_mov_b32_e32 v29, v24
	v_mov_b32_e32 v30, v24
	s_waitcnt lgkmcnt(13)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[24:31], v[7:8], v[5:6], v[24:31] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v36, v33, v36, 0xc0c0004
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[32:33], v20 offset:4096
	ds_load_b64 v[34:35], v35 offset:4096
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v7, v44, v41, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v37, v40, v37, 0xc0c0004
	v_lshl_or_b32 v6, v36, 16, v49
	v_perm_b32 v8, v43, v42, 0xc0c0004
	v_perm_b32 v20, v48, v45, 0xc0c0004
	v_perm_b32 v36, v47, v46, 0xc0c0004
	v_lshl_or_b32 v5, v38, 16, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[24:31], v[5:6], v[3:4], v[24:31] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v8, 16, v7
	v_lshl_or_b32 v3, v36, 16, v20
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v5, v53, v50, 0xc0c0004
	v_perm_b32 v6, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v9, v54, 0xc0c0004
	v_perm_b32 v8, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[24:31], v[3:4], v[32:33], v[24:31] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v6, 16, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v3, v8, 16, v7
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[24:31], v[3:4], v[34:35], v[24:31] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v3, v24
	v_cvt_f32_i32_e32 v4, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v5, v26
	v_cvt_f32_i32_e32 v6, v27
	v_cvt_f32_i32_e32 v8, v28
	v_cvt_f32_i32_e32 v9, v29
	v_cvt_f32_i32_e32 v24, v30
	v_cvt_f32_i32_e32 v7, v31
	v_mov_b32_e32 v25, v21
.LBB0_11:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v20, v23, v22
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s0, s0, s35
	v_mov_b16_e32 v30.l, 0
	.loc	1 232 26 is_stmt 0              ; generate_amdgcn.py:232:26
	s_add_i32 s0, s33, s0
	.loc	1 195 18 is_stmt 1              ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v30.h, v2.l
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	v_add_lshl_u32 v20, s0, v20, 1
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s14
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v3, v3, v30 :: v_dual_add_nc_u32 v22, 4, v20
	v_dual_mul_f32 v4, v4, v30 :: v_dual_add_nc_u32 v23, 8, v20
	v_dual_mul_f32 v5, v5, v30 :: v_dual_add_nc_u32 v26, 12, v20
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v21, 0x80000000, v20, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v6, v6, v30 :: v_dual_add_nc_u32 v27, 16, v20
	v_dual_mul_f32 v9, v9, v30 :: v_dual_add_nc_u32 v28, 20, v20
	v_dual_mul_f32 v8, v8, v30 :: v_dual_add_nc_u32 v29, 24, v20
	v_dual_mul_f32 v7, v7, v30 :: v_dual_add_nc_u32 v20, 28, v20
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	s_clause 0x7
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	buffer_load_u16 v22, v22, s[4:7], 0 offen
	buffer_load_u16 v23, v23, s[4:7], 0 offen
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	buffer_load_u16 v29, v29, s[4:7], 0 offen
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v24, v24, v30 :: v_dual_and_b32 v31, 0x180, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_and_b32_e32 v35, 0x60, v25
	v_and_b32_e32 v25, 28, v25
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v32, 7, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshlrev_b32_e32 v37, 5, v0
	v_lshrrev_b32_e32 v31, 5, v31
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v2, 0x7f, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_and_or_b32 v11, 0xf00, v11, v25
	v_lshlrev_b32_e32 v33, 10, v0
	v_lshlrev_b32_e32 v34, 2, v0
	v_bfe_i32 v36, v0, 3, 1
	v_lshlrev_b32_e32 v1, 2, v1
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	v_mul_lo_u32 v0, s35, v32
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_and_b32_e32 v32, 32, v37
	v_xor_b32_e32 v11, v11, v31
	v_and_b32_e32 v36, 0x2040, v36
	v_and_or_b32 v34, 0x31c, v34, v35
	v_lshrrev_b32_e32 v12, 1, v12
	v_and_b32_e32 v25, 0x1c00, v33
	v_or3_b32 v1, v32, v1, v11
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_mul_i32 s0, s18, s35
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_xor_b32_e32 v30, v34, v36
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	v_add3_u32 v31, s0, s33, v2
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v37, 0, v1
	v_xad_u32 v38, 0x1010, v1, 0
	v_xad_u32 v39, 0x2040, v1, 0
	v_xad_u32 v40, 0x3050, v1, 0
	v_or3_b32 v2, v25, v12, v30
	s_barrier
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	v_lshl_add_u32 v33, s35, 2, v0
	v_lshl_add_u32 v25, s35, 3, v0
	.loc	1 247 9 is_stmt 0               ; generate_amdgcn.py:247:9
	s_and_b32 s17, s17, 0xffff
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v11, 0, v2
	v_xad_u32 v12, v2, 4, 0
	v_xad_u32 v30, v2, 8, 0
	v_xad_u32 v32, v2, 12, 0
	v_xad_u32 v34, v2, 16, 0
	v_xad_u32 v35, v2, 20, 0
	v_xad_u32 v36, v2, 24, 0
	v_xad_u32 v2, v2, 28, 0
	.loc	1 247 9                         ; generate_amdgcn.py:247:9
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v1, 16, v21
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v21, 16, v22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v22, 16, v23
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v23, 16, v26
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v26, 16, v27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v27, 16, v28
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v28, 16, v29
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v1, v3, v1, v10
	v_fma_f32 v3, v4, v21, v19
	v_fma_f32 v4, v5, v22, v18
	v_fma_f32 v5, v6, v23, v17
	v_fma_f32 v6, v8, v26, v16
	v_fma_f32 v8, v9, v27, v15
	v_fma_f32 v7, v7, v20, v13
	v_fma_f32 v9, v24, v28, v14
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v1, v10, v1, s2
	v_cndmask_b32_e64 v3, v19, v3, s2
	v_cndmask_b32_e64 v4, v18, v4, s2
	v_cndmask_b32_e64 v5, v17, v5, s2
	v_cndmask_b32_e64 v6, v16, v6, s2
	v_cndmask_b32_e64 v8, v15, v8, s2
	v_cndmask_b32_e64 v7, v13, v7, s2
	v_cndmask_b32_e64 v9, v14, v9, s2
	ds_store_b32 v11, v1
	ds_store_b32 v12, v3
	ds_store_b32 v30, v4
	ds_store_b32 v32, v5
	ds_store_b32 v34, v6
	ds_store_b32 v35, v8
	ds_store_b32 v36, v9
	ds_store_b32 v2, v7
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[1:2], v37 offset1:32
	ds_load_2addr_b32 v[3:4], v38 offset1:32
	ds_load_2addr_b32 v[5:6], v39 offset1:32
	ds_load_2addr_b32 v[7:8], v40 offset1:32
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	v_lshl_add_u32 v14, s35, 4, v0
	.loc	1 247 9 is_stmt 0               ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v15, v31, v25, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_add_lshl_u32 v14, v31, v14, 2
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_waitcnt lgkmcnt(3)
	v_mad_u64_u32 v[9:10], null, s35, 12, v[0:1]
	v_mad_u64_u32 v[10:11], null, s35, 20, v[0:1]
	v_mad_u64_u32 v[11:12], null, s35, 24, v[0:1]
	v_mad_u64_u32 v[12:13], null, s35, 28, v[0:1]
	.loc	1 247 9                         ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v0, v31, v0, 2
	v_add_lshl_u32 v13, v31, v33, 2
	v_add_lshl_u32 v9, v31, v9, 2
	v_add_lshl_u32 v10, v31, v10, 2
	v_add_lshl_u32 v11, v31, v11, 2
	buffer_atomic_add_f32 v1, v0, s[16:19], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v3, v13, s[16:19], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v5, v15, s[16:19], 0 offen
	v_add_lshl_u32 v0, v31, v12, 2
	s_waitcnt lgkmcnt(0)
	s_clause 0x4
	buffer_atomic_add_f32 v7, v9, s[16:19], 0 offen
	buffer_atomic_add_f32 v2, v14, s[16:19], 0 offen
	buffer_atomic_add_f32 v4, v10, s[16:19], 0 offen
	buffer_atomic_add_f32 v6, v11, s[16:19], 0 offen
	buffer_atomic_add_f32 v8, v0, s[16:19], 0 offen
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk
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
		.amdhsa_next_free_vgpr 90
		.amdhsa_next_free_sgpr 41
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
		.amdhsa_inst_pref_size 32
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.num_vgpr, 90
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4036
; TotalNumSgprs: 43
; NumVgprs: 90
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 43
; NumVGPRsForWavesPerEU: 90
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
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	115                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	114                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	181                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
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
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk
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
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk8_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     90
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
