	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
	v_and_b32_e32 v9, 31, v0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshrrev_b32_e32 v3, 5, v0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b32_e32 v8, 3, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v10, 0x100, v0
	v_and_b32_e32 v11, 15, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v2, 3, v9
	v_and_b32_e32 v12, 0xe0, v0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v50, 0, v8
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
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
	s_lshr_b32 s5, s5, 24
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
	s_ashr_i32 s13, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s4, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
	s_mul_hi_u32 s8, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
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
	s_sub_i32 s17, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s4, s7, s17
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s13, s17, s13
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s18, s4, 1
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s14, s18
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s13
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s15, s14
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s15
	v_readfirstlane_b32 s15, v1
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v1, 1, v9
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s7, 0, s14
	s_mul_f32 s15, s15, 0x4f7ffffe
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_mad_u64_u32 v[4:5], null, s34, v3, v[1:2]
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[5:6], null, s35, v3, v[2:3]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_u32_f32 s6, s15
	s_abs_i32 s15, s2
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s16, s15, s6
	s_xor_b32 s6, s2, s18
	s_mul_i32 s19, s16, s14
	s_ashr_i32 s13, s6, 31
	s_sub_i32 s15, s15, s19
	s_add_i32 s19, s16, 1
	s_sub_i32 s20, s15, s14
	s_cmp_ge_u32 s15, s14
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s16, s19, s16
	s_cselect_b32 s15, s20, s15
	s_add_i32 s19, s16, 1
	s_cmp_ge_u32 s15, s14
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s26, s6
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cselect_b32 s14, s19, s16
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s15, s12, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s14, s14, s13
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s16, s3, 4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s19, s12, 31
.Ltmp13:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s12, s12, s15
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s33, s14, s13
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v6, s16, v3
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s19, 31
.Ltmp15:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s15, s12, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s12, s33, s18
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 27
.Ltmp17:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s12
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s18, s19, s3
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s15, v6
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 16, v6
	.loc	1 120 13 is_stmt 1              ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s17
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	s_mul_i32 s20, s34, s16
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s45, s33, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s46, s18, 5
.Ltmp21:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s44, s2, 6
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s21, s35, s16
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s19, 31
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_add3_u32 v4, s20, s44, v4
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add3_u32 v5, s21, s45, v5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s12, s3, vcc_lo
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s12
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s27, s7
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_and_b32 s25, s25, 0xffff
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_u16 v7, v4, s[4:7], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b64 v[5:6], v5, s[24:27], 0 offen
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_lshlrev_b32_e32 v4, 1, v0
	s_mov_b32 s12, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s19, 63
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_add_nc_u32_e32 v49, 0, v4
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v4, 4, v10
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt vmcnt(1)
	ds_store_b16 v49, v7 offset:4096
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v50, v[5:6]
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_mov_b64 s[30:31], s[6:7]
	s_mov_b32 s12, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr28_sgpr29
