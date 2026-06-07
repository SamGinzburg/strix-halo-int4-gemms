	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s10, s2
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v25, 1, v0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_lshlrev_b32_e32 v15, 4, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v16, 4, v0
                                        ; implicit-def: $vgpr157
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr48
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
                                        ; implicit-def: $vgpr106
                                        ; implicit-def: $vgpr107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v42, 0x70, v25
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v110, 0, v15
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s7, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s11, s6, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s8, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s13, s11, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s8, s8, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s13, s13, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s5, s5, s8
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s11, s11, s13
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s11, s11, 5
.Ltmp11:
	.loc	1 89 16 is_stmt 1               ; generate_amdgcn.py:89:16
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
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s8, s11, s16
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s16, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s21, s8, 1
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s18, s21
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_f32_u32 s17, s18
	s_abs_i32 s19, s2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	s_mov_b32 s11, 0x31027000
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s31, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s18
	s_mul_i32 s17, s17, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s21
	s_add_i32 s5, s10, s5
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s5, s19, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s20, s5, s18
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s30, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s19, s19, s20
	s_add_i32 s20, s5, 1
	s_sub_i32 s22, s19, s18
	s_cmp_ge_u32 s19, s18
	s_cselect_b32 s5, s20, s5
	s_cselect_b32 s19, s22, s19
	s_add_i32 s20, s5, 1
	s_cmp_ge_u32 s19, s18
	s_cselect_b32 s5, s20, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s20, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s22, s4, 0x7f
.Ltmp13:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s18, s5, s17
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s19, s3, 6
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s20
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s5, s22, 31
.Ltmp15:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s25, s18, s17
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v7, s19, v3
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s20, s4, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s4, s5, 25
.Ltmp17:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s5, s25, s21
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s21, s22, s4
.Ltmp19:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s5
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e32 vcc_lo, s20, v7
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s4, 64, v7
	.loc	1 92 13 is_stmt 1               ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s27, s7, 1
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s26, s25, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s33, s21, 7
.Ltmp21:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s5, s2, 5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s22, 0x7f
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s24, s27, s19
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s16, s4, vcc_lo
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	s_mul_i32 s23, s6, s19
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v2, 7, v0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_and_b32 s29, s29, 0xffff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s22, 0xff
	s_mov_b32 s16, -1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshlrev_b32_e32 v1, 2, v2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v2, 4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_mad_u64_u32 v[4:5], null, s6, v3, v[1:2]
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[5:6], null, s27, v3, v[2:3]
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_add3_u32 v4, s23, s5, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v5, s26, s24, v5
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 174 43                        ; generate_amdgcn.py:174:43
	v_add_nc_u32_e32 v6, s7, v5
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v10, 0x80000000, v6
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_b32 v14, v4, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_clause 0x1
	buffer_load_b128 v[6:9], v5, s[28:31], 0 offen
	buffer_load_b128 v[10:13], v10, s[28:31], 0 offen
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v4, 15, v0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_lshlrev_b32_e32 v5, 2, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b32_e32 v108, v42, v4
	v_add_nc_u32_e32 v109, 0, v5
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v5, 16, v16
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt vmcnt(2)
	ds_store_b32 v109, v14 offset:16384
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v110, v[6:9]
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	s_waitcnt vmcnt(0)
	ds_store_b128 v110, v[10:13] offset:8192
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_or_b32_e32 v157, v42, v4
	s_mov_b32 s16, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v45, 0x80, v157
	v_or_b32_e32 v46, 0x100, v157
	v_or_b32_e32 v47, 0x180, v157
	v_or_b32_e32 v48, 0x200, v157
	v_or_b32_e32 v49, 0x280, v157
	v_or_b32_e32 v50, 0x300, v157
	v_or_b32_e32 v51, 0x380, v157
	v_or_b32_e32 v52, 0x400, v157
	v_or_b32_e32 v53, 0x480, v157
	v_or_b32_e32 v54, 0x500, v157
	v_or_b32_e32 v55, 0x580, v157
	v_or_b32_e32 v56, 0x600, v157
	v_or_b32_e32 v57, 0x680, v157
	v_or_b32_e32 v58, 0x700, v157
	v_or_b32_e32 v59, 0x780, v157
	v_or_b32_e32 v60, 0x800, v157
	v_or_b32_e32 v61, 0x880, v157
	v_or_b32_e32 v62, 0x900, v157
	v_or_b32_e32 v63, 0x980, v157
	v_or_b32_e32 v64, 0xa00, v157
	v_or_b32_e32 v65, 0xa80, v157
	v_or_b32_e32 v66, 0xb00, v157
	v_or_b32_e32 v67, 0xb80, v157
	v_or_b32_e32 v68, 0xc00, v157
	v_or_b32_e32 v69, 0xc80, v157
	v_or_b32_e32 v70, 0xd00, v157
	v_or_b32_e32 v71, 0xd80, v157
	v_or_b32_e32 v72, 0xe00, v157
	v_or_b32_e32 v73, 0xe80, v157
	v_or_b32_e32 v74, 0xf00, v157
	v_or_b32_e32 v75, 0xf80, v157
	v_or_b32_e32 v76, 0x1000, v157
	v_or_b32_e32 v77, 0x1080, v157
	v_or_b32_e32 v78, 0x1100, v157
	v_or_b32_e32 v79, 0x1180, v157
	v_or_b32_e32 v80, 0x1200, v157
	v_or_b32_e32 v81, 0x1280, v157
	v_or_b32_e32 v82, 0x1300, v157
	v_or_b32_e32 v83, 0x1380, v157
	v_or_b32_e32 v84, 0x1400, v157
	v_or_b32_e32 v85, 0x1480, v157
	v_or_b32_e32 v86, 0x1500, v157
	v_or_b32_e32 v87, 0x1580, v157
	v_or_b32_e32 v88, 0x1600, v157
	v_or_b32_e32 v89, 0x1680, v157
	v_or_b32_e32 v90, 0x1700, v157
	v_or_b32_e32 v91, 0x1780, v157
	v_or_b32_e32 v92, 0x1800, v157
	v_or_b32_e32 v93, 0x1880, v157
	v_or_b32_e32 v94, 0x1900, v157
	v_or_b32_e32 v95, 0x1980, v157
	v_or_b32_e32 v96, 0x1a00, v157
	v_or_b32_e32 v97, 0x1a80, v157
	v_or_b32_e32 v98, 0x1b00, v157
	v_or_b32_e32 v99, 0x1b80, v157
	v_or_b32_e32 v100, 0x1c00, v157
	v_or_b32_e32 v101, 0x1c80, v157
	v_or_b32_e32 v102, 0x1d00, v157
	v_or_b32_e32 v103, 0x1d80, v157
	v_or_b32_e32 v104, 0x1e00, v157
	v_or_b32_e32 v105, 0x1e80, v157
	v_or_b32_e32 v106, 0x1f00, v157
	v_or_b32_e32 v107, 0x1f80, v157
