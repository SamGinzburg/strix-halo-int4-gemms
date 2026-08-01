	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v3, 15, v0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshlrev_b32_e32 v8, 2, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v14, 4, v0
	v_lshrrev_b32_e32 v86, 3, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v49, 1, v0
	v_lshlrev_b32_e32 v2, 3, v3
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b32_e32 v10, 3, v0
	v_lshlrev_b32_e32 v12, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v50, 0x70, v49
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v10, 0, v10
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s26, 63
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
	s_lshr_b32 s11, s11, 26
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
	s_ashr_i32 s9, s9, 6
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
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_and_b32_e32 v1, 28, v8
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
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s7, s4, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s20, s5, s17
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_lshl_b32 s34, s27, 1
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s21, s4, 63
.Ltmp13:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s7
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s7, s20, s17
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s18, s3, 5
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[4:5], null, s34, v14, v[2:3]
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s19, s4, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s23, s7, s6
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v7, s18, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s5, s21, 31
.Ltmp15:
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_mad_u64_u32 v[5:6], null, s19, v86, v[1:2]
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s23
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v9, s18, v14
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s4, s5, 26
.Ltmp17:
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s16
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s22, s34, s18
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s26, s7, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s7, s21, s4
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s19, v7
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s5, 32, v7
	.loc	1 126 14 is_stmt 1              ; generate_amdgcn.py:126:14
	s_lshl_b32 s33, s2, 6
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s6, s19, v9
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 32, v9
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s7, s7, 6
.Ltmp21:
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add3_u32 v4, s26, s22, v4
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	s_mul_i32 s16, s33, s19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_gt_i32 s21, 63
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_add3_u32 v5, s18, s16, v5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s16, s5, vcc_lo
	s_and_b32 s6, s4, s6
	.loc	1 228 43                        ; generate_amdgcn.py:228:43
	v_add_nc_u32_e32 v6, s27, v4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshrrev_b32_e32 v9, 2, v0
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s6
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_and_b32 s9, s9, 0xffff
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_and_b32 v9, 24, v9
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_and_b32 s37, s37, 0xffff
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b32 v11, v5, s[8:11], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_clause 0x1
	buffer_load_b64 v[4:5], v4, s[36:39], 0 offen
	buffer_load_b64 v[6:7], v6, s[36:39], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xor_b32_e32 v8, v8, v9
	s_mov_b32 s6, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s21, 0x7f
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v9, 0, v8
	v_or_b32_e32 v8, v50, v3
	s_waitcnt vmcnt(2)
	ds_store_b32 v9, v11 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v10, v[4:5], v[6:7] offset1:8
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v4, 0x218, v12
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b32_e32 v88, v50, v3
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_mov_b64 s[30:31], s[10:11]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshl_or_b32 v4, v3, 5, v4
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b32_e32 v52, 0x80, v88
	v_or_b32_e32 v53, 0x100, v88
	v_or_b32_e32 v54, 0x180, v88
	v_or_b32_e32 v55, 0x200, v88
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xor_b32_e32 v5, 8, v4
	v_xor_b32_e32 v6, 16, v4
	v_xor_b32_e32 v7, 24, v4
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b32_e32 v56, 0x280, v88
	v_or_b32_e32 v57, 0x300, v88
	v_or_b32_e32 v58, 0x380, v88
	v_or_b32_e32 v59, 0x400, v88
	v_or_b32_e32 v60, 0x480, v88
	v_or_b32_e32 v61, 0x500, v88
	v_or_b32_e32 v62, 0x580, v88
	v_or_b32_e32 v63, 0x600, v88
	v_or_b32_e32 v64, 0x680, v88
	v_or_b32_e32 v65, 0x700, v88
	v_or_b32_e32 v66, 0x780, v88
	v_or_b32_e32 v67, 0x800, v88
	v_or_b32_e32 v68, 0x880, v88
	v_or_b32_e32 v69, 0x900, v88
	v_or_b32_e32 v70, 0x980, v88
	v_or_b32_e32 v71, 0xa00, v88
	v_or_b32_e32 v72, 0xa80, v88
	v_or_b32_e32 v73, 0xb00, v88
	v_or_b32_e32 v74, 0xb80, v88
	v_or_b32_e32 v75, 0xc00, v88
	v_or_b32_e32 v76, 0xc80, v88
	v_or_b32_e32 v77, 0xd00, v88
	v_or_b32_e32 v78, 0xd80, v88
	v_or_b32_e32 v79, 0xe00, v88
	v_or_b32_e32 v80, 0xe80, v88
	v_or_b32_e32 v81, 0xf00, v88
	v_or_b32_e32 v82, 0xf80, v88
	s_mov_b32 s6, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr28_sgpr29
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr88
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
                                        ; implicit-def: $vgpr80
                                        ; implicit-def: $vgpr81
                                        ; implicit-def: $vgpr82
