	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
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
.LBB0_3:                                ; %Flow293
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b128 s[20:23], s[0:1], 0x20
	v_or_b32_e32 v48, v4, v11
	v_lshrrev_b32_e32 v45, 1, v12
	v_bfe_u32 v46, v0, 4, 1
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v47, 0, v48
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_mov_b32_e32 v37, 0
	s_and_not1_b32 vcc_lo, exec_lo, s12
	s_add_i32 s0, s46, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_add_i32 s1, s16, 16
	v_sub_nc_u32_e32 v51, s15, v3
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v6, s1, v3
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
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_mov_b32_e32 v34, 0
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
	buffer_load_u16 v60, v55, s[40:43], 0 offen
	buffer_load_u16 v61, v54, s[40:43], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s1, v51
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s47, s47, -1
	s_add_i32 s1, s1, 16
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s47, 0
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
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v58 offset:3328
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v58 offset:3072
	ds_load_u8 v100, v58 offset:3968
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
	v_perm_b32 v79, v81, v79, 0xc0c0004
	ds_load_u8 v81, v58 offset:3840
	ds_load_u8 v104, v58 offset:3584
	ds_load_u8 v77, v47 offset:4640
	v_perm_b32 v98, v99, v98, 0xc0c0004
	v_perm_b32 v96, v97, v96, 0xc0c0004
	v_perm_b32 v97, v73, v72, 0xc0c0004
	v_perm_b32 v99, v71, v70, 0xc0c0004
	v_perm_b32 v88, v89, v88, 0xc0c0004
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v63, v65, v63, 0xc0c0004
	v_perm_b32 v65, v95, v94, 0xc0c0004
	v_perm_b32 v87, v103, v102, 0xc0c0004
	v_perm_b32 v89, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v85, v85, v83, 0xc0c0004
	v_perm_b32 v67, v69, v67, 0xc0c0004
	v_lshl_or_b32 v71, v64, 16, v62
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v91, v93, v91, 0xc0c0004
	v_lshl_or_b32 v70, v68, 16, v66
	v_lshl_or_b32 v73, v84, 16, v82
	v_lshl_or_b32 v72, v92, 16, v90
	v_lshl_or_b32 v84, v96, 16, v98
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v81, v104, v81, 0xc0c0004
	ds_load_u8 v104, v58 offset:2304
	ds_load_u8 v105, v58 offset:2048
	ds_load_u8 v106, v58 offset:2944
	ds_load_u8 v107, v58 offset:2688
	ds_load_u8 v108, v58 offset:2432
	ds_load_u8 v109, v58 offset:2176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v69, v77, v75, 0xc0c0004
	v_lshl_or_b32 v83, v99, 16, v97
	v_lshl_or_b32 v77, v76, 16, v74
	v_lshl_or_b32 v76, v80, 16, v78
	v_lshl_or_b32 v75, v81, 16, v79
	v_lshl_or_b32 v78, v65, 16, v63
	v_lshl_or_b32 v79, v86, 16, v88
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v58 offset:2816
	ds_load_u8 v110, v58 offset:2560
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v95, v107, v106, 0xc0c0004
	v_lshl_or_b32 v106, v67, 16, v85
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v94, v109, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v103, v95, 16, v94
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v110, v105, 0xc0c0004
	v_lshl_or_b32 v74, v105, 16, v104
	v_lshl_or_b32 v104, v89, 16, v87
	v_lshl_or_b32 v105, v91, 16, v69
	v_wmma_i32_16x16x16_iu4 v[62:69], v[72:73], v[83:84], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[72:73], v[70:71], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[62:69], v[74:75], v[105:106], v[62:69] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[74:75], v[76:77], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v81, v65
	v_cvt_f32_i32_e32 v85, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v88, v69
	v_cvt_f32_i32_e32 v65, v94
	v_cvt_f32_i32_e32 v67, v95
	v_cvt_f32_i32_e32 v69, v96
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[94:101], v[78:79], v[83:84], v[1:8] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v74, v62
	v_cvt_f32_i32_e32 v75, v63
	v_cvt_f32_i32_e32 v80, v64
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[94:101], v[103:104], v[105:106], v[94:101] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v82, v66
	v_cvt_f32_i32_e32 v86, v68
	v_cvt_f32_i32_e32 v62, v89
	v_cvt_f32_i32_e32 v64, v90
	v_cvt_f32_i32_e32 v66, v91
	v_cvt_f32_i32_e32 v68, v92
	v_cvt_f32_i32_e32 v63, v93
	v_cvt_f32_i32_e32 v83, v94
	v_cvt_f32_i32_e32 v84, v99
	v_cvt_f32_i32_e32 v93, v100
	v_cvt_f32_i32_e32 v94, v101
	v_cvt_f32_i32_e32 v89, v95
	v_cvt_f32_i32_e32 v90, v96
	v_cvt_f32_i32_e32 v91, v97
	v_cvt_f32_i32_e32 v92, v98
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[95:102], v[78:79], v[70:71], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[95:102], v[103:104], v[76:77], v[95:102] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v76, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v78, v101
	v_cvt_f32_i32_e32 v77, v100
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v70, v96
	v_cvt_f32_i32_e32 v71, v97
	v_cvt_f32_i32_e32 v72, v98
	v_cvt_f32_i32_e32 v73, v99
	v_cvt_f32_i32_e32 v79, v102
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v60, 16, v60
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v76, v60, v76 :: v_dual_lshlrev_b32 v101, 16, v61
	v_dual_mul_f32 v88, v101, v88 :: v_dual_add_nc_u32 v95, v52, v53
	v_mul_f32_e32 v87, v101, v83
	v_dual_mul_f32 v83, v101, v93 :: v_dual_mul_f32 v68, v60, v68
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x4
	buffer_load_u16 v96, v95, s[36:39], 0 offen
	buffer_load_u16 v97, v95, s[36:39], 0 offen offset:4
	buffer_load_u16 v98, v95, s[36:39], 0 offen offset:8
	buffer_load_u16 v99, v95, s[36:39], 0 offen offset:12
	buffer_load_u16 v100, v95, s[36:39], 0 offen offset:16
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v102, v101, v74
	v_mul_f32_e32 v74, v101, v92
	v_mul_f32_e32 v89, v101, v89
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v53, s48, v53
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v92, 16, v96
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v96, 16, v97
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v97, 16, v99
	buffer_load_u16 v99, v95, s[36:39], 0 offen offset:268
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v27, v68, v97
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v85, v101, v85 :: v_dual_mul_f32 v64, v60, v64
	v_dual_mul_f32 v61, v101, v84 :: v_dual_mul_f32 v66, v60, v66
	v_mul_f32_e32 v84, v101, v94
	v_dual_mul_f32 v86, v101, v86 :: v_dual_mul_f32 v77, v60, v77
	v_dual_mul_f32 v82, v101, v82 :: v_dual_mul_f32 v79, v60, v79
	v_dual_mul_f32 v81, v101, v81 :: v_dual_mul_f32 v62, v60, v62
	v_mul_f32_e32 v93, v101, v80
	v_dual_mul_f32 v94, v101, v75 :: v_dual_mul_f32 v69, v60, v69
	v_dual_mul_f32 v75, v101, v91 :: v_dual_mul_f32 v72, v60, v72
	v_dual_mul_f32 v80, v101, v90 :: v_dual_mul_f32 v63, v60, v63
	v_mul_f32_e32 v78, v60, v78
	v_mul_f32_e32 v67, v60, v67
	v_mul_f32_e32 v65, v60, v65
	v_mul_f32_e32 v73, v60, v73
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v26, v64, v96
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v71, v60, v71 :: v_dual_lshlrev_b32 v64, 16, v98
	v_mul_f32_e32 v60, v60, v70
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x3
	buffer_load_u16 v70, v95, s[36:39], 0 offen offset:24
	buffer_load_u16 v91, v95, s[36:39], 0 offen offset:28
	buffer_load_u16 v90, v95, s[36:39], 0 offen offset:20
	buffer_load_u16 v68, v95, s[36:39], 0 offen offset:264
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v25, v62, v92
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v62, v95, s[36:39], 0 offen offset:256
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v28, v66, v64
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v66, v95, s[36:39], 0 offen offset:260
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v29, v102, v92 :: v_dual_add_nc_u32 v54, 2, v54
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v70, 16, v70
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v23, v67, v70
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v67, v95, s[36:39], 0 offen offset:276
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v90, 16, v90
	v_lshlrev_b32_e32 v91, 16, v91
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v66, 16, v66
	v_lshlrev_b32_e32 v98, 16, v100
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v22, v65, v90
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v65, v95, s[36:39], 0 offen offset:272
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v13, v60, v66
	v_dual_fmac_f32 v21, v63, v98 :: v_dual_fmac_f32 v32, v81, v97
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v33, v82, v98 :: v_dual_lshlrev_b32 v60, 16, v67
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v67, 16, v68
	v_lshlrev_b32_e32 v68, 16, v99
	v_lshlrev_b32_e32 v100, 16, v62
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v62, 0x80000000, v56, vcc_lo
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v24, v69, v91
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v69, v95, s[36:39], 0 offen offset:280
	buffer_load_u16 v95, v95, s[36:39], 0 offen offset:284
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v15, v72, v68
	v_fmac_f32_e32 v37, v76, v100
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b64 v[62:63], v62, s[24:27], 0 offen
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v35, v86, v70
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v44, v77, v60 :: v_dual_lshlrev_b32 v65, 16, v65
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v55, 2, v55
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v14, v71, v67 :: v_dual_add_nc_u32 v57, s34, v57
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v56, s49, v56
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v16, v73, v65
	v_dual_fmac_f32 v30, v94, v96 :: v_dual_fmac_f32 v31, v88, v91
	v_dual_fmac_f32 v41, v87, v100 :: v_dual_fmac_f32 v34, v85, v90
	v_dual_fmac_f32 v19, v75, v68 :: v_dual_fmac_f32 v18, v80, v67
	v_fmac_f32_e32 v20, v74, v65
	v_fmac_f32_e32 v40, v61, v60
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v49, v59 offset:4096
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v50, v[62:63]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v76, 16, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v42, v79, v76 :: v_dual_lshlrev_b32 v69, 16, v69
	v_dual_fmac_f32 v43, v78, v69 :: v_dual_fmac_f32 v36, v93, v64
	v_fmac_f32_e32 v39, v83, v69
	v_dual_fmac_f32 v17, v89, v66 :: v_dual_fmac_f32 v38, v84, v76
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow294
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v2, 32, v48
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v3, s46, v48
	s_mul_i32 s1, s44, s46
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s0, s0, 0
	v_dual_mov_b32 v74, 0 :: v_dual_and_b32 v1, 16, v0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v2, s46, v2
	s_add_i32 s1, s1, s0
	v_dual_mov_b32 v73, 0 :: v_dual_and_b32 v6, 0x1e0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v3, s1, v3, 1
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_add_lshl_u32 v2, s1, v2, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v4, 0x80000000, v2, s2
	s_clause 0x1
	buffer_load_u16 v2, v3, s[28:31], 0 offen
	buffer_load_u16 v3, v4, s[28:31], 0 offen
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v70, 0
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
	ds_load_u8 v5, v47 offset:4352
	ds_load_u8 v7, v47 offset:4544
	ds_load_u8 v8, v47 offset:4480
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add3_u32 v49, 0, v11, v45
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v48, v47 offset:4160
	ds_load_u8 v50, v47 offset:4096
	ds_load_u8 v51, v47 offset:4288
	ds_load_u8 v52, v47 offset:4224
	ds_load_u8 v53, v49 offset:1280
	ds_load_u8 v54, v49 offset:1024
	ds_load_u8 v55, v49 offset:1792
	ds_load_u8 v56, v49 offset:1536
	ds_load_u8 v61, v47 offset:4576
	ds_load_u8 v62, v47 offset:4512
	ds_load_u8 v71, v47 offset:4448
	ds_load_u8 v72, v47 offset:4384
	s_mov_b32 s19, s12
	s_mov_b32 s13, s12
	ds_load_u8 v91, v49 offset:3328
	ds_load_u8 v92, v49 offset:3072
	ds_load_u8 v65, v49 offset:896
	ds_load_u8 v66, v49 offset:640
	ds_load_u8 v67, v49 offset:384
	ds_load_u8 v68, v49 offset:128
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v84, s19 :: v_dual_mov_b32 v83, s18
	v_dual_mov_b32 v82, s17 :: v_dual_mov_b32 v81, s16
	v_dual_mov_b32 v80, s15 :: v_dual_mov_b32 v79, s14
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v5, v8, v7, 0xc0c0004
	ds_load_u8 v73, v47 offset:4320
	ds_load_u8 v74, v47 offset:4256
	ds_load_u8 v75, v47 offset:4192
	ds_load_u8 v76, v47 offset:4128
	ds_load_u8 v7, v49 offset:256
	ds_load_u8 v57, v49
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v8, v50, v48, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v48, v52, v51, 0xc0c0004
	ds_load_u8 v50, v49 offset:768
	ds_load_u8 v51, v49 offset:512
	ds_load_u8 v59, v49 offset:1920
	ds_load_u8 v60, v49 offset:1664
	ds_load_u8 v63, v49 offset:1408
	ds_load_u8 v64, v49 offset:1152
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v52, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v53, v56, v55, 0xc0c0004
	v_lshl_or_b32 v5, v5, 16, v4
	v_lshl_or_b32 v4, v48, 16, v8
	v_dual_mov_b32 v78, s13 :: v_dual_mov_b32 v77, s12
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v8, v53, 16, v52
	ds_load_u8 v48, v47 offset:4928
	ds_load_u8 v52, v47 offset:4864
	ds_load_u8 v53, v47 offset:5056
	ds_load_u8 v54, v47 offset:4992
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v72, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_perm_b32 v7, v57, v7, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	v_perm_b32 v60, v66, v65, 0xc0c0004
	v_lshl_or_b32 v62, v61, 16, v71
	v_lshl_or_b32 v61, v73, 16, v72
	v_lshl_or_b32 v7, v50, 16, v7
	ds_load_u8 v50, v47 offset:4672
	ds_load_u8 v69, v47 offset:4608
	ds_load_u8 v70, v47 offset:4800
	ds_load_u8 v85, v47 offset:4736
	ds_load_u8 v86, v47 offset:5088
	ds_load_u8 v87, v47 offset:5024
	ds_load_u8 v88, v47 offset:4960
	ds_load_u8 v89, v47 offset:4896
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v48, v52, v48, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v90, v54, v53, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[51:58], v[7:8], v[4:5], v[77:84] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v48, v90, 16, v48
	ds_load_u8 v90, v49 offset:3840
	ds_load_u8 v93, v49 offset:3584
	ds_load_u8 v94, v49 offset:2304
	ds_load_u8 v95, v49 offset:2048
	ds_load_u8 v96, v49 offset:2816
	ds_load_u8 v97, v49 offset:2560
	ds_load_u8 v98, v47 offset:4832
	ds_load_u8 v99, v47 offset:4768
	ds_load_u8 v100, v47 offset:4704
	ds_load_u8 v101, v47 offset:4640
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v47, v69, v50, 0xc0c0004
	v_perm_b32 v50, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v69, v85, v70, 0xc0c0004
	ds_load_u8 v85, v49 offset:3968
	ds_load_u8 v102, v49 offset:3712
	ds_load_u8 v103, v49 offset:3456
	ds_load_u8 v104, v49 offset:3200
	v_perm_b32 v70, v92, v91, 0xc0c0004
	ds_load_u8 v91, v49 offset:2944
	ds_load_u8 v92, v49 offset:2688
	ds_load_u8 v105, v49 offset:2432
	ds_load_u8 v106, v49 offset:2176
	v_perm_b32 v49, v68, v67, 0xc0c0004
	v_lshl_or_b32 v50, v59, 16, v50
	v_lshl_or_b32 v47, v69, 16, v47
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v63, v93, v90, 0xc0c0004
	v_perm_b32 v71, v89, v88, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v64, v95, v94, 0xc0c0004
	v_lshl_or_b32 v49, v60, 16, v49
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v65, v97, v96, 0xc0c0004
	v_lshl_or_b32 v60, v63, 16, v70
	v_perm_b32 v72, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v75, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v73, v101, v100, 0xc0c0004
	v_lshl_or_b32 v59, v65, 16, v64
	v_wmma_i32_16x16x16_iu4 v[63:70], v[49:50], v[4:5], v[77:84] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v5, v102, v85, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v4, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v74, v92, v91, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[85:92], v[7:8], v[61:62], v[77:84] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v72, 16, v71
	v_lshl_or_b32 v5, v5, 16, v4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v106, v105, 0xc0c0004
	v_lshl_or_b32 v7, v75, 16, v73
	v_wmma_i32_16x16x16_iu4 v[77:84], v[49:50], v[61:62], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[51:58], v[59:60], v[47:48], v[51:58] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v4, v74, 16, v4
	v_wmma_i32_16x16x16_iu4 v[85:92], v[59:60], v[7:8], v[85:92] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v59, v51
	v_cvt_f32_i32_e32 v60, v52
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[63:70], v[4:5], v[47:48], v[63:70] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[77:84], v[4:5], v[7:8], v[77:84] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v61, v53
	v_cvt_f32_i32_e32 v62, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v73, v63
	v_cvt_f32_i32_e32 v48, v64
	v_cvt_f32_i32_e32 v49, v65
	v_cvt_f32_i32_e32 v50, v66
	v_cvt_f32_i32_e32 v51, v67
	v_cvt_f32_i32_e32 v74, v68
	v_cvt_f32_i32_e32 v75, v69
	v_cvt_f32_i32_e32 v76, v70
	v_cvt_f32_i32_e32 v63, v85
	v_cvt_f32_i32_e32 v64, v86
	v_cvt_f32_i32_e32 v67, v87
	v_cvt_f32_i32_e32 v65, v88
	v_cvt_f32_i32_e32 v66, v89
	v_cvt_f32_i32_e32 v68, v90
	v_cvt_f32_i32_e32 v69, v91
	v_cvt_f32_i32_e32 v70, v92
	v_cvt_f32_i32_e32 v4, v77
	v_cvt_f32_i32_e32 v8, v78
	v_cvt_f32_i32_e32 v52, v79
	v_cvt_f32_i32_e32 v53, v80
	v_cvt_f32_i32_e32 v54, v81
	v_cvt_f32_i32_e32 v5, v82
	v_cvt_f32_i32_e32 v71, v83
	v_cvt_f32_i32_e32 v72, v84
