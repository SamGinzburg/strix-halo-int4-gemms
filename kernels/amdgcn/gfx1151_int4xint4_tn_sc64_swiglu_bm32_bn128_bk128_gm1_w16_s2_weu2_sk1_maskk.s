	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s10, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v29, 1, v0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b32_e32 v11, 3, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v46, 0x70, v29
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v82, 0, v11
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s7, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s11, s6, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s8, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s13, s11, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s8, s8, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s13, s13, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s5, s5, s8
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s11, s11, s13
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s11, s11, 5
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s12, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s12, s12, s9
	s_mul_hi_u32 s12, s9, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s12
	s_xor_b32 s12, s2, s5
	s_mul_hi_u32 s9, s10, s9
	s_ashr_i32 s12, s12, 31
	s_mul_i32 s13, s9, s8
	s_sub_i32 s10, s10, s13
	s_add_i32 s13, s9, 1
	s_sub_i32 s14, s10, s8
	s_cmp_ge_u32 s10, s8
	s_cselect_b32 s9, s13, s9
	s_cselect_b32 s10, s14, s10
	s_add_i32 s13, s9, 1
	s_cmp_ge_u32 s10, s8
	s_cselect_b32 s8, s13, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s8, s8, s12
	s_sub_i32 s16, s8, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s8, s11, s16
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s16, s5
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s21, s8, 1
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s18, s21
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s17, s18
	s_abs_i32 s19, s2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	s_sub_i32 s11, 0, s18
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s10, s17
	s_mul_i32 s11, s11, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s11
	s_mov_b32 s11, 0x31027000
	s_add_i32 s10, s10, s5
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s31, s11
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_hi_u32 s5, s19, s10
	s_xor_b32 s10, s2, s21
	s_mul_i32 s20, s5, s18
	s_ashr_i32 s17, s10, 31
	s_sub_i32 s19, s19, s20
	s_add_i32 s20, s5, 1
	s_sub_i32 s22, s19, s18
	s_cmp_ge_u32 s19, s18
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s5, s20, s5
	s_cselect_b32 s19, s22, s19
	s_add_i32 s20, s5, 1
	s_cmp_ge_u32 s19, s18
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s30, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cselect_b32 s5, s20, s5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s20, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s22, s4, 63
.Ltmp13:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s18, s5, s17
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s19, s3, 5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s20
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s5, s22, 31
.Ltmp15:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s25, s18, s17
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v8, s19, v3
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s20, s4, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s4, s5, 26
.Ltmp17:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s5, s25, s21
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s21, s22, s4
.Ltmp19:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s5
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s20, v8
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 32, v8
	.loc	1 120 13 is_stmt 1              ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s16
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_lshl_b32 s27, s7, 1
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s26, s25, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s33, s21, 6
.Ltmp21:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s5, s2, 5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s22, 63
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s24, s27, s19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s16, s4, vcc_lo
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	s_mul_i32 s23, s6, s19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v4, 15, v0
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_and_b32 s29, s29, 0xffff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s22, 0x7f
	s_mov_b32 s16, -1
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v1, 1, v4
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v2, 3, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_mad_u64_u32 v[5:6], null, s6, v3, v[1:2]
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[6:7], null, s27, v3, v[2:3]
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_add3_u32 v5, s23, s5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add3_u32 v6, s26, s24, v6
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	v_or_b32_e32 v80, v46, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 228 43                        ; generate_amdgcn.py:228:43
	v_add_nc_u32_e32 v7, s7, v6
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v9, 0x80000000, v7
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_clause 0x1
	buffer_load_b64 v[7:8], v6, s[28:31], 0 offen
	buffer_load_b64 v[9:10], v9, s[28:31], 0 offen
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_lshlrev_b32_e32 v6, 1, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v81, 0, v6
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v6, 16, v3
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt vmcnt(2)
	ds_store_b16 v81, v5 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v82, v[7:8], v[9:10] offset1:8
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b32_e32 v5, v46, v4
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_mov_b64 s[38:39], s[10:11]
	s_mov_b32 s16, 0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b32_e32 v49, 0x80, v5
	v_or_b32_e32 v50, 0x100, v5
	v_or_b32_e32 v51, 0x180, v5
	v_or_b32_e32 v52, 0x200, v5
	v_or_b32_e32 v53, 0x280, v5
	v_or_b32_e32 v54, 0x300, v5
	v_or_b32_e32 v55, 0x380, v5
	v_or_b32_e32 v56, 0x400, v5
	v_or_b32_e32 v57, 0x480, v5
	v_or_b32_e32 v58, 0x500, v5
	v_or_b32_e32 v59, 0x580, v5
	v_or_b32_e32 v60, 0x600, v5
	v_or_b32_e32 v61, 0x680, v5
	v_or_b32_e32 v62, 0x700, v5
	v_or_b32_e32 v63, 0x780, v5
	v_or_b32_e32 v64, 0x800, v5
	v_or_b32_e32 v65, 0x880, v5
	v_or_b32_e32 v66, 0x900, v5
	v_or_b32_e32 v67, 0x980, v5
	v_or_b32_e32 v68, 0xa00, v5
	v_or_b32_e32 v69, 0xa80, v5
	v_or_b32_e32 v70, 0xb00, v5
	v_or_b32_e32 v71, 0xb80, v5
	v_or_b32_e32 v72, 0xc00, v5
	v_or_b32_e32 v73, 0xc80, v5
	v_or_b32_e32 v74, 0xd00, v5
	v_or_b32_e32 v75, 0xd80, v5
	v_or_b32_e32 v76, 0xe00, v5
	v_or_b32_e32 v77, 0xe80, v5
	v_or_b32_e32 v78, 0xf00, v5
	v_or_b32_e32 v79, 0xf80, v5
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr36_sgpr37
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr53
                                        ; implicit-def: $vgpr54
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
                                        ; implicit-def: $vgpr73
                                        ; implicit-def: $vgpr74
                                        ; implicit-def: $vgpr75
                                        ; implicit-def: $vgpr76
                                        ; implicit-def: $vgpr77
                                        ; implicit-def: $vgpr78
                                        ; implicit-def: $vgpr79
