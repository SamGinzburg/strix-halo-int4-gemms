	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
	v_and_b32_e32 v38, 15, v0
	v_lshrrev_b32_e32 v35, 4, v0
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_lshlrev_b32_e32 v36, 2, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v37, 0x100, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v39, 0xe0, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v25, 2, v38
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v26, 4, v38
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_add_nc_u32_e32 v22, 0, v36
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
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_mad_u64_u32 v[1:2], null, s34, v35, v[25:26]
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s7, 0, s14
	s_mul_f32 s15, s15, 0x4f7ffffe
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[2:3], null, s35, v35, v[26:27]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
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
	s_lshl_b32 s16, s3, 5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s19, s12, 63
.Ltmp13:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s12, s12, s15
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s33, s14, s13
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v3, s16, v35
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
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s12
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s18, s19, s3
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s15, v3
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 32, v3
	.loc	1 120 13 is_stmt 1              ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s17
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	s_mul_i32 s20, s34, s16
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s45, s33, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s46, s18, 6
.Ltmp21:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s44, s2, 6
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s21, s35, s16
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s19, 63
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_add3_u32 v1, s20, s44, v1
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add3_u32 v2, s21, s45, v2
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
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_and_b32 s25, s25, 0xffff
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_b32 v6, v1, s[4:7], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[2:5], v2, s[24:27], 0 offen
	v_lshlrev_b32_e32 v1, 4, v0
	s_mov_b32 s12, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s19, 0x7f
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v23, 0, v1
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v1, 4, v37
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt vmcnt(1)
	ds_store_b32 v22, v6 offset:8192
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v23, v[2:5]
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
	v_lshrrev_b32_e32 v74, 1, v39
	v_or_b32_e32 v21, v1, v38
	v_bfe_u32 v75, v0, 4, 1
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v62, 0
	v_mov_b32_e32 v61, 0
	v_add3_u32 v33, 0, v38, v74
	v_add_nc_u32_e32 v76, 0, v21
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v65, 0
	v_mov_b32_e32 v72, 0
	s_and_not1_b32 vcc_lo, exec_lo, s12
	s_add_i32 s0, s46, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_add_i32 s1, s16, 32
	v_lshl_or_b32 v4, s14, 9, v39
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v2, s1, v35
	v_sub_nc_u32_e32 v24, s15, v35
	s_lshl_b32 s15, s13, 9
	s_lshl_b32 s14, s14, 8
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v5, s35, v2
	v_add3_u32 v1, s44, v1, v38
	v_subrev_nc_u32_e32 v28, s15, v4
	s_mov_b32 s12, 0
	s_lshl_b32 s13, s13, 8
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	v_add3_u32 v4, v5, s14, v26
	s_mov_b32 s14, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_mul_lo_u32 v2, s34, v2
	v_subrev_nc_u32_e32 v31, s13, v4
	s_mov_b32 s13, s12
	v_add_nc_u32_e32 v3, 32, v1
	v_mul_lo_u32 v1, s46, v1
	v_lshlrev_b32_e32 v27, 1, v75
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v68, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v3, s46, v3
	v_add3_u32 v32, v2, s44, v25
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_lshlrev_b32 v30, 1, v1
	v_mov_b32_e32 v48, 0
	v_dual_mov_b32 v72, 0 :: v_dual_lshlrev_b32 v29, 1, v3
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_mov_b32_e32 v56, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_mov_b32_e32 v57, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b64 s[28:29], s[8:9]
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_max_i32 s47, s0, 1
	s_lshl_b32 s48, s35, 1
	s_lshl_b32 s49, s35, 5
	s_lshl_b32 s34, s34, 5
	s_mov_b32 s40, s8
	s_mov_b32 s41, s9
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s1, v24
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v99, v30, s[40:43], 0 offen
	buffer_load_u16 v64, v29, s[40:43], 0 offen
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s47, s47, -1
	s_add_i32 s1, s1, 32
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s47, 0
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e32 v9, 0x80000000, v32, vcc_lo
	buffer_load_b32 v34, v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v76 offset:8224
	ds_load_u8 v10, v33 offset:1280
	ds_load_u8 v11, v33 offset:1024
	ds_load_u8 v12, v33 offset:1792
	ds_load_u8 v13, v33 offset:1536
	ds_load_u8 v14, v33 offset:256
	ds_load_u8 v15, v33
	ds_load_u8 v16, v33 offset:768
	ds_load_u8 v17, v33 offset:512
	ds_load_u8 v18, v33 offset:3328
	ds_load_u8 v19, v33 offset:3072
	ds_load_u8 v20, v33 offset:3840
	ds_load_u8 v73, v33 offset:3584
	ds_load_u8 v79, v33 offset:2304
	ds_load_u8 v80, v33 offset:2048
	ds_load_u8 v81, v33 offset:2816
	ds_load_u8 v82, v33 offset:2560
	ds_load_u8 v83, v33 offset:5376
	ds_load_u8 v84, v33 offset:5120
	ds_load_u8 v85, v33 offset:5888
	ds_load_u8 v86, v33 offset:5632
	ds_load_u8 v87, v33 offset:4352
	ds_load_u8 v88, v33 offset:4096
	ds_load_u8 v89, v33 offset:4864
	ds_load_u8 v90, v33 offset:4608
	ds_load_u8 v91, v33 offset:7424
	ds_load_u8 v92, v33 offset:7168
	ds_load_u8 v93, v33 offset:7936
	ds_load_u8 v94, v33 offset:7680
	ds_load_u8 v95, v33 offset:6400
	ds_load_u8 v96, v33 offset:6144
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v33 offset:6912
	ds_load_u8 v15, v76 offset:8544
	v_perm_b32 v12, v13, v12, 0xc0c0004
	v_lshl_or_b32 v77, v16, 16, v14
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v14, v19, v18, 0xc0c0004
	ds_load_u8 v16, v76 offset:8288
	ds_load_u8 v19, v76 offset:8416
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v18, v73, v20, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v20, v80, v79, 0xc0c0004
	ds_load_u8 v73, v76 offset:8352
	ds_load_u8 v13, v33 offset:6656
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v79, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v81, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v83, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v85, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v87, v90, v89, 0xc0c0004
	ds_load_u8 v90, v76 offset:8736
	ds_load_u8 v17, v76 offset:8480
	v_lshl_or_b32 v78, v12, 16, v10
	ds_load_u8 v10, v76 offset:8672
	ds_load_u8 v12, v76 offset:8608
	ds_load_u8 v80, v76 offset:9056
	ds_load_u8 v84, v76 offset:9184
	ds_load_u8 v88, v76 offset:8800
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v89, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v91, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v93, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v9, v9, v16, 0xc0c0004
	ds_load_u8 v92, v76 offset:8928
	ds_load_u8 v94, v76 offset:8864
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v19, v73, v19, 0xc0c0004
	ds_load_u8 v73, v76 offset:9312
	ds_load_u8 v86, v76 offset:9120
	ds_load_u8 v82, v76 offset:8992
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	ds_load_u8 v13, v76 offset:9568
	v_lshl_or_b32 v9, v19, 16, v9
	v_lshl_or_b32 v79, v79, 16, v20
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v15, v17, v15, 0xc0c0004
	v_lshl_or_b32 v101, v91, 16, v89
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v76 offset:9696
	v_lshl_or_b32 v100, v11, 16, v93
	v_lshl_or_b32 v10, v10, 16, v15
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v84, v86, v84, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v95, v82, v80, 0xc0c0004
	ds_load_u8 v80, v76 offset:9248
	ds_load_u8 v82, v76 offset:9440
	v_perm_b32 v86, v90, v88, 0xc0c0004
	v_perm_b32 v90, v94, v92, 0xc0c0004
	ds_load_u8 v92, v76 offset:10080
	ds_load_u8 v16, v76 offset:9632
	ds_load_u8 v17, v76 offset:9504
	ds_load_u8 v88, v76 offset:9376
	v_lshl_or_b32 v11, v90, 16, v86
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v73, v80, v73, 0xc0c0004
	ds_load_u8 v80, v76 offset:10144
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v16, v16, v12, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v13, v17, v13, 0xc0c0004
	ds_load_u8 v17, v76 offset:10016
	ds_load_u8 v12, v76 offset:10208
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v88, v88, v82, 0xc0c0004
	ds_load_u8 v82, v76 offset:9824
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v94, v80, v12, 0xc0c0004
	ds_load_u8 v12, v76 offset:9952
	ds_load_u8 v80, v76 offset:9888
	v_perm_b32 v17, v17, v92, 0xc0c0004
	ds_load_u8 v92, v76 offset:9760
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v96, v80, v12, 0xc0c0004
	v_lshl_or_b32 v80, v18, 16, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v92, v82, 0xc0c0004
	v_lshl_or_b32 v12, v84, 16, v95
	v_lshl_or_b32 v14, v16, 16, v13
	v_lshl_or_b32 v16, v94, 16, v17
	v_lshl_or_b32 v82, v83, 16, v81
	v_lshl_or_b32 v15, v96, 16, v92
	v_wmma_i32_16x16x16_iu4 v[89:96], v[77:78], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v81, v87, 16, v85
	v_lshl_or_b32 v13, v88, 16, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[89:96], v[79:80], v[11:12], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[81:82], v[13:14], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[89:96], v[100:101], v[15:16], v[89:96] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v84, v91
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v85, v92
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v17, v76 offset:8512
	ds_load_u8 v18, v76 offset:8448
	ds_load_u8 v19, v76 offset:8640
	ds_load_u8 v20, v76 offset:8576
	ds_load_u8 v73, v76 offset:8256
	ds_load_u8 v91, v76 offset:8192
	ds_load_u8 v92, v76 offset:8384
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v86, v93
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v93, v76 offset:9152
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v87, v94
	v_cvt_f32_i32_e32 v83, v90
	v_cvt_f32_i32_e32 v88, v95
	v_cvt_f32_i32_e32 v90, v96
	v_cvt_f32_i32_e32 v89, v89
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v76 offset:8320
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v76 offset:9024
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v73, v91, v73, 0xc0c0004
	ds_load_u8 v91, v76 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v91, v20, 0xc0c0004
	ds_load_u8 v91, v76 offset:8704
	v_perm_b32 v92, v18, v92, 0xc0c0004
	v_lshl_or_b32 v18, v19, 16, v17
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v17, v92, 16, v73
	ds_load_u8 v19, v76 offset:9088
	ds_load_u8 v73, v76 offset:8768
	ds_load_u8 v92, v76 offset:8896
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v19, v93, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v73, v91, v73, 0xc0c0004
	ds_load_u8 v91, v76 offset:8832
	v_lshl_or_b32 v20, v19, 16, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v91, v92, 0xc0c0004
	ds_load_u8 v92, v76 offset:9536
	v_lshl_or_b32 v19, v91, 16, v73
	ds_load_u8 v73, v76 offset:9472
	ds_load_u8 v91, v76 offset:9664
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v73, v73, v92, 0xc0c0004
	ds_load_u8 v92, v76 offset:9600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v76 offset:9280
	ds_load_u8 v93, v76 offset:9216
	v_lshl_or_b32 v109, v91, 16, v73
	ds_load_u8 v73, v76 offset:10048
	ds_load_u8 v91, v76 offset:9984
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v76 offset:9408
	ds_load_u8 v94, v76 offset:9344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v73, v91, v73, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v93, 16, v92
	ds_load_u8 v91, v76 offset:10176
	ds_load_u8 v92, v76 offset:10112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v76 offset:9792
	ds_load_u8 v93, v76 offset:9728
	v_lshl_or_b32 v111, v91, 16, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v76 offset:9920
	ds_load_u8 v94, v76 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v110, v93, 16, v92
	v_wmma_i32_16x16x16_iu4 v[91:98], v[77:78], v[17:18], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[91:98], v[79:80], v[19:20], v[91:98] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[91:98], v[81:82], v[108:109], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[91:98], v[100:101], v[110:111], v[91:98] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v120, v91
	v_cvt_f32_i32_e32 v77, v92
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v91, v33 offset:1408
	ds_load_u8 v92, v33 offset:1152
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v79, v93
	v_cvt_f32_i32_e32 v81, v94
	v_cvt_f32_i32_e32 v73, v95
	v_cvt_f32_i32_e32 v78, v96
	v_cvt_f32_i32_e32 v80, v97
	v_cvt_f32_i32_e32 v82, v98
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v33 offset:1920
	ds_load_u8 v93, v33 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v33 offset:384
	ds_load_u8 v94, v33 offset:128
	v_lshl_or_b32 v113, v92, 16, v91
	ds_load_u8 v91, v33 offset:3456
	ds_load_u8 v92, v33 offset:3200
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v33 offset:896
	ds_load_u8 v95, v33 offset:640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v94, 16, v93
	ds_load_u8 v92, v33 offset:3968
	ds_load_u8 v93, v33 offset:3712
	v_wmma_i32_16x16x16_iu4 v[100:107], v[112:113], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v33 offset:2432
	ds_load_u8 v94, v33 offset:2176
	v_lshl_or_b32 v115, v92, 16, v91
	ds_load_u8 v91, v33 offset:5504
	ds_load_u8 v92, v33 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v33 offset:2944
	ds_load_u8 v95, v33 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v94, 16, v93
	ds_load_u8 v92, v33 offset:6016
	ds_load_u8 v93, v33 offset:5760
	v_wmma_i32_16x16x16_iu4 v[100:107], v[114:115], v[11:12], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v33 offset:4480
	ds_load_u8 v94, v33 offset:4224
	v_lshl_or_b32 v117, v92, 16, v91
	ds_load_u8 v91, v33 offset:7552
	ds_load_u8 v92, v33 offset:7296
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v33 offset:4992
	ds_load_u8 v95, v33 offset:4736
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v116, v94, 16, v93
	ds_load_u8 v92, v33 offset:8064
	ds_load_u8 v93, v33 offset:7808
	v_wmma_i32_16x16x16_iu4 v[100:107], v[116:117], v[13:14], v[100:107] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v33 offset:6528
	ds_load_u8 v94, v33 offset:6272
	v_lshl_or_b32 v119, v92, 16, v91
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v33 offset:7040
	ds_load_u8 v95, v33 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v118, v94, 16, v93
	v_wmma_i32_16x16x16_iu4 v[100:107], v[118:119], v[15:16], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v95, v100
	v_cvt_f32_i32_e32 v96, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v97, v106
	v_cvt_f32_i32_e32 v98, v107
	v_cvt_f32_i32_e32 v91, v101
	v_cvt_f32_i32_e32 v92, v102
	v_cvt_f32_i32_e32 v93, v103
	v_cvt_f32_i32_e32 v94, v104
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[100:107], v[112:113], v[17:18], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[114:115], v[19:20], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[116:117], v[108:109], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[118:119], v[110:111], v[100:107] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v14, v100
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v15, v105
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v100, 16, v64
	v_lshlrev_b32_e32 v11, 16, v99
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v99, v27, v28
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v16, v106
	v_cvt_f32_i32_e32 v17, v107
	v_cvt_f32_i32_e32 v9, v101
	v_cvt_f32_i32_e32 v10, v102
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v19, v99, s[36:39], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v12, v103
	v_cvt_f32_i32_e32 v13, v104
	v_mul_f32_e32 v18, v11, v120
	v_mul_f32_e32 v14, v11, v14
	v_mul_f32_e32 v15, v11, v15
	v_dual_mul_f32 v64, v100, v95 :: v_dual_mul_f32 v17, v11, v17
	v_dual_mul_f32 v20, v100, v98 :: v_dual_mul_f32 v81, v11, v81
	v_dual_mul_f32 v88, v100, v88 :: v_dual_mul_f32 v79, v11, v79
	v_mul_f32_e32 v87, v100, v87
	v_dual_mul_f32 v86, v100, v86 :: v_dual_mul_f32 v77, v11, v77
	v_dual_mul_f32 v95, v100, v84 :: v_dual_mul_f32 v82, v11, v82
	v_dual_mul_f32 v91, v100, v91 :: v_dual_mul_f32 v16, v11, v16
	v_mul_f32_e32 v80, v11, v80
	v_mul_f32_e32 v78, v11, v78
	v_mul_f32_e32 v73, v11, v73
	v_mul_f32_e32 v13, v11, v13
	v_mul_f32_e32 v12, v11, v12
	v_mul_f32_e32 v10, v11, v10
	v_mul_f32_e32 v9, v11, v9
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v11, v99, s[36:39], 0 offen offset:8
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v84, v100, v93 :: v_dual_lshlrev_b32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v52, v18, v19
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v18, v100, v89
	v_mul_f32_e32 v89, v100, v90
	v_mul_f32_e32 v90, v100, v85
	v_dual_mul_f32 v85, v100, v92 :: v_dual_fmac_f32 v56, v18, v19
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	buffer_load_u16 v92, v99, s[36:39], 0 offen offset:4
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v18, v100, v96 :: v_dual_lshlrev_b32 v93, 16, v11
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v11, v99, s[36:39], 0 offen offset:16
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v100, v97
	v_mul_f32_e32 v96, v100, v83
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v63, v95, v93 :: v_dual_add_nc_u32 v28, s48, v28
	v_fmac_f32_e32 v55, v79, v93
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	buffer_load_u16 v79, v99, s[36:39], 0 offen offset:20
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v92, 16, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v53, v77, v92
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v77, v99, s[36:39], 0 offen offset:12
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v58, v96, v92 :: v_dual_lshlrev_b32 v77, 16, v77
	v_dual_fmac_f32 v59, v90, v77 :: v_dual_add_nc_u32 v30, 2, v30
	v_dual_fmac_f32 v54, v81, v77 :: v_dual_lshlrev_b32 v81, 16, v11
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v11, v99, s[36:39], 0 offen offset:24
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v83, v100, v94 :: v_dual_fmac_f32 v48, v73, v81
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v73, 16, v79
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v32, s34, v32
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v60, v86, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v49, v78, v73
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v78, v99, s[36:39], 0 offen offset:28
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v61, v87, v73
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v79, 16, v11
	buffer_load_u16 v11, v99, s[36:39], 0 offen offset:256
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v62, v88, v79 :: v_dual_add_nc_u32 v29, 2, v29
	v_fmac_f32_e32 v50, v80, v79
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v80, v99, s[36:39], 0 offen offset:260
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v78, 16, v78
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v51, v82, v78 :: v_dual_lshlrev_b32 v82, 16, v11
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v11, v99, s[36:39], 0 offen offset:264
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v65, v14, v82 :: v_dual_lshlrev_b32 v14, 16, v80
	v_fmac_f32_e32 v69, v64, v82
	v_fmac_f32_e32 v40, v9, v14
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v9, v99, s[36:39], 0 offen offset:268
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v44, v91, v14
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v80, 16, v11
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v41, v10, v80
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v10, v99, s[36:39], 0 offen offset:272
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v94, 16, v9
	buffer_load_u16 v9, v99, s[36:39], 0 offen offset:276
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v45, v85, v80 :: v_dual_fmac_f32 v46, v84, v94
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v97, 16, v10
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v42, v12, v94 :: v_dual_fmac_f32 v43, v13, v97
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v10, v99, s[36:39], 0 offen offset:280
	buffer_load_u16 v13, v99, s[36:39], 0 offen offset:284
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v98, 16, v9
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v9, 0x80000000, v31, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v31, s49, v31
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v47, v83, v97 :: v_dual_fmac_f32 v68, v18, v98
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v72, v15, v98 :: v_dual_lshlrev_b32 v13, 16, v13
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v15, 16, v10
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v57, v89, v78
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v70, v17, v13 :: v_dual_fmac_f32 v71, v16, v15
	v_dual_fmac_f32 v67, v19, v15 :: v_dual_fmac_f32 v66, v20, v13
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_barrier
	ds_store_b32 v22, v34 offset:8192
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v23, v[9:12]
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow294
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v1, 32, v21
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v2, s46, v21
	s_mul_i32 s1, s44, s46
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s0, s0, 0
	v_dual_mov_b32 v23, 0 :: v_dual_and_b32 v64, 0x1f0, v0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s46, v1
	s_add_i32 s1, s1, s0
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v73, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v2, s1, v2, 1
	v_mov_b32_e32 v28, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v3, 0
	v_add_lshl_u32 v1, s1, v1, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v11, 0
	s_clause 0x1
	buffer_load_u16 v77, v2, s[28:31], 0 offen
	buffer_load_u16 v78, v1, s[28:31], 0 offen
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v84, 0
	v_mov_b32_e32 v27, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	s_mov_b32 s12, 0
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	ds_load_u8 v17, v76 offset:9024
	ds_load_u8 v18, v76 offset:8960
	ds_load_u8 v1, v76 offset:8512
	ds_load_u8 v2, v76 offset:8448
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v76 offset:9152
	ds_load_u8 v19, v76 offset:9088
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v76 offset:8640
	ds_load_u8 v3, v76 offset:8576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v32, v18, 16, v17
	ds_load_u8 v17, v76 offset:8768
	ds_load_u8 v18, v76 offset:8704
	v_lshl_or_b32 v30, v2, 16, v1
	ds_load_u8 v1, v76 offset:8256
	ds_load_u8 v2, v76 offset:8192
	ds_load_u8 v87, v76 offset:8224
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v76 offset:8896
	ds_load_u8 v19, v76 offset:8832
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v76 offset:8384
	ds_load_u8 v3, v76 offset:8320
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v31, v18, 16, v17
	ds_load_u8 v17, v33 offset:3328
	ds_load_u8 v18, v33 offset:3072
	v_lshl_or_b32 v29, v2, 16, v1
	ds_load_u8 v1, v33 offset:1280
	ds_load_u8 v2, v33 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v33 offset:3840
	ds_load_u8 v19, v33 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v33 offset:1792
	ds_load_u8 v3, v33 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v82, v18, 16, v17
	ds_load_u8 v17, v33 offset:2304
	ds_load_u8 v18, v33 offset:2048
	v_lshl_or_b32 v80, v2, 16, v1
	ds_load_u8 v1, v33 offset:256
	ds_load_u8 v2, v33
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v33 offset:2816
	ds_load_u8 v19, v33 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v33 offset:768
	ds_load_u8 v3, v33 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v81, v18, 16, v17
	ds_load_u8 v17, v76 offset:9536
	ds_load_u8 v18, v76 offset:9472
	v_lshl_or_b32 v79, v2, 16, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[79:80], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v76 offset:9664
	ds_load_u8 v19, v76 offset:9600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v18, 16, v17
	ds_load_u8 v17, v76 offset:9280
	ds_load_u8 v18, v76 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v76 offset:9408
	ds_load_u8 v19, v76 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v18, 16, v17
	ds_load_u8 v17, v33 offset:5376
	ds_load_u8 v18, v33 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v33 offset:5888
	ds_load_u8 v19, v33 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v18, 16, v17
	ds_load_u8 v17, v33 offset:4352
	ds_load_u8 v18, v33 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v33 offset:4864
	ds_load_u8 v19, v33 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v18, 16, v17
	ds_load_u8 v17, v76 offset:10048
	ds_load_u8 v18, v76 offset:9984
	v_wmma_i32_16x16x16_iu4 v[9:16], v[93:94], v[83:84], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v76 offset:10176
	ds_load_u8 v19, v76 offset:10112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v18, 16, v17
	ds_load_u8 v17, v76 offset:9792
	ds_load_u8 v18, v76 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v76 offset:9920
	ds_load_u8 v19, v76 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v18, 16, v17
	ds_load_u8 v17, v33 offset:7424
	ds_load_u8 v18, v33 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v33 offset:7936
	ds_load_u8 v19, v33 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v18, 16, v17
	ds_load_u8 v17, v33 offset:6400
	ds_load_u8 v18, v33 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v33 offset:6912
	ds_load_u8 v19, v33 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v95, v18, 16, v17
	ds_load_u8 v17, v33 offset:1408
	ds_load_u8 v18, v33 offset:1152
	v_wmma_i32_16x16x16_iu4 v[9:16], v[95:96], v[85:86], v[9:16] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v33 offset:1920
	ds_load_u8 v19, v33 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v18, 16, v17
	ds_load_u8 v17, v33 offset:384
	ds_load_u8 v18, v33 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v33 offset:896
	ds_load_u8 v19, v33 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[17:24], v[27:28], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v29, v33 offset:3456
	ds_load_u8 v30, v33 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v33 offset:3968
	ds_load_u8 v34, v33 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v34, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	ds_load_u8 v29, v33 offset:2432
	ds_load_u8 v34, v33 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v34, v29, 0xc0c0004
	ds_load_u8 v34, v33 offset:2944
	ds_load_u8 v88, v33 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v88, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v34, 16, v29
	v_wmma_i32_16x16x16_iu4 v[17:24], v[29:30], v[31:32], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v31, v33 offset:5504
	ds_load_u8 v32, v33 offset:5248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v33 offset:6016
	ds_load_u8 v34, v33 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v34, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v32, 16, v31
	ds_load_u8 v31, v33 offset:4480
	ds_load_u8 v34, v33 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v34, v31, 0xc0c0004
	ds_load_u8 v34, v33 offset:4992
	ds_load_u8 v88, v33 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v88, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v34, 16, v31
	v_wmma_i32_16x16x16_iu4 v[17:24], v[31:32], v[83:84], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v34, v33 offset:7552
	ds_load_u8 v83, v33 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v83, v34, 0xc0c0004
	ds_load_u8 v83, v33 offset:8064
	ds_load_u8 v84, v33 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v83, 16, v34
	ds_load_u8 v83, v33 offset:6528
	ds_load_u8 v84, v33 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v33 offset:7040
	ds_load_u8 v33, v33 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v33, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v33, 16, v83
	ds_load_u8 v83, v76 offset:8544
	ds_load_u8 v84, v76 offset:8480
	v_wmma_i32_16x16x16_iu4 v[17:24], v[33:34], v[85:86], v[17:24] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v76 offset:8672
	ds_load_u8 v85, v76 offset:8608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v76 offset:8416
	ds_load_u8 v86, v76 offset:8352
	v_lshl_or_b32 v84, v84, 16, v83
	ds_load_u8 v83, v76 offset:8288
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v87, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v83, v85, 16, v83
	v_wmma_i32_16x16x16_iu4 v[85:92], v[79:80], v[83:84], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v79, v76 offset:9056
	ds_load_u8 v80, v76 offset:8992
	v_wmma_i32_16x16x16_iu4 v[1:8], v[27:28], v[83:84], v[1:8] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v83, v9
	v_cvt_f32_i32_e32 v84, v12
	v_cvt_f32_i32_e32 v12, v17
	v_cvt_f32_i32_e32 v9, v18
	v_cvt_f32_i32_e32 v27, v19
	v_cvt_f32_i32_e32 v28, v22
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v76 offset:9184
	ds_load_u8 v97, v76 offset:9120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v97, v80, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v80, 16, v79
	ds_load_u8 v79, v76 offset:8800
	ds_load_u8 v97, v76 offset:8736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v97, v79, 0xc0c0004
	ds_load_u8 v97, v76 offset:8928
	ds_load_u8 v98, v76 offset:8864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v79, v97, 16, v79
	v_wmma_i32_16x16x16_iu4 v[85:92], v[81:82], v[79:80], v[85:92] neg_lo:[1,1,0]
	ds_load_u8 v81, v76 offset:9568
	ds_load_u8 v82, v76 offset:9504
	v_wmma_i32_16x16x16_iu4 v[1:8], v[29:30], v[79:80], v[1:8] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v80, v13
	v_cvt_f32_i32_e32 v29, v20
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v76 offset:9696
	ds_load_u8 v97, v76 offset:9632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v97, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v82, 16, v81
	ds_load_u8 v81, v76 offset:9312
	ds_load_u8 v97, v76 offset:9248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v97, v81, 0xc0c0004
	ds_load_u8 v97, v76 offset:9440
	ds_load_u8 v98, v76 offset:9376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v97, 16, v81
	v_wmma_i32_16x16x16_iu4 v[85:92], v[93:94], v[81:82], v[85:92] neg_lo:[1,1,0]
	ds_load_u8 v93, v76 offset:10080
	ds_load_u8 v94, v76 offset:10016
	v_wmma_i32_16x16x16_iu4 v[1:8], v[31:32], v[81:82], v[1:8] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v81, v14
	v_cvt_f32_i32_e32 v82, v16
	v_cvt_f32_i32_e32 v31, v21
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	ds_load_u8 v94, v76 offset:10208
	ds_load_u8 v97, v76 offset:10144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v97, v94, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v94, 16, v93
	ds_load_u8 v93, v76 offset:9824
	ds_load_u8 v97, v76 offset:9760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v97, v93, 0xc0c0004
	ds_load_u8 v97, v76 offset:9952
	ds_load_u8 v76, v76 offset:9888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v76, v97, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v93, v76, 16, v93
	v_wmma_i32_16x16x16_iu4 v[85:92], v[95:96], v[93:94], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[33:34], v[93:94], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v13, v85
	v_cvt_f32_i32_e32 v14, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v18, v87
	v_cvt_f32_i32_e32 v16, v88
	v_cvt_f32_i32_e32 v17, v89
	v_cvt_f32_i32_e32 v19, v90
	v_cvt_f32_i32_e32 v21, v91
	v_cvt_f32_i32_e32 v22, v92
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v20, v2
	v_cvt_f32_i32_e32 v34, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v79, v5
	v_cvt_f32_i32_e32 v2, v6
	v_cvt_f32_i32_e32 v3, v7
	v_cvt_f32_i32_e32 v6, v8
