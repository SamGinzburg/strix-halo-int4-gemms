	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s8, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v20, 15, v0
	v_lshrrev_b32_e32 v18, 4, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v19, 0x1e0, v0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b32_e32 v9, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v17, 4, v20
	v_lshrrev_b32_e32 v53, 1, v19
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v9, 0, v9
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s34, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s6, s6, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s11, s11, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s5, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s9, s9, 5
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
	v_lshlrev_b32_e32 v1, 1, v20
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s39, s11
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s17, s17, s10
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
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_lshl_b32 s48, s35, 1
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s7, s4, 31
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[2:3], null, s48, v18, v[17:18]
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s20, s5, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s21, s4, 63
.Ltmp13:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s7
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s33, s20, s17
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s18, s3, 5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s19, s4, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s7, s33, s6
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v5, s18, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s5, s21, 31
.Ltmp15:
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_mad_u64_u32 v[3:4], null, s19, v18, v[1:2]
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s7
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v6, s18, v18
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s4, s5, 26
.Ltmp17:
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s16
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s22, s48, s18
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s49, s33, 8
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s23, s21, s4
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s19, v5
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s5, 32, v5
	.loc	1 126 14 is_stmt 1              ; generate_amdgcn.py:126:14
	s_lshl_b32 s34, s2, 5
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s6, s19, v6
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 32, v6
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s7, s23, 6
.Ltmp21:
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add3_u32 v2, s49, s22, v2
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	s_mul_i32 s16, s34, s19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s21, 63
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_add3_u32 v3, s18, s16, v3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s16, s5, vcc_lo
	s_and_b32 s6, s4, s6
	.loc	1 228 43                        ; generate_amdgcn.py:228:43
	v_add_nc_u32_e32 v4, s35, v2
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s6
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_and_b32 s37, s37, 0xffff
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v7, 0x80000000, v4
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u16 v14, v3, s[8:11], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_clause 0x1
	buffer_load_b128 v[3:6], v2, s[36:39], 0 offen
	buffer_load_b128 v[10:13], v7, s[36:39], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshrrev_b32_e32 v7, 3, v0
	v_lshlrev_b32_e32 v2, 1, v0
	s_mov_b32 s6, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s21, 0x7f
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v7, 24, v7
	v_xor_b32_e32 v7, v2, v7
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v8, 0, v7
	v_or_b32_e32 v7, v53, v20
	s_waitcnt vmcnt(2)
	ds_store_b16 v8, v14 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v9, v[3:6]
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	s_waitcnt vmcnt(0)
	ds_store_b128 v9, v[10:13] offset:8192
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v3, 24, v2
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b32_e32 v91, v53, v20
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_mov_b64 s[30:31], s[10:11]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshl_or_b32 v3, v20, 5, v3
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b32_e32 v55, 0x100, v91
	v_or_b32_e32 v56, 0x200, v91
	v_or_b32_e32 v57, 0x300, v91
	v_or_b32_e32 v58, 0x400, v91
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xor_b32_e32 v4, 8, v3
	v_xor_b32_e32 v5, 16, v3
	v_xor_b32_e32 v6, 24, v3
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b32_e32 v59, 0x500, v91
	v_or_b32_e32 v60, 0x600, v91
	v_or_b32_e32 v61, 0x700, v91
	v_or_b32_e32 v62, 0x800, v91
	v_or_b32_e32 v63, 0x900, v91
	v_or_b32_e32 v64, 0xa00, v91
	v_or_b32_e32 v65, 0xb00, v91
	v_or_b32_e32 v66, 0xc00, v91
	v_or_b32_e32 v67, 0xd00, v91
	v_or_b32_e32 v68, 0xe00, v91
	v_or_b32_e32 v69, 0xf00, v91
	v_or_b32_e32 v70, 0x1000, v91
	v_or_b32_e32 v71, 0x1100, v91
	v_or_b32_e32 v72, 0x1200, v91
	v_or_b32_e32 v74, 0x1300, v91
	v_or_b32_e32 v75, 0x1400, v91
	v_or_b32_e32 v76, 0x1500, v91
	v_or_b32_e32 v77, 0x1600, v91
	v_or_b32_e32 v78, 0x1700, v91
	v_or_b32_e32 v79, 0x1800, v91
	v_or_b32_e32 v80, 0x1900, v91
	v_or_b32_e32 v81, 0x1a00, v91
	v_or_b32_e32 v82, 0x1b00, v91
	v_or_b32_e32 v83, 0x1c00, v91
	v_or_b32_e32 v84, 0x1d00, v91
	v_or_b32_e32 v85, 0x1e00, v91
	v_or_b32_e32 v86, 0x1f00, v91
	s_mov_b32 s6, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr28_sgpr29
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr91
                                        ; implicit-def: $vgpr55
                                        ; implicit-def: $vgpr56
                                        ; implicit-def: $vgpr57
                                        ; implicit-def: $vgpr58
                                        ; implicit-def: $vgpr59
                                        ; implicit-def: $vgpr60
                                        ; implicit-def: $vgpr61
                                        ; implicit-def: $vgpr62
                                        ; implicit-def: $vgpr63
                                        ; implicit-def: $vgpr64
                                        ; implicit-def: $vgpr65
                                        ; implicit-def: $vgpr66
                                        ; implicit-def: $vgpr67
                                        ; implicit-def: $vgpr68
                                        ; implicit-def: $vgpr69
                                        ; implicit-def: $vgpr70
                                        ; implicit-def: $vgpr71
                                        ; implicit-def: $vgpr72
                                        ; implicit-def: $vgpr74
                                        ; implicit-def: $vgpr75
                                        ; implicit-def: $vgpr76
                                        ; implicit-def: $vgpr77
                                        ; implicit-def: $vgpr78
                                        ; implicit-def: $vgpr79
                                        ; implicit-def: $vgpr80
                                        ; implicit-def: $vgpr81
                                        ; implicit-def: $vgpr82
                                        ; implicit-def: $vgpr83
                                        ; implicit-def: $vgpr84
                                        ; implicit-def: $vgpr85
                                        ; implicit-def: $vgpr86
