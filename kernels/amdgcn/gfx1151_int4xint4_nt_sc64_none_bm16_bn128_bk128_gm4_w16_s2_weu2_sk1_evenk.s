	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
	v_lshlrev_b32_e32 v8, 3, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v2, 5, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_and_b32_e32 v9, 31, v0
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_lshrrev_b32_e32 v10, 1, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v10, 24, v10
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
	s_sub_i32 s10, 0, s7
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_and_b32_e32 v1, 24, v8
	s_mov_b32 s11, 0x31027000
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s27, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_u32_f32 s18, s18
	s_mul_i32 s10, s10, s18
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s18, s10
	s_xor_b32 s10, s2, s17
	s_add_i32 s18, s18, s5
	s_ashr_i32 s30, s10, 31
	s_mul_hi_u32 s5, s6, s18
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s18, s5, s7
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_mov_b32 s26, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s6, s6, s18
	s_add_i32 s18, s5, 1
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
	s_xor_b32 s34, s5, s30
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s20, s4, 63
.Ltmp13:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s6
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s5, s34, s30
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s7, s4, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s4, s5, s17
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s31, s3, 5
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s4
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_mad_u64_u32 v[5:6], null, s7, v3, v[1:2]
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s16
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v4, s31, v9
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s33, s2, 4
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v7, s31, v1
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_or_b32_e32 v6, s33, v2
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s18, s5, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s6, s20, s3
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s5, s7, v4
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 32, v4
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s7, v7
	.loc	1 198 51                        ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 32, v7
	.loc	1 216 34 is_stmt 1              ; generate_amdgcn.py:216:34
	v_mad_u64_u32 v[6:7], null, v6, s7, v[4:5]
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s6, s6, 6
.Ltmp21:
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	s_mul_i32 s2, s18, s7
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s20, 63
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add3_u32 v4, s31, s2, v5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s5, s4, s5
	s_and_b32 s16, s3, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v7, 4, v0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e32 v5, 0x80000000, v6, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_and_b32 s9, s9, 0xffff
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_and_b32 v7, 24, v7
	s_and_b32 s25, s25, 0xffff
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u8 v6, v5, s[8:11], 0 offen
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	buffer_load_b64 v[4:5], v4, s[24:27], 0 offen
	v_xor_b32_e32 v8, v8, v10
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xor_b32_e32 v7, v7, v0
	s_mov_b32 s5, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s20, 0x7f
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v80, 0, v8
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v79, 0, v7
	s_waitcnt vmcnt(1)
	ds_store_b8 v79, v6 offset:4096
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v80, v[4:5]
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
.LBB0_3:                                ; %Flow518
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b64 s[16:17], s[0:1], 0x20
	v_dual_mov_b32 v13, 0 :: v_dual_and_b32 v76, 15, v0
	v_bfe_u32 v77, v0, 4, 1
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v15, 0 :: v_dual_lshlrev_b32 v78, 1, v0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v74, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s1, s6, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_lshl_or_b32 v3, s34, 7, v3
	s_lshl_b32 s27, s30, 7
	s_mov_b32 s44, 0
	v_dual_mov_b32 v75, 0 :: v_dual_and_b32 v4, 24, v78
	s_delay_alu instid0(VALU_DEP_2)
	v_subrev_nc_u32_e32 v3, s27, v3
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	v_add_nc_u32_e32 v2, s33, v2
	v_add_nc_u32_e32 v5, s33, v76
	v_lshl_or_b32 v4, v76, 5, v4
	v_sub_nc_u32_e32 v81, s7, v1
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_mad_u64_u32 v[10:11], null, s7, v3, v[1:2]
	v_mul_lo_u32 v5, s6, v5
	v_xor_b32_e32 v6, 8, v4
	v_xor_b32_e32 v7, 16, v4
	v_xor_b32_e32 v8, 24, v4
	v_add_nc_u32_e32 v83, 0, v4
	v_mov_b32_e32 v71, 0
	v_mad_u64_u32 v[11:12], null, s7, v2, v[9:10]
	v_lshlrev_b32_e32 v82, 1, v5
	v_add_nc_u32_e32 v84, 0, v6
	v_add_nc_u32_e32 v85, 0, v7
	v_add_nc_u32_e32 v86, 0, v8
	v_dual_mov_b32 v1, s44 :: v_dual_mov_b32 v2, s45
	v_dual_mov_b32 v3, s46 :: v_dual_mov_b32 v4, s47
	v_dual_mov_b32 v5, s48 :: v_dual_mov_b32 v6, s49
	v_dual_mov_b32 v7, s50 :: v_dual_mov_b32 v8, s51
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v12, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_lshl_b32 s0, s34, 8
	s_lshl_b32 s26, s30, 8
	s_and_b32 s29, s15, 0xffff
	s_mov_b64 s[20:21], s[12:13]
	s_mov_b32 s28, s14
	s_max_i32 s5, s1, 1
	s_sub_i32 s34, s0, s26
	s_lshl_b32 s35, s19, 1
	s_add_i32 s40, s31, 32
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
	buffer_load_u16 v87, v82, s[36:39], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s40, v81
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s5, s5, -1
	v_add_nc_u32_e32 v82, 2, v82
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v87, 16, v87
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_add_nc_u32_e32 v90, s40, v9
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v89, s40, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s0, s7, v90
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 s0, s0, s4
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	v_cndmask_b32_e64 v89, 0x80000000, v89, s0
	buffer_load_u8 v89, v89, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[160:161], v83 offset:4096
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[104:107], v83 offset1:1
	ds_load_2addr_stride64_b64 v[120:123], v83 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[136:139], v83 offset0:4 offset1:5
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[162:163], v84 offset:4096
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[140:143], v84 offset1:1
	ds_load_2addr_stride64_b64 v[144:147], v84 offset0:2 offset1:3
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[164:165], v85 offset:4096
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[152:155], v83 offset0:6 offset1:7
	ds_load_2addr_stride64_b64 v[148:151], v84 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[156:159], v84 offset0:6 offset1:7
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[104:105], v[160:161], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[106:107], v[160:161], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[120:121], v[160:161], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[122:123], v[160:161], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[136:137], v[160:161], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[138:139], v[160:161], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[140:141], v[162:163], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[142:143], v[162:163], v[98:105] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[144:145], v[162:163], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[146:147], v[162:163], v[114:121] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[138:145], v[152:153], v[160:161], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[148:149], v[162:163], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[150:151], v[162:163], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[154:155], v[160:161], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[138:145], v[156:157], v[162:163], v[138:145] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[146:153], v[158:159], v[162:163], v[146:153] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[154:157], v85 offset1:1
	ds_load_2addr_stride64_b64 v[158:161], v85 offset0:2 offset1:3
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[162:163], v86 offset:4096
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[154:155], v[164:165], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[156:157], v[164:165], v[98:105] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[154:157], v85 offset0:4 offset1:5
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[158:159], v[164:165], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[160:161], v[164:165], v[114:121] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[158:161], v85 offset0:6 offset1:7
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[154:155], v[164:165], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[156:157], v[164:165], v[130:137] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[138:145], v[158:159], v[164:165], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[160:161], v[164:165], v[146:153] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[154:157], v86 offset1:1
	ds_load_2addr_stride64_b64 v[158:161], v86 offset0:2 offset1:3
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[154:155], v[162:163], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[156:157], v[162:163], v[98:105] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[154:157], v86 offset0:4 offset1:5
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[158:159], v[162:163], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[160:161], v[162:163], v[114:121] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[158:161], v86 offset0:6 offset1:7
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v97, v97
	v_mul_f32_e32 v90, v87, v90
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshlrev_b32_e32 v88, 1, v77
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v93, v87, v93
	v_mul_f32_e32 v91, v87, v91
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v88, s34, v88
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[154:155], v[162:163], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[130:137], v[156:157], v[162:163], v[130:137] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v155, v88, s[28:31], 0 offen
	buffer_load_u16 v156, v88, s[28:31], 0 offen offset:4
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[138:145], v[158:159], v[162:163], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[160:161], v[162:163], v[146:153] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x6
	buffer_load_u16 v157, v88, s[28:31], 0 offen offset:8
	buffer_load_u16 v158, v88, s[28:31], 0 offen offset:12
	buffer_load_u16 v159, v88, s[28:31], 0 offen offset:16
	buffer_load_u16 v160, v88, s[28:31], 0 offen offset:20
	buffer_load_u16 v161, v88, s[28:31], 0 offen offset:24
	buffer_load_u16 v162, v88, s[28:31], 0 offen offset:28
	buffer_load_u16 v163, v88, s[28:31], 0 offen offset:32
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
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
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s34, s34, s35
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v157, 16, v157
	v_lshlrev_b32_e32 v155, 16, v155
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v160, 16, v160
	v_lshlrev_b32_e32 v159, 16, v159
	v_lshlrev_b32_e32 v156, 16, v156
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v163, 16, v163
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v75, v90, v155
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v90, v88, s[28:31], 0 offen offset:36
	buffer_load_u16 v155, v88, s[28:31], 0 offen offset:40
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v74, v91, v156 :: v_dual_lshlrev_b32 v161, 16, v161
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v92, v87, v92
	.loc	1 218 26 is_stmt 1              ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v154, s40, v10
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v91, v88, s[28:31], 0 offen offset:44
	buffer_load_u16 v156, v88, s[28:31], 0 offen offset:48
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v95, v87, v95 :: v_dual_lshlrev_b32 v158, 16, v158
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v73, v92, v157 :: v_dual_cndmask_b32 v154, 0x80000000, v154
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v92, v88, s[28:31], 0 offen offset:52
	buffer_load_u16 v157, v88, s[28:31], 0 offen offset:56
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v72, v93, v158
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v93, v88, s[28:31], 0 offen offset:60
	buffer_load_u16 v158, v88, s[28:31], 0 offen offset:64
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v96, v87, v96
	v_mul_f32_e32 v97, v87, v97
	v_mul_f32_e32 v98, v87, v98
	v_mul_f32_e32 v94, v87, v94
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v70, v95, v160
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v95, v88, s[28:31], 0 offen offset:76
	buffer_load_u16 v160, v88, s[28:31], 0 offen offset:80
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v100, v87, v100 :: v_dual_fmac_f32 v69, v96, v161
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v71, v94, v159
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x3
	buffer_load_u16 v94, v88, s[28:31], 0 offen offset:68
	buffer_load_u16 v159, v88, s[28:31], 0 offen offset:72
	buffer_load_u16 v96, v88, s[28:31], 0 offen offset:84
	buffer_load_u16 v161, v88, s[28:31], 0 offen offset:88
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v101, v87, v101
	v_mul_f32_e32 v102, v87, v102
	v_mul_f32_e32 v106, v87, v106
	v_mul_f32_e32 v108, v87, v108
	v_mul_f32_e32 v121, v87, v121
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s40, s40, 32
	s_cmp_lg_u32 s5, 0
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v105, v87, v105
	v_mul_f32_e32 v103, v87, v103
	v_mul_f32_e32 v109, v87, v109
	v_mul_f32_e32 v111, v87, v111
	v_mul_f32_e32 v107, v87, v107
	v_mul_f32_e32 v99, v87, v99
	v_mul_f32_e32 v119, v87, v119
	v_mul_f32_e32 v113, v87, v113
	v_mul_f32_e32 v115, v87, v115
	v_mul_f32_e32 v117, v87, v117
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v155, 16, v155
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v67, v98, v163 :: v_dual_lshlrev_b32 v162, 16, v162
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v98, v88, s[28:31], 0 offen offset:100
	buffer_load_u16 v163, v88, s[28:31], 0 offen offset:104
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v91, 16, v91
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v156, 16, v156
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v68, v97, v162
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v97, v88, s[28:31], 0 offen offset:92
	buffer_load_u16 v162, v88, s[28:31], 0 offen offset:96
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v110, v87, v110
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v92, 16, v92
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v157, 16, v157
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v65, v100, v155 :: v_dual_lshlrev_b32 v90, 16, v90
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v64, v101, v91 :: v_dual_fmac_f32 v63, v103, v92
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v91, v88, s[28:31], 0 offen offset:124
	buffer_load_u16 v101, v88, s[28:31], 0 offen offset:128
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v66, v99, v90
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v90, v88, s[28:31], 0 offen offset:108
	buffer_load_u16 v99, v88, s[28:31], 0 offen offset:112
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(15)
	v_dual_fmac_f32 v62, v102, v156 :: v_dual_lshlrev_b32 v93, 16, v93
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v104, v87, v104
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v158, 16, v158
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(12)
	v_dual_fmac_f32 v61, v105, v93 :: v_dual_lshlrev_b32 v160, 16, v160
	s_waitcnt vmcnt(10)
	v_dual_fmac_f32 v60, v104, v157 :: v_dual_lshlrev_b32 v159, 16, v159
	v_dual_fmac_f32 v58, v106, v158 :: v_dual_lshlrev_b32 v95, 16, v95
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v94, 16, v94
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v112, v87, v112 :: v_dual_lshlrev_b32 v161, 16, v161
	v_mul_f32_e32 v114, v87, v114
	v_mul_f32_e32 v116, v87, v116
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0xb
	buffer_load_u16 v100, v88, s[28:31], 0 offen offset:116
	buffer_load_u16 v155, v88, s[28:31], 0 offen offset:120
	buffer_load_u16 v102, v88, s[28:31], 0 offen offset:132
	buffer_load_u16 v156, v88, s[28:31], 0 offen offset:136
	buffer_load_u16 v92, v88, s[28:31], 0 offen offset:140
	buffer_load_u16 v103, v88, s[28:31], 0 offen offset:144
	buffer_load_u16 v104, v88, s[28:31], 0 offen offset:148
	buffer_load_u16 v157, v88, s[28:31], 0 offen offset:152
	buffer_load_u16 v93, v88, s[28:31], 0 offen offset:156
	buffer_load_u16 v105, v88, s[28:31], 0 offen offset:160
	buffer_load_u16 v106, v88, s[28:31], 0 offen offset:164
	buffer_load_u16 v158, v88, s[28:31], 0 offen offset:168
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v56, v108, v159
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v108, v88, s[28:31], 0 offen offset:180
	buffer_load_u16 v159, v88, s[28:31], 0 offen offset:184
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v57, v109, v95
	v_fmac_f32_e32 v59, v107, v94
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x3
	buffer_load_u16 v94, v88, s[28:31], 0 offen offset:172
	buffer_load_u16 v107, v88, s[28:31], 0 offen offset:176
	buffer_load_u16 v95, v88, s[28:31], 0 offen offset:188
	buffer_load_u16 v109, v88, s[28:31], 0 offen offset:192
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v118, v87, v118
	v_mul_f32_e32 v120, v87, v120
	v_mul_f32_e32 v122, v87, v122
	v_mul_f32_e32 v123, v87, v123
	v_mul_f32_e32 v124, v87, v124
	v_mul_f32_e32 v125, v87, v125
	v_mul_f32_e32 v126, v87, v126
	v_mul_f32_e32 v127, v87, v127
	v_mul_f32_e32 v128, v87, v128
	v_mul_f32_e32 v129, v87, v129
	v_mul_f32_e32 v130, v87, v130
	v_mul_f32_e32 v131, v87, v131
	v_mul_f32_e32 v132, v87, v132
	v_mul_f32_e32 v133, v87, v133
	v_mul_f32_e32 v134, v87, v134
	v_mul_f32_e32 v135, v87, v135
	v_mul_f32_e32 v137, v87, v137
	v_mul_f32_e32 v139, v87, v139
	v_mul_f32_e32 v141, v87, v141
	s_waitcnt vmcnt(25)
	v_dual_mul_f32 v145, v87, v145 :: v_dual_lshlrev_b32 v98, 16, v98
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(24)
	v_dual_fmac_f32 v52, v112, v161 :: v_dual_lshlrev_b32 v163, 16, v163
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v112, v88, s[28:31], 0 offen offset:212
	buffer_load_u16 v161, v88, s[28:31], 0 offen offset:216
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(25)
	v_dual_fmac_f32 v54, v110, v160 :: v_dual_lshlrev_b32 v97, 16, v97
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v96, 16, v96
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v162, 16, v162
	s_clause 0x1
	buffer_load_u16 v110, v88, s[28:31], 0 offen offset:196
	buffer_load_u16 v160, v88, s[28:31], 0 offen offset:200
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v53, v113, v97
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v97, v88, s[28:31], 0 offen offset:220
	buffer_load_u16 v113, v88, s[28:31], 0 offen offset:224
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v55, v111, v96
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v96, v88, s[28:31], 0 offen offset:204
	buffer_load_u16 v111, v88, s[28:31], 0 offen offset:208
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v91, 16, v91
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v51, v115, v98 :: v_dual_fmac_f32 v48, v116, v163
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x4
	buffer_load_u16 v98, v88, s[28:31], 0 offen offset:236
	buffer_load_u16 v115, v88, s[28:31], 0 offen offset:240
	buffer_load_u16 v116, v88, s[28:31], 0 offen offset:244
	buffer_load_u16 v163, v88, s[28:31], 0 offen offset:248
	buffer_load_u16 v164, v88, s[28:31], 0 offen offset:252
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(31)
	v_dual_fmac_f32 v50, v114, v162 :: v_dual_lshlrev_b32 v99, 16, v99
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v114, v88, s[28:31], 0 offen offset:228
	buffer_load_u16 v162, v88, s[28:31], 0 offen offset:232
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v136, v87, v136
	v_mul_f32_e32 v138, v87, v138
	v_mul_f32_e32 v140, v87, v140
	v_mul_f32_e32 v142, v87, v142
	v_mul_f32_e32 v143, v87, v143
	v_mul_f32_e32 v144, v87, v144
	v_mul_f32_e32 v146, v87, v146
	v_mul_f32_e32 v147, v87, v147
	v_mul_f32_e32 v149, v87, v149
	v_mul_f32_e32 v150, v87, v150
	v_mul_f32_e32 v151, v87, v151
	v_dual_mul_f32 v152, v87, v152 :: v_dual_fmac_f32 v45, v121, v91
	v_dual_mul_f32 v153, v87, v153 :: v_dual_lshlrev_b32 v90, 16, v90
	v_mul_f32_e32 v148, v87, v148
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	buffer_load_b64 v[87:88], v154, s[24:27], 0 offen
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(33)
	v_lshlrev_b32_e32 v100, 16, v100
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v154, 16, v155
	v_lshlrev_b32_e32 v101, 16, v101
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v102, 16, v102
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v155, 16, v156
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v92, 16, v92
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v103, 16, v103
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v104, 16, v104
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v156, 16, v157
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v93, 16, v93
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v105, 16, v105
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v106, 16, v106
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v157, 16, v158
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v94, 16, v94
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v107, 16, v107
	v_lshlrev_b32_e32 v108, 16, v108
	v_lshlrev_b32_e32 v158, 16, v159
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v95, 16, v95
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v109, 16, v109
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v49, v117, v90 :: v_dual_fmac_f32 v46, v118, v99
	v_dual_fmac_f32 v39, v127, v104 :: v_dual_fmac_f32 v44, v120, v154
	v_fmac_f32_e32 v37, v129, v93
	v_dual_fmac_f32 v42, v122, v101 :: v_dual_fmac_f32 v35, v131, v106
	v_dual_fmac_f32 v40, v124, v155 :: v_dual_fmac_f32 v33, v133, v94
	v_dual_fmac_f32 v38, v126, v103 :: v_dual_fmac_f32 v31, v135, v108
	v_dual_fmac_f32 v36, v128, v156 :: v_dual_fmac_f32 v29, v137, v95
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v43, v123, v102
	v_fmac_f32_e32 v47, v119, v100
	v_fmac_f32_e32 v41, v125, v92
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_store_b8 v79, v89 offset:4096
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v80, v[87:88]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v110, 16, v110
	v_lshlrev_b32_e32 v159, 16, v160
	v_lshlrev_b32_e32 v96, 16, v96
	v_lshlrev_b32_e32 v111, 16, v111
	v_lshlrev_b32_e32 v112, 16, v112
	v_lshlrev_b32_e32 v160, 16, v161
	v_lshlrev_b32_e32 v97, 16, v97
	v_lshlrev_b32_e32 v113, 16, v113
	v_lshlrev_b32_e32 v114, 16, v114
	v_lshlrev_b32_e32 v161, 16, v162
	v_lshlrev_b32_e32 v98, 16, v98
	v_lshlrev_b32_e32 v115, 16, v115
	v_lshlrev_b32_e32 v116, 16, v116
	v_lshlrev_b32_e32 v162, 16, v163
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v34, v130, v105 :: v_dual_lshlrev_b32 v163, 16, v164
	v_dual_fmac_f32 v27, v139, v110 :: v_dual_fmac_f32 v32, v132, v157
	v_dual_fmac_f32 v25, v141, v96 :: v_dual_fmac_f32 v30, v134, v107
	v_dual_fmac_f32 v23, v143, v112 :: v_dual_fmac_f32 v28, v136, v158
	v_fmac_f32_e32 v21, v145, v97
	v_dual_fmac_f32 v26, v138, v109 :: v_dual_fmac_f32 v19, v147, v114
	v_dual_fmac_f32 v24, v140, v159 :: v_dual_fmac_f32 v17, v149, v98
	v_dual_fmac_f32 v22, v142, v111 :: v_dual_fmac_f32 v13, v152, v162
	v_dual_fmac_f32 v20, v144, v160 :: v_dual_fmac_f32 v15, v150, v115
	v_fmac_f32_e32 v18, v146, v113
	v_fmac_f32_e32 v16, v148, v161
	v_fmac_f32_e32 v14, v151, v116
	v_fmac_f32_e32 v12, v153, v163
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow519
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v2, s6, v76
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
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v142, 0
	v_mov_b32_e32 v144, 0
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
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v3, 24, v78
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v147, s11 :: v_dual_mov_b32 v144, s8
	v_dual_mov_b32 v146, s10 :: v_dual_mov_b32 v145, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_lshl_or_b32 v11, v76, 5, v3
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v143, s7 :: v_dual_mov_b32 v142, s6
	v_dual_mov_b32 v141, s5 :: v_dual_mov_b32 v140, s4
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v78, 0, v11
	v_xad_u32 v96, v11, 8, 0
	ds_load_2addr_stride64_b64 v[3:6], v78 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[7:10], v78 offset1:1
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[94:95], v78 offset:4096
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[111:114], v96 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[105:108], v96 offset1:1
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[180:181], v96 offset:4096
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_xad_u32 v79, v11, 24, 0
	v_xad_u32 v11, v11, 16, 0
	ds_load_2addr_stride64_b64 v[122:125], v11 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[115:118], v11 offset1:1
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[182:183], v11 offset:4096
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[156:159], v79 offset0:6 offset1:7
	ds_load_2addr_stride64_b64 v[160:163], v79 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[135:138], v79 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[126:129], v79 offset1:1
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_b64 v[184:185], v79 offset:4096
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[164:167], v78 offset0:6 offset1:7
	ds_load_2addr_stride64_b64 v[148:151], v78 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[172:175], v11 offset0:6 offset1:7
	ds_load_2addr_stride64_b64 v[176:179], v11 offset0:4 offset1:5
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(15)
	v_wmma_i32_16x16x16_iu4 v[78:85], v[7:8], v[94:95], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[9:10], v[94:95], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[3:4], v[94:95], v[140:147] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[7:10], v96 offset0:6 offset1:7
	ds_load_2addr_stride64_b64 v[168:171], v96 offset0:4 offset1:5
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(14)
	v_wmma_i32_16x16x16_iu4 v[86:93], v[107:108], v[180:181], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[78:85], v[105:106], v[180:181], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[111:112], v[180:181], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[5:6], v[94:95], v[140:147] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu4 v[86:93], v[117:118], v[182:183], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[78:85], v[115:116], v[182:183], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[122:123], v[182:183], v[97:104] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[116:123], v[148:149], v[94:95], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[128:129], v[184:185], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[113:114], v[180:181], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[135:136], v[184:185], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[150:151], v[94:95], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[148:155], v[164:165], v[94:95], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[140:147], v[166:167], v[94:95], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[124:125], v[182:183], v[105:112] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[116:123], v[168:169], v[180:181], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[170:171], v[180:181], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[148:155], v[7:8], v[180:181], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[140:147], v[9:10], v[180:181], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[78:85], v[126:127], v[184:185], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[116:123], v[176:177], v[182:183], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[178:179], v[182:183], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[148:155], v[172:173], v[182:183], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[140:147], v[174:175], v[182:183], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[137:138], v[184:185], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[116:123], v[160:161], v[184:185], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[162:163], v[184:185], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[148:155], v[156:157], v[184:185], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[140:147], v[158:159], v[184:185], v[140:147] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v4, v78
	v_cvt_f32_i32_e32 v5, v79
	v_cvt_f32_i32_e32 v8, v80
	v_cvt_f32_i32_e32 v9, v81
	v_cvt_f32_i32_e32 v6, v82
	v_cvt_f32_i32_e32 v7, v83
	v_cvt_f32_i32_e32 v10, v84
	v_cvt_f32_i32_e32 v11, v85
	v_cvt_f32_i32_e32 v79, v86
	v_cvt_f32_i32_e32 v80, v87
	v_cvt_f32_i32_e32 v85, v88
	v_cvt_f32_i32_e32 v88, v89
	v_cvt_f32_i32_e32 v82, v90
	v_cvt_f32_i32_e32 v81, v91
	v_cvt_f32_i32_e32 v86, v92
	v_cvt_f32_i32_e32 v89, v93
	v_cvt_f32_i32_e32 v87, v97
	v_cvt_f32_i32_e32 v90, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v96, v100
	v_cvt_f32_i32_e32 v83, v101
	v_cvt_f32_i32_e32 v84, v102
	v_cvt_f32_i32_e32 v92, v103
	v_cvt_f32_i32_e32 v91, v104
	v_cvt_f32_i32_e32 v93, v105
	v_cvt_f32_i32_e32 v97, v106
	v_cvt_f32_i32_e32 v100, v107
	v_cvt_f32_i32_e32 v101, v108
	v_cvt_f32_i32_e32 v94, v109
	v_cvt_f32_i32_e32 v98, v110
	v_cvt_f32_i32_e32 v102, v111
	v_cvt_f32_i32_e32 v103, v112
	v_cvt_f32_i32_e32 v104, v116
	v_cvt_f32_i32_e32 v105, v117
	v_cvt_f32_i32_e32 v114, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v107, v120
	v_cvt_f32_i32_e32 v106, v121
	v_cvt_f32_i32_e32 v115, v122
	v_cvt_f32_i32_e32 v122, v123
	v_cvt_f32_i32_e32 v118, v129
	v_cvt_f32_i32_e32 v123, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v128, v132
	v_cvt_f32_i32_e32 v110, v133
	v_cvt_f32_i32_e32 v111, v134
	v_cvt_f32_i32_e32 v125, v135
	v_cvt_f32_i32_e32 v124, v136
	v_cvt_f32_i32_e32 v126, v148
	v_cvt_f32_i32_e32 v129, v149
	v_cvt_f32_i32_e32 v132, v150
	v_cvt_f32_i32_e32 v133, v151
	v_cvt_f32_i32_e32 v127, v152
	v_cvt_f32_i32_e32 v130, v153
	v_cvt_f32_i32_e32 v134, v154
	v_cvt_f32_i32_e32 v136, v155
	v_cvt_f32_i32_e32 v137, v140
	v_cvt_f32_i32_e32 v138, v141
	v_cvt_f32_i32_e32 v141, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v140, v144
	v_cvt_f32_i32_e32 v139, v145
	v_cvt_f32_i32_e32 v142, v146
	v_cvt_f32_i32_e32 v144, v147
