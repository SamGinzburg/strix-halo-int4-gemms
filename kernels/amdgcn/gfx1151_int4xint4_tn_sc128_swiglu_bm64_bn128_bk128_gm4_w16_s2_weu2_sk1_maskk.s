	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v4, 3, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v17, 1, v0
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
                                        ; implicit-def: $vgpr108
                                        ; implicit-def: $vgpr109
                                        ; implicit-def: $vgpr110
                                        ; implicit-def: $vgpr111
                                        ; implicit-def: $vgpr112
                                        ; implicit-def: $vgpr113
                                        ; implicit-def: $vgpr114
                                        ; implicit-def: $vgpr115
                                        ; implicit-def: $vgpr116
                                        ; implicit-def: $vgpr117
                                        ; implicit-def: $vgpr118
                                        ; implicit-def: $vgpr119
                                        ; implicit-def: $vgpr120
                                        ; implicit-def: $vgpr121
                                        ; implicit-def: $vgpr122
                                        ; implicit-def: $vgpr123
                                        ; implicit-def: $vgpr124
                                        ; implicit-def: $vgpr125
                                        ; implicit-def: $vgpr126
                                        ; implicit-def: $vgpr127
                                        ; implicit-def: $vgpr128
                                        ; implicit-def: $vgpr129
                                        ; implicit-def: $vgpr130
                                        ; implicit-def: $vgpr131
                                        ; implicit-def: $vgpr132
                                        ; implicit-def: $vgpr133
                                        ; implicit-def: $vgpr134
                                        ; implicit-def: $vgpr135
                                        ; implicit-def: $vgpr136
                                        ; implicit-def: $vgpr137
                                        ; implicit-def: $vgpr138
                                        ; implicit-def: $vgpr139
                                        ; implicit-def: $vgpr140
                                        ; implicit-def: $vgpr141
                                        ; implicit-def: $vgpr142
                                        ; implicit-def: $vgpr143
                                        ; implicit-def: $vgpr144
                                        ; implicit-def: $vgpr145
                                        ; implicit-def: $vgpr146
                                        ; implicit-def: $vgpr147
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v17, 0x70, v17
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s26, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s11, s11, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s9, 6
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s5, s5, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
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
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s16, s6, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s6, s6, s5
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s7, s9, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 91 20 is_stmt 0               ; generate_amdgcn.py:91:20
	s_min_i32 s18, s7, 4
	.loc	1 92 29 is_stmt 1               ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s7, s18
	s_xor_b32 s6, s2, s18
	s_cvt_f32_u32 s17, s7
	s_ashr_i32 s6, s6, 31
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s31, s11
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s17, s17, s10
	s_mul_hi_u32 s5, s10, s17
	s_abs_i32 s17, s2
	s_add_i32 s5, s10, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_hi_u32 s5, s17, s5
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s30, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_i32 s19, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s17, s17, s19
	s_add_i32 s19, s5, 1
	s_sub_i32 s20, s17, s7
	s_cmp_ge_u32 s17, s7
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s17, s20, s17
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s17, s7
	s_cselect_b32 s7, s19, s5
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s5, s3, 6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s7, s7, s6
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s17, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s19, s4, 0x7f
.Ltmp13:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s23, s7, s6
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v3, s5, v4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s20, s19, 31
.Ltmp15:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s18, s23, s18
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s17, s4, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s4, s20, 25
.Ltmp17:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s18
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s20, s19, s4
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e32 vcc_lo, s17, v3
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s4, 64, v3
	.loc	1 92 13 is_stmt 1               ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s35, s27, 1
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s23, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s44, s20, 7
.Ltmp21:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s34, s2, 6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s19, 0x7f
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s22, s35, s5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s16, s4, vcc_lo
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	s_mul_i32 s21, s26, s5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v2, 7, v0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_and_b32 s29, s29, 0xffff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s19, 0xff
	s_mov_b32 s16, -1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshlrev_b32_e32 v1, 3, v2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v2, 4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_mad_u64_u32 v[5:6], null, s26, v4, v[1:2]
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[6:7], null, s35, v4, v[2:3]
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_add3_u32 v5, s21, s34, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v3, s33, s22, v6
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 174 43                        ; generate_amdgcn.py:174:43
	v_add_nc_u32_e32 v6, s27, v3
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_b64 v[15:16], v5, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_clause 0x1
	buffer_load_b128 v[7:10], v3, s[28:31], 0 offen
	buffer_load_b128 v[11:14], v6, s[28:31], 0 offen
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_lshlrev_b32_e32 v3, 3, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v5, 15, v0
	v_lshrrev_b32_e32 v6, 4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_add_nc_u32_e32 v150, 0, v3
	v_or_b32_e32 v149, v17, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v6, 16, v6
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v151, v150, v3
                                        ; implicit-def: $vgpr3
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt vmcnt(2)
	ds_store_b64 v150, v[15:16] offset:16384
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v151, v[7:10]
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	s_waitcnt vmcnt(0)
	ds_store_b128 v151, v[11:14] offset:8192
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_or_b32_e32 v3, v17, v5
	s_mov_b32 s16, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v85, 0x80, v3
	v_or_b32_e32 v86, 0x100, v3
	v_or_b32_e32 v87, 0x180, v3
	v_or_b32_e32 v88, 0x200, v3
	v_or_b32_e32 v89, 0x280, v3
	v_or_b32_e32 v90, 0x300, v3
	v_or_b32_e32 v91, 0x380, v3
	v_or_b32_e32 v92, 0x400, v3
	v_or_b32_e32 v93, 0x480, v3
	v_or_b32_e32 v94, 0x500, v3
	v_or_b32_e32 v95, 0x580, v3
	v_or_b32_e32 v96, 0x600, v3
	v_or_b32_e32 v97, 0x680, v3
	v_or_b32_e32 v98, 0x700, v3
	v_or_b32_e32 v99, 0x780, v3
	v_or_b32_e32 v100, 0x800, v3
	v_or_b32_e32 v101, 0x880, v3
	v_or_b32_e32 v102, 0x900, v3
	v_or_b32_e32 v103, 0x980, v3
	v_or_b32_e32 v104, 0xa00, v3
	v_or_b32_e32 v105, 0xa80, v3
	v_or_b32_e32 v106, 0xb00, v3
	v_or_b32_e32 v107, 0xb80, v3
	v_or_b32_e32 v108, 0xc00, v3
	v_or_b32_e32 v109, 0xc80, v3
	v_or_b32_e32 v110, 0xd00, v3
	v_or_b32_e32 v111, 0xd80, v3
	v_or_b32_e32 v112, 0xe00, v3
	v_or_b32_e32 v113, 0xe80, v3
	v_or_b32_e32 v114, 0xf00, v3
	v_or_b32_e32 v115, 0xf80, v3
	v_or_b32_e32 v116, 0x1000, v3
	v_or_b32_e32 v117, 0x1080, v3
	v_or_b32_e32 v118, 0x1100, v3
	v_or_b32_e32 v119, 0x1180, v3
	v_or_b32_e32 v120, 0x1200, v3
	v_or_b32_e32 v121, 0x1280, v3
	v_or_b32_e32 v122, 0x1300, v3
	v_or_b32_e32 v123, 0x1380, v3
	v_or_b32_e32 v124, 0x1400, v3
	v_or_b32_e32 v125, 0x1480, v3
	v_or_b32_e32 v126, 0x1500, v3
	v_or_b32_e32 v127, 0x1580, v3
	v_or_b32_e32 v128, 0x1600, v3
	v_or_b32_e32 v129, 0x1680, v3
	v_or_b32_e32 v130, 0x1700, v3
	v_or_b32_e32 v131, 0x1780, v3
	v_or_b32_e32 v132, 0x1800, v3
	v_or_b32_e32 v133, 0x1880, v3
	v_or_b32_e32 v134, 0x1900, v3
	v_or_b32_e32 v135, 0x1980, v3
	v_or_b32_e32 v136, 0x1a00, v3
	v_or_b32_e32 v137, 0x1a80, v3
	v_or_b32_e32 v138, 0x1b00, v3
	v_or_b32_e32 v139, 0x1b80, v3
	v_or_b32_e32 v140, 0x1c00, v3
	v_or_b32_e32 v141, 0x1c80, v3
	v_or_b32_e32 v142, 0x1d00, v3
	v_or_b32_e32 v143, 0x1d80, v3
	v_or_b32_e32 v144, 0x1e00, v3
	v_or_b32_e32 v145, 0x1e80, v3
	v_or_b32_e32 v146, 0x1f00, v3
	v_or_b32_e32 v147, 0x1f80, v3
