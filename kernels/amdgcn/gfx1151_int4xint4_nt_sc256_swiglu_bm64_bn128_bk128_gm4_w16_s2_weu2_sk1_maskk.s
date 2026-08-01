	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b32 s16, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s7, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v2, 4, v0
	v_lshrrev_b32_e32 v64, 1, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s14, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 116 24 is_stmt 1              ; generate_amdgcn.py:116:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 118 19                        ; generate_amdgcn.py:118:19
	s_lshl_b32 s6, s5, 2
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s5, s4
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s7, s8, s6
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s4, s2, s5
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s7, s7, 4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s5, s4
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s2, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_xor_b32 s2, s4, s7
	s_mul_hi_u32 s9, s5, s9
	s_ashr_i32 s2, s2, 31
	s_mul_i32 s10, s9, s8
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s9, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s9, s10, s9
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s9, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s5, s10, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s20, s16, 0xff
.Ltmp13:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s17, s5, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s24, s17, s2
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s5, s24, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s5
	s_mov_b32 s5, 0
	.loc	1 120 13 is_stmt 0              ; generate_amdgcn.py:120:13
	s_add_i32 s4, s4, s6
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s20, 0xff
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v1, 1, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow230
	s_load_b64 s[12:13], s[0:1], 0x20
	v_dual_mov_b32 v30, 0 :: v_dual_and_b32 v59, 15, v0
	v_dual_mov_b32 v31, 0 :: v_dual_and_b32 v60, 16, v2
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v56, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s14, s4, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s36, 0
	v_dual_mov_b32 v56, 0 :: v_dual_and_b32 v3, 0xe0, v0
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	.loc	1 126 32 is_stmt 1              ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v2, 3, v0
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s0, s16, 31
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s1, s20, 31
.Ltmp15:
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s21, s3, 6
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v1, 56, v2
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s16, s16, s0
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s0, s1, 24
	v_lshlrev_b32_e32 v10, 5, v3
