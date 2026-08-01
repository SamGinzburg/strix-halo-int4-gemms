	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s8, s2
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v7, 2, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v73, 15, v0
	v_lshrrev_b32_e32 v3, 5, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v2, 0x7c, v7
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v81, 0, v7
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s26, 15
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
	s_lshr_b32 s11, s11, 28
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
	s_ashr_i32 s9, s9, 4
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
	s_abs_i32 s7, s6
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s17, s7
	s_abs_i32 s18, s2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_bfe_u32 v1, v0, 4, 4
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s39, s11
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_mad_u64_u32 v[4:5], null, s26, v73, v[1:2]
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[5:6], null, s27, v3, v[2:3]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s7
	s_mul_i32 s17, s17, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s6
	s_add_i32 s5, s10, s5
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s5, s18, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s19, s5, s7
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s38, s10
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
	s_xor_b32 s18, s5, s17
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s19, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s20, s4, 31
.Ltmp13:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s5, s18, s17
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v6, s7, v73
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s19
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s6, s5, s6
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v8, s7, v3
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s19, s4, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 27
.Ltmp17:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s6
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s23, s20, s3
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s19, v6
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 16, v6
	.loc	1 120 13 is_stmt 1              ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s16
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	s_mul_i32 s21, s26, s7
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s33, s5, 7
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s5, s19, v8
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 16, v8
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s6, s23, 5
.Ltmp21:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s34, s2, 4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s20, 31
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s22, s27, s7
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_add3_u32 v4, s21, s34, v4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s16, s3, vcc_lo
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add3_u32 v5, s22, s33, v5
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s5, s4, s5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_and_b32 s37, s37, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_u8 v4, v4, s[8:11], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b32 v5, v5, s[36:39], 0 offen
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_bfe_i32 v6, v0, 7, 1
	v_and_b32_e32 v8, 0x7f, v0
	s_mov_b32 s5, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s20, 63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_and_b32_e32 v6, 0x88, v6
	v_xor_b32_e32 v6, v6, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v80, 0, v6
	s_waitcnt vmcnt(1)
	ds_store_b8 v80, v4 offset:2048
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v81, v5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_mov_b64 s[30:31], s[10:11]
	s_mov_b32 s5, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr28_sgpr29
