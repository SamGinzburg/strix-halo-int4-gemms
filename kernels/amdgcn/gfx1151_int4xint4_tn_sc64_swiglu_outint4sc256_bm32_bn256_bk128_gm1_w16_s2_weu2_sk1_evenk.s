	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
	v_lshrrev_b32_e32 v38, 4, v0
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_lshlrev_b32_e32 v11, 1, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v39, 0x1e0, v0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b32_e32 v12, 4, v0
	v_or_b32_e32 v107, 0x3f0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_add_nc_u32_e32 v109, 0, v11
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v73, 1, v39
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v110, 0, v12
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
	s_min_i32 s19, s6, 1
	.loc	1 120 29 is_stmt 1              ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s16, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s6, s19
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s7, s6
	s_abs_i32 s17, s2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	s_sub_i32 s10, 0, s6
	s_mov_b32 s11, 0x31027000
	s_mul_f32 s7, s7, 0x4f7ffffe
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s39, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s7, s10
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s7, s7, s5
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s38, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_hi_u32 s5, s17, s7
	s_xor_b32 s7, s2, s19
	s_mul_i32 s18, s5, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s17, s17, s18
	s_add_i32 s18, s5, 1
	s_sub_i32 s20, s17, s6
	s_cmp_ge_u32 s17, s6
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s17, s20, s17
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s17, s6
	s_cselect_b32 s5, s18, s5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s18, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s20, s4, 63
.Ltmp13:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s17, s5, s7
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s6, s3, 5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s18
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s5, s20, 31
.Ltmp15:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s33, s17, s7
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v5, s6, v38
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s18, s4, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s4, s5, 26
.Ltmp17:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s5, s33, s19
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s19, s20, s4
.Ltmp19:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s5
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s18, v5
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 32, v5
	.loc	1 120 13 is_stmt 1              ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s16
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_lshl_b32 s49, s35, 1
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s50, s33, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s5, s19, 6
.Ltmp21:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s48, s2, 5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s20, 63
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s22, s49, s6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s16, s4, vcc_lo
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	s_mul_i32 s21, s34, s6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v40, 15, v0
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_and_b32 s37, s37, 0xffff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s20, 0x7f
	s_mov_b32 s16, -1
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v1, 1, v40
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v33, 4, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_mad_u64_u32 v[2:3], null, s34, v38, v[1:2]
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[3:4], null, s49, v38, v[33:34]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_add3_u32 v2, s21, s48, v2
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add3_u32 v3, s50, s22, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 228 43                        ; generate_amdgcn.py:228:43
	v_add_nc_u32_e32 v4, s35, v3
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_or_b32_e32 v108, v73, v40
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_cndmask_b32_e32 v6, 0x80000000, v4, vcc_lo
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_u16 v10, v2, s[8:11], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_clause 0x1
	buffer_load_b128 v[2:5], v3, s[36:39], 0 offen
	buffer_load_b128 v[6:9], v6, s[36:39], 0 offen
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt vmcnt(2)
	ds_store_b16 v109, v10 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v110, v[2:5]
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	s_waitcnt vmcnt(0)
	ds_store_b128 v110, v[6:9] offset:8192
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b32_e32 v4, v73, v40
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_or_b32_e32 v5, 0x3f0, v0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_mov_b64 s[30:31], s[10:11]
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b32_e32 v75, 0x100, v4
	v_or_b32_e32 v76, 0x200, v4
	v_or_b32_e32 v77, 0x300, v4
	v_or_b32_e32 v78, 0x400, v4
	v_or_b32_e32 v79, 0x500, v4
	v_or_b32_e32 v80, 0x600, v4
	v_or_b32_e32 v81, 0x700, v4
	v_or_b32_e32 v82, 0x800, v4
	v_or_b32_e32 v83, 0x900, v4
	v_or_b32_e32 v84, 0xa00, v4
	v_or_b32_e32 v85, 0xb00, v4
	v_or_b32_e32 v86, 0xc00, v4
	v_or_b32_e32 v87, 0xd00, v4
	v_or_b32_e32 v88, 0xe00, v4
	v_or_b32_e32 v89, 0xf00, v4
	v_or_b32_e32 v90, 0x1000, v4
	v_or_b32_e32 v91, 0x1100, v4
	v_or_b32_e32 v92, 0x1200, v4
	v_or_b32_e32 v93, 0x1300, v4
	v_or_b32_e32 v94, 0x1400, v4
	v_or_b32_e32 v95, 0x1500, v4
	v_or_b32_e32 v96, 0x1600, v4
	v_or_b32_e32 v97, 0x1700, v4
	v_or_b32_e32 v98, 0x1800, v4
	v_or_b32_e32 v99, 0x1900, v4
	v_or_b32_e32 v100, 0x1a00, v4
	v_or_b32_e32 v101, 0x1b00, v4
	v_or_b32_e32 v102, 0x1c00, v4
	v_or_b32_e32 v103, 0x1d00, v4
	v_or_b32_e32 v104, 0x1e00, v4
	v_or_b32_e32 v105, 0x1f00, v4
	s_mov_b32 s16, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr28_sgpr29
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr4
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
                                        ; implicit-def: $vgpr87
                                        ; implicit-def: $vgpr88
                                        ; implicit-def: $vgpr89
                                        ; implicit-def: $vgpr90
                                        ; implicit-def: $vgpr91
                                        ; implicit-def: $vgpr92
                                        ; implicit-def: $vgpr93
                                        ; implicit-def: $vgpr94
                                        ; implicit-def: $vgpr95
                                        ; implicit-def: $vgpr96
                                        ; implicit-def: $vgpr97
                                        ; implicit-def: $vgpr98
                                        ; implicit-def: $vgpr99
                                        ; implicit-def: $vgpr100
                                        ; implicit-def: $vgpr101
                                        ; implicit-def: $vgpr102
                                        ; implicit-def: $vgpr103
                                        ; implicit-def: $vgpr104
                                        ; implicit-def: $vgpr105