.Ltmp17:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshl_or_b32 v3, s17, 8, v3
	v_or_b32_e32 v22, s21, v1
	v_add3_u32 v21, s14, v60, v59
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s20, s20, s0
.Ltmp19:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v4, 3, v0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s20, 8
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v25, 64, v22
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v22
.Ltmp21:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshl_add_u32 v22, s15, 1, v3
	v_add_nc_u32_e32 v24, 32, v21
	v_mul_lo_u32 v21, s3, v21
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s1, s16, 1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_lshl_b32 s16, s2, 8
	v_and_b32_e32 v5, 56, v64
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v8, 64, v4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_subrev_nc_u32_e32 v67, s16, v22
	v_subrev_nc_u32_e32 v68, s16, v3
	s_lshl_b32 s16, s17, 7
	v_xor_b32_e32 v2, v2, v5
	s_add_i32 s17, s15, s16
	v_dual_mov_b32 v61, 0 :: v_dual_lshlrev_b32 v70, 1, v21
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v3, s14, v4
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v21, s17, v8
	v_lshlrev_b32_e32 v6, 6, v59
	v_lshlrev_b32_e32 v7, 2, v0
	s_lshl_b32 s2, s2, 7
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v22, s17, v4
	v_cmp_gt_i32_e64 s0, 0x80, v25
	v_mad_u64_u32 v[25:26], null, s1, v3, v[1:2]
	v_subrev_nc_u32_e32 v3, s2, v21
	v_or_b32_e32 v8, s16, v8
	v_and_or_b32 v9, 0x438, v7, v6
	v_and_b32_e32 v7, 56, v7
	v_dual_mov_b32 v63, 0 :: v_dual_and_b32 v66, 2, v4
	v_or_b32_e32 v4, s16, v4
	v_subrev_nc_u32_e32 v21, s2, v22
	v_mad_u64_u32 v[26:27], null, s1, v3, v[1:2]
	v_subrev_nc_u32_e32 v3, s2, v8
	v_xor_b32_e32 v5, 8, v9
	v_or3_b32 v6, v10, v7, v6
	v_xor_b32_e32 v7, 32, v9
	v_subrev_nc_u32_e32 v4, s2, v4
	v_mad_u64_u32 v[27:28], null, s1, v21, v[1:2]
	v_mad_u64_u32 v[28:29], null, s1, v3, v[1:2]
	v_xor_b32_e32 v15, 8, v6
	v_xor_b32_e32 v16, 16, v6
	v_xor_b32_e32 v17, 24, v6
	v_xor_b32_e32 v18, 32, v6
	v_xor_b32_e32 v19, 40, v6
	v_xor_b32_e32 v20, 48, v6
	v_xor_b32_e32 v23, 56, v6
	v_sub_nc_u32_e32 v65, s1, v1
	v_mad_u64_u32 v[29:30], null, s1, v4, v[1:2]
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v71, 0, v2
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v73, 0, v5
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v76, 0, v7
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v80, 0, v6
	v_mov_b32_e32 v1, s36
	v_mov_b32_e32 v7, s42
	v_mul_lo_u32 v24, s3, v24
	v_xor_b32_e32 v11, 16, v9
	v_xor_b32_e32 v12, 24, v9
	v_xor_b32_e32 v10, 40, v9
	v_xor_b32_e32 v13, 48, v9
	v_xor_b32_e32 v14, 56, v9
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v72, 0, v9
	v_dual_mov_b32 v52, 0 :: v_dual_lshlrev_b32 v69, 1, v24
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v74, 0, v11
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v75, 0, v12
	v_dual_mov_b32 v44, 0 :: v_dual_add_nc_u32 v77, 0, v10
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v78, 0, v13
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v79, 0, v14
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v81, 0, v15
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v82, 0, v16
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v83, 0, v17
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v84, 0, v18
	v_dual_mov_b32 v40, 0 :: v_dual_add_nc_u32 v85, 0, v19
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v86, 0, v20
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v87, 0, v23
	v_dual_mov_b32 v2, s37 :: v_dual_mov_b32 v3, s38
	v_dual_mov_b32 v4, s39 :: v_dual_mov_b32 v5, s40
	v_mov_b32_e32 v6, s41
	v_dual_mov_b32 v8, s43 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v39, 0
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v31, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s25, s15, 2
	s_add_i32 s26, s21, 64
	s_mov_b32 s16, s8
	s_mov_b32 s17, s9
	s_mov_b32 s20, s4
	s_mov_b32 s21, s5
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s4, s6
	s_mov_b32 s5, s7
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v88, v70, s[16:19], 0 offen
	buffer_load_u16 v89, v69, s[16:19], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	s_sub_i32 s2, s26, 64
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add_nc_u32_e32 v116, s26, v29
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s1, s26, v65
	v_cmp_lt_i32_e64 s2, s2, v65
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	v_add_nc_u32_e32 v119, s26, v26
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s3, s3, -1
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_subrev_nc_u32_e32 v11, 64, v116
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s1, s1, s0
	s_and_b32 s2, s2, vcc_lo
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	v_subrev_nc_u32_e32 v14, 64, v119
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v69, 2, v69
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v70, 2, v70
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	v_cndmask_b32_e64 v17, 0x80000000, v14, s2
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v89, 16, v89
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v9, s26, v25
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_lshlrev_b32_e32 v88, 16, v88
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v117, s26, v28
	.loc	1 225 29                        ; generate_amdgcn.py:225:29
	v_add_nc_u32_e32 v118, s26, v27
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_addk_i32 s26, 0x80
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_subrev_nc_u32_e32 v10, 64, v9
	v_cndmask_b32_e64 v19, 0x80000000, v9, s1
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_subrev_nc_u32_e32 v12, 64, v117
	.loc	1 225 29                        ; generate_amdgcn.py:225:29
	v_subrev_nc_u32_e32 v13, 64, v118
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s3, 0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e64 v9, 0x80000000, v10, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_cndmask_b32_e64 v15, 0x80000000, v12, s2
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	v_cndmask_b32_e64 v16, 0x80000000, v13, s2
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b64 v[9:10], v9, s[20:23], 0 offen
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_clause 0x3
	buffer_load_b64 v[11:12], v11, s[4:7], 0 offen
	buffer_load_b64 v[13:14], v15, s[4:7], 0 offen
	buffer_load_b64 v[15:16], v16, s[4:7], 0 offen
	buffer_load_b64 v[17:18], v17, s[4:7], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_b64 v[114:115], v19, s[20:23], 0 offen
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(3)
	ds_store_2addr_stride64_b64 v71, v[11:12], v[13:14] offset1:8
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_store_b64 v71, v[9:10] offset:16384
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	s_waitcnt vmcnt(1)
	ds_store_2addr_stride64_b64 v71, v[15:16], v[17:18] offset0:16 offset1:24
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[104:107], v72 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[108:111], v80 offset1:16
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[108:109], v[104:105], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[108:109], v[106:107], v[1:8] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[110:111], v[104:105], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[110:111], v[106:107], v[1:8] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[106:109], v73 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[110:113], v81 offset1:16
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[110:111], v[106:107], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[110:111], v[108:109], v[90:97] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[106:107], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[112:113], v[108:109], v[98:105] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[106:109], v74 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[110:113], v82 offset1:16
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[110:111], v[106:107], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[110:111], v[108:109], v[90:97] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[106:107], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[112:113], v[108:109], v[98:105] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[106:109], v75 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[110:113], v83 offset1:16
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[110:111], v[106:107], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[110:111], v[108:109], v[90:97] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[106:107], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[112:113], v[108:109], v[98:105] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[106:109], v76 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[110:113], v84 offset1:16
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[110:111], v[106:107], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[110:111], v[108:109], v[90:97] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[106:107], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[112:113], v[108:109], v[98:105] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[106:109], v77 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[110:113], v85 offset1:16
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[110:111], v[106:107], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[110:111], v[108:109], v[90:97] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[106:107], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[112:113], v[108:109], v[98:105] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[106:109], v78 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[110:113], v86 offset1:16
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[110:111], v[106:107], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[110:111], v[108:109], v[90:97] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[106:107], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[112:113], v[108:109], v[98:105] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[106:109], v79 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[110:113], v87 offset1:16
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[110:111], v[106:107], v[9:16] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[106:107], v[17:24] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_cndmask_b32_e64 v106, 0x80000000, v116, s1
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[90:97], v[110:111], v[108:109], v[90:97] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[98:105], v[112:113], v[108:109], v[98:105] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_cndmask_b32_e64 v108, 0x80000000, v117, s1
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	v_cndmask_b32_e64 v110, 0x80000000, v118, s1
	v_cndmask_b32_e64 v112, 0x80000000, v119, s1
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_clause 0x3
	buffer_load_b64 v[106:107], v106, s[4:7], 0 offen
	buffer_load_b64 v[108:109], v108, s[4:7], 0 offen
	buffer_load_b64 v[110:111], v110, s[4:7], 0 offen
	buffer_load_b64 v[112:113], v112, s[4:7], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b64 v71, v[114:115] offset:16384
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b64 v71, v[106:107], v[108:109] offset1:8
	.loc	1 224 35                        ; generate_amdgcn.py:224:35
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v71, v[110:111], v[112:113] offset0:16 offset1:24
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[106:109], v72 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[110:113], v80 offset1:16
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[110:111], v[106:107], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[110:111], v[108:109], v[90:97] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[106:107], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[112:113], v[108:109], v[98:105] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[106:109], v73 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[110:113], v81 offset1:16
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[110:111], v[106:107], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[110:111], v[108:109], v[90:97] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[106:107], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[112:113], v[108:109], v[98:105] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[106:109], v74 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[110:113], v82 offset1:16
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[110:111], v[106:107], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[110:111], v[108:109], v[90:97] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[106:107], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[112:113], v[108:109], v[98:105] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[106:109], v75 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[110:113], v83 offset1:16
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[110:111], v[106:107], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[110:111], v[108:109], v[90:97] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[106:107], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[112:113], v[108:109], v[98:105] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[106:109], v76 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[110:113], v84 offset1:16
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[110:111], v[106:107], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[110:111], v[108:109], v[90:97] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[106:107], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[112:113], v[108:109], v[98:105] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[106:109], v77 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[110:113], v85 offset1:16
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[110:111], v[106:107], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[110:111], v[108:109], v[90:97] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[106:107], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[112:113], v[108:109], v[98:105] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[106:109], v78 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[110:113], v86 offset1:16
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[110:111], v[106:107], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[110:111], v[108:109], v[90:97] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[106:107], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[112:113], v[108:109], v[98:105] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[106:109], v79 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[110:113], v87 offset1:16
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[110:111], v[106:107], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[110:111], v[108:109], v[90:97] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[106:107], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[112:113], v[108:109], v[98:105] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v95, v95
	v_dual_mul_f32 v9, v88, v9 :: v_dual_add_nc_u32 v114, v66, v68
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v107, v114, s[8:11], 0 offen
	buffer_load_u16 v108, v114, s[8:11], 0 offen offset:4
	buffer_load_u16 v109, v114, s[8:11], 0 offen offset:8
	buffer_load_u16 v110, v114, s[8:11], 0 offen offset:12
	buffer_load_u16 v111, v114, s[8:11], 0 offen offset:16
	buffer_load_u16 v112, v114, s[8:11], 0 offen offset:20
	buffer_load_u16 v113, v114, s[8:11], 0 offen offset:24
	buffer_load_u16 v114, v114, s[8:11], 0 offen offset:28
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v10, v88, v10
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v68, s25, v68
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v108, 16, v108
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v62, v10, v108
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v93, v89, v93 :: v_dual_add_nc_u32 v106, v66, v67
	v_dual_mul_f32 v90, v89, v90 :: v_dual_lshlrev_b32 v107, 16, v107
	v_mul_f32_e32 v92, v89, v92
	v_mul_f32_e32 v91, v89, v91
	v_dual_mul_f32 v94, v89, v94 :: v_dual_add_nc_u32 v67, s25, v67
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v43, v90, v107
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	buffer_load_u16 v90, v106, s[8:11], 0 offen
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v61, v9, v107
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x1
	buffer_load_u16 v9, v106, s[8:11], 0 offen offset:4
	buffer_load_u16 v107, v106, s[8:11], 0 offen offset:8
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v95, v89, v95 :: v_dual_fmac_f32 v42, v91, v108
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x2
	buffer_load_u16 v91, v106, s[8:11], 0 offen offset:12
	buffer_load_u16 v10, v106, s[8:11], 0 offen offset:16
	buffer_load_u16 v108, v106, s[8:11], 0 offen offset:20
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v96, v89, v96
	v_mul_f32_e32 v97, v89, v97
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v98, v89, v98 :: v_dual_mul_f32 v11, v88, v11
	v_mul_f32_e32 v99, v89, v99
	v_dual_mul_f32 v101, v89, v101 :: v_dual_mul_f32 v12, v88, v12
	v_dual_mul_f32 v100, v89, v100 :: v_dual_mul_f32 v13, v88, v13
	v_dual_mul_f32 v103, v89, v103 :: v_dual_mul_f32 v14, v88, v14
	v_dual_mul_f32 v102, v89, v102 :: v_dual_mul_f32 v15, v88, v15
	v_dual_mul_f32 v105, v89, v105 :: v_dual_mul_f32 v16, v88, v16
	v_dual_mul_f32 v89, v89, v104 :: v_dual_mul_f32 v18, v88, v18
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x1
	buffer_load_u16 v104, v106, s[8:11], 0 offen offset:24
	buffer_load_u16 v106, v106, s[8:11], 0 offen offset:28
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v17, v88, v17
	v_mul_f32_e32 v20, v88, v20
	v_mul_f32_e32 v19, v88, v19
	v_mul_f32_e32 v22, v88, v22
	v_mul_f32_e32 v21, v88, v21
	v_mul_f32_e32 v24, v88, v24
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v23, v88, v23 :: v_dual_lshlrev_b32 v88, 16, v109
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v109, 16, v110
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v110, 16, v111
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v111, 16, v112
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v112, 16, v113
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v113, 16, v114
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v39, v92, v88
	v_fmac_f32_e32 v54, v11, v88
	v_dual_fmac_f32 v50, v13, v110 :: v_dual_fmac_f32 v31, v96, v112
	v_fmac_f32_e32 v35, v95, v111
	v_dual_fmac_f32 v47, v15, v112 :: v_dual_fmac_f32 v30, v97, v113
	v_fmac_f32_e32 v38, v93, v109
	v_dual_fmac_f32 v55, v12, v109 :: v_dual_fmac_f32 v34, v94, v110
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v51, v14, v111 :: v_dual_lshlrev_b32 v90, 16, v90
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v46, v16, v113 :: v_dual_lshlrev_b32 v107, 16, v107
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v45, v98, v90
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v91, 16, v91
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v10, 16, v10
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v108, 16, v108
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v56, v17, v90 :: v_dual_fmac_f32 v63, v18, v9
	v_fmac_f32_e32 v44, v99, v9
	v_dual_fmac_f32 v57, v19, v107 :: v_dual_fmac_f32 v52, v21, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v58, v20, v91 :: v_dual_fmac_f32 v37, v103, v108
	v_fmac_f32_e32 v53, v22, v108
	v_dual_fmac_f32 v41, v100, v107 :: v_dual_fmac_f32 v36, v102, v10
	v_fmac_f32_e32 v40, v101, v91
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v104, 16, v104
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v106, 16, v106
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v48, v23, v104 :: v_dual_fmac_f32 v49, v24, v106
	v_fmac_f32_e32 v33, v89, v104
	v_fmac_f32_e32 v32, v105, v106
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v1, v64
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 238 44 is_stmt 1              ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v2, 0xbfb8aa3b, v63 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v56
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s1, s24, 7
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	s_mul_i32 s14, s14, s15
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v11, 0xbfb8aa3b, v52 :: v_dual_mul_f32 v12, 0xbfb8aa3b, v53
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v2, v60, v59
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v15, 0xbfb8aa3b, v49 :: v_dual_mul_f32 v8, 0xbfb8aa3b, v36
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v5, 0, 0x42800000, s0
	v_mul_f32_e32 v10, 0xbfb8aa3b, v58
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, s0
	v_dual_fmac_f32 v4, 0xbfb8aa3b, v63 :: v_dual_fmac_f32 v5, 0xbfb8aa3b, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v27, 32, v2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v13, 0xbfb8aa3b, v48 :: v_dual_mul_f32 v16, 0xbfb8aa3b, v45
	v_exp_f32_e32 v4, v4
	v_exp_f32_e32 v14, v5
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v17, 0xbfb8aa3b, v44 :: v_dual_mul_f32 v18, 0xbfb8aa3b, v41
	v_mul_f32_e32 v9, 0xbfb8aa3b, v37
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	v_and_b32_e32 v0, 16, v0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v3, v4, v3
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v7, 0x78, v1
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v4, v14, v6
	v_mul_f32_e32 v1, 0xbfb8aa3b, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v5, 0xbfb8aa3b, v33 :: v_dual_add_f32 v14, 1.0, v3
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v10, 1.0, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v1
	.loc	1 245 18 is_stmt 1              ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v1, s15, v2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v20, null, v14, v14, v63
	v_div_scale_f32 v21, null, v10, v10, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v25, 0, 0x42800000, s0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v24, v20
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v26, v21
	v_div_scale_f32 v29, vcc_lo, v63, v14, v63
	v_div_scale_f32 v59, s0, v56, v10, v56
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v4.h, 0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v6, 0xbfb8aa3b, v32
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fma_f32 v2, -v20, v24, 1.0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v28, -v21, v26, 1.0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v40
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v24, v2, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v23, v23
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v26, v28, v26
	.loc	1 245 18 is_stmt 1              ; generate_amdgcn.py:245:18
	v_add3_u32 v2, s14, s1, v7
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v12
	s_mov_b32 s14, 0x7ffffffe
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v3, v23, v3
	v_dual_fmac_f32 v25, 0xbfb8aa3b, v57 :: v_dual_add_f32 v28, 1.0, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v25, v25
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_scale_f32 v64, null, v28, v28, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v12, v64
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v22, v25, v22
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v7, v29, v24
	v_mul_f32_e32 v23, v59, v26
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v25.h, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fma_f32 v3, -v20, v7, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v21, v23, v59
	v_div_scale_f32 v65, null, v22, v22, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v7, v3, v24
	v_fma_f32 v3, -v20, v7, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v20, v65
	v_fmac_f32_e32 v23, v60, v26
	v_div_fmas_f32 v7, v3, v24, v7
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v21, -v21, v23, v59
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v24, 0, 0x42800000, s1
	.loc	1 245 18 is_stmt 1              ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v3, s15, v27
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v7, v7, v14, v63
	v_div_scale_f32 v27, s0, v57, v22, v57
	v_div_fmas_f32 v21, v21, v26, v23
	v_div_scale_f32 v14, vcc_lo, v58, v28, v58
	v_fma_f32 v26, -v65, v20, 1.0
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v10, v21, v10, v56
	v_fma_f32 v21, -v64, v12, 1.0
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v7, v62, v7 :: v_dual_fmac_f32 v24, 0xbfb8aa3b, v53
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v20, v26, v20
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v10, v61, v10
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v12, v21, v12
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v11
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v4.l, v7.h
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v24, v24
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v25.l, v10.h
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v21, v14, v12
	v_mul_f32_e32 v26, v27, v20
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v60, 0, 0x42800000, s1
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_and_b32_e32 v29, 1, v4
	v_and_b32_e32 v25, 1, v25
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v11, -v64, v21, v14
	v_fma_f32 v56, -v65, v26, v27
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v52
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s1
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v7, v7
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v21, v11, v12
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v11, v7, v29, 0x7fff
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v23, v24, v23
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v26, v56, v20
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v24, v60
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v7, -v64, v21, v14
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_add3_u32 v25, v10, v25, 0x7fff
	s_mov_b32 s15, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v12, v7, v12, v21
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v21, 1.0, v23
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v14, -v65, v26, v27
	s_mov_b32 vcc_lo, s0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v23, v24, v59
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cndmask_b16 v7.h, 0x7fff, v11.h, s1
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v11, v12, v28, v58
	v_div_fmas_f32 v14, v14, v20, v26
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v20, null, v21, v21, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v10, v55, v11
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v12, v14, v22, v57
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v22, 1.0, v23
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cndmask_b16 v7.l, 0x7fff, v25.h, vcc_lo
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v14, v20
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v13
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v4.l, v10.h
	v_mov_b16_e32 v23.h, v4.h
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v11, v54, v12
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v12, null, v22, v22, v52
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v54, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v49
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v24, -v20, v14, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v25, v12
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v23.l, v11.h
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v48
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v10, v10
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v14, v24, v14
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v27, vcc_lo, v53, v21, v53
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_and_b32_e32 v15, 1, v4
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v54, v54
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fma_f32 v13, -v12, v25, 1.0
	v_dual_mul_f32 v28, v27, v14 :: v_dual_and_b32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_add3_u32 v15, v10, v15, 0x7fff
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s0
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v25, v13, v25
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v13, v26
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v10, -v20, v28, v27
	v_div_scale_f32 v26, s0, v52, v22, v52
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_add3_u32 v23, v11, v23, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v13, v13, v24
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v28, v10, v14
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cndmask_b16 v10.h, 0x7fff, v15.h, s1
	v_cmp_o_f32_e64 s1, v11, v11
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v15, v54, v29
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v55, v26, v25
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v11, 1.0, v13
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v13, -v20, v28, v27
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cndmask_b16 v10.l, 0x7fff, v23.h, s1
	v_mov_b16_e32 v27.h, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v20, null, v11, v11, v49
	v_div_fmas_f32 v13, v13, v14, v28
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v14, 1.0, v15
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v24, -v12, v55, v26
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v15, v20
	v_div_fixup_f32 v13, v13, v21, v53
	v_div_scale_f32 v21, null, v14, v14, v48
	v_fmac_f32_e32 v55, v24, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v12, v55, v26
	v_div_fmas_f32 v12, v12, v25, v55
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v17, -v20, v15, 1.0
	v_div_fixup_f32 v12, v12, v22, v52
	v_rcp_f32_e32 v22, v21
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v13, v51, v13 :: v_dual_mul_f32 v12, v50, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v44
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v4.l, v13.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v26, -v21, v22, 1.0
	v_fmac_f32_e32 v15, v17, v15
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v25, vcc_lo, v49, v11, v49
	v_fmac_f32_e32 v22, v26, v22
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v17, 0xbfb8aa3b, v45 :: v_dual_mul_f32 v28, v25, v15
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v26, s0, v48, v14, v48
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_and_b32_e32 v29, 1, v4
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v17, v17
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v27.l, v12.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v50, v26, v22
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v13, v13
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v23, v24, v23
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fma_f32 v24, -v20, v28, v25
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_add3_u32 v29, v13, v29, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v16, v17, v16
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fma_f32 v17, -v21, v50, v26
	v_fmac_f32_e32 v28, v24, v15
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_and_b32_e32 v27, 1, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v13, 1.0, v16 :: v_dual_fmac_f32 v50, v17, v22
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fma_f32 v16, -v20, v28, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_add3_u32 v25, v12, v27, 0x7fff
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v20, null, v13, v13, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v21, -v21, v50, v26
	v_div_fmas_f32 v15, v16, v15, v28
	s_mov_b32 vcc_lo, s0
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v12, v12
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v16, v20
	v_div_fmas_f32 v21, v21, v22, v50
	v_div_fixup_f32 v11, v15, v11, v49
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v26.h, 0x7fff, v29.h, s1
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v19
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_scale_f32 v19, s2, v45, v13, v45
	v_div_fixup_f32 v14, v21, v14, v48
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v29.h, v4.h
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v21, -v20, v16, 1.0
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v26.l, 0x7fff, v25.h, s0
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v12, v47, v14
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_scale_f32 v24, null, v23, v23, v44
	v_div_scale_f32 v15, vcc_lo, v44, v23, v44
	v_fmac_f32_e32 v16, v21, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v17, v24
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s1
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v29.l, v12.h
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v28, v19, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v24, v17, 1.0
	v_fmac_f32_e32 v17, v22, v17
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v11, v46, v11
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v22, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v18
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v18, -v20, v28, v19
	v_mul_f32_e32 v14, v15, v17
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v4.l, v11.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v46, 0, 0x42800000, s1
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v28, v18, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v27, -v24, v14, v15
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v14, v27, v17
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s1
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v15, -v24, v14, v15
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v14, v15, v17, v14
	v_fma_f32 v15, -v20, v28, v19
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v17, v46
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	s_mov_b32 vcc_lo, s2
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_and_b32_e32 v19, 1, v29
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v14, v14, v23, v44
	v_div_fmas_f32 v15, v15, v16, v28
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v19, v12, v19, 0x7fff
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v14, v42, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v13, v15, v13, v45
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v15, v17, v27
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s2, v14, v14
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v13, v43, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_ldexp_f32 v18, v22, v21
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v21, null, v15, v15, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v17, null, v18, v18, v40
	v_rcp_f32_e32 v20, v17
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v21, v22, 1.0
	v_fmac_f32_e32 v22, v24, v22
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_and_b32_e32 v16, 1, v4
	v_mov_b16_e32 v4.l, v14.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v23, -v17, v20, 1.0
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v16, v11, v16, 0x7fff
	v_mov_b16_e32 v11.l, v13.h
	v_mov_b16_e32 v11.h, v4.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v20, v23, v20
	v_div_scale_f32 v23, s0, v40, v18, v40
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v16.h, 0x7fff, v16.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	v_and_b32_e32 v11, 1, v11
	v_cndmask_b16 v16.l, 0x7fff, v19.h, vcc_lo
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_scale_f32 v9, s1, v41, v15, v41
	v_mul_f32_e32 v19, v23, v20
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_add3_u32 v11, v13, v11, 0x7fff
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_dual_mul_f32 v27, v9, v22 :: v_dual_and_b32 v12, 1, v4
	v_fma_f32 v25, -v17, v19, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v37
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_add3_u32 v12, v14, v12, 0x7fff
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v19, v25, v20
	v_fma_f32 v8, -v21, v27, v9
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s2
	v_cmp_o_f32_e64 s2, v13, v13
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fma_f32 v13, -v17, v19, v23
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v27, v8, v22 :: v_dual_fmac_f32 v28, 0xbfb8aa3b, v36
	v_div_fmas_f32 v8, v13, v20, v19
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v24, v24
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v5
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_exp_f32_e32 v13, v28
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v6, -v21, v27, v9
	v_div_fixup_f32 v8, v8, v18, v40
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cndmask_b16 v12.l, 0x7fff, v11.h, s2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v9, v24, v14
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	s_mov_b32 vcc_lo, s1
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v13, v13, v25
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v33
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v32
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v24.h, v4.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v5, v6, v22, v27
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v6, 1.0, v9
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s0
	v_exp_f32_e32 v17, v17
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v18, null, v13, v13, v36
	v_div_fixup_f32 v5, v5, v15, v41
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v15, v19
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v20, null, v6, v6, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v19, v18
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v5, v39, v5
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v27, s0, v36, v13, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v11, v20
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v14, v17, v14
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v24.l, v5.h
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v9, v15, v9
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v8, v38, v8
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v21, -v18, v19, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v14, 1.0, v14 :: v_dual_add_f32 v9, 1.0, v9
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v4.l, v8.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v17, -v20, v11, 1.0
	v_fmac_f32_e32 v19, v21, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_scale_f32 v15, null, v14, v14, v32
	v_div_scale_f32 v23, null, v9, v9, v33
	v_fmac_f32_e32 v11, v17, v11
	v_div_scale_f32 v17, vcc_lo, v37, v6, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v21, v23
	v_dual_mul_f32 v39, v27, v19 :: v_dual_and_b32 v24, 1, v24
	v_mul_f32_e32 v25, v17, v11
	v_rcp_f32_e32 v22, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v24, v5, v24, 0x7fff
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v38, -v20, v25, v17
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v40, -v23, v21, 1.0
	v_fma_f32 v28, -v15, v22, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v21, v40, v21
	v_div_scale_f32 v40, s2, v33, v9, v33
	v_fmac_f32_e32 v25, v38, v11
	v_fma_f32 v38, -v18, v39, v27
	v_dual_fmac_f32 v22, v28, v22 :: v_dual_and_b32 v29, 1, v4
	v_div_scale_f32 v28, s1, v32, v14, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v39, v38, v19 :: v_dual_mul_f32 v38, v40, v21
	v_fma_f32 v17, -v20, v25, v17
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v29, v8, v29, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v11, v17, v11, v25
	v_fma_f32 v17, -v18, v39, v27
	v_fma_f32 v18, -v23, v38, v40
	s_mov_b32 vcc_lo, s0
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v8, v8
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v6, v11, v6, v37
	v_div_fmas_f32 v17, v17, v19, v39
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v6, v35, v6
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_dual_mul_f32 v41, v28, v22 :: v_dual_fmac_f32 v38, v18, v21
	v_div_fixup_f32 v11, v17, v13, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v4.l, v6.h
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v20, -v15, v41, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v13, -v23, v38, v40
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v11, v34, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v41, v20, v22
	v_fma_f32 v8, -v15, v41, v28
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cndmask_b16 v15.h, 0x7fff, v29.h, s0
	v_cmp_eq_u32_e64 s0, 0, v0
	v_mov_b32_e32 v0, 0x5410
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v8, v8, v22, v41
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v13, v13, v21, v38
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v8, v8, v14, v32
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v14.h, v4.h
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v5, v13, v9, v33
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v9.l, v11.h
	v_mov_b16_e32 v9.h, v4.h
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v8, v30, v8
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v13, 1, v4
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v5, v31, v5
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v15.l, 0x7fff, v24.h, vcc_lo
	v_and_b32_e32 v9, 1, v9
	v_mov_b16_e32 v4.l, v8.h
	v_add3_u32 v13, v6, v13, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_mov_b16_e32 v14.l, v5.h
	v_add3_u32 v6, v11, v9, 0x7fff
	v_and_b32_e32 v4, 1, v4
	v_cmp_o_f32_e64 s1, v8, v8
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_mov_b32_e32 v11, 0x7632
	v_and_b32_e32 v9, 1, v14
	v_add3_u32 v4, v8, v4, 0x7fff
	v_cmp_o_f32_e64 s2, v5, v5
	v_cndmask_b16 v13.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b32_e64 v8, 0x3276, v11, s0
	v_add3_u32 v9, v5, v9, 0x7fff
	v_lshl_or_b32 v0, v0, 8, v0
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s1
	v_cndmask_b32_e64 v5, v26, v7, s0
	v_lshl_or_b32 v6, v8, 8, v8
	v_cndmask_b16 v4.l, 0x7fff, v9.h, s2
	v_and_b32_e32 v0, 0x540054, v0
	v_cndmask_b32_e64 v7, v7, v26, s0
	v_cndmask_b32_e64 v8, v16, v10, s0
	v_and_b32_e32 v6, 0x760076, v6
	v_cndmask_b32_e64 v9, v10, v16, s0
	v_cndmask_b32_e64 v10, v13, v12, s0
	v_cndmask_b32_e64 v11, v12, v13, s0
	v_cndmask_b32_e64 v12, v4, v15, s0
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v6, v6, 4, v6
	v_cndmask_b32_e64 v4, v15, v4, s0
	s_mov_b32 s1, 0x76543210
	s_delay_alu instid0(SALU_CYCLE_1)
	v_permlanex16_b32 v7, v7, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v0, 0x5040504, v0
	v_and_b32_e32 v13, 0x7060706, v6
	v_permlanex16_b32 v9, v9, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v7, v5, v0
	v_perm_b32 v5, v7, v5, v13
	v_perm_b32 v6, v9, v8, v0
	v_perm_b32 v7, v9, v8, v13
	v_perm_b32 v8, v11, v10, v0
	v_perm_b32 v9, v11, v10, v13
	v_perm_b32 v10, v14, v12, v0
	v_add_lshl_u32 v0, v2, v1, 1
	v_perm_b32 v11, v14, v12, v13
	v_add_lshl_u32 v1, v2, v3, 1
	s_clause 0x1
	buffer_store_b128 v[4:7], v0, s[12:15], 0 offen
	buffer_store_b128 v[8:11], v1, s[12:15], 0 offen
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 120
		.amdhsa_next_free_sgpr 44
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
		.amdhsa_inst_pref_size 55
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 120
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6936
; TotalNumSgprs: 46
; NumVgprs: 120
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 120
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc256_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     120
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