.LBB0_8:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v45, v46, v45
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s0, s0, s35
.Ltmp22:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v7.l, 0
.Ltmp23:
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s45, s45, s0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v7.h, v3.l
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	v_add_lshl_u32 v3, s45, v45, 1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v46.h, v2.l
	v_mov_b16_e32 v46.l, v7.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s7, 0x31027000
	v_add_nc_u32_e32 v84, 0x104, v3
	v_cndmask_b32_e64 v45, 0x80000000, v3, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v75, v75, v46
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s4, s10
	v_cndmask_b32_e64 v84, 0x80000000, v84, s2
	buffer_load_u16 v47, v45, s[4:7], 0 offen
	v_add_nc_u32_e32 v85, 0x108, v3
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v61, v61, v46 :: v_dual_add_nc_u32 v86, 0x10c, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v84, v84, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v74, v74, v46 :: v_dual_add_nc_u32 v45, 4, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v85, 0x80000000, v85, s2
	v_cndmask_b32_e64 v86, 0x80000000, v86, s2
	v_add_nc_u32_e32 v87, 0x110, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v59, v59, v46 :: v_dual_add_nc_u32 v88, 0x114, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v89, 0x118, v3
	s_clause 0x1
	buffer_load_u16 v85, v85, s[4:7], 0 offen
	buffer_load_u16 v77, v45, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v76, v76, v46 :: v_dual_add_nc_u32 v45, 8, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v87, 0x80000000, v87, s2
	v_cndmask_b32_e64 v88, 0x80000000, v88, s2
	v_cndmask_b32_e64 v89, 0x80000000, v89, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v73, v73, v46 :: v_dual_and_b32 v2, 0x1f0, v0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v86, v86, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v62, v62, v46
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v78, v45, s[4:7], 0 offen
	v_add_nc_u32_e32 v45, 12, v3
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v71, v71, v7
	v_mul_f32_e32 v65, v65, v7
	v_mul_f32_e32 v63, v63, v7
	v_mul_f32_e32 v66, v66, v7
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v64, v64, v7
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v87, v87, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v60, v60, v46
	v_mul_f32_e32 v55, v55, v46
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v79, v45, s[4:7], 0 offen
	v_add_nc_u32_e32 v45, 16, v3
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v8, v8, v7 :: v_dual_mul_f32 v49, v49, v46
	v_mul_f32_e32 v53, v53, v7
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	buffer_load_u16 v88, v88, s[4:7], 0 offen
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v6, 1, v6
.Ltmp25:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s1, s35, 31
.Ltmp26:
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v89, v89, s[4:7], 0 offen
	buffer_load_u16 v80, v45, s[4:7], 0 offen
	v_add_nc_u32_e32 v45, 20, v3