.LBB0_3:                                ; %Flow173
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b128 s[20:23], s[0:1], 0x20
	v_or_b32_e32 v48, v4, v11
	v_lshrrev_b32_e32 v45, 1, v12
	v_bfe_u32 v46, v0, 4, 1
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v16, 0 :: v_dual_add_nc_u32 v47, 0, v48
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_mov_b32_e32 v29, 0
	s_and_not1_b32 vcc_lo, exec_lo, s12
	s_add_i32 s0, s46, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_add_i32 s1, s16, 16
	v_sub_nc_u32_e32 v51, s15, v3
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v6, s1, v3
	v_lshl_or_b32 v3, s14, 9, v12
	s_lshl_b32 s14, s14, 8
	v_add3_u32 v4, s44, v4, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v8, s35, v6
	s_mov_b32 s12, 0
	s_lshl_b32 s15, s13, 9
	s_lshl_b32 s13, s13, 8
	v_subrev_nc_u32_e32 v53, s15, v3
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	v_add3_u32 v2, v8, s14, v2
	s_mov_b32 s14, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_mul_lo_u32 v3, s34, v6
	v_subrev_nc_u32_e32 v56, s13, v2
	s_mov_b32 s13, s12
	v_add_nc_u32_e32 v7, 32, v4
	v_mul_lo_u32 v4, s46, v4
	v_add_nc_u32_e32 v5, 0, v11
	v_lshlrev_b32_e32 v52, 1, v46
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_mul_lo_u32 v7, s46, v7
	v_add3_u32 v57, v3, s44, v1
	v_add_nc_u32_e32 v58, v5, v45
	v_dual_mov_b32 v42, 0 :: v_dual_lshlrev_b32 v55, 1, v4
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_lshlrev_b32 v54, 1, v7
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v13, 0
	v_mov_b32_e32 v14, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b64 s[28:29], s[8:9]
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_max_i32 s47, s0, 1
	s_lshl_b32 s48, s35, 1
	s_lshl_b32 s49, s35, 4
	s_lshl_b32 s34, s34, 4
	s_mov_b32 s40, s8
	s_mov_b32 s41, s9
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v61, v55, s[40:43], 0 offen
	buffer_load_u16 v60, v54, s[40:43], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s1, v51
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s47, s47, -1
	s_add_i32 s1, s1, 16
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s47, 0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v60, 16, v60
	v_lshlrev_b32_e32 v61, 16, v61
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e32 v59, 0x80000000, v57, vcc_lo
	buffer_load_u16 v59, v59, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v62, v47 offset:4416
	ds_load_u8 v63, v47 offset:4352
	ds_load_u8 v64, v47 offset:4544
	ds_load_u8 v65, v47 offset:4480
	ds_load_u8 v66, v47 offset:4160
	ds_load_u8 v67, v47 offset:4096
	ds_load_u8 v68, v47 offset:4288
	ds_load_u8 v69, v47 offset:4224
	ds_load_u8 v70, v47 offset:4320
	ds_load_u8 v71, v47 offset:4256
	ds_load_u8 v72, v47 offset:4192
	ds_load_u8 v73, v47 offset:4128
	ds_load_u8 v74, v47 offset:4928
	ds_load_u8 v75, v47 offset:4864
	ds_load_u8 v76, v47 offset:5056
	ds_load_u8 v77, v47 offset:4992
	ds_load_u8 v78, v47 offset:4672
	ds_load_u8 v79, v47 offset:4608
	ds_load_u8 v80, v47 offset:4800
	ds_load_u8 v81, v47 offset:4736
	ds_load_u8 v82, v58 offset:1280
	ds_load_u8 v83, v58 offset:1024
	ds_load_u8 v84, v58 offset:1792
	ds_load_u8 v85, v58 offset:1536
	ds_load_u8 v86, v58 offset:1920
	ds_load_u8 v87, v58 offset:1664
	ds_load_u8 v88, v58 offset:1408
	ds_load_u8 v89, v58 offset:1152
	ds_load_u8 v90, v58 offset:256
	ds_load_u8 v91, v58
	ds_load_u8 v92, v58 offset:768
	ds_load_u8 v93, v58 offset:512
	ds_load_u8 v94, v58 offset:896
	ds_load_u8 v95, v58 offset:640
	ds_load_u8 v96, v47 offset:4576
	ds_load_u8 v97, v47 offset:4512
	ds_load_u8 v98, v47 offset:4448
	ds_load_u8 v99, v47 offset:4384
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v58 offset:384
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v100, v79, v78, 0xc0c0004
	ds_load_u8 v78, v58 offset:3328
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v79, v58 offset:3072
	ds_load_u8 v81, v58 offset:3968
	ds_load_u8 v101, v58 offset:3712
	ds_load_u8 v102, v58 offset:3456
	ds_load_u8 v103, v58 offset:3200
	v_perm_b32 v64, v65, v64, 0xc0c0004
	ds_load_u8 v65, v58 offset:128
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v47 offset:5088
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v47 offset:5024
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v47 offset:4960
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v47 offset:4896
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v47 offset:4832
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v47 offset:4768
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v47 offset:4704
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v104, v79, v78, 0xc0c0004
	ds_load_u8 v78, v58 offset:3840
	ds_load_u8 v79, v58 offset:3584
	ds_load_u8 v77, v47 offset:4640
	v_perm_b32 v88, v89, v88, 0xc0c0004
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v63, v65, v63, 0xc0c0004
	v_perm_b32 v65, v95, v94, 0xc0c0004
	v_perm_b32 v72, v73, v72, 0xc0c0004
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v67, v69, v67, 0xc0c0004
	v_lshl_or_b32 v95, v84, 16, v82
	v_lshl_or_b32 v94, v92, 16, v90
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v71, v85, v83, 0xc0c0004
	v_perm_b32 v87, v103, v102, 0xc0c0004
	v_perm_b32 v89, v101, v81, 0xc0c0004
	v_lshl_or_b32 v81, v76, 16, v74
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v73, v93, v91, 0xc0c0004
	v_lshl_or_b32 v80, v80, 16, v100
	v_lshl_or_b32 v101, v89, 16, v87
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v105, v79, v78, 0xc0c0004
	ds_load_u8 v78, v58 offset:2304
	ds_load_u8 v79, v58 offset:2048
	ds_load_u8 v106, v58 offset:2944
	ds_load_u8 v107, v58 offset:2688
	ds_load_u8 v108, v58 offset:2432
	ds_load_u8 v109, v58 offset:2176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v69, v77, v75, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v110, v79, v78, 0xc0c0004
	ds_load_u8 v78, v58 offset:2816
	ds_load_u8 v79, v58 offset:2560
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v103, v107, v106, 0xc0c0004
	v_perm_b32 v106, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v102, v109, v108, 0xc0c0004
	v_perm_b32 v107, v97, v96, 0xc0c0004
	v_lshl_or_b32 v97, v105, 16, v104
	v_lshl_or_b32 v99, v86, 16, v88
	v_lshl_or_b32 v98, v65, 16, v63
	v_lshl_or_b32 v105, v67, 16, v71
	v_lshl_or_b32 v104, v73, 16, v69
	v_lshl_or_b32 v100, v103, 16, v102
	v_lshl_or_b32 v103, v107, 16, v106
	v_lshl_or_b32 v102, v70, 16, v72
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v79, v78, 0xc0c0004
	v_lshl_or_b32 v79, v64, 16, v62
	v_lshl_or_b32 v78, v68, 16, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v96, v111, 16, v110
	v_wmma_i32_16x16x16_iu4 v[62:69], v[94:95], v[78:79], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[70:77], v[98:99], v[78:79], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[62:69], v[96:97], v[80:81], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[70:77], v[100:101], v[80:81], v[70:77] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v78, v62
	v_cvt_f32_i32_e32 v79, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v80, v64
	v_cvt_f32_i32_e32 v81, v65
	v_cvt_f32_i32_e32 v82, v66
	v_cvt_f32_i32_e32 v83, v67
	v_cvt_f32_i32_e32 v84, v68
	v_cvt_f32_i32_e32 v85, v69
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[62:69], v[94:95], v[102:103], v[1:8] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v86, v70
	v_cvt_f32_i32_e32 v87, v71
	v_cvt_f32_i32_e32 v88, v72
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[62:69], v[96:97], v[104:105], v[62:69] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v89, v73
	v_cvt_f32_i32_e32 v90, v74
	v_cvt_f32_i32_e32 v91, v75
	v_cvt_f32_i32_e32 v92, v76
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v93, v77
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[70:77], v[98:99], v[102:103], v[1:8] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v63, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v62, v60, v62
	v_dual_mul_f32 v79, v61, v79 :: v_dual_add_nc_u32 v94, v52, v53
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x4
	buffer_load_u16 v95, v94, s[36:39], 0 offen
	buffer_load_u16 v96, v94, s[36:39], 0 offen offset:4
	buffer_load_u16 v97, v94, s[36:39], 0 offen offset:8
	buffer_load_u16 v98, v94, s[36:39], 0 offen offset:12
	buffer_load_u16 v99, v94, s[36:39], 0 offen offset:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[70:77], v[100:101], v[104:105], v[70:77] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v78, v61, v78
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v53, s48, v53
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v95, 16, v95
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v29, v78, v95
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v77, v60, v77 :: v_dual_lshlrev_b32 v78, 16, v96
	v_dual_mul_f32 v80, v61, v80 :: v_dual_mul_f32 v63, v60, v63
	v_dual_mul_f32 v81, v61, v81 :: v_dual_mul_f32 v64, v60, v64
	v_dual_mul_f32 v82, v61, v82 :: v_dual_mul_f32 v65, v60, v65
	v_dual_mul_f32 v83, v61, v83 :: v_dual_mul_f32 v66, v60, v66
	v_dual_mul_f32 v84, v61, v84 :: v_dual_mul_f32 v67, v60, v67
	v_dual_mul_f32 v85, v61, v85 :: v_dual_mul_f32 v68, v60, v68
	v_dual_mul_f32 v86, v61, v86 :: v_dual_mul_f32 v69, v60, v69
	v_dual_mul_f32 v87, v61, v87 :: v_dual_mul_f32 v70, v60, v70
	v_dual_mul_f32 v88, v61, v88 :: v_dual_mul_f32 v71, v60, v71
	v_dual_mul_f32 v89, v61, v89 :: v_dual_mul_f32 v72, v60, v72
	v_dual_mul_f32 v90, v61, v90 :: v_dual_mul_f32 v73, v60, v73
	v_dual_mul_f32 v91, v61, v91 :: v_dual_mul_f32 v74, v60, v74
	v_dual_mul_f32 v92, v61, v92 :: v_dual_mul_f32 v75, v60, v75
	v_dual_mul_f32 v93, v61, v93 :: v_dual_mul_f32 v76, v60, v76
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x2
	buffer_load_u16 v60, v94, s[36:39], 0 offen offset:24
	buffer_load_u16 v100, v94, s[36:39], 0 offen offset:28
	buffer_load_u16 v61, v94, s[36:39], 0 offen offset:20
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v44, v79, v78
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v79, v94, s[36:39], 0 offen offset:256
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v96, 16, v97
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v28, v62, v95 :: v_dual_lshlrev_b32 v97, 16, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v27, v63, v78 :: v_dual_fmac_f32 v42, v81, v97
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v81, v94, s[36:39], 0 offen offset:264
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v101, 16, v60
	v_lshlrev_b32_e32 v98, 16, v99
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_dual_cndmask_b32 v60, 0x80000000, v56 :: v_dual_fmac_f32 v39, v84, v101
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v41, v82, v98
	v_fmac_f32_e32 v43, v80, v96
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x2
	buffer_load_u16 v80, v94, s[36:39], 0 offen offset:260
	buffer_load_u16 v82, v94, s[36:39], 0 offen offset:268
	buffer_load_u16 v84, v94, s[36:39], 0 offen offset:276
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v79, 16, v79
	v_lshlrev_b32_e32 v100, 16, v100
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v24, v66, v98 :: v_dual_lshlrev_b32 v81, 16, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v26, v64, v96 :: v_dual_fmac_f32 v37, v86, v79
	v_dual_fmac_f32 v38, v85, v100 :: v_dual_lshlrev_b32 v99, 16, v61
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b64 v[60:61], v60, s[24:27], 0 offen
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v35, v88, v81
	v_dual_fmac_f32 v21, v69, v100 :: v_dual_fmac_f32 v40, v83, v99
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x2
	buffer_load_u16 v83, v94, s[36:39], 0 offen offset:272
	buffer_load_u16 v85, v94, s[36:39], 0 offen offset:280
	buffer_load_u16 v94, v94, s[36:39], 0 offen offset:284
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v25, v65, v97
	v_fmac_f32_e32 v23, v67, v99
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v49, v59 offset:4096
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(3)
	ds_store_b64 v50, v[60:61]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v80, 16, v80
	v_lshlrev_b32_e32 v82, 16, v82
	v_lshlrev_b32_e32 v84, 16, v84
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v55, 2, v55
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v83, 16, v83
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v85, 16, v85
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v86, 16, v94
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v36, v87, v80
	v_dual_fmac_f32 v33, v90, v83 :: v_dual_add_nc_u32 v54, 2, v54
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v30, v93, v86 :: v_dual_add_nc_u32 v57, s34, v57
	v_dual_fmac_f32 v31, v92, v85 :: v_dual_add_nc_u32 v56, s49, v56
	v_fmac_f32_e32 v34, v89, v82
	v_fmac_f32_e32 v32, v91, v84
	v_fmac_f32_e32 v22, v68, v101
	v_dual_fmac_f32 v20, v70, v79 :: v_dual_fmac_f32 v19, v71, v80
	v_dual_fmac_f32 v18, v72, v81 :: v_dual_fmac_f32 v17, v73, v82
	v_dual_fmac_f32 v16, v74, v83 :: v_dual_fmac_f32 v15, v75, v84
	v_dual_fmac_f32 v14, v76, v85 :: v_dual_fmac_f32 v13, v77, v86
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow174
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v2, 32, v48
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v4, s46, v48
	s_mul_i32 s1, s44, s46
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s0, s0, 0
	v_dual_mov_b32 v62, 0 :: v_dual_and_b32 v1, 16, v0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v2, s46, v2
	s_add_i32 s1, s1, s0
	v_dual_mov_b32 v64, 0 :: v_dual_and_b32 v3, 0x1e0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v4, s1, v4, 1
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v68, 0
	v_add_lshl_u32 v2, s1, v2, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v5, 0x80000000, v2, s2
	s_clause 0x1
	buffer_load_u16 v2, v4, s[28:31], 0 offen
	buffer_load_u16 v5, v5, s[28:31], 0 offen
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	s_mov_b32 s12, 0
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	ds_load_u8 v4, v47 offset:4416
	ds_load_u8 v6, v47 offset:4352
	ds_load_u8 v7, v47 offset:4544
	ds_load_u8 v8, v47 offset:4480
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add3_u32 v50, 0, v11, v45
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v48, v47 offset:4160
	ds_load_u8 v49, v47 offset:4096
	ds_load_u8 v51, v47 offset:4288
	ds_load_u8 v52, v47 offset:4224
	ds_load_u8 v53, v50 offset:1280
	ds_load_u8 v54, v50 offset:1024
	ds_load_u8 v55, v50 offset:1792
	ds_load_u8 v56, v50 offset:1536
	ds_load_u8 v77, v47 offset:4576
	ds_load_u8 v78, v47 offset:4512
	ds_load_u8 v79, v47 offset:4448
	ds_load_u8 v80, v47 offset:4384
	ds_load_u8 v61, v47 offset:4928
	ds_load_u8 v62, v47 offset:4864
	ds_load_u8 v63, v47 offset:5056
	ds_load_u8 v64, v47 offset:4992
	s_mov_b32 s19, s12
	ds_load_u8 v87, v50 offset:3328
	ds_load_u8 v88, v50 offset:3072
	ds_load_u8 v104, v50 offset:2944
	ds_load_u8 v105, v50 offset:2688
	ds_load_u8 v106, v50 offset:2432
	ds_load_u8 v107, v50 offset:2176
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_mov_b32 s17, s12
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v49, v52, v51, 0xc0c0004
	ds_load_u8 v51, v50 offset:768
	ds_load_u8 v52, v50 offset:512
	ds_load_u8 v69, v50 offset:1920
	ds_load_u8 v70, v50 offset:1664
	ds_load_u8 v71, v50 offset:1408
	ds_load_u8 v72, v50 offset:1152
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_mov_b32 s18, s12
	v_perm_b32 v4, v6, v4, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v54, v56, v55, 0xc0c0004
	v_perm_b32 v6, v8, v7, 0xc0c0004
	ds_load_u8 v8, v47 offset:4320
	ds_load_u8 v81, v47 offset:4256
	ds_load_u8 v82, v47 offset:4192
	ds_load_u8 v83, v47 offset:4128
	ds_load_u8 v57, v50 offset:256
	ds_load_u8 v58, v50
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v86, v64, v63, 0xc0c0004
	v_lshl_or_b32 v7, v6, 16, v4
	v_lshl_or_b32 v6, v49, 16, v48
	ds_load_u8 v4, v50 offset:896
	ds_load_u8 v73, v50 offset:640
	ds_load_u8 v74, v50 offset:384
	ds_load_u8 v75, v50 offset:128
	v_lshl_or_b32 v49, v54, 16, v53
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	ds_load_u8 v52, v47 offset:4672
	ds_load_u8 v76, v47 offset:4608
	ds_load_u8 v84, v47 offset:4800
	ds_load_u8 v85, v47 offset:4736
	ds_load_u8 v91, v47 offset:5088
	ds_load_u8 v92, v47 offset:5024
	ds_load_u8 v93, v47 offset:4960
	ds_load_u8 v94, v47 offset:4896
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v8, v81, v8, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v78, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v48, v58, v57, 0xc0c0004
	v_dual_mov_b32 v60, s19 :: v_dual_mov_b32 v59, s18
	v_dual_mov_b32 v58, s17 :: v_dual_mov_b32 v57, s16
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v48, v51, 16, v48
	v_perm_b32 v51, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v52, v76, v52, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v76, v85, v84, 0xc0c0004
	ds_load_u8 v84, v50 offset:3968
	ds_load_u8 v101, v50 offset:3712
	ds_load_u8 v102, v50 offset:3456
	ds_load_u8 v103, v50 offset:3200
	v_perm_b32 v4, v73, v4, 0xc0c0004
	v_lshl_or_b32 v51, v86, 16, v51
	ds_load_u8 v86, v50 offset:3840
	ds_load_u8 v89, v50 offset:3584
	ds_load_u8 v90, v50 offset:2304
	ds_load_u8 v95, v50 offset:2048
	ds_load_u8 v96, v50 offset:2816
	ds_load_u8 v97, v50 offset:2560
	ds_load_u8 v98, v47 offset:4832
	ds_load_u8 v99, v47 offset:4768
	ds_load_u8 v100, v47 offset:4704
	ds_load_u8 v47, v47 offset:4640
	v_perm_b32 v50, v75, v74, 0xc0c0004
	v_dual_mov_b32 v56, s15 :: v_dual_mov_b32 v55, s14
	v_dual_mov_b32 v54, s13 :: v_dual_mov_b32 v53, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v85, v4, 16, v50
	v_lshl_or_b32 v50, v76, 16, v52
	v_perm_b32 v52, v80, v79, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[61:68], v[48:49], v[6:7], v[53:60] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v70, v89, v86, 0xc0c0004
	v_lshl_or_b32 v86, v69, 16, v71
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v72, v95, v90, 0xc0c0004
	v_lshl_or_b32 v90, v77, 16, v52
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v73, v97, v96, 0xc0c0004
	v_lshl_or_b32 v88, v70, 16, v87
	v_perm_b32 v4, v103, v102, 0xc0c0004
	v_lshl_or_b32 v89, v8, 16, v78
	v_perm_b32 v8, v94, v93, 0xc0c0004
	v_lshl_or_b32 v87, v73, 16, v72
	v_wmma_i32_16x16x16_iu4 v[69:76], v[85:86], v[6:7], v[53:60] neg_lo:[1,1,0]
	v_perm_b32 v6, v101, v84, 0xc0c0004
	v_perm_b32 v52, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v47, v100, 0xc0c0004
	v_perm_b32 v91, v99, v98, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[77:84], v[48:49], v[89:90], v[53:60] neg_lo:[1,1,0]
	v_lshl_or_b32 v7, v6, 16, v4
	v_perm_b32 v4, v107, v106, 0xc0c0004
	v_perm_b32 v6, v105, v104, 0xc0c0004
	v_lshl_or_b32 v48, v52, 16, v8
	v_lshl_or_b32 v47, v91, 16, v47
	v_wmma_i32_16x16x16_iu4 v[53:60], v[85:86], v[89:90], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[87:88], v[50:51], v[61:68] neg_lo:[1,1,0]
	v_lshl_or_b32 v6, v6, 16, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[87:88], v[47:48], v[77:84] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v61, v61
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[69:76], v[6:7], v[50:51], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[53:60], v[6:7], v[47:48], v[53:60] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v6, v77
	v_cvt_f32_i32_e32 v7, v78
	v_cvt_f32_i32_e32 v8, v79
	v_cvt_f32_i32_e32 v48, v80
	v_cvt_f32_i32_e32 v49, v81
	v_cvt_f32_i32_e32 v50, v82
	v_cvt_f32_i32_e32 v51, v83
	v_cvt_f32_i32_e32 v52, v84
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
.LBB0_8:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v45, v46, v45
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s0, s0, s35
.Ltmp22:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v4.l, 0
.Ltmp23:
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s45, s45, s0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v4.h, v5.l
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	v_add_lshl_u32 v45, s45, v45, 1
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s10
	v_cndmask_b32_e64 v46, 0x80000000, v45, s2
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v6, v6, v4 :: v_dual_add_nc_u32 v47, 4, v45
	v_dual_mul_f32 v8, v8, v4 :: v_dual_add_nc_u32 v77, 8, v45
	v_dual_mul_f32 v7, v7, v4 :: v_dual_add_nc_u32 v78, 12, v45
	v_dual_mul_f32 v48, v48, v4 :: v_dual_add_nc_u32 v79, 16, v45
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v46, v46, s[4:7], 0 offen
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v49, v49, v4 :: v_dual_add_nc_u32 v80, 20, v45
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x3
	buffer_load_u16 v47, v47, s[4:7], 0 offen
	buffer_load_u16 v77, v77, s[4:7], 0 offen
	buffer_load_u16 v78, v78, s[4:7], 0 offen
	buffer_load_u16 v79, v79, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v51, v51, v4 :: v_dual_add_nc_u32 v82, 28, v45
	v_dual_mul_f32 v52, v52, v4 :: v_dual_add_nc_u32 v83, 0x100, v45
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v80, 0x80000000, v80, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v82, 0x80000000, v82, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v50, v50, v4 :: v_dual_add_nc_u32 v81, 24, v45
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v83, 0x80000000, v83, s2
	s_clause 0x1
	buffer_load_u16 v80, v80, s[4:7], 0 offen
	buffer_load_u16 v82, v82, s[4:7], 0 offen
	v_cndmask_b32_e64 v81, 0x80000000, v81, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v53, v53, v4 :: v_dual_add_nc_u32 v84, 0x104, v45
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v83, v83, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v54, v54, v4 :: v_dual_add_nc_u32 v85, 0x108, v45
	v_dual_mul_f32 v55, v55, v4 :: v_dual_add_nc_u32 v86, 0x10c, v45
	v_dual_mul_f32 v56, v56, v4 :: v_dual_add_nc_u32 v87, 0x110, v45
	v_dual_mul_f32 v57, v57, v4 :: v_dual_add_nc_u32 v88, 0x114, v45
	v_dual_mul_f32 v58, v58, v4 :: v_dual_add_nc_u32 v89, 0x118, v45
	v_dual_mul_f32 v60, v60, v4 :: v_dual_add_nc_u32 v45, 0x11c, v45
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v81, v81, s[4:7], 0 offen
	v_cndmask_b32_e64 v84, 0x80000000, v84, s2
	v_cndmask_b32_e64 v85, 0x80000000, v85, s2
	v_cndmask_b32_e64 v86, 0x80000000, v86, s2
	v_cndmask_b32_e64 v87, 0x80000000, v87, s2
	v_cndmask_b32_e64 v88, 0x80000000, v88, s2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	s_clause 0x5
	buffer_load_u16 v84, v84, s[4:7], 0 offen
	buffer_load_u16 v85, v85, s[4:7], 0 offen
	buffer_load_u16 v86, v86, s[4:7], 0 offen
	buffer_load_u16 v87, v87, s[4:7], 0 offen
	buffer_load_u16 v88, v88, s[4:7], 0 offen
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	v_cndmask_b32_e64 v89, 0x80000000, v89, s2
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v5.l, v4.l
	v_mov_b16_e32 v5.h, v2.l
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v2, 0x1f0, v0
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v59, v59, v4
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v89, v89, s[4:7], 0 offen
	s_mov_b32 s0, 0x76543210
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v61, v61, v5
	v_mul_f32_e32 v70, v70, v5
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v3, 1, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp25:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v1, 7, v1
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s1, s35, 31
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s5, s21, 0xffff
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s1, s35, s1
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_mov_b32 s4, s20
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s1, s1, 1
.Ltmp26:
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v63, v63, v5
	v_mul_f32_e32 v64, v64, v5
	v_mul_f32_e32 v65, v65, v5
	v_mul_f32_e32 v62, v62, v5
	v_mul_f32_e32 v66, v66, v5
	v_mul_f32_e32 v67, v67, v5
	v_mul_f32_e32 v68, v68, v5
	v_mul_f32_e32 v69, v69, v5
	v_mul_f32_e32 v71, v71, v5
	v_mul_f32_e32 v73, v73, v5
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v75, v75, v5 :: v_dual_lshlrev_b32 v46, 16, v46
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v61, v61, v46, v29
	v_fma_f32 v6, v6, v46, v28
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v47, 16, v47
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v77, 16, v77
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v78, 16, v78
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v79, 16, v79
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v29, v29, v61, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v62, v62, v47, v44
	v_fma_f32 v8, v8, v77, v26
	v_fma_f32 v64, v64, v78, v42
	v_fma_f32 v7, v7, v47, v27
	v_fma_f32 v65, v65, v79, v41
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v44, v44, v62, s2
	v_cndmask_b32_e64 v8, v26, v8, s2
	v_cndmask_b32_e64 v42, v42, v64, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v80, 16, v80
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v26, v29, v29
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v82, 16, v82
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v74, v74, v5
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v29, v42, v42
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v83, 16, v83
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v66, v66, v80, v40
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v26, 0, v26
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v63, v63, v77, v43
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v6, v28, v6, s2
	v_cndmask_b32_e64 v7, v27, v7, s2
	v_cndmask_b32_e64 v40, v40, v66, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v27, v44, v44
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v43, v43, v63, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v72, v72, v5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v41, v41, v65, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v40, v40, v40
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v5, v76, v5
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	s_waitcnt vmcnt(7)
	v_dual_max_f32 v28, v43, v43 :: v_dual_lshlrev_b32 v81, 16, v81
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v69, v69, v83, v37
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v40, 0, v40 :: v_dual_max_f32 v27, 0, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v67, v67, v81, v39
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v28, 0, v28
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v84, 16, v84
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v85, 16, v85
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v86, 16, v86
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v87, 16, v87
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v88, 16, v88
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v39, v39, v67, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v70, v70, v84, v36
	v_fma_f32 v73, v73, v87, v33
	v_fma_f32 v74, v74, v88, v32
	v_fma_f32 v5, v5, v45, v30
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v39, v39, v39
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v71, v71, v85, v35
	v_fma_f32 v72, v72, v86, v34
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v33, v33, v73, s2
	v_cndmask_b32_e64 v5, v30, v5, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v30, v41, v41
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v89, 16, v89
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v32, v32, v74, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v68, v68, v82, v38
	v_fma_f32 v46, v48, v78, v25
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v30, 0, v30
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v75, v75, v89, v31
	v_fma_f32 v47, v49, v79, v24
	v_fma_f32 v48, v50, v80, v23
	v_fma_f32 v49, v51, v81, v22
	v_fma_f32 v50, v52, v82, v21
	v_fma_f32 v51, v53, v83, v20
	v_fma_f32 v52, v54, v84, v19
	v_fma_f32 v53, v55, v85, v18
	v_fma_f32 v54, v56, v86, v17
	v_fma_f32 v55, v57, v87, v16
	v_fma_f32 v57, v59, v89, v14
	v_fma_f32 v45, v60, v45, v13
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v37, v37, v69, s2
	v_cndmask_b32_e64 v36, v36, v70, s2
	v_cndmask_b32_e64 v35, v35, v71, s2
	v_cndmask_b32_e64 v34, v34, v72, s2
	v_cndmask_b32_e64 v31, v31, v75, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v32, v32, v32
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v56, v58, v88, v15
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v38, v38, v68, s2
	v_cndmask_b32_e64 v25, v25, v46, s2
	v_cndmask_b32_e64 v24, v24, v47, s2
	v_cndmask_b32_e64 v23, v23, v48, s2
	v_cndmask_b32_e64 v21, v21, v50, s2
	v_cndmask_b32_e64 v20, v20, v51, s2
	v_cndmask_b32_e64 v19, v19, v52, s2
	v_cndmask_b32_e64 v18, v18, v53, s2
	v_cndmask_b32_e64 v17, v17, v54, s2
	v_cndmask_b32_e64 v16, v16, v55, s2
	v_cndmask_b32_e64 v14, v14, v57, s2
	v_cndmask_b32_e64 v13, v13, v45, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v37, v37, v37 :: v_dual_max_f32 v36, v36, v36
	v_dual_max_f32 v35, v35, v35 :: v_dual_max_f32 v34, v34, v34
	v_dual_max_f32 v41, 0, v32 :: v_dual_max_f32 v6, v6, v6
	v_max_f32_e32 v31, v31, v31
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v22, v22, v49, s2
	v_cndmask_b32_e64 v15, v15, v56, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v29, 0, v29 :: v_dual_max_f32 v38, v38, v38
	v_dual_max_f32 v37, 0, v37 :: v_dual_max_f32 v36, 0, v36
	v_dual_max_f32 v35, 0, v35 :: v_dual_max_f32 v34, 0, v34
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v8, v8, v8
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v33, 0, v33
	v_max_f32_e32 v42, 0, v31
	v_dual_max_f32 v7, v7, v7 :: v_dual_max_f32 v24, v24, v24
	v_max_f32_e32 v23, v23, v23
	v_max_f32_e32 v25, v25, v25
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v20, v20, v20
	v_dual_max_f32 v19, v19, v19 :: v_dual_max_f32 v18, v18, v18
	v_dual_max_f32 v17, v17, v17 :: v_dual_max_f32 v16, v16, v16
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v13, v13, v13
	v_dual_max_f32 v39, 0, v39 :: v_dual_max_f32 v38, 0, v38
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v8, 0, v8
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v44, 0, v23 :: v_dual_max_f32 v43, 0, v25
	v_dual_max_f32 v22, v22, v22 :: v_dual_max_f32 v45, 0, v21
	v_dual_max_f32 v46, 0, v20 :: v_dual_max_f32 v47, 0, v19
	v_max_f32_e32 v18, 0, v18
	v_dual_max_f32 v48, 0, v17 :: v_dual_max_f32 v15, v15, v15
	v_max_f32_e32 v16, 0, v16
	v_dual_max_f32 v50, 0, v14 :: v_dual_max_f32 v51, 0, v13
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v52, v26, v26 :: v_dual_mul_f32 v53, v27, v27
	v_mul_f32_e32 v21, v29, v29
	v_mul_f32_e32 v23, v30, v30
	v_dual_mul_f32 v25, v40, v40 :: v_dual_mul_f32 v32, v33, v33
	v_dual_mul_f32 v29, v36, v36 :: v_dual_mul_f32 v30, v35, v35
	v_mul_f32_e32 v31, v34, v34
	v_dual_mul_f32 v33, v41, v41 :: v_dual_mul_f32 v40, v43, v43
	v_mul_f32_e32 v34, v42, v42
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v22, 0, v22 :: v_dual_max_f32 v49, 0, v15
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v19, v28, v28 :: v_dual_mul_f32 v26, v39, v39
	v_dual_mul_f32 v27, v38, v38 :: v_dual_mul_f32 v36, v5, v5
	v_mul_f32_e32 v28, v37, v37
	v_dual_mul_f32 v38, v7, v7 :: v_dual_mul_f32 v39, v8, v8
	v_mul_f32_e32 v22, v22, v22
	v_dual_mul_f32 v17, v46, v46 :: v_dual_mul_f32 v8, v16, v16
	v_dual_mul_f32 v15, v47, v47 :: v_dual_mul_f32 v14, v18, v18
	v_dual_mul_f32 v5, v51, v51 :: v_dual_max_f32 v16, v52, v53
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v18, v21, v23, v25
	v_max3_f32 v42, v29, v30, v31
	v_max3_f32 v43, v32, v33, v34