.LBB0_3:                                ; %Flow308
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b128 s[24:27], s[0:1], 0x20
	v_bfe_u32 v54, v0, 4, 1
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_add_i32 s0, s7, -1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v14, s34, v20
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v2, 24, v2
	v_lshl_or_b32 v15, s20, 9, v19
	s_lshl_b32 s20, s20, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v23, s7, v14
	v_lshl_or_b32 v3, v20, 5, v2
	v_lshlrev_b32_e32 v2, 1, v18
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v16, 16, v14
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v21, s48, v15
	v_sub_nc_u32_e32 v11, s19, v1
	v_dual_mov_b32 v24, 0 :: v_dual_lshlrev_b32 v73, 1, v23
	v_mov_b32_e32 v23, 0
	v_lshl_or_b32 v2, s3, 6, v2
	s_lshl_b32 s3, s17, 9
	v_mov_b32_e32 v31, 0
	v_mov_b32_e32 v29, 0
	v_mul_lo_u32 v16, s7, v16
	v_add_nc_u32_e32 v22, 0x41, v2
	v_add_nc_u32_e32 v2, 64, v2
	v_subrev_nc_u32_e32 v14, s3, v21
	s_lshl_b32 s17, s17, 8
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v10, 0, v7
	v_mul_lo_u32 v22, s35, v22
	v_mul_lo_u32 v2, s35, v2
	v_xor_b32_e32 v4, 8, v3
	v_xor_b32_e32 v5, 16, v3
	v_mov_b32_e32 v33, 0
	v_xor_b32_e32 v6, 24, v3
	v_or_b32_e32 v55, 0x100, v7
	v_or_b32_e32 v56, 0x200, v7
	v_add3_u32 v21, v22, s20, v17
	v_add3_u32 v2, v2, s20, v17
	v_add_nc_u32_e32 v22, s34, v18
	v_or_b32_e32 v57, 0x300, v7
	v_or_b32_e32 v58, 0x400, v7
	v_or_b32_e32 v59, 0x500, v7
	v_subrev_nc_u32_e32 v88, s17, v2
	v_mad_u64_u32 v[1:2], null, s19, v22, v[1:2]
	v_or_b32_e32 v60, 0x600, v7
	v_or_b32_e32 v61, 0x700, v7
	v_or_b32_e32 v62, 0x800, v7
	v_or_b32_e32 v63, 0x900, v7
	v_or_b32_e32 v64, 0xa00, v7
	v_or_b32_e32 v65, 0xb00, v7
	v_or_b32_e32 v66, 0xc00, v7
	v_or_b32_e32 v67, 0xd00, v7
	v_or_b32_e32 v68, 0xe00, v7
	v_or_b32_e32 v69, 0xf00, v7
	v_or_b32_e32 v70, 0x1000, v7
	v_or_b32_e32 v71, 0x1100, v7
	v_or_b32_e32 v72, 0x1200, v7
	v_or_b32_e32 v74, 0x1300, v7
	v_or_b32_e32 v75, 0x1400, v7
	v_or_b32_e32 v76, 0x1500, v7
	v_or_b32_e32 v77, 0x1600, v7
	v_or_b32_e32 v78, 0x1700, v7
	v_or_b32_e32 v79, 0x1800, v7
	v_or_b32_e32 v80, 0x1900, v7
	v_or_b32_e32 v81, 0x1a00, v7
	v_or_b32_e32 v82, 0x1b00, v7
	v_or_b32_e32 v83, 0x1c00, v7
	v_or_b32_e32 v84, 0x1d00, v7
	v_or_b32_e32 v85, 0x1e00, v7
	v_or_b32_e32 v86, 0x1f00, v7
	v_sub_nc_u32_e32 v12, s19, v18
	v_dual_mov_b32 v28, 0 :: v_dual_lshlrev_b32 v13, 1, v54
	v_subrev_nc_u32_e32 v15, s3, v15
	v_dual_mov_b32 v51, 0 :: v_dual_lshlrev_b32 v16, 1, v16
	v_subrev_nc_u32_e32 v87, s17, v21
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v36, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v38, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b32 s16, 0
	s_max_i32 s6, s0, 1
	s_mov_b64 s[28:29], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_lshl_b32 s1, s35, 2
	s_lshl_b32 s3, s6, 1
	s_lshl_b32 s6, s35, 6
	s_add_i32 s50, s18, 32
	s_mov_b32 s44, s12
	s_mov_b32 s45, s13
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s12, s16
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s50, v11
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v98, s23 :: v_dual_add_nc_u32 v89, s50, v1
	v_dual_mov_b32 v97, s22 :: v_dual_add_nc_u32 v2, s12, v73
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s5
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v95, s20 :: v_dual_add_nc_u32 v90, s12, v16
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_dual_cndmask_b32 v100, 0x80000000, v89 :: v_dual_add_nc_u32 v99, 0, v3
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_mov_b32_e32 v96, s21
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v89, v2, s[44:47], 0 offen
	buffer_load_u16 v90, v90, s[44:47], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_u16 v2, v100, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v100, v10 offset:1280
	ds_load_u8 v101, v10 offset:1792
	ds_load_u8 v102, v10 offset:1536
	ds_load_u8 v103, v10 offset:1024
	ds_load_u8 v104, v10 offset:256
	ds_load_u8 v105, v10 offset:768
	ds_load_u8 v106, v10 offset:512
	ds_load_u8 v111, v10
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v112, v10 offset:9472
	ds_load_u8 v113, v10 offset:9984
	ds_load_u8 v114, v10 offset:9728
	ds_load_u8 v115, v10 offset:9216
	ds_load_u8 v116, v10 offset:8448
	ds_load_u8 v117, v10 offset:8704
	ds_load_u8 v118, v10 offset:8192
	ds_load_u8 v119, v10 offset:8960
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[107:110], v99 offset0:32 offset1:33
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v120, v10 offset:3328
	v_dual_mov_b32 v94, s19 :: v_dual_mov_b32 v93, s18
	v_dual_mov_b32 v92, s17 :: v_dual_mov_b32 v91, s16
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s50, v12
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v99, v103, v100, 0xc0c0004
	v_perm_b32 v100, v102, v101, 0xc0c0004
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s12, s12, 2
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v102, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v101, v111, v104, 0xc0c0004
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s50, s50, 32
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v104, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v103, v115, v112, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v112, v100, 16, v99
	v_lshl_or_b32 v111, v102, 16, v101
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v105, v118, v116, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v106, v117, v119, 0xc0c0004
	v_lshl_or_b32 v114, v104, 16, v103
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s3, s12
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[124:131], v[111:112], v[107:108], v[91:98] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v113, v106, 16, v105
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[99:106], v[111:112], v[109:110], v[91:98] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[132:139], v[113:114], v[107:108], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[140:147], v[113:114], v[109:110], v[91:98] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v91, v10 offset:3584
	ds_load_u8 v92, v10 offset:3072
	ds_load_u8 v93, v10 offset:3840
	ds_load_u8 v94, v10 offset:2304
	ds_load_u8 v95, v10 offset:2816
	ds_load_u8 v96, v10 offset:2560
	ds_load_u8 v97, v10 offset:2048
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v98, v10 offset:11264
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v107, 0, v4
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v92, v92, v120, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v91, v91, v93, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v93, v10 offset:11520
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v94, v97, v94, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v97, v10 offset:11776
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v96, v91, 16, v92
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v91, v10 offset:12032
	ds_load_u8 v92, v10 offset:11008
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v95, v95, 16, v94
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v94, v10 offset:10496
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v93, v98, v93, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v91, v97, v91, 0xc0c0004
	ds_load_u8 v97, v10 offset:10752
	ds_load_u8 v98, v10 offset:10240
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v92, v97, v92, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v98, v94, 0xc0c0004
	v_lshl_or_b32 v98, v91, 16, v93
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v97, v92, 16, v94
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[91:94], v107 offset0:32 offset1:33
	v_add_nc_u32_e32 v107, 0, v5
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[124:131], v[95:96], v[91:92], v[124:131] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[99:106], v[95:96], v[93:94], v[99:106] neg_lo:[1,1,0]
	ds_load_u8 v95, v10 offset:5376
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[132:139], v[97:98], v[91:92], v[132:139] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[140:147], v[97:98], v[93:94], v[140:147] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v91, v10 offset:5632
	ds_load_u8 v92, v10 offset:5120
	ds_load_u8 v93, v10 offset:5888
	ds_load_u8 v94, v10 offset:4352
	ds_load_u8 v96, v10 offset:4864
	ds_load_u8 v97, v10 offset:4608
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v98, v10 offset:13824
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v91, v91, v93, 0xc0c0004
	v_perm_b32 v92, v92, v95, 0xc0c0004
	ds_load_u8 v95, v10 offset:4096
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v93, v10 offset:13568
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	v_perm_b32 v95, v97, v96, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v97, v10 offset:13312
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v96, v91, 16, v92
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v91, v10 offset:14080
	ds_load_u8 v92, v10 offset:13056
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v95, v95, 16, v94
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v94, v10 offset:12544
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v93, v97, v93, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v91, v98, v91, 0xc0c0004
	ds_load_u8 v97, v10 offset:12800
	ds_load_u8 v98, v10 offset:12288
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v92, v97, v92, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v98, v94, 0xc0c0004
	v_lshl_or_b32 v98, v91, 16, v93
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v97, v92, 16, v94
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[91:94], v107 offset0:32 offset1:33
	v_add_nc_u32_e32 v107, 0, v6
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[124:131], v[95:96], v[91:92], v[124:131] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[99:106], v[95:96], v[93:94], v[99:106] neg_lo:[1,1,0]
	ds_load_u8 v95, v10 offset:7424
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[132:139], v[97:98], v[91:92], v[132:139] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[140:147], v[97:98], v[93:94], v[140:147] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v91, v10 offset:7680
	ds_load_u8 v92, v10 offset:7168
	ds_load_u8 v93, v10 offset:7936
	ds_load_u8 v94, v10 offset:6400
	ds_load_u8 v96, v10 offset:6912
	ds_load_u8 v97, v10 offset:6656
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v98, v10 offset:15872
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v92, v92, v95, 0xc0c0004
	ds_load_u8 v95, v10 offset:6144
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v91, v91, v93, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v93, v10 offset:15616
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	v_perm_b32 v95, v97, v96, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v97, v10 offset:15360
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v96, v91, 16, v92
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v91, v10 offset:16128
	ds_load_u8 v92, v10 offset:15104
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v95, v95, 16, v94
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v94, v10 offset:14592
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v93, v97, v93, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v91, v98, v91, 0xc0c0004
	ds_load_u8 v97, v10 offset:14848
	ds_load_u8 v98, v10 offset:14336
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v92, v97, v92, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v98, v94, 0xc0c0004
	v_lshl_or_b32 v98, v91, 16, v93
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v97, v92, 16, v94
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[91:94], v107 offset0:32 offset1:33
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[99:106], v[95:96], v[93:94], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[124:131], v[95:96], v[91:92], v[124:131] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[132:139], v[97:98], v[91:92], v[132:139] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[140:147], v[97:98], v[93:94], v[140:147] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v117, v100
	v_cvt_f32_i32_e32 v112, v105
	v_cvt_f32_i32_e32 v105, v131
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v131, 16, v90
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v91, v13, v15
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v92, v101
	v_cvt_f32_i32_e32 v107, v104
	v_cvt_f32_i32_e32 v122, v124
	v_cvt_f32_i32_e32 v121, v125
	v_cvt_f32_i32_e32 v104, v126
	v_cvt_f32_i32_e32 v109, v127
	v_cvt_f32_i32_e32 v98, v128
	v_cvt_f32_i32_e32 v100, v129
	v_cvt_f32_i32_e32 v101, v130
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v124, v91, s[40:43], 0 offen
	buffer_load_u16 v125, v91, s[40:43], 0 offen offset:4
	buffer_load_u16 v126, v91, s[40:43], 0 offen offset:8
	buffer_load_u16 v127, v91, s[40:43], 0 offen offset:12
	buffer_load_u16 v128, v91, s[40:43], 0 offen offset:16
	buffer_load_u16 v129, v91, s[40:43], 0 offen offset:20
	buffer_load_u16 v130, v91, s[40:43], 0 offen offset:24
	buffer_load_u16 v91, v91, s[40:43], 0 offen offset:28
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v123, v99
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v110, v132
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v94, v103
	v_cvt_f32_i32_e32 v93, v102
	v_cvt_f32_i32_e32 v99, v106
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v103, v143
	v_cvt_f32_i32_e32 v113, v145
	v_cvt_f32_i32_e32 v116, v146
	v_cvt_f32_i32_e32 v119, v147
	v_cvt_f32_i32_e32 v114, v133
	v_cvt_f32_i32_e32 v120, v135
	v_cvt_f32_i32_e32 v106, v137
	v_cvt_f32_i32_e32 v115, v139
	v_cvt_f32_i32_e32 v108, v144
	v_cvt_f32_i32_e32 v118, v134
	v_cvt_f32_i32_e32 v102, v136
	v_cvt_f32_i32_e32 v111, v138
	v_cvt_f32_i32_e32 v96, v140
	v_cvt_f32_i32_e32 v97, v141
	v_cvt_f32_i32_e32 v95, v142
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v123, v131, v123
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_cndmask_b32_e32 v132, 0x80000000, v87, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v15, s1, v15
	v_add_nc_u32_e32 v87, s6, v87
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v90, 16, v124
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v124, 0x80000000, v88, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v88, s6, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v52, v123, v90 :: v_dual_lshlrev_b32 v123, 16, v89
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v91, 16, v91
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v89, v123, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v51, v89, v90
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v89, 16, v125
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v90, v131, v117
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v48, v90, v89
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v99, v131, v99 :: v_dual_add_nc_u32 v122, v13, v14
	v_mul_f32_e32 v90, v123, v121
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	s_clause 0x1
	buffer_load_u16 v117, v122, s[40:43], 0 offen offset:8
	buffer_load_u16 v121, v122, s[40:43], 0 offen offset:12
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v133, v131, v112
	v_mul_f32_e32 v125, v131, v107
	v_mul_f32_e32 v134, v131, v94
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v34, v90, v89
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v135, v131, v93
	v_mul_f32_e32 v136, v131, v92
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v89, v131, v119 :: v_dual_add_nc_u32 v14, s1, v14
	v_mul_f32_e32 v94, v131, v103
	v_mul_f32_e32 v103, v123, v120
	v_mul_f32_e32 v107, v123, v114
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v112, v123, v98
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v114, 16, v126
	v_lshlrev_b32_e32 v120, 16, v128
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v92, v131, v113
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	buffer_load_u16 v113, v122, s[40:43], 0 offen offset:16
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v98, v123, v115
	v_dual_mul_f32 v90, v131, v116 :: v_dual_lshlrev_b32 v115, 16, v127
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v47, v136, v114 :: v_dual_mul_f32 v116, v123, v109
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v109, v123, v101
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v101, v123, v106
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	buffer_load_u16 v106, v122, s[40:43], 0 offen offset:20
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v119, v123, v104
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v104, v123, v118
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	buffer_load_u16 v118, v122, s[40:43], 0 offen offset:28
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v95, v131, v95
	v_dual_mul_f32 v97, v131, v97 :: v_dual_fmac_f32 v32, v116, v115
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v33, v119, v114
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v114, 16, v130
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v46, v135, v115 :: v_dual_lshlrev_b32 v135, 16, v129
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v93, v131, v108
	v_mul_f32_e32 v108, v123, v110
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v110, v123, v100
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v100, v123, v111
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	buffer_load_u16 v111, v122, s[40:43], 0 offen offset:24
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v96, v131, v96 :: v_dual_fmac_f32 v43, v133, v114
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v45, v134, v120
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x1
	buffer_load_u16 v131, v122, s[40:43], 0 offen offset:4
	buffer_load_u16 v134, v122, s[40:43], 0 offen
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v44, v125, v135
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	buffer_load_b128 v[126:129], v132, s[36:39], 0 offen
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v117, 16, v117
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v116, 16, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v30, v104, v117
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v40, v94, v116 :: v_dual_lshlrev_b32 v113, 16, v113
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v39, v93, v113 :: v_dual_lshlrev_b32 v106, 16, v106
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v115, 16, v118
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v102, v123, v102 :: v_dual_fmac_f32 v23, v110, v135
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v38, v99, v91
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v28, v101, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v26, v98, v115
	v_fmac_f32_e32 v25, v102, v113
	v_fmac_f32_e32 v37, v92, v106
	v_fmac_f32_e32 v35, v89, v115
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v111, 16, v111
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v105, v123, v105 :: v_dual_fmac_f32 v24, v112, v120
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[122:125], v124, s[36:39], 0 offen
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v118, 16, v131
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v119, 16, v134
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v22, v109, v114
	v_fmac_f32_e32 v21, v105, v91
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v29, v103, v116 :: v_dual_fmac_f32 v42, v97, v118
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v49, v108, v119
	v_dual_fmac_f32 v31, v107, v118 :: v_dual_fmac_f32 v50, v96, v119
	v_fmac_f32_e32 v27, v100, v111
	v_dual_fmac_f32 v41, v95, v117 :: v_dual_fmac_f32 v36, v90, v111
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v8, v2 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v9, v[122:125]
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b128 v9, v[126:129] offset:8192
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v91, v7
.LBB0_7:                                ; %Flow309
	.loc	1 195 26 is_stmt 1              ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s7, v20
	s_mul_i32 s3, s34, s7
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s1, s0, 0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_lshl_b32 s0, s7, 4
	v_add_nc_u32_e32 v110, 0, v57
	v_add_nc_u32_e32 v108, 0, v60
	v_add_nc_u32_e32 v113, 0, v59
	v_add_nc_u32_e32 v111, 0, v56
	v_add3_u32 v1, s3, s1, v1
	v_add_nc_u32_e32 v109, 0, v55
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_cndmask_b32_e64 v92, 0, 1, s2
	v_dual_mov_b32 v88, 0 :: v_dual_and_b32 v87, 0x1f0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v57, 0 :: v_dual_lshlrev_b32 v2, 1, v1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v1, v1, s0, 1
	v_and_b32_e32 v73, 16, v0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_cmp_ne_u32_e64 s0, 1, v92
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_add_nc_u32_e32 v86, 0, v86
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_add_nc_u32_e32 v85, 0, v85
	v_add_nc_u32_e32 v84, 0, v84
	s_clause 0x1
	buffer_load_u16 v89, v2, s[28:31], 0 offen
	buffer_load_u16 v90, v1, s[28:31], 0 offen
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v1, 0, v3
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v2, 0, v4
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v3, 0, v5
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v4, 0, v6
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[13:16], v1 offset0:32 offset1:33
	ds_load_2addr_stride64_b64 v[9:12], v2 offset0:32 offset1:33
	ds_load_2addr_stride64_b64 v[5:8], v3 offset0:32 offset1:33
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[1:4], v4 offset0:32 offset1:33
	v_add_nc_u32_e32 v83, 0, v83
	v_add_nc_u32_e32 v82, 0, v82
	v_add_nc_u32_e32 v81, 0, v81
	v_add_nc_u32_e32 v80, 0, v80
	v_add_nc_u32_e32 v79, 0, v79
	v_add_nc_u32_e32 v95, 0, v78
	v_add_nc_u32_e32 v92, 0, v77
	v_add_nc_u32_e32 v98, 0, v76
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v99, 0, v75
	v_add_nc_u32_e32 v93, 0, v74
	v_add_nc_u32_e32 v94, 0, v72
	v_add_nc_u32_e32 v96, 0, v71
	v_add_nc_u32_e32 v97, 0, v70
	v_add_nc_u32_e32 v103, 0, v69
	v_add_nc_u32_e32 v100, 0, v68
	v_add_nc_u32_e32 v106, 0, v67
	v_add_nc_u32_e32 v107, 0, v66
	v_add_nc_u32_e32 v101, 0, v65
	v_add_nc_u32_e32 v102, 0, v64
	v_add_nc_u32_e32 v104, 0, v63
	v_add_nc_u32_e32 v105, 0, v62
	v_add_nc_u32_e32 v112, 0, v61
	v_add_nc_u32_e32 v114, 0, v58
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v91, 0, v91
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_mov_b32_e32 v72, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	ds_load_u8 v55, v113
	ds_load_u8 v56, v114
	ds_load_u8 v57, v112
	ds_load_u8 v58, v91
	ds_load_u8 v59, v110
	ds_load_u8 v60, v111
	ds_load_u8 v61, v108
	ds_load_u8 v62, v109
	ds_load_u8 v67, v98
	ds_load_u8 v68, v99
	ds_load_u8 v69, v95
	ds_load_u8 v70, v96
	ds_load_u8 v71, v97
	ds_load_u8 v72, v93
	ds_load_u8 v74, v94
	ds_load_u8 v75, v92
	ds_load_u8 v76, v84
	ds_load_u8 v77, v83
	ds_load_u8 v78, v86
	ds_load_u8 v123, v80
	ds_load_u8 v124, v79
	ds_load_u8 v125, v82
	ds_load_u8 v126, v81
	ds_load_u8 v127, v85
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v122, s11 :: v_dual_mov_b32 v121, s10
	v_dual_mov_b32 v120, s9 :: v_dual_mov_b32 v119, s8
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	v_dual_mov_b32 v118, s7 :: v_dual_mov_b32 v117, s6
	v_dual_mov_b32 v116, s5 :: v_dual_mov_b32 v115, s4
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v56, v61, v57, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v57, v58, v62, 0xc0c0004
	v_perm_b32 v58, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v68, v75, v69, 0xc0c0004
	v_lshl_or_b32 v56, v56, 16, v55
	v_perm_b32 v69, v71, v70, 0xc0c0004
	v_lshl_or_b32 v55, v58, 16, v57
	ds_load_u8 v57, v106
	ds_load_u8 v58, v107
	ds_load_u8 v59, v103
	ds_load_u8 v60, v104
	ds_load_u8 v61, v105
	ds_load_u8 v62, v101
	ds_load_u8 v63, v102
	ds_load_u8 v64, v100
	v_perm_b32 v70, v74, v72, 0xc0c0004
	v_lshl_or_b32 v68, v68, 16, v67
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v71, v124, v123, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v67, v70, 16, v69
	v_perm_b32 v69, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v70, v127, v78, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v128, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v129, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v64, v59, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[59:66], v[55:56], v[13:14], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[115:122], v[55:56], v[15:16], v[115:122] neg_lo:[1,1,0]
	v_perm_b32 v55, v126, v125, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v58, v58, 16, v57
	v_lshl_or_b32 v57, v129, 16, v128
	v_lshl_or_b32 v56, v70, 16, v69
	v_lshl_or_b32 v55, v55, 16, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[59:66], v[57:58], v[9:10], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[115:122], v[57:58], v[11:12], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[59:66], v[67:68], v[5:6], v[59:66] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[67:68], v[7:8], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[59:66], v[55:56], v[1:2], v[59:66] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[55:56], v[3:4], v[115:122] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v59, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v58, v63
	v_cvt_f32_i32_e32 v57, v64
	v_cvt_f32_i32_e32 v56, v65
	v_cvt_f32_i32_e32 v55, v66
	v_cvt_f32_i32_e32 v70, v115
	v_cvt_f32_i32_e32 v71, v116
	v_cvt_f32_i32_e32 v72, v117
	v_cvt_f32_i32_e32 v74, v118
	v_cvt_f32_i32_e32 v75, v119
	v_cvt_f32_i32_e32 v76, v120
	v_cvt_f32_i32_e32 v77, v121
	v_cvt_f32_i32_e32 v78, v122