.LBB0_3:                                ; %Flow348
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b128 s[24:27], s[0:1], 0x20
	v_bfe_u32 v74, v0, 4, 1
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v106, 0, v40
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_mov_b32_e32 v48, 0
	s_and_not1_b32 vcc_lo, exec_lo, s16
	s_add_i32 s0, s5, -1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v45, 0 :: v_dual_lshlrev_b32 v2, 1, v38
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_lshl_or_b32 v3, s17, 9, v39
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v4, s48, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v2, s3, 6, v2
	v_sub_nc_u32_e32 v112, s18, v38
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v5, s49, v3
	s_lshl_b32 s18, s7, 9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v6, 0x41, v2
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v7, 16, v4
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v2, 64, v2
	v_subrev_nc_u32_e32 v114, s18, v5
	v_mul_lo_u32 v5, s35, v6
	s_add_i32 s6, s6, 32
	v_mul_lo_u32 v6, s5, v7
	v_mul_lo_u32 v2, s35, v2
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v7, s6, v38
	s_lshl_b32 s17, s17, 8
	v_mul_lo_u32 v4, s5, v4
	v_subrev_nc_u32_e32 v115, s18, v3
	v_add3_u32 v3, v5, s17, v33
	v_mul_lo_u32 v5, s34, v7
	v_add3_u32 v2, v2, s17, v33
	s_lshl_b32 s17, s7, 8
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v111, 0, v108
	v_or_b32_e32 v75, 0x100, v108
	v_or_b32_e32 v76, 0x200, v108
	v_or_b32_e32 v77, 0x300, v108
	v_or_b32_e32 v78, 0x400, v108
	v_or_b32_e32 v79, 0x500, v108
	v_or_b32_e32 v80, 0x600, v108
	v_or_b32_e32 v81, 0x700, v108
	v_or_b32_e32 v82, 0x800, v108
	v_or_b32_e32 v83, 0x900, v108
	v_or_b32_e32 v84, 0xa00, v108
	v_or_b32_e32 v85, 0xb00, v108
	v_or_b32_e32 v86, 0xc00, v108
	v_or_b32_e32 v87, 0xd00, v108
	v_or_b32_e32 v88, 0xe00, v108
	v_or_b32_e32 v89, 0xf00, v108
	v_or_b32_e32 v90, 0x1000, v108
	v_or_b32_e32 v91, 0x1100, v108
	v_or_b32_e32 v92, 0x1200, v108
	v_or_b32_e32 v93, 0x1300, v108
	v_or_b32_e32 v94, 0x1400, v108
	v_or_b32_e32 v95, 0x1500, v108
	v_or_b32_e32 v96, 0x1600, v108
	v_or_b32_e32 v97, 0x1700, v108
	v_or_b32_e32 v98, 0x1800, v108
	v_or_b32_e32 v99, 0x1900, v108
	v_or_b32_e32 v100, 0x1a00, v108
	v_or_b32_e32 v101, 0x1b00, v108
	v_or_b32_e32 v102, 0x1c00, v108
	v_or_b32_e32 v103, 0x1d00, v108
	v_or_b32_e32 v104, 0x1e00, v108
	v_or_b32_e32 v105, 0x1f00, v108
	v_dual_mov_b32 v44, 0 :: v_dual_lshlrev_b32 v113, 1, v74
	v_dual_mov_b32 v69, 0 :: v_dual_lshlrev_b32 v116, 1, v6
	v_dual_mov_b32 v54, 0 :: v_dual_lshlrev_b32 v117, 1, v4
	v_subrev_nc_u32_e32 v118, s17, v3
	v_subrev_nc_u32_e32 v119, s17, v2
	v_add3_u32 v120, v5, s48, v1
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v121, 0, v107
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_mov_b32_e32 v63, 0
	v_mov_b32_e32 v57, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b32 s16, 0
	s_mov_b64 s[28:29], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_max_i32 s1, s0, 1
	s_lshl_b32 s3, s35, 2
	s_lshl_b32 s7, s35, 6
	s_lshl_b32 s34, s34, 5
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
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s6, v112
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v123, v117, s[44:47], 0 offen
	buffer_load_u16 v124, v116, s[44:47], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v132, s23 :: v_dual_mov_b32 v131, s22
	v_dual_mov_b32 v130, s21 :: v_dual_mov_b32 v129, s20
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v128, s19 :: v_dual_mov_b32 v127, s18
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e32 v1, 0x80000000, v120, vcc_lo
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v126, s17 :: v_dual_mov_b32 v125, s16
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s1, s1, -1
	s_add_i32 s6, s6, 32
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_u16 v122, v1, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v1, v106 offset:16544
	ds_load_u8 v2, v106 offset:16512
	ds_load_u8 v3, v106 offset:16608
	ds_load_u8 v4, v106 offset:16576
	ds_load_u8 v5, v106 offset:16480
	ds_load_u8 v6, v106 offset:16448
	ds_load_u8 v7, v106 offset:16384
	ds_load_u8 v8, v106 offset:16400
	ds_load_u8 v9, v106 offset:16416
	ds_load_u8 v10, v106 offset:16496
	ds_load_u8 v11, v106 offset:16464
	ds_load_u8 v12, v106 offset:16432
	ds_load_u8 v13, v111 offset:1280
	ds_load_u8 v14, v111 offset:1792
	ds_load_u8 v15, v111 offset:1536
	ds_load_u8 v16, v111 offset:1024
	ds_load_u8 v17, v111 offset:256
	ds_load_u8 v18, v111 offset:768
	ds_load_u8 v19, v111 offset:512
	ds_load_u8 v20, v111
	ds_load_u8 v21, v106 offset:16624
	ds_load_u8 v22, v106 offset:16592
	ds_load_u8 v23, v106 offset:16560
	ds_load_u8 v24, v106 offset:16528
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v25, v111 offset:9472
	ds_load_u8 v26, v111 offset:9984
	ds_load_u8 v27, v111 offset:9728
	ds_load_u8 v28, v111 offset:9216
	ds_load_u8 v29, v111 offset:8448
	ds_load_u8 v30, v111 offset:8960
	ds_load_u8 v31, v111 offset:8704
	ds_load_u8 v32, v111 offset:8192
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v133, v106 offset:16800
	ds_load_u8 v134, v106 offset:16768
	ds_load_u8 v135, v106 offset:16864
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v3, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v4, v7, v9, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v5, v16, v13, 0xc0c0004
	v_perm_b32 v6, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v7, v20, v17, 0xc0c0004
	v_perm_b32 v9, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v13, v24, v23, 0xc0c0004
	v_perm_b32 v14, v22, v21, 0xc0c0004
	v_perm_b32 v10, v11, v10, 0xc0c0004
	v_perm_b32 v8, v8, v12, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v11, v28, v25, 0xc0c0004
	v_perm_b32 v12, v27, v26, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v18, v2, 16, v1
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v16, v31, v30, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v15, v32, v29, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v17, v3, 16, v4
	v_lshl_or_b32 v2, v6, 16, v5
	v_lshl_or_b32 v1, v9, 16, v7
	v_lshl_or_b32 v35, v14, 16, v13
	v_lshl_or_b32 v34, v10, 16, v8
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v37, v12, 16, v11
	v_lshl_or_b32 v36, v16, 16, v15
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[1:2], v[17:18], v[125:132] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[1:2], v[34:35], v[125:132] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[36:37], v[17:18], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[36:37], v[34:35], v[125:132] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v125, v106 offset:16848
	ds_load_u8 v126, v106 offset:16816
	ds_load_u8 v127, v106 offset:16784
	ds_load_u8 v128, v106 offset:16752
	ds_load_u8 v136, v106 offset:16832
	ds_load_u8 v137, v106 offset:16672
	ds_load_u8 v139, v106 offset:16880
	ds_load_u8 v37, v106 offset:16736
	ds_load_u8 v132, v106 offset:16704
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v34, v134, v133, 0xc0c0004
	ds_load_u8 v130, v106 offset:16688
	ds_load_u8 v131, v106 offset:16656
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s1, 0
	v_add_nc_u32_e32 v116, 2, v116
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v127, v111 offset:11520
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v129, v106 offset:16720
	ds_load_u8 v138, v106 offset:16640
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v35, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v37, v132, v37, 0xc0c0004
	v_perm_b32 v125, v125, v139, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v131, v111 offset:11776
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v35, v35, 16, v34
	v_lshl_or_b32 v126, v125, 16, v126
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v36, v138, v137, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v129, v111 offset:11264
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v125, v128, 16, v130
	v_lshl_or_b32 v34, v37, 16, v36
	ds_load_u8 v36, v111 offset:3328
	ds_load_u8 v37, v111 offset:3584
	ds_load_u8 v132, v111 offset:3072
	ds_load_u8 v133, v111 offset:2816
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v128, v111 offset:12032
	ds_load_u8 v130, v111 offset:11008
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v127, v129, v127, 0xc0c0004
	ds_load_u8 v129, v111 offset:10496
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v36, v132, v36, 0xc0c0004
	ds_load_u8 v132, v111 offset:3840
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v128, v131, v128, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v128, v128, 16, v127
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v132, 0xc0c0004
	ds_load_u8 v132, v111 offset:2304
	ds_load_u8 v134, v111 offset:2560
	ds_load_u8 v135, v111 offset:2048
	v_lshl_or_b32 v37, v37, 16, v36
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v135, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v133, 16, v132
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v131, v111 offset:10752
	ds_load_u8 v132, v111 offset:10240
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[36:37], v[34:35], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[36:37], v[125:126], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v36, v106 offset:17088
	ds_load_u8 v37, v106 offset:16928
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v131, v106 offset:17056
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v129, v132, v129, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v127, v130, 16, v129
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v129, v106 offset:17024
	ds_load_u8 v130, v106 offset:17120
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[127:128], v[34:35], v[1:8] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v34, v106 offset:16896
	ds_load_u8 v132, v106 offset:17136
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[127:128], v[125:126], v[17:24] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v125, v106 offset:17104
	ds_load_u8 v126, v106 offset:17072
	ds_load_u8 v127, v106 offset:17040
	ds_load_u8 v128, v106 offset:17008
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v35, v129, v131, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v36, v36, v130, 0xc0c0004
	ds_load_u8 v129, v106 offset:16976
	ds_load_u8 v130, v106 offset:16944
	ds_load_u8 v131, v106 offset:16912
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v34, v34, v37, 0xc0c0004
	ds_load_u8 v37, v106 offset:16992
	ds_load_u8 v133, v106 offset:16960
	v_lshl_or_b32 v35, v36, 16, v35
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	v_perm_b32 v125, v125, v132, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v127, v111 offset:13568
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v126, v125, 16, v126
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v131, v111 offset:13824
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v133, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v37, 16, v34
	ds_load_u8 v36, v111 offset:5376
	ds_load_u8 v37, v111 offset:5632
	ds_load_u8 v133, v111 offset:5120
	ds_load_u8 v134, v111 offset:4864
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v36, v133, v36, 0xc0c0004
	ds_load_u8 v133, v111 offset:5888
	v_perm_b32 v128, v129, v128, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v129, v111 offset:13312
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v125, v128, 16, v130
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v128, v111 offset:14080
	ds_load_u8 v130, v111 offset:13056
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v37, v37, v133, 0xc0c0004
	ds_load_u8 v133, v111 offset:4352
	ds_load_u8 v135, v111 offset:4608
	ds_load_u8 v136, v111 offset:4096
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v127, v129, v127, 0xc0c0004
	ds_load_u8 v129, v111 offset:12544
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v37, v37, 16, v36
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v128, v131, v128, 0xc0c0004
	ds_load_u8 v131, v111 offset:12800
	ds_load_u8 v132, v111 offset:12288
	v_lshl_or_b32 v128, v128, 16, v127
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v133, v136, v133, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v131, v106 offset:17312
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v129, v132, v129, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v36, v134, 16, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v127, v130, 16, v129
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[36:37], v[34:35], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[36:37], v[125:126], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v36, v106 offset:17344
	ds_load_u8 v37, v106 offset:17184
	ds_load_u8 v129, v106 offset:17280
	ds_load_u8 v130, v106 offset:17376
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[127:128], v[34:35], v[1:8] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v34, v106 offset:17152
	ds_load_u8 v132, v106 offset:17264
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[127:128], v[125:126], v[17:24] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v125, v106 offset:17232
	ds_load_u8 v126, v106 offset:17360
	ds_load_u8 v127, v106 offset:17328
	ds_load_u8 v128, v106 offset:17296
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v35, v129, v131, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v36, v36, v130, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v34, v34, v37, 0xc0c0004
	ds_load_u8 v37, v106 offset:17248
	ds_load_u8 v131, v106 offset:17216
	ds_load_u8 v129, v106 offset:17200
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	v_lshl_or_b32 v35, v36, 16, v35
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v128, v111 offset:15872
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v125, v125, v132, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v131, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v37, 16, v34
	ds_load_u8 v36, v111 offset:7424
	ds_load_u8 v37, v111 offset:7680
	ds_load_u8 v131, v111 offset:7168
	ds_load_u8 v133, v111 offset:6912
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v36, v131, v36, 0xc0c0004
	ds_load_u8 v131, v111 offset:7936
	ds_load_u8 v130, v106 offset:17168
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v37, v37, v131, 0xc0c0004
	ds_load_u8 v131, v111 offset:6400
	ds_load_u8 v134, v111 offset:6656
	ds_load_u8 v135, v111 offset:6144
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v121 offset:16384
	v_lshl_or_b32 v37, v37, 16, v36
	v_lshl_or_b32 v125, v125, 16, v129
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v131, v135, v131, 0xc0c0004
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_cndmask_b32_e32 v134, 0x80000000, v118, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v36, v133, 16, v131
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v131, v111 offset:15616
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v126, v126, v130, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v130, v111 offset:15360
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v133, 0x80000000, v119, vcc_lo
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[36:37], v[34:35], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v126, v126, 16, v127
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v127, v111 offset:16128
	ds_load_u8 v129, v111 offset:15104
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[25:32], v[36:37], v[125:126], v[25:32] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v36, v10
	v_cvt_f32_i32_e32 v37, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v130, v130, v131, 0xc0c0004
	ds_load_u8 v131, v111 offset:14592
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v111 offset:14848
	ds_load_u8 v132, v111 offset:14336
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v129, v128, v129, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	v_lshl_or_b32 v128, v127, 16, v130
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v132, v113, v115
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v130, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v127, v129, 16, v131
	v_wmma_i32_16x16x16_iu4 v[17:24], v[127:128], v[125:126], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[127:128], v[34:35], v[1:8] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v125, v12
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v124, 16, v124
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v126, v13
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v34, v20
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v131, v132, s[40:43], 0 offen
	buffer_load_u16 v135, v132, s[40:43], 0 offen offset:4
	buffer_load_u16 v136, v132, s[40:43], 0 offen offset:8
	buffer_load_u16 v137, v132, s[40:43], 0 offen offset:12
	buffer_load_u16 v138, v132, s[40:43], 0 offen offset:16
	buffer_load_u16 v139, v132, s[40:43], 0 offen offset:20
	buffer_load_u16 v140, v132, s[40:43], 0 offen offset:24
	buffer_load_u16 v20, v132, s[40:43], 0 offen offset:28
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v21, v21
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v141, v124, v30 :: v_dual_lshlrev_b32 v30, 16, v123
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v127, v14
	v_cvt_f32_i32_e32 v128, v15
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v6, v6
	v_mul_f32_e32 v12, v124, v21
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v21, v30, v125
	v_dual_mul_f32 v16, v124, v32 :: v_dual_add_nc_u32 v129, v113, v114
	v_cvt_f32_i32_e32 v35, v9
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v132, v124, v31 :: v_dual_mul_f32 v147, v30, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v142, v124, v29 :: v_dual_mul_f32 v125, v30, v35
	v_mul_f32_e32 v143, v124, v28
	v_mul_f32_e32 v144, v124, v27
	v_mul_f32_e32 v145, v124, v26
	v_mul_f32_e32 v146, v124, v25
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v10, v124, v23 :: v_dual_mul_f32 v27, v30, v130
	v_mul_f32_e32 v13, v124, v34
	v_dual_mul_f32 v14, v124, v19 :: v_dual_mul_f32 v23, v30, v8
	v_dual_mul_f32 v17, v124, v17 :: v_dual_mul_f32 v32, v30, v126
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x2
	buffer_load_u16 v34, v129, s[40:43], 0 offen offset:8
	buffer_load_u16 v123, v129, s[40:43], 0 offen offset:12
	buffer_load_u16 v126, v129, s[40:43], 0 offen offset:16
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v19, v30, v3
	v_mul_f32_e32 v25, v30, v1
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v29, v30, v128
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v28, v30, v6
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	buffer_load_u16 v128, v129, s[40:43], 0 offen offset:24
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v114, s3, v114
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v11, v124, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v9, v124, v24 :: v_dual_mul_f32 v22, v30, v2
	v_mul_f32_e32 v26, v30, v7
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v24, v30, v37 :: v_dual_lshlrev_b32 v1, 16, v131
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v15, v124, v18 :: v_dual_mul_f32 v18, v30, v4
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v31, v30, v127
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x3
	buffer_load_u16 v127, v129, s[40:43], 0 offen offset:20
	buffer_load_u16 v131, v129, s[40:43], 0 offen offset:28
	buffer_load_u16 v130, v129, s[40:43], 0 offen offset:4
	buffer_load_u16 v129, v129, s[40:43], 0 offen
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v30, v30, v5
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v72, v146, v1
	v_fmac_f32_e32 v71, v125, v1
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[1:4], v133, s[36:39], 0 offen
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v124, 16, v139
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(7)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v64, v141, v124 :: v_dual_lshlrev_b32 v123, 16, v123
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v49, v18, v123 :: v_dual_lshlrev_b32 v34, 16, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v50, v19, v34 :: v_dual_add_nc_u32 v117, 2, v117
	v_dual_fmac_f32 v61, v14, v34 :: v_dual_fmac_f32 v60, v13, v123
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v130, 16, v130
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v51, v22, v130 :: v_dual_lshlrev_b32 v128, 16, v128
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v56, v10, v128 :: v_dual_lshlrev_b32 v127, 16, v127
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v129, 16, v129
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v47, v26, v128
	v_dual_fmac_f32 v62, v15, v130 :: v_dual_lshlrev_b32 v131, 16, v131
	v_fmac_f32_e32 v48, v28, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v69, v25, v129 :: v_dual_lshlrev_b32 v20, 16, v20
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v36, 16, v137
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v126, 16, v126
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v70, v17, v129 :: v_dual_add_nc_u32 v119, s7, v119
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v57, v16, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v66, v143, v36 :: v_dual_lshlrev_b32 v5, 16, v135
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v35, 16, v136
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v52, v21, v36 :: v_dual_lshlrev_b32 v37, 16, v138
	v_fmac_f32_e32 v68, v145, v5
	v_fmac_f32_e32 v54, v147, v5
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	buffer_load_b128 v[5:8], v134, s[36:39], 0 offen
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v65, v142, v37
	v_dual_fmac_f32 v44, v32, v37 :: v_dual_lshlrev_b32 v125, 16, v140
	v_fmac_f32_e32 v67, v144, v35
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v115, s3, v115
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v53, v24, v35 :: v_dual_add_nc_u32 v120, s34, v120
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v63, v132, v125 :: v_dual_add_nc_u32 v118, s7, v118
	v_dual_fmac_f32 v43, v31, v124 :: v_dual_fmac_f32 v42, v29, v125
	v_fmac_f32_e32 v41, v27, v20
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v45, v30, v126 :: v_dual_fmac_f32 v46, v23, v131
	v_dual_fmac_f32 v59, v12, v126 :: v_dual_fmac_f32 v58, v11, v127
	v_fmac_f32_e32 v55, v9, v131
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v109, v122 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v110, v[1:4]
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	s_waitcnt vmcnt(0)
	ds_store_b128 v110, v[5:8] offset:8192
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v5, v107 :: v_dual_mov_b32 v4, v108
.LBB0_7:                                ; %Flow349
	.loc	1 195 26 is_stmt 1              ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v3, s5, v40
	s_mul_i32 s3, s48, s5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s1, s0, 0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_lshl_b32 s0, s5, 4
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_add_nc_u32_e32 v5, 0, v5
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v2, 0x1f0, v0
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v1, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_add3_u32 v3, s3, s1, v3
	v_add_nc_u32_e32 v105, 0, v105
	v_dual_mov_b32 v11, 0 :: v_dual_add_nc_u32 v104, 0, v104
	v_dual_mov_b32 v12, 0 :: v_dual_add_nc_u32 v103, 0, v103
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_lshlrev_b32_e32 v6, 1, v3
	v_add_lshl_u32 v3, v3, s0, 1
	v_dual_mov_b32 v13, 0 :: v_dual_add_nc_u32 v102, 0, v102
	v_dual_mov_b32 v14, 0 :: v_dual_add_nc_u32 v101, 0, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	s_clause 0x1
	buffer_load_u16 v7, v6, s[28:31], 0 offen
	buffer_load_u16 v8, v3, s[28:31], 0 offen
	.loc	1 214 26 is_stmt 1              ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v139, v106 offset:16512
	ds_load_u8_d16 v140, v106 offset:16544
	ds_load_u8_d16 v141, v106 offset:16576
	ds_load_u8_d16 v142, v106 offset:16608
	ds_load_u8_d16 v27, v106 offset:16592
	ds_load_u8_d16 v31, v106 offset:16560
	ds_load_u8_d16 v36, v106 offset:16528
	ds_load_u8_d16 v23, v106 offset:16496
	ds_load_u8_d16 v123, v106 offset:16640
	ds_load_u8_d16 v124, v106 offset:16672
	ds_load_u8_d16 v125, v106 offset:16704
	ds_load_u8_d16 v126, v106 offset:16736
	ds_load_u8_d16 v3, v106 offset:16720
	ds_load_u8_d16 v17, v106 offset:16688
	ds_load_u8_d16 v20, v106 offset:16656
	ds_load_u8_d16 v109, v106 offset:16624
	ds_load_u8_d16 v131, v106 offset:16768
	ds_load_u8_d16 v132, v106 offset:16800
	ds_load_u8_d16 v133, v106 offset:16832
	ds_load_u8_d16 v134, v106 offset:16864
	ds_load_u8_d16 v28, v106 offset:16848
	ds_load_u8_d16 v32, v106 offset:16816
	ds_load_u8_d16 v37, v106 offset:16784
	ds_load_u8_d16 v24, v106 offset:16752
	ds_load_u8_d16 v127, v106 offset:16896
	ds_load_u8_d16 v128, v106 offset:16928
	ds_load_u8_d16 v129, v106 offset:16960
	ds_load_u8_d16 v130, v106 offset:16992
	ds_load_u8_d16 v15, v106 offset:16976
	ds_load_u8_d16 v18, v106 offset:16944
	ds_load_u8_d16 v21, v106 offset:16912
	ds_load_u8_d16 v110, v106 offset:16880
	ds_load_u8_d16 v135, v106 offset:17024
	ds_load_u8_d16 v136, v106 offset:17056
	ds_load_u8_d16 v137, v106 offset:17088
	ds_load_u8_d16 v138, v106 offset:17120
	ds_load_u8_d16 v29, v106 offset:17104
	ds_load_u8_d16 v34, v106 offset:17072
	ds_load_u8_d16 v107, v106 offset:17040
	ds_load_u8_d16 v25, v106 offset:17008
	ds_load_u8_d16 v114, v106 offset:17152
	ds_load_u8_d16 v115, v106 offset:17184
	ds_load_u8_d16 v112, v106 offset:17216
	ds_load_u8_d16 v113, v106 offset:17248
	ds_load_u8_d16 v16, v106 offset:17232
	ds_load_u8_d16 v19, v106 offset:17200
	ds_load_u8_d16 v22, v106 offset:17168
	ds_load_u8_d16 v111, v106 offset:17136
	ds_load_u8_d16 v119, v106 offset:17280
	ds_load_u8_d16 v120, v106 offset:17312
	ds_load_u8_d16 v121, v106 offset:17344
	ds_load_u8_d16 v122, v106 offset:17376
	ds_load_u8_d16 v30, v106 offset:17360
	ds_load_u8_d16 v35, v106 offset:17328
	ds_load_u8_d16 v108, v106 offset:17296
	ds_load_u8_d16 v26, v106 offset:17264
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_cndmask_b32_e64 v6, 0, 1, s2
	v_add_nc_u32_e32 v100, 0, v100
	v_add_nc_u32_e32 v99, 0, v99
	v_add_nc_u32_e32 v98, 0, v98
	v_add_nc_u32_e32 v97, 0, v97
	v_cmp_ne_u32_e64 s0, 1, v6
	v_mov_b32_e32 v6, 0
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	ds_load_u8_d16 v147, v106 offset:16384
	ds_load_u8_d16 v116, v106 offset:16400
	ds_load_u8_d16 v148, v106 offset:16416
	ds_load_u8_d16 v117, v106 offset:16432
	ds_load_u8_d16 v149, v106 offset:16448
	ds_load_u8_d16 v150, v106 offset:16480
	ds_load_u8_d16 v118, v106 offset:16464
	ds_load_u8_d16 v106, v5 offset:16384
	v_add_nc_u32_e32 v96, 0, v96
	v_add_nc_u32_e32 v95, 0, v95
	v_add_nc_u32_e32 v94, 0, v94
	v_add_nc_u32_e32 v93, 0, v93
	v_add_nc_u32_e32 v92, 0, v92
	v_add_nc_u32_e32 v91, 0, v91
	v_add_nc_u32_e32 v90, 0, v90
	v_add_nc_u32_e32 v89, 0, v89
	v_add_nc_u32_e32 v88, 0, v88
	v_add_nc_u32_e32 v145, 0, v87
	v_add_nc_u32_e32 v146, 0, v86
	v_add_nc_u32_e32 v85, 0, v85
	v_add_nc_u32_e32 v86, 0, v84
	v_add_nc_u32_e32 v143, 0, v83
	v_add_nc_u32_e32 v144, 0, v82
	v_add_nc_u32_e32 v155, 0, v81
	v_add_nc_u32_e32 v151, 0, v80
	v_add_nc_u32_e32 v157, 0, v79
	v_add_nc_u32_e32 v158, 0, v78
	v_add_nc_u32_e32 v153, 0, v77
	v_add_nc_u32_e32 v154, 0, v76
	v_add_nc_u32_e32 v152, 0, v75
	v_dual_mov_b32 v5, 0 :: v_dual_add_nc_u32 v156, 0, v4
	v_mov_b32_e32 v4, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v87, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	ds_load_u8 v4, v157
	ds_load_u8 v5, v158
	ds_load_u8 v6, v155
	ds_load_u8 v10, v151
	ds_load_u8 v11, v156
	ds_load_u8 v12, v153
	ds_load_u8 v13, v152
	ds_load_u8 v14, v154
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v75, v139, v140, 0xc0c0004
	v_perm_b32 v76, v141, v142, 0xc0c0004
	ds_load_u8 v79, v145
	ds_load_u8 v80, v146
	ds_load_u8 v81, v89
	ds_load_u8 v82, v143
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v77, v147, v148, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v78, v149, v150, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v166, s11 :: v_dual_mov_b32 v165, s10
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v83, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v6, v10, v6, 0xc0c0004
	v_lshl_or_b32 v5, v76, 16, v75
	v_lshl_or_b32 v4, v78, 16, v77
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v10, v11, v13, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v12, v14, v12, 0xc0c0004
	v_lshl_or_b32 v11, v6, 16, v83
	ds_load_u8 v6, v144
	ds_load_u8 v13, v85
	ds_load_u8 v14, v86
	ds_load_u8 v75, v88
	ds_load_u8 v83, v95
	ds_load_u8 v84, v94
	ds_load_u8 v87, v97
	ds_load_u8 v167, v91
	ds_load_u8 v168, v90
	ds_load_u8 v169, v93
	ds_load_u8 v170, v92
	ds_load_u8 v171, v96
	v_dual_mov_b32 v164, s9 :: v_dual_mov_b32 v163, s8
	v_lshl_or_b32 v10, v12, 16, v10
	v_dual_mov_b32 v162, s7 :: v_dual_mov_b32 v161, s6
	v_dual_mov_b32 v160, s5 :: v_dual_mov_b32 v159, s4
	v_perm_b32 v173, v123, v124, 0xc0c0004
	v_perm_b32 v174, v125, v126, 0xc0c0004
	v_perm_b32 v12, v131, v132, 0xc0c0004
	v_perm_b32 v172, v133, v134, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v175, v80, v79, 0xc0c0004
	v_perm_b32 v177, v3, v24, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	v_perm_b32 v6, v6, v82, 0xc0c0004
	v_perm_b32 v14, v14, v13, 0xc0c0004
	v_perm_b32 v176, v75, v81, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[75:82], v[10:11], v[4:5], v[159:166] neg_lo:[1,1,0]
	v_lshl_or_b32 v4, v174, 16, v173
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v171, v87, 0xc0c0004
	v_perm_b32 v87, v168, v167, 0xc0c0004
	v_perm_b32 v167, v170, v169, 0xc0c0004
	ds_load_u8 v168, v103
	ds_load_u8 v169, v102
	ds_load_u8 v170, v105
	ds_load_u8 v171, v98
	ds_load_u8 v174, v104
	v_lshl_or_b32 v5, v172, 16, v12
	v_lshl_or_b32 v13, v176, 16, v175
	v_lshl_or_b32 v12, v14, 16, v6
	v_perm_b32 v6, v135, v136, 0xc0c0004
	v_perm_b32 v14, v137, v138, 0xc0c0004
	v_perm_b32 v172, v127, v128, 0xc0c0004
	v_perm_b32 v173, v129, v130, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[75:82], v[12:13], v[4:5], v[75:82] neg_lo:[1,1,0]
	v_lshl_or_b32 v84, v84, 16, v83
	v_lshl_or_b32 v5, v14, 16, v6
	v_lshl_or_b32 v83, v167, 16, v87
	v_lshl_or_b32 v4, v173, 16, v172
	v_perm_b32 v6, v119, v120, 0xc0c0004
	v_perm_b32 v14, v121, v122, 0xc0c0004
	ds_load_u8 v87, v101
	ds_load_u8 v172, v100
	ds_load_u8 v173, v99
	v_perm_b32 v167, v116, v117, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[75:82], v[83:84], v[4:5], v[75:82] neg_lo:[1,1,0]
	v_perm_b32 v175, v118, v23, 0xc0c0004
	v_lshl_or_b32 v5, v14, 16, v6
	v_perm_b32 v6, v36, v31, 0xc0c0004
	v_perm_b32 v14, v27, v109, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v169, v169, v168, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v170, v174, v170, 0xc0c0004
	v_lshl_or_b32 v167, v175, 16, v167
	v_perm_b32 v174, v28, v110, 0xc0c0004
	v_lshl_or_b32 v168, v14, 16, v6
	v_perm_b32 v6, v37, v32, 0xc0c0004
	v_perm_b32 v175, v20, v17, 0xc0c0004
	v_lshl_or_b32 v14, v170, 16, v169
	v_perm_b32 v169, v15, v25, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[159:166], v[10:11], v[167:168], v[159:166] neg_lo:[1,1,0]
	v_lshl_or_b32 v11, v174, 16, v6
	v_lshl_or_b32 v10, v177, 16, v175
	v_perm_b32 v6, v107, v34, 0xc0c0004
	v_perm_b32 v167, v29, v111, 0xc0c0004
	v_perm_b32 v168, v21, v18, 0xc0c0004
	v_perm_b32 v4, v114, v115, 0xc0c0004
	v_perm_b32 v176, v112, v113, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v173, 0xc0c0004
	v_perm_b32 v87, v172, v87, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[159:166], v[12:13], v[10:11], v[159:166] neg_lo:[1,1,0]
	v_lshl_or_b32 v11, v167, 16, v6
	v_lshl_or_b32 v10, v169, 16, v168
	v_perm_b32 v6, v108, v35, 0xc0c0004
	v_perm_b32 v12, v30, v106, 0xc0c0004
	v_perm_b32 v167, v22, v19, 0xc0c0004
	v_perm_b32 v168, v16, v26, 0xc0c0004
	v_lshl_or_b32 v4, v176, 16, v4
	v_lshl_or_b32 v13, v87, 16, v170
	v_wmma_i32_16x16x16_iu4 v[159:166], v[83:84], v[10:11], v[159:166] neg_lo:[1,1,0]
	v_lshl_or_b32 v11, v12, 16, v6
	v_lshl_or_b32 v10, v168, 16, v167
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[75:82], v[13:14], v[4:5], v[75:82] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[13:14], v[10:11], v[159:166] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v11, v75
	v_cvt_f32_i32_e32 v12, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v13, v77
	v_cvt_f32_i32_e32 v14, v78
	v_cvt_f32_i32_e32 v10, v79
	v_cvt_f32_i32_e32 v6, v80
	v_cvt_f32_i32_e32 v5, v81
	v_cvt_f32_i32_e32 v4, v82
	v_cvt_f32_i32_e32 v78, v159
	v_cvt_f32_i32_e32 v79, v160
	v_cvt_f32_i32_e32 v80, v161
	v_cvt_f32_i32_e32 v81, v162
	v_cvt_f32_i32_e32 v82, v163
	v_cvt_f32_i32_e32 v83, v164
	v_cvt_f32_i32_e32 v84, v165
	v_cvt_f32_i32_e32 v87, v166