.LBB0_3:                                ; %Flow251
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v47, v6, v4
	v_bfe_u32 v48, v0, 4, 1
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v42, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v83, 0, v47
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v30, 0
	v_mov_b32_e32 v43, 0
	s_and_not1_b32 vcc_lo, exec_lo, s16
	s_add_i32 s0, s33, -1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v30, 0 :: v_dual_lshlrev_b32 v5, 1, v3
	s_mov_b32 s16, 0
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_sub_nc_u32_e32 v85, s20, v3
	s_mov_b32 s21, s16
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v5, s3, 6, v5
	s_add_i32 s3, s19, 32
	s_mov_b32 s19, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v7, 0xe0, v0
	s_lshl_b32 s20, s17, 8
	v_add3_u32 v4, s5, v6, v4
	s_lshl_b32 s17, s17, 7
	v_or_b32_e32 v49, 0x80, v80
	v_lshl_or_b32 v7, s18, 8, v7
	s_lshl_b32 s18, s18, 7
	v_mul_lo_u32 v4, s33, v4
	v_or_b32_e32 v50, 0x100, v80
	v_or_b32_e32 v51, 0x180, v80
	v_add_nc_u32_e32 v9, s27, v7
	v_subrev_nc_u32_e32 v88, s20, v7
	v_or_b32_e32 v52, 0x200, v80
	v_or_b32_e32 v53, 0x280, v80
	v_or_b32_e32 v54, 0x300, v80
	v_subrev_nc_u32_e32 v87, s20, v9
	s_mov_b32 s20, s16
	v_add_nc_u32_e32 v8, 0x41, v5
	v_add_nc_u32_e32 v5, 64, v5
	v_dual_mov_b32 v44, 0 :: v_dual_lshlrev_b32 v89, 1, v4
	v_or_b32_e32 v55, 0x380, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v6, s7, v8
	v_mul_lo_u32 v5, s7, v5
	v_or_b32_e32 v56, 0x400, v80
	v_or_b32_e32 v57, 0x480, v80
	v_or_b32_e32 v58, 0x500, v80
	v_or_b32_e32 v59, 0x580, v80
	v_or_b32_e32 v60, 0x600, v80
	v_or_b32_e32 v61, 0x680, v80
	v_add3_u32 v6, v6, s18, v2
	v_add3_u32 v2, v5, s18, v2
	s_mov_b32 s18, s16
	v_or_b32_e32 v62, 0x700, v80
	v_or_b32_e32 v63, 0x780, v80
	v_subrev_nc_u32_e32 v90, s17, v6
	v_subrev_nc_u32_e32 v91, s17, v2
	s_mov_b32 s17, s16
	v_add_nc_u32_e32 v3, s3, v3
	v_add_nc_u32_e32 v84, 0, v80
	v_or_b32_e32 v64, 0x800, v80
	v_or_b32_e32 v65, 0x880, v80
	v_or_b32_e32 v66, 0x900, v80
	v_mul_lo_u32 v3, s6, v3
	v_or_b32_e32 v67, 0x980, v80
	v_or_b32_e32 v68, 0xa00, v80
	v_or_b32_e32 v69, 0xa80, v80
	v_or_b32_e32 v70, 0xb00, v80
	v_or_b32_e32 v71, 0xb80, v80
	v_or_b32_e32 v72, 0xc00, v80
	v_or_b32_e32 v73, 0xc80, v80
	v_add3_u32 v92, v3, s5, v1
	v_mov_b32_e32 v1, s16
	v_or_b32_e32 v74, 0xd00, v80
	v_or_b32_e32 v75, 0xd80, v80
	v_or_b32_e32 v76, 0xe00, v80
	v_or_b32_e32 v77, 0xe80, v80
	v_or_b32_e32 v78, 0xf00, v80
	v_or_b32_e32 v79, 0xf80, v80
	v_dual_mov_b32 v3, s18 :: v_dual_lshlrev_b32 v86, 1, v48
	v_mov_b32_e32 v2, s17
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	v_mov_b32_e32 v36, 0
	v_dual_mov_b32 v8, s23 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v31, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b64 s[36:37], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_max_i32 s1, s0, 1
	s_lshl_b32 s34, s7, 2
	s_lshl_b32 s35, s7, 6
	s_lshl_b32 s6, s6, 5
	s_mov_b32 s44, s12
	s_mov_b32 s45, s13
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	buffer_load_u16 v9, v89, s[44:47], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s3, v85
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v89, 2, v89
	s_add_i32 s1, s1, -1
	s_add_i32 s3, s3, 32
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_mov_b32_e32 v102, s23
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s1, 0
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_dual_mov_b32 v101, s22 :: v_dual_mov_b32 v100, s21
	v_dual_mov_b32 v99, s20 :: v_dual_mov_b32 v98, s19
	v_dual_mov_b32 v97, s18 :: v_dual_mov_b32 v96, s17
	v_mov_b32_e32 v95, s16
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v93, 16, v9
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e32 v9, 0x80000000, v92, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v92, s6, v92
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_u16 v94, v9, s[8:11], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v9, 0x80000000, v91, vcc_lo
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v91, s35, v91
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b64 v[25:26], v9, s[28:31], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v83 offset:8352
	ds_load_u8 v10, v83 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v83 offset:8416
	ds_load_u8 v11, v83 offset:8384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v10, 16, v9
	ds_load_u8 v9, v83 offset:8288
	ds_load_u8 v10, v83 offset:8256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v83 offset:8192
	ds_load_u8 v11, v83 offset:8224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v9, 16, v10
	ds_load_u8 v9, v84 offset:640
	ds_load_u8 v10, v84 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v84 offset:896
	ds_load_u8 v11, v84 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v10, 16, v9
	ds_load_u8 v9, v84 offset:128
	ds_load_u8 v10, v84
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v84 offset:384
	ds_load_u8 v11, v84 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v10, 16, v9
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[103:104], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v17, v83 offset:8608
	ds_load_u8 v18, v83 offset:8576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v83 offset:8672
	ds_load_u8 v19, v83 offset:8640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v106, v18, 16, v17
	ds_load_u8 v17, v83 offset:8480
	ds_load_u8 v18, v83 offset:8448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v83 offset:8544
	ds_load_u8 v19, v83 offset:8512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v105, v18, 16, v17
	ds_load_u8 v17, v84 offset:1664
	ds_load_u8 v18, v84 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v84 offset:1920
	ds_load_u8 v19, v84 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v84 offset:1152
	ds_load_u8 v19, v84 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v84 offset:1408
	ds_load_u8 v20, v84 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[105:106], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v83 offset:8864
	ds_load_u8 v18, v83 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v83 offset:8928
	ds_load_u8 v19, v83 offset:8896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v18, 16, v17
	ds_load_u8 v17, v83 offset:8736
	ds_load_u8 v18, v83 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v83 offset:8800
	ds_load_u8 v19, v83 offset:8768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v18, 16, v17
	ds_load_u8 v17, v84 offset:2688
	ds_load_u8 v18, v84 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v84 offset:2944
	ds_load_u8 v19, v84 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v84 offset:2176
	ds_load_u8 v19, v84 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v84 offset:2432
	ds_load_u8 v20, v84 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[107:108], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v83 offset:9120
	ds_load_u8 v18, v83 offset:9088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v83 offset:9184
	ds_load_u8 v19, v83 offset:9152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v110, v18, 16, v17
	ds_load_u8 v17, v83 offset:8992
	ds_load_u8 v18, v83 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v83 offset:9056
	ds_load_u8 v19, v83 offset:9024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v109, v18, 16, v17
	ds_load_u8 v17, v84 offset:3712
	ds_load_u8 v18, v84 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v84 offset:3968
	ds_load_u8 v19, v84 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v84 offset:3200
	ds_load_u8 v19, v84 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v84 offset:3456
	ds_load_u8 v20, v84 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[109:110], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v14, v14
	v_mul_f32_e32 v10, v93, v10
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_dual_cndmask_b32 v17, 0x80000000, v90 :: v_dual_mul_f32 v12, v93, v12
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v13, v13
	v_mul_f32_e32 v14, v93, v14
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	buffer_load_b64 v[27:28], v17, s[28:31], 0 offen
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v17, v84 offset:4736
	ds_load_u8 v18, v84 offset:4608
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v16, v93, v16
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v90, s35, v90
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v84 offset:4992
	ds_load_u8 v19, v84 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v18, 16, v17
	ds_load_u8 v17, v84 offset:4224
	ds_load_u8 v18, v84 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v84 offset:4480
	ds_load_u8 v19, v84 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v111, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[17:24], v[111:112], v[103:104], v[95:102] neg_lo:[1,1,0]
	ds_load_u8 v95, v84 offset:5760
	ds_load_u8 v96, v84 offset:5632
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v103, v86, v87
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v87, s34, v87
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v84 offset:6016
	ds_load_u8 v97, v84 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v96, 16, v95
	ds_load_u8 v95, v84 offset:5248
	ds_load_u8 v97, v84 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v97, v95, 0xc0c0004
	ds_load_u8 v97, v84 offset:5504
	ds_load_u8 v98, v84 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v95, v97, 16, v95
	v_wmma_i32_16x16x16_iu4 v[17:24], v[95:96], v[105:106], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v95, v84 offset:6784
	ds_load_u8 v96, v84 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v84 offset:7040
	ds_load_u8 v97, v84 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v96, 16, v95
	ds_load_u8 v95, v84 offset:6272
	ds_load_u8 v97, v84 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v97, v95, 0xc0c0004
	ds_load_u8 v97, v84 offset:6528
	ds_load_u8 v98, v84 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v95, v97, 16, v95
	v_wmma_i32_16x16x16_iu4 v[17:24], v[95:96], v[107:108], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v95, v84 offset:7808
	ds_load_u8 v96, v84 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	ds_load_u8 v96, v84 offset:8064
	ds_load_u8 v97, v84 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v96, v96, 16, v95
	ds_load_u8 v95, v84 offset:7296
	ds_load_u8 v97, v84 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v97, v95, 0xc0c0004
	ds_load_u8 v97, v84 offset:7552
	ds_load_u8 v98, v84 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v95, v97, 16, v95
	v_wmma_i32_16x16x16_iu4 v[17:24], v[95:96], v[109:110], v[17:24] neg_lo:[1,1,0]
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x7
	buffer_load_u16 v104, v103, s[40:43], 0 offen
	buffer_load_u16 v105, v103, s[40:43], 0 offen offset:4
	buffer_load_u16 v106, v103, s[40:43], 0 offen offset:8
	buffer_load_u16 v107, v103, s[40:43], 0 offen offset:12
	buffer_load_u16 v108, v103, s[40:43], 0 offen offset:16
	buffer_load_u16 v109, v103, s[40:43], 0 offen offset:20
	buffer_load_u16 v110, v103, s[40:43], 0 offen offset:24
	buffer_load_u16 v103, v103, s[40:43], 0 offen offset:28
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v18, v18
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v95, v86, v88
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_mul_f32_e32 v18, v93, v18
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v96, v95, s[40:43], 0 offen
	buffer_load_u16 v97, v95, s[40:43], 0 offen offset:4
	buffer_load_u16 v98, v95, s[40:43], 0 offen offset:8
	buffer_load_u16 v99, v95, s[40:43], 0 offen offset:12
	buffer_load_u16 v100, v95, s[40:43], 0 offen offset:16
	buffer_load_u16 v101, v95, s[40:43], 0 offen offset:20
	buffer_load_u16 v102, v95, s[40:43], 0 offen offset:24
	buffer_load_u16 v95, v95, s[40:43], 0 offen offset:28
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v9, v93, v9
	v_mul_f32_e32 v11, v93, v11
	v_mul_f32_e32 v13, v93, v13
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v21, v21
	v_mul_f32_e32 v22, v93, v22
	v_mul_f32_e32 v23, v93, v23
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v15, v93, v15
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v24, v93, v24
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_dual_mul_f32 v21, v93, v21 :: v_dual_add_nc_u32 v88, s34, v88
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v19, v93, v19
	v_mul_f32_e32 v20, v93, v20
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_barrier
	s_waitcnt vmcnt(18)
	ds_store_b16 v81, v94 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(16)
	ds_store_2addr_stride64_b64 v82, v[25:26], v[27:28] offset1:8
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v96, 16, v96
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v45, v9, v96 :: v_dual_lshlrev_b32 v96, 16, v99
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v97, 16, v97
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v42, v12, v96 :: v_dual_lshlrev_b32 v9, 16, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v44, v10, v97 :: v_dual_lshlrev_b32 v97, 16, v98
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v96, 16, v101
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v17, v93, v17 :: v_dual_lshlrev_b32 v10, 16, v104
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v41, v11, v97 :: v_dual_lshlrev_b32 v12, 16, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v14, v96
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v30, v17, v10 :: v_dual_lshlrev_b32 v97, 16, v100
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v11, 16, v107
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v96, 16, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v37, v13, v97 :: v_dual_lshlrev_b32 v14, 16, v108
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v13, 16, v109
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v95, 16, v95
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v43, v18, v9 :: v_dual_fmac_f32 v40, v20, v11
	v_dual_fmac_f32 v39, v19, v12 :: v_dual_fmac_f32 v36, v22, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v31, v16, v95 :: v_dual_lshlrev_b32 v16, 16, v110
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v35, v21, v14 :: v_dual_fmac_f32 v32, v23, v16
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v34, v15, v96 :: v_dual_lshlrev_b32 v15, 16, v103
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v33, v24, v15
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v5, v80
.LBB0_7:                                ; %._crit_edge
	.loc	1 195 26 is_stmt 1              ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s33, v47
	s_mul_i32 s3, s5, s33
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s1, s0, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_cndmask_b32_e64 v2, 0, 1, s2
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_add_i32 s3, s3, s1
	v_dual_mov_b32 v6, 0 :: v_dual_add_nc_u32 v79, 0, v79
	v_dual_mov_b32 v8, 0 :: v_dual_add_nc_u32 v77, 0, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v1, s3, v1, 1
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	v_cmp_ne_u32_e64 s0, 1, v2
	v_dual_mov_b32 v7, 0 :: v_dual_add_nc_u32 v76, 0, v76
	v_dual_mov_b32 v2, 0 :: v_dual_add_nc_u32 v75, 0, v75
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v74, 0, v74
	v_add_nc_u32_e32 v78, 0, v78
	v_dual_mov_b32 v4, 0 :: v_dual_add_nc_u32 v73, 0, v73
	buffer_load_u16 v10, v1, s[36:39], 0 offen
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v89, v83 offset:8192
	ds_load_u8_d16 v90, v83 offset:8224
	ds_load_u8_d16 v91, v83 offset:8256
	ds_load_u8_d16 v92, v83 offset:8288
	ds_load_u8_d16 v93, v83 offset:8320
	ds_load_u8_d16 v94, v83 offset:8352
	ds_load_u8_d16 v95, v83 offset:8384
	ds_load_u8_d16 v96, v83 offset:8416
	ds_load_u8_d16 v80, v83 offset:8448
	ds_load_u8_d16 v81, v83 offset:8480
	ds_load_u8_d16 v82, v83 offset:8512
	ds_load_u8_d16 v84, v83 offset:8544
	ds_load_u8_d16 v85, v83 offset:8576
	ds_load_u8_d16 v86, v83 offset:8608
	ds_load_u8_d16 v87, v83 offset:8640
	ds_load_u8_d16 v88, v83 offset:8672
	ds_load_u8_d16 v11, v83 offset:8704
	ds_load_u8_d16 v12, v83 offset:8736
	ds_load_u8_d16 v13, v83 offset:8768
	ds_load_u8_d16 v14, v83 offset:8800
	ds_load_u8_d16 v16, v83 offset:8832
	ds_load_u8_d16 v19, v83 offset:8864
	ds_load_u8_d16 v20, v83 offset:8896
	ds_load_u8_d16 v22, v83 offset:8928
	ds_load_u8_d16 v15, v83 offset:8960
	ds_load_u8_d16 v17, v83 offset:8992
	ds_load_u8_d16 v18, v83 offset:9024
	ds_load_u8_d16 v21, v83 offset:9056
	ds_load_u8_d16 v23, v83 offset:9088
	ds_load_u8_d16 v24, v83 offset:9120
	ds_load_u8_d16 v25, v83 offset:9152
	ds_load_u8_d16 v26, v83 offset:9184
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v72, 0, v72
	v_mov_b32_e32 v3, 0
	v_add_nc_u32_e32 v71, 0, v71
	v_add_nc_u32_e32 v70, 0, v70
	v_add_nc_u32_e32 v69, 0, v69
	v_add_nc_u32_e32 v68, 0, v68
	v_add_nc_u32_e32 v67, 0, v67
	v_add_nc_u32_e32 v66, 0, v66
	v_add_nc_u32_e32 v65, 0, v65
	v_add_nc_u32_e32 v64, 0, v64
	v_add_nc_u32_e32 v63, 0, v63
	v_add_nc_u32_e32 v62, 0, v62
	v_add_nc_u32_e32 v61, 0, v61
	v_add_nc_u32_e32 v60, 0, v60
	v_add_nc_u32_e32 v59, 0, v59
	v_add_nc_u32_e32 v58, 0, v58
	v_add_nc_u32_e32 v57, 0, v57
	v_add_nc_u32_e32 v56, 0, v56
	v_add_nc_u32_e32 v98, 0, v55
	v_add_nc_u32_e32 v54, 0, v54
	v_add_nc_u32_e32 v100, 0, v53
	v_add_nc_u32_e32 v101, 0, v52
	v_add_nc_u32_e32 v83, 0, v51
	v_add_nc_u32_e32 v97, 0, v50
	v_add_nc_u32_e32 v55, 0, v49
	v_add_nc_u32_e32 v99, 0, v5
	v_mov_b32_e32 v5, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	ds_load_u8 v4, v100
	ds_load_u8 v5, v101
	ds_load_u8 v6, v98
	ds_load_u8 v7, v99
	ds_load_u8 v8, v83
	ds_load_u8 v9, v97
	ds_load_u8 v27, v54
	ds_load_u8 v28, v55
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v2, v93, v94, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v3, v95, v96, 0xc0c0004
	v_perm_b32 v49, v89, v90, 0xc0c0004
	v_perm_b32 v50, v91, v92, 0xc0c0004
	v_mov_b32_e32 v102, 0
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v116, v20, v22, 0xc0c0004
	v_lshl_or_b32 v3, v3, 16, v2
	v_perm_b32 v117, v11, v12, 0xc0c0004
	v_lshl_or_b32 v2, v50, 16, v49
	v_mov_b32_e32 v103, v102
	v_mov_b32_e32 v104, v102
	v_mov_b32_e32 v105, v102
	v_mov_b32_e32 v106, v102
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	v_mov_b32_e32 v107, v102
	v_mov_b32_e32 v108, v102
	v_mov_b32_e32 v109, v102
	v_perm_b32 v118, v13, v14, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v5, v27, v6, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v28, 0xc0c0004
	v_perm_b32 v7, v9, v8, 0xc0c0004
	ds_load_u8 v8, v61
	ds_load_u8 v9, v60
	ds_load_u8 v27, v63
	ds_load_u8 v28, v56
	ds_load_u8 v49, v59
	ds_load_u8 v50, v58
	ds_load_u8 v51, v62
	v_lshl_or_b32 v5, v5, 16, v4
	v_lshl_or_b32 v4, v7, 16, v6
	ds_load_u8 v6, v57
	v_wmma_i32_16x16x16_iu4 v[102:109], v[4:5], v[2:3], v[102:109] neg_lo:[1,1,0]
	v_perm_b32 v2, v85, v86, 0xc0c0004
	v_perm_b32 v3, v87, v88, 0xc0c0004
	v_perm_b32 v4, v80, v81, 0xc0c0004
	v_perm_b32 v5, v82, v84, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v7, v9, v8, 0xc0c0004
	v_lshl_or_b32 v3, v3, 16, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v2, v5, 16, v4
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v8, v51, v27, 0xc0c0004
	ds_load_u8 v9, v69
	ds_load_u8 v27, v68
	ds_load_u8 v51, v71
	ds_load_u8 v52, v65
	ds_load_u8 v53, v64
	ds_load_u8 v110, v67
	ds_load_u8 v111, v66
	ds_load_u8 v112, v70
	v_lshl_or_b32 v5, v8, 16, v7
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v4, v28, v6, 0xc0c0004
	v_perm_b32 v6, v50, v49, 0xc0c0004
	ds_load_u8 v7, v77
	ds_load_u8 v8, v76
	ds_load_u8 v28, v79
	ds_load_u8 v49, v73
	ds_load_u8 v50, v72
	ds_load_u8 v113, v75
	ds_load_u8 v114, v74
	ds_load_u8 v115, v78
	v_lshl_or_b32 v4, v6, 16, v4
	v_perm_b32 v6, v16, v19, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v9, v27, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[4:5], v[2:3], v[102:109] neg_lo:[1,1,0]
	v_lshl_or_b32 v3, v116, 16, v6
	v_lshl_or_b32 v2, v118, 16, v117
	v_perm_b32 v6, v23, v24, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v27, v112, v51, 0xc0c0004
	v_perm_b32 v51, v53, v52, 0xc0c0004
	v_perm_b32 v52, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	v_lshl_or_b32 v5, v27, 16, v9
	v_perm_b32 v9, v25, v26, 0xc0c0004
	v_lshl_or_b32 v4, v52, 16, v51
	v_perm_b32 v27, v15, v17, 0xc0c0004
	v_perm_b32 v51, v18, v21, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v115, v28, 0xc0c0004
	v_perm_b32 v28, v50, v49, 0xc0c0004
	v_perm_b32 v49, v114, v113, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[102:109], v[4:5], v[2:3], v[102:109] neg_lo:[1,1,0]
	v_lshl_or_b32 v3, v9, 16, v6
	v_lshl_or_b32 v2, v51, 16, v27
	v_lshl_or_b32 v5, v8, 16, v7
	v_lshl_or_b32 v4, v49, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[4:5], v[2:3], v[102:109] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v6, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v8, v103
	v_cvt_f32_i32_e32 v7, v104
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v9, v105
	v_cvt_f32_i32_e32 v2, v106
	v_cvt_f32_i32_e32 v4, v107
	v_cvt_f32_i32_e32 v3, v108
	v_cvt_f32_i32_e32 v5, v109