.LBB0_8:
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s0, s0, s19
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s9, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s18, s0
	s_mov_b32 s11, 0x31027000
	v_add_lshl_u32 v95, s0, v77, 1
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s8, s14
	.loc	1 245 18 is_stmt 1              ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v165, s19, v76
	s_mul_i32 s33, s33, s19
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v3, 4, v95
	v_cndmask_b32_e64 v77, 0x80000000, v95, s2
	v_add_nc_u32_e32 v78, 8, v95
	v_add_nc_u32_e32 v108, 12, v95
	v_add_nc_u32_e32 v112, 28, v95
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	buffer_load_u16 v146, v77, s[8:11], 0 offen
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	v_add_nc_u32_e32 v109, 16, v95
	v_cndmask_b32_e64 v108, 0x80000000, v108, s2
	buffer_load_u16 v148, v3, s[8:11], 0 offen
	v_add_nc_u32_e32 v77, 20, v95
	v_add_nc_u32_e32 v3, 24, v95
	v_cndmask_b32_e64 v112, 0x80000000, v112, s2
	s_clause 0x1
	buffer_load_u16 v150, v78, s[8:11], 0 offen
	buffer_load_u16 v151, v108, s[8:11], 0 offen
	v_add_nc_u32_e32 v113, 36, v95
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v109, 0x80000000, v109, s2
	v_add_nc_u32_e32 v120, 56, v95
	s_clause 0x3
	buffer_load_u16 v153, v77, s[8:11], 0 offen
	buffer_load_u16 v154, v112, s[8:11], 0 offen
	buffer_load_u16 v155, v3, s[8:11], 0 offen
	buffer_load_u16 v156, v109, s[8:11], 0 offen
	v_add_nc_u32_e32 v3, 60, v95
	v_add_nc_u32_e32 v108, 48, v95
	v_add_nc_u32_e32 v78, 40, v95
	v_add_nc_u32_e32 v116, 32, v95
	v_add_nc_u32_e32 v117, 44, v95
	v_cndmask_b32_e64 v77, 0x80000000, v113, s2
	v_cndmask_b32_e64 v113, 0x80000000, v120, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v108, 0x80000000, v108, s2
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	v_cndmask_b32_e64 v109, 0x80000000, v116, s2
	v_cndmask_b32_e64 v112, 0x80000000, v117, s2
	s_clause 0x6
	buffer_load_u16 v157, v77, s[8:11], 0 offen
	buffer_load_u16 v158, v113, s[8:11], 0 offen
	buffer_load_u16 v159, v3, s[8:11], 0 offen
	buffer_load_u16 v160, v108, s[8:11], 0 offen
	buffer_load_u16 v161, v78, s[8:11], 0 offen
	buffer_load_u16 v162, v109, s[8:11], 0 offen
	buffer_load_u16 v163, v112, s[8:11], 0 offen
	v_add_nc_u32_e32 v3, 52, v95
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, s11
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	buffer_load_u16 v164, v3, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v3.l, 0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v3.h, v2.l
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v2, 1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v193.h, v3.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v167, v4, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v4, 64, v95
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v166, v5, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v5, 0x44, v95
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v170, v6, v3
	v_mul_f32_e32 v149, v84, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v84, v129, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	s_clause 0x1
	buffer_load_u16 v184, v4, s[8:11], 0 offen
	buffer_load_u16 v185, v5, s[8:11], 0 offen
	v_add_nc_u32_e32 v4, 0x48, v95
	v_add_nc_u32_e32 v5, 0x4c, v95
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v6, v144, v3
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v144.h, v3.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v183, v90, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	s_clause 0x1
	buffer_load_u16 v187, v4, s[8:11], 0 offen
	buffer_load_u16 v188, v5, s[8:11], 0 offen
	v_add_nc_u32_e32 v4, 0x50, v95
	v_add_nc_u32_e32 v5, 0x54, v95
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v90, v128, v3
	v_mul_f32_e32 v113, v98, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v98, 0x64, v95
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	s_clause 0x1
	buffer_load_u16 v189, v4, s[8:11], 0 offen
	buffer_load_u16 v190, v5, s[8:11], 0 offen
	v_add_nc_u32_e32 v4, 0x58, v95
	v_add_nc_u32_e32 v5, 0x5c, v95
	v_cndmask_b32_e64 v98, 0x80000000, v98, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v173, v11, v3
	v_mul_f32_e32 v78, v136, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	s_clause 0x1
	buffer_load_u16 v128, v4, s[8:11], 0 offen
	buffer_load_u16 v129, v5, s[8:11], 0 offen
	v_add_nc_u32_e32 v4, 0x60, v95
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v11, v137, v3
	v_mul_f32_e32 v152, v99, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v99, 0x74, v95
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v168, v8, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	s_clause 0x1
	buffer_load_u16 v136, v4, s[8:11], 0 offen
	buffer_load_u16 v137, v98, s[8:11], 0 offen
	v_add_nc_u32_e32 v4, 0x68, v95
	v_add_nc_u32_e32 v98, 0x6c, v95
	v_cndmask_b32_e64 v99, 0x80000000, v99, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v176, v85, v3
	v_mul_f32_e32 v135, v92, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v98, 0x80000000, v98, s2
	s_clause 0x1
	buffer_load_u16 v191, v4, s[8:11], 0 offen
	buffer_load_u16 v192, v98, s[8:11], 0 offen
	v_add_nc_u32_e32 v98, 0x70, v95
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v108, v102, v3
	v_mul_f32_e32 v92, v123, v3
	v_mul_f32_e32 v85, v125, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v102, 0x78, v95
	v_cndmask_b32_e64 v98, 0x80000000, v98, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v109, v103, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v103, 0x7c, v95
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v194.h, v3.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v102, 0x80000000, v102, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v147, v83, v3
	v_mul_f32_e32 v83, v126, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v103, 0x80000000, v103, s2
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_add3_u32 v4, s33, s18, v165
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v172, v10, v3
	v_mul_f32_e32 v5, v142, v3
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v142.h, v3.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v181, v89, v3
	v_mul_f32_e32 v89, v131, v3
	v_mul_f32_e32 v169, v9, v3
	v_mul_f32_e32 v121, v97, v3
	v_mul_f32_e32 v97, v106, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v106, 0x80, v95
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v186, v96, v3
	v_mul_f32_e32 v96, v107, v3
	v_mul_f32_e32 v8, v140, v3
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v140.h, v3.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v179, v81, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v107, 0x84, v95
	v_cndmask_b32_e64 v106, 0x80000000, v106, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v171, v7, v3
	v_mul_f32_e32 v174, v79, v3
	v_mul_f32_e32 v116, v100, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v107, 0x80000000, v107, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v100, v114, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v114, 0x90, v95
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v120, v93, v3
	v_mul_f32_e32 v93, v115, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v115, 0x94, v95
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v145, v91, v3
	v_mul_f32_e32 v91, v118, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v118, 0x98, v95
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v117, v101, v3
	v_mul_f32_e32 v101, v119, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v119, 0x9c, v95
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v79, v127, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v127, 0xb8, v95
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v112, v94, v3
	v_mul_f32_e32 v94, v122, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v122, 0xa0, v95
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v178, v82, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v195, 0x80000000, v127, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v82, v133, v3
	v_mul_f32_e32 v7, v139, v3
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v133.h, v3.l
	v_mov_b16_e64 v139.h, v3.l
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_add_lshl_u32 v4, v4, v2, 1
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v104, v104, v3
	v_mul_f32_e32 v105, v105, v3
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_mov_b32 s18, s10
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v123, 16, v146
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v125, 16, v148
	s_clause 0x1
	buffer_load_u16 v146, v98, s[8:11], 0 offen
	buffer_load_u16 v148, v99, s[8:11], 0 offen
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v98, v167, v123, v75
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v81, v132, v3
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v126, 16, v151
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v132.h, v3.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v123, v166, v125, v74
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v151, v75, v98, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v98, 16, v150
	s_clause 0x1
	buffer_load_u16 v150, v102, s[8:11], 0 offen
	buffer_load_u16 v165, v103, s[8:11], 0 offen
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v131, 16, v154
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v154, 16, v155
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v102, v169, v126, v72
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v132.l, v151.h
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v175, v80, v3
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v98, v168, v98, v73
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v168, v106, s[8:11], 0 offen
	buffer_load_u16 v169, v107, s[8:11], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v9, v141, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v157, 16, v157
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v154, v172, v154, v69
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v141.h, v3.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v77, v134, v3
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v134.h, v3.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v162, 16, v162
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v131, v173, v131, v68
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v69, v69, v154, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v157, v175, v157, v66
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v175, v72, v102, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v126, 16, v153
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v154, v68, v131, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v80, v130, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v130, 16, v156
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v134.l, v175.h
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v177, v88, v3
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v141.l, v154.h
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v182, v87, v3
	v_mul_f32_e32 v87, v110, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v110, 0x88, v95
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v88, v111, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v111, 0x8c, v95
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v126, v171, v126, v70
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v106, 16, v163
	v_cndmask_b32_e64 v110, 0x80000000, v110, s2
	v_lshlrev_b32_e32 v161, 16, v161
	v_cndmask_b32_e64 v111, 0x80000000, v111, s2
	s_clause 0x1
	buffer_load_u16 v171, v110, s[8:11], 0 offen
	buffer_load_u16 v172, v111, s[8:11], 0 offen
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v107, v174, v162, v67
	v_fma_f32 v130, v170, v130, v71
	v_fma_f32 v163, v177, v106, v64
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v110, 0x80000000, v115, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v161, v176, v161, v65
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v177, v67, v107, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v107, 0x80000000, v114, s2
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v176, v71, v130, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v130, v107, s[8:11], 0 offen
	buffer_load_u16 v131, v110, s[8:11], 0 offen
	v_cndmask_b32_e64 v111, 0x80000000, v118, s2
	v_cndmask_b32_e64 v114, 0x80000000, v119, s2
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v70, v70, v126, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v126, v111, s[8:11], 0 offen
	buffer_load_u16 v127, v114, s[8:11], 0 offen
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v174, v73, v98, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v76, v138, v3
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v138.h, v3.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v99, 0xa8, v95
	v_add_nc_u32_e32 v125, 0xac, v95
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v138.l, v174.h
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v180, v86, v3
	v_mul_f32_e32 v86, v124, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v124, 0xa4, v95
	v_add_nc_u32_e32 v75, 0xb0, v95
	v_add_nc_u32_e32 v103, 0xb4, v95
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v173, v74, v123, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v74, 0xdc, v95
	v_add_nc_u32_e32 v73, 0xe0, v95
	v_add_nc_u32_e32 v72, 0xe4, v95
	v_add_nc_u32_e32 v71, 0xe8, v95
	v_add_nc_u32_e32 v68, 0xf4, v95
	v_add_nc_u32_e32 v67, 0xf8, v95
	v_add_nc_u32_e32 v153, 0xbc, v95
	v_add_nc_u32_e32 v155, 0xc0, v95
	v_add_nc_u32_e32 v156, 0xc4, v95
	v_add_nc_u32_e32 v166, 0xc8, v95
	v_add_nc_u32_e32 v167, 0xcc, v95
	v_add_nc_u32_e32 v162, 0xd0, v95
	v_add_nc_u32_e32 v106, 0xd4, v95
	v_add_nc_u32_e32 v170, 0xd8, v95
	v_add_nc_u32_e32 v98, 0xec, v95
	v_add_nc_u32_e32 v102, 0xf0, v95
	v_add_nc_u32_e32 v95, 0xfc, v95
	v_cndmask_b32_e64 v115, 0x80000000, v122, s2
	v_cndmask_b32_e64 v107, 0x80000000, v124, s2
	v_cndmask_b32_e64 v99, 0x80000000, v99, s2
	v_cndmask_b32_e64 v110, 0x80000000, v125, s2
	v_cndmask_b32_e64 v75, 0x80000000, v75, s2
	v_cndmask_b32_e64 v103, 0x80000000, v103, s2
	v_cndmask_b32_e64 v74, 0x80000000, v74, s2
	v_cndmask_b32_e64 v73, 0x80000000, v73, s2
	v_cndmask_b32_e64 v72, 0x80000000, v72, s2
	v_cndmask_b32_e64 v71, 0x80000000, v71, s2
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	v_cndmask_b32_e64 v67, 0x80000000, v67, s2
	v_cndmask_b32_e64 v153, 0x80000000, v153, s2
	v_cndmask_b32_e64 v155, 0x80000000, v155, s2
	v_cndmask_b32_e64 v156, 0x80000000, v156, s2
	v_cndmask_b32_e64 v166, 0x80000000, v166, s2
	v_cndmask_b32_e64 v167, 0x80000000, v167, s2
	v_cndmask_b32_e64 v162, 0x80000000, v162, s2
	v_cndmask_b32_e64 v196, 0x80000000, v106, s2
	v_cndmask_b32_e64 v170, 0x80000000, v170, s2
	v_cndmask_b32_e64 v197, 0x80000000, v98, s2
	v_cndmask_b32_e64 v198, 0x80000000, v102, s2
	v_cndmask_b32_e64 v199, 0x80000000, v95, s2
	s_clause 0x17
	buffer_load_u16 v124, v115, s[8:11], 0 offen
	buffer_load_u16 v125, v107, s[8:11], 0 offen
	buffer_load_u16 v122, v99, s[8:11], 0 offen
	buffer_load_u16 v123, v110, s[8:11], 0 offen
	buffer_load_u16 v118, v75, s[8:11], 0 offen
	buffer_load_u16 v119, v103, s[8:11], 0 offen
	buffer_load_u16 v114, v195, s[8:11], 0 offen
	buffer_load_u16 v115, v153, s[8:11], 0 offen
	buffer_load_u16 v110, v155, s[8:11], 0 offen
	buffer_load_u16 v111, v156, s[8:11], 0 offen
	buffer_load_u16 v106, v166, s[8:11], 0 offen
	buffer_load_u16 v107, v167, s[8:11], 0 offen
	buffer_load_u16 v102, v162, s[8:11], 0 offen
	buffer_load_u16 v103, v196, s[8:11], 0 offen
	buffer_load_u16 v98, v170, s[8:11], 0 offen
	buffer_load_u16 v99, v74, s[8:11], 0 offen
	buffer_load_u16 v75, v73, s[8:11], 0 offen
	buffer_load_u16 v95, v72, s[8:11], 0 offen
	buffer_load_u16 v73, v71, s[8:11], 0 offen
	buffer_load_u16 v74, v197, s[8:11], 0 offen
	buffer_load_u16 v72, v198, s[8:11], 0 offen
	buffer_load_u16 v71, v68, s[8:11], 0 offen
	buffer_load_u16 v67, v67, s[8:11], 0 offen
	buffer_load_u16 v68, v199, s[8:11], 0 offen
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v66, v66, v157, s2
	v_cndmask_b32_e64 v156, v64, v163, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v133.l, v173.h
	v_mov_b16_e64 v139.l, v70.h
	v_mov_b16_e64 v140.l, v176.h
	v_mov_b16_e64 v142.l, v69.h
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v10, v143, v3
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v143.h, v3.l
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v155, v65, v161, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v64, 1, v132
	v_mov_b16_e64 v143.l, v66.h
	v_mov_b16_e64 v193.l, v156.h
	v_and_b32_e32 v65, 1, v133
	v_and_b32_e32 v132, 1, v134
	v_and_b32_e32 v133, 1, v138
	v_and_b32_e32 v134, 1, v139
	v_and_b32_e32 v138, 1, v140
	v_and_b32_e32 v140, 1, v142
	v_and_b32_e32 v139, 1, v141
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(48)
	v_lshlrev_b32_e32 v153, 16, v164
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v151, v151
	v_cmp_o_f32_e64 s0, v173, v173
	v_cmp_o_f32_e64 s1, v175, v175
	v_cmp_o_f32_e64 s3, v174, v174
	v_cmp_o_f32_e64 s4, v70, v70
	v_cmp_o_f32_e64 s7, v69, v69
	v_mov_b16_e64 v144.l, v177.h
	v_add3_u32 v64, v151, v64, 0x7fff
	v_and_b32_e32 v141, 1, v143
	v_and_b32_e32 v143, 1, v193
	v_add3_u32 v65, v173, v65, 0x7fff
	v_add3_u32 v133, v174, v133, 0x7fff
	v_add3_u32 v132, v175, v132, 0x7fff
	v_add3_u32 v70, v70, v134, 0x7fff
	v_add3_u32 v134, v69, v140, 0x7fff
	v_add3_u32 v69, v154, v139, 0x7fff
	v_and_b32_e32 v142, 1, v144
	v_cndmask_b16 v64.l, 0x7fff, v64.h, vcc_lo
	v_cndmask_b16 v64.h, 0x7fff, v65.h, s0
	v_cndmask_b16 v65.h, 0x7fff, v132.h, s1
	v_cndmask_b16 v65.l, 0x7fff, v133.h, s3
	v_cndmask_b16 v69.l, 0x7fff, v134.h, s7
	v_add3_u32 v132, v156, v143, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v133, 16, v160
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v134, v179, v153, v63
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v156, v156
	v_cmp_o_f32_e64 s9, v177, v177
	v_mov_b16_e64 v194.l, v155.h
	v_add3_u32 v139, v177, v142, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v133, v178, v133, v62
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v134, v63, v134, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v63.h, 0x7fff, v132.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v132, 16, v159
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s5, v176, v176
	v_and_b32_e32 v144, 1, v194
	v_add3_u32 v138, v176, v138, 0x7fff
	v_cndmask_b16 v70.l, 0x7fff, v139.h, s9
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v62, v62, v133, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v133.l, v134.h
	v_mov_b16_e64 v133.h, v3.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v139, 16, v158
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v132, v181, v132, v61
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s8, v66, v66
	v_add3_u32 v140, v66, v141, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v138.h, s5
	v_add3_u32 v138, v155, v144, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v155, v155
	v_and_b32_e32 v133, 1, v133
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v139, v180, v139, v60
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v61, v61, v132, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v66.h, 0x7fff, v70.h, s4
	v_cndmask_b16 v70.h, 0x7fff, v140.h, s8
	v_mov_b16_e64 v140.l, v62.h
	v_mov_b16_e64 v140.h, v3.l
	v_cndmask_b16 v63.l, 0x7fff, v138.h, vcc_lo
	v_add3_u32 v133, v134, v133, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v138, v60, v139, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v60.l, v61.h
	v_mov_b16_e32 v60.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v134, v134
	v_and_b32_e32 v132, 1, v140
	v_mov_b16_e64 v134.l, v138.h
	v_mov_b16_e64 v134.h, v3.l
	v_and_b32_e32 v139, 1, v60
	v_cndmask_b16 v60.h, 0x7fff, v133.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(46)
	v_lshlrev_b32_e32 v133, 16, v185
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v132, v62, v132, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v62, v62
	v_and_b32_e32 v62, 1, v134
	v_add3_u32 v134, v61, v139, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v139, 16, v184
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v133, v183, v133, v59
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v61, v61
	v_cndmask_b16 v60.l, 0x7fff, v132.h, vcc_lo
	v_add3_u32 v61, v138, v62, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v62, v182, v139, v58
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v132, v59, v133, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(44)
	v_lshlrev_b32_e32 v133, 16, v188
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v59.h, 0x7fff, v134.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v134, 16, v187
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v58, v58, v62, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v62.l, v132.h
	v_mov_b16_e32 v62.h, v3.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v133, v186, v133, v57
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v138, v138
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v134, v152, v134, v56
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v138.l, v58.h
	v_and_b32_e32 v62, 1, v62
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v57, v57, v133, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v138.h, v3.l
	v_cndmask_b16 v59.l, 0x7fff, v61.h, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v133, v56, v134, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v62, v132, v62, 0x7fff
	v_mov_b16_e32 v56.l, v57.h
	v_mov_b16_e32 v56.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v132, v132
	v_and_b32_e32 v61, 1, v138
	v_mov_b16_e64 v132.l, v133.h
	v_mov_b16_e64 v132.h, v3.l
	v_and_b32_e32 v134, 1, v56
	v_cndmask_b16 v56.h, 0x7fff, v62.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(42)
	v_lshlrev_b32_e32 v62, 16, v190
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v61, v58, v61, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	v_and_b32_e32 v58, 1, v132
	v_add3_u32 v132, v57, v134, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v134, 16, v189
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v62, v149, v62, v55
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v57, v57
	v_cndmask_b16 v56.l, 0x7fff, v61.h, vcc_lo
	v_add3_u32 v57, v133, v58, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v58, v147, v134, v54
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v61, v55, v62, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v62, 16, v129
	v_lshlrev_b32_e32 v128, 16, v128
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v133, v133
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v54, v54, v58, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v58.l, v61.h
	v_mov_b16_e32 v58.h, v3.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v62, v145, v62, v53
	v_fma_f32 v128, v135, v128, v52
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e64 v129.l, v54.h
	v_mov_b16_e64 v129.h, v3.l
	v_and_b32_e32 v58, 1, v58
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v53, v53, v62, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v55.l, 0x7fff, v57.h, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v62, v52, v128, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v52.h, v3.l
	v_add3_u32 v58, v61, v58, 0x7fff
	v_mov_b16_e32 v52.l, v53.h
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	v_and_b32_e32 v57, 1, v129
	v_mov_b16_e32 v61.l, v62.h
	v_mov_b16_e32 v61.h, v3.l
	v_and_b32_e32 v128, 1, v52
	v_cndmask_b16 v52.h, 0x7fff, v58.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(38)
	v_lshlrev_b32_e32 v58, 16, v137
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v57, v54, v57, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	v_and_b32_e32 v54, 1, v61
	v_add3_u32 v61, v53, v128, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v128, 16, v136
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v58, v121, v58, v51
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v55.h, 0x7fff, v132.h, s0
	v_cmp_o_f32_e64 s0, v53, v53
	v_cndmask_b16 v52.l, 0x7fff, v57.h, vcc_lo
	v_add3_u32 v53, v62, v54, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v54, v120, v128, v50
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v57, v51, v58, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(36)
	v_lshlrev_b32_e32 v58, 16, v192
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v51.h, 0x7fff, v61.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v61, 16, v191
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v50, v50, v54, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v54.l, v57.h
	v_mov_b16_e32 v54.h, v3.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v58, v117, v58, v49
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v62, v62
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v61, v116, v61, v48
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v62.l, v50.h
	v_and_b32_e32 v54, 1, v54
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v49, v49, v58, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v62.h, v3.l
	v_cndmask_b16 v51.l, 0x7fff, v53.h, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v58, v48, v61, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v54, v57, v54, 0x7fff
	v_mov_b16_e32 v48.l, v49.h
	v_mov_b16_e32 v48.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	v_and_b32_e32 v53, 1, v62
	v_mov_b16_e32 v57.l, v58.h
	v_mov_b16_e32 v57.h, v3.l
	v_and_b32_e32 v61, 1, v48
	v_cndmask_b16 v48.h, 0x7fff, v54.h, vcc_lo
	v_add3_u32 v53, v50, v53, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_and_b32_e32 v50, 1, v57
	v_add3_u32 v57, v49, v61, 0x7fff
	v_cmp_o_f32_e64 s0, v49, v49
	v_cmp_o_f32_e64 s6, v154, v154
	v_cndmask_b16 v48.l, 0x7fff, v53.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(35)
	v_lshlrev_b32_e32 v61, 16, v146
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v54, 16, v148
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v49, v58, v50, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	v_mov_b16_e32 v58.h, v3.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v50, v112, v61, v46
	v_fma_f32 v54, v113, v54, v47
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v69.h, 0x7fff, v69.h, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v46, v46, v50, s2
	v_cndmask_b32_e64 v53, v47, v54, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v54, 16, v165
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v47.h, 0x7fff, v57.h, s0
	v_mov_b16_e32 v50.h, v3.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v57, 16, v150
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v50.l, v53.h
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v54, v109, v54, v45
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v58.l, v46.h
	v_cndmask_b16 v47.l, 0x7fff, v49.h, vcc_lo
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v57, v108, v57, v44
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v50, 1, v50
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v45, v45, v54, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_and_b32_e32 v49, 1, v58
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v54, v44, v57, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v50, v53, v50, 0x7fff
	v_mov_b16_e32 v44.l, v45.h
	v_mov_b16_e32 v44.h, v3.l
	v_add3_u32 v49, v46, v49, 0x7fff
	v_mov_b16_e32 v53.l, v54.h
	v_mov_b16_e32 v53.h, v3.l
	v_cmp_o_f32_e64 s0, v45, v45
	v_and_b32_e32 v57, 1, v44
	v_cndmask_b16 v44.h, 0x7fff, v50.h, vcc_lo
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v50, 16, v169
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_and_b32_e32 v46, 1, v53
	v_add3_u32 v53, v45, v57, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v57, 16, v168
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v50, v105, v50, v43
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v44.l, 0x7fff, v49.h, vcc_lo
	v_add3_u32 v45, v54, v46, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v46, v104, v57, v42
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v49, v43, v50, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v43.h, 0x7fff, v53.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v53, 16, v171
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v50, 16, v172
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v42, v42, v46, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v46.l, v49.h
	v_mov_b16_e32 v46.h, v3.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v53, v100, v53, v40
	v_fma_f32 v50, v101, v50, v41
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v54.l, v42.h
	v_mov_b16_e32 v54.h, v3.l
	v_and_b32_e32 v46, 1, v46
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v40, v40, v53, s2
	v_cndmask_b32_e64 v41, v41, v50, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v50.h, v3.l
	v_cndmask_b16 v43.l, 0x7fff, v45.h, vcc_lo
	v_and_b32_e32 v45, 1, v54
	v_add3_u32 v46, v49, v46, 0x7fff
	v_mov_b16_e32 v50.l, v41.h
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_mov_b16_e32 v49.l, v40.h
	v_mov_b16_e32 v49.h, v3.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v53, 16, v131
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v45, v42, v45, 0x7fff
	v_cndmask_b16 v46.h, 0x7fff, v46.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_and_b32_e32 v42, 1, v49
	v_add3_u32 v49, v41, v50, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v50, 16, v130
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v53, v97, v53, v39
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v41, v41
	v_cndmask_b16 v46.l, 0x7fff, v45.h, vcc_lo
	v_add3_u32 v41, v40, v42, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v42, v96, v50, v38
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v39, v39, v53, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v40, 16, v127
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v45.h, 0x7fff, v49.h, s0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v38, v38, v42, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v42.l, v39.h
	v_mov_b16_e32 v42.h, v3.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v49, 16, v126
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v40, v94, v40, v37
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v50.l, v38.h
	v_mov_b16_e32 v50.h, v3.l
	v_and_b32_e32 v42, 1, v42
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v49, v93, v49, v36
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v37, v37, v40, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v45.l, 0x7fff, v41.h, vcc_lo
	v_and_b32_e32 v40, 1, v50
	v_add3_u32 v41, v39, v42, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v36, v36, v49, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v42.l, v37.h
	v_mov_b16_e32 v42.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_add3_u32 v39, v38, v40, 0x7fff
	v_mov_b16_e32 v40.l, v36.h
	v_mov_b16_e32 v40.h, v3.l
	v_and_b32_e32 v42, 1, v42
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v49, 16, v125
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v41.h, 0x7fff, v41.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	v_and_b32_e32 v38, 1, v40
	v_add3_u32 v40, v37, v42, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v42, 16, v124
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v49, v92, v49, v35
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v37, v37
	v_cndmask_b16 v41.l, 0x7fff, v39.h, vcc_lo
	v_add3_u32 v37, v36, v38, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v38, v91, v42, v34
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v35, v35, v49, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v36, 16, v123
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v39.h, 0x7fff, v40.h, s0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v34, v34, v38, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v38.l, v35.h
	v_mov_b16_e32 v38.h, v3.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v40, 16, v122
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v36, v90, v36, v33
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v42.l, v34.h
	v_mov_b16_e32 v42.h, v3.l
	v_and_b32_e32 v38, 1, v38
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v40, v89, v40, v32
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v33, v33, v36, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v39.l, 0x7fff, v37.h, vcc_lo
	v_and_b32_e32 v36, 1, v42
	v_add3_u32 v37, v35, v38, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v32, v32, v40, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v38.l, v33.h
	v_mov_b16_e32 v38.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	v_add3_u32 v35, v34, v36, 0x7fff
	v_mov_b16_e32 v36.l, v32.h
	v_mov_b16_e32 v36.h, v3.l
	v_and_b32_e32 v38, 1, v38
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v40, 16, v119
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v37.h, 0x7fff, v37.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	v_and_b32_e32 v34, 1, v36
	v_add3_u32 v36, v33, v38, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v38, 16, v118
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v40, v88, v40, v31
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v33, v33
	v_cndmask_b16 v37.l, 0x7fff, v35.h, vcc_lo
	v_add3_u32 v33, v32, v34, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v34, v87, v38, v30
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v31, v31, v40, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v32, 16, v115
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v35.h, 0x7fff, v36.h, s0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v30, v30, v34, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v34.l, v31.h
	v_mov_b16_e32 v34.h, v3.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v36, 16, v114
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v32, v86, v32, v29
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v38.l, v30.h
	v_mov_b16_e32 v38.h, v3.l
	v_and_b32_e32 v34, 1, v34
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v36, v85, v36, v28
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v29, v29, v32, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v35.l, 0x7fff, v33.h, vcc_lo
	v_and_b32_e32 v32, 1, v38
	v_add3_u32 v33, v31, v34, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v28, v28, v36, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v34.l, v29.h
	v_mov_b16_e32 v34.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	v_add3_u32 v31, v30, v32, 0x7fff
	v_mov_b16_e32 v32.l, v28.h
	v_mov_b16_e32 v32.h, v3.l
	v_and_b32_e32 v34, 1, v34
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v36, 16, v111
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v33.h, 0x7fff, v33.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_and_b32_e32 v30, 1, v32
	v_add3_u32 v32, v29, v34, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v34, 16, v110
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v36, v84, v36, v27
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v29, v29
	v_cndmask_b16 v33.l, 0x7fff, v31.h, vcc_lo
	v_add3_u32 v29, v28, v30, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v30, v83, v34, v26
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v27, v27, v36, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v28, 16, v107
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v31.h, 0x7fff, v32.h, s0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v26, v26, v30, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v30.l, v27.h
	v_mov_b16_e32 v30.h, v3.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v32, 16, v106
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v28, v82, v28, v25
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v34.l, v26.h
	v_mov_b16_e32 v34.h, v3.l
	v_and_b32_e32 v30, 1, v30
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v32, v81, v32, v24
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v25, v25, v28, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v31.l, 0x7fff, v29.h, vcc_lo
	v_and_b32_e32 v28, 1, v34
	v_add3_u32 v29, v27, v30, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v24, v24, v32, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v30.l, v25.h
	v_mov_b16_e32 v30.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_add3_u32 v27, v26, v28, 0x7fff
	v_mov_b16_e32 v28.l, v24.h
	v_mov_b16_e32 v28.h, v3.l
	v_and_b32_e32 v30, 1, v30
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v32, 16, v103
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v29.h, 0x7fff, v29.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_and_b32_e32 v26, 1, v28
	v_add3_u32 v28, v25, v30, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v30, 16, v102
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v32, v80, v32, v23
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v25, v25
	v_cndmask_b16 v29.l, 0x7fff, v27.h, vcc_lo
	v_add3_u32 v25, v24, v26, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v26, v79, v30, v22
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v23, v23, v32, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v24, 16, v99
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v22, v22, v26, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v26.l, v23.h
	v_mov_b16_e32 v26.h, v3.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v28, 16, v98
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v24, v78, v24, v21
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v30.l, v22.h
	v_mov_b16_e32 v30.h, v3.l
	v_and_b32_e32 v26, 1, v26
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v28, v77, v28, v20
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v21, v21, v24, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v27.l, 0x7fff, v25.h, vcc_lo
	v_and_b32_e32 v24, 1, v30
	v_add3_u32 v25, v23, v26, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v20, v28, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v26.l, v21.h
	v_mov_b16_e32 v26.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_add3_u32 v23, v22, v24, 0x7fff
	v_mov_b16_e32 v24.l, v20.h
	v_mov_b16_e32 v24.h, v3.l
	v_and_b32_e32 v26, 1, v26
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v28, 16, v95
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v25.h, 0x7fff, v25.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_and_b32_e32 v22, 1, v24
	v_add3_u32 v24, v21, v26, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v26, 16, v75
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v28, v76, v28, v19
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v21, v21
	v_cndmask_b16 v25.l, 0x7fff, v23.h, vcc_lo
	v_add3_u32 v21, v20, v22, 0x7fff
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v11, v11, v26, v18
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v19, v19, v28, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v23, 16, v74
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v20, 16, v73
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v11, v18, v11, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v18.l, v19.h
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v10, v10, v23, v17
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v18.h, v3.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v9, v9, v20, v16
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v23.l, v11.h
	v_mov_b16_e32 v23.h, v3.l
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v10, v17, v10, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v17, 1, v18
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v16, v9, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v22.l, 0x7fff, v21.h, vcc_lo
	v_and_b32_e32 v18, 1, v23
	v_mov_b16_e32 v16.l, v10.h
	v_mov_b16_e32 v16.h, v3.l
	v_add3_u32 v17, v19, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_mov_b16_e32 v19.l, v9.h
	v_mov_b16_e32 v19.h, v3.l
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v18, v11, v18, 0x7fff
	v_cndmask_b16 v17.h, 0x7fff, v17.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_and_b32_e32 v11, 1, v19
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s0
	v_add3_u32 v16, v10, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v10, v10
	v_cndmask_b16 v17.l, 0x7fff, v18.h, vcc_lo
	v_add3_u32 v10, v9, v11, 0x7fff
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v11, 16, v71
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v18, 16, v67
	v_lshlrev_b32_e32 v19, 16, v72
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v3.h, 0x7fff, v16.h, s0
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v68
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v7, v7, v11, v14
	v_fma_f32 v5, v5, v18, v13
	v_fma_f32 v8, v8, v19, v15
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v11.h, v3.l
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v7, v14, v7, s2
	v_cndmask_b32_e64 v5, v13, v5, s2
	v_cndmask_b32_e64 v8, v15, v8, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v6, v6, v16, v12
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v13.h, v3.l
	v_mov_b16_e32 v11.l, v7.h
	v_mov_b16_e32 v13.l, v5.h
	v_mov_b16_e32 v9.l, v8.h
	v_mov_b16_e32 v9.h, v3.l
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v6, v12, v6, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v11, 1, v11
	v_mov_b16_e32 v12.h, v3.l
	v_cndmask_b16 v3.l, 0x7fff, v10.h, vcc_lo
	v_and_b32_e32 v10, 1, v13
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_add3_u32 v11, v7, v11, 0x7fff
	v_mov_b16_e32 v12.l, v6.h
	v_cmp_o_f32_e64 s2, v5, v5
	v_add3_u32 v7, v5, v10, 0x7fff
	v_cmp_o_f32_e64 s0, v8, v8
	v_cndmask_b16 v5.h, 0x7fff, v11.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	v_and_b32_e32 v9, 1, v9
	v_and_b32_e32 v12, 1, v12
	v_cmp_o_f32_e64 s1, v6, v6
	v_cndmask_b16 v1.l, 0x7fff, v7.h, s2
	v_cndmask_b32_e32 v16, v51, v55, vcc_lo
	v_add3_u32 v9, v8, v9, 0x7fff
	v_add3_u32 v8, v6, v12, 0x7fff
	v_dual_cndmask_b32 v7, v64, v66 :: v_dual_cndmask_b32 v32, v33, v37
	v_cndmask_b32_e32 v33, v37, v33, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v5.l, 0x7fff, v9.h, s0
	v_cndmask_b16 v1.h, 0x7fff, v8.h, s1
	v_cndmask_b32_e32 v36, v22, v27, vcc_lo
	v_dual_cndmask_b32 v22, v27, v22 :: v_dual_mov_b32 v27, 0x7632
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v37, v5, v17, vcc_lo
	v_cndmask_b32_e32 v5, v17, v5, vcc_lo
	v_mov_b32_e32 v17, 0x5410
	s_mov_b32 s0, 0x76543210
	v_dual_cndmask_b32 v38, v1, v3 :: v_dual_cndmask_b32 v1, v3, v1
	v_permlanex16_b32 v3, v7, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v7, 0x1054, v17, vcc_lo
	v_dual_cndmask_b32 v17, 0x3276, v27 :: v_dual_cndmask_b32 v6, v66, v64
	v_cndmask_b32_e32 v28, v39, v45, vcc_lo
	v_cndmask_b32_e32 v34, v31, v35, vcc_lo
	v_lshl_or_b32 v7, v7, 8, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v17, v17, 8, v17
	v_cndmask_b32_e32 v18, v55, v51, vcc_lo
	v_cndmask_b32_e32 v31, v35, v31, vcc_lo
	v_cndmask_b32_e32 v35, v25, v29, vcc_lo
	v_and_b32_e32 v7, 0x540054, v7
	v_and_b32_e32 v17, 0x760076, v17
	v_cndmask_b32_e32 v25, v29, v25, vcc_lo
	v_permlanex16_b32 v29, v33, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v9, v65, v69, vcc_lo
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v17, v17, 4, v17
	v_dual_cndmask_b32 v30, v45, v39 :: v_dual_cndmask_b32 v11, v70, v60
	v_cndmask_b32_e32 v13, v63, v59, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v33, 0x5040504, v7
	v_and_b32_e32 v39, 0x7060706, v17
	v_cndmask_b32_e32 v15, v56, v52, vcc_lo
	v_dual_cndmask_b32 v20, v48, v44 :: v_dual_cndmask_b32 v23, v47, v43
	v_cndmask_b32_e32 v26, v46, v41, vcc_lo
	v_cndmask_b32_e32 v24, v41, v46, vcc_lo
	v_permlanex16_b32 v41, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v5, v3, v6, v33
	v_perm_b32 v6, v3, v6, v39
	v_dual_cndmask_b32 v8, v69, v65 :: v_dual_and_b32 v3, 0x1e0, v0
	v_cndmask_b32_e32 v10, v60, v70, vcc_lo
	v_cndmask_b32_e32 v12, v59, v63, vcc_lo
	v_cndmask_b32_e32 v14, v52, v56, vcc_lo
	v_cndmask_b32_e32 v19, v44, v48, vcc_lo
	v_cndmask_b32_e32 v21, v43, v47, vcc_lo
	v_permlanex16_b32 v9, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v31, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v22, s0, 0xfedcba98 op_sel:[1,0]
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
	v_perm_b32 v17, v20, v19, v33
	v_perm_b32 v18, v20, v19, v39
	v_perm_b32 v19, v23, v21, v33
	v_perm_b32 v20, v23, v21, v39
	v_perm_b32 v21, v26, v24, v33
	v_perm_b32 v22, v26, v24, v39
	v_perm_b32 v23, v27, v28, v33
	v_perm_b32 v24, v27, v28, v39
	v_perm_b32 v25, v29, v32, v33
	v_perm_b32 v26, v29, v32, v39
	v_perm_b32 v27, v30, v34, v33
	v_perm_b32 v28, v30, v34, v39
	v_perm_b32 v29, v31, v35, v33
	v_perm_b32 v30, v31, v35, v39
	v_perm_b32 v31, v40, v36, v33
	v_perm_b32 v0, v41, v37, v33
	v_perm_b32 v2, v42, v38, v33
	v_add_nc_u32_e32 v33, 64, v4
	v_dual_cndmask_b32 v34, 0x80000000, v4 :: v_dual_cndmask_b32 v35, 0x80000000, v3
	v_perm_b32 v32, v40, v36, v39
	v_perm_b32 v1, v41, v37, v39
	s_delay_alu instid0(VALU_DEP_4)
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
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	v_perm_b32 v3, v42, v38, v39
	s_delay_alu instid0(VALU_DEP_4)
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 200
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 200
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12344
; TotalNumSgprs: 54
; NumVgprs: 200
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 54
; NumVGPRsForWavesPerEU: 200
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_bm16_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     200
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