.LBB0_9:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v170, 0
	v_mov_b32_e32 v169, 0
	.loc	1 229 36 is_stmt 1              ; generate_amdgcn.py:229:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	ds_load_u8 v9, v157 offset:8192
	ds_load_u8 v75, v158 offset:8192
	ds_load_u8 v76, v155 offset:8192
	ds_load_u8 v77, v156 offset:8192
	ds_load_u8 v153, v153 offset:8192
	ds_load_u8 v154, v154 offset:8192
	ds_load_u8 v151, v151 offset:8192
	ds_load_u8 v152, v152 offset:8192
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v139, v139, v140, 0xc0c0004
	v_perm_b32 v140, v141, v142, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v141, v147, v148, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v142, v149, v150, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_perm_b32 v123, v123, v124, 0xc0c0004
	v_perm_b32 v124, v125, v126, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v9, v75, v9, 0xc0c0004
	v_lshl_or_b32 v75, v142, 16, v141
	v_perm_b32 v131, v131, v132, 0xc0c0004
	v_perm_b32 v132, v133, v134, 0xc0c0004
	v_perm_b32 v31, v36, v31, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v147, v151, v76, 0xc0c0004
	v_lshl_or_b32 v76, v140, 16, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v77, v152, 0xc0c0004
	v_perm_b32 v139, v154, v153, 0xc0c0004
	v_perm_b32 v27, v27, v109, 0xc0c0004
	v_lshl_or_b32 v148, v147, 16, v9
	ds_load_u8 v9, v145 offset:8192
	ds_load_u8 v149, v146 offset:8192
	ds_load_u8 v89, v89 offset:8192
	ds_load_u8 v150, v143 offset:8192
	ds_load_u8 v151, v144 offset:8192
	ds_load_u8 v85, v85 offset:8192
	ds_load_u8 v86, v86 offset:8192
	ds_load_u8 v88, v88 offset:8192
	v_perm_b32 v36, v116, v117, 0xc0c0004
	v_lshl_or_b32 v147, v139, 16, v77
	ds_load_u8 v77, v95 offset:8192
	ds_load_u8 v152, v94 offset:8192
	ds_load_u8 v97, v97 offset:8192
	ds_load_u8 v153, v91 offset:8192
	ds_load_u8 v154, v90 offset:8192
	ds_load_u8 v155, v93 offset:8192
	ds_load_u8 v156, v92 offset:8192
	ds_load_u8 v96, v96 offset:8192
	v_dual_mov_b32 v146, s11 :: v_dual_mov_b32 v145, s10
	v_dual_mov_b32 v144, s9 :: v_dual_mov_b32 v143, s8
	v_dual_mov_b32 v142, s7 :: v_dual_mov_b32 v141, s6
	v_dual_mov_b32 v140, s5 :: v_dual_mov_b32 v139, s4
	v_perm_b32 v23, v118, v23, 0xc0c0004
	v_perm_b32 v20, v20, v17, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v9, v149, v9, 0xc0c0004
	v_perm_b32 v3, v3, v24, 0xc0c0004
	v_perm_b32 v18, v21, v18, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v126, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v77, v152, v77, 0xc0c0004
	v_perm_b32 v85, v86, v85, 0xc0c0004
	v_perm_b32 v125, v88, v89, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[88:95], v[147:148], v[75:76], v[139:146] neg_lo:[1,1,0]
	v_lshl_or_b32 v75, v124, 16, v123
	v_perm_b32 v124, v127, v128, 0xc0c0004
	ds_load_u8 v103, v103 offset:8192
	ds_load_u8 v102, v102 offset:8192
	ds_load_u8 v105, v105 offset:8192
	ds_load_u8 v128, v98 offset:8192
	ds_load_u8 v101, v101 offset:8192
	ds_load_u8 v100, v100 offset:8192
	ds_load_u8 v98, v104 offset:8192
	v_lshl_or_b32 v76, v132, 16, v131
	v_lshl_or_b32 v86, v125, 16, v9
	v_lshl_or_b32 v85, v85, 16, v126
	v_perm_b32 v9, v135, v136, 0xc0c0004
	v_perm_b32 v123, v137, v138, 0xc0c0004
	v_perm_b32 v125, v129, v130, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v96, v96, v97, 0xc0c0004
	v_perm_b32 v126, v154, v153, 0xc0c0004
	v_perm_b32 v127, v156, v155, 0xc0c0004
	ds_load_u8 v104, v99 offset:8192
	v_wmma_i32_16x16x16_iu4 v[88:95], v[85:86], v[75:76], v[88:95] neg_lo:[1,1,0]
	v_lshl_or_b32 v76, v123, 16, v9
	v_lshl_or_b32 v75, v125, 16, v124
	v_lshl_or_b32 v97, v96, 16, v77
	v_lshl_or_b32 v96, v127, 16, v126
	v_perm_b32 v9, v119, v120, 0xc0c0004
	v_perm_b32 v77, v121, v122, 0xc0c0004
	v_lshl_or_b32 v99, v27, 16, v31
	v_perm_b32 v27, v28, v110, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[88:95], v[96:97], v[75:76], v[88:95] neg_lo:[1,1,0]
	v_perm_b32 v75, v112, v113, 0xc0c0004
	v_lshl_or_b32 v76, v77, 16, v9
	v_perm_b32 v9, v114, v115, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v77, v102, v103, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v102, v98, v105, 0xc0c0004
	v_lshl_or_b32 v98, v23, 16, v36
	v_perm_b32 v23, v37, v32, 0xc0c0004
	v_lshl_or_b32 v75, v75, 16, v9
	v_perm_b32 v9, v29, v111, 0xc0c0004
	v_perm_b32 v15, v15, v25, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[139:146], v[147:148], v[98:99], v[139:146] neg_lo:[1,1,0]
	v_lshl_or_b32 v24, v27, 16, v23
	v_lshl_or_b32 v23, v3, 16, v20
	v_perm_b32 v3, v107, v34, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v128, v104, 0xc0c0004
	v_perm_b32 v27, v100, v101, 0xc0c0004
	v_lshl_or_b32 v20, v15, 16, v18
	v_wmma_i32_16x16x16_iu4 v[139:146], v[85:86], v[23:24], v[139:146] neg_lo:[1,1,0]
	v_lshl_or_b32 v21, v9, 16, v3
	v_perm_b32 v3, v108, v35, 0xc0c0004
	v_perm_b32 v9, v30, v106, 0xc0c0004
	v_perm_b32 v15, v22, v19, 0xc0c0004
	v_perm_b32 v18, v16, v26, 0xc0c0004
	v_lshl_or_b32 v17, v102, 16, v77
	v_lshl_or_b32 v16, v27, 16, v25
	v_wmma_i32_16x16x16_iu4 v[139:146], v[96:97], v[20:21], v[139:146] neg_lo:[1,1,0]
	v_lshl_or_b32 v19, v9, 16, v3
	v_lshl_or_b32 v18, v18, 16, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[16:17], v[75:76], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[16:17], v[18:19], v[139:146] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v159, v88
	v_cvt_f32_i32_e32 v160, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v161, v90
	v_cvt_f32_i32_e32 v162, v91
	v_cvt_f32_i32_e32 v9, v92
	v_cvt_f32_i32_e32 v75, v93
	v_cvt_f32_i32_e32 v76, v94
	v_cvt_f32_i32_e32 v77, v95
	v_cvt_f32_i32_e32 v163, v139
	v_cvt_f32_i32_e32 v164, v140
	v_cvt_f32_i32_e32 v165, v141
	v_cvt_f32_i32_e32 v166, v142
	v_cvt_f32_i32_e32 v167, v143
	v_cvt_f32_i32_e32 v168, v144
	v_cvt_f32_i32_e32 v169, v145
	v_cvt_f32_i32_e32 v170, v146
