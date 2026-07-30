	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 80 0                          ; generate_amdgcn.py:80:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 90 16 prologue_end            ; generate_amdgcn.py:90:16
	s_abs_i32 s8, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v4, 4, v0
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshrrev_b32_e32 v69, 1, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v70, 0x70, v69
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:88:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s9, s26, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s11, s11, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:88:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s9, s9, 6
.Ltmp11:
	.loc	1 90 16 is_stmt 1               ; generate_amdgcn.py:90:16
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
	.loc	1 92 31                         ; generate_amdgcn.py:92:31
	s_sub_i32 s6, s9, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 92 20 is_stmt 0               ; generate_amdgcn.py:92:20
	s_min_i32 s19, s6, 1
	.loc	1 93 29 is_stmt 1               ; generate_amdgcn.py:93:29
	s_mul_i32 s5, s16, s5
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_abs_i32 s6, s19
	.loc	1 93 29                         ; generate_amdgcn.py:93:29
	s_sub_i32 s2, s2, s5
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cvt_f32_u32 s7, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	s_sub_i32 s10, 0, s6
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_mov_b32 s39, s11
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s7
	s_mul_hi_u32 s5, s7, s10
	s_abs_i32 s10, s2
	s_add_i32 s7, s7, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s7
	s_xor_b32 s7, s2, s19
	s_mul_i32 s17, s5, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s17, s10, s17
	s_add_i32 s18, s5, 1
	s_sub_i32 s20, s17, s6
	s_cmp_ge_u32 s17, s6
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s17, s20, s17
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s17, s6
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_mov_b32 s38, s10
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_cselect_b32 s5, s18, s5
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_lshr_b32 s18, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s20, s4, 63
.Ltmp13:
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_xor_b32 s17, s5, s7
	.loc	1 170 39                        ; generate_amdgcn.py:170:39
	s_lshl_b32 s6, s3, 5
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_add_i32 s4, s4, s18
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s5, s20, 31
.Ltmp15:
	.loc	1 94 13                         ; generate_amdgcn.py:94:13
	s_sub_i32 s23, s17, s7
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v3, s6, v4
	.loc	1 96 22                         ; generate_amdgcn.py:96:22
	s_ashr_i32 s18, s4, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_lshr_b32 s4, s5, 26
.Ltmp17:
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_mul_i32 s5, s23, s19
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_add_i32 s19, s20, s4
.Ltmp19:
	.loc	1 93 28                         ; generate_amdgcn.py:93:28
	s_sub_i32 s2, s2, s5
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_gt_i32_e32 vcc_lo, s18, v3
	.loc	1 171 51 is_stmt 0              ; generate_amdgcn.py:171:51
	v_cmp_gt_i32_e64 s4, 32, v3
	.loc	1 93 13 is_stmt 1               ; generate_amdgcn.py:93:13
	s_add_i32 s2, s2, s16
	.loc	1 102 14                        ; generate_amdgcn.py:102:14
	s_lshl_b32 s35, s27, 1
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	s_lshl_b32 s33, s23, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:154:22 ]
	s_ashr_i32 s5, s19, 6
