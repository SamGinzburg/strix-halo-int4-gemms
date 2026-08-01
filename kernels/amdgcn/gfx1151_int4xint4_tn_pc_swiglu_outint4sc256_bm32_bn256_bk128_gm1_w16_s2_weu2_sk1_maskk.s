	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[24:25], s[0:1], 0x30
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s7, s2
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshrrev_b32_e32 v2, 3, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v57, 4, v0
	v_lshlrev_b32_e32 v59, 2, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v58, 0x1e0, v0
	v_or_b32_e32 v37, 0x7f0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v3, 28, v59
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v61, 1, v58
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	v_add_nc_u32_e32 v40, 0, v59
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s24, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s10, s10, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s5, s4
	.loc	1 152 30                        ; generate_amdgcn.py:152:30
	v_mul_lo_u32 v4, s24, v2
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
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
	s_sub_i32 s6, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s5, s8, s6
	s_load_b128 s[8:11], s[0:1], 0x0
	.loc	1 119 20 is_stmt 0              ; generate_amdgcn.py:119:20
	s_min_i32 s5, s5, 1
	.loc	1 120 29 is_stmt 1              ; generate_amdgcn.py:120:29
	s_mul_i32 s4, s6, s4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s7, s5
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s4, s2, s4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s12, s7
	s_xor_b32 s14, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s14, s14, 31
	v_rcp_iflag_f32_e32 v1, s12
	s_load_b32 s12, s[0:1], 0x38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	v_readfirstlane_b32 s13, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[10:11]
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_or_b32_e32 v1, 32, v57
	s_mov_b32 s11, 0x31027000
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_mov_b32 s23, s11
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s13, s13, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_u32_f32 s10, s13
	s_sub_i32 s13, 0, s7
	s_mul_i32 s13, s13, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s10, s13
	s_abs_i32 s13, s4
	s_add_i32 s2, s10, s2
	s_mov_b32 s10, 0x7ffffffe
	s_mul_hi_u32 s2, s13, s2
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_mov_b32 s22, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_i32 s15, s2, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s13, s13, s15
	s_add_i32 s15, s2, 1
	s_sub_i32 s16, s13, s7
	s_cmp_ge_u32 s13, s7
	s_cselect_b32 s2, s15, s2
	s_cselect_b32 s13, s16, s13
	s_add_i32 s15, s2, 1
	s_cmp_ge_u32 s13, s7
	s_cselect_b32 s2, s15, s2
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s13, s12, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s2, s2, s14
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s13, s12, s13
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s26, s2, s14
	.loc	1 135 23                        ; generate_amdgcn.py:135:23
	s_lshl_b32 s15, s3, 6
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s28, s13, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s13, s26, s5
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	v_or_b32_e32 v5, s15, v2
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s13, s4, s13
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_lshl_b32 s7, s25, 1
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s13, s13, s6
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s5, s26, 8
	.loc	1 136 23                        ; generate_amdgcn.py:136:23
	v_cmp_gt_i32_e32 vcc_lo, s28, v5
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s27, s13, 5
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_gt_i32 s12, 1
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	v_or_b32_e32 v6, s15, v57
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cselect_b32 s6, -1, 0
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	s_mul_i32 s16, s7, s15
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_and_b32 vcc_lo, s6, vcc_lo
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v60, 15, v0
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	v_or_b32_e32 v7, s15, v1
	.loc	1 137 23                        ; generate_amdgcn.py:137:23
	v_cmp_gt_i32_e64 s2, s28, v6
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	s_add_i32 s13, s5, s16
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v56, 4, v60
	.loc	1 137 23                        ; generate_amdgcn.py:137:23
	v_cmp_gt_i32_e64 s4, s28, v7
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_and_b32 s2, s6, s2
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 158 30 is_stmt 0              ; generate_amdgcn.py:158:30
	v_mad_u64_u32 v[9:10], null, s7, v57, v[56:57]
	.loc	1 152 30 is_stmt 1              ; generate_amdgcn.py:152:30
	v_add3_u32 v10, v4, v3, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[3:4], null, s24, s15, v[10:11]
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_lshl_add_u32 v39, s25, 6, v9
	v_add_nc_u32_e32 v5, s13, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v4, s13, v39
	.loc	1 158 22 is_stmt 0              ; generate_amdgcn.py:158:22
	v_cndmask_b32_e64 v6, 0x80000000, v5, s2
	.loc	1 166 39 is_stmt 1              ; generate_amdgcn.py:166:39
	v_add_nc_u32_e32 v5, s25, v5
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_and_b32 vcc_lo, s6, s4
	.loc	1 166 39                        ; generate_amdgcn.py:166:39
	v_add_nc_u32_e32 v7, s25, v4
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_cndmask_b32_e32 v8, 0x80000000, v4, vcc_lo
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_cndmask_b32_e64 v11, 0x80000000, v5, s2
	v_or_b32_e32 v38, v61, v60
	s_mov_b32 s2, 0
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	buffer_load_b32 v24, v3, s[8:11], 0 offen
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_clause 0x3
	buffer_load_b128 v[3:6], v6, s[20:23], 0 offen
	buffer_load_b128 v[12:15], v8, s[20:23], 0 offen
	buffer_load_b128 v[16:19], v11, s[20:23], 0 offen
	buffer_load_b128 v[20:23], v7, s[20:23], 0 offen
	v_lshlrev_b32_e32 v7, 4, v0
	v_or_b32_e32 v11, 0x3f0, v0
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmpk_gt_i32 s12, 0x81
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_add_nc_u32_e32 v41, 0, v7
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	s_waitcnt vmcnt(4)
	ds_store_b32 v40, v24 offset:32768
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v41, v[3:6]
	s_waitcnt vmcnt(2)
	ds_store_b128 v41, v[12:15] offset:8192
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v41, v[16:19] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v41, v[20:23] offset:24576
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_or_b32_e32 v244, v61, v60
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	v_or_b32_e32 v64, 0x3f0, v0
	v_or_b32_e32 v67, 0x7f0, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_or_b32_e32 v42, 0x100, v244
	v_or_b32_e32 v43, 0x200, v244
	v_or_b32_e32 v44, 0x300, v244
	v_or_b32_e32 v45, 0x400, v244
	v_or_b32_e32 v46, 0x500, v244
	v_or_b32_e32 v47, 0x600, v244
	v_or_b32_e32 v48, 0x700, v244
	v_or_b32_e32 v49, 0x800, v244
	v_or_b32_e32 v50, 0x900, v244
	v_or_b32_e32 v51, 0xa00, v244
	v_or_b32_e32 v236, 0xb00, v244
	v_or_b32_e32 v237, 0xc00, v244
	v_or_b32_e32 v239, 0xd00, v244
	v_or_b32_e32 v235, 0xe00, v244
	v_or_b32_e32 v238, 0xf00, v244
	v_or_b32_e32 v229, 0x1000, v244
	v_or_b32_e32 v228, 0x1100, v244
	v_or_b32_e32 v226, 0x1200, v244
	v_or_b32_e32 v225, 0x1300, v244
	v_or_b32_e32 v231, 0x1400, v244
	v_or_b32_e32 v230, 0x1500, v244
	v_or_b32_e32 v224, 0x1600, v244
	v_or_b32_e32 v227, 0x1700, v244
	v_or_b32_e32 v221, 0x1800, v244
	v_or_b32_e32 v220, 0x1900, v244
	v_or_b32_e32 v218, 0x1a00, v244
	v_or_b32_e32 v217, 0x1b00, v244
	v_or_b32_e32 v223, 0x1c00, v244
	v_or_b32_e32 v222, 0x1d00, v244
	v_or_b32_e32 v216, 0x1e00, v244
	v_or_b32_e32 v219, 0x1f00, v244
	v_or_b32_e32 v208, 0x2000, v244
	v_or_b32_e32 v210, 0x2100, v244
	v_or_b32_e32 v212, 0x2200, v244
	v_or_b32_e32 v211, 0x2300, v244
	v_or_b32_e32 v215, 0x2400, v244
	v_or_b32_e32 v214, 0x2500, v244
	v_or_b32_e32 v209, 0x2600, v244
	v_or_b32_e32 v213, 0x2700, v244
	v_or_b32_e32 v191, 0x2800, v244
	v_or_b32_e32 v190, 0x2900, v244
	v_or_b32_e32 v187, 0x2a00, v244
	v_or_b32_e32 v186, 0x2b00, v244
	v_or_b32_e32 v193, 0x2c00, v244
	v_or_b32_e32 v192, 0x2d00, v244
	v_or_b32_e32 v182, 0x2e00, v244
	v_or_b32_e32 v188, 0x2f00, v244
	v_or_b32_e32 v171, 0x3000, v244
	v_or_b32_e32 v170, 0x3100, v244
	v_or_b32_e32 v161, 0x3200, v244
	v_or_b32_e32 v160, 0x3300, v244
	v_or_b32_e32 v173, 0x3400, v244
	v_or_b32_e32 v172, 0x3500, v244
	v_or_b32_e32 v159, 0x3600, v244
	v_or_b32_e32 v166, 0x3700, v244
	v_or_b32_e32 v131, 0x3800, v244
	v_or_b32_e32 v130, 0x3900, v244
	v_or_b32_e32 v127, 0x3a00, v244
	v_or_b32_e32 v126, 0x3b00, v244
	v_or_b32_e32 v129, 0x3c00, v244
	v_or_b32_e32 v128, 0x3d00, v244
	v_or_b32_e32 v124, 0x3e00, v244
	v_or_b32_e32 v125, 0x3f00, v244
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s2, -1
                                        ; implicit-def: $vgpr64
                                        ; implicit-def: $vgpr67
                                        ; implicit-def: $vgpr244
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr43
                                        ; implicit-def: $vgpr44
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr236
                                        ; implicit-def: $vgpr237
                                        ; implicit-def: $vgpr239
                                        ; implicit-def: $vgpr235
                                        ; implicit-def: $vgpr238
                                        ; implicit-def: $vgpr229
                                        ; implicit-def: $vgpr228
                                        ; implicit-def: $vgpr226
                                        ; implicit-def: $vgpr225
                                        ; implicit-def: $vgpr231
                                        ; implicit-def: $vgpr230
                                        ; implicit-def: $vgpr224
                                        ; implicit-def: $vgpr227
                                        ; implicit-def: $vgpr221
                                        ; implicit-def: $vgpr220
                                        ; implicit-def: $vgpr218
                                        ; implicit-def: $vgpr217
                                        ; implicit-def: $vgpr223
                                        ; implicit-def: $vgpr222
                                        ; implicit-def: $vgpr216
                                        ; implicit-def: $vgpr219
                                        ; implicit-def: $vgpr208
                                        ; implicit-def: $vgpr210
                                        ; implicit-def: $vgpr212
                                        ; implicit-def: $vgpr211
                                        ; implicit-def: $vgpr215
                                        ; implicit-def: $vgpr214
                                        ; implicit-def: $vgpr209
                                        ; implicit-def: $vgpr213
                                        ; implicit-def: $vgpr191
                                        ; implicit-def: $vgpr190
                                        ; implicit-def: $vgpr187
                                        ; implicit-def: $vgpr186
                                        ; implicit-def: $vgpr193
                                        ; implicit-def: $vgpr192
                                        ; implicit-def: $vgpr182
                                        ; implicit-def: $vgpr188
                                        ; implicit-def: $vgpr171
                                        ; implicit-def: $vgpr170
                                        ; implicit-def: $vgpr161
                                        ; implicit-def: $vgpr160
                                        ; implicit-def: $vgpr173
                                        ; implicit-def: $vgpr172
                                        ; implicit-def: $vgpr159
                                        ; implicit-def: $vgpr166
                                        ; implicit-def: $vgpr131
                                        ; implicit-def: $vgpr130
                                        ; implicit-def: $vgpr127
                                        ; implicit-def: $vgpr126
                                        ; implicit-def: $vgpr129
                                        ; implicit-def: $vgpr128
                                        ; implicit-def: $vgpr124
                                        ; implicit-def: $vgpr125
.LBB0_3:                                ; %Flow
	s_load_b256 s[12:19], s[0:1], 0x10
	v_add_nc_u32_e32 v36, 0, v60
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s1, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v12, 0 :: v_dual_add_nc_u32 v45, 0, v38
.Ltmp12:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:133:32 ]
	s_add_i32 s0, s28, 63
.Ltmp13:
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_sub_nc_u32_e32 v42, s28, v2
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:133:32 ]
	s_lshr_b32 s0, s0, 6