.LBB0_11:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	s_waitcnt lgkmcnt(51)
	v_or_b32_e32 v3, v74, v73
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s1, s1, s49
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s17, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s50, s1
	s_mov_b32 s19, 0x31027000
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	s_waitcnt lgkmcnt(35)
	v_or_b32_e32 v15, 2, v3
	s_waitcnt lgkmcnt(19)
	v_or_b32_e32 v16, 4, v3
	v_or_b32_e32 v17, 6, v3
	v_or_b32_e32 v18, 8, v3
	s_waitcnt lgkmcnt(18)
	v_or_b32_e32 v19, 10, v3
	v_or_b32_e32 v20, 12, v3
	v_or_b32_e32 v21, 14, v3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt lgkmcnt(17)
	v_add_lshl_u32 v22, s0, v3, 1
	v_add_lshl_u32 v23, s0, v15, 1
	v_add_lshl_u32 v24, s0, v16, 1
	.loc	1 235 35                        ; generate_amdgcn.py:235:35
	s_add_i32 s1, s0, s35
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v25, s0, v17, 1
	s_waitcnt lgkmcnt(8)
	v_add_lshl_u32 v26, s0, v18, 1
	v_add_lshl_u32 v27, s0, v19, 1
	v_add_lshl_u32 v28, s0, v20, 1
	v_add_lshl_u32 v29, s0, v21, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v3, s1, v3, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v15, s1, v15, 1
	v_add_lshl_u32 v16, s1, v16, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	s_mov_b32 s18, 0x7ffffffe
	s_mov_b32 s16, s14
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x8
	buffer_load_u16 v22, v22, s[16:19], 0 offen
	buffer_load_u16 v23, v23, s[16:19], 0 offen
	buffer_load_u16 v24, v24, s[16:19], 0 offen
	buffer_load_u16 v25, v25, s[16:19], 0 offen
	buffer_load_u16 v26, v26, s[16:19], 0 offen
	buffer_load_u16 v27, v27, s[16:19], 0 offen
	buffer_load_u16 v28, v28, s[16:19], 0 offen
	buffer_load_u16 v29, v29, s[16:19], 0 offen
	buffer_load_u16 v30, v3, s[16:19], 0 offen
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v3, 0x80000000, v15, s2
	v_cndmask_b32_e64 v15, 0x80000000, v16, s2
	v_add_lshl_u32 v16, s1, v17, 1
	v_add_lshl_u32 v17, s1, v18, 1
	v_add_lshl_u32 v18, s1, v19, 1
	v_add_lshl_u32 v19, s1, v20, 1
	v_add_lshl_u32 v20, s1, v21, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	s_clause 0x6
	buffer_load_u16 v21, v3, s[16:19], 0 offen
	buffer_load_u16 v15, v15, s[16:19], 0 offen
	buffer_load_u16 v16, v16, s[16:19], 0 offen
	buffer_load_u16 v17, v17, s[16:19], 0 offen
	buffer_load_u16 v18, v18, s[16:19], 0 offen
	buffer_load_u16 v19, v19, s[16:19], 0 offen
	buffer_load_u16 v20, v20, s[16:19], 0 offen