.Ltmp27:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s1, s35, s1
.Ltmp28:
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v5, v5, v7
.Ltmp29:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s1, s1, 1
.Ltmp30:
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v72, v72, v7
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v67, v67, v7
	v_mul_f32_e32 v4, v4, v7
	v_mul_f32_e32 v69, v69, v7
	v_mul_f32_e32 v68, v68, v7
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v81, v45, s[4:7], 0 offen
	v_add_nc_u32_e32 v45, 24, v3
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v70, v70, v7
	v_dual_mul_f32 v52, v52, v7 :: v_dual_lshlrev_b32 v1, 7, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	buffer_load_u16 v82, v45, s[4:7], 0 offen
	v_add_nc_u32_e32 v45, 28, v3
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	buffer_load_u16 v83, v45, s[4:7], 0 offen
	v_add_nc_u32_e32 v45, 0x100, v3
	v_add_nc_u32_e32 v3, 0x11c, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	s_clause 0x1
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	buffer_load_u16 v3, v3, s[4:7], 0 offen
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp32:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s5, s21, 0xffff
	s_mov_b32 s4, s20
.Ltmp33:
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v47, 16, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v63, v63, v47, v29
	v_fma_f32 v47, v59, v47, v25
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v29, v29, v63, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v88, 16, v88
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v89, 16, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v5, v5, v88, v40
	v_fma_f32 v74, v74, v88, v44
	v_fma_f32 v75, v75, v89, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v5, v40, v5, s2
	v_cndmask_b32_e64 v44, v44, v74, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v43, v43, v75, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v40, 16, v82
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v69, v69, v40, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v35, v35, v69, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v45, 16, v45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v73, v73, v45, v37
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v76, v76, v3, v42
	v_fma_f32 v3, v72, v3, v38
	v_fma_f32 v4, v4, v45, v41
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v72, 16, v80
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v45, v37, v73, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v73, 16, v77
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v3, v38, v3, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v38, 16, v78
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v37, v41, v4, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v41, 16, v79
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v71, v71, v89, v39
	v_fma_f32 v59, v60, v73, v26
	v_fma_f32 v67, v67, v38, v36
	v_fma_f32 v38, v61, v38, v28
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v42, v42, v76, s2
	v_cndmask_b32_e64 v4, v39, v71, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v39, 16, v83
	v_lshlrev_b32_e32 v71, 16, v81
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v38, v28, v38, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v28, v57, v46
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v26, v26, v59, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v70, v70, v39, v31
	v_fma_f32 v68, v68, v71, v34
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v36, v36, v67, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v28, v28, v40, v23
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v40, 16, v85
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v65, v65, v41, v32
	v_fma_f32 v41, v62, v41, v27
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v34, v34, v68, s2
	v_cndmask_b32_e64 v23, v23, v28, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v28, 16, v87
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v55, v55, v72, v21
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v27, v27, v41, s2
	v_cndmask_b32_e64 v41, v25, v47, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v25, v58, v46
	v_mul_f32_e32 v47, v56, v46
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v52, v52, v40, v18
	v_fma_f32 v40, v49, v40, v14
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v21, v21, v55, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v25, v25, v39, v24
	v_fma_f32 v47, v47, v71, v22
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v39, 16, v86
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v40, v14, v40, s2
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v14, |v26|, |v26|
.Ltmp35:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v24, v24, v25, s2
	v_cndmask_b32_e64 v25, v22, v47, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v22, v54, v7 :: v_dual_lshlrev_b32 v47, 16, v84
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v53, v53, v39, v19
	v_fma_f32 v64, v64, v73, v30
	v_fma_f32 v66, v66, v72, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v54, v8, v47, v17
	v_fma_f32 v8, v22, v28, v20
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v32, v32, v65, s2
	v_cndmask_b32_e64 v30, v30, v64, s2
	v_cndmask_b32_e64 v33, v33, v66, s2
	v_cndmask_b32_e64 v22, v17, v54, s2
	v_cndmask_b32_e64 v8, v20, v8, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v17, v51, v46
	v_mul_f32_e32 v20, v50, v46
	v_mul_f32_e32 v46, v48, v46
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v19, v19, v53, s2
	v_cndmask_b32_e64 v18, v18, v52, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v17, v17, v28, v16
	v_fma_f32 v20, v20, v39, v15
	v_fma_f32 v46, v46, v47, v13
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v31, v31, v70, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v28, v16, v17, s2
	v_cndmask_b32_e64 v39, v15, v20, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v46, v13, v46, s2
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v13, |v41|, |v41|
	v_max3_f32 v15, |v23|, |v24|, |v45|
	v_max3_f32 v17, |v28|, |v44|, |v43|
	v_max3_f32 v20, |v8|, |v5|, |v4|
	v_max3_f32 v16, |v46|, |v40|, |v39|
	v_max_f32_e32 v13, v13, v14
	v_max3_f32 v14, |v27|, |v21|, |v25|