.Ltmp28:
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v37, v6, v6
	v_dual_mul_f32 v35, v24, v24 :: v_dual_mul_f32 v20, v45, v45
	v_mul_f32_e32 v24, v44, v44
	v_dual_mul_f32 v13, v48, v48 :: v_dual_mul_f32 v6, v50, v50
	v_mul_f32_e32 v7, v49, v49
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v41, v26, v27, v28
	v_max3_f32 v16, v16, v19, v18
	v_max3_f32 v18, v42, v43, v36
	v_max3_f32 v43, v15, v14, v13
	v_max3_f32 v44, v8, v7, v6
	v_max3_f32 v42, v22, v20, v17
.Ltmp30:
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	s_mul_i32 s2, s44, s1
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v16, v16, v41, v18
	v_max_f32_e32 v18, v37, v38
	v_max3_f32 v41, v40, v35, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max3_f32 v18, v18, v39, v41
	v_max3_f32 v41, v43, v44, v5
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_and_b32_e32 v43, 8, v0
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v18, v18, v42, v41
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v41, v16, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v41, v41, v41
	v_max_f32_e32 v41, v16, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v16, v18, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s0, 0xc1000000
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v42, v18, v16
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_and_b32_e32 v16, 7, v0
	v_lshlrev_b32_e32 v18, 4, v16
	v_lshl_add_u32 v16, v16, 8, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v44, v18, v3
	v_add3_u32 v16, v16, v44, v43
	ds_store_b64 v16, v[41:42]
	v_lshl_or_b32 v16, v12, 3, v18
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v3, v16, v3
	v_add3_u32 v3, 0, v43, v3
	ds_load_b64 v[41:42], v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v3, v41
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v3, v16, v3
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v3, v3, v16
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v41, v3, v16
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v3, v42
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v42, v42
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v3, v16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v16, v3
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	v_max_f32_e32 v3, v3, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v16, v3
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	v_max_f32_e32 v42, v3, v16
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v3, 2, v12
	v_lshrrev_b32_e32 v12, 1, v10
	v_lshl_add_u32 v16, v43, 3, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v3, v16, v3, v12
	ds_store_b64 v3, v[41:42]
	v_lshlrev_b32_e32 v3, 3, v11
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v12, 0, v3, v12
	ds_load_b64 v[41:42], v12