.Ltmp22:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v3.l, 0
.Ltmp23:
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v3.h, v8.l
	v_mov_b16_e32 v7.h, v7.l
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp25:
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v7.l, v3.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v36, v83, v3
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v83, v169, v3
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v8, v78, v3
	v_mul_f32_e32 v31, v79, v3
	v_mul_f32_e32 v89, v10, v7
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v10, v75, v7
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v35, v82, v3
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v74, v163, v3
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v11, v11, v7
	v_mul_f32_e32 v34, v81, v3
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v81, v167, v3
	v_mul_f32_e32 v9, v9, v7
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v37, v84, v3
	v_mul_f32_e32 v32, v80, v3
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v86, v160, v7
	v_mul_f32_e32 v88, v162, v7
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v73, v87, v3
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v79, v165, v3
	v_mul_f32_e32 v85, v159, v7
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v5, v5, v7
.Ltmp26:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s17, s25, 0xffff
	s_mov_b32 s16, s24
.Ltmp27:
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v6, v6, v7
	v_mul_f32_e32 v4, v4, v7
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v22, 16, v22
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v24, 16, v24
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v25, 16, v25
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v8, v8, v22, v72
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v27, 16, v27
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v32, v32, v24, v67
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v72, v72, v8, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v35, v35, v26, v65
	v_fma_f32 v73, v73, v29, v57
	v_fma_f32 v4, v4, v29, v41
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v34, v34, v25, v66
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v16, 16, v16
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v17, 16, v17
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v36, v36, v27, v64
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v11, v11, v22, v71
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v22, v74, v30, v70
	v_fma_f32 v10, v10, v18, v48
	v_fma_f32 v81, v81, v17, v59
	v_fma_f32 v9, v9, v17, v45
	v_fma_f32 v30, v85, v30, v69
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v17, v70, v22, s2
	v_cndmask_b32_e64 v48, v48, v10, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v14, v14, v7
	v_mul_f32_e32 v13, v13, v7
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v45, v45, v9, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v22, v67, v32, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v8, v14, v25, v52
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v25, v64, v36, s2
	v_cndmask_b32_e64 v36, v59, v81, s2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v80, v166, v3
	.loc	1 236 17 is_stmt 0              ; generate_amdgcn.py:236:17
	v_fma_f32 v14, v88, v16, v49
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v52, v52, v8, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v8, 0xbfb8aa3b, v17
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v13, v13, v24, v53
	v_fma_f32 v37, v37, v28, v63
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v49, v14, s2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v84, v170, v3
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v53, v53, v13, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v13, 0xbfb8aa3b, v36
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v80, v80, v16, v60
	v_fma_f32 v16, v86, v21, v51
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v75, v76, v7
	v_mul_f32_e32 v76, v77, v7
	.loc	1 236 17 is_stmt 0              ; generate_amdgcn.py:236:17
	v_fma_f32 v77, v83, v19, v56
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v16, v51, v16, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v51, 0xbfb8aa3b, v14
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v74, v84, v20, v55
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v56, v56, v77, s2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v78, v164, v3
	.loc	1 236 17 is_stmt 0              ; generate_amdgcn.py:236:17
	v_fma_f32 v79, v79, v15, v61
	.loc	1 238 44 is_stmt 1              ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v17
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v55, v55, v74, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v51
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v78, v78, v21, v62
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v21, v71, v11, s2
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v11, v76, v20, v46
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v8, v8
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v24, v65, v35, s2
	v_cndmask_b32_e64 v32, v62, v78, s2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v87, v161, v7
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v46, v46, v11, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v12, v12, v7
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v62, 0xbfb8aa3b, v45
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v35, v60, v80, s2
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v15, v87, v15, v50
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v59, 0xbfb8aa3b, v46
	v_mul_f32_e32 v11, 0xbfb8aa3b, v56
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v62
	v_cndmask_b32_e64 v51, 0, 0x42800000, s12
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v50, v15, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v50, 0xbfb8aa3b, v32
	v_mul_f32_e32 v10, 0xbfb8aa3b, v55
	v_cndmask_b32_e64 v62, 0, 0x42800000, s13
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v11
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v14
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v50
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v10
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v45
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v19, v75, v19, v47
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v13
	v_cndmask_b32_e64 v50, 0, 0x42800000, s3
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v11, 0, 0x42800000, s8
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v19, v47, v19, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v10, 0, 0x42800000, s9
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v32
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v31, v31, v23, v68
	v_fma_f32 v12, v12, v23, v54
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v23, v66, v34, s2
	v_cndmask_b32_e64 v34, v61, v79, s2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v82, v168, v3 :: v_dual_mul_f32 v61, 0xbfb8aa3b, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v54, v54, v12, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v59
	v_mul_f32_e32 v49, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v82, v82, v18, v58
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v18, v69, v30, s2
	v_cndmask_b32_e64 v30, v63, v37, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v49
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v37, v58, v82, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v9, 0xbfb8aa3b, v18
	v_exp_f32_e32 v62, v62
	v_ldexp_f32 v8, v8, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v47, 0xbfb8aa3b, v35 :: v_dual_mul_f32 v12, 0xbfb8aa3b, v37
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v9
	v_cndmask_b32_e64 v49, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v47
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v12
	v_cndmask_b32_e64 v9, 0, 0x42800000, s1
	v_cndmask_b32_e64 v13, 0, 0x42800000, s6
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v61
	v_cndmask_b32_e64 v47, 0, 0x42800000, s5
	v_cndmask_b32_e64 v12, 0, 0x42800000, s7
	v_cndmask_b32_e64 v59, 0, 0x42800000, s0
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v18
	v_dual_fmac_f32 v11, 0xbfb8aa3b, v56 :: v_dual_fmac_f32 v10, 0xbfb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v37
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s13
	v_cndmask_b32_e64 v61, 0, 0x42800000, s14
	v_dual_mul_f32 v60, 0xbfb8aa3b, v19 :: v_dual_fmac_f32 v49, 0xbfb8aa3b, v34
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v36
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v46
	v_exp_f32_e32 v9, v9
	v_exp_f32_e32 v12, v12
	v_exp_f32_e32 v11, v11
	v_exp_f32_e32 v10, v10
	v_ldexp_f32 v62, v62, v76
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v35
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s9
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v48
	v_cmp_gt_f32_e64 s15, 0xc2fc0000, v60
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v13, v13
	v_exp_f32_e32 v51, v51
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v68, v31, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v60, 0, 0x42800000, s15
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s12
	v_ldexp_f32 v9, v9, v64
	v_ldexp_f32 v12, v12, v69
	v_ldexp_f32 v11, v11, v70
	v_ldexp_f32 v10, v10, v71
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v60, 0xbfb8aa3b, v19 :: v_dual_add_f32 v63, 1.0, v9
	v_ldexp_f32 v50, v50, v65
	v_ldexp_f32 v49, v49, v66
	v_ldexp_f32 v47, v47, v67
	v_ldexp_f32 v13, v13, v68
	v_ldexp_f32 v51, v51, v75
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_dual_add_f32 v9, 1.0, v10 :: v_dual_add_f32 v10, 1.0, v11
	v_add_f32_e32 v11, 1.0, v12
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v31, v57, v73, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v57, 0xbfb8aa3b, v15 :: v_dual_add_f32 v12, 1.0, v13
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v13, 1.0, v47
	v_add_f32_e32 v47, 1.0, v49
	v_dual_add_f32 v49, 1.0, v50 :: v_dual_add_f32 v50, 1.0, v51
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v76, null, v11, v11, v37
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v57
	v_mul_f32_e32 v58, 0xbfb8aa3b, v16
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v81, null, v9, v9, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v96, v76
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v57, 0, 0x42800000, s11
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v58
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s11
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v98, v81
	v_div_scale_f32 v65, null, v63, v63, v18
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v15
	v_cndmask_b32_e64 v58, 0, 0x42800000, s10
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s10
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v108, -v76, v96, 1.0
	v_rcp_f32_e32 v91, v65
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v57, v57
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v16
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v110, -v81, v98, 1.0
	v_fmac_f32_e32 v96, v108, v96
	v_div_scale_f32 v67, null, v49, v49, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v58, v58
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v98, v110, v98
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v61, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v92, v67
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v57, v57, v74
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v74, null, v12, v12, v36
	v_div_scale_f32 v87, null, v50, v50, v14
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v51, 1.0, v57
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v58, v58, v73
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v79, null, v10, v10, v56
	v_fma_f32 v104, -v67, v92, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v85, null, v51, v51, v15
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s14
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v95, v74
	v_fmac_f32_e32 v92, v104, v92
	v_div_scale_f32 v71, null, v13, v13, v35
	v_rcp_f32_e32 v100, v85
	v_div_scale_f32 v68, s3, v32, v49, v32
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v94, v71
	v_rcp_f32_e32 v101, v87
	v_fma_f32 v103, -v65, v91, 1.0
	v_rcp_f32_e32 v97, v79
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v61, v61, v77
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v64, vcc_lo, v17, v8, v17
	v_fma_f32 v112, -v85, v100, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v57, 1.0, v58
	v_add_f32_e32 v58, 1.0, v62
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v106, -v71, v94, 1.0
	v_div_scale_f32 v62, null, v8, v8, v17
	v_fmac_f32_e32 v100, v112, v100
	v_div_scale_f32 v83, null, v57, v57, v16
	v_fmac_f32_e32 v94, v106, v94
	v_div_scale_f32 v69, null, v47, v47, v34
	v_rcp_f32_e32 v90, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v99, v83
	v_div_scale_f32 v77, s7, v37, v11, v37
	v_rcp_f32_e32 v93, v69
	v_div_scale_f32 v66, s1, v18, v63, v18
	v_mul_f32_e32 v104, v68, v92
	v_div_scale_f32 v70, s4, v34, v47, v34
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v102, -v62, v90, 1.0
	v_fma_f32 v111, -v83, v99, 1.0
	v_fma_f32 v107, -v74, v95, 1.0
	v_mul_f32_e32 v108, v77, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v105, -v69, v93, 1.0
	v_dual_fmac_f32 v90, v102, v90 :: v_dual_fmac_f32 v91, v103, v91
	v_fmac_f32_e32 v99, v111, v99
	v_div_scale_f32 v73, s5, v35, v13, v35
	v_dual_fmac_f32 v93, v105, v93 :: v_dual_mul_f32 v102, v64, v90
	v_div_scale_f32 v86, s11, v15, v51, v15
	v_fma_f32 v113, -v87, v101, 1.0
	v_fma_f32 v116, -v67, v104, v68
	v_mul_f32_e32 v103, v66, v91
	v_fma_f32 v109, -v79, v97, 1.0
	v_div_scale_f32 v75, s6, v36, v12, v36
	v_dual_fmac_f32 v95, v107, v95 :: v_dual_mul_f32 v106, v73, v94
	v_fma_f32 v114, -v62, v102, v64
	v_fma_f32 v120, -v76, v108, v77
	v_mul_f32_e32 v105, v70, v93
	v_dual_fmac_f32 v101, v113, v101 :: v_dual_mul_f32 v112, v86, v100
	v_fmac_f32_e32 v104, v116, v92
	v_fma_f32 v115, -v65, v103, v66
	v_div_scale_f32 v80, s8, v56, v10, v56
	v_div_scale_f32 v82, s9, v55, v9, v55
	v_fmac_f32_e32 v97, v109, v97
	v_dual_mul_f32 v107, v75, v95 :: v_dual_fmac_f32 v102, v114, v90
	v_fmac_f32_e32 v108, v120, v96
	v_fma_f32 v117, -v69, v105, v70
	v_fma_f32 v118, -v71, v106, v73
	v_fma_f32 v124, -v85, v112, v86
	v_dual_fmac_f32 v103, v115, v91 :: v_dual_mul_f32 v110, v82, v98
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v109, v80, v97 :: v_dual_fmac_f32 v106, v118, v94
	v_div_scale_f32 v84, s10, v16, v57, v16
	v_fma_f32 v119, -v74, v107, v75
	v_fmac_f32_e32 v105, v117, v93
	v_fma_f32 v62, -v62, v102, v64
	v_fmac_f32_e32 v112, v124, v100
	v_fma_f32 v64, -v65, v103, v66
	v_fma_f32 v65, -v67, v104, v68
	v_fma_f32 v121, -v79, v109, v80
	v_fma_f32 v122, -v81, v110, v82
	v_mul_f32_e32 v111, v84, v99
	v_fmac_f32_e32 v107, v119, v95
	v_fma_f32 v66, -v69, v105, v70
	v_div_fmas_f32 v62, v62, v90, v102
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v67, -v71, v106, v73
	v_div_fmas_f32 v65, v65, v92, v104
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v109, v121, v97
	v_div_scale_f32 v88, s12, v14, v50, v14
	v_fmac_f32_e32 v110, v122, v98
	v_fma_f32 v123, -v83, v111, v84
	v_fma_f32 v68, -v74, v107, v75
	v_div_fixup_f32 v17, v62, v8, v17
	v_div_fmas_f32 v8, v66, v93, v105
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v69, -v76, v108, v77
	v_div_fmas_f32 v62, v67, v94, v106
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v70, -v79, v109, v80
	v_fmac_f32_e32 v111, v123, v99
	v_div_fixup_f32 v32, v65, v49, v32
	v_div_fmas_f32 v49, v68, v95, v107
	v_div_fixup_f32 v8, v8, v47, v34
	v_mul_f32_e32 v113, v88, v101
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v71, -v81, v110, v82
	v_div_fmas_f32 v34, v69, v96, v108
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v73, -v83, v111, v84
	v_div_fmas_f32 v47, v70, v97, v109
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v35, v62, v13, v35
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v13, v20, v32
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v20, v49, v12, v36
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v12, v22, v8
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v125, -v87, v113, v88
	v_div_fmas_f32 v32, v71, v98, v110
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v74, -v85, v112, v86
	v_div_fmas_f32 v22, v64, v91, v103
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v113, v125, v101
	v_div_fixup_f32 v11, v34, v11, v37
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v8, v24, v20
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v20, v73, v99, v111
	s_mov_b32 vcc_lo, s11
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v60, v60
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v75, -v87, v113, v88
	v_div_fixup_f32 v10, v47, v10, v56
	v_div_fixup_f32 v24, v32, v9, v55
	v_div_fmas_f32 v32, v74, v100, v112
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v9, v25, v11
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v16, v20, v57, v16
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v20, v59
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v25, 1.0, v61
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	s_mov_b32 vcc_lo, s12
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, s15
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v34, v75, v101, v113
	v_div_fixup_f32 v15, v32, v51, v15
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v11, v30, v10
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v32, null, v25, v25, v48
	v_div_fixup_f32 v14, v34, v50, v14
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v10, v31, v24
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v24, v60, v78
	v_ldexp_f32 v20, v20, v30
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v34, v32
	v_div_fixup_f32 v18, v22, v63, v18
	v_div_scale_f32 v22, null, v58, v58, v45
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v24, 1.0, v24
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v14, v52, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v31, v22
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_fma_f32 v6, v6, v27, v43
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v30, null, v24, v24, v19
	v_div_scale_f32 v7, null, v20, v20, v46
	v_fma_f32 v47, -v32, v34, 1.0
	v_rcp_f32_e32 v37, v30
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v16, v54, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v49, v7
	v_fma_f32 v36, -v22, v31, 1.0
	v_fmac_f32_e32 v34, v47, v34
	v_div_scale_f32 v47, s0, v48, v25, v48
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v15, v53, v15
	v_mul_f32_e32 v18, v21, v18
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v6, v43, v6, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v52, v47, v34
	v_fma_f32 v29, -v30, v37, 1.0
	v_fma_f32 v51, -v7, v49, 1.0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v4, v41, v4, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v26, v89, v26, v44
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v27, -v32, v52, v47
	v_fmac_f32_e32 v31, v36, v31
	v_div_scale_f32 v36, vcc_lo, v45, v58, v45
	v_fmac_f32_e32 v37, v29, v37
	v_div_scale_f32 v29, s1, v19, v24, v19
	v_fmac_f32_e32 v49, v51, v49
	v_div_scale_f32 v51, s3, v46, v20, v46
	v_fmac_f32_e32 v52, v27, v34
	v_mul_f32_e32 v50, v36, v31
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v26, v44, v26, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v54, v51, v49
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v5, v5, v28, v42
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v17, v72, v17
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fma_f32 v28, -v22, v50, v36
	v_mul_f32_e32 v53, v29, v37
	v_fma_f32 v27, -v7, v54, v51
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v5, v42, v5, s2
	s_mov_b32 s7, 0x76543210
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v50, v28, v31
	v_fma_f32 v28, -v30, v53, v29
	v_fmac_f32_e32 v54, v27, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v22, -v22, v50, v36
	v_fmac_f32_e32 v53, v28, v37
	v_fma_f32 v28, -v32, v52, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v7, -v7, v54, v51
	v_div_fmas_f32 v22, v22, v31, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v27, -v30, v53, v29
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v28, v28, v34, v52
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v22, v58, v45
	v_div_fmas_f32 v27, v27, v37, v53
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v7, v7, v49, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v19, v27, v24, v19
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v22, v26, v22
.Ltmp28:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v26, 7, v40
.Ltmp29:
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v7, v7, v20, v46
	v_div_fixup_f32 v20, v28, v25, v48
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v19, v5, v19
	v_mul_f32_e32 v5, v23, v35
