	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_and_b32_e32 v5, 7, v0
	v_lshlrev_b32_e32 v9, 2, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v4, 2, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_and_b32_e32 v2, 12, v9
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_and_b32_e32 v9, 0x77c, v9
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s19, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s18, 63
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
	s_sub_i32 s16, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s9, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 119 20 is_stmt 0              ; generate_amdgcn.py:119:20
	s_min_i32 s6, s6, 1
	.loc	1 120 29 is_stmt 1              ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s16, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s17, s6
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s7, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[10:11]
	s_sub_i32 s10, 0, s17
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshlrev_b32_e32 v1, 1, v5
	s_mov_b32 s11, 0x31027000
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s7, s10
	s_abs_i32 s10, s2
	s_add_i32 s7, s7, s5
	s_mul_hi_u32 s5, s10, s7
	s_xor_b32 s7, s2, s6
	s_mul_i32 s18, s5, s17
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s18, s10, s18
	s_add_i32 s22, s5, 1
	s_sub_i32 s23, s18, s17
	s_cmp_ge_u32 s18, s17
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s5, s22, s5
	s_cselect_b32 s18, s23, s18
	s_add_i32 s23, s5, 1
	s_cmp_ge_u32 s18, s17
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s22, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cselect_b32 s5, s23, s5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s17, s4, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s34, s5, s7
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s24, s4, 31
.Ltmp13:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s17
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s5, s34, s7
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s30, s3, 4
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s31, s4, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s6, s5, s6
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v10, s30, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s24, 31
.Ltmp15:
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_mad_u64_u32 v[6:7], null, s31, v3, v[1:2]
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s6
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v11, s30, v2
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_mad_u64_u32 v[7:8], null, s31, v4, v[2:3]
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 27
.Ltmp17:
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s16
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s17, s24, s3
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v10
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 16, v10
	.loc	1 126 14 is_stmt 1              ; generate_amdgcn.py:126:14
	s_lshl_b32 s33, s2, 6
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s18, s5, 7
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s5, s31, v11
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 16, v11
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s6, s17, 5
.Ltmp21:
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	s_mul_i32 s2, s33, s31
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	s_mul_i32 s16, s18, s31
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s24, 31
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_add3_u32 v6, s30, s2, v6
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add3_u32 v7, s30, s16, v7
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
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s23, s11
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	s_and_b32 s21, s21, 0xffff
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u16 v8, v6, s[8:11], 0 offen
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	buffer_load_b32 v7, v7, s[20:23], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshlrev_b32_e32 v6, 1, v0
	v_bfe_i32 v10, v0, 6, 1
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_bfe_i32 v11, v0, 5, 1
	s_mov_b32 s5, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s24, 63
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v6, 0x37e, v6
	v_and_b32_e32 v10, 0x88, v10
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_and_b32_e32 v11, 0x88, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xor_b32_e32 v6, v10, v6
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xor_b32_e32 v9, v11, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v35, 0, v6
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v36, 0, v9
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v6, 4, v0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(1)
	ds_store_b16 v35, v8 offset:2048
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v36, v7
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
.LBB0_3:                                ; %Flow36
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[16:17], s[0:1], 0x20
	v_dual_mov_b32 v13, 0 :: v_dual_and_b32 v34, 16, v6
	v_dual_mov_b32 v14, 0 :: v_dual_and_b32 v27, 0xe0, v0
	v_bfe_i32 v6, v0, 3, 1
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v29, 15, v0
	v_bfe_u32 v28, v0, 4, 1
	v_dual_mov_b32 v15, 0 :: v_dual_and_b32 v30, 0x108, v0
	v_dual_mov_b32 v16, 0 :: v_dual_lshlrev_b32 v31, 4, v5
	v_dual_mov_b32 v17, 0 :: v_dual_lshlrev_b32 v32, 3, v27
	v_dual_mov_b32 v18, 0 :: v_dual_and_b32 v33, 0x88, v6
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v11, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s1, s6, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_add3_u32 v8, s33, v34, v29
	s_mov_b32 s40, 0
	v_lshl_or_b32 v10, s34, 8, v27
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	v_add_nc_u32_e32 v9, 32, v8
	v_lshl_or_b32 v4, s34, 7, v4
	s_lshl_b32 s0, s7, 8
	v_lshl_or_b32 v5, v29, 4, v30
	v_subrev_nc_u32_e32 v40, s0, v10
	v_mul_lo_u32 v9, s6, v9
	s_lshl_b32 s0, s7, 7
	v_or3_b32 v6, v31, v32, v33
	v_mul_lo_u32 v8, s6, v8
	v_subrev_nc_u32_e32 v4, s0, v4
	v_add_nc_u32_e32 v3, s33, v3
	v_xor_b32_e32 v7, 8, v5
	v_xor_b32_e32 v12, 8, v6
	v_lshlrev_b32_e32 v41, 1, v9
	v_sub_nc_u32_e32 v37, s31, v1
	v_mad_u64_u32 v[9:10], null, s31, v4, v[2:3]
	v_mad_u64_u32 v[10:11], null, s31, v3, v[1:2]
	v_sub_nc_u32_e32 v38, s31, v2
	v_dual_mov_b32 v11, 0 :: v_dual_lshlrev_b32 v42, 1, v8
	v_dual_mov_b32 v24, 0 :: v_dual_add_nc_u32 v43, 0, v5
	v_add_nc_u32_e32 v44, 0, v7
	v_dual_mov_b32 v22, 0 :: v_dual_add_nc_u32 v45, 0, v6
	v_mov_b32_e32 v1, s40
	v_dual_mov_b32 v4, s43 :: v_dual_lshlrev_b32 v39, 1, v28
	v_dual_mov_b32 v3, s42 :: v_dual_add_nc_u32 v46, 0, v12
	v_dual_mov_b32 v2, s41 :: v_dual_mov_b32 v5, s44
	v_mov_b32_e32 v20, 0
	v_dual_mov_b32 v6, s45 :: v_dual_mov_b32 v7, s46
	v_mov_b32_e32 v26, 0
	v_dual_mov_b32 v8, s47 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v13, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_mov_b64 s[24:25], s[12:13]
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	s_max_i32 s5, s1, 1
	s_lshl_b32 s7, s19, 1
	s_add_i32 s34, s30, 16
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
	v_cmp_lt_i32_e32 vcc_lo, s34, v37
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v47, s34, v10
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v73, v42, s[36:39], 0 offen
	buffer_load_u16 v74, v41, s[36:39], 0 offen
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v49, v39, v40
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s0, s34, v38
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 218 26 is_stmt 1              ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v48, s34, v9
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_dual_cndmask_b32 v47, 0x80000000, v47 :: v_dual_add_nc_u32 v42, 2, v42
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, s0, s4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s5, s5, -1
	s_add_i32 s34, s34, 16
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u16 v75, v47, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v76, v49, s[28:31], 0 offen
	buffer_load_u16 v77, v49, s[28:31], 0 offen offset:4
	buffer_load_u16 v78, v49, s[28:31], 0 offen offset:8
	buffer_load_u16 v79, v49, s[28:31], 0 offen offset:12
	buffer_load_u16 v80, v49, s[28:31], 0 offen offset:16
	buffer_load_u16 v81, v49, s[28:31], 0 offen offset:20
	buffer_load_u16 v82, v49, s[28:31], 0 offen offset:24
	buffer_load_u16 v83, v49, s[28:31], 0 offen offset:28
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_cndmask_b32_e32 v47, 0x80000000, v48, vcc_lo
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[61:64], v43 offset0:4 offset1:5
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[69:70], v45
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[65:68], v44 offset0:4 offset1:5
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[71:72], v46
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s5, 0
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	buffer_load_b32 v84, v47, s[20:23], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(9)
	ds_store_b16 v35, v75 offset:2048
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v36, v84
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[47:54], v[69:70], v[61:62], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[55:62], v[69:70], v[63:64], v[1:8] neg_lo:[1,1,0]
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_lshlrev_b32_e32 v64, 16, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[47:54], v[71:72], v[65:66], v[47:54] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v66, 16, v79
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[55:62], v[71:72], v[67:68], v[55:62] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_lshlrev_b32_e32 v63, 16, v73
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v62, v62
	v_mul_f32_e32 v55, v64, v55
	v_mul_f32_e32 v56, v64, v56
	v_mul_f32_e32 v52, v63, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v53, v63, v53 :: v_dual_mul_f32 v62, v64, v62
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v69, 16, v82
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v49, v63, v49 :: v_dual_add_nc_u32 v40, s7, v40
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v61, v61
	v_dual_mul_f32 v51, v63, v51 :: v_dual_mul_f32 v60, v64, v60
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v20, v53, v69 :: v_dual_lshlrev_b32 v67, 16, v80
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v65, 16, v78
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v50, v63, v50 :: v_dual_add_nc_u32 v41, 2, v41
	v_mul_f32_e32 v47, v63, v47
	v_mul_f32_e32 v48, v63, v48
	v_dual_mul_f32 v54, v63, v54 :: v_dual_mul_f32 v57, v64, v57
	v_mul_f32_e32 v58, v64, v58
	v_mul_f32_e32 v59, v64, v59
	v_mul_f32_e32 v61, v64, v61
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v64, 16, v77
	v_lshlrev_b32_e32 v70, 16, v83
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v22, v51, v67 :: v_dual_lshlrev_b32 v63, 16, v76
	v_fmac_f32_e32 v24, v49, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v25, v48, v64 :: v_dual_lshlrev_b32 v68, 16, v81
	v_dual_fmac_f32 v23, v50, v66 :: v_dual_fmac_f32 v18, v56, v64
	v_fmac_f32_e32 v11, v47, v63
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v21, v52, v68 :: v_dual_fmac_f32 v16, v58, v66
	v_dual_fmac_f32 v19, v54, v70 :: v_dual_fmac_f32 v14, v60, v68
	v_dual_fmac_f32 v26, v55, v63 :: v_dual_fmac_f32 v17, v57, v65
	v_dual_fmac_f32 v12, v62, v70 :: v_dual_fmac_f32 v15, v59, v67
	v_fmac_f32_e32 v13, v61, v69
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v40, v34, v29
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_mul_i32 s3, s33, s6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s0, s1, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v41, 32, v40
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s6, v40
	s_add_i32 s3, s3, s0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_mul_lo_u32 v2, s6, v41
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v1, s3, v1, 1
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_add_lshl_u32 v2, s3, v2, 1
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_mov_b32 s4, 0
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v42, v1, s[24:27], 0 offen
	buffer_load_u16 v43, v2, s[24:27], 0 offen
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshl_or_b32 v1, v29, 4, v30
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_or3_b32 v2, v31, v32, v33
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v3, 0, v1
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v39, s11 :: v_dual_add_nc_u32 v4, 0, v2
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xad_u32 v2, v2, 8, 0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v1, v1, 8, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_mov_b32_e32 v38, s10
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[44:47], v3 offset0:4 offset1:5
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_b64 v[9:10], v4
	ds_load_b64 v[29:30], v2
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[48:51], v1 offset0:4 offset1:5
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v37, s9 :: v_dual_mov_b32 v36, s8
	v_dual_mov_b32 v35, s7 :: v_dual_mov_b32 v34, s6
	v_dual_mov_b32 v33, s5 :: v_dual_mov_b32 v32, s4
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[44:45], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[9:10], v[46:47], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[29:30], v[48:49], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[29:30], v[50:51], v[32:39] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v32
	v_cvt_f32_i32_e32 v10, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