.Ltmp55:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_max_f32_e32 v12, v41, v41
	v_max_f32_e32 v16, v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v12, 0x2b8cbccc, v12
	v_max_f32_e32 v16, 0x2b8cbccc, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v18, null, 0x40e00000, 0x40e00000, v12
	v_rcp_f32_e32 v41, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v18, v41, 1.0
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v12, 0x40e00000, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v43, v42, v41
	v_fma_f32 v44, -v18, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v41
	v_fma_f32 v18, -v18, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v18, v18, v41, v43
	v_div_fixup_f32 v12, v18, 0x40e00000, v12
	v_div_scale_f32 v18, null, 0x40e00000, 0x40e00000, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v41, v18
	v_fma_f32 v42, -v18, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v16, 0x40e00000, v16
	v_mul_f32_e32 v43, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v18, v43, v42
	v_fmac_f32_e32 v43, v44, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v18, v43, v42
	v_div_fmas_f32 v18, v18, v41, v43
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v41.l, v12.h
	v_mov_b16_e32 v41.h, v4.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v16, v18, 0x40e00000, v16
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v18.h, v4.l
	v_mov_b16_e32 v18.l, v16.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v4, 1, v18
	v_and_b32_e32 v18, 1, v41
	v_add3_u32 v16, v16, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v12, v18, 0x7fff
	v_mov_b16_e32 v4.h, v16.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v41, 0xffff0000, v12
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v4.l, v12.h
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v12, 0xffff0000, v16
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v16, null, v41, v41, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v18, v16
	v_fma_f32 v42, -v16, v18, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v42, v18
	v_div_scale_f32 v42, vcc_lo, v52, v41, v52
	v_mul_f32_e32 v43, v42, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v16, v43, v42
	v_fmac_f32_e32 v43, v44, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v16, v43, v42
	v_div_fmas_f32 v16, v16, v18, v43
	v_div_scale_f32 v18, null, v41, v41, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v16, v16, v41, v52
	v_rcp_f32_e32 v42, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v18, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v53, v41, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v18, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v18, -v18, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v18, v18, v42, v44
	v_div_scale_f32 v42, null, v41, v41, v19
	v_div_fixup_f32 v18, v18, v41, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v19, v41, v19
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v19, v42, v41, v19
	v_div_scale_f32 v42, null, v41, v41, v21
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v21, v41, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	v_div_fixup_f32 v21, v42, v41, v21
	v_div_scale_f32 v42, null, v41, v41, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v23, v41, v23
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v23, v42, v41, v23
	v_div_scale_f32 v42, null, v41, v41, v25
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v25, v41, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	v_div_fixup_f32 v25, v42, v41, v25
	v_div_scale_f32 v42, null, v41, v41, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v26, v41, v26
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v26, v42, v41, v26
	v_div_scale_f32 v42, null, v41, v41, v27
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v27, v41, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	v_div_fixup_f32 v27, v42, v41, v27
	v_div_scale_f32 v42, null, v41, v41, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v28, v41, v28
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v28, v42, v41, v28
	v_div_scale_f32 v42, null, v41, v41, v29
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v29, v41, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	v_div_fixup_f32 v29, v42, v41, v29
	v_div_scale_f32 v42, null, v41, v41, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v30, v41, v30
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v30, v42, v41, v30
	v_div_scale_f32 v42, null, v41, v41, v31
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v31, v41, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	v_div_fixup_f32 v31, v42, v41, v31
	v_div_scale_f32 v42, null, v41, v41, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v32, v41, v32
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v32, v42, v41, v32
	v_div_scale_f32 v42, null, v41, v41, v33
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v33, v41, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	v_div_fixup_f32 v33, v42, v41, v33
	v_div_scale_f32 v42, null, v41, v41, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v34, v41, v34
	v_mul_f32_e32 v45, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v45, v44
	v_fmac_f32_e32 v45, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v45, v44
	v_div_fmas_f32 v42, v42, v43, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v34, v42, v41, v34
	v_div_scale_f32 v42, null, v41, v41, v36
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v36, v41, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v46, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v43
	v_fma_f32 v42, -v42, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v43, v45
	v_div_fixup_f32 v36, v42, v41, v36
	v_div_scale_f32 v41, null, v12, v12, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v37, v12, v37
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v37, v41, v12, v37
	v_div_scale_f32 v41, null, v12, v12, v38
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v38, v12, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v41, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v42, v44
	v_div_fixup_f32 v38, v41, v12, v38
	v_div_scale_f32 v41, null, v12, v12, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v39, v12, v39
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v39, v41, v12, v39
	v_div_scale_f32 v41, null, v12, v12, v40
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v40, v12, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v41, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v42, v44
	v_div_fixup_f32 v40, v41, v12, v40
	v_div_scale_f32 v41, null, v12, v12, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v35, v12, v35
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v35, v41, v12, v35
	v_div_scale_f32 v41, null, v12, v12, v24
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v35, v35, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v35, v35
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v24, v12, v24
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v24, v41, v12, v24
	v_div_scale_f32 v41, null, v12, v12, v22
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v24, v24, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v22, v12, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v41, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v42, v44
	v_div_fixup_f32 v22, v41, v12, v22
	v_div_scale_f32 v41, null, v12, v12, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v22, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v22, v22, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v20, v12, v20
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v20, v41, v12, v20
	v_div_scale_f32 v41, null, v12, v12, v17
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v20, v20, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v17, v12, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v41, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v42, v44
	v_div_fixup_f32 v17, v41, v12, v17
	v_div_scale_f32 v41, null, v12, v12, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v17, v17, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v15, v12, v15
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v15, v41, v12, v15
	v_div_scale_f32 v41, null, v12, v12, v14
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v14, v12, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v41, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v42, v44
	v_div_fixup_f32 v14, v41, v12, v14
	v_div_scale_f32 v41, null, v12, v12, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v14, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v13, v12, v13
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v13, v41, v12, v13
	v_div_scale_f32 v41, null, v12, v12, v8
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v13, v13, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v46, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v8, v12, v8
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v8, v41, v12, v8
	v_div_scale_f32 v41, null, v12, v12, v7
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v8, v8, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v47, v8
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v7, v12, v7
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v7, v41, v12, v7
	v_div_scale_f32 v41, null, v12, v12, v6
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v7, v7, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v48, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v6, v12, v6
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v6, v41, v12, v6
	v_div_scale_f32 v41, null, v12, v12, v5
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v6, v6, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v49, v6
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v5, v12, v5
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v45, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v41, -v41, v44, v43
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v43, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v41, v41, v42, v44
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v42, v20
	v_cvt_i32_f32_e32 v44, v15
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v5, v41, v12, v5
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v12, v16
	v_rndne_f32_e32 v16, v18
	v_rndne_f32_e32 v18, v19
	v_rndne_f32_e32 v19, v21
	v_rndne_f32_e32 v21, v23
	v_rndne_f32_e32 v23, v25
	v_rndne_f32_e32 v25, v26
	v_rndne_f32_e32 v26, v27
	v_rndne_f32_e32 v27, v28
	v_rndne_f32_e32 v28, v29
	v_rndne_f32_e32 v29, v30
	v_rndne_f32_e32 v30, v31
	v_rndne_f32_e32 v31, v32
	v_rndne_f32_e32 v32, v33
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v33, v34
	v_rndne_f32_e32 v34, v36
	v_rndne_f32_e32 v36, v37
	v_rndne_f32_e32 v37, v38
	v_rndne_f32_e32 v38, v39
	v_rndne_f32_e32 v39, v40
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v40, v24
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v41, v22
	v_and_b32_e32 v7, 15, v18
	v_and_b32_e32 v18, 15, v29
	v_and_b32_e32 v29, 15, v40
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v40, 11, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_cvt_i32_f32_e32 v50, v5
	v_and_b32_e32 v5, 15, v12
	v_and_b32_e32 v8, 15, v19
	v_and_b32_e32 v12, 15, v21
	v_and_b32_e32 v19, 15, v30
	v_and_b32_e32 v20, 15, v31
	v_and_b32_e32 v21, 15, v32
	v_and_b32_e32 v30, 15, v41
	v_and_b32_e32 v31, 15, v42
	v_and_b32_e32 v32, 15, v43
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v40, 0x3000, v40
	v_lshlrev_b32_e32 v41, 4, v11
	v_and_b32_e32 v42, 0x160, v0
	v_lshlrev_b32_e32 v43, 2, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_cvt_i32_f32_e32 v16, v16
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xor_b32_e32 v41, v41, v42
	v_and_b32_e32 v43, 0x200, v43
	v_add3_u32 v1, 0, v40, v1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v28, v28
	v_and_b32_e32 v6, 15, v16
	v_med3_f32 v23, v23, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v1, v1, v43, v41
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v16, 15, v27
	v_and_b32_e32 v17, 15, v28
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v1, v[5:8]
	ds_store_b128 v1, v[16:19] offset:1024
	v_lshlrev_b32_e32 v6, 5, v0
	v_lshlrev_b32_e32 v5, 7, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v6, 0x60, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v5, 0x3600, v5, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v26, v26
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xad_u32 v2, v5, v2, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v34, v34
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v2
	ds_load_b128 v[16:19], v2 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v13, 15, v23
	v_and_b32_e32 v14, 15, v25
	v_and_b32_e32 v15, 15, v26
	v_and_b32_e32 v24, 15, v36
	v_and_b32_e32 v25, 15, v37
	v_and_b32_e32 v26, 15, v38
	v_and_b32_e32 v27, 15, v39
	v_and_b32_e32 v22, 15, v33
	v_and_b32_e32 v23, 15, v34
	v_and_b32_e32 v28, 15, v35
	v_and_b32_e32 v33, 15, v44
	v_and_b32_e32 v34, 15, v45
	v_and_b32_e32 v35, 15, v46
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v1, v[24:27]
	ds_store_b128 v1, v[32:35] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[24:27], v2
	ds_load_b128 v[32:35], v2 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v1, v[12:15]
	ds_store_b128 v1, v[20:23] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[12:15], v2
	ds_load_b128 v[20:23], v2 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v36, 15, v47
	v_and_b32_e32 v37, 15, v48
	v_and_b32_e32 v38, 15, v49
	v_and_b32_e32 v39, 15, v50
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v1, v[28:31]
	ds_store_b128 v1, v[36:39] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[28:31], v2
	ds_load_b128 v[36:39], v2 offset:2048
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v2, v16, 4, v5
	v_lshl_or_b32 v5, v17, 4, v6
	v_lshl_or_b32 v6, v18, 4, v7
	v_lshl_or_b32 v1, v19, 4, v8
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s0, s33, 7
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v16, v34, 4, v26
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v3, s2, s0, v3
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v6.l
	v_lshlrev_b16 v1.l, 8, v1.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v7, v20, 4, v12
	v_lshl_or_b32 v12, v22, 4, v14