.Ltmp30:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v25, |v11|, |v10|
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp31:
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v21, v4, v7 :: v_dual_mul_f32 v20, v6, v20
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v4, |v18|, |v16|, |v15|
	v_max3_f32 v24, |v5|, |v8|, |v9|
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e64 v7, |v19|, |v21|
	v_max3_f32 v6, |v14|, |v22|, |v20|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v6, v4, v6, v7
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v4, 3, v40
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v23, |v17|, |v13|, |v12|
	v_max3_f32 v7, v23, v24, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v23, v6, s7, 0xfedcba98 op_sel:[1,0]
	v_lshrrev_b32_e32 v25, 2, v39
	v_permlanex16_b32 v24, v7, s7, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v23, v23, v23
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v27, v4, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v24, v24, v24
	v_max_f32_e32 v6, v6, v23
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_or_b32 v23, v39, 2, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v7, v7, v24
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v24, 0, v26, v27
	v_xad_u32 v23, v23, v25, 0
	ds_store_b64 v24, v[6:7]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[6:7], v23
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v23, v6 :: v_dual_mov_b32 v24, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v23, v23 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v24, v24 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v23, v23, v23 :: v_dual_max_f32 v24, v24, v24
	v_dual_max_f32 v6, v6, v23 :: v_dual_max_f32 v7, v7, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v23, v6 :: v_dual_mov_b32 v24, v7
	v_mov_b32_dpp v23, v23 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v24, v24 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v23, v23, v23 :: v_dual_max_f32 v24, v24, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v6, v6, v23 :: v_dual_max_f32 v7, v7, v24
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v23, v6 :: v_dual_mov_b32 v24, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v23, v23 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v24, v24 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v23, v23, v23 :: v_dual_max_f32 v24, v24, v24
	v_dual_max_f32 v6, v6, v23 :: v_dual_max_f32 v7, v7, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v23, v6 :: v_dual_mov_b32 v24, v7
	v_mov_b32_dpp v23, v23 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v24, v24 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v23, v23, v23 :: v_dual_max_f32 v24, v24, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_max_f32 v6, v6, v23 :: v_dual_max_f32 v7, v7, v24
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add_nc_u32_e32 v23, 0, v25
	v_add_nc_u32_e32 v24, 0, v4
	ds_store_b64 v23, v[6:7]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[6:7], v24