.Ltmp15:
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_sub_nc_u32_e32 v43, s28, v57
	v_sub_nc_u32_e32 v44, s28, v1
	v_sub_nc_u32_e64 v46, s0, 2 clamp
	v_mov_b32_e32 v13, v12
	v_mov_b32_e32 v14, v12
	v_mov_b32_e32 v15, v12
	v_mov_b32_e32 v16, v12
	v_mov_b32_e32 v17, v12
	v_mov_b32_e32 v18, v12
	v_mov_b32_e32 v19, v12
	v_mov_b32_e32 v20, v12
	v_mov_b32_e32 v21, v12
	v_mov_b32_e32 v22, v12
	v_mov_b32_e32 v23, v12
	v_mov_b32_e32 v24, v12
	v_mov_b32_e32 v25, v12
	v_mov_b32_e32 v26, v12
	v_mov_b32_e32 v27, v12
	v_mov_b32_e32 v1, v12
	v_mov_b32_e32 v2, v12
	v_mov_b32_e32 v3, v12
	v_mov_b32_e32 v4, v12
	v_mov_b32_e32 v5, v12
	v_mov_b32_e32 v6, v12
	v_mov_b32_e32 v7, v12
	v_mov_b32_e32 v8, v12
	v_mov_b32_e32 v28, v12
	v_mov_b32_e32 v29, v12
	v_mov_b32_e32 v30, v12
	v_mov_b32_e32 v31, v12
	v_mov_b32_e32 v32, v12
	v_mov_b32_e32 v33, v12
	v_mov_b32_e32 v34, v12
	v_mov_b32_e32 v35, v12
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	s_add_i32 s2, s1, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	s_add_i32 s0, s2, s3
	s_lshl_b32 s0, s0, 6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 152 30                        ; generate_amdgcn.py:152:30
	v_mad_u64_u32 v[47:48], null, s0, s24, v[10:11]
	.loc	1 136 23                        ; generate_amdgcn.py:136:23
	v_cmp_lt_i32_e32 vcc_lo, s0, v42
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	s_mul_i32 s4, s0, s7
	s_add_i32 s4, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 166 39                        ; generate_amdgcn.py:166:39
	s_add_i32 s28, s4, s25
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	v_cndmask_b32_e32 v47, 0x80000000, v47, vcc_lo
	.loc	1 137 23                        ; generate_amdgcn.py:137:23
	v_cmp_lt_i32_e32 vcc_lo, s0, v44
	v_cmp_lt_i32_e64 s0, s0, v43
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	buffer_load_b32 v47, v47, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v48, v36 offset:32928
	ds_load_u8 v49, v36 offset:32896
	ds_load_u8 v52, v36 offset:33008
	ds_load_u8 v53, v36 offset:32976
	ds_load_u8 v54, v36 offset:32944
	ds_load_u8 v55, v36 offset:32912
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v36 offset:32992
	ds_load_u8 v50, v36 offset:32960
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v52, 16, v54
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v36 offset:32864
	ds_load_u8 v51, v36 offset:32832
	ds_load_u8 v62, v36 offset:32880
	ds_load_u8 v63, v36 offset:32848
	ds_load_u8 v64, v36 offset:32816
	v_lshl_or_b32 v49, v49, 16, v48
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v36 offset:32800
	ds_load_u8 v65, v36 offset:32768
	ds_load_u8 v66, v36 offset:32784
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v55, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v51, v65, v51, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v66, v64, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v48, v50, 16, v51
	ds_load_u8 v50, v45 offset:1280
	ds_load_u8 v51, v45 offset:1536
	ds_load_u8 v65, v45 offset:1024
	ds_load_u8 v67, v45 offset:768
	v_lshl_or_b32 v52, v55, 16, v62
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v54, v45 offset:17664
	ds_load_u8 v55, v45 offset:17920
	ds_load_u8 v62, v45 offset:17408
	ds_load_u8 v63, v45 offset:17152
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v50, v65, v50, 0xc0c0004
	ds_load_u8 v65, v45 offset:1792
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v54, v62, v54, 0xc0c0004
	ds_load_u8 v62, v45 offset:18176
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v51, v51, v65, 0xc0c0004
	ds_load_u8 v65, v45 offset:256
	ds_load_u8 v68, v45 offset:512
	ds_load_u8 v69, v45
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v55, v55, v62, 0xc0c0004
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_lshl_or_b32 v51, v51, 16, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_lshl_or_b32 v55, v55, 16, v54
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v69, v65, 0xc0c0004
	v_lshl_or_b32 v50, v67, 16, v65
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v62, v45 offset:16640
	ds_load_u8 v64, v45 offset:16896
	ds_load_u8 v65, v45 offset:16384
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[50:51], v[48:49], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[50:51], v[52:53], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v65, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v54, v63, 16, v62
	v_wmma_i32_16x16x16_iu4 v[12:19], v[54:55], v[48:49], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[54:55], v[52:53], v[20:27] neg_lo:[1,1,0]
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v48, v36 offset:33184
	ds_load_u8 v49, v36 offset:33152
	ds_load_u8 v52, v36 offset:33264
	ds_load_u8 v53, v36 offset:33232
	ds_load_u8 v54, v36 offset:33200
	ds_load_u8 v55, v36 offset:33168
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v36 offset:33248
	ds_load_u8 v50, v36 offset:33216
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v52, 16, v54
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v36 offset:33056
	ds_load_u8 v51, v36 offset:33024
	ds_load_u8 v62, v36 offset:33104
	ds_load_u8 v63, v36 offset:33120
	ds_load_u8 v64, v36 offset:33136
	ds_load_u8 v65, v36 offset:33072
	ds_load_u8 v66, v36 offset:33040
	v_lshl_or_b32 v49, v49, 16, v48
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v36 offset:33088
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v62, v62, v64, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v55, v66, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v52, v62, 16, v55
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v51, v63, 0xc0c0004
	v_lshl_or_b32 v48, v51, 16, v50
	ds_load_u8 v50, v45 offset:3328
	ds_load_u8 v51, v45 offset:3584
	ds_load_u8 v63, v45 offset:3072
	ds_load_u8 v67, v45 offset:2816
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v50, v63, v50, 0xc0c0004
	ds_load_u8 v63, v45 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v51, v63, 0xc0c0004
	ds_load_u8 v63, v45 offset:2304
	ds_load_u8 v68, v45 offset:2560
	ds_load_u8 v69, v45 offset:2048
	v_lshl_or_b32 v51, v51, 16, v50
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v69, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v67, 16, v63
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v54, v45 offset:19712
	ds_load_u8 v55, v45 offset:19968
	ds_load_u8 v62, v45 offset:19456
	ds_load_u8 v63, v45 offset:19200
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[50:51], v[48:49], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[50:51], v[52:53], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v54, v62, v54, 0xc0c0004
	ds_load_u8 v62, v45 offset:20224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v55, v62, 0xc0c0004
	ds_load_u8 v62, v45 offset:18688
	ds_load_u8 v64, v45 offset:18944
	ds_load_u8 v65, v45 offset:18432
	v_lshl_or_b32 v55, v55, 16, v54
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v65, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v54, v63, 16, v62
	v_wmma_i32_16x16x16_iu4 v[12:19], v[54:55], v[48:49], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[54:55], v[52:53], v[20:27] neg_lo:[1,1,0]
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v48, v36 offset:33440
	ds_load_u8 v49, v36 offset:33408
	ds_load_u8 v52, v36 offset:33520
	ds_load_u8 v53, v36 offset:33488
	ds_load_u8 v54, v36 offset:33456
	ds_load_u8 v55, v36 offset:33424
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v36 offset:33504
	ds_load_u8 v50, v36 offset:33472
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v52, 16, v54
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v36 offset:33312
	ds_load_u8 v51, v36 offset:33280
	ds_load_u8 v62, v36 offset:33360
	ds_load_u8 v63, v36 offset:33376
	ds_load_u8 v64, v36 offset:33392
	ds_load_u8 v65, v36 offset:33328
	ds_load_u8 v66, v36 offset:33296
	v_lshl_or_b32 v49, v49, 16, v48
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v36 offset:33344
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v62, v62, v64, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v55, v66, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v52, v62, 16, v55
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v51, v63, 0xc0c0004
	v_lshl_or_b32 v48, v51, 16, v50
	ds_load_u8 v50, v45 offset:5376
	ds_load_u8 v51, v45 offset:5632
	ds_load_u8 v63, v45 offset:5120
	ds_load_u8 v67, v45 offset:4864
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v50, v63, v50, 0xc0c0004
	ds_load_u8 v63, v45 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v51, v63, 0xc0c0004
	ds_load_u8 v63, v45 offset:4352
	ds_load_u8 v68, v45 offset:4608
	ds_load_u8 v69, v45 offset:4096
	v_lshl_or_b32 v51, v51, 16, v50
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v69, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v67, 16, v63
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v54, v45 offset:21760
	ds_load_u8 v55, v45 offset:22016
	ds_load_u8 v62, v45 offset:21504
	ds_load_u8 v63, v45 offset:21248
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[50:51], v[48:49], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[50:51], v[52:53], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v54, v62, v54, 0xc0c0004
	ds_load_u8 v62, v45 offset:22272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v55, v62, 0xc0c0004
	ds_load_u8 v62, v45 offset:20736
	ds_load_u8 v64, v45 offset:20992
	ds_load_u8 v65, v45 offset:20480
	v_lshl_or_b32 v55, v55, 16, v54
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v65, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v54, v63, 16, v62
	v_wmma_i32_16x16x16_iu4 v[12:19], v[54:55], v[48:49], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[54:55], v[52:53], v[20:27] neg_lo:[1,1,0]
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v48, v36 offset:33696
	ds_load_u8 v49, v36 offset:33664
	ds_load_u8 v52, v36 offset:33744
	ds_load_u8 v50, v36 offset:33760
	ds_load_u8 v62, v36 offset:33792
	ds_load_u8 v53, v36 offset:33712
	ds_load_u8 v54, v36 offset:33680
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v36 offset:33728
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	v_add_nc_u32_e32 v54, 0, v11
	ds_load_u8 v54, v54 offset:32768
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v49, v49, v50, 0xc0c0004
	ds_load_u8 v50, v36 offset:33568
	ds_load_u8 v51, v36 offset:33536
	ds_load_u8 v55, v36 offset:33616
	ds_load_u8 v63, v36 offset:33632
	ds_load_u8 v64, v36 offset:33648
	ds_load_u8 v65, v36 offset:33584
	ds_load_u8 v66, v36 offset:33552
	v_lshl_or_b32 v49, v49, 16, v48
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v54, v52, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v54, 16, v53
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	ds_load_u8 v51, v36 offset:33600
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v55, v55, v64, 0xc0c0004
	v_add_nc_u32_e32 v64, 0, v37
	ds_load_u8 v64, v64 offset:32768
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v51, v51, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v51, 16, v50
	ds_load_u8 v50, v45 offset:7424
	ds_load_u8 v51, v45 offset:7680
	ds_load_u8 v63, v45 offset:7168
	ds_load_u8 v67, v45 offset:6912
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v50, v63, v50, 0xc0c0004
	ds_load_u8 v63, v45 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v51, v63, 0xc0c0004
	ds_load_u8 v63, v45 offset:6400
	ds_load_u8 v68, v45 offset:6656
	ds_load_u8 v69, v45 offset:6144
	v_lshl_or_b32 v51, v51, 16, v50
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v69, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v50, v67, 16, v63
	v_perm_b32 v63, v66, v65, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[50:51], v[48:49], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v52, v55, 16, v63
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v54, v45 offset:23808
	ds_load_u8 v55, v45 offset:24064
	ds_load_u8 v63, v45 offset:23552
	ds_load_u8 v65, v45 offset:23296
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[28:35], v[50:51], v[52:53], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v54, v63, v54, 0xc0c0004
	ds_load_u8 v63, v45 offset:24320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v55, v63, 0xc0c0004
	ds_load_u8 v63, v45 offset:22784
	ds_load_u8 v66, v45 offset:23040
	ds_load_u8 v67, v45 offset:22528
	v_lshl_or_b32 v55, v55, 16, v54
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v67, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v54, v65, 16, v63
	v_wmma_i32_16x16x16_iu4 v[12:19], v[54:55], v[48:49], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[54:55], v[52:53], v[20:27] neg_lo:[1,1,0]
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v48, v36 offset:33920
	ds_load_u8 v49, v36 offset:33952
	ds_load_u8 v52, v36 offset:34000
	ds_load_u8 v53, v36 offset:33968
	ds_load_u8 v54, v36 offset:33936
	ds_load_u8 v55, v36 offset:33904
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v48, v48, v49, 0xc0c0004
	ds_load_u8 v49, v36 offset:33984
	ds_load_u8 v50, v36 offset:34016
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v36 offset:34032
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v49, v49, v50, 0xc0c0004
	ds_load_u8 v50, v36 offset:33824
	ds_load_u8 v63, v36 offset:33872
	ds_load_u8 v65, v36 offset:33840
	ds_load_u8 v66, v36 offset:33808
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v52, v52, v54, 0xc0c0004
	v_lshl_or_b32 v49, v49, 16, v48
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v53, v52, 16, v53
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v50, v62, v50, 0xc0c0004
	ds_load_u8 v51, v36 offset:33888
	ds_load_u8 v62, v36 offset:33856
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v55, v63, v55, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v54, v66, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v52, v55, 16, v54
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v62, v51, 0xc0c0004
	v_lshl_or_b32 v48, v51, 16, v50
	ds_load_u8 v50, v45 offset:9472
	ds_load_u8 v51, v45 offset:9728
	ds_load_u8 v62, v45 offset:9216
	ds_load_u8 v67, v45 offset:8960
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v50, v62, v50, 0xc0c0004
	ds_load_u8 v62, v45 offset:9984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v51, v62, 0xc0c0004
	ds_load_u8 v62, v45 offset:8448
	ds_load_u8 v68, v45 offset:8704
	ds_load_u8 v69, v45 offset:8192
	v_lshl_or_b32 v51, v51, 16, v50
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v69, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v67, 16, v62
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v54, v45 offset:25856
	ds_load_u8 v55, v45 offset:26112
	ds_load_u8 v62, v45 offset:25600
	ds_load_u8 v63, v45 offset:25344
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[50:51], v[48:49], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[50:51], v[52:53], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v54, v62, v54, 0xc0c0004
	ds_load_u8 v62, v45 offset:26368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v55, v62, 0xc0c0004
	ds_load_u8 v62, v45 offset:24832
	ds_load_u8 v65, v45 offset:25088
	ds_load_u8 v66, v45 offset:24576
	v_lshl_or_b32 v55, v55, 16, v54
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v63, v65, v63, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v66, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v54, v63, 16, v62
	v_wmma_i32_16x16x16_iu4 v[12:19], v[54:55], v[48:49], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[54:55], v[52:53], v[20:27] neg_lo:[1,1,0]
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v48, v36 offset:34176
	ds_load_u8 v49, v36 offset:34208
	ds_load_u8 v52, v36 offset:34256
	ds_load_u8 v53, v36 offset:34224
	ds_load_u8 v54, v36 offset:34192
	ds_load_u8 v55, v36 offset:34160
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v48, v48, v49, 0xc0c0004
	ds_load_u8 v49, v36 offset:34240
	ds_load_u8 v50, v36 offset:34272
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v36 offset:34288
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v49, v49, v50, 0xc0c0004
	ds_load_u8 v50, v36 offset:34048
	ds_load_u8 v51, v36 offset:34080
	ds_load_u8 v62, v36 offset:34128
	ds_load_u8 v63, v36 offset:34096
	ds_load_u8 v65, v36 offset:34064
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v52, v52, v54, 0xc0c0004
	v_lshl_or_b32 v49, v49, 16, v48
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v53, v52, 16, v53
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v50, v50, v51, 0xc0c0004
	ds_load_u8 v51, v36 offset:34144
	ds_load_u8 v66, v36 offset:34112
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v55, v62, v55, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v54, v65, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v55, 16, v54
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v54, v45 offset:27904
	ds_load_u8 v55, v45 offset:28160
	ds_load_u8 v62, v45 offset:27648
	ds_load_u8 v63, v45 offset:27392
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v51, v66, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v51, 16, v50
	ds_load_u8 v50, v45 offset:11520
	ds_load_u8 v51, v45 offset:11776
	ds_load_u8 v66, v45 offset:11264
	ds_load_u8 v67, v45 offset:11008
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v54, v62, v54, 0xc0c0004
	ds_load_u8 v62, v45 offset:28416
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v66, v50, 0xc0c0004
	ds_load_u8 v66, v45 offset:12032
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v55, v55, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v55, 16, v54
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v51, v66, 0xc0c0004
	ds_load_u8 v66, v45 offset:10496
	ds_load_u8 v68, v45 offset:10752
	ds_load_u8 v69, v45 offset:10240
	v_lshl_or_b32 v51, v51, 16, v50
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v69, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v67, 16, v66
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v62, v45 offset:26880
	ds_load_u8 v65, v45 offset:27136
	ds_load_u8 v66, v45 offset:26624
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[50:51], v[48:49], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[50:51], v[52:53], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v63, v65, v63, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v66, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v54, v63, 16, v62
	v_wmma_i32_16x16x16_iu4 v[12:19], v[54:55], v[48:49], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[54:55], v[52:53], v[20:27] neg_lo:[1,1,0]
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v48, v36 offset:34432
	ds_load_u8 v49, v36 offset:34464
	ds_load_u8 v52, v36 offset:34544
	ds_load_u8 v53, v36 offset:34512
	ds_load_u8 v54, v36 offset:34480
	ds_load_u8 v55, v36 offset:34448
	ds_load_u8 v62, v36 offset:34416
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v48, v48, v49, 0xc0c0004
	ds_load_u8 v49, v36 offset:34528
	ds_load_u8 v50, v36 offset:34496
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v52, 16, v54
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v36 offset:34304
	ds_load_u8 v51, v36 offset:34336
	ds_load_u8 v63, v36 offset:34384
	ds_load_u8 v65, v36 offset:34352
	ds_load_u8 v66, v36 offset:34320
	v_lshl_or_b32 v49, v49, 16, v48
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v50, v50, v51, 0xc0c0004
	ds_load_u8 v51, v36 offset:34400
	ds_load_u8 v67, v36 offset:34368
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v55, v66, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v62, 16, v55
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v54, v45 offset:29952
	ds_load_u8 v55, v45 offset:30208
	ds_load_u8 v62, v45 offset:29696
	ds_load_u8 v63, v45 offset:29440
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v51, v67, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v51, 16, v50
	ds_load_u8 v50, v45 offset:13568
	ds_load_u8 v51, v45 offset:13824
	ds_load_u8 v67, v45 offset:13312
	ds_load_u8 v68, v45 offset:13056
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v54, v62, v54, 0xc0c0004
	ds_load_u8 v62, v45 offset:30464
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v67, v50, 0xc0c0004
	ds_load_u8 v67, v45 offset:14080
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v55, v55, v62, 0xc0c0004
	ds_load_u8 v62, v45 offset:28928
	ds_load_u8 v65, v45 offset:29184
	ds_load_u8 v66, v45 offset:28672
	v_lshl_or_b32 v55, v55, 16, v54
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v51, v51, v67, 0xc0c0004
	ds_load_u8 v67, v45 offset:12544
	ds_load_u8 v69, v45 offset:12800
	ds_load_u8 v70, v45 offset:12288
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v63, v65, v63, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v62, v66, v62, 0xc0c0004
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_lshl_or_b32 v51, v51, 16, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_lshl_or_b32 v54, v63, 16, v62
	v_wmma_i32_16x16x16_iu4 v[12:19], v[54:55], v[48:49], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[54:55], v[52:53], v[20:27] neg_lo:[1,1,0]
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v70, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v50, v68, 16, v67
	v_wmma_i32_16x16x16_iu4 v[1:8], v[50:51], v[48:49], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[50:51], v[52:53], v[28:35] neg_lo:[1,1,0]
	ds_load_u8 v48, v36 offset:34688
	ds_load_u8 v49, v36 offset:34720
	ds_load_u8 v52, v36 offset:34768
	ds_load_u8 v53, v36 offset:34736
	ds_load_u8 v54, v36 offset:34704
	ds_load_u8 v55, v36 offset:34672
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v48, v48, v49, 0xc0c0004
	ds_load_u8 v49, v36 offset:34784
	ds_load_u8 v50, v36 offset:34752
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	v_perm_b32 v54, v52, v64, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v54, 16, v53
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v36 offset:34560
	ds_load_u8 v51, v36 offset:34592
	ds_load_u8 v62, v36 offset:34640
	ds_load_u8 v63, v36 offset:34608
	ds_load_u8 v65, v36 offset:34576
	v_lshl_or_b32 v49, v49, 16, v48
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v50, v50, v51, 0xc0c0004
	ds_load_u8 v51, v36 offset:34656
	ds_load_u8 v66, v36 offset:34624
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v55, v62, v55, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v63, v65, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v55, 16, v63
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	ds_load_u8 v54, v45 offset:32000
	ds_load_u8 v55, v45 offset:32256
	ds_load_u8 v62, v45 offset:31744
	ds_load_u8 v63, v45 offset:31488
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v51, v66, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v51, 16, v50
	ds_load_u8 v50, v45 offset:15616
	ds_load_u8 v51, v45 offset:15872
	ds_load_u8 v66, v45 offset:15360
	ds_load_u8 v67, v45 offset:15104
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v54, v62, v54, 0xc0c0004
	ds_load_u8 v62, v45 offset:32512
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v50, v66, v50, 0xc0c0004
	ds_load_u8 v66, v45 offset:16128
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v55, v55, v62, 0xc0c0004
	ds_load_u8 v62, v45 offset:30976
	ds_load_u8 v64, v45 offset:31232
	ds_load_u8 v65, v45 offset:30720
	v_lshl_or_b32 v55, v55, 16, v54
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v51, v51, v66, 0xc0c0004
	ds_load_u8 v66, v45 offset:14592
	ds_load_u8 v68, v45 offset:14848
	ds_load_u8 v69, v45 offset:14336
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v62, v65, v62, 0xc0c0004
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_lshl_or_b32 v51, v51, 16, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_lshl_or_b32 v54, v63, 16, v62
	v_wmma_i32_16x16x16_iu4 v[12:19], v[54:55], v[48:49], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[54:55], v[52:53], v[20:27] neg_lo:[1,1,0]
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v69, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v50, v67, 16, v66
	v_wmma_i32_16x16x16_iu4 v[1:8], v[50:51], v[48:49], v[1:8] neg_lo:[1,1,0]
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_add_nc_u32_e32 v48, s4, v39
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[28:35], v[50:51], v[52:53], v[28:35] neg_lo:[1,1,0]
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_add_nc_u32_e32 v49, s4, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 158 22 is_stmt 0              ; generate_amdgcn.py:158:22
	v_cndmask_b32_e32 v52, 0x80000000, v48, vcc_lo
	.loc	1 166 39 is_stmt 1              ; generate_amdgcn.py:166:39
	v_add_nc_u32_e32 v48, s28, v9
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_cndmask_b32_e64 v49, 0x80000000, v49, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_cndmask_b32_e64 v62, 0x80000000, v48, s0
	.loc	1 166 39 is_stmt 0              ; generate_amdgcn.py:166:39
	v_add_nc_u32_e32 v48, s28, v39
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	v_cndmask_b32_e32 v66, 0x80000000, v48, vcc_lo
	.loc	1 158 22 is_stmt 1              ; generate_amdgcn.py:158:22
	s_clause 0x3
	buffer_load_b128 v[48:51], v49, s[20:23], 0 offen
	buffer_load_b128 v[52:55], v52, s[20:23], 0 offen
	buffer_load_b128 v[62:65], v62, s[20:23], 0 offen
	buffer_load_b128 v[66:69], v66, s[20:23], 0 offen
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_cmp_ne_u32_e32 vcc_lo, s1, v46
	s_mov_b32 s1, s2
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v41, v[48:51]
	s_waitcnt vmcnt(2)
	ds_store_b128 v41, v[52:55] offset:8192
	.loc	1 166 31                        ; generate_amdgcn.py:166:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v41, v[62:65] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v41, v[66:69] offset:24576
	.loc	1 152 22                        ; generate_amdgcn.py:152:22
	ds_store_b32 v40, v47 offset:32768
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_vccnz .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_or_b32_e32 v42, 0x100, v38
	v_or_b32_e32 v43, 0x200, v38
	v_or_b32_e32 v44, 0x300, v38
	v_or_b32_e32 v45, 0x400, v38
	v_or_b32_e32 v46, 0x500, v38
	v_or_b32_e32 v47, 0x600, v38
	v_or_b32_e32 v48, 0x700, v38
	v_or_b32_e32 v49, 0x800, v38
	v_or_b32_e32 v50, 0x900, v38
	v_or_b32_e32 v51, 0xa00, v38
	v_or_b32_e32 v236, 0xb00, v38
	v_or_b32_e32 v237, 0xc00, v38
	v_or_b32_e32 v239, 0xd00, v38
	v_or_b32_e32 v235, 0xe00, v38
	v_or_b32_e32 v238, 0xf00, v38
	v_or_b32_e32 v229, 0x1000, v38
	v_or_b32_e32 v228, 0x1100, v38
	v_or_b32_e32 v226, 0x1200, v38
	v_or_b32_e32 v225, 0x1300, v38
	v_or_b32_e32 v231, 0x1400, v38
	v_or_b32_e32 v230, 0x1500, v38
	v_or_b32_e32 v224, 0x1600, v38
	v_or_b32_e32 v227, 0x1700, v38
	v_or_b32_e32 v221, 0x1800, v38
	v_or_b32_e32 v220, 0x1900, v38
	v_or_b32_e32 v218, 0x1a00, v38
	v_or_b32_e32 v217, 0x1b00, v38
	v_or_b32_e32 v223, 0x1c00, v38
	v_or_b32_e32 v222, 0x1d00, v38
	v_or_b32_e32 v216, 0x1e00, v38
	v_or_b32_e32 v219, 0x1f00, v38
	v_or_b32_e32 v208, 0x2000, v38
	v_or_b32_e32 v210, 0x2100, v38
	v_or_b32_e32 v212, 0x2200, v38
	v_or_b32_e32 v211, 0x2300, v38
	v_or_b32_e32 v215, 0x2400, v38
	v_or_b32_e32 v214, 0x2500, v38
	v_or_b32_e32 v209, 0x2600, v38
	v_or_b32_e32 v213, 0x2700, v38
	v_or_b32_e32 v191, 0x2800, v38
	v_or_b32_e32 v190, 0x2900, v38
	v_or_b32_e32 v187, 0x2a00, v38
	v_or_b32_e32 v186, 0x2b00, v38
	v_or_b32_e32 v193, 0x2c00, v38
	v_or_b32_e32 v192, 0x2d00, v38
	v_or_b32_e32 v182, 0x2e00, v38
	v_or_b32_e32 v188, 0x2f00, v38
	v_or_b32_e32 v171, 0x3000, v38
	v_or_b32_e32 v170, 0x3100, v38
	v_or_b32_e32 v161, 0x3200, v38
	v_or_b32_e32 v160, 0x3300, v38
	v_or_b32_e32 v173, 0x3400, v38
	v_or_b32_e32 v172, 0x3500, v38
	v_or_b32_e32 v159, 0x3600, v38
	v_or_b32_e32 v166, 0x3700, v38
	v_or_b32_e32 v131, 0x3800, v38
	v_or_b32_e32 v130, 0x3900, v38
	v_or_b32_e32 v127, 0x3a00, v38
	v_or_b32_e32 v126, 0x3b00, v38
	v_or_b32_e32 v129, 0x3c00, v38
	v_or_b32_e32 v128, 0x3d00, v38
	v_or_b32_e32 v124, 0x3e00, v38
	v_or_b32_e32 v125, 0x3f00, v38
	v_dual_mov_b32 v55, v8 :: v_dual_mov_b32 v54, v7
	v_dual_mov_b32 v53, v6 :: v_dual_mov_b32 v52, v5
	v_dual_mov_b32 v64, v11 :: v_dual_mov_b32 v67, v37
	v_mov_b32_e32 v244, v38
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v4, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v11, v4
	v_mov_b32_e32 v5, v4
	v_mov_b32_e32 v6, v4
	v_mov_b32_e32 v7, v4
	v_mov_b32_e32 v8, v4
	v_mov_b32_e32 v9, v4
	v_mov_b32_e32 v10, v4
	v_dual_mov_b32 v2, v4 :: v_dual_mov_b32 v27, v11
	v_dual_mov_b32 v52, v4 :: v_dual_mov_b32 v35, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v3, v4 :: v_dual_mov_b32 v26, v10
	v_dual_mov_b32 v1, v4 :: v_dual_mov_b32 v22, v6
	v_dual_mov_b32 v15, v4 :: v_dual_mov_b32 v34, v10
	v_dual_mov_b32 v14, v4 :: v_dual_mov_b32 v25, v9
	v_dual_mov_b32 v13, v4 :: v_dual_mov_b32 v30, v6
	v_dual_mov_b32 v12, v4 :: v_dual_mov_b32 v23, v7
	v_mov_b32_e32 v55, v4
	v_dual_mov_b32 v54, v4 :: v_dual_mov_b32 v21, v5
	v_mov_b32_e32 v53, v4
	v_mov_b32_e32 v19, v4
	v_dual_mov_b32 v18, v4 :: v_dual_mov_b32 v33, v9
	v_mov_b32_e32 v17, v4
	v_dual_mov_b32 v16, v4 :: v_dual_mov_b32 v31, v7
	v_dual_mov_b32 v24, v8 :: v_dual_mov_b32 v29, v5
	v_mov_b32_e32 v20, v4
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v28, v4
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 152 22 is_stmt 1              ; generate_amdgcn.py:152:22
	v_add_nc_u32_e32 v7, 0, v67
	v_add_nc_u32_e32 v247, 0, v43
	v_add_nc_u32_e32 v245, 0, v42
	v_mov_b32_e32 v40, v52
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v41, v53 :: v_dual_add_nc_u32 v6, 0, v64
	ds_load_u8_d16 v205, v36 offset:33248
	ds_load_u8_d16 v195, v36 offset:33280
	ds_load_u8_d16 v196, v36 offset:33312
	ds_load_u8_d16 v197, v36 offset:33344
	ds_load_u8_d16 v99, v36 offset:33360
	ds_load_u8_d16 v104, v36 offset:33328
	ds_load_u8_d16 v105, v36 offset:33296
	ds_load_u8_d16 v118, v36 offset:33264
	ds_load_u8_d16 v201, v36 offset:33376
	ds_load_u8_d16 v202, v36 offset:33408
	ds_load_u8_d16 v203, v36 offset:33440
	ds_load_u8_d16 v204, v36 offset:33472
	ds_load_u8_d16 v111, v36 offset:33488
	ds_load_u8_d16 v113, v36 offset:33456
	ds_load_u8_d16 v114, v36 offset:33424
	ds_load_u8_d16 v109, v36 offset:33392
	ds_load_u8_d16 v206, v36 offset:33504
	ds_load_u8_d16 v178, v36 offset:33536
	ds_load_u8_d16 v179, v36 offset:33568
	ds_load_u8_d16 v180, v36 offset:33600
	ds_load_u8_d16 v85, v36 offset:33616
	ds_load_u8_d16 v91, v36 offset:33584
	ds_load_u8_d16 v92, v36 offset:33552
	ds_load_u8_d16 v117, v36 offset:33520
	ds_load_u8_d16 v181, v36 offset:33632
	ds_load_u8_d16 v183, v36 offset:33664
	ds_load_u8_d16 v184, v36 offset:33696
	ds_load_u8_d16 v185, v36 offset:33728
	ds_load_u8_d16 v103, v36 offset:33744
	ds_load_u8_d16 v106, v36 offset:33712
	ds_load_u8_d16 v107, v36 offset:33680
	ds_load_u8_d16 v98, v36 offset:33648
	ds_load_u8_d16 v189, v36 offset:33760
	ds_load_u8_d16 v155, v36 offset:33792
	ds_load_u8_d16 v156, v36 offset:33824
	ds_load_u8_d16 v157, v36 offset:33856
	ds_load_u8_d16 v158, v36 offset:33888
	ds_load_u8_d16 v79, v36 offset:33872
	ds_load_u8_d16 v83, v36 offset:33840
	ds_load_u8_d16 v86, v36 offset:33808
	ds_load_u8_d16 v162, v36 offset:33920
	ds_load_u8_d16 v163, v36 offset:33952
	ds_load_u8_d16 v164, v36 offset:33984
	ds_load_u8_d16 v165, v36 offset:34016
	ds_load_u8_d16 v97, v36 offset:34000
	ds_load_u8_d16 v100, v36 offset:33968
	ds_load_u8_d16 v101, v36 offset:33936
	ds_load_u8_d16 v93, v36 offset:33904
	ds_load_u8_d16 v139, v36 offset:34048
	ds_load_u8_d16 v140, v36 offset:34080
	ds_load_u8_d16 v141, v36 offset:34112
	ds_load_u8_d16 v142, v36 offset:34144
	ds_load_u8_d16 v73, v36 offset:34128
	ds_load_u8_d16 v76, v36 offset:34096
	ds_load_u8_d16 v77, v36 offset:34064
	ds_load_u8_d16 v108, v36 offset:34032
	ds_load_u8_d16 v147, v36 offset:34176
	ds_load_u8_d16 v148, v36 offset:34208
	ds_load_u8_d16 v149, v36 offset:34240
	ds_load_u8_d16 v150, v36 offset:34272
	ds_load_u8_d16 v90, v36 offset:34256
	ds_load_u8_d16 v94, v36 offset:34224
	ds_load_u8_d16 v95, v36 offset:34192
	ds_load_u8_d16 v84, v36 offset:34160
	ds_load_u8_d16 v143, v36 offset:34304
	ds_load_u8_d16 v144, v36 offset:34336
	ds_load_u8_d16 v145, v36 offset:34368
	ds_load_u8_d16 v146, v36 offset:34400
	ds_load_u8_d16 v69, v36 offset:34384
	ds_load_u8_d16 v70, v36 offset:34352
	ds_load_u8_d16 v71, v36 offset:34320
	ds_load_u8_d16 v102, v36 offset:34288
	ds_load_u8_d16 v151, v36 offset:34432
	ds_load_u8_d16 v152, v36 offset:34464
	ds_load_u8_d16 v153, v36 offset:34496
	ds_load_u8_d16 v154, v36 offset:34528
	ds_load_u8_d16 v82, v36 offset:34512
	ds_load_u8_d16 v87, v36 offset:34480
	ds_load_u8_d16 v88, v36 offset:34448
	ds_load_u8_d16 v78, v36 offset:34416
	ds_load_u8_d16 v119, v36 offset:34560
	ds_load_u8_d16 v120, v36 offset:34592
	ds_load_u8_d16 v121, v36 offset:34624
	ds_load_u8_d16 v122, v36 offset:34656
	ds_load_u8_d16 v64, v36 offset:34640
	ds_load_u8_d16 v67, v36 offset:34608
	ds_load_u8_d16 v68, v36 offset:34576
	ds_load_u8_d16 v96, v36 offset:34544
	ds_load_u8_d16 v132, v36 offset:34688
	ds_load_u8_d16 v133, v36 offset:34720
	ds_load_u8_d16 v134, v36 offset:34752
	ds_load_u8_d16 v135, v36 offset:34784
	ds_load_u8_d16 v75, v36 offset:34768
	ds_load_u8_d16 v80, v36 offset:34736
	ds_load_u8_d16 v81, v36 offset:34704
	ds_load_u8_d16 v72, v36 offset:34672
	ds_load_u8_d16 v232, v36 offset:32768
	ds_load_u8_d16 v136, v36 offset:32784
	ds_load_u8_d16 v233, v36 offset:32800
	ds_load_u8_d16 v138, v36 offset:32816
	ds_load_u8_d16 v234, v36 offset:32832
	ds_load_u8_d16 v137, v36 offset:32848
	ds_load_u8_d16 v123, v6 offset:32768
	ds_load_u8_d16 v89, v7 offset:32768
	ds_load_u8_d16 v174, v36 offset:32864
	ds_load_u8_d16 v175, v36 offset:32896
	ds_load_u8_d16 v176, v36 offset:32928
	ds_load_u8_d16 v177, v36 offset:32960
	ds_load_u8_d16 v63, v36 offset:32976
	ds_load_u8_d16 v65, v36 offset:32944
	ds_load_u8_d16 v66, v36 offset:32912
	ds_load_u8_d16 v62, v36 offset:32880
	ds_load_u8_d16 v207, v36 offset:32992
	ds_load_u8_d16 v167, v36 offset:33024
	ds_load_u8_d16 v168, v36 offset:33056
	ds_load_u8_d16 v169, v36 offset:33088
	ds_load_u8_d16 v9, v36 offset:33104
	ds_load_u8_d16 v10, v36 offset:33072
	ds_load_u8_d16 v11, v36 offset:33040
	ds_load_u8_d16 v74, v36 offset:33008
	ds_load_u8_d16 v194, v36 offset:33120
	ds_load_u8_d16 v198, v36 offset:33152
	ds_load_u8_d16 v199, v36 offset:33184
	ds_load_u8_d16 v200, v36 offset:33216
	ds_load_u8_d16 v112, v36 offset:33232
	ds_load_u8_d16 v115, v36 offset:33200
	ds_load_u8_d16 v116, v36 offset:33168
	ds_load_u8_d16 v110, v36 offset:33136
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_cndmask_b32_e64 v5, 0, 1, s6
	v_dual_mov_b32 v39, v4 :: v_dual_add_nc_u32 v128, 0, v128
	v_add_nc_u32_e32 v130, 0, v130
	v_add_nc_u32_e32 v241, 0, v239
	v_add_nc_u32_e32 v242, 0, v237
	v_add_nc_u32_e32 v237, 0, v51
	v_add_nc_u32_e32 v239, 0, v50
	v_add_nc_u32_e32 v240, 0, v49
	v_add_nc_u32_e32 v248, 0, v48
	v_add_nc_u32_e32 v243, 0, v47
	v_add_nc_u32_e32 v249, 0, v46
	v_add_nc_u32_e32 v250, 0, v45
	v_add_nc_u32_e32 v246, 0, v44
	v_mov_b32_e32 v51, v35
	v_cmp_ne_u32_e64 s0, 1, v5
	v_dual_mov_b32 v42, v54 :: v_dual_add_nc_u32 v125, 0, v125
	v_dual_mov_b32 v43, v55 :: v_dual_add_nc_u32 v124, 0, v124
	v_dual_mov_b32 v38, v3 :: v_dual_add_nc_u32 v129, 0, v129
	v_dual_mov_b32 v37, v2 :: v_dual_add_nc_u32 v126, 0, v126
	v_dual_mov_b32 v36, v1 :: v_dual_add_nc_u32 v127, 0, v127
	v_dual_mov_b32 v50, v34 :: v_dual_add_nc_u32 v131, 0, v131
	v_dual_mov_b32 v49, v33 :: v_dual_add_nc_u32 v166, 0, v166
	v_dual_mov_b32 v48, v32 :: v_dual_add_nc_u32 v159, 0, v159
	v_dual_mov_b32 v47, v31 :: v_dual_add_nc_u32 v172, 0, v172
	v_dual_mov_b32 v46, v30 :: v_dual_add_nc_u32 v173, 0, v173
	v_dual_mov_b32 v45, v29 :: v_dual_add_nc_u32 v160, 0, v160
	v_dual_mov_b32 v44, v28 :: v_dual_add_nc_u32 v161, 0, v161
	v_add_nc_u32_e32 v170, 0, v170
	v_add_nc_u32_e32 v171, 0, v171
	v_add_nc_u32_e32 v188, 0, v188
	v_add_nc_u32_e32 v182, 0, v182
	v_add_nc_u32_e32 v192, 0, v192
	v_add_nc_u32_e32 v193, 0, v193
	v_add_nc_u32_e32 v186, 0, v186
	v_add_nc_u32_e32 v187, 0, v187
	v_add_nc_u32_e32 v190, 0, v190
	v_add_nc_u32_e32 v191, 0, v191
	v_add_nc_u32_e32 v213, 0, v213
	v_add_nc_u32_e32 v209, 0, v209
	v_add_nc_u32_e32 v214, 0, v214
	v_add_nc_u32_e32 v215, 0, v215
	v_add_nc_u32_e32 v211, 0, v211
	v_add_nc_u32_e32 v212, 0, v212
	v_add_nc_u32_e32 v210, 0, v210
	v_add_nc_u32_e32 v208, 0, v208
	v_add_nc_u32_e32 v219, 0, v219
	v_add_nc_u32_e32 v216, 0, v216
	v_add_nc_u32_e32 v222, 0, v222
	v_add_nc_u32_e32 v223, 0, v223
	v_add_nc_u32_e32 v217, 0, v217
	v_add_nc_u32_e32 v218, 0, v218
	v_add_nc_u32_e32 v220, 0, v220
	v_add_nc_u32_e32 v221, 0, v221
	v_add_nc_u32_e32 v227, 0, v227
	v_add_nc_u32_e32 v224, 0, v224
	v_add_nc_u32_e32 v230, 0, v230
	v_add_nc_u32_e32 v231, 0, v231
	v_add_nc_u32_e32 v225, 0, v225
	v_add_nc_u32_e32 v226, 0, v226
	v_add_nc_u32_e32 v228, 0, v228
	v_add_nc_u32_e32 v229, 0, v229
	v_add_nc_u32_e32 v238, 0, v238
	v_add_nc_u32_e32 v235, 0, v235
	v_add_nc_u32_e32 v236, 0, v236
	v_add_nc_u32_e32 v244, 0, v244
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v5, v175, v176, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v6, v177, v207, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v6, 16, v5
	v_perm_b32 v5, v232, v233, 0xc0c0004
	v_perm_b32 v6, v234, v174, 0xc0c0004
	v_lshl_or_b32 v44, v6, 16, v5
	ds_load_u8 v5, v249
	ds_load_u8 v6, v250
	ds_load_u8 v7, v246
	ds_load_u8 v8, v247
	ds_load_u8 v36, v243
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	v_mov_b32_e32 v8, v55
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v36, v6, 0xc0c0004
	ds_load_u8 v36, v244
	ds_load_u8 v37, v245
	v_lshl_or_b32 v252, v6, 16, v5
	v_dual_mov_b32 v5, v52 :: v_dual_mov_b32 v6, v53
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v36, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v251, v7, 16, v36
	v_mov_b32_e32 v7, v54
	v_mov_b32_e32 v43, v8
	v_dual_mov_b32 v41, v6 :: v_dual_mov_b32 v40, v5
	v_dual_mov_b32 v39, v4 :: v_dual_mov_b32 v38, v3
	v_dual_mov_b32 v42, v7 :: v_dual_mov_b32 v37, v2
	v_mov_b32_e32 v36, v1
	v_perm_b32 v5, v198, v199, 0xc0c0004
	v_perm_b32 v6, v200, v205, 0xc0c0004
	v_perm_b32 v7, v169, v194, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[251:252], v[44:45], v[36:43] neg_lo:[1,1,0]
	v_lshl_or_b32 v6, v6, 16, v5
	v_perm_b32 v5, v167, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v5, v7, 16, v5
	ds_load_u8 v7, v241
	ds_load_u8 v8, v242
	ds_load_u8 v44, v240
	ds_load_u8 v45, v236
	ds_load_u8 v46, v237
	ds_load_u8 v47, v235
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v238
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v47, v8, 0xc0c0004
	ds_load_u8 v47, v239
	v_lshl_or_b32 v8, v8, 16, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v44, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v7, v45, 16, v44
	v_perm_b32 v44, v137, v62, 0xc0c0004
	v_perm_b32 v45, v112, v118, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[36:43], v[7:8], v[5:6], v[36:43] neg_lo:[1,1,0]
	v_perm_b32 v5, v66, v65, 0xc0c0004
	v_perm_b32 v6, v63, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v6, v6, 16, v5
	v_perm_b32 v5, v136, v138, 0xc0c0004
	v_lshl_or_b32 v5, v44, 16, v5
	v_perm_b32 v44, v116, v115, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v254, v45, 16, v44
	v_perm_b32 v44, v11, v10, 0xc0c0004
	v_perm_b32 v45, v9, v110, 0xc0c0004
	v_lshl_or_b32 v253, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[44:51], v[251:252], v[5:6], v[28:35] neg_lo:[1,1,0]
	v_perm_b32 v5, v202, v203, 0xc0c0004
	v_perm_b32 v6, v204, v206, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[7:8], v[253:254], v[44:51] neg_lo:[1,1,0]
	v_perm_b32 v7, v197, v201, 0xc0c0004
	v_lshl_or_b32 v6, v6, 16, v5
	v_perm_b32 v5, v195, v196, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v5, v7, 16, v5
	ds_load_u8 v7, v230
	ds_load_u8 v8, v231
	ds_load_u8 v251, v229
	ds_load_u8 v252, v225
	ds_load_u8 v253, v226
	ds_load_u8 v254, v224
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v227
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v252, v253, v252, 0xc0c0004
	v_perm_b32 v253, v99, v109, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v254, v8, 0xc0c0004
	ds_load_u8 v254, v228
	v_lshl_or_b32 v8, v8, 16, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v251, v251, v254, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v7, v252, 16, v251
	v_perm_b32 v251, v114, v113, 0xc0c0004
	v_perm_b32 v252, v111, v117, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[36:43], v[7:8], v[5:6], v[36:43] neg_lo:[1,1,0]
	v_perm_b32 v5, v183, v184, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v252, v252, 16, v251
	v_perm_b32 v251, v105, v104, 0xc0c0004
	v_perm_b32 v6, v185, v189, 0xc0c0004
	v_lshl_or_b32 v251, v253, 16, v251
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v6, v6, 16, v5
	v_perm_b32 v5, v178, v179, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[44:51], v[7:8], v[251:252], v[44:51] neg_lo:[1,1,0]
	v_perm_b32 v7, v180, v181, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v5, v7, 16, v5
	ds_load_u8 v7, v222
	ds_load_u8 v8, v223
	ds_load_u8 v251, v221
	ds_load_u8 v252, v217
	ds_load_u8 v253, v218
	ds_load_u8 v254, v216
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v219
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v252, v253, v252, 0xc0c0004
	v_perm_b32 v253, v85, v98, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v254, v8, 0xc0c0004
	ds_load_u8 v254, v220
	v_lshl_or_b32 v8, v8, 16, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v251, v251, v254, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v7, v252, 16, v251
	v_perm_b32 v251, v107, v106, 0xc0c0004
	v_perm_b32 v252, v103, v123, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[36:43], v[7:8], v[5:6], v[36:43] neg_lo:[1,1,0]
	v_perm_b32 v5, v162, v163, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v252, v252, 16, v251
	v_perm_b32 v251, v92, v91, 0xc0c0004
	v_perm_b32 v6, v164, v165, 0xc0c0004
	v_lshl_or_b32 v251, v253, 16, v251
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v6, v6, 16, v5
	v_perm_b32 v5, v155, v156, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[44:51], v[7:8], v[251:252], v[44:51] neg_lo:[1,1,0]
	v_perm_b32 v7, v157, v158, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v5, v7, 16, v5
	ds_load_u8 v7, v214
	ds_load_u8 v8, v215
	ds_load_u8 v251, v208
	ds_load_u8 v252, v211
	ds_load_u8 v253, v212
	ds_load_u8 v254, v209
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v213
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v252, v253, v252, 0xc0c0004
	v_perm_b32 v253, v79, v93, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v254, v8, 0xc0c0004
	ds_load_u8 v254, v210
	v_lshl_or_b32 v8, v8, 16, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v251, v251, v254, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v7, v252, 16, v251
	v_perm_b32 v251, v101, v100, 0xc0c0004
	v_perm_b32 v252, v97, v108, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[36:43], v[7:8], v[5:6], v[36:43] neg_lo:[1,1,0]
	v_perm_b32 v5, v147, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v252, v252, 16, v251
	v_perm_b32 v251, v86, v83, 0xc0c0004
	v_perm_b32 v6, v149, v150, 0xc0c0004
	v_lshl_or_b32 v251, v253, 16, v251
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v6, v6, 16, v5
	v_perm_b32 v5, v139, v140, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[44:51], v[7:8], v[251:252], v[44:51] neg_lo:[1,1,0]
	v_perm_b32 v7, v141, v142, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v5, v7, 16, v5
	ds_load_u8 v7, v192
	ds_load_u8 v8, v193
	ds_load_u8 v251, v191
	ds_load_u8 v252, v186
	ds_load_u8 v253, v187
	ds_load_u8 v254, v182
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v188
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v252, v253, v252, 0xc0c0004
	v_perm_b32 v253, v73, v84, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v254, v8, 0xc0c0004
	ds_load_u8 v254, v190
	v_lshl_or_b32 v8, v8, 16, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v251, v251, v254, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v7, v252, 16, v251
	v_perm_b32 v251, v95, v94, 0xc0c0004
	v_perm_b32 v252, v90, v102, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[36:43], v[7:8], v[5:6], v[36:43] neg_lo:[1,1,0]
	v_perm_b32 v5, v151, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v252, v252, 16, v251
	v_perm_b32 v251, v77, v76, 0xc0c0004
	v_perm_b32 v6, v153, v154, 0xc0c0004
	v_lshl_or_b32 v251, v253, 16, v251
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v6, v6, 16, v5
	v_perm_b32 v5, v143, v144, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[44:51], v[7:8], v[251:252], v[44:51] neg_lo:[1,1,0]
	v_perm_b32 v7, v145, v146, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v5, v7, 16, v5
	ds_load_u8 v7, v172
	ds_load_u8 v8, v173
	ds_load_u8 v251, v171
	ds_load_u8 v252, v160
	ds_load_u8 v253, v161
	ds_load_u8 v254, v159
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v166
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v252, v253, v252, 0xc0c0004
	v_perm_b32 v253, v69, v78, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v254, v8, 0xc0c0004
	ds_load_u8 v254, v170
	v_lshl_or_b32 v8, v8, 16, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v251, v251, v254, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v7, v252, 16, v251
	v_perm_b32 v251, v88, v87, 0xc0c0004
	v_perm_b32 v252, v82, v96, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[36:43], v[7:8], v[5:6], v[36:43] neg_lo:[1,1,0]
	v_perm_b32 v5, v132, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v252, v252, 16, v251
	v_perm_b32 v251, v71, v70, 0xc0c0004
	v_perm_b32 v6, v134, v135, 0xc0c0004
	v_lshl_or_b32 v251, v253, 16, v251
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v6, v6, 16, v5
	v_perm_b32 v5, v119, v120, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[44:51], v[7:8], v[251:252], v[44:51] neg_lo:[1,1,0]
	v_perm_b32 v7, v121, v122, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v5, v7, 16, v5
	ds_load_u8 v7, v128
	ds_load_u8 v8, v129
	ds_load_u8 v251, v126
	ds_load_u8 v252, v127
	ds_load_u8 v253, v124
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v125
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v251, v252, v251, 0xc0c0004
	v_perm_b32 v252, v75, v89, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v253, v8, 0xc0c0004
	ds_load_u8 v253, v131
	ds_load_u8 v254, v130
	v_lshl_or_b32 v8, v8, 16, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v253, v253, v254, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v7, v251, 16, v253
	v_perm_b32 v251, v81, v80, 0xc0c0004
	v_perm_b32 v253, v64, v72, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[36:43], v[7:8], v[5:6], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v252, v252, 16, v251
	v_perm_b32 v251, v68, v67, 0xc0c0004
	v_lshl_or_b32 v251, v253, 16, v251
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[7:8], v[251:252], v[44:51] neg_lo:[1,1,0]
.LBB0_10:
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	ds_load_u8 v1, v249 offset:16384
	ds_load_u8 v2, v250 offset:16384
	ds_load_u8 v3, v248 offset:16384
	ds_load_u8 v5, v246 offset:16384
	ds_load_u8 v6, v247 offset:16384
	ds_load_u8 v4, v245 offset:16384
	ds_load_u8 v7, v243 offset:16384
	ds_load_u8 v8, v244 offset:16384
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v28, v175, v176, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v29, v177, v207, 0xc0c0004
	v_perm_b32 v30, v232, v233, 0xc0c0004
	v_perm_b32 v31, v234, v174, 0xc0c0004
	v_perm_b32 v139, v139, v140, 0xc0c0004
	v_perm_b32 v140, v141, v142, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v9, v9, v110, 0xc0c0004
	v_perm_b32 v11, v132, v133, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v32, v2, v1, 0xc0c0004
	v_lshl_or_b32 v2, v29, 16, v28
	v_lshl_or_b32 v1, v31, 16, v30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v3, v7, v3, 0xc0c0004
	ds_load_u8 v7, v241 offset:16384
	ds_load_u8 v33, v242 offset:16384
	ds_load_u8 v34, v238 offset:16384
	ds_load_u8 v35, v239 offset:16384
	ds_load_u8 v52, v240 offset:16384
	ds_load_u8 v53, v236 offset:16384
	ds_load_u8 v54, v237 offset:16384
	ds_load_u8 v55, v235 offset:16384
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v8, v8, v4, 0xc0c0004
	v_lshl_or_b32 v4, v3, 16, v32
	ds_load_u8 v28, v230 offset:16384
	ds_load_u8 v29, v231 offset:16384
	ds_load_u8 v30, v227 offset:16384
	ds_load_u8 v31, v228 offset:16384
	ds_load_u8 v32, v229 offset:16384
	ds_load_u8 v174, v225 offset:16384
	ds_load_u8 v175, v226 offset:16384
	ds_load_u8 v176, v224 offset:16384
	v_perm_b32 v3, v6, v5, 0xc0c0004
	v_perm_b32 v5, v198, v199, 0xc0c0004
	v_perm_b32 v6, v200, v205, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v3, v3, 16, v8
	v_perm_b32 v8, v167, v168, 0xc0c0004
	v_perm_b32 v167, v169, v194, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v7, v33, v7, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[12:19], v[3:4], v[1:2], v[12:19] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v6, 16, v5
	v_lshl_or_b32 v1, v167, 16, v8
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	v_perm_b32 v33, v55, v34, 0xc0c0004
	v_perm_b32 v34, v52, v35, 0xc0c0004
	v_perm_b32 v35, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v32, v175, v174, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v176, v30, 0xc0c0004
	v_lshl_or_b32 v6, v33, 16, v7
	v_lshl_or_b32 v5, v35, 16, v34
	ds_load_u8 v30, v222 offset:16384
	ds_load_u8 v35, v223 offset:16384
	ds_load_u8 v52, v219 offset:16384
	ds_load_u8 v53, v220 offset:16384
	ds_load_u8 v54, v221 offset:16384
	ds_load_u8 v55, v217 offset:16384
	ds_load_u8 v167, v218 offset:16384
	ds_load_u8 v168, v216 offset:16384
	v_perm_b32 v33, v195, v196, 0xc0c0004
	v_perm_b32 v34, v197, v201, 0xc0c0004
	v_perm_b32 v7, v202, v203, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[12:19], v[5:6], v[1:2], v[12:19] neg_lo:[1,1,0]
	v_perm_b32 v8, v204, v206, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v1, v34, 16, v33
	ds_load_u8 v33, v214 offset:16384
	ds_load_u8 v34, v215 offset:16384
	ds_load_u8 v169, v213 offset:16384
	ds_load_u8 v174, v211 offset:16384
	ds_load_u8 v175, v212 offset:16384
	ds_load_u8 v176, v210 offset:16384
	ds_load_u8 v177, v209 offset:16384
	v_lshl_or_b32 v2, v8, 16, v7
	v_lshl_or_b32 v8, v29, 16, v28
	v_lshl_or_b32 v7, v32, 16, v31
	v_perm_b32 v28, v183, v184, 0xc0c0004
	v_perm_b32 v29, v185, v189, 0xc0c0004
	v_perm_b32 v31, v178, v179, 0xc0c0004
	v_perm_b32 v32, v180, v181, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v30, v35, v30, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[12:19], v[7:8], v[1:2], v[12:19] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v29, 16, v28
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v35, v168, v52, 0xc0c0004
	v_perm_b32 v52, v54, v53, 0xc0c0004
	v_perm_b32 v53, v167, v55, 0xc0c0004
	v_lshl_or_b32 v1, v32, 16, v31
	v_perm_b32 v31, v155, v156, 0xc0c0004
	v_lshl_or_b32 v29, v35, 16, v30
	ds_load_u8 v30, v208 offset:16384
	v_lshl_or_b32 v28, v53, 16, v52
	v_perm_b32 v32, v157, v158, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v34, v177, v169, 0xc0c0004
	ds_load_u8 v35, v192 offset:16384
	ds_load_u8 v52, v193 offset:16384
	ds_load_u8 v53, v188 offset:16384
	ds_load_u8 v54, v190 offset:16384
	ds_load_u8 v55, v191 offset:16384
	ds_load_u8 v155, v186 offset:16384
	ds_load_u8 v156, v187 offset:16384
	ds_load_u8 v157, v182 offset:16384
	v_wmma_i32_16x16x16_iu4 v[12:19], v[28:29], v[1:2], v[12:19] neg_lo:[1,1,0]
	v_perm_b32 v1, v162, v163, 0xc0c0004
	v_perm_b32 v2, v164, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_lshl_or_b32 v1, v32, 16, v31
	v_lshl_or_b32 v31, v34, 16, v33
	ds_load_u8 v34, v172 offset:16384
	ds_load_u8 v158, v173 offset:16384
	ds_load_u8 v162, v166 offset:16384
	ds_load_u8 v163, v170 offset:16384
	ds_load_u8 v164, v171 offset:16384
	ds_load_u8 v160, v160 offset:16384
	ds_load_u8 v161, v161 offset:16384
	ds_load_u8 v159, v159 offset:16384
	v_perm_b32 v32, v175, v174, 0xc0c0004
	v_perm_b32 v33, v149, v150, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v35, v52, v35, 0xc0c0004
	v_perm_b32 v30, v30, v176, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v32, 16, v30
	v_perm_b32 v32, v147, v148, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v52, v157, v53, 0xc0c0004
	v_perm_b32 v53, v55, v54, 0xc0c0004
	v_perm_b32 v54, v156, v155, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[12:19], v[30:31], v[1:2], v[12:19] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v33, 16, v32
	v_lshl_or_b32 v1, v140, 16, v139
	v_lshl_or_b32 v33, v52, 16, v35
	v_lshl_or_b32 v32, v54, 16, v53
	v_perm_b32 v35, v151, v152, 0xc0c0004
	v_perm_b32 v52, v153, v154, 0xc0c0004
	v_perm_b32 v53, v143, v144, 0xc0c0004
	v_perm_b32 v54, v145, v146, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v34, v158, v34, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v159, v162, 0xc0c0004
	v_perm_b32 v139, v164, v163, 0xc0c0004
	v_perm_b32 v140, v161, v160, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[12:19], v[32:33], v[1:2], v[12:19] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v52, 16, v35
	v_lshl_or_b32 v1, v54, 16, v53
	v_lshl_or_b32 v35, v55, 16, v34
	v_lshl_or_b32 v34, v140, 16, v139
	v_perm_b32 v52, v66, v65, 0xc0c0004
	v_perm_b32 v53, v63, v74, 0xc0c0004
	v_perm_b32 v54, v136, v138, 0xc0c0004
	v_perm_b32 v55, v137, v62, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[12:19], v[34:35], v[1:2], v[12:19] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v2, v53, 16, v52
	v_perm_b32 v52, v116, v115, 0xc0c0004
	v_lshl_or_b32 v1, v55, 16, v54
	v_perm_b32 v53, v112, v118, 0xc0c0004
	v_perm_b32 v54, v134, v135, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[20:27], v[3:4], v[1:2], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v53, 16, v52
	v_lshl_or_b32 v1, v9, 16, v10
	v_perm_b32 v3, v114, v113, 0xc0c0004
	v_perm_b32 v4, v111, v117, 0xc0c0004
	v_perm_b32 v9, v105, v104, 0xc0c0004
	v_perm_b32 v10, v99, v109, 0xc0c0004
	ds_load_u8 v52, v128 offset:16384
	ds_load_u8 v53, v129 offset:16384
	ds_load_u8 v55, v125 offset:16384
	ds_load_u8 v62, v130 offset:16384
	ds_load_u8 v63, v131 offset:16384
	ds_load_u8 v65, v126 offset:16384
	ds_load_u8 v66, v127 offset:16384
	ds_load_u8 v74, v124 offset:16384
	v_wmma_i32_16x16x16_iu4 v[20:27], v[5:6], v[1:2], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v4, 16, v3
	v_perm_b32 v3, v107, v106, 0xc0c0004
	v_lshl_or_b32 v1, v10, 16, v9
	v_perm_b32 v4, v103, v123, 0xc0c0004
	v_perm_b32 v5, v92, v91, 0xc0c0004
	v_perm_b32 v6, v85, v98, 0xc0c0004
	v_perm_b32 v9, v119, v120, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[20:27], v[7:8], v[1:2], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v4, 16, v3
	v_perm_b32 v7, v86, v83, 0xc0c0004
	v_lshl_or_b32 v1, v6, 16, v5
	v_perm_b32 v5, v101, v100, 0xc0c0004
	v_perm_b32 v6, v97, v108, 0xc0c0004
	v_perm_b32 v8, v79, v93, 0xc0c0004
	v_perm_b32 v10, v121, v122, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[20:27], v[28:29], v[1:2], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v54, 16, v11
	v_lshl_or_b32 v2, v6, 16, v5
	v_lshl_or_b32 v1, v8, 16, v7
	v_perm_b32 v5, v95, v94, 0xc0c0004
	v_perm_b32 v6, v90, v102, 0xc0c0004
	v_perm_b32 v7, v77, v76, 0xc0c0004
	v_perm_b32 v8, v73, v84, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[20:27], v[30:31], v[1:2], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v3, v10, 16, v9
	v_lshl_or_b32 v2, v6, 16, v5
	v_perm_b32 v5, v88, v87, 0xc0c0004
	v_lshl_or_b32 v1, v8, 16, v7
	v_perm_b32 v6, v82, v96, 0xc0c0004
	v_perm_b32 v7, v71, v70, 0xc0c0004
	v_perm_b32 v8, v69, v78, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v9, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v74, v55, 0xc0c0004
	v_perm_b32 v11, v63, v62, 0xc0c0004
	v_perm_b32 v28, v66, v65, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[20:27], v[32:33], v[1:2], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v6, 16, v5
	v_lshl_or_b32 v1, v8, 16, v7
	v_perm_b32 v7, v81, v80, 0xc0c0004
	v_perm_b32 v8, v75, v89, 0xc0c0004
	v_perm_b32 v29, v68, v67, 0xc0c0004
	v_perm_b32 v30, v64, v72, 0xc0c0004
	v_lshl_or_b32 v6, v10, 16, v9
	v_lshl_or_b32 v5, v28, 16, v11
	v_wmma_i32_16x16x16_iu4 v[20:27], v[34:35], v[1:2], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v8, 16, v7
	v_lshl_or_b32 v1, v30, 16, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[5:6], v[3:4], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[5:6], v[1:2], v[20:27] neg_lo:[1,1,0]
	s_branch .LBB0_13
