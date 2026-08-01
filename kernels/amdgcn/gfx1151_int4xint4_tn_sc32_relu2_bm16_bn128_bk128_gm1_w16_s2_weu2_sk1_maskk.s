	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
	v_and_b32_e32 v9, 15, v0
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
	v_mad_u64_u32 v[4:5], null, s26, v9, v[1:2]
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
	v_or_b32_e32 v6, s7, v9
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
.LBB0_3:                                ; %Flow207
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[24:25], s[0:1], 0x20
	v_bfe_u32 v74, v0, 4, 1
	v_dual_mov_b32 v10, 0 :: v_dual_lshlrev_b32 v79, 4, v0
	v_bfe_i32 v77, v0, 3, 1
	v_dual_mov_b32 v12, 0 :: v_dual_add_nc_u32 v75, 0, v9
	v_or_b32_e32 v76, 0x3f0, v0
	v_or_b32_e32 v78, 0x7f0, v0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_mov_b32_e32 v73, 0
	v_mov_b32_e32 v37, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s5, s6, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s16, 0
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_add_i32 s7, s7, 16
	s_lshl_b32 s0, s18, 8
	s_lshl_b32 s1, s17, 8
	v_sub_nc_u32_e32 v82, s19, v9
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
	v_dual_mov_b32 v37, 0 :: v_dual_and_b32 v4, 0x70, v79
	s_lshl_b32 s18, s18, 7
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v91, 0, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v6, s27, v6
	v_and_or_b32 v4, 0x88, v77, v4
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v68, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v5, 8, v4
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v66, 0
	v_add3_u32 v2, v6, s18, v2
	s_mov_b32 s18, s16
	v_add_nc_u32_e32 v3, s34, v9
	v_add_nc_u32_e32 v7, s7, v9
	v_lshlrev_b32_e32 v84, 1, v74
	v_subrev_nc_u32_e32 v86, s0, v2
	v_add_nc_u32_e32 v88, 0, v4
	v_mul_lo_u32 v3, s6, v3
	v_mul_lo_u32 v7, s26, v7
	v_add_nc_u32_e32 v89, 0, v5
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v90, 0, v76
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v62, 0 :: v_dual_lshlrev_b32 v85, 1, v3
	v_add3_u32 v87, v7, s34, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v10, 0
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
	v_perm_b32 v148, v148, v141, 0xc0c0004
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
	v_lshl_or_b32 v166, v176, 16, v175
	v_lshl_or_b32 v142, v191, 16, v190
	v_lshl_or_b32 v141, v143, 16, v136
	v_lshl_or_b32 v159, v154, 16, v138
	v_lshl_or_b32 v173, v144, 16, v128
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
	v_lshl_or_b32 v149, v153, 16, v137
	v_wmma_i32_16x16x16_iu4 v[117:124], v[157:158], v[183:184], v[117:124] neg_lo:[1,1,0]
	v_lshl_or_b32 v177, v147, 16, v131
	v_lshl_or_b32 v189, v132, 16, v127
	v_wmma_i32_16x16x16_iu4 v[125:132], v[133:134], v[181:182], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v186, v193, 16, v163
	v_lshl_or_b32 v185, v155, 16, v194
	v_lshl_or_b32 v187, v164, 16, v148
	v_lshl_or_b32 v190, v156, 16, v140
	v_wmma_i32_16x16x16_iu4 v[133:140], v[141:142], v[181:182], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[141:148], v[149:150], v[181:182], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[159:160], v[181:182], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[157:164], v[171:172], v[181:182], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[125:132], v[165:166], v[183:184], v[125:132] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v122, v122
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[133:140], v[167:168], v[183:184], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[141:148], v[169:170], v[183:184], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[165:172], v[177:178], v[181:182], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[173:174], v[183:184], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[157:164], v[175:176], v[183:184], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[173:180], v[187:188], v[181:182], v[1:8] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v128, v128
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[165:172], v[185:186], v[183:184], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[173:180], v[189:190], v[183:184], v[173:180] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v131, v131
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
	s_clause 0x15
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
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v119, v99, v119
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x6
	buffer_load_u16 v181, v93, s[40:43], 0 offen offset:88
	buffer_load_u16 v182, v93, s[40:43], 0 offen offset:92
	buffer_load_u16 v183, v93, s[40:43], 0 offen offset:96
	buffer_load_u16 v184, v93, s[40:43], 0 offen offset:100
	buffer_load_u16 v185, v93, s[40:43], 0 offen offset:104
	buffer_load_u16 v186, v93, s[40:43], 0 offen offset:108
	buffer_load_u16 v187, v93, s[40:43], 0 offen offset:112
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v104, 16, v104
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v105, 16, v105
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v106, 16, v106
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v110, 16, v110
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v72, v119, v105
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v117, v99, v117
	v_dual_mul_f32 v120, v99, v120 :: v_dual_lshlrev_b32 v103, 16, v103
	v_mul_f32_e32 v122, v99, v122
	s_waitcnt vmcnt(17)
	v_dual_mul_f32 v125, v99, v125 :: v_dual_lshlrev_b32 v116, 16, v116
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v37, v117, v103
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v128, v99, v128 :: v_dual_lshlrev_b32 v111, 16, v111
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v109, 16, v109
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v71, v120, v106 :: v_dual_mul_f32 v124, v99, v124
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v121, v99, v121 :: v_dual_lshlrev_b32 v112, 16, v112
	v_dual_mul_f32 v123, v99, v123 :: v_dual_lshlrev_b32 v114, 16, v114
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v107, 16, v107
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v66, v125, v111 :: v_dual_fmac_f32 v69, v122, v109
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v126, v99, v126
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v127, v99, v127 :: v_dual_lshlrev_b32 v100, 16, v100
	v_dual_mul_f32 v130, v99, v130 :: v_dual_lshlrev_b32 v113, 16, v113
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v129, v99, v129 :: v_dual_lshlrev_b32 v102, 16, v102
	v_dual_mul_f32 v132, v99, v132 :: v_dual_lshlrev_b32 v115, 16, v115
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v103, v93, s[40:43], 0 offen offset:116
	buffer_load_u16 v117, v93, s[40:43], 0 offen offset:120
	buffer_load_u16 v105, v93, s[40:43], 0 offen offset:132
	buffer_load_u16 v119, v93, s[40:43], 0 offen offset:136
	buffer_load_u16 v106, v93, s[40:43], 0 offen offset:140
	buffer_load_u16 v120, v93, s[40:43], 0 offen offset:144
	buffer_load_u16 v109, v93, s[40:43], 0 offen offset:156
	buffer_load_u16 v122, v93, s[40:43], 0 offen offset:160
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v68, v123, v110 :: v_dual_fmac_f32 v73, v118, v104
	v_fmac_f32_e32 v70, v121, v107
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x5
	buffer_load_u16 v104, v93, s[40:43], 0 offen offset:124
	buffer_load_u16 v118, v93, s[40:43], 0 offen offset:128
	buffer_load_u16 v107, v93, s[40:43], 0 offen offset:148
	buffer_load_u16 v121, v93, s[40:43], 0 offen offset:152
	buffer_load_u16 v110, v93, s[40:43], 0 offen offset:164
	buffer_load_u16 v123, v93, s[40:43], 0 offen offset:168
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v67, v124, v112 :: v_dual_fmac_f32 v64, v127, v113
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x3
	buffer_load_u16 v112, v93, s[40:43], 0 offen offset:172
	buffer_load_u16 v124, v93, s[40:43], 0 offen offset:176
	buffer_load_u16 v111, v93, s[40:43], 0 offen offset:180
	buffer_load_u16 v125, v93, s[40:43], 0 offen offset:184
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v65, v126, v114 :: v_dual_fmac_f32 v62, v129, v115
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x5
	buffer_load_u16 v114, v93, s[40:43], 0 offen offset:188
	buffer_load_u16 v126, v93, s[40:43], 0 offen offset:192
	buffer_load_u16 v113, v93, s[40:43], 0 offen offset:196
	buffer_load_u16 v127, v93, s[40:43], 0 offen offset:200
	buffer_load_u16 v115, v93, s[40:43], 0 offen offset:212
	buffer_load_u16 v129, v93, s[40:43], 0 offen offset:216
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v61, v130, v100 :: v_dual_mul_f32 v134, v99, v134
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v100, v93, s[40:43], 0 offen offset:220
	buffer_load_u16 v130, v93, s[40:43], 0 offen offset:224
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(38)
	v_dual_mul_f32 v131, v99, v131 :: v_dual_lshlrev_b32 v108, 16, v108
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v59, v132, v102 :: v_dual_mul_f32 v136, v99, v136
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v102, v93, s[40:43], 0 offen offset:236
	buffer_load_u16 v132, v93, s[40:43], 0 offen offset:240
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v133, v99, v133
	v_mul_f32_e32 v135, v99, v135
	s_waitcnt vmcnt(39)
	v_dual_mul_f32 v137, v99, v137 :: v_dual_lshlrev_b32 v94, 16, v94
	v_mul_f32_e32 v138, v99, v138
	s_waitcnt vmcnt(37)
	v_dual_mul_f32 v139, v99, v139 :: v_dual_lshlrev_b32 v96, 16, v96
	v_mul_f32_e32 v140, v99, v140
	s_waitcnt vmcnt(35)
	v_dual_mul_f32 v141, v99, v141 :: v_dual_lshlrev_b32 v98, 16, v98
	v_dual_mul_f32 v142, v99, v142 :: v_dual_lshlrev_b32 v95, 16, v95
	s_waitcnt vmcnt(33)
	v_dual_mul_f32 v143, v99, v143 :: v_dual_lshlrev_b32 v182, 16, v182
	v_dual_mul_f32 v144, v99, v144 :: v_dual_lshlrev_b32 v97, 16, v97
	s_waitcnt vmcnt(31)
	v_dual_mul_f32 v145, v99, v145 :: v_dual_lshlrev_b32 v184, 16, v184
	v_dual_mul_f32 v146, v99, v146 :: v_dual_lshlrev_b32 v181, 16, v181
	s_waitcnt vmcnt(29)
	v_dual_mul_f32 v147, v99, v147 :: v_dual_lshlrev_b32 v186, 16, v186
	v_dual_mul_f32 v148, v99, v148 :: v_dual_lshlrev_b32 v183, 16, v183
	v_mul_f32_e32 v149, v99, v149
	v_dual_mul_f32 v150, v99, v150 :: v_dual_lshlrev_b32 v185, 16, v185
	v_mul_f32_e32 v151, v99, v151
	s_waitcnt vmcnt(28)
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
	v_mul_f32_e32 v179, v99, v179
	v_dual_mul_f32 v99, v99, v180 :: v_dual_fmac_f32 v54, v137, v97
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_dual_cndmask_b32 v180, 0x80000000, v86 :: v_dual_lshlrev_b32 v101, 16, v101
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v58, v133, v108
	v_fmac_f32_e32 v63, v128, v116
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v116, v93, s[40:43], 0 offen offset:204
	buffer_load_u16 v128, v93, s[40:43], 0 offen offset:208
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b32 v180, v180, s[36:39], 0 offen
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v60, v131, v101
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x4
	buffer_load_u16 v101, v93, s[40:43], 0 offen offset:228
	buffer_load_u16 v131, v93, s[40:43], 0 offen offset:232
	buffer_load_u16 v108, v93, s[40:43], 0 offen offset:244
	buffer_load_u16 v133, v93, s[40:43], 0 offen offset:248
	buffer_load_u16 v93, v93, s[40:43], 0 offen offset:252
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v55, v136, v96 :: v_dual_add_nc_u32 v86, s50, v86
	v_fmac_f32_e32 v48, v143, v185
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v56, v135, v95 :: v_dual_fmac_f32 v57, v134, v94
	v_fmac_f32_e32 v50, v141, v183
	v_fmac_f32_e32 v46, v145, v187
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	ds_store_b8 v80, v92 offset:2048
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(5)
	ds_store_b32 v81, v180
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
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v101, 16, v101
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v52, v139, v181 :: v_dual_lshlrev_b32 v131, 16, v131
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v102, 16, v102
	v_lshlrev_b32_e32 v132, 16, v132
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v108, 16, v108
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v133, 16, v133
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v42, v149, v118 :: v_dual_lshlrev_b32 v93, 16, v93
	v_dual_fmac_f32 v53, v138, v98 :: v_dual_fmac_f32 v44, v147, v117
	v_dual_fmac_f32 v51, v140, v182 :: v_dual_fmac_f32 v40, v151, v119
	v_dual_fmac_f32 v49, v142, v184 :: v_dual_fmac_f32 v34, v156, v109
	v_dual_fmac_f32 v47, v144, v186 :: v_dual_fmac_f32 v38, v153, v120
	v_dual_fmac_f32 v45, v146, v103 :: v_dual_fmac_f32 v30, v160, v112
	v_dual_fmac_f32 v43, v148, v104 :: v_dual_fmac_f32 v36, v154, v107
	v_dual_fmac_f32 v41, v150, v105 :: v_dual_fmac_f32 v26, v164, v114
	v_dual_fmac_f32 v39, v152, v106 :: v_dual_fmac_f32 v28, v162, v111
	v_dual_fmac_f32 v35, v155, v121 :: v_dual_fmac_f32 v32, v158, v110
	v_dual_fmac_f32 v33, v157, v122 :: v_dual_fmac_f32 v24, v166, v113
	v_dual_fmac_f32 v31, v159, v123 :: v_dual_fmac_f32 v22, v168, v116
	v_dual_fmac_f32 v29, v161, v124 :: v_dual_fmac_f32 v20, v170, v115
	v_dual_fmac_f32 v27, v163, v125 :: v_dual_fmac_f32 v18, v172, v100
	v_dual_fmac_f32 v25, v165, v126 :: v_dual_fmac_f32 v16, v174, v101
	v_dual_fmac_f32 v23, v167, v127 :: v_dual_fmac_f32 v14, v176, v102
	v_dual_fmac_f32 v21, v169, v128 :: v_dual_fmac_f32 v10, v99, v93
	v_dual_fmac_f32 v19, v171, v129 :: v_dual_fmac_f32 v12, v178, v108
	v_fmac_f32_e32 v17, v173, v130
	v_fmac_f32_e32 v15, v175, v131
	v_fmac_f32_e32 v13, v177, v132
	v_fmac_f32_e32 v11, v179, v133
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow208
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v2, s6, v9
	s_mul_i32 s1, s34, s6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s0, s5, 0
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v1, 16, v0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_add_i32 s1, s1, s0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v2, s1, v2, 1
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	buffer_load_u16 v2, v2, s[28:31], 0 offen
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_mov_b32_e32 v138, 0
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
	ds_load_u8 v84, v75 offset:656
	ds_load_u8 v92, v75 offset:672
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v138, s11 :: v_dual_and_b32 v3, 0x70, v79
	v_dual_mov_b32 v137, s10 :: v_dual_add_nc_u32 v118, 0, v78
	v_mov_b32_e32 v136, s9
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_and_or_b32 v3, 0x88, v77, v3
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v135, s8 :: v_dual_mov_b32 v134, s7
	v_dual_mov_b32 v133, s6 :: v_dual_mov_b32 v132, s5
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
	v_dual_mov_b32 v131, s4 :: v_dual_add_nc_u32 v146, 0, v76
	ds_load_u8 v100, v75 offset:1664
	ds_load_u8 v101, v75 offset:1536
	v_lshl_or_b32 v8, v7, 16, v78
	ds_load_u8 v7, v75 offset:384
	ds_load_u8 v77, v75 offset:256
	ds_load_u8 v89, v75 offset:144
	ds_load_u8 v96, v75 offset:160
	ds_load_u8 v116, v75 offset:176
	ds_load_u8 v117, v75 offset:192
	ds_load_u8 v123, v75 offset:208
	ds_load_u8 v128, v75 offset:224
	ds_load_u8 v149, v75 offset:240
	ds_load_u8 v90, v75 offset:16
	ds_load_u8 v97, v75 offset:32
	ds_load_u8 v124, v75 offset:48
	ds_load_u8 v125, v75 offset:64
	ds_load_u8 v126, v75 offset:80
	ds_load_u8 v129, v75 offset:96
	ds_load_u8 v150, v75 offset:112
	ds_load_u8 v104, v75 offset:688
	ds_load_u8 v105, v75 offset:704
	ds_load_u8 v108, v75 offset:720
	ds_load_u8 v119, v75 offset:736
	ds_load_u8 v130, v75 offset:752
	ds_load_u8 v85, v75 offset:528
	ds_load_u8 v93, v75 offset:544
	ds_load_u8 v106, v75 offset:560
	ds_load_u8 v107, v75 offset:576
	ds_load_u8 v109, v75 offset:592
	ds_load_u8 v120, v75 offset:608
	ds_load_u8 v147, v75 offset:624
	ds_load_u8 v86, v75 offset:1024
	ds_load_u8 v87, v75 offset:912
	ds_load_u8 v94, v75 offset:928
	ds_load_u8 v110, v75 offset:944
	ds_load_u8 v111, v75 offset:960
	ds_load_u8 v112, v75 offset:976
	ds_load_u8 v121, v75 offset:992
	ds_load_u8 v88, v75 offset:784
	ds_load_u8 v95, v75 offset:800
	ds_load_u8 v113, v75 offset:816
	ds_load_u8 v114, v75 offset:832
	ds_load_u8 v115, v75 offset:848
	ds_load_u8 v122, v75 offset:864
	ds_load_u8 v148, v75 offset:880
	ds_load_u8 v91, v75 offset:400
	ds_load_u8 v98, v75 offset:416
	ds_load_u8 v127, v75 offset:432
	ds_load_u8 v139, v75 offset:448
	ds_load_u8 v140, v75 offset:464
	ds_load_u8 v141, v75 offset:480
	ds_load_u8 v151, v75 offset:496
	ds_load_u8 v99, v75 offset:272
	ds_load_u8 v102, v75 offset:288
	ds_load_u8 v142, v75 offset:304
	ds_load_u8 v143, v75 offset:320
	ds_load_u8 v144, v75 offset:336
	ds_load_u8 v145, v75 offset:352
	ds_load_u8 v152, v75 offset:368
	ds_load_u8 v181, v75 offset:1040
	ds_load_u8 v182, v75 offset:1056
	ds_load_u8 v183, v75 offset:1072
	ds_load_u8 v184, v75 offset:1088
	ds_load_u8 v185, v75 offset:1104
	ds_load_u8 v186, v75 offset:1120
	ds_load_u8 v187, v75 offset:1136
	s_waitcnt lgkmcnt(61)
	v_perm_b32 v7, v77, v7, 0xc0c0004
	v_perm_b32 v78, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(41)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v85, v88, v87, 0xc0c0004
	v_perm_b32 v87, v90, v89, 0xc0c0004
	v_lshl_or_b32 v7, v7, 16, v78
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v75 offset:1152
	ds_load_u8 v166, v75 offset:1680
	ds_load_u8 v167, v75 offset:1696
	ds_load_u8 v168, v75 offset:1712
	ds_load_u8 v169, v75 offset:1728
	ds_load_u8 v170, v75 offset:1744
	ds_load_u8 v171, v75 offset:1760
	ds_load_u8 v172, v75 offset:1776
	ds_load_u8 v173, v75 offset:1808
	ds_load_u8 v174, v75 offset:1824
	ds_load_u8 v175, v75 offset:1840
	ds_load_u8 v176, v75 offset:1856
	ds_load_u8 v177, v75 offset:1872
	ds_load_u8 v178, v75 offset:1888
	ds_load_u8 v179, v75 offset:1904
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v88, v99, v91, 0xc0c0004
	ds_load_u8 v99, v75 offset:1936
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
	v_wmma_i32_16x16x16_iu4 v[76:83], v[7:8], v[5:6], v[131:138] neg_lo:[1,1,0]
	ds_load_u8 v7, v75 offset:1920
	ds_load_u8 v8, v75 offset:1792
	ds_load_u8 v103, v75 offset:1424
	ds_load_u8 v153, v75 offset:1440
	ds_load_u8 v154, v75 offset:1456
	ds_load_u8 v155, v75 offset:1472
	ds_load_u8 v156, v75 offset:1488
	ds_load_u8 v157, v75 offset:1504
	ds_load_u8 v158, v75 offset:1520
	ds_load_u8 v159, v75 offset:1552
	ds_load_u8 v160, v75 offset:1568
	ds_load_u8 v161, v75 offset:1584
	ds_load_u8 v162, v75 offset:1600
	ds_load_u8 v163, v75 offset:1616
	ds_load_u8 v164, v75 offset:1632
	ds_load_u8 v165, v75 offset:1648
	s_waitcnt lgkmcnt(45)
	v_perm_b32 v86, v86, v101, 0xc0c0004
	v_perm_b32 v92, v93, v92, 0xc0c0004
	v_perm_b32 v93, v95, v94, 0xc0c0004
	v_perm_b32 v94, v97, v96, 0xc0c0004
	v_perm_b32 v95, v102, v98, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v180, v8, v7, 0xc0c0004
	ds_load_u8 v7, v75 offset:1408
	ds_load_u8 v8, v75 offset:1280
	v_perm_b32 v104, v106, v104, 0xc0c0004
	v_perm_b32 v106, v113, v110, 0xc0c0004
	v_lshl_or_b32 v102, v95, 16, v94
	v_lshl_or_b32 v101, v180, 16, v100
	ds_load_u8 v180, v75 offset:1952
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v96, v195, v103, 0xc0c0004
	v_lshl_or_b32 v103, v93, 16, v92
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v153, v196, v153, 0xc0c0004
	v_perm_b32 v110, v124, v116, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v124, v197, v154, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v160, v160, v167, 0xc0c0004
	v_perm_b32 v113, v142, v127, 0xc0c0004
	v_perm_b32 v116, v183, v190, 0xc0c0004
	v_perm_b32 v127, v107, v105, 0xc0c0004
	v_perm_b32 v111, v114, v111, 0xc0c0004
	v_perm_b32 v114, v125, v117, 0xc0c0004
	v_perm_b32 v125, v143, v139, 0xc0c0004
	v_perm_b32 v139, v198, v155, 0xc0c0004
	v_perm_b32 v142, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v89, v8, v7, 0xc0c0004
	v_lshl_or_b32 v8, v85, 16, v84
	v_lshl_or_b32 v7, v88, 16, v87
	v_lshl_or_b32 v117, v111, 16, v127
	v_perm_b32 v127, v184, v191, 0xc0c0004
	v_lshl_or_b32 v100, v89, 16, v86
	v_perm_b32 v143, v115, v112, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[84:91], v[7:8], v[5:6], v[131:138] neg_lo:[1,1,0]
	v_perm_b32 v7, v159, v166, 0xc0c0004
	v_perm_b32 v8, v173, v99, 0xc0c0004
	v_perm_b32 v173, v182, v189, 0xc0c0004
	ds_load_u8 v154, v118
	ds_load_u8 v159, v75 offset:1968
	ds_load_u8 v166, v75 offset:1984
	ds_load_u8 v202, v75 offset:2000
	ds_load_u8 v75, v75 offset:2016
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v167, v174, v180, 0xc0c0004
	v_lshl_or_b32 v8, v8, 16, v7
	v_perm_b32 v7, v181, v188, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[76:83], v[100:101], v[3:4], v[76:83] neg_lo:[1,1,0]
	v_perm_b32 v123, v126, v123, 0xc0c0004
	v_perm_b32 v126, v144, v140, 0xc0c0004
	v_perm_b32 v130, v147, v130, 0xc0c0004
	v_lshl_or_b32 v7, v96, 16, v7
	v_wmma_i32_16x16x16_iu4 v[92:99], v[102:103], v[5:6], v[131:138] neg_lo:[1,1,0]
	v_lshl_or_b32 v102, v153, 16, v173
	ds_load_u8 v153, v146
	v_lshl_or_b32 v103, v167, 16, v160
	v_wmma_i32_16x16x16_iu4 v[84:91], v[7:8], v[3:4], v[84:91] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v106, 16, v104
	v_lshl_or_b32 v7, v113, 16, v110
	v_perm_b32 v110, v161, v168, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[92:99], v[102:103], v[3:4], v[92:99] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v113, v175, v159, 0xc0c0004
	v_lshl_or_b32 v126, v126, 16, v123
	v_wmma_i32_16x16x16_iu4 v[100:107], v[7:8], v[5:6], v[131:138] neg_lo:[1,1,0]
	v_lshl_or_b32 v7, v124, 16, v116
	v_lshl_or_b32 v116, v125, 16, v114
	v_lshl_or_b32 v8, v113, 16, v110
	v_perm_b32 v124, v162, v169, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v125, v176, v166, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v140, v177, v202, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[108:115], v[116:117], v[5:6], v[131:138] neg_lo:[1,1,0]
	v_perm_b32 v116, v120, v119, 0xc0c0004
	v_perm_b32 v117, v122, v121, 0xc0c0004
	v_perm_b32 v119, v129, v128, 0xc0c0004
	v_perm_b32 v120, v145, v141, 0xc0c0004
	v_lshl_or_b32 v125, v125, 16, v124
	v_lshl_or_b32 v124, v139, 16, v127
	v_lshl_or_b32 v127, v143, 16, v142
	v_perm_b32 v139, v163, v170, 0xc0c0004
	v_perm_b32 v141, v185, v192, 0xc0c0004
	v_perm_b32 v142, v199, v156, 0xc0c0004
	v_lshl_or_b32 v129, v117, 16, v116
	v_lshl_or_b32 v128, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[116:123], v[126:127], v[5:6], v[131:138] neg_lo:[1,1,0]
	v_lshl_or_b32 v127, v140, 16, v139
	v_lshl_or_b32 v126, v142, 16, v141
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[139:146], v[128:129], v[5:6], v[131:138] neg_lo:[1,1,0]
	v_perm_b32 v128, v150, v149, 0xc0c0004
	v_perm_b32 v129, v152, v151, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v153, 0xc0c0004
	v_perm_b32 v155, v164, v171, 0xc0c0004
	v_perm_b32 v75, v178, v75, 0xc0c0004
	v_perm_b32 v149, v186, v193, 0xc0c0004
	v_perm_b32 v150, v200, v157, 0xc0c0004
	v_lshl_or_b32 v128, v129, 16, v128
	v_lshl_or_b32 v129, v147, 16, v130
	v_perm_b32 v130, v187, v194, 0xc0c0004
	v_perm_b32 v151, v201, v158, 0xc0c0004
	v_perm_b32 v152, v165, v172, 0xc0c0004
	v_perm_b32 v153, v179, v154, 0xc0c0004
	v_lshl_or_b32 v148, v75, 16, v155
	v_lshl_or_b32 v147, v150, 16, v149
	v_wmma_i32_16x16x16_iu4 v[131:138], v[128:129], v[5:6], v[131:138] neg_lo:[1,1,0]
	v_lshl_or_b32 v5, v151, 16, v130
	v_lshl_or_b32 v6, v153, 16, v152
	v_wmma_i32_16x16x16_iu4 v[100:107], v[7:8], v[3:4], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[108:115], v[124:125], v[3:4], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[116:123], v[126:127], v[3:4], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[147:148], v[3:4], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[131:138], v[5:6], v[3:4], v[131:138] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v4, v76
	v_cvt_f32_i32_e32 v5, v77
	v_cvt_f32_i32_e32 v6, v78
	v_cvt_f32_i32_e32 v7, v79
	v_cvt_f32_i32_e32 v8, v80
	v_cvt_f32_i32_e32 v80, v81
	v_cvt_f32_i32_e32 v81, v82
	v_cvt_f32_i32_e32 v82, v83
	v_cvt_f32_i32_e32 v83, v84
	v_cvt_f32_i32_e32 v84, v85
	v_cvt_f32_i32_e32 v85, v86
	v_cvt_f32_i32_e32 v86, v87
	v_cvt_f32_i32_e32 v87, v88
	v_cvt_f32_i32_e32 v88, v89
	v_cvt_f32_i32_e32 v89, v90
	v_cvt_f32_i32_e32 v90, v91
	v_cvt_f32_i32_e32 v91, v92
	v_cvt_f32_i32_e32 v92, v93
	v_cvt_f32_i32_e32 v93, v94
	v_cvt_f32_i32_e32 v94, v95
	v_cvt_f32_i32_e32 v95, v96
	v_cvt_f32_i32_e32 v96, v97
	v_cvt_f32_i32_e32 v97, v98
	v_cvt_f32_i32_e32 v98, v99
	v_cvt_f32_i32_e32 v99, v100
	v_cvt_f32_i32_e32 v100, v101
	v_cvt_f32_i32_e32 v101, v102
	v_cvt_f32_i32_e32 v102, v103
	v_cvt_f32_i32_e32 v103, v104
	v_cvt_f32_i32_e32 v104, v105
	v_cvt_f32_i32_e32 v105, v106
	v_cvt_f32_i32_e32 v106, v107
	v_cvt_f32_i32_e32 v107, v108
	v_cvt_f32_i32_e32 v108, v109
	v_cvt_f32_i32_e32 v109, v110
	v_cvt_f32_i32_e32 v110, v111
	v_cvt_f32_i32_e32 v111, v112
	v_cvt_f32_i32_e32 v112, v113
	v_cvt_f32_i32_e32 v113, v114
	v_cvt_f32_i32_e32 v114, v115
	v_cvt_f32_i32_e32 v115, v116
	v_cvt_f32_i32_e32 v116, v117
	v_cvt_f32_i32_e32 v117, v118
	v_cvt_f32_i32_e32 v118, v119
	v_cvt_f32_i32_e32 v119, v120
	v_cvt_f32_i32_e32 v120, v121
	v_cvt_f32_i32_e32 v121, v122
	v_cvt_f32_i32_e32 v122, v123
	v_cvt_f32_i32_e32 v123, v139
	v_cvt_f32_i32_e32 v124, v140
	v_cvt_f32_i32_e32 v125, v141
	v_cvt_f32_i32_e32 v126, v142
	v_cvt_f32_i32_e32 v127, v143
	v_cvt_f32_i32_e32 v128, v144
	v_cvt_f32_i32_e32 v129, v145
	v_cvt_f32_i32_e32 v130, v146
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
.LBB0_8:
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s0, s0, s27
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s5, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s33, s0
	s_mov_b32 s7, 0x31027000
	v_add_lshl_u32 v3, s0, v74, 1
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s4, s14
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	s_mul_i32 s34, s34, s27
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v75, 4, v3
	v_add_nc_u32_e32 v76, 8, v3
	v_add_nc_u32_e32 v77, 12, v3
	v_add_nc_u32_e32 v78, 16, v3
	v_add_nc_u32_e32 v79, 20, v3
	v_add_nc_u32_e32 v139, 24, v3
	v_add_nc_u32_e32 v140, 28, v3
	v_cndmask_b32_e64 v74, 0x80000000, v3, s2
	v_cndmask_b32_e64 v75, 0x80000000, v75, s2
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	s_clause 0x7
	buffer_load_u16 v74, v74, s[4:7], 0 offen
	buffer_load_u16 v75, v75, s[4:7], 0 offen
	buffer_load_u16 v76, v76, s[4:7], 0 offen
	buffer_load_u16 v77, v77, s[4:7], 0 offen
	buffer_load_u16 v78, v78, s[4:7], 0 offen
	buffer_load_u16 v79, v79, s[4:7], 0 offen
	buffer_load_u16 v139, v139, s[4:7], 0 offen
	buffer_load_u16 v140, v140, s[4:7], 0 offen
	v_add_nc_u32_e32 v189, 0xe0, v3
	v_add_nc_u32_e32 v190, 0xe4, v3
	v_add_nc_u32_e32 v191, 0xe8, v3
	v_add_nc_u32_e32 v192, 0xec, v3
	v_add_nc_u32_e32 v141, 32, v3
	v_add_nc_u32_e32 v142, 36, v3
	v_add_nc_u32_e32 v143, 40, v3
	v_add_nc_u32_e32 v144, 44, v3
	v_add_nc_u32_e32 v145, 48, v3
	v_add_nc_u32_e32 v146, 52, v3
	v_add_nc_u32_e32 v147, 56, v3
	v_add_nc_u32_e32 v148, 60, v3
	v_add_nc_u32_e32 v149, 64, v3
	v_add_nc_u32_e32 v150, 0x44, v3
	v_add_nc_u32_e32 v151, 0x48, v3
	v_add_nc_u32_e32 v152, 0x4c, v3
	v_add_nc_u32_e32 v153, 0x50, v3
	v_add_nc_u32_e32 v154, 0x54, v3
	v_add_nc_u32_e32 v155, 0x58, v3
	v_add_nc_u32_e32 v156, 0x5c, v3
	v_add_nc_u32_e32 v157, 0x60, v3
	v_add_nc_u32_e32 v158, 0x64, v3
	v_add_nc_u32_e32 v159, 0x68, v3
	v_add_nc_u32_e32 v160, 0x6c, v3
	v_add_nc_u32_e32 v161, 0x70, v3
	v_add_nc_u32_e32 v162, 0x74, v3
	v_add_nc_u32_e32 v163, 0x78, v3
	v_add_nc_u32_e32 v164, 0x7c, v3
	v_add_nc_u32_e32 v165, 0x80, v3
	v_add_nc_u32_e32 v166, 0x84, v3
	v_add_nc_u32_e32 v167, 0x88, v3
	v_add_nc_u32_e32 v168, 0x8c, v3
	v_add_nc_u32_e32 v169, 0x90, v3
	v_add_nc_u32_e32 v170, 0x94, v3
	v_add_nc_u32_e32 v171, 0x98, v3
	v_add_nc_u32_e32 v172, 0x9c, v3
	v_add_nc_u32_e32 v173, 0xa0, v3
	v_add_nc_u32_e32 v174, 0xa4, v3
	v_add_nc_u32_e32 v175, 0xa8, v3
	v_add_nc_u32_e32 v176, 0xac, v3
	v_add_nc_u32_e32 v177, 0xb0, v3
	v_add_nc_u32_e32 v178, 0xb4, v3
	v_add_nc_u32_e32 v179, 0xb8, v3
	v_add_nc_u32_e32 v180, 0xbc, v3
	v_add_nc_u32_e32 v181, 0xc0, v3
	v_add_nc_u32_e32 v182, 0xc4, v3
	v_add_nc_u32_e32 v183, 0xc8, v3
	v_add_nc_u32_e32 v184, 0xcc, v3
	v_add_nc_u32_e32 v185, 0xd0, v3
	v_add_nc_u32_e32 v186, 0xd4, v3
	v_add_nc_u32_e32 v187, 0xd8, v3
	v_add_nc_u32_e32 v188, 0xdc, v3
	v_add_nc_u32_e32 v193, 0xf0, v3
	v_add_nc_u32_e32 v194, 0xf4, v3
	v_add_nc_u32_e32 v195, 0xf8, v3
	v_add_nc_u32_e32 v3, 0xfc, v3
	v_cndmask_b32_e64 v189, 0x80000000, v189, s2
	v_cndmask_b32_e64 v190, 0x80000000, v190, s2
	v_cndmask_b32_e64 v191, 0x80000000, v191, s2
	v_cndmask_b32_e64 v192, 0x80000000, v192, s2
	v_cndmask_b32_e64 v193, 0x80000000, v193, s2
	v_cndmask_b32_e64 v194, 0x80000000, v194, s2
	v_cndmask_b32_e64 v195, 0x80000000, v195, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	s_clause 0x7
	buffer_load_u16 v189, v189, s[4:7], 0 offen
	buffer_load_u16 v190, v190, s[4:7], 0 offen
	buffer_load_u16 v191, v191, s[4:7], 0 offen
	buffer_load_u16 v192, v192, s[4:7], 0 offen
	buffer_load_u16 v193, v193, s[4:7], 0 offen
	buffer_load_u16 v194, v194, s[4:7], 0 offen
	buffer_load_u16 v195, v195, s[4:7], 0 offen
	buffer_load_u16 v196, v3, s[4:7], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v3.l, 0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v3.h, v2.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v142, 0x80000000, v142, s2
	v_cndmask_b32_e64 v144, 0x80000000, v144, s2
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	v_cndmask_b32_e64 v146, 0x80000000, v146, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v6, v6, v3
	v_mul_f32_e32 v7, v7, v3
	v_mul_f32_e32 v4, v4, v3
	v_mul_f32_e32 v5, v5, v3
	v_mul_f32_e32 v80, v80, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v147, 0x80000000, v147, s2
	v_cndmask_b32_e64 v148, 0x80000000, v148, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v82, v82, v3
	v_mul_f32_e32 v83, v83, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v165, 0x80000000, v165, s2
	v_cndmask_b32_e64 v166, 0x80000000, v166, s2
	v_cndmask_b32_e64 v167, 0x80000000, v167, s2
	v_cndmask_b32_e64 v173, 0x80000000, v173, s2
	v_cndmask_b32_e64 v150, 0x80000000, v150, s2
	v_cndmask_b32_e64 v168, 0x80000000, v168, s2
	v_cndmask_b32_e64 v174, 0x80000000, v174, s2
	v_cndmask_b32_e64 v151, 0x80000000, v151, s2
	v_cndmask_b32_e64 v157, 0x80000000, v157, s2
	v_cndmask_b32_e64 v169, 0x80000000, v169, s2
	v_cndmask_b32_e64 v170, 0x80000000, v170, s2
	v_cndmask_b32_e64 v171, 0x80000000, v171, s2
	v_cndmask_b32_e64 v172, 0x80000000, v172, s2
	v_cndmask_b32_e64 v175, 0x80000000, v175, s2
	v_cndmask_b32_e64 v152, 0x80000000, v152, s2
	v_cndmask_b32_e64 v158, 0x80000000, v158, s2
	s_clause 0x7
	buffer_load_u16 v165, v165, s[4:7], 0 offen
	buffer_load_u16 v166, v166, s[4:7], 0 offen
	buffer_load_u16 v167, v167, s[4:7], 0 offen
	buffer_load_u16 v168, v168, s[4:7], 0 offen
	buffer_load_u16 v169, v169, s[4:7], 0 offen
	buffer_load_u16 v170, v170, s[4:7], 0 offen
	buffer_load_u16 v171, v171, s[4:7], 0 offen
	buffer_load_u16 v172, v172, s[4:7], 0 offen
	v_cndmask_b32_e64 v176, 0x80000000, v176, s2
	v_cndmask_b32_e64 v153, 0x80000000, v153, s2
	v_cndmask_b32_e64 v154, 0x80000000, v154, s2
	v_cndmask_b32_e64 v155, 0x80000000, v155, s2
	v_cndmask_b32_e64 v156, 0x80000000, v156, s2
	v_cndmask_b32_e64 v159, 0x80000000, v159, s2
	v_cndmask_b32_e64 v177, 0x80000000, v177, s2
	v_cndmask_b32_e64 v178, 0x80000000, v178, s2
	v_cndmask_b32_e64 v179, 0x80000000, v179, s2
	v_cndmask_b32_e64 v180, 0x80000000, v180, s2
	v_cndmask_b32_e64 v160, 0x80000000, v160, s2
	s_clause 0x7
	buffer_load_u16 v173, v173, s[4:7], 0 offen
	buffer_load_u16 v174, v174, s[4:7], 0 offen
	buffer_load_u16 v175, v175, s[4:7], 0 offen
	buffer_load_u16 v176, v176, s[4:7], 0 offen
	buffer_load_u16 v177, v177, s[4:7], 0 offen
	buffer_load_u16 v178, v178, s[4:7], 0 offen
	buffer_load_u16 v179, v179, s[4:7], 0 offen
	buffer_load_u16 v180, v180, s[4:7], 0 offen
	v_cndmask_b32_e64 v161, 0x80000000, v161, s2
	v_cndmask_b32_e64 v162, 0x80000000, v162, s2
	v_cndmask_b32_e64 v163, 0x80000000, v163, s2
	v_cndmask_b32_e64 v164, 0x80000000, v164, s2
	s_clause 0x7
	buffer_load_u16 v157, v157, s[4:7], 0 offen
	buffer_load_u16 v158, v158, s[4:7], 0 offen
	buffer_load_u16 v159, v159, s[4:7], 0 offen
	buffer_load_u16 v160, v160, s[4:7], 0 offen
	buffer_load_u16 v161, v161, s[4:7], 0 offen
	buffer_load_u16 v162, v162, s[4:7], 0 offen
	buffer_load_u16 v163, v163, s[4:7], 0 offen
	buffer_load_u16 v164, v164, s[4:7], 0 offen
	v_cndmask_b32_e64 v181, 0x80000000, v181, s2
	v_cndmask_b32_e64 v182, 0x80000000, v182, s2
	v_cndmask_b32_e64 v183, 0x80000000, v183, s2
	v_cndmask_b32_e64 v184, 0x80000000, v184, s2
	v_cndmask_b32_e64 v185, 0x80000000, v185, s2
	v_cndmask_b32_e64 v186, 0x80000000, v186, s2
	v_cndmask_b32_e64 v187, 0x80000000, v187, s2
	v_cndmask_b32_e64 v188, 0x80000000, v188, s2
	s_clause 0x7
	buffer_load_u16 v181, v181, s[4:7], 0 offen
	buffer_load_u16 v182, v182, s[4:7], 0 offen
	buffer_load_u16 v183, v183, s[4:7], 0 offen
	buffer_load_u16 v184, v184, s[4:7], 0 offen
	buffer_load_u16 v185, v185, s[4:7], 0 offen
	buffer_load_u16 v186, v186, s[4:7], 0 offen
	buffer_load_u16 v187, v187, s[4:7], 0 offen
	buffer_load_u16 v188, v188, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v81, v81, v3
	v_mul_f32_e32 v84, v84, v3
	v_mul_f32_e32 v90, v90, v3
	v_mul_f32_e32 v96, v96, v3
	v_mul_f32_e32 v102, v102, v3
	v_mul_f32_e32 v103, v103, v3
	v_mul_f32_e32 v108, v108, v3
	v_mul_f32_e32 v109, v109, v3
	v_mul_f32_e32 v114, v114, v3
	v_mul_f32_e32 v115, v115, v3
	v_mul_f32_e32 v120, v120, v3
	v_mul_f32_e32 v121, v121, v3
	v_mul_f32_e32 v105, v105, v3
	v_mul_f32_e32 v111, v111, v3
	v_mul_f32_e32 v117, v117, v3
	v_mul_f32_e32 v123, v123, v3
	v_mul_f32_e32 v88, v88, v3
	v_mul_f32_e32 v94, v94, v3
	v_mul_f32_e32 v101, v101, v3
	v_mul_f32_e32 v107, v107, v3
	v_mul_f32_e32 v113, v113, v3
	v_mul_f32_e32 v119, v119, v3
	v_mul_f32_e32 v100, v100, v3
	v_mul_f32_e32 v125, v125, v3
	v_mul_f32_e32 v131, v131, v3
	v_mul_f32_e32 v86, v86, v3
	v_mul_f32_e32 v127, v127, v3
	v_mul_f32_e32 v132, v132, v3
	v_mul_f32_e32 v133, v133, v3
	v_mul_f32_e32 v138, v138, v3
	v_mul_f32_e32 v129, v129, v3
	v_mul_f32_e32 v135, v135, v3
	v_mul_f32_e32 v92, v92, v3
	v_mul_f32_e32 v98, v98, v3
	v_mul_f32_e32 v104, v104, v3
	v_mul_f32_e32 v110, v110, v3
	v_mul_f32_e32 v128, v128, v3
	v_mul_f32_e32 v118, v118, v3
	v_mul_f32_e32 v124, v124, v3
	v_mul_f32_e32 v136, v136, v3
	v_mul_f32_e32 v137, v137, v3
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v2, 1, v1
	s_mov_b32 s0, 0x76543210
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, s6
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(47)
	v_lshlrev_b32_e32 v74, 16, v74
	s_waitcnt vmcnt(46)
	v_lshlrev_b32_e32 v75, 16, v75
	s_waitcnt vmcnt(45)
	v_lshlrev_b32_e32 v76, 16, v76
	s_waitcnt vmcnt(44)
	v_lshlrev_b32_e32 v77, 16, v77
	s_waitcnt vmcnt(43)
	v_lshlrev_b32_e32 v78, 16, v78
	s_waitcnt vmcnt(42)
	v_lshlrev_b32_e32 v79, 16, v79
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v4, v4, v74, v37
	v_fma_f32 v6, v6, v76, v72
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v140, 16, v140
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v7, v7, v77, v71
	v_fma_f32 v74, v80, v79, v69
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v4, v37, v4, s2
	v_cndmask_b32_e64 v6, v72, v6, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v76, v82, v140, v67
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v7, v71, v7, s2
	v_cndmask_b32_e64 v37, v69, v74, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v6, v6, v6 :: v_dual_lshlrev_b32 v139, 16, v139
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v67, v67, v76, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v7, v7, v7
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v5, v5, v75, v73
	v_fma_f32 v75, v81, v139, v68
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v72, 0, v6
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v141, 0x80000000, v141, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v6, v37, v37
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v143, 0x80000000, v143, s2
	s_clause 0x7
	buffer_load_u16 v141, v141, s[4:7], 0 offen
	buffer_load_u16 v142, v142, s[4:7], 0 offen
	buffer_load_u16 v143, v143, s[4:7], 0 offen
	buffer_load_u16 v144, v144, s[4:7], 0 offen
	buffer_load_u16 v145, v145, s[4:7], 0 offen
	buffer_load_u16 v146, v146, s[4:7], 0 offen
	buffer_load_u16 v147, v147, s[4:7], 0 offen
	buffer_load_u16 v148, v148, s[4:7], 0 offen
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v37, 0, v7
	v_max_f32_e32 v7, v67, v67
	v_dual_max_f32 v67, 0, v6 :: v_dual_mul_f32 v8, v8, v3
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v85, v85, v3
	v_mul_f32_e32 v91, v91, v3
	v_mul_f32_e32 v87, v87, v3
	v_mul_f32_e32 v89, v89, v3
	v_mul_f32_e32 v126, v126, v3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v5, v73, v5, s2
	v_cndmask_b32_e64 v68, v68, v75, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v5, v5, v5
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v5, 0, v5
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v122, v122, v3 :: v_dual_mul_f32 v5, v5, v5
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(47)
	v_lshlrev_b32_e32 v189, 16, v189
	s_waitcnt vmcnt(46)
	v_lshlrev_b32_e32 v190, 16, v190
	s_waitcnt vmcnt(44)
	v_lshlrev_b32_e32 v192, 16, v192
	s_waitcnt vmcnt(43)
	v_lshlrev_b32_e32 v193, 16, v193
	s_waitcnt vmcnt(42)
	v_lshlrev_b32_e32 v194, 16, v194
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v196, 16, v196
	s_waitcnt vmcnt(39)
	v_lshlrev_b32_e32 v165, 16, v165
	s_waitcnt vmcnt(38)
	v_lshlrev_b32_e32 v166, 16, v166
	s_waitcnt vmcnt(36)
	v_lshlrev_b32_e32 v168, 16, v168
	s_waitcnt vmcnt(35)
	v_lshlrev_b32_e32 v169, 16, v169
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v170, 16, v170
	s_waitcnt vmcnt(33)
	v_lshlrev_b32_e32 v171, 16, v171
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v172, 16, v172
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v173, 16, v173
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v174, 16, v174
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v175, 16, v175
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v176, 16, v176
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v177, 16, v177
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v178, 16, v178
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v157, 16, v157
	v_lshlrev_b32_e32 v180, 16, v180
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v160, 16, v160
	v_lshlrev_b32_e32 v158, 16, v158
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v162, 16, v162
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v163, 16, v163
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v164, 16, v164
	v_lshlrev_b32_e32 v161, 16, v161
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v181, 16, v181
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v182, 16, v182
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v183, 16, v183
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v184, 16, v184
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v185, 16, v185
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v186, 16, v186
	v_lshlrev_b32_e32 v179, 16, v179
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v188, 16, v188
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v141, 16, v141
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v142, 16, v142
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v144, 16, v144
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v145, 16, v145
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v77, v83, v141, v66
	v_fma_f32 v8, v8, v78, v70
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v148, 16, v148
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v78, v84, v142, v65
	v_fma_f32 v81, v87, v145, v62
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v66, v66, v77, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v147, 16, v147
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v84, v90, v148, v59
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v146, 16, v146
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v80, v86, v144, v63
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v6, v66, v66
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v149, 0x80000000, v149, s2
	s_clause 0x7
	buffer_load_u16 v149, v149, s[4:7], 0 offen
	buffer_load_u16 v150, v150, s[4:7], 0 offen
	buffer_load_u16 v151, v151, s[4:7], 0 offen
	buffer_load_u16 v152, v152, s[4:7], 0 offen
	buffer_load_u16 v153, v153, s[4:7], 0 offen
	buffer_load_u16 v154, v154, s[4:7], 0 offen
	buffer_load_u16 v155, v155, s[4:7], 0 offen
	buffer_load_u16 v156, v156, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v97, v97, v3
	v_mul_f32_e32 v93, v93, v3
	v_mul_f32_e32 v99, v99, v3
	v_mul_f32_e32 v95, v95, v3
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v83, v89, v147, v60
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v8, v70, v8, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v82, v88, v146, v61
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v65, v65, v78, s2
	v_cndmask_b32_e64 v63, v63, v80, s2
	v_cndmask_b32_e64 v62, v62, v81, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v8, v8, v8
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v61, v61, v82, s2
	v_cndmask_b32_e64 v60, v60, v83, s2
	v_cndmask_b32_e64 v59, v59, v84, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v149, 16, v149
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v150, 16, v150
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v152, 16, v152
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v153, 16, v153
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v154, 16, v154
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v86, v92, v150, v57
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v156, 16, v156
	v_lshlrev_b32_e32 v155, 16, v155
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v89, v95, v153, v54
	v_fma_f32 v90, v96, v154, v53
	v_fma_f32 v96, v102, v160, v47
	v_fma_f32 v102, v108, v166, v41
	v_fma_f32 v108, v114, v172, v34
	v_fma_f32 v114, v120, v178, v28
	v_fma_f32 v120, v126, v184, v22
	v_fma_f32 v126, v132, v190, v16
	v_fma_f32 v132, v138, v196, v10
	v_fma_f32 v88, v94, v152, v55
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v28, v28, v114, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v151, 16, v151
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v92, v98, v156, v51
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v71, v10, v132, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v10, v68, v68
	v_max_f32_e32 v68, 0, v8
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v87, v93, v151, v56
	v_fma_f32 v93, v99, v157, v50
	v_fma_f32 v99, v105, v163, v44
	v_fma_f32 v105, v111, v169, v38
	v_fma_f32 v111, v117, v175, v31
	v_fma_f32 v117, v123, v181, v25
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v73, 0, v10 :: v_dual_max_f32 v8, v65, v65
	v_max_f32_e32 v65, 0, v7
	v_max_f32_e32 v10, v63, v63
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v25, v25, v117, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v159, 16, v159
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v63, 0, v6
	v_max_f32_e32 v6, v62, v62
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v98, v104, v162, v45
	v_fma_f32 v104, v110, v168, v39
	v_fma_f32 v95, v101, v159, v48
	v_fma_f32 v101, v107, v165, v42
	v_fma_f32 v107, v113, v171, v35
	v_fma_f32 v113, v119, v177, v29
	v_fma_f32 v119, v125, v183, v23
	v_fma_f32 v125, v131, v189, v17
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v57, v57, v86, s2
	v_cndmask_b32_e64 v56, v56, v87, s2
	v_cndmask_b32_e64 v29, v29, v113, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v143, 16, v143
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v17, v17, v125, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v187, 16, v187
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v55, v55, v88, s2
	v_cndmask_b32_e64 v54, v54, v89, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v79, v85, v143, v64
	v_fma_f32 v85, v91, v149, v58
	v_fma_f32 v123, v129, v187, v19
	v_fma_f32 v129, v135, v193, v13
	v_fma_f32 v91, v97, v155, v52
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v64, v64, v79, s2
	v_cndmask_b32_e64 v58, v58, v85, s2
	v_cndmask_b32_e64 v53, v53, v90, s2
	v_cndmask_b32_e64 v69, v13, v129, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v116, v116, v3
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v7, v64, v64
	v_max_f32_e32 v64, 0, v8
	v_max_f32_e32 v8, v60, v60
	v_max_f32_e32 v60, 0, v6
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v110, v116, v174, v32
	v_fma_f32 v116, v122, v180, v26
	v_fma_f32 v122, v128, v186, v20
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v62, 0, v7 :: v_dual_max_f32 v7, v61, v61
	v_max_f32_e32 v6, v59, v59
	v_max_f32_e32 v66, 0, v10
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v20, v122, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v106, v106, v3
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v10, v58, v58
	v_dual_max_f32 v58, 0, v7 :: v_dual_max_f32 v7, v57, v57
	v_dual_max_f32 v57, 0, v6 :: v_dual_max_f32 v6, v56, v56
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v94, v100, v158, v49
	v_fma_f32 v100, v106, v164, v43
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v52, v52, v91, s2
	v_cndmask_b32_e64 v51, v51, v92, s2
	v_cndmask_b32_e64 v48, v48, v95, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v59, 0, v8
	v_dual_max_f32 v61, 0, v10 :: v_dual_max_f32 v10, v53, v53
	v_dual_max_f32 v53, 0, v6 :: v_dual_max_f32 v8, v55, v55
	v_max_f32_e32 v55, 0, v7
	v_max_f32_e32 v7, v54, v54
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v97, v103, v161, v46
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v50, v50, v93, s2
	v_cndmask_b32_e64 v49, v49, v94, s2
	v_cndmask_b32_e64 v47, v47, v96, s2
	v_cndmask_b32_e64 v43, v43, v100, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v6, v52, v52
	v_max_f32_e32 v52, 0, v7
	v_dual_max_f32 v56, 0, v10 :: v_dual_max_f32 v7, v51, v51
	v_max_f32_e32 v10, v48, v48
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v46, v46, v97, s2
	v_cndmask_b32_e64 v45, v45, v98, s2
	v_cndmask_b32_e64 v44, v44, v99, s2
	v_cndmask_b32_e64 v38, v38, v105, s2
	v_cndmask_b32_e64 v22, v22, v120, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v167, 16, v167
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v48, 0, v7
	v_max_f32_e32 v7, v47, v47
	v_dual_max_f32 v51, 0, v10 :: v_dual_max_f32 v10, v43, v43
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v53, v53, v53 :: v_dual_max_f32 v54, 0, v8
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v8, v50, v50
	v_max_f32_e32 v50, 0, v6
	v_max_f32_e32 v6, v49, v49
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v103, v109, v167, v40
	v_fma_f32 v109, v115, v173, v33
	v_fma_f32 v115, v121, v179, v27
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v42, v42, v101, s2
	v_cndmask_b32_e64 v41, v41, v102, s2
	v_cndmask_b32_e64 v32, v32, v110, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v49, 0, v8
	v_max_f32_e32 v47, 0, v6
	v_max_f32_e32 v6, v46, v46
	v_dual_max_f32 v8, v45, v45 :: v_dual_max_f32 v45, 0, v7
	v_dual_max_f32 v7, v44, v44 :: v_dual_max_f32 v46, 0, v10
	v_max_f32_e32 v10, v38, v38
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v27, v27, v115, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v43, 0, v6
	v_max_f32_e32 v6, v42, v42
	v_dual_max_f32 v42, 0, v7 :: v_dual_mul_f32 v49, v49, v49
	v_max_f32_e32 v7, v41, v41
	v_dual_max_f32 v41, 0, v10 :: v_dual_max_f32 v10, v32, v32
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v40, v40, v103, s2
	v_cndmask_b32_e64 v39, v39, v104, s2
	v_cndmask_b32_e64 v35, v35, v107, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v44, 0, v8 :: v_dual_max_f32 v75, 0, v10
	v_max_f32_e32 v10, v27, v27
	v_max_f32_e32 v8, v40, v40
	v_max_f32_e32 v40, 0, v6
	v_max_f32_e32 v6, v39, v39
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v34, v34, v108, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v27, 0, v10
	v_max_f32_e32 v10, v22, v22
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v33, v33, v109, s2
	v_cndmask_b32_e64 v31, v31, v111, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v38, 0, v7 :: v_dual_max_f32 v39, 0, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v22, 0, v10
	v_max_f32_e32 v10, v17, v17
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v112, v112, v3
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v8, v34, v34
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v130, v130, v3
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v121, v127, v185, v21
	.loc	1 240 19 is_stmt 1              ; generate_amdgcn.py:240:19
	v_max_f32_e32 v13, 0, v10
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v106, v112, v170, v36
	v_fma_f32 v112, v118, v176, v30
	v_fma_f32 v118, v124, v182, v24
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v41, v41, v41
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v124, v130, v188, v18
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v36, v36, v106, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v130, v136, v194, v12
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v30, v30, v112, s2
	v_cndmask_b32_e64 v24, v24, v118, s2
	v_cndmask_b32_e64 v21, v21, v121, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v7, v36, v36 :: v_dual_max_f32 v36, 0, v6
	v_dual_max_f32 v6, v35, v35 :: v_dual_max_f32 v35, 0, v8
	v_max_f32_e32 v8, v29, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v34, 0, v7 :: v_dual_max_f32 v7, v33, v33
	v_dual_max_f32 v33, 0, v6 :: v_dual_max_f32 v6, v31, v31
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v26, v26, v116, s2
	v_cndmask_b32_e64 v19, v19, v123, s2
	v_cndmask_b32_e64 v18, v18, v124, s2
	v_cndmask_b32_e64 v12, v12, v130, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v76, 0, v6
	v_max_f32_e32 v6, v28, v28
	v_dual_max_f32 v74, 0, v7 :: v_dual_mul_f32 v33, v33, v33
	v_dual_max_f32 v7, v30, v30 :: v_dual_max_f32 v30, 0, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v31, 0, v6 :: v_dual_max_f32 v6, v25, v25
	v_max_f32_e32 v8, v24, v24
	v_dual_max_f32 v10, v12, v12 :: v_dual_max_f32 v77, 0, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v24, v37, v37 :: v_dual_max_f32 v25, 0, v6
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v6, v21, v21 :: v_dual_max_f32 v7, v26, v26
	v_max_f32_e32 v26, 0, v8
	v_max_f32_e32 v8, v19, v19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v23, v23, v119, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v19, 0, v6
	v_max_f32_e32 v6, v18, v18
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v18, v4, v4
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v4, s27, v9
	.loc	1 245 9 is_stmt 0               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v9.h, v3.l
	.loc	1 241 19 is_stmt 1              ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v21, v72, v72 :: v_dual_mul_f32 v134, v134, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v9.l, v18.h
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v28, 0, v7
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v29.h, v3.l
	v_mov_b16_e32 v29.l, v21.h
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v7, v23, v23
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v9, 1, v9
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v191, 16, v191
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v128, v134, v192, v14
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v16, v16, v126, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v17, 0, v8
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v9, v18, v9, 0x7fff
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v23, 0, v7 :: v_dual_and_b32 v18, 1, v29
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v32, v68, v68
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v7, v20, v20
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v14, v128, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v195, 16, v195
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v37.h, v3.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v63, v63, v63
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v20, 0, v7 :: v_dual_max_f32 v7, v16, v16
	v_max_f32_e32 v16, 0, v6
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v127, v133, v191, v15
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v8, v14, v14
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v131, v137, v195, v11
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v14, v71, v71
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v59, v59, v59
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v15, v127, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v12, 0, v8
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v70, v11, v131, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v10, 0, v10 :: v_dual_mul_f32 v47, v47, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v6, v15, v15
	v_max_f32_e32 v15, 0, v7
	v_max_f32_e32 v7, v69, v69
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v55, v55, v55
	v_mul_f32_e32 v51, v51, v51
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v11, 0, v6
	v_max_f32_e32 v6, v70, v70
	v_max_f32_e32 v8, 0, v7
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v43, v43, v43
	v_mul_f32_e32 v57, v57, v57
	v_mul_f32_e32 v39, v39, v39
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v7, 0, v6
	v_max_f32_e32 v6, 0, v14
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v14.l, v5.h
	v_mov_b16_e32 v14.h, v3.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v35, v35, v35
	v_dual_mul_f32 v31, v31, v31 :: v_dual_mul_f32 v54, v54, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v27, v27, v27 :: v_dual_and_b32 v14, 1, v14
	v_dual_mul_f32 v56, v56, v56 :: v_dual_mul_f32 v25, v25, v25
	v_dual_mul_f32 v50, v50, v50 :: v_dual_mul_f32 v23, v23, v23
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v5, v5, v14, 0x7fff
	v_mov_b16_e32 v14.l, v24.h
	v_mov_b16_e32 v14.h, v3.l
	v_mov_b16_e32 v5.l, v9.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v19, v19, v19
	v_dual_mul_f32 v45, v45, v45 :: v_dual_mul_f32 v44, v44, v44
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v9, 1, v14
	v_add3_u32 v14, v21, v18, 0x7fff
	v_mov_b16_e32 v21.l, v32.h
	v_mov_b16_e32 v21.h, v3.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v29, v67, v67
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v9, v24, v9, 0x7fff
	v_mov_b16_e32 v18.h, v3.l
	v_mov_b16_e32 v9.l, v14.h
	v_and_b32_e32 v14, 1, v21
	v_mov_b16_e32 v18.l, v29.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v24, v73, v73
	v_mul_f32_e32 v21, v65, v65
	v_mul_f32_e32 v15, v15, v15
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v32, v32, v14, 0x7fff
	v_and_b32_e32 v18, 1, v18
	v_mov_b16_e32 v37.l, v24.h
	v_mov_b16_e32 v32.l, v63.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v17, v17, v17
	v_mul_f32_e32 v13, v13, v13
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v14, v29, v18, 0x7fff
	v_mov_b16_e32 v18.l, v21.h
	v_mov_b16_e32 v18.h, v3.l
	v_and_b32_e32 v29, 1, v37
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v37, v64, v64
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v14.l, v32.h
	v_mov_b16_e32 v32.h, v3.l
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v24, v24, v29, 0x7fff
	v_mov_b16_e32 v29.l, v37.h
	v_mov_b16_e32 v29.h, v3.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v11, v11, v11
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v18, v21, v18, 0x7fff
	v_mov_b16_e32 v18.l, v24.h
	v_and_b32_e32 v21, 1, v32
	v_and_b32_e32 v24, 1, v29
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v29, v66, v66
	v_dual_mul_f32 v7, v7, v7 :: v_dual_mul_f32 v42, v42, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v63, v63, v21, 0x7fff
	v_add3_u32 v21, v37, v24, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v37, v58, v58
	v_mul_f32_e32 v62, v62, v62
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v24.l, v29.h
	v_mov_b16_e32 v24.h, v3.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v58, v60, v60
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v60.l, v37.h
	v_mov_b16_e32 v32.l, v62.h
	v_mov_b16_e32 v60.h, v3.l
	v_and_b32_e32 v24, 1, v24
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v46, v46, v46
	v_mul_f32_e32 v40, v40, v40
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v32, 1, v32
	v_mov_b16_e32 v21.l, v63.h
	v_add3_u32 v24, v29, v24, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v36, v36, v36
	v_mul_f32_e32 v30, v30, v30
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v32, v62, v32, 0x7fff
	v_mov_b16_e32 v62.l, v58.h
	v_mov_b16_e32 v62.h, v3.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v26, v26, v26
	v_mul_f32_e32 v22, v22, v22
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v24.l, v32.h
	v_and_b32_e32 v32, 1, v60
	v_and_b32_e32 v29, 1, v62
	v_mov_b16_e32 v60.l, v59.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v6, v6, v6
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_add3_u32 v4, s34, s33, v4
	.loc	1 245 9 is_stmt 0               ; generate_amdgcn.py:245:9
	s_mov_b32 s27, s7
	v_add3_u32 v58, v58, v29, 0x7fff
	v_add3_u32 v29, v37, v32, 0x7fff
	v_mov_b16_e32 v32.l, v57.h
	v_mov_b16_e32 v32.h, v3.l
	v_and_b32_e32 v37, 1, v60
	.loc	1 241 19 is_stmt 1              ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v60, v61, v61
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v29.l, v58.h
	v_mov_b16_e32 v58.l, v55.h
	v_and_b32_e32 v32, 1, v32
	v_add3_u32 v37, v59, v37, 0x7fff
	v_mov_b16_e32 v59.l, v60.h
	v_mov_b16_e32 v59.h, v3.l
	v_mov_b16_e32 v58.h, v3.l
	v_add3_u32 v32, v57, v32, 0x7fff
	v_mov_b16_e32 v32.l, v37.h
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_add_lshl_u32 v4, v4, v2, 1
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v37, 1, v59
	v_and_b32_e32 v57, 1, v58
	v_mov_b16_e32 v58.l, v53.h
	.loc	1 241 19 is_stmt 1              ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v52, v52, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v37, v60, v37, 0x7fff
	v_add3_u32 v55, v55, v57, 0x7fff
	v_mov_b16_e32 v57.l, v54.h
	v_mov_b16_e32 v57.h, v3.l
	v_and_b32_e32 v58, 1, v58
	v_mov_b16_e32 v55.l, v37.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v37, 1, v57
	v_add3_u32 v53, v53, v58, 0x7fff
	v_mov_b16_e32 v57.l, v56.h
	v_mov_b16_e32 v58.l, v52.h
	v_mov_b16_e32 v58.h, v3.l
	v_add3_u32 v37, v54, v37, 0x7fff
	v_mov_b16_e32 v37.l, v53.h
	v_and_b32_e32 v54, 1, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v48, v48, v48 :: v_dual_and_b32 v53, 1, v58
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v57.l, v50.h
	v_add3_u32 v52, v52, v53, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v53, v56, v54, 0x7fff
	v_mov_b16_e32 v54.l, v48.h
	v_mov_b16_e32 v54.h, v3.l
	v_and_b32_e32 v56, 1, v57
	v_mov_b16_e32 v53.l, v52.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v52, 1, v54
	v_add3_u32 v50, v50, v56, 0x7fff
	v_mov_b16_e32 v54.l, v47.h
	v_mov_b16_e32 v56.l, v49.h
	v_mov_b16_e32 v56.h, v3.l
	v_add3_u32 v48, v48, v52, 0x7fff
	v_mov_b16_e32 v48.l, v50.h
	v_and_b32_e32 v52, 1, v54
	v_mov_b16_e32 v54.l, v51.h
	v_and_b32_e32 v50, 1, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v47, v47, v52, 0x7fff
	v_and_b32_e32 v52, 1, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v49, v49, v50, 0x7fff
	v_mov_b16_e32 v50.l, v45.h
	v_mov_b16_e32 v50.h, v3.l
	v_mov_b16_e32 v47.l, v49.h
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v49, 1, v50
	v_add3_u32 v50, v51, v52, 0x7fff
	v_mov_b16_e32 v52.l, v43.h
	v_mov_b16_e32 v52.h, v3.l
	v_mov_b16_e32 v51.l, v44.h
	v_mov_b16_e32 v51.h, v3.l
	v_add3_u32 v45, v45, v49, 0x7fff
	v_mov_b16_e32 v45.l, v50.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v38, v38, v38 :: v_dual_and_b32 v49, 1, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v50, 1, v51
	v_mov_b16_e32 v51.l, v42.h
	v_add3_u32 v43, v43, v49, 0x7fff
	v_mov_b16_e32 v49.l, v46.h
	v_mov_b16_e32 v49.h, v3.l
	v_add3_u32 v44, v44, v50, 0x7fff
	v_and_b32_e32 v50, 1, v51
	v_mov_b16_e32 v44.l, v43.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v43, 1, v49
	v_mov_b16_e32 v49.l, v38.h
	v_add3_u32 v42, v42, v50, 0x7fff
	v_mov_b16_e32 v50.l, v40.h
	v_mov_b16_e32 v50.h, v3.l
	v_add3_u32 v43, v46, v43, 0x7fff
	v_and_b32_e32 v46, 1, v49
	v_mov_b16_e32 v43.l, v42.h
	v_mov_b16_e32 v49.l, v39.h
	v_and_b32_e32 v42, 1, v50
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v34, v34, v34
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v38, v38, v46, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v16, v16, v16
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v46, 1, v49
	v_add3_u32 v40, v40, v42, 0x7fff
	v_mov_b16_e32 v42.l, v36.h
	v_mov_b16_e32 v42.h, v3.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v39, v39, v46, 0x7fff
	v_mov_b16_e32 v38.l, v40.h
	v_mov_b16_e32 v46.l, v41.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v40, 1, v42
	v_mov_b16_e32 v42.l, v34.h
	v_mov_b16_e32 v46.h, v3.l
	v_add3_u32 v36, v36, v40, 0x7fff
	v_mov_b16_e32 v36.l, v39.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_b32_e32 v39, 1, v46
	v_and_b32_e32 v40, 1, v42
	v_mov_b16_e32 v42.l, v33.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v46, v74, v74
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v39, v41, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v34, v34, v40, 0x7fff
	v_mov_b16_e32 v40.l, v35.h
	v_mov_b16_e32 v40.h, v3.l
	v_and_b32_e32 v41, 1, v42
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v42, v75, v75
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v34.l, v39.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v28, v28, v28
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v39, 1, v40
	v_add3_u32 v33, v33, v41, 0x7fff
	v_mov_b16_e32 v40.l, v42.h
	v_mov_b16_e32 v41.l, v46.h
	v_mov_b16_e32 v41.h, v3.l
	v_add3_u32 v35, v35, v39, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v39, v76, v76
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v35.l, v33.h
	v_and_b32_e32 v40, 1, v40
	v_and_b32_e32 v33, 1, v41
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v41, v77, v77
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v49.l, v39.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v20, v20, v20
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v40, v42, v40, 0x7fff
	v_add3_u32 v33, v46, v33, 0x7fff
	v_mov_b16_e32 v42.l, v41.h
	v_mov_b16_e32 v42.h, v3.l
	v_and_b32_e32 v46, 1, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v40.l, v33.h
	v_and_b32_e32 v33, 1, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v39, v39, v46, 0x7fff
	v_mov_b16_e32 v46.l, v30.h
	v_mov_b16_e32 v46.h, v3.l
	v_mov_b16_e32 v42.l, v31.h
	v_add3_u32 v33, v41, v33, 0x7fff
	v_mov_b16_e32 v33.l, v39.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v39, 1, v46
	v_and_b32_e32 v41, 1, v42
	v_mov_b16_e32 v42.l, v27.h
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v30, v30, v39, 0x7fff
	v_mov_b16_e32 v39.l, v28.h
	v_mov_b16_e32 v39.h, v3.l
	v_add3_u32 v31, v31, v41, 0x7fff
	v_and_b32_e32 v41, 1, v42
	v_mov_b16_e32 v31.l, v30.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v10, v10, v10
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v30, 1, v39
	v_mov_b16_e32 v39.l, v26.h
	v_add3_u32 v27, v27, v41, 0x7fff
	v_mov_b16_e32 v41.l, v25.h
	v_mov_b16_e32 v41.h, v3.l
	v_add3_u32 v28, v28, v30, 0x7fff
	v_and_b32_e32 v30, 1, v39
	v_mov_b16_e32 v28.l, v27.h
	v_mov_b16_e32 v39.l, v23.h
	v_and_b32_e32 v27, 1, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v26, v26, v30, 0x7fff
	v_and_b32_e32 v30, 1, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v25, v25, v27, 0x7fff
	v_mov_b16_e32 v27.l, v22.h
	v_mov_b16_e32 v27.h, v3.l
	v_add3_u32 v23, v23, v30, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v26.l, v25.h
	v_mov_b16_e32 v30.l, v19.h
	v_and_b32_e32 v25, 1, v27
	v_mov_b16_e32 v27.l, v20.h
	v_mov_b16_e32 v30.h, v3.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v22, v22, v25, 0x7fff
	v_mov_b16_e32 v22.l, v23.h
	v_and_b32_e32 v23, 1, v30
	v_and_b32_e32 v25, 1, v27
	v_mov_b16_e32 v27.l, v17.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v19, v19, v23, 0x7fff
	v_add3_u32 v20, v20, v25, 0x7fff
	v_mov_b16_e32 v23.l, v16.h
	v_mov_b16_e32 v23.h, v3.l
	v_and_b32_e32 v25, 1, v27
	v_mov_b16_e32 v20.l, v19.h
	v_mov_b16_e32 v27.l, v11.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v19, 1, v23
	v_add3_u32 v17, v17, v25, 0x7fff
	v_mov_b16_e32 v23.l, v15.h
	v_mov_b16_e32 v25.l, v13.h
	v_mov_b16_e32 v25.h, v3.l
	v_add3_u32 v16, v16, v19, 0x7fff
	v_mov_b16_e32 v16.l, v17.h
	v_and_b32_e32 v19, 1, v23
	v_and_b32_e32 v17, 1, v27
	v_and_b32_e32 v23, 1, v25
	v_cndmask_b32_e32 v27, v34, v38, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v15, v15, v19, 0x7fff
	v_add3_u32 v11, v11, v17, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v13, v13, v23, 0x7fff
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e32 v17.h, v3.l
	v_mov_b16_e32 v23.h, v3.l
	v_mov_b16_e32 v23.l, v6.h
	v_mov_b16_e32 v15.l, v13.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v12, v12, v12
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v13.h, v3.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v25.l, v12.h
	v_and_b32_e32 v13, 1, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v19, 1, v25
	v_cndmask_b32_e32 v25, v45, v43, vcc_lo
	v_add3_u32 v12, v12, v19, 0x7fff
	v_mov_b16_e32 v19.l, v7.h
	v_mov_b16_e32 v19.h, v3.l
	v_mov_b16_e32 v12.l, v11.h
	v_and_b32_e32 v11, 1, v23
	v_cndmask_b32_e32 v23, v47, v44, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v3, 1, v19
	v_cndmask_b32_e32 v19, v37, v48, vcc_lo
	v_add3_u32 v1, v6, v11, 0x7fff
	v_cndmask_b32_e32 v11, v24, v32, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v3, v7, v3, 0x7fff
	v_add3_u32 v7, v10, v13, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v8, v8, v8
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b32_e32 v13, v32, v24, vcc_lo
	v_cndmask_b32_e32 v32, v36, v35, vcc_lo
	v_mov_b16_e32 v1.l, v3.h
	v_cndmask_b32_e32 v3, v14, v5, vcc_lo
	v_mov_b16_e32 v17.l, v8.h
	v_cndmask_b32_e32 v5, v5, v14, vcc_lo
	v_cndmask_b32_e32 v6, v9, v18, vcc_lo
	v_cndmask_b32_e32 v24, v43, v45, vcc_lo
	v_permlanex16_b32 v39, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v17, 1, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v8, v8, v17, 0x7fff
	v_cndmask_b32_e32 v17, v55, v53, vcc_lo
	v_mov_b16_e32 v7.l, v8.h
	v_cndmask_b32_e32 v8, v18, v9, vcc_lo
	v_cndmask_b32_e32 v18, v48, v37, vcc_lo
	v_cndmask_b32_e32 v9, v21, v29, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v37, v7, v15, vcc_lo
	v_cndmask_b32_e32 v7, v15, v7, vcc_lo
	v_dual_mov_b32 v15, 0x5410 :: v_dual_cndmask_b32 v10, v29, v21
	v_dual_cndmask_b32 v29, v38, v34 :: v_dual_cndmask_b32 v38, v1, v12
	v_cndmask_b32_e32 v1, v12, v1, vcc_lo
	v_permlanex16_b32 v12, v5, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v5, 0x1054, v15 :: v_dual_cndmask_b32 v34, v31, v40
	v_cndmask_b32_e32 v31, v40, v31, vcc_lo
	v_cndmask_b32_e32 v21, v44, v47, vcc_lo
	v_permlanex16_b32 v43, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v5, v5, 8, v5
	v_cndmask_b32_e32 v30, v35, v36, vcc_lo
	v_cndmask_b32_e32 v36, v16, v22, vcc_lo
	v_cndmask_b32_e32 v16, v22, v16, vcc_lo
	v_mov_b32_e32 v22, 0x7632
	v_dual_cndmask_b32 v14, v53, v55 :: v_dual_and_b32 v5, 0x540054, v5
	v_dual_cndmask_b32 v35, v28, v33 :: v_dual_cndmask_b32 v28, v33, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v15, 0x3276, v22, vcc_lo
	v_permlanex16_b32 v22, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v5, v5, 4, v5
	v_dual_cndmask_b32 v33, v20, v26 :: v_dual_cndmask_b32 v20, v26, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v6, v15, 8, v15
	v_permlanex16_b32 v15, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v40, 0x5040504, v5
	v_permlanex16_b32 v17, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v6, 0x760076, v6
	v_permlanex16_b32 v23, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v5, v12, v3, v40
	v_permlanex16_b32 v25, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v6, v6, 4, v6
	v_perm_b32 v11, v39, v13, v40
	v_permlanex16_b32 v26, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v22, v8, v40
	v_and_b32_e32 v41, 0x7060706, v6
	v_permlanex16_b32 v44, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v9, v26, v10, v40
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v6, v12, v3, v41
	v_and_b32_e32 v3, 0x1e0, v0
	v_perm_b32 v12, v39, v13, v41
	v_perm_b32 v13, v15, v14, v40
	v_perm_b32 v14, v15, v14, v41
	v_perm_b32 v15, v17, v18, v40
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_add_nc_u32_e32 v3, 32, v4
	v_permlanex16_b32 v29, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v16, v17, v18, v41
	v_perm_b32 v17, v19, v21, v40
	v_perm_b32 v18, v19, v21, v41
	v_perm_b32 v19, v23, v24, v40
	v_perm_b32 v20, v23, v24, v41
	v_perm_b32 v23, v29, v30, v40
	v_perm_b32 v24, v29, v30, v41
	v_perm_b32 v29, v32, v33, v40
	v_perm_b32 v30, v32, v33, v41
	v_add_nc_u32_e32 v33, 64, v4
	v_perm_b32 v8, v22, v8, v41
	v_perm_b32 v10, v26, v10, v41
	v_perm_b32 v21, v25, v27, v40
	v_perm_b32 v22, v25, v27, v41
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	v_permlanex16_b32 v28, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v32, v42, v36, v41
	v_perm_b32 v0, v43, v37, v40
	v_perm_b32 v1, v43, v37, v41
	v_perm_b32 v2, v44, v38, v40
	v_perm_b32 v27, v28, v35, v40
	v_perm_b32 v28, v28, v35, v41
	v_cndmask_b32_e32 v35, 0x80000000, v3, vcc_lo
	v_perm_b32 v25, v31, v34, v40
	v_perm_b32 v26, v31, v34, v41
	v_cndmask_b32_e32 v34, 0x80000000, v4, vcc_lo
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
	v_perm_b32 v31, v42, v36, v40
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_perm_b32 v3, v44, v38, v41
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 203
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 203
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15660
; TotalNumSgprs: 53
; NumVgprs: 203
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 203
; Occupancy: 7
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     203
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