.Ltmp50:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v6, 0x2b8cbccc, v6 :: v_dual_max_f32 v7, 0x2b8cbccc, v7
	v_div_scale_f32 v23, null, 0x40e00000, 0x40e00000, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v24, null, 0x40e00000, 0x40e00000, v7
	v_div_scale_f32 v29, vcc_lo, v6, 0x40e00000, v6
	v_rcp_f32_e32 v25, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v26, v24
	v_fma_f32 v27, -v23, v25, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v24, v26, 1.0
	v_dual_fmac_f32 v25, v27, v25 :: v_dual_fmac_f32 v26, v28, v26
	v_div_scale_f32 v27, s0, v7, 0x40e00000, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v28, v29, v25
	v_mul_f32_e32 v30, v27, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v31, -v23, v28, v29
	v_fma_f32 v32, -v24, v30, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v28, v31, v25
	v_fmac_f32_e32 v30, v32, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v23, v28, v29
	v_fma_f32 v24, -v24, v30, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v23, v23, v25, v28
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v24, v24, v26, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v6, v23, 0x40e00000, v6
	v_div_fixup_f32 v7, v24, 0x40e00000, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_bfe_u32 v23, v6, 16, 1
	v_bfe_u32 v24, v7, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v23, v6, v23, 0x7fff
	v_add3_u32 v6, v7, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v7, 0xffff0000, v23
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v23.l, v23.h
	v_mov_b16_e32 v23.h, v3.l
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v31, null, v7, v7, v14
	v_div_scale_f32 v42, null, v7, v7, v21
	v_div_scale_f32 v25, null, v7, v7, v18
	v_div_scale_f32 v36, null, v7, v7, v20
	v_div_scale_f32 v40, null, v7, v7, v19
	v_rcp_f32_e32 v49, v31
	v_div_scale_f32 v27, null, v7, v7, v16
	v_div_scale_f32 v29, null, v7, v7, v15
	v_rcp_f32_e32 v53, v42
	v_rcp_f32_e32 v46, v25
	v_rcp_f32_e32 v51, v36
	v_rcp_f32_e32 v52, v40
	v_rcp_f32_e32 v47, v27
	v_rcp_f32_e32 v48, v29
	v_fma_f32 v59, -v31, v49, 1.0
	v_div_scale_f32 v34, null, v7, v7, v22
	v_div_scale_f32 v32, s2, v14, v7, v14
	v_fma_f32 v63, -v42, v53, 1.0
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v24, 0xffff0000, v6
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v56, -v25, v46, 1.0
	v_fma_f32 v61, -v36, v51, 1.0
	v_fma_f32 v62, -v40, v52, 1.0
	v_fmac_f32_e32 v49, v59, v49
	v_rcp_f32_e32 v50, v34
	v_fma_f32 v57, -v27, v47, 1.0
	v_fma_f32 v58, -v29, v48, 1.0
	v_fmac_f32_e32 v53, v63, v53
	v_div_scale_f32 v44, null, v24, v24, v17
	v_div_scale_f32 v26, vcc_lo, v18, v7, v18
	v_div_scale_f32 v37, s4, v20, v7, v20
	v_dual_fmac_f32 v51, v61, v51 :: v_dual_fmac_f32 v46, v56, v46
	v_dual_fmac_f32 v52, v62, v52 :: v_dual_mul_f32 v59, v32, v49
	v_div_scale_f32 v28, s0, v16, v7, v16
	v_fmac_f32_e32 v47, v57, v47
	v_div_scale_f32 v30, s1, v15, v7, v15
	v_div_scale_f32 v45, null, v24, v24, v13
	v_rcp_f32_e32 v54, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v48, v58, v48 :: v_dual_mul_f32 v57, v28, v47
	v_mul_f32_e32 v61, v37, v51
	v_fma_f32 v68, -v31, v59, v32
	v_mul_f32_e32 v56, v26, v46
	v_fma_f32 v60, -v34, v50, 1.0
	v_rcp_f32_e32 v55, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v58, v30, v48 :: v_dual_fmac_f32 v59, v68, v49
	v_fma_f32 v65, -v25, v56, v26
	v_div_scale_f32 v35, s3, v22, v7, v22
	v_div_scale_f32 v43, s6, v21, v7, v21
	v_fmac_f32_e32 v50, v60, v50
	v_fma_f32 v66, -v27, v57, v28
	v_fma_f32 v64, -v44, v54, 1.0
	v_fma_f32 v67, -v29, v58, v30
	v_dual_fmac_f32 v56, v65, v46 :: v_dual_mul_f32 v63, v43, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v60, v35, v50 :: v_dual_fmac_f32 v57, v66, v47
	v_fmac_f32_e32 v54, v64, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v58, v67, v48
	v_fma_f32 v25, -v25, v56, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v69, -v34, v60, v35
	v_fma_f32 v26, -v27, v57, v28
	v_div_scale_f32 v41, s5, v19, v7, v19
	v_fma_f32 v27, -v29, v58, v30
	v_div_fmas_f32 v25, v25, v46, v56
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v70, -v36, v61, v37
	v_fma_f32 v28, -v31, v59, v32
	v_div_fmas_f32 v26, v26, v47, v57
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v60, v69, v50
	v_div_fmas_f32 v27, v27, v48, v58
	s_mov_b32 vcc_lo, s2
	v_dual_mul_f32 v62, v41, v52 :: v_dual_fmac_f32 v61, v70, v51
	v_div_fixup_f32 v18, v25, v7, v18
	v_div_fmas_f32 v25, v28, v49, v59
	v_fma_f32 v29, -v34, v60, v35
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v30, -v36, v61, v37
	v_div_fixup_f32 v16, v26, v7, v16
	v_div_fixup_f32 v14, v25, v7, v14
	v_div_scale_f32 v25, null, v24, v24, v12
	v_div_fmas_f32 v26, v29, v50, v60
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v27, v7, v15
	v_div_fmas_f32 v27, v30, v51, v61
	v_rcp_f32_e32 v30, v25
	v_div_fixup_f32 v22, v26, v7, v22
	v_div_scale_f32 v26, s0, v17, v24, v17
	v_fma_f32 v28, -v45, v55, 1.0
	v_fma_f32 v29, -v42, v63, v43
	v_fma_f32 v71, -v40, v62, v41
	v_div_fixup_f32 v20, v27, v7, v20
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v55, v28, v55
	v_div_scale_f32 v28, s1, v13, v24, v13
	v_fmac_f32_e32 v63, v29, v53
	v_mul_f32_e32 v31, v26, v54
	v_fma_f32 v34, -v25, v30, 1.0
	v_div_scale_f32 v36, null, v24, v24, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v42, v63, v43
	v_fma_f32 v29, -v44, v31, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v30, v34, v30
	v_div_scale_f32 v34, s2, v12, v24, v12
	v_mul_f32_e32 v32, v28, v55
	v_dual_fmac_f32 v62, v71, v52 :: v_dual_fmac_f32 v31, v29, v54
	v_rcp_f32_e32 v37, v36
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v29, -v45, v32, v28
	v_fma_f32 v27, -v40, v62, v41
	v_fma_f32 v26, -v44, v31, v26
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_dual_fmac_f32 v32, v29, v55 :: v_dual_mul_f32 v29, v34, v30
	v_div_fmas_f32 v27, v27, v52, v62
	s_mov_b32 vcc_lo, s6
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v20, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v35, v35, v53, v63
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v19, v27, v7, v19
	v_div_fmas_f32 v26, v26, v54, v31
	v_fma_f32 v31, -v25, v29, v34
	v_div_fixup_f32 v7, v35, v7, v21
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v19, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v17, v26, v24, v17
	v_fmac_f32_e32 v29, v31, v30
	v_fma_f32 v26, -v36, v37, 1.0
	v_fma_f32 v28, -v45, v32, v28
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v21, -v25, v29, v34
	v_div_scale_f32 v25, null, v24, v24, v8
	v_fmac_f32_e32 v37, v26, v37
	v_div_scale_f32 v26, null, v24, v24, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v27, v25
	v_div_fmas_f32 v28, v28, v55, v32
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v34, null, v24, v24, v10
	v_div_fmas_f32 v21, v21, v30, v29
	v_rcp_f32_e32 v30, v26
	v_div_fixup_f32 v13, v28, v24, v13
	v_div_scale_f32 v28, null, v24, v24, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v12, v21, v24, v12
	v_fma_f32 v21, -v25, v27, 1.0
	v_div_scale_f32 v29, vcc_lo, v5, v24, v5
	v_rcp_f32_e32 v40, v34
	v_rcp_f32_e32 v31, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v27, v21, v27
	v_div_scale_f32 v21, s0, v8, v24, v8
	v_fma_f32 v35, -v26, v30, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v43, v21, v27
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v30, v35, v30
	v_div_scale_f32 v35, s1, v9, v24, v9
	v_mul_f32_e32 v32, v29, v37
	v_fma_f32 v44, -v34, v40, 1.0
	v_fma_f32 v42, -v28, v31, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v35, v30
	v_fma_f32 v41, -v36, v32, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v44, v40
	v_div_scale_f32 v44, s3, v10, v24, v10
	v_dual_fmac_f32 v31, v42, v31 :: v_dual_fmac_f32 v32, v41, v37
	v_fma_f32 v41, -v25, v43, v21
	v_div_scale_f32 v42, s2, v11, v24, v11
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v43, v41, v27
	v_mul_f32_e32 v47, v44, v40
	v_fma_f32 v29, -v36, v32, v29
	v_fma_f32 v36, -v26, v45, v35
	v_mul_f32_e32 v46, v42, v31
	v_fma_f32 v21, -v25, v43, v21
	v_fma_f32 v25, -v34, v47, v44
	v_div_fmas_f32 v29, v29, v37, v32
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fmac_f32_e32 v45, v36, v30
	v_fma_f32 v41, -v28, v46, v42
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v21, v21, v27, v43
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v26, -v26, v45, v35
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v18, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v46, v41, v31
	v_div_fixup_f32 v8, v21, v24, v8
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v21, v22
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v14, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v47, v25, v40
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v22, v7
	v_and_b32_e32 v7, 15, v18
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v25, -v28, v46, v42
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v5, v29, v24, v5
	v_div_fmas_f32 v26, v26, v30, v45
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v27, -v34, v47, v44
	v_div_fmas_f32 v25, v25, v31, v46
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v9, v26, v24, v9
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v21, v21, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v11, v25, v24, v11
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v5, v5, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v27, v27, v40, v47
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v9, v9
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v11, v11
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_cvt_i32_f32_e32 v5, v5
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v18, 2, v0
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v10, v27, v24, v10
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v25, v12
	v_cvt_i32_f32_e32 v28, v11
	v_and_b32_e32 v11, 15, v21
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v21, 0x600, v18, v33
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v18, 15, v5
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v5, 5, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v10, v10
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v24, v13
	v_cvt_i32_f32_e32 v27, v9
	v_and_b32_e32 v9, 15, v15
	v_and_b32_e32 v13, 15, v19
	v_and_b32_e32 v15, 15, v17
	v_and_b32_e32 v17, 15, v25
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v19, 11, v0
	v_lshlrev_b32_e32 v25, 7, v0
	v_and_b32_e32 v5, 0x60, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_cvt_i32_f32_e32 v16, v16
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v19, 0x3000, v19
	v_and_or_b32 v5, 0x3600, v25, v5
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v12, 15, v20
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v20, 0x60, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v26, v8
	v_cvt_i32_f32_e32 v29, v10
	v_and_b32_e32 v10, 15, v14
	v_and_b32_e32 v14, 15, v22
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v22, 7, v1
	v_add_nc_u32_e32 v30, 0, v19
	v_xad_u32 v2, v5, v2, 0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v5.l, v6.h
	v_mov_b16_e32 v5.h, v3.l
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v8, 15, v16
	v_and_b32_e32 v16, 15, v24
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xor_b32_e32 v24, v21, v20
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v19, 15, v26
	v_and_b32_e32 v20, 15, v27
	v_and_b32_e32 v21, 15, v28
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v1, v23, v5, vcc_lo
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v24, v30, v22, v24
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v22, 15, v29
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v24, v[7:10]
	ds_store_b128 v24, v[15:18] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v2
	ds_load_b128 v[15:18], v2 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v24, v[11:14]
	ds_store_b128 v24, v[19:22] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[11:14], v2
	ds_load_b128 v[19:22], v2 offset:2048
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v3, s33, 7, v4
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_bfe_i32 v5, v1, 0, 16
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v6, v15, 4, v7
	v_lshl_or_b32 v7, v16, 4, v8
	v_lshl_or_b32 v8, v17, 4, v9
	v_lshl_or_b32 v2, v18, 4, v10
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v9, v19, 4, v11
	v_lshl_or_b32 v11, v21, 4, v13
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_or_b32_e32 v13, s48, v38
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v2.l, 8, v2.l
	v_and_b16 v2.h, 0xff, v8.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v10, v20, 4, v12
	v_lshl_or_b32 v12, v22, 4, v14
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mad_u64_u32 v[3:4], null, v13, s0, v[3:4]
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.h, v2.h, v2.l
	.loc	1 87 34 is_stmt 1               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v2.l, 8, v7.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v7, v0, 31, s48
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v0.l, 0xff, v6.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v0.h, 8, v12.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v6, v7, s0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.l, 0xff, v11.l
	v_lshlrev_b16 v1.h, 8, v10.l
	v_and_b16 v2.h, 0xff, v9.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_permlanex16_b32 v7, v5, s7, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.l, v0.l, v2.l
	v_or_b16 v5.h, v1.l, v0.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add_lshl_u32 v0, v6, s33, 1
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.l, v2.h, v1.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v1, v7, v23, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v39
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[4:5], v3, s[16:19], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s17, s27, 0xffff
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_mov_b32 s16, s26
	buffer_store_b16 v1, v0, s[16:19], 0 offen
.Ltmp51:
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp52:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 178
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 178
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15344
; TotalNumSgprs: 53
; NumVgprs: 178
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 178
; Occupancy: 8
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
	.quad	.Ltmp51-.Lfunc_begin0
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
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     178
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