.Ltmp21:
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s34, s2, 6
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_gt_i32 s20, 63
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	s_mul_i32 s22, s35, s6
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cselect_b32 s2, -1, 0
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 s16, s4, vcc_lo
	.loc	1 187 34                        ; generate_amdgcn.py:187:34
	s_mul_i32 s21, s26, s6
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v5, 15, v0
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_and_b32 s37, s37, 0xffff
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmpk_gt_i32 s20, 0x7f
	s_mov_b32 s16, -1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v1, 2, v5
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_lshlrev_b32_e32 v2, 3, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 187 34                        ; generate_amdgcn.py:187:34
	v_mad_u64_u32 v[6:7], null, s26, v4, v[1:2]
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	v_mad_u64_u32 v[7:8], null, s35, v4, v[2:3]
	.loc	1 187 34                        ; generate_amdgcn.py:187:34
	v_add3_u32 v6, s21, s34, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 193 34                        ; generate_amdgcn.py:193:34
	v_add3_u32 v3, s33, s22, v7
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_or_b32_e32 v105, v70, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 201 43                        ; generate_amdgcn.py:201:43
	v_add_nc_u32_e32 v7, s27, v3
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 201 35                        ; generate_amdgcn.py:201:35
	v_cndmask_b32_e32 v9, 0x80000000, v7, vcc_lo
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	buffer_load_b32 v11, v6, s[8:11], 0 offen
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	s_clause 0x1
	buffer_load_b64 v[7:8], v3, s[36:39], 0 offen
	buffer_load_b64 v[9:10], v9, s[36:39], 0 offen
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	v_lshlrev_b32_e32 v3, 2, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v6, 16, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	v_add_nc_u32_e32 v106, 0, v3
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_add_nc_u32_e32 v107, v106, v3
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	s_waitcnt vmcnt(2)
	ds_store_b32 v106, v11 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v107, v[7:8], v[9:10] offset1:8
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_or_b32_e32 v3, v70, v5
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_mov_b64 s[30:31], s[10:11]
	s_mov_b32 s16, 0
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_or_b32_e32 v73, 0x80, v3
	v_or_b32_e32 v74, 0x100, v3
	v_or_b32_e32 v75, 0x180, v3
	v_or_b32_e32 v76, 0x200, v3
	v_or_b32_e32 v77, 0x280, v3
	v_or_b32_e32 v78, 0x300, v3
	v_or_b32_e32 v79, 0x380, v3
	v_or_b32_e32 v80, 0x400, v3
	v_or_b32_e32 v81, 0x480, v3
	v_or_b32_e32 v82, 0x500, v3
	v_or_b32_e32 v83, 0x580, v3
	v_or_b32_e32 v84, 0x600, v3
	v_or_b32_e32 v85, 0x680, v3
	v_or_b32_e32 v86, 0x700, v3
	v_or_b32_e32 v87, 0x780, v3
	v_or_b32_e32 v88, 0x800, v3
	v_or_b32_e32 v89, 0x880, v3
	v_or_b32_e32 v90, 0x900, v3
	v_or_b32_e32 v91, 0x980, v3
	v_or_b32_e32 v92, 0xa00, v3
	v_or_b32_e32 v93, 0xa80, v3
	v_or_b32_e32 v94, 0xb00, v3
	v_or_b32_e32 v95, 0xb80, v3
	v_or_b32_e32 v96, 0xc00, v3
	v_or_b32_e32 v97, 0xc80, v3
	v_or_b32_e32 v98, 0xd00, v3
	v_or_b32_e32 v99, 0xd80, v3
	v_or_b32_e32 v100, 0xe00, v3
	v_or_b32_e32 v101, 0xe80, v3
	v_or_b32_e32 v102, 0xf00, v3
	v_or_b32_e32 v103, 0xf80, v3
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr28_sgpr29
                                        ; implicit-def: $vgpr3
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
.LBB0_3:                                ; %Flow366
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v71, v6, v5
	v_bfe_u32 v72, v0, 4, 1
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v104, 0, v71
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_mov_b32_e32 v62, 0
	s_and_not1_b32 vcc_lo, exec_lo, s16
	s_add_i32 s0, s5, -1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v62, 0 :: v_dual_and_b32 v3, 0xe0, v0
	v_dual_mov_b32 v46, 0 :: v_dual_lshlrev_b32 v7, 1, v4
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_add3_u32 v5, s34, v6, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v3, s17, 8, v3
	v_sub_nc_u32_e32 v109, s18, v4
	v_lshl_or_b32 v7, s3, 6, v7
	s_lshl_b32 s18, s7, 8
	s_add_i32 s6, s6, 32
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v6, s35, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v8, 0x41, v7
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v9, 32, v5
	v_subrev_nc_u32_e32 v111, s18, v6
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v6, 64, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v7, s27, v8
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v4, s6, v4
	v_mul_lo_u32 v6, s27, v6
	v_mul_lo_u32 v8, s5, v9
	v_mul_lo_u32 v5, s5, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v4, s26, v4
	s_lshl_b32 s17, s17, 7
	v_subrev_nc_u32_e32 v112, s18, v3
	v_add3_u32 v3, v7, s17, v2
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v108, 0, v105
	v_add3_u32 v2, v6, s17, v2
	s_lshl_b32 s17, s7, 7
	v_or_b32_e32 v73, 0x80, v105
	v_or_b32_e32 v74, 0x100, v105
	v_or_b32_e32 v75, 0x180, v105
	v_or_b32_e32 v76, 0x200, v105
	v_or_b32_e32 v77, 0x280, v105
	v_or_b32_e32 v78, 0x300, v105
	v_or_b32_e32 v79, 0x380, v105
	v_or_b32_e32 v80, 0x400, v105
	v_or_b32_e32 v81, 0x480, v105
	v_or_b32_e32 v82, 0x500, v105
	v_or_b32_e32 v83, 0x580, v105
	v_or_b32_e32 v84, 0x600, v105
	v_or_b32_e32 v85, 0x680, v105
	v_or_b32_e32 v86, 0x700, v105
	v_or_b32_e32 v87, 0x780, v105
	v_or_b32_e32 v88, 0x800, v105
	v_or_b32_e32 v89, 0x880, v105
	v_or_b32_e32 v90, 0x900, v105
	v_or_b32_e32 v91, 0x980, v105
	v_or_b32_e32 v92, 0xa00, v105
	v_or_b32_e32 v93, 0xa80, v105
	v_or_b32_e32 v94, 0xb00, v105
	v_or_b32_e32 v95, 0xb80, v105
	v_or_b32_e32 v96, 0xc00, v105
	v_or_b32_e32 v97, 0xc80, v105
	v_or_b32_e32 v98, 0xd00, v105
	v_or_b32_e32 v99, 0xd80, v105
	v_or_b32_e32 v100, 0xe00, v105
	v_or_b32_e32 v101, 0xe80, v105
	v_or_b32_e32 v102, 0xf00, v105
	v_or_b32_e32 v103, 0xf80, v105
	v_dual_mov_b32 v63, 0 :: v_dual_lshlrev_b32 v110, 1, v72
	v_dual_mov_b32 v54, 0 :: v_dual_lshlrev_b32 v113, 1, v8
	v_dual_mov_b32 v57, 0 :: v_dual_lshlrev_b32 v114, 1, v5
	v_subrev_nc_u32_e32 v115, s17, v3
	v_subrev_nc_u32_e32 v116, s17, v2
	v_add3_u32 v117, v4, s34, v1
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v37, 0
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v38, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b32 s16, 0
	s_mov_b64 s[28:29], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_max_i32 s1, s0, 1
	s_lshl_b32 s3, s27, 2
	s_lshl_b32 s7, s27, 6
	s_lshl_b32 s26, s26, 5
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
	.loc	1 171 27                        ; generate_amdgcn.py:171:27
	v_cmp_lt_i32_e32 vcc_lo, s6, v109
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_clause 0x1
	buffer_load_u16 v119, v114, s[44:47], 0 offen
	buffer_load_u16 v120, v113, s[44:47], 0 offen
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_dual_mov_b32 v128, s23 :: v_dual_mov_b32 v127, s22
	v_dual_mov_b32 v126, s21 :: v_dual_mov_b32 v125, s20
	.loc	1 171 26                        ; generate_amdgcn.py:171:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_dual_mov_b32 v124, s19 :: v_dual_mov_b32 v123, s18
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	v_cndmask_b32_e32 v1, 0x80000000, v117, vcc_lo
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_dual_mov_b32 v122, s17 :: v_dual_mov_b32 v121, s16
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_add_i32 s1, s1, -1
	s_add_i32 s6, s6, 32
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	buffer_load_b32 v118, v1, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v1, v104 offset:8512
	ds_load_u8 v2, v104 offset:8448
	ds_load_u8 v3, v104 offset:8640
	ds_load_u8 v4, v104 offset:8576
	ds_load_u8 v5, v104 offset:8256
	ds_load_u8 v6, v104 offset:8192
	ds_load_u8 v7, v104 offset:8384
	ds_load_u8 v8, v104 offset:8320
	ds_load_u8 v9, v104 offset:8416
	ds_load_u8 v10, v104 offset:8352
	ds_load_u8 v11, v104 offset:8288
	ds_load_u8 v12, v104 offset:8224
	ds_load_u8 v13, v108 offset:640
	ds_load_u8 v14, v108 offset:896
	ds_load_u8 v15, v108 offset:768
	ds_load_u8 v16, v108 offset:512
	ds_load_u8 v17, v108 offset:128
	ds_load_u8 v18, v108 offset:384
	ds_load_u8 v19, v108 offset:256
	ds_load_u8 v20, v108
	ds_load_u8 v21, v104 offset:8672
	ds_load_u8 v22, v104 offset:8608
	ds_load_u8 v23, v104 offset:8544
	ds_load_u8 v24, v104 offset:8480
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v25, v108 offset:4736
	ds_load_u8 v26, v108 offset:4992
	ds_load_u8 v27, v108 offset:4864
	ds_load_u8 v28, v108 offset:4608
	ds_load_u8 v29, v108 offset:4224
	ds_load_u8 v30, v108 offset:4480
	ds_load_u8 v31, v108 offset:4352
	ds_load_u8 v32, v108 offset:4096
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v129, v104 offset:9024
	ds_load_u8 v130, v104 offset:8960
	ds_load_u8 v131, v104 offset:9152
	ds_load_u8 v132, v104 offset:9088
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v3, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v4, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v5, v16, v13, 0xc0c0004
	v_perm_b32 v6, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v7, v20, v17, 0xc0c0004
	v_perm_b32 v8, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v13, v24, v23, 0xc0c0004
	v_perm_b32 v14, v22, v21, 0xc0c0004
	v_perm_b32 v11, v12, v11, 0xc0c0004
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v10, v28, v25, 0xc0c0004
	v_perm_b32 v12, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v16, v31, v30, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v15, v32, v29, 0xc0c0004
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v18, v2, 16, v1
	v_lshl_or_b32 v17, v4, 16, v3
	v_lshl_or_b32 v2, v6, 16, v5
	v_lshl_or_b32 v1, v8, 16, v7
	v_lshl_or_b32 v34, v14, 16, v13
	v_lshl_or_b32 v33, v9, 16, v11
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_lshl_or_b32 v36, v12, 16, v10
	v_lshl_or_b32 v35, v16, 16, v15
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v133, v104 offset:8768
	ds_load_u8 v134, v104 offset:8704
	ds_load_u8 v135, v104 offset:9184
	v_wmma_i32_16x16x16_iu4 v[9:16], v[1:2], v[17:18], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[1:2], v[33:34], v[121:128] neg_lo:[1,1,0]
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[35:36], v[17:18], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[35:36], v[33:34], v[121:128] neg_lo:[1,1,0]
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v121, v104 offset:9056
	ds_load_u8 v122, v104 offset:8992
	ds_load_u8 v123, v104 offset:8928
	ds_load_u8 v124, v104 offset:8864
	ds_load_u8 v36, v104 offset:8896
	ds_load_u8 v127, v104 offset:8832
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v33, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v34, v132, v131, 0xc0c0004
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_cmp_lg_u32 s1, 0
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v125, v104 offset:8800
	ds_load_u8 v126, v104 offset:8736
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v114, 2, v114
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v34, v34, 16, v33
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v35, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v127, v36, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v124, v108 offset:6016
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v136, v104 offset:9120
	v_lshl_or_b32 v33, v36, 16, v35
	ds_load_u8 v35, v108 offset:1664
	ds_load_u8 v36, v108 offset:1792
	ds_load_u8 v127, v108 offset:1536
	ds_load_u8 v128, v108 offset:1408
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v125, v126, v125, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v126, v108 offset:5632
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v122, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v127, v35, 0xc0c0004
	ds_load_u8 v127, v108 offset:1920
	v_lshl_or_b32 v122, v122, 16, v121
	v_lshl_or_b32 v121, v123, 16, v125
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v123, v108 offset:5248
	ds_load_u8 v125, v108 offset:5504
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v36, v127, 0xc0c0004
	ds_load_u8 v127, v108 offset:1152
	ds_load_u8 v129, v108 offset:1280
	ds_load_u8 v130, v108 offset:1024
	v_lshl_or_b32 v36, v36, 16, v35
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v130, v127, 0xc0c0004
	ds_load_u8 v129, v104 offset:9696
	ds_load_u8 v130, v104 offset:9632
	v_lshl_or_b32 v35, v128, 16, v127
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v127, v108 offset:5760
	ds_load_u8 v128, v108 offset:5888
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[35:36], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[35:36], v[121:122], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v35, v104 offset:9280
	ds_load_u8 v36, v104 offset:9216
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v124, v128, v124, 0xc0c0004
	ds_load_u8 v128, v108 offset:5120
	v_perm_b32 v126, v126, v127, 0xc0c0004
	ds_load_u8 v127, v108 offset:5376
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_lshl_or_b32 v124, v124, 16, v126
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v123, v128, v123, 0xc0c0004
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v128, v104 offset:9536
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v125, v127, v125, 0xc0c0004
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v127, v104 offset:9472
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_lshl_or_b32 v123, v125, 16, v123
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v125, v104 offset:9664
	ds_load_u8 v126, v104 offset:9600
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[123:124], v[33:34], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[123:124], v[121:122], v[17:24] neg_lo:[1,1,0]
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v121, v104 offset:9568
	ds_load_u8 v122, v104 offset:9504
	ds_load_u8 v123, v104 offset:9440
	ds_load_u8 v124, v104 offset:9376
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v33, v127, v128, 0xc0c0004
	ds_load_u8 v127, v104 offset:9312
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v34, v126, v125, 0xc0c0004
	ds_load_u8 v36, v104 offset:9408
	ds_load_u8 v126, v104 offset:9344
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	v_lshl_or_b32 v34, v34, 16, v33
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v124, v108 offset:7040
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_perm_b32 v122, v130, v129, 0xc0c0004
	ds_load_u8 v129, v104 offset:10208
	ds_load_u8 v130, v104 offset:10144
	v_lshl_or_b32 v122, v122, 16, v121
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v36, v126, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v36, 16, v35
	ds_load_u8 v35, v108 offset:2688
	ds_load_u8 v36, v108 offset:2816
	ds_load_u8 v126, v108 offset:2560
	ds_load_u8 v128, v108 offset:2432
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v35, v126, v35, 0xc0c0004
	ds_load_u8 v126, v108 offset:2944
	ds_load_u8 v125, v104 offset:9248
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v36, v36, v126, 0xc0c0004
	ds_load_u8 v126, v108 offset:2176
	ds_load_u8 v131, v108 offset:2304
	ds_load_u8 v132, v108 offset:2048
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v125, v125, v127, 0xc0c0004
	v_lshl_or_b32 v36, v36, 16, v35
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v121, v123, 16, v125
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v123, v108 offset:6272
	ds_load_u8 v125, v108 offset:6528
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v128, v131, v128, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v126, v132, v126, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v128, 16, v126
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v126, v108 offset:6784
	ds_load_u8 v128, v108 offset:6912
	ds_load_u8 v127, v108 offset:6656
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[35:36], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[35:36], v[121:122], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v35, v104 offset:9792
	ds_load_u8 v36, v104 offset:9728
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v144, 16, v119
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v124, v128, v124, 0xc0c0004
	ds_load_u8 v128, v108 offset:6144
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v108 offset:6400
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_lshl_or_b32 v124, v124, 16, v126
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v123, v128, v123, 0xc0c0004
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v128, v104 offset:10048
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v125, v127, v125, 0xc0c0004
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v127, v104 offset:9984
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_lshl_or_b32 v123, v125, 16, v123
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v125, v104 offset:10176
	ds_load_u8 v126, v104 offset:10112
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[123:124], v[33:34], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[123:124], v[121:122], v[17:24] neg_lo:[1,1,0]
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	ds_load_u8 v121, v104 offset:10080
	ds_load_u8 v122, v104 offset:10016
	ds_load_u8 v123, v104 offset:9952
	ds_load_u8 v124, v104 offset:9888
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v33, v127, v128, 0xc0c0004
	ds_load_u8 v127, v104 offset:9824
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v34, v126, v125, 0xc0c0004
	ds_load_u8 v36, v104 offset:9920
	ds_load_u8 v126, v104 offset:9856
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	v_lshl_or_b32 v34, v34, 16, v33
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v124, v108 offset:8064
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_perm_b32 v122, v130, v129, 0xc0c0004
	.loc	1 201 35                        ; generate_amdgcn.py:201:35
	v_cndmask_b32_e32 v129, 0x80000000, v115, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v122, v122, 16, v121
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v36, v126, v36, 0xc0c0004
	v_lshl_or_b32 v33, v36, 16, v35
	ds_load_u8 v35, v108 offset:3712
	ds_load_u8 v36, v108 offset:3840
	ds_load_u8 v126, v108 offset:3584
	ds_load_u8 v128, v108 offset:3456
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v35, v126, v35, 0xc0c0004
	ds_load_u8 v126, v108 offset:3968
	ds_load_u8 v125, v104 offset:9760
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v36, v36, v126, 0xc0c0004
	ds_load_u8 v126, v108 offset:3200
	ds_load_u8 v131, v108 offset:3328
	ds_load_u8 v132, v108 offset:3072
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v125, v125, v127, 0xc0c0004
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v127, v108 offset:7680
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v36, v36, 16, v35
	v_lshl_or_b32 v121, v123, 16, v125
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v123, v108 offset:7296
	ds_load_u8 v125, v108 offset:7552
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v128, v131, v128, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v126, v132, v126, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v35, v128, 16, v126
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	ds_load_u8 v126, v108 offset:7808
	ds_load_u8 v128, v108 offset:7936
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[25:32], v[35:36], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[35:36], v[33:34], v[9:16] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v134, v13
	v_cvt_f32_i32_e32 v135, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v137, v16
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v36, v31
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v133, v12
	v_cvt_f32_i32_e32 v132, v11
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v108 offset:7424
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v124, v128, v124, 0xc0c0004
	ds_load_u8 v128, v108 offset:7168
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v136, v15
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_lshl_or_b32 v124, v124, 16, v126
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v125, v127, v125, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v128, v123, 0xc0c0004
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_nc_u32_e32 v128, v110, v112
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v112, s3, v112
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_lshl_or_b32 v123, v125, 16, v123
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	buffer_load_u16 v35, v128, s[40:43], 0 offen
	.loc	1 202 36                        ; generate_amdgcn.py:202:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[123:124], v[33:34], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[123:124], v[121:122], v[17:24] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v34, v30
	v_cvt_f32_i32_e32 v121, v32
	v_cvt_f32_i32_e32 v33, v29
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v139, v2
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v2, 16, v120
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v140, v5
	v_cvt_f32_i32_e32 v141, v6
	v_cvt_f32_i32_e32 v122, v17
	v_cvt_f32_i32_e32 v123, v18
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v5, v2, v25
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_nc_u32_e32 v127, v110, v111
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v124, v19
	v_cvt_f32_i32_e32 v126, v20
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v20, v10
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v138, v1
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_clause 0x1
	buffer_load_u16 v25, v127, s[40:43], 0 offen offset:4
	buffer_load_u16 v30, v127, s[40:43], 0 offen offset:20
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	v_cndmask_b32_e32 v125, 0x80000000, v116, vcc_lo
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v131, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v130, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_mul_f32_e32 v12, v2, v24
	v_mul_f32_e32 v24, v144, v139
	v_cvt_f32_i32_e32 v142, v7
	v_cvt_f32_i32_e32 v143, v8
	v_mul_f32_e32 v7, v2, v126
	v_mul_f32_e32 v8, v2, v124
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v21, v2, v34
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v11, v2, v130
	v_dual_mul_f32 v15, v2, v131 :: v_dual_mul_f32 v34, v144, v4
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v124, v144, v135
	v_mul_f32_e32 v126, v144, v132
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v120, v144, v140
	v_dual_mul_f32 v119, v144, v141 :: v_dual_add_nc_u32 v116, s7, v116
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v6, 16, v35
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v68, v5, v6
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x7
	buffer_load_u16 v1, v128, s[40:43], 0 offen offset:4
	buffer_load_u16 v16, v128, s[40:43], 0 offen offset:8
	buffer_load_u16 v18, v128, s[40:43], 0 offen offset:12
	buffer_load_u16 v13, v128, s[40:43], 0 offen offset:16
	buffer_load_u16 v17, v128, s[40:43], 0 offen offset:20
	buffer_load_u16 v10, v128, s[40:43], 0 offen offset:24
	buffer_load_u16 v14, v128, s[40:43], 0 offen offset:28
	buffer_load_u16 v19, v127, s[40:43], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v5, v144, v9
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_clause 0x4
	buffer_load_u16 v35, v127, s[40:43], 0 offen offset:16
	buffer_load_u16 v32, v127, s[40:43], 0 offen offset:28
	buffer_load_u16 v31, v127, s[40:43], 0 offen offset:24
	buffer_load_u16 v23, v127, s[40:43], 0 offen offset:8
	buffer_load_u16 v29, v127, s[40:43], 0 offen offset:12
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v9, v2, v22
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v22, v2, v121 :: v_dual_fmac_f32 v67, v5, v6
	v_mul_f32_e32 v5, v2, v26
	v_mul_f32_e32 v26, v2, v27
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v6, v2, v122
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v27, v2, v33
	v_mul_f32_e32 v127, v144, v134
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v121, v144, v143
	v_mul_f32_e32 v33, v144, v138
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v128, v144, v136
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v122, v144, v142 :: v_dual_lshlrev_b32 v1, 16, v1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v16, 16, v16
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_add_nc_u32_e32 v111, s3, v111
	v_add_nc_u32_e32 v113, 2, v113
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v65, v5, v1
	.loc	1 206 20 is_stmt 0              ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v5, v144, v20
	v_mul_f32_e32 v20, v2, v28
	v_mul_f32_e32 v28, v2, v36
	.loc	1 209 29 is_stmt 1              ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v36, v144, v3
	.loc	1 201 35                        ; generate_amdgcn.py:201:35
	buffer_load_b64 v[3:4], v129, s[36:39], 0 offen
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v63, v5, v1
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v5, v2, v123
	.loc	1 193 26                        ; generate_amdgcn.py:193:26
	buffer_load_b64 v[1:2], v125, s[36:39], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v125, v144, v137 :: v_dual_lshlrev_b32 v14, 16, v14
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v61, v20, v18 :: v_dual_lshlrev_b32 v32, 16, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v40, v125, v14 :: v_dual_lshlrev_b32 v13, 16, v13
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v64, v5, v25 :: v_dual_lshlrev_b32 v35, 16, v35
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v123, v144, v133
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v62, v24, v25 :: v_dual_lshlrev_b32 v23, 16, v23
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v46, v120, v35 :: v_dual_lshlrev_b32 v17, 16, v17
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v44, v12, v32 :: v_dual_lshlrev_b32 v31, 16, v31
	v_dual_fmac_f32 v42, v121, v32 :: v_dual_lshlrev_b32 v19, 16, v19
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v48, v127, v13
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v52, v27, v13 :: v_dual_add_nc_u32 v115, s7, v115
	v_fmac_f32_e32 v60, v26, v16
	v_dual_fmac_f32 v56, v126, v16 :: v_dual_fmac_f32 v57, v123, v18
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v66, v6, v19 :: v_dual_fmac_f32 v53, v21, v17
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fmac_f32_e32 v49, v124, v17
	v_dual_fmac_f32 v37, v22, v14 :: v_dual_fmac_f32 v58, v8, v23
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fmac_f32_e32 v45, v33, v19
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_dual_fmac_f32 v38, v28, v10 :: v_dual_add_nc_u32 v117, s26, v117
	v_dual_fmac_f32 v39, v128, v10 :: v_dual_fmac_f32 v50, v11, v35
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_dual_fmac_f32 v54, v36, v23 :: v_dual_fmac_f32 v55, v34, v29
	v_fmac_f32_e32 v47, v119, v30
	v_fmac_f32_e32 v41, v122, v31
	v_fmac_f32_e32 v59, v7, v29
	v_fmac_f32_e32 v51, v9, v30
	v_fmac_f32_e32 v43, v15, v31
	.loc	1 187 26                        ; generate_amdgcn.py:187:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v106, v118 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v107, v[1:2], v[3:4] offset1:8
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v3, v105
.LBB0_7:                                ; %._crit_edge
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_or_b32_e32 v5, 32, v71
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	v_mul_lo_u32 v1, s5, v71
	s_mul_i32 s3, s34, s5
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	s_max_i32 s1, s0, 0
	v_dual_mov_b32 v8, 0 :: v_dual_add_nc_u32 v103, 0, v103
	.loc	1 168 26                        ; generate_amdgcn.py:168:26
	v_mul_lo_u32 v2, s5, v5
	s_add_i32 s3, s3, s1
	v_dual_mov_b32 v15, 0 :: v_dual_add_nc_u32 v102, 0, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 168 18 is_stmt 0              ; generate_amdgcn.py:168:18
	v_add_lshl_u32 v1, s3, v1, 1
	v_dual_mov_b32 v14, 0 :: v_dual_add_nc_u32 v101, 0, v101
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v100, 0, v100
	v_add_lshl_u32 v2, s3, v2, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v16, 0 :: v_dual_add_nc_u32 v99, 0, v99
	v_dual_mov_b32 v13, 0 :: v_dual_add_nc_u32 v98, 0, v98
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_clause 0x1
	buffer_load_u16 v6, v1, s[28:31], 0 offen
	buffer_load_u16 v7, v2, s[28:31], 0 offen
	.loc	1 187 26 is_stmt 1              ; generate_amdgcn.py:187:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v143, v104 offset:8192
	ds_load_u8_d16 v9, v104 offset:8224
	ds_load_u8_d16 v144, v104 offset:8256
	ds_load_u8_d16 v145, v104 offset:8320
	ds_load_u8_d16 v146, v104 offset:8384
	ds_load_u8_d16 v24, v104 offset:8416
	ds_load_u8_d16 v28, v104 offset:8352
	ds_load_u8_d16 v32, v104 offset:8288
	ds_load_u8_d16 v147, v104 offset:8448
	ds_load_u8_d16 v148, v104 offset:8512
	ds_load_u8_d16 v149, v104 offset:8576
	ds_load_u8_d16 v150, v104 offset:8640
	ds_load_u8_d16 v36, v104 offset:8672
	ds_load_u8_d16 v107, v104 offset:8608
	ds_load_u8_d16 v112, v104 offset:8544
	ds_load_u8_d16 v115, v104 offset:8480
	ds_load_u8_d16 v123, v104 offset:8704
	ds_load_u8_d16 v124, v104 offset:8768
	ds_load_u8_d16 v125, v104 offset:8832
	ds_load_u8_d16 v126, v104 offset:8896
	ds_load_u8_d16 v12, v104 offset:8928
	ds_load_u8_d16 v25, v104 offset:8864
	ds_load_u8_d16 v29, v104 offset:8800
	ds_load_u8_d16 v33, v104 offset:8736
	ds_load_u8_d16 v135, v104 offset:8960
	ds_load_u8_d16 v136, v104 offset:9024
	ds_load_u8_d16 v137, v104 offset:9088
	ds_load_u8_d16 v138, v104 offset:9152
	ds_load_u8_d16 v105, v104 offset:9184
	ds_load_u8_d16 v108, v104 offset:9120
	ds_load_u8_d16 v113, v104 offset:9056
	ds_load_u8_d16 v116, v104 offset:8992
	ds_load_u8_d16 v131, v104 offset:9216
	ds_load_u8_d16 v132, v104 offset:9280
	ds_load_u8_d16 v133, v104 offset:9344
	ds_load_u8_d16 v134, v104 offset:9408
	ds_load_u8_d16 v20, v104 offset:9440
	ds_load_u8_d16 v26, v104 offset:9376
	ds_load_u8_d16 v30, v104 offset:9312
	ds_load_u8_d16 v34, v104 offset:9248
	ds_load_u8_d16 v139, v104 offset:9472
	ds_load_u8_d16 v140, v104 offset:9536
	ds_load_u8_d16 v141, v104 offset:9600
	ds_load_u8_d16 v142, v104 offset:9664
	ds_load_u8_d16 v106, v104 offset:9696
	ds_load_u8_d16 v109, v104 offset:9632
	ds_load_u8_d16 v114, v104 offset:9568
	ds_load_u8_d16 v117, v104 offset:9504
	ds_load_u8_d16 v121, v104 offset:9728
	ds_load_u8_d16 v122, v104 offset:9792
	ds_load_u8_d16 v119, v104 offset:9856
	ds_load_u8_d16 v120, v104 offset:9920
	ds_load_u8_d16 v23, v104 offset:9952
	ds_load_u8_d16 v27, v104 offset:9888
	ds_load_u8_d16 v31, v104 offset:9824
	ds_load_u8_d16 v35, v104 offset:9760
	ds_load_u8_d16 v127, v104 offset:9984
	ds_load_u8_d16 v128, v104 offset:10048
	ds_load_u8_d16 v129, v104 offset:10112
	ds_load_u8_d16 v130, v104 offset:10176
	ds_load_u8_d16 v110, v104 offset:10208
	ds_load_u8_d16 v111, v104 offset:10144
	ds_load_u8_d16 v118, v104 offset:10080
	ds_load_u8_d16 v104, v104 offset:10016
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_cndmask_b32_e64 v1, 0, 1, s2
	v_dual_mov_b32 v18, 0 :: v_dual_add_nc_u32 v97, 0, v97
	v_add_nc_u32_e32 v96, 0, v96
	v_dual_mov_b32 v2, 0 :: v_dual_add_nc_u32 v95, 0, v95
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s0, 1, v1
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v94, 0, v94
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v93, 0, v93
	v_dual_mov_b32 v21, 0 :: v_dual_add_nc_u32 v92, 0, v92
	v_dual_mov_b32 v22, 0 :: v_dual_add_nc_u32 v91, 0, v91
	v_add_nc_u32_e32 v90, 0, v90
	v_add_nc_u32_e32 v89, 0, v89
	v_add_nc_u32_e32 v88, 0, v88
	v_dual_mov_b32 v4, 0 :: v_dual_add_nc_u32 v87, 0, v87
	v_add_nc_u32_e32 v86, 0, v86
	v_add_nc_u32_e32 v85, 0, v85
	v_add_nc_u32_e32 v151, 0, v84
	v_add_nc_u32_e32 v83, 0, v83
	v_add_nc_u32_e32 v82, 0, v82
	v_add_nc_u32_e32 v81, 0, v81
	v_add_nc_u32_e32 v84, 0, v80
	v_add_nc_u32_e32 v159, 0, v79
	v_add_nc_u32_e32 v154, 0, v78
	v_add_nc_u32_e32 v162, 0, v77
	v_add_nc_u32_e32 v163, 0, v76
	v_add_nc_u32_e32 v156, 0, v75
	v_add_nc_u32_e32 v157, 0, v74
	v_add_nc_u32_e32 v155, 0, v73
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v160, 0, v3
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_mov_b32_e32 v3, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v1, v147, v148, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v2, v149, v150, 0xc0c0004
	v_perm_b32 v3, v145, v146, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v143, v144, 0xc0c0004
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_lshl_or_b32 v1, v3, 16, v1
	ds_load_u8 v3, v162
	ds_load_u8 v4, v163
	v_dual_mov_b32 v80, s11 :: v_dual_mov_b32 v79, s10
	v_dual_mov_b32 v78, s9 :: v_dual_mov_b32 v77, s8
	v_dual_mov_b32 v76, s7 :: v_dual_mov_b32 v75, s6
	v_dual_mov_b32 v74, s5 :: v_dual_mov_b32 v73, s4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v159
	ds_load_u8 v10, v154
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v10, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v4, v4, 16, v3
	ds_load_u8 v3, v155
	ds_load_u8 v10, v160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v10, v3, 0xc0c0004
	ds_load_u8 v10, v156
	ds_load_u8 v11, v157
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v3, v10, 16, v3
	v_perm_b32 v10, v125, v126, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[164:171], v[3:4], v[1:2], v[73:80] neg_lo:[1,1,0]
	v_perm_b32 v1, v135, v136, 0xc0c0004
	v_perm_b32 v2, v137, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v123, v124, 0xc0c0004
	v_lshl_or_b32 v1, v10, 16, v1
	ds_load_u8 v10, v85
	ds_load_u8 v11, v151
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v87
	ds_load_u8 v13, v86
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v11, 16, v10
	ds_load_u8 v10, v81
	ds_load_u8 v13, v84
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v13, v10, 0xc0c0004
	ds_load_u8 v13, v83
	ds_load_u8 v14, v82
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v10, v13, 16, v10
	v_perm_b32 v13, v133, v134, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[164:171], v[10:11], v[1:2], v[164:171] neg_lo:[1,1,0]
	v_perm_b32 v1, v139, v140, 0xc0c0004
	v_perm_b32 v2, v141, v142, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v131, v132, 0xc0c0004
	v_lshl_or_b32 v1, v13, 16, v1
	ds_load_u8 v13, v93
	ds_load_u8 v14, v92
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v95
	ds_load_u8 v15, v94
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v14, v14, 16, v13
	ds_load_u8 v13, v89
	ds_load_u8 v15, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v15, v13, 0xc0c0004
	ds_load_u8 v15, v91
	ds_load_u8 v16, v90
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v13, v15, 16, v13
	v_perm_b32 v15, v119, v120, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[164:171], v[13:14], v[1:2], v[164:171] neg_lo:[1,1,0]
	v_perm_b32 v1, v127, v128, 0xc0c0004
	v_perm_b32 v2, v129, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v121, v122, 0xc0c0004
	v_lshl_or_b32 v1, v15, 16, v1
	ds_load_u8 v15, v101
	ds_load_u8 v16, v100
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v103
	ds_load_u8 v17, v102
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v16, v16, 16, v15
	ds_load_u8 v15, v97
	ds_load_u8 v17, v96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v17, v15, 0xc0c0004
	ds_load_u8 v17, v99
	ds_load_u8 v18, v98
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v15, v17, 16, v15
	v_perm_b32 v17, v28, v24, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[164:171], v[15:16], v[1:2], v[164:171] neg_lo:[1,1,0]
	v_perm_b32 v1, v115, v112, 0xc0c0004
	v_perm_b32 v2, v107, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v18, v167
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v9, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v1, v17, 16, v1
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v17, v165
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[3:4], v[1:2], v[73:80] neg_lo:[1,1,0]
	v_perm_b32 v1, v116, v113, 0xc0c0004
	v_perm_b32 v2, v108, v105, 0xc0c0004
	v_perm_b32 v3, v25, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v33, v29, 0xc0c0004
	v_lshl_or_b32 v1, v3, 16, v1
	v_perm_b32 v3, v26, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[10:11], v[1:2], v[73:80] neg_lo:[1,1,0]
	v_perm_b32 v1, v117, v114, 0xc0c0004
	v_perm_b32 v2, v109, v106, 0xc0c0004
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v34, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v1, v3, 16, v1
	v_perm_b32 v3, v27, v23, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[73:80], v[13:14], v[1:2], v[73:80] neg_lo:[1,1,0]
	v_perm_b32 v1, v104, v118, 0xc0c0004
	v_perm_b32 v2, v111, v110, 0xc0c0004
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v13, v168
	v_cvt_f32_i32_e32 v14, v169
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 194 27                        ; generate_amdgcn.py:194:27
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v35, v31, 0xc0c0004
	v_lshl_or_b32 v1, v3, 16, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[15:16], v[1:2], v[73:80] neg_lo:[1,1,0]
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_cvt_f32_i32_e32 v15, v164
	v_cvt_f32_i32_e32 v16, v166
	v_cvt_f32_i32_e32 v1, v170
	v_cvt_f32_i32_e32 v2, v171
	v_cvt_f32_i32_e32 v152, v73
	v_cvt_f32_i32_e32 v153, v74
	v_cvt_f32_i32_e32 v73, v75
	v_cvt_f32_i32_e32 v74, v76
	v_cvt_f32_i32_e32 v21, v77
	v_cvt_f32_i32_e32 v22, v78
	v_cvt_f32_i32_e32 v3, v79
	v_cvt_f32_i32_e32 v4, v80