.LBB0_8:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v7, v75, v74
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s0, s0, s35
.Ltmp22:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v5.l, 0
.Ltmp23:
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s45, s45, s0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v5.h, v78.l
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	v_add_lshl_u32 v7, s45, v7, 1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v74.h, v77.l
	v_mov_b16_e32 v74.l, v5.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s7, 0x31027000
	v_add_nc_u32_e32 v30, 4, v7
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v1, v1, v5 :: v_dual_add_nc_u32 v32, 8, v7
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v86, 0x104, v7
	v_cndmask_b32_e64 v8, 0x80000000, v7, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v23, v23, v74
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	v_cndmask_b32_e64 v86, 0x80000000, v86, s2
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s10
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v12, v12, v74 :: v_dual_add_nc_u32 v87, 0x108, v7
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x3
	buffer_load_u16 v8, v8, s[4:7], 0 offen
	buffer_load_u16 v30, v30, s[4:7], 0 offen
	buffer_load_u16 v33, v32, s[4:7], 0 offen
	buffer_load_u16 v86, v86, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v3, v3, v5 :: v_dual_add_nc_u32 v32, 12, v7
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v87, 0x80000000, v87, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v21, v21, v5 :: v_dual_add_nc_u32 v88, 0x10c, v7
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v28, v28, v74 :: v_dual_add_nc_u32 v89, 0x110, v7
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v87, v87, s[4:7], 0 offen
	v_cndmask_b32_e64 v88, 0x80000000, v88, s2
	buffer_load_u16 v75, v32, s[4:7], 0 offen
	v_add_nc_u32_e32 v32, 16, v7
	v_cndmask_b32_e64 v89, 0x80000000, v89, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v19, v5
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v88, v88, s[4:7], 0 offen
	v_add_nc_u32_e32 v90, 0x114, v7
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v24, v24, v74 :: v_dual_add_nc_u32 v91, 0x118, v7
	v_mul_f32_e32 v14, v14, v5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v90, 0x80000000, v90, s2
	buffer_load_u16 v76, v32, s[4:7], 0 offen
	v_add_nc_u32_e32 v32, 20, v7
	buffer_load_u16 v89, v89, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v17, v17, v5
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v91, 0x80000000, v91, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v16, v16, v5
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v4, v4, v5
	s_mov_b32 s0, 0x76543210