.LBB0_12:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v40, v52 :: v_dual_mov_b32 v41, v53
	v_dual_mov_b32 v39, v4 :: v_dual_mov_b32 v38, v3
	v_dual_mov_b32 v51, v35 :: v_dual_mov_b32 v50, v34
	v_dual_mov_b32 v42, v54 :: v_dual_mov_b32 v43, v55
	v_dual_mov_b32 v37, v2 :: v_dual_mov_b32 v36, v1
	v_dual_mov_b32 v49, v33 :: v_dual_mov_b32 v48, v32
	v_dual_mov_b32 v47, v31 :: v_dual_mov_b32 v46, v30
	v_dual_mov_b32 v45, v29 :: v_dual_mov_b32 v44, v28
.LBB0_13:                               ; %._crit_edge13
	.loc	1 169 22 is_stmt 1              ; generate_amdgcn.py:169:22
	v_or_b32_e32 v2, s27, v60
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_or_b32 v1, v57, 1, v61
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 169 22 is_stmt 0              ; generate_amdgcn.py:169:22
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_mov_b32 s20, s12
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_or_b32_e32 v8, 2, v1
	s_waitcnt lgkmcnt(10)
	v_or_b32_e32 v10, 4, v1
	v_or_b32_e32 v7, 6, v1
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_or_b32_e32 v9, 32, v2
	.loc	1 166 39                        ; generate_amdgcn.py:166:39
	s_add_i32 s0, s5, s25
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v6, 8, v1
	v_or_b32_e32 v5, 10, v1
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_waitcnt lgkmcnt(9)
	s_clause 0x1
	buffer_load_u16 v11, v2, s[20:23], 0 offen
	buffer_load_u16 v9, v9, s[20:23], 0 offen
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v2, s5, v1
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v3, 14, v1
	v_or_b32_e32 v4, 12, v1
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v28, s5, v8
	v_or_b32_e32 v29, s5, v10
	.loc	1 170 14 is_stmt 0              ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v2, 1, v2
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	.loc	1 174 23 is_stmt 1              ; generate_amdgcn.py:174:23
	v_add_lshl_u32 v8, s0, v8, 1
	v_add_lshl_u32 v10, s0, v10, 1
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v30, s5, v7
	.loc	1 170 14 is_stmt 0              ; generate_amdgcn.py:170:14
	buffer_load_u16 v35, v2, s[20:23], 0 offen
	.loc	1 174 23 is_stmt 1              ; generate_amdgcn.py:174:23
	v_add_lshl_u32 v7, s0, v7, 1
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v31, s5, v6
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_add_lshl_u32 v6, s0, v6, 1
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v32, s5, v5
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_add_lshl_u32 v5, s0, v5, 1
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v33, s5, v4
	v_or_b32_e32 v34, s5, v3
	.loc	1 170 14 is_stmt 0              ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v2, 1, v28
	v_lshlrev_b32_e32 v28, 1, v29
	.loc	1 174 23 is_stmt 1              ; generate_amdgcn.py:174:23
	v_add_lshl_u32 v1, s0, v1, 1
	v_add_lshl_u32 v4, s0, v4, 1
	v_add_lshl_u32 v3, s0, v3, 1
	s_clause 0x7
	buffer_load_u16 v8, v8, s[20:23], 0 offen
	buffer_load_u16 v10, v10, s[20:23], 0 offen
	buffer_load_u16 v7, v7, s[20:23], 0 offen
	buffer_load_u16 v6, v6, s[20:23], 0 offen
	buffer_load_u16 v29, v5, s[20:23], 0 offen
	buffer_load_u16 v52, v4, s[20:23], 0 offen
	buffer_load_u16 v53, v3, s[20:23], 0 offen
	buffer_load_u16 v54, v1, s[20:23], 0 offen
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v5, 1, v33
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v35, 16, v35
	v_lshlrev_b32_e32 v1, 1, v30
	v_lshlrev_b32_e32 v4, 1, v32
	v_lshlrev_b32_e32 v30, 1, v34
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v29, 16, v29
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v3, 1, v31
	s_clause 0x6
	buffer_load_u16 v31, v2, s[20:23], 0 offen
	buffer_load_u16 v28, v28, s[20:23], 0 offen
	buffer_load_u16 v32, v1, s[20:23], 0 offen
	buffer_load_u16 v33, v3, s[20:23], 0 offen
	buffer_load_u16 v34, v4, s[20:23], 0 offen
	buffer_load_u16 v55, v5, s[20:23], 0 offen
	buffer_load_u16 v30, v30, s[20:23], 0 offen
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v3, v41
	v_cvt_f32_i32_e32 v41, v50
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_lshlrev_b32_e32 v5, 16, v11
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_lshlrev_b32_e32 v50, 16, v7
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_lshlrev_b32_e32 v11, 16, v9
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v1, v43
	v_cvt_f32_i32_e32 v2, v42
	v_cvt_f32_i32_e32 v42, v49
	v_cvt_f32_i32_e32 v43, v48
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_lshlrev_b32_e32 v10, 16, v10
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v49, 16, v54
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v54, v11, v29
	v_mul_f32_e32 v61, v11, v50
	v_dual_mul_f32 v50, v5, v50 :: v_dual_lshlrev_b32 v53, 16, v53
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_lshlrev_b32_e32 v48, 16, v8
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v4, v40
	v_cvt_f32_i32_e32 v40, v51
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_lshlrev_b32_e32 v51, 16, v6
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v29, v5, v29
	v_mul_f32_e32 v63, v11, v10
	v_mul_f32_e32 v10, v5, v10
	.loc	1 175 13 is_stmt 0              ; generate_amdgcn.py:175:13
	v_mul_f32_e32 v23, v61, v23