.LBB0_9:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	v_mov_b32_e32 v121, 0
	.loc	1 229 36 is_stmt 1              ; generate_amdgcn.py:229:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	ds_load_u8 v63, v113 offset:8192
	ds_load_u8 v64, v114 offset:8192
	ds_load_u8 v65, v112 offset:8192
	ds_load_u8 v66, v91 offset:8192
	ds_load_u8 v67, v110 offset:8192
	ds_load_u8 v68, v111 offset:8192
	ds_load_u8 v69, v108 offset:8192
	ds_load_u8 v88, v109 offset:8192
	ds_load_u8 v109, v84 offset:8192
	ds_load_u8 v110, v83 offset:8192
	ds_load_u8 v111, v86 offset:8192
	ds_load_u8 v112, v80 offset:8192
	ds_load_u8 v113, v79 offset:8192
	ds_load_u8 v114, v82 offset:8192
	ds_load_u8 v115, v81 offset:8192
	ds_load_u8 v116, v85 offset:8192
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v64, v69, v65, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v65, v66, v88, 0xc0c0004
	v_perm_b32 v66, v68, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v64, v64, 16, v63
	v_lshl_or_b32 v63, v66, 16, v65
	ds_load_u8 v65, v106 offset:8192
	ds_load_u8 v66, v107 offset:8192
	ds_load_u8 v67, v103 offset:8192
	ds_load_u8 v68, v104 offset:8192
	ds_load_u8 v69, v105 offset:8192
	ds_load_u8 v88, v101 offset:8192
	ds_load_u8 v101, v102 offset:8192
	ds_load_u8 v100, v100 offset:8192
	ds_load_u8 v102, v98 offset:8192
	ds_load_u8 v99, v99 offset:8192
	ds_load_u8 v103, v95 offset:8192
	ds_load_u8 v104, v96 offset:8192
	ds_load_u8 v105, v97 offset:8192
	ds_load_u8 v106, v93 offset:8192
	ds_load_u8 v107, v94 offset:8192
	ds_load_u8 v108, v92 offset:8192
	v_dual_mov_b32 v98, s11 :: v_dual_mov_b32 v97, s10
	v_dual_mov_b32 v96, s9 :: v_dual_mov_b32 v95, s8
	v_dual_mov_b32 v94, s7 :: v_dual_mov_b32 v93, s6
	v_dual_mov_b32 v92, s5 :: v_dual_mov_b32 v91, s4
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[79:86], v[63:64], v[13:14], v[91:98] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[91:98], v[63:64], v[15:16], v[91:98] neg_lo:[1,1,0]
	v_perm_b32 v15, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v66, v100, v67, 0xc0c0004
	v_perm_b32 v67, v69, v68, 0xc0c0004
	v_perm_b32 v68, v101, v88, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v14, v66, 16, v65
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v65, v99, v102, 0xc0c0004
	v_lshl_or_b32 v13, v68, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v108, v103, 0xc0c0004
	v_perm_b32 v67, v105, v104, 0xc0c0004
	v_perm_b32 v68, v107, v106, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[79:86], v[13:14], v[9:10], v[79:86] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v10, v66, 16, v65
	v_perm_b32 v65, v110, v109, 0xc0c0004
	v_lshl_or_b32 v9, v68, 16, v67
	v_perm_b32 v66, v116, v111, 0xc0c0004
	v_perm_b32 v67, v113, v112, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[91:98], v[13:14], v[11:12], v[91:98] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[79:86], v[9:10], v[5:6], v[79:86] neg_lo:[1,1,0]
	v_lshl_or_b32 v6, v66, 16, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v5, v15, 16, v67
	v_wmma_i32_16x16x16_iu4 v[91:98], v[9:10], v[7:8], v[91:98] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[79:86], v[5:6], v[1:2], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[91:98], v[5:6], v[3:4], v[91:98] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v66, v79
	v_cvt_f32_i32_e32 v67, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v68, v81
	v_cvt_f32_i32_e32 v69, v82
	v_cvt_f32_i32_e32 v88, v83
	v_cvt_f32_i32_e32 v63, v84
	v_cvt_f32_i32_e32 v64, v85
	v_cvt_f32_i32_e32 v65, v86
	v_cvt_f32_i32_e32 v115, v91
	v_cvt_f32_i32_e32 v116, v92
	v_cvt_f32_i32_e32 v117, v93
	v_cvt_f32_i32_e32 v118, v94
	v_cvt_f32_i32_e32 v119, v95
	v_cvt_f32_i32_e32 v120, v96
	v_cvt_f32_i32_e32 v121, v97
	v_cvt_f32_i32_e32 v122, v98
