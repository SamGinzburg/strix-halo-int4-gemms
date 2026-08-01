	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v32, 15, v0
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v28, 1, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b32_e32 v2, 3, v32
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 116 24 is_stmt 1              ; generate_amdgcn.py:116:24
	s_lshl_b32 s13, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_abs_i32 s4, s13
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 118 19                        ; generate_amdgcn.py:118:19
	s_lshl_b32 s17, s14, 2
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s14, s14, s13
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s4, s7, s17
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s14
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s18, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s15, s18
	s_abs_i32 s14, s2
	s_cvt_f32_u32 s16, s15
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_readfirstlane_b32 s16, v1
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v1, 2, v32
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s7, 0, s15
	s_mul_f32 s16, s16, 0x4f7ffffe
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_mad_u64_u32 v[4:5], null, s34, v3, v[1:2]
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[5:6], null, s35, v3, v[2:3]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_u32_f32 s6, s16
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s16, s14, s6
	s_xor_b32 s6, s2, s18
	s_mul_i32 s19, s16, s15
	s_ashr_i32 s13, s6, 31
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s16, 1
	s_sub_i32 s22, s14, s15
	s_cmp_ge_u32 s14, s15
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s16, s19, s16
	s_cselect_b32 s14, s22, s14
	s_add_i32 s19, s16, 1
	s_cmp_ge_u32 s14, s15
	s_cselect_b32 s14, s19, s16
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s16, s12, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s14, s14, s13
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s15, s3, 5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s19, s12, 63
.Ltmp13:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s12, s12, s16
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s24, s14, s13
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v6, s15, v3
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s19, 31
.Ltmp15:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s16, s12, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s12, s24, s18
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s12
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s18, s19, s3
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s16, v6
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 32, v6
	.loc	1 120 13 is_stmt 1              ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s17
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	s_mul_i32 s22, s34, s15
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s33, s24, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s41, s18, 6
.Ltmp21:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s40, s2, 6
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s23, s35, s15
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s19, 63
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_add3_u32 v4, s22, s40, v4
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add3_u32 v5, s23, s33, v5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s12, s3, vcc_lo
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s12
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s22, s6
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s23, s7
	s_and_b32 s21, s21, 0xffff
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_b32 v7, v4, s[4:7], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b64 v[5:6], v5, s[20:23], 0 offen
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_lshlrev_b32_e32 v4, 2, v0
	s_mov_b32 s12, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s19, 0x7f
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_add_nc_u32_e32 v33, 0, v4
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v34, v33, v4
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v4, 16, v3
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt vmcnt(1)
	ds_store_b32 v33, v7 offset:4096
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v34, v[5:6]
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s25, s9, 0xffff
	s_mov_b32 s24, s8
	s_mov_b64 s[26:27], s[6:7]
	s_mov_b32 s12, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr24_sgpr25