.LBB0_2:                                ; %Flow315
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v43, v5, v4
	v_bfe_u32 v44, v0, 4, 1
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v38, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v111, 0, v43
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v26, 0
	v_mov_b32_e32 v39, 0
	s_and_not1_b32 vcc_lo, exec_lo, s16
	s_add_i32 s1, s33, -1
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
	v_dual_mov_b32 v41, 0 :: v_dual_lshlrev_b32 v6, 1, v3
	v_dual_mov_b32 v26, 0 :: v_dual_and_b32 v7, 0xe0, v0
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_sub_nc_u32_e32 v113, s20, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v6, s3, 7, v6
	s_add_i32 s3, s19, 64
	v_add3_u32 v4, s5, v5, v4
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v3, s3, v3
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v8, 0x81, v6
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v6, 0x80, v6
	v_lshl_or_b32 v7, s18, 8, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v5, s7, v8
	v_mul_lo_u32 v4, s33, v4
	v_mul_lo_u32 v6, s7, v6
	v_mul_lo_u32 v3, s6, v3
	s_lshl_b32 s18, s18, 7
	v_dual_mov_b32 v40, 0 :: v_dual_add_nc_u32 v9, s27, v7
	s_lshl_b32 s20, s17, 8
	v_add3_u32 v5, v5, s18, v2
	s_lshl_b32 s17, s17, 7
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v2, v6, s18, v2
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v112, 0, v108
	v_or_b32_e32 v45, 0x80, v108
	v_or_b32_e32 v46, 0x100, v108
	v_or_b32_e32 v47, 0x180, v108
	v_or_b32_e32 v48, 0x200, v108
	v_or_b32_e32 v49, 0x280, v108
	v_or_b32_e32 v50, 0x300, v108
	v_or_b32_e32 v51, 0x380, v108
	v_or_b32_e32 v52, 0x400, v108
	v_or_b32_e32 v53, 0x480, v108
	v_or_b32_e32 v54, 0x500, v108
	v_or_b32_e32 v55, 0x580, v108
	v_or_b32_e32 v56, 0x600, v108
	v_or_b32_e32 v57, 0x680, v108
	v_or_b32_e32 v58, 0x700, v108
	v_or_b32_e32 v59, 0x780, v108
	v_or_b32_e32 v60, 0x800, v108
	v_or_b32_e32 v61, 0x880, v108
	v_or_b32_e32 v62, 0x900, v108
	v_or_b32_e32 v63, 0x980, v108
	v_or_b32_e32 v64, 0xa00, v108
	v_or_b32_e32 v65, 0xa80, v108
	v_or_b32_e32 v66, 0xb00, v108
	v_or_b32_e32 v67, 0xb80, v108
	v_or_b32_e32 v68, 0xc00, v108
	v_or_b32_e32 v69, 0xc80, v108
	v_or_b32_e32 v70, 0xd00, v108
	v_or_b32_e32 v71, 0xd80, v108
	v_or_b32_e32 v72, 0xe00, v108
	v_or_b32_e32 v73, 0xe80, v108
	v_or_b32_e32 v74, 0xf00, v108
	v_or_b32_e32 v75, 0xf80, v108
	v_or_b32_e32 v76, 0x1000, v108
	v_or_b32_e32 v77, 0x1080, v108
	v_or_b32_e32 v78, 0x1100, v108
	v_or_b32_e32 v79, 0x1180, v108
	v_or_b32_e32 v80, 0x1200, v108
	v_or_b32_e32 v81, 0x1280, v108
	v_or_b32_e32 v82, 0x1300, v108
	v_or_b32_e32 v83, 0x1380, v108
	v_or_b32_e32 v84, 0x1400, v108
	v_or_b32_e32 v85, 0x1480, v108
	v_or_b32_e32 v86, 0x1500, v108
	v_or_b32_e32 v87, 0x1580, v108
	v_or_b32_e32 v88, 0x1600, v108
	v_or_b32_e32 v89, 0x1680, v108
	v_or_b32_e32 v90, 0x1700, v108
	v_or_b32_e32 v91, 0x1780, v108
	v_or_b32_e32 v92, 0x1800, v108
	v_or_b32_e32 v93, 0x1880, v108
	v_or_b32_e32 v94, 0x1900, v108
	v_or_b32_e32 v95, 0x1980, v108
	v_or_b32_e32 v96, 0x1a00, v108
	v_or_b32_e32 v97, 0x1a80, v108
	v_or_b32_e32 v98, 0x1b00, v108
	v_or_b32_e32 v99, 0x1b80, v108
	v_or_b32_e32 v100, 0x1c00, v108
	v_or_b32_e32 v101, 0x1c80, v108
	v_or_b32_e32 v102, 0x1d00, v108
	v_or_b32_e32 v103, 0x1d80, v108
	v_or_b32_e32 v104, 0x1e00, v108
	v_or_b32_e32 v105, 0x1e80, v108
	v_or_b32_e32 v106, 0x1f00, v108
	v_or_b32_e32 v107, 0x1f80, v108
	v_dual_mov_b32 v31, 0 :: v_dual_lshlrev_b32 v114, 1, v44
	v_subrev_nc_u32_e32 v115, s20, v9
	v_subrev_nc_u32_e32 v116, s20, v7
	v_dual_mov_b32 v34, 0 :: v_dual_lshlrev_b32 v117, 1, v4
	v_subrev_nc_u32_e32 v118, s17, v5
	v_subrev_nc_u32_e32 v119, s17, v2
	v_add3_u32 v120, v3, s5, v1
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_mov_b32_e32 v30, 0
	s_mov_b32 s16, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_max_i32 s0, s1, 1
	s_lshl_b32 s34, s7, 2
	s_lshl_b32 s35, s7, 7
	s_lshl_b32 s6, s6, 6
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_4:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e32 vcc_lo, s3, v113
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v129, s23 :: v_dual_mov_b32 v128, s22
	v_dual_mov_b32 v127, s21 :: v_dual_mov_b32 v126, s20
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v125, s19 :: v_dual_mov_b32 v124, s18
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e32 v1, 0x80000000, v120, vcc_lo
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v123, s17 :: v_dual_mov_b32 v122, s16
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s0, s0, -1
	s_add_i32 s3, s3, 64
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_b32 v121, v1, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e32 v1, 0x80000000, v119, vcc_lo
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v119, s35, v119
	s_cmp_lg_u32 s0, 0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[17:20], v1, s[28:31], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v1, v111 offset:16544
	ds_load_u8 v2, v111 offset:16512
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v120, s6, v120
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v111 offset:16608
	ds_load_u8 v3, v111 offset:16576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v131, v2, 16, v1
	ds_load_u8 v1, v111 offset:16480
	ds_load_u8 v2, v111 offset:16448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v111 offset:16384
	ds_load_u8 v3, v111 offset:16416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v130, v1, 16, v2
	ds_load_u8 v1, v112 offset:640
	ds_load_u8 v2, v112 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v112 offset:896
	ds_load_u8 v3, v112 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v2, 16, v1
	ds_load_u8 v1, v112 offset:128
	ds_load_u8 v2, v112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v112 offset:384
	ds_load_u8 v3, v112 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v2, 16, v1
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[130:131], v[122:129] neg_lo:[1,1,0]
	ds_load_u8 v9, v111 offset:16800
	ds_load_u8 v10, v111 offset:16768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:16864
	ds_load_u8 v11, v111 offset:16832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v133, v10, 16, v9
	ds_load_u8 v9, v111 offset:16672
	ds_load_u8 v10, v111 offset:16640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:16736
	ds_load_u8 v11, v111 offset:16704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v132, v10, 16, v9
	ds_load_u8 v9, v112 offset:1664
	ds_load_u8 v10, v112 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v112 offset:1920
	ds_load_u8 v11, v112 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v112 offset:1152
	ds_load_u8 v11, v112 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v112 offset:1408
	ds_load_u8 v12, v112 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[132:133], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v111 offset:17056
	ds_load_u8 v10, v111 offset:17024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:17120
	ds_load_u8 v11, v111 offset:17088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v135, v10, 16, v9
	ds_load_u8 v9, v111 offset:16928
	ds_load_u8 v10, v111 offset:16896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:16992
	ds_load_u8 v11, v111 offset:16960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v134, v10, 16, v9
	ds_load_u8 v9, v112 offset:2688
	ds_load_u8 v10, v112 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v112 offset:2944
	ds_load_u8 v11, v112 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v112 offset:2176
	ds_load_u8 v11, v112 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v112 offset:2432
	ds_load_u8 v12, v112 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[134:135], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v111 offset:17312
	ds_load_u8 v10, v111 offset:17280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:17376
	ds_load_u8 v11, v111 offset:17344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v10, 16, v9
	ds_load_u8 v9, v111 offset:17184
	ds_load_u8 v10, v111 offset:17152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:17248
	ds_load_u8 v11, v111 offset:17216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v136, v10, 16, v9
	ds_load_u8 v9, v112 offset:3712
	ds_load_u8 v10, v112 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v112 offset:3968
	ds_load_u8 v11, v112 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v112 offset:3200
	ds_load_u8 v11, v112 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v112 offset:3456
	ds_load_u8 v12, v112 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[136:137], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v111 offset:17568
	ds_load_u8 v10, v111 offset:17536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:17632
	ds_load_u8 v11, v111 offset:17600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v139, v10, 16, v9
	ds_load_u8 v9, v111 offset:17440
	ds_load_u8 v10, v111 offset:17408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:17504
	ds_load_u8 v11, v111 offset:17472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v138, v10, 16, v9
	ds_load_u8 v9, v112 offset:4736
	ds_load_u8 v10, v112 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v112 offset:4992
	ds_load_u8 v11, v112 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v112 offset:4224
	ds_load_u8 v11, v112 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v112 offset:4480
	ds_load_u8 v12, v112 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[138:139], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v111 offset:17824
	ds_load_u8 v10, v111 offset:17792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:17888
	ds_load_u8 v11, v111 offset:17856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v141, v10, 16, v9
	ds_load_u8 v9, v111 offset:17696
	ds_load_u8 v10, v111 offset:17664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:17760
	ds_load_u8 v11, v111 offset:17728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v140, v10, 16, v9
	ds_load_u8 v9, v112 offset:5760
	ds_load_u8 v10, v112 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v112 offset:6016
	ds_load_u8 v11, v112 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v112 offset:5248
	ds_load_u8 v11, v112 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v112 offset:5504
	ds_load_u8 v12, v112 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[140:141], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v111 offset:18080
	ds_load_u8 v10, v111 offset:18048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:18144
	ds_load_u8 v11, v111 offset:18112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v143, v10, 16, v9
	ds_load_u8 v9, v111 offset:17952
	ds_load_u8 v10, v111 offset:17920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:18016
	ds_load_u8 v11, v111 offset:17984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v10, 16, v9
	ds_load_u8 v9, v112 offset:6784
	ds_load_u8 v10, v112 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v112 offset:7040
	ds_load_u8 v11, v112 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v112 offset:6272
	ds_load_u8 v11, v112 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v112 offset:6528
	ds_load_u8 v12, v112 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[142:143], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v111 offset:18336
	ds_load_u8 v10, v111 offset:18304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:18400
	ds_load_u8 v11, v111 offset:18368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v145, v10, 16, v9
	ds_load_u8 v9, v111 offset:18208
	ds_load_u8 v10, v111 offset:18176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v111 offset:18272
	ds_load_u8 v11, v111 offset:18240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v144, v10, 16, v9
	ds_load_u8 v9, v112 offset:7808
	ds_load_u8 v10, v112 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v112 offset:8064
	ds_load_u8 v11, v112 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v112 offset:7296
	ds_load_u8 v11, v112 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v112 offset:7552
	ds_load_u8 v12, v112 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[144:145], v[1:8] neg_lo:[1,1,0]
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_cndmask_b32_e32 v9, 0x80000000, v118, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v118, s35, v118
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	buffer_load_b128 v[21:24], v9, s[28:31], 0 offen
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v9, v112 offset:8832
	ds_load_u8 v10, v112 offset:8704
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v112 offset:9088
	ds_load_u8 v11, v112 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v147, v10, 16, v9
	ds_load_u8 v9, v112 offset:8320
	ds_load_u8 v10, v112 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v112 offset:8576
	ds_load_u8 v11, v112 offset:8448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v146, v10, 16, v9
	v_wmma_i32_16x16x16_iu4 v[9:16], v[146:147], v[130:131], v[122:129] neg_lo:[1,1,0]
	ds_load_u8 v122, v112 offset:9856
	ds_load_u8 v123, v112 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v112 offset:10112
	ds_load_u8 v124, v112 offset:9984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v123, v123, 16, v122
	ds_load_u8 v122, v112 offset:9344
	ds_load_u8 v124, v112 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v124, v122, 0xc0c0004
	ds_load_u8 v124, v112 offset:9600
	ds_load_u8 v125, v112 offset:9472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v122, v124, 16, v122
	v_wmma_i32_16x16x16_iu4 v[9:16], v[122:123], v[132:133], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v122, v112 offset:10880
	ds_load_u8 v123, v112 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v112 offset:11136
	ds_load_u8 v124, v112 offset:11008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v123, v123, 16, v122
	ds_load_u8 v122, v112 offset:10368
	ds_load_u8 v124, v112 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v124, v122, 0xc0c0004
	ds_load_u8 v124, v112 offset:10624
	ds_load_u8 v125, v112 offset:10496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v122, v124, 16, v122
	v_wmma_i32_16x16x16_iu4 v[9:16], v[122:123], v[134:135], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v122, v112 offset:11904
	ds_load_u8 v123, v112 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v112 offset:12160
	ds_load_u8 v124, v112 offset:12032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v123, v123, 16, v122
	ds_load_u8 v122, v112 offset:11392
	ds_load_u8 v124, v112 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v124, v122, 0xc0c0004
	ds_load_u8 v124, v112 offset:11648
	ds_load_u8 v125, v112 offset:11520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v122, v124, 16, v122
	v_wmma_i32_16x16x16_iu4 v[9:16], v[122:123], v[136:137], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v122, v112 offset:12928
	ds_load_u8 v123, v112 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v112 offset:13184
	ds_load_u8 v124, v112 offset:13056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v123, v123, 16, v122
	ds_load_u8 v122, v112 offset:12416
	ds_load_u8 v124, v112 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v124, v122, 0xc0c0004
	ds_load_u8 v124, v112 offset:12672
	ds_load_u8 v125, v112 offset:12544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v122, v124, 16, v122
	v_wmma_i32_16x16x16_iu4 v[9:16], v[122:123], v[138:139], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v122, v112 offset:13952
	ds_load_u8 v123, v112 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v112 offset:14208
	ds_load_u8 v124, v112 offset:14080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v123, v123, 16, v122
	ds_load_u8 v122, v112 offset:13440
	ds_load_u8 v124, v112 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v124, v122, 0xc0c0004
	ds_load_u8 v124, v112 offset:13696
	ds_load_u8 v125, v112 offset:13568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v122, v124, 16, v122
	v_wmma_i32_16x16x16_iu4 v[9:16], v[122:123], v[140:141], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v122, v112 offset:14976
	ds_load_u8 v123, v112 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v112 offset:15232
	ds_load_u8 v124, v112 offset:15104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v123, v123, 16, v122
	ds_load_u8 v122, v112 offset:14464
	ds_load_u8 v124, v112 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v124, v122, 0xc0c0004
	ds_load_u8 v124, v112 offset:14720
	ds_load_u8 v125, v112 offset:14592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v122, v124, 16, v122
	v_wmma_i32_16x16x16_iu4 v[9:16], v[122:123], v[142:143], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v122, v112 offset:16000
	ds_load_u8 v123, v112 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v112 offset:16256
	ds_load_u8 v124, v112 offset:16128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v123, v123, 16, v122
	ds_load_u8 v122, v112 offset:15488
	ds_load_u8 v124, v112 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v124, v122, 0xc0c0004
	ds_load_u8 v124, v112 offset:15744
	ds_load_u8 v125, v112 offset:15616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v122, v124, 16, v122
	v_wmma_i32_16x16x16_iu4 v[9:16], v[122:123], v[144:145], v[9:16] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v122, v117, s[36:39], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v117, 2, v117
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v122, 16, v122
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v9, v122, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v123, v114, v116
	s_clause 0x7
	buffer_load_u16 v124, v123, s[40:43], 0 offen
	buffer_load_u16 v125, v123, s[40:43], 0 offen offset:4
	buffer_load_u16 v126, v123, s[40:43], 0 offen offset:8
	buffer_load_u16 v127, v123, s[40:43], 0 offen offset:12
	buffer_load_u16 v128, v123, s[40:43], 0 offen offset:16
	buffer_load_u16 v129, v123, s[40:43], 0 offen offset:20
	buffer_load_u16 v130, v123, s[40:43], 0 offen offset:24
	buffer_load_u16 v123, v123, s[40:43], 0 offen offset:28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v2, v122, v2
	v_mul_f32_e32 v1, v122, v1
	v_mul_f32_e32 v4, v122, v4
	v_mul_f32_e32 v3, v122, v3
	v_mul_f32_e32 v6, v122, v6
	v_mul_f32_e32 v5, v122, v5
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v14, v122, v14
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v8, v122, v8
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v10, v122, v10
	v_mul_f32_e32 v12, v122, v12
	v_mul_f32_e32 v16, v122, v16
	v_dual_mul_f32 v15, v122, v15 :: v_dual_add_nc_u32 v116, s34, v116
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v124, 16, v124
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v40, v1, v124 :: v_dual_lshlrev_b32 v125, 16, v125
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v41, v2, v125 :: v_dual_lshlrev_b32 v124, 16, v127
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v131, v114, v115
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v125, 16, v126
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v123, 16, v123
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v38, v4, v124 :: v_dual_add_nc_u32 v115, s34, v115
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v132, v131, s[40:43], 0 offen
	buffer_load_u16 v133, v131, s[40:43], 0 offen offset:4
	buffer_load_u16 v134, v131, s[40:43], 0 offen offset:8
	buffer_load_u16 v135, v131, s[40:43], 0 offen offset:12
	buffer_load_u16 v136, v131, s[40:43], 0 offen offset:16
	buffer_load_u16 v137, v131, s[40:43], 0 offen offset:20
	buffer_load_u16 v138, v131, s[40:43], 0 offen offset:24
	buffer_load_u16 v131, v131, s[40:43], 0 offen offset:28
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v124, 16, v129
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v37, v3, v125
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v125, 16, v128
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v7, v122, v7
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v11, v122, v11
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v34, v6, v124
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v33, v5, v125 :: v_dual_lshlrev_b32 v124, 16, v130
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v109, v121 offset:16384
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	ds_store_b128 v110, v[17:20]
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	ds_store_b128 v110, v[21:24] offset:8192
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v2, 16, v132
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v1, 16, v133
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v4, 16, v134
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v3, 16, v135
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v6, 16, v136
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v5, 16, v137
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v27, v8, v123 :: v_dual_lshlrev_b32 v8, 16, v138
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v13, v122, v13 :: v_dual_fmac_f32 v30, v7, v124
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v26, v9, v2 :: v_dual_lshlrev_b32 v7, 16, v131
	v_dual_fmac_f32 v39, v10, v1 :: v_dual_fmac_f32 v36, v12, v3
	v_fmac_f32_e32 v35, v11, v4
	v_dual_fmac_f32 v31, v13, v6 :: v_dual_fmac_f32 v32, v14, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v28, v15, v8 :: v_dual_fmac_f32 v29, v16, v7
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v157, v108
.LBB0_6:                                ; %._crit_edge
	.loc	1 160 26 is_stmt 1              ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v149, v111 offset:16384
	ds_load_u8_d16 v150, v111 offset:16416
	ds_load_u8_d16 v151, v111 offset:16448
	ds_load_u8_d16 v152, v111 offset:16480
	ds_load_u8_d16 v153, v111 offset:16512
	ds_load_u8_d16 v154, v111 offset:16544
	ds_load_u8_d16 v155, v111 offset:16576
	ds_load_u8_d16 v156, v111 offset:16608
	ds_load_u8_d16 v141, v111 offset:16640
	ds_load_u8_d16 v142, v111 offset:16672
	ds_load_u8_d16 v143, v111 offset:16704
	ds_load_u8_d16 v144, v111 offset:16736
	ds_load_u8_d16 v145, v111 offset:16768
	ds_load_u8_d16 v146, v111 offset:16800
	ds_load_u8_d16 v147, v111 offset:16832
	ds_load_u8_d16 v148, v111 offset:16864
	ds_load_u8_d16 v129, v111 offset:16896
	ds_load_u8_d16 v130, v111 offset:16928
	ds_load_u8_d16 v131, v111 offset:16960
	ds_load_u8_d16 v133, v111 offset:16992
	ds_load_u8_d16 v137, v111 offset:17024
	ds_load_u8_d16 v138, v111 offset:17056
	ds_load_u8_d16 v139, v111 offset:17088
	ds_load_u8_d16 v140, v111 offset:17120
	ds_load_u8_d16 v125, v111 offset:17152
	ds_load_u8_d16 v126, v111 offset:17184
	ds_load_u8_d16 v127, v111 offset:17216
	ds_load_u8_d16 v128, v111 offset:17248
	ds_load_u8_d16 v132, v111 offset:17280
	ds_load_u8_d16 v134, v111 offset:17312
	ds_load_u8_d16 v135, v111 offset:17344
	ds_load_u8_d16 v136, v111 offset:17376
	ds_load_u8_d16 v117, v111 offset:17408
	ds_load_u8_d16 v118, v111 offset:17440
	ds_load_u8_d16 v119, v111 offset:17472
	ds_load_u8_d16 v120, v111 offset:17504
	ds_load_u8_d16 v121, v111 offset:17536
	ds_load_u8_d16 v122, v111 offset:17568
	ds_load_u8_d16 v123, v111 offset:17600
	ds_load_u8_d16 v124, v111 offset:17632
	ds_load_u8_d16 v108, v111 offset:17664
	ds_load_u8_d16 v109, v111 offset:17696
	ds_load_u8_d16 v110, v111 offset:17728
	ds_load_u8_d16 v112, v111 offset:17760
	ds_load_u8_d16 v113, v111 offset:17792
	ds_load_u8_d16 v114, v111 offset:17824
	ds_load_u8_d16 v115, v111 offset:17856
	ds_load_u8_d16 v116, v111 offset:17888
	ds_load_u8_d16 v2, v111 offset:17920
	ds_load_u8_d16 v3, v111 offset:17952
	ds_load_u8_d16 v4, v111 offset:17984
	ds_load_u8_d16 v5, v111 offset:18016
	ds_load_u8_d16 v7, v111 offset:18048
	ds_load_u8_d16 v10, v111 offset:18080
	ds_load_u8_d16 v11, v111 offset:18112
	ds_load_u8_d16 v13, v111 offset:18144
	ds_load_u8_d16 v6, v111 offset:18176
	ds_load_u8_d16 v8, v111 offset:18208
	ds_load_u8_d16 v9, v111 offset:18240
	ds_load_u8_d16 v12, v111 offset:18272
	ds_load_u8_d16 v14, v111 offset:18304
	ds_load_u8_d16 v15, v111 offset:18336
	ds_load_u8_d16 v16, v111 offset:18368
	ds_load_u8_d16 v17, v111 offset:18400
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_cndmask_b32_e64 v18, 0, 1, s2
	v_mov_b32_e32 v1, 0
	v_add_nc_u32_e32 v21, 0, v107
	v_add_nc_u32_e32 v24, 0, v105
	v_add_nc_u32_e32 v104, 0, v104
	v_cmp_ne_u32_e64 s0, 1, v18
	v_add_nc_u32_e32 v18, 0, v106
	v_add_nc_u32_e32 v19, 0, v103
	v_add_nc_u32_e32 v20, 0, v102
	v_add_nc_u32_e32 v22, 0, v101
	v_add_nc_u32_e32 v23, 0, v100
	v_add_nc_u32_e32 v99, 0, v99
	v_add_nc_u32_e32 v98, 0, v98
	v_add_nc_u32_e32 v97, 0, v97
	v_add_nc_u32_e32 v96, 0, v96
	v_add_nc_u32_e32 v95, 0, v95
	v_add_nc_u32_e32 v94, 0, v94
	v_add_nc_u32_e32 v93, 0, v93
	v_add_nc_u32_e32 v92, 0, v92
	v_add_nc_u32_e32 v91, 0, v91
	v_add_nc_u32_e32 v90, 0, v90
	v_add_nc_u32_e32 v89, 0, v89
	v_add_nc_u32_e32 v88, 0, v88
	v_add_nc_u32_e32 v87, 0, v87
	v_add_nc_u32_e32 v86, 0, v86
	v_add_nc_u32_e32 v85, 0, v85
	v_add_nc_u32_e32 v84, 0, v84
	v_add_nc_u32_e32 v83, 0, v83
	v_add_nc_u32_e32 v82, 0, v82
	v_add_nc_u32_e32 v81, 0, v81
	v_add_nc_u32_e32 v80, 0, v80
	v_add_nc_u32_e32 v79, 0, v79
	v_add_nc_u32_e32 v78, 0, v78
	v_add_nc_u32_e32 v77, 0, v77
	v_add_nc_u32_e32 v76, 0, v76
	v_add_nc_u32_e32 v75, 0, v75
	v_add_nc_u32_e32 v74, 0, v74
	v_add_nc_u32_e32 v73, 0, v73
	v_add_nc_u32_e32 v72, 0, v72
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
	v_add_nc_u32_e32 v100, 0, v56
	v_add_nc_u32_e32 v55, 0, v55
	v_add_nc_u32_e32 v54, 0, v54
	v_add_nc_u32_e32 v53, 0, v53
	v_add_nc_u32_e32 v56, 0, v52
	v_add_nc_u32_e32 v106, 0, v51
	v_add_nc_u32_e32 v101, 0, v50
	v_add_nc_u32_e32 v111, 0, v49
	v_add_nc_u32_e32 v158, 0, v48
	v_add_nc_u32_e32 v103, 0, v47
	v_add_nc_u32_e32 v105, 0, v46
	v_add_nc_u32_e32 v102, 0, v45
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v107, 0, v157
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v47, 0
	v_mov_b32_e32 v51, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v45, v153, v154, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v46, v155, v156, 0xc0c0004
	v_perm_b32 v47, v151, v152, 0xc0c0004
	v_mov_b32_e32 v159, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v46, v46, 16, v45
	v_perm_b32 v45, v149, v150, 0xc0c0004
	v_mov_b32_e32 v160, v159
	v_mov_b32_e32 v161, v159
	v_mov_b32_e32 v162, v159
	v_mov_b32_e32 v163, v159
	v_lshl_or_b32 v45, v47, 16, v45
	ds_load_u8 v47, v111
	ds_load_u8 v48, v158
	v_mov_b32_e32 v164, v159
	v_mov_b32_e32 v165, v159
	v_mov_b32_e32 v166, v159
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v106
	ds_load_u8 v49, v101
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v48, 16, v47
	ds_load_u8 v47, v102
	ds_load_u8 v49, v107
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v49, v47, 0xc0c0004
	ds_load_u8 v49, v103
	ds_load_u8 v50, v105
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v49, 16, v47
	v_wmma_i32_16x16x16_iu4 v[159:166], v[47:48], v[45:46], v[159:166] neg_lo:[1,1,0]
	v_perm_b32 v45, v145, v146, 0xc0c0004
	v_perm_b32 v46, v147, v148, 0xc0c0004
	v_perm_b32 v47, v143, v144, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	v_perm_b32 v45, v141, v142, 0xc0c0004
	v_lshl_or_b32 v45, v47, 16, v45
	ds_load_u8 v47, v57
	ds_load_u8 v48, v100
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v59
	ds_load_u8 v49, v58
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v48, 16, v47
	ds_load_u8 v47, v53
	ds_load_u8 v49, v56
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v49, v47, 0xc0c0004
	ds_load_u8 v49, v55
	ds_load_u8 v50, v54
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v49, 16, v47
	v_wmma_i32_16x16x16_iu4 v[159:166], v[47:48], v[45:46], v[159:166] neg_lo:[1,1,0]
	v_perm_b32 v45, v137, v138, 0xc0c0004
	v_perm_b32 v46, v139, v140, 0xc0c0004
	v_perm_b32 v47, v131, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	v_perm_b32 v45, v129, v130, 0xc0c0004
	v_lshl_or_b32 v45, v47, 16, v45
	ds_load_u8 v47, v65
	ds_load_u8 v48, v64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v67
	ds_load_u8 v49, v66
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v48, 16, v47
	ds_load_u8 v47, v61
	ds_load_u8 v49, v60
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v49, v47, 0xc0c0004
	ds_load_u8 v49, v63
	ds_load_u8 v50, v62
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v49, 16, v47
	v_wmma_i32_16x16x16_iu4 v[159:166], v[47:48], v[45:46], v[159:166] neg_lo:[1,1,0]
	v_perm_b32 v45, v132, v134, 0xc0c0004
	v_perm_b32 v46, v135, v136, 0xc0c0004
	v_perm_b32 v47, v127, v128, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	v_perm_b32 v45, v125, v126, 0xc0c0004
	v_lshl_or_b32 v45, v47, 16, v45
	ds_load_u8 v47, v73
	ds_load_u8 v48, v72
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v75
	ds_load_u8 v49, v74
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v48, 16, v47
	ds_load_u8 v47, v69
	ds_load_u8 v49, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v49, v47, 0xc0c0004
	ds_load_u8 v49, v71
	ds_load_u8 v50, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v49, 16, v47
	v_wmma_i32_16x16x16_iu4 v[159:166], v[47:48], v[45:46], v[159:166] neg_lo:[1,1,0]
	v_perm_b32 v45, v121, v122, 0xc0c0004
	v_perm_b32 v46, v123, v124, 0xc0c0004
	v_perm_b32 v47, v119, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	v_perm_b32 v45, v117, v118, 0xc0c0004
	v_lshl_or_b32 v45, v47, 16, v45
	ds_load_u8 v47, v81
	ds_load_u8 v48, v80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v83
	ds_load_u8 v49, v82
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v48, 16, v47
	ds_load_u8 v47, v77
	ds_load_u8 v49, v76
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v49, v47, 0xc0c0004
	ds_load_u8 v49, v79
	ds_load_u8 v50, v78
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v49, 16, v47
	v_wmma_i32_16x16x16_iu4 v[159:166], v[47:48], v[45:46], v[159:166] neg_lo:[1,1,0]
	v_perm_b32 v45, v113, v114, 0xc0c0004
	v_perm_b32 v46, v115, v116, 0xc0c0004
	v_perm_b32 v47, v110, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	v_perm_b32 v45, v108, v109, 0xc0c0004
	v_lshl_or_b32 v45, v47, 16, v45
	ds_load_u8 v47, v89
	ds_load_u8 v48, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v91
	ds_load_u8 v49, v90
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v48, 16, v47
	ds_load_u8 v47, v85
	ds_load_u8 v49, v84
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v49, v47, 0xc0c0004
	ds_load_u8 v49, v87
	ds_load_u8 v50, v86
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v49, 16, v47
	v_wmma_i32_16x16x16_iu4 v[159:166], v[47:48], v[45:46], v[159:166] neg_lo:[1,1,0]
	v_perm_b32 v45, v7, v10, 0xc0c0004
	v_perm_b32 v46, v11, v13, 0xc0c0004
	v_perm_b32 v47, v4, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	v_perm_b32 v45, v2, v3, 0xc0c0004
	v_lshl_or_b32 v45, v47, 16, v45
	ds_load_u8 v47, v97
	ds_load_u8 v48, v96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v99
	ds_load_u8 v49, v98
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v48, 16, v47
	ds_load_u8 v47, v93
	ds_load_u8 v49, v92
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v49, v47, 0xc0c0004
	ds_load_u8 v49, v95
	ds_load_u8 v50, v94
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v49, 16, v47
	v_wmma_i32_16x16x16_iu4 v[159:166], v[47:48], v[45:46], v[159:166] neg_lo:[1,1,0]
	v_perm_b32 v45, v14, v15, 0xc0c0004
	v_perm_b32 v46, v16, v17, 0xc0c0004
	v_perm_b32 v47, v9, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	v_perm_b32 v45, v6, v8, 0xc0c0004
	v_lshl_or_b32 v45, v47, 16, v45
	ds_load_u8 v47, v24
	ds_load_u8 v48, v104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v21
	ds_load_u8 v49, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v48, 16, v47
	ds_load_u8 v47, v22
	ds_load_u8 v49, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v49, v47, 0xc0c0004
	ds_load_u8 v49, v19
	ds_load_u8 v50, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v47, v49, 16, v47
	v_wmma_i32_16x16x16_iu4 v[159:166], v[47:48], v[45:46], v[159:166] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v46, v159
	v_cvt_f32_i32_e32 v50, v160
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v49, v161
	v_cvt_f32_i32_e32 v52, v162
	v_cvt_f32_i32_e32 v45, v163
	v_cvt_f32_i32_e32 v48, v164
	v_cvt_f32_i32_e32 v47, v165
	v_cvt_f32_i32_e32 v51, v166
