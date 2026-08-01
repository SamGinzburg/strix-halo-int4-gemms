	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
	v_lshlrev_b32_e32 v10, 1, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v4, 3, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v3, 5, v0
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_lshrrev_b32_e32 v13, 1, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v5, 64, v4
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v14, 56, v4
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_and_b32_e32 v13, 56, v13
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
	s_abs_i32 s18, s2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[10:11]
	s_sub_i32 s10, 0, s17
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_and_b32_e32 v1, 62, v10
	s_mov_b32 s11, 0x31027000
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s7, s7, 0x4f7ffffe
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s27, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s7, s10
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s7, s7, s5
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s26, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_hi_u32 s5, s18, s7
	s_xor_b32 s7, s2, s6
	s_mul_i32 s20, s5, s17
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s18, s18, s20
	s_add_i32 s20, s5, 1
	s_sub_i32 s21, s18, s17
	s_cmp_ge_u32 s18, s17
	s_cselect_b32 s5, s20, s5
	s_cselect_b32 s18, s21, s18
	s_add_i32 s20, s5, 1
	s_cmp_ge_u32 s18, s17
	s_cselect_b32 s5, s20, s5
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s30, s3, 6
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s34, s5, s7
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s17, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s20, s4, 0x7f
.Ltmp13:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s5, s34, s7
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v8, s30, v1
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s6, s5, s6
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s31, s4, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s6
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s17, s20, s3
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s31, v8
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 64, v8
	.loc	1 120 13 is_stmt 1              ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s16
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s18, s5, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s6, s17, 7
.Ltmp21:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s33, s2, 4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s20, 0x7f
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_mul_lo_u32 v12, s31, v5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s21, s3, vcc_lo
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	s_mul_i32 s16, s18, s31
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s21
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshlrev_b32_e32 v11, 3, v0
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	s_mul_i32 s17, s33, s31
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	s_add_i32 s16, s16, s30
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_and_b32 s25, s25, 0xffff
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_and_b32_e32 v2, 56, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_mad_u64_u32 v[6:7], null, s31, v3, v[1:2]
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v9, s30, v2
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_mul_lo_u32 v7, s31, v4
	v_add3_u32 v8, v12, v2, s16
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s5, s31, v9
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 64, v9
	.loc	1 216 34 is_stmt 1              ; generate_amdgcn.py:216:34
	v_add3_u32 v6, s30, s17, v6
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add3_u32 v7, v7, v2, s16
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s5, s4, s5
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xor_b32_e32 v11, v11, v13
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u16 v12, v6, s[8:11], 0 offen
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_clause 0x1
	buffer_load_b64 v[6:7], v7, s[24:27], 0 offen
	buffer_load_b64 v[8:9], v8, s[24:27], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xor_b32_e32 v10, v10, v14
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v80, 0, v11
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s20, 0xff
	s_mov_b32 s5, -1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v79, 0, v10
	s_waitcnt vmcnt(2)
	ds_store_b16 v79, v12 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v80, v[6:7], v[8:9] offset1:8
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
.LBB0_3:                                ; %Flow210
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[16:17], s[0:1], 0x20
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v13, 15, v0
	v_bfe_u32 v77, v0, 4, 1
	v_dual_mov_b32 v15, 0 :: v_dual_lshlrev_b32 v78, 2, v0
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
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
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
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v36, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s1, s6, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v9, s33, v13
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_lshl_b32 s26, s34, 7
	s_mov_b32 s40, 0
	v_or_b32_e32 v4, s26, v4
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v9, s6, v9
	s_lshl_b32 s35, s7, 7
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	v_and_b32_e32 v6, 56, v78
	v_or_b32_e32 v5, s26, v5
	v_subrev_nc_u32_e32 v4, s35, v4
	v_lshlrev_b32_e32 v83, 1, v9
	v_sub_nc_u32_e32 v81, s31, v1
	v_lshl_or_b32 v6, v13, 6, v6
	v_subrev_nc_u32_e32 v5, s35, v5
	v_mad_u64_u32 v[9:10], null, s31, v4, v[2:3]
	v_add_nc_u32_e32 v3, s33, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v7, 8, v6
	v_xor_b32_e32 v8, 16, v6
	v_xor_b32_e32 v14, 24, v6
	v_xor_b32_e32 v15, 32, v6
	v_xor_b32_e32 v16, 40, v6
	v_xor_b32_e32 v17, 48, v6
	v_xor_b32_e32 v18, 56, v6
	v_mad_u64_u32 v[10:11], null, s31, v5, v[2:3]
	v_mad_u64_u32 v[11:12], null, s31, v3, v[1:2]
	v_sub_nc_u32_e32 v82, s31, v2
	v_add_nc_u32_e32 v84, 0, v6
	v_add_nc_u32_e32 v85, 0, v7
	v_add_nc_u32_e32 v86, 0, v8
	v_mov_b32_e32 v1, s40
	v_dual_mov_b32 v8, s47 :: v_dual_add_nc_u32 v87, 0, v14
	v_dual_mov_b32 v7, s46 :: v_dual_add_nc_u32 v88, 0, v15
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v89, 0, v16
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v90, 0, v17
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v91, 0, v18
	v_dual_mov_b32 v2, s41 :: v_dual_mov_b32 v3, s42
	v_dual_mov_b32 v4, s43 :: v_dual_mov_b32 v5, s44
	v_dual_mov_b32 v6, s45 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_mov_b32_e32 v12, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_lshl_b32 s0, s34, 8
	s_lshl_b32 s27, s7, 8
	s_mov_b64 s[20:21], s[12:13]
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	s_max_i32 s5, s1, 1
	s_sub_i32 s7, s0, s27
	s_lshl_b32 s34, s19, 1
	s_add_i32 s35, s30, 64
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
	buffer_load_u16 v92, v83, s[36:39], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s35, v81
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v93, s35, v11
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s0, s35, v82
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s5, s5, -1
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v92, 16, v92
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add_nc_u32_e32 v95, s35, v9
	.loc	1 218 26 is_stmt 0              ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v94, s35, v10
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	v_cndmask_b32_e32 v93, 0x80000000, v93, vcc_lo
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, s0, s4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshlrev_b32_e32 v96, 1, v77
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_dual_cndmask_b32 v208, 0x80000000, v95 :: v_dual_cndmask_b32 v209, 0x80000000, v94
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u16 v93, v93, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v207, s7, v96
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_barrier
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v210, v207, s[28:31], 0 offen
	buffer_load_u16 v211, v207, s[28:31], 0 offen offset:4
	buffer_load_u16 v212, v207, s[28:31], 0 offen offset:8
	buffer_load_u16 v213, v207, s[28:31], 0 offen offset:12
	buffer_load_u16 v214, v207, s[28:31], 0 offen offset:16
	buffer_load_u16 v215, v207, s[28:31], 0 offen offset:20
	buffer_load_u16 v216, v207, s[28:31], 0 offen offset:24
	buffer_load_u16 v94, v207, s[28:31], 0 offen offset:28
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[109:112], v84 offset1:2
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[199:200], v84 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[125:128], v84 offset0:4 offset1:6
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[201:202], v85 offset:8192
	ds_load_b64 v[203:204], v86 offset:8192
	ds_load_b64 v[205:206], v87 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[135:138], v85 offset1:2
	ds_load_2addr_stride64_b64 v[141:144], v84 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[159:162], v86 offset1:2
	ds_load_2addr_stride64_b64 v[163:166], v87 offset1:2
	ds_load_2addr_stride64_b64 v[145:148], v85 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[167:170], v86 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[171:174], v87 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[149:152], v85 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[175:178], v86 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[179:182], v84 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[183:186], v85 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[187:190], v86 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[191:194], v87 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[195:198], v87 offset0:12 offset1:14
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s35, s35, 64
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(18)
	v_wmma_i32_16x16x16_iu4 v[95:102], v[109:110], v[199:200], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[103:110], v[111:112], v[199:200], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(17)
	v_wmma_i32_16x16x16_iu4 v[111:118], v[125:126], v[199:200], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[119:126], v[127:128], v[199:200], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_wmma_i32_16x16x16_iu4 v[127:134], v[141:142], v[199:200], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[95:102], v[135:136], v[201:202], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[103:110], v[137:138], v[201:202], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[143:144], v[199:200], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[111:118], v[145:146], v[201:202], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[119:126], v[147:148], v[201:202], v[119:126] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[127:134], v[149:150], v[201:202], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[151:152], v[201:202], v[135:142] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[143:150], v[179:180], v[199:200], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[151:158], v[181:182], v[199:200], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[95:102], v[159:160], v[203:204], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[103:110], v[161:162], v[203:204], v[103:110] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[159:162], v88 offset0:4 offset1:6
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[111:118], v[167:168], v[203:204], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[119:126], v[169:170], v[203:204], v[119:126] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[167:170], v88 offset0:8 offset1:10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[127:134], v[175:176], v[203:204], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[177:178], v[203:204], v[135:142] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[175:178], v88 offset0:12 offset1:14
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[199:200], v88 offset:8192
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[143:150], v[183:184], v[201:202], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[151:158], v[185:186], v[201:202], v[151:158] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[179:182], v88 offset1:2
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[95:102], v[163:164], v[205:206], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[103:110], v[165:166], v[205:206], v[103:110] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[143:150], v[187:188], v[203:204], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[151:158], v[189:190], v[203:204], v[151:158] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[163:166], v89 offset0:4 offset1:6
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[201:202], v89 offset:8192
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[111:118], v[171:172], v[205:206], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[119:126], v[173:174], v[205:206], v[119:126] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[171:174], v89 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[183:186], v89 offset1:2
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu4 v[127:134], v[191:192], v[205:206], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[193:194], v[205:206], v[135:142] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[143:150], v[195:196], v[205:206], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[151:158], v[197:198], v[205:206], v[151:158] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[191:192], v90 offset:8192
	ds_load_b64 v[193:194], v91 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[187:190], v89 offset0:12 offset1:14
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s7, s7, s34
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[111:118], v[159:160], v[199:200], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[119:126], v[161:162], v[199:200], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[127:134], v[167:168], v[199:200], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[169:170], v[199:200], v[135:142] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[159:162], v90 offset1:2
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[143:150], v[175:176], v[199:200], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[151:158], v[177:178], v[199:200], v[151:158] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[167:170], v90 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[175:178], v90 offset0:8 offset1:10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu4 v[95:102], v[179:180], v[199:200], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[103:110], v[181:182], v[199:200], v[103:110] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[127:134], v[171:172], v[201:202], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[173:174], v[201:202], v[135:142] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[171:174], v91 offset1:2
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[95:102], v[183:184], v[201:202], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[103:110], v[185:186], v[201:202], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[111:118], v[163:164], v[201:202], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[119:126], v[165:166], v[201:202], v[119:126] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[163:166], v90 offset0:12 offset1:14
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[143:150], v[187:188], v[201:202], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[151:158], v[189:190], v[201:202], v[151:158] neg_lo:[1,1,0]
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s5, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[95:102], v[159:160], v[191:192], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[103:110], v[161:162], v[191:192], v[103:110] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[159:162], v91 offset0:4 offset1:6
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[111:118], v[167:168], v[191:192], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[119:126], v[169:170], v[191:192], v[119:126] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[167:170], v91 offset0:8 offset1:10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[127:134], v[175:176], v[191:192], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[177:178], v[191:192], v[135:142] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[175:178], v91 offset0:12 offset1:14
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[95:102], v[171:172], v[193:194], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[103:110], v[173:174], v[193:194], v[103:110] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[143:150], v[163:164], v[191:192], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[151:158], v[165:166], v[191:192], v[151:158] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_mul_f32_e32 v95, v92, v95
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[111:118], v[159:160], v[193:194], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[119:126], v[161:162], v[193:194], v[119:126] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v100, v100
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[127:134], v[167:168], v[193:194], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[169:170], v[193:194], v[135:142] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v101, v101
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[143:150], v[175:176], v[193:194], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[151:158], v[177:178], v[193:194], v[151:158] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
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
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v83, 2, v83
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v193, 16, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v36, v95, v193 :: v_dual_mul_f32 v95, v92, v96
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v96, 16, v211
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v94, 16, v94
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v76, v95, v96 :: v_dual_mul_f32 v95, v92, v97
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v96, 16, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v75, v95, v96 :: v_dual_lshlrev_b32 v96, 16, v213
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v95, v92, v98
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v74, v95, v96 :: v_dual_mul_f32 v95, v92, v99
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v96, 16, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v73, v95, v96
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v95, v92, v100 :: v_dual_lshlrev_b32 v96, 16, v215
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v72, v95, v96 :: v_dual_mul_f32 v95, v92, v101
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v101, v92, v102 :: v_dual_lshlrev_b32 v96, 16, v216
	v_mul_f32_e32 v102, v92, v103
	v_mul_f32_e32 v103, v92, v104
	v_mul_f32_e32 v104, v92, v105
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x1f
	buffer_load_u16 v195, v207, s[28:31], 0 offen offset:32
	buffer_load_u16 v196, v207, s[28:31], 0 offen offset:36
	buffer_load_u16 v197, v207, s[28:31], 0 offen offset:40
	buffer_load_u16 v179, v207, s[28:31], 0 offen offset:44
	buffer_load_u16 v180, v207, s[28:31], 0 offen offset:48
	buffer_load_u16 v181, v207, s[28:31], 0 offen offset:52
	buffer_load_u16 v182, v207, s[28:31], 0 offen offset:56
	buffer_load_u16 v198, v207, s[28:31], 0 offen offset:60
	buffer_load_u16 v203, v207, s[28:31], 0 offen offset:64
	buffer_load_u16 v204, v207, s[28:31], 0 offen offset:68
	buffer_load_u16 v205, v207, s[28:31], 0 offen offset:72
	buffer_load_u16 v199, v207, s[28:31], 0 offen offset:76
	buffer_load_u16 v200, v207, s[28:31], 0 offen offset:80
	buffer_load_u16 v183, v207, s[28:31], 0 offen offset:84
	buffer_load_u16 v184, v207, s[28:31], 0 offen offset:88
	buffer_load_u16 v185, v207, s[28:31], 0 offen offset:92
	buffer_load_u16 v186, v207, s[28:31], 0 offen offset:96
	buffer_load_u16 v187, v207, s[28:31], 0 offen offset:100
	buffer_load_u16 v188, v207, s[28:31], 0 offen offset:104
	buffer_load_u16 v163, v207, s[28:31], 0 offen offset:108
	buffer_load_u16 v164, v207, s[28:31], 0 offen offset:112
	buffer_load_u16 v165, v207, s[28:31], 0 offen offset:116
	buffer_load_u16 v166, v207, s[28:31], 0 offen offset:120
	buffer_load_u16 v189, v207, s[28:31], 0 offen offset:124
	buffer_load_u16 v190, v207, s[28:31], 0 offen offset:128
	buffer_load_u16 v171, v207, s[28:31], 0 offen offset:132
	buffer_load_u16 v172, v207, s[28:31], 0 offen offset:136
	buffer_load_u16 v173, v207, s[28:31], 0 offen offset:140
	buffer_load_u16 v174, v207, s[28:31], 0 offen offset:144
	buffer_load_u16 v159, v207, s[28:31], 0 offen offset:148
	buffer_load_u16 v160, v207, s[28:31], 0 offen offset:152
	buffer_load_u16 v161, v207, s[28:31], 0 offen offset:156
	s_clause 0x17
	buffer_load_u16 v162, v207, s[28:31], 0 offen offset:160
	buffer_load_u16 v167, v207, s[28:31], 0 offen offset:164
	buffer_load_u16 v168, v207, s[28:31], 0 offen offset:168
	buffer_load_u16 v169, v207, s[28:31], 0 offen offset:172
	buffer_load_u16 v170, v207, s[28:31], 0 offen offset:176
	buffer_load_u16 v175, v207, s[28:31], 0 offen offset:180
	buffer_load_u16 v176, v207, s[28:31], 0 offen offset:184
	buffer_load_u16 v177, v207, s[28:31], 0 offen offset:188
	buffer_load_u16 v178, v207, s[28:31], 0 offen offset:192
	buffer_load_u16 v191, v207, s[28:31], 0 offen offset:196
	buffer_load_u16 v192, v207, s[28:31], 0 offen offset:200
	buffer_load_u16 v193, v207, s[28:31], 0 offen offset:204
	buffer_load_u16 v194, v207, s[28:31], 0 offen offset:208
	buffer_load_u16 v201, v207, s[28:31], 0 offen offset:212
	buffer_load_u16 v202, v207, s[28:31], 0 offen offset:216
	buffer_load_u16 v206, v207, s[28:31], 0 offen offset:220
	buffer_load_u16 v210, v207, s[28:31], 0 offen offset:224
	buffer_load_u16 v211, v207, s[28:31], 0 offen offset:228
	buffer_load_u16 v212, v207, s[28:31], 0 offen offset:232
	buffer_load_u16 v99, v207, s[28:31], 0 offen offset:236
	buffer_load_u16 v213, v207, s[28:31], 0 offen offset:240
	buffer_load_u16 v100, v207, s[28:31], 0 offen offset:244
	buffer_load_u16 v214, v207, s[28:31], 0 offen offset:248
	buffer_load_u16 v207, v207, s[28:31], 0 offen offset:252
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v71, v95, v96
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_clause 0x1
	buffer_load_b64 v[95:96], v208, s[24:27], 0 offen
	buffer_load_b64 v[97:98], v209, s[24:27], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v105, v92, v106
	v_mul_f32_e32 v106, v92, v107
	v_mul_f32_e32 v107, v92, v108
	v_mul_f32_e32 v108, v92, v109
	v_mul_f32_e32 v109, v92, v110
	v_mul_f32_e32 v110, v92, v111
	v_mul_f32_e32 v111, v92, v112
	v_mul_f32_e32 v112, v92, v113
	v_mul_f32_e32 v113, v92, v114
	v_mul_f32_e32 v114, v92, v115
	v_mul_f32_e32 v115, v92, v116
	v_mul_f32_e32 v116, v92, v117
	v_mul_f32_e32 v117, v92, v118
	v_mul_f32_e32 v118, v92, v119
	v_mul_f32_e32 v119, v92, v120
	v_mul_f32_e32 v120, v92, v121
	v_mul_f32_e32 v121, v92, v122
	v_mul_f32_e32 v122, v92, v123
	v_mul_f32_e32 v123, v92, v124
	v_mul_f32_e32 v124, v92, v125
	v_mul_f32_e32 v125, v92, v126
	v_mul_f32_e32 v126, v92, v127
	v_mul_f32_e32 v127, v92, v128
	v_mul_f32_e32 v128, v92, v129
	v_mul_f32_e32 v129, v92, v130
	v_mul_f32_e32 v130, v92, v131
	v_mul_f32_e32 v131, v92, v132
	v_mul_f32_e32 v132, v92, v133
	v_mul_f32_e32 v133, v92, v134
	v_mul_f32_e32 v134, v92, v135
	v_mul_f32_e32 v135, v92, v136
	v_mul_f32_e32 v136, v92, v137
	v_mul_f32_e32 v137, v92, v138
	v_mul_f32_e32 v138, v92, v139
	v_mul_f32_e32 v139, v92, v140
	v_mul_f32_e32 v140, v92, v141
	v_mul_f32_e32 v141, v92, v142
	v_mul_f32_e32 v142, v92, v143
	v_mul_f32_e32 v143, v92, v144
	v_mul_f32_e32 v144, v92, v145
	v_mul_f32_e32 v145, v92, v146
	v_mul_f32_e32 v146, v92, v147
	v_mul_f32_e32 v147, v92, v148
	v_mul_f32_e32 v148, v92, v149
	v_mul_f32_e32 v149, v92, v150
	v_mul_f32_e32 v150, v92, v151
	v_mul_f32_e32 v151, v92, v152
	v_mul_f32_e32 v152, v92, v153
	v_mul_f32_e32 v153, v92, v154
	v_mul_f32_e32 v154, v92, v155
	v_mul_f32_e32 v155, v92, v156
	v_mul_f32_e32 v156, v92, v157
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v70, v101, v94
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_store_b16 v79, v93 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v80, v[95:96], v[97:98] offset1:8
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v157, 16, v195
	v_lshlrev_b32_e32 v195, 16, v197
	v_lshlrev_b32_e32 v179, 16, v179
	v_lshlrev_b32_e32 v180, 16, v180
	v_lshlrev_b32_e32 v181, 16, v181
	v_lshlrev_b32_e32 v182, 16, v182
	v_lshlrev_b32_e32 v197, 16, v203
	v_lshlrev_b32_e32 v203, 16, v205
	v_lshlrev_b32_e32 v199, 16, v199
	v_lshlrev_b32_e32 v200, 16, v200
	v_lshlrev_b32_e32 v183, 16, v183
	v_lshlrev_b32_e32 v184, 16, v184
	v_lshlrev_b32_e32 v185, 16, v185
	v_lshlrev_b32_e32 v186, 16, v186
	v_lshlrev_b32_e32 v187, 16, v187
	v_lshlrev_b32_e32 v188, 16, v188
	v_lshlrev_b32_e32 v163, 16, v163
	v_lshlrev_b32_e32 v164, 16, v164
	v_lshlrev_b32_e32 v165, 16, v165
	v_lshlrev_b32_e32 v166, 16, v166
	v_lshlrev_b32_e32 v189, 16, v189
	v_lshlrev_b32_e32 v190, 16, v190
	v_lshlrev_b32_e32 v171, 16, v171
	v_lshlrev_b32_e32 v172, 16, v172
	v_lshlrev_b32_e32 v173, 16, v173
	v_lshlrev_b32_e32 v174, 16, v174
	v_lshlrev_b32_e32 v159, 16, v159
	v_lshlrev_b32_e32 v160, 16, v160
	v_lshlrev_b32_e32 v161, 16, v161
	v_lshlrev_b32_e32 v162, 16, v162
	v_lshlrev_b32_e32 v167, 16, v167
	v_lshlrev_b32_e32 v168, 16, v168
	v_lshlrev_b32_e32 v169, 16, v169
	v_lshlrev_b32_e32 v170, 16, v170
	v_lshlrev_b32_e32 v175, 16, v175
	v_lshlrev_b32_e32 v176, 16, v176
	v_lshlrev_b32_e32 v177, 16, v177
	v_lshlrev_b32_e32 v178, 16, v178
	v_lshlrev_b32_e32 v191, 16, v191
	v_lshlrev_b32_e32 v192, 16, v192
	v_lshlrev_b32_e32 v193, 16, v193
	v_lshlrev_b32_e32 v194, 16, v194
	v_lshlrev_b32_e32 v201, 16, v201
	v_lshlrev_b32_e32 v202, 16, v202
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v67, v104, v195 :: v_dual_lshlrev_b32 v208, 16, v212
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v99, 16, v99
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v63, v108, v182 :: v_dual_lshlrev_b32 v100, 16, v100
	v_dual_fmac_f32 v64, v107, v181 :: v_dual_lshlrev_b32 v207, 16, v207
	v_dual_fmac_f32 v69, v102, v157 :: v_dual_mul_f32 v92, v92, v158
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v158, 16, v196
	v_lshlrev_b32_e32 v196, 16, v198
	v_lshlrev_b32_e32 v198, 16, v204
	v_lshlrev_b32_e32 v204, 16, v206
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v66, v105, v179 :: v_dual_lshlrev_b32 v205, 16, v210
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v206, 16, v211
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v68, v103, v158 :: v_dual_lshlrev_b32 v209, 16, v213
	v_dual_fmac_f32 v65, v106, v180 :: v_dual_lshlrev_b32 v210, 16, v214
	v_fmac_f32_e32 v60, v111, v198
	v_dual_fmac_f32 v62, v109, v196 :: v_dual_fmac_f32 v61, v110, v197
	v_dual_fmac_f32 v59, v112, v203 :: v_dual_fmac_f32 v54, v117, v185
	v_dual_fmac_f32 v58, v113, v199 :: v_dual_fmac_f32 v57, v114, v200
	v_dual_fmac_f32 v56, v115, v183 :: v_dual_fmac_f32 v55, v116, v184
	v_dual_fmac_f32 v53, v118, v186 :: v_dual_fmac_f32 v52, v119, v187
	v_dual_fmac_f32 v51, v120, v188 :: v_dual_fmac_f32 v50, v121, v163
	v_dual_fmac_f32 v49, v122, v164 :: v_dual_fmac_f32 v48, v123, v165
	v_dual_fmac_f32 v47, v124, v166 :: v_dual_fmac_f32 v46, v125, v189
	v_dual_fmac_f32 v45, v126, v190 :: v_dual_fmac_f32 v44, v127, v171
	v_dual_fmac_f32 v43, v128, v172 :: v_dual_fmac_f32 v42, v129, v173
	v_dual_fmac_f32 v41, v130, v174 :: v_dual_fmac_f32 v40, v131, v159
	v_dual_fmac_f32 v39, v132, v160 :: v_dual_fmac_f32 v38, v133, v161
	v_dual_fmac_f32 v37, v134, v162 :: v_dual_fmac_f32 v34, v136, v168
	v_dual_fmac_f32 v35, v135, v167 :: v_dual_fmac_f32 v32, v138, v170
	v_dual_fmac_f32 v33, v137, v169 :: v_dual_fmac_f32 v30, v140, v176
	v_dual_fmac_f32 v31, v139, v175 :: v_dual_fmac_f32 v28, v142, v178
	v_dual_fmac_f32 v29, v141, v177 :: v_dual_fmac_f32 v26, v144, v192
	v_dual_fmac_f32 v27, v143, v191 :: v_dual_fmac_f32 v24, v146, v194
	v_dual_fmac_f32 v25, v145, v193 :: v_dual_fmac_f32 v22, v148, v202
	v_dual_fmac_f32 v23, v147, v201 :: v_dual_fmac_f32 v18, v152, v208
	v_dual_fmac_f32 v21, v149, v204 :: v_dual_fmac_f32 v20, v150, v205
	v_dual_fmac_f32 v19, v151, v206 :: v_dual_fmac_f32 v16, v154, v209
	v_dual_fmac_f32 v17, v153, v99 :: v_dual_fmac_f32 v14, v156, v210
	v_dual_fmac_f32 v15, v155, v100 :: v_dual_fmac_f32 v12, v92, v207
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow211
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v2, s6, v13
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
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	buffer_load_u16 v2, v2, s[20:23], 0 offen
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v134, 0
	v_mov_b32_e32 v133, 0
	s_mov_b32 s4, 0
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v134, s11 :: v_dual_and_b32 v3, 56, v78
	v_dual_mov_b32 v133, s10 :: v_dual_mov_b32 v130, s7
	v_mov_b32_e32 v132, s9
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_lshl_or_b32 v3, v13, 6, v3
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v131, s8 :: v_dual_mov_b32 v128, s5
	v_mov_b32_e32 v129, s6
	v_mov_b32_e32 v127, s4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xad_u32 v199, v3, 24, 0
	v_add_nc_u32_e32 v203, 0, v3
	v_xad_u32 v219, v3, 16, 0
	v_xad_u32 v4, v3, 56, 0
	v_xad_u32 v5, v3, 48, 0
	v_xad_u32 v78, v3, 40, 0
	v_xad_u32 v191, v3, 32, 0
	v_xad_u32 v3, v3, 8, 0
	ds_load_2addr_stride64_b64 v[163:166], v199 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[85:88], v203 offset1:2
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[223:224], v199 offset:8192
	ds_load_b64 v[225:226], v219 offset:8192
	ds_load_b64 v[227:228], v3 offset:8192
	ds_load_b64 v[229:230], v203 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[107:110], v199 offset1:2
	ds_load_2addr_stride64_b64 v[111:114], v219 offset1:2
	ds_load_2addr_stride64_b64 v[167:170], v3 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[115:118], v203 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[119:122], v3 offset1:2
	ds_load_2addr_stride64_b64 v[135:138], v4 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[139:142], v4 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[143:146], v4 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[95:98], v4 offset1:2
	ds_load_2addr_stride64_b64 v[147:150], v5 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[151:154], v5 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[155:158], v5 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[99:102], v5 offset1:2
	ds_load_2addr_stride64_b64 v[159:162], v191 offset0:4 offset1:6
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[231:232], v4 offset:8192
	ds_load_b64 v[233:234], v5 offset:8192
	ds_load_b64 v[235:236], v78 offset:8192
	ds_load_b64 v[237:238], v191 offset:8192
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[103:106], v191 offset1:2
	ds_load_2addr_stride64_b64 v[175:178], v78 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[123:126], v78 offset1:2
	ds_load_2addr_stride64_b64 v[207:210], v3 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[211:214], v3 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[171:174], v219 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[215:218], v219 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[219:222], v219 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[187:190], v191 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[191:194], v191 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[179:182], v78 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[183:186], v78 offset0:8 offset1:10
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(30)
	v_wmma_i32_16x16x16_iu4 v[4:11], v[85:86], v[229:230], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[79:86], v[87:88], v[229:230], v[127:134] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(26)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[115:116], v[229:230], v[127:134] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(25)
	v_wmma_i32_16x16x16_iu4 v[4:11], v[119:120], v[227:228], v[4:11] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[79:86], v[121:122], v[227:228], v[79:86] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[195:198], v199 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[119:122], v203 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[199:202], v199 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[203:206], v203 offset0:12 offset1:14
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[87:94], v[167:168], v[227:228], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[4:11], v[111:112], v[225:226], v[4:11] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[79:86], v[113:114], v[225:226], v[79:86] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[171:172], v[225:226], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[4:11], v[107:108], v[223:224], v[4:11] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[79:86], v[109:110], v[223:224], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[87:94], v[163:164], v[223:224], v[87:94] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[4:11], v[103:104], v[237:238], v[4:11] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[79:86], v[105:106], v[237:238], v[79:86] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[87:94], v[159:160], v[237:238], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[4:11], v[123:124], v[235:236], v[4:11] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[79:86], v[125:126], v[235:236], v[79:86] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[103:110], v[119:120], v[229:230], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[87:94], v[175:176], v[235:236], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[4:11], v[99:100], v[233:234], v[4:11] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[79:86], v[101:102], v[233:234], v[79:86] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[103:110], v[207:208], v[227:228], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[87:94], v[155:156], v[233:234], v[87:94] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[4:11], v[95:96], v[231:232], v[4:11] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[79:86], v[97:98], v[231:232], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[95:102], v[117:118], v[229:230], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[111:118], v[121:122], v[229:230], v[127:134] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[119:126], v[203:204], v[229:230], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[127:134], v[205:206], v[229:230], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[95:102], v[169:170], v[227:228], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[111:118], v[209:210], v[227:228], v[111:118] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[119:126], v[211:212], v[227:228], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[103:110], v[215:216], v[225:226], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[127:134], v[213:214], v[227:228], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[95:102], v[173:174], v[225:226], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[111:118], v[217:218], v[225:226], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[119:126], v[219:220], v[225:226], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[103:110], v[199:200], v[223:224], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[127:134], v[221:222], v[225:226], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[95:102], v[165:166], v[223:224], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[111:118], v[201:202], v[223:224], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[119:126], v[195:196], v[223:224], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[103:110], v[191:192], v[237:238], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[127:134], v[197:198], v[223:224], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[95:102], v[161:162], v[237:238], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[111:118], v[193:194], v[237:238], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[119:126], v[187:188], v[237:238], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[103:110], v[183:184], v[235:236], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[127:134], v[189:190], v[237:238], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[95:102], v[177:178], v[235:236], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[111:118], v[185:186], v[235:236], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[119:126], v[179:180], v[235:236], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[103:110], v[151:152], v[233:234], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[127:134], v[181:182], v[235:236], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[95:102], v[157:158], v[233:234], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[111:118], v[153:154], v[233:234], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[119:126], v[147:148], v[233:234], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[87:94], v[143:144], v[231:232], v[87:94] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[127:134], v[149:150], v[233:234], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[95:102], v[145:146], v[231:232], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[103:110], v[139:140], v[231:232], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[111:118], v[141:142], v[231:232], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[119:126], v[135:136], v[231:232], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[127:134], v[137:138], v[231:232], v[127:134] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
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
.LBB0_8:
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s0, s0, s19
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s5, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s18, s0
	s_mov_b32 s7, 0x31027000
	v_add_lshl_u32 v3, s0, v77, 1
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s4, s14
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	s_mul_i32 s33, s33, s19
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v78, 4, v3
	v_add_nc_u32_e32 v135, 8, v3
	v_add_nc_u32_e32 v136, 12, v3
	v_add_nc_u32_e32 v137, 16, v3
	v_add_nc_u32_e32 v138, 20, v3
	v_add_nc_u32_e32 v139, 24, v3
	v_add_nc_u32_e32 v140, 28, v3
	v_cndmask_b32_e64 v77, 0x80000000, v3, s2
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	v_cndmask_b32_e64 v135, 0x80000000, v135, s2
	v_cndmask_b32_e64 v136, 0x80000000, v136, s2
	v_cndmask_b32_e64 v137, 0x80000000, v137, s2
	v_cndmask_b32_e64 v138, 0x80000000, v138, s2
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	s_clause 0x7
	buffer_load_u16 v77, v77, s[4:7], 0 offen
	buffer_load_u16 v78, v78, s[4:7], 0 offen
	buffer_load_u16 v135, v135, s[4:7], 0 offen
	buffer_load_u16 v136, v136, s[4:7], 0 offen
	buffer_load_u16 v137, v137, s[4:7], 0 offen
	buffer_load_u16 v138, v138, s[4:7], 0 offen
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
	v_cndmask_b32_e64 v143, 0x80000000, v143, s2
	v_cndmask_b32_e64 v144, 0x80000000, v144, s2
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v6, v6, v3
	v_mul_f32_e32 v8, v8, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v146, 0x80000000, v146, s2
	v_cndmask_b32_e64 v147, 0x80000000, v147, s2
	v_cndmask_b32_e64 v148, 0x80000000, v148, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v9, v9, v3
	v_mul_f32_e32 v4, v4, v3
	v_mul_f32_e32 v5, v5, v3
	v_mul_f32_e32 v7, v7, v3
	v_mul_f32_e32 v80, v80, v3
	v_mul_f32_e32 v11, v11, v3
	v_mul_f32_e32 v82, v82, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v152, 0x80000000, v152, s2
	v_cndmask_b32_e64 v154, 0x80000000, v154, s2
	v_cndmask_b32_e64 v156, 0x80000000, v156, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v84, v84, v3
	v_mul_f32_e32 v86, v86, v3
	v_mul_f32_e32 v88, v88, v3
	v_mul_f32_e32 v90, v90, v3
	v_mul_f32_e32 v92, v92, v3
	v_mul_f32_e32 v94, v94, v3
	v_mul_f32_e32 v96, v96, v3
	v_mul_f32_e32 v98, v98, v3
	v_mul_f32_e32 v100, v100, v3
	v_mul_f32_e32 v102, v102, v3
	v_mul_f32_e32 v104, v104, v3
	v_mul_f32_e32 v106, v106, v3
	v_mul_f32_e32 v108, v108, v3
	v_mul_f32_e32 v110, v110, v3
	v_mul_f32_e32 v112, v112, v3
	v_mul_f32_e32 v114, v114, v3
	v_mul_f32_e32 v116, v116, v3
	v_mul_f32_e32 v118, v118, v3
	v_mul_f32_e32 v120, v120, v3
	v_mul_f32_e32 v127, v127, v3
	v_mul_f32_e32 v129, v129, v3
	v_mul_f32_e32 v131, v131, v3
	v_mul_f32_e32 v126, v126, v3
	v_mul_f32_e32 v132, v132, v3
	v_mul_f32_e32 v133, v133, v3
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v2, 1, v1
	s_mov_b32 s0, 0x76543210
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_and_b32 s17, s17, 0xffff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v77, 16, v77
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v78, 16, v78
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v135, 16, v135
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v136, 16, v136
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v137, 16, v137
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v138, 16, v138
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v139, 16, v139
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v6, v6, v135, v75
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v140, 16, v140
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v8, v8, v137, v73
	v_fma_f32 v9, v9, v138, v72
	v_fma_f32 v4, v4, v77, v36
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v6, v75, v6, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v5, v5, v78, v76
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v8, v73, v8, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v7, v7, v136, v74
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v72, v9, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v6, v6, v6
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v11, v11, v140, v70
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v8, v8, v8
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v141, 0x80000000, v141, s2
	s_clause 0x7
	buffer_load_u16 v141, v141, s[4:7], 0 offen
	buffer_load_u16 v142, v142, s[4:7], 0 offen
	buffer_load_u16 v143, v143, s[4:7], 0 offen
	buffer_load_u16 v144, v144, s[4:7], 0 offen
	buffer_load_u16 v145, v145, s[4:7], 0 offen
	buffer_load_u16 v146, v146, s[4:7], 0 offen
	buffer_load_u16 v147, v147, s[4:7], 0 offen
	buffer_load_u16 v148, v148, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v10, v10, v3
	v_mul_f32_e32 v79, v79, v3
	v_mul_f32_e32 v81, v81, v3
	v_mul_f32_e32 v83, v83, v3
	v_mul_f32_e32 v85, v85, v3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v4, v36, v4, s2
	v_cndmask_b32_e64 v7, v74, v7, s2
	v_cndmask_b32_e64 v5, v76, v5, s2
	v_cndmask_b32_e64 v11, v70, v11, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v7, v7, v7
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v4, 0, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v134, v134, v3 :: v_dual_max_f32 v5, 0, v5
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v5, v5, v5
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v189, 16, v189
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v190, 16, v190
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v191, 16, v191
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
	v_fma_f32 v10, v10, v139, v71
	v_fma_f32 v77, v79, v141, v69
	v_fma_f32 v78, v80, v142, v68
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v146, 16, v146
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v147, 16, v147
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v79, v81, v143, v67
	v_fma_f32 v80, v82, v144, v66
	v_fma_f32 v81, v83, v145, v65
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v10, v71, v10, s2
	v_cndmask_b32_e64 v36, v69, v77, s2
	v_cndmask_b32_e64 v68, v68, v78, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v78, 0, v6
	v_max_f32_e32 v6, v9, v9
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v148, 16, v148
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v83, v85, v147, v63
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v66, v66, v80, s2
	v_cndmask_b32_e64 v65, v65, v81, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v9, v10, v10
	v_max_f32_e32 v80, 0, v6
	v_max_f32_e32 v6, v36, v36
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v67, v67, v79, s2
	v_cndmask_b32_e64 v63, v63, v83, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v10, 0, v7 :: v_dual_max_f32 v79, 0, v8
	v_max_f32_e32 v7, v11, v11
	v_dual_max_f32 v81, 0, v9 :: v_dual_max_f32 v8, v68, v68
	v_max_f32_e32 v9, v66, v66
	v_max_f32_e32 v66, 0, v6
	v_max_f32_e32 v6, v65, v65
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v149, 0x80000000, v149, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v36, 0, v7
	v_max_f32_e32 v7, v67, v67
	v_dual_max_f32 v67, 0, v8 :: v_dual_max_f32 v8, v63, v63
	v_max_f32_e32 v63, 0, v6
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v150, 0x80000000, v150, s2
	v_cndmask_b32_e64 v151, 0x80000000, v151, s2
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
	v_mul_f32_e32 v87, v87, v3
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v82, v84, v146, v64
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v89, v89, v3
	v_mul_f32_e32 v91, v91, v3
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v84, v86, v148, v62
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v93, v93, v3
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v64, v64, v82, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v65, 0, v7 :: v_dual_max_f32 v68, 0, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v62, v62, v84, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v157, 0x80000000, v157, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v7, v64, v64
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v63, v63, v63 :: v_dual_max_f32 v6, v62, v62
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v62, 0, v8
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v159, 0x80000000, v159, s2
	v_cndmask_b32_e64 v161, 0x80000000, v161, s2
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v149, 16, v149
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
	v_fma_f32 v85, v87, v149, v61
	v_fma_f32 v86, v88, v150, v60
	v_fma_f32 v88, v90, v152, v58
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v155, 16, v155
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v156, 16, v156
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v87, v89, v151, v59
	v_fma_f32 v89, v91, v153, v57
	v_fma_f32 v90, v92, v154, v56
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v61, v61, v85, s2
	v_cndmask_b32_e64 v60, v60, v86, s2
	v_cndmask_b32_e64 v58, v58, v88, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v91, v93, v155, v55
	v_fma_f32 v92, v94, v156, v54
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v59, v59, v87, s2
	v_cndmask_b32_e64 v57, v57, v89, s2
	v_cndmask_b32_e64 v56, v56, v90, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v9, v61, v61
	v_max_f32_e32 v61, 0, v7
	v_dual_max_f32 v7, v60, v60 :: v_dual_max_f32 v8, v58, v58
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v55, v55, v91, s2
	v_cndmask_b32_e64 v54, v54, v92, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v60, 0, v6
	v_max_f32_e32 v64, 0, v9
	v_max_f32_e32 v6, v59, v59
	v_dual_max_f32 v58, 0, v7 :: v_dual_max_f32 v7, v57, v57
	v_max_f32_e32 v9, v56, v56
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v158, 0x80000000, v158, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v57, 0, v8
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v160, 0x80000000, v160, s2
	v_cndmask_b32_e64 v163, 0x80000000, v163, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v56, 0, v6
	v_max_f32_e32 v6, v55, v55
	v_max_f32_e32 v55, 0, v7
	v_max_f32_e32 v59, 0, v9
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v162, 0x80000000, v162, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v7, v54, v54
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
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
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v95, v95, v3
	v_mul_f32_e32 v97, v97, v3
	v_mul_f32_e32 v99, v99, v3
	v_mul_f32_e32 v101, v101, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v165, 0x80000000, v165, s2
	v_cndmask_b32_e64 v167, 0x80000000, v167, s2
	v_cndmask_b32_e64 v169, 0x80000000, v169, s2
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v57, v57, v57 :: v_dual_mul_f32 v60, v60, v60
	v_mul_f32_e32 v59, v59, v59
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
	v_fma_f32 v93, v95, v157, v53
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v163, 16, v163
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v164, 16, v164
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v94, v96, v158, v52
	v_fma_f32 v95, v97, v159, v51
	v_fma_f32 v96, v98, v160, v50
	v_fma_f32 v98, v100, v162, v48
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v53, v53, v93, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v97, v99, v161, v49
	v_fma_f32 v99, v101, v163, v47
	v_fma_f32 v100, v102, v164, v46
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v52, v52, v94, s2
	v_cndmask_b32_e64 v51, v51, v95, s2
	v_cndmask_b32_e64 v50, v50, v96, s2
	v_cndmask_b32_e64 v48, v48, v98, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v8, v53, v53
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v47, v47, v99, s2
	v_cndmask_b32_e64 v46, v46, v100, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v53, 0, v6 :: v_dual_max_f32 v6, v52, v52
	v_max_f32_e32 v9, v51, v51
	v_dual_max_f32 v51, 0, v7 :: v_dual_max_f32 v52, 0, v8
	v_dual_max_f32 v7, v50, v50 :: v_dual_max_f32 v8, v48, v48
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v166, 0x80000000, v166, s2
	v_cndmask_b32_e64 v168, 0x80000000, v168, s2
	v_cndmask_b32_e64 v171, 0x80000000, v171, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v54, 0, v9
	v_max_f32_e32 v48, 0, v7
	v_max_f32_e32 v7, v47, v47
	v_max_f32_e32 v9, v46, v46
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v170, 0x80000000, v170, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v47, 0, v8
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v172, 0x80000000, v172, s2
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
	v_mul_f32_e32 v103, v103, v3
	v_mul_f32_e32 v105, v105, v3
	v_mul_f32_e32 v107, v107, v3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v49, v49, v97, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v50, 0, v6
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v173, 0x80000000, v173, s2
	v_cndmask_b32_e64 v175, 0x80000000, v175, s2
	v_cndmask_b32_e64 v177, 0x80000000, v177, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v6, v49, v49
	v_max_f32_e32 v49, 0, v9
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v174, 0x80000000, v174, s2
	v_cndmask_b32_e64 v179, 0x80000000, v179, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v109, v109, v3 :: v_dual_max_f32 v46, 0, v6
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v181, 0x80000000, v181, s2
	v_cndmask_b32_e64 v183, 0x80000000, v183, s2
	v_cndmask_b32_e64 v185, 0x80000000, v185, s2
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v53, v53, v53 :: v_dual_mul_f32 v50, v50, v50
	v_dual_mul_f32 v47, v47, v47 :: v_dual_mul_f32 v46, v46, v46
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
	v_fma_f32 v101, v103, v165, v45
	v_fma_f32 v102, v104, v166, v44
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v170, 16, v170
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v103, v105, v167, v43
	v_fma_f32 v105, v107, v169, v41
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v45, v45, v101, s2
	v_cndmask_b32_e64 v44, v44, v102, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v171, 16, v171
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v43, v43, v103, s2
	v_cndmask_b32_e64 v41, v41, v105, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v6, v45, v45 :: v_dual_max_f32 v45, 0, v7
	v_max_f32_e32 v7, v44, v44
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v176, 0x80000000, v176, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v8, v43, v43 :: v_dual_max_f32 v43, 0, v6
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v178, 0x80000000, v178, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v9, v41, v41
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v180, 0x80000000, v180, s2
	s_clause 0x7
	buffer_load_u16 v173, v173, s[4:7], 0 offen
	buffer_load_u16 v174, v174, s[4:7], 0 offen
	buffer_load_u16 v175, v175, s[4:7], 0 offen
	buffer_load_u16 v176, v176, s[4:7], 0 offen
	buffer_load_u16 v177, v177, s[4:7], 0 offen
	buffer_load_u16 v178, v178, s[4:7], 0 offen
	buffer_load_u16 v179, v179, s[4:7], 0 offen
	buffer_load_u16 v180, v180, s[4:7], 0 offen
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v172, 16, v172
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v104, v106, v168, v42
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v111, v111, v3
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v106, v108, v170, v40
	v_fma_f32 v107, v109, v171, v39
	v_fma_f32 v108, v110, v172, v38
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v42, v42, v104, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v41, 0, v7
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v40, v40, v106, s2
	v_cndmask_b32_e64 v39, v39, v107, s2
	v_cndmask_b32_e64 v38, v38, v108, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v6, v42, v42
	v_max_f32_e32 v42, 0, v8
	v_max_f32_e32 v7, v40, v40
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v182, 0x80000000, v182, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v8, v38, v38
	v_max_f32_e32 v40, 0, v6
	v_max_f32_e32 v6, v39, v39
	v_max_f32_e32 v38, 0, v7
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v187, 0x80000000, v187, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v44, 0, v9 :: v_dual_mul_f32 v113, v113, v3
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v115, v115, v3
	v_dual_mul_f32 v117, v117, v3 :: v_dual_mul_f32 v42, v42, v42
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v43, v43, v43 :: v_dual_mul_f32 v40, v40, v40
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v44, v44, v44 :: v_dual_lshlrev_b32 v173, 16, v173
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v174, 16, v174
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v175, 16, v175
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v176, 16, v176
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v177, 16, v177
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v109, v111, v173, v37
	v_fma_f32 v110, v112, v174, v35
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v178, 16, v178
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v179, 16, v179
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v180, 16, v180
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v37, v37, v109, s2
	v_cndmask_b32_e64 v35, v35, v110, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v111, v113, v175, v34
	v_fma_f32 v112, v114, v176, v33
	v_fma_f32 v113, v115, v177, v32
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v7, v37, v37
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v184, 0x80000000, v184, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v9, v35, v35
	v_max_f32_e32 v35, 0, v6
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v186, 0x80000000, v186, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v37, 0, v8
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
	v_mul_f32_e32 v119, v119, v3
	v_mul_f32_e32 v121, v121, v3
	v_mul_f32_e32 v123, v123, v3
	v_mul_f32_e32 v125, v125, v3
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v114, v116, v178, v31
	v_fma_f32 v115, v117, v179, v30
	v_fma_f32 v116, v118, v180, v29
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v34, v34, v111, s2
	v_cndmask_b32_e64 v33, v33, v112, s2
	v_cndmask_b32_e64 v32, v32, v113, s2
	v_cndmask_b32_e64 v31, v31, v114, s2
	v_cndmask_b32_e64 v30, v30, v115, s2
	v_cndmask_b32_e64 v29, v29, v116, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v6, v34, v34
	v_dual_max_f32 v34, 0, v7 :: v_dual_max_f32 v7, v33, v33
	v_dual_max_f32 v8, v32, v32 :: v_dual_max_f32 v39, 0, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v33, 0, v6 :: v_dual_max_f32 v6, v31, v31
	v_dual_max_f32 v9, v30, v30 :: v_dual_max_f32 v82, 0, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v30, 0, v8 :: v_dual_max_f32 v7, v29, v29
	v_max_f32_e32 v31, 0, v6
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v29.h, v3.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v32, v79, v79
	v_mul_f32_e32 v35, v35, v35
	v_mul_f32_e32 v39, v39, v39
	v_dual_mul_f32 v31, v31, v31 :: v_dual_mul_f32 v30, v30, v30
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v181, 16, v181
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v182, 16, v182
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v183, 16, v183
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v184, 16, v184
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v185, 16, v185
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v186, 16, v186
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v187, 16, v187
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v118, v120, v182, v27
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v188, 16, v188
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v117, v119, v181, v28
	v_fma_f32 v119, v121, v183, v26
	v_fma_f32 v121, v123, v185, v24
	v_fma_f32 v123, v125, v187, v22
	v_fma_f32 v125, v127, v189, v20
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v69, v27, v118, s2
	v_cndmask_b32_e64 v28, v28, v117, s2
	v_cndmask_b32_e64 v26, v26, v119, s2
	v_cndmask_b32_e64 v71, v22, v123, s2
	v_cndmask_b32_e64 v20, v20, v125, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v122, v122, v3
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v8, v69, v69
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v127, v129, v191, v18
	v_fma_f32 v129, v131, v193, v16
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v6, v28, v28
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v120, v122, v184, v25
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v28, 0, v7 :: v_dual_max_f32 v7, v26, v26
	v_max_f32_e32 v26, 0, v8
	v_max_f32_e32 v8, v71, v71
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v124, v124, v3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v25, v25, v120, s2
	v_cndmask_b32_e64 v24, v24, v121, s2
	v_cndmask_b32_e64 v74, v16, v129, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v128, v128, v3
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v122, v124, v186, v23
	v_fma_f32 v124, v126, v188, v21
	.loc	1 240 19 is_stmt 1              ; generate_amdgcn.py:240:19
	v_max_f32_e32 v27, 0, v9
	v_max_f32_e32 v9, v25, v25
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v126, v128, v190, v19
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v25, 0, v6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v21, v21, v124, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v6, v24, v24
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v18, v18, v127, s2
	v_cndmask_b32_e64 v72, v19, v126, s2
	v_cndmask_b32_e64 v70, v23, v122, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v23, 0, v7
	v_dual_max_f32 v19, 0, v6 :: v_dual_max_f32 v6, v21, v21
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v21, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v7, v70, v70 :: v_dual_max_f32 v22, 0, v9
	v_dual_max_f32 v9, v20, v20 :: v_dual_max_f32 v16, 0, v6
	v_max_f32_e32 v6, v18, v18
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v130, v130, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v20, 0, v7 :: v_dual_max_f32 v7, v72, v72
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v4, s19, v13
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v11, 0, v6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v128, v130, v192, v17
	v_fma_f32 v130, v132, v194, v15
	v_fma_f32 v132, v134, v196, v12
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v13.l, v21.h
	v_mov_b16_e32 v13.h, v3.l
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v73, v17, v128, s2
	v_cndmask_b32_e64 v75, v15, v130, s2
	v_cndmask_b32_e64 v77, v12, v132, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v195, 16, v195
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v17, 0, v8 :: v_dual_max_f32 v8, v73, v73
	v_dual_max_f32 v15, 0, v7 :: v_dual_max_f32 v18, v77, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v131, v133, v195, v14
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v7, v74, v74 :: v_dual_max_f32 v12, 0, v8
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v24, v78, v78 :: v_dual_and_b32 v13, 1, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v76, v14, v131, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v8, 0, v7 :: v_dual_mul_f32 v69, v81, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v29.l, v24.h
	v_add3_u32 v13, v21, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v6, v76, v76
	v_dual_max_f32 v14, 0, v9 :: v_dual_mul_f32 v27, v27, v27
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v21, 1, v29
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v29, v80, v80
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v7, 0, v6
	v_max_f32_e32 v6, 0, v18
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v18.l, v5.h
	v_mov_b16_e32 v18.h, v3.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v10, v10, v10 :: v_dual_mul_f32 v65, v65, v65
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v9, v75, v75 :: v_dual_mul_f32 v58, v58, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v18, 1, v18
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v38, v38, v38
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_add3_u32 v4, s33, s18, v4
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v9, 0, v9
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_mov_b32 s18, s6
	v_add3_u32 v5, v5, v18, 0x7fff
	v_mov_b16_e32 v18.l, v10.h
	v_mov_b16_e32 v18.h, v3.l
	v_mov_b16_e32 v5.l, v13.h
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_add_lshl_u32 v4, v4, v2, 1
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_mov_b32 s19, s7
	.loc	1 241 19 is_stmt 1              ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v19, v19, v19
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v13, 1, v18
	v_add3_u32 v18, v24, v21, 0x7fff
	v_mov_b16_e32 v21.l, v29.h
	v_mov_b16_e32 v24.l, v32.h
	v_mov_b16_e32 v24.h, v3.l
	v_mov_b16_e32 v21.h, v3.l
	v_add3_u32 v10, v10, v13, 0x7fff
	v_mov_b16_e32 v10.l, v18.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v26, v26, v26 :: v_dual_and_b32 v13, 1, v24
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v18, 1, v21
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v21, v36, v36
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v24.l, v69.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v36, v66, v66
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v32, v32, v13, 0x7fff
	v_add3_u32 v13, v29, v18, 0x7fff
	v_mov_b16_e32 v18.l, v21.h
	v_mov_b16_e32 v18.h, v3.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v29, v67, v67 :: v_dual_and_b32 v24, 1, v24
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v13.l, v32.h
	v_mov_b16_e32 v66.l, v36.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v24, v69, v24, 0x7fff
	v_mov_b16_e32 v32.l, v29.h
	v_mov_b16_e32 v66.h, v3.l
	v_mov_b16_e32 v32.h, v3.l
	v_add3_u32 v18, v21, v18, 0x7fff
	v_mov_b16_e32 v18.l, v24.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v61, v61, v61
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v21, 1, v66
	v_and_b32_e32 v24, 1, v32
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v32, v68, v68
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v66.l, v65.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v55, v55, v55
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v36, v36, v21, 0x7fff
	v_add3_u32 v21, v29, v24, 0x7fff
	v_mov_b16_e32 v24.l, v32.h
	v_mov_b16_e32 v24.h, v3.l
	v_and_b32_e32 v29, 1, v66
	v_mov_b16_e32 v21.l, v36.h
	v_mov_b16_e32 v36.l, v61.h
	v_mov_b16_e32 v36.h, v3.l
	v_and_b32_e32 v24, 1, v24
	v_add3_u32 v29, v65, v29, 0x7fff
	v_mov_b16_e32 v65.l, v63.h
	v_mov_b16_e32 v65.h, v3.l
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v24, v32, v24, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v32, v62, v62
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v24.l, v29.h
	v_and_b32_e32 v29, 1, v65
	v_mov_b16_e32 v62.h, v3.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v51, v51, v51
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v62.l, v32.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v48, v48, v48 :: v_dual_mul_f32 v45, v45, v45
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v63, v63, v29, 0x7fff
	v_add3_u32 v29, v61, v36, 0x7fff
	v_mov_b16_e32 v36.l, v60.h
	v_mov_b16_e32 v36.h, v3.l
	v_and_b32_e32 v61, 1, v62
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v62, v64, v64
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v29.l, v63.h
	v_mov_b16_e32 v63.l, v58.h
	v_and_b32_e32 v36, 1, v36
	v_mov_b16_e32 v64.h, v3.l
	v_mov_b16_e32 v64.l, v62.h
	v_mov_b16_e32 v63.h, v3.l
	v_add3_u32 v61, v32, v61, 0x7fff
	v_add3_u32 v32, v60, v36, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v36, v56, v56
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v56, 1, v64
	v_and_b32_e32 v60, 1, v63
	v_mov_b16_e32 v32.l, v61.h
	v_mov_b16_e32 v61.h, v3.l
	v_mov_b16_e32 v61.l, v36.h
	v_add3_u32 v56, v62, v56, 0x7fff
	v_add3_u32 v58, v58, v60, 0x7fff
	v_mov_b16_e32 v60.l, v57.h
	v_mov_b16_e32 v60.h, v3.l
	v_and_b32_e32 v61, 1, v61
	v_mov_b16_e32 v58.l, v56.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v41, v41, v41 :: v_dual_mul_f32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v56, 1, v60
	v_add3_u32 v36, v36, v61, 0x7fff
	v_mov_b16_e32 v60.l, v59.h
	v_mov_b16_e32 v61.l, v55.h
	v_mov_b16_e32 v61.h, v3.l
	v_add3_u32 v56, v57, v56, 0x7fff
	v_mov_b16_e32 v56.l, v36.h
	v_and_b32_e32 v57, 1, v60
	v_mov_b16_e32 v60.l, v53.h
	v_and_b32_e32 v36, 1, v61
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v28, v28, v28 :: v_dual_mul_f32 v23, v23, v23
	v_mul_f32_e32 v25, v25, v25
	v_mul_f32_e32 v17, v17, v17
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v36, v55, v36, 0x7fff
	v_add3_u32 v55, v59, v57, 0x7fff
	v_and_b32_e32 v59, 1, v60
	v_mov_b16_e32 v57.l, v51.h
	v_mov_b16_e32 v57.h, v3.l
	v_mov_b16_e32 v55.l, v36.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v20, v20, v20
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v53, v53, v59, 0x7fff
	v_mov_b16_e32 v59.h, v3.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v52, v52, v52
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v36, 1, v57
	v_mov_b16_e32 v57.l, v50.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v22, v22, v22
	v_mul_f32_e32 v16, v16, v16
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v59.l, v52.h
	v_add3_u32 v36, v51, v36, 0x7fff
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v51, v54, v54
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v36.l, v53.h
	v_and_b32_e32 v54, 1, v57
	v_and_b32_e32 v53, 1, v59
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v15, v15, v15
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v57.l, v51.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v14, v14, v14
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v50, v50, v54, 0x7fff
	v_add3_u32 v52, v52, v53, 0x7fff
	v_mov_b16_e32 v53.l, v48.h
	v_mov_b16_e32 v53.h, v3.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v11, v11, v11 :: v_dual_and_b32 v54, 1, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v50.l, v52.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v7, v7, v7 :: v_dual_and_b32 v52, 1, v53
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v51, v51, v54, 0x7fff
	v_mov_b16_e32 v54.l, v46.h
	v_mov_b16_e32 v54.h, v3.l
	v_mov_b16_e32 v53.l, v47.h
	v_add3_u32 v48, v48, v52, 0x7fff
	v_mov_b16_e32 v48.l, v51.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v12, v12, v12 :: v_dual_and_b32 v51, 1, v54
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v52, 1, v53
	v_mov_b16_e32 v53.l, v45.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v8, v8, v8
	v_mul_f32_e32 v6, v6, v6
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v46, v46, v51, 0x7fff
	v_mov_b16_e32 v51.h, v3.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v49, v49, v49
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v47, v47, v52, 0x7fff
	v_and_b32_e32 v52, 1, v53
	v_mov_b16_e32 v47.l, v46.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v51.l, v49.h
	v_add3_u32 v45, v45, v52, 0x7fff
	v_mov_b16_e32 v52.l, v43.h
	v_mov_b16_e32 v52.h, v3.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v46, 1, v51
	v_mov_b16_e32 v51.l, v41.h
	v_add3_u32 v46, v49, v46, 0x7fff
	v_mov_b16_e32 v46.l, v45.h
	v_and_b32_e32 v45, 1, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v49, 1, v51
	v_mov_b16_e32 v51.l, v42.h
	v_add3_u32 v43, v43, v45, 0x7fff
	v_mov_b16_e32 v45.l, v40.h
	v_mov_b16_e32 v45.h, v3.l
	v_add3_u32 v41, v41, v49, 0x7fff
	v_and_b32_e32 v49, 1, v51
	v_mov_b16_e32 v41.l, v43.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v43, 1, v45
	v_mov_b16_e32 v45.l, v38.h
	v_add3_u32 v42, v42, v49, 0x7fff
	v_mov_b16_e32 v49.l, v44.h
	v_mov_b16_e32 v49.h, v3.l
	v_add3_u32 v40, v40, v43, 0x7fff
	v_and_b32_e32 v43, 1, v45
	v_mov_b16_e32 v40.l, v42.h
	v_mov_b16_e32 v45.l, v35.h
	v_and_b32_e32 v42, 1, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v38, v38, v43, 0x7fff
	v_mov_b16_e32 v43.h, v3.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v37, v37, v37
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v42, v44, v42, 0x7fff
	v_and_b32_e32 v44, 1, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v43.l, v37.h
	v_mov_b16_e32 v38.l, v42.h
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v35, v35, v44, 0x7fff
	v_mov_b16_e32 v44.l, v34.h
	v_mov_b16_e32 v44.h, v3.l
	v_and_b32_e32 v42, 1, v43
	v_mov_b16_e32 v43.l, v39.h
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v33, v33, v33
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v37, v37, v42, 0x7fff
	v_mov_b16_e32 v37.l, v35.h
	v_and_b32_e32 v35, 1, v44
	v_and_b32_e32 v42, 1, v43
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v43, v82, v82
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v44.l, v33.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v34, v34, v35, 0x7fff
	v_add3_u32 v35, v39, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v39.l, v43.h
	v_mov_b16_e32 v39.h, v3.l
	v_and_b32_e32 v42, 1, v44
	v_mov_b16_e32 v35.l, v34.h
	v_and_b32_e32 v34, 1, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v33, v33, v42, 0x7fff
	v_mov_b16_e32 v42.l, v30.h
	v_mov_b16_e32 v42.h, v3.l
	v_mov_b16_e32 v39.l, v31.h
	v_add3_u32 v34, v43, v34, 0x7fff
	v_mov_b16_e32 v34.l, v33.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v33, 1, v42
	v_and_b32_e32 v39, 1, v39
	v_mov_b16_e32 v42.l, v27.h
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v30, v30, v33, 0x7fff
	v_mov_b16_e32 v33.l, v28.h
	v_mov_b16_e32 v33.h, v3.l
	v_add3_u32 v31, v31, v39, 0x7fff
	v_and_b32_e32 v39, 1, v42
	v_mov_b16_e32 v31.l, v30.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v30, 1, v33
	v_mov_b16_e32 v33.l, v26.h
	v_add3_u32 v27, v27, v39, 0x7fff
	v_mov_b16_e32 v39.l, v25.h
	v_mov_b16_e32 v39.h, v3.l
	v_add3_u32 v28, v28, v30, 0x7fff
	v_and_b32_e32 v30, 1, v33
	v_mov_b16_e32 v28.l, v27.h
	v_mov_b16_e32 v33.l, v23.h
	v_and_b32_e32 v27, 1, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v26, v26, v30, 0x7fff
	v_and_b32_e32 v30, 1, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v25, v25, v27, 0x7fff
	v_mov_b16_e32 v27.l, v22.h
	v_mov_b16_e32 v27.h, v3.l
	v_cndmask_b32_e32 v33, v31, v35, vcc_lo
	v_add3_u32 v23, v23, v30, 0x7fff
	v_mov_b16_e32 v26.l, v25.h
	v_mov_b16_e32 v30.l, v19.h
	v_and_b32_e32 v25, 1, v27
	v_mov_b16_e32 v27.l, v20.h
	v_mov_b16_e32 v30.h, v3.l
	v_cndmask_b32_e32 v31, v35, v31, vcc_lo
	v_cndmask_b32_e32 v35, v28, v34, vcc_lo
	v_add3_u32 v22, v22, v25, 0x7fff
	v_mov_b16_e32 v22.l, v23.h
	v_and_b32_e32 v23, 1, v30
	v_and_b32_e32 v25, 1, v27
	v_mov_b16_e32 v27.l, v17.h
	v_cndmask_b32_e32 v30, v37, v40, vcc_lo
	v_cndmask_b32_e32 v28, v34, v28, vcc_lo
	v_add3_u32 v19, v19, v23, 0x7fff
	v_add3_u32 v20, v20, v25, 0x7fff
	v_mov_b16_e32 v23.l, v16.h
	v_mov_b16_e32 v23.h, v3.l
	v_and_b32_e32 v25, 1, v27
	v_mov_b16_e32 v20.l, v19.h
	v_mov_b16_e32 v27.l, v11.h
	v_permlanex16_b32 v31, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v19, 1, v23
	v_add3_u32 v17, v17, v25, 0x7fff
	v_mov_b16_e32 v23.l, v15.h
	v_mov_b16_e32 v25.l, v14.h
	v_mov_b16_e32 v25.h, v3.l
	v_add3_u32 v16, v16, v19, 0x7fff
	v_mov_b16_e32 v16.l, v17.h
	v_and_b32_e32 v19, 1, v23
	v_and_b32_e32 v17, 1, v27
	v_and_b32_e32 v23, 1, v25
	v_mov_b16_e32 v25.l, v12.h
	v_cndmask_b32_e32 v27, v38, v41, vcc_lo
	v_add3_u32 v15, v15, v19, 0x7fff
	v_add3_u32 v11, v11, v17, 0x7fff
	v_add3_u32 v14, v14, v23, 0x7fff
	v_and_b32_e32 v19, 1, v25
	v_mov_b16_e32 v17.l, v8.h
	v_mov_b16_e32 v17.h, v3.l
	v_mov_b16_e32 v23.l, v6.h
	v_mov_b16_e32 v15.l, v14.h
	v_mov_b16_e32 v14.h, v3.l
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v9, v9, v9
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v12, v12, v19, 0x7fff
	v_mov_b16_e32 v19.l, v7.h
	v_mov_b16_e32 v19.h, v3.l
	v_and_b32_e32 v17, 1, v17
	v_mov_b16_e32 v14.l, v9.h
	v_mov_b16_e32 v23.h, v3.l
	v_mov_b16_e32 v12.l, v11.h
	v_and_b32_e32 v3, 1, v19
	v_add3_u32 v8, v8, v17, 0x7fff
	v_and_b32_e32 v14, 1, v14
	v_dual_cndmask_b32 v34, v20, v26 :: v_dual_and_b32 v11, 1, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v3, v7, v3, 0x7fff
	v_cndmask_b32_e32 v20, v26, v20, vcc_lo
	v_add3_u32 v7, v9, v14, 0x7fff
	v_mov_b16_e32 v7.l, v8.h
	v_add3_u32 v1, v6, v11, 0x7fff
	v_mov_b16_e32 v1.l, v3.h
	v_cndmask_b32_e32 v3, v13, v5, vcc_lo
	v_cndmask_b32_e32 v5, v5, v13, vcc_lo
	v_cndmask_b32_e32 v13, v32, v24, vcc_lo
	v_cndmask_b32_e32 v11, v24, v32, vcc_lo
	v_dual_cndmask_b32 v32, v40, v37 :: v_dual_cndmask_b32 v37, v7, v15
	v_cndmask_b32_e32 v7, v15, v7, vcc_lo
	v_dual_mov_b32 v15, 0x5410 :: v_dual_cndmask_b32 v8, v18, v10
	v_cndmask_b32_e32 v6, v10, v18, vcc_lo
	v_cndmask_b32_e32 v10, v29, v21, vcc_lo
	v_cndmask_b32_e32 v9, v21, v29, vcc_lo
	v_cndmask_b32_e32 v17, v58, v55, vcc_lo
	v_cndmask_b32_e32 v29, v41, v38, vcc_lo
	v_dual_cndmask_b32 v38, v1, v12 :: v_dual_cndmask_b32 v1, v12, v1
	v_permlanex16_b32 v12, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_dual_cndmask_b32 v5, 0x1054, v15 :: v_dual_cndmask_b32 v18, v36, v56
	v_cndmask_b32_e32 v21, v47, v50, vcc_lo
	v_cndmask_b32_e32 v23, v50, v47, vcc_lo
	v_cndmask_b32_e32 v25, v48, v46, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v5, v5, 8, v5
	v_cndmask_b32_e32 v14, v55, v58, vcc_lo
	v_cndmask_b32_e32 v24, v46, v48, vcc_lo
	v_permlanex16_b32 v28, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v5, 0x540054, v5
	v_permlanex16_b32 v44, v1, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v5, v5, 4, v5
	v_cndmask_b32_e32 v19, v56, v36, vcc_lo
	v_cndmask_b32_e32 v36, v16, v22, vcc_lo
	v_cndmask_b32_e32 v16, v22, v16, vcc_lo
	v_mov_b32_e32 v22, 0x7632
	v_and_b32_e32 v40, 0x5040504, v5
	v_permlanex16_b32 v26, v9, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v42, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v15, 0x3276, v22, vcc_lo
	v_permlanex16_b32 v22, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v5, v12, v3, v40
	v_perm_b32 v9, v26, v10, v40
	v_perm_b32 v2, v44, v38, v40
	v_lshl_or_b32 v6, v15, 8, v15
	v_permlanex16_b32 v15, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v6, 0x760076, v6
	v_permlanex16_b32 v39, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v6, v6, 4, v6
	v_perm_b32 v7, v22, v8, v40
	v_perm_b32 v11, v39, v13, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 0x7060706, v6
	v_perm_b32 v6, v12, v3, v41
	v_and_b32_e32 v3, 0x1e0, v0
	v_perm_b32 v8, v22, v8, v41
	v_perm_b32 v10, v26, v10, v41
	v_perm_b32 v12, v39, v13, v41
	v_perm_b32 v13, v15, v14, v40
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_add_nc_u32_e32 v3, 32, v4
	v_perm_b32 v14, v15, v14, v41
	v_perm_b32 v15, v17, v18, v40
	v_perm_b32 v16, v17, v18, v41
	v_perm_b32 v17, v19, v21, v40
	v_perm_b32 v18, v19, v21, v41
	v_perm_b32 v21, v25, v27, v40
	v_perm_b32 v22, v25, v27, v41
	v_perm_b32 v25, v31, v33, v40
	v_perm_b32 v26, v31, v33, v41
	v_add_nc_u32_e32 v33, 64, v4
	v_perm_b32 v19, v23, v24, v40
	v_perm_b32 v20, v23, v24, v41
	v_perm_b32 v23, v29, v30, v40
	v_perm_b32 v24, v29, v30, v41
	v_perm_b32 v29, v32, v34, v40
	v_perm_b32 v30, v32, v34, v41
	v_cndmask_b32_e32 v34, 0x80000000, v4, vcc_lo
	v_perm_b32 v27, v28, v35, v40
	v_perm_b32 v28, v28, v35, v41
	v_cndmask_b32_e32 v35, 0x80000000, v3, vcc_lo
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 239
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 239
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12956
; TotalNumSgprs: 50
; NumVgprs: 239
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 239
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc128_relu2_bm16_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     239
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