.LBB0_3:                                ; %Flow158
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v27, v4, v32
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v29, 0x70, v28
	v_bfe_u32 v30, v0, 4, 1
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v14, 0 :: v_dual_add_nc_u32 v31, 0, v27
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_mov_b32_e32 v25, 0
	v_mov_b32_e32 v11, 0
	s_and_not1_b32 vcc_lo, exec_lo, s12
	s_add_i32 s42, s41, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s12, 0
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_add_i32 s43, s15, 32
	v_dual_mov_b32 v11, 0 :: v_dual_and_b32 v6, 0xe0, v0
	v_sub_nc_u32_e32 v35, s16, v3
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_add_nc_u32_e32 v7, s43, v3
	v_lshl_or_b32 v3, s14, 8, v6
	s_lshl_b32 s14, s14, 7
	v_add3_u32 v4, s40, v4, v32
	s_lshl_b32 s15, s13, 8
	v_mul_lo_u32 v6, s35, v7
	s_lshl_b32 s13, s13, 7
	v_subrev_nc_u32_e32 v37, s15, v3
	s_mov_b32 s15, s12
	v_mul_lo_u32 v3, s34, v7
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_add3_u32 v2, v6, s14, v2
	s_mov_b32 s14, s12
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_add3_u32 v41, v3, s40, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_subrev_nc_u32_e32 v40, s13, v2
	s_mov_b32 s13, s12
	v_add_nc_u32_e32 v8, 32, v4
	v_mul_lo_u32 v4, s41, v4
	v_add_nc_u32_e32 v5, 0, v32
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v36, 1, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v8, s41, v8
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v17, 0
	v_add_nc_u32_e32 v42, v5, v29
	v_dual_mov_b32 v18, 0 :: v_dual_lshlrev_b32 v39, 1, v4
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v13, 0 :: v_dual_lshlrev_b32 v38, 1, v8
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_mov_b32_e32 v14, 0
	v_mov_b32_e32 v12, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_mov_b64 s[24:25], s[8:9]
	s_and_b32 s29, s11, 0xffff
	s_mov_b32 s28, s10
	s_max_i32 s44, s42, 1
	s_lshl_b32 s45, s35, 1
	s_lshl_b32 s46, s35, 5
	s_lshl_b32 s34, s34, 5
	s_mov_b32 s36, s8
	s_mov_b32 s37, s9
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v9, v39, s[36:39], 0 offen
	buffer_load_u16 v10, v38, s[36:39], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s43, v35
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v39, 2, v39
	s_add_i32 s44, s44, -1
	s_add_i32 s43, s43, 32
	v_add_nc_u32_e32 v38, 2, v38
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s44, 0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v44, 16, v9
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e32 v9, 0x80000000, v41, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v41, s34, v41
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_b32 v45, v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v46, v31 offset:4416
	ds_load_u8 v47, v31 offset:4352
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v9, 0x80000000, v40, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v40, s46, v40
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v31 offset:4544
	ds_load_u8 v48, v31 offset:4480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v47, 16, v46
	ds_load_u8 v46, v31 offset:4160
	ds_load_u8 v47, v31 offset:4096
	ds_load_u8 v56, v31 offset:4128
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v31 offset:4288
	ds_load_u8 v48, v31 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v47, 16, v46
	ds_load_u8 v46, v42 offset:640
	ds_load_u8 v47, v42 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v42 offset:896
	ds_load_u8 v48, v42 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v47, 16, v46
	ds_load_u8 v46, v42 offset:128
	ds_load_u8 v47, v42
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v42 offset:384
	ds_load_u8 v48, v42 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v47, 16, v46
	v_wmma_i32_16x16x16_iu4 v[46:53], v[62:63], v[54:55], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v54, v31 offset:4928
	ds_load_u8 v55, v31 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v31 offset:5056
	ds_load_u8 v57, v31 offset:4992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v57, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v55, 16, v54
	ds_load_u8 v54, v31 offset:4672
	ds_load_u8 v57, v31 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v57, v54, 0xc0c0004
	ds_load_u8 v57, v31 offset:4800
	ds_load_u8 v58, v31 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v57, 16, v54
	ds_load_u8 v57, v42 offset:1664
	ds_load_u8 v58, v42 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v42 offset:1920
	ds_load_u8 v59, v42 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v58, 16, v57
	ds_load_u8 v57, v42 offset:1152
	ds_load_u8 v58, v42 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v42 offset:1408
	ds_load_u8 v59, v42 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v64, v58, 16, v57
	v_wmma_i32_16x16x16_iu4 v[46:53], v[64:65], v[54:55], v[46:53] neg_lo:[1,1,0]
	ds_load_u8 v54, v31 offset:5440
	ds_load_u8 v55, v31 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v31 offset:5568
	ds_load_u8 v57, v31 offset:5504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v57, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v55, 16, v54
	ds_load_u8 v54, v31 offset:5184
	ds_load_u8 v57, v31 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v57, v54, 0xc0c0004
	ds_load_u8 v57, v31 offset:5312
	ds_load_u8 v58, v31 offset:5248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v57, 16, v54
	ds_load_u8 v57, v42 offset:2688
	ds_load_u8 v58, v42 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v42 offset:2944
	ds_load_u8 v59, v42 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v58, 16, v57
	ds_load_u8 v57, v42 offset:2176
	ds_load_u8 v58, v42 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v42 offset:2432
	ds_load_u8 v59, v42 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v66, v58, 16, v57
	v_wmma_i32_16x16x16_iu4 v[46:53], v[66:67], v[54:55], v[46:53] neg_lo:[1,1,0]
	ds_load_u8 v54, v31 offset:5952
	ds_load_u8 v55, v31 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v31 offset:6080
	ds_load_u8 v57, v31 offset:6016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v57, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v55, 16, v54
	ds_load_u8 v54, v31 offset:5696
	ds_load_u8 v57, v31 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v57, v54, 0xc0c0004
	ds_load_u8 v57, v31 offset:5824
	ds_load_u8 v58, v31 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v57, 16, v54
	ds_load_u8 v57, v42 offset:3712
	ds_load_u8 v58, v42 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v42 offset:3968
	ds_load_u8 v59, v42 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v58, 16, v57
	ds_load_u8 v57, v42 offset:3200
	ds_load_u8 v58, v42 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v42 offset:3456
	ds_load_u8 v59, v42 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v68, v58, 16, v57
	v_wmma_i32_16x16x16_iu4 v[46:53], v[68:69], v[54:55], v[46:53] neg_lo:[1,1,0]
	ds_load_u8 v54, v31 offset:4448
	ds_load_u8 v55, v31 offset:4384
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v43, 16, v10
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_mul_f32_e32 v48, v44, v48
	v_mul_f32_e32 v47, v44, v47
	v_mul_f32_e32 v51, v44, v51
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b64 v[9:10], v9, s[20:23], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v31 offset:4576
	ds_load_u8 v57, v31 offset:4512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v57, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v55, 16, v54
	ds_load_u8 v54, v31 offset:4192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v56, v54, 0xc0c0004
	ds_load_u8 v55, v31 offset:4320
	ds_load_u8 v56, v31 offset:4256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v70, v55, 16, v54
	v_wmma_i32_16x16x16_iu4 v[54:61], v[62:63], v[70:71], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v62, v31 offset:4960
	ds_load_u8 v63, v31 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v31 offset:5088
	ds_load_u8 v70, v31 offset:5024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v70, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v63, 16, v62
	ds_load_u8 v62, v31 offset:4704
	ds_load_u8 v70, v31 offset:4640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v70, v62, 0xc0c0004
	ds_load_u8 v70, v31 offset:4832
	ds_load_u8 v71, v31 offset:4768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v70, 16, v62
	v_wmma_i32_16x16x16_iu4 v[54:61], v[64:65], v[62:63], v[54:61] neg_lo:[1,1,0]
	ds_load_u8 v62, v31 offset:5472
	ds_load_u8 v63, v31 offset:5408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v31 offset:5600
	ds_load_u8 v64, v31 offset:5536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v63, 16, v62
	ds_load_u8 v62, v31 offset:5216
	ds_load_u8 v64, v31 offset:5152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v64, v62, 0xc0c0004
	ds_load_u8 v64, v31 offset:5344
	ds_load_u8 v65, v31 offset:5280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v64, 16, v62
	v_wmma_i32_16x16x16_iu4 v[54:61], v[66:67], v[62:63], v[54:61] neg_lo:[1,1,0]
	ds_load_u8 v62, v31 offset:5984
	ds_load_u8 v63, v31 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v31 offset:6112
	ds_load_u8 v64, v31 offset:6048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v63, 16, v62
	ds_load_u8 v62, v31 offset:5728
	ds_load_u8 v64, v31 offset:5664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v64, v62, 0xc0c0004
	ds_load_u8 v64, v31 offset:5856
	ds_load_u8 v65, v31 offset:5792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v64, 16, v62
	v_wmma_i32_16x16x16_iu4 v[54:61], v[68:69], v[62:63], v[54:61] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v54, v54
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v62, v36, v37
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v61, v61
	v_mul_f32_e32 v46, v44, v46
	v_mul_f32_e32 v50, v44, v50
	v_mul_f32_e32 v49, v44, v49
	v_mul_f32_e32 v52, v44, v52
	v_dual_mul_f32 v44, v44, v53 :: v_dual_mul_f32 v53, v43, v54
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v63, v62, s[28:31], 0 offen
	buffer_load_u16 v64, v62, s[28:31], 0 offen offset:4
	buffer_load_u16 v65, v62, s[28:31], 0 offen offset:8
	buffer_load_u16 v66, v62, s[28:31], 0 offen offset:12
	buffer_load_u16 v67, v62, s[28:31], 0 offen offset:16
	buffer_load_u16 v68, v62, s[28:31], 0 offen offset:20
	buffer_load_u16 v69, v62, s[28:31], 0 offen offset:24
	buffer_load_u16 v62, v62, s[28:31], 0 offen offset:28
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_mul_f32_e32 v54, v43, v55
	v_mul_f32_e32 v55, v43, v56
	v_mul_f32_e32 v56, v43, v57
	v_mul_f32_e32 v57, v43, v58
	v_mul_f32_e32 v58, v43, v59
	v_mul_f32_e32 v59, v43, v60
	v_mul_f32_e32 v43, v43, v61
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v37, s45, v37
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(9)
	ds_store_b32 v33, v45 offset:4096
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(8)
	ds_store_b64 v34, v[9:10]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v63, 16, v63
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v64, 16, v64
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v65, 16, v65
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v66, 16, v66
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v67, 16, v67
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v68, 16, v68
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v69, 16, v69
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v11, v46, v63 :: v_dual_lshlrev_b32 v62, 16, v62
	v_fmac_f32_e32 v24, v48, v65
	v_dual_fmac_f32 v22, v50, v67 :: v_dual_fmac_f32 v23, v49, v66
	v_fmac_f32_e32 v20, v52, v69
	v_fmac_f32_e32 v26, v53, v63
	v_fmac_f32_e32 v18, v54, v64
	v_fmac_f32_e32 v25, v47, v64
	v_fmac_f32_e32 v19, v44, v62
	v_dual_fmac_f32 v17, v55, v65 :: v_dual_fmac_f32 v16, v56, v66
	v_dual_fmac_f32 v15, v57, v67 :: v_dual_fmac_f32 v12, v43, v62
	v_fmac_f32_e32 v14, v58, v68
	v_fmac_f32_e32 v21, v51, v68
	v_fmac_f32_e32 v13, v59, v69
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v1, 32, v27
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v2, s41, v27
	s_mul_i32 s4, s40, s41
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s3, s42, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v3, s41, v1
	s_add_i32 s4, s4, s3
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v2, s4, v2, 1
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v33, 0
	v_add_lshl_u32 v3, s4, v3, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	s_clause 0x1
	buffer_load_u16 v2, v2, s[24:27], 0 offen
	buffer_load_u16 v3, v3, s[24:27], 0 offen
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	s_mov_b32 s12, 0
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add3_u32 v10, 0, v32, v29
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v4, v31 offset:4416
	ds_load_u8 v5, v31 offset:4352
	ds_load_u8 v6, v31 offset:4544
	ds_load_u8 v7, v31 offset:4480
	ds_load_u8 v8, v31 offset:4160
	ds_load_u8 v9, v31 offset:4096
	ds_load_u8 v32, v31 offset:4288
	ds_load_u8 v33, v31 offset:4224
	ds_load_u8 v34, v10 offset:640
	ds_load_u8 v35, v10 offset:768
	ds_load_u8 v36, v10 offset:512
	ds_load_u8 v37, v10 offset:896
	ds_load_u8 v38, v10 offset:128
	ds_load_u8 v39, v10 offset:384
	ds_load_u8 v40, v10 offset:256
	ds_load_u8 v41, v10
	ds_load_u8 v50, v31 offset:4576
	ds_load_u8 v51, v31 offset:4512
	ds_load_u8 v52, v31 offset:4448
	ds_load_u8 v53, v31 offset:4384
	s_mov_b32 s19, s12
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_mov_b32 s13, s12
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v5, v7, v6, 0xc0c0004
	s_mov_b32 s14, s12
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v6, v9, v8, 0xc0c0004
	s_mov_b32 s15, s12
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v7, v33, v32, 0xc0c0004
	v_lshl_or_b32 v5, v5, 16, v4
	s_mov_b32 s16, s12
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v8, v36, v34, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v9, v35, v37, 0xc0c0004
	v_lshl_or_b32 v4, v7, 16, v6
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v6, v41, v38, 0xc0c0004
	v_lshl_or_b32 v7, v9, 16, v8
	ds_load_u8 v9, v31 offset:4928
	ds_load_u8 v32, v31 offset:4864
	ds_load_u8 v33, v31 offset:5056
	ds_load_u8 v42, v31 offset:4992
	ds_load_u8 v43, v31 offset:4672
	ds_load_u8 v44, v31 offset:4608
	ds_load_u8 v45, v31 offset:4800
	ds_load_u8 v46, v31 offset:4736
	ds_load_u8 v47, v10 offset:1664
	ds_load_u8 v48, v10 offset:1920
	ds_load_u8 v49, v10 offset:1792
	ds_load_u8 v58, v10 offset:1536
	v_perm_b32 v8, v40, v39, 0xc0c0004
	v_dual_mov_b32 v41, s19 :: v_dual_mov_b32 v40, s18
	v_dual_mov_b32 v39, s17 :: v_dual_mov_b32 v38, s16
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v6, v8, 16, v6
	ds_load_u8 v8, v10 offset:1152
	ds_load_u8 v59, v10 offset:1408
	ds_load_u8 v60, v10 offset:1280
	ds_load_u8 v61, v10 offset:1024
	ds_load_u8 v62, v31 offset:5088
	ds_load_u8 v63, v31 offset:5024
	ds_load_u8 v64, v31 offset:4960
	ds_load_u8 v65, v31 offset:4896
	v_dual_mov_b32 v37, s15 :: v_dual_mov_b32 v36, s14
	v_dual_mov_b32 v35, s13 :: v_dual_mov_b32 v34, s12
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v9, v32, v9, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v32, v42, v33, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v33, v44, v43, 0xc0c0004
	ds_load_u8 v54, v31 offset:4320
	ds_load_u8 v55, v31 offset:4256
	ds_load_u8 v56, v31 offset:4192
	ds_load_u8 v57, v31 offset:4128
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v70, v46, v45, 0xc0c0004
	ds_load_u8 v66, v31 offset:4832
	ds_load_u8 v67, v31 offset:4768
	ds_load_u8 v68, v31 offset:4704
	ds_load_u8 v69, v31 offset:4640
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v71, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v58, v58, v47, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[42:49], v[6:7], v[4:5], v[34:41] neg_lo:[1,1,0]
	v_lshl_or_b32 v5, v32, 16, v9
	v_lshl_or_b32 v4, v70, 16, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v9, v71, 16, v58
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v8, v61, v8, 0xc0c0004
	ds_load_u8 v32, v31 offset:5440
	ds_load_u8 v33, v31 offset:5376
	ds_load_u8 v58, v31 offset:5568
	ds_load_u8 v61, v31 offset:5504
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v31 offset:5184
	ds_load_u8 v70, v31 offset:5120
	ds_load_u8 v71, v31 offset:5312
	ds_load_u8 v72, v31 offset:5248
	ds_load_u8 v73, v10 offset:2688
	ds_load_u8 v74, v10 offset:2944
	ds_load_u8 v75, v10 offset:2816
	ds_load_u8 v76, v10 offset:2560
	ds_load_u8 v77, v10 offset:2176
	ds_load_u8 v78, v10 offset:2432
	ds_load_u8 v79, v10 offset:2304
	ds_load_u8 v80, v10 offset:2048
	v_lshl_or_b32 v8, v59, 16, v8
	ds_load_u8 v59, v31 offset:5600
	ds_load_u8 v81, v31 offset:5536
	ds_load_u8 v82, v31 offset:5472
	ds_load_u8 v83, v31 offset:5408
	v_wmma_i32_16x16x16_iu4 v[42:49], v[8:9], v[4:5], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v60, v70, v60, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v70, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v72, v75, v74, 0xc0c0004
	v_perm_b32 v32, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v71, v76, v73, 0xc0c0004
	v_perm_b32 v33, v61, v58, 0xc0c0004
	ds_load_u8 v58, v31 offset:5952
	ds_load_u8 v61, v31 offset:5888
	ds_load_u8 v84, v31 offset:6080
	ds_load_u8 v85, v31 offset:6016
	ds_load_u8 v86, v31 offset:5344
	ds_load_u8 v87, v31 offset:5280
	ds_load_u8 v88, v31 offset:5216
	ds_load_u8 v89, v31 offset:5152
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v73, v80, v77, 0xc0c0004
	v_perm_b32 v74, v79, v78, 0xc0c0004
	v_lshl_or_b32 v4, v70, 16, v60
	v_lshl_or_b32 v5, v33, 16, v32
	v_lshl_or_b32 v33, v72, 16, v71
	ds_load_u8 v75, v31 offset:5824
	ds_load_u8 v76, v31 offset:5760
	ds_load_u8 v77, v10 offset:3712
	ds_load_u8 v78, v10 offset:3840
	ds_load_u8 v79, v10 offset:3584
	ds_load_u8 v80, v10 offset:3968
	v_lshl_or_b32 v32, v74, 16, v73
	ds_load_u8 v60, v31 offset:5696
	ds_load_u8 v70, v31 offset:5632
	ds_load_u8 v71, v31 offset:6112
	ds_load_u8 v72, v31 offset:6048
	ds_load_u8 v73, v31 offset:5984
	ds_load_u8 v74, v31 offset:5920
	v_wmma_i32_16x16x16_iu4 v[42:49], v[32:33], v[4:5], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v58, v61, v58, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v61, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v5, v61, 16, v58
	ds_load_u8 v58, v31 offset:5856
	ds_load_u8 v61, v31 offset:5792
	ds_load_u8 v84, v31 offset:5728
	ds_load_u8 v31, v31 offset:5664
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v4, v70, v60, 0xc0c0004
	ds_load_u8 v60, v10 offset:3200
	ds_load_u8 v70, v10 offset:3456
	ds_load_u8 v85, v10 offset:3328
	ds_load_u8 v90, v10 offset:3072
	v_perm_b32 v10, v53, v52, 0xc0c0004
	v_perm_b32 v52, v57, v56, 0xc0c0004
	v_perm_b32 v53, v55, v54, 0xc0c0004
	v_perm_b32 v57, v69, v68, 0xc0c0004
	v_perm_b32 v54, v76, v75, 0xc0c0004
	v_lshl_or_b32 v51, v50, 16, v10
	v_perm_b32 v55, v79, v77, 0xc0c0004
	v_lshl_or_b32 v50, v53, 16, v52
	v_perm_b32 v52, v65, v64, 0xc0c0004
	v_perm_b32 v53, v63, v62, 0xc0c0004
	v_perm_b32 v62, v67, v66, 0xc0c0004
	v_perm_b32 v56, v78, v80, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[34:41], v[6:7], v[50:51], v[34:41] neg_lo:[1,1,0]
	v_perm_b32 v50, v83, v82, 0xc0c0004
	v_lshl_or_b32 v7, v53, 16, v52
	v_lshl_or_b32 v6, v62, 16, v57
	v_perm_b32 v51, v81, v59, 0xc0c0004
	v_perm_b32 v52, v89, v88, 0xc0c0004
	v_perm_b32 v53, v87, v86, 0xc0c0004
	v_lshl_or_b32 v4, v54, 16, v4
	v_lshl_or_b32 v10, v56, 16, v55
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v90, v60, 0xc0c0004
	v_perm_b32 v55, v85, v70, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[34:41], v[8:9], v[6:7], v[34:41] neg_lo:[1,1,0]
	v_lshl_or_b32 v7, v51, 16, v50
	v_lshl_or_b32 v6, v53, 16, v52
	v_perm_b32 v8, v74, v73, 0xc0c0004
	v_perm_b32 v50, v72, v71, 0xc0c0004
	v_perm_b32 v31, v31, v84, 0xc0c0004
	v_perm_b32 v51, v61, v58, 0xc0c0004
	v_lshl_or_b32 v9, v55, 16, v54
	v_wmma_i32_16x16x16_iu4 v[34:41], v[32:33], v[6:7], v[34:41] neg_lo:[1,1,0]
	v_lshl_or_b32 v7, v50, 16, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v6, v51, 16, v31
	v_wmma_i32_16x16x16_iu4 v[42:49], v[9:10], v[4:5], v[42:49] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[34:41], v[9:10], v[6:7], v[34:41] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v4, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v5, v43
	v_cvt_f32_i32_e32 v6, v44
	v_cvt_f32_i32_e32 v7, v45
	v_cvt_f32_i32_e32 v8, v46
	v_cvt_f32_i32_e32 v9, v47
	v_cvt_f32_i32_e32 v10, v48
	v_cvt_f32_i32_e32 v33, v49
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
.LBB0_8:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v29, v30, v29
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s3, s3, s35
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v46.l, 0
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s3, s33, s3
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v46.h, v3.l
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	v_add_lshl_u32 v29, s3, v29, 1
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v3, 0x78, v28
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_dual_mov_b32 v28, 0x5410 :: v_dual_add_nc_u32 v31, 4, v29
	v_dual_mov_b32 v47, 0x7632 :: v_dual_add_nc_u32 v32, 8, v29
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v35, v35, v46 :: v_dual_add_nc_u32 v42, 12, v29
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v30, 0x80000000, v29, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v34, v34, v46 :: v_dual_add_nc_u32 v43, 16, v29
	v_dual_mul_f32 v37, v37, v46 :: v_dual_add_nc_u32 v44, 20, v29
	v_dual_mul_f32 v36, v36, v46 :: v_dual_add_nc_u32 v45, 24, v29
	v_dual_mul_f32 v38, v38, v46 :: v_dual_add_nc_u32 v29, 28, v29
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	s_mov_b32 s4, s10
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	s_clause 0x7
	buffer_load_u16 v30, v30, s[4:7], 0 offen
	buffer_load_u16 v31, v31, s[4:7], 0 offen
	buffer_load_u16 v32, v32, s[4:7], 0 offen
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	buffer_load_u16 v43, v43, s[4:7], 0 offen
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	buffer_load_u16 v29, v29, s[4:7], 0 offen
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v1, s35, v1
	s_mul_i32 s40, s40, s35
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v2.h, v2.l
	v_mov_b16_e32 v2.l, v46.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v40, v40, v46
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_add3_u32 v3, s40, s33, v3
	v_mul_lo_u32 v27, s35, v27
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v41, v41, v46
	v_mul_f32_e32 v4, v4, v2
	v_mul_f32_e32 v5, v5, v2
	v_mul_f32_e32 v6, v6, v2
	v_mul_f32_e32 v7, v7, v2
	v_mul_f32_e32 v8, v8, v2
	v_mul_f32_e32 v9, v9, v2
	v_mul_f32_e32 v10, v10, v2
	v_mul_f32_e32 v2, v33, v2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add_lshl_u32 v33, v3, v1, 1
	v_add_lshl_u32 v27, v3, v27, 1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v39, v39, v46 :: v_dual_and_b32 v0, 16, v0
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v55.h, v46.l
	v_mov_b16_e32 v60.h, v46.l
	v_mov_b16_e32 v56.h, v46.l
	v_mov_b16_e32 v59.h, v46.l
	v_mov_b16_e32 v62.h, v46.l
	v_mov_b16_e32 v61.h, v46.l
	v_mov_b16_e32 v57.h, v46.l
	v_mov_b16_e32 v58.h, v46.l
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_mov_b16_e32 v54.h, v46.l
	v_mov_b16_e32 v53.h, v46.l
	v_mov_b16_e32 v46.h, v46.l
	v_mov_b16_e32 v48.h, v46.l
	v_mov_b16_e32 v49.h, v46.l
	v_mov_b16_e32 v50.h, v46.l
	v_mov_b16_e32 v51.h, v46.l
	v_mov_b16_e32 v52.h, v46.l
	s_mov_b32 s3, 0x76543210
	s_and_b32 s1, s1, 0xffff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v1, 16, v30
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v3, 16, v31
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v30, 16, v32
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v32, 16, v43
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v4, v4, v1, v11
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v43, 16, v45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v5, v5, v3, v25
	v_fma_f32 v8, v8, v32, v22
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v4, v11, v4, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v32, v38, v32, v15
	v_fma_f32 v6, v6, v30, v24
	v_fma_f32 v3, v35, v3, v18
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v8, v22, v8, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v31, 16, v42
	v_lshlrev_b32_e32 v42, 16, v44
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v4, v4, v4
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v30, v36, v30, v17
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v8, v8, v8
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v7, v7, v31, v23
	v_fma_f32 v35, v40, v43, v13
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v4, 0, v4
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v1, v34, v1, v26
	v_fma_f32 v34, v39, v42, v14
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v7, v23, v7, s2
	v_cndmask_b32_e64 v15, v15, v32, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v31, v37, v31, v16
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v1, v26, v1, s2
	v_cndmask_b32_e64 v3, v18, v3, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v7, v7, v7
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v2, v2, v29, v19
	v_fma_f32 v29, v41, v29, v12
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v11, v17, v30, s2
	v_cndmask_b32_e64 v14, v14, v34, s2
	v_cndmask_b32_e64 v5, v25, v5, s2
	v_cndmask_b32_e64 v6, v24, v6, s2
	v_cndmask_b32_e64 v2, v19, v2, s2
	v_cndmask_b32_e64 v13, v13, v35, s2
	v_cndmask_b32_e64 v12, v12, v29, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v1, v1, v1
	v_max_f32_e32 v15, v15, v15
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v16, v16, v31, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v3, v3, v3
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v14, v14, v14
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v6, v6, v6
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v12, v12, v12
	v_dual_max_f32 v15, 0, v15 :: v_dual_mul_f32 v4, v4, v4
	v_dual_max_f32 v16, v16, v16 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v14, 0, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v12, 0, v12 :: v_dual_mul_f32 v1, v1, v1
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v15, v15, v15
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v9, v9, v42, v21
	v_fma_f32 v10, v10, v43, v20
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v16, 0, v16 :: v_dual_mul_f32 v3, v3, v3
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v11, v11, v11 :: v_dual_mul_f32 v14, v14, v14
	v_mul_f32_e32 v6, v6, v6
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v55.l, v1.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v13, v13, v13 :: v_dual_mul_f32 v12, v12, v12
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v60.l, v15.h
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v21, v9, s2
	v_cndmask_b32_e64 v10, v20, v10, s2
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v16, v16, v16
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v56.l, v3.h
	v_mov_b16_e32 v59.l, v14.h
	v_and_b32_e32 v18, 1, v55
	v_mov_b16_e32 v62.l, v13.h
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v9, v9, v9 :: v_dual_and_b32 v30, 1, v60
	v_max_f32_e32 v10, v10, v10
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v61.l, v12.h
	v_and_b32_e32 v25, 1, v56
	v_and_b32_e32 v29, 1, v59
	v_mov_b16_e32 v57.l, v16.h
	v_add3_u32 v1, v1, v18, 0x7fff
	v_and_b32_e32 v32, 1, v62
	v_add3_u32 v15, v15, v30, 0x7fff
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v10, 0, v10
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v31, 1, v61
	v_add3_u32 v3, v3, v25, 0x7fff
	v_add3_u32 v14, v14, v29, 0x7fff
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v2, 0, v2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v58.l, v11.h
	v_add3_u32 v13, v13, v32, 0x7fff
	v_mov_b16_e32 v3.l, v1.h
	v_mov_b16_e32 v14.l, v15.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v7, v7, v7 :: v_dual_and_b32 v18, 1, v57
	v_mul_f32_e32 v10, v10, v10
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v0, v12, v31, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v9, v9, v9 :: v_dual_mul_f32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v16, v16, v18, 0x7fff
	v_mov_b16_e32 v0.l, v13.h
	v_and_b32_e32 v26, 1, v58
	v_mov_b16_e32 v54.l, v10.h
	v_mov_b16_e32 v53.l, v2.h
	v_mov_b16_e32 v46.l, v4.h
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v8, 0, v8
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v11, v11, v26, 0x7fff
	v_and_b32_e32 v24, 1, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v17, 1, v46
	v_mov_b16_e32 v49.l, v7.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v5, v5, v5 :: v_dual_mul_f32 v8, v8, v8
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v16.l, v11.h
	v_and_b32_e32 v23, 1, v53
	v_add3_u32 v10, v10, v24, 0x7fff
	v_mov_b16_e32 v51.l, v9.h
	v_add3_u32 v4, v4, v17, 0x7fff
	v_mov_b16_e32 v52.l, v8.h
	v_add3_u32 v2, v2, v23, 0x7fff
	v_mov_b16_e32 v2.l, v10.h
	v_and_b32_e32 v17, 1, v49
	v_mov_b16_e32 v50.l, v6.h
	v_mov_b16_e32 v48.l, v5.h
	s_mov_b32 s2, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v7, v7, v17, 0x7fff
	v_and_b32_e32 v21, 1, v51
	v_and_b32_e32 v19, 1, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v9, v9, v21, 0x7fff
	v_and_b32_e32 v22, 1, v52
	v_add3_u32 v8, v8, v22, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v9.l, v8.h
	v_and_b32_e32 v20, 1, v50
	v_add3_u32 v6, v6, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v7.l, v6.h
	v_cndmask_b32_e32 v6, 0x3276, v47, vcc_lo
	v_add3_u32 v5, v5, v19, 0x7fff
	v_mov_b16_e32 v5.l, v4.h
	v_cndmask_b32_e32 v4, 0x1054, v28, vcc_lo
	v_cndmask_b32_e32 v8, v2, v7, vcc_lo
	v_lshl_or_b32 v6, v6, 8, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v2, v7, v2 :: v_dual_cndmask_b32 v1, v9, v5
	v_lshl_or_b32 v4, v4, 8, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v5, v5, v9 :: v_dual_and_b32 v6, 0x760076, v6
	v_cndmask_b32_e32 v7, v14, v3, vcc_lo
	v_dual_cndmask_b32 v3, v3, v14 :: v_dual_and_b32 v4, 0x540054, v4
	v_cndmask_b32_e32 v9, v0, v16, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v6, v6, 4, v6
	v_cndmask_b32_e32 v0, v16, v0, vcc_lo
	v_permlanex16_b32 v5, v5, s3, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v4, v4, 4, v4
	v_and_b32_e32 v11, 0x7060706, v6
	v_permlanex16_b32 v6, v3, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v0, s3, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v10, 0x5040504, v4
	v_permlanex16_b32 v4, v2, s3, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s3, s7
	v_perm_b32 v0, v5, v1, v10
	v_perm_b32 v1, v5, v1, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v2, v4, v8, v10
	v_perm_b32 v3, v4, v8, v11
	v_perm_b32 v4, v6, v7, v10
	v_perm_b32 v5, v6, v7, v11
	v_perm_b32 v6, v12, v9, v10
	v_perm_b32 v7, v12, v9, v11
	s_clause 0x1
	buffer_store_b128 v[0:3], v27, s[0:3], 0 offen
	buffer_store_b128 v[4:7], v33, s[0:3], 0 offen
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 91
		.amdhsa_next_free_sgpr 47
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
		.amdhsa_inst_pref_size 57
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 91
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7172
; TotalNumSgprs: 49
; NumVgprs: 91
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 49
; NumVGPRsForWavesPerEU: 91
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc64_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     91
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