.Ltmp24:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s1, s35, 31
.Ltmp25:
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v90, v90, s[4:7], 0 offen
	buffer_load_u16 v77, v32, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v13, v13, v5 :: v_dual_add_nc_u32 v32, 24, v7
.Ltmp26:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s1, s35, s1
.Ltmp27:
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v91, v91, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v2, v2, v5
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v11, v11, v74
.Ltmp28:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s1, s1, 1
.Ltmp29:
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v9, v9, v74 :: v_dual_mul_f32 v6, v6, v5
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v78, v32, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v27, v27, v74 :: v_dual_add_nc_u32 v32, 28, v7
	v_mul_f32_e32 v18, v18, v5
	v_mul_f32_e32 v10, v10, v74
	v_mul_f32_e32 v22, v22, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v29, v29, v74
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v85, v32, s[4:7], 0 offen
	v_add_nc_u32_e32 v32, 0x100, v7
	v_add_nc_u32_e32 v7, 0x11c, v7
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x1
	buffer_load_u16 v32, v32, s[4:7], 0 offen
	buffer_load_u16 v7, v7, s[4:7], 0 offen
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp31:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s5, s21, 0xffff
	s_mov_b32 s4, s20
.Ltmp32:
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v13, v13, v8, v56
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v56, v56, v13, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v13, v84, v74
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v90, 16, v90
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v91, 16, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v28, v28, v90, v72
	v_fma_f32 v2, v2, v90, v68
	v_fma_f32 v90, v3, v91, v67
	v_fma_f32 v92, v23, v91, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v3, v68, v2, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v68, 16, v76
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v72, v72, v28, s2
	v_cndmask_b32_e64 v2, v67, v90, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v67, 16, v77
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v17, v17, v68, v60
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v32, 16, v32
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v12, v12, v32, v65
	v_fma_f32 v24, v24, v7, v70
	v_fma_f32 v1, v1, v32, v69
	v_fma_f32 v6, v6, v7, v66
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v7, 16, v85
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v23, v65, v12, s2
	v_cndmask_b32_e64 v32, v70, v24, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v70, 16, v30
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v69, v1, s2
	v_cndmask_b32_e64 v1, v66, v6, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v6, 16, v33
	v_lshlrev_b32_e32 v69, 16, v75
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v14, v14, v70, v58
	v_fma_f32 v10, v10, v70, v53
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v66, 16, v78
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v18, v18, v6, v63
	v_fma_f32 v6, v11, v6, v55
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v33, v58, v14, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v14, v83, v74
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v24, v19, v67, v61
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v11, v53, v10, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v28, v16, v69, v59
	v_fma_f32 v16, v22, v7, v57
	v_fma_f32 v8, v14, v8, v52
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v22, v61, v24, s2
	v_cndmask_b32_e64 v24, v60, v17, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v14, v13, v69, v54
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v13, v55, v6, s2
	v_cndmask_b32_e64 v10, v52, v8, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v8, v15, v74
	v_mul_f32_e32 v15, v81, v74
	v_mul_f32_e32 v6, v82, v74
	v_mul_f32_e32 v17, v80, v74
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v19, v21, v66, v62
	v_fma_f32 v8, v8, v66, v50
	v_fma_f32 v15, v15, v67, v49
	v_fma_f32 v6, v6, v7, v51
	v_fma_f32 v52, v17, v68, v48
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v30, v63, v18, s2
	v_cndmask_b32_e64 v18, v50, v8, s2
	v_cndmask_b32_e64 v17, v49, v15, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v49, 16, v88
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v21, v51, v6, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v50, 16, v87
	v_lshlrev_b32_e32 v51, 16, v86
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v7, v34, v5
	v_mul_f32_e32 v8, v20, v5
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v4, v4, v49, v46
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v48, v52, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v48, 16, v89
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v9, v9, v51, v40
	v_fma_f32 v20, v8, v51, v44
	v_fma_f32 v8, v7, v50, v45
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v7, v46, v4, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v4, v31, v74
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v27, v27, v50, v41
	v_fma_f32 v29, v29, v49, v42
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v65, v71, v92, s2
	v_cndmask_b32_e64 v14, v54, v14, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v4, v4, v48, v43
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v6, v79, v5
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v31, v42, v29, s2
	v_cndmask_b32_e64 v29, v41, v27, s2
	v_cndmask_b32_e64 v27, v40, v9, s2
	v_cndmask_b32_e64 v34, v43, v4, s2
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v4, |v10|, |v10|
	v_max_f32_e64 v9, |v11|, |v11|
