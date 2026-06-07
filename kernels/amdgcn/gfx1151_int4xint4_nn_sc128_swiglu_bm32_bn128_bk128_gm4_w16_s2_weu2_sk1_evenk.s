	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v14, 4, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v27, 15, v0
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshrrev_b32_e32 v4, 3, v0
	v_lshlrev_b32_e32 v16, 2, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v2, 0x70, v14
                                        ; implicit-def: $vgpr18
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
                                        ; implicit-def: $vgpr105
                                        ; implicit-def: $vgpr106
                                        ; implicit-def: $vgpr107
                                        ; implicit-def: $vgpr108
                                        ; implicit-def: $vgpr111
                                        ; implicit-def: $vgpr112
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s7, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s6, s6, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s8, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s12, s6, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s8, s8, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s12, s12, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s5, s5, s8
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s6, s6, s12
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s6, s6, 5
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s5, s5, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s5
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s9
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s11, s11, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s11, s9, s11
	s_add_i32 s9, s9, s11
	s_xor_b32 s11, s2, s5
	s_mul_hi_u32 s9, s10, s9
	s_ashr_i32 s11, s11, 31
	s_mul_i32 s12, s9, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s10, s10, s12
	s_add_i32 s12, s9, 1
	s_sub_i32 s13, s10, s8
	s_cmp_ge_u32 s10, s8
	s_cselect_b32 s9, s12, s9
	s_cselect_b32 s10, s13, s10
	s_add_i32 s12, s9, 1
	s_cmp_ge_u32 s10, s8
	s_cselect_b32 s8, s12, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s8, s8, s11
	s_sub_i32 s16, s8, s11
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s21, s16, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s16, s16, s5
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s6, s6, s21
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s16
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s6, s6, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s16, s2
	s_abs_i32 s18, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_f32_u32 s17, s18
	v_rcp_iflag_f32_e32 v1, s17
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s31, s11
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	v_readfirstlane_b32 s17, v1
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshlrev_b32_e32 v1, 2, v27
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s18
	s_mul_i32 s17, s17, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s6
	s_add_i32 s5, s10, s5
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s5, s16, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s19, s5, s18
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s30, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s16, s16, s19
	s_add_i32 s19, s5, 1
	s_sub_i32 s20, s16, s18
	s_cmp_ge_u32 s16, s18
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s16, s20, s16
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s16, s18
	s_cselect_b32 s5, s19, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s16, s4, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s20, s5, s17
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s33, s7, 1
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s22, s4, 0x7f
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s16
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s23, s20, s17
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s18, s3, 6
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[5:6], null, s33, v4, v[2:3]
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s19, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s24, s23, s6
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v8, s18, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s5, s22, 31
.Ltmp15:
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[6:7], null, s19, v3, v[1:2]
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s24
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v9, s18, v4
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s4, s5, 25
.Ltmp17:
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s21
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s16, s33, s18
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s26, s23, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s23, s22, s4
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e32 vcc_lo, s19, v8
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s5, 64, v8
	.loc	1 98 14 is_stmt 1               ; generate_amdgcn.py:98:14
	s_lshl_b32 s27, s2, 5
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s6, s19, v9
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s4, 64, v9
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s34, s23, 7
.Ltmp21:
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v5, s26, s16, v5
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	s_mul_i32 s16, s27, s19
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s22, 0x7f
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add3_u32 v6, s18, s16, v6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s16, s5, vcc_lo
	s_and_b32 s6, s4, s6
	.loc	1 174 43                        ; generate_amdgcn.py:174:43
	v_add_nc_u32_e32 v7, s7, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s6
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_and_b32 s29, s29, 0xffff
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v10, 0x80000000, v7
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b32 v15, v6, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_clause 0x1
	buffer_load_b128 v[6:9], v5, s[28:31], 0 offen
	buffer_load_b128 v[10:13], v10, s[28:31], 0 offen
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v5, 0xe0, v0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v110, 0, v14
	s_mov_b32 s6, -1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s22, 0xff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshrrev_b32_e32 v17, 2, v5
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v43, 1, v5
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v17, v16, v17
	v_and_b32_e32 v16, 0x438, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b32_e32 v104, v43, v27
	v_add_nc_u32_e32 v109, 0, v17
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v66, v27, 6, v16
	s_waitcnt vmcnt(2)
	ds_store_b32 v109, v15 offset:16384
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
	v_or_b32_e32 v18, v43, v27
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v46, 0x80, v18
	v_or_b32_e32 v47, 0x100, v18
	v_or_b32_e32 v48, 0x180, v18
	v_or_b32_e32 v49, 0x200, v18
	v_or_b32_e32 v50, 0x280, v18
	v_or_b32_e32 v51, 0x300, v18
	v_or_b32_e32 v52, 0x380, v18
	v_or_b32_e32 v53, 0x400, v18
	v_or_b32_e32 v54, 0x480, v18
	v_or_b32_e32 v55, 0x500, v18
	v_or_b32_e32 v56, 0x580, v18
	v_or_b32_e32 v57, 0x600, v18
	v_or_b32_e32 v58, 0x680, v18
	v_or_b32_e32 v59, 0x700, v18
	v_or_b32_e32 v60, 0x780, v18
	v_or_b32_e32 v61, 0x800, v18
	v_or_b32_e32 v62, 0x880, v18
	v_or_b32_e32 v63, 0x900, v18
	v_or_b32_e32 v64, 0x980, v18
	v_or_b32_e32 v65, 0xa00, v18
	v_or_b32_e32 v67, 0xa80, v18
	v_or_b32_e32 v68, 0xb00, v18
	v_or_b32_e32 v69, 0xb80, v18
	v_or_b32_e32 v70, 0xc00, v18
	v_or_b32_e32 v71, 0xc80, v18
	v_or_b32_e32 v72, 0xd00, v18
	v_or_b32_e32 v73, 0xd80, v18
	v_or_b32_e32 v74, 0xe00, v18
	v_or_b32_e32 v75, 0xe80, v18
	v_or_b32_e32 v76, 0xf00, v18
	v_or_b32_e32 v77, 0xf80, v18
	v_or_b32_e32 v78, 0x1000, v18
	v_or_b32_e32 v79, 0x1080, v18
	v_or_b32_e32 v80, 0x1100, v18
	v_or_b32_e32 v81, 0x1180, v18
	v_or_b32_e32 v82, 0x1200, v18
	v_or_b32_e32 v83, 0x1280, v18
	v_or_b32_e32 v84, 0x1300, v18
	v_or_b32_e32 v85, 0x1380, v18
	v_or_b32_e32 v86, 0x1400, v18
	v_or_b32_e32 v87, 0x1480, v18
	v_or_b32_e32 v88, 0x1500, v18
	v_or_b32_e32 v89, 0x1580, v18
	v_or_b32_e32 v90, 0x1600, v18
	v_or_b32_e32 v91, 0x1680, v18
	v_or_b32_e32 v92, 0x1700, v18
	v_or_b32_e32 v93, 0x1780, v18
	v_or_b32_e32 v94, 0x1800, v18
	v_or_b32_e32 v95, 0x1880, v18
	v_or_b32_e32 v96, 0x1900, v18
	v_or_b32_e32 v97, 0x1980, v18
	v_or_b32_e32 v98, 0x1a00, v18
	v_or_b32_e32 v99, 0x1a80, v18
	v_or_b32_e32 v100, 0x1b00, v18
	v_or_b32_e32 v101, 0x1b80, v18
	v_or_b32_e32 v102, 0x1c00, v18
	v_or_b32_e32 v103, 0x1c80, v18
	v_or_b32_e32 v105, 0x1d00, v18
	v_or_b32_e32 v106, 0x1d80, v18
	v_or_b32_e32 v107, 0x1e00, v18
	v_or_b32_e32 v108, 0x1e80, v18
	v_or_b32_e32 v111, 0x1f00, v18
	v_or_b32_e32 v112, 0x1f80, v18
