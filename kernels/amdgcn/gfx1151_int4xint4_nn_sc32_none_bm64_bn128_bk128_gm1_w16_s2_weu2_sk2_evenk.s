	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk2_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk2_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk2_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk2_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk2_evenk
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
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v11, 2, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshrrev_b32_e32 v4, 5, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v13, 0x100, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v12, 0xe0, v0
	v_and_b32_e32 v2, 0x7c, v11
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s34, 63
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
	s_lshr_b32 s11, s11, 26
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
	s_ashr_i32 s9, s9, 6
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s5
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[5:6], null, s35, v4, v[2:3]
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
	s_min_i32 s16, s7, 1
	.loc	1 120 29 is_stmt 1              ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s6, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s7, s16
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s17, s7
	s_abs_i32 s18, s2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s31, s11
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s17, s17, s10
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s16
	s_add_i32 s5, s10, s5
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s5, s18, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s19, s5, s7
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s30, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s18, s18, s19
	s_add_i32 s19, s5, 1
	s_sub_i32 s20, s18, s7
	s_cmp_ge_u32 s18, s7
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s18, s20, s18
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s18, s7
	s_cselect_b32 s5, s19, s5
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s7, s3, 4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s19, s5, s17
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s21, s35, s7
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s5, s19, s17
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s18, s4, 31
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s33, s5, 7
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s20, s4, 31
.Ltmp13:
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add3_u32 v5, s21, s33, v5
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshlrev_b32_e32 v8, 1, v0
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s18
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s18, s4, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s4, s5, s16
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_and_b32_e32 v1, 14, v8
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s4
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v10, s7, v4
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 27
.Ltmp17:
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s6
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v9, s7, v1
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_mad_u64_u32 v[6:7], null, s18, v3, v[1:2]
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s16, s20, s3
.Ltmp19:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s26, s2, 6
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s18, v9
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 16, v9
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s5, s18, v10
	.loc	1 198 51                        ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 16, v10
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s6, s16, 5
.Ltmp21:
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	s_mul_i32 s2, s26, s18
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s20, 31
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_add3_u32 v6, s7, s2, v6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s16, s3, vcc_lo
	s_and_b32 s5, s4, s5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b32 v5, v5, s[28:31], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_bfe_i32 v7, v0, 6, 1
	v_and_b32_e32 v8, 0x37e, v8
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v35, 0, v11
	s_mov_b32 s5, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s20, 63
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v7, 0x88, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v7, v7, v8
	v_add_nc_u32_e32 v34, 0, v7
	s_waitcnt vmcnt(1)
	ds_store_b16 v34, v6 offset:2048
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v35, v5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_mov_b64 s[38:39], s[10:11]
	s_mov_b32 s5, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr36_sgpr37