.Ltmp34:
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v6, v6, v48, v47
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v41, |v27|, |v29|, |v31|
	v_max3_f32 v42, |v34|, |v72|, |v65|
	v_max3_f32 v40, |v18|, |v21|, |v23|
	v_max_f32_e32 v4, v4, v9
	v_max3_f32 v9, |v14|, |v15|, |v17|
.Ltmp36:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v28, v59, v28, s2
	v_cndmask_b32_e64 v6, v47, v6, s2
	v_cndmask_b32_e64 v8, v45, v8, s2
	v_cndmask_b32_e64 v20, v44, v20, s2
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v4, v4, |v13|, v9
	v_max3_f32 v9, v41, v42, |v32|
.Ltmp38:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v16, v57, v16, s2
	v_cndmask_b32_e64 v19, v62, v19, s2
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v42, |v20|, |v8|, |v7|
	v_max3_f32 v43, |v6|, |v3|, |v2|
	v_max3_f32 v4, v4, v40, v9
	v_max_f32_e64 v9, |v56|, |v56|
	v_max_f32_e64 v40, |v33|, |v33|
	v_max3_f32 v41, |v19|, |v16|, |v12|
.Ltmp40:
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	s_mul_i32 s2, s44, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v40
	v_max3_f32 v40, |v28|, |v24|, |v22|
	v_max3_f32 v9, v9, |v30|, v40
	v_max3_f32 v40, v42, v43, |v1|
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v42, 1, v0
	v_and_b32_e32 v43, 8, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v9, v9, v41, v40
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v40, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v42, 0xf0, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v40, v4, v40
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v4, v9, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s0, 0xc1000000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v41, v9, v4
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_and_b32_e32 v4, 7, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b32_e32 v9, 4, v4
	v_lshl_add_u32 v4, v4, 8, 0
	v_xor_b32_e32 v44, v9, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v4, v4, v44, v43
	ds_store_b64 v4, v[40:41]
	v_lshl_or_b32 v4, v39, 3, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xor_b32_e32 v4, v4, v42
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v4, 0, v43, v4
	ds_load_b64 v[40:41], v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v4, v40
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v9, v4
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v9, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v4, v9
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v9, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v40, v4, v9
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v4, v41
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v41, v41
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v4, v9, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v9, v4
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	v_max_f32_e32 v4, v4, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v9, v4
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	v_max_f32_e32 v41, v4, v9
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v4, 2, v39
	v_lshrrev_b32_e32 v9, 1, v37
	v_lshl_add_u32 v39, v43, 3, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v4, v39, v4, v9
	ds_store_b64 v4, v[40:41]
	v_lshlrev_b32_e32 v4, 3, v38
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v9, 0, v4, v9
	ds_load_b64 v[38:39], v9