.LBB0_2:                                ; %Flow280
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_dual_mov_b32 v31, 0 :: v_dual_and_b32 v44, 16, v3
	v_bfe_u32 v45, v0, 4, 1
	v_xor_b32_e32 v119, 8, v66
	v_xor_b32_e32 v118, 16, v66
	v_xor_b32_e32 v116, 24, v66
	v_xor_b32_e32 v113, 32, v66
	v_xor_b32_e32 v117, 40, v66
	v_xor_b32_e32 v115, 48, v66
	v_xor_b32_e32 v114, 56, v66
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v26, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_add_i32 s6, s34, -1
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
	v_dual_mov_b32 v33, 0 :: v_dual_lshlrev_b32 v6, 1, v4
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_sub_nc_u32_e32 v122, s19, v4
	v_add3_u32 v7, s27, v44, v27
	v_lshl_or_b32 v5, s20, 8, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v6, s3, 7, v6
	s_lshl_b32 s1, s20, 7
	v_dual_mov_b32 v40, 0 :: v_dual_add_nc_u32 v3, s27, v3
	v_mul_lo_u32 v7, s34, v7
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v4, 0x81, v6
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v6, 0x80, v6
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v8, s33, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v4, s7, v4
	v_mul_lo_u32 v6, s7, v6
	s_lshl_b32 s0, s17, 8
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v120, 0, v104
	v_subrev_nc_u32_e32 v124, s0, v8
	v_subrev_nc_u32_e32 v125, s0, v5
	s_lshl_b32 s0, s17, 7
	v_add3_u32 v4, v4, s1, v2
	v_add3_u32 v2, v6, s1, v2
	v_or_b32_e32 v46, 0x80, v104
	v_or_b32_e32 v47, 0x100, v104
	v_or_b32_e32 v48, 0x180, v104
	v_or_b32_e32 v49, 0x200, v104
	v_mad_u64_u32 v[25:26], null, s19, v3, v[1:2]
	v_or_b32_e32 v50, 0x280, v104
	v_or_b32_e32 v51, 0x300, v104
	v_or_b32_e32 v52, 0x380, v104
	v_or_b32_e32 v53, 0x400, v104
	v_or_b32_e32 v54, 0x480, v104
	v_or_b32_e32 v55, 0x500, v104
	v_or_b32_e32 v56, 0x580, v104
	v_or_b32_e32 v57, 0x600, v104
	v_or_b32_e32 v58, 0x680, v104
	v_or_b32_e32 v59, 0x700, v104
	v_or_b32_e32 v60, 0x780, v104
	v_or_b32_e32 v61, 0x800, v104
	v_or_b32_e32 v62, 0x880, v104
	v_or_b32_e32 v63, 0x900, v104
	v_or_b32_e32 v64, 0x980, v104
	v_or_b32_e32 v65, 0xa00, v104
	v_or_b32_e32 v67, 0xa80, v104
	v_or_b32_e32 v68, 0xb00, v104
	v_or_b32_e32 v69, 0xb80, v104
	v_or_b32_e32 v70, 0xc00, v104
	v_or_b32_e32 v71, 0xc80, v104
	v_or_b32_e32 v72, 0xd00, v104
	v_or_b32_e32 v73, 0xd80, v104
	v_or_b32_e32 v74, 0xe00, v104
	v_or_b32_e32 v75, 0xe80, v104
	v_or_b32_e32 v76, 0xf00, v104
	v_or_b32_e32 v77, 0xf80, v104
	v_or_b32_e32 v78, 0x1000, v104
	v_or_b32_e32 v79, 0x1080, v104
	v_or_b32_e32 v80, 0x1100, v104
	v_or_b32_e32 v81, 0x1180, v104
	v_or_b32_e32 v82, 0x1200, v104
	v_or_b32_e32 v83, 0x1280, v104
	v_or_b32_e32 v84, 0x1300, v104
	v_or_b32_e32 v85, 0x1380, v104
	v_or_b32_e32 v86, 0x1400, v104
	v_or_b32_e32 v87, 0x1480, v104
	v_or_b32_e32 v88, 0x1500, v104
	v_or_b32_e32 v89, 0x1580, v104
	v_or_b32_e32 v90, 0x1600, v104
	v_or_b32_e32 v91, 0x1680, v104
	v_or_b32_e32 v92, 0x1700, v104
	v_or_b32_e32 v93, 0x1780, v104
	v_or_b32_e32 v94, 0x1800, v104
	v_or_b32_e32 v95, 0x1880, v104
	v_or_b32_e32 v96, 0x1900, v104
	v_or_b32_e32 v97, 0x1980, v104
	v_or_b32_e32 v98, 0x1a00, v104
	v_or_b32_e32 v99, 0x1a80, v104
	v_or_b32_e32 v100, 0x1b00, v104
	v_or_b32_e32 v101, 0x1b80, v104
	v_or_b32_e32 v102, 0x1c00, v104
	v_or_b32_e32 v103, 0x1c80, v104
	v_or_b32_e32 v105, 0x1d00, v104
	v_or_b32_e32 v106, 0x1d80, v104
	v_or_b32_e32 v107, 0x1e00, v104
	v_or_b32_e32 v108, 0x1e80, v104
	v_or_b32_e32 v111, 0x1f00, v104
	v_or_b32_e32 v112, 0x1f80, v104
	v_sub_nc_u32_e32 v121, s19, v1
	v_dual_mov_b32 v26, 0 :: v_dual_lshlrev_b32 v123, 1, v45
	v_dual_mov_b32 v29, 0 :: v_dual_lshlrev_b32 v126, 1, v7
	v_subrev_nc_u32_e32 v127, s0, v4
	v_subrev_nc_u32_e32 v128, s0, v2
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v31, 0
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v30, 0
	v_mov_b32_e32 v28, 0
	s_mov_b32 s16, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_max_i32 s3, s6, 1
	s_lshl_b32 s35, s7, 2
	s_lshl_b32 s44, s7, 7
	s_add_i32 s45, s18, 64
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
	v_cmp_lt_i32_e32 vcc_lo, s45, v121
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v1, s45, v25
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v137, s23 :: v_dual_mov_b32 v136, s22
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s45, v122
	.loc	1 156 26 is_stmt 0              ; generate_amdgcn.py:156:26
	s_and_b32 s1, vcc_lo, s5
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v135, s21
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v133, s19
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 vcc_lo, s0, s4
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v131, s17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s3, s3, -1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b32 v129, v1, s[8:11], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v134, s20 :: v_dual_add_nc_u32 v1, 0, v66
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v132, s18
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[138:139], v1 offset:16384
	v_add_nc_u32_e32 v1, 0, v119
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s45, s45, 64
	s_cmp_lg_u32 s3, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v130, s16
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[140:141], v1 offset:16384
	v_add_nc_u32_e32 v1, 0, v118
	ds_load_b64 v[142:143], v1 offset:16384
	v_add_nc_u32_e32 v1, 0, v116
	ds_load_b64 v[144:145], v1 offset:16384
	v_add_nc_u32_e32 v1, 0, v113
	ds_load_b64 v[146:147], v1 offset:16384
	v_add_nc_u32_e32 v1, 0, v117
	ds_load_b64 v[148:149], v1 offset:16384
	v_add_nc_u32_e32 v1, 0, v115
	ds_load_b64 v[150:151], v1 offset:16384
	v_add_nc_u32_e32 v1, 0, v114
	ds_load_b64 v[152:153], v1 offset:16384
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e32 v1, 0x80000000, v128, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v128, s44, v128
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[17:20], v1, s[28:31], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v1, v120 offset:640
	ds_load_u8 v2, v120 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v120 offset:896
	ds_load_u8 v3, v120 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v2, 16, v1
	ds_load_u8 v1, v120 offset:128
	ds_load_u8 v2, v120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v120 offset:384
	ds_load_u8 v3, v120 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v2, 16, v1
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[138:139], v[130:137] neg_lo:[1,1,0]
	ds_load_u8 v9, v120 offset:1664
	ds_load_u8 v10, v120 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v120 offset:1920
	ds_load_u8 v11, v120 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v120 offset:1152
	ds_load_u8 v11, v120 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v120 offset:1408
	ds_load_u8 v12, v120 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[140:141], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v120 offset:2688
	ds_load_u8 v10, v120 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v120 offset:2944
	ds_load_u8 v11, v120 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v120 offset:2176
	ds_load_u8 v11, v120 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v120 offset:2432
	ds_load_u8 v12, v120 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[142:143], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v120 offset:3712
	ds_load_u8 v10, v120 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v120 offset:3968
	ds_load_u8 v11, v120 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v120 offset:3200
	ds_load_u8 v11, v120 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v120 offset:3456
	ds_load_u8 v12, v120 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[144:145], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v120 offset:4736
	ds_load_u8 v10, v120 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v120 offset:4992
	ds_load_u8 v11, v120 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v120 offset:4224
	ds_load_u8 v11, v120 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v120 offset:4480
	ds_load_u8 v12, v120 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[146:147], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v120 offset:5760
	ds_load_u8 v10, v120 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v120 offset:6016
	ds_load_u8 v11, v120 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v120 offset:5248
	ds_load_u8 v11, v120 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v120 offset:5504
	ds_load_u8 v12, v120 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[148:149], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v120 offset:6784
	ds_load_u8 v10, v120 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v120 offset:7040
	ds_load_u8 v11, v120 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v120 offset:6272
	ds_load_u8 v11, v120 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v120 offset:6528
	ds_load_u8 v12, v120 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[150:151], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v120 offset:7808
	ds_load_u8 v10, v120 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v120 offset:8064
	ds_load_u8 v11, v120 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v120 offset:7296
	ds_load_u8 v11, v120 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v120 offset:7552
	ds_load_u8 v12, v120 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[152:153], v[1:8] neg_lo:[1,1,0]
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_cndmask_b32_e32 v9, 0x80000000, v127, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v127, s44, v127
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	buffer_load_b128 v[21:24], v9, s[28:31], 0 offen
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v9, v120 offset:8832
	ds_load_u8 v10, v120 offset:8704
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v120 offset:9088
	ds_load_u8 v11, v120 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v155, v10, 16, v9
	ds_load_u8 v9, v120 offset:8320
	ds_load_u8 v10, v120 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v120 offset:8576
	ds_load_u8 v11, v120 offset:8448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v154, v10, 16, v9
	v_wmma_i32_16x16x16_iu4 v[9:16], v[154:155], v[138:139], v[130:137] neg_lo:[1,1,0]
	ds_load_u8 v130, v120 offset:9856
	ds_load_u8 v131, v120 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v120 offset:10112
	ds_load_u8 v132, v120 offset:9984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v131, v131, 16, v130
	ds_load_u8 v130, v120 offset:9344
	ds_load_u8 v132, v120 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v132, v130, 0xc0c0004
	ds_load_u8 v132, v120 offset:9600
	ds_load_u8 v133, v120 offset:9472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v130, v132, 16, v130
	v_wmma_i32_16x16x16_iu4 v[9:16], v[130:131], v[140:141], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v130, v120 offset:10880
	ds_load_u8 v131, v120 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v120 offset:11136
	ds_load_u8 v132, v120 offset:11008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v131, v131, 16, v130
	ds_load_u8 v130, v120 offset:10368
	ds_load_u8 v132, v120 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v132, v130, 0xc0c0004
	ds_load_u8 v132, v120 offset:10624
	ds_load_u8 v133, v120 offset:10496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v130, v132, 16, v130
	v_wmma_i32_16x16x16_iu4 v[9:16], v[130:131], v[142:143], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v130, v120 offset:11904
	ds_load_u8 v131, v120 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v120 offset:12160
	ds_load_u8 v132, v120 offset:12032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v131, v131, 16, v130
	ds_load_u8 v130, v120 offset:11392
	ds_load_u8 v132, v120 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v132, v130, 0xc0c0004
	ds_load_u8 v132, v120 offset:11648
	ds_load_u8 v133, v120 offset:11520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v130, v132, 16, v130
	v_wmma_i32_16x16x16_iu4 v[9:16], v[130:131], v[144:145], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v130, v120 offset:12928
	ds_load_u8 v131, v120 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v120 offset:13184
	ds_load_u8 v132, v120 offset:13056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v131, v131, 16, v130
	ds_load_u8 v130, v120 offset:12416
	ds_load_u8 v132, v120 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v132, v130, 0xc0c0004
	ds_load_u8 v132, v120 offset:12672
	ds_load_u8 v133, v120 offset:12544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v130, v132, 16, v130
	v_wmma_i32_16x16x16_iu4 v[9:16], v[130:131], v[146:147], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v130, v120 offset:13952
	ds_load_u8 v131, v120 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v120 offset:14208
	ds_load_u8 v132, v120 offset:14080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v131, v131, 16, v130
	ds_load_u8 v130, v120 offset:13440
	ds_load_u8 v132, v120 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v132, v130, 0xc0c0004
	ds_load_u8 v132, v120 offset:13696
	ds_load_u8 v133, v120 offset:13568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v130, v132, 16, v130
	v_wmma_i32_16x16x16_iu4 v[9:16], v[130:131], v[148:149], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v130, v120 offset:14976
	ds_load_u8 v131, v120 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v120 offset:15232
	ds_load_u8 v132, v120 offset:15104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v131, v131, 16, v130
	ds_load_u8 v130, v120 offset:14464
	ds_load_u8 v132, v120 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v132, v130, 0xc0c0004
	ds_load_u8 v132, v120 offset:14720
	ds_load_u8 v133, v120 offset:14592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v130, v132, 16, v130
	v_wmma_i32_16x16x16_iu4 v[9:16], v[130:131], v[150:151], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v130, v120 offset:16000
	ds_load_u8 v131, v120 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v120 offset:16256
	ds_load_u8 v132, v120 offset:16128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v131, v131, 16, v130
	ds_load_u8 v130, v120 offset:15488
	ds_load_u8 v132, v120 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v132, v130, 0xc0c0004
	ds_load_u8 v132, v120 offset:15744
	ds_load_u8 v133, v120 offset:15616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v130, v132, 16, v130
	v_wmma_i32_16x16x16_iu4 v[9:16], v[130:131], v[152:153], v[9:16] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v130, v126, s[36:39], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v126, 2, v126
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v130, 16, v130
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v131, v123, v125
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v6, v130, v6 :: v_dual_add_nc_u32 v125, s35, v125
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v132, v131, s[40:43], 0 offen
	buffer_load_u16 v133, v131, s[40:43], 0 offen offset:4
	buffer_load_u16 v134, v131, s[40:43], 0 offen offset:8
	buffer_load_u16 v135, v131, s[40:43], 0 offen offset:12
	buffer_load_u16 v136, v131, s[40:43], 0 offen offset:16
	buffer_load_u16 v137, v131, s[40:43], 0 offen offset:20
	buffer_load_u16 v138, v131, s[40:43], 0 offen offset:24
	buffer_load_u16 v131, v131, s[40:43], 0 offen offset:28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v2, v130, v2
	v_mul_f32_e32 v3, v130, v3
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v10, v130, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v5, v130, v5
	v_mul_f32_e32 v4, v130, v4
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v9, v130, v9
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v7, v130, v7
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v12, v130, v12
	v_mul_f32_e32 v13, v130, v13
	v_mul_f32_e32 v15, v130, v15
	v_mul_f32_e32 v14, v130, v14
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v8, v130, v8
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v16, v130, v16
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v132, 16, v132
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v133, 16, v133
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v42, v2, v133 :: v_dual_lshlrev_b32 v131, 16, v131
	v_dual_fmac_f32 v28, v8, v131 :: v_dual_lshlrev_b32 v133, 16, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v38, v3, v133 :: v_dual_lshlrev_b32 v133, 16, v136
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v139, v123, v124
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v124, s35, v124
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v34, v5, v133
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v140, v139, s[40:43], 0 offen
	buffer_load_u16 v141, v139, s[40:43], 0 offen offset:4
	buffer_load_u16 v142, v139, s[40:43], 0 offen offset:8
	buffer_load_u16 v143, v139, s[40:43], 0 offen offset:12
	buffer_load_u16 v144, v139, s[40:43], 0 offen offset:16
	buffer_load_u16 v145, v139, s[40:43], 0 offen offset:20
	buffer_load_u16 v146, v139, s[40:43], 0 offen offset:24
	buffer_load_u16 v139, v139, s[40:43], 0 offen offset:28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v1, v130, v1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v109, v129 offset:16384
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	ds_store_b128 v110, v[17:20]
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	ds_store_b128 v110, v[21:24] offset:8192
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v41, v1, v132 :: v_dual_lshlrev_b32 v132, 16, v135
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v2, 16, v140
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v39, v4, v132 :: v_dual_lshlrev_b32 v132, 16, v137
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v1, 16, v141
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v3, 16, v143
	v_lshlrev_b32_e32 v4, 16, v142
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v5, 16, v145
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v35, v6, v132 :: v_dual_lshlrev_b32 v132, 16, v138
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v11, v130, v11 :: v_dual_lshlrev_b32 v6, 16, v144
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v8, 16, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v26, v9, v2 :: v_dual_fmac_f32 v31, v7, v132
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v40, v10, v1 :: v_dual_lshlrev_b32 v7, 16, v139
	v_dual_fmac_f32 v37, v12, v3 :: v_dual_fmac_f32 v32, v13, v6
	v_dual_fmac_f32 v36, v11, v4 :: v_dual_fmac_f32 v33, v14, v5
	v_dual_fmac_f32 v29, v15, v8 :: v_dual_fmac_f32 v30, v16, v7
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v18, v104
.LBB0_6:                                ; %._crit_edge
	.loc	1 162 26 is_stmt 1              ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v1, 0, v66
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_cndmask_b32_e64 v19, 0, 1, s2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v2, 0, v119
	v_dual_mov_b32 v22, 0 :: v_dual_add_nc_u32 v3, 0, v118
	v_add_nc_u32_e32 v4, 0, v116
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v17, 0, v114
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_cmp_ne_u32_e64 s0, 1, v19
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v114, 0, v18
	v_mov_b32_e32 v18, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[15:16], v1 offset:16384
	ds_load_b64 v[13:14], v2 offset:16384
	ds_load_b64 v[11:12], v3 offset:16384
	ds_load_b64 v[9:10], v4 offset:16384
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v1, 0, v113
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v2, 0, v117
	v_dual_mov_b32 v24, 0 :: v_dual_add_nc_u32 v3, 0, v115
	ds_load_b64 v[7:8], v1 offset:16384
	ds_load_b64 v[5:6], v2 offset:16384
	ds_load_b64 v[3:4], v3 offset:16384
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_b64 v[1:2], v17 offset:16384
	v_mov_b32_e32 v17, 0
	v_add_nc_u32_e32 v109, 0, v112
	v_dual_mov_b32 v21, 0 :: v_dual_add_nc_u32 v66, 0, v111
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v108, 0, v108
	v_add_nc_u32_e32 v107, 0, v107
	v_add_nc_u32_e32 v104, 0, v106
	v_add_nc_u32_e32 v105, 0, v105
	v_add_nc_u32_e32 v103, 0, v103
	v_add_nc_u32_e32 v102, 0, v102
	v_add_nc_u32_e32 v101, 0, v101
	v_add_nc_u32_e32 v100, 0, v100
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
	v_add_nc_u32_e32 v55, 0, v55
	v_add_nc_u32_e32 v54, 0, v54
	v_add_nc_u32_e32 v53, 0, v53
	v_add_nc_u32_e32 v113, 0, v52
	v_add_nc_u32_e32 v106, 0, v51
	v_add_nc_u32_e32 v115, 0, v50
	v_add_nc_u32_e32 v116, 0, v49
	v_add_nc_u32_e32 v111, 0, v48
	v_add_nc_u32_e32 v112, 0, v47
	v_add_nc_u32_e32 v110, 0, v46
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	ds_load_u8 v18, v115
	ds_load_u8 v19, v116
	ds_load_u8 v20, v113
	ds_load_u8 v21, v114
	ds_load_u8 v22, v111
	ds_load_u8 v23, v112
	ds_load_u8 v24, v106
	ds_load_u8 v25, v110
	ds_load_u8 v46, v58
	ds_load_u8 v47, v57
	ds_load_u8 v48, v60
	ds_load_u8 v49, v54
	ds_load_u8 v50, v53
	ds_load_u8 v51, v56
	ds_load_u8 v52, v55
	ds_load_u8 v125, v59
	v_mov_b32_e32 v117, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v118, v117
	v_mov_b32_e32 v119, v117
	v_mov_b32_e32 v120, v117
	v_mov_b32_e32 v121, v117
	v_mov_b32_e32 v122, v117
	v_mov_b32_e32 v123, v117
	v_mov_b32_e32 v124, v117
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v19, v24, v20, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v20, v21, v25, 0xc0c0004
	v_perm_b32 v21, v23, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v19, v19, 16, v18
	v_lshl_or_b32 v18, v21, 16, v20
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v20, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v49, v52, v51, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[117:124], v[18:19], v[15:16], v[117:124] neg_lo:[1,1,0]
	v_perm_b32 v18, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v125, v48, 0xc0c0004
	ds_load_u8 v21, v67
	ds_load_u8 v22, v65
	ds_load_u8 v23, v69
	ds_load_u8 v24, v62
	ds_load_u8 v25, v61
	ds_load_u8 v46, v64
	ds_load_u8 v47, v63
	ds_load_u8 v48, v68
	ds_load_u8 v50, v75
	ds_load_u8 v51, v74
	ds_load_u8 v52, v77
	ds_load_u8 v125, v71
	ds_load_u8 v126, v70
	ds_load_u8 v127, v73
	ds_load_u8 v128, v72
	ds_load_u8 v129, v76
	v_lshl_or_b32 v19, v19, 16, v18
	v_lshl_or_b32 v18, v49, 16, v20
	ds_load_u8 v20, v83
	ds_load_u8 v49, v82
	ds_load_u8 v130, v85
	ds_load_u8 v131, v78
	ds_load_u8 v132, v81
	ds_load_u8 v133, v80
	ds_load_u8 v134, v84
	v_wmma_i32_16x16x16_iu4 v[117:124], v[18:19], v[13:14], v[117:124] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v22, v48, v23, 0xc0c0004
	v_perm_b32 v23, v25, v24, 0xc0c0004
	ds_load_u8 v25, v79
	v_perm_b32 v24, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v49, v20, 0xc0c0004
	v_lshl_or_b32 v19, v22, 16, v21
	v_perm_b32 v21, v51, v50, 0xc0c0004
	v_perm_b32 v22, v129, v52, 0xc0c0004
	v_lshl_or_b32 v18, v24, 16, v23
	v_perm_b32 v23, v126, v125, 0xc0c0004
	v_perm_b32 v24, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v48, v133, v132, 0xc0c0004
	ds_load_u8 v49, v99
	ds_load_u8 v50, v98
	ds_load_u8 v51, v101
	ds_load_u8 v52, v95
	ds_load_u8 v125, v94
	ds_load_u8 v126, v97
	ds_load_u8 v127, v96
	ds_load_u8 v128, v100
	v_wmma_i32_16x16x16_iu4 v[117:124], v[18:19], v[11:12], v[117:124] neg_lo:[1,1,0]
	v_lshl_or_b32 v19, v22, 16, v21
	v_lshl_or_b32 v18, v24, 16, v23
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v21, v134, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[117:124], v[18:19], v[9:10], v[117:124] neg_lo:[1,1,0]
	v_lshl_or_b32 v19, v21, 16, v20
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v18, v131, v25, 0xc0c0004
	ds_load_u8 v20, v91
	ds_load_u8 v21, v90
	ds_load_u8 v22, v93
	ds_load_u8 v23, v87
	ds_load_u8 v24, v86
	ds_load_u8 v25, v89
	ds_load_u8 v46, v88
	ds_load_u8 v47, v92
	v_lshl_or_b32 v18, v48, 16, v18
	ds_load_u8 v48, v108
	ds_load_u8 v129, v107
	ds_load_u8 v130, v109
	ds_load_u8 v131, v103
	ds_load_u8 v132, v102
	ds_load_u8 v133, v104
	ds_load_u8 v134, v105
	ds_load_u8 v135, v66
	v_wmma_i32_16x16x16_iu4 v[117:124], v[18:19], v[7:8], v[117:124] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v21, v47, v22, 0xc0c0004
	v_perm_b32 v22, v24, v23, 0xc0c0004
	v_perm_b32 v23, v46, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v19, v21, 16, v20
	v_perm_b32 v20, v50, v49, 0xc0c0004
	v_lshl_or_b32 v18, v23, 16, v22
	v_perm_b32 v21, v128, v51, 0xc0c0004
	v_perm_b32 v22, v125, v52, 0xc0c0004
	v_perm_b32 v23, v127, v126, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[117:124], v[18:19], v[5:6], v[117:124] neg_lo:[1,1,0]
	v_lshl_or_b32 v19, v21, 16, v20
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v129, v48, 0xc0c0004
	v_lshl_or_b32 v18, v23, 16, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v135, v130, 0xc0c0004
	v_perm_b32 v22, v132, v131, 0xc0c0004
	v_perm_b32 v23, v134, v133, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[117:124], v[18:19], v[3:4], v[117:124] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v19, v21, 16, v20
	v_lshl_or_b32 v18, v23, 16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[117:124], v[18:19], v[1:2], v[117:124] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v19, v117
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v23, v118
	v_cvt_f32_i32_e32 v22, v119
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v25, v120
	v_cvt_f32_i32_e32 v18, v121
	v_cvt_f32_i32_e32 v21, v122
	v_cvt_f32_i32_e32 v20, v123
	v_cvt_f32_i32_e32 v24, v124