.LBB0_8:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v27, 1, v27
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s0, s0, s19
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v45.l, 0
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s18, s0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v45.h, v43.l
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v27, v28, v27
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s14
	.loc	1 232 26 is_stmt 0              ; generate_amdgcn.py:232:26
	v_add_lshl_u32 v27, s0, v27, 1
	.loc	1 195 18 is_stmt 1              ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v42.h, v42.l
	v_mov_b16_e32 v42.l, v45.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v39, v39, v45
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v43, 1, v0
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_dual_mov_b32 v46, 0x5410 :: v_dual_add_nc_u32 v29, 4, v27
	v_dual_mov_b32 v47, 0x7632 :: v_dual_add_nc_u32 v30, 8, v27
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v10, v10, v45 :: v_dual_add_nc_u32 v31, 12, v27
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v28, 0x80000000, v27, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v9, v9, v45 :: v_dual_add_nc_u32 v32, 16, v27
	v_dual_mul_f32 v34, v34, v45 :: v_dual_add_nc_u32 v33, 20, v27
	v_dual_mul_f32 v35, v35, v45 :: v_dual_add_nc_u32 v44, 24, v27
	v_dual_mul_f32 v36, v36, v45 :: v_dual_add_nc_u32 v27, 28, v27
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	s_clause 0x7
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	buffer_load_u16 v29, v29, s[4:7], 0 offen
	buffer_load_u16 v30, v30, s[4:7], 0 offen
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	buffer_load_u16 v32, v32, s[4:7], 0 offen
	buffer_load_u16 v33, v33, s[4:7], 0 offen
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v1, v1, v42
	v_mul_f32_e32 v4, v4, v42
	v_mul_f32_e32 v6, v6, v42
	v_dual_mul_f32 v2, v2, v42 :: v_dual_and_b32 v43, 0x78, v43
	v_dual_mul_f32 v38, v38, v45 :: v_dual_mul_f32 v3, v3, v42
	v_mul_f32_e32 v5, v5, v42
	v_mul_f32_e32 v8, v8, v42
	v_dual_mul_f32 v37, v37, v45 :: v_dual_and_b32 v0, 16, v0
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v55.h, v45.l
	v_mov_b16_e32 v58.h, v45.l
	v_mov_b16_e32 v62.h, v45.l
	v_mov_b16_e32 v56.h, v45.l
	v_mov_b16_e32 v57.h, v45.l
	v_mov_b16_e32 v61.h, v45.l
	v_mov_b16_e32 v59.h, v45.l
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_mov_b16_e32 v54.h, v45.l
	v_mov_b16_e32 v60.h, v45.l
	v_mov_b16_e32 v53.h, v45.l
	v_mov_b16_e32 v48.h, v45.l
	v_mov_b16_e32 v51.h, v45.l
	v_mov_b16_e32 v52.h, v45.l
	v_mov_b16_e32 v45.h, v45.l
	v_mov_b16_e32 v49.h, v45.l
	v_mov_b16_e32 v50.h, v45.l
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v40, s19, v40
	s_mul_i32 s33, s33, s19
	v_mul_lo_u32 v41, s19, v41
	s_mov_b32 s0, 0x76543210
	v_add3_u32 v43, s33, s18, v43
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v40, v43, v40, 1
	v_add_lshl_u32 v41, v43, v41, 1
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v28, 16, v28
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v29, 16, v29
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v31, 16, v31
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v1, v1, v28, v11
	v_fma_f32 v2, v2, v29, v25
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v4, v4, v31, v23
	v_fma_f32 v9, v9, v28, v26
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v1, v11, v1, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v2, v25, v2, s2
	v_cndmask_b32_e64 v4, v23, v4, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v7, v7, v42 :: v_dual_lshlrev_b32 v42, 16, v44
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	s_waitcnt vmcnt(0)
	v_dual_max_f32 v2, v2, v2 :: v_dual_lshlrev_b32 v27, 16, v27
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v5, v5, v32, v22
	v_fma_f32 v6, v6, v33, v21
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v26, v9, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v1, v1, v1
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v3, v3, v30, v24
	v_fma_f32 v28, v34, v30, v17
	v_fma_f32 v30, v36, v32, v15
	v_fma_f32 v32, v38, v42, v13
	v_fma_f32 v8, v8, v27, v19
	v_fma_f32 v10, v10, v29, v18
	v_fma_f32 v29, v35, v31, v16
	v_fma_f32 v27, v39, v27, v12
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v4, v4, v4
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v7, v7, v42, v20
	v_fma_f32 v31, v37, v33, v14
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v6, v21, v6, s2
	v_cndmask_b32_e64 v11, v17, v28, s2
	v_cndmask_b32_e64 v13, v13, v32, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v9, v9, v9
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v3, v24, v3, s2
	v_cndmask_b32_e64 v5, v22, v5, s2
	v_cndmask_b32_e64 v7, v20, v7, s2
	v_cndmask_b32_e64 v10, v18, v10, s2
	v_cndmask_b32_e64 v16, v16, v29, s2
	v_cndmask_b32_e64 v15, v15, v30, s2
	v_cndmask_b32_e64 v12, v12, v27, s2
	v_cndmask_b32_e64 v14, v14, v31, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v2, 0, v2
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v10, v10, v10
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v16, v16, v16
	v_dual_max_f32 v7, v7, v7 :: v_dual_max_f32 v14, v14, v14
	v_dual_max_f32 v15, v15, v15 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v11, 0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v13, 0, v13
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v4, v4, v4 :: v_dual_mul_f32 v9, v9, v9
	v_mul_f32_e32 v6, v6, v6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v8, v19, v8, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v10, 0, v10
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v16, 0, v16
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v12, 0, v12
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v55.l, v9.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v11, v11, v11 :: v_dual_mul_f32 v14, v14, v14
	v_mul_f32_e32 v13, v13, v13
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v8, v8, v8
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v5, v5, v5 :: v_dual_mul_f32 v10, v10, v10
	v_dual_mul_f32 v7, v7, v7 :: v_dual_mul_f32 v16, v16, v16
	v_dual_mul_f32 v15, v15, v15 :: v_dual_mul_f32 v12, v12, v12
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v18, 1, v55
	v_mov_b16_e32 v58.l, v11.h
	v_mov_b16_e32 v62.l, v13.h
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v8, 0, v8
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v56.l, v10.h
	v_mov_b16_e32 v57.l, v16.h
	v_mov_b16_e32 v61.l, v12.h
	v_mov_b16_e32 v59.l, v14.h
	v_and_b32_e32 v26, 1, v58
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v3, v3, v3 :: v_dual_and_b32 v30, 1, v62
	v_mul_f32_e32 v8, v8, v8
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v25, 1, v56
	v_add3_u32 v9, v9, v18, 0x7fff
	v_and_b32_e32 v18, 1, v57
	v_and_b32_e32 v29, 1, v61
	v_mov_b16_e32 v54.l, v7.h
	v_mov_b16_e32 v60.l, v15.h
	v_and_b32_e32 v27, 1, v59
	v_add3_u32 v11, v11, v26, 0x7fff
	v_add3_u32 v13, v13, v30, 0x7fff
	v_mov_b16_e32 v53.l, v8.h
	v_add3_u32 v10, v10, v25, 0x7fff
	v_add3_u32 v16, v16, v18, 0x7fff
	v_add3_u32 v0, v12, v29, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v1, v1, v1 :: v_dual_mul_f32 v2, v2, v2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v14, v14, v27, 0x7fff
	v_mov_b16_e32 v10.l, v9.h
	v_and_b32_e32 v28, 1, v60
	v_mov_b16_e32 v16.l, v11.h
	v_mov_b16_e32 v0.l, v13.h
	v_and_b32_e32 v24, 1, v54
	v_and_b32_e32 v23, 1, v53
	v_mov_b16_e32 v48.l, v2.h
	v_mov_b16_e32 v51.l, v6.h
	v_add3_u32 v15, v15, v28, 0x7fff
	v_cndmask_b32_e32 v9, v0, v16, vcc_lo
	v_add3_u32 v7, v7, v24, 0x7fff
	v_cndmask_b32_e32 v0, v16, v0, vcc_lo
	v_add3_u32 v8, v8, v23, 0x7fff
	v_mov_b16_e32 v52.l, v5.h
	v_mov_b16_e32 v14.l, v15.h
	v_and_b32_e32 v19, 1, v48
	v_mov_b16_e32 v8.l, v7.h
	v_and_b32_e32 v21, 1, v51
	v_mov_b16_e32 v45.l, v1.h
	v_mov_b16_e32 v50.l, v3.h
	v_add3_u32 v2, v2, v19, 0x7fff
	v_mov_b16_e32 v49.l, v4.h
	v_add3_u32 v6, v6, v21, 0x7fff
	v_and_b32_e32 v22, 1, v52
	v_and_b32_e32 v20, 1, v50
	v_cndmask_b32_e32 v7, v14, v10, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v5, v5, v22, 0x7fff
	v_mov_b16_e32 v6.l, v5.h
	v_and_b32_e32 v17, 1, v45
	v_cndmask_b32_e32 v5, 0x3276, v47, vcc_lo
	v_add3_u32 v3, v3, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v1, v1, v17, 0x7fff
	v_and_b32_e32 v17, 1, v49
	v_lshl_or_b32 v5, v5, 8, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v2.l, v1.h
	v_add3_u32 v4, v4, v17, 0x7fff
	v_mov_b16_e32 v4.l, v3.h
	v_cndmask_b32_e32 v3, 0x1054, v46, vcc_lo
	v_and_b32_e32 v5, 0x760076, v5
	v_cndmask_b32_e32 v1, v6, v2, vcc_lo
	v_cndmask_b32_e32 v2, v2, v6, vcc_lo
	v_cndmask_b32_e32 v6, v8, v4, vcc_lo
	v_lshl_or_b32 v3, v3, 8, v3
	v_cndmask_b32_e32 v4, v4, v8, vcc_lo
	v_lshl_or_b32 v5, v5, 4, v5
	v_cndmask_b32_e32 v8, v10, v14, vcc_lo
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v3, 0x540054, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v11, 0x7060706, v5
	v_permlanex16_b32 v5, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v0, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v3, v3, 4, v3
	v_and_b32_e32 v10, 0x5040504, v3
	v_permlanex16_b32 v3, v4, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_perm_b32 v0, v2, v1, v10
	v_perm_b32 v1, v2, v1, v11
	v_perm_b32 v2, v3, v6, v10
	v_perm_b32 v3, v3, v6, v11
	v_perm_b32 v4, v5, v7, v10
	v_perm_b32 v5, v5, v7, v11
	v_perm_b32 v6, v8, v9, v10
	v_perm_b32 v7, v8, v9, v11
	s_clause 0x1
	buffer_store_b128 v[0:3], v40, s[16:19], 0 offen
	buffer_store_b128 v[4:7], v41, s[16:19], 0 offen
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 85
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
		.amdhsa_inst_pref_size 31
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 85
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3856
; TotalNumSgprs: 50
; NumVgprs: 85
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 10
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 85
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     85
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