.LBB0_3:                                ; %Flow326
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_dual_mov_b32 v18, 0 :: v_dual_and_b32 v11, 16, v14
	v_bfe_u32 v51, v0, 4, 1
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v42, 0
	v_mov_b32_e32 v25, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_add_i32 s0, s7, -1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v42, 0 :: v_dual_and_b32 v15, 0xe0, v0
	v_dual_mov_b32 v43, 0 :: v_dual_lshlrev_b32 v16, 1, v14
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_add3_u32 v17, s33, v11, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v18, s20, 8, v15
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v4, 0x218, v12
	v_lshl_or_b32 v16, s3, 6, v16
	s_lshl_b32 s3, s17, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v20, s34, v18
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v19, 32, v17
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v21, 0x41, v16
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v22, 64, v16
	v_mul_lo_u32 v17, s7, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v21, s27, v21
	v_subrev_nc_u32_e32 v16, s3, v20
	v_mul_lo_u32 v20, s27, v22
	s_lshl_b32 s20, s20, 7
	v_mul_lo_u32 v19, s7, v19
	v_subrev_nc_u32_e32 v83, s3, v18
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v18, s33, v86
	v_dual_mov_b32 v36, 0 :: v_dual_lshlrev_b32 v85, 1, v17
	v_add3_u32 v17, v21, s20, v2
	v_add3_u32 v2, v20, s20, v2
	v_lshl_or_b32 v4, v3, 5, v4
	s_lshl_b32 s17, s17, 7
	v_sub_nc_u32_e32 v13, s19, v1
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v12, 0, v8
	v_subrev_nc_u32_e32 v87, s17, v2
	v_mad_u64_u32 v[1:2], null, s19, v18, v[1:2]
	v_xor_b32_e32 v5, 8, v4
	v_xor_b32_e32 v6, 16, v4
	v_xor_b32_e32 v7, 24, v4
	v_or_b32_e32 v52, 0x80, v8
	v_or_b32_e32 v53, 0x100, v8
	v_or_b32_e32 v54, 0x180, v8
	v_or_b32_e32 v55, 0x200, v8
	v_or_b32_e32 v56, 0x280, v8
	v_or_b32_e32 v57, 0x300, v8
	v_or_b32_e32 v58, 0x380, v8
	v_or_b32_e32 v59, 0x400, v8
	v_or_b32_e32 v60, 0x480, v8
	v_or_b32_e32 v61, 0x500, v8
	v_or_b32_e32 v62, 0x580, v8
	v_or_b32_e32 v63, 0x600, v8
	v_or_b32_e32 v64, 0x680, v8
	v_or_b32_e32 v65, 0x700, v8
	v_or_b32_e32 v66, 0x780, v8
	v_or_b32_e32 v67, 0x800, v8
	v_or_b32_e32 v68, 0x880, v8
	v_or_b32_e32 v69, 0x900, v8
	v_or_b32_e32 v70, 0x980, v8
	v_or_b32_e32 v71, 0xa00, v8
	v_or_b32_e32 v72, 0xa80, v8
	v_or_b32_e32 v73, 0xb00, v8
	v_or_b32_e32 v74, 0xb80, v8
	v_or_b32_e32 v75, 0xc00, v8
	v_or_b32_e32 v76, 0xc80, v8
	v_or_b32_e32 v77, 0xd00, v8
	v_or_b32_e32 v78, 0xd80, v8
	v_or_b32_e32 v79, 0xe00, v8
	v_or_b32_e32 v80, 0xe80, v8
	v_or_b32_e32 v81, 0xf00, v8
	v_or_b32_e32 v82, 0xf80, v8
	v_sub_nc_u32_e32 v14, s19, v14
	v_dual_mov_b32 v28, 0 :: v_dual_lshlrev_b32 v15, 1, v51
	v_dual_mov_b32 v35, 0 :: v_dual_lshlrev_b32 v84, 1, v19
	v_subrev_nc_u32_e32 v86, s17, v17
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v18, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b32 s16, 0
	s_max_i32 s6, s0, 1
	s_mov_b64 s[28:29], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_lshl_b32 s1, s27, 2
	s_lshl_b32 s3, s6, 1
	s_lshl_b32 s6, s27, 6
	s_add_i32 s35, s18, 32
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
	v_cmp_lt_i32_e32 vcc_lo, s35, v13
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v96, s35, v1
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v95, s23 :: v_dual_add_nc_u32 v2, s12, v85
	v_dual_mov_b32 v94, s22 :: v_dual_add_nc_u32 v97, s12, v84
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s5
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_mov_b32_e32 v93, s21
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e32 v96, 0x80000000, v96, vcc_lo
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v91, s19 :: v_dual_add_nc_u32 v98, 0, v4
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v116, v2, s[44:47], 0 offen
	buffer_load_u16 v117, v97, s[44:47], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b32 v2, v96, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v96, v12 offset:640
	ds_load_u8 v97, v12 offset:896
	ds_load_u8 v99, v12 offset:768
	ds_load_u8 v100, v12 offset:512
	ds_load_u8 v101, v12 offset:128
	ds_load_u8 v102, v12 offset:384
	ds_load_u8 v103, v12 offset:256
	ds_load_u8 v104, v12
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v105, v12 offset:4736
	ds_load_u8 v110, v12 offset:4992
	ds_load_u8 v111, v12 offset:4864
	ds_load_u8 v112, v12 offset:4608
	ds_load_u8 v113, v12 offset:4224
	ds_load_u8 v114, v12 offset:4352
	ds_load_u8 v115, v12 offset:4096
	ds_load_u8 v118, v12 offset:4480
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[106:109], v98 offset0:16 offset1:18
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v119, v12 offset:1664
	v_dual_mov_b32 v92, s20 :: v_dual_mov_b32 v89, s17
	v_mov_b32_e32 v90, s18
	v_mov_b32_e32 v88, s16
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v97, v99, v97, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v96, v100, v96, 0xc0c0004
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s35, v14
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s12, s12, 2
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v99, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v98, v104, v101, 0xc0c0004
	v_lshl_or_b32 v97, v97, 16, v96
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v101, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v100, v112, v105, 0xc0c0004
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v96, v99, 16, v98
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s35, s35, 32
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v102, v115, v113, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v103, v114, v118, 0xc0c0004
	v_lshl_or_b32 v111, v101, 16, v100
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[96:97], v[106:107], v[88:95] neg_lo:[1,1,0]
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s3, s12
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v110, v103, 16, v102
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[98:105], v[96:97], v[108:109], v[88:95] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v96, 0, v5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[130:137], v[110:111], v[106:107], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[138:145], v[110:111], v[108:109], v[88:95] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v88, v12 offset:1792
	ds_load_u8 v89, v12 offset:1536
	ds_load_u8 v90, v12 offset:1920
	ds_load_u8 v91, v12 offset:1152
	ds_load_u8 v92, v12 offset:1408
	ds_load_u8 v93, v12 offset:1280
	ds_load_u8 v94, v12 offset:1024
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v95, v12 offset:5632
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v89, v89, v119, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v88, v88, v90, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v90, v12 offset:5760
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v91, v94, v91, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v94, v12 offset:5888
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v93, v88, 16, v89
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v88, v12 offset:6016
	ds_load_u8 v89, v12 offset:5504
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v92, v92, 16, v91
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v91, v12 offset:5248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v90, v95, v90, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v88, v94, v88, 0xc0c0004
	ds_load_u8 v94, v12 offset:5376
	ds_load_u8 v95, v12 offset:5120
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v89, v94, v89, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v95, v91, 0xc0c0004
	v_lshl_or_b32 v95, v88, 16, v90
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v94, v89, 16, v91
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[88:91], v96 offset0:16 offset1:18
	v_add_nc_u32_e32 v96, 0, v6
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[92:93], v[88:89], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[92:93], v[90:91], v[98:105] neg_lo:[1,1,0]
	ds_load_u8 v92, v12 offset:2688
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[130:137], v[94:95], v[88:89], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[138:145], v[94:95], v[90:91], v[138:145] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v88, v12 offset:2816
	ds_load_u8 v89, v12 offset:2560
	ds_load_u8 v90, v12 offset:2944
	ds_load_u8 v91, v12 offset:2176
	ds_load_u8 v93, v12 offset:2432
	ds_load_u8 v94, v12 offset:2304
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v95, v12 offset:6912
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v88, v88, v90, 0xc0c0004
	v_perm_b32 v89, v89, v92, 0xc0c0004
	ds_load_u8 v92, v12 offset:2048
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v90, v12 offset:6784
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	v_perm_b32 v92, v94, v93, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v94, v12 offset:6656
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v93, v88, 16, v89
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v88, v12 offset:7040
	ds_load_u8 v89, v12 offset:6528
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v92, v92, 16, v91
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v91, v12 offset:6272
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v90, v94, v90, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v88, v95, v88, 0xc0c0004
	ds_load_u8 v94, v12 offset:6400
	ds_load_u8 v95, v12 offset:6144
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v89, v94, v89, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v95, v91, 0xc0c0004
	v_lshl_or_b32 v95, v88, 16, v90
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v94, v89, 16, v91
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[88:91], v96 offset0:16 offset1:18
	v_add_nc_u32_e32 v96, 0, v7
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[92:93], v[88:89], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[92:93], v[90:91], v[98:105] neg_lo:[1,1,0]
	ds_load_u8 v92, v12 offset:3712
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[130:137], v[94:95], v[88:89], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[138:145], v[94:95], v[90:91], v[138:145] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v88, v12 offset:3840
	ds_load_u8 v89, v12 offset:3584
	ds_load_u8 v90, v12 offset:3968
	ds_load_u8 v91, v12 offset:3200
	ds_load_u8 v93, v12 offset:3456
	ds_load_u8 v94, v12 offset:3328
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v95, v12 offset:7936
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v89, v89, v92, 0xc0c0004
	ds_load_u8 v92, v12 offset:3072
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v88, v88, v90, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v90, v12 offset:7808
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	v_perm_b32 v92, v94, v93, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v94, v12 offset:7680
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v93, v88, 16, v89
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v88, v12 offset:8064
	ds_load_u8 v89, v12 offset:7552
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v92, v92, 16, v91
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	ds_load_u8 v91, v12 offset:7296
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v90, v94, v90, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v88, v95, v88, 0xc0c0004
	ds_load_u8 v94, v12 offset:7424
	ds_load_u8 v95, v12 offset:7168
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v116, 16, v116
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v89, v94, v89, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v95, v91, 0xc0c0004
	v_lshl_or_b32 v95, v88, 16, v90
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v94, v89, 16, v91
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[88:91], v96 offset0:16 offset1:18
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[92:93], v[88:89], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[92:93], v[90:91], v[98:105] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[130:137], v[94:95], v[88:89], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[138:145], v[94:95], v[90:91], v[138:145] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v119, v123
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v123, v15, v83
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v120, v122
	v_cvt_f32_i32_e32 v115, v124
	v_cvt_f32_i32_e32 v113, v125
	v_cvt_f32_i32_e32 v92, v126
	v_cvt_f32_i32_e32 v93, v127
	v_cvt_f32_i32_e32 v88, v128
	v_cvt_f32_i32_e32 v89, v129
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v126, v123, s[40:43], 0 offen
	buffer_load_u16 v127, v123, s[40:43], 0 offen offset:4
	buffer_load_u16 v128, v123, s[40:43], 0 offen offset:8
	buffer_load_u16 v129, v123, s[40:43], 0 offen offset:12
	buffer_load_u16 v124, v123, s[40:43], 0 offen offset:16
	buffer_load_u16 v125, v123, s[40:43], 0 offen offset:20
	buffer_load_u16 v122, v123, s[40:43], 0 offen offset:24
	buffer_load_u16 v123, v123, s[40:43], 0 offen offset:28
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v121, v98
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v98, v130
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v119, v116, v119 :: v_dual_lshlrev_b32 v130, 16, v117
	v_mul_f32_e32 v120, v116, v120
	v_cvt_f32_i32_e32 v112, v101
	v_cvt_f32_i32_e32 v118, v99
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v121, v130, v121
	v_cvt_f32_i32_e32 v114, v100
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v107, v138
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v112, v130, v112
	v_cvt_f32_i32_e32 v103, v103
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v111, v141
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v114, v130, v114 :: v_dual_add_nc_u32 v83, s1, v83
	v_cvt_f32_i32_e32 v101, v102
	v_cvt_f32_i32_e32 v100, v104
	v_cvt_f32_i32_e32 v102, v105
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v110, v139
	v_cvt_f32_i32_e32 v108, v140
	v_cvt_f32_i32_e32 v105, v142
	v_cvt_f32_i32_e32 v109, v143
	v_cvt_f32_i32_e32 v104, v144
	v_cvt_f32_i32_e32 v106, v145
	v_cvt_f32_i32_e32 v99, v131
	v_cvt_f32_i32_e32 v96, v132
	v_cvt_f32_i32_e32 v97, v133
	v_cvt_f32_i32_e32 v94, v134
	v_cvt_f32_i32_e32 v95, v135
	v_cvt_f32_i32_e32 v90, v136
	v_cvt_f32_i32_e32 v91, v137
	v_mul_f32_e32 v109, v130, v109
	v_mul_f32_e32 v106, v130, v106
	v_mul_f32_e32 v107, v130, v107
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v103, v130, v103
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v111, v130, v111
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v117, 16, v126
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v126, 16, v128
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v48, v121, v117
	v_fmac_f32_e32 v47, v120, v117
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v117, 16, v127
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v118, v130, v118 :: v_dual_lshlrev_b32 v127, 16, v129
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_dual_cndmask_b32 v121, 0x80000000, v87 :: v_dual_fmac_f32 v40, v114, v126
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v87, s6, v87
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v43, v119, v117
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v115, v116, v115 :: v_dual_add_nc_u32 v120, v15, v16
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v41, v112, v127
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v112, v116, v113
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v45, v118, v117
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	s_clause 0x3
	buffer_load_u16 v117, v120, s[40:43], 0 offen
	buffer_load_u16 v119, v120, s[40:43], 0 offen offset:4
	buffer_load_u16 v114, v120, s[40:43], 0 offen offset:8
	buffer_load_u16 v128, v120, s[40:43], 0 offen offset:16
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v36, v115, v126
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x1
	buffer_load_u16 v115, v120, s[40:43], 0 offen offset:12
	buffer_load_u16 v126, v120, s[40:43], 0 offen offset:20
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_dual_cndmask_b32 v118, 0x80000000, v86 :: v_dual_fmac_f32 v37, v112, v127
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x1
	buffer_load_u16 v127, v120, s[40:43], 0 offen offset:28
	buffer_load_u16 v120, v120, s[40:43], 0 offen offset:24
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b64 v[112:113], v121, s[36:39], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v121, v130, v101 :: v_dual_add_nc_u32 v16, s1, v16
	v_dual_mul_f32 v129, v130, v100 :: v_dual_mul_f32 v98, v116, v98
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	buffer_load_b64 v[100:101], v118, s[36:39], 0 offen
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v110, v130, v110 :: v_dual_mul_f32 v99, v116, v99
	v_mul_f32_e32 v108, v130, v108
	v_mul_f32_e32 v105, v130, v105
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v102, v130, v102 :: v_dual_mul_f32 v97, v116, v97
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v104, v130, v104
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v96, v116, v96 :: v_dual_lshlrev_b32 v123, 16, v123
	v_dual_mul_f32 v95, v116, v95 :: v_dual_lshlrev_b32 v124, 16, v124
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v92, v116, v92
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v91, v116, v91 :: v_dual_lshlrev_b32 v122, 16, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v88, v116, v88 :: v_dual_fmac_f32 v17, v102, v123
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v86, s6, v86
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v32, v121, v124
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v19, v88, v122
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_barrier
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v93, v116, v93
	v_mul_f32_e32 v89, v116, v89
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_store_b32 v9, v2 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v10, v[112:113], v[100:101] offset1:8
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v118, 16, v119
	v_lshlrev_b32_e32 v117, 16, v117
	v_lshlrev_b32_e32 v115, 16, v115
	v_lshlrev_b32_e32 v114, 16, v114
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v119, 16, v125
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v125, 16, v126
	v_lshlrev_b32_e32 v126, 16, v128
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v94, v116, v94 :: v_dual_lshlrev_b32 v127, 16, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v29, v93, v119 :: v_dual_lshlrev_b32 v120, 16, v120
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v90, v116, v90 :: v_dual_fmac_f32 v25, v98, v117
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v33, v103, v119 :: v_dual_fmac_f32 v28, v92, v124
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v35, v97, v115
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v18, v129, v122 :: v_dual_fmac_f32 v27, v95, v125
	v_dual_fmac_f32 v20, v89, v123 :: v_dual_fmac_f32 v21, v90, v120
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v42, v99, v118 :: v_dual_fmac_f32 v31, v109, v125
	v_dual_fmac_f32 v34, v96, v114 :: v_dual_fmac_f32 v39, v111, v115
	v_dual_fmac_f32 v26, v94, v126 :: v_dual_fmac_f32 v23, v104, v120
	v_fmac_f32_e32 v22, v91, v127
	v_fmac_f32_e32 v46, v107, v117
	v_fmac_f32_e32 v44, v110, v118
	v_fmac_f32_e32 v38, v108, v114
	v_fmac_f32_e32 v30, v105, v126
	v_fmac_f32_e32 v24, v106, v127
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v88, v8
.LBB0_7:                                ; %._crit_edge
	.loc	1 126 32 is_stmt 1              ; generate_amdgcn.py:126:32
	v_or_b32_e32 v84, v11, v3
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_mul_i32 s3, s33, s7
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s1, s0, 0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v3, 0, v6
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_add_i32 s3, s3, s1
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v85, 32, v84
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s7, v84
	v_add_nc_u32_e32 v103, 0, v62
	v_add_nc_u32_e32 v104, 0, v61
	v_add_nc_u32_e32 v106, 0, v60
	v_mul_lo_u32 v2, s7, v85
	v_mov_b32_e32 v62, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_cndmask_b32_e64 v89, 0, 1, s2
	v_add_nc_u32_e32 v92, 0, v82
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v1, s3, v1, 1
	v_add_nc_u32_e32 v81, 0, v81
	v_add_nc_u32_e32 v80, 0, v80
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_cmp_ne_u32_e64 s0, 1, v89
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v2, s3, v2, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_add_nc_u32_e32 v93, 0, v79
	v_add_nc_u32_e32 v78, 0, v78
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v77, 0, v77
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v76, 0, v76
	s_clause 0x1
	buffer_load_u16 v86, v1, s[28:31], 0 offen
	buffer_load_u16 v87, v2, s[28:31], 0 offen
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v1, 0, v4
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v2, 0, v5
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v4, 0, v7
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[13:16], v1 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[9:12], v2 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[5:8], v3 offset0:16 offset1:18
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[1:4], v4 offset0:16 offset1:18
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v79, 0, v75
	v_add_nc_u32_e32 v97, 0, v74
	v_add_nc_u32_e32 v73, 0, v73
	v_add_nc_u32_e32 v100, 0, v72
	v_add_nc_u32_e32 v101, 0, v71
	v_add_nc_u32_e32 v74, 0, v70
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v96, 0, v69
	v_add_nc_u32_e32 v98, 0, v68
	v_add_nc_u32_e32 v99, 0, v67
	v_add_nc_u32_e32 v105, 0, v66
	v_add_nc_u32_e32 v102, 0, v65
	v_add_nc_u32_e32 v108, 0, v64
	v_add_nc_u32_e32 v109, 0, v63
	v_add_nc_u32_e32 v107, 0, v59
	v_add_nc_u32_e32 v114, 0, v58
	v_add_nc_u32_e32 v110, 0, v57
	v_add_nc_u32_e32 v116, 0, v56
	v_add_nc_u32_e32 v117, 0, v55
	v_add_nc_u32_e32 v112, 0, v54
	v_add_nc_u32_e32 v113, 0, v53
	v_add_nc_u32_e32 v111, 0, v52
	v_add_nc_u32_e32 v115, 0, v88
	v_mov_b32_e32 v63, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_mov_b32_e32 v65, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v54, 0
	v_mov_b32_e32 v55, 0
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	ds_load_u8 v52, v116
	ds_load_u8 v53, v117
	ds_load_u8 v54, v114
	ds_load_u8 v55, v115
	ds_load_u8 v56, v112
	ds_load_u8 v57, v113
	ds_load_u8 v58, v110
	ds_load_u8 v59, v111
	ds_load_u8 v62, v100
	ds_load_u8 v63, v101
	ds_load_u8 v64, v97
	ds_load_u8 v75, v98
	ds_load_u8 v82, v99
	ds_load_u8 v88, v74
	ds_load_u8 v89, v96
	ds_load_u8 v90, v73
	ds_load_u8 v91, v80
	ds_load_u8 v94, v93
	ds_load_u8 v95, v92
	ds_load_u8 v126, v76
	ds_load_u8 v127, v79
	ds_load_u8 v128, v78
	ds_load_u8 v129, v77
	ds_load_u8 v130, v81
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v72, s11 :: v_dual_mov_b32 v71, s10
	v_dual_mov_b32 v70, s9 :: v_dual_mov_b32 v69, s8
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	v_dual_mov_b32 v68, s7 :: v_dual_mov_b32 v67, s6
	v_dual_mov_b32 v66, s5 :: v_dual_mov_b32 v65, s4
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v53, v58, v54, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v54, v55, v59, 0xc0c0004
	v_perm_b32 v55, v57, v56, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v53, v53, 16, v52
	v_lshl_or_b32 v52, v55, 16, v54
	ds_load_u8 v54, v108
	ds_load_u8 v55, v109
	ds_load_u8 v56, v105
	ds_load_u8 v57, v106
	ds_load_u8 v58, v107
	ds_load_u8 v59, v103
	ds_load_u8 v60, v104
	ds_load_u8 v61, v102
	v_wmma_i32_16x16x16_iu4 v[118:125], v[52:53], v[13:14], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[52:53], v[15:16], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v52, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v61, v56, 0xc0c0004
	v_perm_b32 v56, v58, v57, 0xc0c0004
	v_perm_b32 v57, v60, v59, 0xc0c0004
	v_perm_b32 v58, v82, v75, 0xc0c0004
	v_perm_b32 v59, v89, v88, 0xc0c0004
	v_lshl_or_b32 v55, v55, 16, v54
	v_perm_b32 v60, v127, v126, 0xc0c0004
	v_lshl_or_b32 v54, v57, 16, v56
	v_perm_b32 v56, v63, v62, 0xc0c0004
	v_perm_b32 v57, v90, v64, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v52, v52, 16, v60
	v_wmma_i32_16x16x16_iu4 v[118:125], v[54:55], v[9:10], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[54:55], v[11:12], v[65:72] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v57, v57, 16, v56
	v_lshl_or_b32 v56, v59, 16, v58
	v_perm_b32 v58, v94, v91, 0xc0c0004
	v_perm_b32 v59, v130, v95, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[118:125], v[56:57], v[5:6], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[56:57], v[7:8], v[65:72] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v59, 16, v58
	v_wmma_i32_16x16x16_iu4 v[118:125], v[52:53], v[1:2], v[118:125] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[52:53], v[3:4], v[65:72] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v61, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v63, v119
	v_cvt_f32_i32_e32 v62, v120
	v_cvt_f32_i32_e32 v64, v121
	v_cvt_f32_i32_e32 v59, v122
	v_cvt_f32_i32_e32 v60, v123
	v_cvt_f32_i32_e32 v52, v124
	v_cvt_f32_i32_e32 v53, v125
	v_cvt_f32_i32_e32 v90, v65
	v_cvt_f32_i32_e32 v91, v66
	v_cvt_f32_i32_e32 v75, v67
	v_cvt_f32_i32_e32 v82, v68
	v_cvt_f32_i32_e32 v65, v69
	v_cvt_f32_i32_e32 v67, v70
	v_cvt_f32_i32_e32 v54, v71
	v_cvt_f32_i32_e32 v55, v72