.LBB0_9:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v80, 0
	v_mov_b32_e32 v19, 0
	.loc	1 202 36 is_stmt 1              ; generate_amdgcn.py:202:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	ds_load_u8 v8, v162 offset:4096
	ds_load_u8 v10, v163 offset:4096
	ds_load_u8 v11, v159 offset:4096
	ds_load_u8 v19, v160 offset:4096
	ds_load_u8 v75, v156 offset:4096
	ds_load_u8 v76, v157 offset:4096
	ds_load_u8 v77, v154 offset:4096
	ds_load_u8 v78, v155 offset:4096
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v79, v147, v148, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v80, v149, v150, 0xc0c0004
	v_perm_b32 v143, v143, v144, 0xc0c0004
	v_perm_b32 v144, v145, v146, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v123, v123, v124, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v124, v125, v126, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v8, v10, v8, 0xc0c0004
	v_lshl_or_b32 v10, v144, 16, v143
	v_perm_b32 v135, v135, v136, 0xc0c0004
	v_perm_b32 v136, v137, v138, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v77, v77, v11, 0xc0c0004
	v_lshl_or_b32 v11, v80, 16, v79
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v19, v78, 0xc0c0004
	v_perm_b32 v9, v9, v32, 0xc0c0004
	v_perm_b32 v24, v28, v24, 0xc0c0004
	v_lshl_or_b32 v76, v77, 16, v8
	ds_load_u8 v8, v85 offset:4096
	ds_load_u8 v77, v151 offset:4096
	ds_load_u8 v78, v87 offset:4096
	ds_load_u8 v79, v81 offset:4096
	ds_load_u8 v143, v84 offset:4096
	ds_load_u8 v144, v83 offset:4096
	ds_load_u8 v145, v82 offset:4096
	ds_load_u8 v146, v86 offset:4096
	v_lshl_or_b32 v75, v75, 16, v19
	ds_load_u8 v19, v93 offset:4096
	ds_load_u8 v147, v92 offset:4096
	ds_load_u8 v148, v95 offset:4096
	ds_load_u8 v149, v89 offset:4096
	ds_load_u8 v150, v88 offset:4096
	ds_load_u8 v151, v91 offset:4096
	ds_load_u8 v154, v90 offset:4096
	ds_load_u8 v155, v94 offset:4096
	v_dual_mov_b32 v87, s11 :: v_dual_mov_b32 v86, s10
	v_dual_mov_b32 v85, s9 :: v_dual_mov_b32 v84, s8
	v_dual_mov_b32 v83, s7 :: v_dual_mov_b32 v82, s6
	v_dual_mov_b32 v81, s5 :: v_dual_mov_b32 v80, s4
	v_perm_b32 v28, v119, v120, 0xc0c0004
	v_perm_b32 v26, v26, v20, 0xc0c0004
	v_perm_b32 v23, v27, v23, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v8, v77, v8, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[88:95], v[75:76], v[10:11], v[80:87] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v79, v143, v79, 0xc0c0004
	v_lshl_or_b32 v10, v124, 16, v123
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v125, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v77, v146, v78, 0xc0c0004
	v_perm_b32 v123, v131, v132, 0xc0c0004
	v_perm_b32 v124, v133, v134, 0xc0c0004
	ds_load_u8 v101, v101 offset:4096
	ds_load_u8 v100, v100 offset:4096
	ds_load_u8 v103, v103 offset:4096
	ds_load_u8 v132, v96 offset:4096
	ds_load_u8 v133, v99 offset:4096
	ds_load_u8 v134, v98 offset:4096
	ds_load_u8 v96, v102 offset:4096
	v_lshl_or_b32 v11, v136, 16, v135
	v_lshl_or_b32 v78, v77, 16, v8
	v_lshl_or_b32 v77, v125, 16, v79
	v_perm_b32 v8, v139, v140, 0xc0c0004
	v_perm_b32 v79, v141, v142, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v19, v147, v19, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v125, v155, v148, 0xc0c0004
	v_perm_b32 v126, v150, v149, 0xc0c0004
	v_perm_b32 v131, v154, v151, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[88:95], v[77:78], v[10:11], v[88:95] neg_lo:[1,1,0]
	v_lshl_or_b32 v11, v79, 16, v8
	v_lshl_or_b32 v10, v124, 16, v123
	v_lshl_or_b32 v99, v125, 16, v19
	v_lshl_or_b32 v98, v131, 16, v126
	v_perm_b32 v8, v127, v128, 0xc0c0004
	v_perm_b32 v19, v129, v130, 0xc0c0004
	ds_load_u8 v79, v97 offset:4096
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v32, v100, v101, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[88:95], v[98:99], v[10:11], v[88:95] neg_lo:[1,1,0]
	v_perm_b32 v11, v115, v112, 0xc0c0004
	v_lshl_or_b32 v10, v19, 16, v8
	v_perm_b32 v19, v107, v36, 0xc0c0004
	v_perm_b32 v8, v121, v122, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v36, v96, v103, 0xc0c0004
	v_lshl_or_b32 v96, v24, 16, v9
	v_perm_b32 v24, v33, v29, 0xc0c0004
	v_lshl_or_b32 v97, v19, 16, v11
	v_perm_b32 v11, v116, v113, 0xc0c0004
	v_perm_b32 v19, v108, v105, 0xc0c0004
	v_perm_b32 v29, v25, v12, 0xc0c0004
	v_lshl_or_b32 v9, v28, 16, v8
	v_wmma_i32_16x16x16_iu4 v[80:87], v[75:76], v[96:97], v[80:87] neg_lo:[1,1,0]
	v_perm_b32 v8, v117, v114, 0xc0c0004
	v_lshl_or_b32 v25, v19, 16, v11
	v_lshl_or_b32 v24, v29, 16, v24
	v_perm_b32 v11, v109, v106, 0xc0c0004
	v_perm_b32 v19, v34, v30, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v132, v79, 0xc0c0004
	v_perm_b32 v29, v134, v133, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[80:87], v[77:78], v[24:25], v[80:87] neg_lo:[1,1,0]
	v_lshl_or_b32 v20, v11, 16, v8
	v_lshl_or_b32 v19, v26, 16, v19
	v_perm_b32 v8, v104, v118, 0xc0c0004
	v_perm_b32 v24, v111, v110, 0xc0c0004
	v_perm_b32 v25, v35, v31, 0xc0c0004
	v_lshl_or_b32 v12, v36, 16, v32
	v_lshl_or_b32 v11, v29, 16, v28
	v_wmma_i32_16x16x16_iu4 v[80:87], v[98:99], v[19:20], v[80:87] neg_lo:[1,1,0]
	v_lshl_or_b32 v20, v24, 16, v8
	v_lshl_or_b32 v19, v23, 16, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[88:95], v[11:12], v[9:10], v[88:95] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[80:87], v[11:12], v[19:20], v[80:87] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_cvt_f32_i32_e32 v8, v88
	v_cvt_f32_i32_e32 v78, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v77, v90
	v_cvt_f32_i32_e32 v79, v91
	v_cvt_f32_i32_e32 v75, v92
	v_cvt_f32_i32_e32 v76, v93
	v_cvt_f32_i32_e32 v10, v94
	v_cvt_f32_i32_e32 v11, v95
	v_cvt_f32_i32_e32 v166, v80
	v_cvt_f32_i32_e32 v167, v81
	v_cvt_f32_i32_e32 v164, v82
	v_cvt_f32_i32_e32 v165, v83
	v_cvt_f32_i32_e32 v158, v84
	v_cvt_f32_i32_e32 v161, v85
	v_cvt_f32_i32_e32 v19, v86
	v_cvt_f32_i32_e32 v80, v87