.Ltmp56:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v22, 4, v0
.Ltmp57:
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v8, v21, 4, v13
	v_lshl_or_b32 v13, v23, 4, v15
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v2.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v5.l
	v_and_b16 v1.h, 0xff, v2.l
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v23, s1, v22
	s_lshl_b32 s1, s1, 5
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v14, v32, 4, v24
	v_lshl_or_b32 v17, v35, 4, v27
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v2.l, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v13.l
	v_and_b16 v1.h, 0xff, v12.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v15, v33, 4, v25
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add_nc_u32_e32 v24, v3, v23
	v_add3_u32 v23, v23, s1, v3
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v20, v38, 4, v30
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v3.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v8.l
	v_and_b16 v1.h, 0xff, v7.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v21, v39, 4, v31
	v_lshl_or_b32 v18, v36, 4, v28
	v_lshl_or_b32 v19, v37, 4, v29
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v3.l, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v17.l
	v_and_b16 v1.h, 0xff, v16.l
	.loc	1 87 34 is_stmt 1               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[2:3], v24, s[4:7], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v2.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v15.l
	v_and_b16 v1.h, 0xff, v14.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v2.l, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v21.l
	v_and_b16 v1.h, 0xff, v20.l
	v_or_b16 v3.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v19.l
	v_and_b16 v1.h, 0xff, v18.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v3.l, v1.h, v1.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v1, v0, 63, s44
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v0, 0x1c0, v0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[2:3], v23, s[4:7], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v2, 2, v11
	v_lshrrev_b32_e32 v3, 2, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v1, v1, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add3_u32 v2, 0, v2, v3
	v_and_b32_e32 v3, 2, v22
	s_and_b32 s5, s23, 0xffff
	s_mov_b32 s4, s22
	ds_store_b32 v2, v4
	v_lshlrev_b32_e32 v2, 2, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_lshl_u32 v0, v1, s33, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v2, 0, v2, v3
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	ds_load_u16 v1, v2
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[4:7], 0 offen
.Ltmp58:
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp59:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 112
		.amdhsa_next_free_sgpr 50
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 112
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11984
; TotalNumSgprs: 52
; NumVgprs: 112
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 13
; NumSGPRsForWavesPerEU: 52
; NumVGPRsForWavesPerEU: 112
; Occupancy: 12
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
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	1                               ; Abbrev [1] 0xb:0x82 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x5c DW_TAG_subprogram
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
	.byte	5                               ; Abbrev [5] 0x65:0x26 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	243                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x71:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x7d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
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
.Ldebug_ranges3:
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     112
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
