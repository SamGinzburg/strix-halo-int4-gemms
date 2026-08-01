	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s8, s2
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v10, 4, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v21, 15, v0
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshrrev_b32_e32 v4, 3, v0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshlrev_b32_e32 v22, 2, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v2, 0x70, v10
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s19, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s18, 31
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
	.loc	1 116 24 is_stmt 1              ; generate_amdgcn.py:116:24
	s_lshl_b32 s5, s5, 2
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[5:6], null, s19, v4, v[2:3]
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s7
	s_mul_hi_u32 s10, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
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
	.loc	1 118 19                        ; generate_amdgcn.py:118:19
	s_lshl_b32 s16, s6, 2
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s6, s6, s5
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s7, s9, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 119 20 is_stmt 0              ; generate_amdgcn.py:119:20
	s_min_i32 s17, s7, 4
	.loc	1 120 29 is_stmt 1              ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s6
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s7, s17
	s_abs_i32 s6, s2
	s_cvt_f32_u32 s18, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[10:11]
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshlrev_b32_e32 v1, 2, v21
	s_mov_b32 s11, 0x31027000
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_u32_f32 s10, s18
	s_sub_i32 s18, 0, s7
	s_mul_i32 s18, s18, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s18
	s_xor_b32 s18, s2, s17
	s_add_i32 s5, s10, s5
	s_ashr_i32 s30, s18, 31
	s_mul_hi_u32 s5, s6, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s22, s5, s7
	s_add_i32 s18, s5, 1
	s_sub_i32 s6, s6, s22
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s22, s6, s7
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s6, s22, s6
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s6, s7
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s22, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cselect_b32 s5, s18, s5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s6, s4, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s34, s5, s30
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s24, s4, 0x7f
.Ltmp13:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s6
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s5, s34, s30
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s7, s3, 6
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s31, s4, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s4, s5, s17
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v8, s7, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s24, 31
.Ltmp15:
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_mad_u64_u32 v[6:7], null, s31, v3, v[1:2]
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s4
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v9, s7, v4
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s16
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s6, s24, s3
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v8
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 64, v8
	.loc	1 126 14 is_stmt 1              ; generate_amdgcn.py:126:14
	s_lshl_b32 s33, s2, 5
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s18, s5, 7
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s5, s31, v9
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 64, v9
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s6, s6, 7
.Ltmp21:
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	s_mul_i32 s2, s33, s31
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s24, 0x7f
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s23, s19, s7
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_add3_u32 v6, s7, s2, v6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s16, s3, vcc_lo
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add3_u32 v5, s23, s18, v5
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s5, s4, s5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s23, s11
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	s_and_b32 s21, s21, 0xffff
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b32 v11, v6, s[8:11], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[6:9], v5, s[20:23], 0 offen
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v5, 0xe0, v0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v24, 0, v10
	s_mov_b32 s5, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s24, 0xff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshrrev_b32_e32 v12, 2, v5
	v_xor_b32_e32 v12, v22, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v23, 0, v12
	s_waitcnt vmcnt(1)
	ds_store_b32 v23, v11 offset:8192
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v24, v[6:9]
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
.LBB0_3:                                ; %Flow97
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[16:17], s[0:1], 0x20
	v_lshrrev_b32_e32 v18, 1, v5
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v25, 16, v3
	v_bfe_u32 v19, v0, 4, 1
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v20, 0, v21, v18
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v10, 0
	v_mov_b32_e32 v17, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s1, s6, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_add_i32 s5, s7, 64
	s_lshl_b32 s22, s34, 7
	v_add_nc_u32_e32 v9, s5, v4
	v_and_b32_e32 v6, 0x438, v22
	v_add3_u32 v10, s33, v25, v21
	v_add_nc_u32_e32 v3, s33, v3
	v_sub_nc_u32_e32 v26, s31, v1
	v_mul_lo_u32 v9, s19, v9
	v_sub_nc_u32_e32 v27, s31, v4
	v_lshl_or_b32 v4, s34, 8, v5
	v_mul_lo_u32 v5, s6, v10
	s_lshl_b32 s0, s30, 8
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s27, 0x31027000
	v_subrev_nc_u32_e32 v29, s0, v4
	v_add3_u32 v2, v9, s22, v2
	s_lshl_b32 s0, s30, 7
	s_mov_b32 s26, 0x7ffffffe
	s_mov_b64 s[24:25], s[12:13]
	s_and_b32 s29, s15, 0xffff
	v_mad_u64_u32 v[9:10], null, s31, v3, v[1:2]
	v_mov_b32_e32 v1, 0
	v_lshl_or_b32 v6, v21, 6, v6
	v_lshlrev_b32_e32 v28, 1, v19
	v_lshlrev_b32_e32 v30, 1, v5
	v_subrev_nc_u32_e32 v31, s0, v2
	v_mov_b32_e32 v10, 0
	v_xor_b32_e32 v7, 8, v6
	v_xor_b32_e32 v8, 16, v6
	v_xor_b32_e32 v11, 24, v6
	v_xor_b32_e32 v12, 32, v6
	v_xor_b32_e32 v13, 40, v6
	v_xor_b32_e32 v14, 48, v6
	v_xor_b32_e32 v15, 56, v6
	v_add_nc_u32_e32 v32, 0, v6
	v_dual_mov_b32 v4, v1 :: v_dual_add_nc_u32 v33, 0, v7
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v34, 0, v8
	v_dual_mov_b32 v6, v1 :: v_dual_add_nc_u32 v35, 0, v11
	v_add_nc_u32_e32 v36, 0, v12
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v37, 0, v13
	v_dual_mov_b32 v13, 0 :: v_dual_add_nc_u32 v38, 0, v14
	v_dual_mov_b32 v16, 0 :: v_dual_add_nc_u32 v39, 0, v15
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v7, v1
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	s_mov_b32 s28, s14
	s_max_i32 s7, s1, 1
	s_lshl_b32 s34, s19, 1
	s_lshl_b32 s35, s19, 6
	s_mov_b32 s36, s12
	s_mov_b32 s37, s13
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	buffer_load_u16 v40, v30, s[36:39], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s5, v26
	v_cmp_lt_i32_e64 s0, s5, v27
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v30, 2, v30
	s_add_i32 s7, s7, -1
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s0, s0, s4
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v70, 16, v40
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v40, s5, v9
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s5, s5, 64
	s_cmp_lg_u32 s7, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	buffer_load_b32 v71, v40, s[8:11], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v40, 0x80000000, v31, s0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[52:53], v32 offset:8192
	ds_load_b64 v[54:55], v33 offset:8192
	ds_load_b64 v[56:57], v34 offset:8192
	ds_load_b64 v[58:59], v35 offset:8192
	ds_load_b64 v[60:61], v36 offset:8192
	ds_load_b64 v[62:63], v37 offset:8192
	ds_load_b64 v[64:65], v38 offset:8192
	ds_load_b64 v[66:67], v39 offset:8192
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v31, s35, v31
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[48:51], v40, s[20:23], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v40, v20 offset:640
	ds_load_u8 v41, v20 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	ds_load_u8 v41, v20 offset:896
	ds_load_u8 v42, v20 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v41, 16, v40
	ds_load_u8 v40, v20 offset:128
	ds_load_u8 v41, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	ds_load_u8 v41, v20 offset:384
	ds_load_u8 v42, v20 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v68, v41, 16, v40
	v_wmma_i32_16x16x16_iu4 v[40:47], v[68:69], v[52:53], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v52, v20 offset:1664
	ds_load_u8 v53, v20 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	ds_load_u8 v53, v20 offset:1920
	ds_load_u8 v68, v20 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v68, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v53, 16, v52
	ds_load_u8 v52, v20 offset:1152
	ds_load_u8 v68, v20 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v68, v52, 0xc0c0004
	ds_load_u8 v68, v20 offset:1408
	ds_load_u8 v69, v20 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v52, v68, 16, v52
	v_wmma_i32_16x16x16_iu4 v[40:47], v[52:53], v[54:55], v[40:47] neg_lo:[1,1,0]
	ds_load_u8 v52, v20 offset:2688
	ds_load_u8 v53, v20 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	ds_load_u8 v53, v20 offset:2944
	ds_load_u8 v54, v20 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v53, 16, v52
	ds_load_u8 v52, v20 offset:2176
	ds_load_u8 v54, v20 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v54, v52, 0xc0c0004
	ds_load_u8 v54, v20 offset:2432
	ds_load_u8 v55, v20 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v52, v54, 16, v52
	v_wmma_i32_16x16x16_iu4 v[40:47], v[52:53], v[56:57], v[40:47] neg_lo:[1,1,0]
	ds_load_u8 v52, v20 offset:3712
	ds_load_u8 v53, v20 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	ds_load_u8 v53, v20 offset:3968
	ds_load_u8 v54, v20 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v53, 16, v52
	ds_load_u8 v52, v20 offset:3200
	ds_load_u8 v54, v20 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v54, v52, 0xc0c0004
	ds_load_u8 v54, v20 offset:3456
	ds_load_u8 v55, v20 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v52, v54, 16, v52
	v_wmma_i32_16x16x16_iu4 v[40:47], v[52:53], v[58:59], v[40:47] neg_lo:[1,1,0]
	ds_load_u8 v52, v20 offset:4736
	ds_load_u8 v53, v20 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	ds_load_u8 v53, v20 offset:4992
	ds_load_u8 v54, v20 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v53, 16, v52
	ds_load_u8 v52, v20 offset:4224
	ds_load_u8 v54, v20 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v54, v52, 0xc0c0004
	ds_load_u8 v54, v20 offset:4480
	ds_load_u8 v55, v20 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v52, v54, 16, v52
	v_wmma_i32_16x16x16_iu4 v[40:47], v[52:53], v[60:61], v[40:47] neg_lo:[1,1,0]
	ds_load_u8 v52, v20 offset:5760
	ds_load_u8 v53, v20 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	ds_load_u8 v53, v20 offset:6016
	ds_load_u8 v54, v20 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v53, 16, v52
	ds_load_u8 v52, v20 offset:5248
	ds_load_u8 v54, v20 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v54, v52, 0xc0c0004
	ds_load_u8 v54, v20 offset:5504
	ds_load_u8 v55, v20 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v52, v54, 16, v52
	v_wmma_i32_16x16x16_iu4 v[40:47], v[52:53], v[62:63], v[40:47] neg_lo:[1,1,0]
	ds_load_u8 v52, v20 offset:6784
	ds_load_u8 v53, v20 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	ds_load_u8 v53, v20 offset:7040
	ds_load_u8 v54, v20 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v53, 16, v52
	ds_load_u8 v52, v20 offset:6272
	ds_load_u8 v54, v20 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v54, v52, 0xc0c0004
	ds_load_u8 v54, v20 offset:6528
	ds_load_u8 v55, v20 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v52, v54, 16, v52
	v_wmma_i32_16x16x16_iu4 v[40:47], v[52:53], v[64:65], v[40:47] neg_lo:[1,1,0]
	ds_load_u8 v52, v20 offset:7808
	ds_load_u8 v53, v20 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	ds_load_u8 v53, v20 offset:8064
	ds_load_u8 v54, v20 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v53, 16, v52
	ds_load_u8 v52, v20 offset:7296
	ds_load_u8 v54, v20 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v54, v52, 0xc0c0004
	ds_load_u8 v54, v20 offset:7552
	ds_load_u8 v55, v20 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v52, v54, 16, v52
	v_wmma_i32_16x16x16_iu4 v[40:47], v[52:53], v[66:67], v[40:47] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v52, v28, v29
	s_clause 0x7
	buffer_load_u16 v53, v52, s[28:31], 0 offen
	buffer_load_u16 v54, v52, s[28:31], 0 offen offset:4
	buffer_load_u16 v55, v52, s[28:31], 0 offen offset:8
	buffer_load_u16 v56, v52, s[28:31], 0 offen offset:12
	buffer_load_u16 v57, v52, s[28:31], 0 offen offset:16
	buffer_load_u16 v58, v52, s[28:31], 0 offen offset:20
	buffer_load_u16 v59, v52, s[28:31], 0 offen offset:24
	buffer_load_u16 v52, v52, s[28:31], 0 offen offset:28
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v42, v42
	v_mul_f32_e32 v41, v70, v41
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v29, s34, v29
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(9)
	ds_store_b32 v23, v71 offset:8192
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(8)
	ds_store_b128 v24, v[48:51]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v53, 16, v53
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v54, 16, v54
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v17, v41, v54 :: v_dual_lshlrev_b32 v56, 16, v56
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v45, v70, v45
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v43, v70, v43 :: v_dual_lshlrev_b32 v58, 16, v58
	v_dual_mul_f32 v40, v70, v40 :: v_dual_lshlrev_b32 v55, 16, v55
	v_dual_mul_f32 v42, v70, v42 :: v_dual_lshlrev_b32 v57, 16, v57
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v44, v70, v44 :: v_dual_lshlrev_b32 v59, 16, v59
	v_mul_f32_e32 v47, v70, v47
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v15, v43, v56
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v13, v45, v58 :: v_dual_lshlrev_b32 v52, 16, v52
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v46, v70, v46
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v10, v40, v53
	v_fmac_f32_e32 v16, v42, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v14, v44, v57 :: v_dual_fmac_f32 v11, v47, v52
	v_fmac_f32_e32 v12, v46, v59
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v1, v25, v21
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_mul_i32 s3, s33, s6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s0, s1, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v2, s6, v1
	s_add_i32 s3, s3, s0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v9, 0
	v_mov_b32_e32 v23, 0
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v2, s3, v2, 1
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	buffer_load_u16 v2, v2, s[24:27], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v3, 0x438, v22
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v20 offset:640
	ds_load_u8 v22, v20 offset:896
	ds_load_u8 v23, v20 offset:768
	ds_load_u8 v24, v20 offset:512
	ds_load_u8 v25, v20 offset:128
	ds_load_u8 v26, v20 offset:384
	ds_load_u8 v27, v20 offset:256
	ds_load_u8 v28, v20
	ds_load_u8 v38, v20 offset:1152
	ds_load_u8 v39, v20 offset:1280
	ds_load_u8 v40, v20 offset:1024
	ds_load_u8 v41, v20 offset:1408
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshl_or_b32 v33, v21, 6, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_xad_u32 v3, v33, 24, 0
	v_xad_u32 v5, v33, 16, 0
	v_xad_u32 v7, v33, 8, 0
	v_add_nc_u32_e32 v21, 0, v33
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v34, v20 offset:1664
	ds_load_u8 v35, v20 offset:1920
	ds_load_u8 v36, v20 offset:1792
	ds_load_u8 v37, v20 offset:1536
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[3:4], v3 offset:8192
	ds_load_b64 v[5:6], v5 offset:8192
	ds_load_b64 v[7:8], v7 offset:8192
	ds_load_b64 v[29:30], v21 offset:8192
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_mov_b32_e32 v21, 0
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v9, v24, v9, 0xc0c0004
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v43, v33, 56, 0
	v_xad_u32 v50, v33, 48, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v24, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v23, v28, v25, 0xc0c0004
	v_lshl_or_b32 v32, v22, 16, v9
	v_mov_b32_e32 v22, v21
	v_mov_b32_e32 v25, v21
	v_mov_b32_e32 v26, v21
	v_lshl_or_b32 v31, v24, 16, v23
	v_mov_b32_e32 v23, v21
	v_mov_b32_e32 v24, v21
	v_mov_b32_e32 v27, v21
	v_mov_b32_e32 v28, v21
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v37, v34, 0xc0c0004
	v_perm_b32 v34, v36, v35, 0xc0c0004
	ds_load_u8 v35, v20 offset:2688
	ds_load_u8 v36, v20 offset:2816
	ds_load_u8 v37, v20 offset:2560
	ds_load_u8 v42, v20 offset:2944
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[31:32], v[29:30], v[21:28] neg_lo:[1,1,0]
	v_perm_b32 v29, v39, v41, 0xc0c0004
	v_lshl_or_b32 v30, v34, 16, v9
	v_perm_b32 v9, v40, v38, 0xc0c0004
	ds_load_u8 v31, v20 offset:2176
	ds_load_u8 v32, v20 offset:2432
	ds_load_u8 v34, v20 offset:2304
	ds_load_u8 v38, v20 offset:2048
	ds_load_u8 v39, v20 offset:3712
	ds_load_u8 v40, v20 offset:3968
	ds_load_u8 v41, v20 offset:3840
	ds_load_u8 v44, v20 offset:3584
	ds_load_u8 v45, v20 offset:3200
	ds_load_u8 v46, v20 offset:3456
	ds_load_u8 v47, v20 offset:3328
	ds_load_u8 v48, v20 offset:3072
	v_lshl_or_b32 v29, v29, 16, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[29:30], v[7:8], v[21:28] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v9, v37, v35, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v35, v36, v42, 0xc0c0004
	ds_load_u8 v36, v20 offset:4736
	ds_load_u8 v37, v20 offset:4992
	ds_load_u8 v42, v20 offset:4864
	ds_load_u8 v49, v20 offset:4608
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v29, v41, v40, 0xc0c0004
	v_lshl_or_b32 v8, v35, 16, v9
	v_perm_b32 v7, v38, v31, 0xc0c0004
	v_perm_b32 v9, v34, v32, 0xc0c0004
	ds_load_u8 v31, v20 offset:4224
	ds_load_u8 v32, v20 offset:4480
	ds_load_u8 v34, v20 offset:4352
	ds_load_u8 v35, v20 offset:4096
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v30, v48, v45, 0xc0c0004
	v_perm_b32 v38, v47, v46, 0xc0c0004
	v_lshl_or_b32 v7, v9, 16, v7
	v_perm_b32 v9, v44, v39, 0xc0c0004
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v39, v33, 40, 0
	v_xad_u32 v33, v33, 32, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[21:28], v[7:8], v[5:6], v[21:28] neg_lo:[1,1,0]
	v_lshl_or_b32 v6, v29, 16, v9
	v_lshl_or_b32 v5, v38, 16, v30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v49, v36, 0xc0c0004
	v_perm_b32 v36, v42, v37, 0xc0c0004
	ds_load_u8 v37, v20 offset:5760
	ds_load_u8 v38, v20 offset:5888
	ds_load_u8 v40, v20 offset:5632
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[7:8], v39 offset:8192
	ds_load_b64 v[29:30], v33 offset:8192
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[21:28], v[5:6], v[3:4], v[21:28] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v36, 16, v9
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v3, v35, v31, 0xc0c0004
	v_perm_b32 v5, v34, v32, 0xc0c0004
	ds_load_u8 v6, v20 offset:6016
	ds_load_u8 v9, v20 offset:5248
	ds_load_u8 v31, v20 offset:5504
	ds_load_u8 v32, v20 offset:5376
	ds_load_u8 v33, v20 offset:5120
	ds_load_u8 v34, v20 offset:6784
	ds_load_u8 v35, v20 offset:7040
	ds_load_u8 v36, v20 offset:6912
	ds_load_u8 v39, v20 offset:6656
	ds_load_u8 v41, v20 offset:6272
	ds_load_u8 v42, v20 offset:6528
	ds_load_u8 v44, v20 offset:6400
	ds_load_u8 v45, v20 offset:6144
	v_lshl_or_b32 v3, v5, 16, v3
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v37, v40, v37, 0xc0c0004
	ds_load_u8 v40, v20 offset:7808
	ds_load_u8 v46, v20 offset:8064
	ds_load_u8 v47, v20 offset:7936
	ds_load_u8 v48, v20 offset:7680
	ds_load_u8 v49, v20 offset:7296
	ds_load_u8 v51, v20 offset:7552
	ds_load_u8 v52, v20 offset:7424
	ds_load_u8 v20, v20 offset:7168
	s_waitcnt lgkmcnt(21)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[3:4], v[29:30], v[21:28] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v38, v38, v6, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v29, v36, v35, 0xc0c0004
	v_perm_b32 v9, v33, v9, 0xc0c0004
	v_perm_b32 v33, v32, v31, 0xc0c0004
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[5:6], v50 offset:8192
	ds_load_b64 v[31:32], v43 offset:8192
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v4, v38, 16, v37
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v30, v45, v41, 0xc0c0004
	v_lshl_or_b32 v3, v33, 16, v9
	v_perm_b32 v9, v39, v34, 0xc0c0004
	v_perm_b32 v33, v44, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[3:4], v[7:8], v[21:28] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v29, 16, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v3, v33, 16, v30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v7, v48, v40, 0xc0c0004
	v_perm_b32 v8, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v20, v49, 0xc0c0004
	v_perm_b32 v20, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[3:4], v[5:6], v[21:28] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v8, 16, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v3, v20, 16, v9
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[3:4], v[31:32], v[21:28] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v3, v21
	v_cvt_f32_i32_e32 v4, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v5, v23
	v_cvt_f32_i32_e32 v6, v24
	v_cvt_f32_i32_e32 v7, v25
	v_cvt_f32_i32_e32 v8, v26
	v_cvt_f32_i32_e32 v9, v27
	v_cvt_f32_i32_e32 v23, v28
