	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
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
.LBB0_3:                                ; %Flow331
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[16:17], s[0:1], 0x20
	v_bfe_u32 v75, v0, 4, 1
	v_dual_mov_b32 v11, 0 :: v_dual_lshlrev_b32 v80, 4, v0
	v_bfe_i32 v78, v0, 3, 1
	v_or_b32_e32 v77, 0x3f0, v0
	v_or_b32_e32 v79, 0x7f0, v0
	v_dual_mov_b32 v13, 0 :: v_dual_add_nc_u32 v76, 0, v9
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v38, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s1, s6, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_add_i32 s5, s28, 16
	s_mov_b32 s44, 0
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v5, s5, v3
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	v_and_b32_e32 v4, 0x70, v80
	v_add_nc_u32_e32 v7, s33, v9
	v_mul_lo_u32 v5, s19, v5
	v_sub_nc_u32_e32 v83, s7, v3
	s_lshl_b32 s27, s31, 7
	v_and_or_b32 v4, 0x88, v78, v4
	v_mul_lo_u32 v3, s6, v7
	v_add_nc_u32_e32 v2, s33, v2
	s_lshl_b32 s0, s31, 8
	s_lshl_b32 s26, s30, 8
	v_xor_b32_e32 v6, 8, v4
	v_add3_u32 v1, v5, s27, v1
	s_sub_i32 s35, s0, s26
	s_lshl_b32 s0, s30, 7
	v_mad_u64_u32 v[10:11], null, s7, v2, v[9:10]
	v_lshlrev_b32_e32 v84, 1, v75
	v_lshlrev_b32_e32 v85, 1, v3
	v_subrev_nc_u32_e32 v86, s0, v1
	v_add_nc_u32_e32 v87, 0, v4
	v_add_nc_u32_e32 v88, 0, v6
	v_mov_b32_e32 v1, s44
	v_dual_mov_b32 v8, s51 :: v_dual_add_nc_u32 v89, 0, v77
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v90, 0, v79
	v_dual_mov_b32 v2, s45 :: v_dual_mov_b32 v3, s46
	v_dual_mov_b32 v4, s47 :: v_dual_mov_b32 v5, s48
	v_dual_mov_b32 v6, s49 :: v_dual_mov_b32 v7, s50
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
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
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v195, v166, v95, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v118, v118, v122, 0xc0c0004
	v_lshl_or_b32 v122, v148, 16, v132
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v198, v138, v167, 0xc0c0004
	v_lshl_or_b32 v162, v133, 16, v183
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
	v_lshl_or_b32 v138, v142, 16, v126
	v_lshl_or_b32 v165, v170, 16, v158
	v_lshl_or_b32 v170, v152, 16, v127
	v_lshl_or_b32 v164, v150, 16, v184
	v_lshl_or_b32 v146, v143, 16, v136
	v_lshl_or_b32 v166, v151, 16, v135
	v_lshl_or_b32 v156, v153, 16, v137
	v_lshl_or_b32 v168, v161, 16, v145
	v_lshl_or_b32 v167, v188, 16, v159
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
	v_wmma_i32_16x16x16_iu4 v[130:137], v[164:165], v[180:181], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[154:161], v[168:169], v[178:179], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v117, v117
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v92, s35, v84
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v125, v125
	v_mul_f32_e32 v117, v91, v117
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x13
	buffer_load_u16 v98, v92, s[28:31], 0 offen
	buffer_load_u16 v99, v92, s[28:31], 0 offen offset:4
	buffer_load_u16 v100, v92, s[28:31], 0 offen offset:8
	buffer_load_u16 v101, v92, s[28:31], 0 offen offset:12
	buffer_load_u16 v102, v92, s[28:31], 0 offen offset:16
	buffer_load_u16 v105, v92, s[28:31], 0 offen offset:20
	buffer_load_u16 v106, v92, s[28:31], 0 offen offset:24
	buffer_load_u16 v108, v92, s[28:31], 0 offen offset:28
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
	v_mul_f32_e32 v114, v91, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[138:145], v[166:167], v[180:181], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[162:169], v[174:175], v[178:179], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[170:171], v[180:181], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[154:161], v[172:173], v[180:181], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[170:177], v[184:185], v[178:179], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[162:169], v[182:183], v[180:181], v[162:169] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[170:177], v[186:187], v[180:181], v[170:177] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x6
	buffer_load_u16 v178, v92, s[28:31], 0 offen offset:80
	buffer_load_u16 v179, v92, s[28:31], 0 offen offset:84
	buffer_load_u16 v180, v92, s[28:31], 0 offen offset:88
	buffer_load_u16 v181, v92, s[28:31], 0 offen offset:92
	buffer_load_u16 v182, v92, s[28:31], 0 offen offset:96
	buffer_load_u16 v183, v92, s[28:31], 0 offen offset:100
	buffer_load_u16 v184, v92, s[28:31], 0 offen offset:104
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
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
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v101, 16, v101
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v102, 16, v102
	v_lshlrev_b32_e32 v100, 16, v100
	v_lshlrev_b32_e32 v98, 16, v98
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v105, 16, v105
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v109, 16, v109
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(16)
	v_dual_fmac_f32 v38, v114, v98 :: v_dual_lshlrev_b32 v111, 16, v111
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v125, v91, v125 :: v_dual_lshlrev_b32 v110, 16, v110
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v127, v91, v127 :: v_dual_lshlrev_b32 v112, 16, v112
	v_mul_f32_e32 v115, v91, v115
	v_dual_mul_f32 v116, v91, v116 :: v_dual_lshlrev_b32 v99, 16, v99
	v_dual_mul_f32 v121, v91, v121 :: v_dual_lshlrev_b32 v108, 16, v108
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v123, v91, v123 :: v_dual_fmac_f32 v64, v125, v112
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v128, v91, v128 :: v_dual_lshlrev_b32 v97, 16, v97
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v107, 16, v107
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v74, v115, v99
	v_fmac_f32_e32 v68, v121, v108
	v_dual_fmac_f32 v66, v123, v110 :: v_dual_lshlrev_b32 v113, 16, v113
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v126, v91, v126 :: v_dual_fmac_f32 v61, v128, v97
	v_mul_f32_e32 v124, v91, v124
	v_dual_mul_f32 v129, v91, v129 :: v_dual_lshlrev_b32 v96, 16, v96
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v72, v117, v101 :: v_dual_mul_f32 v119, v91, v119
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v118, v91, v118
	v_dual_mul_f32 v120, v91, v120 :: v_dual_fmac_f32 v63, v126, v113
	v_dual_mul_f32 v122, v91, v122 :: v_dual_fmac_f32 v65, v124, v111
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v106, 16, v106
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v62, v127, v96 :: v_dual_lshlrev_b32 v103, 16, v103
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v130, v91, v130
	v_dual_mul_f32 v131, v91, v131 :: v_dual_lshlrev_b32 v104, 16, v104
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x5
	buffer_load_u16 v98, v92, s[28:31], 0 offen offset:108
	buffer_load_u16 v114, v92, s[28:31], 0 offen offset:112
	buffer_load_u16 v99, v92, s[28:31], 0 offen offset:116
	buffer_load_u16 v115, v92, s[28:31], 0 offen offset:120
	buffer_load_u16 v101, v92, s[28:31], 0 offen offset:132
	buffer_load_u16 v117, v92, s[28:31], 0 offen offset:136
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v71, v118, v102
	v_fmac_f32_e32 v73, v116, v100
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x5
	buffer_load_u16 v100, v92, s[28:31], 0 offen offset:124
	buffer_load_u16 v116, v92, s[28:31], 0 offen offset:128
	buffer_load_u16 v102, v92, s[28:31], 0 offen offset:140
	buffer_load_u16 v118, v92, s[28:31], 0 offen offset:144
	buffer_load_u16 v108, v92, s[28:31], 0 offen offset:164
	buffer_load_u16 v121, v92, s[28:31], 0 offen offset:168
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v67, v122, v109
	v_dual_fmac_f32 v70, v119, v105 :: v_dual_fmac_f32 v69, v120, v106
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x11
	buffer_load_u16 v105, v92, s[28:31], 0 offen offset:148
	buffer_load_u16 v119, v92, s[28:31], 0 offen offset:152
	buffer_load_u16 v106, v92, s[28:31], 0 offen offset:156
	buffer_load_u16 v120, v92, s[28:31], 0 offen offset:160
	buffer_load_u16 v109, v92, s[28:31], 0 offen offset:172
	buffer_load_u16 v122, v92, s[28:31], 0 offen offset:176
	buffer_load_u16 v110, v92, s[28:31], 0 offen offset:180
	buffer_load_u16 v123, v92, s[28:31], 0 offen offset:184
	buffer_load_u16 v111, v92, s[28:31], 0 offen offset:188
	buffer_load_u16 v124, v92, s[28:31], 0 offen offset:192
	buffer_load_u16 v112, v92, s[28:31], 0 offen offset:196
	buffer_load_u16 v125, v92, s[28:31], 0 offen offset:200
	buffer_load_u16 v113, v92, s[28:31], 0 offen offset:204
	buffer_load_u16 v126, v92, s[28:31], 0 offen offset:208
	buffer_load_u16 v96, v92, s[28:31], 0 offen offset:212
	buffer_load_u16 v127, v92, s[28:31], 0 offen offset:216
	buffer_load_u16 v97, v92, s[28:31], 0 offen offset:220
	buffer_load_u16 v128, v92, s[28:31], 0 offen offset:224
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v60, v129, v103 :: v_dual_fmac_f32 v59, v130, v104
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x3
	buffer_load_u16 v103, v92, s[28:31], 0 offen offset:228
	buffer_load_u16 v129, v92, s[28:31], 0 offen offset:232
	buffer_load_u16 v104, v92, s[28:31], 0 offen offset:236
	buffer_load_u16 v130, v92, s[28:31], 0 offen offset:240
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v58, v131, v107
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x2
	buffer_load_u16 v107, v92, s[28:31], 0 offen offset:244
	buffer_load_u16 v131, v92, s[28:31], 0 offen offset:248
	buffer_load_u16 v92, v92, s[28:31], 0 offen offset:252
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(44)
	v_dual_mul_f32 v132, v91, v132 :: v_dual_lshlrev_b32 v95, 16, v95
	v_mul_f32_e32 v133, v91, v133
	s_waitcnt vmcnt(42)
	v_dual_mul_f32 v134, v91, v134 :: v_dual_lshlrev_b32 v179, 16, v179
	v_dual_mul_f32 v135, v91, v135 :: v_dual_lshlrev_b32 v94, 16, v94
	s_waitcnt vmcnt(40)
	v_dual_mul_f32 v136, v91, v136 :: v_dual_lshlrev_b32 v181, 16, v181
	v_dual_mul_f32 v137, v91, v137 :: v_dual_lshlrev_b32 v178, 16, v178
	s_waitcnt vmcnt(38)
	v_dual_mul_f32 v138, v91, v138 :: v_dual_lshlrev_b32 v183, 16, v183
	v_dual_mul_f32 v139, v91, v139 :: v_dual_lshlrev_b32 v180, 16, v180
	v_mul_f32_e32 v140, v91, v140
	v_dual_mul_f32 v141, v91, v141 :: v_dual_lshlrev_b32 v182, 16, v182
	v_mul_f32_e32 v142, v91, v142
	s_waitcnt vmcnt(37)
	v_dual_mul_f32 v143, v91, v143 :: v_dual_lshlrev_b32 v184, 16, v184
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
	v_mul_f32_e32 v154, v91, v154
	v_mul_f32_e32 v155, v91, v155
	v_mul_f32_e32 v156, v91, v156
	v_mul_f32_e32 v157, v91, v157
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
	v_mul_f32_e32 v174, v91, v174
	v_mul_f32_e32 v175, v91, v175
	v_dual_mul_f32 v176, v91, v176 :: v_dual_fmac_f32 v57, v132, v94
	v_mul_f32_e32 v91, v91, v177
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v177, 0x80000000, v86, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v86, s41, v86
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v56, v133, v95 :: v_dual_fmac_f32 v51, v138, v182
	v_fmac_f32_e32 v53, v136, v180
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b32 v177, v177, s[24:27], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v55, v134, v178
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_store_b8 v81, v93 offset:2048
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v82, v177
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v98, 16, v98
	v_lshlrev_b32_e32 v114, 16, v114
	v_lshlrev_b32_e32 v99, 16, v99
	v_lshlrev_b32_e32 v115, 16, v115
	v_lshlrev_b32_e32 v100, 16, v100
	v_lshlrev_b32_e32 v116, 16, v116
	v_lshlrev_b32_e32 v101, 16, v101
	v_lshlrev_b32_e32 v117, 16, v117
	v_lshlrev_b32_e32 v102, 16, v102
	v_lshlrev_b32_e32 v118, 16, v118
	v_lshlrev_b32_e32 v105, 16, v105
	v_lshlrev_b32_e32 v119, 16, v119
	v_lshlrev_b32_e32 v106, 16, v106
	v_lshlrev_b32_e32 v120, 16, v120
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
	v_dual_fmac_f32 v54, v135, v179 :: v_dual_fmac_f32 v49, v140, v184
	v_dual_fmac_f32 v52, v137, v181 :: v_dual_fmac_f32 v47, v142, v114
	v_dual_fmac_f32 v50, v139, v183 :: v_dual_fmac_f32 v43, v146, v116
	v_dual_fmac_f32 v48, v141, v98 :: v_dual_fmac_f32 v45, v144, v115
	v_dual_fmac_f32 v46, v143, v99 :: v_dual_fmac_f32 v41, v148, v117
	v_dual_fmac_f32 v44, v145, v100 :: v_dual_fmac_f32 v39, v150, v118
	v_dual_fmac_f32 v42, v147, v101 :: v_dual_fmac_f32 v35, v153, v106
	v_dual_fmac_f32 v40, v149, v102 :: v_dual_fmac_f32 v37, v151, v105
	v_dual_fmac_f32 v36, v152, v119 :: v_dual_fmac_f32 v33, v155, v108
	v_dual_fmac_f32 v34, v154, v120 :: v_dual_fmac_f32 v31, v157, v109
	v_dual_fmac_f32 v32, v156, v121 :: v_dual_fmac_f32 v29, v159, v110
	v_dual_fmac_f32 v30, v158, v122 :: v_dual_fmac_f32 v27, v161, v111
	v_dual_fmac_f32 v28, v160, v123 :: v_dual_fmac_f32 v25, v163, v112
	v_dual_fmac_f32 v26, v162, v124 :: v_dual_fmac_f32 v23, v165, v113
	v_dual_fmac_f32 v24, v164, v125 :: v_dual_fmac_f32 v21, v167, v96
	v_dual_fmac_f32 v22, v166, v126 :: v_dual_fmac_f32 v19, v169, v97
	v_dual_fmac_f32 v20, v168, v127 :: v_dual_fmac_f32 v15, v173, v104
	v_dual_fmac_f32 v18, v170, v128 :: v_dual_fmac_f32 v17, v171, v103
	v_dual_fmac_f32 v16, v172, v129 :: v_dual_fmac_f32 v13, v175, v107
	v_dual_fmac_f32 v14, v174, v130 :: v_dual_fmac_f32 v11, v91, v92
	v_fmac_f32_e32 v12, v176, v131
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow332
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v2, s6, v9
	s_mul_i32 s3, s33, s6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s0, s1, 0
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v1, 16, v0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_add_i32 s3, s3, s0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v2, s3, v2, 1
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v81, 0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	buffer_load_u16 v2, v2, s[20:23], 0 offen
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
	ds_load_u8 v93, v76 offset:672
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v138, s11 :: v_dual_and_b32 v3, 0x70, v80
	v_dual_mov_b32 v137, s10 :: v_dual_add_nc_u32 v10, 0, v79
	v_mov_b32_e32 v135, s8
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_or_b32 v3, 0x88, v78, v3
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v136, s9 :: v_dual_mov_b32 v133, s6
	v_dual_mov_b32 v134, s7 :: v_dual_mov_b32 v131, s4
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
	v_dual_mov_b32 v132, s5 :: v_dual_add_nc_u32 v145, 0, v77
	ds_load_u8 v101, v76 offset:1664
	ds_load_u8 v102, v76 offset:1536
	v_lshl_or_b32 v8, v7, 16, v79
	ds_load_u8 v7, v76 offset:384
	ds_load_u8 v78, v76 offset:256
	ds_load_u8 v90, v76 offset:144
	ds_load_u8 v97, v76 offset:160
	ds_load_u8 v117, v76 offset:176
	ds_load_u8 v118, v76 offset:192
	ds_load_u8 v123, v76 offset:208
	ds_load_u8 v124, v76 offset:224
	ds_load_u8 v150, v76 offset:240
	ds_load_u8 v91, v76 offset:16
	ds_load_u8 v98, v76 offset:32
	ds_load_u8 v125, v76 offset:48
	ds_load_u8 v126, v76 offset:64
	ds_load_u8 v127, v76 offset:80
	ds_load_u8 v129, v76 offset:96
	ds_load_u8 v151, v76 offset:112
	ds_load_u8 v105, v76 offset:688
	ds_load_u8 v106, v76 offset:704
	ds_load_u8 v109, v76 offset:720
	ds_load_u8 v119, v76 offset:736
	ds_load_u8 v147, v76 offset:752
	ds_load_u8 v86, v76 offset:528
	ds_load_u8 v94, v76 offset:544
	ds_load_u8 v107, v76 offset:560
	ds_load_u8 v108, v76 offset:576
	ds_load_u8 v110, v76 offset:592
	ds_load_u8 v120, v76 offset:608
	ds_load_u8 v148, v76 offset:624
	ds_load_u8 v87, v76 offset:1024
	ds_load_u8 v88, v76 offset:912
	ds_load_u8 v95, v76 offset:928
	ds_load_u8 v111, v76 offset:944
	ds_load_u8 v112, v76 offset:960
	ds_load_u8 v113, v76 offset:976
	ds_load_u8 v121, v76 offset:992
	ds_load_u8 v89, v76 offset:784
	ds_load_u8 v96, v76 offset:800
	ds_load_u8 v114, v76 offset:816
	ds_load_u8 v115, v76 offset:832
	ds_load_u8 v116, v76 offset:848
	ds_load_u8 v122, v76 offset:864
	ds_load_u8 v149, v76 offset:880
	ds_load_u8 v92, v76 offset:400
	ds_load_u8 v99, v76 offset:416
	ds_load_u8 v128, v76 offset:432
	ds_load_u8 v130, v76 offset:448
	ds_load_u8 v139, v76 offset:464
	ds_load_u8 v140, v76 offset:480
	ds_load_u8 v152, v76 offset:496
	ds_load_u8 v100, v76 offset:272
	ds_load_u8 v103, v76 offset:288
	ds_load_u8 v141, v76 offset:304
	ds_load_u8 v142, v76 offset:320
	ds_load_u8 v143, v76 offset:336
	ds_load_u8 v144, v76 offset:352
	ds_load_u8 v153, v76 offset:368
	ds_load_u8 v181, v76 offset:1040
	ds_load_u8 v182, v76 offset:1056
	ds_load_u8 v183, v76 offset:1072
	ds_load_u8 v184, v76 offset:1088
	ds_load_u8 v185, v76 offset:1104
	ds_load_u8 v186, v76 offset:1120
	ds_load_u8 v187, v76 offset:1136
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v7, v78, v7, 0xc0c0004
	v_perm_b32 v79, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v86, v89, v88, 0xc0c0004
	v_perm_b32 v88, v91, v90, 0xc0c0004
	v_lshl_or_b32 v7, v7, 16, v79
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v76 offset:1152
	ds_load_u8 v166, v76 offset:1680
	ds_load_u8 v167, v76 offset:1696
	ds_load_u8 v168, v76 offset:1712
	ds_load_u8 v169, v76 offset:1728
	ds_load_u8 v170, v76 offset:1744
	ds_load_u8 v171, v76 offset:1760
	ds_load_u8 v172, v76 offset:1776
	ds_load_u8 v173, v76 offset:1808
	ds_load_u8 v174, v76 offset:1824
	ds_load_u8 v175, v76 offset:1840
	ds_load_u8 v176, v76 offset:1856
	ds_load_u8 v177, v76 offset:1872
	ds_load_u8 v178, v76 offset:1888
	ds_load_u8 v179, v76 offset:1904
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v89, v100, v92, 0xc0c0004
	ds_load_u8 v100, v76 offset:1936
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
	v_wmma_i32_16x16x16_iu4 v[77:84], v[7:8], v[5:6], v[131:138] neg_lo:[1,1,0]
	ds_load_u8 v7, v76 offset:1920
	ds_load_u8 v8, v76 offset:1792
	ds_load_u8 v104, v76 offset:1424
	ds_load_u8 v146, v76 offset:1440
	ds_load_u8 v154, v76 offset:1456
	ds_load_u8 v155, v76 offset:1472
	ds_load_u8 v156, v76 offset:1488
	ds_load_u8 v157, v76 offset:1504
	ds_load_u8 v158, v76 offset:1520
	ds_load_u8 v159, v76 offset:1552
	ds_load_u8 v160, v76 offset:1568
	ds_load_u8 v161, v76 offset:1584
	ds_load_u8 v162, v76 offset:1600
	ds_load_u8 v163, v76 offset:1616
	ds_load_u8 v164, v76 offset:1632
	ds_load_u8 v165, v76 offset:1648
	s_waitcnt lgkmcnt(45)
	v_perm_b32 v87, v87, v102, 0xc0c0004
	v_perm_b32 v93, v94, v93, 0xc0c0004
	v_perm_b32 v94, v96, v95, 0xc0c0004
	v_perm_b32 v95, v98, v97, 0xc0c0004
	v_perm_b32 v96, v103, v99, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v180, v8, v7, 0xc0c0004
	ds_load_u8 v7, v76 offset:1408
	ds_load_u8 v8, v76 offset:1280
	v_perm_b32 v105, v107, v105, 0xc0c0004
	v_perm_b32 v107, v114, v111, 0xc0c0004
	v_lshl_or_b32 v103, v96, 16, v95
	v_lshl_or_b32 v102, v180, 16, v101
	ds_load_u8 v180, v76 offset:1952
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v97, v195, v104, 0xc0c0004
	v_lshl_or_b32 v104, v94, 16, v93
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v160, v160, v167, 0xc0c0004
	v_perm_b32 v146, v196, v146, 0xc0c0004
	v_perm_b32 v111, v125, v117, 0xc0c0004
	v_perm_b32 v114, v141, v128, 0xc0c0004
	v_perm_b32 v117, v183, v190, 0xc0c0004
	v_perm_b32 v125, v197, v154, 0xc0c0004
	v_perm_b32 v128, v108, v106, 0xc0c0004
	v_perm_b32 v112, v115, v112, 0xc0c0004
	v_perm_b32 v115, v126, v118, 0xc0c0004
	v_perm_b32 v126, v142, v130, 0xc0c0004
	v_perm_b32 v130, v198, v155, 0xc0c0004
	v_perm_b32 v141, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v90, v8, v7, 0xc0c0004
	v_lshl_or_b32 v8, v86, 16, v85
	v_lshl_or_b32 v7, v89, 16, v88
	v_lshl_or_b32 v118, v112, 16, v128
	v_perm_b32 v128, v184, v191, 0xc0c0004
	v_lshl_or_b32 v101, v90, 16, v87
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v174, v180, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[85:92], v[7:8], v[5:6], v[131:138] neg_lo:[1,1,0]
	v_perm_b32 v7, v159, v166, 0xc0c0004
	v_perm_b32 v8, v173, v100, 0xc0c0004
	ds_load_u8 v159, v76 offset:1968
	ds_load_u8 v166, v76 offset:1984
	ds_load_u8 v202, v76 offset:2000
	ds_load_u8 v76, v76 offset:2016
	v_perm_b32 v173, v182, v189, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[77:84], v[101:102], v[3:4], v[77:84] neg_lo:[1,1,0]
	v_perm_b32 v142, v116, v113, 0xc0c0004
	v_lshl_or_b32 v8, v8, 16, v7
	v_perm_b32 v7, v181, v188, 0xc0c0004
	v_perm_b32 v123, v127, v123, 0xc0c0004
	v_perm_b32 v127, v143, v139, 0xc0c0004
	v_perm_b32 v139, v163, v170, 0xc0c0004
	v_perm_b32 v147, v148, v147, 0xc0c0004
	v_lshl_or_b32 v7, v97, 16, v7
	v_wmma_i32_16x16x16_iu4 v[93:100], v[103:104], v[5:6], v[131:138] neg_lo:[1,1,0]
	v_lshl_or_b32 v104, v167, 16, v160
	v_lshl_or_b32 v103, v146, 16, v173
	ds_load_u8 v160, v145
	v_wmma_i32_16x16x16_iu4 v[85:92], v[7:8], v[3:4], v[85:92] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v107, 16, v105
	v_lshl_or_b32 v7, v114, 16, v111
	v_wmma_i32_16x16x16_iu4 v[93:100], v[103:104], v[3:4], v[93:100] neg_lo:[1,1,0]
	v_perm_b32 v111, v161, v168, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v114, v175, v159, 0xc0c0004
	v_lshl_or_b32 v127, v127, 16, v123
	v_wmma_i32_16x16x16_iu4 v[101:108], v[7:8], v[5:6], v[131:138] neg_lo:[1,1,0]
	v_lshl_or_b32 v7, v125, 16, v117
	v_lshl_or_b32 v117, v126, 16, v115
	v_lshl_or_b32 v8, v114, 16, v111
	v_perm_b32 v125, v162, v169, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v126, v176, v166, 0xc0c0004
	v_perm_b32 v154, v164, v171, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[109:116], v[117:118], v[5:6], v[131:138] neg_lo:[1,1,0]
	v_perm_b32 v117, v120, v119, 0xc0c0004
	v_perm_b32 v118, v122, v121, 0xc0c0004
	v_perm_b32 v119, v129, v124, 0xc0c0004
	v_perm_b32 v120, v144, v140, 0xc0c0004
	v_lshl_or_b32 v126, v126, 16, v125
	v_lshl_or_b32 v125, v130, 16, v128
	v_lshl_or_b32 v128, v142, 16, v141
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v140, v177, v202, 0xc0c0004
	v_perm_b32 v141, v185, v192, 0xc0c0004
	v_perm_b32 v142, v199, v156, 0xc0c0004
	v_lshl_or_b32 v130, v118, 16, v117
	v_lshl_or_b32 v129, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[117:124], v[127:128], v[5:6], v[131:138] neg_lo:[1,1,0]
	v_lshl_or_b32 v128, v140, 16, v139
	v_lshl_or_b32 v127, v142, 16, v141
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[139:146], v[129:130], v[5:6], v[131:138] neg_lo:[1,1,0]
	v_perm_b32 v129, v151, v150, 0xc0c0004
	v_perm_b32 v130, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v160, 0xc0c0004
	v_perm_b32 v76, v178, v76, 0xc0c0004
	v_perm_b32 v149, v186, v193, 0xc0c0004
	v_perm_b32 v150, v200, v157, 0xc0c0004
	v_lshl_or_b32 v129, v130, 16, v129
	v_lshl_or_b32 v130, v148, 16, v147
	v_perm_b32 v151, v187, v194, 0xc0c0004
	v_perm_b32 v152, v201, v158, 0xc0c0004
	v_perm_b32 v153, v165, v172, 0xc0c0004
	v_perm_b32 v10, v179, v10, 0xc0c0004
	v_lshl_or_b32 v148, v76, 16, v154
	v_lshl_or_b32 v147, v150, 16, v149
	v_wmma_i32_16x16x16_iu4 v[131:138], v[129:130], v[5:6], v[131:138] neg_lo:[1,1,0]
	v_lshl_or_b32 v5, v152, 16, v151
	v_lshl_or_b32 v6, v10, 16, v153
	v_wmma_i32_16x16x16_iu4 v[101:108], v[7:8], v[3:4], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[109:116], v[125:126], v[3:4], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[117:124], v[127:128], v[3:4], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[147:148], v[3:4], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[131:138], v[5:6], v[3:4], v[131:138] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v4, v77
	v_cvt_f32_i32_e32 v5, v78
	v_cvt_f32_i32_e32 v6, v79
	v_cvt_f32_i32_e32 v7, v80
	v_cvt_f32_i32_e32 v8, v81
	v_cvt_f32_i32_e32 v10, v82
	v_cvt_f32_i32_e32 v81, v83
	v_cvt_f32_i32_e32 v82, v84
	v_cvt_f32_i32_e32 v83, v85
	v_cvt_f32_i32_e32 v84, v86
	v_cvt_f32_i32_e32 v85, v87
	v_cvt_f32_i32_e32 v86, v88
	v_cvt_f32_i32_e32 v87, v89
	v_cvt_f32_i32_e32 v88, v90
	v_cvt_f32_i32_e32 v89, v91
	v_cvt_f32_i32_e32 v90, v92
	v_cvt_f32_i32_e32 v91, v93
	v_cvt_f32_i32_e32 v92, v94
	v_cvt_f32_i32_e32 v93, v95
	v_cvt_f32_i32_e32 v94, v96
	v_cvt_f32_i32_e32 v95, v97
	v_cvt_f32_i32_e32 v96, v98
	v_cvt_f32_i32_e32 v97, v99
	v_cvt_f32_i32_e32 v98, v100
	v_cvt_f32_i32_e32 v99, v101
	v_cvt_f32_i32_e32 v100, v102
	v_cvt_f32_i32_e32 v101, v103
	v_cvt_f32_i32_e32 v102, v104
	v_cvt_f32_i32_e32 v103, v105
	v_cvt_f32_i32_e32 v104, v106
	v_cvt_f32_i32_e32 v105, v107
	v_cvt_f32_i32_e32 v106, v108
	v_cvt_f32_i32_e32 v107, v109
	v_cvt_f32_i32_e32 v108, v110
	v_cvt_f32_i32_e32 v109, v111
	v_cvt_f32_i32_e32 v110, v112
	v_cvt_f32_i32_e32 v111, v113
	v_cvt_f32_i32_e32 v112, v114
	v_cvt_f32_i32_e32 v113, v115
	v_cvt_f32_i32_e32 v114, v116
	v_cvt_f32_i32_e32 v115, v117
	v_cvt_f32_i32_e32 v116, v118
	v_cvt_f32_i32_e32 v117, v119
	v_cvt_f32_i32_e32 v118, v120
	v_cvt_f32_i32_e32 v119, v121
	v_cvt_f32_i32_e32 v120, v122
	v_cvt_f32_i32_e32 v121, v123
	v_cvt_f32_i32_e32 v122, v124
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
	s_mul_i32 s0, s0, s19
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s5, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s18, s0
	s_mov_b32 s7, 0x31027000
	v_add_lshl_u32 v3, s0, v75, 1
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s4, s14
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	s_mul_i32 s33, s33, s19
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v76, 4, v3
	v_add_nc_u32_e32 v77, 8, v3
	v_add_nc_u32_e32 v78, 12, v3
	v_add_nc_u32_e32 v79, 16, v3
	v_add_nc_u32_e32 v80, 20, v3
	v_add_nc_u32_e32 v139, 24, v3
	v_add_nc_u32_e32 v140, 28, v3
	v_cndmask_b32_e64 v75, 0x80000000, v3, s2
	v_cndmask_b32_e64 v76, 0x80000000, v76, s2
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	v_cndmask_b32_e64 v80, 0x80000000, v80, s2
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	s_clause 0x7
	buffer_load_u16 v75, v75, s[4:7], 0 offen
	buffer_load_u16 v76, v76, s[4:7], 0 offen
	buffer_load_u16 v77, v77, s[4:7], 0 offen
	buffer_load_u16 v78, v78, s[4:7], 0 offen
	buffer_load_u16 v79, v79, s[4:7], 0 offen
	buffer_load_u16 v80, v80, s[4:7], 0 offen
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
	v_cndmask_b32_e64 v146, 0x80000000, v146, s2
	v_cndmask_b32_e64 v148, 0x80000000, v148, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v4, v4, v3
	v_mul_f32_e32 v6, v6, v3
	v_mul_f32_e32 v8, v8, v3
	v_mul_f32_e32 v10, v10, v3
	v_mul_f32_e32 v81, v81, v3
	v_mul_f32_e32 v5, v5, v3
	v_mul_f32_e32 v82, v82, v3
	v_mul_f32_e32 v83, v83, v3
	v_mul_f32_e32 v7, v7, v3
	v_mul_f32_e32 v84, v84, v3
	v_mul_f32_e32 v86, v86, v3
	v_mul_f32_e32 v88, v88, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v154, 0x80000000, v154, s2
	v_cndmask_b32_e64 v156, 0x80000000, v156, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v90, v90, v3
	v_mul_f32_e32 v92, v92, v3
	v_mul_f32_e32 v96, v96, v3
	v_mul_f32_e32 v94, v94, v3
	v_mul_f32_e32 v98, v98, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v162, 0x80000000, v162, s2
	v_cndmask_b32_e64 v164, 0x80000000, v164, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v102, v102, v3
	v_mul_f32_e32 v100, v100, v3
	v_mul_f32_e32 v104, v104, v3
	v_mul_f32_e32 v106, v106, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v172, 0x80000000, v172, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v108, v108, v3
	v_mul_f32_e32 v110, v110, v3
	v_mul_f32_e32 v112, v112, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v180, 0x80000000, v180, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v114, v114, v3
	v_mul_f32_e32 v116, v116, v3
	v_mul_f32_e32 v120, v120, v3
	v_mul_f32_e32 v124, v124, v3
	v_mul_f32_e32 v130, v130, v3
	v_mul_f32_e32 v135, v135, v3
	v_mul_f32_e32 v133, v133, v3
	v_mul_f32_e32 v137, v137, v3
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v2, 1, v1
	s_mov_b32 s0, 0x76543210
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_and_b32 s17, s17, 0xffff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v75, 16, v75
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v76, 16, v76
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v77, 16, v77
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v78, 16, v78
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v79, 16, v79
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v80, 16, v80
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v139, 16, v139
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v6, v6, v77, v73
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v140, 16, v140
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v8, v8, v79, v71
	v_fma_f32 v10, v10, v80, v70
	v_fma_f32 v4, v4, v75, v38
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v6, v73, v6, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v75, v81, v139, v69
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v8, v71, v8, s2
	v_cndmask_b32_e64 v10, v70, v10, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v5, v5, v76, v74
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v6, v6, v6
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v76, v82, v140, v68
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v4, v38, v4, s2
	v_cndmask_b32_e64 v38, v69, v75, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v8, v8, v8
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v141, 0x80000000, v141, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v75, 0, v6
	v_max_f32_e32 v6, v10, v10
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v143, 0x80000000, v143, s2
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v68, v68, v76, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v10, v38, v38
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v76, 0, v8
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v147, 0x80000000, v147, s2
	s_clause 0x7
	buffer_load_u16 v141, v141, s[4:7], 0 offen
	buffer_load_u16 v142, v142, s[4:7], 0 offen
	buffer_load_u16 v143, v143, s[4:7], 0 offen
	buffer_load_u16 v144, v144, s[4:7], 0 offen
	buffer_load_u16 v145, v145, s[4:7], 0 offen
	buffer_load_u16 v146, v146, s[4:7], 0 offen
	buffer_load_u16 v147, v147, s[4:7], 0 offen
	buffer_load_u16 v148, v148, s[4:7], 0 offen
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v7, v7, v78, v72
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v85, v85, v3
	v_mul_f32_e32 v87, v87, v3
	v_mul_f32_e32 v89, v89, v3
	v_mul_f32_e32 v91, v91, v3
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v7, v72, v7, s2
	v_cndmask_b32_e64 v5, v74, v5, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v7, v7, v7
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v4, 0, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_max_f32 v38, 0, v7 :: v_dual_max_f32 v7, v68, v68
	v_max_f32_e32 v68, 0, v6
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v149, 0x80000000, v149, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v5, 0, v5 :: v_dual_mul_f32 v118, v118, v3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v122, v122, v3 :: v_dual_mul_f32 v5, v5, v5
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v189, 16, v189
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v190, 16, v190
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v192, 16, v192
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v193, 16, v193
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v194, 16, v194
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v196, 16, v196
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v141, 16, v141
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v142, 16, v142
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v143, 16, v143
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v144, 16, v144
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v145, 16, v145
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v77, v83, v141, v67
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v146, 16, v146
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v78, v84, v142, v66
	v_fma_f32 v79, v85, v143, v65
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v147, 16, v147
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v80, v86, v144, v64
	v_fma_f32 v81, v87, v145, v63
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v67, v67, v77, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v82, v88, v146, v62
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v66, v66, v78, s2
	v_cndmask_b32_e64 v65, v65, v79, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v83, v89, v147, v61
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v64, v64, v80, s2
	v_cndmask_b32_e64 v63, v63, v81, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v6, v67, v67
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v62, v62, v82, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v8, v66, v66
	v_dual_max_f32 v66, 0, v7 :: v_dual_max_f32 v7, v65, v65
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v61, v61, v83, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v77, 0, v10 :: v_dual_max_f32 v10, v64, v64
	v_max_f32_e32 v64, 0, v6
	v_max_f32_e32 v6, v63, v63
	v_max_f32_e32 v63, 0, v7
	v_max_f32_e32 v7, v62, v62
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v150, 0x80000000, v150, s2
	v_cndmask_b32_e64 v151, 0x80000000, v151, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v65, 0, v8 :: v_dual_max_f32 v8, v61, v61
	v_max_f32_e32 v61, 0, v6
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v152, 0x80000000, v152, s2
	v_cndmask_b32_e64 v153, 0x80000000, v153, s2
	v_cndmask_b32_e64 v155, 0x80000000, v155, s2
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
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v93, v93, v3 :: v_dual_lshlrev_b32 v148, 16, v148
	v_mul_f32_e32 v97, v97, v3
	v_mul_f32_e32 v95, v95, v3
	v_mul_f32_e32 v99, v99, v3
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v67, 0, v10
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v84, v90, v148, v60
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v157, 0x80000000, v157, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v128, v128, v3
	v_mul_f32_e32 v132, v132, v3
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v64, v64, v64
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v60, v60, v84, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v6, v60, v60
	v_max_f32_e32 v60, 0, v8
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v159, 0x80000000, v159, s2
	v_cndmask_b32_e64 v161, 0x80000000, v161, s2
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v60, v60, v60 :: v_dual_lshlrev_b32 v149, 16, v149
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v150, 16, v150
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v151, 16, v151
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v152, 16, v152
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v153, 16, v153
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v154, 16, v154
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v85, v91, v149, v59
	v_fma_f32 v86, v92, v150, v58
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v155, 16, v155
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v156, 16, v156
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v90, v96, v154, v54
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v59, v59, v85, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v87, v93, v151, v57
	v_fma_f32 v88, v94, v152, v56
	v_fma_f32 v89, v95, v153, v55
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v58, v58, v86, s2
	v_cndmask_b32_e64 v54, v54, v90, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v10, v59, v59
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v91, v97, v155, v53
	v_fma_f32 v92, v98, v156, v52
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v57, v57, v87, s2
	v_cndmask_b32_e64 v56, v56, v88, s2
	v_cndmask_b32_e64 v55, v55, v89, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v59, 0, v7
	v_max_f32_e32 v7, v58, v58
	v_max_f32_e32 v62, 0, v10
	v_max_f32_e32 v10, v54, v54
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v53, v53, v91, s2
	v_cndmask_b32_e64 v52, v52, v92, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v58, 0, v6
	v_max_f32_e32 v6, v57, v57
	v_max_f32_e32 v8, v56, v56
	v_max_f32_e32 v56, 0, v7
	v_max_f32_e32 v7, v55, v55
	v_max_f32_e32 v57, 0, v10
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v158, 0x80000000, v158, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v54, 0, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v6, v53, v53 :: v_dual_max_f32 v53, 0, v7
	v_max_f32_e32 v7, v52, v52
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v160, 0x80000000, v160, s2
	v_cndmask_b32_e64 v163, 0x80000000, v163, s2
	s_clause 0x7
	buffer_load_u16 v157, v157, s[4:7], 0 offen
	buffer_load_u16 v158, v158, s[4:7], 0 offen
	buffer_load_u16 v159, v159, s[4:7], 0 offen
	buffer_load_u16 v160, v160, s[4:7], 0 offen
	buffer_load_u16 v161, v161, s[4:7], 0 offen
	buffer_load_u16 v162, v162, s[4:7], 0 offen
	buffer_load_u16 v163, v163, s[4:7], 0 offen
	buffer_load_u16 v164, v164, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v101, v101, v3
	v_mul_f32_e32 v103, v103, v3
	v_mul_f32_e32 v105, v105, v3
	v_mul_f32_e32 v107, v107, v3
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v55, 0, v8
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v165, 0x80000000, v165, s2
	v_cndmask_b32_e64 v167, 0x80000000, v167, s2
	v_cndmask_b32_e64 v169, 0x80000000, v169, s2
	v_cndmask_b32_e64 v171, 0x80000000, v171, s2
	v_cndmask_b32_e64 v173, 0x80000000, v173, s2
	v_cndmask_b32_e64 v175, 0x80000000, v175, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v134, v134, v3 :: v_dual_mul_f32 v57, v57, v57
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v58, v58, v58
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v136, v136, v3
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v56, v56, v56
	v_dual_mul_f32 v54, v54, v54 :: v_dual_mul_f32 v55, v55, v55
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v157, 16, v157
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v158, 16, v158
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v159, 16, v159
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v160, 16, v160
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v161, 16, v161
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v162, 16, v162
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v93, v99, v157, v51
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v164, 16, v164
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v95, v101, v159, v49
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v163, 16, v163
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v96, v102, v160, v48
	v_fma_f32 v94, v100, v158, v50
	v_fma_f32 v98, v104, v162, v46
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v51, v51, v93, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v100, v106, v164, v44
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v49, v49, v95, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v99, v105, v163, v45
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v48, v48, v96, s2
	v_cndmask_b32_e64 v50, v50, v94, s2
	v_cndmask_b32_e64 v46, v46, v98, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v8, v51, v51
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v97, v103, v161, v47
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v44, v44, v100, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v10, v49, v49
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v45, v45, v99, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v49, 0, v7
	v_max_f32_e32 v7, v48, v48
	v_max_f32_e32 v51, 0, v6
	v_max_f32_e32 v6, v50, v50
	v_max_f32_e32 v50, 0, v8
	v_max_f32_e32 v8, v46, v46
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v47, v47, v97, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v52, 0, v10
	v_max_f32_e32 v10, v44, v44
	v_dual_max_f32 v46, 0, v7 :: v_dual_max_f32 v7, v45, v45
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v166, 0x80000000, v166, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v45, 0, v8
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v168, 0x80000000, v168, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v48, 0, v6
	v_dual_max_f32 v6, v47, v47 :: v_dual_max_f32 v47, 0, v10
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v170, 0x80000000, v170, s2
	s_clause 0x7
	buffer_load_u16 v165, v165, s[4:7], 0 offen
	buffer_load_u16 v166, v166, s[4:7], 0 offen
	buffer_load_u16 v167, v167, s[4:7], 0 offen
	buffer_load_u16 v168, v168, s[4:7], 0 offen
	buffer_load_u16 v169, v169, s[4:7], 0 offen
	buffer_load_u16 v170, v170, s[4:7], 0 offen
	buffer_load_u16 v171, v171, s[4:7], 0 offen
	buffer_load_u16 v172, v172, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v109, v109, v3
	v_mul_f32_e32 v111, v111, v3
	v_dual_mul_f32 v113, v113, v3 :: v_dual_max_f32 v44, 0, v6
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v177, 0x80000000, v177, s2
	v_cndmask_b32_e64 v179, 0x80000000, v179, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v115, v115, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v181, 0x80000000, v181, s2
	v_cndmask_b32_e64 v183, 0x80000000, v183, s2
	v_cndmask_b32_e64 v185, 0x80000000, v185, s2
	v_cndmask_b32_e64 v187, 0x80000000, v187, s2
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v48, v48, v48
	v_mul_f32_e32 v50, v50, v50
	v_mul_f32_e32 v52, v52, v52
	v_mul_f32_e32 v46, v46, v46
	v_dual_mul_f32 v44, v44, v44 :: v_dual_mul_f32 v45, v45, v45
	v_mul_f32_e32 v51, v51, v51
	v_mul_f32_e32 v47, v47, v47
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v165, 16, v165
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v166, 16, v166
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v167, 16, v167
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v168, 16, v168
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v169, 16, v169
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v101, v107, v165, v43
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v170, 16, v170
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v102, v108, v166, v42
	v_fma_f32 v103, v109, v167, v41
	v_fma_f32 v104, v110, v168, v40
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v43, v43, v101, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v105, v111, v169, v39
	v_fma_f32 v106, v112, v170, v37
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v42, v42, v102, s2
	v_cndmask_b32_e64 v41, v41, v103, s2
	v_cndmask_b32_e64 v40, v40, v104, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v6, v43, v43
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v39, v39, v105, s2
	v_cndmask_b32_e64 v37, v37, v106, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v43, 0, v7
	v_dual_max_f32 v7, v42, v42 :: v_dual_max_f32 v8, v41, v41
	v_dual_max_f32 v41, 0, v6 :: v_dual_max_f32 v6, v40, v40
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v174, 0x80000000, v174, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v10, v39, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v39, 0, v7
	v_max_f32_e32 v7, v37, v37
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v176, 0x80000000, v176, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v37, 0, v6
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v178, 0x80000000, v178, s2
	s_clause 0x7
	buffer_load_u16 v173, v173, s[4:7], 0 offen
	buffer_load_u16 v174, v174, s[4:7], 0 offen
	buffer_load_u16 v175, v175, s[4:7], 0 offen
	buffer_load_u16 v176, v176, s[4:7], 0 offen
	buffer_load_u16 v177, v177, s[4:7], 0 offen
	buffer_load_u16 v178, v178, s[4:7], 0 offen
	buffer_load_u16 v179, v179, s[4:7], 0 offen
	buffer_load_u16 v180, v180, s[4:7], 0 offen
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v171, 16, v171
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v117, v117, v3 :: v_dual_lshlrev_b32 v172, 16, v172
	v_mul_f32_e32 v119, v119, v3
	v_mul_f32_e32 v121, v121, v3
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v107, v113, v171, v36
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v123, v123, v3
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v108, v114, v172, v35
	.loc	1 240 19 is_stmt 1              ; generate_amdgcn.py:240:19
	v_max_f32_e32 v40, 0, v8
	v_max_f32_e32 v42, 0, v10
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v36, v36, v107, s2
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v41, v41, v41
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v35, v35, v108, s2
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v40, v40, v40 :: v_dual_mul_f32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v6, v36, v36
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v42, v42, v42 :: v_dual_lshlrev_b32 v173, 16, v173
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v174, 16, v174
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v175, 16, v175
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v176, 16, v176
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v177, 16, v177
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v178, 16, v178
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v179, 16, v179
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v109, v115, v173, v34
	v_fma_f32 v110, v116, v174, v33
	v_fma_f32 v111, v117, v175, v32
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v180, 16, v180
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v112, v118, v176, v31
	v_fma_f32 v114, v120, v178, v29
	v_fma_f32 v115, v121, v179, v28
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v34, v34, v109, s2
	v_cndmask_b32_e64 v33, v33, v110, s2
	v_cndmask_b32_e64 v32, v32, v111, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v116, v122, v180, v27
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v31, v31, v112, s2
	v_cndmask_b32_e64 v29, v29, v114, s2
	v_cndmask_b32_e64 v28, v28, v115, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v10, v33, v33 :: v_dual_max_f32 v33, 0, v6
	v_max_f32_e32 v8, v35, v35
	v_max_f32_e32 v35, 0, v7
	v_dual_max_f32 v7, v34, v34 :: v_dual_max_f32 v6, v32, v32
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v27, v27, v116, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v78, 0, v10
	v_max_f32_e32 v10, v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_max_f32_e32 v36, 0, v7
	v_max_f32_e32 v7, v31, v31
	v_dual_max_f32 v79, 0, v6 :: v_dual_max_f32 v6, v29, v29
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v182, 0x80000000, v182, s2
	v_cndmask_b32_e64 v184, 0x80000000, v184, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v80, 0, v7
	v_max_f32_e32 v7, v27, v27
	v_max_f32_e32 v31, 0, v6
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v186, 0x80000000, v186, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v27, 0, v10
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
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
	v_mul_f32_e32 v125, v125, v3
	v_mul_f32_e32 v127, v127, v3
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v113, v119, v177, v30
	.loc	1 241 19 is_stmt 1              ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v33, v33, v33 :: v_dual_max_f32 v34, 0, v8
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v28, 0, v7
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v129, v129, v3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v30, v30, v113, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v131, v131, v3
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v29.h, v3.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v32, v76, v76
	v_mul_f32_e32 v34, v34, v34
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v8, v30, v30 :: v_dual_mul_f32 v31, v31, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v27, v27, v27 :: v_dual_max_f32 v30, 0, v8
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v30, v30, v30 :: v_dual_lshlrev_b32 v181, 16, v181
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v182, 16, v182
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v184, 16, v184
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v185, 16, v185
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v117, v123, v181, v26
	v_fma_f32 v118, v124, v182, v25
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v186, 16, v186
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v188, 16, v188
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v121, v127, v185, v22
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v26, v26, v117, s2
	v_cndmask_b32_e64 v25, v25, v118, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v122, v128, v186, v21
	v_fma_f32 v124, v130, v188, v19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v22, v22, v121, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v6, v26, v26 :: v_dual_lshlrev_b32 v183, 16, v183
	v_max_f32_e32 v8, v25, v25
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v128, v134, v192, v15
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v69, v19, v124, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v195, 16, v195
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v25, 0, v6
	v_max_f32_e32 v6, v22, v22
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v119, v125, v183, v24
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v15, v128, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v26, 0, v8
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v125, v131, v189, v18
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v19, 0, v6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v24, v24, v119, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v6, v69, v69
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v131, v137, v195, v12
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v21, v21, v122, s2
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v25, v25, v25
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v7, v24, v24 :: v_dual_mul_f32 v24, v38, v38
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v38.h, v3.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v126, v126, v3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v73, v12, v131, s2
	v_cndmask_b32_e64 v18, v18, v125, s2
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v26, v26, v26 :: v_dual_mul_f32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v120, v126, v184, v23
	v_fma_f32 v126, v132, v190, v17
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v23, v23, v120, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v70, v17, v126, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v10, v23, v23
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v187, 16, v187
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v23, 0, v7
	v_max_f32_e32 v7, v21, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v21, v75, v75 :: v_dual_max_f32 v22, 0, v10
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v123, v129, v187, v20
	v_fma_f32 v129, v135, v193, v14
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v10, v18, v18
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v18, v4, v4
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v4, s19, v9
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v20, v123, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v191, 16, v191
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v14, v129, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v9.l, v18.h
	v_mov_b16_e32 v9.h, v3.l
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v8, v20, v20
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v127, v133, v191, v16
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v20, 0, v7 :: v_dual_max_f32 v7, v70, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v9, 1, v9
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v17, 0, v8 :: v_dual_max_f32 v8, v15, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v71, v16, v127, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v16, 0, v6 :: v_dual_max_f32 v15, 0, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v7, v14, v14 :: v_dual_max_f32 v12, 0, v8
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v138, v138, v3 :: v_dual_mul_f32 v53, v53, v53
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v6, v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v8, 0, v7
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v9, v18, v9, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v132, v138, v196, v11
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v63, v63, v63
	v_mul_f32_e32 v17, v17, v17
	v_dual_mul_f32 v35, v35, v35 :: v_dual_mul_f32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v74, v11, v132, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v11, 0, v6 :: v_dual_max_f32 v6, v73, v73
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v49, v49, v49
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_add3_u32 v4, s33, s18, v4
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v14, v74, v74 :: v_dual_mul_f32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v7, 0, v6
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_mov_b32 s18, s6
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_add_lshl_u32 v4, v4, v2, 1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 240 19 is_stmt 1              ; generate_amdgcn.py:240:19
	v_max_f32_e32 v6, 0, v14
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v14.l, v5.h
	v_mov_b16_e32 v14.h, v3.l
	s_mov_b32 s19, s7
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v15, v15, v15
	v_mul_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v7, v7, v7 :: v_dual_and_b32 v14, 1, v14
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v5, v5, v14, 0x7fff
	v_mov_b16_e32 v14.l, v24.h
	v_mov_b16_e32 v14.h, v3.l
	v_mov_b16_e32 v5.l, v9.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v9, 1, v14
	v_add3_u32 v9, v24, v9, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v24, v77, v77
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v29.l, v21.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v38.l, v24.h
	v_and_b32_e32 v18, 1, v29
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v29, v68, v68
	v_mul_f32_e32 v23, v23, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v14, v21, v18, 0x7fff
	v_mov_b16_e32 v18.l, v29.h
	v_mov_b16_e32 v21.l, v32.h
	v_mov_b16_e32 v21.h, v3.l
	v_mov_b16_e32 v18.h, v3.l
	v_mov_b16_e32 v9.l, v14.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v14, 1, v21
	v_and_b32_e32 v18, 1, v18
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v21, v66, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v32, v32, v14, 0x7fff
	v_add3_u32 v14, v29, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e32 v18.l, v21.h
	v_mov_b16_e32 v18.h, v3.l
	v_mov_b16_e32 v32.l, v64.h
	v_mov_b16_e32 v14.l, v32.h
	v_mov_b16_e32 v32.h, v3.l
	v_and_b32_e32 v29, 1, v38
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v24, v24, v29, 0x7fff
	v_add3_u32 v18, v21, v18, 0x7fff
	v_and_b32_e32 v21, 1, v32
	v_mov_b16_e32 v32.l, v63.h
	v_mov_b16_e32 v29.h, v3.l
	v_mov_b16_e32 v18.l, v24.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v64, v64, v21, 0x7fff
	v_and_b32_e32 v32, 1, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v32, v63, v32, 0x7fff
	v_mov_b16_e32 v63.h, v3.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v38, v65, v65
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v29.l, v38.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v24, 1, v29
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v29, v67, v67
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v21, v38, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v24.l, v29.h
	v_mov_b16_e32 v24.h, v3.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v38, v59, v59 :: v_dual_mul_f32 v59, v61, v61
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v61.h, v3.l
	v_mov_b16_e32 v21.l, v64.h
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v61.l, v38.h
	v_mov_b16_e32 v63.l, v59.h
	v_add3_u32 v24, v29, v24, 0x7fff
	v_mov_b16_e32 v24.l, v32.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v29, 1, v63
	v_and_b32_e32 v32, 1, v61
	v_mov_b16_e32 v61.l, v60.h
	v_add3_u32 v59, v59, v29, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v29, v38, v32, 0x7fff
	v_mov_b16_e32 v32.l, v58.h
	v_mov_b16_e32 v32.h, v3.l
	v_and_b32_e32 v38, 1, v61
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v61, v62, v62
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v130, v136, v194, v13
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v29.l, v59.h
	v_and_b32_e32 v32, 1, v32
	v_add3_u32 v38, v60, v38, 0x7fff
	v_mov_b16_e32 v59.l, v56.h
	v_mov_b16_e32 v60.l, v61.h
	v_mov_b16_e32 v60.h, v3.l
	v_mov_b16_e32 v59.h, v3.l
	v_add3_u32 v32, v58, v32, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v72, v13, v130, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v13, 0, v10
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v32.l, v38.h
	v_and_b32_e32 v38, 1, v60
	v_and_b32_e32 v58, 1, v59
	v_mov_b16_e32 v59.l, v54.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v13, v13, v13 :: v_dual_max_f32 v10, v72, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v38, v61, v38, 0x7fff
	v_add3_u32 v56, v56, v58, 0x7fff
	v_mov_b16_e32 v58.l, v55.h
	v_mov_b16_e32 v58.h, v3.l
	v_and_b32_e32 v59, 1, v59
	v_mov_b16_e32 v56.l, v38.h
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v10, 0, v10 :: v_dual_mul_f32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v38, 1, v58
	v_add3_u32 v54, v54, v59, 0x7fff
	v_mov_b16_e32 v58.l, v57.h
	v_mov_b16_e32 v59.l, v53.h
	v_mov_b16_e32 v59.h, v3.l
	v_add3_u32 v38, v55, v38, 0x7fff
	v_mov_b16_e32 v38.l, v54.h
	v_and_b32_e32 v55, 1, v58
	v_mov_b16_e32 v58.l, v51.h
	v_and_b32_e32 v54, 1, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v53, v53, v54, 0x7fff
	v_add3_u32 v54, v57, v55, 0x7fff
	v_mov_b16_e32 v55.l, v49.h
	v_mov_b16_e32 v55.h, v3.l
	v_and_b32_e32 v57, 1, v58
	v_mov_b16_e32 v54.l, v53.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v53, 1, v55
	v_add3_u32 v51, v51, v57, 0x7fff
	v_mov_b16_e32 v55.l, v48.h
	v_mov_b16_e32 v57.l, v50.h
	v_mov_b16_e32 v57.h, v3.l
	v_add3_u32 v49, v49, v53, 0x7fff
	v_mov_b16_e32 v49.l, v51.h
	v_and_b32_e32 v53, 1, v55
	v_mov_b16_e32 v55.l, v52.h
	v_and_b32_e32 v51, 1, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v48, v48, v53, 0x7fff
	v_and_b32_e32 v53, 1, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v50, v50, v51, 0x7fff
	v_mov_b16_e32 v51.l, v46.h
	v_mov_b16_e32 v51.h, v3.l
	v_mov_b16_e32 v48.l, v50.h
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v50, 1, v51
	v_add3_u32 v51, v52, v53, 0x7fff
	v_mov_b16_e32 v53.l, v44.h
	v_mov_b16_e32 v53.h, v3.l
	v_mov_b16_e32 v52.l, v45.h
	v_mov_b16_e32 v52.h, v3.l
	v_add3_u32 v46, v46, v50, 0x7fff
	v_mov_b16_e32 v46.l, v51.h
	v_and_b32_e32 v50, 1, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v51, 1, v52
	v_mov_b16_e32 v52.l, v43.h
	v_add3_u32 v44, v44, v50, 0x7fff
	v_mov_b16_e32 v50.l, v47.h
	v_mov_b16_e32 v50.h, v3.l
	v_add3_u32 v45, v45, v51, 0x7fff
	v_and_b32_e32 v51, 1, v52
	v_mov_b16_e32 v45.l, v44.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v10, v10, v10
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v44, 1, v50
	v_mov_b16_e32 v50.l, v39.h
	v_add3_u32 v43, v43, v51, 0x7fff
	v_mov_b16_e32 v51.l, v41.h
	v_mov_b16_e32 v51.h, v3.l
	v_add3_u32 v44, v47, v44, 0x7fff
	v_and_b32_e32 v47, 1, v50
	v_mov_b16_e32 v44.l, v43.h
	v_mov_b16_e32 v50.l, v40.h
	v_and_b32_e32 v43, 1, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v39, v39, v47, 0x7fff
	v_and_b32_e32 v47, 1, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v41, v41, v43, 0x7fff
	v_mov_b16_e32 v43.l, v37.h
	v_mov_b16_e32 v43.h, v3.l
	v_add3_u32 v40, v40, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v39.l, v41.h
	v_mov_b16_e32 v47.l, v42.h
	v_and_b32_e32 v41, 1, v43
	v_mov_b16_e32 v43.l, v35.h
	v_mov_b16_e32 v47.h, v3.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v37, v37, v41, 0x7fff
	v_mov_b16_e32 v37.l, v40.h
	v_and_b32_e32 v40, 1, v47
	v_and_b32_e32 v41, 1, v43
	v_mov_b16_e32 v43.l, v33.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v42, v40, 0x7fff
	v_add3_u32 v35, v35, v41, 0x7fff
	v_mov_b16_e32 v41.l, v34.h
	v_mov_b16_e32 v41.h, v3.l
	v_and_b32_e32 v42, 1, v43
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v43, v78, v78 :: v_dual_mul_f32 v36, v36, v36
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v35.l, v40.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v40, 1, v41
	v_add3_u32 v33, v33, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v41.l, v43.h
	v_mov_b16_e32 v42.l, v36.h
	v_mov_b16_e32 v42.h, v3.l
	v_add3_u32 v34, v34, v40, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v40, v79, v79
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v34.l, v33.h
	v_and_b32_e32 v41, 1, v41
	v_and_b32_e32 v33, 1, v42
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v42, v80, v80
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v47.l, v40.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v28, v28, v28
	v_mul_f32_e32 v16, v16, v16
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v33, v36, v33, 0x7fff
	v_add3_u32 v36, v43, v41, 0x7fff
	v_mov_b16_e32 v41.l, v42.h
	v_mov_b16_e32 v41.h, v3.l
	v_and_b32_e32 v43, 1, v47
	v_mov_b16_e32 v36.l, v33.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v12, v12, v12 :: v_dual_and_b32 v33, 1, v41
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v40, v40, v43, 0x7fff
	v_mov_b16_e32 v43.l, v30.h
	v_mov_b16_e32 v43.h, v3.l
	v_mov_b16_e32 v41.l, v31.h
	v_add3_u32 v33, v42, v33, 0x7fff
	v_mov_b16_e32 v33.l, v40.h
	v_mov_b16_e32 v42.l, v27.h
	v_and_b32_e32 v40, 1, v43
	v_and_b32_e32 v41, 1, v41
	v_mov_b16_e32 v42.h, v3.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v30, v30, v40, 0x7fff
	v_mov_b16_e32 v40.l, v28.h
	v_mov_b16_e32 v40.h, v3.l
	v_add3_u32 v31, v31, v41, 0x7fff
	v_and_b32_e32 v41, 1, v42
	v_mov_b16_e32 v31.l, v30.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v6, v6, v6
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v30, 1, v40
	v_mov_b16_e32 v40.l, v26.h
	v_add3_u32 v27, v27, v41, 0x7fff
	v_mov_b16_e32 v41.l, v25.h
	v_mov_b16_e32 v41.h, v3.l
	v_add3_u32 v28, v28, v30, 0x7fff
	v_and_b32_e32 v30, 1, v40
	v_mov_b16_e32 v28.l, v27.h
	v_mov_b16_e32 v40.l, v23.h
	v_and_b32_e32 v27, 1, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v26, v26, v30, 0x7fff
	v_and_b32_e32 v30, 1, v40
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
	v_cndmask_b32_e32 v30, v34, v37, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
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
	v_mov_b16_e32 v25.l, v12.h
	v_cndmask_b32_e32 v27, v35, v39, vcc_lo
	v_add3_u32 v15, v15, v19, 0x7fff
	v_add3_u32 v11, v11, v17, 0x7fff
	v_add3_u32 v13, v13, v23, 0x7fff
	v_and_b32_e32 v19, 1, v25
	v_mov_b16_e32 v13.l, v10.h
	v_mov_b16_e32 v17.h, v3.l
	v_mov_b16_e32 v23.h, v3.l
	v_mov_b16_e32 v15.l, v13.h
	v_add3_u32 v12, v12, v19, 0x7fff
	v_mov_b16_e32 v19.l, v7.h
	v_mov_b16_e32 v19.h, v3.l
	v_mov_b16_e32 v13.h, v3.l
	v_mov_b16_e32 v23.l, v6.h
	v_mov_b16_e32 v12.l, v11.h
	v_cndmask_b32_e32 v25, v46, v44, vcc_lo
	v_and_b32_e32 v3, 1, v19
	v_and_b32_e32 v13, 1, v13
	v_and_b32_e32 v11, 1, v23
	v_cndmask_b32_e32 v19, v38, v49, vcc_lo
	v_cndmask_b32_e32 v23, v48, v45, vcc_lo
	v_add3_u32 v3, v7, v3, 0x7fff
	v_add3_u32 v7, v10, v13, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v8, v8, v8
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v1, v6, v11, 0x7fff
	v_cndmask_b32_e32 v6, v9, v18, vcc_lo
	v_mov_b16_e32 v1.l, v3.h
	v_cndmask_b32_e32 v3, v14, v5, vcc_lo
	v_mov_b16_e32 v17.l, v8.h
	v_cndmask_b32_e32 v5, v5, v14, vcc_lo
	v_cndmask_b32_e32 v13, v32, v24, vcc_lo
	v_dual_cndmask_b32 v11, v24, v32 :: v_dual_cndmask_b32 v32, v37, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v14, v54, v56 :: v_dual_and_b32 v17, 1, v17
	v_add3_u32 v8, v8, v17, 0x7fff
	v_cndmask_b32_e32 v17, v56, v54, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v7.l, v8.h
	v_cndmask_b32_e32 v8, v18, v9, vcc_lo
	v_cndmask_b32_e32 v10, v29, v21, vcc_lo
	v_cndmask_b32_e32 v18, v49, v38, vcc_lo
	v_dual_cndmask_b32 v38, v1, v12 :: v_dual_cndmask_b32 v37, v7, v15
	v_cndmask_b32_e32 v7, v15, v7, vcc_lo
	v_dual_mov_b32 v15, 0x5410 :: v_dual_cndmask_b32 v24, v44, v46
	v_cndmask_b32_e32 v1, v12, v1, vcc_lo
	v_permlanex16_b32 v12, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v9, v21, v29, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v5, 0x1054, v15, vcc_lo
	v_cndmask_b32_e32 v29, v39, v35, vcc_lo
	v_cndmask_b32_e32 v35, v28, v33, vcc_lo
	v_cndmask_b32_e32 v21, v45, v48, vcc_lo
	v_permlanex16_b32 v39, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v5, v5, 8, v5
	v_dual_cndmask_b32 v34, v31, v36 :: v_dual_cndmask_b32 v31, v36, v31
	v_cndmask_b32_e32 v36, v16, v22, vcc_lo
	v_cndmask_b32_e32 v16, v22, v16, vcc_lo
	v_mov_b32_e32 v22, 0x7632
	v_and_b32_e32 v5, 0x540054, v5
	v_permlanex16_b32 v43, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v15, 0x3276, v22, vcc_lo
	v_permlanex16_b32 v22, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v5, v5, 4, v5
	v_permlanex16_b32 v44, v1, s0, 0xfedcba98 op_sel:[1,0]
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
	v_permlanex16_b32 v29, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v6, v6, 4, v6
	v_dual_cndmask_b32 v28, v33, v28 :: v_dual_cndmask_b32 v33, v20, v26
	v_cndmask_b32_e32 v20, v26, v20, vcc_lo
	v_perm_b32 v7, v22, v8, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v41, 0x7060706, v6
	v_permlanex16_b32 v28, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v11, v39, v13, v40
	v_permlanex16_b32 v26, v9, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v6, v12, v3, v41
	v_and_b32_e32 v3, 0x1e0, v0
	v_perm_b32 v8, v22, v8, v41
	v_perm_b32 v12, v39, v13, v41
	v_perm_b32 v13, v15, v14, v40
	v_perm_b32 v14, v15, v14, v41
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_add_nc_u32_e32 v3, 32, v4
	v_perm_b32 v15, v17, v18, v40
	v_perm_b32 v16, v17, v18, v41
	v_perm_b32 v17, v19, v21, v40
	v_perm_b32 v18, v19, v21, v41
	v_perm_b32 v21, v25, v27, v40
	v_perm_b32 v22, v25, v27, v41
	v_perm_b32 v27, v28, v35, v40
	v_perm_b32 v28, v28, v35, v41
	v_cndmask_b32_e32 v35, 0x80000000, v3, vcc_lo
	v_permlanex16_b32 v32, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v19, v23, v24, v40
	v_perm_b32 v20, v23, v24, v41
	v_perm_b32 v23, v29, v30, v40
	v_perm_b32 v24, v29, v30, v41
	v_perm_b32 v29, v32, v33, v40
	v_perm_b32 v30, v32, v33, v41
	v_add_nc_u32_e32 v33, 64, v4
	v_perm_b32 v9, v26, v10, v40
	v_perm_b32 v10, v26, v10, v41
	v_perm_b32 v25, v31, v34, v40
	v_perm_b32 v26, v31, v34, v41
	v_dual_cndmask_b32 v34, 0x80000000, v4 :: v_dual_cndmask_b32 v33, 0x80000000, v33
	s_clause 0x2
	buffer_store_b128 v[5:8], v34, s[16:19], 0 offen
	buffer_store_b128 v[9:12], v35, s[16:19], 0 offen
	buffer_store_b128 v[13:16], v33, s[16:19], 0 offen
	v_add_nc_u32_e32 v5, 0x60, v4
	v_add_nc_u32_e32 v6, 0x80, v4
	v_add_nc_u32_e32 v7, 0xa0, v4
	v_add_nc_u32_e32 v8, 0xc0, v4
	v_add_nc_u32_e32 v4, 0xe0, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_perm_b32 v31, v42, v36, v40
	v_perm_b32 v32, v42, v36, v41
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_perm_b32 v0, v43, v37, v40
	v_perm_b32 v1, v43, v37, v41
	v_perm_b32 v2, v44, v38, v40
	v_perm_b32 v3, v44, v38, v41
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 203
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15740
; TotalNumSgprs: 54
; NumVgprs: 203
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 54
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
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