.LBB0_2:                                ; %Flow494
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v7, v6, v5
	v_bfe_u32 v8, v0, 4, 1
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v148, 0, v7
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_mov_b32_e32 v56, 0
	s_and_not1_b32 vcc_lo, exec_lo, s16
	s_add_i32 s1, s44, -1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v17, off
	scratch_store_b32 off, v7, off offset:4
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
	v_dual_mov_b32 v56, 0 :: v_dual_and_b32 v3, 0xe0, v0
	v_dual_mov_b32 v78, 0 :: v_dual_lshlrev_b32 v7, 1, v4
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_add3_u32 v5, s34, v6, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v3, s7, 8, v3
	v_sub_nc_u32_e32 v153, s17, v4
	v_lshl_or_b32 v7, s3, 7, v7
	s_lshl_b32 s17, s6, 8
	v_dual_mov_b32 v73, 0 :: v_dual_lshlrev_b32 v154, 1, v8
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v6, s35, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v8, 0x81, v7
	s_add_i32 s5, s5, 64
	v_subrev_nc_u32_e32 v155, s17, v6
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v6, 0x80, v7
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v9, 32, v5
	v_mul_lo_u32 v7, s27, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v6, s27, v6
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v4, s5, v4
	v_mul_lo_u32 v8, s44, v9
	v_mul_lo_u32 v5, s44, v5
	s_lshl_b32 s7, s7, 7
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v4, s26, v4
	v_subrev_nc_u32_e32 v156, s17, v3
	v_add3_u32 v3, v7, s7, v2
	v_add3_u32 v2, v6, s7, v2
	s_lshl_b32 s7, s6, 7
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v152, 0, v149
	v_or_b32_e32 v85, 0x80, v149
	v_or_b32_e32 v86, 0x100, v149
	v_or_b32_e32 v87, 0x180, v149
	v_or_b32_e32 v88, 0x200, v149
	v_or_b32_e32 v89, 0x280, v149
	v_or_b32_e32 v90, 0x300, v149
	v_or_b32_e32 v91, 0x380, v149
	v_or_b32_e32 v92, 0x400, v149
	v_or_b32_e32 v93, 0x480, v149
	v_or_b32_e32 v94, 0x500, v149
	v_or_b32_e32 v95, 0x580, v149
	v_or_b32_e32 v96, 0x600, v149
	v_or_b32_e32 v97, 0x680, v149
	v_or_b32_e32 v98, 0x700, v149
	v_or_b32_e32 v99, 0x780, v149
	v_or_b32_e32 v100, 0x800, v149
	v_or_b32_e32 v101, 0x880, v149
	v_or_b32_e32 v102, 0x900, v149
	v_or_b32_e32 v103, 0x980, v149
	v_or_b32_e32 v104, 0xa00, v149
	v_or_b32_e32 v105, 0xa80, v149
	v_or_b32_e32 v106, 0xb00, v149
	v_or_b32_e32 v107, 0xb80, v149
	v_or_b32_e32 v108, 0xc00, v149
	v_or_b32_e32 v109, 0xc80, v149
	v_or_b32_e32 v110, 0xd00, v149
	v_or_b32_e32 v111, 0xd80, v149
	v_or_b32_e32 v112, 0xe00, v149
	v_or_b32_e32 v113, 0xe80, v149
	v_or_b32_e32 v114, 0xf00, v149
	v_or_b32_e32 v115, 0xf80, v149
	v_or_b32_e32 v116, 0x1000, v149
	v_or_b32_e32 v117, 0x1080, v149
	v_or_b32_e32 v118, 0x1100, v149
	v_or_b32_e32 v119, 0x1180, v149
	v_or_b32_e32 v120, 0x1200, v149
	v_or_b32_e32 v121, 0x1280, v149
	v_or_b32_e32 v122, 0x1300, v149
	v_or_b32_e32 v123, 0x1380, v149
	v_or_b32_e32 v124, 0x1400, v149
	v_or_b32_e32 v125, 0x1480, v149
	v_or_b32_e32 v126, 0x1500, v149
	v_or_b32_e32 v127, 0x1580, v149
	v_or_b32_e32 v128, 0x1600, v149
	v_or_b32_e32 v129, 0x1680, v149
	v_or_b32_e32 v130, 0x1700, v149
	v_or_b32_e32 v131, 0x1780, v149
	v_or_b32_e32 v132, 0x1800, v149
	v_or_b32_e32 v133, 0x1880, v149
	v_or_b32_e32 v134, 0x1900, v149
	v_or_b32_e32 v135, 0x1980, v149
	v_or_b32_e32 v136, 0x1a00, v149
	v_or_b32_e32 v137, 0x1a80, v149
	v_or_b32_e32 v138, 0x1b00, v149
	v_or_b32_e32 v139, 0x1b80, v149
	v_or_b32_e32 v140, 0x1c00, v149
	v_or_b32_e32 v141, 0x1c80, v149
	v_or_b32_e32 v142, 0x1d00, v149
	v_or_b32_e32 v143, 0x1d80, v149
	v_or_b32_e32 v144, 0x1e00, v149
	v_or_b32_e32 v145, 0x1e80, v149
	v_or_b32_e32 v146, 0x1f00, v149
	v_or_b32_e32 v147, 0x1f80, v149
	v_dual_mov_b32 v70, 0 :: v_dual_lshlrev_b32 v157, 1, v8
	v_dual_mov_b32 v51, 0 :: v_dual_lshlrev_b32 v158, 1, v5
	v_subrev_nc_u32_e32 v159, s7, v3
	v_subrev_nc_u32_e32 v160, s7, v2
	v_add3_u32 v161, v4, s34, v1
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v50, 0
	s_mov_b32 s16, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_max_i32 s0, s1, 1
	s_lshl_b32 s3, s27, 2
	s_lshl_b32 s6, s27, 7
	s_lshl_b32 s7, s26, 6
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
	v_cmp_lt_i32_e32 vcc_lo, s5, v153
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v40, s23 :: v_dual_mov_b32 v39, s22
	v_dual_mov_b32 v38, s21 :: v_dual_mov_b32 v37, s20
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_dual_cndmask_b32 v1, 0x80000000, v161 :: v_dual_add_nc_u32 v48, v154, v155
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v36, s19 :: v_dual_mov_b32 v35, s18
	v_dual_mov_b32 v34, s17 :: v_dual_mov_b32 v33, s16
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_b64 v[41:42], v1, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v1, v148 offset:16704
	ds_load_u8 v2, v148 offset:16640
	ds_load_u8 v3, v148 offset:16832
	ds_load_u8 v4, v148 offset:16768
	ds_load_u8 v5, v148 offset:16448
	ds_load_u8 v6, v148 offset:16384
	ds_load_u8 v7, v148 offset:16576
	ds_load_u8 v8, v148 offset:16512
	ds_load_u8 v9, v148 offset:16608
	ds_load_u8 v10, v148 offset:16544
	ds_load_u8 v11, v148 offset:16480
	ds_load_u8 v12, v148 offset:16416
	ds_load_u8 v13, v152 offset:640
	ds_load_u8 v14, v152 offset:896
	ds_load_u8 v15, v152 offset:768
	ds_load_u8 v16, v152 offset:512
	ds_load_u8 v17, v152 offset:128
	ds_load_u8 v18, v152 offset:384
	ds_load_u8 v19, v152 offset:256
	ds_load_u8 v20, v152
	ds_load_u8 v81, v148 offset:17216
	ds_load_u8 v82, v148 offset:17152
	ds_load_u8 v83, v148 offset:17344
	ds_load_u8 v162, v148 offset:17280
	ds_load_u8 v163, v148 offset:16960
	ds_load_u8 v164, v148 offset:16896
	ds_load_u8 v165, v148 offset:17088
	ds_load_u8 v166, v148 offset:17024
	ds_load_u8 v167, v152 offset:1664
	ds_load_u8 v168, v152 offset:1920
	ds_load_u8 v169, v152 offset:1792
	ds_load_u8 v170, v152 offset:1536
	ds_load_u8 v171, v152 offset:1152
	ds_load_u8 v172, v152 offset:1408
	ds_load_u8 v173, v152 offset:1280
	ds_load_u8 v174, v152 offset:1024
	ds_load_u8 v175, v148 offset:17728
	ds_load_u8 v176, v148 offset:17664
	ds_load_u8 v177, v148 offset:17856
	ds_load_u8 v178, v148 offset:17792
	ds_load_u8 v179, v148 offset:17472
	ds_load_u8 v180, v148 offset:17408
	ds_load_u8 v182, v148 offset:17600
	ds_load_u8 v183, v148 offset:17536
	ds_load_u8 v21, v148 offset:16864
	ds_load_u8 v22, v148 offset:16800
	ds_load_u8 v23, v148 offset:16736
	ds_load_u8 v24, v148 offset:16672
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v25, v152 offset:8832
	ds_load_u8 v26, v152 offset:9088
	ds_load_u8 v27, v152 offset:8960
	ds_load_u8 v28, v152 offset:8704
	ds_load_u8 v29, v152 offset:8320
	ds_load_u8 v30, v152 offset:8576
	ds_load_u8 v31, v152 offset:8448
	ds_load_u8 v32, v152 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v184, v152 offset:2688
	s_waitcnt lgkmcnt(55)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(53)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(51)
	v_perm_b32 v3, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(49)
	v_perm_b32 v4, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(41)
	v_perm_b32 v5, v16, v13, 0xc0c0004
	v_perm_b32 v6, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v7, v20, v17, 0xc0c0004
	v_perm_b32 v8, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v14, v22, v21, 0xc0c0004
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v13, v24, v23, 0xc0c0004
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_lshl_or_b32 v18, v2, 16, v1
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v12, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v10, v28, v25, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v17, v4, 16, v3
	v_lshl_or_b32 v2, v6, 16, v5
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v31, v30, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v15, v32, v29, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v1, v8, 16, v7
	v_lshl_or_b32 v44, v14, 16, v13
	v_lshl_or_b32 v43, v9, 16, v11
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v46, v12, 16, v10
	v_lshl_or_b32 v45, v16, 16, v15
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[1:2], v[17:18], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[1:2], v[43:44], v[33:40] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[45:46], v[17:18], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[45:46], v[43:44], v[33:40] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v37, v148 offset:17248
	ds_load_u8 v38, v148 offset:17184
	ds_load_u8 v39, v148 offset:17120
	ds_load_u8 v40, v148 offset:17056
	v_perm_b32 v34, v162, v83, 0xc0c0004
	v_perm_b32 v35, v164, v163, 0xc0c0004
	v_perm_b32 v36, v166, v165, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v46, v152 offset:10112
	ds_load_u8 v83, v152 offset:9344
	ds_load_u8 v162, v152 offset:9600
	ds_load_u8 v164, v152 offset:9472
	ds_load_u8 v166, v152 offset:9216
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v33, v82, v81, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v81, v152 offset:9984
	ds_load_u8 v82, v152 offset:9728
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v187, v148 offset:17376
	ds_load_u8 v43, v148 offset:16992
	ds_load_u8 v44, v148 offset:16928
	v_perm_b32 v163, v174, v171, 0xc0c0004
	v_perm_b32 v165, v173, v172, 0xc0c0004
	ds_load_u8 v174, v148 offset:17440
	ds_load_u8 v188, v148 offset:17312
	ds_load_u8 v186, v152 offset:2816
	ds_load_u8 v193, v148 offset:19872
	ds_load_u8 v196, v148 offset:19616
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v45, v152 offset:9856
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v185, v152 offset:2944
	v_lshl_or_b32 v34, v34, 16, v33
	v_lshl_or_b32 v33, v36, 16, v35
	v_perm_b32 v35, v170, v167, 0xc0c0004
	v_perm_b32 v36, v169, v168, 0xc0c0004
	ds_load_u8 v167, v152 offset:2432
	ds_load_u8 v168, v152 offset:2304
	ds_load_u8 v169, v148 offset:18240
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v40, v81, v46, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v46, v148 offset:17984
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_perm_b32 v81, v166, v83, 0xc0c0004
	v_perm_b32 v83, v164, v162, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v162, v148 offset:18112
	ds_load_u8 v173, v148 offset:17504
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v38, v188, v187, 0xc0c0004
	v_perm_b32 v43, v44, v43, 0xc0c0004
	v_lshl_or_b32 v36, v36, 16, v35
	v_lshl_or_b32 v35, v165, 16, v163
	ds_load_u8 v163, v152 offset:2560
	ds_load_u8 v165, v152 offset:2176
	v_lshl_or_b32 v38, v38, 16, v37
	v_lshl_or_b32 v37, v39, 16, v43
	ds_load_u8 v44, v152 offset:2048
	v_wmma_i32_16x16x16_iu4 v[9:16], v[35:36], v[33:34], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v171, v148 offset:17888
	ds_load_u8 v172, v148 offset:17824
	ds_load_u8 v43, v148 offset:18176
	ds_load_u8 v170, v148 offset:18368
	v_wmma_i32_16x16x16_iu4 v[25:32], v[35:36], v[37:38], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v35, v180, v179, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v179, v152 offset:10624
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v180, v152 offset:3456
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v168, v152 offset:10240
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v192, v152 offset:6400
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_perm_b32 v39, v82, v45, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v36, v183, v182, 0xc0c0004
	ds_load_u8 v45, v148 offset:18304
	ds_load_u8 v82, v148 offset:17920
	ds_load_u8 v164, v152 offset:3968
	ds_load_u8 v166, v152 offset:3840
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v40, v40, 16, v39
	v_lshl_or_b32 v39, v83, 16, v81
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v81, v148 offset:18048
	ds_load_u8 v83, v152 offset:3712
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v47, v154, v156
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v188, v152 offset:7040
	ds_load_u8 v189, v152 offset:6912
	ds_load_u8 v194, v148 offset:19808
	ds_load_u8 v195, v148 offset:19744
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[39:40], v[33:34], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[39:40], v[37:38], v[17:24] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v37, v148 offset:17760
	ds_load_u8 v38, v148 offset:17696
	ds_load_u8 v39, v148 offset:17632
	ds_load_u8 v40, v148 offset:17568
	v_perm_b32 v33, v176, v175, 0xc0c0004
	v_perm_b32 v34, v178, v177, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v175, v152 offset:10880
	ds_load_u8 v176, v152 offset:11136
	ds_load_u8 v177, v152 offset:11008
	ds_load_u8 v178, v152 offset:10752
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_dual_cndmask_b32 v84, 0x80000000, v160 :: v_dual_cndmask_b32 v181, 0x80000000, v159
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v34, v34, 16, v33
	v_lshl_or_b32 v33, v36, 16, v35
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v35, v163, v184, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v163, v152 offset:10368
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v183, v148 offset:18400
	ds_load_u8 v184, v148 offset:18336
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s0, s0, -1
	s_add_i32 s5, s5, 64
	s_cmp_lg_u32 s0, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	v_perm_b32 v38, v172, v171, 0xc0c0004
	ds_load_u8 v171, v152 offset:3328
	v_perm_b32 v172, v174, v173, 0xc0c0004
	ds_load_u8 v173, v152 offset:3072
	v_perm_b32 v36, v186, v185, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v174, v148 offset:18752
	ds_load_u8 v185, v148 offset:19648
	v_perm_b32 v44, v44, v165, 0xc0c0004
	v_lshl_or_b32 v36, v36, 16, v35
	v_lshl_or_b32 v38, v38, 16, v37
	v_lshl_or_b32 v37, v39, 16, v172
	ds_load_u8 v172, v148 offset:18688
	ds_load_u8 v182, v148 offset:18880
	v_lshl_or_b32 v35, v167, 16, v44
	ds_load_u8 v44, v152 offset:3584
	ds_load_u8 v167, v152 offset:3200
	ds_load_u8 v186, v148 offset:19584
	ds_load_u8 v187, v152 offset:6784
	v_wmma_i32_16x16x16_iu4 v[9:16], v[35:36], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[35:36], v[37:38], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v36, v81, v162, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v81, v152 offset:12160
	ds_load_u8 v165, v152 offset:10496
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v39, v178, v175, 0xc0c0004
	v_perm_b32 v40, v177, v176, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v163, v168, v163, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v176, v148 offset:18496
	ds_load_u8 v168, v148 offset:18432
	ds_load_u8 v177, v148 offset:18624
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v40, v40, 16, v39
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v175, v148 offset:18816
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v165, v165, v179, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v178, v152 offset:4992
	ds_load_u8 v179, v152 offset:4864
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v39, v165, 16, v163
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v163, v148 offset:18560
	ds_load_u8 v165, v152 offset:4736
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[39:40], v[33:34], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[39:40], v[37:38], v[17:24] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v37, v148 offset:18272
	ds_load_u8 v38, v148 offset:18208
	ds_load_u8 v39, v148 offset:18144
	ds_load_u8 v40, v148 offset:18080
	v_perm_b32 v33, v43, v169, 0xc0c0004
	ds_load_u8 v43, v148 offset:18016
	v_perm_b32 v34, v45, v170, 0xc0c0004
	ds_load_u8 v45, v148 offset:17952
	v_perm_b32 v35, v82, v46, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v46, v152 offset:11904
	ds_load_u8 v82, v152 offset:12032
	ds_load_u8 v162, v152 offset:11776
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v34, v34, 16, v33
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v169, v152 offset:11264
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v33, v36, 16, v35
	v_perm_b32 v35, v44, v83, 0xc0c0004
	v_perm_b32 v36, v166, v164, 0xc0c0004
	v_perm_b32 v164, v173, v167, 0xc0c0004
	v_perm_b32 v167, v171, v180, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v44, v152 offset:11392
	ds_load_u8 v166, v152 offset:11520
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v36, v36, 16, v35
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	v_perm_b32 v38, v184, v183, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	v_lshl_or_b32 v35, v167, 16, v164
	ds_load_u8 v183, v148 offset:18912
	ds_load_u8 v184, v148 offset:18848
	ds_load_u8 v173, v148 offset:19264
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v43, v45, v43, 0xc0c0004
	v_lshl_or_b32 v38, v38, 16, v37
	v_wmma_i32_16x16x16_iu4 v[9:16], v[35:36], v[33:34], v[9:16] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v40, v82, v81, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v81, v148 offset:19008
	v_lshl_or_b32 v37, v39, 16, v43
	ds_load_u8 v164, v152 offset:4608
	ds_load_u8 v167, v152 offset:4224
	ds_load_u8 v170, v152 offset:4480
	ds_load_u8 v171, v152 offset:4352
	ds_load_u8 v45, v152 offset:4096
	v_wmma_i32_16x16x16_iu4 v[25:32], v[35:36], v[37:38], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v35, v168, v176, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v168, v152 offset:12928
	ds_load_u8 v83, v152 offset:11648
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v39, v162, v46, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v36, v163, v177, 0xc0c0004
	ds_load_u8 v177, v152 offset:5504
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v44, v169, v44, 0xc0c0004
	ds_load_u8 v163, v152 offset:13184
	v_lshl_or_b32 v40, v40, 16, v39
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v43, v148 offset:19200
	ds_load_u8 v180, v148 offset:19392
	ds_load_u8 v46, v148 offset:19328
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v83, v166, v83, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v166, v152 offset:6016
	ds_load_u8 v169, v152 offset:5888
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v39, v83, 16, v44
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v44, v148 offset:19072
	ds_load_u8 v83, v152 offset:5760
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[39:40], v[33:34], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[39:40], v[37:38], v[17:24] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v37, v148 offset:18784
	ds_load_u8 v38, v148 offset:18720
	ds_load_u8 v39, v148 offset:18656
	ds_load_u8 v40, v148 offset:18592
	v_perm_b32 v33, v172, v174, 0xc0c0004
	ds_load_u8 v174, v148 offset:18464
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	v_perm_b32 v38, v184, v183, 0xc0c0004
	ds_load_u8 v184, v148 offset:19520
	ds_load_u8 v162, v148 offset:19136
	ds_load_u8 v82, v148 offset:18944
	ds_load_u8 v172, v148 offset:18528
	v_perm_b32 v34, v175, v182, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v175, v152 offset:13056
	ds_load_u8 v176, v152 offset:12800
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	v_lshl_or_b32 v38, v38, 16, v37
	ds_load_u8 v182, v148 offset:19712
	ds_load_u8 v183, v148 offset:19904
	v_lshl_or_b32 v34, v34, 16, v33
	v_lshl_or_b32 v33, v36, 16, v35
	v_perm_b32 v35, v164, v165, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v164, v152 offset:12416
	ds_load_u8 v165, v152 offset:12672
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v36, v179, v178, 0xc0c0004
	ds_load_u8 v178, v152 offset:5376
	ds_load_u8 v179, v148 offset:19776
	v_perm_b32 v45, v45, v167, 0xc0c0004
	v_lshl_or_b32 v36, v36, 16, v35
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v172, v174, v172, 0xc0c0004
	ds_load_u8 v174, v152 offset:5120
	v_lshl_or_b32 v37, v39, 16, v172
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v39, v176, v168, 0xc0c0004
	ds_load_u8 v168, v152 offset:13312
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v191, v152 offset:6528
	v_perm_b32 v170, v171, v170, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v171, v152 offset:12288
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v176, v148 offset:19840
	v_lshl_or_b32 v35, v170, 16, v45
	ds_load_u8 v45, v152 offset:5632
	ds_load_u8 v170, v152 offset:5248
	v_wmma_i32_16x16x16_iu4 v[9:16], v[35:36], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[35:36], v[37:38], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v35, v82, v81, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v81, v152 offset:13952
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v36, v44, v162, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v44, v152 offset:14208
	ds_load_u8 v167, v152 offset:12544
	v_perm_b32 v40, v175, v163, 0xc0c0004
	ds_load_u8 v82, v152 offset:14080
	ds_load_u8 v162, v152 offset:13824
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v175, v48, s[40:43], 0 offen offset:12
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v163, v171, v164, 0xc0c0004
	v_lshl_or_b32 v40, v40, 16, v39
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v171, v148 offset:19456
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v164, v167, v165, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v167, v178, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v39, v164, 16, v163
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v163, v148 offset:19424
	ds_load_u8 v164, v148 offset:19360
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[39:40], v[33:34], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[39:40], v[37:38], v[17:24] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v37, v148 offset:19296
	ds_load_u8 v38, v148 offset:19232
	ds_load_u8 v39, v148 offset:19168
	ds_load_u8 v40, v148 offset:19104
	v_perm_b32 v33, v43, v173, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	v_perm_b32 v38, v164, v163, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_perm_b32 v40, v82, v44, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v82, v148 offset:19488
	ds_load_u8 v43, v148 offset:19040
	v_perm_b32 v34, v46, v180, 0xc0c0004
	ds_load_u8 v46, v148 offset:18976
	v_lshl_or_b32 v38, v38, 16, v37
	ds_load_u8 v180, v152 offset:6656
	ds_load_u8 v190, v152 offset:6272
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v163, v158, s[36:39], 0 offen
	buffer_load_u16 v164, v157, s[36:39], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v34, v34, 16, v33
	v_lshl_or_b32 v33, v36, 16, v35
	v_perm_b32 v35, v45, v83, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v45, v152 offset:13440
	ds_load_u8 v83, v152 offset:13696
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v36, v169, v166, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v166, v152 offset:13568
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v36, v36, 16, v35
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v43, v46, v43, 0xc0c0004
	ds_load_u8 v46, v148 offset:19936
	v_perm_b32 v165, v174, v170, 0xc0c0004
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v170, v48, s[40:43], 0 offen offset:8
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v37, v39, 16, v43
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_perm_b32 v39, v162, v81, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v35, v167, 16, v165
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v43, v168, v45, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v81, v148 offset:19680
	ds_load_u8 v45, v148 offset:19552
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v44, v166, v83, 0xc0c0004
	v_lshl_or_b32 v40, v40, 16, v39
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[35:36], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[35:36], v[37:38], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v35, v171, v184, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v39, v44, 16, v43
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v36, v186, v185, 0xc0c0004
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v166, v47, s[40:43], 0 offen
	buffer_load_u16 v169, v47, s[40:43], 0 offen offset:4
	buffer_load_u16 v165, v47, s[40:43], 0 offen offset:8
	buffer_load_u16 v168, v47, s[40:43], 0 offen offset:12
	buffer_load_u16 v162, v47, s[40:43], 0 offen offset:16
	buffer_load_u16 v167, v47, s[40:43], 0 offen offset:20
	buffer_load_u16 v172, v48, s[40:43], 0 offen
	buffer_load_u16 v174, v48, s[40:43], 0 offen offset:4
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[39:40], v[33:34], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[39:40], v[37:38], v[17:24] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v33, v182, v179, 0xc0c0004
	v_lshl_or_b32 v43, v36, 16, v35
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v173, v47, s[40:43], 0 offen offset:24
	buffer_load_u16 v178, v47, s[40:43], 0 offen offset:28
	buffer_load_u16 v177, v48, s[40:43], 0 offen offset:24
	buffer_load_u16 v179, v48, s[40:43], 0 offen offset:28
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v36, v152 offset:14976
	ds_load_u8 v37, v152 offset:15104
	ds_load_u8 v47, v152 offset:15232
	ds_load_u8 v39, v152 offset:14848
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v34, v176, v183, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v182, v152 offset:14464
	ds_load_u8 v83, v152 offset:14592
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v45, v82, v45, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v82, v152 offset:14720
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v44, v34, 16, v33
	ds_load_u8 v34, v152 offset:6144
	v_perm_b32 v33, v180, v187, 0xc0c0004
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x1
	buffer_load_u16 v171, v48, s[40:43], 0 offen offset:16
	buffer_load_u16 v176, v48, s[40:43], 0 offen offset:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v183, v196, v81, 0xc0c0004
	v_perm_b32 v35, v189, v188, 0xc0c0004
	v_perm_b32 v38, v192, v191, 0xc0c0004
	v_perm_b32 v40, v195, v194, 0xc0c0004
	v_perm_b32 v46, v193, v46, 0xc0c0004
	v_lshl_or_b32 v45, v183, 16, v45
	v_lshl_or_b32 v48, v35, 16, v33
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v81, v37, v47, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v180, v39, v36, 0xc0c0004
	ds_load_u8 v39, v152 offset:14336
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v46, v46, 16, v40
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v83, v83, v82, 0xc0c0004
	v_lshl_or_b32 v82, v81, 16, v180
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v180, v148 offset:20256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v34, v190, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v38, 16, v34
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[33:36], v84, s[28:31], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[43:44], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[47:48], v[45:46], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v47, v152 offset:8064
	ds_load_u8 v48, v152 offset:7296
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v84, v39, v182, 0xc0c0004
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	buffer_load_b128 v[37:40], v181, s[28:31], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v181, v152 offset:7808
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v81, v83, 16, v84
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v83, v152 offset:7936
	ds_load_u8 v84, v152 offset:7680
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[81:82], v[43:44], v[1:8] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v43, v152 offset:7424
	ds_load_u8 v44, v152 offset:7168
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[45:46], v[17:24] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v45, v152 offset:7552
	ds_load_u8 v46, v148 offset:20448
	ds_load_u8 v81, v148 offset:20384
	ds_load_u8 v82, v148 offset:20320
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v47, v83, v47, 0xc0c0004
	ds_load_u8 v83, v148 offset:20192
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v43, v43, v45, 0xc0c0004
	v_perm_b32 v48, v44, v48, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v46, v81, v46, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v82, v180, v82, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v81, v152 offset:15872
	ds_load_u8 v180, v152 offset:15488
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v84, v84, v181, 0xc0c0004
	ds_load_u8 v45, v148 offset:20064
	v_lshl_or_b32 v43, v43, 16, v48
	ds_load_u8 v181, v148 offset:20128
	v_lshl_or_b32 v46, v46, 16, v82
	v_lshl_or_b32 v44, v47, 16, v84
	ds_load_u8 v47, v148 offset:20000
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v48, v152 offset:16000
	ds_load_u8 v84, v152 offset:16128
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v45, v47, v45, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v47, v152 offset:16256
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v48, v81, v48, 0xc0c0004
	ds_load_u8 v81, v152 offset:15360
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v47, v84, v47, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v84, v148 offset:20288
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v81, v81, v180, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v180, v148 offset:20224
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v48, v47, 16, v48
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v180, v84, 0xc0c0004
	ds_load_u8 v180, v148 offset:19968
	v_perm_b32 v83, v181, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v83, 16, v45
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v82, v152 offset:15744
	ds_load_u8 v83, v152 offset:15616
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[25:32], v[43:44], v[45:46], v[25:32] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v83, v148 offset:20416
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v47, v82, 16, v81
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v81, v148 offset:20352
	ds_load_u8 v82, v148 offset:20032
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[47:48], v[45:46], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v81, v81, v83, 0xc0c0004
	ds_load_u8 v83, v148 offset:20160
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v180, v180, v82, 0xc0c0004
	ds_load_u8 v82, v148 offset:20096
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(20)
	ds_store_b64 v150, v[41:42] offset:16384
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v151, v[33:36]
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	s_waitcnt vmcnt(0)
	ds_store_b128 v151, v[37:40] offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v83, v82, v83, 0xc0c0004
	v_lshl_or_b32 v82, v81, 16, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v83, 16, v180
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[81:82], v[9:16] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[47:48], v[81:82], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v44, 16, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v20, v44, v20 :: v_dual_lshlrev_b32 v43, 16, v163
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v10, v43, v10 :: v_dual_add_nc_u32 v161, s7, v161
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v2, v43, v2 :: v_dual_add_nc_u32 v159, s6, v159
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v9, v43, v9 :: v_dual_add_nc_u32 v158, 2, v158
	v_dual_mul_f32 v12, v43, v12 :: v_dual_lshlrev_b32 v45, 16, v169
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v4, v43, v4 :: v_dual_lshlrev_b32 v47, 16, v174
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v11, v43, v11 :: v_dual_lshlrev_b32 v82, 16, v165
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v3, v43, v3 :: v_dual_lshlrev_b32 v84, 16, v170
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v14, v43, v14 :: v_dual_lshlrev_b32 v163, 16, v167
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v6, v43, v6 :: v_dual_lshlrev_b32 v165, 16, v171
	v_mul_f32_e32 v1, v43, v1
	v_dual_mul_f32 v18, v44, v18 :: v_dual_add_nc_u32 v155, s3, v155
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v25, v44, v25 :: v_dual_add_nc_u32 v156, s3, v156
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v17, v44, v17 :: v_dual_add_nc_u32 v160, s6, v160
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v28, v44, v28 :: v_dual_add_nc_u32 v157, 2, v157
	v_dual_mul_f32 v27, v44, v27 :: v_dual_lshlrev_b32 v46, 16, v166
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v19, v44, v19 :: v_dual_lshlrev_b32 v48, 16, v172
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v30, v44, v30 :: v_dual_lshlrev_b32 v81, 16, v168
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v22, v44, v22 :: v_dual_lshlrev_b32 v83, 16, v175
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v29, v44, v29 :: v_dual_lshlrev_b32 v162, 16, v162
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v21, v44, v21 :: v_dual_lshlrev_b32 v164, 16, v176
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v13, v43, v13 :: v_dual_lshlrev_b32 v166, 16, v178
	v_dual_mul_f32 v32, v44, v32 :: v_dual_lshlrev_b32 v167, 16, v173
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v5, v43, v5 :: v_dual_lshlrev_b32 v168, 16, v179
	v_dual_mul_f32 v24, v44, v24 :: v_dual_lshlrev_b32 v169, 16, v177
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v26, v44, v26
	v_dual_mul_f32 v31, v44, v31 :: v_dual_mul_f32 v16, v43, v16
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v23, v44, v23 :: v_dual_mul_f32 v8, v43, v8
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v15, v43, v15 :: v_dual_fmac_f32 v68, v25, v46
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v7, v43, v7 :: v_dual_fmac_f32 v80, v10, v45
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v69, v26, v45 :: v_dual_fmac_f32 v64, v27, v82
	v_dual_fmac_f32 v79, v9, v46 :: v_dual_fmac_f32 v50, v31, v167
	v_dual_fmac_f32 v65, v28, v81 :: v_dual_fmac_f32 v76, v11, v82
	v_dual_fmac_f32 v77, v12, v81 :: v_dual_fmac_f32 v60, v29, v162
	v_dual_fmac_f32 v61, v30, v163 :: v_dual_fmac_f32 v72, v13, v162
	v_dual_fmac_f32 v73, v14, v163 :: v_dual_fmac_f32 v52, v16, v166
	v_dual_fmac_f32 v49, v32, v166 :: v_dual_fmac_f32 v56, v1, v48
	v_dual_fmac_f32 v51, v15, v167 :: v_dual_fmac_f32 v70, v5, v165
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v78, v2, v47 :: v_dual_fmac_f32 v53, v7, v169
	v_dual_fmac_f32 v74, v3, v84 :: v_dual_fmac_f32 v75, v4, v83
	v_dual_fmac_f32 v71, v6, v164 :: v_dual_fmac_f32 v58, v21, v165
	v_dual_fmac_f32 v54, v8, v168 :: v_dual_fmac_f32 v67, v18, v47
	v_dual_fmac_f32 v66, v17, v48 :: v_dual_fmac_f32 v63, v20, v83
	v_fmac_f32_e32 v62, v19, v84
	v_fmac_f32_e32 v59, v22, v164
	v_fmac_f32_e32 v55, v23, v169
	v_fmac_f32_e32 v57, v24, v168
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v3, v149
.LBB0_6:                                ; %._crit_edge
	.loc	1 160 26 is_stmt 1              ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v236, v148 offset:16384
	ds_load_u8_d16 v1, v148 offset:16416
	ds_load_u8_d16 v41, v148 offset:20064
	ds_load_u8_d16 v48, v148 offset:20000
	v_dual_mov_b32 v186, 0 :: v_dual_add_nc_u32 v147, 0, v147
	v_add_nc_u32_e32 v146, 0, v146
	v_add_nc_u32_e32 v145, 0, v145
	v_add_nc_u32_e32 v144, 0, v144
	v_add_nc_u32_e32 v143, 0, v143
	v_add_nc_u32_e32 v142, 0, v142
	v_add_nc_u32_e32 v141, 0, v141
	v_dual_mov_b32 v15, 0 :: v_dual_add_nc_u32 v140, 0, v140
	v_dual_mov_b32 v16, 0 :: v_dual_add_nc_u32 v139, 0, v139
	v_dual_mov_b32 v11, 0 :: v_dual_add_nc_u32 v138, 0, v138
	v_dual_mov_b32 v4, 0 :: v_dual_add_nc_u32 v137, 0, v137
	v_dual_mov_b32 v13, 0 :: v_dual_add_nc_u32 v136, 0, v136
	s_waitcnt lgkmcnt(2)
	scratch_store_b32 off, v1, off offset:16 ; 4-byte Folded Spill
	ds_load_u8_d16 v240, v148 offset:16448
	ds_load_u8_d16 v241, v148 offset:16512
	ds_load_u8_d16 v242, v148 offset:16576
	ds_load_u8_d16 v149, v148 offset:16608
	ds_load_u8_d16 v151, v148 offset:16544
	ds_load_u8_d16 v153, v148 offset:16480
	ds_load_u8_d16 v247, v148 offset:16640
	ds_load_u8_d16 v248, v148 offset:16704
	ds_load_u8_d16 v249, v148 offset:16768
	ds_load_u8_d16 v250, v148 offset:16832
	ds_load_u8_d16 v172, v148 offset:16864
	ds_load_u8_d16 v179, v148 offset:16800
	ds_load_u8_d16 v182, v148 offset:16736
	ds_load_u8_d16 v184, v148 offset:16672
	ds_load_u8_d16 v227, v148 offset:16896
	ds_load_u8_d16 v228, v148 offset:16960
	ds_load_u8_d16 v229, v148 offset:17024
	ds_load_u8_d16 v230, v148 offset:17088
	ds_load_u8_d16 v42, v148 offset:17120
	ds_load_u8_d16 v150, v148 offset:17056
	ds_load_u8_d16 v152, v148 offset:16992
	ds_load_u8_d16 v154, v148 offset:16928
	ds_load_u8_d16 v235, v148 offset:17152
	ds_load_u8_d16 v237, v148 offset:17216
	ds_load_u8_d16 v238, v148 offset:17280
	ds_load_u8_d16 v239, v148 offset:17344
	ds_load_u8_d16 v173, v148 offset:17376
	ds_load_u8_d16 v180, v148 offset:17312
	ds_load_u8_d16 v183, v148 offset:17248
	ds_load_u8_d16 v185, v148 offset:17184
	ds_load_u8_d16 v231, v148 offset:17408
	ds_load_u8_d16 v232, v148 offset:17472
	ds_load_u8_d16 v233, v148 offset:17536
	ds_load_u8_d16 v234, v148 offset:17600
	ds_load_u8_d16 v1, v148 offset:17632
	v_dual_mov_b32 v12, 0 :: v_dual_add_nc_u32 v135, 0, v135
	v_add_nc_u32_e32 v134, 0, v134
	v_dual_mov_b32 v14, 0 :: v_dual_add_nc_u32 v133, 0, v133
	v_add_nc_u32_e32 v132, 0, v132
	v_dual_mov_b32 v2, 0 :: v_dual_add_nc_u32 v131, 0, v131
	v_add_nc_u32_e32 v130, 0, v130
	v_add_nc_u32_e32 v129, 0, v129
	v_add_nc_u32_e32 v128, 0, v128
	v_add_nc_u32_e32 v127, 0, v127
	v_add_nc_u32_e32 v126, 0, v126
	v_add_nc_u32_e32 v125, 0, v125
	v_add_nc_u32_e32 v124, 0, v124
	v_add_nc_u32_e32 v123, 0, v123
	v_add_nc_u32_e32 v122, 0, v122
	v_add_nc_u32_e32 v121, 0, v121
	v_add_nc_u32_e32 v120, 0, v120
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:20 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v148 offset:17568
	v_add_nc_u32_e32 v119, 0, v119
	v_add_nc_u32_e32 v118, 0, v118
	v_add_nc_u32_e32 v117, 0, v117
	v_add_nc_u32_e32 v116, 0, v116
	v_add_nc_u32_e32 v115, 0, v115
	v_add_nc_u32_e32 v114, 0, v114
	v_add_nc_u32_e32 v113, 0, v113
	v_add_nc_u32_e32 v112, 0, v112
	v_add_nc_u32_e32 v111, 0, v111
	v_add_nc_u32_e32 v110, 0, v110
	v_add_nc_u32_e32 v109, 0, v109
	v_add_nc_u32_e32 v108, 0, v108
	v_add_nc_u32_e32 v107, 0, v107
	v_add_nc_u32_e32 v106, 0, v106
	v_add_nc_u32_e32 v105, 0, v105
	v_add_nc_u32_e32 v104, 0, v104
	v_add_nc_u32_e32 v103, 0, v103
	v_add_nc_u32_e32 v102, 0, v102
	v_add_nc_u32_e32 v101, 0, v101
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	ds_load_u8_d16 v36, v148 offset:17504
	ds_load_u8_d16 v43, v148 offset:17440
	ds_load_u8_d16 v243, v148 offset:17664
	ds_load_u8_d16 v244, v148 offset:17728
	ds_load_u8_d16 v245, v148 offset:17792
	ds_load_u8_d16 v246, v148 offset:17856
	ds_load_u8_d16 v155, v148 offset:17888
	ds_load_u8_d16 v160, v148 offset:17824
	ds_load_u8_d16 v167, v148 offset:17760
	ds_load_u8_d16 v174, v148 offset:17696
	ds_load_u8_d16 v219, v148 offset:17920
	ds_load_u8_d16 v220, v148 offset:17984
	ds_load_u8_d16 v221, v148 offset:18048
	ds_load_u8_d16 v222, v148 offset:18112
	ds_load_u8_d16 v1, v148 offset:18144
	v_add_nc_u32_e32 v100, 0, v100
	v_add_nc_u32_e32 v99, 0, v99
	v_add_nc_u32_e32 v98, 0, v98
	v_add_nc_u32_e32 v97, 0, v97
	v_add_nc_u32_e32 v96, 0, v96
	v_add_nc_u32_e32 v95, 0, v95
	v_add_nc_u32_e32 v94, 0, v94
	v_add_nc_u32_e32 v93, 0, v93
	v_add_nc_u32_e32 v92, 0, v92
	v_add_nc_u32_e32 v254, 0, v91
	v_add_nc_u32_e32 v91, 0, v90
	v_add_nc_u32_e32 v84, 0, v89
	v_add_nc_u32_e32 v81, 0, v88
	v_add_nc_u32_e32 v252, 0, v87
	v_add_nc_u32_e32 v253, 0, v86
	v_add_nc_u32_e32 v251, 0, v85
	v_add_nc_u32_e32 v255, 0, v3
	v_mov_b32_e32 v87, 0
	v_mov_b32_e32 v89, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:24 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v148 offset:18080
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_mov_b32_e32 v88, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v3, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_mov_b32 s4, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:48 ; 4-byte Folded Spill
	ds_load_u8_d16 v37, v148 offset:18016
	ds_load_u8_d16 v44, v148 offset:17952
	ds_load_u8_d16 v223, v148 offset:18176
	ds_load_u8_d16 v224, v148 offset:18240
	ds_load_u8_d16 v225, v148 offset:18304
	ds_load_u8_d16 v226, v148 offset:18368
	ds_load_u8_d16 v156, v148 offset:18400
	ds_load_u8_d16 v161, v148 offset:18336
	ds_load_u8_d16 v168, v148 offset:18272
	ds_load_u8_d16 v175, v148 offset:18208
	ds_load_u8_d16 v211, v148 offset:18432
	ds_load_u8_d16 v212, v148 offset:18496
	ds_load_u8_d16 v213, v148 offset:18560
	ds_load_u8_d16 v214, v148 offset:18624
	ds_load_u8_d16 v1, v148 offset:18656
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:28 ; 4-byte Folded Spill
	ds_load_u8_d16 v32, v148 offset:18592
	ds_load_u8_d16 v38, v148 offset:18528
	ds_load_u8_d16 v45, v148 offset:18464
	ds_load_u8_d16 v215, v148 offset:18688
	ds_load_u8_d16 v216, v148 offset:18752
	ds_load_u8_d16 v217, v148 offset:18816
	ds_load_u8_d16 v218, v148 offset:18880
	ds_load_u8_d16 v157, v148 offset:18912
	ds_load_u8_d16 v162, v148 offset:18848
	ds_load_u8_d16 v169, v148 offset:18784
	ds_load_u8_d16 v176, v148 offset:18720
	ds_load_u8_d16 v195, v148 offset:18944
	ds_load_u8_d16 v196, v148 offset:19008
	ds_load_u8_d16 v197, v148 offset:19072
	ds_load_u8_d16 v198, v148 offset:19136
	ds_load_u8_d16 v1, v148 offset:19168
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:32 ; 4-byte Folded Spill
	ds_load_u8_d16 v23, v148 offset:19104
	ds_load_u8_d16 v39, v148 offset:19040
	ds_load_u8_d16 v46, v148 offset:18976
	ds_load_u8_d16 v203, v148 offset:19200
	ds_load_u8_d16 v204, v148 offset:19264
	ds_load_u8_d16 v205, v148 offset:19328
	ds_load_u8_d16 v206, v148 offset:19392
	ds_load_u8_d16 v158, v148 offset:19424
	ds_load_u8_d16 v163, v148 offset:19360
	ds_load_u8_d16 v170, v148 offset:19296
	ds_load_u8_d16 v177, v148 offset:19232
	ds_load_u8_d16 v199, v148 offset:19456
	ds_load_u8_d16 v200, v148 offset:19520
	ds_load_u8_d16 v201, v148 offset:19584
	ds_load_u8_d16 v202, v148 offset:19648
	ds_load_u8_d16 v1, v148 offset:19680
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:36 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v148 offset:19616
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:52 ; 4-byte Folded Spill
	ds_load_u8_d16 v40, v148 offset:19552
	ds_load_u8_d16 v47, v148 offset:19488
	ds_load_u8_d16 v207, v148 offset:19712
	ds_load_u8_d16 v208, v148 offset:19776
	ds_load_u8_d16 v209, v148 offset:19840
	ds_load_u8_d16 v210, v148 offset:19904
	ds_load_u8_d16 v159, v148 offset:19936
	ds_load_u8_d16 v164, v148 offset:19872
	ds_load_u8_d16 v171, v148 offset:19808
	ds_load_u8_d16 v178, v148 offset:19744
	ds_load_u8_d16 v187, v148 offset:19968
	ds_load_u8_d16 v188, v148 offset:20032
	ds_load_u8_d16 v189, v148 offset:20096
	ds_load_u8_d16 v190, v148 offset:20160
	ds_load_u8_d16 v1, v148 offset:20192
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v1, off offset:40 ; 4-byte Folded Spill
	ds_load_u8_d16 v1, v148 offset:20128
	ds_load_u8_d16 v191, v148 offset:20224
	ds_load_u8_d16 v192, v148 offset:20288
	ds_load_u8_d16 v193, v148 offset:20352
	ds_load_u8_d16 v194, v148 offset:20416
	ds_load_u8_d16 v165, v148 offset:20448
	ds_load_u8_d16 v166, v148 offset:20384
	ds_load_u8_d16 v181, v148 offset:20320
	ds_load_u8_d16 v148, v148 offset:20256
	s_waitcnt lgkmcnt(8)
	scratch_store_b32 off, v1, off offset:56 ; 4-byte Folded Spill
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_cndmask_b32_e64 v1, 0, 1, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_ne_u32_e64 s0, 1, v1
	v_mov_b32_e32 v1, 0
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	v_perm_b32 v1, v247, v248, 0xc0c0004
	v_perm_b32 v2, v249, v250, 0xc0c0004
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	v_lshl_or_b32 v22, v2, 16, v1
	v_perm_b32 v1, v236, v240, 0xc0c0004
	v_perm_b32 v2, v241, v242, 0xc0c0004
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v21, v2, 16, v1
	v_perm_b32 v1, v235, v237, 0xc0c0004
	v_perm_b32 v2, v238, v239, 0xc0c0004
	v_lshl_or_b32 v25, v2, 16, v1
	v_perm_b32 v1, v227, v228, 0xc0c0004
	v_perm_b32 v2, v229, v230, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v24, v2, 16, v1
	ds_load_u8 v1, v84
	ds_load_u8 v2, v81
	ds_load_u8 v3, v252
	ds_load_u8 v4, v253
	ds_load_u8 v5, v91
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v254
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v5, v2, 0xc0c0004
	ds_load_u8 v5, v255
	ds_load_u8 v6, v251
	v_lshl_or_b32 v18, v2, 16, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v5, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v3, 16, v5
	ds_load_u8 v1, v97
	ds_load_u8 v2, v96
	ds_load_u8 v3, v92
	ds_load_u8 v4, v95
	ds_load_u8 v5, v94
	ds_load_u8 v6, v98
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v99
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v6, v2, 0xc0c0004
	ds_load_u8 v6, v93
	v_lshl_or_b32 v20, v2, 16, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v3, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v19, v4, 16, v3
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[21:22], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v21, v243, v244, 0xc0c0004
	v_perm_b32 v22, v245, v246, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v25, v22, 16, v21
	v_perm_b32 v21, v231, v232, 0xc0c0004
	v_perm_b32 v22, v233, v234, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v24, v22, 16, v21
	ds_load_u8 v21, v105
	ds_load_u8 v22, v104
	ds_load_u8 v26, v100
	ds_load_u8 v27, v103
	ds_load_u8 v28, v102
	ds_load_u8 v29, v106
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v107
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v29, v22, 0xc0c0004
	ds_load_u8 v29, v101
	v_lshl_or_b32 v22, v22, 16, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v26, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v21, v27, 16, v26
	v_perm_b32 v26, v221, v222, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v24, v223, v224, 0xc0c0004
	v_perm_b32 v25, v225, v226, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v25, 16, v24
	v_perm_b32 v24, v219, v220, 0xc0c0004
	v_lshl_or_b32 v24, v26, 16, v24
	ds_load_u8 v26, v113
	ds_load_u8 v27, v112
	ds_load_u8 v28, v108
	ds_load_u8 v29, v111
	ds_load_u8 v30, v110
	ds_load_u8 v31, v114
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v115
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v31, v27, 0xc0c0004
	ds_load_u8 v31, v109
	v_lshl_or_b32 v27, v27, 16, v26
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v28, v31, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v26, v29, 16, v28
	v_perm_b32 v28, v213, v214, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[26:27], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v24, v215, v216, 0xc0c0004
	v_perm_b32 v25, v217, v218, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v25, 16, v24
	v_perm_b32 v24, v211, v212, 0xc0c0004
	v_lshl_or_b32 v24, v28, 16, v24
	ds_load_u8 v28, v121
	ds_load_u8 v29, v120
	ds_load_u8 v30, v119
	ds_load_u8 v31, v118
	ds_load_u8 v33, v122
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	ds_load_u8 v29, v123
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v33, v29, 0xc0c0004
	ds_load_u8 v33, v116
	ds_load_u8 v34, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v33, v34, 0xc0c0004
	v_lshl_or_b32 v34, v29, 16, v28
	v_perm_b32 v28, v197, v198, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v30, 16, v33
	v_wmma_i32_16x16x16_iu4 v[9:16], v[33:34], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v24, v203, v204, 0xc0c0004
	v_perm_b32 v25, v205, v206, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v25, 16, v24
	v_perm_b32 v24, v195, v196, 0xc0c0004
	v_lshl_or_b32 v24, v28, 16, v24
	ds_load_u8 v28, v129
	ds_load_u8 v29, v128
	ds_load_u8 v30, v124
	ds_load_u8 v31, v127
	ds_load_u8 v35, v126
	ds_load_u8 v82, v130
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	ds_load_u8 v29, v131
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v31, v35, v31, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v82, v29, 0xc0c0004
	ds_load_u8 v82, v125
	v_lshl_or_b32 v83, v29, 16, v28
	v_perm_b32 v28, v201, v202, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v30, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v82, v31, 16, v30
	v_wmma_i32_16x16x16_iu4 v[9:16], v[82:83], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v24, v207, v208, 0xc0c0004
	v_perm_b32 v25, v209, v210, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v25, 16, v24
	v_perm_b32 v24, v199, v200, 0xc0c0004
	v_lshl_or_b32 v24, v28, 16, v24
	ds_load_u8 v28, v137
	ds_load_u8 v29, v136
	ds_load_u8 v30, v132
	ds_load_u8 v31, v135
	ds_load_u8 v35, v134
	ds_load_u8 v85, v138
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	ds_load_u8 v29, v139
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v31, v35, v31, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v85, v29, 0xc0c0004
	ds_load_u8 v85, v133
	v_lshl_or_b32 v29, v29, 16, v28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v30, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v28, v31, 16, v30
	v_perm_b32 v30, v189, v190, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[28:29], v[24:25], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v24, v191, v192, 0xc0c0004
	v_perm_b32 v25, v193, v194, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v25, 16, v24
	v_perm_b32 v24, v187, v188, 0xc0c0004
	v_lshl_or_b32 v24, v30, 16, v24
	ds_load_u8 v30, v145
	ds_load_u8 v31, v144
	ds_load_u8 v35, v140
	ds_load_u8 v85, v143
	ds_load_u8 v86, v142
	ds_load_u8 v87, v146
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	ds_load_u8 v31, v147
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v87, v31, 0xc0c0004
	ds_load_u8 v87, v141
	v_lshl_or_b32 v31, v31, 16, v30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v35, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v30, v85, 16, v35
	v_wmma_i32_16x16x16_iu4 v[9:16], v[30:31], v[24:25], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v87, v9
	v_cvt_f32_i32_e32 v89, v10
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v9, v184, v182, 0xc0c0004
	v_perm_b32 v10, v179, v172, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v88, v11
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v11, v151, v149, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v90, v12
	v_cvt_f32_i32_e32 v85, v13
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v10, v10, 16, v9
	scratch_load_b32 v9, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v86, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v9, v9, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v9, v11, 16, v9
	v_perm_b32 v11, v150, v42, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[17:18], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v9, v185, v183, 0xc0c0004
	v_perm_b32 v10, v180, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v154, v152, 0xc0c0004
	v_lshl_or_b32 v9, v11, 16, v9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:20
	scratch_load_b32 v12, off, off offset:44
	v_wmma_i32_16x16x16_iu4 v[1:8], v[19:20], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v9, v174, v167, 0xc0c0004
	v_perm_b32 v10, v160, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v43, v36, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	v_lshl_or_b32 v9, v11, 16, v9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:24
	scratch_load_b32 v12, off, off offset:48
	v_wmma_i32_16x16x16_iu4 v[1:8], v[21:22], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v9, v175, v168, 0xc0c0004
	v_perm_b32 v10, v161, v156, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v44, v37, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	v_lshl_or_b32 v9, v11, 16, v9
	scratch_load_b32 v11, off, off offset:28 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[1:8], v[26:27], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v9, v176, v169, 0xc0c0004
	v_perm_b32 v10, v162, v157, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v45, v38, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v11, v32, v11, 0xc0c0004
	v_lshl_or_b32 v9, v11, 16, v9
	scratch_load_b32 v11, off, off offset:32 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[1:8], v[33:34], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v9, v177, v170, 0xc0c0004
	v_perm_b32 v10, v163, v158, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v46, v39, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v11, v23, v11, 0xc0c0004
	v_lshl_or_b32 v9, v11, 16, v9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:36
	scratch_load_b32 v12, off, off offset:52
	v_wmma_i32_16x16x16_iu4 v[1:8], v[82:83], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v9, v178, v171, 0xc0c0004
	v_perm_b32 v10, v164, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v47, v40, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	v_lshl_or_b32 v9, v11, 16, v9
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v11, off, off offset:40
	scratch_load_b32 v12, off, off offset:56
	v_wmma_i32_16x16x16_iu4 v[1:8], v[28:29], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v9, v148, v181, 0xc0c0004
	v_perm_b32 v10, v166, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	v_perm_b32 v9, v48, v41, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	v_lshl_or_b32 v9, v11, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[30:31], v[9:10], v[1:8] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v11, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v13, v2
	v_cvt_f32_i32_e32 v12, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v14, v4
	v_cvt_f32_i32_e32 v3, v5
	v_cvt_f32_i32_e32 v4, v6
	v_cvt_f32_i32_e32 v1, v7
	v_cvt_f32_i32_e32 v2, v8