.LBB0_9:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_mov_b32_e32 v53, 0
	.loc	1 229 36 is_stmt 1              ; generate_amdgcn.py:229:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	ds_load_u8 v1, v100 offset:4096
	ds_load_u8 v49, v101 offset:4096
	ds_load_u8 v50, v98 offset:4096
	ds_load_u8 v51, v99 offset:4096
	ds_load_u8 v52, v83 offset:4096
	ds_load_u8 v53, v97 offset:4096
	ds_load_u8 v54, v54 offset:4096
	ds_load_u8 v55, v55 offset:4096
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v27, v93, v94, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v28, v95, v96, 0xc0c0004
	v_perm_b32 v83, v89, v90, 0xc0c0004
	v_perm_b32 v90, v91, v92, 0xc0c0004
	v_mov_b32_e32 v89, 0
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v11, v11, v12, 0xc0c0004
	v_lshl_or_b32 v28, v28, 16, v27
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v13, v13, v14, 0xc0c0004
	v_lshl_or_b32 v27, v90, 16, v83
	v_mov_b32_e32 v90, v89
	v_mov_b32_e32 v91, v89
	v_mov_b32_e32 v92, v89
	v_mov_b32_e32 v93, v89
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v49, v1, 0xc0c0004
	v_mov_b32_e32 v94, v89
	v_mov_b32_e32 v95, v89
	v_mov_b32_e32 v96, v89
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v49, v54, v50, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v51, v55, 0xc0c0004
	ds_load_u8 v53, v61 offset:4096
	ds_load_u8 v54, v60 offset:4096
	ds_load_u8 v55, v63 offset:4096
	ds_load_u8 v56, v56 offset:4096
	ds_load_u8 v59, v59 offset:4096
	ds_load_u8 v58, v58 offset:4096
	ds_load_u8 v60, v62 offset:4096
	v_lshl_or_b32 v11, v13, 16, v11
	v_perm_b32 v15, v15, v17, 0xc0c0004
	v_lshl_or_b32 v50, v49, 16, v1
	ds_load_u8 v1, v57 offset:4096
	v_lshl_or_b32 v49, v52, 16, v51
	v_perm_b32 v17, v18, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[89:96], v[49:50], v[27:28], v[89:96] neg_lo:[1,1,0]
	v_perm_b32 v27, v85, v86, 0xc0c0004
	v_perm_b32 v28, v87, v88, 0xc0c0004
	v_perm_b32 v49, v80, v81, 0xc0c0004
	v_perm_b32 v50, v82, v84, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v51, v54, v53, 0xc0c0004
	v_lshl_or_b32 v28, v28, 16, v27
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v27, v50, 16, v49
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v52, v60, v55, 0xc0c0004
	ds_load_u8 v53, v69 offset:4096
	ds_load_u8 v54, v68 offset:4096
	ds_load_u8 v55, v71 offset:4096
	ds_load_u8 v57, v65 offset:4096
	ds_load_u8 v60, v64 offset:4096
	ds_load_u8 v61, v67 offset:4096
	ds_load_u8 v62, v66 offset:4096
	ds_load_u8 v63, v70 offset:4096
	v_perm_b32 v49, v58, v59, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v1, v56, v1, 0xc0c0004
	v_lshl_or_b32 v50, v52, 16, v51
	ds_load_u8 v51, v77 offset:4096
	ds_load_u8 v52, v76 offset:4096
	ds_load_u8 v56, v79 offset:4096
	ds_load_u8 v58, v73 offset:4096
	ds_load_u8 v59, v72 offset:4096
	ds_load_u8 v64, v75 offset:4096
	ds_load_u8 v65, v74 offset:4096
	ds_load_u8 v66, v78 offset:4096
	v_lshl_or_b32 v49, v49, 16, v1
	v_perm_b32 v1, v16, v19, 0xc0c0004
	v_perm_b32 v16, v20, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[89:96], v[49:50], v[27:28], v[89:96] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v14, v54, v53, 0xc0c0004
	v_lshl_or_b32 v12, v16, 16, v1
	v_perm_b32 v1, v23, v24, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v20, v60, v57, 0xc0c0004
	v_perm_b32 v16, v25, v26, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v22, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v19, v63, v55, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v18, v52, v51, 0xc0c0004
	v_lshl_or_b32 v13, v22, 16, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v14, v19, 16, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v66, v56, 0xc0c0004
	v_perm_b32 v20, v59, v58, 0xc0c0004
	v_perm_b32 v21, v65, v64, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[89:96], v[13:14], v[11:12], v[89:96] neg_lo:[1,1,0]
	v_lshl_or_b32 v12, v16, 16, v1
	v_lshl_or_b32 v11, v17, 16, v15
	v_lshl_or_b32 v14, v19, 16, v18
	v_lshl_or_b32 v13, v21, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[89:96], v[13:14], v[11:12], v[89:96] neg_lo:[1,1,0]
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v1, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v52, v90
	v_cvt_f32_i32_e32 v51, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v53, v92
	v_cvt_f32_i32_e32 v27, v93
	v_cvt_f32_i32_e32 v49, v94
	v_cvt_f32_i32_e32 v28, v95
	v_cvt_f32_i32_e32 v50, v96