.Ltmp65:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v9, v38, v38 :: v_dual_max_f32 v38, v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v9, 0x2b8cbccc, v9 :: v_dual_max_f32 v38, 0x2b8cbccc, v38
	v_div_scale_f32 v39, null, 0x40e00000, 0x40e00000, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v9, 0x40e00000, v9
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v42, v41
	v_div_fmas_f32 v39, v39, v40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v9, v39, 0x40e00000, v9
	v_div_scale_f32 v39, null, 0x40e00000, 0x40e00000, v38
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v38, 0x40e00000, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v40, v42
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v40.l, v9.h
	v_mov_b16_e32 v40.h, v5.l
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v38, v39, 0x40e00000, v38
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v39.h, v5.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v39.l, v38.h
	v_and_b32_e32 v5, 1, v39
	v_and_b32_e32 v39, 1, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v38, v38, v5, 0x7fff
	v_add3_u32 v9, v9, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v5.h, v38.h
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v40, 0xffff0000, v9
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v5.l, v9.h
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v9, 0xffff0000, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v38, null, v40, v40, v10
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v41, v39
	v_div_scale_f32 v41, vcc_lo, v10, v40, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v39
	v_fma_f32 v43, -v38, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v39
	v_fma_f32 v38, -v38, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v42
	v_div_fixup_f32 v10, v38, v40, v10
	v_div_scale_f32 v38, null, v40, v40, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v41, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v41, v39
	v_div_scale_f32 v41, vcc_lo, v11, v40, v11
	v_mul_f32_e32 v42, v41, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v38, v42, v41
	v_fmac_f32_e32 v42, v43, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v42, v41
	v_div_fmas_f32 v38, v38, v39, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v11, v38, v40, v11
	v_div_scale_f32 v38, null, v40, v40, v13
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v41, v39
	v_div_scale_f32 v41, vcc_lo, v13, v40, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v39
	v_fma_f32 v43, -v38, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v39
	v_fma_f32 v38, -v38, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v42
	v_div_fixup_f32 v13, v38, v40, v13
	v_div_scale_f32 v38, null, v40, v40, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v41, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v41, v39
	v_div_scale_f32 v41, vcc_lo, v14, v40, v14
	v_mul_f32_e32 v42, v41, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v38, v42, v41
	v_fmac_f32_e32 v42, v43, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v42, v41
	v_div_fmas_f32 v38, v38, v39, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v14, v38, v40, v14
	v_div_scale_f32 v38, null, v40, v40, v15
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v41, v39
	v_div_scale_f32 v41, vcc_lo, v15, v40, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v39
	v_fma_f32 v43, -v38, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v39
	v_fma_f32 v38, -v38, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v42
	v_div_fixup_f32 v15, v38, v40, v15
	v_div_scale_f32 v38, null, v40, v40, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v41, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v41, v39
	v_div_scale_f32 v41, vcc_lo, v17, v40, v17
	v_mul_f32_e32 v42, v41, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v38, v42, v41
	v_fmac_f32_e32 v42, v43, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v42, v41
	v_div_fmas_f32 v38, v38, v39, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v17, v38, v40, v17
	v_div_scale_f32 v38, null, v40, v40, v18
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v41, v39
	v_div_scale_f32 v41, vcc_lo, v18, v40, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v39
	v_fma_f32 v43, -v38, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v39
	v_fma_f32 v38, -v38, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v42
	v_div_fixup_f32 v18, v38, v40, v18
	v_div_scale_f32 v38, null, v40, v40, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v41, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v41, v39
	v_div_scale_f32 v41, vcc_lo, v21, v40, v21
	v_mul_f32_e32 v42, v41, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v38, v42, v41
	v_fmac_f32_e32 v42, v43, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v42, v41
	v_div_fmas_f32 v38, v38, v39, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v21, v38, v40, v21
	v_div_scale_f32 v38, null, v40, v40, v23
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v41, v39
	v_div_scale_f32 v41, vcc_lo, v23, v40, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v39
	v_fma_f32 v43, -v38, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v39
	v_fma_f32 v38, -v38, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v42
	v_div_fixup_f32 v23, v38, v40, v23
	v_div_scale_f32 v38, null, v40, v40, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v41, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v41, v39
	v_div_scale_f32 v41, vcc_lo, v27, v40, v27
	v_mul_f32_e32 v42, v41, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v38, v42, v41
	v_fmac_f32_e32 v42, v43, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v42, v41
	v_div_fmas_f32 v38, v38, v39, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v27, v38, v40, v27
	v_div_scale_f32 v38, null, v40, v40, v29
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v41, v39
	v_div_scale_f32 v41, vcc_lo, v29, v40, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v39
	v_fma_f32 v43, -v38, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v39
	v_fma_f32 v38, -v38, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v42
	v_div_fixup_f32 v29, v38, v40, v29
	v_div_scale_f32 v38, null, v40, v40, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v41, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v41, v39
	v_div_scale_f32 v41, vcc_lo, v31, v40, v31
	v_mul_f32_e32 v42, v41, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v38, v42, v41
	v_fmac_f32_e32 v42, v43, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v42, v41
	v_div_fmas_f32 v38, v38, v39, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v31, v38, v40, v31
	v_div_scale_f32 v38, null, v40, v40, v34
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v41, v39
	v_div_scale_f32 v41, vcc_lo, v34, v40, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v39
	v_fma_f32 v43, -v38, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v39
	v_fma_f32 v38, -v38, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v42
	v_div_fixup_f32 v34, v38, v40, v34
	v_div_scale_f32 v38, null, v40, v40, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v41, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v41, v39
	v_div_scale_f32 v41, vcc_lo, v72, v40, v72
	v_mul_f32_e32 v42, v41, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v38, v42, v41
	v_fmac_f32_e32 v42, v43, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v42, v41
	v_div_fmas_f32 v38, v38, v39, v42
	v_div_scale_f32 v39, null, v40, v40, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v38, v38, v40, v72
	v_rcp_f32_e32 v41, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v39, v41, 1.0
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v65, v40, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v43, v42, v41
	v_fma_f32 v44, -v39, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v41
	v_fma_f32 v39, -v39, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v39, v39, v41, v43
	v_div_scale_f32 v41, null, v40, v40, v32
	v_div_fixup_f32 v39, v39, v40, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v41
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v32, v40, v32
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v32, v41, v40, v32
	v_div_scale_f32 v40, null, v9, v9, v56
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v41, v40
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v32, v32, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v32, v32
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v42, -v40, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v56, v9, v56
	v_mul_f32_e32 v43, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v40, v43, v42
	v_fmac_f32_e32 v43, v44, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v40, v43, v42
	v_div_fmas_f32 v40, v40, v41, v43
	v_div_scale_f32 v41, null, v9, v9, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v40, v40, v9, v56
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v33, v9, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v41, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v42, v44
	v_div_fixup_f32 v33, v41, v9, v33
	v_div_scale_f32 v41, null, v9, v9, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v33, v33
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v30, v9, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v41, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v42, v44
	v_div_fixup_f32 v30, v41, v9, v30
	v_div_scale_f32 v41, null, v9, v9, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v30, v30
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_cvt_i32_f32_e32 v30, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v28, v9, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v41, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v42, v44
	v_div_fixup_f32 v28, v41, v9, v28
	v_div_scale_f32 v41, null, v9, v9, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v28, v28
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v28, v28, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v24, v9, v24
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v24, v41, v9, v24
	v_div_scale_f32 v41, null, v9, v9, v22
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v24, v24, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v24, v24
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v22, v9, v22
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v22, v41, v9, v22
	v_div_scale_f32 v41, null, v9, v9, v19
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v22, v22, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v22, v22
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v19, v9, v19
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v19, v41, v9, v19
	v_div_scale_f32 v41, null, v9, v9, v16
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v19, v19, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v16, v9, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v41, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v42, v44
	v_div_fixup_f32 v16, v41, v9, v16
	v_div_scale_f32 v41, null, v9, v9, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v16, v16, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v12, v9, v12
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v12, v41, v9, v12
	v_div_scale_f32 v41, null, v9, v9, v20
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v12, v12, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v20, v9, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v41, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v42, v44
	v_div_fixup_f32 v20, v41, v9, v20
	v_div_scale_f32 v41, null, v9, v9, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v20, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v20, v20, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v8, v9, v8
	v_mul_f32_e32 v44, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v41, v44, v43
	v_fmac_f32_e32 v44, v45, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v44, v43
	v_div_fmas_f32 v41, v41, v42, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v8, v41, v9, v8
	v_div_scale_f32 v41, null, v9, v9, v7
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v8, v8, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v7, v9, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v41, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v42, v44
	v_div_fixup_f32 v7, v41, v9, v7
	v_div_scale_f32 v41, null, v9, v9, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_cvt_i32_f32_e32 v46, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v6, v9, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v41, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v42, v44
	v_div_fixup_f32 v6, v41, v9, v6
	v_div_scale_f32 v41, null, v9, v9, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_cvt_i32_f32_e32 v47, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v3, v9, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v41, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v42, v44
	v_div_fixup_f32 v3, v41, v9, v3
	v_div_scale_f32 v41, null, v9, v9, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v3, v3
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_cvt_i32_f32_e32 v3, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v2, v9, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v42
	v_fma_f32 v41, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v41, v41, v42, v44
	v_div_fixup_f32 v2, v41, v9, v2
	v_div_scale_f32 v41, null, v9, v9, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v2, v2
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v2, v2, s0, 0x40e00000
	v_cvt_i32_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v41, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v1, v9, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v45, -v41, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v45, v42
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v45, v8
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v41, -v41, v44, v43
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v43, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v41, v41, v42, v44
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v44, v20
	v_cvt_i32_f32_e32 v42, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v1, v41, v9, v1
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v9, v10
	v_rndne_f32_e32 v10, v11
	v_rndne_f32_e32 v11, v13
	v_rndne_f32_e32 v13, v14
	v_rndne_f32_e32 v14, v15
	v_rndne_f32_e32 v15, v17
	v_rndne_f32_e32 v17, v18
	v_rndne_f32_e32 v18, v21
	v_rndne_f32_e32 v21, v23
	v_rndne_f32_e32 v23, v27
	v_rndne_f32_e32 v27, v29
	v_rndne_f32_e32 v29, v31
	v_rndne_f32_e32 v1, v1
	v_rndne_f32_e32 v31, v34
	v_rndne_f32_e32 v34, v38
	v_rndne_f32_e32 v38, v39
	v_rndne_f32_e32 v39, v40
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v1, v1, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v40, v28
	v_cvt_i32_f32_e32 v1, v1
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v39, v39
	v_and_b32_e32 v12, 15, v17
	v_and_b32_e32 v17, 15, v29
	v_and_b32_e32 v29, 15, v30
	v_and_b32_e32 v30, 15, v40
	v_and_b32_e32 v40, 15, v45
	v_and_b32_e32 v45, 15, v1
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v1, 11, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v10, v10
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v21, v21
	v_and_b32_e32 v16, 15, v27
	v_and_b32_e32 v20, 15, v38
	v_and_b32_e32 v27, 15, v39
	v_and_b32_e32 v38, 15, v43
	v_and_b32_e32 v39, 15, v44
	v_and_b32_e32 v43, 15, v3
	v_and_b32_e32 v44, 15, v2
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v1, 0x3000, v1
	v_and_b32_e32 v2, 0x160, v0
	v_lshlrev_b32_e32 v3, 7, v73
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v7, 15, v10
	v_and_b32_e32 v10, 15, v14
	v_and_b32_e32 v14, 15, v21
	v_and_b32_e32 v21, 15, v32
	v_and_b32_e32 v32, 15, v22
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v22, 0x200, v36
	v_xor_b32_e32 v2, v26, v2
	v_add3_u32 v1, 0, v1, v3
	v_lshlrev_b32_e32 v3, 5, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v1, v1, v22, v2
	v_lshlrev_b32_e32 v2, 7, v0
	v_and_b32_e32 v3, 0x60, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_cvt_i32_f32_e32 v9, v9
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v13, v13
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v2, 0x3600, v2, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v23, v23
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_and_b32_e32 v6, 15, v9
	v_and_b32_e32 v8, 15, v11
	v_and_b32_e32 v9, 15, v13
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xad_u32 v2, v2, v64, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_and_b32_e32 v11, 15, v15
	v_and_b32_e32 v15, 15, v23
	v_cvt_i32_f32_e32 v18, v18
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v1, v[6:9]
	ds_store_b128 v1, v[14:17] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v2
	ds_load_b128 v[14:17], v2 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v41, v19
	v_and_b32_e32 v13, 15, v18
	v_and_b32_e32 v28, 15, v33
	v_and_b32_e32 v18, 15, v31
	v_and_b32_e32 v19, 15, v34
	v_and_b32_e32 v33, 15, v41
	v_and_b32_e32 v41, 15, v46
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v1, v[27:30]
	ds_store_b128 v1, v[38:41] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v2
	ds_load_b128 v[38:41], v2 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v1, v[10:13]
	ds_store_b128 v1, v[18:21] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v2
	ds_load_b128 v[18:21], v2 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v31, 15, v24
	v_and_b32_e32 v34, 15, v42
	v_and_b32_e32 v42, 15, v47
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v1, v[31:34]
	ds_store_b128 v1, v[42:45] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[30:33], v2
	ds_load_b128 v[42:45], v2 offset:2048
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v2, v14, 4, v6
	v_lshl_or_b32 v6, v16, 4, v8
	v_lshl_or_b32 v1, v17, 4, v9
	v_lshl_or_b32 v3, v15, 4, v7
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s0, s33, 7
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v14, v41, 4, v29
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v6.l
	v_lshlrev_b16 v1.l, 8, v1.l
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v4, s2, s0, v4
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v7, v18, 4, v10
	v_lshl_or_b32 v9, v20, 4, v12
	v_lshl_or_b32 v10, v21, 4, v13
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v2.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v3.l
	v_and_b16 v1.h, 0xff, v2.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v8, v19, 4, v11
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v19, s1, v35
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v13, v40, 4, v28
	v_lshl_or_b32 v11, v38, 4, v26
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v2.l, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v10.l
	v_and_b16 v1.h, 0xff, v9.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v12, v39, 4, v27
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v17, v44, 4, v32
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add_nc_u32_e32 v20, v4, v19
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v18, v45, 4, v33
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v3.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v8.l
	v_and_b16 v1.h, 0xff, v7.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v15, v42, 4, v30
	v_lshl_or_b32 v16, v43, 4, v31
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s1, s1, 5
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v3.l, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v14.l
	v_and_b16 v1.h, 0xff, v13.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v4, v19, s1, v4
	.loc	1 87 34 is_stmt 1               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[2:3], v20, s[4:7], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v2.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v12.l
	v_and_b16 v1.h, 0xff, v11.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v2.l, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v18.l
	v_and_b16 v1.h, 0xff, v17.l
	v_or_b16 v3.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v16.l
	v_and_b16 v1.h, 0xff, v15.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v3.l, v1.h, v1.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v1, v0, 63, s44
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v0, 0x1c0, v0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[2:3], v4, s[4:7], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshrrev_b32_e32 v2, 2, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v3, 2, v35
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v1, v1, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v2, 0, v25, v2
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_and_b32 s5, s23, 0xffff
	s_mov_b32 s4, s22
	ds_store_b32 v2, v5
	v_and_b32_e32 v2, 0x7c, v36
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_lshl_u32 v0, v1, s33, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v2, 0, v2, v3
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	ds_load_u16 v1, v2
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[4:7], 0 offen
.Ltmp66:
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp67:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 121
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 121
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14284
; TotalNumSgprs: 52
; NumVgprs: 121
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 52
; NumVGPRsForWavesPerEU: 121
; Occupancy: 10
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
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     121
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