.LBB0_8:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v159, 0
	v_mov_b32_e32 v163, 0
	.loc	1 175 36 is_stmt 1              ; generate_amdgcn.py:175:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	ds_load_u8 v1, v111 offset:8192
	ds_load_u8 v111, v158 offset:8192
	ds_load_u8 v106, v106 offset:8192
	ds_load_u8 v107, v107 offset:8192
	ds_load_u8 v103, v103 offset:8192
	ds_load_u8 v105, v105 offset:8192
	ds_load_u8 v157, v101 offset:8192
	ds_load_u8 v158, v102 offset:8192
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v101, v153, v154, 0xc0c0004
	v_perm_b32 v102, v155, v156, 0xc0c0004
	v_perm_b32 v150, v149, v150, 0xc0c0004
	v_perm_b32 v151, v151, v152, 0xc0c0004
	v_mov_b32_e32 v149, 0
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v3, v2, v3, 0xc0c0004
	v_lshl_or_b32 v102, v102, 16, v101
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v4, v4, v5, 0xc0c0004
	v_lshl_or_b32 v101, v151, 16, v150
	v_mov_b32_e32 v150, v149
	v_mov_b32_e32 v151, v149
	v_mov_b32_e32 v152, v149
	v_mov_b32_e32 v153, v149
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v111, v1, 0xc0c0004
	v_mov_b32_e32 v154, v149
	v_mov_b32_e32 v155, v149
	v_mov_b32_e32 v156, v149
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v103, v105, v103, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v106, v157, v106, 0xc0c0004
	ds_load_u8 v57, v57 offset:8192
	ds_load_u8 v100, v100 offset:8192
	ds_load_u8 v59, v59 offset:8192
	ds_load_u8 v105, v56 offset:8192
	ds_load_u8 v111, v55 offset:8192
	ds_load_u8 v157, v54 offset:8192
	ds_load_u8 v56, v58 offset:8192
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v107, v107, v158, 0xc0c0004
	v_perm_b32 v58, v143, v144, 0xc0c0004
	v_perm_b32 v6, v6, v8, 0xc0c0004
	v_lshl_or_b32 v55, v106, 16, v1
	ds_load_u8 v1, v53 offset:8192
	v_lshl_or_b32 v54, v103, 16, v107
	v_perm_b32 v53, v145, v146, 0xc0c0004
	v_perm_b32 v8, v9, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[149:156], v[54:55], v[101:102], v[149:156] neg_lo:[1,1,0]
	v_perm_b32 v54, v147, v148, 0xc0c0004
	v_perm_b32 v55, v141, v142, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v57, v100, v57, 0xc0c0004
	v_lshl_or_b32 v54, v54, 16, v53
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v53, v58, 16, v55
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v55, v157, v111, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v56, v56, v59, 0xc0c0004
	ds_load_u8 v59, v65 offset:8192
	ds_load_u8 v64, v64 offset:8192
	ds_load_u8 v65, v67 offset:8192
	ds_load_u8 v61, v61 offset:8192
	ds_load_u8 v60, v60 offset:8192
	ds_load_u8 v63, v63 offset:8192
	ds_load_u8 v62, v62 offset:8192
	ds_load_u8 v66, v66 offset:8192
	v_lshl_or_b32 v56, v56, 16, v57
	ds_load_u8 v57, v73 offset:8192
	ds_load_u8 v58, v72 offset:8192
	ds_load_u8 v67, v75 offset:8192
	ds_load_u8 v69, v69 offset:8192
	ds_load_u8 v68, v68 offset:8192
	ds_load_u8 v71, v71 offset:8192
	ds_load_u8 v70, v70 offset:8192
	ds_load_u8 v72, v74 offset:8192
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v1, v105, v1, 0xc0c0004
	v_perm_b32 v73, v139, v140, 0xc0c0004
	v_perm_b32 v74, v129, v130, 0xc0c0004
	v_perm_b32 v75, v131, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v55, v55, 16, v1
	v_perm_b32 v1, v137, v138, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v59, v64, v59, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[149:156], v[55:56], v[53:54], v[149:156] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v60, v60, v61, 0xc0c0004
	v_lshl_or_b32 v54, v73, 16, v1
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v61, v62, v63, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v64, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	v_lshl_or_b32 v53, v75, 16, v74
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v68, v68, v69, 0xc0c0004
	v_lshl_or_b32 v55, v61, 16, v60
	v_lshl_or_b32 v56, v64, 16, v59
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v72, v67, 0xc0c0004
	ds_load_u8 v62, v81 offset:8192
	ds_load_u8 v63, v80 offset:8192
	ds_load_u8 v64, v83 offset:8192
	ds_load_u8 v65, v77 offset:8192
	ds_load_u8 v66, v76 offset:8192
	ds_load_u8 v67, v79 offset:8192
	ds_load_u8 v72, v78 offset:8192
	ds_load_u8 v73, v82 offset:8192
	v_perm_b32 v60, v125, v126, 0xc0c0004
	v_perm_b32 v61, v127, v128, 0xc0c0004
	v_perm_b32 v69, v70, v71, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[149:156], v[55:56], v[53:54], v[149:156] neg_lo:[1,1,0]
	v_perm_b32 v1, v132, v134, 0xc0c0004
	v_perm_b32 v59, v135, v136, 0xc0c0004
	v_lshl_or_b32 v53, v61, 16, v60
	v_lshl_or_b32 v55, v69, 16, v68
	ds_load_u8 v60, v89 offset:8192
	ds_load_u8 v61, v88 offset:8192
	ds_load_u8 v68, v91 offset:8192
	ds_load_u8 v69, v84 offset:8192
	ds_load_u8 v70, v87 offset:8192
	ds_load_u8 v71, v86 offset:8192
	ds_load_u8 v74, v90 offset:8192
	v_lshl_or_b32 v56, v58, 16, v57
	v_lshl_or_b32 v54, v59, 16, v1
	v_perm_b32 v1, v121, v122, 0xc0c0004
	v_perm_b32 v57, v123, v124, 0xc0c0004
	v_perm_b32 v58, v117, v118, 0xc0c0004
	v_perm_b32 v59, v119, v120, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[149:156], v[55:56], v[53:54], v[149:156] neg_lo:[1,1,0]
	v_lshl_or_b32 v54, v57, 16, v1
	ds_load_u8 v1, v85 offset:8192
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v63, v73, v64, 0xc0c0004
	v_perm_b32 v64, v66, v65, 0xc0c0004
	v_perm_b32 v65, v72, v67, 0xc0c0004
	v_lshl_or_b32 v53, v59, 16, v58
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v57, v61, v60, 0xc0c0004
	v_lshl_or_b32 v56, v63, 16, v62
	v_lshl_or_b32 v55, v65, 16, v64
	ds_load_u8 v59, v97 offset:8192
	ds_load_u8 v60, v96 offset:8192
	ds_load_u8 v61, v99 offset:8192
	ds_load_u8 v62, v93 offset:8192
	ds_load_u8 v63, v92 offset:8192
	ds_load_u8 v64, v95 offset:8192
	ds_load_u8 v65, v94 offset:8192
	ds_load_u8 v66, v98 offset:8192
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v58, v74, v68, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[149:156], v[55:56], v[53:54], v[149:156] neg_lo:[1,1,0]
	v_perm_b32 v53, v113, v114, 0xc0c0004
	v_perm_b32 v54, v115, v116, 0xc0c0004
	v_perm_b32 v55, v108, v109, 0xc0c0004
	v_perm_b32 v56, v110, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v54, v54, 16, v53
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v1, v69, v1, 0xc0c0004
	v_lshl_or_b32 v53, v56, 16, v55
	v_lshl_or_b32 v56, v58, 16, v57
	ds_load_u8 v24, v24 offset:8192
	ds_load_u8 v57, v104 offset:8192
	ds_load_u8 v21, v21 offset:8192
	ds_load_u8 v22, v22 offset:8192
	ds_load_u8 v23, v23 offset:8192
	ds_load_u8 v19, v19 offset:8192
	ds_load_u8 v20, v20 offset:8192
	ds_load_u8 v18, v18 offset:8192
	v_perm_b32 v55, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v5, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v55, v55, 16, v1
	v_perm_b32 v1, v7, v10, 0xc0c0004
	v_perm_b32 v7, v11, v13, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v10, v66, v61, 0xc0c0004
	v_perm_b32 v11, v63, v62, 0xc0c0004
	v_perm_b32 v13, v65, v64, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[149:156], v[55:56], v[53:54], v[149:156] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v7, 16, v1
	v_lshl_or_b32 v1, v4, 16, v3
	v_lshl_or_b32 v4, v10, 16, v5
	v_lshl_or_b32 v3, v13, 16, v11
	v_perm_b32 v5, v14, v15, 0xc0c0004
	v_perm_b32 v7, v16, v17, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v9, v57, v24, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v18, v21, 0xc0c0004
	v_perm_b32 v11, v23, v22, 0xc0c0004
	v_perm_b32 v12, v20, v19, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[149:156], v[3:4], v[1:2], v[149:156] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v7, 16, v5
	v_lshl_or_b32 v1, v8, 16, v6
	v_lshl_or_b32 v4, v10, 16, v9
	v_lshl_or_b32 v3, v12, 16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[149:156], v[3:4], v[1:2], v[149:156] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v1, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v162, v150
	v_cvt_f32_i32_e32 v161, v151
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v164, v152
	v_cvt_f32_i32_e32 v157, v153
	v_cvt_f32_i32_e32 v160, v154
	v_cvt_f32_i32_e32 v159, v155
	v_cvt_f32_i32_e32 v163, v156