.LBB0_11:
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	s_waitcnt lgkmcnt(62)
	v_or_b32_e32 v9, v72, v70
	.loc	1 205 36                        ; generate_amdgcn.py:205:36
	s_mul_i32 s1, s1, s35
	.loc	1 205 18 is_stmt 0              ; generate_amdgcn.py:205:18
	s_and_b32 s17, s15, 0xffff
	.loc	1 205 26                        ; generate_amdgcn.py:205:26
	s_add_i32 s0, s33, s1
	s_mov_b32 s19, 0x31027000
	.loc	1 100 32 is_stmt 1              ; generate_amdgcn.py:100:32
	s_waitcnt lgkmcnt(43)
	v_or_b32_e32 v12, 2, v9
	s_waitcnt lgkmcnt(27)
	v_or_b32_e32 v20, 4, v9
	s_waitcnt lgkmcnt(11)
	v_or_b32_e32 v23, 6, v9
	v_or_b32_e32 v24, 8, v9
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v26, s0, v9, 1
	v_add_lshl_u32 v28, s0, v12, 1
	.loc	1 208 35                        ; generate_amdgcn.py:208:35
	s_add_i32 s1, s0, s27
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v29, s0, v20, 1
	v_add_lshl_u32 v30, s0, v23, 1
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_lshl_u32 v12, s1, v12, 1
	v_add_lshl_u32 v20, s1, v20, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_add_lshl_u32 v32, s0, v24, 1
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_lshl_u32 v34, s1, v9, 1
	v_add_lshl_u32 v23, s1, v23, 1
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_or_b32_e32 v25, 10, v9
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	s_mov_b32 s18, 0x7ffffffe
	s_mov_b32 s16, s14
	s_waitcnt lgkmcnt(9)
	v_cndmask_b32_e64 v31, 0x80000000, v30, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_or_b32_e32 v27, 14, v9
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x3
	buffer_load_u16 v33, v26, s[16:19], 0 offen
	buffer_load_u16 v30, v28, s[16:19], 0 offen
	buffer_load_u16 v28, v29, s[16:19], 0 offen
	buffer_load_u16 v29, v31, s[16:19], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v32, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v32, 0x80000000, v34, s2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v31, s0, v25, 1
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_lshl_u32 v25, s1, v25, 1
	buffer_load_u16 v82, v12, s[16:19], 0 offen
	s_waitcnt lgkmcnt(8)
	s_clause 0x1
	buffer_load_u16 v35, v20, s[16:19], 0 offen
	buffer_load_u16 v70, v23, s[16:19], 0 offen
	v_add_lshl_u32 v24, s1, v24, 1
	buffer_load_u16 v34, v32, s[16:19], 0 offen
	v_add_lshl_u32 v32, s1, v27, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v12, 0x80000000, v25, s2
	v_cndmask_b32_e64 v20, 0x80000000, v24, s2
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_or_b32_e32 v86, 12, v9
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v23, 0x80000000, v32, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_clause 0x4
	buffer_load_u16 v81, v31, s[16:19], 0 offen
	buffer_load_u16 v72, v26, s[16:19], 0 offen
	buffer_load_u16 v84, v12, s[16:19], 0 offen
	buffer_load_u16 v83, v20, s[16:19], 0 offen
	buffer_load_u16 v85, v23, s[16:19], 0 offen
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(14)
	v_mov_b16_e32 v12.h, v6.l
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v27, s0, v27, 1
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_add_lshl_u32 v9, s1, v86, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_add_lshl_u32 v86, s0, v86, 1
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 216 18 is_stmt 0              ; generate_amdgcn.py:216:18
	s_mul_i32 s34, s34, s27
	.loc	1 205 18 is_stmt 1              ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	v_mul_lo_u32 v5, s27, v5
	.loc	1 216 9 is_stmt 0               ; generate_amdgcn.py:216:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, s18
	.loc	1 208 27 is_stmt 1              ; generate_amdgcn.py:208:27
	buffer_load_u16 v20, v9, s[16:19], 0 offen
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v9.l, 0
	.loc	1 168 18                        ; generate_amdgcn.py:168:18
	s_waitcnt vmcnt(14)
	v_mov_b16_e32 v9.h, v7.l
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	v_mul_lo_u32 v7, s27, v71
	.loc	1 216 9 is_stmt 0               ; generate_amdgcn.py:216:9
	s_mov_b32 s27, s19
	.loc	1 168 18 is_stmt 1              ; generate_amdgcn.py:168:18
	v_mov_b16_e32 v12.l, v9.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v88, v167, v9
	.loc	1 100 32                        ; generate_amdgcn.py:100:32
	v_and_b32_e32 v6, 0x78, v69
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v71, v153, v9
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v93, v158, v9
	v_mul_f32_e32 v95, v8, v12
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_cndmask_b32_e64 v8, 0x80000000, v86, s2
	s_clause 0x1
	buffer_load_u16 v8, v8, s[16:19], 0 offen
	buffer_load_u16 v27, v27, s[16:19], 0 offen
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v17, v17, v12
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v78, v78, v12 :: v_dual_mul_f32 v87, v152, v9
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v18, v18, v12
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v89, v166, v9 :: v_dual_mul_f32 v16, v16, v12
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v74, v74, v9 :: v_dual_mul_f32 v15, v15, v12
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v91, v164, v9
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v73, v73, v9 :: v_dual_mul_f32 v14, v14, v12
	v_dual_mul_f32 v22, v22, v9 :: v_dual_mul_f32 v77, v77, v12
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_dual_mul_f32 v90, v165, v9 :: v_dual_mul_f32 v79, v79, v12
	v_dual_mul_f32 v92, v161, v9 :: v_dual_mul_f32 v75, v75, v12
	v_dual_mul_f32 v80, v80, v9 :: v_dual_mul_f32 v13, v13, v12
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v21, v21, v9 :: v_dual_mul_f32 v76, v76, v12
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v24.h, v9.l
	v_mov_b16_e32 v26.h, v9.l
	v_mov_b16_e32 v25.h, v9.l
	v_mov_b16_e32 v23.h, v9.l
	v_mov_b16_e32 v32.h, v9.l
	v_mov_b16_e32 v31.h, v9.l
	v_mov_b16_e32 v69.h, v9.l
	v_mov_b16_e32 v36.h, v9.l
	v_mov_b16_e32 v94.h, v9.l
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_dual_mul_f32 v4, v4, v9 :: v_dual_mul_f32 v1, v1, v12
	v_mul_f32_e32 v2, v2, v12
	.loc	1 216 18                        ; generate_amdgcn.py:216:18
	v_add3_u32 v6, s34, s33, v6
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v19, v19, v9
	.loc	1 206 20                        ; generate_amdgcn.py:206:20
	v_mul_f32_e32 v3, v3, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add_lshl_u32 v5, v6, v5, 1
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v33, 16, v33
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v86, v87, v33, v68
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v71, v71, v30, v65
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v82, 16, v82
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v17, v17, v30, v63
	v_fma_f32 v15, v15, v33, v67
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v33, 16, v70
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v30, v78, v82, v62
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v35, 16, v35
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v15, v67, v15, s2
	v_cndmask_b32_e64 v17, v63, v17, s2
	v_cndmask_b32_e64 v68, v68, v86, s2
	v_cndmask_b32_e64 v30, v62, v30, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v70, 16, v81
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v81, 16, v84
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v84, 16, v85
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v85, v89, v34, v66
	v_fma_f32 v34, v95, v34, v45
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v14, v14, v70, v49
	v_fma_f32 v22, v22, v70, v53
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v83, 16, v83
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v66, v66, v85, s2
	v_cndmask_b32_e64 v34, v45, v34, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v14, v49, v14, s2
	v_cndmask_b32_e64 v22, v53, v22, s2
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v70, v75, v83, v46
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v49, 0xbfb8aa3b, v34
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v67, v73, v28, v60
	v_fma_f32 v16, v16, v28, v56
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v28, v77, v35, v54
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v46, v46, v70, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v49
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v60, v60, v67, s2
	v_cndmask_b32_e64 v16, v56, v16, s2
	v_cndmask_b32_e64 v28, v54, v28, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v62, 0xbfb8aa3b, v46
	v_cndmask_b32_e64 v49, 0, 0x42800000, s0
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v45, v65, v71, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v54, 0xbfb8aa3b, v28
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v78, v90, v33, v59
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v62
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v8, 16, v8
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v54
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v59, v59, v78, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v62, 0, 0x42800000, s11
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v1, v1, v8, v39
	v_fma_f32 v2, v2, v27, v40
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v54, 0, 0x42800000, s7
	v_mul_f32_e32 v53, 0xbfb8aa3b, v59
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v87, v88, v82, v64
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s7
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v46
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v28
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v53
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v64, v64, v87, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v62, v62
	v_exp_f32_e32 v54, v54
	v_cndmask_b32_e64 v53, 0, 0x42800000, s4
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v4, v4, v27, v37
	v_fma_f32 v73, v74, v29, v61
	v_fma_f32 v18, v18, v29, v57
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v29, v79, v33, v55
	v_fma_f32 v33, v93, v83, v50
	v_fma_f32 v74, v91, v35, v58
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v61, v61, v73, s2
	v_cndmask_b32_e64 v18, v57, v18, s2
	v_cndmask_b32_e64 v29, v55, v29, s2
	.loc	1 205 18                        ; generate_amdgcn.py:205:18
	v_lshlrev_b32_e32 v72, 16, v72
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v33, v50, v33, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v50, 0xbfb8aa3b, v64
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v58, v58, v74, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v55, 0xbfb8aa3b, v29
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v13, v13, v72, v48
	v_fma_f32 v21, v21, v72, v52
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v56, 0xbfb8aa3b, v33
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v72, v76, v81, v47
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v50
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v13, v48, v13, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v48, 0xbfb8aa3b, v66
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v35, v92, v81, v51
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v47, v47, v72, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v50, 0, 0x42800000, s1
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v34
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v35, v51, v35, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v51, 0xbfb8aa3b, v30
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v21, v52, v21, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v52, 0xbfb8aa3b, v58
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v63, 0xbfb8aa3b, v47 :: v_dual_fmac_f32 v50, 0xbfb8aa3b, v64
	v_exp_f32_e32 v49, v49
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v51
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v66
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v52
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v63
	v_exp_f32_e32 v50, v50
	v_cndmask_b32_e64 v51, 0, 0x42800000, s3
	v_exp_f32_e32 v48, v48
	v_mul_f32_e32 v57, 0xbfb8aa3b, v35
	v_cndmask_b32_e64 v52, 0, 0x42800000, s5
	v_cndmask_b32_e64 v63, 0, 0x42800000, s10
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s1
	v_ldexp_f32 v49, v49, v67
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v55
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v30
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v57
	v_dual_fmac_f32 v53, 0xbfb8aa3b, v59 :: v_dual_fmac_f32 v52, 0xbfb8aa3b, v58
	v_ldexp_f32 v48, v48, v65
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v47
	v_ldexp_f32 v50, v50, v70
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v55, 0, 0x42800000, s6
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v56
	v_exp_f32_e32 v51, v51
	v_cndmask_b32_e64 v57, 0, 0x42800000, s8
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v52, v52
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v63, v63
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v70, null, v49, v49, v34
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v56, 0, 0x42800000, s9
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v29
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s5
	v_dual_fmac_f32 v57, 0xbfb8aa3b, v35 :: v_dual_fmac_f32 v56, 0xbfb8aa3b, v33
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, s10
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v96, v70
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v55, v55
	v_ldexp_f32 v51, v51, v71
	v_exp_f32_e32 v57, v57
	v_ldexp_f32 v53, v53, v72
	v_ldexp_f32 v52, v52, v73
	v_ldexp_f32 v54, v54, v75
	v_ldexp_f32 v63, v63, v78
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s6
	v_exp_f32_e32 v56, v56
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_dual_add_f32 v51, 1.0, v51 :: v_dual_add_f32 v52, 1.0, v52
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s8
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_dual_add_f32 v53, 1.0, v53 :: v_dual_add_f32 v54, 1.0, v54
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v65, null, v48, v48, v66
	v_div_scale_f32 v72, null, v50, v50, v64
	v_fma_f32 v108, -v70, v96, 1.0
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s9
	v_ldexp_f32 v55, v55, v74
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v74, null, v51, v51, v30
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v57, v57, v76
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v76, null, v53, v53, v59
	v_div_scale_f32 v78, null, v52, v52, v58
	v_div_scale_f32 v83, null, v54, v54, v28
	v_rcp_f32_e32 v95, v65
	v_rcp_f32_e32 v97, v72
	v_fmac_f32_e32 v96, v108, v96
	v_div_scale_f32 v90, null, v63, v63, v47
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v56, v56, v77
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v55, 1.0, v55
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v98, v74
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s11
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v99, v76
	v_rcp_f32_e32 v100, v78
	v_rcp_f32_e32 v102, v83
	v_rcp_f32_e32 v105, v90
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v56, 1.0, v56
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v81, null, v55, v55, v29
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v62, v62, v79
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v107, -v65, v95, 1.0
	v_fma_f32 v109, -v72, v97, 1.0
	v_div_scale_f32 v88, null, v56, v56, v33
	v_rcp_f32_e32 v101, v81
	s_waitcnt lgkmcnt(3)
	v_fma_f32 v110, -v74, v98, 1.0
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v67, s0, v66, v48, v66
	v_div_scale_f32 v71, s1, v34, v49, v34
	v_div_scale_f32 v73, vcc_lo, v64, v50, v64
	v_div_scale_f32 v86, null, v57, v57, v35
	s_waitcnt lgkmcnt(2)
	v_fma_f32 v111, -v76, v99, 1.0
	v_fma_f32 v112, -v78, v100, 1.0
	v_fma_f32 v114, -v83, v102, 1.0
	v_fma_f32 v117, -v90, v105, 1.0
	v_dual_fmac_f32 v95, v107, v95 :: v_dual_fmac_f32 v98, v110, v98
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v97, v109, v97 :: v_dual_fmac_f32 v100, v112, v100
	s_waitcnt lgkmcnt(0)
	v_rcp_f32_e32 v104, v88
	v_div_scale_f32 v75, s3, v30, v51, v30
	v_div_scale_f32 v77, s4, v59, v53, v59
	v_div_scale_f32 v79, s5, v58, v52, v58
	v_div_scale_f32 v85, s7, v28, v54, v28
	v_div_scale_f32 v92, null, v62, v62, v46
	v_rcp_f32_e32 v103, v86
	v_dual_fmac_f32 v99, v111, v99 :: v_dual_fmac_f32 v102, v114, v102
	v_dual_fmac_f32 v105, v117, v105 :: v_dual_mul_f32 v108, v71, v96
	v_mul_f32_e32 v107, v67, v95
	v_dual_mul_f32 v109, v73, v97 :: v_dual_mul_f32 v110, v75, v98
	v_fma_f32 v113, -v81, v101, 1.0
	v_div_scale_f32 v91, s10, v47, v63, v47
	v_rcp_f32_e32 v106, v92
	v_dual_mul_f32 v111, v77, v99 :: v_dual_mul_f32 v112, v79, v100
	v_mul_f32_e32 v114, v85, v102
	v_fma_f32 v119, -v65, v107, v67
	v_fma_f32 v120, -v70, v108, v71
	v_fma_f32 v121, -v72, v109, v73
	v_div_scale_f32 v82, s6, v29, v55, v29
	v_fma_f32 v116, -v88, v104, 1.0
	v_fmac_f32_e32 v101, v113, v101
	v_fma_f32 v122, -v74, v110, v75
	v_fma_f32 v115, -v86, v103, 1.0
	v_dual_mul_f32 v117, v91, v105 :: v_dual_fmac_f32 v108, v120, v96
	v_fma_f32 v124, -v78, v112, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v107, v119, v95 :: v_dual_fmac_f32 v110, v122, v98
	v_fmac_f32_e32 v109, v121, v97
	v_div_scale_f32 v89, s9, v33, v56, v33
	v_dual_fmac_f32 v104, v116, v104 :: v_dual_mul_f32 v113, v82, v101
	v_fma_f32 v123, -v76, v111, v77
	v_div_scale_f32 v87, s8, v35, v57, v35
	v_fma_f32 v118, -v92, v106, 1.0
	v_dual_fmac_f32 v103, v115, v103 :: v_dual_fmac_f32 v112, v124, v100
	v_fma_f32 v65, -v65, v107, v67
	v_fma_f32 v67, -v70, v108, v71
	v_fma_f32 v70, -v72, v109, v73
	v_mul_f32_e32 v116, v89, v104
	v_fma_f32 v125, -v81, v113, v82
	v_fma_f32 v126, -v83, v114, v85
	v_fmac_f32_e32 v111, v123, v99
	v_fma_f32 v71, -v74, v110, v75
	v_div_scale_f32 v93, s11, v46, v62, v46
	v_dual_fmac_f32 v106, v118, v106 :: v_dual_mul_f32 v115, v87, v103
	v_div_fmas_f32 v70, v70, v97, v109
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v128, -v88, v116, v89
	v_fmac_f32_e32 v113, v125, v101
	v_div_fmas_f32 v65, v65, v95, v107
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v114, v126, v102
	v_fma_f32 v72, -v76, v111, v77
	v_div_fmas_f32 v71, v71, v98, v110
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v118, v93, v106
	v_fma_f32 v127, -v86, v115, v87
	v_fma_f32 v73, -v78, v112, v79
	v_div_fixup_f32 v50, v70, v50, v64
	v_div_fmas_f32 v64, v67, v96, v108
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v116, v128, v104
	v_fma_f32 v74, -v81, v113, v82
	v_div_fixup_f32 v48, v65, v48, v66
	v_div_fmas_f32 v65, v72, v99, v111
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v129, -v90, v117, v91
	v_fma_f32 v75, -v83, v114, v85
	v_div_fixup_f32 v30, v71, v51, v30
	v_fma_f32 v130, -v92, v118, v93
	v_fmac_f32_e32 v115, v127, v103
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v45, v45, v50
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v50, v73, v100, v112
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v34, v64, v49, v34
	v_div_fmas_f32 v49, v74, v101, v113
	s_mov_b32 vcc_lo, s7
	v_dual_fmac_f32 v117, v129, v105 :: v_dual_mul_f32 v48, v68, v48
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v17, v17, v30
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v30, v75, v102, v114
	v_fmac_f32_e32 v118, v130, v106
	v_fma_f32 v76, -v86, v115, v87
	v_fma_f32 v77, -v88, v116, v89
	v_div_fixup_f32 v51, v65, v53, v59
	v_div_fixup_f32 v29, v49, v55, v29
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v78, -v90, v117, v91
	v_div_fixup_f32 v50, v50, v52, v58
	v_div_fixup_f32 v28, v30, v54, v28
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v15, v15, v34
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v34, v76, v103, v115
	s_mov_b32 vcc_lo, s9
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v18, v18, v29
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v26.l, v45.h
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v49, v61, v51
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v51, v77, v104, v116
	s_mov_b32 vcc_lo, s10
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v25.l, v48.h
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v30, v60, v50
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v50, v78, v105, v117
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v16, v16, v28
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v23.l, v15.h
	v_mov_b16_e32 v31.l, v18.h
	v_cmp_o_f32_e64 s4, v15, v15
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v28, v50, v63, v47
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v32.l, v16.h
	v_and_b32_e32 v23, 1, v23
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v79, -v92, v118, v93
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v24.l, v17.h
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v14, v14, v28
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v28, 1, v32
	v_add3_u32 v15, v15, v23, 0x7fff
	v_and_b32_e32 v23, 1, v31
	v_and_b32_e32 v26, 1, v26
	v_cmp_o_f32_e64 s7, v16, v16
	v_add3_u32 v16, v16, v28, 0x7fff
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	s_mov_b32 vcc_lo, s11
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s6, v18, v18
	v_add3_u32 v18, v18, v23, 0x7fff
	v_cmp_o_f32_e64 s0, v45, v45
	v_and_b32_e32 v25, 1, v25
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v29, v79, v106, v118
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v69.l, v49.h
	v_and_b32_e32 v24, 1, v24
	v_add3_u32 v26, v45, v26, 0x7fff
	v_mov_b16_e32 v36.l, v30.h
	v_cndmask_b16 v18.l, 0x7fff, v16.h, s7
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v16, v80, v84, v44
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e64 s1, v48, v48
	v_cmp_o_f32_e64 s3, v17, v17
	v_add3_u32 v25, v48, v25, 0x7fff
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v29, v29, v62, v46
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v17, v17, v24, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s0
	v_and_b32_e32 v26, 1, v36
	v_mov_b16_e32 v94.l, v14.h
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v16, v44, v16, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v45, 1, v69
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_cmp_o_f32_e64 s5, v30, v30
	v_cndmask_b16 v24.l, 0x7fff, v25.h, s1
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v13, v13, v29
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v25, v49, v45, 0x7fff
	v_add3_u32 v26, v30, v26, 0x7fff
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_dual_mul_f32 v29, 0xbfb8aa3b, v16 :: v_dual_and_b32 v28, 1, v94
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v17.l, 0x7fff, v15.h, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v15.h, 0x7fff, v25.h, vcc_lo
	v_cndmask_b16 v15.l, 0x7fff, v26.h, s5
	v_mov_b16_e32 v23.l, v13.h
	v_mov_b16_e32 v23.h, v9.l
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v26, v51, v56, v33
	.loc	1 208 27                        ; generate_amdgcn.py:208:27
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v25, v34, v57, v35
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_and_b32_e32 v23, 1, v23
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v21, v21, v26
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v26, v14, v28, 0x7fff
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v19, v19, v20, v43
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v23, v13, v23, 0x7fff
	v_cmp_o_f32_e64 s0, v14, v14
	v_cmp_o_f32_e64 s1, v13, v13
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v13, v43, v19, s2
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v14, v22, v25
	.loc	1 211 44 is_stmt 0              ; generate_amdgcn.py:211:44
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v16
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_cndmask_b16 v19.h, 0x7fff, v26.h, s0
	v_cndmask_b16 v19.l, 0x7fff, v23.h, s1
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v13
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v23.l, v14.h
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v25, v28
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v23.h, v9.l
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v10, v10, v12
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	.loc	1 206 13                        ; generate_amdgcn.py:206:13
	v_fma_f32 v3, v3, v8, v38
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v23, 1, v23
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v10, v10, v20, v41
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v22, 0, 0x42800000, s0
	.loc	1 209 29                        ; generate_amdgcn.py:209:29
	v_mul_f32_e32 v11, v11, v12
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v20, v25, v26
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s0
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v10, v41, v10, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v13
	.loc	1 209 17                        ; generate_amdgcn.py:209:17
	v_fma_f32 v11, v11, v84, v42
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v25.l, v21.h
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_mul_f32_e32 v29, 0xbfb8aa3b, v10
	v_exp_f32_e32 v22, v22
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v11, v42, v11, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v25.h, v9.l
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v30, null, v20, v20, v16
	.loc	1 211 44 is_stmt 0              ; generate_amdgcn.py:211:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v29
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_add3_u32 v23, v14, v23, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v25, 1, v25
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v3, v38, v3, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s3
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v29, 0, 0x42800000, s0
	v_mul_f32_e32 v26, 0xbfb8aa3b, v11
	v_ldexp_f32 v22, v22, v28
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_rcp_f32_e32 v28, v30
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v10
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 161 9 is_stmt 1               ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v2, v40, v2, s2
	v_cndmask_b32_e64 v1, v39, v1, s2
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_exp_f32_e32 v29, v29
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_fma_f32 v33, -v30, v28, 1.0
	v_div_scale_f32 v31, null, v22, v22, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v11
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fmac_f32_e32 v28, v33, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v35, v31
	.loc	1 211 44 is_stmt 0              ; generate_amdgcn.py:211:44
	v_ldexp_f32 v14, v29, v34
	v_exp_f32_e32 v26, v26
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_scale_f32 v29, s0, v16, v20, v16
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_cndmask_b16 v23.h, 0x7fff, v23.h, vcc_lo
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	s_mov_b32 vcc_lo, s0
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_eq_u32_e64 s0, 0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_mul_f32_e32 v36, v29, v28
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_mov_b32_e32 v0, 0x5410
	.loc	1 161 9                         ; generate_amdgcn.py:161:9
	v_cndmask_b32_e64 v4, v37, v4, s2
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_add3_u32 v25, v21, v25, 0x7fff
	.loc	1 211 44                        ; generate_amdgcn.py:211:44
	v_ldexp_f32 v26, v26, v32
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_fma_f32 v32, -v31, v35, 1.0
	v_fma_f32 v43, -v30, v36, v29
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 211 38                        ; generate_amdgcn.py:211:38
	v_dual_add_f32 v26, 1.0, v26 :: v_dual_fmac_f32 v35, v32, v35
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_div_scale_f32 v42, s1, v13, v22, v13
	v_fmac_f32_e32 v36, v43, v28
	v_div_scale_f32 v33, null, v26, v26, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v44, v42, v35
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_lshl_or_b32 v0, v0, 8, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v29, -v30, v36, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v41, v33
	v_fma_f32 v46, -v31, v44, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_and_b32_e32 v0, 0x540054, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v28, v29, v28, v36
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_lshl_or_b32 v0, v0, 4, v0
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fmac_f32_e32 v44, v46, v35
	v_fma_f32 v45, -v33, v41, 1.0
	.loc	1 211 38 is_stmt 0              ; generate_amdgcn.py:211:38
	v_add_f32_e32 v14, 1.0, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fma_f32 v31, -v31, v44, v42
	v_fmac_f32_e32 v41, v45, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_scale_f32 v34, null, v14, v14, v10
	v_div_scale_f32 v45, s3, v11, v26, v11
	v_div_fmas_f32 v12, v31, v35, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v32, v34
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v30, v45, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v29, -v33, v30, v45
	v_fma_f32 v43, -v34, v32, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v30, v29, v41
	v_fmac_f32_e32 v32, v43, v32
	v_div_scale_f32 v43, s4, v10, v14, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v8, -v33, v30, v45
	v_mul_f32_e32 v46, v43, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v8, v8, v41, v30
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v36, -v34, v46, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v8, v8, v26, v11
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v11.h, v9.l
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_fmac_f32_e32 v46, v36, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 211 19 is_stmt 0              ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v2, v2, v8
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v8, v28, v20, v16
	v_fma_f32 v29, -v34, v46, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v11.l, v2.h
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v4, v4, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_div_fmas_f32 v29, v29, v32, v46
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_and_b32_e32 v8, 1, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v11.l, v4.h
	v_cmp_o_f32_e64 s1, v4, v4
	.loc	1 211 26                        ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v10, v29, v14, v10
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cndmask_b16 v23.l, 0x7fff, v25.h, vcc_lo
	v_add3_u32 v8, v2, v8, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v1, v1, v10
	.loc	1 211 26 is_stmt 0              ; generate_amdgcn.py:211:26
	v_div_fixup_f32 v10, v12, v22, v13
	.loc	1 216 9 is_stmt 1               ; generate_amdgcn.py:216:9
	v_mov_b16_e32 v12.h, v9.l
	v_cndmask_b16 v8.h, 0x7fff, v8.h, vcc_lo
	v_and_b32_e32 v13, 0x5040504, v0
	v_mov_b16_e32 v12.l, v1.h
	.loc	1 211 19                        ; generate_amdgcn.py:211:19
	v_mul_f32_e32 v3, v3, v10
	.loc	1 216 9                         ; generate_amdgcn.py:216:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v10, 1, v12
	v_mov_b16_e32 v12.l, v3.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s2, v3, v3
	v_add3_u32 v2, v1, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v9, 1, v12
	v_and_b32_e32 v10, 1, v11
	v_cndmask_b32_e64 v11, v24, v23, s0
	v_cndmask_b16 v8.l, 0x7fff, v2.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v1, v3, v9, 0x7fff
	v_add3_u32 v9, v4, v10, 0x7fff
	v_mov_b32_e32 v10, 0x7632
	v_cndmask_b32_e64 v3, v19, v17, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s2
	v_cndmask_b16 v2.h, 0x7fff, v9.h, s1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v4, 0x3276, v10, s0
	v_cndmask_b32_e64 v9, v8, v18, s0
	v_cndmask_b32_e64 v8, v18, v8, s0
	s_mov_b32 s1, 0x76543210
	v_cndmask_b32_e64 v12, v2, v15, s0
	v_lshl_or_b32 v1, v4, 8, v4
	v_cndmask_b32_e64 v4, v17, v19, s0
	v_cndmask_b32_e64 v2, v15, v2, s0
	v_permlanex16_b32 v8, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v10, v23, v24, s0
	v_and_b32_e32 v1, 0x760076, v1
	v_permlanex16_b32 v4, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v2, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v8, v9, v13
	v_lshl_or_b32 v1, v1, 4, v1
	v_perm_b32 v0, v4, v3, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v14, 0x7060706, v1
	v_perm_b32 v1, v4, v3, v14
	v_perm_b32 v3, v8, v9, v14
	v_add_lshl_u32 v4, v6, v7, 1
	v_perm_b32 v8, v11, v10, v13
	v_perm_b32 v9, v11, v10, v14
	v_perm_b32 v10, v15, v12, v13
	v_perm_b32 v11, v15, v12, v14
	s_clause 0x1
	buffer_store_b128 v[0:3], v4, s[24:27], 0 offen
	buffer_store_b128 v[8:11], v5, s[24:27], 0 offen
	.loc	1 80 1                          ; generate_amdgcn.py:80:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 172
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 172
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13556
; TotalNumSgprs: 50
; NumVgprs: 172
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 172
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
	.byte	88                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	154                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     172
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