.LBB0_8:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v16, off offset:12
	scratch_store_b32 off, v15, off offset:8
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v26, 0
	v_mov_b32_e32 v27, 0
	.loc	1 175 36 is_stmt 1              ; generate_amdgcn.py:175:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	ds_load_u8 v5, v84 offset:8192
	ds_load_u8 v6, v81 offset:8192
	ds_load_u8 v7, v254 offset:8192
	ds_load_u8 v8, v255 offset:8192
	ds_load_u8 v9, v252 offset:8192
	ds_load_u8 v10, v253 offset:8192
	ds_load_u8 v15, v91 offset:8192
	ds_load_u8 v16, v251 offset:8192
	ds_load_u8 v31, v105 offset:8192
	ds_load_u8 v33, v104 offset:8192
	ds_load_u8 v34, v107 offset:8192
	ds_load_u8 v35, v101 offset:8192
	ds_load_u8 v81, v100 offset:8192
	ds_load_u8 v82, v103 offset:8192
	ds_load_u8 v83, v102 offset:8192
	ds_load_u8 v84, v106 offset:8192
	v_perm_b32 v17, v247, v248, 0xc0c0004
	v_perm_b32 v18, v249, v250, 0xc0c0004
	v_perm_b32 v19, v236, v240, 0xc0c0004
	v_perm_b32 v20, v241, v242, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_perm_b32 v100, v227, v228, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v21, v6, v5, 0xc0c0004
	v_lshl_or_b32 v6, v18, 16, v17
	v_lshl_or_b32 v5, v20, 16, v19
	v_perm_b32 v101, v229, v230, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v97 offset:8192
	ds_load_u8 v24, v96 offset:8192
	ds_load_u8 v25, v99 offset:8192
	ds_load_u8 v26, v93 offset:8192
	ds_load_u8 v27, v92 offset:8192
	ds_load_u8 v28, v95 offset:8192
	ds_load_u8 v29, v94 offset:8192
	ds_load_u8 v30, v98 offset:8192
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v7, v15, v7, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v15, v8, v16, 0xc0c0004
	v_perm_b32 v99, v238, v239, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v35, v81, v35, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v81, v83, v82, 0xc0c0004
	v_lshl_or_b32 v8, v7, 16, v21
	v_lshl_or_b32 v7, v9, 16, v15
	v_dual_mov_b32 v22, s11 :: v_dual_mov_b32 v21, s10
	v_dual_mov_b32 v20, s9 :: v_dual_mov_b32 v19, s8
	v_dual_mov_b32 v18, s7 :: v_dual_mov_b32 v17, s6
	v_dual_mov_b32 v16, s5 :: v_dual_mov_b32 v15, s4
	v_perm_b32 v9, v235, v237, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v10, v24, v10, 0xc0c0004
	v_perm_b32 v36, v43, v36, 0xc0c0004
	v_perm_b32 v42, v150, v42, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v30, v25, 0xc0c0004
	v_perm_b32 v25, v27, v26, 0xc0c0004
	v_perm_b32 v26, v29, v28, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[91:98], v[7:8], v[5:6], v[15:22] neg_lo:[1,1,0]
	v_lshl_or_b32 v6, v99, 16, v9
	v_lshl_or_b32 v5, v101, 16, v100
	v_perm_b32 v28, v33, v31, 0xc0c0004
	v_perm_b32 v29, v84, v34, 0xc0c0004
	ds_load_u8 v30, v113 offset:8192
	ds_load_u8 v31, v112 offset:8192
	ds_load_u8 v33, v115 offset:8192
	ds_load_u8 v34, v109 offset:8192
	ds_load_u8 v84, v108 offset:8192
	ds_load_u8 v99, v111 offset:8192
	ds_load_u8 v100, v110 offset:8192
	ds_load_u8 v101, v114 offset:8192
	v_lshl_or_b32 v10, v24, 16, v10
	v_lshl_or_b32 v9, v26, 16, v25
	v_perm_b32 v24, v243, v244, 0xc0c0004
	v_perm_b32 v25, v245, v246, 0xc0c0004
	v_perm_b32 v26, v231, v232, 0xc0c0004
	v_perm_b32 v27, v233, v234, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[91:98], v[9:10], v[5:6], v[91:98] neg_lo:[1,1,0]
	v_perm_b32 v108, v195, v196, 0xc0c0004
	v_lshl_or_b32 v6, v25, 16, v24
	v_lshl_or_b32 v25, v29, 16, v28
	v_lshl_or_b32 v5, v27, 16, v26
	v_lshl_or_b32 v24, v81, 16, v35
	v_perm_b32 v28, v219, v220, 0xc0c0004
	v_perm_b32 v29, v221, v222, 0xc0c0004
	ds_load_u8 v35, v121 offset:8192
	ds_load_u8 v81, v120 offset:8192
	ds_load_u8 v82, v123 offset:8192
	ds_load_u8 v83, v116 offset:8192
	ds_load_u8 v102, v119 offset:8192
	ds_load_u8 v103, v118 offset:8192
	ds_load_u8 v104, v122 offset:8192
	v_perm_b32 v26, v223, v224, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[91:98], v[24:25], v[5:6], v[91:98] neg_lo:[1,1,0]
	v_perm_b32 v27, v225, v226, 0xc0c0004
	v_lshl_or_b32 v5, v29, 16, v28
	ds_load_u8 v28, v117 offset:8192
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v31, v101, v33, 0xc0c0004
	v_perm_b32 v33, v84, v34, 0xc0c0004
	v_perm_b32 v34, v100, v99, 0xc0c0004
	v_lshl_or_b32 v6, v27, 16, v26
	v_perm_b32 v29, v211, v212, 0xc0c0004
	v_lshl_or_b32 v27, v31, 16, v30
	v_perm_b32 v30, v213, v214, 0xc0c0004
	v_lshl_or_b32 v26, v34, 16, v33
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v31, v81, v35, 0xc0c0004
	v_perm_b32 v109, v197, v198, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[91:98], v[26:27], v[5:6], v[91:98] neg_lo:[1,1,0]
	v_perm_b32 v5, v215, v216, 0xc0c0004
	v_perm_b32 v6, v217, v218, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v104, v82, 0xc0c0004
	ds_load_u8 v34, v129 offset:8192
	ds_load_u8 v35, v128 offset:8192
	ds_load_u8 v81, v131 offset:8192
	ds_load_u8 v82, v125 offset:8192
	ds_load_u8 v84, v124 offset:8192
	ds_load_u8 v99, v127 offset:8192
	ds_load_u8 v100, v126 offset:8192
	ds_load_u8 v101, v130 offset:8192
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v28, v83, v28, 0xc0c0004
	v_lshl_or_b32 v6, v6, 16, v5
	v_lshl_or_b32 v5, v30, 16, v29
	v_lshl_or_b32 v29, v33, 16, v31
	v_perm_b32 v30, v103, v102, 0xc0c0004
	ds_load_u8 v33, v137 offset:8192
	ds_load_u8 v83, v136 offset:8192
	ds_load_u8 v102, v139 offset:8192
	ds_load_u8 v103, v133 offset:8192
	ds_load_u8 v104, v132 offset:8192
	ds_load_u8 v105, v135 offset:8192
	ds_load_u8 v106, v134 offset:8192
	ds_load_u8 v107, v138 offset:8192
	v_perm_b32 v31, v205, v206, 0xc0c0004
	v_lshl_or_b32 v28, v30, 16, v28
	v_perm_b32 v30, v203, v204, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[91:98], v[28:29], v[5:6], v[91:98] neg_lo:[1,1,0]
	v_lshl_or_b32 v6, v31, 16, v30
	v_lshl_or_b32 v5, v109, 16, v108
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v35, v101, v81, 0xc0c0004
	v_perm_b32 v81, v84, v82, 0xc0c0004
	v_perm_b32 v82, v100, v99, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v33, v83, v33, 0xc0c0004
	v_perm_b32 v84, v151, v149, 0xc0c0004
	v_lshl_or_b32 v31, v35, 16, v34
	v_perm_b32 v34, v207, v208, 0xc0c0004
	v_lshl_or_b32 v30, v82, 16, v81
	v_perm_b32 v35, v209, v210, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v107, v102, 0xc0c0004
	v_perm_b32 v81, v199, v200, 0xc0c0004
	v_perm_b32 v82, v201, v202, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[91:98], v[30:31], v[5:6], v[91:98] neg_lo:[1,1,0]
	v_lshl_or_b32 v6, v35, 16, v34
	v_lshl_or_b32 v34, v83, 16, v33
	scratch_load_b32 v83, off, off offset:16 ; 4-byte Folded Reload
	v_lshl_or_b32 v5, v82, 16, v81
	v_perm_b32 v81, v184, v182, 0xc0c0004
	v_perm_b32 v82, v179, v172, 0xc0c0004
	v_perm_b32 v33, v104, v103, 0xc0c0004
	v_perm_b32 v35, v106, v105, 0xc0c0004
	v_perm_b32 v100, v154, v152, 0xc0c0004
	v_perm_b32 v99, v193, v194, 0xc0c0004
	v_lshl_or_b32 v82, v82, 16, v81
	ds_load_u8 v101, v145 offset:8192
	ds_load_u8 v102, v144 offset:8192
	ds_load_u8 v103, v147 offset:8192
	ds_load_u8 v104, v141 offset:8192
	ds_load_u8 v105, v140 offset:8192
	ds_load_u8 v106, v143 offset:8192
	ds_load_u8 v107, v142 offset:8192
	ds_load_u8 v108, v146 offset:8192
	v_lshl_or_b32 v33, v35, 16, v33
	v_perm_b32 v35, v191, v192, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[91:98], v[33:34], v[5:6], v[91:98] neg_lo:[1,1,0]
	v_lshl_or_b32 v6, v99, 16, v35
	v_perm_b32 v5, v175, v168, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v83, v83, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v81, v84, 16, v83
	v_perm_b32 v83, v185, v183, 0xc0c0004
	v_perm_b32 v84, v180, v173, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[15:22], v[7:8], v[81:82], v[15:22] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:20
	scratch_load_b32 v82, off, off offset:44
	v_lshl_or_b32 v8, v84, 16, v83
	v_lshl_or_b32 v7, v42, 16, v100
	v_perm_b32 v42, v174, v167, 0xc0c0004
	v_perm_b32 v81, v160, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[15:22], v[9:10], v[7:8], v[15:22] neg_lo:[1,1,0]
	v_perm_b32 v9, v161, v156, 0xc0c0004
	v_lshl_or_b32 v8, v81, 16, v42
	v_perm_b32 v10, v44, v37, 0xc0c0004
	v_perm_b32 v37, v189, v190, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v43, v82, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v7, v43, 16, v36
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:24
	scratch_load_b32 v36, off, off offset:48
	v_wmma_i32_16x16x16_iu4 v[15:22], v[24:25], v[7:8], v[15:22] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v9, 16, v5
	v_perm_b32 v5, v176, v169, 0xc0c0004
	v_perm_b32 v9, v162, v157, 0xc0c0004
	scratch_load_b32 v24, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v25, v102, v101, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	v_perm_b32 v36, v187, v188, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v7, v35, 16, v10
	v_perm_b32 v10, v45, v38, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[15:22], v[26:27], v[7:8], v[15:22] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v9, 16, v5
	scratch_load_b32 v5, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v24, v32, v24, 0xc0c0004
	v_perm_b32 v26, v46, v39, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v108, v103, 0xc0c0004
	v_perm_b32 v27, v105, v104, 0xc0c0004
	v_lshl_or_b32 v7, v24, 16, v10
	v_perm_b32 v10, v177, v170, 0xc0c0004
	v_perm_b32 v24, v163, v158, 0xc0c0004
	v_lshl_or_b32 v9, v32, 16, v25
	v_perm_b32 v25, v47, v40, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[15:22], v[28:29], v[7:8], v[15:22] neg_lo:[1,1,0]
	v_perm_b32 v28, v107, v106, 0xc0c0004
	v_lshl_or_b32 v8, v24, 16, v10
	v_perm_b32 v10, v178, v171, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v23, v23, v5, 0xc0c0004
	v_lshl_or_b32 v5, v37, 16, v36
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v7, v23, 16, v26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v24, off, off offset:36
	scratch_load_b32 v26, off, off offset:52
	v_perm_b32 v23, v164, v159, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[15:22], v[30:31], v[7:8], v[15:22] neg_lo:[1,1,0]
	v_perm_b32 v7, v148, v181, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v26, v26, v24, 0xc0c0004
	v_lshl_or_b32 v24, v23, 16, v10
	v_perm_b32 v10, v166, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v23, v26, 16, v25
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:40
	scratch_load_b32 v26, off, off offset:56
	v_perm_b32 v25, v48, v41, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[15:22], v[33:34], v[23:24], v[15:22] neg_lo:[1,1,0]
	v_lshl_or_b32 v24, v10, 16, v7
	s_waitcnt vmcnt(0)
	v_perm_b32 v26, v26, v8, 0xc0c0004
	v_lshl_or_b32 v8, v28, 16, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v23, v26, 16, v25
	v_wmma_i32_16x16x16_iu4 v[91:98], v[8:9], v[5:6], v[91:98] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[15:22], v[8:9], v[23:24], v[15:22] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v186, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v34, v92
	v_cvt_f32_i32_e32 v33, v93
	v_cvt_f32_i32_e32 v35, v94
	v_cvt_f32_i32_e32 v29, v95
	v_cvt_f32_i32_e32 v10, v96
	v_cvt_f32_i32_e32 v6, v97
	v_cvt_f32_i32_e32 v7, v98
	v_cvt_f32_i32_e32 v83, v15
	v_cvt_f32_i32_e32 v25, v16
	v_cvt_f32_i32_e32 v24, v17
	v_cvt_f32_i32_e32 v27, v18
	v_cvt_f32_i32_e32 v82, v19
	v_cvt_f32_i32_e32 v9, v20
	v_cvt_f32_i32_e32 v16, v21
	v_cvt_f32_i32_e32 v26, v22