.LBB0_10:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_waitcnt lgkmcnt(14)
	v_mul_lo_u32 v3, s33, v43
	s_mul_i32 s0, s5, s33
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s1, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v2, v44, v42
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_add_i32 s0, s0, s1
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s1, s1, s27
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s9, s13, 0xffff
	s_mov_b32 s11, 0x31027000
	v_add_lshl_u32 v3, s0, v3, 1
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s0, s26, s1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	s_waitcnt lgkmcnt(13)
	v_or_b32_e32 v4, 2, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt lgkmcnt(10)
	v_add_lshl_u32 v10, s0, v2, 1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v5, 4, v2
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v6, 6, v2
	.loc	1 182 35                        ; generate_amdgcn.py:182:35
	s_add_i32 s1, s0, s7
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_mov_b32 s8, s12
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v7, 8, v2
	s_waitcnt lgkmcnt(6)
	v_or_b32_e32 v8, 10, v2
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v9, 12, v2
	v_or_b32_e32 v11, 14, v2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v2, s1, v2, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt lgkmcnt(4)
	buffer_load_u16 v12, v3, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v3, 0x80000000, v10, s2
	v_add_lshl_u32 v10, s0, v4, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v4, s1, v4, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v13, s0, v5, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v5, s1, v5, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt lgkmcnt(3)
	v_add_lshl_u32 v14, s0, v6, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v6, s1, v6, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt lgkmcnt(2)
	v_add_lshl_u32 v15, s0, v7, 1
	s_waitcnt lgkmcnt(1)
	v_add_lshl_u32 v16, s0, v8, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_and_b32 s9, s15, 0xffff
	s_mov_b32 s8, s14
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v17, s0, v9, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x9
	buffer_load_u16 v19, v2, s[8:11], 0 offen
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	buffer_load_u16 v18, v3, s[8:11], 0 offen
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	v_add_lshl_u32 v8, s1, v8, 1
	v_add_lshl_u32 v7, s1, v7, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v3, 0x80000000, v17, s2
	v_add_lshl_u32 v17, s0, v11, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v2, s1, v9, 1
	v_add_lshl_u32 v9, s1, v11, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v11, 0x80000000, v17, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	s_clause 0x5
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	buffer_load_u16 v17, v3, s[8:11], 0 offen
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	buffer_load_u16 v20, v2, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v22, 0x7632
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_or_b32_e32 v2, s5, v43
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.h, 0
	v_dual_mov_b32 v21, 0x5410 :: v_dual_and_b32 v0, 16, v0
	s_mov_b32 s8, 0x76543210
	s_and_b32 s25, s25, 0xffff
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b16_e32 v23.h, v3.h
	v_mov_b16_e32 v42.h, v3.h
	v_mov_b16_e32 v24.h, v3.h
	v_mov_b16_e32 v43.h, v3.h
	s_mov_b32 s27, s11
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(10)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v1, v1, v12 :: v_dual_lshlrev_b32 v10, 16, v10
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v1, v1, v19, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v26, v1, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v52, v52, v12 :: v_dual_lshlrev_b32 v7, 16, v7
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v56, v157, v12 :: v_dual_lshlrev_b32 v9, 16, v9
	v_dual_mul_f32 v53, v164, v12 :: v_dual_lshlrev_b32 v14, 16, v14
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v45, v45, v12 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v7, v56, v7, v31
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v54, v161, v12 :: v_dual_lshlrev_b32 v11, 16, v11
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v6, v53, v6, v36
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v46, v46, v12 :: v_dual_lshlrev_b32 v5, 16, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v31, v7, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v51, v51, v12
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v36, v6, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v5, v54, v5, v35
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v49, v49, v12 :: v_dual_lshlrev_b32 v18, 16, v18
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v11, v51, v11, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v44, v50, v12 :: v_dual_lshlrev_b32 v13, 16, v13
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v50, v162, v12 :: v_dual_lshlrev_b32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v11, v27, v11, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v27, 0xbfb8aa3b, v6
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v48, v48, v12 :: v_dual_lshlrev_b32 v17, 16, v17
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v57, v163, v12
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v35, v5, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v27
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v55, v160, v12
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v47, v47, v12
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v12, v159, v12
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v19
	v_cndmask_b32_e64 v27, 0, 0x42800000, s1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v18, v46, v18, v40
	v_fma_f32 v10, v44, v10, v41
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v6
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v12, v12, v20, v28
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v4, v50, v4, v39
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v13, v49, v13, v37
	v_fma_f32 v14, v52, v14, v38
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v12, v28, v12, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v7
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v15, v45, v15, v33
	v_fma_f32 v17, v47, v17, v30
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v26, 0xbfb8aa3b, v5
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v1
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v28
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v8, v55, v8, v32
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v41, v10, s2
	v_cndmask_b32_e64 v18, v40, v18, s2
	v_cndmask_b32_e64 v4, v39, v4, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v28, 0, 0x42800000, s4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v14, v38, v14, s2
	v_cndmask_b32_e64 v13, v37, v13, s2
	v_cndmask_b32_e64 v15, v33, v15, s2
	v_cndmask_b32_e64 v8, v32, v8, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v7
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v9, v57, v9, v29
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v30, v17, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v27, v27
	v_exp_f32_e32 v19, v19
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v9, v29, v9, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v28, v28
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v31, 0xbfb8aa3b, v9
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v16, v48, v16, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v19, v19, v33
	v_mul_f32_e32 v20, 0xbfb8aa3b, v4
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v31
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v16, v34, v16, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v26
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s1
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v31, 0, 0x42800000, s5
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v26, 0, 0x42800000, s2
	v_ldexp_f32 v27, v27, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v30, 0xbfb8aa3b, v12 :: v_dual_fmac_f32 v31, 0xbfb8aa3b, v9
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s2
	v_dual_fmac_f32 v26, 0xbfb8aa3b, v5 :: v_dual_add_f32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v30
	v_exp_f32_e32 v31, v31
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v28, v28, v37
	v_cndmask_b32_e64 v30, 0, 0x42800000, s6
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v34, null, v19, v19, v1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v31, v31, v38
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v12
	v_ldexp_f32 v26, v26, v35
	v_mul_f32_e32 v29, 0xbfb8aa3b, v8
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v50, v34
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v30, v30
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v29
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v35, s0, v1, v19, v1
	v_div_scale_f32 v46, null, v31, v31, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v29, 0, 0x42800000, s3
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v38, null, v26, v26, v5
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v30, v30, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v8
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v55, v46
	v_rcp_f32_e32 v52, v38
	v_fma_f32 v59, -v34, v50, 1.0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v29, v29
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v37, s1, v6, v27, v6
	v_div_scale_f32 v39, s2, v5, v26, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v48, null, v30, v30, v12
	v_fma_f32 v61, -v38, v52, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v64, -v46, v55, 1.0
	v_div_scale_f32 v57, s6, v12, v30, v12
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v29, v29, v36
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v4
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v36, null, v27, v27, v6
	v_rcp_f32_e32 v56, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v51, v36
	v_dual_fmac_f32 v52, v61, v52 :: v_dual_fmac_f32 v55, v64, v55
	v_div_scale_f32 v40, null, v29, v29, v8
	v_div_scale_f32 v41, s3, v8, v29, v8
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v65, -v48, v56, 1.0
	v_rcp_f32_e32 v53, v40
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v20, v20, v32
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v60, -v36, v51, 1.0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v47, s5, v9, v31, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_fmac_f32 v51, v60, v51
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v44, null, v28, v28, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v62, -v40, v53, 1.0
	v_div_scale_f32 v32, null, v20, v20, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v54, v44
	v_dual_fmac_f32 v50, v59, v50 :: v_dual_fmac_f32 v53, v62, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v49, v32
	v_div_scale_f32 v45, s4, v7, v28, v7
	v_dual_fmac_f32 v56, v65, v56 :: v_dual_mul_f32 v59, v35, v50
	v_mul_f32_e32 v61, v39, v52
	v_mul_f32_e32 v64, v47, v55
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v63, -v44, v54, 1.0
	v_mul_f32_e32 v65, v57, v56
	v_fma_f32 v67, -v34, v59, v35
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v58, -v32, v49, 1.0
	v_mul_f32_e32 v60, v37, v51
	v_fmac_f32_e32 v54, v63, v54
	v_fma_f32 v69, -v38, v61, v39
	v_fmac_f32_e32 v59, v67, v50
	v_fmac_f32_e32 v49, v58, v49
	v_div_scale_f32 v33, vcc_lo, v4, v20, v4
	v_mul_f32_e32 v63, v45, v54
	v_fma_f32 v68, -v36, v60, v37
	v_fma_f32 v73, -v48, v65, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v58, v33, v49
	v_fmac_f32_e32 v61, v69, v52
	v_fma_f32 v71, -v44, v63, v45
	v_mul_f32_e32 v62, v41, v53
	v_dual_fmac_f32 v60, v68, v51 :: v_dual_fmac_f32 v65, v73, v56
	v_fma_f32 v66, -v32, v58, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v63, v71, v54
	v_fma_f32 v70, -v40, v62, v41
	v_fma_f32 v72, -v46, v64, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v58, v66, v49
	v_fmac_f32_e32 v62, v70, v53
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v32, -v32, v58, v33
	v_fma_f32 v33, -v34, v59, v35
	v_fma_f32 v34, -v36, v60, v37
	v_fma_f32 v35, -v38, v61, v39
	v_fma_f32 v36, -v40, v62, v41
	v_div_fmas_f32 v32, v32, v49, v58
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v37, -v44, v63, v45
	v_div_fmas_f32 v33, v33, v50, v59
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v32, v20, v4
	v_div_fmas_f32 v34, v34, v51, v60
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v1, v33, v19, v1
	v_div_fmas_f32 v20, v35, v52, v61
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v64, v72, v55
	v_div_fmas_f32 v19, v36, v53, v62
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v20, v26, v5
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v4, v10, v4
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v10, v37, v54, v63
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v1, v18, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v38, -v46, v64, v47
	v_fma_f32 v39, -v48, v65, v57
	v_div_fixup_f32 v6, v34, v27, v6
	v_div_fixup_f32 v7, v10, v28, v7
	s_mov_b32 vcc_lo, s5
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v23.l, v1.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v18, v38, v55, v64
	s_mov_b32 vcc_lo, s6
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v7, v15, v7 :: v_dual_mul_f32 v6, v14, v6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v14, v39, v56, v65
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v5, v13, v5
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v13, 1, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v42.l, v7.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v8, v19, v29, v8
	v_div_fixup_f32 v10, v14, v30, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v4.h
	v_cmp_o_f32_e64 s4, v7, v7
	v_and_b32_e32 v14, 1, v42
	v_cmp_o_f32_e64 s0, v1, v1
	v_add3_u32 v1, v1, v13, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v9, v18, v31, v9
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v8, v16, v8
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v7, v7, v14, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_mov_b16_e32 v24.l, v5.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v9, v11, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v6, v6
	v_cndmask_b16 v1.l, 0x7fff, v7.h, s4
	v_and_b32_e32 v12, 1, v3
	v_mov_b16_e32 v3.l, v6.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v10, v17, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v5, v5
	v_cmp_o_f32_e64 s3, v8, v8
	v_add3_u32 v4, v4, v12, 0x7fff
	v_and_b32_e32 v11, 1, v3
	v_mov_b16_e32 v3.l, v8.h
	v_cmp_o_f32_e64 s5, v9, v9
	v_mov_b16_e32 v43.l, v10.h
	v_cndmask_b16 v4.h, 0x7fff, v4.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v13, 1, v3
	v_mov_b16_e32 v3.l, v9.h
	v_and_b32_e32 v12, 1, v24
	v_add3_u32 v6, v6, v11, 0x7fff
	v_cndmask_b32_e32 v11, 0x3276, v22, vcc_lo
	v_add3_u32 v8, v8, v13, 0x7fff
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v0, v5, v12, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v1.h, s0
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s1
	v_cndmask_b16 v1.h, 0x7fff, v8.h, s3
	v_add3_u32 v3, v9, v3, 0x7fff
	v_cndmask_b32_e32 v8, 0x1054, v21, vcc_lo
	v_cndmask_b16 v6.l, 0x7fff, v0.h, s2
	v_cmp_o_f32_e64 s6, v10, v10
	v_cndmask_b32_e32 v7, v1, v4, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s5
	v_and_b32_e32 v5, 1, v43
	v_lshl_or_b32 v8, v8, 8, v8
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v9, v2, s7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v1, v4, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v5, v10, v5, 0x7fff
	v_lshl_or_b32 v10, v11, 8, v11
	v_permlanex16_b32 v1, v1, s8, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v0.l, 0x7fff, v5.h, s6
	v_and_b32_e32 v5, 0x540054, v8
	v_and_b32_e32 v8, 0x760076, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v4, v6, v0, vcc_lo
	v_lshl_or_b32 v2, v5, 4, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v3, v8, 4, v8
	v_cndmask_b32_e32 v5, v0, v6, vcc_lo
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_and_or_b32 v6, 0x78, v25, s26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_permlanex16_b32 v4, v4, s8, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v2, 0x5040504, v2
	v_and_b32_e32 v3, 0x7060706, v3
	s_mov_b32 s26, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v0, v1, v7, v2
	v_perm_b32 v1, v1, v7, v3
	v_perm_b32 v2, v4, v5, v2
	v_perm_b32 v3, v4, v5, v3
	v_add_lshl_u32 v4, v6, v9, 1
	buffer_store_b128 v[0:3], v4, s[24:27], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 167
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 167
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14136
; TotalNumSgprs: 46
; NumVgprs: 167
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 167
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
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	140                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     167
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