.LBB0_11:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v1, v54, v53
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s1, s1, s48
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s17, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s49, s1
	s_mov_b32 s19, 0x31027000
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_or_b32_e32 v2, 2, v1
	v_or_b32_e32 v3, 4, v1
	v_or_b32_e32 v4, 6, v1
	v_or_b32_e32 v5, 8, v1
	v_or_b32_e32 v6, 10, v1
	v_or_b32_e32 v7, 12, v1
	v_or_b32_e32 v8, 14, v1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v9, s0, v1, 1
	v_add_lshl_u32 v10, s0, v2, 1
	v_add_lshl_u32 v11, s0, v3, 1
	.loc	1 235 35                        ; generate_amdgcn.py:235:35
	s_add_i32 s1, s0, s35
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v12, s0, v4, 1
	v_add_lshl_u32 v13, s0, v5, 1
	v_add_lshl_u32 v14, s0, v6, 1
	v_add_lshl_u32 v15, s0, v7, 1
	v_add_lshl_u32 v16, s0, v8, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v1, s1, v1, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v2, s1, v2, 1
	v_add_lshl_u32 v3, s1, v3, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	s_mov_b32 s18, 0x7ffffffe
	s_mov_b32 s16, s14
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x8
	buffer_load_u16 v9, v9, s[16:19], 0 offen
	buffer_load_u16 v10, v10, s[16:19], 0 offen
	buffer_load_u16 v11, v11, s[16:19], 0 offen
	buffer_load_u16 v12, v12, s[16:19], 0 offen
	buffer_load_u16 v13, v13, s[16:19], 0 offen
	buffer_load_u16 v14, v14, s[16:19], 0 offen
	buffer_load_u16 v15, v15, s[16:19], 0 offen
	buffer_load_u16 v16, v16, s[16:19], 0 offen
	buffer_load_u16 v53, v1, s[16:19], 0 offen
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_cndmask_b32_e64 v2, 0x80000000, v3, s2
	v_add_lshl_u32 v3, s1, v4, 1
	v_add_lshl_u32 v4, s1, v5, 1
	v_add_lshl_u32 v5, s1, v6, 1
	v_add_lshl_u32 v6, s1, v7, 1
	v_add_lshl_u32 v7, s1, v8, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x6
	buffer_load_u16 v8, v1, s[16:19], 0 offen
	buffer_load_u16 v54, v2, s[16:19], 0 offen
	buffer_load_u16 v3, v3, s[16:19], 0 offen
	buffer_load_u16 v4, v4, s[16:19], 0 offen
	buffer_load_u16 v5, v5, s[16:19], 0 offen
	buffer_load_u16 v6, v6, s[16:19], 0 offen
	buffer_load_u16 v7, v7, s[16:19], 0 offen