.LBB0_8:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	v_mov_b32_e32 v52, 0
	.loc	1 175 36 is_stmt 1              ; generate_amdgcn.py:175:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	ds_load_u8 v17, v115 offset:8192
	ds_load_u8 v46, v116 offset:8192
	ds_load_u8 v47, v113 offset:8192
	ds_load_u8 v48, v114 offset:8192
	ds_load_u8 v111, v111 offset:8192
	ds_load_u8 v112, v112 offset:8192
	ds_load_u8 v52, v106 offset:8192
	ds_load_u8 v106, v110 offset:8192
	ds_load_u8 v58, v58 offset:8192
	ds_load_u8 v57, v57 offset:8192
	ds_load_u8 v60, v60 offset:8192
	ds_load_u8 v110, v54 offset:8192
	ds_load_u8 v113, v53 offset:8192
	ds_load_u8 v114, v56 offset:8192
	ds_load_u8 v115, v55 offset:8192
	ds_load_u8 v59, v59 offset:8192
	v_mov_b32_e32 v49, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v50, v49
	v_mov_b32_e32 v51, v49
	v_mov_b32_e32 v53, v49
	v_mov_b32_e32 v54, v49
	v_mov_b32_e32 v55, v49
	v_mov_b32_e32 v56, v49
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v17, v46, v17, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v46, v52, v47, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v48, v48, v106, 0xc0c0004
	v_perm_b32 v106, v112, v111, 0xc0c0004
	v_mov_b32_e32 v52, v49
	v_lshl_or_b32 v47, v46, 16, v17
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v17, v113, v110, 0xc0c0004
	v_lshl_or_b32 v46, v106, 16, v48
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[46:47], v[15:16], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v15, v57, v58, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v59, v60, 0xc0c0004
	ds_load_u8 v46, v67 offset:8192
	ds_load_u8 v47, v65 offset:8192
	ds_load_u8 v48, v69 offset:8192
	ds_load_u8 v57, v62 offset:8192
	ds_load_u8 v58, v61 offset:8192
	ds_load_u8 v59, v64 offset:8192
	ds_load_u8 v60, v63 offset:8192
	ds_load_u8 v61, v68 offset:8192
	v_perm_b32 v62, v115, v114, 0xc0c0004
	ds_load_u8 v63, v75 offset:8192
	ds_load_u8 v64, v74 offset:8192
	ds_load_u8 v65, v77 offset:8192
	ds_load_u8 v67, v71 offset:8192
	ds_load_u8 v68, v70 offset:8192
	ds_load_u8 v69, v73 offset:8192
	ds_load_u8 v70, v72 offset:8192
	ds_load_u8 v71, v76 offset:8192
	v_lshl_or_b32 v16, v16, 16, v15
	v_lshl_or_b32 v15, v62, 16, v17
	ds_load_u8 v17, v83 offset:8192
	ds_load_u8 v62, v82 offset:8192
	ds_load_u8 v72, v85 offset:8192
	ds_load_u8 v73, v78 offset:8192
	ds_load_u8 v74, v81 offset:8192
	ds_load_u8 v75, v80 offset:8192
	ds_load_u8 v76, v84 offset:8192
	v_wmma_i32_16x16x16_iu4 v[49:56], v[15:16], v[13:14], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v15, v64, v63, 0xc0c0004
	v_perm_b32 v47, v61, v48, 0xc0c0004
	v_perm_b32 v48, v58, v57, 0xc0c0004
	v_perm_b32 v57, v60, v59, 0xc0c0004
	ds_load_u8 v58, v79 offset:8192
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v16, v71, v65, 0xc0c0004
	v_lshl_or_b32 v14, v47, 16, v46
	v_perm_b32 v46, v68, v67, 0xc0c0004
	v_lshl_or_b32 v13, v57, 16, v48
	v_perm_b32 v47, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[13:14], v[11:12], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v12, v16, 16, v15
	v_lshl_or_b32 v11, v47, 16, v46
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v62, v17, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v14, v76, v72, 0xc0c0004
	v_perm_b32 v47, v75, v74, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[11:12], v[9:10], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v10, v14, 16, v13
	ds_load_u8 v11, v91 offset:8192
	ds_load_u8 v12, v90 offset:8192
	ds_load_u8 v13, v93 offset:8192
	ds_load_u8 v14, v87 offset:8192
	ds_load_u8 v15, v86 offset:8192
	ds_load_u8 v16, v89 offset:8192
	ds_load_u8 v17, v88 offset:8192
	ds_load_u8 v46, v92 offset:8192
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v9, v73, v58, 0xc0c0004
	ds_load_u8 v48, v99 offset:8192
	ds_load_u8 v57, v98 offset:8192
	ds_load_u8 v58, v101 offset:8192
	ds_load_u8 v59, v95 offset:8192
	ds_load_u8 v60, v94 offset:8192
	ds_load_u8 v61, v97 offset:8192
	ds_load_u8 v62, v96 offset:8192
	ds_load_u8 v63, v100 offset:8192
	v_lshl_or_b32 v9, v47, 16, v9
	ds_load_u8 v47, v108 offset:8192
	ds_load_u8 v64, v107 offset:8192
	ds_load_u8 v65, v109 offset:8192
	ds_load_u8 v67, v103 offset:8192
	ds_load_u8 v68, v102 offset:8192
	ds_load_u8 v69, v104 offset:8192
	ds_load_u8 v70, v105 offset:8192
	ds_load_u8 v66, v66 offset:8192
	v_wmma_i32_16x16x16_iu4 v[49:56], v[9:10], v[7:8], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v9, v57, v48, 0xc0c0004
	v_perm_b32 v12, v46, v13, 0xc0c0004
	v_perm_b32 v13, v15, v14, 0xc0c0004
	v_perm_b32 v14, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v10, v63, v58, 0xc0c0004
	v_lshl_or_b32 v8, v12, 16, v11
	v_perm_b32 v11, v60, v59, 0xc0c0004
	v_lshl_or_b32 v7, v14, 16, v13
	v_perm_b32 v12, v62, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[7:8], v[5:6], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v6, v10, 16, v9
	v_lshl_or_b32 v5, v12, 16, v11
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v7, v64, v47, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v66, v65, 0xc0c0004
	v_perm_b32 v9, v68, v67, 0xc0c0004
	v_perm_b32 v10, v70, v69, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[5:6], v[3:4], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v4, v8, 16, v7
	v_lshl_or_b32 v3, v10, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[3:4], v[1:2], v[49:56] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v17, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v49, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v46, v53
	v_cvt_f32_i32_e32 v48, v54
	v_cvt_f32_i32_e32 v47, v55
	v_cvt_f32_i32_e32 v51, v56