.Ltmp16:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp17:
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_mul_f32_e32 v22, v63, v22
.Ltmp18:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s21, s17, 0xffff
	s_mov_b32 s20, s16
.Ltmp19:
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_mul_f32_e32 v25, v54, v25
	v_mul_f32_e32 v17, v29, v17
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v6, 16, v33
	v_lshlrev_b32_e32 v31, 16, v31
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v8, 16, v55
	v_lshlrev_b32_e32 v32, 16, v32
	v_lshlrev_b32_e32 v7, 16, v34
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v66, v11, v8 :: v_dual_lshlrev_b32 v9, 16, v30
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v33, v11, v53
	v_dual_mul_f32 v53, v5, v53 :: v_dual_mul_f32 v64, v11, v48
	v_mul_f32_e32 v48, v5, v48
	v_mul_f32_e32 v62, v11, v49
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v30, v11, v35
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_dual_mul_f32 v34, v11, v52 :: v_dual_mul_f32 v35, v5, v35
	v_mul_f32_e32 v49, v5, v49
	v_dual_mul_f32 v52, v5, v52 :: v_dual_mul_f32 v55, v11, v51
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v65, v11, v9
	v_mul_f32_e32 v67, v11, v7
	v_mul_f32_e32 v69, v11, v32
	v_mul_f32_e32 v68, v11, v6
	v_mul_f32_e32 v70, v11, v28
	v_dual_mul_f32 v11, v11, v31 :: v_dual_mul_f32 v32, v5, v32
	v_mul_f32_e32 v28, v5, v28
	v_dual_mul_f32 v31, v5, v31 :: v_dual_mul_f32 v30, v30, v44
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_dual_mul_f32 v20, v62, v20 :: v_dual_mul_f32 v27, v33, v27
	.loc	1 175 25 is_stmt 0              ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v51, v5, v51
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_dual_mul_f32 v21, v64, v21 :: v_dual_mul_f32 v24, v55, v24
	v_dual_mul_f32 v13, v48, v13 :: v_dual_mul_f32 v26, v34, v26
	.loc	1 171 9 is_stmt 1               ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v33, v35, v36 :: v_dual_mul_f32 v34, v10, v14
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_dual_mul_f32 v35, v49, v12 :: v_dual_mul_f32 v36, v50, v15
	v_dual_mul_f32 v18, v52, v18 :: v_dual_mul_f32 v29, v11, v45
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v10, v70, v46 :: v_dual_mul_f32 v11, v68, v43
	v_mul_f32_e32 v12, v67, v42
	v_dual_mul_f32 v40, v65, v40 :: v_dual_mul_f32 v31, v31, v37
	v_mul_f32_e32 v28, v28, v38
	v_dual_mul_f32 v32, v32, v39 :: v_dual_mul_f32 v15, 0xbfb8aa3b, v26
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_dual_mul_f32 v14, 0xbfb8aa3b, v27 :: v_dual_mul_f32 v43, 0xbfb8aa3b, v22
	v_mul_f32_e32 v37, 0xbfb8aa3b, v25
	v_dual_mul_f32 v39, 0xbfb8aa3b, v23 :: v_dual_mul_f32 v16, v51, v16
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_dual_mul_f32 v19, v53, v19 :: v_dual_mul_f32 v38, 0xbfb8aa3b, v24
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_dual_mul_f32 v45, 0xbfb8aa3b, v21 :: v_dual_mul_f32 v46, 0xbfb8aa3b, v36
	v_dual_mul_f32 v49, 0xbfb8aa3b, v13 :: v_dual_mul_f32 v48, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v53, 0xbfb8aa3b, v16
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v43
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v39
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v37
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v14
	v_mul_f32_e32 v42, 0xbfb8aa3b, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_cndmask_b32_e64 v43, 0, 0x42800000, s1
	v_cndmask_b32_e64 v39, 0, 0x42800000, s3
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v38
	v_cndmask_b32_e64 v37, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v15
	v_cndmask_b32_e64 v14, 0, 0x42800000, s7
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v49
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v48
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v46
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v44, v69, v47 :: v_dual_mul_f32 v41, v66, v41
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_mul_f32_e32 v47, 0xbfb8aa3b, v35
	v_dual_mul_f32 v50, 0xbfb8aa3b, v19 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v18
	v_dual_mul_f32 v52, 0xbfb8aa3b, v17 :: v_dual_fmac_f32 v43, 0xbfb8aa3b, v22
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v42
	v_cndmask_b32_e64 v38, 0, 0x42800000, s4
	v_cndmask_b32_e64 v15, 0, 0x42800000, s6
	v_cndmask_b32_e64 v49, 0, 0x42800000, s8
	v_cndmask_b32_e64 v48, 0, 0x42800000, s9
	v_cndmask_b32_e64 v46, 0, 0x42800000, s11
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v53
	v_dual_fmac_f32 v39, 0xbfb8aa3b, v23 :: v_dual_fmac_f32 v38, 0xbfb8aa3b, v24
	v_dual_fmac_f32 v37, 0xbfb8aa3b, v25 :: v_dual_fmac_f32 v14, 0xbfb8aa3b, v27
	v_cndmask_b32_e64 v42, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v53, 0, 0x42800000, s12
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v50
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v21
	v_dual_fmac_f32 v15, 0xbfb8aa3b, v26 :: v_dual_fmac_f32 v46, 0xbfb8aa3b, v36
	v_dual_fmac_f32 v49, 0xbfb8aa3b, v13 :: v_dual_fmac_f32 v48, 0xbfb8aa3b, v34
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v14, v14
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v47
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v51
	v_cndmask_b32_e64 v50, 0, 0x42800000, s0
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v20
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s7
	v_dual_fmac_f32 v53, 0xbfb8aa3b, v16 :: v_dual_fmac_f32 v50, 0xbfb8aa3b, v19
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v15, v15
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v46, v46
	v_cndmask_b32_e64 v47, 0, 0x42800000, s10
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v52
	v_cndmask_b32_e64 v51, 0, 0x42800000, s14
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s9
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s11
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v53, v53
	v_ldexp_f32 v43, v43, v55
	v_ldexp_f32 v39, v39, v62
	v_ldexp_f32 v14, v14, v66
	v_cndmask_b32_e64 v52, 0, 0x42800000, s13
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v35
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s12
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v18
	v_ldexp_f32 v45, v45, v54
	v_ldexp_f32 v15, v15, v65
	v_ldexp_f32 v48, v48, v68
	v_ldexp_f32 v46, v46, v70
	.loc	1 176 38 is_stmt 0              ; generate_amdgcn.py:176:38
	v_add_f32_e32 v54, 1.0, v14
	v_add_f32_e32 v14, 1.0, v39
	v_add_f32_e32 v39, 1.0, v43
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v37, v37
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v17
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v47, v47
	v_ldexp_f32 v42, v42, v61
	v_ldexp_f32 v53, v53, v71
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_dual_add_f32 v43, 1.0, v46 :: v_dual_add_f32 v46, 1.0, v48
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v61, null, v39, v39, v22
	v_div_scale_f32 v65, null, v14, v14, v23
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s10
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_rcp_f32_e32 v86, v61
	v_rcp_f32_e32 v88, v65
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_ldexp_f32 v38, v38, v63
	v_ldexp_f32 v37, v37, v64
	v_ldexp_f32 v49, v49, v67
	v_ldexp_f32 v47, v47, v69
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v55, 1.0, v15
	v_add_f32_e32 v15, 1.0, v38
	v_dual_add_f32 v37, 1.0, v37 :: v_dual_add_f32 v38, 1.0, v42
	v_add_f32_e32 v42, 1.0, v45
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_fma_f32 v98, -v61, v86, 1.0
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v45, 1.0, v47
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_fma_f32 v100, -v65, v88, 1.0
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v47, 1.0, v49
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v49, null, v42, v42, v21
	v_div_scale_f32 v69, null, v37, v37, v25
	v_div_scale_f32 v63, null, v38, v38, v20
	v_fmac_f32_e32 v88, v100, v88
	v_div_scale_f32 v77, null, v47, v47, v13
	v_rcp_f32_e32 v85, v49
	v_div_scale_f32 v67, null, v15, v15, v24
	v_rcp_f32_e32 v90, v69
	v_div_scale_f32 v71, null, v55, v55, v26
	v_div_scale_f32 v75, null, v54, v54, v27
	v_rcp_f32_e32 v87, v63
	v_rcp_f32_e32 v93, v77
	v_fmac_f32_e32 v86, v98, v86
	v_div_scale_f32 v81, null, v45, v45, v35
	v_div_scale_f32 v79, null, v46, v46, v34
	v_rcp_f32_e32 v89, v67
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v48, 1.0, v53
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v83, null, v43, v43, v36
	v_rcp_f32_e32 v91, v71
	v_rcp_f32_e32 v92, v75
	v_rcp_f32_e32 v95, v81
	v_fma_f32 v97, -v49, v85, 1.0
	v_rcp_f32_e32 v94, v79
	v_fma_f32 v102, -v69, v90, 1.0
	v_div_scale_f32 v62, s1, v22, v39, v22
	v_rcp_f32_e32 v96, v83
	v_fma_f32 v99, -v63, v87, 1.0
	v_fma_f32 v105, -v77, v93, 1.0
	v_div_scale_f32 v53, vcc_lo, v21, v42, v21
	v_dual_fmac_f32 v85, v97, v85 :: v_dual_fmac_f32 v90, v102, v90
	v_div_scale_f32 v70, s5, v25, v37, v25
	v_fma_f32 v101, -v67, v89, 1.0
	v_div_scale_f32 v64, s2, v20, v38, v20
	v_fma_f32 v103, -v71, v91, 1.0
	v_fma_f32 v104, -v75, v92, 1.0
	v_fmac_f32_e32 v87, v99, v87
	v_dual_fmac_f32 v93, v105, v93 :: v_dual_mul_f32 v98, v62, v86
	v_div_scale_f32 v66, s3, v23, v14, v23
	v_fma_f32 v107, -v81, v95, 1.0
	v_dual_mul_f32 v97, v53, v85 :: v_dual_mul_f32 v102, v70, v90
	v_div_scale_f32 v68, s4, v24, v15, v24
	v_fma_f32 v106, -v79, v94, 1.0
	v_fmac_f32_e32 v89, v101, v89
	v_div_scale_f32 v74, s6, v26, v55, v26
	v_div_scale_f32 v76, s7, v27, v54, v27
	v_fma_f32 v108, -v83, v96, 1.0
	v_dual_fmac_f32 v91, v103, v91 :: v_dual_fmac_f32 v92, v104, v92
	v_fma_f32 v110, -v61, v98, v62
	v_mul_f32_e32 v99, v64, v87
	v_dual_fmac_f32 v95, v107, v95 :: v_dual_mul_f32 v100, v66, v88
	v_fma_f32 v109, -v49, v97, v53
	v_div_scale_f32 v78, s8, v13, v47, v13
	v_div_scale_f32 v80, s9, v34, v46, v34
	v_fmac_f32_e32 v94, v106, v94
	v_fma_f32 v114, -v69, v102, v70
	v_mul_f32_e32 v101, v68, v89
	v_dual_fmac_f32 v96, v108, v96 :: v_dual_mul_f32 v103, v74, v91
	v_mul_f32_e32 v104, v76, v92
	v_fmac_f32_e32 v98, v110, v86
	v_fma_f32 v111, -v63, v99, v64
	v_fma_f32 v112, -v65, v100, v66
	v_fmac_f32_e32 v97, v109, v85
	v_div_scale_f32 v82, s10, v35, v45, v35
	v_div_scale_f32 v84, s11, v36, v43, v36
	v_dual_mul_f32 v105, v78, v93 :: v_dual_mul_f32 v106, v80, v94
	v_fmac_f32_e32 v102, v114, v90
	v_fma_f32 v113, -v67, v101, v68
	v_fma_f32 v116, -v75, v104, v76
	v_dual_fmac_f32 v99, v111, v87 :: v_dual_fmac_f32 v100, v112, v88
	v_fma_f32 v49, -v49, v97, v53
	v_dual_mul_f32 v107, v82, v95 :: v_dual_mul_f32 v108, v84, v96
	v_fma_f32 v115, -v71, v103, v74
	v_fma_f32 v53, -v61, v98, v62
	v_fma_f32 v118, -v79, v106, v80
	v_dual_fmac_f32 v101, v113, v89 :: v_dual_fmac_f32 v104, v116, v92
	v_fma_f32 v61, -v63, v99, v64
	v_div_fmas_f32 v49, v49, v85, v97
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v62, -v65, v100, v66
	v_fma_f32 v120, -v83, v108, v84
	v_fmac_f32_e32 v103, v115, v91
	v_div_fmas_f32 v53, v53, v86, v98
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v106, v118, v94
	v_fma_f32 v63, -v67, v101, v68
	v_div_fmas_f32 v61, v61, v87, v99
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v64, -v69, v102, v70
	v_div_fixup_f32 v21, v49, v42, v21
	v_div_fmas_f32 v42, v62, v88, v100
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v108, v120, v96
	v_fma_f32 v65, -v71, v103, v74
	v_fma_f32 v117, -v77, v105, v78
	v_div_fixup_f32 v22, v53, v39, v22
	v_div_fmas_f32 v39, v63, v89, v101
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v20, v61, v38, v20
	v_div_fmas_f32 v38, v64, v90, v102
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v119, -v81, v107, v82
	v_div_fixup_f32 v23, v42, v14, v23
	v_div_fmas_f32 v42, v65, v91, v103
	v_dual_fmac_f32 v105, v117, v93 :: v_dual_mul_f32 v14, v10, v22
	v_fma_f32 v66, -v75, v104, v76
	v_div_fixup_f32 v10, v39, v15, v24
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v15, v30, v20
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v20, v38, v37, v25
	v_div_fixup_f32 v25, v42, v55, v26
	v_fmac_f32_e32 v107, v119, v95
	v_fma_f32 v67, -v77, v105, v78
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v68, -v79, v106, v80
	v_div_fmas_f32 v22, v66, v92, v104
	s_mov_b32 vcc_lo, s8
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_dual_mul_f32 v10, v11, v10 :: v_dual_mul_f32 v11, v12, v20
	v_mul_f32_e32 v12, v41, v25
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_fma_f32 v69, -v81, v107, v82
	v_div_fmas_f32 v24, v67, v93, v105
	s_mov_b32 vcc_lo, s9
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v51, v51
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_fma_f32 v70, -v83, v108, v84
	v_div_fmas_f32 v26, v68, v94, v106
	s_mov_b32 vcc_lo, s10
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s13
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fmas_f32 v20, v69, v95, v107
	s_mov_b32 vcc_lo, s11
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s14
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v22, v22, v54, v27
	v_div_fmas_f32 v27, v70, v96, v108
	v_div_fixup_f32 v24, v24, v47, v13
	v_div_fixup_f32 v25, v26, v46, v34
	v_div_fixup_f32 v20, v20, v45, v35
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v13, v40, v22
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v22, v27, v43, v36
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_ldexp_f32 v26, v52, v72
	v_exp_f32_e32 v27, v50
	v_ldexp_f32 v34, v51, v73
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v30, null, v48, v48, v16
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v22, v32, v22
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s0
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_dual_add_f32 v34, 1.0, v34 :: v_dual_mul_f32 v25, v28, v25
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_rcp_f32_e32 v35, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_div_scale_f32 v36, null, v26, v26, v17
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_3)
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_ldexp_f32 v27, v27, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v32, null, v34, v34, v18
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v20, v33, v20
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_rcp_f32_e32 v33, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_rcp_f32_e32 v38, v32
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v30, v35, 1.0
	s_mov_b32 s7, 0x76543210
	v_div_scale_f32 v28, null, v27, v27, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v36, v33, 1.0
	v_rcp_f32_e32 v40, v28
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v32, v38, 1.0
	v_fmac_f32_e32 v33, v39, v33
	v_div_scale_f32 v39, s0, v17, v26, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v38, v41, v38
	v_fmac_f32_e32 v35, v37, v35
	v_div_scale_f32 v37, vcc_lo, v16, v48, v16
	v_fma_f32 v43, -v28, v40, 1.0
	.loc	1 171 16 is_stmt 1              ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v9, v5, v9
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_mul_f32_e32 v46, v39, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v42, v37, v35
	v_div_scale_f32 v41, s1, v18, v34, v18
	v_fmac_f32_e32 v40, v43, v40
	v_div_scale_f32 v43, s2, v19, v27, v19
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v1, v9, v1
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v9, v31, v24
	.loc	1 176 26 is_stmt 0              ; generate_amdgcn.py:176:26
	v_fma_f32 v45, -v30, v42, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v47, v41, v38 :: v_dual_mul_f32 v50, v43, v40
	.loc	1 171 16 is_stmt 1              ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v7, v5, v7
	v_mul_f32_e32 v8, v5, v8
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_fmac_f32_e32 v42, v45, v35
	v_fma_f32 v45, -v36, v46, v39
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v5, v5, v6
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_fma_f32 v49, -v32, v47, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v6, -v30, v42, v37
	v_fma_f32 v30, -v28, v50, v43
	v_fmac_f32_e32 v47, v49, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v6, v6, v35, v42
	v_dual_fmac_f32 v50, v30, v40 :: v_dual_mul_f32 v3, v7, v3
	v_fmac_f32_e32 v46, v45, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v32, v47, v41
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v28, -v28, v50, v43
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v2, v8, v2
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_fma_f32 v35, -v36, v46, v39
	v_div_fixup_f32 v6, v6, v48, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v35, v33, v46
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v30, v30, v38, v47
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v7, v32, v26, v17
	v_div_fmas_f32 v28, v28, v40, v50
	.loc	1 176 19 is_stmt 0              ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v17, v29, v21
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v8, v30, v34, v18
.Ltmp20:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v21, 7, v60
.Ltmp21:
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v7, v3, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v3, v44, v23 :: v_dual_mul_f32 v8, v2, v8
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v4, v5, v4
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v5, v28, v27, v19
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v18, |v3|, |v10|, |v11|
	v_max_f32_e64 v19, |v12|, |v13|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp23:
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v6, v4, v6
	v_mul_f32_e32 v16, v1, v5
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v1, |v20|, |v9|, |v25|
	v_max3_f32 v5, |v15|, |v17|, |v14|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v2, |v22|, |v6|, |v7|
	v_max_f32_e64 v4, |v8|, |v16|
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max3_f32 v5, v5, v18, v19
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v19, 2, v58
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, v1, v2, v4
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v1, 3, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v18, v5, s7, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v2, s7, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v23, v1, v19
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v18, v18, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v5, v5, v18
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v18, 0, v21, v23
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v4, v2, v4
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_or_b32 v2, v58, 2, v1
	ds_store_b64 v18, v[4:5]
	v_xad_u32 v2, v2, v19, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[4:5], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v2, v4
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v2, v4, v2
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v18, v5
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v5, v5, v5
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v18, v18, v18
	v_dual_max_f32 v4, v5, v18 :: v_dual_mov_b32 v5, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v18, v4
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v18, v18, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v4, v18
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v18, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v18, v18, v18
	v_max_f32_e32 v2, v2, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v5, v2
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v5, v5, v5
	v_dual_max_f32 v2, v2, v5 :: v_dual_max_f32 v5, v4, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v18, v5
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v18, v18, v18
	v_dual_max_f32 v5, v5, v18 :: v_dual_mov_b32 v4, v2
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add_nc_u32_e32 v18, 0, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v4, v2, v4
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add_nc_u32_e32 v2, 0, v19
	ds_store_b64 v2, v[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[4:5], v18
.Ltmp50:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_max_f32_e32 v2, v4, v4
	v_max_f32_e32 v4, v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	v_max_f32_e32 v4, 0x2b8cbccc, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v5, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v18, null, 0x40e00000, 0x40e00000, v4
	v_div_scale_f32 v26, vcc_lo, v2, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v19, v5
	v_rcp_f32_e32 v21, v18
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v23, -v5, v19, 1.0
	v_fma_f32 v24, -v18, v21, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v19, v23, v19
	v_div_scale_f32 v23, s0, v4, 0x40e00000, v4
	v_dual_fmac_f32 v21, v24, v21 :: v_dual_mul_f32 v24, v26, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v27, v23, v21
	v_fma_f32 v28, -v5, v24, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v18, v27, v23
	v_dual_fmac_f32 v24, v28, v19 :: v_dual_fmac_f32 v27, v29, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v5, -v5, v24, v26
	v_fma_f32 v18, -v18, v27, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v5, v5, v19, v24
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v18, v18, v21, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v2, v5, 0x40e00000, v2
	v_div_fixup_f32 v5, v18, 0x40e00000, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_bfe_u32 v4, v2, 16, 1
	v_bfe_u32 v18, v5, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v4, v2, v4, 0x7fff
	v_add3_u32 v5, v5, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v18, 0xffff0000, v4
	v_and_b32_e32 v19, 0xffff0000, v5
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v5.l, v5.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v21, null, v18, v18, v20
	v_div_scale_f32 v24, null, v18, v18, v9
	v_div_scale_f32 v27, null, v18, v18, v25
	v_rcp_f32_e32 v42, v21
	v_div_scale_f32 v29, null, v18, v18, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v43, v24
	v_div_scale_f32 v31, null, v18, v18, v6
	v_rcp_f32_e32 v44, v27
	v_div_scale_f32 v39, null, v19, v19, v15
	v_rcp_f32_e32 v45, v29
	v_rcp_f32_e32 v46, v31
	v_fma_f32 v52, -v21, v42, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v50, v39
	v_fma_f32 v53, -v24, v43, 1.0
	v_div_scale_f32 v23, vcc_lo, v20, v18, v20
	v_fma_f32 v54, -v27, v44, 1.0
	v_fmac_f32_e32 v42, v52, v42
	v_div_scale_f32 v26, s0, v9, v18, v9
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v55, -v29, v45, 1.0
	v_fmac_f32_e32 v43, v53, v43
	v_fma_f32 v60, -v31, v46, 1.0
	v_div_scale_f32 v28, s1, v25, v18, v25
	v_fmac_f32_e32 v44, v54, v44
	v_fma_f32 v64, -v39, v50, 1.0
	v_mul_f32_e32 v52, v23, v42
	v_div_scale_f32 v30, s2, v22, v18, v22
	v_fmac_f32_e32 v45, v55, v45
	v_mul_f32_e32 v53, v26, v43
	v_div_scale_f32 v32, s3, v6, v18, v6
	v_fmac_f32_e32 v46, v60, v46
	v_mul_f32_e32 v54, v28, v44
	v_fmac_f32_e32 v50, v64, v50
	v_fma_f32 v64, -v21, v52, v23
	v_mul_f32_e32 v55, v30, v45
	v_fma_f32 v65, -v24, v53, v26
	v_mul_f32_e32 v60, v32, v46
	v_fma_f32 v66, -v27, v54, v28
	v_fmac_f32_e32 v52, v64, v42
	v_fma_f32 v67, -v29, v55, v30
	v_fmac_f32_e32 v53, v65, v43
	v_fma_f32 v68, -v31, v60, v32
	v_fmac_f32_e32 v54, v66, v44
	v_fma_f32 v21, -v21, v52, v23
	v_fmac_f32_e32 v55, v67, v45
	v_fma_f32 v23, -v24, v53, v26
	v_fmac_f32_e32 v60, v68, v46
	v_fma_f32 v24, -v27, v54, v28
	v_div_fmas_f32 v21, v21, v42, v52
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v26, -v29, v55, v30
	v_div_fmas_f32 v23, v23, v43, v53
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v41, null, v19, v19, v14
	v_fma_f32 v27, -v31, v60, v32
	v_div_fmas_f32 v24, v24, v44, v54
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v20, v21, v18, v20
	v_div_fmas_f32 v21, v26, v45, v55
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v9, v23, v18, v9
	v_div_fmas_f32 v23, v27, v46, v60
	v_rcp_f32_e32 v27, v41
	v_div_scale_f32 v40, null, v19, v19, v17
	v_div_scale_f32 v32, null, v19, v19, v3
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v51, v40
	v_fma_f32 v30, -v41, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v27, v30, v27
	v_div_scale_f32 v33, null, v18, v18, v7
	v_div_scale_f32 v37, null, v18, v18, v16
	v_div_scale_f32 v34, s4, v7, v18, v7
	v_rcp_f32_e32 v47, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v49, v37
	v_div_scale_f32 v35, null, v18, v18, v8
	v_div_scale_f32 v38, s6, v16, v18, v16
	v_div_fixup_f32 v21, v21, v18, v22
	v_rcp_f32_e32 v48, v35
	v_div_fixup_f32 v6, v23, v18, v6
	v_div_scale_f32 v22, s0, v15, v19, v15
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v61, -v33, v47, 1.0
	v_fma_f32 v63, -v37, v49, 1.0
	v_fma_f32 v23, -v40, v51, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v36, s5, v8, v18, v8
	v_fmac_f32_e32 v47, v61, v47
	v_fmac_f32_e32 v49, v63, v49
	v_fma_f32 v62, -v35, v48, 1.0
	v_div_fixup_f32 v24, v24, v18, v25
	v_fmac_f32_e32 v51, v23, v51
	v_mul_f32_e32 v61, v34, v47
	v_mul_f32_e32 v63, v38, v49
	v_fmac_f32_e32 v48, v62, v48
	v_div_scale_f32 v23, s1, v17, v19, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v69, -v33, v61, v34
	v_fma_f32 v26, -v37, v63, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v62, v36, v48 :: v_dual_mul_f32 v29, v23, v51
	v_div_scale_f32 v30, s2, v14, v19, v14
	v_fmac_f32_e32 v61, v69, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v63, v26, v49
	v_fma_f32 v70, -v35, v62, v36
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v28, -v33, v61, v34
	v_fma_f32 v31, -v37, v63, v38
	v_rcp_f32_e32 v33, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v25, v28, v47, v61
	v_mul_f32_e32 v28, v22, v50
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v7, v25, v18, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v26, -v39, v28, v22
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v28, v26, v50
	v_fma_f32 v26, -v40, v29, v23
.Ltmp51:
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_and_b32_e32 v2, 16, v0
.Ltmp52:
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v22, -v39, v28, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v29, v26, v51
	v_fmac_f32_e32 v62, v70, v48
	v_mul_f32_e32 v26, v30, v27
	v_fma_f32 v23, -v40, v29, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v35, v62, v36
	v_div_fmas_f32 v25, v25, v48, v62
	s_mov_b32 vcc_lo, s6
	v_div_fmas_f32 v31, v31, v49, v63
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fixup_f32 v8, v25, v18, v8
	v_div_fmas_f32 v22, v22, v50, v28
	v_fma_f32 v28, -v41, v26, v30
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v16, v31, v18, v16
	v_div_fmas_f32 v23, v23, v51, v29
	v_div_fixup_f32 v15, v22, v19, v15
	v_fmac_f32_e32 v26, v28, v27
	v_div_scale_f32 v22, null, v19, v19, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v17, v23, v19, v17
	v_fma_f32 v23, -v32, v33, 1.0
	v_fma_f32 v18, -v41, v26, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v25, v22
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v31, null, v19, v19, v13
	v_fmac_f32_e32 v33, v23, v33
	v_div_scale_f32 v23, null, v19, v19, v11
	v_div_fmas_f32 v18, v18, v27, v26
	v_div_scale_f32 v26, null, v19, v19, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v28, v23
	v_div_scale_f32 v27, vcc_lo, v3, v19, v3
	v_rcp_f32_e32 v29, v26
	v_div_fixup_f32 v14, v18, v19, v14
	v_fma_f32 v18, -v22, v25, 1.0
	v_rcp_f32_e32 v35, v31
	v_mul_f32_e32 v30, v27, v33
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v25, v18, v25
	v_div_scale_f32 v18, s0, v10, v19, v10
	v_fma_f32 v34, -v23, v28, 1.0
	v_fma_f32 v37, -v26, v29, 1.0
	v_fma_f32 v36, -v32, v30, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v38, v18, v25
	v_fma_f32 v39, -v31, v35, 1.0
	v_fmac_f32_e32 v28, v34, v28
	v_div_scale_f32 v34, s1, v11, v19, v11
	v_fmac_f32_e32 v29, v37, v29
	v_div_scale_f32 v37, s2, v12, v19, v12
	v_fmac_f32_e32 v30, v36, v33
	v_fma_f32 v36, -v22, v38, v18
	v_fmac_f32_e32 v35, v39, v35
	v_div_scale_f32 v39, s3, v13, v19, v13
	v_dual_mul_f32 v40, v34, v28 :: v_dual_mul_f32 v41, v37, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v36, v25
	v_mul_f32_e32 v42, v39, v35
	v_fma_f32 v27, -v32, v30, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v32, -v23, v40, v34
	v_fma_f32 v36, -v26, v41, v37
	v_fma_f32 v18, -v22, v38, v18
	v_fma_f32 v22, -v31, v42, v39
	v_div_fmas_f32 v27, v27, v33, v30
	v_fmac_f32_e32 v40, v32, v28
	v_fmac_f32_e32 v41, v36, v29
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v42, v22, v35
	v_div_fmas_f32 v18, v18, v25, v38
	v_fma_f32 v23, -v23, v40, v34
	v_fma_f32 v22, -v26, v41, v37
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v25, -v31, v42, v39
	v_div_fixup_f32 v3, v27, v19, v3
	v_div_fmas_f32 v23, v23, v28, v40
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v10, v18, v19, v10
	v_div_fmas_f32 v22, v22, v29, v41
	s_mov_b32 vcc_lo, s3
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v18, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v25, v25, v35, v42
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v3, v3
	s_mov_b32 s0, 0xc1000000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v11, v23, v19, v11
	v_div_fixup_f32 v12, v22, v19, v12
	v_div_fixup_f32 v13, v25, v19, v13
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v19, v24
	v_rndne_f32_e32 v20, v21
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v14, v14
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v3, v3, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v12, v12
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v3, v3
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v13, v13
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v9, v9
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v21, v6
	v_cvt_i32_f32_e32 v23, v8
	v_cvt_i32_f32_e32 v24, v14
	v_and_b32_e32 v6, 15, v18
	v_and_b32_e32 v14, 15, v15
	v_and_b32_e32 v15, 15, v17
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v18, 11, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v17, 15, v3
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v3, 5, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_cvt_i32_f32_e32 v22, v7
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v27, v12
	v_and_b32_e32 v7, 15, v9
	v_and_b32_e32 v8, 15, v19
	v_and_b32_e32 v9, 15, v20
	v_and_b32_e32 v12, 15, v23
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v19, 0x60, v0
	v_and_or_b32 v20, 0x600, v59, v56
	v_and_b32_e32 v18, 0x3000, v18
	v_lshlrev_b32_e32 v23, 7, v0
	v_and_b32_e32 v3, 0x60, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v25, v10
	v_cvt_i32_f32_e32 v26, v11
	v_cvt_i32_f32_e32 v28, v13
	v_and_b32_e32 v10, 15, v21
	v_and_b32_e32 v11, 15, v22
	v_and_b32_e32 v13, 15, v16
	v_and_b32_e32 v16, 15, v24
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v21, 7, v2
	v_xor_b32_e32 v22, v20, v19
	v_add_nc_u32_e32 v24, 0, v18
	v_and_or_b32 v3, 0x3600, v23, v3
	v_and_b32_e32 v23, 0x1f0, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v18, 15, v25
	v_and_b32_e32 v19, 15, v26
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v22, v24, v21, v22
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v20, 15, v27
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xad_u32 v3, v3, v23, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v21, 15, v28
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v22, v[6:9]
	ds_store_b128 v22, v[14:17] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v3
	ds_load_b128 v[14:17], v3 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v22, v[10:13]
	ds_store_b128 v22, v[18:21] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v3
	ds_load_b128 v[18:21], v3 offset:2048
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v22.h, 0
	v_mov_b16_e32 v22.l, v4.h
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s25, 31
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v3, s26, 7, v1
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s25, s0
	.loc	1 76 13 is_stmt 1               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v5.h, v22.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v2, v22, v5, vcc_lo
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v4, v16, 4, v8
	v_lshl_or_b32 v8, v17, 4, v9
	v_lshl_or_b32 v7, v15, 4, v7
	v_lshl_or_b32 v6, v14, 4, v6
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_bfe_i32 v5, v2, 0, 16
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v4.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v9, v18, 4, v10
	v_lshl_or_b32 v10, v19, 4, v11
	v_lshl_or_b32 v11, v20, 4, v12
	v_lshl_or_b32 v12, v21, 4, v13
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_or_b32_e32 v13, s27, v57
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v1.l, 8, v8.l
	v_lshlrev_b16 v2.l, 8, v10.l
	v_and_b16 v2.h, 0xff, v9.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mad_u64_u32 v[3:4], null, v13, s0, v[3:4]
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s25, 31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.h, v1.h, v1.l
	.loc	1 87 34 is_stmt 1               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v1.l, 8, v7.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v7, v0, 31, s27
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s25, s0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v0.l, 0xff, v6.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v0.h, 8, v12.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v6, v7, s0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v11.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_permlanex16_b32 v7, v5, s7, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.l, v0.l, v1.l
	v_or_b16 v5.l, v2.h, v2.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b16 v5.h, v1.h, v0.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v1, v7, v22, vcc_lo
	v_add_lshl_u32 v0, v6, s26, 1
	v_cmp_eq_u32_e32 vcc_lo, 0, v58
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[4:5], v3, s[20:23], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s21, s19, 0xffff
	s_mov_b32 s20, s18
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b16 v1, v0, s[20:23], 0 offen
.Ltmp53:
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp54:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 255
		.amdhsa_next_free_sgpr 29
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 255
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 29
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20044
; TotalNumSgprs: 31
; NumVgprs: 255
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 31
; NumVGPRsForWavesPerEU: 255
; Occupancy: 5
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
	.byte	133                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     31
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     255
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