.LBB0_3:                                ; %Flow585
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[24:25], s[0:1], 0x20
	v_bfe_u32 v74, v0, 4, 1
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_bfe_i32 v77, v0, 3, 1
	v_dual_mov_b32 v14, 0 :: v_dual_lshlrev_b32 v79, 4, v0
	v_dual_mov_b32 v12, 0 :: v_dual_add_nc_u32 v75, 0, v73
	v_or_b32_e32 v76, 0x3f0, v0
	v_or_b32_e32 v78, 0x7f0, v0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v61, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s5, s6, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s16, 0
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_add_i32 s7, s7, 16
	s_lshl_b32 s0, s18, 8
	s_lshl_b32 s1, s17, 8
	v_sub_nc_u32_e32 v82, s19, v73
	v_sub_nc_u32_e32 v83, s19, v3
	s_sub_i32 s48, s0, s1
	s_lshl_b32 s0, s17, 7
	s_mov_b32 s17, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v6, s7, v3
	v_dual_mov_b32 v61, 0 :: v_dual_and_b32 v4, 0x70, v79
	s_lshl_b32 s18, s18, 7
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v91, 0, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v6, s27, v6
	v_and_or_b32 v4, 0x88, v77, v4
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v5, 8, v4
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_add3_u32 v2, v6, s18, v2
	s_mov_b32 s18, s16
	v_add_nc_u32_e32 v3, s34, v73
	v_add_nc_u32_e32 v7, s7, v73
	v_lshlrev_b32_e32 v84, 1, v74
	v_subrev_nc_u32_e32 v86, s0, v2
	v_add_nc_u32_e32 v88, 0, v4
	v_mul_lo_u32 v3, s6, v3
	v_mul_lo_u32 v7, s26, v7
	v_add_nc_u32_e32 v89, 0, v5
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v90, 0, v76
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_lshlrev_b32 v85, 1, v3
	v_add3_u32 v87, v7, s34, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v9, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_mov_b64 s[28:29], s[12:13]
	s_max_i32 s35, s5, 1
	s_lshl_b32 s49, s27, 1
	s_lshl_b32 s50, s27, 4
	s_lshl_b32 s26, s26, 4
	s_mov_b32 s44, s12
	s_mov_b32 s45, s13
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	buffer_load_u16 v99, v85, s[44:47], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s7, v82
	v_cmp_lt_i32_e64 s0, s7, v83
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s35, s35, -1
	s_add_i32 s7, s7, 16
	v_add_nc_u32_e32 v85, 2, v85
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s1, vcc_lo, s3
	s_and_b32 vcc_lo, s0, s4
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e64 v92, 0x80000000, v87, s1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v87, s26, v87
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_u8 v92, v92, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v94, v75 offset:512
	ds_load_u8 v95, v75 offset:640
	ds_load_u8 v96, v75 offset:656
	ds_load_u8 v97, v75 offset:672
	ds_load_u8 v98, v75 offset:688
	ds_load_u8 v101, v75 offset:704
	ds_load_u8 v108, v75 offset:720
	ds_load_u8 v117, v75 offset:736
	ds_load_u8 v118, v75 offset:752
	ds_load_u8 v100, v75 offset:528
	ds_load_u8 v102, v75 offset:544
	ds_load_u8 v119, v75 offset:560
	ds_load_u8 v120, v75 offset:576
	ds_load_u8 v121, v75 offset:592
	ds_load_u8 v122, v75 offset:608
	ds_load_u8 v123, v75 offset:624
	ds_load_u8 v111, v75 offset:768
	ds_load_u8 v112, v75 offset:896
	ds_load_u8 v113, v75 offset:912
	ds_load_u8 v115, v75 offset:928
	ds_load_u8 v124, v75 offset:944
	ds_load_u8 v125, v75 offset:960
	ds_load_u8 v126, v75 offset:976
	ds_load_u8 v127, v75 offset:992
	ds_load_u8 v114, v75 offset:784
	ds_load_u8 v116, v75 offset:800
	ds_load_u8 v128, v75 offset:816
	ds_load_u8 v129, v75 offset:832
	ds_load_u8 v130, v75 offset:848
	ds_load_u8 v131, v75 offset:864
	ds_load_u8 v132, v75 offset:880
	ds_load_u8 v133, v75
	ds_load_u8 v134, v75 offset:128
	ds_load_u8 v135, v75 offset:144
	ds_load_u8 v136, v75 offset:160
	ds_load_u8 v137, v75 offset:176
	ds_load_u8 v138, v75 offset:192
	ds_load_u8 v139, v75 offset:208
	ds_load_u8 v140, v75 offset:224
	ds_load_u8 v141, v75 offset:240
	ds_load_u8 v142, v75 offset:16
	ds_load_u8 v143, v75 offset:32
	ds_load_u8 v144, v75 offset:48
	ds_load_u8 v145, v75 offset:64
	ds_load_u8 v146, v75 offset:80
	ds_load_u8 v147, v75 offset:96
	ds_load_u8 v148, v75 offset:112
	ds_load_u8 v149, v75 offset:256
	ds_load_u8 v150, v75 offset:384
	ds_load_u8 v151, v75 offset:400
	ds_load_u8 v152, v75 offset:416
	ds_load_u8 v153, v75 offset:432
	ds_load_u8 v154, v75 offset:448
	ds_load_u8 v155, v75 offset:464
	ds_load_u8 v156, v75 offset:480
	ds_load_u8 v157, v75 offset:496
	ds_load_u8 v158, v75 offset:272
	ds_load_u8 v159, v75 offset:288
	ds_load_u8 v160, v75 offset:304
	ds_load_u8 v161, v75 offset:320
	ds_load_u8 v162, v75 offset:336
	ds_load_u8 v163, v75 offset:352
	ds_load_u8 v164, v75 offset:368
	ds_load_u8 v165, v75 offset:1664
	ds_load_u8 v166, v75 offset:1536
	ds_load_u8 v167, v75 offset:1520
	ds_load_u8 v168, v75 offset:1648
	ds_load_u8 v169, v75 offset:1920
	ds_load_u8 v170, v75 offset:1792
	ds_load_u8 v171, v75 offset:1024
	ds_load_u8 v172, v75 offset:1152
	ds_load_u8 v173, v75 offset:1408
	ds_load_u8 v174, v75 offset:1280
	ds_load_u8 v183, v75 offset:1584
	ds_load_u8 v184, v75 offset:1600
	ds_load_u8 v185, v75 offset:1616
	ds_load_u8 v186, v75 offset:1936
	ds_load_u8 v187, v75 offset:1808
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v188, v94, v95, 0xc0c0004
	ds_load_u8 v94, v75 offset:1040
	ds_load_u8 v95, v75 offset:1168
	ds_load_u8 v192, v75 offset:1136
	ds_load_u8 v175, v75 offset:1552
	ds_load_u8 v176, v75 offset:1680
	ds_load_u8 v177, v75 offset:1696
	ds_load_u8 v178, v75 offset:1712
	ds_load_u8 v179, v75 offset:1728
	ds_load_u8 v180, v75 offset:1744
	ds_load_u8 v181, v75 offset:1760
	ds_load_u8 v182, v75 offset:1568
	v_perm_b32 v190, v102, v97, 0xc0c0004
	ds_load_u8 v97, v75 offset:1072
	v_perm_b32 v119, v119, v98, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v136, v143, v136, 0xc0c0004
	ds_load_u8 v98, v75 offset:1216
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v143, v159, v152, 0xc0c0004
	ds_load_u8 v159, v75 offset:1328
	v_perm_b32 v124, v128, v124, 0xc0c0004
	v_perm_b32 v133, v133, v134, 0xc0c0004
	v_perm_b32 v135, v142, v135, 0xc0c0004
	v_perm_b32 v134, v149, v150, 0xc0c0004
	ds_load_u8 v149, v75 offset:1296
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v150, v166, v165, 0xc0c0004
	ds_load_u8 v165, v75 offset:1424
	v_perm_b32 v142, v158, v151, 0xc0c0004
	ds_load_u8 v151, v75 offset:1440
	ds_load_u8 v158, v75 offset:1312
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v166, v170, v169, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v169, v171, v172, 0xc0c0004
	ds_load_u8 v170, v75 offset:1824
	ds_load_u8 v102, v75 offset:1456
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v171, v174, v173, 0xc0c0004
	ds_load_u8 v172, v75 offset:1952
	v_perm_b32 v173, v100, v96, 0xc0c0004
	ds_load_u8 v96, v75 offset:1184
	ds_load_u8 v100, v75 offset:1056
	ds_load_u8 v128, v75 offset:1088
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v175, v175, v176, 0xc0c0004
	v_perm_b32 v176, v187, v186, 0xc0c0004
	ds_load_u8 v186, v75 offset:1840
	v_perm_b32 v137, v144, v137, 0xc0c0004
	ds_load_u8 v144, v75 offset:1472
	v_perm_b32 v138, v145, v138, 0xc0c0004
	ds_load_u8 v145, v75 offset:1104
	v_perm_b32 v130, v130, v126, 0xc0c0004
	v_perm_b32 v139, v146, v139, 0xc0c0004
	ds_load_u8 v126, v75 offset:1120
	v_perm_b32 v187, v94, v95, 0xc0c0004
	ds_load_u8 v94, v75 offset:1968
	ds_load_u8 v95, v75 offset:1200
	v_perm_b32 v146, v162, v155, 0xc0c0004
	ds_load_u8 v155, v75 offset:1504
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v151, v158, v151, 0xc0c0004
	ds_load_u8 v158, v75 offset:1344
	v_perm_b32 v152, v182, v177, 0xc0c0004
	v_perm_b32 v153, v160, v153, 0xc0c0004
	v_perm_b32 v160, v183, v178, 0xc0c0004
	v_perm_b32 v129, v129, v125, 0xc0c0004
	ds_load_u8 v125, v75 offset:1232
	v_perm_b32 v154, v161, v154, 0xc0c0004
	ds_load_u8 v182, v75 offset:1360
	v_perm_b32 v162, v185, v180, 0xc0c0004
	v_perm_b32 v117, v122, v117, 0xc0c0004
	v_perm_b32 v122, v131, v127, 0xc0c0004
	ds_load_u8 v127, v75 offset:1264
	v_perm_b32 v131, v147, v140, 0xc0c0004
	ds_load_u8 v140, v75 offset:1392
	v_perm_b32 v149, v149, v165, 0xc0c0004
	ds_load_u8 v165, v75 offset:1856
	ds_load_u8 v185, v75 offset:1776
	ds_load_u8 v161, v75 offset:1488
	v_perm_b32 v147, v163, v156, 0xc0c0004
	ds_load_u8 v156, v91
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v144, v158, v144, 0xc0c0004
	ds_load_u8 v158, v75 offset:1248
	v_perm_b32 v178, v97, v95, 0xc0c0004
	ds_load_u8 v95, v75 offset:1872
	ds_load_u8 v97, v75 offset:2000
	v_perm_b32 v128, v128, v98, 0xc0c0004
	ds_load_u8 v98, v75 offset:2016
	v_perm_b32 v170, v170, v172, 0xc0c0004
	v_perm_b32 v172, v100, v96, 0xc0c0004
	ds_load_u8 v96, v75 offset:1984
	v_perm_b32 v177, v186, v94, 0xc0c0004
	ds_load_u8 v94, v75 offset:1632
	v_perm_b32 v179, v184, v179, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v145, v145, v125, 0xc0c0004
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	ds_load_b64 v[183:184], v89 offset:2048
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v125, v75 offset:1904
	v_perm_b32 v189, v111, v112, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v161, v182, v161, 0xc0c0004
	v_perm_b32 v120, v120, v101, 0xc0c0004
	v_perm_b32 v121, v121, v108, 0xc0c0004
	v_perm_b32 v118, v123, v118, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v194, v126, v158, 0xc0c0004
	v_lshl_or_b32 v126, v189, 16, v188
	v_perm_b32 v164, v164, v157, 0xc0c0004
	v_lshl_or_b32 v158, v166, 16, v150
	v_lshl_or_b32 v157, v171, 16, v169
	v_lshl_or_b32 v150, v124, 16, v119
	v_perm_b32 v174, v114, v113, 0xc0c0004
	v_perm_b32 v191, v116, v115, 0xc0c0004
	v_perm_b32 v127, v192, v127, 0xc0c0004
	v_lshl_or_b32 v166, v176, 16, v175
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v163, v94, v181, 0xc0c0004
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	ds_load_b64 v[181:182], v88 offset:2048
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v186, v165, v96, 0xc0c0004
	ds_load_u8 v96, v75 offset:1888
	v_perm_b32 v180, v95, v97, 0xc0c0004
	ds_load_u8 v97, v90
	ds_load_u8 v165, v75 offset:1376
	v_perm_b32 v159, v159, v102, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v156, v125, v156, 0xc0c0004
	v_lshl_or_b32 v125, v134, 16, v133
	v_lshl_or_b32 v134, v174, 16, v173
	v_lshl_or_b32 v133, v142, 16, v135
	v_lshl_or_b32 v169, v159, 16, v178
	v_lshl_or_b32 v178, v122, 16, v117
	v_lshl_or_b32 v173, v144, 16, v128
	v_perm_b32 v148, v148, v141, 0xc0c0004
	v_lshl_or_b32 v142, v191, 16, v190
	v_lshl_or_b32 v141, v143, 16, v136
	v_lshl_or_b32 v159, v154, 16, v138
	v_lshl_or_b32 v171, v146, 16, v139
	v_lshl_or_b32 v174, v186, 16, v179
	v_lshl_or_b32 v176, v180, 16, v162
	v_lshl_or_b32 v175, v161, 16, v145
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v193, v96, v98, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v123, v132, v97, 0xc0c0004
	v_perm_b32 v132, v140, v167, 0xc0c0004
	v_perm_b32 v140, v168, v185, 0xc0c0004
	v_lshl_or_b32 v168, v170, 16, v152
	v_lshl_or_b32 v167, v151, 16, v172
	v_lshl_or_b32 v170, v177, 16, v160
	v_lshl_or_b32 v160, v129, 16, v120
	v_lshl_or_b32 v172, v130, 16, v121
	v_lshl_or_b32 v188, v123, 16, v118
	v_wmma_i32_16x16x16_iu4 v[117:124], v[125:126], v[181:182], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v165, v155, 0xc0c0004
	v_lshl_or_b32 v165, v149, 16, v187
	v_lshl_or_b32 v177, v147, 16, v131
	v_wmma_i32_16x16x16_iu4 v[117:124], v[157:158], v[183:184], v[117:124] neg_lo:[1,1,0]
	v_lshl_or_b32 v189, v132, 16, v127
	v_wmma_i32_16x16x16_iu4 v[125:132], v[133:134], v[181:182], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v149, v153, 16, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[125:132], v[165:166], v[183:184], v[125:132] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v186, v193, 16, v163
	v_lshl_or_b32 v185, v155, 16, v194
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v187, v164, 16, v148
	v_lshl_or_b32 v190, v156, 16, v140
	v_wmma_i32_16x16x16_iu4 v[133:140], v[141:142], v[181:182], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[141:148], v[149:150], v[181:182], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[159:160], v[181:182], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[157:164], v[171:172], v[181:182], v[1:8] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[133:140], v[167:168], v[183:184], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[141:148], v[169:170], v[183:184], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[165:172], v[177:178], v[181:182], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[173:174], v[183:184], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[157:164], v[175:176], v[183:184], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[173:180], v[187:188], v[181:182], v[1:8] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[165:172], v[185:186], v[183:184], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[173:180], v[189:190], v[183:184], v[173:180] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v177, v177
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v179, v179
	v_cvt_f32_i32_e32 v180, v180
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v99, 16, v99
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v93, s48, v84
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s48, s48, s49
	s_cmp_lg_u32 s35, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v118, v99, v118
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1c
	buffer_load_u16 v103, v93, s[40:43], 0 offen
	buffer_load_u16 v104, v93, s[40:43], 0 offen offset:4
	buffer_load_u16 v105, v93, s[40:43], 0 offen offset:8
	buffer_load_u16 v106, v93, s[40:43], 0 offen offset:12
	buffer_load_u16 v107, v93, s[40:43], 0 offen offset:16
	buffer_load_u16 v109, v93, s[40:43], 0 offen offset:20
	buffer_load_u16 v110, v93, s[40:43], 0 offen offset:24
	buffer_load_u16 v112, v93, s[40:43], 0 offen offset:28
	buffer_load_u16 v111, v93, s[40:43], 0 offen offset:32
	buffer_load_u16 v114, v93, s[40:43], 0 offen offset:36
	buffer_load_u16 v113, v93, s[40:43], 0 offen offset:40
	buffer_load_u16 v116, v93, s[40:43], 0 offen offset:44
	buffer_load_u16 v115, v93, s[40:43], 0 offen offset:48
	buffer_load_u16 v100, v93, s[40:43], 0 offen offset:52
	buffer_load_u16 v101, v93, s[40:43], 0 offen offset:56
	buffer_load_u16 v102, v93, s[40:43], 0 offen offset:60
	buffer_load_u16 v108, v93, s[40:43], 0 offen offset:64
	buffer_load_u16 v94, v93, s[40:43], 0 offen offset:68
	buffer_load_u16 v95, v93, s[40:43], 0 offen offset:72
	buffer_load_u16 v96, v93, s[40:43], 0 offen offset:76
	buffer_load_u16 v97, v93, s[40:43], 0 offen offset:80
	buffer_load_u16 v98, v93, s[40:43], 0 offen offset:84
	buffer_load_u16 v181, v93, s[40:43], 0 offen offset:88
	buffer_load_u16 v182, v93, s[40:43], 0 offen offset:92
	buffer_load_u16 v183, v93, s[40:43], 0 offen offset:96
	buffer_load_u16 v184, v93, s[40:43], 0 offen offset:100
	buffer_load_u16 v185, v93, s[40:43], 0 offen offset:104
	buffer_load_u16 v186, v93, s[40:43], 0 offen offset:108
	buffer_load_u16 v187, v93, s[40:43], 0 offen offset:112
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v104, 16, v104
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v106, 16, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v72, v118, v104 :: v_dual_mul_f32 v119, v99, v119
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v122, v99, v122 :: v_dual_lshlrev_b32 v105, 16, v105
	s_waitcnt vmcnt(19)
	v_dual_mul_f32 v123, v99, v123 :: v_dual_lshlrev_b32 v114, 16, v114
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v71, v119, v105 :: v_dual_lshlrev_b32 v110, 16, v110
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v126, v99, v126 :: v_dual_lshlrev_b32 v111, 16, v111
	v_mul_f32_e32 v125, v99, v125
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(17)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v67, v123, v110 :: v_dual_lshlrev_b32 v116, 16, v116
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v130, v99, v130 :: v_dual_lshlrev_b32 v113, 16, v113
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v64, v126, v114 :: v_dual_fmac_f32 v65, v125, v111
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v128, v99, v128
	v_mul_f32_e32 v127, v99, v127
	s_waitcnt vmcnt(16)
	v_dual_mul_f32 v132, v99, v132 :: v_dual_lshlrev_b32 v115, 16, v115
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v100, 16, v100
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v62, v128, v116 :: v_dual_fmac_f32 v63, v127, v113
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v129, v99, v129
	v_dual_mul_f32 v121, v99, v121 :: v_dual_lshlrev_b32 v112, 16, v112
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v109, 16, v109
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v60, v130, v100 :: v_dual_lshlrev_b32 v107, 16, v107
	s_waitcnt vmcnt(13)
	v_dual_fmac_f32 v59, v129, v115 :: v_dual_lshlrev_b32 v102, 16, v102
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v131, v99, v131
	v_dual_mul_f32 v134, v99, v134 :: v_dual_lshlrev_b32 v101, 16, v101
	v_mul_f32_e32 v117, v99, v117
	v_dual_mul_f32 v120, v99, v120 :: v_dual_lshlrev_b32 v103, 16, v103
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v68, v122, v109 :: v_dual_fmac_f32 v69, v121, v107
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v124, v99, v124
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v58, v132, v102 :: v_dual_fmac_f32 v57, v131, v101
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v133, v99, v133 :: v_dual_lshlrev_b32 v108, 16, v108
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v61, v117, v103 :: v_dual_fmac_f32 v70, v120, v106
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0xd
	buffer_load_u16 v103, v93, s[40:43], 0 offen offset:116
	buffer_load_u16 v117, v93, s[40:43], 0 offen offset:120
	buffer_load_u16 v104, v93, s[40:43], 0 offen offset:124
	buffer_load_u16 v118, v93, s[40:43], 0 offen offset:128
	buffer_load_u16 v105, v93, s[40:43], 0 offen offset:132
	buffer_load_u16 v119, v93, s[40:43], 0 offen offset:136
	buffer_load_u16 v106, v93, s[40:43], 0 offen offset:140
	buffer_load_u16 v120, v93, s[40:43], 0 offen offset:144
	buffer_load_u16 v107, v93, s[40:43], 0 offen offset:148
	buffer_load_u16 v121, v93, s[40:43], 0 offen offset:152
	buffer_load_u16 v109, v93, s[40:43], 0 offen offset:156
	buffer_load_u16 v122, v93, s[40:43], 0 offen offset:160
	buffer_load_u16 v110, v93, s[40:43], 0 offen offset:164
	buffer_load_u16 v123, v93, s[40:43], 0 offen offset:168
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v66, v124, v112
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x11
	buffer_load_u16 v112, v93, s[40:43], 0 offen offset:172
	buffer_load_u16 v124, v93, s[40:43], 0 offen offset:176
	buffer_load_u16 v111, v93, s[40:43], 0 offen offset:180
	buffer_load_u16 v125, v93, s[40:43], 0 offen offset:184
	buffer_load_u16 v114, v93, s[40:43], 0 offen offset:188
	buffer_load_u16 v126, v93, s[40:43], 0 offen offset:192
	buffer_load_u16 v113, v93, s[40:43], 0 offen offset:196
	buffer_load_u16 v127, v93, s[40:43], 0 offen offset:200
	buffer_load_u16 v116, v93, s[40:43], 0 offen offset:204
	buffer_load_u16 v128, v93, s[40:43], 0 offen offset:208
	buffer_load_u16 v115, v93, s[40:43], 0 offen offset:212
	buffer_load_u16 v129, v93, s[40:43], 0 offen offset:216
	buffer_load_u16 v100, v93, s[40:43], 0 offen offset:220
	buffer_load_u16 v130, v93, s[40:43], 0 offen offset:224
	buffer_load_u16 v101, v93, s[40:43], 0 offen offset:228
	buffer_load_u16 v131, v93, s[40:43], 0 offen offset:232
	buffer_load_u16 v102, v93, s[40:43], 0 offen offset:236
	buffer_load_u16 v132, v93, s[40:43], 0 offen offset:240
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(41)
	v_dual_mul_f32 v135, v99, v135 :: v_dual_lshlrev_b32 v96, 16, v96
	v_mul_f32_e32 v136, v99, v136
	s_waitcnt vmcnt(39)
	v_dual_mul_f32 v137, v99, v137 :: v_dual_lshlrev_b32 v98, 16, v98
	v_mul_f32_e32 v138, v99, v138
	s_waitcnt vmcnt(37)
	v_dual_mul_f32 v139, v99, v139 :: v_dual_lshlrev_b32 v182, 16, v182
	v_mul_f32_e32 v140, v99, v140
	s_waitcnt vmcnt(35)
	v_dual_mul_f32 v141, v99, v141 :: v_dual_lshlrev_b32 v184, 16, v184
	v_dual_mul_f32 v142, v99, v142 :: v_dual_lshlrev_b32 v95, 16, v95
	s_waitcnt vmcnt(33)
	v_dual_mul_f32 v143, v99, v143 :: v_dual_lshlrev_b32 v186, 16, v186
	v_dual_mul_f32 v144, v99, v144 :: v_dual_lshlrev_b32 v97, 16, v97
	v_mul_f32_e32 v145, v99, v145
	v_dual_mul_f32 v146, v99, v146 :: v_dual_lshlrev_b32 v181, 16, v181
	v_mul_f32_e32 v147, v99, v147
	v_dual_mul_f32 v148, v99, v148 :: v_dual_lshlrev_b32 v183, 16, v183
	v_mul_f32_e32 v149, v99, v149
	v_dual_mul_f32 v150, v99, v150 :: v_dual_lshlrev_b32 v185, 16, v185
	v_mul_f32_e32 v151, v99, v151
	s_waitcnt vmcnt(32)
	v_dual_mul_f32 v152, v99, v152 :: v_dual_lshlrev_b32 v187, 16, v187
	v_mul_f32_e32 v153, v99, v153
	v_mul_f32_e32 v154, v99, v154
	v_mul_f32_e32 v155, v99, v155
	v_mul_f32_e32 v156, v99, v156
	v_mul_f32_e32 v157, v99, v157
	v_mul_f32_e32 v158, v99, v158
	v_mul_f32_e32 v159, v99, v159
	v_mul_f32_e32 v160, v99, v160
	v_mul_f32_e32 v161, v99, v161
	v_mul_f32_e32 v162, v99, v162
	v_mul_f32_e32 v163, v99, v163
	v_mul_f32_e32 v164, v99, v164
	v_mul_f32_e32 v165, v99, v165
	v_mul_f32_e32 v166, v99, v166
	v_mul_f32_e32 v167, v99, v167
	v_mul_f32_e32 v168, v99, v168
	v_mul_f32_e32 v169, v99, v169
	v_mul_f32_e32 v170, v99, v170
	v_mul_f32_e32 v171, v99, v171
	v_mul_f32_e32 v172, v99, v172
	v_mul_f32_e32 v173, v99, v173
	v_mul_f32_e32 v174, v99, v174
	v_mul_f32_e32 v175, v99, v175
	v_mul_f32_e32 v176, v99, v176
	v_mul_f32_e32 v177, v99, v177
	v_mul_f32_e32 v178, v99, v178
	v_mul_f32_e32 v180, v99, v180
	v_mul_f32_e32 v99, v99, v179
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v179, 0x80000000, v86, vcc_lo
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v55, v133, v108 :: v_dual_add_nc_u32 v86, s50, v86
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v94, 16, v94
	s_clause 0x2
	buffer_load_u16 v108, v93, s[40:43], 0 offen offset:244
	buffer_load_u16 v133, v93, s[40:43], 0 offen offset:248
	buffer_load_u16 v93, v93, s[40:43], 0 offen offset:252
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b32 v179, v179, s[36:39], 0 offen
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v53, v135, v95 :: v_dual_fmac_f32 v46, v144, v186
	v_fmac_f32_e32 v56, v134, v94
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v54, v136, v96
	v_fmac_f32_e32 v52, v138, v98
	v_fmac_f32_e32 v50, v140, v182
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	ds_store_b8 v80, v92 offset:2048
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v81, v179
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v103, 16, v103
	v_lshlrev_b32_e32 v117, 16, v117
	v_lshlrev_b32_e32 v104, 16, v104
	v_lshlrev_b32_e32 v118, 16, v118
	v_lshlrev_b32_e32 v105, 16, v105
	v_lshlrev_b32_e32 v119, 16, v119
	v_lshlrev_b32_e32 v106, 16, v106
	v_lshlrev_b32_e32 v120, 16, v120
	v_lshlrev_b32_e32 v107, 16, v107
	v_lshlrev_b32_e32 v121, 16, v121
	v_lshlrev_b32_e32 v109, 16, v109
	v_lshlrev_b32_e32 v122, 16, v122
	v_lshlrev_b32_e32 v110, 16, v110
	v_lshlrev_b32_e32 v123, 16, v123
	v_lshlrev_b32_e32 v112, 16, v112
	v_lshlrev_b32_e32 v124, 16, v124
	v_lshlrev_b32_e32 v111, 16, v111
	v_lshlrev_b32_e32 v125, 16, v125
	v_lshlrev_b32_e32 v114, 16, v114
	v_lshlrev_b32_e32 v126, 16, v126
	v_lshlrev_b32_e32 v113, 16, v113
	v_lshlrev_b32_e32 v127, 16, v127
	v_lshlrev_b32_e32 v116, 16, v116
	v_lshlrev_b32_e32 v128, 16, v128
	v_lshlrev_b32_e32 v115, 16, v115
	v_lshlrev_b32_e32 v129, 16, v129
	v_lshlrev_b32_e32 v100, 16, v100
	v_lshlrev_b32_e32 v130, 16, v130
	v_lshlrev_b32_e32 v101, 16, v101
	v_lshlrev_b32_e32 v131, 16, v131
	v_lshlrev_b32_e32 v102, 16, v102
	v_lshlrev_b32_e32 v132, 16, v132
	v_lshlrev_b32_e32 v108, 16, v108
	v_lshlrev_b32_e32 v133, 16, v133
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v48, v142, v184 :: v_dual_lshlrev_b32 v93, 16, v93
	v_dual_fmac_f32 v51, v137, v97 :: v_dual_fmac_f32 v44, v146, v103
	v_dual_fmac_f32 v49, v139, v181 :: v_dual_fmac_f32 v42, v148, v104
	v_dual_fmac_f32 v47, v141, v183 :: v_dual_fmac_f32 v40, v150, v105
	v_dual_fmac_f32 v45, v143, v185 :: v_dual_fmac_f32 v38, v152, v106
	v_dual_fmac_f32 v43, v145, v187 :: v_dual_fmac_f32 v34, v156, v109
	v_dual_fmac_f32 v41, v147, v117 :: v_dual_fmac_f32 v36, v154, v107
	v_dual_fmac_f32 v39, v149, v118 :: v_dual_fmac_f32 v30, v160, v112
	v_dual_fmac_f32 v37, v151, v119 :: v_dual_fmac_f32 v32, v158, v110
	v_dual_fmac_f32 v35, v153, v120 :: v_dual_fmac_f32 v28, v162, v111
	v_dual_fmac_f32 v33, v155, v121 :: v_dual_fmac_f32 v26, v164, v114
	v_dual_fmac_f32 v31, v157, v122 :: v_dual_fmac_f32 v24, v166, v113
	v_dual_fmac_f32 v29, v159, v123 :: v_dual_fmac_f32 v22, v168, v116
	v_dual_fmac_f32 v27, v161, v124 :: v_dual_fmac_f32 v20, v170, v115
	v_dual_fmac_f32 v25, v163, v125 :: v_dual_fmac_f32 v18, v172, v100
	v_dual_fmac_f32 v23, v165, v126 :: v_dual_fmac_f32 v16, v174, v101
	v_dual_fmac_f32 v21, v167, v127 :: v_dual_fmac_f32 v14, v176, v102
	v_dual_fmac_f32 v19, v169, v128 :: v_dual_fmac_f32 v10, v99, v133
	v_dual_fmac_f32 v17, v171, v129 :: v_dual_fmac_f32 v12, v177, v132
	v_fmac_f32_e32 v15, v173, v130
	v_fmac_f32_e32 v13, v175, v131
	v_fmac_f32_e32 v11, v178, v108
	v_fmac_f32_e32 v9, v180, v93
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow586
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v2, s6, v73
	s_mul_i32 s1, s34, s6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s0, s5, 0
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v1, 16, v0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_add_i32 s1, s1, s0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v6, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v2, s1, v2, 1
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v167, 0
	v_mov_b32_e32 v166, 0
	s_mov_b32 s4, 0
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	ds_load_u8 v4, v75 offset:640
	ds_load_u8 v5, v75 offset:512
	ds_load_u8 v6, v75 offset:896
	ds_load_u8 v7, v75 offset:768
	ds_load_u8 v85, v75 offset:656
	ds_load_u8 v87, v75 offset:672
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v170, s11 :: v_dual_and_b32 v3, 0x70, v79
	v_dual_mov_b32 v168, s9 :: v_dual_add_nc_u32 v89, 0, v78
	v_mov_b32_e32 v166, s7
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_and_or_b32 v3, 0x88, v77, v3
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v169, s10 :: v_dual_mov_b32 v164, s5
	v_dual_mov_b32 v167, s8 :: v_dual_add_nc_u32 v144, 0, v76
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_xad_u32 v8, v3, 8, 0
	v_add_nc_u32_e32 v77, 0, v3
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v78, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v7, v6, 0xc0c0004
	ds_load_u8 v79, v75 offset:128
	ds_load_u8 v80, v75
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	ds_load_b64 v[3:4], v8 offset:2048
	ds_load_b64 v[5:6], v77 offset:2048
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_mov_b32_e32 v165, s6
	v_mov_b32_e32 v163, s4
	ds_load_u8 v98, v75 offset:1664
	ds_load_u8 v109, v75 offset:1536
	v_lshl_or_b32 v8, v7, 16, v78
	ds_load_u8 v7, v75 offset:384
	ds_load_u8 v77, v75 offset:256
	ds_load_u8 v94, v75 offset:144
	ds_load_u8 v105, v75 offset:160
	ds_load_u8 v116, v75 offset:176
	ds_load_u8 v117, v75 offset:192
	ds_load_u8 v123, v75 offset:208
	ds_load_u8 v132, v75 offset:224
	ds_load_u8 v139, v75 offset:240
	ds_load_u8 v95, v75 offset:16
	ds_load_u8 v106, v75 offset:32
	ds_load_u8 v124, v75 offset:48
	ds_load_u8 v125, v75 offset:64
	ds_load_u8 v126, v75 offset:80
	ds_load_u8 v133, v75 offset:96
	ds_load_u8 v140, v75 offset:112
	ds_load_u8 v88, v75 offset:688
	ds_load_u8 v90, v75 offset:704
	ds_load_u8 v99, v75 offset:720
	ds_load_u8 v100, v75 offset:736
	ds_load_u8 v101, v75 offset:752
	ds_load_u8 v86, v75 offset:528
	ds_load_u8 v102, v75 offset:544
	ds_load_u8 v110, v75 offset:560
	ds_load_u8 v111, v75 offset:576
	ds_load_u8 v118, v75 offset:592
	ds_load_u8 v119, v75 offset:608
	ds_load_u8 v120, v75 offset:624
	ds_load_u8 v91, v75 offset:1024
	ds_load_u8 v92, v75 offset:912
	ds_load_u8 v103, v75 offset:928
	ds_load_u8 v112, v75 offset:944
	ds_load_u8 v113, v75 offset:960
	ds_load_u8 v121, v75 offset:976
	ds_load_u8 v130, v75 offset:992
	ds_load_u8 v93, v75 offset:784
	ds_load_u8 v104, v75 offset:800
	ds_load_u8 v114, v75 offset:816
	ds_load_u8 v115, v75 offset:832
	ds_load_u8 v122, v75 offset:848
	ds_load_u8 v131, v75 offset:864
	ds_load_u8 v138, v75 offset:880
	ds_load_u8 v96, v75 offset:400
	ds_load_u8 v107, v75 offset:416
	ds_load_u8 v127, v75 offset:432
	ds_load_u8 v128, v75 offset:448
	ds_load_u8 v129, v75 offset:464
	ds_load_u8 v134, v75 offset:480
	ds_load_u8 v141, v75 offset:496
	ds_load_u8 v97, v75 offset:272
	ds_load_u8 v108, v75 offset:288
	ds_load_u8 v135, v75 offset:304
	ds_load_u8 v136, v75 offset:320
	ds_load_u8 v137, v75 offset:336
	ds_load_u8 v142, v75 offset:352
	ds_load_u8 v143, v75 offset:368
	ds_load_u8 v181, v75 offset:1040
	ds_load_u8 v182, v75 offset:1056
	ds_load_u8 v183, v75 offset:1072
	ds_load_u8 v184, v75 offset:1088
	ds_load_u8 v185, v75 offset:1104
	ds_load_u8 v186, v75 offset:1120
	ds_load_u8 v187, v75 offset:1136
	ds_load_u8 v144, v144
	ds_load_u8 v89, v89
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v7, v77, v7, 0xc0c0004
	v_perm_b32 v78, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(43)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v86, v93, v92, 0xc0c0004
	v_perm_b32 v92, v95, v94, 0xc0c0004
	v_lshl_or_b32 v7, v7, 16, v78
	v_perm_b32 v98, v109, v98, 0xc0c0004
	ds_load_u8 v109, v75 offset:1152
	ds_load_u8 v156, v75 offset:1680
	ds_load_u8 v157, v75 offset:1696
	ds_load_u8 v158, v75 offset:1712
	ds_load_u8 v159, v75 offset:1728
	ds_load_u8 v160, v75 offset:1744
	ds_load_u8 v173, v75 offset:1760
	ds_load_u8 v174, v75 offset:1776
	ds_load_u8 v161, v75 offset:1808
	ds_load_u8 v162, v75 offset:1824
	ds_load_u8 v175, v75 offset:1840
	ds_load_u8 v176, v75 offset:1856
	ds_load_u8 v177, v75 offset:1872
	ds_load_u8 v178, v75 offset:1888
	ds_load_u8 v179, v75 offset:1904
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v93, v97, v96, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[77:84], v[7:8], v[5:6], v[163:170] neg_lo:[1,1,0]
	ds_load_u8 v7, v75 offset:1920
	ds_load_u8 v8, v75 offset:1792
	ds_load_u8 v76, v75 offset:1424
	ds_load_u8 v145, v75 offset:1440
	ds_load_u8 v146, v75 offset:1456
	ds_load_u8 v147, v75 offset:1472
	ds_load_u8 v148, v75 offset:1488
	ds_load_u8 v149, v75 offset:1504
	ds_load_u8 v150, v75 offset:1520
	ds_load_u8 v151, v75 offset:1552
	ds_load_u8 v152, v75 offset:1568
	ds_load_u8 v153, v75 offset:1584
	ds_load_u8 v154, v75 offset:1600
	ds_load_u8 v155, v75 offset:1616
	ds_load_u8 v171, v75 offset:1632
	ds_load_u8 v172, v75 offset:1648
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v91, v91, v109, 0xc0c0004
	ds_load_u8 v109, v75 offset:1936
	ds_load_u8 v188, v75 offset:1168
	ds_load_u8 v189, v75 offset:1184
	ds_load_u8 v190, v75 offset:1200
	ds_load_u8 v191, v75 offset:1216
	ds_load_u8 v192, v75 offset:1232
	ds_load_u8 v193, v75 offset:1248
	ds_load_u8 v194, v75 offset:1264
	ds_load_u8 v195, v75 offset:1296
	ds_load_u8 v196, v75 offset:1312
	ds_load_u8 v197, v75 offset:1328
	ds_load_u8 v198, v75 offset:1344
	ds_load_u8 v199, v75 offset:1360
	ds_load_u8 v200, v75 offset:1376
	ds_load_u8 v201, v75 offset:1392
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v180, v8, v7, 0xc0c0004
	ds_load_u8 v7, v75 offset:1408
	ds_load_u8 v8, v75 offset:1280
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v145, v196, v145, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v8, v7, 0xc0c0004
	v_lshl_or_b32 v8, v86, 16, v85
	v_lshl_or_b32 v86, v180, 16, v98
	ds_load_u8 v180, v75 offset:1952
	v_lshl_or_b32 v7, v93, 16, v92
	v_lshl_or_b32 v85, v94, 16, v91
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[91:98], v[7:8], v[5:6], v[163:170] neg_lo:[1,1,0]
	v_perm_b32 v7, v151, v156, 0xc0c0004
	ds_load_u8 v151, v75 offset:1968
	ds_load_u8 v156, v75 offset:1984
	ds_load_u8 v202, v75 offset:2000
	ds_load_u8 v203, v75 offset:2016
	v_perm_b32 v8, v161, v109, 0xc0c0004
	v_perm_b32 v75, v102, v87, 0xc0c0004
	v_perm_b32 v87, v104, v103, 0xc0c0004
	v_perm_b32 v102, v106, v105, 0xc0c0004
	v_perm_b32 v103, v108, v107, 0xc0c0004
	v_lshl_or_b32 v8, v8, 16, v7
	v_perm_b32 v7, v181, v188, 0xc0c0004
	v_perm_b32 v104, v195, v76, 0xc0c0004
	v_lshl_or_b32 v76, v87, 16, v75
	v_lshl_or_b32 v75, v103, 16, v102
	v_perm_b32 v87, v152, v157, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v152, v162, v180, 0xc0c0004
	v_perm_b32 v157, v182, v189, 0xc0c0004
	v_lshl_or_b32 v7, v104, 16, v7
	v_wmma_i32_16x16x16_iu4 v[102:109], v[75:76], v[5:6], v[163:170] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v76, v152, 16, v87
	v_lshl_or_b32 v75, v145, 16, v157
	v_perm_b32 v87, v110, v88, 0xc0c0004
	v_perm_b32 v88, v114, v112, 0xc0c0004
	v_perm_b32 v110, v124, v116, 0xc0c0004
	v_perm_b32 v112, v135, v127, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[77:84], v[85:86], v[3:4], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[91:98], v[7:8], v[3:4], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[75:76], v[3:4], v[102:109] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v88, 16, v87
	v_lshl_or_b32 v7, v112, 16, v110
	v_perm_b32 v75, v153, v158, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v76, v175, v151, 0xc0c0004
	v_perm_b32 v85, v183, v190, 0xc0c0004
	v_perm_b32 v86, v197, v146, 0xc0c0004
	v_perm_b32 v87, v111, v90, 0xc0c0004
	v_perm_b32 v88, v115, v113, 0xc0c0004
	v_perm_b32 v90, v125, v117, 0xc0c0004
	v_perm_b32 v124, v136, v128, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[110:117], v[7:8], v[5:6], v[163:170] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v76, 16, v75
	v_lshl_or_b32 v7, v86, 16, v85
	v_lshl_or_b32 v76, v88, 16, v87
	v_lshl_or_b32 v75, v124, 16, v90
	v_perm_b32 v85, v154, v159, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v86, v176, v156, 0xc0c0004
	v_perm_b32 v87, v184, v191, 0xc0c0004
	v_perm_b32 v88, v198, v147, 0xc0c0004
	v_perm_b32 v90, v118, v99, 0xc0c0004
	v_perm_b32 v99, v122, v121, 0xc0c0004
	v_perm_b32 v118, v126, v123, 0xc0c0004
	v_perm_b32 v121, v137, v129, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[122:129], v[75:76], v[5:6], v[163:170] neg_lo:[1,1,0]
	v_lshl_or_b32 v76, v86, 16, v85
	v_lshl_or_b32 v75, v88, 16, v87
	v_lshl_or_b32 v86, v99, 16, v90
	v_perm_b32 v87, v119, v100, 0xc0c0004
	v_perm_b32 v88, v131, v130, 0xc0c0004
	v_perm_b32 v99, v133, v132, 0xc0c0004
	v_perm_b32 v100, v142, v134, 0xc0c0004
	v_lshl_or_b32 v85, v121, 16, v118
	v_perm_b32 v90, v155, v160, 0xc0c0004
	v_lshl_or_b32 v88, v88, 16, v87
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v118, v177, v202, 0xc0c0004
	v_lshl_or_b32 v87, v100, 16, v99
	v_perm_b32 v119, v185, v192, 0xc0c0004
	v_perm_b32 v121, v199, v148, 0xc0c0004
	v_perm_b32 v99, v120, v101, 0xc0c0004
	v_perm_b32 v100, v138, v144, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[155:162], v[87:88], v[5:6], v[163:170] neg_lo:[1,1,0]
	v_perm_b32 v87, v140, v139, 0xc0c0004
	v_perm_b32 v88, v143, v141, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[130:137], v[85:86], v[5:6], v[163:170] neg_lo:[1,1,0]
	v_lshl_or_b32 v86, v118, 16, v90
	v_lshl_or_b32 v85, v121, 16, v119
	v_perm_b32 v90, v171, v173, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v178, v203, 0xc0c0004
	v_perm_b32 v118, v186, v193, 0xc0c0004
	v_perm_b32 v119, v200, v149, 0xc0c0004
	v_lshl_or_b32 v87, v88, 16, v87
	v_lshl_or_b32 v88, v100, 16, v99
	v_perm_b32 v99, v187, v194, 0xc0c0004
	v_perm_b32 v100, v201, v150, 0xc0c0004
	v_perm_b32 v120, v172, v174, 0xc0c0004
	v_perm_b32 v121, v179, v89, 0xc0c0004
	v_lshl_or_b32 v90, v101, 16, v90
	v_lshl_or_b32 v89, v119, 16, v118
	v_wmma_i32_16x16x16_iu4 v[163:170], v[87:88], v[5:6], v[163:170] neg_lo:[1,1,0]
	v_lshl_or_b32 v5, v100, 16, v99
	v_lshl_or_b32 v6, v121, 16, v120
	v_wmma_i32_16x16x16_iu4 v[110:117], v[7:8], v[3:4], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[75:76], v[3:4], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[85:86], v[3:4], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[155:162], v[89:90], v[3:4], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[163:170], v[5:6], v[3:4], v[163:170] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v4, v77
	v_cvt_f32_i32_e32 v7, v78
	v_cvt_f32_i32_e32 v8, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v5, v81
	v_cvt_f32_i32_e32 v6, v82
	v_cvt_f32_i32_e32 v81, v83
	v_cvt_f32_i32_e32 v82, v84
	v_cvt_f32_i32_e32 v83, v91
	v_cvt_f32_i32_e32 v84, v92
	v_cvt_f32_i32_e32 v91, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v86, v95
	v_cvt_f32_i32_e32 v85, v96
	v_cvt_f32_i32_e32 v92, v97
	v_cvt_f32_i32_e32 v95, v98
	v_cvt_f32_i32_e32 v93, v102
	v_cvt_f32_i32_e32 v96, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v101, v105
	v_cvt_f32_i32_e32 v89, v106
	v_cvt_f32_i32_e32 v90, v107
	v_cvt_f32_i32_e32 v98, v108
	v_cvt_f32_i32_e32 v97, v109
	v_cvt_f32_i32_e32 v99, v110
	v_cvt_f32_i32_e32 v102, v111
	v_cvt_f32_i32_e32 v105, v112
	v_cvt_f32_i32_e32 v106, v113
	v_cvt_f32_i32_e32 v100, v114
	v_cvt_f32_i32_e32 v103, v115
	v_cvt_f32_i32_e32 v107, v116
	v_cvt_f32_i32_e32 v108, v117
	v_cvt_f32_i32_e32 v109, v122
	v_cvt_f32_i32_e32 v110, v123
	v_cvt_f32_i32_e32 v119, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v112, v126
	v_cvt_f32_i32_e32 v111, v127
	v_cvt_f32_i32_e32 v120, v128
	v_cvt_f32_i32_e32 v128, v129
	v_cvt_f32_i32_e32 v124, v130
	v_cvt_f32_i32_e32 v129, v131
	v_cvt_f32_i32_e32 v154, v132
	v_cvt_f32_i32_e32 v151, v133
	v_cvt_f32_i32_e32 v115, v134
	v_cvt_f32_i32_e32 v116, v135
	v_cvt_f32_i32_e32 v140, v136
	v_cvt_f32_i32_e32 v132, v137
	v_cvt_f32_i32_e32 v148, v155
	v_cvt_f32_i32_e32 v152, v156
	v_cvt_f32_i32_e32 v155, v157
	v_cvt_f32_i32_e32 v157, v158
	v_cvt_f32_i32_e32 v149, v159
	v_cvt_f32_i32_e32 v153, v160
	v_cvt_f32_i32_e32 v158, v161
	v_cvt_f32_i32_e32 v159, v162
	v_cvt_f32_i32_e32 v160, v163
	v_cvt_f32_i32_e32 v161, v164
	v_cvt_f32_i32_e32 v164, v165
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v163, v167
	v_cvt_f32_i32_e32 v162, v168
	v_cvt_f32_i32_e32 v165, v169
	v_cvt_f32_i32_e32 v167, v170