.LBB0_9:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v95, 0
	v_mov_b32_e32 v94, 0
	v_mov_b32_e32 v58, 0
	v_mov_b32_e32 v72, 0
	.loc	1 229 36 is_stmt 1              ; generate_amdgcn.py:229:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	ds_load_u8 v56, v116 offset:4096
	ds_load_u8 v57, v117 offset:4096
	ds_load_u8 v58, v114 offset:4096
	ds_load_u8 v66, v115 offset:4096
	ds_load_u8 v68, v112 offset:4096
	ds_load_u8 v69, v113 offset:4096
	ds_load_u8 v70, v110 offset:4096
	ds_load_u8 v71, v111 offset:4096
	ds_load_u8 v88, v100 offset:4096
	ds_load_u8 v89, v101 offset:4096
	ds_load_u8 v110, v97 offset:4096
	ds_load_u8 v111, v98 offset:4096
	ds_load_u8 v112, v99 offset:4096
	ds_load_u8 v74, v74 offset:4096
	ds_load_u8 v113, v96 offset:4096
	ds_load_u8 v73, v73 offset:4096
	ds_load_u8 v80, v80 offset:4096
	ds_load_u8 v93, v93 offset:4096
	ds_load_u8 v92, v92 offset:4096
	ds_load_u8 v76, v76 offset:4096
	ds_load_u8 v79, v79 offset:4096
	ds_load_u8 v78, v78 offset:4096
	ds_load_u8 v77, v77 offset:4096
	ds_load_u8 v81, v81 offset:4096
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v101, s11 :: v_dual_mov_b32 v100, s10
	v_dual_mov_b32 v99, s9 :: v_dual_mov_b32 v98, s8
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	v_dual_mov_b32 v97, s7 :: v_dual_mov_b32 v96, s6
	v_dual_mov_b32 v95, s5 :: v_dual_mov_b32 v94, s4
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v57, v70, v58, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v58, v66, v71, 0xc0c0004
	v_perm_b32 v66, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v57, v57, 16, v56
	v_lshl_or_b32 v56, v66, 16, v58
	ds_load_u8 v58, v108 offset:4096
	ds_load_u8 v66, v109 offset:4096
	ds_load_u8 v68, v105 offset:4096
	ds_load_u8 v69, v106 offset:4096
	ds_load_u8 v70, v107 offset:4096
	ds_load_u8 v71, v103 offset:4096
	ds_load_u8 v72, v104 offset:4096
	ds_load_u8 v83, v102 offset:4096
	v_wmma_i32_16x16x16_iu4 v[102:109], v[56:57], v[13:14], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[94:101], v[56:57], v[15:16], v[94:101] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v15, v77, v78, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v58, v66, v58, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v83, v68, 0xc0c0004
	v_perm_b32 v68, v70, v69, 0xc0c0004
	v_perm_b32 v69, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v14, v66, 16, v58
	v_perm_b32 v58, v89, v88, 0xc0c0004
	v_lshl_or_b32 v13, v69, 16, v68
	v_perm_b32 v66, v73, v110, 0xc0c0004
	v_perm_b32 v68, v112, v111, 0xc0c0004
	v_perm_b32 v69, v113, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[13:14], v[9:10], v[102:109] neg_lo:[1,1,0]
	v_lshl_or_b32 v10, v66, 16, v58
	v_perm_b32 v58, v93, v80, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v9, v69, 16, v68
	v_perm_b32 v66, v81, v92, 0xc0c0004
	v_perm_b32 v68, v79, v76, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[94:101], v[13:14], v[11:12], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[9:10], v[5:6], v[102:109] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v6, v66, 16, v58
	v_lshl_or_b32 v5, v15, 16, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[94:101], v[9:10], v[7:8], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[5:6], v[1:2], v[102:109] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[94:101], v[5:6], v[3:4], v[94:101] neg_lo:[1,1,0]
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v83, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v70, v103
	v_cvt_f32_i32_e32 v69, v104
	v_cvt_f32_i32_e32 v71, v105
	v_cvt_f32_i32_e32 v66, v106
	v_cvt_f32_i32_e32 v68, v107
	v_cvt_f32_i32_e32 v56, v108
	v_cvt_f32_i32_e32 v57, v109
	v_cvt_f32_i32_e32 v118, v94
	v_cvt_f32_i32_e32 v119, v95
	v_cvt_f32_i32_e32 v94, v96
	v_cvt_f32_i32_e32 v95, v97
	v_cvt_f32_i32_e32 v88, v98
	v_cvt_f32_i32_e32 v89, v99
	v_cvt_f32_i32_e32 v58, v100
	v_cvt_f32_i32_e32 v72, v101
