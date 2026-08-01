	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
	v_lshlrev_b32_e32 v7, 2, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_bfe_u32 v2, v0, 4, 4
	v_lshrrev_b32_e32 v3, 5, v0
	v_and_b32_e32 v9, 15, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v82, 0, v7
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s19, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s18, 15
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
	.loc	1 116 24 is_stmt 1              ; generate_amdgcn.py:116:24
	s_lshl_b32 s5, s5, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s5
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
	s_mov_b64 s[24:25], s[10:11]
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v1, 0x7c, v7
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s27, s11
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[4:5], null, s19, v3, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
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
	s_mul_i32 s20, s5, s7
	s_add_i32 s18, s5, 1
	s_sub_i32 s6, s6, s20
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s26, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s20, s6, s7
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s6, s20, s6
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s5, s18, s5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s6, s4, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s31, s5, s30
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s20, s4, 31
.Ltmp13:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s6
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s5, s31, s30
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s7, s4, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s4, s5, s17
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s28, s3, 4
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s4
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v5, s28, v9
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s16
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s33, s2, 4
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v6, s28, v3
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_or_b32_e32 v8, s33, v2
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 27
.Ltmp17:
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s18, s5, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s6, s20, s3
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s5, s7, v5
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 16, v5
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s7, v6
	.loc	1 198 51                        ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 16, v6
	.loc	1 216 34 is_stmt 1              ; generate_amdgcn.py:216:34
	v_mad_u64_u32 v[5:6], null, v8, s7, v[5:6]
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s6, s6, 5
.Ltmp21:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s20, 31
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s21, s19, s28
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s5, s4, s5
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add3_u32 v4, s21, s18, v4
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s16, s3, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_and_b32 s25, s25, 0xffff
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u8 v5, v5, s[8:11], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b32 v4, v4, s[24:27], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_bfe_i32 v6, v0, 7, 1
	v_and_b32_e32 v8, 0x7f, v0
	s_mov_b32 s5, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s20, 63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v6, 0x88, v6
	v_xor_b32_e32 v6, v6, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v81, 0, v6
	s_waitcnt vmcnt(1)
	ds_store_b8 v81, v5 offset:2048
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v82, v4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s20, s12
	s_mov_b64 s[22:23], s[10:11]
	s_mov_b32 s5, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr20_sgpr21