.LBB0_8:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v18, v19, v18
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s0, s0, s19
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v27.l, 0
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s18, s0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v27.h, v2.l
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	v_add_lshl_u32 v18, s0, v18, 1
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s14
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_dual_mov_b32 v29, 0x7632 :: v_dual_add_nc_u32 v20, 4, v18
	v_dual_mov_b32 v28, 0x5410 :: v_dual_add_nc_u32 v21, 8, v18
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v3, v3, v27 :: v_dual_add_nc_u32 v22, 12, v18
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v19, 0x80000000, v18, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v5, v5, v27 :: v_dual_add_nc_u32 v24, 16, v18
	v_dual_mul_f32 v4, v4, v27 :: v_dual_add_nc_u32 v25, 20, v18
	v_dual_mul_f32 v7, v7, v27 :: v_dual_add_nc_u32 v26, 24, v18
	v_dual_mul_f32 v9, v9, v27 :: v_dual_add_nc_u32 v18, 28, v18
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	s_clause 0x7
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	buffer_load_u16 v22, v22, s[4:7], 0 offen
	buffer_load_u16 v24, v24, s[4:7], 0 offen
	buffer_load_u16 v25, v25, s[4:7], 0 offen
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	buffer_load_u16 v18, v18, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v6, v6, v27
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v23, v23, v27 :: v_dual_and_b32 v0, 16, v0
	v_mul_f32_e32 v8, v8, v27
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v27.h, v27.l
	v_mov_b16_e32 v30.h, v27.l
	v_mov_b16_e32 v31.h, v27.l
	v_mov_b16_e32 v32.h, v27.l
	v_mov_b16_e32 v33.h, v27.l
	v_mov_b16_e32 v34.h, v27.l
	v_mov_b16_e32 v35.h, v27.l
	v_mov_b16_e32 v36.h, v27.l
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_or_b32_e32 v1, s33, v1
	s_mov_b32 s0, 0x76543210
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_and_b32 s17, s17, 0xffff
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v20, 16, v20
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v21, 16, v21
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v4, v4, v20, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v5, v5, v21, v16
	v_fma_f32 v8, v8, v25, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v4, v17, v4, s2
	v_cndmask_b32_e64 v5, v16, v5, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v24, 16, v24
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v8, v13, v8, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v5, v5, v5
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v7, v7, v24, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v3, v3, v19, v10
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v5, 0, v5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v7, v14, v7, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v3, v10, v3, s2
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v5, v5, v5
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v9, v9, v26, v12
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v3, v3, v3 :: v_dual_lshlrev_b32 v22, 16, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v8, v8, v8 :: v_dual_max_f32 v7, 0, v7
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v12, v9, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_max_f32 v3, 0, v3 :: v_dual_lshlrev_b32 v18, 16, v18
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v6, v6, v22, v15
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v8, 0, v8 :: v_dual_mul_f32 v7, v7, v7
	v_max_f32_e32 v9, v9, v9
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v10, v23, v18, v11
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v4, 0, v4 :: v_dual_mul_f32 v3, v3, v3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v6, v15, v6, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v9, 0, v9
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v10, v11, v10, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v34.l, v7.h
	v_mov_b16_e32 v27.l, v3.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v4, v4, v4
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v6, v6, v6
	v_dual_max_f32 v10, v10, v10 :: v_dual_mul_f32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v11, 1, v27
	v_mov_b16_e32 v30.l, v4.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v8, v8, v8
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v6, 0, v6
	v_max_f32_e32 v10, 0, v10
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v3, v3, v11, 0x7fff
	v_and_b32_e32 v13, 1, v30
	v_mov_b16_e32 v33.l, v8.h
	v_mov_b16_e32 v32.l, v5.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v6, v6, v6
	v_mul_f32_e32 v10, v10, v10
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v4, v4, v13, 0x7fff
	v_mov_b16_e32 v4.l, v3.h
	v_and_b32_e32 v14, 1, v33
	v_mov_b16_e32 v36.l, v9.h
	v_mov_b16_e32 v35.l, v10.h
	v_and_b32_e32 v3, 1, v32
	v_mov_b16_e32 v31.l, v6.h
	v_add3_u32 v8, v8, v14, 0x7fff
	v_and_b32_e32 v12, 1, v34
	v_and_b32_e32 v14, 1, v36
	v_add3_u32 v3, v5, v3, 0x7fff
	v_dual_cndmask_b32 v13, 0x3276, v29 :: v_dual_and_b32 v0, 1, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v7, v7, v12, 0x7fff
	v_add3_u32 v9, v9, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v0, v6, v0, 0x7fff
	v_mov_b16_e32 v0.l, v3.h
	v_mov_b16_e32 v8.l, v7.h
	v_and_b32_e32 v7, 1, v35
	v_lshl_or_b32 v6, v13, 8, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v11, v8, v4, vcc_lo
	v_add3_u32 v7, v10, v7, 0x7fff
	v_mov_b16_e32 v7.l, v9.h
	v_cndmask_b32_e32 v12, 0x1054, v28, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v5, v12, 8, v12
	v_and_b32_e32 v3, 0x540054, v5
	v_and_b32_e32 v5, 0x760076, v6
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v6, v1, s19
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b32_e32 v1, v4, v8, vcc_lo
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_and_or_b32 v8, 0x78, v2, s18
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_lshl_or_b32 v3, v3, 4, v3
	v_lshl_or_b32 v4, v5, 4, v5
	v_cndmask_b32_e32 v5, v0, v7, vcc_lo
	v_cndmask_b32_e32 v7, v7, v0, vcc_lo
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v3, 0x5040504, v3
	v_and_b32_e32 v4, 0x7060706, v4
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
	v_perm_b32 v0, v1, v11, v3
	v_perm_b32 v1, v1, v11, v4
	v_perm_b32 v2, v5, v7, v3
	v_perm_b32 v3, v5, v7, v4
	v_add_lshl_u32 v4, v8, v6, 1
	buffer_store_b128 v[0:3], v4, s[16:19], 0 offen
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 72
		.amdhsa_next_free_sgpr 40
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
		.amdhsa_inst_pref_size 43
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 72
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5436
; TotalNumSgprs: 42
; NumVgprs: 72
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 8
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 72
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc128_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     72
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