.LBB0_8:
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s0, s0, s27
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s9, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s33, s0
	s_mov_b32 s11, 0x31027000
	v_add_lshl_u32 v88, s0, v74, 1
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s8, s14
	.loc	1 245 18 is_stmt 1              ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v169, s27, v73
	s_mul_i32 s34, s34, s27
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v74, 4, v88
	v_add_nc_u32_e32 v75, 8, v88
	v_add_nc_u32_e32 v76, 12, v88
	v_add_nc_u32_e32 v77, 16, v88
	v_cndmask_b32_e64 v3, 0x80000000, v88, s2
	v_add_nc_u32_e32 v78, 20, v88
	v_add_nc_u32_e32 v79, 24, v88
	v_add_nc_u32_e32 v87, 28, v88
	v_cndmask_b32_e64 v74, 0x80000000, v74, s2
	v_cndmask_b32_e64 v75, 0x80000000, v75, s2
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	v_cndmask_b32_e64 v113, 0x80000000, v87, s2
	s_clause 0x7
	buffer_load_u16 v87, v3, s[8:11], 0 offen
	buffer_load_u16 v139, v74, s[8:11], 0 offen
	buffer_load_u16 v133, v75, s[8:11], 0 offen
	buffer_load_u16 v134, v76, s[8:11], 0 offen
	buffer_load_u16 v135, v77, s[8:11], 0 offen
	buffer_load_u16 v136, v78, s[8:11], 0 offen
	buffer_load_u16 v137, v79, s[8:11], 0 offen
	buffer_load_u16 v138, v113, s[8:11], 0 offen
	v_add_nc_u32_e32 v3, 32, v88
	v_add_nc_u32_e32 v74, 36, v88
	v_add_nc_u32_e32 v75, 40, v88
	v_add_nc_u32_e32 v76, 44, v88
	v_add_nc_u32_e32 v77, 52, v88
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v74, 0x80000000, v74, s2
	v_cndmask_b32_e64 v75, 0x80000000, v75, s2
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	s_clause 0x4
	buffer_load_u16 v143, v3, s[8:11], 0 offen
	buffer_load_u16 v144, v74, s[8:11], 0 offen
	buffer_load_u16 v145, v75, s[8:11], 0 offen
	buffer_load_u16 v146, v76, s[8:11], 0 offen
	buffer_load_u16 v141, v77, s[8:11], 0 offen
	v_add_nc_u32_e32 v3, 48, v88
	v_add_nc_u32_e32 v204, 0xe8, v88
	v_add_nc_u32_e32 v206, 0xf0, v88
	v_add_nc_u32_e32 v208, 0xf8, v88
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v204, 0x80000000, v204, s2
	v_add_nc_u32_e32 v205, 0xec, v88
	v_add_nc_u32_e32 v207, 0xf4, v88
	v_cndmask_b32_e64 v206, 0x80000000, v206, s2
	buffer_load_u16 v123, v3, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v3.l, 0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(14)
	v_mov_b16_e32 v3.h, v2.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v74, 56, v88
	v_add_nc_u32_e32 v75, 60, v88
	v_cndmask_b32_e64 v205, 0x80000000, v205, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v199.h, v3.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v183, v94, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v74, 0x80000000, v74, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v184, v86, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v75, 0x80000000, v75, s2
	s_clause 0x1
	buffer_load_u16 v172, v74, s[8:11], 0 offen
	buffer_load_u16 v173, v75, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v171, v4, v3 :: v_dual_add_nc_u32 v4, 64, v88
	v_mul_f32_e32 v185, v85, v3
	v_dual_mul_f32 v176, v5, v3 :: v_dual_add_nc_u32 v5, 0x44, v88
	v_mul_f32_e32 v186, v92, v3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v187, v95, v3
	v_mul_f32_e32 v188, v93, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	s_clause 0x1
	buffer_load_u16 v190, v4, s[8:11], 0 offen
	buffer_load_u16 v191, v5, s[8:11], 0 offen
	v_add_nc_u32_e32 v4, 0x48, v88
	v_add_nc_u32_e32 v5, 0x4c, v88
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v189, v96, v3
	v_mul_f32_e32 v168, v104, v3
	v_mul_f32_e32 v147, v97, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	s_clause 0x1
	buffer_load_u16 v193, v4, s[8:11], 0 offen
	buffer_load_u16 v194, v5, s[8:11], 0 offen
	v_add_nc_u32_e32 v4, 0x50, v88
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v192, v101, v3 :: v_dual_add_nc_u32 v5, 0x54, v88
	v_mul_f32_e32 v181, v84, v3
	v_dual_mul_f32 v93, v154, v3 :: v_dual_add_nc_u32 v104, 0x8c, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	s_clause 0x1
	buffer_load_u16 v195, v4, s[8:11], 0 offen
	buffer_load_u16 v196, v5, s[8:11], 0 offen
	v_add_nc_u32_e32 v4, 0x58, v88
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v84, v152, v3 :: v_dual_add_nc_u32 v5, 0x5c, v88
	v_mul_f32_e32 v131, v102, v3
	v_mul_f32_e32 v156, v90, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	s_clause 0x1
	buffer_load_u16 v152, v4, s[8:11], 0 offen
	buffer_load_u16 v154, v5, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v127, v106, v3 :: v_dual_add_nc_u32 v4, 0x60, v88
	v_dual_mul_f32 v121, v100, v3 :: v_dual_add_nc_u32 v90, 0x64, v88
	v_mul_f32_e32 v78, v159, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v75, v160, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v90, 0x80000000, v90, s2
	s_clause 0x1
	buffer_load_u16 v159, v4, s[8:11], 0 offen
	buffer_load_u16 v160, v90, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v117, v107, v3 :: v_dual_add_nc_u32 v4, 0x68, v88
	v_dual_mul_f32 v113, v109, v3 :: v_dual_add_nc_u32 v90, 0x6c, v88
	v_dual_mul_f32 v109, v119, v3 :: v_dual_add_nc_u32 v92, 0x74, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v90, 0x80000000, v90, s2
	s_clause 0x1
	buffer_load_u16 v197, v4, s[8:11], 0 offen
	buffer_load_u16 v198, v90, s[8:11], 0 offen
	v_add_nc_u32_e32 v90, 0x70, v88
	v_cndmask_b32_e64 v92, 0x80000000, v92, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v126, v105, v3
	v_dual_mul_f32 v105, v112, v3 :: v_dual_add_nc_u32 v94, 0x78, v88
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v90, 0x80000000, v90, s2
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_add3_u32 v4, s34, s33, v169
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v169, v90, s[8:11], 0 offen
	buffer_load_u16 v201, v92, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v101, v120, v3 :: v_dual_add_nc_u32 v96, 0x7c, v88
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v94, 0x80000000, v94, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v150, v89, v3
	v_dual_mul_f32 v130, v99, v3 :: v_dual_add_nc_u32 v99, 0x80, v88
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v96, 0x80000000, v96, s2
	s_clause 0x1
	buffer_load_u16 v202, v94, s[8:11], 0 offen
	buffer_load_u16 v203, v96, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v97, v124, v3 :: v_dual_add_nc_u32 v100, 0x84, v88
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v99, 0x80000000, v99, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v122, v103, v3 :: v_dual_add_nc_u32 v119, 0xa8, v88
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v103, 0x88, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v100, 0x80000000, v100, s2
	s_clause 0x1
	buffer_load_u16 v209, v99, s[8:11], 0 offen
	buffer_load_u16 v210, v100, s[8:11], 0 offen
	v_cndmask_b32_e64 v103, 0x80000000, v103, s2
	v_cndmask_b32_e64 v104, 0x80000000, v104, s2
	s_clause 0x1
	buffer_load_u16 v216, v103, s[8:11], 0 offen
	buffer_load_u16 v217, v104, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v178, v81, v3
	v_mul_f32_e32 v179, v82, v3
	v_mul_f32_e32 v82, v157, v3
	v_mul_f32_e32 v170, v7, v3
	v_mul_f32_e32 v174, v8, v3
	v_mul_f32_e32 v175, v80, v3
	v_mul_f32_e32 v182, v91, v3
	v_mul_f32_e32 v80, v153, v3
	v_dual_mul_f32 v5, v165, v3 :: v_dual_add_nc_u32 v94, 0xd4, v88
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v165.h, v3.l
	v_mov_b16_e64 v157.h, v3.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v142, v98, v3 :: v_dual_add_nc_u32 v107, 0x90, v88
	v_mul_f32_e32 v118, v108, v3
	v_dual_mul_f32 v95, v151, v3 :: v_dual_add_nc_u32 v108, 0x94, v88
	v_dual_mul_f32 v106, v111, v3 :: v_dual_add_nc_u32 v151, 0xe0, v88
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v111, 0x98, v88
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v89, v115, v3 :: v_dual_add_nc_u32 v112, 0x9c, v88
	v_mul_f32_e32 v114, v110, v3
	v_mul_f32_e32 v110, v125, v3
	v_dual_mul_f32 v91, v116, v3 :: v_dual_add_nc_u32 v116, 0xa4, v88
	v_dual_mul_f32 v85, v140, v3 :: v_dual_add_nc_u32 v120, 0xac, v88
	v_dual_mul_f32 v79, v149, v3 :: v_dual_add_nc_u32 v124, 0xb8, v88
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v115, 0xa0, v88
	v_add_nc_u32_e32 v125, 0xbc, v88
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v180, v83, v3 :: v_dual_add_nc_u32 v149, 0xdc, v88
	v_dual_mul_f32 v102, v128, v3 :: v_dual_add_nc_u32 v153, 0xe4, v88
	v_mul_f32_e32 v98, v129, v3
	v_mul_f32_e32 v86, v132, v3
	v_dual_mul_f32 v83, v148, v3 :: v_dual_add_nc_u32 v90, 0xb0, v88
	v_dual_mul_f32 v81, v155, v3 :: v_dual_add_nc_u32 v92, 0xb4, v88
	v_dual_mul_f32 v77, v158, v3 :: v_dual_add_nc_u32 v128, 0xc0, v88
	v_dual_mul_f32 v73, v164, v3 :: v_dual_add_nc_u32 v140, 0xcc, v88
	v_dual_mul_f32 v7, v162, v3 :: v_dual_add_nc_u32 v148, 0xd0, v88
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v129, 0xc4, v88
	v_add_nc_u32_e32 v132, 0xc8, v88
	v_cndmask_b32_e64 v107, 0x80000000, v107, s2
	v_cndmask_b32_e64 v108, 0x80000000, v108, s2
	v_cndmask_b32_e64 v111, 0x80000000, v111, s2
	v_cndmask_b32_e64 v112, 0x80000000, v112, s2
	v_cndmask_b32_e64 v115, 0x80000000, v115, s2
	v_cndmask_b32_e64 v116, 0x80000000, v116, s2
	v_cndmask_b32_e64 v99, 0x80000000, v119, s2
	v_cndmask_b32_e64 v100, 0x80000000, v120, s2
	v_cndmask_b32_e64 v119, 0x80000000, v124, s2
	v_cndmask_b32_e64 v120, 0x80000000, v125, s2
	v_cndmask_b32_e64 v104, 0x80000000, v149, s2
	v_cndmask_b32_e64 v90, 0x80000000, v90, s2
	v_cndmask_b32_e64 v92, 0x80000000, v92, s2
	v_cndmask_b32_e64 v211, 0x80000000, v128, s2
	v_cndmask_b32_e64 v212, 0x80000000, v129, s2
	v_cndmask_b32_e64 v213, 0x80000000, v132, s2
	v_cndmask_b32_e64 v214, 0x80000000, v140, s2
	v_cndmask_b32_e64 v215, 0x80000000, v148, s2
	v_cndmask_b32_e64 v94, 0x80000000, v94, s2
	v_cndmask_b32_e64 v218, 0x80000000, v151, s2
	v_cndmask_b32_e64 v219, 0x80000000, v153, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v177, v6, v3
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v155.h, v3.l
	v_mov_b16_e64 v162.h, v3.l
	v_mov_b16_e64 v164.h, v3.l
	v_mov_b16_e64 v158.h, v3.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v207, 0x80000000, v207, s2
	v_cndmask_b32_e64 v208, 0x80000000, v208, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v200.h, v3.l
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v2, 1, v1
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_add_lshl_u32 v4, v4, v2, 1
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v139, 16, v139
	s_waitcnt vmcnt(33)
	v_lshlrev_b32_e32 v133, 16, v133
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v134, 16, v134
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v135, 16, v135
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v136, 16, v136
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v137, 16, v137
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v139, v170, v139, v72
	v_fma_f32 v133, v174, v133, v71
	v_fma_f32 v135, v176, v135, v69
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v138, 16, v138
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v137, v178, v137, v67
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v72, v72, v139, s2
	v_cndmask_b32_e64 v71, v71, v133, s2
	v_cndmask_b32_e64 v69, v69, v135, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v143, 16, v143
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v67, v67, v137, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v145, 16, v145
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v157.l, v72.h
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v76, v161, v3
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s5, v69, v69
	v_mov_b16_e64 v165.l, v67.h
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v8, v163, v3
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v163.h, v3.l
	v_mov_b16_e64 v163.l, v69.h
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v145, v182, v145, v63
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v144, 16, v144
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v146, 16, v146
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v136, v177, v136, v68
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v137, 1, v163
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v133, v63, v145, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v63, 1, v157
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v138, v179, v138, v66
	v_fma_f32 v134, v175, v134, v70
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v69, v69, v137, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v144, v181, v144, v64
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v63, v72, v63, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v143, v180, v143, v65
	v_fma_f32 v146, v183, v146, v62
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v63.l, 0x7fff, v69.h, s5
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v96, 0xd8, v88
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v68, v68, v136, s2
	v_cndmask_b32_e64 v66, v66, v138, s2
	v_cndmask_b32_e64 v70, v70, v134, s2
	v_cndmask_b32_e64 v65, v65, v143, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v96, 0x80000000, v96, s2
	s_clause 0x13
	buffer_load_u16 v151, v107, s[8:11], 0 offen
	buffer_load_u16 v153, v108, s[8:11], 0 offen
	buffer_load_u16 v148, v111, s[8:11], 0 offen
	buffer_load_u16 v149, v112, s[8:11], 0 offen
	buffer_load_u16 v132, v115, s[8:11], 0 offen
	buffer_load_u16 v140, v116, s[8:11], 0 offen
	buffer_load_u16 v128, v99, s[8:11], 0 offen
	buffer_load_u16 v129, v100, s[8:11], 0 offen
	buffer_load_u16 v124, v90, s[8:11], 0 offen
	buffer_load_u16 v125, v92, s[8:11], 0 offen
	buffer_load_u16 v119, v119, s[8:11], 0 offen
	buffer_load_u16 v120, v120, s[8:11], 0 offen
	buffer_load_u16 v115, v211, s[8:11], 0 offen
	buffer_load_u16 v116, v212, s[8:11], 0 offen
	buffer_load_u16 v111, v213, s[8:11], 0 offen
	buffer_load_u16 v112, v214, s[8:11], 0 offen
	buffer_load_u16 v107, v215, s[8:11], 0 offen
	buffer_load_u16 v108, v94, s[8:11], 0 offen
	buffer_load_u16 v103, v96, s[8:11], 0 offen
	buffer_load_u16 v104, v104, s[8:11], 0 offen
	v_lshlrev_b32_e32 v211, 16, v87
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v64, v64, v144, s2
	v_cndmask_b32_e64 v134, v62, v146, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v162.l, v68.h
	v_mov_b16_e64 v164.l, v66.h
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v171, v171, v211, v61
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v161.h, v3.l
	v_mov_b16_e64 v158.l, v70.h
	v_mov_b16_e64 v161.l, v71.h
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v74, v166, v3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v61, v61, v171, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v166.h, v3.l
	v_mov_b16_e64 v166.l, v64.h
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v6, v167, v3
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v167.h, v3.l
	v_mov_b16_e64 v155.l, v61.h
	v_mov_b16_e64 v167.l, v65.h
	v_mov_b16_e64 v199.l, v134.h
	v_and_b32_e32 v136, 1, v162
	v_and_b32_e32 v138, 1, v164
	v_and_b32_e32 v62, 1, v155
	v_and_b32_e32 v139, 1, v165
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v88, 0xfc, v88
	s_waitcnt vmcnt(43)
	v_lshlrev_b32_e32 v141, 16, v141
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	v_cmp_o_f32_e64 s0, v72, v72
	v_cmp_o_f32_e64 s4, v68, v68
	v_cmp_o_f32_e64 s6, v66, v66
	v_cmp_o_f32_e64 s7, v67, v67
	v_add3_u32 v61, v61, v62, 0x7fff
	v_and_b32_e32 v62, 1, v158
	v_and_b32_e32 v143, 1, v166
	v_and_b32_e32 v144, 1, v167
	v_and_b32_e32 v145, 1, v199
	v_add3_u32 v68, v68, v136, 0x7fff
	v_add3_u32 v67, v67, v139, 0x7fff
	v_add3_u32 v66, v66, v138, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v88, 0x80000000, v88, s2
	s_clause 0x7
	buffer_load_u16 v99, v218, s[8:11], 0 offen
	buffer_load_u16 v100, v219, s[8:11], 0 offen
	buffer_load_u16 v94, v204, s[8:11], 0 offen
	buffer_load_u16 v96, v205, s[8:11], 0 offen
	buffer_load_u16 v92, v206, s[8:11], 0 offen
	buffer_load_u16 v90, v207, s[8:11], 0 offen
	buffer_load_u16 v87, v208, s[8:11], 0 offen
	buffer_load_u16 v88, v88, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v70, v70
	v_cmp_o_f32_e64 s8, v64, v64
	v_cmp_o_f32_e64 s9, v65, v65
	v_cndmask_b16 v61.l, 0x7fff, v61.h, vcc_lo
	v_add3_u32 v62, v70, v62, 0x7fff
	v_add3_u32 v70, v65, v144, 0x7fff
	v_add3_u32 v65, v64, v143, 0x7fff
	v_cndmask_b16 v61.h, 0x7fff, v63.h, s0
	v_cndmask_b16 v63.h, 0x7fff, v68.h, s4
	v_cndmask_b16 v64.h, 0x7fff, v66.h, s6
	v_cndmask_b16 v64.l, 0x7fff, v67.h, s7
	v_add3_u32 v66, v134, v145, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(50)
	v_lshlrev_b32_e32 v67, 16, v123
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v68, v185, v141, v60
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v134, v134
	v_mov_b16_e64 v200.l, v133.h
	v_and_b32_e32 v135, 1, v161
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v67, v184, v67, v59
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v68, v60, v68, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v60.h, 0x7fff, v66.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(48)
	v_lshlrev_b32_e32 v66, 16, v173
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v146, 1, v200
	v_cndmask_b16 v65.l, 0x7fff, v70.h, s9
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v59, v59, v67, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v67.l, v68.h
	v_mov_b16_e32 v67.h, v3.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v70, 16, v172
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v66, v187, v66, v58
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s3, v71, v71
	v_add3_u32 v71, v71, v135, 0x7fff
	v_add3_u32 v69, v133, v146, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v133, v133
	v_and_b32_e32 v67, 1, v67
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v70, v186, v70, v57
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v58, v58, v66, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v62.l, 0x7fff, v71.h, s3
	v_mov_b16_e32 v71.l, v59.h
	v_mov_b16_e32 v71.h, v3.l
	v_cndmask_b16 v60.l, 0x7fff, v69.h, vcc_lo
	v_add3_u32 v67, v68, v67, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v69, v57, v70, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v57.l, v58.h
	v_mov_b16_e32 v57.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	v_and_b32_e32 v66, 1, v71
	v_mov_b16_e32 v68.l, v69.h
	v_mov_b16_e32 v68.h, v3.l
	v_and_b32_e32 v70, 1, v57
	v_cndmask_b16 v57.h, 0x7fff, v67.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(46)
	v_lshlrev_b32_e32 v67, 16, v191
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v66, v59, v66, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	v_and_b32_e32 v59, 1, v68
	v_add3_u32 v68, v58, v70, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v70, 16, v190
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v67, v189, v67, v56
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v58, v58
	v_cndmask_b16 v57.l, 0x7fff, v66.h, vcc_lo
	v_add3_u32 v58, v69, v59, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v59, v188, v70, v55
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v66, v56, v67, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(44)
	v_lshlrev_b32_e32 v67, 16, v194
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v56.h, 0x7fff, v68.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v68, 16, v193
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v55, v55, v59, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v59.l, v66.h
	v_mov_b16_e32 v59.h, v3.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v67, v192, v67, v54
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v68, v168, v68, v53
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v69.l, v55.h
	v_and_b32_e32 v59, 1, v59
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v54, v54, v67, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v69.h, v3.l
	v_cndmask_b16 v56.l, 0x7fff, v58.h, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v67, v53, v68, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v59, v66, v59, 0x7fff
	v_mov_b16_e32 v53.l, v54.h
	v_mov_b16_e32 v53.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_and_b32_e32 v58, 1, v69
	v_mov_b16_e32 v66.l, v67.h
	v_mov_b16_e32 v66.h, v3.l
	v_and_b32_e32 v68, 1, v53
	v_cndmask_b16 v53.h, 0x7fff, v59.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(42)
	v_lshlrev_b32_e32 v59, 16, v196
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v58, v55, v58, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	v_and_b32_e32 v55, 1, v66
	v_add3_u32 v66, v54, v68, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v68, 16, v195
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v59, v156, v59, v52
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v54, v54
	v_cndmask_b16 v53.l, 0x7fff, v58.h, vcc_lo
	v_add3_u32 v54, v67, v55, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v55, v150, v68, v51
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v58, v52, v59, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v59, 16, v154
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v52.h, 0x7fff, v66.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v66, 16, v152
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v51, v51, v55, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v55.l, v58.h
	v_mov_b16_e32 v55.h, v3.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v59, v147, v59, v50
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v66, v142, v66, v49
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v67.l, v51.h
	v_and_b32_e32 v55, 1, v55
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v50, v50, v59, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v67.h, v3.l
	v_cndmask_b16 v52.l, 0x7fff, v54.h, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v59, v49, v66, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v55, v58, v55, 0x7fff
	v_mov_b16_e32 v49.l, v50.h
	v_mov_b16_e32 v49.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	v_and_b32_e32 v54, 1, v67
	v_mov_b16_e32 v58.l, v59.h
	v_mov_b16_e32 v58.h, v3.l
	v_and_b32_e32 v66, 1, v49
	v_cndmask_b16 v49.h, 0x7fff, v55.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(38)
	v_lshlrev_b32_e32 v55, 16, v160
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v54, v51, v54, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	v_and_b32_e32 v51, 1, v58
	v_add3_u32 v58, v50, v66, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v66, 16, v159
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v55, v131, v55, v48
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v50, v50
	v_cndmask_b16 v49.l, 0x7fff, v54.h, vcc_lo
	v_add3_u32 v50, v59, v51, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v51, v130, v66, v47
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v54, v48, v55, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(36)
	v_lshlrev_b32_e32 v55, 16, v198
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v48.h, 0x7fff, v58.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v58, 16, v197
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v47, v47, v51, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v51.l, v54.h
	v_mov_b16_e32 v51.h, v3.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v55, v127, v55, v46
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v58, v126, v58, v45
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v59.l, v47.h
	v_and_b32_e32 v51, 1, v51
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v46, v46, v55, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v59.h, v3.l
	v_cndmask_b16 v48.l, 0x7fff, v50.h, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v55, v45, v58, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v51, v54, v51, 0x7fff
	v_mov_b16_e32 v45.l, v46.h
	v_mov_b16_e32 v45.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	v_and_b32_e32 v50, 1, v59
	v_mov_b16_e32 v54.l, v55.h
	v_mov_b16_e32 v54.h, v3.l
	v_and_b32_e32 v58, 1, v45
	v_cndmask_b16 v45.h, 0x7fff, v51.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v51, 16, v201
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v50, v47, v50, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	v_and_b32_e32 v47, 1, v54
	v_add3_u32 v54, v46, v58, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v58, 16, v169
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v51, v122, v51, v44
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v46, v46
	v_cndmask_b16 v45.l, 0x7fff, v50.h, vcc_lo
	v_add3_u32 v46, v55, v47, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v47, v121, v58, v43
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v50, v44, v51, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v51, 16, v203
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v44.h, 0x7fff, v54.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v54, 16, v202
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v43, v43, v47, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v47.l, v50.h
	v_mov_b16_e32 v47.h, v3.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v51, v118, v51, v42
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v54, v117, v54, v41
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v55.l, v43.h
	v_and_b32_e32 v47, 1, v47
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v42, v42, v51, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v55.h, v3.l
	v_cndmask_b16 v44.l, 0x7fff, v46.h, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v51, v41, v54, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v47, v50, v47, 0x7fff
	v_mov_b16_e32 v41.l, v42.h
	v_mov_b16_e32 v41.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_and_b32_e32 v46, 1, v55
	v_mov_b16_e32 v50.l, v51.h
	v_mov_b16_e32 v50.h, v3.l
	v_and_b32_e32 v54, 1, v41
	v_cndmask_b16 v41.h, 0x7fff, v47.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v47, 16, v210
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v46, v43, v46, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	v_and_b32_e32 v43, 1, v50
	v_add3_u32 v50, v42, v54, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v47, v114, v47, v40
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v54, 16, v209
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v42, v42
	v_cndmask_b16 v41.l, 0x7fff, v46.h, vcc_lo
	v_add3_u32 v42, v51, v43, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v46, v40, v47, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v47, 16, v217
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v43, v113, v54, v39
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v40.h, 0x7fff, v50.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v50, 16, v216
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v47, v110, v47, v38
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v39, v39, v43, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v43.l, v46.h
	v_mov_b16_e32 v43.h, v3.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v50, v109, v50, v37
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v38, v38, v47, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v51.l, v39.h
	v_mov_b16_e32 v51.h, v3.l
	v_and_b32_e32 v43, 1, v43
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v37, v37, v50, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v47.l, v38.h
	v_mov_b16_e32 v47.h, v3.l
	v_cndmask_b16 v40.l, 0x7fff, v42.h, vcc_lo
	v_and_b32_e32 v42, 1, v51
	v_add3_u32 v43, v46, v43, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_mov_b16_e32 v46.l, v37.h
	v_mov_b16_e32 v46.h, v3.l
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v42, v39, v42, 0x7fff
	v_cndmask_b16 v43.h, 0x7fff, v43.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_and_b32_e32 v39, 1, v46
	v_add3_u32 v46, v38, v47, 0x7fff
	v_cmp_o_f32_e64 s0, v38, v38
	v_cndmask_b16 v62.h, 0x7fff, v62.h, s1
	v_cndmask_b16 v43.l, 0x7fff, v42.h, vcc_lo
	v_add3_u32 v38, v37, v39, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_cndmask_b16 v42.h, 0x7fff, v46.h, s0
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s8
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v42.l, 0x7fff, v38.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v47, 16, v151
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v50, 16, v153
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v46, 16, v148
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v37, 16, v149
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v39, v105, v47, v35
	v_fma_f32 v50, v106, v50, v36
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v47.h, v3.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v37, v102, v37, v34
	v_fma_f32 v46, v101, v46, v33
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v35, v35, v39, s2
	v_cndmask_b32_e64 v36, v36, v50, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v39.h, v3.l
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v34, v34, v37, s2
	v_cndmask_b32_e64 v33, v33, v46, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v47.l, v35.h
	v_mov_b16_e32 v39.l, v36.h
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v46, 16, v140
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v34, v34
	v_and_b32_e32 v37, 1, v47
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v46, v98, v46, v32
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v38, v36, v39, 0x7fff
	v_mov_b16_e32 v39.l, v34.h
	v_mov_b16_e32 v39.h, v3.l
	v_add3_u32 v36, v35, v37, 0x7fff
	v_mov_b16_e32 v37.l, v33.h
	v_mov_b16_e32 v37.h, v3.l
	v_cndmask_b16 v38.h, 0x7fff, v38.h, vcc_lo
	v_and_b32_e32 v39, 1, v39
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v32, v32, v46, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v35, 1, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v37, v34, v39, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v39, 16, v132
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v38.l, 0x7fff, v36.h, vcc_lo
	v_add3_u32 v34, v33, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v33, 16, v129
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v35, v97, v39, v31
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v36.h, 0x7fff, v37.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v37, 16, v128
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v39.h, v3.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v33, v95, v33, v30
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v31, v31, v35, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v35.l, v32.h
	v_mov_b16_e32 v35.h, v3.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v37, v93, v37, v29
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v30, v30, v33, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v39.l, v31.h
	v_cndmask_b16 v36.l, 0x7fff, v34.h, vcc_lo
	v_and_b32_e32 v35, 1, v35
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v29, v29, v37, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	v_and_b32_e32 v33, 1, v39
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v37, 16, v125
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v34, v32, v35, 0x7fff
	v_mov_b16_e32 v35.l, v30.h
	v_mov_b16_e32 v35.h, v3.l
	v_add3_u32 v32, v31, v33, 0x7fff
	v_mov_b16_e32 v33.l, v29.h
	v_mov_b16_e32 v33.h, v3.l
	v_cndmask_b16 v34.h, 0x7fff, v34.h, vcc_lo
	v_and_b32_e32 v35, 1, v35
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v37, v91, v37, v28
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v31, 1, v33
	v_cmp_o_f32_e64 s0, v30, v30
	v_add3_u32 v33, v30, v35, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v35, 16, v124
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v34.l, 0x7fff, v32.h, vcc_lo
	v_add3_u32 v30, v29, v31, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v28, v28, v37, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v31, v89, v35, v27
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v29, 16, v120
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v32.h, 0x7fff, v33.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v33, 16, v119
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v35.h, v3.l
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v27, v27, v31, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v31.l, v28.h
	v_mov_b16_e32 v31.h, v3.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v29, v86, v29, v26
	v_fma_f32 v33, v85, v33, v25
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v35.l, v27.h
	v_cndmask_b16 v32.l, 0x7fff, v30.h, vcc_lo
	v_and_b32_e32 v31, 1, v31
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v26, v26, v29, s2
	v_cndmask_b32_e64 v25, v25, v33, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v29, 1, v35
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_add3_u32 v30, v28, v31, 0x7fff
	v_mov_b16_e32 v31.l, v26.h
	v_mov_b16_e32 v31.h, v3.l
	v_add3_u32 v28, v27, v29, 0x7fff
	v_mov_b16_e32 v29.l, v25.h
	v_mov_b16_e32 v29.h, v3.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v33, 16, v116
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v31, 1, v31
	v_cndmask_b16 v30.h, 0x7fff, v30.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_and_b32_e32 v27, 1, v29
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v33, v84, v33, v24
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v29, v26, v31, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v31, 16, v115
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v26, v26
	v_cndmask_b16 v30.l, 0x7fff, v28.h, vcc_lo
	v_add3_u32 v26, v25, v27, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v24, v24, v33, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v27, v83, v31, v23
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v25, 16, v112
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v29, 16, v111
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v23, v23, v27, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v27.l, v24.h
	v_mov_b16_e32 v27.h, v3.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v25, v82, v25, v22
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v31.h, v3.l
	v_mov_b16_e32 v31.l, v23.h
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v29, v81, v29, v21
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v27, 1, v27
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v22, v22, v25, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v28.l, 0x7fff, v26.h, vcc_lo
	v_and_b32_e32 v25, 1, v31
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v21, v21, v29, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v26, v24, v27, 0x7fff
	v_mov_b16_e32 v27.l, v22.h
	v_mov_b16_e32 v27.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_add3_u32 v24, v23, v25, 0x7fff
	v_mov_b16_e32 v25.l, v21.h
	v_mov_b16_e32 v25.h, v3.l
	v_and_b32_e32 v27, 1, v27
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v29, 16, v108
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v26.h, 0x7fff, v26.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_and_b32_e32 v23, 1, v25
	v_add3_u32 v25, v22, v27, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v27, 16, v107
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v29, v80, v29, v20
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v22, v22
	v_cndmask_b16 v26.l, 0x7fff, v24.h, vcc_lo
	v_add3_u32 v22, v21, v23, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v23, v79, v27, v19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v20, v29, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v21, 16, v104
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v24.h, 0x7fff, v25.h, s0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v19, v19, v23, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v23.l, v20.h
	v_mov_b16_e32 v23.h, v3.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v25, 16, v103
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v21, v78, v21, v18
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v27.l, v19.h
	v_mov_b16_e32 v27.h, v3.l
	v_and_b32_e32 v23, 1, v23
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v25, v77, v25, v17
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v18, v18, v21, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v24.l, 0x7fff, v22.h, vcc_lo
	v_and_b32_e32 v21, 1, v27
	v_add3_u32 v22, v20, v23, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v17, v17, v25, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v23.l, v18.h
	v_mov_b16_e32 v23.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_add3_u32 v20, v19, v21, 0x7fff
	v_mov_b16_e32 v21.l, v17.h
	v_mov_b16_e32 v21.h, v3.l
	v_and_b32_e32 v23, 1, v23
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v25, 16, v100
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_and_b32_e32 v19, 1, v21
	v_add3_u32 v21, v18, v23, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v23, 16, v99
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v25, v76, v25, v16
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v18, v18
	v_add3_u32 v18, v17, v19, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v20.h, vcc_lo
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v19, v75, v23, v15
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v16, v16, v25, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v21, 16, v96
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v15, v19, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v19, 16, v94
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v17.l, v16.h
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v21, v74, v21, v14
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v17.h, v3.l
	v_mov_b16_e32 v23.l, v15.h
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v19, v73, v19, v13
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v23.h, v3.l
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v14, v21, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v17, 1, v17
	v_cndmask_b16 v20.l, 0x7fff, v18.h, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v13, v13, v19, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v18, 1, v23
	v_mov_b16_e32 v19.l, v14.h
	v_mov_b16_e32 v19.h, v3.l
	v_add3_u32 v17, v16, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_mov_b16_e32 v16.l, v13.h
	v_mov_b16_e32 v16.h, v3.l
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v18, v15, v18, 0x7fff
	v_cndmask_b16 v17.h, 0x7fff, v17.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_and_b32_e32 v15, 1, v16
	v_add3_u32 v16, v14, v19, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v19, 16, v92
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v14, v14
	v_cndmask_b16 v17.l, 0x7fff, v18.h, vcc_lo
	v_add3_u32 v14, v13, v15, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v15, 16, v90
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v8, v8, v19, v12
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v3.h, 0x7fff, v16.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v88
	v_lshlrev_b32_e32 v18, 16, v87
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v7, v7, v15, v11
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v8, v12, v8, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v6, v6, v16, v9
	v_fma_f32 v5, v5, v18, v10
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v7, v11, v7, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v11.l, v8.h
	v_mov_b16_e32 v11.h, v3.l
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v6, v9, v6, s2
	v_cndmask_b32_e64 v5, v10, v5, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v9.l, v7.h
	v_mov_b16_e32 v9.h, v3.l
	v_and_b32_e32 v10, 1, v11
	v_mov_b16_e32 v11.l, v6.h
	v_mov_b16_e32 v12.l, v5.h
	v_mov_b16_e32 v12.h, v3.l
	v_and_b32_e32 v9, 1, v9
	v_cndmask_b16 v3.l, 0x7fff, v14.h, vcc_lo
	v_add3_u32 v10, v8, v10, 0x7fff
	v_and_b32_e32 v11, 1, v11
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v9, v7, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_cmp_o_f32_e64 s0, v8, v8
	v_add3_u32 v8, v6, v11, 0x7fff
	v_add3_u32 v7, v5, v12, 0x7fff
	v_cmp_o_f32_e64 s1, v6, v6
	v_cmp_o_f32_e64 s2, v5, v5
	v_cndmask_b16 v5.h, 0x7fff, v9.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	v_cndmask_b16 v5.l, 0x7fff, v10.h, s0
	v_cndmask_b16 v1.h, 0x7fff, v8.h, s1
	v_cndmask_b16 v1.l, 0x7fff, v7.h, s2
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v7, v61, v63, vcc_lo
	v_cndmask_b32_e32 v31, v36, v42, vcc_lo
	v_cndmask_b32_e32 v33, v42, v36, vcc_lo
	v_cndmask_b32_e32 v36, v20, v24, vcc_lo
	v_dual_cndmask_b32 v20, v24, v20 :: v_dual_cndmask_b32 v37, v5, v17
	v_cndmask_b32_e32 v5, v17, v5, vcc_lo
	v_mov_b32_e32 v17, 0x5410
	v_dual_mov_b32 v24, 0x7632 :: v_dual_cndmask_b32 v27, v38, v43
	v_dual_cndmask_b32 v29, v43, v38 :: v_dual_cndmask_b32 v38, v1, v3
	v_cndmask_b32_e32 v1, v3, v1, vcc_lo
	v_permlanex16_b32 v3, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v7, 0x1054, v17, vcc_lo
	v_dual_cndmask_b32 v17, 0x3276, v24 :: v_dual_cndmask_b32 v6, v63, v61
	v_cndmask_b32_e32 v35, v30, v34, vcc_lo
	v_cndmask_b32_e32 v30, v34, v30, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v17, v17, 8, v17
	v_cndmask_b32_e32 v34, v28, v32, vcc_lo
	v_cndmask_b32_e32 v28, v32, v28, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v32, v22, v26 :: v_dual_and_b32 v7, 0x540054, v7
	v_dual_cndmask_b32 v22, v26, v22 :: v_dual_and_b32 v17, 0x760076, v17
	v_permlanex16_b32 v26, v33, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v9, v62, v64, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v17, v17, 4, v17
	v_cndmask_b32_e32 v11, v65, v57, vcc_lo
	v_cndmask_b32_e32 v13, v60, v56, vcc_lo
	v_cndmask_b32_e32 v15, v53, v49, vcc_lo
	v_and_b32_e32 v33, 0x5040504, v7
	v_dual_cndmask_b32 v18, v52, v48 :: v_dual_and_b32 v39, 0x7060706, v17
	v_cndmask_b32_e32 v21, v45, v41, vcc_lo
	v_cndmask_b32_e32 v25, v44, v40, vcc_lo
	v_cndmask_b32_e32 v19, v41, v45, vcc_lo
	v_permlanex16_b32 v41, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v5, v3, v6, v33
	v_perm_b32 v6, v3, v6, v39
	v_dual_cndmask_b32 v8, v64, v62 :: v_dual_and_b32 v3, 0x1e0, v0
	v_cndmask_b32_e32 v10, v57, v65, vcc_lo
	v_cndmask_b32_e32 v12, v56, v60, vcc_lo
	v_cndmask_b32_e32 v14, v49, v53, vcc_lo
	v_cndmask_b32_e32 v16, v48, v52, vcc_lo
	v_cndmask_b32_e32 v23, v40, v44, vcc_lo
	v_permlanex16_b32 v9, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_add_nc_u32_e32 v3, 32, v4
	v_perm_b32 v7, v9, v8, v33
	v_perm_b32 v8, v9, v8, v39
	v_perm_b32 v9, v11, v10, v33
	v_perm_b32 v10, v11, v10, v39
	v_perm_b32 v11, v13, v12, v33
	v_perm_b32 v12, v13, v12, v39
	v_perm_b32 v13, v15, v14, v33
	v_perm_b32 v14, v15, v14, v39
	v_perm_b32 v15, v18, v16, v33
	v_perm_b32 v16, v18, v16, v39
	v_perm_b32 v17, v21, v19, v33
	v_perm_b32 v18, v21, v19, v39
	v_perm_b32 v19, v24, v23, v33
	v_perm_b32 v20, v24, v23, v39
	v_perm_b32 v21, v25, v27, v33
	v_perm_b32 v22, v25, v27, v39
	v_perm_b32 v23, v26, v31, v33
	v_perm_b32 v24, v26, v31, v39
	v_perm_b32 v25, v29, v35, v33
	v_perm_b32 v26, v29, v35, v39
	v_perm_b32 v27, v28, v34, v33
	v_perm_b32 v29, v30, v32, v33
	v_perm_b32 v31, v40, v36, v33
	v_perm_b32 v0, v41, v37, v33
	v_perm_b32 v2, v42, v38, v33
	v_add_nc_u32_e32 v33, 64, v4
	v_perm_b32 v28, v28, v34, v39
	v_dual_cndmask_b32 v34, 0x80000000, v4 :: v_dual_cndmask_b32 v35, 0x80000000, v3
	v_perm_b32 v30, v30, v32, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[5:8], v34, s[24:27], 0 offen
	buffer_store_b128 v[9:12], v35, s[24:27], 0 offen
	buffer_store_b128 v[13:16], v33, s[24:27], 0 offen
	v_add_nc_u32_e32 v5, 0x60, v4
	v_add_nc_u32_e32 v6, 0x80, v4
	v_add_nc_u32_e32 v7, 0xa0, v4
	v_add_nc_u32_e32 v8, 0xc0, v4
	v_add_nc_u32_e32 v4, 0xe0, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_perm_b32 v32, v40, v36, v39
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_perm_b32 v1, v41, v37, v39
	v_perm_b32 v3, v42, v38, v39
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[17:20], v5, s[24:27], 0 offen
	buffer_store_b128 v[21:24], v6, s[24:27], 0 offen
	buffer_store_b128 v[25:28], v7, s[24:27], 0 offen
	buffer_store_b128 v[29:32], v8, s[24:27], 0 offen
	buffer_store_b128 v[0:3], v4, s[24:27], 0 offen
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 51
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 220
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15860
; TotalNumSgprs: 53
; NumVgprs: 220
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 53
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
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