.LBB0_11:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	s_waitcnt lgkmcnt(15)
	v_or_b32_e32 v11, v48, v46
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s1, s1, s27
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s9, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s26, s1
	s_mov_b32 s11, 0x31027000
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	s_waitcnt lgkmcnt(14)
	v_or_b32_e32 v12, 2, v11
	s_waitcnt lgkmcnt(13)
	v_or_b32_e32 v13, 4, v11
	s_waitcnt lgkmcnt(12)
	v_or_b32_e32 v14, 6, v11
	.loc	1 235 35                        ; generate_amdgcn.py:235:35
	s_add_i32 s1, s0, s7
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v15, 8, v11
	v_or_b32_e32 v16, 10, v11
	s_waitcnt lgkmcnt(6)
	v_or_b32_e32 v17, 12, v11
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v18, 14, v11
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v19, s0, v11, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v11, s1, v11, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v20, s0, v12, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v12, s1, v12, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt lgkmcnt(4)
	v_add_lshl_u32 v21, s0, v13, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v13, s1, v13, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v22, s0, v14, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v14, s1, v14, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s8, s14
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt lgkmcnt(2)
	v_add_lshl_u32 v24, s0, v16, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v16, s1, v16, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v23, s0, v15, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v15, s1, v15, 1
	s_clause 0x3
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	buffer_load_u16 v12, v12, s[8:11], 0 offen
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v26, s0, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_add_lshl_u32 v25, s0, v17, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v17, s1, v17, 1
	v_add_lshl_u32 v18, s1, v18, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	s_clause 0x5
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	buffer_load_u16 v22, v22, s[8:11], 0 offen
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	s_clause 0x5
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	buffer_load_u16 v17, v17, s[8:11], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v46.l, 0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v46.h, v10.l
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b32_e32 v48, 0x7632
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_or_b32_e32 v10, s5, v47
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_dual_mov_b32 v47, 0x5410 :: v_dual_and_b32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v6, v6, v46
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v52, v52, v46
	v_mul_f32_e32 v1, v1, v46
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v7, v7, v46
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v51, v51, v46
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v4, v4, v46
	v_mul_f32_e32 v8, v8, v46
	v_mul_f32_e32 v9, v9, v46
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v53, v53, v46
	v_mul_f32_e32 v50, v50, v46
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v2, v2, v46
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v28, v28, v46
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v56.h, v46.l
	v_mov_b16_e32 v57.h, v46.l
	v_mov_b16_e32 v54.h, v46.l
	v_mov_b16_e32 v59.h, v46.l
	v_mov_b16_e32 v55.h, v46.l
	v_mov_b16_e32 v58.h, v46.l
	v_mov_b16_e32 v60.h, v46.l
	s_mov_b32 s8, 0x76543210
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, s11
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v11, 16, v11
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v12, 16, v12
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v1, v1, v11, v30
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v1, v30, v1, s2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v49, v49, v46
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v19, 16, v19
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v20, 16, v20
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v11, v52, v12, v43
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v12, v51, v13, v39
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v6, v6, v19, v45
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v11, v43, v11, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v39, v12, s2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v27, v27, v46
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v19, 16, v22
	v_lshlrev_b32_e32 v22, 16, v24
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v8, v8, v20, v44
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v20, 0xbfb8aa3b, v12 :: v_dual_lshlrev_b32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v9, v9, v19, v42
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v11
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v13, v53, v14, v40
	v_fma_f32 v14, v27, v15, v35
	v_fma_f32 v15, v49, v16, v36
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v2, v2, v23, v37
	v_fma_f32 v4, v4, v22, v38
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v35, v14, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v36, v15, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v13, v40, v13, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v14
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v16, v28, v17, v32
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v23, 0xbfb8aa3b, v15
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v17, v50, v18, v33
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v18, 0xbfb8aa3b, v1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v24, 16, v26
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v16, v32, v16, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v5, v5, v46
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v7, v7, v21, v41
	.loc	1 238 44 is_stmt 1              ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_mul_f32_e32 v21, 0xbfb8aa3b, v13
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v22
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v5, v5, v24, v31
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v6, v45, v6, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v3, v3, v46
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v8, v44, v8, s2
	v_cndmask_b32_e64 v9, v42, v9, s2
	v_cndmask_b32_e64 v7, v41, v7, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v1
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v3, v3, v25, v34
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v4, v38, v4, s2
	v_cndmask_b32_e64 v2, v37, v2, s2
	v_cndmask_b32_e64 v5, v31, v5, s2
	v_cndmask_b32_e64 v17, v33, v17, s2
	v_cndmask_b32_e64 v3, v34, v3, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v20
	v_exp_f32_e32 v18, v18
	v_cndmask_b32_e64 v22, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v21
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0x42800000, s2
	v_dual_mul_f32 v24, 0xbfb8aa3b, v16 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v17
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v14
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v19
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v12
	v_ldexp_f32 v18, v18, v26
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v24
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	v_exp_f32_e32 v22, v22
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v23
	v_dual_fmac_f32 v21, 0xbfb8aa3b, v13 :: v_dual_add_f32 v18, 1.0, v18
	v_exp_f32_e32 v20, v20
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v25
	v_cndmask_b32_e64 v24, 0, 0x42800000, s6
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v11
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v23, 0, 0x42800000, s3
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s2
	v_exp_f32_e32 v21, v21
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_scale_f32 v26, null, v18, v18, v1
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v25, 0, 0x42800000, s5
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v16
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v22, v22, v32
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s1
	v_ldexp_f32 v20, v20, v30
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v15
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v42, v26
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s0
	v_dual_fmac_f32 v25, 0xbfb8aa3b, v17 :: v_dual_add_f32 v22, 1.0, v22
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v21, v21, v28
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v23, v23
	v_exp_f32_e32 v25, v25
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s6
	v_ldexp_f32 v19, v19, v27
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v37, null, v22, v22, v14
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v61, -v26, v42, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s5
	v_ldexp_f32 v24, v24, v34
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v50, v37
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v23, v23, v31
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v42, v61, v42
	v_div_scale_f32 v31, null, v21, v21, v13
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v25, v25, v33
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v28, null, v19, v19, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v44, v31
	v_div_scale_f32 v33, null, v20, v20, v12
	v_div_scale_f32 v41, null, v24, v24, v16
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v43, v28
	v_fma_f32 v66, -v37, v50, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v45, v33
	v_rcp_f32_e32 v52, v41
	v_fma_f32 v63, -v31, v44, 1.0
	v_fmac_f32_e32 v50, v66, v50
	v_div_scale_f32 v39, null, v25, v25, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v23, 1.0, v23 :: v_dual_fmac_f32 v44, v63, v44
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v62, -v28, v43, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v51, v39
	v_div_scale_f32 v27, s0, v1, v18, v1
	v_div_scale_f32 v35, null, v23, v23, v15
	v_div_scale_f32 v30, vcc_lo, v11, v19, v11
	v_fma_f32 v64, -v33, v45, 1.0
	v_fma_f32 v68, -v41, v52, 1.0
	v_fmac_f32_e32 v43, v62, v43
	v_rcp_f32_e32 v49, v35
	v_div_scale_f32 v34, s2, v12, v20, v12
	v_div_scale_f32 v53, s6, v16, v24, v16
	v_fma_f32 v67, -v39, v51, 1.0
	v_fmac_f32_e32 v52, v68, v52
	v_dual_fmac_f32 v45, v64, v45 :: v_dual_mul_f32 v62, v30, v43
	v_mul_f32_e32 v61, v27, v42
	v_div_scale_f32 v32, s1, v13, v21, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v51, v67, v51 :: v_dual_mul_f32 v64, v34, v45
	v_mul_f32_e32 v68, v53, v52
	v_fma_f32 v69, -v26, v61, v27
	v_fma_f32 v70, -v28, v62, v30
	v_div_scale_f32 v38, s4, v14, v22, v14
	v_fma_f32 v65, -v35, v49, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v63, v32, v44 :: v_dual_fmac_f32 v62, v70, v43
	v_fma_f32 v72, -v33, v64, v34
	v_fmac_f32_e32 v61, v69, v42
	v_div_scale_f32 v36, s3, v15, v23, v15
	v_dual_fmac_f32 v49, v65, v49 :: v_dual_mul_f32 v66, v38, v50
	v_fmac_f32_e32 v64, v72, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v26, -v26, v61, v27
	v_fma_f32 v27, -v28, v62, v30
	v_fma_f32 v71, -v31, v63, v32
	v_fma_f32 v74, -v37, v66, v38
	v_mul_f32_e32 v65, v36, v49
	v_fma_f32 v76, -v41, v68, v53
	v_div_fmas_f32 v27, v27, v43, v62
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v66, v74, v50
	v_fma_f32 v73, -v35, v65, v36
	v_fma_f32 v30, -v33, v64, v34
	v_div_fixup_f32 v11, v27, v19, v11
	v_fmac_f32_e32 v63, v71, v44
	v_div_fmas_f32 v26, v26, v42, v61
	v_dual_fmac_f32 v65, v73, v49 :: v_dual_fmac_f32 v68, v76, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v8, v8, v11
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v28, -v31, v63, v32
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v31, -v35, v65, v36
	v_fma_f32 v32, -v37, v66, v38
	v_div_fixup_f32 v1, v26, v18, v1
	v_div_fmas_f32 v28, v28, v44, v63
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v40, s5, v17, v25, v17
	v_div_fmas_f32 v19, v30, v45, v64
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v13, v28, v21, v13
	v_div_fmas_f32 v18, v31, v49, v65
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v12, v19, v20, v12
	v_div_fmas_f32 v11, v32, v50, v66
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v46.h, v46.l
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v34, -v41, v68, v53
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v7, v7, v12
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v11, v11, v22, v14
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v9, v9, v13
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v15, v18, v23, v15
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v1, v6, v1
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v57.l, v7.h
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v2, v2, v11
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v56.l, v9.h
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v67, v40, v51
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v54.l, v8.h
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v4, v4, v15
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v59.l, v2.h
	v_mov_b16_e32 v55.l, v1.h
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v75, -v39, v67, v40
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s1, v9, v9
	v_cmp_o_f32_e64 s4, v2, v2
	v_cmp_o_f32_e64 s0, v1, v1
	v_mov_b16_e32 v58.l, v4.h
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v67, v75, v51
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s3, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v33, -v39, v67, v40
	v_div_fmas_f32 v6, v33, v51, v67
	s_mov_b32 vcc_lo, s6
	v_div_fmas_f32 v13, v34, v52, v68
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v6, v6, v25, v17
	v_div_fixup_f32 v12, v13, v24, v16
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v13, 1, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v5, v5, v6 :: v_dual_and_b32 v6, 1, v56
	v_mul_f32_e32 v3, v3, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v8, v8, v13, 0x7fff
	v_and_b32_e32 v13, 1, v59
	v_add3_u32 v6, v9, v6, 0x7fff
	v_and_b32_e32 v12, 1, v57
	v_mov_b16_e32 v46.l, v5.h
	v_cndmask_b16 v8.h, 0x7fff, v8.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s1
	v_and_b32_e32 v11, 1, v55
	v_add3_u32 v2, v2, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v5, v5
	v_cndmask_b32_e32 v9, 0x3276, v48, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v1, v1, v11, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s4
	v_and_b32_e32 v2, 1, v46
	v_cmp_o_f32_e64 s2, v7, v7
	v_add3_u32 v0, v7, v12, 0x7fff
	v_cndmask_b32_e32 v7, 0x1054, v47, vcc_lo
	v_and_b32_e32 v11, 1, v58
	v_add3_u32 v2, v5, v2, 0x7fff
	v_cndmask_b16 v8.l, 0x7fff, v1.h, s0
	v_cndmask_b16 v6.l, 0x7fff, v0.h, s2
	v_lshl_or_b32 v5, v7, 8, v7
	v_add3_u32 v4, v4, v11, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s5
	v_lshl_or_b32 v7, v9, 8, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v2, 0x540054, v5
	v_mov_b16_e32 v60.l, v3.h
	v_cmp_o_f32_e64 s0, v3, v3
	v_cndmask_b16 v1.h, 0x7fff, v4.h, s3
	v_and_b32_e32 v5, 0x760076, v7
	v_lshl_or_b32 v2, v2, 4, v2
	v_and_b32_e32 v11, 1, v60
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v7, v10, s7
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_dual_cndmask_b32 v4, v1, v8 :: v_dual_cndmask_b32 v1, v8, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v2, 0x5040504, v2
	v_add3_u32 v3, v3, v11, 0x7fff
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_and_or_b32 v8, 0x78, v29, s26
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_mov_b32 s26, s10
	v_permlanex16_b32 v1, v1, s8, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v0.l, 0x7fff, v3.h, s0
	v_lshl_or_b32 v3, v5, 4, v5
	v_dual_cndmask_b32 v5, v6, v0 :: v_dual_cndmask_b32 v6, v0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v3, 0x7060706, v3
	v_perm_b32 v0, v1, v4, v2
	v_permlanex16_b32 v5, v5, s8, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_perm_b32 v1, v1, v4, v3
	v_add_lshl_u32 v4, v8, v7, 1
	v_perm_b32 v2, v5, v6, v2
	v_perm_b32 v3, v5, v6, v3
	buffer_store_b128 v[0:3], v4, s[24:27], 0 offen
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 119
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 119
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9532
; TotalNumSgprs: 50
; NumVgprs: 119
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 119
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     119
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