.Ltmp22:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v1.l, 0
.Ltmp23:
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v1.h, v90.l
	v_mov_b16_e32 v2.h, v89.l
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp25:
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v2.l, v1.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v76, v76, v1
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v82, v118, v1
	v_mul_f32_e32 v86, v122, v1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v70, v70, v1 :: v_dual_mul_f32 v59, v59, v2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v69, v69, v2 :: v_dual_mul_f32 v80, v116, v1
	v_dual_mul_f32 v65, v65, v2 :: v_dual_mul_f32 v78, v78, v1
	v_dual_mul_f32 v63, v63, v2 :: v_dual_mul_f32 v84, v120, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v72, v72, v1 :: v_dual_mul_f32 v61, v61, v2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v79, v115, v1 :: v_dual_mul_f32 v68, v68, v2
	v_dual_mul_f32 v81, v117, v1 :: v_dual_mul_f32 v58, v58, v2
	v_dual_mul_f32 v83, v119, v1 :: v_dual_mul_f32 v88, v88, v2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v74, v74, v1 :: v_dual_mul_f32 v67, v67, v2
	v_dual_mul_f32 v77, v77, v1 :: v_dual_mul_f32 v66, v66, v2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v85, v121, v1 :: v_dual_mul_f32 v64, v64, v2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v71, v71, v1 :: v_dual_mul_f32 v60, v60, v2
	v_dual_mul_f32 v75, v75, v1 :: v_dual_mul_f32 v62, v62, v2
.Ltmp26:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s17, s25, 0xffff
	s_mov_b32 s16, s24