.Ltmp37:
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	s_mul_i32 s2, s44, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v13, v13, |v38|, v14
	v_max3_f32 v14, v16, v17, |v42|
	v_max3_f32 v17, |v22|, |v18|, |v19|
	v_max3_f32 v16, |v35|, |v31|, |v37|
	v_max3_f32 v13, v13, v15, v14
	v_max_f32_e64 v14, |v29|, |v29|
	v_max_f32_e64 v15, |v30|, |v30|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v14, v14, v15
	v_max3_f32 v15, |v32|, |v33|, |v34|
	v_max3_f32 v14, v14, |v36|, v15
	v_max3_f32 v15, v17, v20, |v3|
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_and_b32_e32 v17, 8, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v14, v14, v16, v15
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v15, v13, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v15, v15, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v13, v13, v15
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v15, v14, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s0, 0xc1000000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v15, v15, v15
	v_dual_max_f32 v14, v14, v15 :: v_dual_and_b32 v15, 7, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v16, 4, v15
	v_lshl_add_u32 v15, v15, 8, 0
	v_xor_b32_e32 v20, v16, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v15, v15, v20, v17
	ds_store_b64 v15, v[13:14]
	v_lshl_or_b32 v13, v12, 3, v16
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshl_add_u32 v15, v17, 3, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v6, v13, v6
	v_add3_u32 v6, 0, v17, v6
	ds_load_b64 v[13:14], v6
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v6, v13
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v6, v13, v6
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v13, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v6, v6, v13
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v13, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v13, v6, v13
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v6, v14
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v14, v14, v14
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v6, v14, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v14, v6
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v14, v14, v14
	v_max_f32_e32 v6, v6, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v14, v6
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v14, v14, v14
	v_max_f32_e32 v14, v6, v14
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v6, 2, v12
	v_lshrrev_b32_e32 v12, 1, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v6, v15, v6, v12
	ds_store_b64 v6, v[13:14]
	v_lshlrev_b32_e32 v6, 3, v11
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v12, 0, v6, v12
	ds_load_b64 v[12:13], v12