.LBB0_10:
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	s_waitcnt lgkmcnt(1)
	v_or_b32_e32 v3, v44, v27
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s0, s27, s34
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s6, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v1, v45, v43
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_add_i32 s0, s0, s1
	v_mul_lo_u32 v2, s34, v3
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s1, s33
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s9, s13, 0xffff
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s1, s26, s3
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v4, 2, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v10, s1, v1, 1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v5, 4, v1
	v_or_b32_e32 v6, 6, v1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v2, s0, v2, 1
	.loc	1 182 35                        ; generate_amdgcn.py:182:35
	s_add_i32 s0, s1, s7
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_mov_b32 s8, s12
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v7, 8, v1
	v_or_b32_e32 v8, 10, v1
	v_or_b32_e32 v9, 12, v1
	v_or_b32_e32 v11, 14, v1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v1, s0, v1, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v12, v2, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v2, 0x80000000, v10, s2
	v_add_lshl_u32 v10, s1, v4, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v4, s0, v4, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v13, s1, v5, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v5, s0, v5, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v14, s1, v6, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v6, s0, v6, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v15, s1, v7, 1
	v_add_lshl_u32 v16, s1, v8, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
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
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x9
	buffer_load_u16 v44, v1, s[8:11], 0 offen
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	buffer_load_u16 v43, v2, s[8:11], 0 offen
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v27, s1, v9, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v8, s0, v8, 1
	v_add_lshl_u32 v7, s0, v7, 1
	v_add_lshl_u32 v1, s0, v9, 1
	v_add_lshl_u32 v9, s0, v11, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v2, 0x80000000, v27, s2
	v_add_lshl_u32 v27, s1, v11, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v11, 0x80000000, v27, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x5
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	buffer_load_u16 v11, v11, s[8:11], 0 offen
	buffer_load_u16 v27, v2, s[8:11], 0 offen
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	buffer_load_u16 v45, v1, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v54, 0x7632
	v_mov_b16_e32 v2.h, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_dual_mov_b32 v53, 0x5410 :: v_dual_and_b32 v0, 16, v0
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_or_b32_e32 v3, s27, v3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v55.h, v2.h
	v_mov_b16_e32 v56.h, v2.h
	v_mov_b16_e32 v57.h, v2.h
	v_mov_b16_e32 v58.h, v2.h
	s_mov_b32 s8, 0x76543210
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, s11
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v12, 16, v12
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v23, v23, v12
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v52, v52, v12 :: v_dual_lshlrev_b32 v43, 16, v43
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v10, v23, v10, v42
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v6, v52, v6, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v42, v10, s2
	v_cndmask_b32_e64 v6, v37, v6, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v23, 0xbfb8aa3b, v6
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v17, v17, v12
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v18, v18, v12 :: v_dual_lshlrev_b32 v7, 16, v7
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v46, v46, v12 :: v_dual_lshlrev_b32 v27, 16, v27
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v23
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v20, v20, v12 :: v_dual_lshlrev_b32 v45, 16, v45
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v15, v18, v15, v34
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v24, v24, v12 :: v_dual_lshlrev_b32 v9, 16, v9
	.loc	1 185 44 is_stmt 1              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v23, 0, 0x42800000, s1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v44, 16, v44
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v18, v20, v27, v31
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v50, v50, v12 :: v_dual_lshlrev_b32 v13, 16, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v6
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v17, v17, v44, v26
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v22, v22, v12 :: v_dual_lshlrev_b32 v5, 16, v5
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v49, v49, v12
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fma_f32 v7, v46, v7, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v26, v17, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v25, v25, v12
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v48, v48, v12 :: v_dual_lshlrev_b32 v11, 16, v11
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fma_f32 v5, v49, v5, v36
	.loc	1 185 44 is_stmt 1              ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v20, 0xbfb8aa3b, v17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v32, v7, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v21, v21, v12
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v11, v24, v11, v28
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v36, v5, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v20
	v_mul_f32_e32 v24, 0xbfb8aa3b, v7
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v19, v19, v12 :: v_dual_lshlrev_b32 v14, 16, v14
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v11, v28, v11, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v20, 0, 0x42800000, s0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v51, v51, v12
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v24
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v14, v25, v14, v39
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v23, v23
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v17
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v9, v51, v9, v30
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v24, 0, 0x42800000, s4
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v19, v19, v43, v41
	v_fma_f32 v13, v22, v13, v38
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v9, v30, v9, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v41, v19, s2
	v_cndmask_b32_e64 v14, v39, v14, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v27, 0xbfb8aa3b, v9
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v4, v50, v4, v40
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v23, v23, v30
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v12, v47, v12
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v13, v38, v13, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v40, v4, s2
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v12, v12, v45, v29
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v34, v15, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v27, 0, 0x42800000, s5
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v31, v18, s2
	v_cndmask_b32_e64 v12, v29, v12, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s5
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v9
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v16, v21, v16, v35
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v4
	v_exp_f32_e32 v20, v20
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s0
	v_exp_f32_e32 v27, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v16, v35, v16, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v7
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v20, v20, v29
	v_ldexp_f32 v27, v27, v34
	v_exp_f32_e32 v24, v24
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v40, null, v27, v27, v9
	v_div_scale_f32 v41, s5, v9, v27, v9
	v_rcp_f32_e32 v49, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v21, v21, v28
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v21, 1.0, v21 :: v_dual_lshlrev_b32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 183 17 is_stmt 1              ; generate_amdgcn.py:183:17
	v_fma_f32 v8, v48, v8, v33
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v64, -v40, v49, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v28, null, v21, v21, v4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v8, v33, v8, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v22
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v43, v28
	v_div_scale_f32 v29, vcc_lo, v4, v21, v4
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v25, 0xbfb8aa3b, v8
	v_cndmask_b32_e64 v22, 0, 0x42800000, s2
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s2
	v_ldexp_f32 v24, v24, v33
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v33, s1, v6, v23, v6
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v25
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v52, -v28, v43, 1.0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_fmac_f32 v49, v64, v49
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v25, 0, 0x42800000, s3
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s3
	v_exp_f32_e32 v22, v22
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v43, v52, v43
	v_div_scale_f32 v30, null, v20, v20, v17
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v44, v30
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v22, v22, v31
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v31, s0, v17, v20, v17
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v59, -v30, v44, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v25, v25, v32
	v_mul_f32_e32 v26, 0xbfb8aa3b, v12
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v32, null, v23, v23, v6
	v_div_scale_f32 v34, null, v22, v22, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v45, v32
	v_rcp_f32_e32 v46, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v36, null, v25, v25, v8
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v26, 0, 0x42800000, s6
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v37, s3, v8, v25, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v47, v36
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v12
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v60, -v32, v45, 1.0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v61, -v34, v46, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v26, v26
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v45, v60, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v38, null, v24, v24, v7
	v_fmac_f32_e32 v46, v61, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v36, v47, 1.0
	v_fmac_f32_e32 v44, v59, v44
	v_rcp_f32_e32 v48, v38
	v_div_scale_f32 v39, s4, v7, v24, v7
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v26, v26, v35
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v35, s2, v5, v22, v5
	v_mul_f32_e32 v52, v29, v43
	v_dual_fmac_f32 v47, v62, v47 :: v_dual_add_f32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v61, v35, v46
	v_fma_f32 v63, -v38, v48, 1.0
	v_mul_f32_e32 v59, v31, v44
	v_fma_f32 v66, -v28, v52, v29
	v_div_scale_f32 v42, null, v26, v26, v12
	v_fma_f32 v69, -v34, v61, v35
	v_fmac_f32_e32 v48, v63, v48
	v_fma_f32 v67, -v30, v59, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v50, v42
	v_div_scale_f32 v51, s6, v12, v26, v12
	v_fmac_f32_e32 v61, v69, v46
	v_dual_mul_f32 v60, v33, v45 :: v_dual_mul_f32 v63, v39, v48
	v_dual_mul_f32 v64, v41, v49 :: v_dual_fmac_f32 v59, v67, v44
	v_fma_f32 v68, -v32, v60, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v65, -v42, v50, 1.0
	v_fma_f32 v71, -v38, v63, v39
	v_fmac_f32_e32 v52, v66, v43
	v_fma_f32 v72, -v40, v64, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v50, v65, v50 :: v_dual_fmac_f32 v63, v71, v48
	v_fma_f32 v28, -v28, v52, v29
	v_mul_f32_e32 v62, v37, v47
	v_fma_f32 v29, -v30, v59, v31
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v65, v51, v50
	v_fma_f32 v31, -v34, v61, v35
	v_div_fmas_f32 v28, v28, v43, v52
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v70, -v36, v62, v37
	v_fma_f32 v73, -v42, v65, v51
	v_fmac_f32_e32 v60, v68, v45
	v_div_fmas_f32 v29, v29, v44, v59
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v28, v21, v4
	v_fmac_f32_e32 v65, v73, v50
	v_fma_f32 v30, -v32, v60, v33
	v_div_fixup_f32 v17, v29, v20, v17
	v_fmac_f32_e32 v62, v70, v47
	v_fma_f32 v33, -v38, v63, v39
	v_fma_f32 v35, -v42, v65, v51
	v_div_fmas_f32 v30, v30, v45, v60
	s_mov_b32 vcc_lo, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v17, v19, v17
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v32, -v36, v62, v37
	v_div_fmas_f32 v21, v31, v46, v61
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v6, v30, v23, v6
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v55.l, v17.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v20, v32, v47, v62
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v21, v22, v5
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v4, v10, v4
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v10, v33, v48, v63
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v6, v14, v6 :: v_dual_mul_f32 v5, v13, v5
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v7, v10, v24, v7
	v_dual_fmac_f32 v64, v72, v49 :: v_dual_and_b32 v13, 1, v55
	v_div_fixup_f32 v8, v20, v25, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v17, v17
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v7, v15, v7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v34, -v40, v64, v41
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v56.l, v5.h
	v_add3_u32 v13, v17, v13, 0x7fff
	v_cmp_o_f32_e64 s1, v6, v6
	v_mov_b16_e32 v57.l, v7.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v19, v34, v49, v64
	s_mov_b32 vcc_lo, s6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v5, v5
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v14, v35, v50, v65
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v9, v19, v27, v9
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v8, v16, v8 :: v_dual_and_b32 v15, 1, v57
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v10, v14, v26, v12
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v12, 1, v2
	v_mov_b16_e32 v2.l, v6.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v9, v11, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v8, v8
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v10, v18, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v4, v4, v12, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v13.h, s0
	v_cmp_o_f32_e64 s5, v9, v9
	v_cmp_o_f32_e64 s4, v7, v7
	v_mov_b16_e32 v58.l, v10.h
	v_cndmask_b16 v4.h, 0x7fff, v4.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v11, 1, v2
	v_and_b32_e32 v12, 1, v56
	v_mov_b16_e32 v2.l, v8.h
	v_cmp_o_f32_e64 s6, v10, v10
	v_add3_u32 v7, v7, v15, 0x7fff
	v_add3_u32 v6, v6, v11, 0x7fff
	v_cndmask_b32_e32 v11, 0x1054, v53, vcc_lo
	v_add3_u32 v0, v5, v12, 0x7fff
	v_and_b32_e32 v5, 1, v58
	v_cndmask_b32_e32 v12, 0x3276, v54, vcc_lo
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v6.l, 0x7fff, v0.h, s2
	v_add3_u32 v5, v10, v5, 0x7fff
	v_lshl_or_b32 v10, v11, 8, v11
	v_lshl_or_b32 v11, v12, 8, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b16 v0.l, 0x7fff, v5.h, s6
	v_and_b32_e32 v14, 1, v2
	v_mov_b16_e32 v2.l, v9.h
	v_and_b32_e32 v5, 0x540054, v10
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v10, v3, s7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v2, 1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v3, v5, 4, v5
	v_add3_u32 v2, v9, v2, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 0x5040504, v3
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s5
	v_and_b32_e32 v9, 0x760076, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v5, v6, v0, vcc_lo
	v_add3_u32 v8, v8, v14, 0x7fff
	v_cndmask_b16 v8.l, 0x7fff, v7.h, s4
	v_cndmask_b32_e32 v6, v0, v6, vcc_lo
	v_permlanex16_b32 v5, v5, s8, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s3
	v_cndmask_b32_e32 v7, v8, v4, vcc_lo
	v_cndmask_b32_e32 v2, v4, v8, vcc_lo
	v_lshl_or_b32 v4, v9, 4, v9
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_and_or_b32 v8, 0x78, v1, s26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s26, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v2, v2, s8, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v4, 0x7060706, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v0, v2, v7, v3
	v_perm_b32 v1, v2, v7, v4
	v_perm_b32 v2, v5, v6, v3
	v_perm_b32 v3, v5, v6, v4
	v_add_lshl_u32 v4, v8, v10, 1
	buffer_store_b128 v[0:3], v4, s[24:27], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 156
		.amdhsa_next_free_sgpr 46
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 156
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11472
; TotalNumSgprs: 48
; NumVgprs: 156
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 19
; NumSGPRsForWavesPerEU: 48
; NumVGPRsForWavesPerEU: 156
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     156
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