.Ltmp27:
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v9, 16, v9
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v11, 16, v11
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v70, v70, v9, v52
	v_fma_f32 v9, v59, v9, v51
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v72, v72, v11, v47
	v_fma_f32 v11, v61, v11, v33
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v52, v52, v70, s2
	v_cndmask_b32_e64 v9, v51, v9, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v77, v77, v15, v43
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v47, v47, v72, s2
	v_cndmask_b32_e64 v11, v33, v11, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v43, v43, v77, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v82, v82, v3, v40
	v_fma_f32 v3, v69, v3, v29
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v40, v40, v82, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v29, v29, v3, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v51, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v80, v80, v8, v42
	v_fma_f32 v8, v67, v8, v31
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v42, v42, v80, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v31, v31, v8, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v51, 0, 0x42800000, s12
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v84, v84, v5, v37
	v_fma_f32 v5, v63, v5, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v29
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v37, v37, v84, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v28, v28, v5, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v54, 16, v54
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v51, v51
	v_mul_f32_e32 v61, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v81, v81, v54, v41
	v_fma_f32 v54, v68, v54, v30
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v41, v41, v81, s2
	v_cndmask_b32_e64 v30, v30, v54, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v61, 0, 0x42800000, s14
	v_mul_f32_e32 v33, 0xbfb8aa3b, v41
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s14
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v83, v83, v4, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v28
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v39, v39, v83, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v61, v61
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v33, 0, 0x42800000, s4
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v8, 0xbfb8aa3b, v39
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v59, v79, v53, v50
	v_fma_f32 v53, v66, v53, v49
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v66, v78, v16, v38
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v41
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v79, v85, v6, v36
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v50, v50, v59, s2
	v_cndmask_b32_e64 v49, v49, v53, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v53, 0xbfb8aa3b, v30
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v4, v88, v4, v25
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v3, 0xbfb8aa3b, v50 :: v_dual_lshlrev_b32 v12, 16, v12
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v6, v64, v6, v27
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v36, v36, v79, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v25, v25, v4, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v4, 0xbfb8aa3b, v49
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v78, v86, v7, v35
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v74, v74, v12, v46
	v_fma_f32 v12, v62, v12, v32
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v7, v65, v7, v26
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v35, v35, v78, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v32, v12, s2
	v_cndmask_b32_e64 v27, v27, v6, s2
	v_cndmask_b32_e64 v26, v26, v7, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v5, 0xbfb8aa3b, v35
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v71, v71, v10, v48
	v_fma_f32 v10, v60, v10, v34
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v6, 0xbfb8aa3b, v36 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v37
	v_mul_f32_e32 v32, 0xbfb8aa3b, v40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v10, v34, v10, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v34, 0xbfb8aa3b, v42
	v_cndmask_b32_e64 v4, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v53
	v_dual_mul_f32 v54, 0xbfb8aa3b, v31 :: v_dual_mul_f32 v59, 0xbfb8aa3b, v26
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v34
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v32
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v8
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v7
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v6
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v5
	v_cndmask_b32_e64 v53, 0, 0x42800000, s11
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v49
	v_dual_mul_f32 v60, 0xbfb8aa3b, v27 :: v_dual_fmac_f32 v3, 0xbfb8aa3b, v50
	v_cndmask_b32_e64 v34, 0, 0x42800000, s3
	v_cndmask_b32_e64 v32, 0, 0x42800000, s5
	v_cndmask_b32_e64 v8, 0, 0x42800000, s6
	v_cndmask_b32_e64 v7, 0, 0x42800000, s7
	v_cndmask_b32_e64 v6, 0, 0x42800000, s8
	v_cndmask_b32_e64 v5, 0, 0x42800000, s9
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v54
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v59
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v30
	v_exp_f32_e32 v4, v4
	v_dual_mul_f32 v62, 0xbfb8aa3b, v25 :: v_dual_fmac_f32 v5, 0xbfb8aa3b, v35
	v_cndmask_b32_e64 v54, 0, 0x42800000, s10
	v_cndmask_b32_e64 v59, 0, 0x42800000, s0
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s1
	v_dual_fmac_f32 v34, 0xbfb8aa3b, v42 :: v_dual_fmac_f32 v7, 0xbfb8aa3b, v37
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v40
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v39
	v_dual_fmac_f32 v6, 0xbfb8aa3b, v36 :: v_dual_fmac_f32 v59, 0xbfb8aa3b, v26
	v_exp_f32_e32 v3, v3
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v32, v32
	v_exp_f32_e32 v8, v8
	v_exp_f32_e32 v7, v7
	v_exp_f32_e32 v6, v6
	v_exp_f32_e32 v5, v5
	v_ldexp_f32 v4, v4, v64
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v31
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v62
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v75, v75, v13, v45
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v48, v48, v71, s2
	v_cndmask_b32_e64 v38, v38, v66, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v60
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s9
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v53, v53
	v_ldexp_f32 v3, v3, v63
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v63, 1.0, v4
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v54, v54
	v_cndmask_b32_e64 v62, 0, 0x42800000, s13
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v46, v46, v74, s2
	v_cndmask_b32_e64 v45, v45, v75, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v60, 0, 0x42800000, s15
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s10
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s11
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s12
	v_ldexp_f32 v33, v33, v66
	v_ldexp_f32 v32, v32, v67
	v_ldexp_f32 v8, v8, v68
	v_ldexp_f32 v7, v7, v69
	v_ldexp_f32 v6, v6, v70
	v_ldexp_f32 v5, v5, v71
	v_dual_fmac_f32 v62, 0xbfb8aa3b, v25 :: v_dual_add_f32 v3, 1.0, v3
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v27
	v_ldexp_f32 v34, v34, v65
	v_ldexp_f32 v54, v54, v72
	v_ldexp_f32 v53, v53, v74
	v_ldexp_f32 v51, v51, v75
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_dual_add_f32 v4, 1.0, v5 :: v_dual_add_f32 v5, 1.0, v6
	v_dual_add_f32 v6, 1.0, v7 :: v_dual_add_f32 v7, 1.0, v8
	v_add_f32_e32 v8, 1.0, v32
	v_add_f32_e32 v32, 1.0, v33
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_fma_f32 v76, v76, v14, v44
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v62, v62
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_scale_f32 v65, null, v63, v63, v49
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v33, 1.0, v34 :: v_dual_add_f32 v34, 1.0, v51
	v_add_f32_e32 v51, 1.0, v53
	v_add_f32_e32 v53, 1.0, v54
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v69, null, v32, v32, v41
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v44, v44, v76, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s13
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v91, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v93, v69
	v_div_scale_f32 v67, null, v33, v33, v42
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v62, v62, v76
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v74, null, v7, v7, v39
	v_div_scale_f32 v71, null, v8, v8, v40
	v_div_scale_f32 v76, null, v6, v6, v37
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v103, -v65, v91, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v54, 1.0, v62
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v62, null, v3, v3, v50
	v_fma_f32 v105, -v69, v93, 1.0
	v_div_scale_f32 v79, null, v5, v5, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v90, v62
	v_div_scale_f32 v85, null, v51, v51, v30
	v_rcp_f32_e32 v92, v67
	v_fmac_f32_e32 v93, v105, v93
	v_div_scale_f32 v88, null, v34, v34, v29
	v_div_scale_f32 v81, null, v4, v4, v35
	v_rcp_f32_e32 v95, v74
	v_div_scale_f32 v83, null, v53, v53, v31
	v_rcp_f32_e32 v94, v71
	v_rcp_f32_e32 v96, v76
	v_rcp_f32_e32 v97, v79
	v_rcp_f32_e32 v100, v85
	v_rcp_f32_e32 v101, v88
	v_rcp_f32_e32 v98, v81
	v_fma_f32 v102, -v62, v90, 1.0
	v_rcp_f32_e32 v99, v83
	v_fma_f32 v104, -v67, v92, 1.0
	v_div_scale_f32 v64, vcc_lo, v50, v3, v50
	v_fma_f32 v107, -v74, v95, 1.0
	v_fmac_f32_e32 v90, v102, v90
	v_div_scale_f32 v66, s1, v49, v63, v49
	v_div_scale_f32 v68, s3, v42, v33, v42
	v_fma_f32 v106, -v71, v94, 1.0
	v_fma_f32 v108, -v76, v96, 1.0
	v_fma_f32 v109, -v79, v97, 1.0
	v_fma_f32 v112, -v85, v100, 1.0
	v_fma_f32 v113, -v88, v101, 1.0
	v_dual_fmac_f32 v91, v103, v91 :: v_dual_fmac_f32 v92, v104, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v97, v109, v97
	v_div_scale_f32 v70, s4, v41, v32, v41
	v_div_scale_f32 v75, s6, v39, v7, v39
	v_fma_f32 v110, -v81, v98, 1.0
	v_dual_fmac_f32 v95, v107, v95 :: v_dual_mul_f32 v102, v64, v90
	v_mul_f32_e32 v105, v70, v93
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v61, v61, v77
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v72, s5, v40, v8, v40
	v_div_scale_f32 v77, s7, v37, v6, v37
	v_div_scale_f32 v80, s8, v36, v5, v36
	v_div_scale_f32 v89, s12, v29, v34, v29
	v_fma_f32 v111, -v83, v99, 1.0
	v_fmac_f32_e32 v94, v106, v94
	v_dual_fmac_f32 v96, v108, v96 :: v_dual_fmac_f32 v101, v113, v101
	v_dual_fmac_f32 v100, v112, v100 :: v_dual_mul_f32 v103, v66, v91
	v_mul_f32_e32 v104, v68, v92
	v_dual_fmac_f32 v98, v110, v98 :: v_dual_mul_f32 v107, v75, v95
	v_fma_f32 v114, -v62, v102, v64
	v_div_scale_f32 v82, s9, v35, v4, v35
	v_div_scale_f32 v84, s10, v31, v53, v31
	v_dual_fmac_f32 v99, v111, v99 :: v_dual_mul_f32 v108, v77, v96
	v_mul_f32_e32 v109, v80, v97
	v_mul_f32_e32 v113, v89, v101
	v_fma_f32 v115, -v65, v103, v66
	v_mul_f32_e32 v106, v72, v94
	v_fma_f32 v116, -v67, v104, v68
	v_div_scale_f32 v86, s11, v30, v51, v30
	v_fma_f32 v117, -v69, v105, v70
	v_fma_f32 v119, -v74, v107, v75
	v_fmac_f32_e32 v102, v114, v90
	v_dual_mul_f32 v110, v82, v98 :: v_dual_mul_f32 v111, v84, v99
	v_fma_f32 v121, -v79, v109, v80
	v_fmac_f32_e32 v103, v115, v91
	v_fma_f32 v118, -v71, v106, v72
	v_fmac_f32_e32 v104, v116, v92
	v_dual_mul_f32 v112, v86, v100 :: v_dual_fmac_f32 v105, v117, v93
	v_fmac_f32_e32 v107, v119, v95
	v_fma_f32 v62, -v62, v102, v64
	v_fma_f32 v123, -v83, v111, v84
	v_dual_fmac_f32 v106, v118, v94 :: v_dual_fmac_f32 v109, v121, v97
	v_fma_f32 v64, -v65, v103, v66
	v_fma_f32 v65, -v67, v104, v68
	v_fma_f32 v66, -v69, v105, v70
	v_div_fmas_f32 v62, v62, v90, v102
	v_fma_f32 v120, -v76, v108, v77
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v111, v123, v99
	v_fma_f32 v67, -v71, v106, v72
	v_div_fmas_f32 v65, v65, v92, v104
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v122, -v81, v110, v82
	v_fma_f32 v68, -v74, v107, v75
	v_div_fixup_f32 v50, v62, v3, v50
	v_div_fmas_f32 v3, v66, v93, v105
	v_fma_f32 v125, -v88, v113, v89
	v_fmac_f32_e32 v108, v120, v96
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v33, v65, v33, v42
	v_div_fmas_f32 v62, v67, v94, v106
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v3, v3, v32, v41
	v_fmac_f32_e32 v110, v122, v98
	v_div_fmas_f32 v42, v68, v95, v107
	v_fma_f32 v124, -v85, v112, v86
	v_fmac_f32_e32 v113, v125, v101
	v_fma_f32 v69, -v76, v108, v77
	v_fma_f32 v70, -v79, v109, v80
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v40, v62, v8, v40
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v8, v48, v33
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v33, v42, v7, v39
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v7, v47, v3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v71, -v81, v110, v82
	v_fmac_f32_e32 v112, v124, v100
	v_div_fmas_f32 v32, v69, v96, v108
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v72, -v83, v111, v84
	v_div_fmas_f32 v41, v70, v97, v109
	s_mov_b32 vcc_lo, s9
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v3, v45, v33
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v39, v71, v98, v110
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v74, -v85, v112, v86
	v_div_fixup_f32 v6, v32, v6, v37
	v_div_fmas_f32 v32, v64, v91, v103
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v75, -v88, v113, v89
	v_div_fmas_f32 v33, v72, v99, v111
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v5, v41, v5, v36
	v_div_fmas_f32 v36, v74, v100, v112
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v31, v33, v53, v31
	v_div_fmas_f32 v37, v75, v101, v113
	v_div_fixup_f32 v35, v39, v4, v35
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v4, v44, v6
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v60, v60
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v31, v10, v31
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v29, v37, v34, v29
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v34, 1.0, v61
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v10, v59
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v6, v43, v5 :: v_dual_mul_f32 v33, v57, v2
	v_mul_f32_e32 v5, v38, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v37, null, v34, v34, v28
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, s15
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v30, v36, v51, v30
	v_rcp_f32_e32 v39, v37
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v12, v12, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v10, v10, v35
	v_ldexp_f32 v29, v60, v78
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v32, v32, v63, v49
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v30, v11, v30
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v11, null, v54, v54, v25
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_fma_f32 v14, v33, v14, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v44, -v37, v39, 1.0
	v_rcp_f32_e32 v36, v11
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v13, v58, v13, v24
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v35, null, v29, v29, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v44, v39
	v_div_scale_f32 v44, s0, v28, v34, v28
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v42, v35
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v13, v24, v13, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v49, v44, v39
	v_fma_f32 v41, -v11, v36, 1.0
	v_div_scale_f32 v43, null, v10, v10, v26
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v23, v14, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v33, -v37, v49, v44
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v38, v56, v2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v45, v43
	s_mov_b32 s7, 0x76543210
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v49, v33, v39
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v15, v38, v15, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v22, v15, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v48, -v43, v45, 1.0
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v2, v55, v2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v22, v9, v32
	v_mul_f32_e32 v9, v46, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v45, v48, v45
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_fma_f32 v2, v2, v16, v21
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v16, -v35, v42, 1.0
	v_div_scale_f32 v48, s3, v26, v10, v26
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v24, |v9|, |v3|, |v4|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp29:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v2, v21, v2, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v42, v16, v42
	v_div_scale_f32 v16, s1, v27, v29, v27
	v_fmac_f32_e32 v36, v41, v36
	v_div_scale_f32 v41, vcc_lo, v25, v54, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v51, v16, v42
	v_mul_f32_e32 v53, v48, v45
	v_mul_f32_e32 v47, v41, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v43, v53, v48
	v_fma_f32 v38, -v11, v47, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v53, v33, v45
	v_fmac_f32_e32 v47, v38, v36
	v_fma_f32 v38, -v35, v51, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v11, -v11, v47, v41
	v_fmac_f32_e32 v51, v38, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v11, v11, v36, v47
	v_fma_f32 v36, -v37, v49, v44
	v_fma_f32 v16, -v35, v51, v16
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v11, v11, v54, v25
	v_div_fmas_f32 v33, v36, v39, v49
	s_mov_b32 vcc_lo, s1
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v25, |v6|, |v5|
.Ltmp31:
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v16, v16, v42, v51
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v21, v33, v34, v28
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v13, v13, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v16, v16, v29, v27
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v14, v14, v21 :: v_dual_mul_f32 v15, v15, v16
	v_mul_f32_e32 v16, v52, v50
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v35, -v43, v53, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp32:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v21, |v16|, |v8|, |v7|
.Ltmp33:
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v35, v35, v45, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v10, v35, v10, v26
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v23, v2, v10
.Ltmp34:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, |v22|, |v31|, |v30|
	v_max3_f32 v10, |v12|, |v13|, |v14|
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e64 v11, |v15|, |v23|
	v_max3_f32 v10, v2, v10, v11
	v_max3_f32 v11, v21, v24, v25
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v2, 3, v20
	v_lshrrev_b32_e32 v25, 2, v19
	v_lshlrev_b32_e32 v20, 7, v20
	v_permlanex16_b32 v21, v10, s7, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v11, s7, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v26, v2, v25
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v24, v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v20, 0, v20, v26
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v10, v10, v21
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_or_b32 v21, v19, 2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v11, v11, v24
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xad_u32 v21, v21, v25, 0
	ds_store_b64 v20, v[10:11]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[10:11], v21
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v20, v10 :: v_dual_mov_b32 v21, v11
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v20, v20, v20 :: v_dual_max_f32 v21, v21, v21
	v_dual_max_f32 v10, v10, v20 :: v_dual_max_f32 v11, v11, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v20, v10
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v21, v11 :: v_dual_max_f32 v20, v20, v20
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v10, v10, v20 :: v_dual_max_f32 v21, v21, v21
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v20, v10 :: v_dual_max_f32 v11, v11, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v21, v11 :: v_dual_max_f32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v10, v10, v20 :: v_dual_max_f32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v20, v10 :: v_dual_max_f32 v11, v11, v21
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v21, v11 :: v_dual_max_f32 v20, v20, v20
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v10, v10, v20 :: v_dual_max_f32 v21, v21, v21
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add_nc_u32_e32 v20, 0, v25
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v11, v11, v21
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add_nc_u32_e32 v21, 0, v2
.Ltmp54:
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v2, s33, 7, v2
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	ds_store_b64 v20, v[10:11]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[10:11], v21
.Ltmp56:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v10, 0x2b8cbccc, v10 :: v_dual_max_f32 v11, 0x2b8cbccc, v11
	v_div_scale_f32 v20, null, 0x40e00000, 0x40e00000, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v21, null, 0x40e00000, 0x40e00000, v11
	v_div_scale_f32 v28, vcc_lo, v10, 0x40e00000, v10
	v_rcp_f32_e32 v24, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v25, v21
	v_fma_f32 v26, -v20, v24, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v21, v25, 1.0
	v_fmac_f32_e32 v24, v26, v24
	v_div_scale_f32 v26, s0, v11, 0x40e00000, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v25, v27, v25
	v_mul_f32_e32 v27, v28, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v29, v26, v25
	v_fma_f32 v32, -v20, v27, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v21, v29, v26
	v_fmac_f32_e32 v27, v32, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v29, v33, v25
	v_fma_f32 v20, -v20, v27, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v21, -v21, v29, v26
	v_div_fmas_f32 v20, v20, v24, v27
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v21, v21, v25, v29
	v_div_fixup_f32 v10, v20, 0x40e00000, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v11, v21, 0x40e00000, v11
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_bfe_u32 v20, v10, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_bfe_u32 v21, v11, 16, 1
	v_add3_u32 v28, v10, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v11, v21, 0x7fff
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v11, 0xffff0000, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v20, 0xffff0000, v10
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v38, null, v11, v11, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v42, null, v20, v20, v16
	v_rcp_f32_e32 v50, v38
	v_div_scale_f32 v43, null, v20, v20, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v52, v42
	v_rcp_f32_e32 v53, v43
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v60, -v38, v50, 1.0
	v_fma_f32 v62, -v42, v52, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v50, v60, v50
	v_div_scale_f32 v34, null, v11, v11, v13
	v_div_scale_f32 v21, null, v11, v11, v22
	v_div_scale_f32 v25, null, v11, v11, v31
	v_div_scale_f32 v32, null, v11, v11, v12
	v_rcp_f32_e32 v48, v34
	v_div_scale_f32 v27, null, v11, v11, v30
	v_rcp_f32_e32 v44, v21
	v_rcp_f32_e32 v45, v25
	v_rcp_f32_e32 v47, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_rcp_f32_e32 v46, v27
	v_div_scale_f32 v40, null, v11, v11, v23
	v_div_scale_f32 v35, s3, v13, v11, v13
	v_fma_f32 v58, -v34, v48, 1.0
	v_div_scale_f32 v36, null, v11, v11, v14
	v_fma_f32 v54, -v21, v44, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v55, -v25, v45, 1.0
	v_fma_f32 v57, -v32, v47, 1.0
	v_fmac_f32_e32 v48, v58, v48
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v56, -v27, v46, 1.0
	v_div_scale_f32 v24, vcc_lo, v22, v11, v22
	v_rcp_f32_e32 v51, v40
	v_fmac_f32_e32 v44, v54, v44
	v_div_scale_f32 v26, s0, v31, v11, v31
	v_fmac_f32_e32 v45, v55, v45
	v_dual_fmac_f32 v47, v57, v47 :: v_dual_mul_f32 v58, v35, v48
	v_div_scale_f32 v29, s1, v30, v11, v30
	v_rcp_f32_e32 v49, v36
	v_fmac_f32_e32 v46, v56, v46
	v_mul_f32_e32 v54, v24, v44
	v_div_scale_f32 v33, s2, v12, v11, v12
	v_div_scale_f32 v39, s5, v15, v11, v15
	v_fma_f32 v67, -v34, v58, v35
	v_dual_mul_f32 v55, v26, v45 :: v_dual_mul_f32 v56, v29, v46
	v_fma_f32 v61, -v40, v51, 1.0
	v_fma_f32 v63, -v21, v54, v24
	v_dual_mul_f32 v57, v33, v47 :: v_dual_fmac_f32 v52, v62, v52
	v_mul_f32_e32 v60, v39, v50
	v_fmac_f32_e32 v58, v67, v48
	v_fma_f32 v64, -v25, v55, v26
	v_fma_f32 v59, -v36, v49, 1.0
	v_fma_f32 v65, -v27, v56, v29
	v_dual_fmac_f32 v51, v61, v51 :: v_dual_fmac_f32 v54, v63, v44
	v_fma_f32 v66, -v32, v57, v33
	v_fma_f32 v69, -v38, v60, v39
	v_fmac_f32_e32 v55, v64, v45
	v_dual_fmac_f32 v49, v59, v49 :: v_dual_fmac_f32 v56, v65, v46
	v_fma_f32 v21, -v21, v54, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v57, v66, v47 :: v_dual_fmac_f32 v60, v69, v50
	v_fma_f32 v24, -v25, v55, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v25, -v27, v56, v29
	v_div_fmas_f32 v21, v21, v44, v54
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v26, -v32, v57, v33
	v_div_fmas_f32 v24, v24, v45, v55
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v21, v21, v11, v22
	v_div_fmas_f32 v25, v25, v46, v56
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v27, -v34, v58, v35
	v_div_fmas_f32 v22, v26, v47, v57
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v37, s4, v14, v11, v14
	v_div_fixup_f32 v24, v24, v11, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v12, v22, v11, v12
	v_div_scale_f32 v22, null, v20, v20, v7
	v_div_fmas_f32 v26, v27, v48, v58
	v_div_scale_f32 v41, s6, v23, v11, v23
	v_rcp_f32_e32 v31, v22
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v26, v11, v13
	v_div_scale_f32 v26, s0, v16, v20, v16
	v_mul_f32_e32 v59, v37, v49
	v_div_fixup_f32 v25, v25, v11, v30
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_dual_mul_f32 v32, v26, v52 :: v_dual_mul_f32 v61, v41, v51
	v_fma_f32 v68, -v36, v59, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v22, v31, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v12, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v30, -v40, v61, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v31, v34, v31
	v_div_scale_f32 v34, s2, v7, v20, v7
	v_fmac_f32_e32 v59, v68, v49
	v_fmac_f32_e32 v61, v30, v51
	v_fma_f32 v30, -v42, v32, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v36, v59, v37
	v_fma_f32 v35, -v40, v61, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v32, v30, v52
	v_div_scale_f32 v36, null, v20, v20, v9
	v_div_fmas_f32 v27, v29, v49, v59
	v_fma_f32 v29, -v43, v53, 1.0
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v26, -v42, v32, v26
	v_rcp_f32_e32 v37, v36
	v_div_fixup_f32 v14, v27, v11, v14
	v_fmac_f32_e32 v53, v29, v53
	v_div_scale_f32 v29, s1, v8, v20, v8
	v_fma_f32 v27, -v38, v60, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v14, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v33, v29, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v27, v27, v50, v60
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v30, -v43, v33, v29
	v_div_fmas_f32 v35, v35, v51, v61
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v15, v27, v11, v15
	v_div_fmas_f32 v26, v26, v52, v32
	v_fmac_f32_e32 v33, v30, v53
	v_mul_f32_e32 v30, v34, v31
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v11, v35, v11, v23
	v_div_fixup_f32 v16, v26, v20, v16
	v_fma_f32 v29, -v43, v33, v29
	v_fma_f32 v32, -v22, v30, v34
	v_fma_f32 v26, -v36, v37, 1.0
	v_div_scale_f32 v23, null, v20, v20, v3
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v30, v32, v31
	v_div_fmas_f32 v29, v29, v53, v33
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v37, v26, v37
	v_rcp_f32_e32 v27, v23
	v_fma_f32 v22, -v22, v30, v34
	v_div_scale_f32 v26, null, v20, v20, v4
	v_div_fixup_f32 v8, v29, v20, v8
	v_div_scale_f32 v29, null, v20, v20, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v22, v22, v31, v30
	v_div_scale_f32 v30, vcc_lo, v9, v20, v9
	v_div_scale_f32 v34, null, v20, v20, v5
	v_rcp_f32_e32 v31, v26
	v_mul_f32_e32 v33, v30, v37
	v_div_fixup_f32 v7, v22, v20, v7
	v_fma_f32 v22, -v23, v27, 1.0
	v_rcp_f32_e32 v32, v29
	v_rcp_f32_e32 v38, v34
	v_fma_f32 v39, -v36, v33, v30
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v27, v22, v27
	v_div_scale_f32 v22, s0, v3, v20, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v33, v39, v37
	v_fma_f32 v35, -v26, v31, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v11, v11
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v29, v32, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v34, v38, 1.0
	v_fma_f32 v30, -v36, v33, v30
	v_fmac_f32_e32 v31, v35, v31
	v_div_scale_f32 v35, s1, v4, v20, v4
	v_fmac_f32_e32 v32, v40, v32
	v_div_fmas_f32 v30, v30, v37, v33
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_div_scale_f32 v40, s2, v6, v20, v6
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v16, v16, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v38, v42, v38
	v_div_scale_f32 v42, s3, v5, v20, v5
	v_mul_f32_e32 v43, v35, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_dual_mul_f32 v41, v22, v27 :: v_dual_mul_f32 v44, v40, v32
	v_mul_f32_e32 v45, v42, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v26, v43, v35
	v_div_fixup_f32 v9, v30, v20, v9
	v_fma_f32 v39, -v23, v41, v22
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v7, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v43, v36, v31
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v9, v9
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v41, v39, v27
	v_fma_f32 v39, -v29, v44, v40
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v13, v13, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v26, -v26, v43, v35
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v22, -v23, v41, v22
	v_fma_f32 v23, -v34, v45, v42
	v_fmac_f32_e32 v44, v39, v32
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v22, v22, v27, v41
	v_fmac_f32_e32 v45, v23, v38
	v_fma_f32 v23, -v29, v44, v40
	s_mov_b32 vcc_lo, s1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v11, v11, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v26, v26, v31, v43
	v_fma_f32 v27, -v34, v45, v42
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v3, v22, v20, v3
	v_div_fmas_f32 v23, v23, v32, v44
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v4, v26, v20, v4
	v_div_fmas_f32 v27, v27, v38, v45
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v22, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v6, v23, v20, v6
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v8, v8, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v4, v4
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v5, v27, v20, v5
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v20, v21
	v_rndne_f32_e32 v21, v24
	v_rndne_f32_e32 v6, v6
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v22, v22, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v15, v15
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v23, v11
	v_cvt_i32_f32_e32 v8, v8
	v_cvt_i32_f32_e32 v7, v7
	v_cvt_i32_f32_e32 v9, v9
	v_and_b32_e32 v11, 15, v13
	v_and_b32_e32 v13, 15, v15
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v15, 2, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v3, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_cvt_i32_f32_e32 v25, v4
	v_cvt_i32_f32_e32 v26, v6
	v_cvt_i32_f32_e32 v27, v5
	v_and_b32_e32 v4, 15, v21
	v_and_b32_e32 v5, 15, v22
	v_and_b32_e32 v6, 15, v12
	v_and_b32_e32 v12, 15, v14
	v_and_b32_e32 v14, 15, v23
	v_and_b32_e32 v21, 15, v8
	v_and_b32_e32 v22, 15, v7
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v7, 11, v0
	v_and_b32_e32 v8, 0x60, v0
	v_and_or_b32 v15, 0x600, v15, v17
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v23, 15, v9
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v9, 5, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v7, 0x3000, v7
	v_xor_b32_e32 v8, v15, v8
	v_lshlrev_b32_e32 v15, 7, v0
	v_and_b32_e32 v9, 0x60, v9
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v24, v3
	v_and_b32_e32 v3, 15, v20
	v_and_b32_e32 v20, 15, v16
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v16, 7, v73
	v_add_nc_u32_e32 v7, 0, v7
	v_and_or_b32 v9, 0x3600, v15, v9
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v24, 15, v24
	v_and_b32_e32 v25, 15, v25
	v_and_b32_e32 v26, 15, v26
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v7, v7, v16, v8
	v_xad_u32 v8, v9, v87, 0
	ds_store_b128 v7, v[3:6]
	ds_store_b128 v7, v[20:23] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v8
	ds_load_b128 v[20:23], v8 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v27, 15, v27
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[11:14]
	ds_store_b128 v7, v[24:27] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[11:14], v8
	ds_load_b128 v[24:27], v8 offset:2048
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v8.l, v10.h
	v_mov_b16_e32 v7.l, v28.h
	v_mov_b16_e32 v7.h, v1.l
	v_mov_b16_e32 v8.h, v1.l
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v73
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v9, v20, 4, v3
	v_lshl_or_b32 v10, v21, 4, v4
	v_lshl_or_b32 v3, v22, 4, v5
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_or_b32_e32 v4, s34, v18
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v1, v23, 4, v6
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v8, v7, v8, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v3.l
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mad_u64_u32 v[3:4], null, v4, s0, v[2:3]
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 87 14 is_stmt 1               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v2, v0, 31, s34
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v5, v24, 4, v11
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v6, v25, 4, v12
	v_lshl_or_b32 v11, v26, 4, v13
	v_lshl_or_b32 v12, v27, 4, v14
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v1.l, 8, v1.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_bfe_i32 v8, v8, 0, 16
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v0.l, 0xff, v9.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v9, v2, s0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v10.l
	v_lshlrev_b16 v0.h, 8, v12.l
	v_and_b16 v1.h, 0xff, v11.l
	v_lshlrev_b16 v2.l, 8, v6.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_permlanex16_b32 v6, v8, s7, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v2.h, 0xff, v5.l
	v_or_b16 v4.l, v0.l, v1.l
	v_or_b16 v5.h, v1.h, v0.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add_lshl_u32 v0, v9, s33, 1
	v_cndmask_b32_e32 v1, v6, v7, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v19
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.l, v2.h, v2.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[4:5], v3, s[16:19], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s17, s27, 0xffff
	s_mov_b32 s16, s26
	buffer_store_b16 v1, v0, s[16:19], 0 offen
.Ltmp57:
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp58:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 148
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 148
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12864
; TotalNumSgprs: 53
; NumVgprs: 148
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 148
; Occupancy: 9
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
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     148
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