.Ltmp62:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v12, 0x2b8cbccc, v12 :: v_dual_max_f32 v13, 0x2b8cbccc, v13
	v_div_scale_f32 v14, null, 0x40e00000, 0x40e00000, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v15, v14
	v_fma_f32 v16, -v14, v15, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, v16, v15
	v_div_scale_f32 v16, vcc_lo, v12, 0x40e00000, v12
	v_mul_f32_e32 v17, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v14, v17, v16
	v_fmac_f32_e32 v17, v20, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v14, -v14, v17, v16
	v_div_fmas_f32 v14, v14, v15, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v12, v14, 0x40e00000, v12
	v_div_scale_f32 v14, null, 0x40e00000, 0x40e00000, v13
	v_rcp_f32_e32 v15, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v14, v15, 1.0
	v_fmac_f32_e32 v15, v16, v15
	v_div_scale_f32 v16, vcc_lo, v13, 0x40e00000, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v17, v16, v15
	v_fma_f32 v20, -v14, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v20, v15
	v_fma_f32 v14, -v14, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v14, v14, v15, v17
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v15.l, v12.h
	v_mov_b16_e32 v15.h, v7.l
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v13, v14, 0x40e00000, v13
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v14.h, v7.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v14.l, v13.h
	v_and_b32_e32 v7, 1, v14
	v_and_b32_e32 v14, 1, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v13, v13, v7, 0x7fff
	v_add3_u32 v12, v12, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v7.h, v13.h
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v47, 0xffff0000, v12
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v7.l, v12.h
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v12, 0xffff0000, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v13, null, v47, v47, v41
	v_rcp_f32_e32 v14, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v13, v14, 1.0
	v_fmac_f32_e32 v14, v15, v14
	v_div_scale_f32 v15, vcc_lo, v41, v47, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v16, v15, v14
	v_fma_f32 v17, -v13, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v17, v14
	v_fma_f32 v13, -v13, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v13, v13, v14, v16
	v_div_scale_f32 v14, null, v47, v47, v26
	v_rcp_f32_e32 v15, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v14, v15, 1.0
	v_fmac_f32_e32 v15, v16, v15
	v_div_scale_f32 v16, vcc_lo, v26, v47, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v17, v16, v15
	v_fma_f32 v20, -v14, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v20, v15
	v_fma_f32 v14, -v14, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v14, v14, v15, v17
	v_div_scale_f32 v15, null, v47, v47, v38
	v_div_fixup_f32 v14, v14, v47, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v16, v15
	v_fma_f32 v17, -v15, v16, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, v17, v16
	v_div_scale_f32 v17, vcc_lo, v38, v47, v38
	v_mul_f32_e32 v20, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v15, v20, v17
	v_fmac_f32_e32 v20, v26, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v15, v20, v17
	v_div_fmas_f32 v15, v15, v16, v20
	v_div_scale_f32 v16, null, v47, v47, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v15, v15, v47, v38
	v_rcp_f32_e32 v17, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v16, v17, 1.0
	v_fmac_f32_e32 v17, v20, v17
	v_div_scale_f32 v20, vcc_lo, v27, v47, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v26, v20, v17
	v_fma_f32 v38, -v16, v26, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v26, v38, v17
	v_div_fixup_f32 v13, v13, v47, v41
	v_fma_f32 v16, -v16, v26, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v16, v16, v17, v26
	v_div_scale_f32 v17, null, v47, v47, v21
	v_div_fixup_f32 v16, v16, v47, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v20, v17
	v_fma_f32 v26, -v17, v20, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, v26, v20
	v_div_scale_f32 v26, vcc_lo, v21, v47, v21
	v_mul_f32_e32 v27, v26, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v17, v27, v26
	v_fmac_f32_e32 v27, v38, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v27, v26
	v_div_fmas_f32 v17, v17, v20, v27
	v_div_scale_f32 v20, null, v47, v47, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v17, v17, v47, v21
	v_rcp_f32_e32 v21, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v20, v21, 1.0
	v_fmac_f32_e32 v21, v26, v21
	v_div_scale_f32 v26, vcc_lo, v25, v47, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v27, v26, v21
	v_fma_f32 v38, -v20, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v38, v21
	v_fma_f32 v20, -v20, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v20, v20, v21, v27
	v_div_scale_f32 v21, null, v47, v47, v23
	v_div_fixup_f32 v20, v20, v47, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v25, v21
	v_fma_f32 v26, -v21, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v23, v47, v23
	v_mul_f32_e32 v27, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v21, v27, v26
	v_fmac_f32_e32 v27, v38, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v21, v27, v26
	v_div_fmas_f32 v21, v21, v25, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v21, v21, v47, v23
	v_div_scale_f32 v23, null, v47, v47, v24
	v_rcp_f32_e32 v25, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v23, v25, 1.0
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v24, v47, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v27, v26, v25
	v_fma_f32 v38, -v23, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v38, v25
	v_fma_f32 v23, -v23, v27, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v23, v23, v25, v27
	v_div_fixup_f32 v23, v23, v47, v24
	v_div_scale_f32 v24, null, v47, v47, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v25, v24
	v_fma_f32 v26, -v24, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, vcc_lo, v45, v47, v45
	v_mul_f32_e32 v27, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v24, v27, v26
	v_fmac_f32_e32 v27, v38, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v24, v27, v26
	v_div_fmas_f32 v24, v24, v25, v27
	v_div_scale_f32 v25, null, v47, v47, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v24, v24, v47, v45
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v46, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v38, v27, v26
	v_fma_f32 v41, -v25, v38, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v41, v26
	v_fma_f32 v25, -v25, v38, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v25, v25, v26, v38
	v_div_scale_f32 v26, null, v47, v47, v40
	v_div_fixup_f32 v25, v25, v47, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v38, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v38, v27
	v_div_scale_f32 v38, vcc_lo, v40, v47, v40
	v_mul_f32_e32 v41, v38, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v26, v41, v38
	v_fmac_f32_e32 v41, v45, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v41, v38
	v_div_fmas_f32 v26, v26, v27, v41
	v_div_scale_f32 v27, null, v47, v47, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v26, v26, v47, v40
	v_rcp_f32_e32 v38, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v27, v38, 1.0
	v_fmac_f32_e32 v38, v40, v38
	v_div_scale_f32 v40, vcc_lo, v39, v47, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v38
	v_fma_f32 v45, -v27, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v45, v38
	v_fma_f32 v27, -v27, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v27, v27, v38, v41
	v_div_scale_f32 v38, null, v47, v47, v28
	v_div_fixup_f32 v27, v27, v47, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v40, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v28, v47, v28
	v_mul_f32_e32 v41, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v38, v41, v40
	v_fmac_f32_e32 v41, v45, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v41, v40
	v_div_fmas_f32 v38, v38, v39, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v28, v38, v47, v28
	v_div_scale_f32 v38, null, v47, v47, v44
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v44, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v45, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v45, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_scale_f32 v39, null, v47, v47, v43
	v_div_fixup_f32 v38, v38, v47, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v43, v47, v43
	v_mul_f32_e32 v44, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v39, v44, v41
	v_fmac_f32_e32 v44, v45, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v44, v41
	v_div_fmas_f32 v39, v39, v40, v44
	v_div_scale_f32 v40, null, v47, v47, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v39, v39, v47, v43
	v_rcp_f32_e32 v41, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v40, v41, 1.0
	v_fmac_f32_e32 v41, v43, v41
	v_div_scale_f32 v43, vcc_lo, v42, v47, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v41
	v_fma_f32 v45, -v40, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v41
	v_fma_f32 v40, -v40, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v40, v40, v41, v44
	v_div_scale_f32 v41, null, v12, v12, v29
	v_div_fixup_f32 v40, v40, v47, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v29, v12, v29
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v29, v41, v12, v29
	v_div_scale_f32 v41, null, v12, v12, v30
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v29, v29, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v29, v29
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v30, v12, v30
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v30, v41, v12, v30
	v_div_scale_f32 v41, null, v12, v12, v36
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v30, v30, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v30, v30
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v36, v12, v36
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v36, v41, v12, v36
	v_div_scale_f32 v41, null, v12, v12, v32
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v36, v36, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v36, v36
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v32, v12, v32
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v32, v41, v12, v32
	v_div_scale_f32 v41, null, v12, v12, v33
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v32, v32, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v32, v32
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v33, v12, v33
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v33, v41, v12, v33
	v_div_scale_f32 v41, null, v12, v12, v34
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v33, v33
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v34, v12, v34
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v34, v41, v12, v34
	v_div_scale_f32 v41, null, v12, v12, v35
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v34, v34, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v34, v34
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
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
	v_div_scale_f32 v41, null, v12, v12, v31
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
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
	v_div_scale_f32 v43, vcc_lo, v31, v12, v31
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v31, v41, v12, v31
	v_div_scale_f32 v41, null, v12, v12, v37
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v31, v31, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v37, v12, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v41, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v42, v44
	v_div_fixup_f32 v37, v41, v12, v37
	v_div_scale_f32 v41, null, v12, v12, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v37, v37
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_cvt_i32_f32_e32 v37, v37
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
	v_div_scale_f32 v41, null, v12, v12, v18
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
	v_div_scale_f32 v43, vcc_lo, v18, v12, v18
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v18, v41, v12, v18
	v_div_scale_f32 v41, null, v12, v12, v19
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v19, v12, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v41, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v42, v44
	v_div_fixup_f32 v19, v41, v12, v19
	v_div_scale_f32 v41, null, v12, v12, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v19, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v19, v19, s0, 0x40e00000
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
	v_div_scale_f32 v41, null, v12, v12, v5
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v8, v8, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v8, v8
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v5, v12, v5
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v5, v41, v12, v5
	v_div_scale_f32 v41, null, v12, v12, v4
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v5, v5, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v5, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v4, v12, v4
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v4, v41, v12, v4
	v_div_scale_f32 v41, null, v12, v12, v3
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v4, v4, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v4, v4
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v3, v12, v3
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v41, v44, v43
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v43, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v41, v41, v42, v44
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v42, v18
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v3, v41, v12, v3
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v12, v13
	v_rndne_f32_e32 v13, v14
	v_rndne_f32_e32 v14, v15
	v_rndne_f32_e32 v15, v16
	v_rndne_f32_e32 v16, v17
	v_rndne_f32_e32 v17, v20
	v_rndne_f32_e32 v20, v21
	v_rndne_f32_e32 v21, v23
	v_rndne_f32_e32 v23, v24
	v_rndne_f32_e32 v24, v25
	v_rndne_f32_e32 v25, v26
	v_rndne_f32_e32 v26, v27
	v_rndne_f32_e32 v27, v28
	v_rndne_f32_e32 v28, v38
	v_rndne_f32_e32 v38, v39
	v_rndne_f32_e32 v39, v40
	v_rndne_f32_e32 v3, v3
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v3, v3
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v40, v31
	v_cvt_i32_f32_e32 v41, v22
	v_and_b32_e32 v19, 15, v21
	v_and_b32_e32 v21, 15, v24
	v_and_b32_e32 v24, 15, v27
	v_and_b32_e32 v27, 15, v39
	v_and_b32_e32 v39, 15, v43
	v_and_b32_e32 v43, 15, v3
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v3, 11, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v18, 15, v20
	v_and_b32_e32 v20, 15, v23
	v_and_b32_e32 v22, 15, v25
	v_and_b32_e32 v23, 15, v26
	v_and_b32_e32 v25, 15, v28
	v_and_b32_e32 v26, 15, v38
	v_and_b32_e32 v28, 15, v29
	v_and_b32_e32 v29, 15, v30
	v_and_b32_e32 v30, 15, v36
	v_and_b32_e32 v31, 15, v32
	v_and_b32_e32 v32, 15, v33
	v_and_b32_e32 v33, 15, v34
	v_and_b32_e32 v34, 15, v35
	v_and_b32_e32 v35, 15, v40
	v_and_b32_e32 v36, 15, v37
	v_and_b32_e32 v37, 15, v41
	v_and_b32_e32 v38, 15, v42
	v_and_b32_e32 v40, 15, v8
	v_and_b32_e32 v41, 15, v5
	v_and_b32_e32 v42, 15, v4
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v3, 0x3000, v3
	v_lshlrev_b32_e32 v4, 4, v11
	v_and_b32_e32 v5, 0x160, v0
	v_lshlrev_b32_e32 v8, 2, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v12, v12, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v1, 0, v3, v1
	v_lshlrev_b32_e32 v3, 5, v0
	v_xor_b32_e32 v4, v4, v5
	v_and_b32_e32 v8, 0x200, v8
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v3, 0x60, v3
	v_add3_u32 v5, v1, v8, v4
	v_lshlrev_b32_e32 v1, 7, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v15, v15
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v1, 0x3600, v1, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_and_b32_e32 v12, 15, v12
	v_and_b32_e32 v13, 15, v13
	v_and_b32_e32 v14, 15, v14
	v_and_b32_e32 v15, 15, v15
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xad_u32 v8, v1, v2, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v17, v17
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v5, v[12:15]
	ds_store_b128 v5, v[20:23] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v8
	ds_load_b128 v[12:15], v8 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v16, 15, v16
	v_and_b32_e32 v17, 15, v17
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v5, v[28:31]
	ds_store_b128 v5, v[36:39] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[20:23], v8
	ds_load_b128 v[28:31], v8 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v5, v[16:19]
	ds_store_b128 v5, v[24:27] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v8
	ds_load_b128 v[24:27], v8 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v5, v[32:35]
	ds_store_b128 v5, v[40:43] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v5, v12, 4, v1
	v_lshl_or_b32 v3, v14, 4, v3
	v_lshl_or_b32 v1, v15, 4, v4
	v_lshl_or_b32 v2, v13, 4, v2
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_load_b128 v[32:35], v8
	ds_load_b128 v[36:39], v8 offset:2048
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s0, s33, 7
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v3.l
	v_lshlrev_b16 v1.l, 8, v1.l
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v6, s2, s0, v6
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v14, v28, 4, v20
	v_lshl_or_b32 v15, v29, 4, v21
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v2.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v2.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v12, v26, 4, v18
	v_lshl_or_b32 v13, v27, 4, v19
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v5.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v4, v24, 4, v16
	v_lshl_or_b32 v16, v30, 4, v22
.Ltmp63:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v22, 4, v0
.Ltmp64:
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v8, v25, 4, v17
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v2.l, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v13.l
	v_and_b16 v1.h, 0xff, v12.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v17, v31, 4, v23
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v23, s1, v22
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v20, v38, 4, v34
	v_lshl_or_b32 v21, v39, 4, v35
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v3.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v8.l
	v_and_b16 v1.h, 0xff, v4.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v18, v36, 4, v32
	v_lshl_or_b32 v19, v37, 4, v33
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add_nc_u32_e32 v24, v6, v23
	s_lshl_b32 s1, s1, 5
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v3.l, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v17.l
	v_and_b16 v1.h, 0xff, v16.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v6, v23, s1, v6
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
	buffer_store_b64 v[2:3], v6, s[4:7], 0 offen
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
	ds_store_b32 v2, v7
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
.Ltmp65:
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp66:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 111
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 111
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11684
; TotalNumSgprs: 52
; NumVgprs: 111
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 13
; NumSGPRsForWavesPerEU: 52
; NumVGPRsForWavesPerEU: 111
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
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     111
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