.LBB0_10:
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v81, off, off offset:4
	scratch_load_b32 v5, off, off
	v_bfe_u32 v15, v0, 4, 1
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s0, s34, s44
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s1, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s17, s13, 0xffff
	.loc	1 178 26 is_stmt 0              ; generate_amdgcn.py:178:26
	s_add_i32 s0, s0, s1
	.loc	1 179 36 is_stmt 1              ; generate_amdgcn.py:179:36
	s_mul_i32 s1, s1, s35
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_mov_b32 s16, s12
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s34, s34, s27
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, s18
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v8, 32, v81
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v5, v15, v5
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v15, s44, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v17, s44, v8
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v18, 2, v5
	v_or_b32_e32 v19, 4, v5
	v_or_b32_e32 v20, 6, v5
	v_or_b32_e32 v22, 10, v5
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v15, s0, v15, 1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v21, 8, v5
	v_or_b32_e32 v23, 14, v5
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v17, s0, v17, 1
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s0, s33, s1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v28, s0, v19, 1
	v_add_lshl_u32 v30, s0, v20, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 182 35                        ; generate_amdgcn.py:182:35
	s_add_i32 s1, s0, s27
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v32, s0, v21, 1
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v31, v15, s[16:19], 0 offen
	buffer_load_u16 v36, v17, s[16:19], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v15, s0, v5, 1
	v_add_lshl_u32 v17, s0, v18, 1
	s_and_b32 s17, s15, 0xffff
	s_mov_b32 s16, s14
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v18, s1, v18, 1
	v_add_lshl_u32 v19, s1, v19, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v37, v15, s[16:19], 0 offen
	buffer_load_u16 v38, v17, s[16:19], 0 offen
	buffer_load_u16 v39, v28, s[16:19], 0 offen
	buffer_load_u16 v40, v30, s[16:19], 0 offen
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v28, s1, v5, 1
	v_add_lshl_u32 v20, s1, v20, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v17, s0, v22, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	v_add_lshl_u32 v22, s1, v22, 1
	s_clause 0x3
	buffer_load_u16 v41, v28, s[16:19], 0 offen
	buffer_load_u16 v42, v18, s[16:19], 0 offen
	buffer_load_u16 v43, v19, s[16:19], 0 offen
	buffer_load_u16 v44, v20, s[16:19], 0 offen
	v_add_lshl_u32 v21, s1, v21, 1
	v_add_lshl_u32 v30, s1, v23, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_cndmask_b32_e64 v15, 0x80000000, v32, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v18, 0x80000000, v22, s2
	v_cndmask_b32_e64 v19, 0x80000000, v21, s2
	v_cndmask_b32_e64 v20, 0x80000000, v30, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x4
	buffer_load_u16 v45, v17, s[16:19], 0 offen
	buffer_load_u16 v46, v15, s[16:19], 0 offen
	buffer_load_u16 v47, v18, s[16:19], 0 offen
	buffer_load_u16 v48, v19, s[16:19], 0 offen
	buffer_load_u16 v32, v20, s[16:19], 0 offen
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v15, 12, v5
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v21, s0, v23, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.h, 0
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v8, s27, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v5, s1, v15, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v20, s0, v15, 1
	v_cndmask_b32_e64 v22, 0x80000000, v21, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v28.h, v17.h
	v_mov_b16_e32 v23.h, v17.h
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	s_clause 0x2
	buffer_load_u16 v21, v20, s[16:19], 0 offen
	buffer_load_u16 v22, v22, s[16:19], 0 offen
	buffer_load_u16 v18, v5, s[16:19], 0 offen
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v5, 1, v0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v30.h, v17.h
	v_and_b32_e32 v0, 16, v0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v20, 16, v36
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v19, 0x78, v5
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v5, s27, v81
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	s_mov_b32 s27, s19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v14, v14, v20
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v15, s34, s33, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v12, v12, v20 :: v_dual_lshlrev_b32 v19, 16, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v31.h, v17.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v33, v33, v19 :: v_dual_lshlrev_b32 v40, 16, v40
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v81, v87, v19
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v34, v34, v19
	v_mul_f32_e32 v35, v35, v19
	v_dual_mul_f32 v10, v10, v19 :: v_dual_mul_f32 v25, v25, v20
	v_dual_mul_f32 v29, v29, v19 :: v_dual_mul_f32 v4, v4, v20
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v42, 16, v42
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v9, v9, v20
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v85, v85, v19 :: v_dual_lshlrev_b32 v44, 16, v44
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v84, v186, v19 :: v_dual_lshlrev_b32 v45, 16, v45
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fma_f32 v33, v33, v43, v74
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v82, v82, v20 :: v_dual_lshlrev_b32 v47, 16, v47
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v46, 16, v46
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v33, v74, v33, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v48, 16, v48
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v34, v34, v42, v78
	v_fma_f32 v10, v10, v47, v71
	v_fma_f32 v9, v9, v47, v59
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v47, 0xbfb8aa3b, v33
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v29, v29, v48, v70
	v_fma_f32 v35, v35, v44, v75
	v_fma_f32 v25, v25, v42, v67
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v36, v89, v19
	v_dual_mul_f32 v87, v90, v19 :: v_dual_lshlrev_b32 v38, 16, v38
	v_dual_mul_f32 v86, v86, v19 :: v_dual_mul_f32 v11, v11, v20
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v84, v84, v41, v56
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v34, v78, v34, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v83, v83, v20
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v70, v29, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v3, v20 :: v_dual_mul_f32 v88, v88, v19
	v_mul_f32_e32 v13, v13, v20
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v24, v24, v20 :: v_dual_lshlrev_b32 v39, 16, v39
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v35, v75, v35, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v27, v27, v20
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v71, v10, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v67, v25, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v26, v26, v20
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v81, v81, v37, v79
	v_fma_f32 v87, v87, v40, v77
	v_fma_f32 v85, v85, v46, v72
	v_fma_f32 v11, v11, v37, v68
	v_fma_f32 v14, v14, v40, v65
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v40, v56, v84, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v56, 0xbfb8aa3b, v29
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v3, v3, v46, v60
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v46, 0xbfb8aa3b, v34
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v37, v83, v41, v66
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v36, v36, v38, v80
	v_fma_f32 v13, v13, v38, v69
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v24, v24, v43, v62
	v_fma_f32 v38, v82, v48, v58
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v9, v59, v9, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v48, 0xbfb8aa3b, v35
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v27, v27, v44, v63
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v59, 0xbfb8aa3b, v25
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v26, v26, v32, v57
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v37, v66, v37, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v86, v86, v45, v73
	v_fma_f32 v4, v4, v45, v61
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v27, v63, v27, s2
	v_cndmask_b32_e64 v24, v62, v24, s2
	v_cndmask_b32_e64 v38, v58, v38, s2
	v_cndmask_b32_e64 v26, v57, v26, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v45, 0xbfb8aa3b, v40
	v_mul_f32_e32 v57, 0xbfb8aa3b, v10
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	v_mul_f32_e32 v58, 0xbfb8aa3b, v37
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v61, v4, s2
	v_cndmask_b32_e64 v3, v60, v3, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v60, 0xbfb8aa3b, v24 :: v_dual_mul_f32 v61, 0xbfb8aa3b, v27
	v_mul_f32_e32 v62, 0xbfb8aa3b, v38
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v45
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v47
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v57
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v56
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v59
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v58
	v_dual_mul_f32 v63, 0xbfb8aa3b, v9 :: v_dual_fmac_f32 v46, 0xbfb8aa3b, v34
	v_cndmask_b32_e64 v45, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v48
	v_cndmask_b32_e64 v47, 0, 0x42800000, s3
	v_cndmask_b32_e64 v57, 0, 0x42800000, s4
	v_cndmask_b32_e64 v56, 0, 0x42800000, s5
	v_cndmask_b32_e64 v59, 0, 0x42800000, s6
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v61
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v60
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v62
	v_cndmask_b32_e64 v58, 0, 0x42800000, s7
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v12, v12, v39, v64
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v48, 0, 0x42800000, s1
	v_cndmask_b32_e64 v61, 0, 0x42800000, s8
	v_cndmask_b32_e64 v60, 0, 0x42800000, s9
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v63
	v_cndmask_b32_e64 v62, 0, 0x42800000, s11
	v_dual_fmac_f32 v45, 0xbfb8aa3b, v40 :: v_dual_fmac_f32 v48, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v47, 0xbfb8aa3b, v33 :: v_dual_fmac_f32 v60, 0xbfb8aa3b, v24
	v_dual_fmac_f32 v57, 0xbfb8aa3b, v10 :: v_dual_fmac_f32 v56, 0xbfb8aa3b, v29
	v_dual_fmac_f32 v59, 0xbfb8aa3b, v25 :: v_dual_fmac_f32 v62, 0xbfb8aa3b, v38
	v_exp_f32_e32 v46, v46
	v_dual_fmac_f32 v58, 0xbfb8aa3b, v37 :: v_dual_fmac_f32 v61, 0xbfb8aa3b, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v12, v64, v12, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v63, 0, 0x42800000, s10
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v56, v56
	v_exp_f32_e32 v59, v59
	v_exp_f32_e32 v57, v57
	v_exp_f32_e32 v58, v58
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v13, v69, v13, s2
	v_cndmask_b32_e64 v14, v65, v14, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s6
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v61, v61
	v_exp_f32_e32 v60, v60
	v_exp_f32_e32 v62, v62
	v_ldexp_f32 v46, v46, v64
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v9
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v11, v68, v11, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s7
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v43, v73, v86, s2
	v_cndmask_b32_e64 v44, v72, v85, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s9
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s11
	v_ldexp_f32 v45, v45, v65
	v_ldexp_f32 v47, v47, v67
	v_ldexp_f32 v56, v56, v69
	v_ldexp_f32 v59, v59, v70
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v63, v63
	v_ldexp_f32 v57, v57, v68
	v_ldexp_f32 v58, v58, v71
	.loc	1 180 13 is_stmt 1              ; generate_amdgcn.py:180:13
	v_fma_f32 v88, v88, v39, v76
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s10
	v_ldexp_f32 v48, v48, v66
	v_ldexp_f32 v61, v61, v72
	v_ldexp_f32 v60, v60, v73
	v_ldexp_f32 v62, v62, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_dual_add_f32 v45, 1.0, v45 :: v_dual_add_f32 v48, 1.0, v48
	v_dual_add_f32 v47, 1.0, v47 :: v_dual_add_f32 v56, 1.0, v56
	v_dual_add_f32 v59, 1.0, v59 :: v_dual_add_f32 v60, 1.0, v60
	v_dual_add_f32 v57, 1.0, v57 :: v_dual_add_f32 v58, 1.0, v58
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v64, null, v46, v46, v34
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v42, v76, v88, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v63, v63, v74
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_dual_add_f32 v61, 1.0, v61 :: v_dual_add_f32 v62, 1.0, v62
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v66, null, v45, v45, v40
	v_div_scale_f32 v70, null, v47, v47, v33
	v_div_scale_f32 v74, null, v56, v56, v29
	v_div_scale_f32 v76, null, v59, v59, v25
	v_div_scale_f32 v78, null, v58, v58, v37
	v_rcp_f32_e32 v88, v64
	v_div_scale_f32 v68, null, v48, v48, v35
	v_div_scale_f32 v72, null, v57, v57, v10
	v_div_scale_f32 v86, null, v62, v62, v38
	v_rcp_f32_e32 v89, v66
	v_rcp_f32_e32 v91, v70
	v_rcp_f32_e32 v93, v74
	v_rcp_f32_e32 v94, v76
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v36, v80, v36, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v80, null, v61, v61, v27
	v_rcp_f32_e32 v95, v78
	v_rcp_f32_e32 v90, v68
	v_rcp_f32_e32 v92, v72
	v_rcp_f32_e32 v99, v86
	v_rcp_f32_e32 v96, v80
	v_div_scale_f32 v82, null, v60, v60, v24
	v_fma_f32 v100, -v64, v88, 1.0
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v101, -v66, v89, 1.0
	v_fma_f32 v103, -v70, v91, 1.0
	v_fma_f32 v105, -v74, v93, 1.0
	v_fma_f32 v106, -v76, v94, 1.0
	v_fma_f32 v107, -v78, v95, 1.0
	v_rcp_f32_e32 v97, v82
	v_fmac_f32_e32 v88, v100, v88
	v_div_scale_f32 v84, null, v63, v63, v9
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v41, v77, v87, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v65, s0, v34, v46, v34
	v_div_scale_f32 v67, s1, v40, v45, v40
	v_div_scale_f32 v71, s4, v33, v47, v33
	v_div_scale_f32 v75, s6, v29, v56, v29
	v_div_scale_f32 v77, vcc_lo, v25, v59, v25
	v_fma_f32 v102, -v68, v90, 1.0
	v_fma_f32 v104, -v72, v92, 1.0
	v_fma_f32 v111, -v86, v99, 1.0
	v_fmac_f32_e32 v89, v101, v89
	v_fmac_f32_e32 v91, v103, v91
	v_dual_fmac_f32 v93, v105, v93 :: v_dual_fmac_f32 v94, v106, v94
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v39, v79, v81, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v79, s7, v37, v58, v37
	v_fma_f32 v108, -v80, v96, 1.0
	v_fmac_f32_e32 v95, v107, v95
	v_rcp_f32_e32 v98, v84
	v_div_scale_f32 v69, s3, v35, v48, v35
	v_div_scale_f32 v73, s5, v10, v57, v10
	v_fmac_f32_e32 v90, v102, v90
	v_dual_fmac_f32 v92, v104, v92 :: v_dual_fmac_f32 v99, v111, v99
	v_dual_mul_f32 v100, v65, v88 :: v_dual_mul_f32 v101, v67, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v102, v69, v90 :: v_dual_mul_f32 v103, v71, v91
	v_dual_mul_f32 v104, v73, v92 :: v_dual_mul_f32 v105, v75, v93
	v_mul_f32_e32 v106, v77, v94
	v_div_scale_f32 v81, s8, v27, v61, v27
	v_dual_fmac_f32 v96, v108, v96 :: v_dual_mul_f32 v107, v79, v95
	v_fma_f32 v109, -v82, v97, 1.0
	v_div_scale_f32 v87, s11, v38, v62, v38
	v_fma_f32 v112, -v64, v100, v65
	v_fma_f32 v113, -v66, v101, v67
	v_fma_f32 v115, -v70, v103, v71
	v_fma_f32 v117, -v74, v105, v75
	v_fma_f32 v118, -v76, v106, v77
	v_mul_f32_e32 v108, v81, v96
	v_fma_f32 v119, -v78, v107, v79
	v_div_scale_f32 v83, s9, v24, v60, v24
	v_fma_f32 v110, -v84, v98, 1.0
	v_fmac_f32_e32 v97, v109, v97
	v_dual_mul_f32 v111, v87, v99 :: v_dual_fmac_f32 v100, v112, v88
	v_fma_f32 v114, -v68, v102, v69
	v_fma_f32 v116, -v72, v104, v73
	v_fmac_f32_e32 v101, v113, v89
	v_fmac_f32_e32 v103, v115, v91
	v_dual_fmac_f32 v105, v117, v93 :: v_dual_fmac_f32 v106, v118, v94
	v_fma_f32 v120, -v80, v108, v81
	v_fmac_f32_e32 v107, v119, v95
	v_div_scale_f32 v85, s10, v9, v63, v9
	v_dual_fmac_f32 v98, v110, v98 :: v_dual_mul_f32 v109, v83, v97
	v_fmac_f32_e32 v102, v114, v90
	v_fmac_f32_e32 v104, v116, v92
	v_fma_f32 v64, -v64, v100, v65
	v_fma_f32 v65, -v66, v101, v67
	v_fma_f32 v67, -v70, v103, v71
	v_fma_f32 v70, -v76, v106, v77
	v_fmac_f32_e32 v108, v120, v96
	v_fma_f32 v71, -v78, v107, v79
	v_mul_f32_e32 v110, v85, v98
	v_fma_f32 v121, -v82, v109, v83
	v_div_fmas_f32 v70, v70, v94, v106
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v66, -v68, v102, v69
	v_div_fmas_f32 v71, v71, v95, v107
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v122, -v84, v110, v85
	v_fmac_f32_e32 v109, v121, v97
	v_fma_f32 v68, -v72, v104, v73
	v_fma_f32 v72, -v80, v108, v81
	v_div_fmas_f32 v64, v64, v88, v100
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v25, v70, v59, v25
	v_div_fmas_f32 v59, v65, v89, v101
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v110, v122, v98
	v_fma_f32 v73, -v82, v109, v83
	v_div_fixup_f32 v37, v71, v58, v37
	v_div_fmas_f32 v58, v72, v96, v108
	v_fma_f32 v123, -v86, v111, v87
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v34, v64, v46, v34
	v_fma_f32 v69, -v74, v105, v75
	v_div_fixup_f32 v27, v58, v61, v27
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v13, v13, v25
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v25, v73, v97, v109
	v_dual_fmac_f32 v111, v123, v99 :: v_dual_mul_f32 v34, v36, v34
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v74, -v84, v110, v85
	v_div_fixup_f32 v40, v59, v45, v40
	v_div_fixup_f32 v24, v25, v60, v24
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v11, v11, v37
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v37, v66, v90, v102
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v75, -v86, v111, v87
	v_div_fmas_f32 v36, v67, v91, v103
	s_mov_b32 vcc_lo, s10
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v25, v39, v40
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v39, v74, v98, v110
	s_mov_b32 vcc_lo, s11
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v14, v14, v27
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v27, v75, v99, v111
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v35, v37, v48, v35
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.l, v34.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v12, v12, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v28.l, v11.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v24, v68, v92, v104
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v33, v36, v47, v33
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v23.l, v25.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v35, v41, v35 :: v_dual_and_b32 v28, 1, v28
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v36, v69, v93, v105
	v_div_fixup_f32 v10, v24, v57, v10
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v37, 1, v17
	v_mov_b16_e32 v17.l, v13.h
	v_cmp_o_f32_e64 s1, v11, v11
	v_cmp_o_f32_e64 s3, v34, v34
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v16, v16, v20 :: v_dual_and_b32 v23, 1, v23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v11, v11, v28, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v24, v36, v56, v29
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v29, 1, v17
	v_mov_b16_e32 v17.l, v35.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v10, v43, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v28, v34, v37, 0x7fff
	v_cmp_o_f32_e64 s4, v25, v25
	v_add3_u32 v23, v25, v23, 0x7fff
	v_cmp_o_f32_e64 s0, v13, v13
	v_add3_u32 v13, v13, v29, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v28.h, s3
	v_and_b32_e32 v28, 1, v17
	v_mov_b16_e32 v17.l, v14.h
	v_cndmask_b16 v25.l, 0x7fff, v23.h, s4
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_cmp_o_f32_e64 s6, v35, v35
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s1
	v_and_b32_e32 v23, 1, v17
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s0
	v_add3_u32 v13, v35, v28, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v27, v27, v62, v38
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v31.l, v12.h
	v_add3_u32 v14, v14, v23, 0x7fff
	v_mov_b16_e32 v17.l, v10.h
	v_cndmask_b16 v23.h, 0x7fff, v13.h, s6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v9, v39, v63, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v31, 1, v31
	v_cndmask_b16 v13.h, 0x7fff, v14.h, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v3, v3, v27 :: v_dual_lshlrev_b32 v14, 16, v18
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v18, 0xbfb8aa3b, v26 :: v_dual_and_b32 v27, 1, v17
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v33, v42, v33 :: v_dual_mul_f32 v24, v44, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 183 17 is_stmt 1              ; generate_amdgcn.py:183:17
	v_fma_f32 v16, v16, v14, v55
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s5, v12, v12
	v_add3_u32 v27, v10, v27, 0x7fff
	v_cmp_o_f32_e64 s0, v10, v10
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v55, v16, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v4, v4, v9
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v12, v12, v31, 0x7fff
	v_mov_b16_e32 v12.l, v24.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v16, 0xbfb8aa3b, v10
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v30.l, v33.h
	v_cndmask_b16 v13.l, 0x7fff, v12.h, s5
	v_mov_b16_e32 v12.h, v17.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v16
	v_exp_f32_e32 v18, v18
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v7, v7, v19
	v_dual_mul_f32 v6, v6, v19 :: v_dual_and_b32 v29, 1, v30
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v12, 1, v12
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v16, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v7, v7, v32, v54
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.l, v4.h
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v6, v6, v14, v53
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v9, v24, v12, 0x7fff
	v_cndmask_b16 v12.h, 0x7fff, v27.h, s0
	v_cmp_o_f32_e64 s0, v24, v24
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v54, v7, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v28, v33, v29, 0x7fff
	v_and_b32_e32 v29, 1, v17
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v9, v18, v24
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v10
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s7, v33, v33
	v_mov_b16_e32 v28.l, v3.h
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v14, v16
	v_mul_f32_e32 v16, 0xbfb8aa3b, v7
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v23.l, 0x7fff, v28.h, s7
	v_mov_b16_e32 v28.h, v17.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v27, null, v9, v9, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v53, v6, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v1, v1, v20
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v14, v14, v18
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v18, v27
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v24, 0xbfb8aa3b, v6
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v29, v4, v29, 0x7fff
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v1, v1, v21, v50
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v30, null, v14, v14, v10
	v_fma_f32 v32, -v27, v18, 1.0
	v_div_scale_f32 v37, s1, v10, v14, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v34, v30
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v24, 0, 0x42800000, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v18, v32, v18
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v4, v4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v50, v1, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v6
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v2, v2, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v32, -v30, v34, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v24, v24
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v34, v32, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_fmac_f32 v16, 0xbfb8aa3b, v7 :: v_dual_mul_f32 v39, v37, v34
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_ldexp_f32 v24, v24, v33
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v41, -v30, v39, v37
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v39, v41, v34 :: v_dual_and_b32 v28, 1, v28
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	scratch_load_b32 v41, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v16, v16, v31
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v31, vcc_lo, v26, v9, v26
	v_fma_f32 v30, -v30, v39, v37
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	scratch_load_b32 v37, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v28, v3, v28, 0x7fff
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v37, v37, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v33, null, v16, v16, v7
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v19, v41, v19
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v35, null, v24, v24, v6
	v_rcp_f32_e32 v36, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v19, v19, v21, v51
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v32, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v51, v19, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v40, -v33, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v36, v40, v36
	v_mul_f32_e32 v4, v31, v18
	v_div_scale_f32 v40, s0, v7, v16, v7
	v_fma_f32 v38, -v27, v4, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v4, v38, v18
	v_fma_f32 v38, -v35, v32, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v27, v4, v31
	v_fmac_f32_e32 v32, v38, v32
	v_div_scale_f32 v38, s3, v6, v24, v6
	v_mul_f32_e32 v27, v40, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v31, v38, v32
	v_div_fmas_f32 v4, v20, v18, v4
	v_fma_f32 v18, -v33, v27, v40
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v35, v31, v38
	v_dual_fmac_f32 v27, v18, v36 :: v_dual_lshlrev_b32 v22, 16, v22
	v_div_fmas_f32 v18, v30, v34, v39
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v31, v20, v32
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v30, v37, v22, v52
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v20, -v33, v27, v40
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v2, v2, v22, v49
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v4, v4, v9, v26
	v_fma_f32 v33, -v35, v31, v38
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v22, v52, v30, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v20, v20, v36, v27
	s_mov_b32 vcc_lo, s3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v49, v2, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v27, v33, v32, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v7, v20, v16, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v9.h, v17.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v2, v2, v4
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v6, v27, v24, v6
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v29.l, 0x7fff, v28.h, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v3, v22, v7
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v7, v18, v14, v10
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e64 s0, 0, v0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v6, v19, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v0, 0x5410
	v_mov_b16_e32 v17.l, v3.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v1, v1, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_mov_b16_e32 v9.l, v6.h
	v_cmp_o_f32_e64 s1, v2, v2
	v_and_b32_e32 v4, 1, v17
	v_mov_b16_e32 v17.l, v2.h
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	v_and_b32_e32 v7, 1, v9
	v_mov_b16_e32 v9.l, v1.h
	v_add3_u32 v4, v3, v4, 0x7fff
	v_cmp_o_f32_e64 s2, v1, v1
	v_lshl_or_b32 v0, v0, 8, v0
	v_add3_u32 v3, v6, v7, 0x7fff
	v_and_b32_e32 v7, 1, v9
	v_and_b32_e32 v9, 1, v17
	v_cndmask_b16 v4.h, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_and_b32_e32 v0, 0x540054, v0
	v_add3_u32 v6, v1, v7, 0x7fff
	v_add3_u32 v7, v2, v9, 0x7fff
	v_mov_b32_e32 v9, 0x7632
	v_cndmask_b16 v4.l, 0x7fff, v3.h, vcc_lo
	v_lshl_or_b32 v0, v0, 4, v0
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s2
	v_cndmask_b16 v3.h, 0x7fff, v7.h, s1
	v_cndmask_b32_e64 v2, 0x3276, v9, s0
	v_cndmask_b32_e64 v6, v25, v12, s0
	v_cndmask_b32_e64 v7, v4, v23, s0
	v_cndmask_b32_e64 v4, v23, v4, s0
	v_cndmask_b32_e64 v1, v12, v25, s0
	v_lshl_or_b32 v2, v2, 8, v2
	v_cndmask_b32_e64 v9, v11, v29, s0
	v_cndmask_b32_e64 v12, v3, v13, s0
	v_cndmask_b32_e64 v3, v13, v3, s0
	s_mov_b32 s1, 0x76543210
	v_and_b32_e32 v2, 0x760076, v2
	v_cndmask_b32_e64 v10, v29, v11, s0
	v_permlanex16_b32 v6, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v11, 0x5040504, v0
	v_permlanex16_b32 v4, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v2, 4, v2
	v_permlanex16_b32 v14, v9, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v3, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v6, v1, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_b32_e32 v13, 0x7060706, v2
	v_perm_b32 v2, v4, v7, v11
	v_perm_b32 v9, v14, v10, v11
	v_perm_b32 v11, v16, v12, v11
	v_perm_b32 v1, v6, v1, v13
	v_perm_b32 v3, v4, v7, v13
	v_add_lshl_u32 v4, v15, v5, 1
	v_perm_b32 v10, v14, v10, v13
	v_perm_b32 v12, v16, v12, v13
	v_add_lshl_u32 v5, v15, v8, 1
	s_clause 0x1
	buffer_store_b128 v[0:3], v4, s[24:27], 0 offen
	buffer_store_b128 v[9:12], v5, s[24:27], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 64
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 45
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 64
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19568
; TotalNumSgprs: 47
; NumVgprs: 256
; ScratchSize: 64
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 64
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 15
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