.LBB0_3:                                ; %Flow67
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[24:25], s[0:1], 0x20
	v_dual_mov_b32 v14, 0 :: v_dual_and_b32 v31, 15, v0
	v_lshrrev_b32_e32 v33, 4, v13
	v_lshrrev_b32_e32 v29, 1, v12
	v_bfe_u32 v30, v0, 4, 1
	v_dual_mov_b32 v15, 0 :: v_dual_and_b32 v32, 0x108, v0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_mov_b32_e32 v26, 0
	v_mov_b32_e32 v10, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s1, s6, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s16, 0
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_add_i32 s5, s7, 16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v9, s5, v4
	v_sub_nc_u32_e32 v37, s18, v4
	v_lshl_or_b32 v4, s19, 8, v12
	v_add3_u32 v8, s26, v33, v31
	s_lshl_b32 s0, s17, 8
	v_mul_lo_u32 v9, s35, v9
	v_lshl_or_b32 v5, v31, 4, v32
	v_subrev_nc_u32_e32 v39, s0, v4
	s_lshl_b32 s0, s19, 7
	s_mov_b32 s19, s16
	v_add_nc_u32_e32 v7, 0, v31
	v_xor_b32_e32 v6, 8, v5
	v_sub_nc_u32_e32 v36, s18, v1
	v_add3_u32 v2, v9, s0, v2
	s_lshl_b32 s0, s17, 7
	s_mov_b32 s17, s16
	v_add_nc_u32_e32 v10, 32, v8
	v_mul_lo_u32 v8, s6, v8
	v_add_nc_u32_e32 v3, s26, v3
	v_subrev_nc_u32_e32 v42, s0, v2
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v24, 0
	v_mul_lo_u32 v10, s6, v10
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v21, 0
	v_mov_b32_e32 v20, 0
	v_lshlrev_b32_e32 v40, 1, v10
	v_mad_u64_u32 v[9:10], null, s18, v3, v[1:2]
	s_mov_b32 s18, s16
	v_dual_mov_b32 v10, 0 :: v_dual_lshlrev_b32 v41, 1, v8
	v_add_nc_u32_e32 v43, 0, v5
	v_add_nc_u32_e32 v44, 0, v6
	v_add_nc_u32_e32 v45, v7, v29
	v_dual_mov_b32 v1, s16 :: v_dual_lshlrev_b32 v38, 1, v30
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	v_dual_mov_b32 v8, s23 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_mov_b32_e32 v14, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b64 s[36:37], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_max_i32 s7, s1, 1
	s_lshl_b32 s27, s35, 1
	s_lshl_b32 s34, s35, 4
	s_mov_b32 s44, s12
	s_mov_b32 s45, s13
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s5, v36
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v72, v41, s[44:47], 0 offen
	buffer_load_u16 v73, v40, s[44:47], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v46, s5, v9
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s0, s5, v37
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s7, s7, -1
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_dual_cndmask_b32 v46, 0x80000000, v46 :: v_dual_add_nc_u32 v47, v38, v39
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, s0, s4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s5, s5, 16
	s_cmp_lg_u32 s7, 0
	v_add_nc_u32_e32 v41, 2, v41
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u16 v74, v46, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v75, v47, s[40:43], 0 offen
	buffer_load_u16 v76, v47, s[40:43], 0 offen offset:4
	buffer_load_u16 v77, v47, s[40:43], 0 offen offset:8
	buffer_load_u16 v78, v47, s[40:43], 0 offen offset:12
	buffer_load_u16 v79, v47, s[40:43], 0 offen offset:16
	buffer_load_u16 v80, v47, s[40:43], 0 offen offset:20
	buffer_load_u16 v81, v47, s[40:43], 0 offen offset:24
	buffer_load_u16 v82, v47, s[40:43], 0 offen offset:28
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v46, 0x80000000, v42, vcc_lo
	buffer_load_b32 v83, v46, s[28:31], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v46, v45 offset:640
	ds_load_u8 v47, v45 offset:896
	ds_load_u8 v48, v45 offset:768
	ds_load_u8 v49, v45 offset:512
	ds_load_u8 v50, v45 offset:128
	ds_load_u8 v51, v45 offset:384
	ds_load_u8 v52, v45 offset:256
	ds_load_u8 v53, v45
	ds_load_u8 v54, v45 offset:1664
	ds_load_u8 v55, v45 offset:1920
	ds_load_u8 v56, v45 offset:1792
	ds_load_u8 v57, v45 offset:1536
	ds_load_u8 v58, v45 offset:1152
	ds_load_u8 v59, v45 offset:1280
	ds_load_u8 v68, v45 offset:1024
	ds_load_u8 v69, v45 offset:1408
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[60:63], v43 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[64:67], v44 offset0:4 offset1:5
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(9)
	ds_store_b16 v34, v74 offset:2048
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v35, v83
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v46, v49, v46, 0xc0c0004
	v_perm_b32 v47, v48, v47, 0xc0c0004
	v_perm_b32 v48, v53, v50, 0xc0c0004
	v_perm_b32 v49, v52, v51, 0xc0c0004
	v_perm_b32 v50, v57, v54, 0xc0c0004
	v_perm_b32 v51, v56, v55, 0xc0c0004
	v_perm_b32 v52, v68, v58, 0xc0c0004
	v_perm_b32 v53, v59, v69, 0xc0c0004
	v_lshl_or_b32 v69, v47, 16, v46
	v_lshl_or_b32 v68, v49, 16, v48
	v_lshl_or_b32 v71, v51, 16, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v70, v53, 16, v52
	v_wmma_i32_16x16x16_iu4 v[46:53], v[68:69], v[60:61], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[54:61], v[68:69], v[62:63], v[1:8] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v69, 16, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[46:53], v[70:71], v[64:65], v[46:53] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v65, 16, v78
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[54:61], v[70:71], v[66:67], v[54:61] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_lshlrev_b32_e32 v63, 16, v73
	v_lshlrev_b32_e32 v62, 16, v72
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_mul_f32_e32 v55, v63, v55
	v_dual_mul_f32 v46, v62, v46 :: v_dual_add_nc_u32 v39, s27, v39
	v_dual_mul_f32 v49, v62, v49 :: v_dual_add_nc_u32 v40, 2, v40
	v_dual_mul_f32 v51, v62, v51 :: v_dual_add_nc_u32 v42, s34, v42
	v_mul_f32_e32 v47, v62, v47
	v_mul_f32_e32 v48, v62, v48
	v_dual_mul_f32 v50, v62, v50 :: v_dual_mul_f32 v57, v63, v57
	v_dual_mul_f32 v52, v62, v52 :: v_dual_mul_f32 v59, v63, v59
	v_dual_mul_f32 v53, v62, v53 :: v_dual_mul_f32 v54, v63, v54
	v_dual_mul_f32 v61, v63, v61 :: v_dual_lshlrev_b32 v62, 16, v75
	v_mul_f32_e32 v56, v63, v56
	v_mul_f32_e32 v58, v63, v58
	v_mul_f32_e32 v60, v63, v60
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v63, 16, v76
	v_lshlrev_b32_e32 v64, 16, v77
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v25, v49, v65 :: v_dual_lshlrev_b32 v66, 16, v79
	v_dual_fmac_f32 v10, v46, v62 :: v_dual_lshlrev_b32 v67, 16, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v27, v47, v63 :: v_dual_lshlrev_b32 v68, 16, v81
	v_dual_fmac_f32 v26, v48, v64 :: v_dual_fmac_f32 v21, v53, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v24, v50, v66 :: v_dual_fmac_f32 v19, v56, v64
	v_dual_fmac_f32 v23, v51, v67 :: v_dual_fmac_f32 v22, v52, v68
	v_fmac_f32_e32 v17, v58, v66
	v_dual_fmac_f32 v28, v54, v62 :: v_dual_fmac_f32 v15, v60, v68
	v_fmac_f32_e32 v20, v55, v63
	v_fmac_f32_e32 v18, v57, v65
	v_fmac_f32_e32 v16, v59, v67
	v_fmac_f32_e32 v14, v61, v69
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v1, v33, v31
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_mul_i32 s3, s26, s6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s0, s1, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v2, 32, v1
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s6, v1
	s_add_i32 s3, s3, s0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_mul_lo_u32 v2, s6, v2
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v34, 0
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v1, s3, v1, 1
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_add_lshl_u32 v2, s3, v2, 1
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_mov_b32_e32 v37, 0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_mov_b32_e32 v39, 0
	s_mov_b32 s4, 0
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v40, v1, s[36:39], 0 offen
	buffer_load_u16 v41, v2, s[36:39], 0 offen
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add3_u32 v1, 0, v31, v29
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshl_or_b32 v2, v31, 4, v32
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	ds_load_u8 v3, v1 offset:640
	ds_load_u8 v4, v1 offset:768
	ds_load_u8 v5, v1 offset:512
	ds_load_u8 v6, v1 offset:896
	ds_load_u8 v7, v1 offset:128
	ds_load_u8 v8, v1 offset:256
	ds_load_u8 v9, v1
	ds_load_u8 v31, v1 offset:384
	ds_load_u8 v52, v1 offset:1664
	ds_load_u8 v53, v1 offset:1920
	ds_load_u8 v54, v1 offset:1792
	ds_load_u8 v55, v1 offset:1536
	ds_load_u8 v56, v1 offset:1152
	ds_load_u8 v57, v1 offset:1408
	ds_load_u8 v58, v1 offset:1280
	ds_load_u8 v1, v1 offset:1024
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v32, 0, v2
	v_xad_u32 v2, v2, 8, 0
	ds_load_2addr_stride64_b64 v[42:45], v32 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[46:49], v2 offset0:4 offset1:5
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v39, s11 :: v_dual_mov_b32 v38, s10
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v3, v5, v3, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v4, v4, v6, 0xc0c0004
	v_dual_mov_b32 v37, s9 :: v_dual_mov_b32 v36, s8
	v_mov_b32_e32 v35, s7
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v2, v9, v7, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v5, v8, v31, 0xc0c0004
	v_lshl_or_b32 v51, v4, 16, v3
	v_dual_mov_b32 v34, s6 :: v_dual_mov_b32 v33, s5
	v_mov_b32_e32 v32, s4
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v50, v5, 16, v2
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v9, v55, v52, 0xc0c0004
	v_perm_b32 v31, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v52, v1, v56, 0xc0c0004
	v_perm_b32 v53, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[50:51], v[42:43], v[32:39] neg_lo:[1,1,0]
	v_lshl_or_b32 v43, v31, 16, v9
	v_wmma_i32_16x16x16_iu4 v[32:39], v[50:51], v[44:45], v[32:39] neg_lo:[1,1,0]
	v_lshl_or_b32 v42, v53, 16, v52
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[42:43], v[46:47], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[42:43], v[48:49], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
.LBB0_8:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v29, v30, v29
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s0, s0, s35
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s5, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s33, s0
	s_mov_b32 s7, 0x31027000
	v_add_lshl_u32 v29, s0, v29, 1
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s4, s14
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_bfe_i32 v50, v0, 0, 1
	v_cmp_eq_u32_e32 vcc_lo, 0, v13
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v31, 4, v29
	v_add_nc_u32_e32 v32, 8, v29
	v_add_nc_u32_e32 v42, 12, v29
	v_add_nc_u32_e32 v43, 16, v29
	v_add_nc_u32_e32 v44, 20, v29
	v_add_nc_u32_e32 v45, 24, v29
	v_cndmask_b32_e64 v30, 0x80000000, v29, s2
	v_add_nc_u32_e32 v29, 28, v29
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	s_clause 0x7
	buffer_load_u16 v46, v30, s[4:7], 0 offen
	buffer_load_u16 v47, v31, s[4:7], 0 offen
	buffer_load_u16 v48, v32, s[4:7], 0 offen
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	buffer_load_u16 v43, v43, s[4:7], 0 offen
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	buffer_load_u16 v49, v29, s[4:7], 0 offen
	v_mov_b16_e32 v29.l, 0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v29.h, v41.l
	v_mov_b16_e32 v30.h, v40.l
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v31, 0x7f, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v32, 7, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v9, v9, v29 :: v_dual_and_b32 v40, 14, v0
	v_dual_mul_f32 v38, v38, v29 :: v_dual_and_b32 v41, 1, v0
	v_dual_mul_f32 v61, v33, v29 :: v_dual_lshlrev_b32 v52, 4, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_bfe_i32 v0, v0, 7, 1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v36, v36, v29 :: v_dual_and_b32 v11, 0x78, v11
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v30.l, v29.l
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshlrev_b32_e32 v41, 6, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v0, 0x840, v0
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v34, v34, v29
	v_dual_mul_f32 v35, v35, v29 :: v_dual_and_b32 v50, 0x840, v50
	v_mul_f32_e32 v37, v37, v29
	v_mul_f32_e32 v39, v39, v29
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	v_mul_lo_u32 v29, s35, v32
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshlrev_b32_e32 v33, 11, v40
	v_lshl_or_b32 v11, v12, 3, v11
	v_and_b32_e32 v12, 0x700, v52
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v7, v7, v30 :: v_dual_lshlrev_b32 v40, 2, v40
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_xor_b32_e32 v0, v0, v41
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_mul_i32 s0, s26, s35
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshrrev_b32_e32 v51, 1, v13
	v_cndmask_b32_e64 v13, 0x1008, 0, vcc_lo
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	v_add3_u32 v52, s0, s33, v31
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_or3_b32 v0, v12, v40, v0
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v1, v1, v30
	v_mul_f32_e32 v2, v2, v30
	v_mul_f32_e32 v3, v3, v30
	v_mul_f32_e32 v4, v4, v30
	v_mul_f32_e32 v5, v5, v30
	v_mul_f32_e32 v6, v6, v30
	v_mul_f32_e32 v8, v8, v30
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_xor_b32_e32 v11, v11, v50
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	v_mad_u64_u32 v[30:31], null, s35, 24, v[29:30]
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_xor_b32_e32 v0, v0, v13
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v53, 60, v32
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_or3_b32 v11, v33, v51, v11
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v54, 52, v32
	v_or_b32_e32 v55, 44, v32
	v_or_b32_e32 v56, 36, v32
	v_or_b32_e32 v57, 28, v32
	v_or_b32_e32 v58, 20, v32
	v_or_b32_e32 v59, 12, v32
	v_or_b32_e32 v60, 4, v32
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	v_mad_u64_u32 v[31:32], null, s35, 40, v[29:30]
	v_mad_u64_u32 v[32:33], null, s35, 48, v[29:30]
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v68, 0, v0
	v_xad_u32 v69, 0x2010, v0, 0
	v_xad_u32 v70, 0x4020, v0, 0
	v_xad_u32 v71, 0x6030, v0, 0
	v_add_nc_u32_e32 v33, 0, v11
	v_xad_u32 v40, v11, 8, 0
	v_xad_u32 v51, v11, 16, 0
	v_xad_u32 v63, v11, 24, 0
	v_xad_u32 v64, v11, 32, 0
	v_xad_u32 v65, v11, 40, 0
	v_xad_u32 v66, v11, 48, 0
	v_xad_u32 v67, v11, 56, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	v_mul_lo_u32 v41, s35, v60
	v_mul_lo_u32 v50, s35, v59
	v_mul_lo_u32 v58, s35, v58
	v_mul_lo_u32 v57, s35, v57
	v_mul_lo_u32 v56, s35, v56
	v_lshl_add_u32 v59, s35, 3, v29
	v_mul_lo_u32 v55, s35, v55
	v_lshl_add_u32 v60, s35, 4, v29
	v_mul_lo_u32 v54, s35, v54
	v_lshl_add_u32 v62, s35, 5, v29
	v_mul_lo_u32 v53, s35, v53
	.loc	1 247 9 is_stmt 0               ; generate_amdgcn.py:247:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v0, 16, v46
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v11, 16, v47
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v12, 16, v48
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v13, 16, v42
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v42, 16, v43
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v43, 16, v44
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v44, 16, v45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v45, 16, v49
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v1, v1, v0, v10
	v_fma_f32 v9, v9, v0, v28
	v_fma_f32 v2, v2, v11, v27
	v_fma_f32 v3, v3, v12, v26
	v_fma_f32 v11, v61, v11, v20
	v_fma_f32 v5, v5, v42, v24
	v_fma_f32 v34, v34, v12, v19
	v_fma_f32 v46, v4, v13, v25
	v_fma_f32 v7, v7, v44, v22
	v_fma_f32 v13, v35, v13, v18
	v_fma_f32 v47, v6, v43, v23
	v_fma_f32 v35, v36, v42, v17
	v_fma_f32 v36, v37, v43, v16
	v_fma_f32 v37, v38, v44, v15
	v_fma_f32 v48, v8, v45, v21
	v_fma_f32 v38, v39, v45, v14
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v0, v10, v1, s2
	v_cndmask_b32_e64 v1, v28, v9, s2
	v_cndmask_b32_e64 v2, v27, v2, s2
	v_cndmask_b32_e64 v4, v26, v3, s2
	v_cndmask_b32_e64 v3, v20, v11, s2
	v_cndmask_b32_e64 v8, v24, v5, s2
	v_cndmask_b32_e64 v5, v19, v34, s2
	v_cndmask_b32_e64 v6, v25, v46, s2
	v_cndmask_b32_e64 v12, v22, v7, s2
	v_cndmask_b32_e64 v7, v18, v13, s2
	v_cndmask_b32_e64 v10, v23, v47, s2
	v_cndmask_b32_e64 v9, v17, v35, s2
	v_cndmask_b32_e64 v11, v16, v36, s2
	v_cndmask_b32_e64 v13, v15, v37, s2
	v_cndmask_b32_e64 v21, v21, v48, s2
	v_cndmask_b32_e64 v22, v14, v38, s2
	ds_store_b64 v33, v[0:1]
	ds_store_b64 v40, v[2:3]
	ds_store_b64 v51, v[4:5]
	ds_store_b64 v63, v[6:7]
	ds_store_b64 v64, v[8:9]
	ds_store_b64 v65, v[10:11]
	ds_store_b64 v66, v[12:13]
	ds_store_b64 v67, v[21:22]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[0:3], v68 offset1:16
	ds_load_2addr_b64 v[4:7], v69 offset1:16
	ds_load_2addr_b64 v[8:11], v70 offset1:16
	ds_load_2addr_b64 v[12:15], v71 offset1:16
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	v_mad_u64_u32 v[16:17], null, s35, 56, v[29:30]
	.loc	1 247 9 is_stmt 0               ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v17, v52, v29, 2
	v_add_lshl_u32 v18, v52, v41, 2
	v_add_lshl_u32 v19, v52, v59, 2
	v_add_lshl_u32 v20, v52, v50, 2
	v_add_lshl_u32 v21, v52, v60, 2
	v_add_lshl_u32 v22, v52, v58, 2
	v_add_lshl_u32 v23, v52, v57, 2
	v_add_lshl_u32 v24, v52, v62, 2
	v_add_lshl_u32 v25, v52, v56, 2
	v_add_lshl_u32 v28, v52, v30, 2
	v_add_lshl_u32 v29, v52, v31, 2
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v0, v17, s[24:27], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v4, v18, s[24:27], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v8, v19, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x7
	buffer_atomic_add_f32 v12, v20, s[24:27], 0 offen
	buffer_atomic_add_f32 v2, v21, s[24:27], 0 offen
	buffer_atomic_add_f32 v6, v22, s[24:27], 0 offen
	buffer_atomic_add_f32 v10, v28, s[24:27], 0 offen
	buffer_atomic_add_f32 v14, v23, s[24:27], 0 offen
	buffer_atomic_add_f32 v1, v24, s[24:27], 0 offen
	buffer_atomic_add_f32 v5, v25, s[24:27], 0 offen
	buffer_atomic_add_f32 v9, v29, s[24:27], 0 offen
	v_add_lshl_u32 v26, v52, v55, 2
	v_add_lshl_u32 v30, v52, v32, 2
	v_add_lshl_u32 v27, v52, v54, 2
	v_add_lshl_u32 v16, v52, v16, 2
	v_add_lshl_u32 v0, v52, v53, 2
	s_clause 0x4
	buffer_atomic_add_f32 v13, v26, s[24:27], 0 offen
	buffer_atomic_add_f32 v3, v30, s[24:27], 0 offen
	buffer_atomic_add_f32 v7, v27, s[24:27], 0 offen
	buffer_atomic_add_f32 v11, v16, s[24:27], 0 offen
	buffer_atomic_add_f32 v15, v0, s[24:27], 0 offen
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk2_evenk
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
		.amdhsa_next_free_vgpr 84
		.amdhsa_next_free_sgpr 48
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
		.amdhsa_inst_pref_size 33
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk2_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk2_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk2_evenk.num_vgpr, 84
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk2_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk2_evenk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk2_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk2_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk2_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk2_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk2_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk2_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk2_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4136
; TotalNumSgprs: 50
; NumVgprs: 84
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 10
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 84
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk2_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk2_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk2_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk2_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     84
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