.LBB0_11:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v1, v51, v50
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s1, s1, s34
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s17, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s26, s1
	s_mov_b32 s19, 0x31027000
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_or_b32_e32 v2, 2, v1
	v_or_b32_e32 v3, 4, v1
	v_or_b32_e32 v4, 6, v1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v7, s0, v1, 1
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v92, 12, v1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v8, s0, v2, 1
	v_add_lshl_u32 v9, s0, v3, 1
	v_add_lshl_u32 v10, s0, v4, 1
	.loc	1 235 35                        ; generate_amdgcn.py:235:35
	s_add_i32 s1, s0, s27
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v5, 8, v1
	v_or_b32_e32 v6, 10, v1
	v_or_b32_e32 v11, 14, v1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v16, s1, v1, 1
	v_add_lshl_u32 v2, s1, v2, 1
	v_add_lshl_u32 v1, s1, v92, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v3, s1, v3, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v4, s1, v4, 1
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s16, s14
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	s_clause 0x3
	buffer_load_u16 v50, v7, s[16:19], 0 offen
	buffer_load_u16 v14, v8, s[16:19], 0 offen
	buffer_load_u16 v12, v9, s[16:19], 0 offen
	buffer_load_u16 v13, v10, s[16:19], 0 offen
	v_add_lshl_u32 v8, s0, v6, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v9, 0x80000000, v16, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_add_lshl_u32 v6, s1, v6, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v15, s0, v5, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_add_lshl_u32 v5, s1, v5, 1
	s_clause 0x3
	buffer_load_u16 v51, v9, s[16:19], 0 offen
	buffer_load_u16 v78, v2, s[16:19], 0 offen
	buffer_load_u16 v73, v3, s[16:19], 0 offen
	buffer_load_u16 v74, v4, s[16:19], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v6, s2
	buffer_load_u16 v6, v1, s[16:19], 0 offen
	v_add_lshl_u32 v9, s1, v11, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	v_cndmask_b32_e64 v7, 0x80000000, v15, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v3, 0x80000000, v5, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v92, s0, v92, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v4, 0x80000000, v9, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x4
	buffer_load_u16 v77, v8, s[16:19], 0 offen
	buffer_load_u16 v76, v7, s[16:19], 0 offen
	buffer_load_u16 v80, v2, s[16:19], 0 offen
	buffer_load_u16 v79, v3, s[16:19], 0 offen
	buffer_load_u16 v81, v4, s[16:19], 0 offen
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v4.l, 0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(14)
	v_mov_b16_e32 v4.h, v87.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v11, s0, v11, 1
	v_cndmask_b32_e64 v92, 0x80000000, v92, s2
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v5.h, v86.l
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v3, s27, v84
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v5.l, v4.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v84, v91, v4
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v91, v95, v4
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v95, 0x80000000, v11, s2
	s_clause 0x1
	buffer_load_u16 v11, v92, s[16:19], 0 offen
	buffer_load_u16 v92, v95, s[16:19], 0 offen
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v2, 0x78, v49
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_mul_lo_u32 v1, s27, v85
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v85, v90, v4
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v87, v118, v4 :: v_dual_mul_f32 v64, v64, v5
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v90, v75, v4
	v_mul_f32_e32 v65, v65, v4
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v88, v88, v4 :: v_dual_mul_f32 v83, v83, v5
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v61, v61, v5
	v_dual_mul_f32 v67, v67, v4 :: v_dual_mul_f32 v62, v62, v5
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v66, v66, v5
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v82, v82, v4 :: v_dual_mul_f32 v63, v63, v5
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v70, v70, v5
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v59, v59, v5
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v86, v119, v4 :: v_dual_mul_f32 v69, v69, v5
	v_dual_mul_f32 v93, v94, v4 :: v_dual_mul_f32 v60, v60, v5
	v_dual_mul_f32 v72, v72, v4 :: v_dual_mul_f32 v71, v71, v5
	v_dual_mul_f32 v89, v89, v4 :: v_dual_mul_f32 v68, v68, v5
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v10.h, v4.l
	v_mov_b16_e32 v8.h, v4.l
	v_mov_b16_e32 v49.h, v4.l
	v_mov_b16_e32 v16.h, v4.l
	v_mov_b16_e32 v75.h, v4.l
	v_mov_b16_e32 v9.h, v4.l
	v_mov_b16_e32 v7.h, v4.l
	v_mov_b16_e32 v15.h, v4.l
	v_mov_b16_e32 v94.h, v4.l
	.loc	1 245 18 is_stmt 0              ; generate_amdgcn.py:245:18
	s_mul_i32 s33, s33, s27
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 245 18                        ; generate_amdgcn.py:245:18
	v_add3_u32 v2, s33, s26, v2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	v_and_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_add_lshl_u32 v1, v2, v1, 1
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v50, 16, v50
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v14, 16, v14
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v85, v85, v50, v48
	v_fma_f32 v50, v61, v50, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v48, v48, v85, s2
	v_cndmask_b32_e64 v47, v47, v50, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v51, 16, v51
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v61, 16, v74
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v50, v90, v12, v40
	v_fma_f32 v12, v62, v12, v36
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v74, 16, v77
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v40, v40, v50, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v77, 16, v80
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v36, v12, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v80, 16, v81
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v81, v87, v51, v46
	v_fma_f32 v51, v83, v51, v25
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v83, v84, v14, v45
	v_fma_f32 v14, v63, v14, v43
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v79, 16, v79
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v46, v46, v81, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v25, v25, v51, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v78, 16, v78
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v43, v14, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v36, 0xbfb8aa3b, v46
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v45, v45, v83, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v63, v70, v78, v42
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v70, v82, v13, v41
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v82, v91, v61, v39
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v13, v64, v13, v37
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v61, v71, v61, v35
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v42, v42, v63, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v73, 16, v73
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v39, v39, v82, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v76, 16, v76
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v13, v37, v13, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v37, 0xbfb8aa3b, v25
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v84, v86, v78, v44
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v50, 0xbfb8aa3b, v42
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v59, v59, v76, v28
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v62, v69, v73, v34
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v35, v35, v61, s2
	v_cndmask_b32_e64 v44, v44, v84, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v37
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v28, v28, v59, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v59, 0xbfb8aa3b, v39
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v64, v65, v76, v32
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v43, 0xbfb8aa3b, v44
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v65, v67, v74, v33
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v67, v88, v79, v30
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v60, v60, v74, v29
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v34, v34, v62, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v50
	v_mul_f32_e32 v61, 0xbfb8aa3b, v35
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v30, v30, v67, s2
	v_cndmask_b32_e64 v29, v29, v60, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v60, 0xbfb8aa3b, v34
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v69, v89, v77, v31
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v37, 0, 0x42800000, s0
	v_mul_f32_e32 v62, 0xbfb8aa3b, v30
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v66, v66, v79, v26
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v50, 0, 0x42800000, s3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v31, v31, v69, s2
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v78, v93, v73, v38
	v_fma_f32 v68, v68, v77, v27
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v26, v26, v66, s2
	v_cndmask_b32_e64 v32, v32, v64, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v63, 0xbfb8aa3b, v31
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v43
	v_mul_f32_e32 v64, 0xbfb8aa3b, v26
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v59
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v61
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v60
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v62
	v_dual_fmac_f32 v37, 0xbfb8aa3b, v25 :: v_dual_fmac_f32 v50, 0xbfb8aa3b, v42
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v38, v38, v78, s2
	v_cndmask_b32_e64 v27, v27, v68, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0x42800000, s1
	v_cndmask_b32_e64 v59, 0, 0x42800000, s4
	v_cndmask_b32_e64 v61, 0, 0x42800000, s6
	v_cndmask_b32_e64 v60, 0, 0x42800000, s7
	v_cndmask_b32_e64 v62, 0, 0x42800000, s9
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v64
	v_exp_f32_e32 v50, v50
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v33, v33, v65, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v51, 0xbfb8aa3b, v38
	v_dual_mul_f32 v65, 0xbfb8aa3b, v27 :: v_dual_fmac_f32 v36, 0xbfb8aa3b, v46
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v63
	v_cndmask_b32_e64 v64, 0, 0x42800000, s11
	v_dual_fmac_f32 v43, 0xbfb8aa3b, v44 :: v_dual_fmac_f32 v60, 0xbfb8aa3b, v34
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s3
	v_dual_fmac_f32 v59, 0xbfb8aa3b, v39 :: v_dual_fmac_f32 v62, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v61, 0xbfb8aa3b, v35 :: v_dual_fmac_f32 v64, 0xbfb8aa3b, v26
	v_exp_f32_e32 v37, v37
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v51
	v_cndmask_b32_e64 v63, 0, 0x42800000, s8
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s0
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v61, v61
	v_exp_f32_e32 v60, v60
	v_exp_f32_e32 v62, v62
	v_ldexp_f32 v50, v50, v69
	v_cndmask_b32_e64 v51, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v65
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s7
	v_dual_fmac_f32 v63, 0xbfb8aa3b, v31 :: v_dual_add_f32 v50, 1.0, v50
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s9
	v_exp_f32_e32 v43, v43
	v_ldexp_f32 v37, v37, v67
	v_cndmask_b32_e64 v65, 0, 0x42800000, s10
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s1
	v_exp_f32_e32 v59, v59
	v_ldexp_f32 v36, v36, v66
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v38
	v_ldexp_f32 v61, v61, v73
	v_ldexp_f32 v60, v60, v74
	v_ldexp_f32 v62, v62, v77
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v73, null, v50, v50, v42
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v41, v41, v70, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s4
	v_dual_fmac_f32 v65, 0xbfb8aa3b, v27 :: v_dual_add_f32 v60, 1.0, v60
	v_exp_f32_e32 v64, v64
	v_ldexp_f32 v43, v43, v68
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v51, v51
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v68, null, v37, v37, v25
	v_rcp_f32_e32 v98, v73
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s11
	v_exp_f32_e32 v63, v63
	v_ldexp_f32 v59, v59, v70
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v83, null, v60, v60, v34
	v_rcp_f32_e32 v96, v68
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s8
	v_exp_f32_e32 v65, v65
	v_ldexp_f32 v51, v51, v71
	v_ldexp_f32 v64, v64, v79
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v102, v83
	v_fma_f32 v110, -v73, v98, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v59, 1.0, v59
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, s10
	v_ldexp_f32 v63, v63, v76
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v64, 1.0, v64
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v66, null, v36, v36, v46
	v_div_scale_f32 v70, null, v43, v43, v44
	v_fma_f32 v108, -v68, v96, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v51, 1.0, v51 :: v_dual_fmac_f32 v98, v110, v98
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v76, null, v59, v59, v39
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v65, v65, v78
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v91, null, v64, v64, v26
	v_rcp_f32_e32 v95, v66
	v_rcp_f32_e32 v97, v70
	v_rcp_f32_e32 v99, v76
	v_fma_f32 v114, -v83, v102, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v63, 1.0, v63 :: v_dual_fmac_f32 v96, v108, v96
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v78, null, v51, v51, v38
	v_rcp_f32_e32 v106, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v102, v114, v102
	v_div_scale_f32 v85, null, v63, v63, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v100, v78
	v_div_scale_f32 v69, s1, v25, v37, v25
	v_rcp_f32_e32 v103, v85
	v_fma_f32 v107, -v66, v95, 1.0
	v_fma_f32 v109, -v70, v97, 1.0
	v_fma_f32 v111, -v76, v99, 1.0
	v_div_scale_f32 v67, s0, v46, v36, v46
	v_div_scale_f32 v71, vcc_lo, v44, v43, v44
	v_div_scale_f32 v74, s3, v42, v50, v42
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v112, -v78, v100, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v118, -v91, v106, 1.0
	v_fmac_f32_e32 v95, v107, v95
	v_dual_fmac_f32 v97, v109, v97 :: v_dual_mul_f32 v110, v74, v98
	v_dual_fmac_f32 v99, v111, v99 :: v_dual_mul_f32 v108, v69, v96
	v_div_scale_f32 v87, null, v62, v62, v30
	v_div_scale_f32 v84, s7, v34, v60, v34
	v_div_scale_f32 v93, s11, v26, v64, v26
	v_fma_f32 v115, -v85, v103, 1.0
	v_fmac_f32_e32 v100, v112, v100
	v_div_scale_f32 v81, null, v61, v61, v35
	v_dual_fmac_f32 v106, v118, v106 :: v_dual_mul_f32 v107, v67, v95
	v_fma_f32 v120, -v68, v108, v69
	v_mul_f32_e32 v109, v71, v97
	v_rcp_f32_e32 v104, v87
	v_rcp_f32_e32 v101, v81
	v_dual_fmac_f32 v103, v115, v103 :: v_dual_mul_f32 v114, v84, v102
	v_mul_f32_e32 v118, v93, v106
	v_fma_f32 v119, -v66, v107, v67
	v_fmac_f32_e32 v108, v120, v96
	v_fma_f32 v121, -v70, v109, v71
	v_div_scale_f32 v77, s4, v39, v59, v39
	v_fma_f32 v122, -v73, v110, v74
	v_fma_f32 v126, -v83, v114, v84
	v_fma_f32 v130, -v91, v118, v93
	v_fmac_f32_e32 v107, v119, v95
	v_fmac_f32_e32 v109, v121, v97
	v_fma_f32 v116, -v87, v104, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v79, s5, v38, v51, v38
	v_fma_f32 v113, -v81, v101, 1.0
	v_dual_mul_f32 v111, v77, v99 :: v_dual_fmac_f32 v110, v122, v98
	v_fmac_f32_e32 v114, v126, v102
	v_fmac_f32_e32 v118, v130, v106
	v_fma_f32 v66, -v66, v107, v67
	v_fma_f32 v67, -v68, v108, v69
	v_fma_f32 v68, -v70, v109, v71
	v_fmac_f32_e32 v104, v116, v104
	v_div_scale_f32 v89, null, v65, v65, v27
	v_div_scale_f32 v82, s6, v35, v61, v35
	v_dual_fmac_f32 v101, v113, v101 :: v_dual_mul_f32 v112, v79, v100
	v_fma_f32 v69, -v73, v110, v74
	v_div_fmas_f32 v68, v68, v97, v109
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v105, v89
	v_div_fmas_f32 v66, v66, v95, v107
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v123, -v76, v111, v77
	v_fma_f32 v124, -v78, v112, v79
	v_mul_f32_e32 v113, v82, v101
	v_div_fmas_f32 v69, v69, v98, v110
	v_div_fixup_f32 v43, v68, v43, v44
	v_div_scale_f32 v88, s9, v30, v62, v30
	v_fmac_f32_e32 v112, v124, v100
	v_fma_f32 v125, -v81, v113, v82
	v_div_fixup_f32 v42, v69, v50, v42
	v_fmac_f32_e32 v111, v123, v99
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v43, v45, v43
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v117, -v89, v105, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v14, v14, v42
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v70, -v76, v111, v77
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v10.l, v43.h
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v113, v125, v101
	v_div_scale_f32 v86, s8, v31, v63, v31
	v_dual_fmac_f32 v105, v117, v105 :: v_dual_mul_f32 v116, v88, v104
	v_fma_f32 v71, -v78, v112, v79
	v_div_fmas_f32 v44, v67, v96, v108
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v36, v66, v36, v46
	v_div_fmas_f32 v46, v70, v99, v111
	s_mov_b32 vcc_lo, s5
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v10, 1, v10
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v73, -v81, v113, v82
	v_div_scale_f32 v90, s10, v27, v65, v27
	v_fma_f32 v128, -v87, v116, v88
	v_mul_f32_e32 v115, v86, v103
	v_fma_f32 v74, -v83, v114, v84
	v_div_fmas_f32 v45, v71, v100, v112
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v25, v44, v37, v25
	v_div_fmas_f32 v37, v73, v101, v113
	s_mov_b32 vcc_lo, s7
	v_dual_mul_f32 v117, v90, v105 :: v_dual_mul_f32 v36, v48, v36
	v_fmac_f32_e32 v116, v128, v104
	v_fma_f32 v127, -v85, v115, v86
	v_div_fmas_f32 v42, v74, v102, v114
	v_div_fixup_f32 v38, v45, v51, v38
	v_fma_f32 v129, -v89, v117, v90
	v_div_fixup_f32 v39, v46, v59, v39
	v_fmac_f32_e32 v115, v127, v103
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v8.l, v14.h
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v34, v42, v60, v34
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v38, v40, v38 :: v_dual_fmac_f32 v117, v129, v105
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v35, v37, v61, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_and_b32_e32 v8, 1, v8
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v12, v12, v34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v49.l, v38.h
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v37, v41, v39
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fma_f32 v76, -v85, v115, v86
	v_fma_f32 v77, -v87, v116, v88
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s3, v14, v14
	v_add3_u32 v8, v14, v8, 0x7fff
	v_mov_b16_e32 v16.l, v12.h
	v_and_b32_e32 v14, 1, v49
	v_mov_b16_e32 v75.l, v37.h
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v25, v47, v25
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	s_mov_b32 vcc_lo, s8
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v9.l, v36.h
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v44, v76, v103, v115
	s_mov_b32 vcc_lo, s9
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v13, v13, v35 :: v_dual_and_b32 v16, 1, v16
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v39, v77, v104, v116
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_and_b32_e32 v34, 1, v75
	v_mov_b16_e32 v7.l, v25.h
	v_and_b32_e32 v9, 1, v9
	v_cmp_o_f32_e64 s7, v12, v12
	v_add3_u32 v12, v12, v16, 0x7fff
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v16, v39, v62, v30
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v7, 1, v7
	v_cmp_o_f32_e64 s1, v36, v36
	v_cmp_o_f32_e64 s5, v38, v38
	v_add3_u32 v9, v36, v9, 0x7fff
	v_mov_b16_e32 v15.l, v13.h
	v_add3_u32 v14, v38, v14, 0x7fff
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v78, -v89, v117, v90
	s_mov_b32 vcc_lo, s10
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v10, v43, v10, 0x7fff
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v16, v32, v16
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v7, v25, v7, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v9.h, s1
	v_cndmask_b16 v7.l, 0x7fff, v14.h, s5
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v14, v44, v63, v31
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_and_b32_e32 v9, 1, v15
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v79, -v91, v118, v93
	v_div_fmas_f32 v40, v78, v105, v117
	s_mov_b32 vcc_lo, s11
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v14, v33, v14
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_add3_u32 v9, v13, v9, 0x7fff
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v35, v79, v106, v118
	v_div_fixup_f32 v27, v40, v65, v27
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v9.l, 0x7fff, v12.h, s7
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v12, v72, v80, v24
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s4, v25, v25
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v26, v35, v64, v26
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v27, v29, v27
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v24, v12, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_add3_u32 v25, v37, v34, 0x7fff
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v15, v28, v26
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v94.l, v27.h
	v_cmp_o_f32_e64 s0, v43, v43
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v26, 0xbfb8aa3b, v12
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v8.l, 0x7fff, v7.h, s4
	v_cndmask_b16 v7.h, 0x7fff, v25.h, vcc_lo
	v_and_b32_e32 v24, 1, v94
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v25, v58, v4
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s0, v27, v27
	v_add3_u32 v24, v27, v24, 0x7fff
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v27, v56, v5
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e64 s6, v13, v13
	v_mov_b16_e32 v13.h, v4.l
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v25, v25, v6, v23
	v_fma_f32 v6, v27, v6, v21
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v12
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v13.l, v15.h
	v_cmp_o_f32_e64 s1, v15, v15
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v6, v21, v6, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v24.l, v14.h
	v_and_b32_e32 v13, 1, v13
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v38, 16, v92
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v40, v55, v4
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s3
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s6
	v_add3_u32 v13, v15, v13, 0x7fff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v23, v25, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v25, v26
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v26, v57, v5
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s0
	v_cndmask_b16 v23.l, 0x7fff, v13.h, s1
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v13, 0xbfb8aa3b, v15
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v24.h, v4.l
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v26, v26, v80, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v13
	v_ldexp_f32 v25, v25, v28
	v_mul_f32_e32 v28, 0xbfb8aa3b, v6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v22, v22, v26, s2
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v26.l, v16.h
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v13, 0, 0x42800000, s0
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v28
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v26.h, v4.l
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v21, 1.0, v25
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_dual_fmac_f32 v13, 0xbfb8aa3b, v15 :: v_dual_and_b32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v28, 0, 0x42800000, s0
	v_mul_f32_e32 v25, 0xbfb8aa3b, v22
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s0
	v_exp_f32_e32 v13, v13
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_and_b32_e32 v26, 1, v26
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v6
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_scale_f32 v29, null, v21, v21, v12
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_add3_u32 v24, v14, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v28, v28
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v13, v13, v27
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v27, v29
	.loc	1 238 44 is_stmt 0              ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v22
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_add3_u32 v26, v16, v26, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v24.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v14, v28, v33
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v25, v25
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v28, s0, v12, v21, v12
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v14, 1.0, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v30, null, v13, v13, v15
	v_fma_f32 v32, -v29, v27, 1.0
	v_div_scale_f32 v37, s1, v15, v13, v15
	v_rcp_f32_e32 v34, v30
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v25, v25, v31
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v33, null, v14, v14, v6
	s_mov_b32 vcc_lo, s0
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cmp_eq_u32_e64 s0, 0, v0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v25, 1.0, v25 :: v_dual_mov_b32 v0, 0x5410
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fma_f32 v31, -v30, v34, 1.0
	v_fmac_f32_e32 v27, v32, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v32, null, v25, v25, v22
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_dual_fmac_f32 v34, v31, v34 :: v_dual_mul_f32 v35, v28, v27
	v_rcp_f32_e32 v31, v33
	v_rcp_f32_e32 v36, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_lshl_or_b32 v0, v0, 8, v0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v39, -v29, v35, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v35, v39, v27 :: v_dual_and_b32 v0, 0x540054, v0
	v_fma_f32 v39, -v33, v31, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v42, -v32, v36, 1.0
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_lshl_or_b32 v0, v0, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v28, -v29, v35, v28
	v_fmac_f32_e32 v31, v39, v31
	v_div_scale_f32 v39, s4, v6, v14, v6
	v_dual_mul_f32 v41, v37, v34 :: v_dual_fmac_f32 v36, v42, v36
	v_div_scale_f32 v42, s3, v22, v25, v22
	v_div_fmas_f32 v27, v28, v27, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v30, v41, v37
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v29, v42, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v41, v44, v34 :: v_dual_and_b32 v0, 0x5040504, v0
	v_mul_f32_e32 v44, v39, v31
	v_fma_f32 v28, -v32, v29, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v30, v41, v37
	v_fma_f32 v35, -v33, v44, v39
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v43, v54, v4
	v_mul_f32_e32 v37, v53, v5
	v_mul_f32_e32 v5, v52, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_dual_fmac_f32 v29, v28, v36 :: v_dual_fmac_f32 v44, v35, v31
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v43, v43, v11, v18
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v28, v30, v34, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v5, v5, v11, v19
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v11, -v32, v29, v42
	v_fma_f32 v32, -v33, v44, v39
	s_mov_b32 vcc_lo, s3
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v30, v37, v38, v20
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v5, v19, v5, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v11, v11, v36, v29
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v29, v32, v31, v44
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v31, v40, v38, v17
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v20, v30, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v11, v11, v25, v22
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v6, v29, v14, v6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v17, v31, s2
	v_cndmask_b32_e64 v16, v18, v43, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v11, v20, v11
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_cndmask_b16 v24.l, 0x7fff, v26.h, vcc_lo
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v5, v5, v6
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v6, v27, v21, v12
	v_div_fixup_f32 v12, v28, v13, v15
	.loc	1 245 9 is_stmt 1               ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v13.l, v11.h
	v_mov_b16_e32 v13.h, v4.l
	v_mov_b16_e32 v15.l, v5.h
	v_mov_b16_e32 v15.h, v4.l
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v6, v14, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v12, v16, v12 :: v_dual_and_b32 v13, 1, v13
	.loc	1 245 9                         ; generate_amdgcn.py:245:9
	v_mov_b16_e32 v16.h, v4.l
	v_and_b32_e32 v14, 1, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v15.l, v6.h
	v_mov_b16_e32 v16.l, v12.h
	v_add3_u32 v4, v11, v13, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_add3_u32 v11, v5, v14, 0x7fff
	v_and_b32_e32 v14, 1, v15
	v_and_b32_e32 v13, 1, v16
	v_cmp_o_f32_e64 s2, v12, v12
	v_cndmask_b16 v4.h, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_cmp_o_f32_e64 s1, v6, v6
	v_add3_u32 v5, v12, v13, 0x7fff
	v_add3_u32 v13, v6, v14, 0x7fff
	v_mov_b32_e32 v14, 0x7632
	v_cndmask_b16 v4.l, 0x7fff, v11.h, vcc_lo
	v_cndmask_b32_e64 v6, v23, v8, s0
	v_cndmask_b16 v11.l, 0x7fff, v5.h, s2
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s1
	v_cndmask_b32_e64 v12, 0x3276, v14, s0
	v_cndmask_b32_e64 v8, v8, v23, s0
	s_mov_b32 s1, 0x76543210
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v13, v11, v7, s0
	v_lshl_or_b32 v5, v12, 8, v12
	v_cndmask_b32_e64 v12, v4, v9, s0
	v_cndmask_b32_e64 v4, v9, v4, s0
	v_cndmask_b32_e64 v9, v24, v10, s0
	v_cndmask_b32_e64 v10, v10, v24, s0
	v_and_b32_e32 v5, 0x760076, v5
	v_cndmask_b32_e64 v7, v7, v11, s0
	v_permlanex16_b32 v8, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v5, v5, 4, v5
	v_permlanex16_b32 v15, v7, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v8, v6, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 0x7060706, v5
	v_perm_b32 v5, v8, v6, v11
	v_perm_b32 v6, v14, v12, v0
	v_perm_b32 v7, v14, v12, v11
	v_perm_b32 v8, v10, v9, v0
	v_perm_b32 v9, v10, v9, v11
	v_perm_b32 v10, v15, v13, v0
	v_add_lshl_u32 v0, v2, v3, 1
	v_perm_b32 v11, v15, v13, v11
	s_clause 0x1
	buffer_store_b128 v[4:7], v0, s[24:27], 0 offen
	buffer_store_b128 v[8:11], v1, s[24:27], 0 offen
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 146
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 146
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10896
; TotalNumSgprs: 50
; NumVgprs: 146
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 146
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     146
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