.LBB0_3:                                ; %Flow709
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[16:17], s[0:1], 0x20
	v_bfe_u32 v75, v0, 4, 1
	v_dual_mov_b32 v11, 0 :: v_dual_lshlrev_b32 v80, 4, v0
	v_bfe_i32 v78, v0, 3, 1
	v_or_b32_e32 v77, 0x3f0, v0
	v_or_b32_e32 v79, 0x7f0, v0
	v_dual_mov_b32 v15, 0 :: v_dual_add_nc_u32 v76, 0, v9
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v63, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v74, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s1, s6, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_add_i32 s5, s28, 16
	s_mov_b32 s44, 0
	v_dual_mov_b32 v63, 0 :: v_dual_and_b32 v4, 0x70, v80
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	v_add_nc_u32_e32 v5, s5, v3
	v_add_nc_u32_e32 v7, s33, v9
	v_and_or_b32 v4, 0x88, v78, v4
	v_sub_nc_u32_e32 v83, s7, v3
	s_lshl_b32 s27, s31, 7
	v_mul_lo_u32 v5, s19, v5
	v_mul_lo_u32 v3, s6, v7
	v_add_nc_u32_e32 v2, s33, v2
	v_xor_b32_e32 v6, 8, v4
	s_lshl_b32 s0, s31, 8
	s_lshl_b32 s26, s30, 8
	v_lshlrev_b32_e32 v84, 1, v75
	s_sub_i32 s35, s0, s26
	v_add3_u32 v1, v5, s27, v1
	s_lshl_b32 s0, s30, 7
	v_mad_u64_u32 v[10:11], null, s7, v2, v[9:10]
	v_lshlrev_b32_e32 v85, 1, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_subrev_nc_u32_e32 v86, s0, v1
	v_add_nc_u32_e32 v87, 0, v4
	v_add_nc_u32_e32 v88, 0, v6
	v_mov_b32_e32 v1, s44
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v89, 0, v77
	v_dual_mov_b32 v7, s50 :: v_dual_add_nc_u32 v90, 0, v79
	v_dual_mov_b32 v2, s45 :: v_dual_mov_b32 v3, s46
	v_dual_mov_b32 v4, s47 :: v_dual_mov_b32 v5, s48
	v_mov_b32_e32 v6, s49
	v_dual_mov_b32 v8, s51 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v18, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	s_mov_b64 s[20:21], s[12:13]
	s_max_i32 s34, s1, 1
	s_lshl_b32 s40, s19, 1
	s_lshl_b32 s41, s19, 4
	s_mov_b32 s36, s12
	s_mov_b32 s37, s13
	s_mov_b32 s38, s22
	s_mov_b32 s39, s23
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	buffer_load_u16 v91, v85, s[36:39], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s5, v83
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s34, s34, -1
	v_add_nc_u32_e32 v85, 2, v85
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v91, 16, v91
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_add_nc_u32_e32 v93, s5, v9
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v94, s5, v10
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s5, s5, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s0, s7, v93
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 s0, s0, s4
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	v_cndmask_b32_e64 v93, 0x80000000, v94, s0
	buffer_load_u8 v93, v93, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v94, v76 offset:512
	ds_load_u8 v95, v76 offset:640
	ds_load_u8 v96, v76 offset:656
	ds_load_u8 v97, v76 offset:672
	ds_load_u8 v103, v76 offset:688
	ds_load_u8 v104, v76 offset:704
	ds_load_u8 v107, v76 offset:720
	ds_load_u8 v114, v76 offset:736
	ds_load_u8 v115, v76 offset:752
	ds_load_u8 v109, v76 offset:528
	ds_load_u8 v111, v76 offset:544
	ds_load_u8 v113, v76 offset:560
	ds_load_u8 v116, v76 offset:576
	ds_load_u8 v117, v76 offset:592
	ds_load_u8 v118, v76 offset:608
	ds_load_u8 v119, v76 offset:624
	ds_load_u8 v108, v76 offset:768
	ds_load_u8 v110, v76 offset:896
	ds_load_u8 v112, v76 offset:912
	ds_load_u8 v120, v76 offset:928
	ds_load_u8 v121, v76 offset:944
	ds_load_u8 v122, v76 offset:960
	ds_load_u8 v123, v76 offset:976
	ds_load_u8 v124, v76 offset:992
	ds_load_u8 v125, v76 offset:784
	ds_load_u8 v126, v76 offset:800
	ds_load_u8 v127, v76 offset:816
	ds_load_u8 v128, v76 offset:832
	ds_load_u8 v129, v76 offset:848
	ds_load_u8 v130, v76 offset:864
	ds_load_u8 v131, v76 offset:880
	ds_load_u8 v132, v76
	ds_load_u8 v133, v76 offset:128
	ds_load_u8 v134, v76 offset:144
	ds_load_u8 v135, v76 offset:160
	ds_load_u8 v136, v76 offset:176
	ds_load_u8 v137, v76 offset:192
	ds_load_u8 v146, v76 offset:96
	ds_load_u8 v147, v76 offset:112
	ds_load_u8 v148, v76 offset:256
	ds_load_u8 v149, v76 offset:384
	ds_load_u8 v150, v76 offset:400
	ds_load_u8 v151, v76 offset:416
	ds_load_u8 v152, v76 offset:432
	ds_load_u8 v153, v76 offset:448
	ds_load_u8 v154, v76 offset:464
	ds_load_u8 v155, v76 offset:480
	ds_load_u8 v156, v76 offset:496
	ds_load_u8 v157, v76 offset:272
	ds_load_u8 v158, v76 offset:288
	ds_load_u8 v159, v76 offset:304
	ds_load_u8 v160, v76 offset:320
	ds_load_u8 v161, v76 offset:336
	ds_load_u8 v162, v76 offset:352
	ds_load_u8 v163, v76 offset:368
	ds_load_u8 v164, v76 offset:1536
	ds_load_u8 v165, v76 offset:1664
	ds_load_u8 v166, v76 offset:1648
	ds_load_u8 v167, v76 offset:1520
	ds_load_u8 v168, v76 offset:1920
	ds_load_u8 v169, v76 offset:1792
	ds_load_u8 v178, v76 offset:1728
	ds_load_u8 v179, v76 offset:1744
	ds_load_u8 v180, v76 offset:1568
	ds_load_u8 v181, v76 offset:1584
	ds_load_u8 v182, v76 offset:1600
	ds_load_u8 v183, v76 offset:1936
	ds_load_u8 v184, v76 offset:1808
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v185, v94, v95, 0xc0c0004
	ds_load_u8 v94, v76 offset:1040
	ds_load_u8 v95, v76 offset:1168
	ds_load_u8 v138, v76 offset:208
	ds_load_u8 v139, v76 offset:224
	ds_load_u8 v140, v76 offset:240
	ds_load_u8 v141, v76 offset:16
	ds_load_u8 v142, v76 offset:32
	ds_load_u8 v143, v76 offset:48
	ds_load_u8 v144, v76 offset:64
	ds_load_u8 v145, v76 offset:80
	ds_load_u8 v170, v76 offset:1024
	ds_load_u8 v171, v76 offset:1152
	ds_load_u8 v172, v76 offset:1408
	ds_load_u8 v173, v76 offset:1280
	ds_load_u8 v174, v76 offset:1552
	ds_load_u8 v175, v76 offset:1680
	ds_load_u8 v176, v76 offset:1696
	ds_load_u8 v177, v76 offset:1712
	s_waitcnt lgkmcnt(61)
	v_perm_b32 v125, v125, v112, 0xc0c0004
	ds_load_u8 v112, v76 offset:1056
	s_waitcnt lgkmcnt(61)
	v_perm_b32 v120, v126, v120, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v121, v127, v121, 0xc0c0004
	ds_load_u8 v127, v76 offset:1088
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v128, v128, v122, 0xc0c0004
	s_waitcnt lgkmcnt(55)
	v_perm_b32 v132, v132, v133, 0xc0c0004
	ds_load_u8 v133, v76 offset:1296
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v148, v148, v149, 0xc0c0004
	ds_load_u8 v149, v76 offset:1424
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v164, v164, v165, 0xc0c0004
	ds_load_u8 v122, v76 offset:1104
	v_perm_b32 v153, v160, v153, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v165, v169, v168, 0xc0c0004
	ds_load_u8 v168, v76 offset:1616
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v169, v170, v171, 0xc0c0004
	ds_load_u8 v170, v76 offset:1824
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v171, v173, v172, 0xc0c0004
	ds_load_u8 v172, v76 offset:1952
	v_perm_b32 v134, v141, v134, 0xc0c0004
	v_perm_b32 v141, v157, v150, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v157, v174, v175, 0xc0c0004
	v_perm_b32 v175, v184, v183, 0xc0c0004
	v_perm_b32 v126, v142, v135, 0xc0c0004
	ds_load_u8 v135, v76 offset:1072
	v_perm_b32 v142, v158, v151, 0xc0c0004
	ds_load_u8 v151, v76 offset:1456
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v158, v180, v176, 0xc0c0004
	ds_load_u8 v176, v76 offset:1328
	v_perm_b32 v137, v144, v137, 0xc0c0004
	ds_load_u8 v144, v76 offset:1488
	v_perm_b32 v160, v182, v178, 0xc0c0004
	ds_load_u8 v178, v76 offset:1360
	v_perm_b32 v161, v161, v154, 0xc0c0004
	ds_load_u8 v154, v76 offset:1120
	v_perm_b32 v190, v146, v139, 0xc0c0004
	ds_load_u8 v139, v76 offset:1136
	v_perm_b32 v183, v94, v95, 0xc0c0004
	ds_load_u8 v94, v76 offset:1840
	ds_load_u8 v150, v76 offset:1440
	ds_load_u8 v180, v76 offset:1632
	ds_load_u8 v95, v76 offset:1968
	v_perm_b32 v173, v109, v96, 0xc0c0004
	ds_load_u8 v96, v76 offset:1184
	ds_load_u8 v174, v76 offset:1312
	v_perm_b32 v187, v113, v103, 0xc0c0004
	ds_load_u8 v103, v76 offset:1216
	v_perm_b32 v145, v145, v138, 0xc0c0004
	ds_load_u8 v138, v76 offset:1248
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v182, v168, v179, 0xc0c0004
	v_perm_b32 v114, v118, v114, 0xc0c0004
	ds_load_u8 v118, v76 offset:1376
	v_perm_b32 v133, v133, v149, 0xc0c0004
	v_perm_b32 v149, v111, v97, 0xc0c0004
	ds_load_u8 v97, v76 offset:1200
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v151, v176, v151, 0xc0c0004
	ds_load_u8 v176, v76 offset:1232
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v144, v178, v144, 0xc0c0004
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[178:179], v87 offset:2048
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v136, v143, v136, 0xc0c0004
	v_perm_b32 v143, v159, v152, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v188, v94, v95, 0xc0c0004
	ds_load_u8 v94, v76 offset:1872
	ds_load_u8 v95, v76 offset:2000
	ds_load_u8 v152, v76 offset:1472
	v_perm_b32 v159, v181, v177, 0xc0c0004
	ds_load_u8 v177, v76 offset:1344
	ds_load_u8 v146, v76 offset:1264
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v193, v154, v138, 0xc0c0004
	v_perm_b32 v129, v129, v123, 0xc0c0004
	ds_load_u8 v123, v76 offset:2016
	v_perm_b32 v124, v130, v124, 0xc0c0004
	v_perm_b32 v186, v108, v110, 0xc0c0004
	v_perm_b32 v116, v116, v104, 0xc0c0004
	v_perm_b32 v117, v117, v107, 0xc0c0004
	v_perm_b32 v115, v119, v115, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v176, v122, v176, 0xc0c0004
	v_perm_b32 v191, v162, v155, 0xc0c0004
	v_perm_b32 v140, v147, v140, 0xc0c0004
	v_perm_b32 v194, v163, v156, 0xc0c0004
	v_lshl_or_b32 v155, v165, 16, v164
	v_lshl_or_b32 v154, v171, 16, v169
	v_lshl_or_b32 v163, v175, 16, v157
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v189, v94, v95, 0xc0c0004
	ds_load_u8 v95, v76 offset:1776
	ds_load_u8 v122, v76 offset:1504
	ds_load_u8 v138, v76 offset:1392
	v_perm_b32 v170, v170, v172, 0xc0c0004
	ds_load_u8 v172, v76 offset:1856
	ds_load_u8 v94, v89
	ds_load_u8 v130, v76 offset:1904
	v_perm_b32 v150, v174, v150, 0xc0c0004
	ds_load_u8 v174, v76 offset:1984
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v152, v177, v152, 0xc0c0004
	ds_load_u8 v177, v76 offset:1888
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v197, v139, v146, 0xc0c0004
	v_lshl_or_b32 v139, v120, 16, v149
	v_lshl_or_b32 v147, v121, 16, v187
	v_lshl_or_b32 v157, v128, 16, v116
	v_lshl_or_b32 v169, v129, 16, v117
	v_lshl_or_b32 v175, v124, 16, v114
	v_perm_b32 v184, v112, v96, 0xc0c0004
	v_perm_b32 v135, v135, v97, 0xc0c0004
	v_perm_b32 v127, v127, v103, 0xc0c0004
	v_lshl_or_b32 v162, v133, 16, v183
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v118, v118, v122, 0xc0c0004
	v_lshl_or_b32 v122, v148, 16, v132
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v198, v138, v167, 0xc0c0004
	v_lshl_or_b32 v138, v142, 16, v126
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v119, v131, v94, 0xc0c0004
	v_lshl_or_b32 v131, v125, 16, v173
	v_lshl_or_b32 v173, v189, 16, v182
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v172, v172, v174, 0xc0c0004
	ds_load_u8 v174, v76 offset:1760
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v177, v177, v123, 0xc0c0004
	ds_load_u8 v123, v90
	v_lshl_or_b32 v182, v118, 16, v193
	v_lshl_or_b32 v165, v170, 16, v158
	v_lshl_or_b32 v170, v152, 16, v127
	v_lshl_or_b32 v146, v143, 16, v136
	v_lshl_or_b32 v156, v153, 16, v137
	v_lshl_or_b32 v168, v161, 16, v145
	v_perm_b32 v195, v166, v95, 0xc0c0004
	v_lshl_or_b32 v164, v150, 16, v184
	v_lshl_or_b32 v167, v188, 16, v159
	v_lshl_or_b32 v166, v151, 16, v135
	v_lshl_or_b32 v171, v172, 16, v160
	v_lshl_or_b32 v172, v144, 16, v176
	v_lshl_or_b32 v184, v194, 16, v140
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v192, v180, v174, 0xc0c0004
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[180:181], v88 offset:2048
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v196, v130, v123, 0xc0c0004
	v_lshl_or_b32 v123, v186, 16, v185
	v_lshl_or_b32 v185, v119, 16, v115
	v_lshl_or_b32 v130, v141, 16, v134
	v_lshl_or_b32 v174, v191, 16, v190
	v_lshl_or_b32 v183, v177, 16, v192
	v_wmma_i32_16x16x16_iu4 v[114:121], v[122:123], v[178:179], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[130:131], v[178:179], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[138:139], v[178:179], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[138:145], v[146:147], v[178:179], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[156:157], v[178:179], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v187, v196, 16, v195
	v_lshl_or_b32 v186, v198, 16, v197
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[114:121], v[154:155], v[180:181], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[162:163], v[180:181], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[154:161], v[168:169], v[178:179], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[164:165], v[180:181], v[130:137] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v121, v121
	v_mul_f32_e32 v114, v91, v114
	v_dual_mul_f32 v117, v91, v117 :: v_dual_add_nc_u32 v92, s35, v84
	v_cvt_f32_i32_e32 v122, v122
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[138:145], v[166:167], v[180:181], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[162:169], v[174:175], v[178:179], v[1:8] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v98, v92, s[28:31], 0 offen
	buffer_load_u16 v99, v92, s[28:31], 0 offen offset:4
	buffer_load_u16 v100, v92, s[28:31], 0 offen offset:8
	buffer_load_u16 v101, v92, s[28:31], 0 offen offset:12
	buffer_load_u16 v102, v92, s[28:31], 0 offen offset:16
	buffer_load_u16 v105, v92, s[28:31], 0 offen offset:20
	buffer_load_u16 v106, v92, s[28:31], 0 offen offset:24
	buffer_load_u16 v108, v92, s[28:31], 0 offen offset:28
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[146:153], v[170:171], v[180:181], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[154:161], v[172:173], v[180:181], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[170:177], v[184:185], v[178:179], v[1:8] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[162:169], v[182:183], v[180:181], v[162:169] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[170:177], v[186:187], v[180:181], v[170:177] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
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
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s35, s35, s40
	s_cmp_lg_u32 s34, 0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v100, 16, v100
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v101, 16, v101
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v72, v117, v101 :: v_dual_lshlrev_b32 v99, 16, v99
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v116, v91, v116
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v98, 16, v98
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v121, v91, v121 :: v_dual_lshlrev_b32 v106, 16, v106
	v_mul_f32_e32 v123, v91, v123
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v73, v116, v100
	v_fmac_f32_e32 v63, v114, v98
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0xb
	buffer_load_u16 v109, v92, s[28:31], 0 offen offset:32
	buffer_load_u16 v110, v92, s[28:31], 0 offen offset:36
	buffer_load_u16 v111, v92, s[28:31], 0 offen offset:40
	buffer_load_u16 v112, v92, s[28:31], 0 offen offset:44
	buffer_load_u16 v113, v92, s[28:31], 0 offen offset:48
	buffer_load_u16 v96, v92, s[28:31], 0 offen offset:52
	buffer_load_u16 v97, v92, s[28:31], 0 offen offset:56
	buffer_load_u16 v103, v92, s[28:31], 0 offen offset:60
	buffer_load_u16 v104, v92, s[28:31], 0 offen offset:64
	buffer_load_u16 v107, v92, s[28:31], 0 offen offset:68
	buffer_load_u16 v94, v92, s[28:31], 0 offen offset:72
	buffer_load_u16 v95, v92, s[28:31], 0 offen offset:76
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v122, v91, v122
	v_mul_f32_e32 v124, v91, v124
	v_mul_f32_e32 v115, v91, v115
	v_mul_f32_e32 v118, v91, v118
	v_dual_mul_f32 v119, v91, v119 :: v_dual_lshlrev_b32 v102, 16, v102
	v_dual_mul_f32 v120, v91, v120 :: v_dual_lshlrev_b32 v105, 16, v105
	v_mul_f32_e32 v125, v91, v125
	v_mul_f32_e32 v126, v91, v126
	v_mul_f32_e32 v127, v91, v127
	v_mul_f32_e32 v128, v91, v128
	v_mul_f32_e32 v129, v91, v129
	v_mul_f32_e32 v130, v91, v130
	v_mul_f32_e32 v131, v91, v131
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x8
	buffer_load_u16 v178, v92, s[28:31], 0 offen offset:80
	buffer_load_u16 v179, v92, s[28:31], 0 offen offset:84
	buffer_load_u16 v180, v92, s[28:31], 0 offen offset:88
	buffer_load_u16 v181, v92, s[28:31], 0 offen offset:92
	buffer_load_u16 v182, v92, s[28:31], 0 offen offset:96
	buffer_load_u16 v183, v92, s[28:31], 0 offen offset:100
	buffer_load_u16 v184, v92, s[28:31], 0 offen offset:104
	buffer_load_u16 v98, v92, s[28:31], 0 offen offset:108
	buffer_load_u16 v114, v92, s[28:31], 0 offen offset:112
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v74, v115, v99 :: v_dual_fmac_f32 v71, v118, v102
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v99, v92, s[28:31], 0 offen offset:116
	buffer_load_u16 v115, v92, s[28:31], 0 offen offset:120
	buffer_load_u16 v100, v92, s[28:31], 0 offen offset:124
	buffer_load_u16 v116, v92, s[28:31], 0 offen offset:128
	buffer_load_u16 v101, v92, s[28:31], 0 offen offset:132
	buffer_load_u16 v117, v92, s[28:31], 0 offen offset:136
	buffer_load_u16 v102, v92, s[28:31], 0 offen offset:140
	buffer_load_u16 v118, v92, s[28:31], 0 offen offset:144
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v70, v119, v105 :: v_dual_fmac_f32 v69, v120, v106
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x3
	buffer_load_u16 v105, v92, s[28:31], 0 offen offset:148
	buffer_load_u16 v119, v92, s[28:31], 0 offen offset:152
	buffer_load_u16 v106, v92, s[28:31], 0 offen offset:156
	buffer_load_u16 v120, v92, s[28:31], 0 offen offset:160
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v132, v91, v132
	v_mul_f32_e32 v133, v91, v133
	v_mul_f32_e32 v134, v91, v134
	v_mul_f32_e32 v135, v91, v135
	v_mul_f32_e32 v136, v91, v136
	v_mul_f32_e32 v137, v91, v137
	v_mul_f32_e32 v138, v91, v138
	v_mul_f32_e32 v139, v91, v139
	v_mul_f32_e32 v140, v91, v140
	v_mul_f32_e32 v141, v91, v141
	v_mul_f32_e32 v142, v91, v142
	v_mul_f32_e32 v143, v91, v143
	v_mul_f32_e32 v144, v91, v144
	v_mul_f32_e32 v145, v91, v145
	v_mul_f32_e32 v146, v91, v146
	v_mul_f32_e32 v147, v91, v147
	v_mul_f32_e32 v148, v91, v148
	v_mul_f32_e32 v149, v91, v149
	v_mul_f32_e32 v150, v91, v150
	v_mul_f32_e32 v151, v91, v151
	v_mul_f32_e32 v152, v91, v152
	v_mul_f32_e32 v153, v91, v153
	v_mul_f32_e32 v155, v91, v155
	v_mul_f32_e32 v157, v91, v157
	v_mul_f32_e32 v174, v91, v174
	s_waitcnt vmcnt(32)
	v_dual_mul_f32 v176, v91, v176 :: v_dual_lshlrev_b32 v109, 16, v109
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v108, 16, v108
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v111, 16, v111
	v_lshlrev_b32_e32 v110, 16, v110
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(29)
	v_dual_fmac_f32 v67, v122, v109 :: v_dual_lshlrev_b32 v112, 16, v112
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v68, v121, v108 :: v_dual_fmac_f32 v65, v124, v111
	s_waitcnt vmcnt(28)
	v_dual_fmac_f32 v66, v123, v110 :: v_dual_lshlrev_b32 v113, 16, v113
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v96, 16, v96
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v97, 16, v97
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v103, 16, v103
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v104, 16, v104
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v107, 16, v107
	s_clause 0x7
	buffer_load_u16 v108, v92, s[28:31], 0 offen offset:164
	buffer_load_u16 v121, v92, s[28:31], 0 offen offset:168
	buffer_load_u16 v109, v92, s[28:31], 0 offen offset:172
	buffer_load_u16 v122, v92, s[28:31], 0 offen offset:176
	buffer_load_u16 v110, v92, s[28:31], 0 offen offset:180
	buffer_load_u16 v123, v92, s[28:31], 0 offen offset:184
	buffer_load_u16 v111, v92, s[28:31], 0 offen offset:188
	buffer_load_u16 v124, v92, s[28:31], 0 offen offset:192
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v64, v125, v112 :: v_dual_fmac_f32 v61, v126, v113
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x3
	buffer_load_u16 v112, v92, s[28:31], 0 offen offset:196
	buffer_load_u16 v125, v92, s[28:31], 0 offen offset:200
	buffer_load_u16 v113, v92, s[28:31], 0 offen offset:204
	buffer_load_u16 v126, v92, s[28:31], 0 offen offset:208
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v62, v127, v96 :: v_dual_fmac_f32 v59, v128, v97
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x3
	buffer_load_u16 v96, v92, s[28:31], 0 offen offset:212
	buffer_load_u16 v127, v92, s[28:31], 0 offen offset:216
	buffer_load_u16 v97, v92, s[28:31], 0 offen offset:220
	buffer_load_u16 v128, v92, s[28:31], 0 offen offset:224
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v60, v129, v103 :: v_dual_fmac_f32 v57, v130, v104
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x3
	buffer_load_u16 v103, v92, s[28:31], 0 offen offset:228
	buffer_load_u16 v129, v92, s[28:31], 0 offen offset:232
	buffer_load_u16 v104, v92, s[28:31], 0 offen offset:236
	buffer_load_u16 v130, v92, s[28:31], 0 offen offset:240
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v154, v91, v154
	v_mul_f32_e32 v156, v91, v156
	v_mul_f32_e32 v158, v91, v158
	v_mul_f32_e32 v159, v91, v159
	v_mul_f32_e32 v160, v91, v160
	v_mul_f32_e32 v161, v91, v161
	v_mul_f32_e32 v162, v91, v162
	v_mul_f32_e32 v163, v91, v163
	v_mul_f32_e32 v164, v91, v164
	v_mul_f32_e32 v165, v91, v165
	v_mul_f32_e32 v166, v91, v166
	v_mul_f32_e32 v167, v91, v167
	v_mul_f32_e32 v168, v91, v168
	v_mul_f32_e32 v169, v91, v169
	v_mul_f32_e32 v170, v91, v170
	v_mul_f32_e32 v171, v91, v171
	v_mul_f32_e32 v172, v91, v172
	v_mul_f32_e32 v173, v91, v173
	v_mul_f32_e32 v175, v91, v175
	v_mul_f32_e32 v91, v91, v177
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v177, 0x80000000, v86, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v86, s41, v86
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v58, v131, v107
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x2
	buffer_load_u16 v107, v92, s[28:31], 0 offen offset:244
	buffer_load_u16 v131, v92, s[28:31], 0 offen offset:248
	buffer_load_u16 v92, v92, s[28:31], 0 offen offset:252
	s_waitcnt vmcnt(45)
	v_lshlrev_b32_e32 v94, 16, v94
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b32 v177, v177, s[24:27], 0 offen
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(45)
	v_lshlrev_b32_e32 v95, 16, v95
	s_waitcnt vmcnt(44)
	v_lshlrev_b32_e32 v178, 16, v178
	s_waitcnt vmcnt(43)
	v_lshlrev_b32_e32 v179, 16, v179
	s_waitcnt vmcnt(42)
	v_lshlrev_b32_e32 v180, 16, v180
	s_waitcnt vmcnt(41)
	v_lshlrev_b32_e32 v181, 16, v181
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v182, 16, v182
	s_waitcnt vmcnt(39)
	v_lshlrev_b32_e32 v183, 16, v183
	s_waitcnt vmcnt(38)
	v_lshlrev_b32_e32 v184, 16, v184
	s_waitcnt vmcnt(37)
	v_lshlrev_b32_e32 v98, 16, v98
	s_waitcnt vmcnt(36)
	v_lshlrev_b32_e32 v114, 16, v114
	s_waitcnt vmcnt(35)
	v_lshlrev_b32_e32 v99, 16, v99
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v115, 16, v115
	s_waitcnt vmcnt(33)
	v_lshlrev_b32_e32 v100, 16, v100
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v116, 16, v116
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v101, 16, v101
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v117, 16, v117
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v102, 16, v102
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v118, 16, v118
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v105, 16, v105
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v119, 16, v119
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v106, 16, v106
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v120, 16, v120
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v56, v133, v95 :: v_dual_fmac_f32 v53, v134, v178
	v_dual_fmac_f32 v54, v135, v179 :: v_dual_fmac_f32 v51, v136, v180
	v_dual_fmac_f32 v52, v137, v181 :: v_dual_fmac_f32 v49, v138, v182
	v_dual_fmac_f32 v50, v139, v183 :: v_dual_fmac_f32 v47, v140, v184
	v_dual_fmac_f32 v48, v141, v98 :: v_dual_fmac_f32 v43, v144, v115
	v_dual_fmac_f32 v45, v142, v114 :: v_dual_fmac_f32 v46, v143, v99
	v_dual_fmac_f32 v44, v145, v100 :: v_dual_fmac_f32 v39, v148, v117
	v_dual_fmac_f32 v41, v146, v116 :: v_dual_fmac_f32 v42, v147, v101
	v_dual_fmac_f32 v40, v149, v102 :: v_dual_fmac_f32 v35, v152, v119
	v_dual_fmac_f32 v37, v150, v118 :: v_dual_fmac_f32 v38, v151, v105
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v55, v132, v94
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_store_b8 v81, v93 offset:2048
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v82, v177
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v108, 16, v108
	v_lshlrev_b32_e32 v121, 16, v121
	v_lshlrev_b32_e32 v109, 16, v109
	v_lshlrev_b32_e32 v122, 16, v122
	v_lshlrev_b32_e32 v110, 16, v110
	v_lshlrev_b32_e32 v123, 16, v123
	v_lshlrev_b32_e32 v111, 16, v111
	v_lshlrev_b32_e32 v124, 16, v124
	v_lshlrev_b32_e32 v112, 16, v112
	v_lshlrev_b32_e32 v125, 16, v125
	v_lshlrev_b32_e32 v113, 16, v113
	v_lshlrev_b32_e32 v126, 16, v126
	v_lshlrev_b32_e32 v96, 16, v96
	v_lshlrev_b32_e32 v127, 16, v127
	v_lshlrev_b32_e32 v97, 16, v97
	v_lshlrev_b32_e32 v128, 16, v128
	v_lshlrev_b32_e32 v103, 16, v103
	v_lshlrev_b32_e32 v129, 16, v129
	v_lshlrev_b32_e32 v104, 16, v104
	v_lshlrev_b32_e32 v130, 16, v130
	v_lshlrev_b32_e32 v107, 16, v107
	v_lshlrev_b32_e32 v131, 16, v131
	v_lshlrev_b32_e32 v92, 16, v92
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v36, v153, v106 :: v_dual_fmac_f32 v33, v154, v120
	v_dual_fmac_f32 v34, v155, v108 :: v_dual_fmac_f32 v31, v156, v121
	v_dual_fmac_f32 v32, v157, v109 :: v_dual_fmac_f32 v29, v158, v122
	v_dual_fmac_f32 v30, v159, v110 :: v_dual_fmac_f32 v27, v160, v123
	v_dual_fmac_f32 v28, v161, v111 :: v_dual_fmac_f32 v25, v162, v124
	v_dual_fmac_f32 v26, v163, v112 :: v_dual_fmac_f32 v23, v164, v125
	v_dual_fmac_f32 v24, v165, v113 :: v_dual_fmac_f32 v21, v166, v126
	v_dual_fmac_f32 v22, v167, v96 :: v_dual_fmac_f32 v19, v168, v127
	v_dual_fmac_f32 v20, v169, v97 :: v_dual_fmac_f32 v17, v170, v128
	v_dual_fmac_f32 v18, v171, v103 :: v_dual_fmac_f32 v15, v172, v129
	v_dual_fmac_f32 v16, v173, v104 :: v_dual_fmac_f32 v13, v175, v107
	v_dual_fmac_f32 v14, v174, v130 :: v_dual_fmac_f32 v11, v91, v92
	v_fmac_f32_e32 v12, v176, v131
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow710
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v2, s6, v9
	s_mul_i32 s3, s33, s6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s0, s1, 0
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v1, 16, v0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_add_i32 s3, s3, s0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v6, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v2, s3, v2, 1
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v81, 0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	buffer_load_u16 v2, v2, s[20:23], 0 offen
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
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	ds_load_u8 v4, v76 offset:640
	ds_load_u8 v5, v76 offset:512
	ds_load_u8 v6, v76 offset:896
	ds_load_u8 v7, v76 offset:768
	ds_load_u8 v85, v76 offset:656
	ds_load_u8 v87, v76 offset:672
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v170, s11 :: v_dual_and_b32 v3, 0x70, v80
	v_dual_mov_b32 v169, s10 :: v_dual_add_nc_u32 v10, 0, v79
	v_mov_b32_e32 v167, s8
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_or_b32 v3, 0x88, v78, v3
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v168, s9 :: v_dual_mov_b32 v165, s6
	v_dual_mov_b32 v166, s7 :: v_dual_mov_b32 v163, s4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v8, v3, 8, 0
	v_add_nc_u32_e32 v78, 0, v3
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v79, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v7, v6, 0xc0c0004
	ds_load_u8 v80, v76 offset:128
	ds_load_u8 v81, v76
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[3:4], v8 offset:2048
	ds_load_b64 v[5:6], v78 offset:2048
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_mov_b32_e32 v164, s5
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v144, 0, v77
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v98, v76 offset:1664
	ds_load_u8 v108, v76 offset:1536
	v_lshl_or_b32 v8, v7, 16, v79
	ds_load_u8 v7, v76 offset:384
	ds_load_u8 v78, v76 offset:256
	ds_load_u8 v94, v76 offset:144
	ds_load_u8 v104, v76 offset:160
	ds_load_u8 v116, v76 offset:176
	ds_load_u8 v117, v76 offset:192
	ds_load_u8 v123, v76 offset:208
	ds_load_u8 v132, v76 offset:224
	ds_load_u8 v139, v76 offset:240
	ds_load_u8 v95, v76 offset:16
	ds_load_u8 v105, v76 offset:32
	ds_load_u8 v124, v76 offset:48
	ds_load_u8 v125, v76 offset:64
	ds_load_u8 v126, v76 offset:80
	ds_load_u8 v133, v76 offset:96
	ds_load_u8 v140, v76 offset:112
	ds_load_u8 v89, v76 offset:688
	ds_load_u8 v90, v76 offset:704
	ds_load_u8 v99, v76 offset:720
	ds_load_u8 v100, v76 offset:736
	ds_load_u8 v101, v76 offset:752
	ds_load_u8 v86, v76 offset:528
	ds_load_u8 v88, v76 offset:544
	ds_load_u8 v110, v76 offset:560
	ds_load_u8 v111, v76 offset:576
	ds_load_u8 v118, v76 offset:592
	ds_load_u8 v119, v76 offset:608
	ds_load_u8 v120, v76 offset:624
	ds_load_u8 v91, v76 offset:1024
	ds_load_u8 v92, v76 offset:912
	ds_load_u8 v102, v76 offset:928
	ds_load_u8 v112, v76 offset:944
	ds_load_u8 v113, v76 offset:960
	ds_load_u8 v121, v76 offset:976
	ds_load_u8 v130, v76 offset:992
	ds_load_u8 v93, v76 offset:784
	ds_load_u8 v103, v76 offset:800
	ds_load_u8 v114, v76 offset:816
	ds_load_u8 v115, v76 offset:832
	ds_load_u8 v122, v76 offset:848
	ds_load_u8 v131, v76 offset:864
	ds_load_u8 v138, v76 offset:880
	ds_load_u8 v96, v76 offset:400
	ds_load_u8 v106, v76 offset:416
	ds_load_u8 v127, v76 offset:432
	ds_load_u8 v128, v76 offset:448
	ds_load_u8 v129, v76 offset:464
	ds_load_u8 v134, v76 offset:480
	ds_load_u8 v141, v76 offset:496
	ds_load_u8 v97, v76 offset:272
	ds_load_u8 v107, v76 offset:288
	ds_load_u8 v135, v76 offset:304
	ds_load_u8 v136, v76 offset:320
	ds_load_u8 v137, v76 offset:336
	ds_load_u8 v142, v76 offset:352
	ds_load_u8 v143, v76 offset:368
	ds_load_u8 v181, v76 offset:1040
	ds_load_u8 v182, v76 offset:1056
	ds_load_u8 v183, v76 offset:1072
	ds_load_u8 v184, v76 offset:1088
	ds_load_u8 v185, v76 offset:1104
	ds_load_u8 v186, v76 offset:1120
	ds_load_u8 v187, v76 offset:1136
	ds_load_u8 v144, v144
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v7, v78, v7, 0xc0c0004
	v_perm_b32 v79, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(43)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v86, v93, v92, 0xc0c0004
	v_perm_b32 v92, v95, v94, 0xc0c0004
	v_lshl_or_b32 v7, v7, 16, v79
	v_perm_b32 v98, v108, v98, 0xc0c0004
	ds_load_u8 v108, v76 offset:1152
	ds_load_u8 v156, v76 offset:1680
	ds_load_u8 v157, v76 offset:1696
	ds_load_u8 v158, v76 offset:1712
	ds_load_u8 v159, v76 offset:1728
	ds_load_u8 v160, v76 offset:1744
	ds_load_u8 v173, v76 offset:1760
	ds_load_u8 v174, v76 offset:1776
	ds_load_u8 v161, v76 offset:1808
	ds_load_u8 v162, v76 offset:1824
	ds_load_u8 v175, v76 offset:1840
	ds_load_u8 v176, v76 offset:1856
	ds_load_u8 v177, v76 offset:1872
	ds_load_u8 v178, v76 offset:1888
	ds_load_u8 v179, v76 offset:1904
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v93, v97, v96, 0xc0c0004
	v_perm_b32 v87, v88, v87, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[77:84], v[7:8], v[5:6], v[163:170] neg_lo:[1,1,0]
	ds_load_u8 v7, v76 offset:1920
	ds_load_u8 v8, v76 offset:1792
	ds_load_u8 v109, v76 offset:1424
	ds_load_u8 v145, v76 offset:1440
	ds_load_u8 v146, v76 offset:1456
	ds_load_u8 v147, v76 offset:1472
	ds_load_u8 v148, v76 offset:1488
	ds_load_u8 v149, v76 offset:1504
	ds_load_u8 v150, v76 offset:1520
	ds_load_u8 v151, v76 offset:1552
	ds_load_u8 v152, v76 offset:1568
	ds_load_u8 v153, v76 offset:1584
	ds_load_u8 v154, v76 offset:1600
	ds_load_u8 v155, v76 offset:1616
	ds_load_u8 v171, v76 offset:1632
	ds_load_u8 v172, v76 offset:1648
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v91, v91, v108, 0xc0c0004
	ds_load_u8 v108, v76 offset:1936
	ds_load_u8 v188, v76 offset:1168
	ds_load_u8 v189, v76 offset:1184
	ds_load_u8 v190, v76 offset:1200
	ds_load_u8 v191, v76 offset:1216
	ds_load_u8 v192, v76 offset:1232
	ds_load_u8 v193, v76 offset:1248
	ds_load_u8 v194, v76 offset:1264
	ds_load_u8 v195, v76 offset:1296
	ds_load_u8 v196, v76 offset:1312
	ds_load_u8 v197, v76 offset:1328
	ds_load_u8 v198, v76 offset:1344
	ds_load_u8 v199, v76 offset:1360
	ds_load_u8 v200, v76 offset:1376
	ds_load_u8 v201, v76 offset:1392
	v_perm_b32 v88, v103, v102, 0xc0c0004
	v_perm_b32 v102, v105, v104, 0xc0c0004
	v_perm_b32 v103, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v180, v8, v7, 0xc0c0004
	ds_load_u8 v7, v76 offset:1408
	ds_load_u8 v8, v76 offset:1280
	v_lshl_or_b32 v88, v88, 16, v87
	v_perm_b32 v89, v110, v89, 0xc0c0004
	v_lshl_or_b32 v87, v103, 16, v102
	v_perm_b32 v110, v114, v112, 0xc0c0004
	v_perm_b32 v112, v124, v116, 0xc0c0004
	v_perm_b32 v114, v135, v127, 0xc0c0004
	v_perm_b32 v124, v125, v117, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v152, v152, v157, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v104, v195, v109, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v145, v196, v145, 0xc0c0004
	v_perm_b32 v125, v136, v128, 0xc0c0004
	v_perm_b32 v99, v118, v99, 0xc0c0004
	v_perm_b32 v118, v122, v121, 0xc0c0004
	v_perm_b32 v121, v126, v123, 0xc0c0004
	v_perm_b32 v135, v137, v129, 0xc0c0004
	v_perm_b32 v10, v179, v10, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v8, v7, 0xc0c0004
	v_lshl_or_b32 v8, v86, 16, v85
	v_lshl_or_b32 v86, v180, 16, v98
	ds_load_u8 v180, v76 offset:1952
	v_lshl_or_b32 v7, v93, 16, v92
	v_lshl_or_b32 v85, v94, 16, v91
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[91:98], v[7:8], v[5:6], v[163:170] neg_lo:[1,1,0]
	v_perm_b32 v7, v151, v156, 0xc0c0004
	ds_load_u8 v151, v76 offset:1968
	ds_load_u8 v156, v76 offset:1984
	ds_load_u8 v202, v76 offset:2000
	ds_load_u8 v76, v76 offset:2016
	v_perm_b32 v8, v161, v108, 0xc0c0004
	v_perm_b32 v161, v182, v189, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[77:84], v[85:86], v[3:4], v[77:84] neg_lo:[1,1,0]
	v_perm_b32 v85, v153, v158, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v8, v8, 16, v7
	v_perm_b32 v7, v181, v188, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v157, v162, v180, 0xc0c0004
	v_lshl_or_b32 v7, v104, 16, v7
	v_wmma_i32_16x16x16_iu4 v[102:109], v[87:88], v[5:6], v[163:170] neg_lo:[1,1,0]
	v_lshl_or_b32 v87, v145, 16, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v88, v157, 16, v152
	v_wmma_i32_16x16x16_iu4 v[91:98], v[7:8], v[3:4], v[91:98] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v110, 16, v89
	v_lshl_or_b32 v7, v114, 16, v112
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v86, v175, v151, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[102:109], v[87:88], v[3:4], v[102:109] neg_lo:[1,1,0]
	v_perm_b32 v87, v183, v190, 0xc0c0004
	v_perm_b32 v88, v197, v146, 0xc0c0004
	v_perm_b32 v89, v111, v90, 0xc0c0004
	v_perm_b32 v90, v115, v113, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[110:117], v[7:8], v[5:6], v[163:170] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v86, 16, v85
	v_lshl_or_b32 v7, v88, 16, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v86, v90, 16, v89
	v_lshl_or_b32 v85, v125, 16, v124
	v_perm_b32 v87, v154, v159, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v88, v176, v156, 0xc0c0004
	v_perm_b32 v89, v184, v191, 0xc0c0004
	v_perm_b32 v90, v198, v147, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[122:129], v[85:86], v[5:6], v[163:170] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v86, v88, 16, v87
	v_lshl_or_b32 v88, v118, 16, v99
	v_lshl_or_b32 v85, v90, 16, v89
	v_perm_b32 v89, v119, v100, 0xc0c0004
	v_perm_b32 v90, v131, v130, 0xc0c0004
	v_perm_b32 v100, v133, v132, 0xc0c0004
	v_perm_b32 v118, v142, v134, 0xc0c0004
	v_lshl_or_b32 v87, v135, 16, v121
	v_perm_b32 v99, v155, v160, 0xc0c0004
	v_lshl_or_b32 v90, v90, 16, v89
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v119, v177, v202, 0xc0c0004
	v_lshl_or_b32 v89, v118, 16, v100
	v_perm_b32 v121, v185, v192, 0xc0c0004
	v_perm_b32 v142, v199, v148, 0xc0c0004
	v_perm_b32 v100, v120, v101, 0xc0c0004
	v_perm_b32 v101, v138, v144, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[155:162], v[89:90], v[5:6], v[163:170] neg_lo:[1,1,0]
	v_perm_b32 v89, v140, v139, 0xc0c0004
	v_perm_b32 v90, v143, v141, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[130:137], v[87:88], v[5:6], v[163:170] neg_lo:[1,1,0]
	v_lshl_or_b32 v88, v119, 16, v99
	v_lshl_or_b32 v87, v142, 16, v121
	v_perm_b32 v99, v171, v173, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v178, v76, 0xc0c0004
	v_perm_b32 v118, v186, v193, 0xc0c0004
	v_perm_b32 v119, v200, v149, 0xc0c0004
	v_lshl_or_b32 v89, v90, 16, v89
	v_lshl_or_b32 v90, v101, 16, v100
	v_perm_b32 v101, v187, v194, 0xc0c0004
	v_perm_b32 v120, v201, v150, 0xc0c0004
	v_perm_b32 v121, v172, v174, 0xc0c0004
	v_lshl_or_b32 v100, v76, 16, v99
	v_lshl_or_b32 v99, v119, 16, v118
	v_wmma_i32_16x16x16_iu4 v[163:170], v[89:90], v[5:6], v[163:170] neg_lo:[1,1,0]
	v_lshl_or_b32 v5, v120, 16, v101
	v_lshl_or_b32 v6, v10, 16, v121
	v_wmma_i32_16x16x16_iu4 v[110:117], v[7:8], v[3:4], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[85:86], v[3:4], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[87:88], v[3:4], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[155:162], v[99:100], v[3:4], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[163:170], v[5:6], v[3:4], v[163:170] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v4, v77
	v_cvt_f32_i32_e32 v7, v78
	v_cvt_f32_i32_e32 v8, v79
	v_cvt_f32_i32_e32 v10, v80
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
	s_mul_i32 s0, s0, s19
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s9, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s18, s0
	s_mov_b32 s11, 0x31027000
	v_add_lshl_u32 v88, s0, v75, 1
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s8, s14
	.loc	1 245 18 is_stmt 1              ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v169, s19, v9
	s_mul_i32 s33, s33, s19
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v75, 4, v88
	v_add_nc_u32_e32 v76, 8, v88
	v_add_nc_u32_e32 v77, 12, v88
	v_add_nc_u32_e32 v78, 16, v88
	v_cndmask_b32_e64 v3, 0x80000000, v88, s2
	v_add_nc_u32_e32 v79, 20, v88
	v_add_nc_u32_e32 v80, 24, v88
	v_add_nc_u32_e32 v87, 28, v88
	v_cndmask_b32_e64 v75, 0x80000000, v75, s2
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	v_cndmask_b32_e64 v80, 0x80000000, v80, s2
	v_cndmask_b32_e64 v113, 0x80000000, v87, s2
	s_clause 0x7
	buffer_load_u16 v87, v3, s[8:11], 0 offen
	buffer_load_u16 v139, v75, s[8:11], 0 offen
	buffer_load_u16 v133, v76, s[8:11], 0 offen
	buffer_load_u16 v134, v77, s[8:11], 0 offen
	buffer_load_u16 v135, v78, s[8:11], 0 offen
	buffer_load_u16 v136, v79, s[8:11], 0 offen
	buffer_load_u16 v137, v80, s[8:11], 0 offen
	buffer_load_u16 v138, v113, s[8:11], 0 offen
	v_add_nc_u32_e32 v3, 32, v88
	v_add_nc_u32_e32 v75, 36, v88
	v_add_nc_u32_e32 v76, 40, v88
	v_add_nc_u32_e32 v77, 44, v88
	v_add_nc_u32_e32 v78, 52, v88
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v75, 0x80000000, v75, s2
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	s_clause 0x4
	buffer_load_u16 v143, v3, s[8:11], 0 offen
	buffer_load_u16 v144, v75, s[8:11], 0 offen
	buffer_load_u16 v145, v76, s[8:11], 0 offen
	buffer_load_u16 v146, v77, s[8:11], 0 offen
	buffer_load_u16 v141, v78, s[8:11], 0 offen
	v_add_nc_u32_e32 v3, 48, v88
	v_add_nc_u32_e32 v206, 0xf0, v88
	v_add_nc_u32_e32 v208, 0xf8, v88
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, s11
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v206, 0x80000000, v206, s2
	v_add_nc_u32_e32 v205, 0xec, v88
	v_add_nc_u32_e32 v207, 0xf4, v88
	v_cndmask_b32_e64 v208, 0x80000000, v208, s2
	buffer_load_u16 v123, v3, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v3.l, 0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(14)
	v_mov_b16_e32 v3.h, v2.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v75, 56, v88
	v_add_nc_u32_e32 v76, 60, v88
	v_cndmask_b32_e64 v205, 0x80000000, v205, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v199.h, v3.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v184, v86, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v75, 0x80000000, v75, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v183, v94, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	s_clause 0x1
	buffer_load_u16 v172, v75, s[8:11], 0 offen
	buffer_load_u16 v173, v76, s[8:11], 0 offen
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
	v_add3_u32 v4, s33, s18, v169
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
	v_dual_mul_f32 v9, v164, v3 :: v_dual_add_nc_u32 v140, 0xcc, v88
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
	v_mul_f32_e32 v175, v10, v3
	v_mul_f32_e32 v177, v6, v3
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v155.h, v3.l
	v_mov_b16_e64 v158.h, v3.l
	v_mov_b16_e64 v162.h, v3.l
	v_mov_b16_e64 v164.h, v3.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v207, 0x80000000, v207, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v200.h, v3.l
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v2, 1, v1
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_mov_b32 s18, s10
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
	v_fma_f32 v139, v170, v139, v74
	v_fma_f32 v133, v174, v133, v73
	v_fma_f32 v135, v176, v135, v71
	v_fma_f32 v134, v175, v134, v72
	v_fma_f32 v137, v178, v137, v69
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v74, v74, v139, s2
	v_cndmask_b32_e64 v73, v73, v133, s2
	v_cndmask_b32_e64 v71, v71, v135, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v138, 16, v138
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v69, v69, v137, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v145, 16, v145
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v157.l, v74.h
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v76, v161, v3
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s5, v71, v71
	v_mov_b16_e64 v165.l, v69.h
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v8, v163, v3
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v163.h, v3.l
	v_mov_b16_e64 v163.l, v71.h
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v145, v182, v145, v65
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v146, 16, v146
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v72, v72, v134, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v143, 16, v143
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v137, 1, v163
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v133, v65, v145, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v65, 1, v157
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v146, v183, v146, v64
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v144, 16, v144
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v71, v71, v137, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v136, v177, v136, v70
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v65, v74, v65, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v138, v179, v138, v68
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v161.h, v3.l
	v_cndmask_b16 v65.l, 0x7fff, v71.h, s5
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v96, 0xd8, v88
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v134, v64, v146, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v158.l, v72.h
	v_mov_b16_e64 v161.l, v73.h
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v144, v181, v144, v66
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
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v143, v180, v143, v67
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v70, v70, v136, s2
	v_cndmask_b32_e64 v68, v68, v138, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v10, v166, v3 :: v_dual_and_b32 v135, 1, v161
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v171, v171, v211, v63
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v67, v67, v143, s2
	v_cndmask_b32_e64 v66, v66, v144, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v162.l, v70.h
	v_mov_b16_e64 v164.l, v68.h
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v63, v63, v171, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v72, v72
	v_cmp_o_f32_e64 s3, v73, v73
	v_add3_u32 v73, v73, v135, 0x7fff
	v_mov_b16_e64 v166.h, v3.l
	v_mov_b16_e64 v155.l, v63.h
	v_cmp_o_f32_e32 vcc_lo, v63, v63
	v_mov_b16_e64 v166.l, v66.h
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v6, v167, v3
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v167.h, v3.l
	v_and_b32_e32 v64, 1, v155
	v_mov_b16_e64 v167.l, v67.h
	v_mov_b16_e64 v199.l, v134.h
	v_and_b32_e32 v136, 1, v162
	v_and_b32_e32 v138, 1, v164
	v_add3_u32 v63, v63, v64, 0x7fff
	v_and_b32_e32 v64, 1, v158
	v_and_b32_e32 v139, 1, v165
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(43)
	v_lshlrev_b32_e32 v141, 16, v141
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v74, v74
	v_cmp_o_f32_e64 s4, v70, v70
	v_add3_u32 v64, v72, v64, 0x7fff
	v_cndmask_b16 v64.l, 0x7fff, v73.h, s3
	v_cmp_o_f32_e64 s6, v68, v68
	v_cmp_o_f32_e64 s7, v69, v69
	v_and_b32_e32 v143, 1, v166
	v_cndmask_b16 v64.h, 0x7fff, v64.h, s1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v204, 0xe8, v88
	v_add_nc_u32_e32 v88, 0xfc, v88
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v144, 1, v167
	v_and_b32_e32 v145, 1, v199
	v_add3_u32 v70, v70, v136, 0x7fff
	v_add3_u32 v69, v69, v139, 0x7fff
	v_add3_u32 v68, v68, v138, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v204, 0x80000000, v204, s2
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
	v_cmp_o_f32_e64 s8, v66, v66
	v_cmp_o_f32_e64 s9, v67, v67
	v_cndmask_b16 v63.l, 0x7fff, v63.h, vcc_lo
	v_add3_u32 v72, v67, v144, 0x7fff
	v_add3_u32 v67, v66, v143, 0x7fff
	v_cndmask_b16 v63.h, 0x7fff, v65.h, s0
	v_cndmask_b16 v65.h, 0x7fff, v70.h, s4
	v_cndmask_b16 v66.h, 0x7fff, v68.h, s6
	v_cndmask_b16 v66.l, 0x7fff, v69.h, s7
	v_add3_u32 v68, v134, v145, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(50)
	v_lshlrev_b32_e32 v69, 16, v123
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v70, v185, v141, v62
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v134, v134
	v_mov_b16_e64 v200.l, v133.h
	v_cndmask_b16 v67.l, 0x7fff, v72.h, s9
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v69, v184, v69, v61
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v70, v62, v70, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v62.h, 0x7fff, v68.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(48)
	v_lshlrev_b32_e32 v68, 16, v173
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v146, 1, v200
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v61, v61, v69, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v69.l, v70.h
	v_mov_b16_e32 v69.h, v3.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v72, 16, v172
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v68, v187, v68, v60
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v71, v133, v146, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v133, v133
	v_and_b32_e32 v69, 1, v69
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v72, v186, v72, v59
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v60, v60, v68, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v73.l, v61.h
	v_mov_b16_e32 v73.h, v3.l
	v_cndmask_b16 v62.l, 0x7fff, v71.h, vcc_lo
	v_add3_u32 v69, v70, v69, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v71, v59, v72, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v59.l, v60.h
	v_mov_b16_e32 v59.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v70, v70
	v_and_b32_e32 v68, 1, v73
	v_mov_b16_e32 v70.l, v71.h
	v_mov_b16_e32 v70.h, v3.l
	v_and_b32_e32 v72, 1, v59
	v_cndmask_b16 v59.h, 0x7fff, v69.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(46)
	v_lshlrev_b32_e32 v69, 16, v191
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v68, v61, v68, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	v_and_b32_e32 v61, 1, v70
	v_add3_u32 v70, v60, v72, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v72, 16, v190
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v69, v189, v69, v58
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v60, v60
	v_cndmask_b16 v59.l, 0x7fff, v68.h, vcc_lo
	v_add3_u32 v60, v71, v61, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v61, v188, v72, v57
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v68, v58, v69, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(44)
	v_lshlrev_b32_e32 v69, 16, v194
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v58.h, 0x7fff, v70.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v70, 16, v193
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v57, v57, v61, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v61.l, v68.h
	v_mov_b16_e32 v61.h, v3.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v69, v192, v69, v56
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v71, v71
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v70, v168, v70, v55
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v71.l, v57.h
	v_and_b32_e32 v61, 1, v61
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v56, v56, v69, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v71.h, v3.l
	v_cndmask_b16 v58.l, 0x7fff, v60.h, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v69, v55, v70, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v61, v68, v61, 0x7fff
	v_mov_b16_e32 v55.l, v56.h
	v_mov_b16_e32 v55.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	v_and_b32_e32 v60, 1, v71
	v_mov_b16_e32 v68.l, v69.h
	v_mov_b16_e32 v68.h, v3.l
	v_and_b32_e32 v70, 1, v55
	v_cndmask_b16 v55.h, 0x7fff, v61.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(42)
	v_lshlrev_b32_e32 v61, 16, v196
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v60, v57, v60, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	v_and_b32_e32 v57, 1, v68
	v_add3_u32 v68, v56, v70, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v70, 16, v195
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v61, v156, v61, v54
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v56, v56
	v_cndmask_b16 v55.l, 0x7fff, v60.h, vcc_lo
	v_add3_u32 v56, v69, v57, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v57, v150, v70, v53
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v60, v54, v61, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v61, 16, v154
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v54.h, 0x7fff, v68.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v68, 16, v152
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v53, v53, v57, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v57.l, v60.h
	v_mov_b16_e32 v57.h, v3.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v61, v147, v61, v52
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v68, v142, v68, v51
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v69.l, v53.h
	v_and_b32_e32 v57, 1, v57
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v52, v52, v61, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v69.h, v3.l
	v_cndmask_b16 v54.l, 0x7fff, v56.h, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v61, v51, v68, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v57, v60, v57, 0x7fff
	v_mov_b16_e32 v51.l, v52.h
	v_mov_b16_e32 v51.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	v_and_b32_e32 v56, 1, v69
	v_mov_b16_e32 v60.l, v61.h
	v_mov_b16_e32 v60.h, v3.l
	v_and_b32_e32 v68, 1, v51
	v_cndmask_b16 v51.h, 0x7fff, v57.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(38)
	v_lshlrev_b32_e32 v57, 16, v160
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v56, v53, v56, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_and_b32_e32 v53, 1, v60
	v_add3_u32 v60, v52, v68, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v68, 16, v159
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v57, v131, v57, v50
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v52, v52
	v_cndmask_b16 v51.l, 0x7fff, v56.h, vcc_lo
	v_add3_u32 v52, v61, v53, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v53, v130, v68, v49
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v56, v50, v57, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(36)
	v_lshlrev_b32_e32 v57, 16, v198
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v50.h, 0x7fff, v60.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v60, 16, v197
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v49, v49, v53, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v53.l, v56.h
	v_mov_b16_e32 v53.h, v3.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v57, v127, v57, v48
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v60, v126, v60, v47
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v61.l, v49.h
	v_and_b32_e32 v53, 1, v53
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v48, v48, v57, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v61.h, v3.l
	v_cndmask_b16 v50.l, 0x7fff, v52.h, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v57, v47, v60, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v53, v56, v53, 0x7fff
	v_mov_b16_e32 v47.l, v48.h
	v_mov_b16_e32 v47.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	v_and_b32_e32 v52, 1, v61
	v_mov_b16_e32 v56.l, v57.h
	v_mov_b16_e32 v56.h, v3.l
	v_and_b32_e32 v60, 1, v47
	v_cndmask_b16 v47.h, 0x7fff, v53.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v53, 16, v201
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v52, v49, v52, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_and_b32_e32 v49, 1, v56
	v_add3_u32 v56, v48, v60, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v60, 16, v169
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v53, v122, v53, v46
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v48, v48
	v_cndmask_b16 v47.l, 0x7fff, v52.h, vcc_lo
	v_add3_u32 v48, v57, v49, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v49, v121, v60, v45
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v52, v46, v53, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v53, 16, v203
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v46.h, 0x7fff, v56.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v56, 16, v202
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v45, v45, v49, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v49.l, v52.h
	v_mov_b16_e32 v49.h, v3.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v53, v118, v53, v44
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v56, v117, v56, v43
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v57.l, v45.h
	v_and_b32_e32 v49, 1, v49
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v44, v44, v53, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v57.h, v3.l
	v_cndmask_b16 v46.l, 0x7fff, v48.h, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v53, v43, v56, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v49, v52, v49, 0x7fff
	v_mov_b16_e32 v43.l, v44.h
	v_mov_b16_e32 v43.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	v_and_b32_e32 v48, 1, v57
	v_mov_b16_e32 v52.l, v53.h
	v_mov_b16_e32 v52.h, v3.l
	v_and_b32_e32 v56, 1, v43
	v_cndmask_b16 v43.h, 0x7fff, v49.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v49, 16, v210
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v48, v45, v48, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	v_and_b32_e32 v45, 1, v52
	v_add3_u32 v52, v44, v56, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v49, v114, v49, v42
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v56, 16, v209
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v44, v44
	v_cndmask_b16 v43.l, 0x7fff, v48.h, vcc_lo
	v_add3_u32 v44, v53, v45, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v48, v42, v49, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v49, 16, v217
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v45, v113, v56, v41
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v42.h, 0x7fff, v52.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v52, 16, v216
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v49, v110, v49, v40
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v41, v41, v45, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v45.l, v48.h
	v_mov_b16_e32 v45.h, v3.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v52, v109, v52, v39
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v40, v40, v49, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v53.l, v41.h
	v_mov_b16_e32 v53.h, v3.l
	v_and_b32_e32 v45, 1, v45
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v39, v39, v52, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v49.l, v40.h
	v_mov_b16_e32 v49.h, v3.l
	v_cndmask_b16 v42.l, 0x7fff, v44.h, vcc_lo
	v_and_b32_e32 v44, 1, v53
	v_add3_u32 v45, v48, v45, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	v_mov_b16_e32 v48.l, v39.h
	v_mov_b16_e32 v48.h, v3.l
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v44, v41, v44, 0x7fff
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	v_and_b32_e32 v41, 1, v48
	v_add3_u32 v48, v40, v49, 0x7fff
	v_cmp_o_f32_e64 s0, v40, v40
	v_cndmask_b16 v67.h, 0x7fff, v67.h, s8
	v_cndmask_b16 v45.l, 0x7fff, v44.h, vcc_lo
	v_add3_u32 v40, v39, v41, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_cndmask_b16 v44.h, 0x7fff, v48.h, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v44.l, 0x7fff, v40.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v49, 16, v151
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v52, 16, v153
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v48, 16, v148
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v39, 16, v149
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v41, v105, v49, v37
	v_fma_f32 v52, v106, v52, v38
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v49.h, v3.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v39, v102, v39, v36
	v_fma_f32 v48, v101, v48, v35
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v37, v37, v41, s2
	v_cndmask_b32_e64 v38, v38, v52, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v41.h, v3.l
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v36, v36, v39, s2
	v_cndmask_b32_e64 v35, v35, v48, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v49.l, v37.h
	v_mov_b16_e32 v41.l, v38.h
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v48, 16, v140
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v36, v36
	v_and_b32_e32 v39, 1, v49
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v48, v98, v48, v34
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v40, v38, v41, 0x7fff
	v_mov_b16_e32 v41.l, v36.h
	v_mov_b16_e32 v41.h, v3.l
	v_add3_u32 v38, v37, v39, 0x7fff
	v_mov_b16_e32 v39.l, v35.h
	v_mov_b16_e32 v39.h, v3.l
	v_cndmask_b16 v40.h, 0x7fff, v40.h, vcc_lo
	v_and_b32_e32 v41, 1, v41
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v34, v34, v48, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v37, 1, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v39, v36, v41, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v41, 16, v132
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v40.l, 0x7fff, v38.h, vcc_lo
	v_add3_u32 v36, v35, v37, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v35, 16, v129
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v37, v97, v41, v33
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v38.h, 0x7fff, v39.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v39, 16, v128
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v41.h, v3.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v35, v95, v35, v32
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v33, v33, v37, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v37.l, v34.h
	v_mov_b16_e32 v37.h, v3.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v39, v93, v39, v31
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v32, v32, v35, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v41.l, v33.h
	v_cndmask_b16 v38.l, 0x7fff, v36.h, vcc_lo
	v_and_b32_e32 v37, 1, v37
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v31, v31, v39, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	v_and_b32_e32 v35, 1, v41
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v39, 16, v125
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v36, v34, v37, 0x7fff
	v_mov_b16_e32 v37.l, v32.h
	v_mov_b16_e32 v37.h, v3.l
	v_add3_u32 v34, v33, v35, 0x7fff
	v_mov_b16_e32 v35.l, v31.h
	v_mov_b16_e32 v35.h, v3.l
	v_cndmask_b16 v36.h, 0x7fff, v36.h, vcc_lo
	v_and_b32_e32 v37, 1, v37
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v39, v91, v39, v30
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v33, 1, v35
	v_cmp_o_f32_e64 s0, v32, v32
	v_add3_u32 v35, v32, v37, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v37, 16, v124
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v36.l, 0x7fff, v34.h, vcc_lo
	v_add3_u32 v32, v31, v33, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v30, v30, v39, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v33, v89, v37, v29
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v31, 16, v120
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v35, 16, v119
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v37.h, v3.l
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v29, v29, v33, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v33.l, v30.h
	v_mov_b16_e32 v33.h, v3.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v31, v86, v31, v28
	v_fma_f32 v35, v85, v35, v27
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v37.l, v29.h
	v_cndmask_b16 v34.l, 0x7fff, v32.h, vcc_lo
	v_and_b32_e32 v33, 1, v33
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v28, v28, v31, s2
	v_cndmask_b32_e64 v27, v27, v35, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v31, 1, v37
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_add3_u32 v32, v30, v33, 0x7fff
	v_mov_b16_e32 v33.l, v28.h
	v_mov_b16_e32 v33.h, v3.l
	v_add3_u32 v30, v29, v31, 0x7fff
	v_mov_b16_e32 v31.l, v27.h
	v_mov_b16_e32 v31.h, v3.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v35, 16, v116
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v33, 1, v33
	v_cndmask_b16 v32.h, 0x7fff, v32.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_and_b32_e32 v29, 1, v31
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v35, v84, v35, v26
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v31, v28, v33, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v33, 16, v115
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v28, v28
	v_cndmask_b16 v32.l, 0x7fff, v30.h, vcc_lo
	v_add3_u32 v28, v27, v29, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v26, v26, v35, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v29, v83, v33, v25
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v27, 16, v112
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v30.h, 0x7fff, v31.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v31, 16, v111
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v25, v25, v29, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v29.l, v26.h
	v_mov_b16_e32 v29.h, v3.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v27, v82, v27, v24
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v33.h, v3.l
	v_mov_b16_e32 v33.l, v25.h
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v31, v81, v31, v23
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v29, 1, v29
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v24, v24, v27, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v30.l, 0x7fff, v28.h, vcc_lo
	v_and_b32_e32 v27, 1, v33
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v23, v23, v31, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v28, v26, v29, 0x7fff
	v_mov_b16_e32 v29.l, v24.h
	v_mov_b16_e32 v29.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_add3_u32 v26, v25, v27, 0x7fff
	v_mov_b16_e32 v27.l, v23.h
	v_mov_b16_e32 v27.h, v3.l
	v_and_b32_e32 v29, 1, v29
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v31, 16, v108
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v28.h, 0x7fff, v28.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_and_b32_e32 v25, 1, v27
	v_add3_u32 v27, v24, v29, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v29, 16, v107
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v31, v80, v31, v22
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v24, v24
	v_cndmask_b16 v28.l, 0x7fff, v26.h, vcc_lo
	v_add3_u32 v24, v23, v25, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v25, v79, v29, v21
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v22, v22, v31, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v23, 16, v104
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v21, v21, v25, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v25.l, v22.h
	v_mov_b16_e32 v25.h, v3.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v27, 16, v103
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v23, v78, v23, v20
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v29.l, v21.h
	v_mov_b16_e32 v29.h, v3.l
	v_and_b32_e32 v25, 1, v25
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v27, v77, v27, v19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v20, v23, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v26.l, 0x7fff, v24.h, vcc_lo
	v_and_b32_e32 v23, 1, v29
	v_add3_u32 v24, v22, v25, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v19, v19, v27, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v25.l, v20.h
	v_mov_b16_e32 v25.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_add3_u32 v22, v21, v23, 0x7fff
	v_mov_b16_e32 v23.l, v19.h
	v_mov_b16_e32 v23.h, v3.l
	v_and_b32_e32 v25, 1, v25
	v_cndmask_b16 v24.h, 0x7fff, v24.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v27, 16, v100
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_and_b32_e32 v21, 1, v23
	v_add3_u32 v23, v20, v25, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v25, 16, v99
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v27, v76, v27, v18
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v20, v20
	v_add3_u32 v20, v19, v21, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v22.h, vcc_lo
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v21, v75, v25, v17
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v18, v18, v27, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v23, 16, v96
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v17, v17, v21, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v21, 16, v94
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v19.l, v18.h
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v10, v10, v23, v16
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v19.h, v3.l
	v_mov_b16_e32 v23.l, v17.h
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v9, v9, v21, v15
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v23.h, v3.l
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v10, v16, v10, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v16, 1, v19
	v_cndmask_b16 v22.l, 0x7fff, v20.h, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v15, v9, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v19, 1, v23
	v_mov_b16_e32 v15.l, v10.h
	v_mov_b16_e32 v15.h, v3.l
	v_add3_u32 v16, v18, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_mov_b16_e32 v18.l, v9.h
	v_mov_b16_e32 v18.h, v3.l
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v19, v17, v19, 0x7fff
	v_cndmask_b16 v16.h, 0x7fff, v16.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_and_b32_e32 v17, 1, v18
	v_add3_u32 v15, v10, v15, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v18, 16, v92
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v10, v10
	v_cndmask_b16 v16.l, 0x7fff, v19.h, vcc_lo
	v_add3_u32 v10, v9, v17, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v17, 16, v90
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v8, v8, v18, v14
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v3.h, 0x7fff, v15.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v88
	v_lshlrev_b32_e32 v18, 16, v87
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v7, v7, v17, v13
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v8, v14, v8, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v6, v6, v15, v11
	v_fma_f32 v5, v5, v18, v12
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v7, v13, v7, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v9.l, v8.h
	v_mov_b16_e32 v9.h, v3.l
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v6, v11, v6, s2
	v_cndmask_b32_e64 v5, v12, v5, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v11.l, v7.h
	v_mov_b16_e32 v11.h, v3.l
	v_and_b32_e32 v9, 1, v9
	v_mov_b16_e32 v12.l, v6.h
	v_mov_b16_e32 v13.l, v5.h
	v_mov_b16_e32 v13.h, v3.l
	v_mov_b16_e32 v12.h, v3.l
	v_and_b32_e32 v11, 1, v11
	v_cndmask_b16 v3.l, 0x7fff, v10.h, vcc_lo
	v_add3_u32 v9, v8, v9, 0x7fff
	v_and_b32_e32 v10, 1, v13
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v11, v7, v11, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_cmp_o_f32_e64 s0, v8, v8
	v_add3_u32 v7, v5, v10, 0x7fff
	v_add3_u32 v8, v6, v12, 0x7fff
	v_cmp_o_f32_e64 s1, v6, v6
	v_cmp_o_f32_e64 s2, v5, v5
	v_cndmask_b16 v5.h, 0x7fff, v11.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	v_cndmask_b16 v5.l, 0x7fff, v9.h, s0
	v_cndmask_b16 v1.h, 0x7fff, v8.h, s1
	v_cndmask_b16 v1.l, 0x7fff, v7.h, s2
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v7, v63, v65, vcc_lo
	v_cndmask_b32_e32 v33, v32, v36, vcc_lo
	v_cndmask_b32_e32 v32, v36, v32, vcc_lo
	v_cndmask_b32_e32 v36, v22, v26, vcc_lo
	v_dual_cndmask_b32 v22, v26, v22 :: v_dual_cndmask_b32 v37, v5, v16
	v_dual_cndmask_b32 v5, v16, v5 :: v_dual_mov_b32 v16, 0x5410
	v_dual_mov_b32 v26, 0x7632 :: v_dual_cndmask_b32 v29, v38, v44
	v_dual_cndmask_b32 v31, v44, v38 :: v_dual_cndmask_b32 v38, v1, v3
	v_cndmask_b32_e32 v1, v3, v1, vcc_lo
	v_permlanex16_b32 v3, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v7, 0x1054, v16, vcc_lo
	v_cndmask_b32_e32 v16, 0x3276, v26, vcc_lo
	v_dual_cndmask_b32 v6, v65, v63 :: v_dual_cndmask_b32 v25, v40, v45
	v_cndmask_b32_e32 v27, v45, v40, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v16, v16, 8, v16
	v_cndmask_b32_e32 v9, v64, v66, vcc_lo
	v_cndmask_b32_e32 v11, v67, v59, vcc_lo
	v_cndmask_b32_e32 v13, v62, v58, vcc_lo
	v_and_b32_e32 v7, 0x540054, v7
	v_dual_cndmask_b32 v15, v55, v51 :: v_dual_and_b32 v16, 0x760076, v16
	v_cndmask_b32_e32 v18, v54, v50, vcc_lo
	v_cndmask_b32_e32 v20, v47, v43, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v16, v16, 4, v16
	v_cndmask_b32_e32 v23, v46, v42, vcc_lo
	v_cndmask_b32_e32 v35, v30, v34, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v30, v34, v30 :: v_dual_and_b32 v39, 0x5040504, v7
	v_and_b32_e32 v40, 0x7060706, v16
	v_cndmask_b32_e32 v34, v24, v28, vcc_lo
	v_cndmask_b32_e32 v24, v28, v24, vcc_lo
	v_permlanex16_b32 v41, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v5, v3, v6, v39
	v_perm_b32 v6, v3, v6, v40
	v_and_b32_e32 v3, 0x1e0, v0
	v_cndmask_b32_e32 v8, v66, v64, vcc_lo
	v_cndmask_b32_e32 v10, v59, v67, vcc_lo
	v_cndmask_b32_e32 v12, v58, v62, vcc_lo
	v_dual_cndmask_b32 v14, v51, v55 :: v_dual_cndmask_b32 v17, v50, v54
	v_cndmask_b32_e32 v19, v43, v47, vcc_lo
	v_cndmask_b32_e32 v21, v42, v46, vcc_lo
	v_permlanex16_b32 v9, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v27, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_add_nc_u32_e32 v3, 32, v4
	v_permlanex16_b32 v32, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v9, v8, v39
	v_perm_b32 v8, v9, v8, v40
	v_perm_b32 v9, v11, v10, v39
	v_perm_b32 v10, v11, v10, v40
	v_perm_b32 v11, v13, v12, v39
	v_perm_b32 v12, v13, v12, v40
	v_perm_b32 v13, v15, v14, v39
	v_perm_b32 v14, v15, v14, v40
	v_perm_b32 v15, v18, v17, v39
	v_perm_b32 v16, v18, v17, v40
	v_perm_b32 v17, v20, v19, v39
	v_perm_b32 v18, v20, v19, v40
	v_perm_b32 v19, v23, v21, v39
	v_perm_b32 v20, v23, v21, v40
	v_perm_b32 v21, v26, v25, v39
	v_perm_b32 v22, v26, v25, v40
	v_perm_b32 v25, v28, v33, v39
	v_perm_b32 v26, v28, v33, v40
	v_add_nc_u32_e32 v33, 64, v4
	v_perm_b32 v23, v27, v29, v39
	v_perm_b32 v24, v27, v29, v40
	v_perm_b32 v27, v30, v35, v39
	v_perm_b32 v28, v30, v35, v40
	v_perm_b32 v29, v31, v34, v39
	v_perm_b32 v30, v31, v34, v40
	v_dual_cndmask_b32 v34, 0x80000000, v4 :: v_dual_cndmask_b32 v35, 0x80000000, v3
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[5:8], v34, s[16:19], 0 offen
	buffer_store_b128 v[9:12], v35, s[16:19], 0 offen
	buffer_store_b128 v[13:16], v33, s[16:19], 0 offen
	v_add_nc_u32_e32 v5, 0x60, v4
	v_add_nc_u32_e32 v6, 0x80, v4
	v_add_nc_u32_e32 v7, 0xa0, v4
	v_add_nc_u32_e32 v8, 0xc0, v4
	v_permlanex16_b32 v42, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v4, 0xe0, v4
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_perm_b32 v31, v32, v36, v39
	v_perm_b32 v32, v32, v36, v40
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_perm_b32 v0, v41, v37, v39
	v_perm_b32 v1, v41, v37, v40
	v_perm_b32 v2, v42, v38, v39
	v_perm_b32 v3, v42, v38, v40
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[17:20], v5, s[16:19], 0 offen
	buffer_store_b128 v[21:24], v6, s[16:19], 0 offen
	buffer_store_b128 v[25:28], v7, s[16:19], 0 offen
	buffer_store_b128 v[29:32], v8, s[16:19], 0 offen
	buffer_store_b128 v[0:3], v4, s[16:19], 0 offen
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 52
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 220
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16024
; TotalNumSgprs: 54
; NumVgprs: 220
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 54
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
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
