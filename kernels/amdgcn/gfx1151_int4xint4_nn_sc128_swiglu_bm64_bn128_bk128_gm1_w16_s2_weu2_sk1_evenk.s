	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
	v_and_b32_e32 v2, 7, v0
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v80, 1, v0
	v_lshlrev_b32_e32 v16, 2, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v81, 15, v0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_lshlrev_b32_e32 v17, 4, v0
                                        ; implicit-def: $vgpr33
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
                                        ; implicit-def: $vgpr149
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v15, 56, v80
	v_and_b32_e32 v16, 0x438, v16
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v82, 0x70, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v151, 0, v17
	v_lshl_or_b32 v105, v81, 6, v16
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v148, v82, v81
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
	.loc	1 89 16 is_stmt 1               ; generate_amdgcn.py:89:16
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
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s6, s9, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 91 20 is_stmt 0               ; generate_amdgcn.py:91:20
	s_min_i32 s6, s6, 1
	.loc	1 92 29 is_stmt 1               ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s16, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s17, s6
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_f32_u32 s7, s17
	s_abs_i32 s18, s2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	s_sub_i32 s10, 0, s17
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshlrev_b32_e32 v1, 3, v2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v2, 4, v2
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s31, s11
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s7
	s_mul_hi_u32 s5, s7, s10
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s7, s7, s5
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s30, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_hi_u32 s5, s18, s7
	s_xor_b32 s7, s2, s6
	s_mul_i32 s19, s5, s17
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s18, s18, s19
	s_add_i32 s19, s5, 1
	s_sub_i32 s20, s18, s17
	s_cmp_ge_u32 s18, s17
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s18, s20, s18
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s18, s17
	s_cselect_b32 s5, s19, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s18, s4, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s19, s5, s7
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s34, s27, 1
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s20, s4, 0x7f
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s18
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s22, s19, s7
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s17, s3, 6
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[4:5], null, s34, v3, v[2:3]
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s18, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s23, s22, s6
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v7, s17, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s5, s20, 31
.Ltmp15:
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[5:6], null, s18, v3, v[1:2]
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s23
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v8, s17, v3
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s4, s5, 25
.Ltmp17:
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s21, s34, s17
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s26, s22, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s22, s20, s4
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e32 vcc_lo, s18, v7
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s5, 64, v7
	.loc	1 98 14 is_stmt 1               ; generate_amdgcn.py:98:14
	s_lshl_b32 s33, s2, 6
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s6, s18, v8
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s4, 64, v8
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s35, s22, 7
.Ltmp21:
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v4, s26, s21, v4
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	s_mul_i32 s16, s33, s18
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s20, 0x7f
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add3_u32 v5, s17, s16, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s16, s5, vcc_lo
	s_and_b32 s6, s4, s6
	.loc	1 174 43                        ; generate_amdgcn.py:174:43
	v_add_nc_u32_e32 v6, s27, v4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s6
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_and_b32 s29, s29, 0xffff
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v9, 0x80000000, v6
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b64 v[13:14], v5, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_clause 0x1
	buffer_load_b128 v[5:8], v4, s[28:31], 0 offen
	buffer_load_b128 v[9:12], v9, s[28:31], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshlrev_b32_e32 v4, 3, v0
	s_mov_b32 s6, -1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s20, 0xff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v15, v4, v15
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v4, 4, v0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v150, 0, v15
	s_waitcnt vmcnt(2)
	ds_store_b64 v150, v[13:14] offset:16384
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v151, v[5:8]
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	s_waitcnt vmcnt(0)
	ds_store_b128 v151, v[9:12] offset:8192
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_or_b32_e32 v33, v82, v81
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v85, 0x80, v33
	v_or_b32_e32 v86, 0x100, v33
	v_or_b32_e32 v87, 0x180, v33
	v_or_b32_e32 v88, 0x200, v33
	v_or_b32_e32 v89, 0x280, v33
	v_or_b32_e32 v90, 0x300, v33
	v_or_b32_e32 v91, 0x380, v33
	v_or_b32_e32 v92, 0x400, v33
	v_or_b32_e32 v93, 0x480, v33
	v_or_b32_e32 v94, 0x500, v33
	v_or_b32_e32 v95, 0x580, v33
	v_or_b32_e32 v96, 0x600, v33
	v_or_b32_e32 v97, 0x680, v33
	v_or_b32_e32 v98, 0x700, v33
	v_or_b32_e32 v99, 0x780, v33
	v_or_b32_e32 v100, 0x800, v33
	v_or_b32_e32 v101, 0x880, v33
	v_or_b32_e32 v102, 0x900, v33
	v_or_b32_e32 v103, 0x980, v33
	v_or_b32_e32 v104, 0xa00, v33
	v_or_b32_e32 v106, 0xa80, v33
	v_or_b32_e32 v107, 0xb00, v33
	v_or_b32_e32 v108, 0xb80, v33
	v_or_b32_e32 v109, 0xc00, v33
	v_or_b32_e32 v110, 0xc80, v33
	v_or_b32_e32 v111, 0xd00, v33
	v_or_b32_e32 v112, 0xd80, v33
	v_or_b32_e32 v113, 0xe00, v33
	v_or_b32_e32 v114, 0xe80, v33
	v_or_b32_e32 v115, 0xf00, v33
	v_or_b32_e32 v116, 0xf80, v33
	v_or_b32_e32 v117, 0x1000, v33
	v_or_b32_e32 v118, 0x1080, v33
	v_or_b32_e32 v119, 0x1100, v33
	v_or_b32_e32 v120, 0x1180, v33
	v_or_b32_e32 v121, 0x1200, v33
	v_or_b32_e32 v122, 0x1280, v33
	v_or_b32_e32 v123, 0x1300, v33
	v_or_b32_e32 v124, 0x1380, v33
	v_or_b32_e32 v125, 0x1400, v33
	v_or_b32_e32 v126, 0x1480, v33
	v_or_b32_e32 v127, 0x1500, v33
	v_or_b32_e32 v128, 0x1580, v33
	v_or_b32_e32 v129, 0x1600, v33
	v_or_b32_e32 v130, 0x1680, v33
	v_or_b32_e32 v131, 0x1700, v33
	v_or_b32_e32 v132, 0x1780, v33
	v_or_b32_e32 v133, 0x1800, v33
	v_or_b32_e32 v134, 0x1880, v33
	v_or_b32_e32 v135, 0x1900, v33
	v_or_b32_e32 v136, 0x1980, v33
	v_or_b32_e32 v137, 0x1a00, v33
	v_or_b32_e32 v138, 0x1a80, v33
	v_or_b32_e32 v139, 0x1b00, v33
	v_or_b32_e32 v140, 0x1b80, v33
	v_or_b32_e32 v141, 0x1c00, v33
	v_or_b32_e32 v142, 0x1c80, v33
	v_or_b32_e32 v143, 0x1d00, v33
	v_or_b32_e32 v144, 0x1d80, v33
	v_or_b32_e32 v145, 0x1e00, v33
	v_or_b32_e32 v146, 0x1e80, v33
	v_or_b32_e32 v147, 0x1f00, v33
	v_or_b32_e32 v149, 0x1f80, v33
.LBB0_2:                                ; %Flow422
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_dual_mov_b32 v49, 0 :: v_dual_and_b32 v84, 16, v4
	v_bfe_u32 v83, v0, 4, 1
	v_xor_b32_e32 v158, 8, v105
	v_xor_b32_e32 v157, 16, v105
	v_xor_b32_e32 v155, 24, v105
	v_xor_b32_e32 v152, 32, v105
	v_xor_b32_e32 v156, 40, v105
	v_xor_b32_e32 v154, 48, v105
	v_xor_b32_e32 v153, 56, v105
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v55, 0
	v_mov_b32_e32 v78, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_add_i32 s1, s35, -1
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
	v_dual_mov_b32 v70, 0 :: v_dual_lshlrev_b32 v5, 1, v3
	v_dual_mov_b32 v55, 0 :: v_dual_and_b32 v4, 0xe0, v0
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_add3_u32 v6, s33, v84, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v5, s3, 7, v5
	s_lshl_b32 s6, s7, 8
	v_lshl_or_b32 v4, s19, 8, v4
	s_lshl_b32 s19, s19, 7
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v7, 32, v6
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v9, 0x81, v5
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v5, 0x80, v5
	v_sub_nc_u32_e32 v161, s18, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v9, s27, v9
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v8, s34, v4
	v_mul_lo_u32 v5, s27, v5
	v_mul_lo_u32 v7, s35, v7
	v_mul_lo_u32 v6, s35, v6
	v_subrev_nc_u32_e32 v164, s6, v4
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v3, s33, v3
	v_add3_u32 v4, v9, s19, v2
	s_max_i32 s0, s1, 1
	v_add3_u32 v2, v5, s19, v2
	v_subrev_nc_u32_e32 v163, s6, v8
	s_lshl_b32 s6, s0, 1
	s_lshl_b32 s0, s7, 7
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v159, 0, v148
	v_mad_u64_u32 v[45:46], null, s18, v3, v[1:2]
	v_or_b32_e32 v85, 0x80, v148
	v_or_b32_e32 v86, 0x100, v148
	v_or_b32_e32 v87, 0x180, v148
	v_or_b32_e32 v88, 0x200, v148
	v_or_b32_e32 v89, 0x280, v148
	v_or_b32_e32 v90, 0x300, v148
	v_or_b32_e32 v91, 0x380, v148
	v_or_b32_e32 v92, 0x400, v148
	v_or_b32_e32 v93, 0x480, v148
	v_or_b32_e32 v94, 0x500, v148
	v_or_b32_e32 v95, 0x580, v148
	v_or_b32_e32 v96, 0x600, v148
	v_or_b32_e32 v97, 0x680, v148
	v_or_b32_e32 v98, 0x700, v148
	v_or_b32_e32 v99, 0x780, v148
	v_or_b32_e32 v100, 0x800, v148
	v_or_b32_e32 v101, 0x880, v148
	v_or_b32_e32 v102, 0x900, v148
	v_or_b32_e32 v103, 0x980, v148
	v_or_b32_e32 v104, 0xa00, v148
	v_or_b32_e32 v106, 0xa80, v148
	v_or_b32_e32 v107, 0xb00, v148
	v_or_b32_e32 v108, 0xb80, v148
	v_or_b32_e32 v109, 0xc00, v148
	v_or_b32_e32 v110, 0xc80, v148
	v_or_b32_e32 v111, 0xd00, v148
	v_or_b32_e32 v112, 0xd80, v148
	v_or_b32_e32 v113, 0xe00, v148
	v_or_b32_e32 v114, 0xe80, v148
	v_or_b32_e32 v115, 0xf00, v148
	v_or_b32_e32 v116, 0xf80, v148
	v_or_b32_e32 v117, 0x1000, v148
	v_or_b32_e32 v118, 0x1080, v148
	v_or_b32_e32 v119, 0x1100, v148
	v_or_b32_e32 v120, 0x1180, v148
	v_or_b32_e32 v121, 0x1200, v148
	v_or_b32_e32 v122, 0x1280, v148
	v_or_b32_e32 v123, 0x1300, v148
	v_or_b32_e32 v124, 0x1380, v148
	v_or_b32_e32 v125, 0x1400, v148
	v_or_b32_e32 v126, 0x1480, v148
	v_or_b32_e32 v127, 0x1500, v148
	v_or_b32_e32 v128, 0x1580, v148
	v_or_b32_e32 v129, 0x1600, v148
	v_or_b32_e32 v130, 0x1680, v148
	v_or_b32_e32 v131, 0x1700, v148
	v_or_b32_e32 v132, 0x1780, v148
	v_or_b32_e32 v133, 0x1800, v148
	v_or_b32_e32 v134, 0x1880, v148
	v_or_b32_e32 v135, 0x1900, v148
	v_or_b32_e32 v136, 0x1980, v148
	v_or_b32_e32 v137, 0x1a00, v148
	v_or_b32_e32 v138, 0x1a80, v148
	v_or_b32_e32 v139, 0x1b00, v148
	v_or_b32_e32 v140, 0x1b80, v148
	v_or_b32_e32 v141, 0x1c00, v148
	v_or_b32_e32 v142, 0x1c80, v148
	v_or_b32_e32 v143, 0x1d00, v148
	v_or_b32_e32 v144, 0x1d80, v148
	v_or_b32_e32 v145, 0x1e00, v148
	v_or_b32_e32 v146, 0x1e80, v148
	v_or_b32_e32 v147, 0x1f00, v148
	v_or_b32_e32 v149, 0x1f80, v148
	v_sub_nc_u32_e32 v160, s18, v1
	v_dual_mov_b32 v77, 0 :: v_dual_lshlrev_b32 v162, 1, v83
	v_dual_mov_b32 v52, 0 :: v_dual_lshlrev_b32 v165, 1, v7
	v_dual_mov_b32 v69, 0 :: v_dual_lshlrev_b32 v166, 1, v6
	v_subrev_nc_u32_e32 v167, s0, v4
	v_subrev_nc_u32_e32 v168, s0, v2
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v48, 0
	v_mov_b32_e32 v61, 0
	v_mov_b32_e32 v63, 0
	v_mov_b32_e32 v49, 0
	s_mov_b32 s16, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_lshl_b32 s3, s27, 2
	s_lshl_b32 s7, s27, 7
	s_add_i32 s44, s17, 64
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
	s_mov_b32 s45, s16
.LBB0_4:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s44, v160
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v4, s44, v45
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e32 vcc_lo, s44, v161
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v40, s23 :: v_dual_add_nc_u32 v1, 0, v105
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, s5
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v39, s22
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_nc_u32_e32 v5, s45, v166
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_nc_u32_e32 v6, s45, v165
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v198, v162, v164
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v199, v162, v163
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b64 v[46:47], v4, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v177, v5, s[36:39], 0 offen
	buffer_load_u16 v178, v6, s[36:39], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v175, v198, s[40:43], 0 offen
	buffer_load_u16 v179, v198, s[40:43], 0 offen offset:4
	buffer_load_u16 v174, v198, s[40:43], 0 offen offset:8
	buffer_load_u16 v176, v198, s[40:43], 0 offen offset:12
	buffer_load_u16 v180, v199, s[40:43], 0 offen
	buffer_load_u16 v183, v199, s[40:43], 0 offen offset:4
	buffer_load_u16 v181, v199, s[40:43], 0 offen offset:8
	buffer_load_u16 v182, v199, s[40:43], 0 offen offset:12
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_dual_cndmask_b32 v7, 0x80000000, v168 :: v_dual_add_nc_u32 v2, 0, v158
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v37, s20
	v_dual_mov_b32 v38, s21 :: v_dual_add_nc_u32 v3, 0, v157
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[184:187], v1 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[188:191], v2 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[192:195], v3 offset0:32 offset1:36
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[41:44], v7, s[28:31], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v1, v159 offset:640
	ds_load_u8 v2, v159 offset:896
	ds_load_u8 v3, v159 offset:768
	ds_load_u8 v4, v159 offset:512
	ds_load_u8 v7, v159 offset:128
	ds_load_u8 v8, v159 offset:384
	ds_load_u8 v9, v159 offset:256
	ds_load_u8 v10, v159
	ds_load_u8 v201, v159 offset:1664
	ds_load_u8 v202, v159 offset:1920
	ds_load_u8 v203, v159 offset:1792
	ds_load_u8 v204, v159 offset:1536
	ds_load_u8 v205, v159 offset:1152
	ds_load_u8 v206, v159 offset:1408
	ds_load_u8 v207, v159 offset:1280
	ds_load_u8 v208, v159 offset:1024
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v11, v159 offset:8832
	ds_load_u8 v12, v159 offset:9088
	ds_load_u8 v13, v159 offset:8960
	ds_load_u8 v14, v159 offset:8704
	ds_load_u8 v15, v159 offset:8320
	ds_load_u8 v16, v159 offset:8576
	ds_load_u8 v17, v159 offset:8448
	ds_load_u8 v18, v159 offset:8192
	ds_load_u8 v209, v159 offset:9856
	ds_load_u8 v210, v159 offset:10112
	ds_load_u8 v211, v159 offset:9984
	ds_load_u8 v212, v159 offset:9728
	ds_load_u8 v213, v159 offset:9344
	ds_load_u8 v214, v159 offset:9600
	ds_load_u8 v215, v159 offset:9472
	ds_load_u8 v216, v159 offset:9216
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v1, v4, v1, 0xc0c0004
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v3, v10, v7, 0xc0c0004
	v_perm_b32 v4, v9, v8, 0xc0c0004
	v_dual_mov_b32 v36, s19 :: v_dual_add_nc_u32 v173, 0, v155
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v6, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v5, v14, v11, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v35, s18 :: v_dual_add_nc_u32 v172, 0, v152
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v8, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v7, v18, v15, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v34, s17 :: v_dual_add_nc_u32 v171, 0, v156
	v_dual_mov_b32 v33, s16 :: v_dual_add_nc_u32 v170, 0, v154
	v_lshl_or_b32 v10, v2, 16, v1
	v_lshl_or_b32 v9, v4, 16, v3
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v197, v6, 16, v5
	v_lshl_or_b32 v196, v8, 16, v7
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_dual_cndmask_b32 v200, 0x80000000, v167 :: v_dual_add_nc_u32 v169, 0, v153
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[184:185], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[9:10], v[186:187], v[33:40] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[196:197], v[184:185], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[196:197], v[186:187], v[33:40] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v33, v204, v201, 0xc0c0004
	v_perm_b32 v34, v203, v202, 0xc0c0004
	v_perm_b32 v35, v208, v205, 0xc0c0004
	v_perm_b32 v36, v207, v206, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v205, v216, v213, 0xc0c0004
	v_perm_b32 v207, v215, v214, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v34, v34, 16, v33
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v37, v198, s[40:43], 0 offen offset:16
	buffer_load_u16 v39, v198, s[40:43], 0 offen offset:20
	buffer_load_u16 v38, v199, s[40:43], 0 offen offset:16
	buffer_load_u16 v40, v199, s[40:43], 0 offen offset:20
	buffer_load_u16 v184, v198, s[40:43], 0 offen offset:24
	buffer_load_u16 v185, v198, s[40:43], 0 offen offset:28
	buffer_load_u16 v186, v199, s[40:43], 0 offen offset:24
	buffer_load_u16 v187, v199, s[40:43], 0 offen offset:28
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v33, v36, 16, v35
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_perm_b32 v35, v212, v209, 0xc0c0004
	v_perm_b32 v36, v211, v210, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v196, v159 offset:2688
	ds_load_u8 v197, v159 offset:2944
	ds_load_u8 v203, v159 offset:2304
	ds_load_u8 v204, v159 offset:2048
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v206, v159 offset:10880
	ds_load_u8 v208, v159 offset:11136
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v198, v159 offset:2816
	ds_load_u8 v199, v159 offset:2560
	ds_load_u8 v201, v159 offset:2176
	ds_load_u8 v202, v159 offset:2432
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v36, v36, 16, v35
	v_lshl_or_b32 v35, v207, 16, v205
	ds_load_u8 v205, v159 offset:11008
	ds_load_u8 v207, v159 offset:10752
	ds_load_u8 v209, v159 offset:10368
	ds_load_u8 v210, v159 offset:10624
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[33:34], v[188:189], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[33:34], v[190:191], v[17:24] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[35:36], v[188:189], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[35:36], v[190:191], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v35, v159 offset:10496
	ds_load_u8 v36, v159 offset:10240
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v211, v159 offset:3712
	ds_load_u8 v212, v159 offset:3968
	ds_load_u8 v213, v159 offset:3840
	ds_load_u8 v214, v159 offset:3584
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s45, s45, 2
	s_add_i32 s44, s44, 64
	s_cmp_lg_u32 s6, s45
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v34, v198, v197, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v33, v199, v196, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v188, v204, v201, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v189, v203, v202, 0xc0c0004
	ds_load_u8 v196, v159 offset:3200
	ds_load_u8 v197, v159 offset:3456
	v_lshl_or_b32 v34, v34, 16, v33
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v36, v36, v209, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v33, v189, 16, v188
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_perm_b32 v188, v207, v206, 0xc0c0004
	v_perm_b32 v189, v205, v208, 0xc0c0004
	v_perm_b32 v35, v35, v210, 0xc0c0004
	ds_load_u8 v205, v159 offset:11392
	ds_load_u8 v206, v159 offset:11648
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[33:34], v[192:193], v[1:8] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v189, v189, 16, v188
	v_lshl_or_b32 v188, v35, 16, v36
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[33:34], v[194:195], v[17:24] neg_lo:[1,1,0]
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	buffer_load_b128 v[33:36], v200, s[28:31], 0 offen
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v200, v159 offset:11520
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v208, v159 offset:4736
	ds_load_u8 v198, v159 offset:3328
	ds_load_u8 v199, v159 offset:3072
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v201, v159 offset:11904
	ds_load_u8 v202, v159 offset:12160
	ds_load_u8 v203, v159 offset:12032
	v_wmma_i32_16x16x16_iu4 v[9:16], v[188:189], v[192:193], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[188:189], v[194:195], v[25:32] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[192:195], v172 offset0:32 offset1:36
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v172, v213, v212, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v212, v159 offset:15744
	ds_load_u8 v204, v159 offset:11776
	ds_load_u8 v207, v159 offset:11264
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[188:191], v173 offset0:32 offset1:36
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v173, v214, v211, 0xc0c0004
	ds_load_u8 v209, v159 offset:4608
	ds_load_u8 v210, v159 offset:4224
	v_lshl_or_b32 v173, v172, 16, v173
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v200, v200, v206, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v197, v198, v197, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v196, v199, v196, 0xc0c0004
	ds_load_u8 v199, v159 offset:4992
	v_lshl_or_b32 v172, v197, 16, v196
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v197, v203, v202, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v202, v159 offset:4352
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v196, v204, v201, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v203, v207, v205, 0xc0c0004
	ds_load_u8 v205, v159 offset:12928
	ds_load_u8 v206, v159 offset:12800
	ds_load_u8 v207, v159 offset:12416
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[172:173], v[188:189], v[1:8] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v197, v197, 16, v196
	v_lshl_or_b32 v196, v200, 16, v203
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[172:173], v[190:191], v[17:24] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v200, v159 offset:13184
	ds_load_u8 v203, v159 offset:13056
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v201, v159 offset:4480
	ds_load_u8 v204, v159 offset:4096
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[196:197], v[188:189], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[196:197], v[190:191], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v188, v159 offset:12672
	ds_load_u8 v189, v159 offset:12544
	ds_load_u8 v190, v159 offset:12288
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v191, v159 offset:5760
	ds_load_u8 v196, v159 offset:6016
	ds_load_u8 v197, v159 offset:5888
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v172, v209, v208, 0xc0c0004
	ds_load_u8 v208, v159 offset:5632
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v205, v206, v205, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v206, v159 offset:7040
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v200, v203, v200, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v201, v202, v201, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v190, v190, v207, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v207, v159 offset:6656
	ds_load_u8 v198, v159 offset:4864
	ds_load_u8 v203, v159 offset:6912
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_perm_b32 v188, v189, v188, 0xc0c0004
	v_lshl_or_b32 v189, v200, 16, v205
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v191, v208, v191, 0xc0c0004
	ds_load_u8 v205, v159 offset:7168
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v208, v159 offset:13952
	v_lshl_or_b32 v188, v188, 16, v190
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v190, v159 offset:6528
	ds_load_u8 v200, v159 offset:6400
	v_perm_b32 v196, v197, v196, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[188:189], v[192:193], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[188:189], v[194:195], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v197, v196, 16, v191
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v173, v198, v199, 0xc0c0004
	v_perm_b32 v199, v204, v210, 0xc0c0004
	ds_load_u8 v198, v159 offset:5248
	ds_load_u8 v204, v159 offset:5504
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v210, v159 offset:14208
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v209, v159 offset:6272
	ds_load_u8 v202, v159 offset:5376
	v_lshl_or_b32 v173, v173, 16, v172
	v_lshl_or_b32 v172, v201, 16, v199
	ds_load_u8 v199, v159 offset:5120
	ds_load_u8 v201, v159 offset:6784
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v190, v200, v190, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v200, v159 offset:14976
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[172:173], v[192:193], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[172:173], v[194:195], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v172, v159 offset:6144
	ds_load_u8 v173, v159 offset:7808
	ds_load_u8 v188, v159 offset:8064
	ds_load_u8 v189, v159 offset:7936
	ds_load_u8 v192, v159 offset:7680
	ds_load_u8 v193, v159 offset:7296
	ds_load_u8 v194, v159 offset:7552
	ds_load_u8 v195, v159 offset:7424
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v198, v199, v198, 0xc0c0004
	v_perm_b32 v199, v202, v204, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v191, v159 offset:13824
	ds_load_u8 v204, v159 offset:13440
	ds_load_u8 v202, v159 offset:14080
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v189, v159 offset:14464
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v196, v199, 16, v198
	v_perm_b32 v198, v207, v201, 0xc0c0004
	v_perm_b32 v199, v203, v206, 0xc0c0004
	v_perm_b32 v172, v172, v209, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v203, v159 offset:13568
	ds_load_u8 v206, v159 offset:13312
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v193, v205, v193, 0xc0c0004
	v_lshl_or_b32 v199, v199, 16, v198
	v_lshl_or_b32 v198, v190, 16, v172
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v172, v159 offset:15232
	ds_load_u8 v190, v159 offset:15104
	ds_load_u8 v205, v159 offset:14720
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v194, v195, v194, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v195, v159 offset:14592
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v173, v192, v173, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v207, v191, v208, 0xc0c0004
	ds_load_u8 v191, v159 offset:14336
	ds_load_u8 v201, v159 offset:13696
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v202, v202, v210, 0xc0c0004
	ds_load_u8 v208, v159 offset:16000
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v204, v206, v204, 0xc0c0004
	ds_load_u8 v206, v159 offset:16128
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v210, v190, v172, 0xc0c0004
	ds_load_u8 v172, v159 offset:15488
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v195, v195, v205, 0xc0c0004
	ds_load_u8 v205, v159 offset:15616
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v211, v191, v189, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v209, v203, v201, 0xc0c0004
	ds_load_u8 v201, v159 offset:15872
	ds_load_u8 v203, v159 offset:15360
	ds_load_u8 v192, v159 offset:14848
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v208, v201, v208, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v201, v188, 16, v173
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v192, v192, v200, 0xc0c0004
	ds_load_u8 v200, v159 offset:16256
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[188:191], v171 offset0:32 offset1:36
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_perm_b32 v213, v203, v172, 0xc0c0004
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[170:173], v170 offset0:32 offset1:36
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v203, v202, 16, v207
	v_lshl_or_b32 v202, v209, 16, v204
	v_perm_b32 v209, v205, v212, 0xc0c0004
	v_lshl_or_b32 v205, v210, 16, v192
	v_lshl_or_b32 v204, v195, 16, v211
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v206, v206, v200, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v200, v194, 16, v193
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[192:195], v169 offset0:32 offset1:36
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[196:197], v[190:191], v[17:24] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[202:203], v[190:191], v[25:32] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[196:197], v[188:189], v[1:8] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[202:203], v[188:189], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v207, v206, 16, v208
	v_lshl_or_b32 v206, v209, 16, v213
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[198:199], v[172:173], v[17:24] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[204:205], v[172:173], v[25:32] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[198:199], v[170:171], v[1:8] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[204:205], v[170:171], v[9:16] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(20)
	ds_store_b64 v150, v[46:47] offset:16384
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(9)
	ds_store_b128 v151, v[41:44]
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	s_waitcnt vmcnt(0)
	ds_store_b128 v151, v[33:36] offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[200:201], v[194:195], v[17:24] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[206:207], v[194:195], v[25:32] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[200:201], v[192:193], v[1:8] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[206:207], v[192:193], v[9:16] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v170, 16, v178
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_dual_mul_f32 v28, v170, v28 :: v_dual_lshlrev_b32 v169, 16, v177
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v18, v170, v18 :: v_dual_add_nc_u32 v163, s3, v163
	v_dual_mul_f32 v17, v170, v17 :: v_dual_add_nc_u32 v164, s3, v164
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v25, v170, v25 :: v_dual_add_nc_u32 v168, s7, v168
	v_dual_mul_f32 v26, v170, v26 :: v_dual_add_nc_u32 v167, s7, v167
	v_dual_mul_f32 v10, v169, v10 :: v_dual_lshlrev_b32 v171, 16, v179
	v_dual_mul_f32 v9, v169, v9 :: v_dual_lshlrev_b32 v172, 16, v175
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v4, v169, v4 :: v_dual_lshlrev_b32 v173, 16, v183
	v_dual_mul_f32 v22, v170, v22 :: v_dual_lshlrev_b32 v175, 16, v180
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v27, v170, v27 :: v_dual_lshlrev_b32 v176, 16, v176
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v3, v169, v3 :: v_dual_lshlrev_b32 v174, 16, v174
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v12, v169, v12 :: v_dual_lshlrev_b32 v177, 16, v182
	v_dual_mul_f32 v11, v169, v11 :: v_dual_lshlrev_b32 v178, 16, v181
	v_dual_mul_f32 v30, v170, v30 :: v_dual_lshlrev_b32 v39, 16, v39
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v6, v169, v6 :: v_dual_lshlrev_b32 v37, 16, v37
	v_dual_mul_f32 v21, v170, v21 :: v_dual_lshlrev_b32 v40, 16, v40
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v29, v170, v29 :: v_dual_lshlrev_b32 v38, 16, v38
	v_dual_mul_f32 v14, v169, v14 :: v_dual_lshlrev_b32 v179, 16, v185
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v5, v169, v5 :: v_dual_lshlrev_b32 v180, 16, v184
	v_dual_mul_f32 v24, v170, v24 :: v_dual_lshlrev_b32 v181, 16, v187
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v13, v169, v13 :: v_dual_lshlrev_b32 v182, 16, v186
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v2, v169, v2
	v_dual_mul_f32 v1, v169, v1 :: v_dual_mul_f32 v20, v170, v20
	v_mul_f32_e32 v19, v170, v19
	v_dual_mul_f32 v23, v170, v23 :: v_dual_mul_f32 v8, v169, v8
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v32, v170, v32 :: v_dual_mul_f32 v7, v169, v7
	v_dual_mul_f32 v31, v170, v31 :: v_dual_mul_f32 v16, v169, v16
	v_dual_mul_f32 v15, v169, v15 :: v_dual_fmac_f32 v64, v20, v176
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v67, v17, v172 :: v_dual_fmac_f32 v68, v18, v171
	v_dual_fmac_f32 v78, v1, v172 :: v_dual_fmac_f32 v79, v2, v171
	v_dual_fmac_f32 v63, v19, v174 :: v_dual_fmac_f32 v76, v4, v176
	v_dual_fmac_f32 v75, v3, v174 :: v_dual_fmac_f32 v60, v22, v39
	v_dual_fmac_f32 v59, v21, v37 :: v_dual_fmac_f32 v72, v6, v39
	v_dual_fmac_f32 v71, v5, v37 :: v_dual_fmac_f32 v48, v23, v180
	v_dual_fmac_f32 v49, v24, v179 :: v_dual_fmac_f32 v50, v7, v180
	v_dual_fmac_f32 v51, v8, v179 :: v_dual_fmac_f32 v70, v14, v40
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v55, v9, v175 :: v_dual_fmac_f32 v74, v12, v177
	v_dual_fmac_f32 v77, v10, v173 :: v_dual_fmac_f32 v52, v15, v182
	v_dual_fmac_f32 v73, v11, v178 :: v_dual_fmac_f32 v66, v26, v173
	v_dual_fmac_f32 v69, v13, v38 :: v_dual_fmac_f32 v62, v28, v177
	v_dual_fmac_f32 v53, v16, v181 :: v_dual_fmac_f32 v58, v30, v40
	v_dual_fmac_f32 v65, v25, v175 :: v_dual_fmac_f32 v54, v31, v182
	v_dual_fmac_f32 v61, v27, v178 :: v_dual_fmac_f32 v56, v32, v181
	v_fmac_f32_e32 v57, v29, v38
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v33, v148
.LBB0_6:                                ; %._crit_edge
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v1, 0, v105
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v2, 0, v158
	.loc	1 162 26 is_stmt 1              ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v3, 0, v157
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v4, 0, v155
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_cndmask_b32_e64 v34, 0, 1, s2
	v_add_nc_u32_e32 v161, 0, v86
	v_mov_b32_e32 v86, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[29:32], v1 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[25:28], v2 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[21:24], v3 offset0:32 offset1:36
	v_add_nc_u32_e32 v1, 0, v152
	v_add_nc_u32_e32 v2, 0, v156
	v_add_nc_u32_e32 v3, 0, v154
	ds_load_2addr_stride64_b64 v[9:12], v4 offset0:32 offset1:36
	v_add_nc_u32_e32 v4, 0, v153
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_cmp_ne_u32_e64 s0, 1, v34
	v_add_nc_u32_e32 v165, 0, v88
	v_add_nc_u32_e32 v160, 0, v87
	v_add_nc_u32_e32 v159, 0, v85
	v_mov_b32_e32 v87, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[17:20], v1 offset0:32 offset1:36
	v_mov_b32_e32 v34, 0
	ds_load_2addr_stride64_b64 v[13:16], v2 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[5:8], v3 offset0:32 offset1:36
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[1:4], v4 offset0:32 offset1:36
	v_add_nc_u32_e32 v148, 0, v149
	v_dual_mov_b32 v44, 0 :: v_dual_add_nc_u32 v105, 0, v147
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v146, 0, v146
	v_dual_mov_b32 v40, 0 :: v_dual_add_nc_u32 v145, 0, v145
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v144, 0, v144
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v143, 0, v143
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v142, 0, v142
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v141, 0, v141
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v140, 0, v140
	v_add_nc_u32_e32 v139, 0, v139
	v_add_nc_u32_e32 v138, 0, v138
	v_add_nc_u32_e32 v137, 0, v137
	v_add_nc_u32_e32 v136, 0, v136
	v_add_nc_u32_e32 v135, 0, v135
	v_add_nc_u32_e32 v134, 0, v134
	v_add_nc_u32_e32 v133, 0, v133
	v_add_nc_u32_e32 v132, 0, v132
	v_add_nc_u32_e32 v131, 0, v131
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
	v_add_nc_u32_e32 v147, 0, v106
	v_add_nc_u32_e32 v149, 0, v104
	v_add_nc_u32_e32 v103, 0, v103
	v_add_nc_u32_e32 v102, 0, v102
	v_add_nc_u32_e32 v104, 0, v101
	v_add_nc_u32_e32 v106, 0, v100
	v_add_nc_u32_e32 v153, 0, v99
	v_add_nc_u32_e32 v150, 0, v98
	v_add_nc_u32_e32 v156, 0, v97
	v_add_nc_u32_e32 v157, 0, v96
	v_add_nc_u32_e32 v151, 0, v95
	v_add_nc_u32_e32 v152, 0, v94
	v_add_nc_u32_e32 v154, 0, v93
	v_add_nc_u32_e32 v155, 0, v92
	v_add_nc_u32_e32 v162, 0, v91
	v_add_nc_u32_e32 v158, 0, v90
	v_add_nc_u32_e32 v164, 0, v89
	v_add_nc_u32_e32 v163, 0, v33
	v_mov_b32_e32 v33, 0
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_mov_b32 s4, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	ds_load_u8 v33, v164
	ds_load_u8 v34, v165
	ds_load_u8 v35, v162
	ds_load_u8 v36, v163
	ds_load_u8 v37, v160
	ds_load_u8 v38, v161
	ds_load_u8 v40, v158
	ds_load_u8 v41, v159
	ds_load_u8 v42, v156
	ds_load_u8 v43, v157
	ds_load_u8 v44, v153
	ds_load_u8 v45, v154
	ds_load_u8 v46, v155
	ds_load_u8 v47, v151
	ds_load_u8 v85, v152
	ds_load_u8 v86, v150
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v96, s11 :: v_dual_mov_b32 v95, s10
	v_dual_mov_b32 v94, s9 :: v_dual_mov_b32 v93, s8
	v_dual_mov_b32 v92, s7 :: v_dual_mov_b32 v91, s6
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	v_dual_mov_b32 v90, s5 :: v_dual_mov_b32 v89, s4
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v34, v40, v35, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v35, v36, v41, 0xc0c0004
	v_perm_b32 v36, v38, v37, 0xc0c0004
	ds_load_u8 v37, v147
	ds_load_u8 v38, v149
	ds_load_u8 v40, v108
	ds_load_u8 v41, v104
	ds_load_u8 v87, v106
	ds_load_u8 v88, v103
	ds_load_u8 v97, v102
	ds_load_u8 v98, v107
	v_lshl_or_b32 v34, v34, 16, v33
	v_lshl_or_b32 v33, v36, 16, v35
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v35, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v36, v86, v44, 0xc0c0004
	v_perm_b32 v42, v46, v45, 0xc0c0004
	v_perm_b32 v43, v85, v47, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[166:173], v[33:34], v[29:30], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v36, v36, 16, v35
	v_wmma_i32_16x16x16_iu4 v[89:96], v[33:34], v[31:32], v[89:96] neg_lo:[1,1,0]
	v_lshl_or_b32 v35, v43, 16, v42
	ds_load_u8 v42, v114
	ds_load_u8 v43, v113
	ds_load_u8 v44, v116
	ds_load_u8 v45, v109
	ds_load_u8 v46, v112
	ds_load_u8 v47, v111
	ds_load_u8 v85, v115
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[166:173], v[35:36], v[25:26], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[35:36], v[27:28], v[89:96] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v38, v98, v40, 0xc0c0004
	ds_load_u8 v40, v110
	v_lshl_or_b32 v38, v38, 16, v37
	v_perm_b32 v37, v87, v41, 0xc0c0004
	v_perm_b32 v41, v97, v88, 0xc0c0004
	ds_load_u8 v86, v122
	ds_load_u8 v87, v121
	ds_load_u8 v88, v124
	ds_load_u8 v97, v118
	ds_load_u8 v98, v117
	ds_load_u8 v99, v120
	ds_load_u8 v100, v119
	ds_load_u8 v101, v123
	v_lshl_or_b32 v37, v41, 16, v37
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v41, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v42, v85, v44, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[166:173], v[37:38], v[21:22], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[37:38], v[23:24], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v41, v42, 16, v41
	v_perm_b32 v42, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v101, v88, 0xc0c0004
	ds_load_u8 v88, v126
	v_perm_b32 v40, v45, v40, 0xc0c0004
	ds_load_u8 v44, v130
	ds_load_u8 v45, v129
	ds_load_u8 v46, v132
	ds_load_u8 v47, v125
	ds_load_u8 v85, v128
	ds_load_u8 v174, v127
	ds_load_u8 v175, v131
	v_lshl_or_b32 v40, v42, 16, v40
	v_perm_b32 v42, v87, v86, 0xc0c0004
	v_perm_b32 v86, v98, v97, 0xc0c0004
	v_perm_b32 v87, v100, v99, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[166:173], v[40:41], v[9:10], v[166:173] neg_lo:[1,1,0]
	v_lshl_or_b32 v43, v43, 16, v42
	v_wmma_i32_16x16x16_iu4 v[89:96], v[40:41], v[11:12], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v42, v87, 16, v86
	ds_load_u8 v86, v138
	ds_load_u8 v87, v137
	ds_load_u8 v97, v140
	ds_load_u8 v98, v134
	ds_load_u8 v99, v133
	ds_load_u8 v100, v136
	ds_load_u8 v101, v135
	ds_load_u8 v176, v139
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[166:173], v[42:43], v[17:18], v[166:173] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v47, v47, v88, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v33, v174, v85, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v45, v175, v46, 0xc0c0004
	ds_load_u8 v46, v146
	ds_load_u8 v175, v145
	ds_load_u8 v177, v148
	ds_load_u8 v178, v142
	ds_load_u8 v179, v141
	ds_load_u8 v180, v144
	ds_load_u8 v181, v143
	ds_load_u8 v182, v105
	v_wmma_i32_16x16x16_iu4 v[89:96], v[42:43], v[19:20], v[89:96] neg_lo:[1,1,0]
	v_lshl_or_b32 v33, v33, 16, v47
	v_lshl_or_b32 v34, v45, 16, v44
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v35, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v44, v99, v98, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[166:173], v[33:34], v[13:14], v[166:173] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v37, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v36, v176, v97, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[89:96], v[33:34], v[15:16], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v36, v36, 16, v35
	v_lshl_or_b32 v35, v37, 16, v44
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v37, v175, v46, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v182, v177, 0xc0c0004
	v_perm_b32 v40, v179, v178, 0xc0c0004
	v_perm_b32 v41, v181, v180, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[166:173], v[35:36], v[5:6], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[35:36], v[7:8], v[89:96] neg_lo:[1,1,0]
	v_lshl_or_b32 v38, v38, 16, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v41, 16, v40
	v_wmma_i32_16x16x16_iu4 v[166:173], v[37:38], v[1:2], v[166:173] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[89:96], v[37:38], v[3:4], v[89:96] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v47, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v87, v167
	v_cvt_f32_i32_e32 v86, v168
	v_cvt_f32_i32_e32 v88, v169
	v_cvt_f32_i32_e32 v46, v170
	v_cvt_f32_i32_e32 v85, v171
	v_cvt_f32_i32_e32 v33, v172
	v_cvt_f32_i32_e32 v34, v173
	v_cvt_f32_i32_e32 v41, v89
	v_cvt_f32_i32_e32 v44, v90
	v_cvt_f32_i32_e32 v43, v91
	v_cvt_f32_i32_e32 v45, v92
	v_cvt_f32_i32_e32 v40, v93
	v_cvt_f32_i32_e32 v42, v94
	v_cvt_f32_i32_e32 v35, v95
	v_cvt_f32_i32_e32 v36, v96
.LBB0_8:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_mov_b32_e32 v95, 0
	.loc	1 175 36 is_stmt 1              ; generate_amdgcn.py:175:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	ds_load_u8 v37, v164 offset:8192
	ds_load_u8 v38, v165 offset:8192
	ds_load_u8 v39, v162 offset:8192
	ds_load_u8 v89, v163 offset:8192
	ds_load_u8 v90, v160 offset:8192
	ds_load_u8 v91, v161 offset:8192
	ds_load_u8 v92, v158 offset:8192
	ds_load_u8 v93, v159 offset:8192
	ds_load_u8 v94, v156 offset:8192
	ds_load_u8 v95, v157 offset:8192
	ds_load_u8 v96, v153 offset:8192
	ds_load_u8 v97, v154 offset:8192
	ds_load_u8 v98, v155 offset:8192
	ds_load_u8 v99, v151 offset:8192
	ds_load_u8 v100, v152 offset:8192
	ds_load_u8 v101, v150 offset:8192
	ds_load_u8 v147, v147 offset:8192
	ds_load_u8 v157, v149 offset:8192
	ds_load_u8 v108, v108 offset:8192
	ds_load_u8 v104, v104 offset:8192
	ds_load_u8 v106, v106 offset:8192
	ds_load_u8 v103, v103 offset:8192
	ds_load_u8 v102, v102 offset:8192
	ds_load_u8 v107, v107 offset:8192
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v156, s11 :: v_dual_mov_b32 v155, s10
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v38, v92, v39, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v39, v89, v93, 0xc0c0004
	v_perm_b32 v89, v91, v90, 0xc0c0004
	v_dual_mov_b32 v154, s9 :: v_dual_mov_b32 v153, s8
	v_lshl_or_b32 v38, v38, 16, v37
	v_dual_mov_b32 v152, s7 :: v_dual_mov_b32 v151, s6
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v37, v89, 16, v39
	v_dual_mov_b32 v150, s5 :: v_dual_mov_b32 v149, s4
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v39, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v101, v101, v96, 0xc0c0004
	v_perm_b32 v97, v98, v97, 0xc0c0004
	v_perm_b32 v98, v100, v99, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[89:96], v[37:38], v[29:30], v[149:156] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v30, v101, 16, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v107, v108, 0xc0c0004
	v_lshl_or_b32 v29, v98, 16, v97
	ds_load_u8 v39, v114 offset:8192
	ds_load_u8 v97, v113 offset:8192
	ds_load_u8 v98, v116 offset:8192
	ds_load_u8 v99, v109 offset:8192
	ds_load_u8 v100, v112 offset:8192
	ds_load_u8 v101, v111 offset:8192
	ds_load_u8 v109, v115 offset:8192
	ds_load_u8 v108, v110 offset:8192
	v_perm_b32 v111, v157, v147, 0xc0c0004
	v_perm_b32 v102, v102, v103, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[89:96], v[29:30], v[25:26], v[89:96] neg_lo:[1,1,0]
	v_perm_b32 v25, v106, v104, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[149:156], v[37:38], v[31:32], v[149:156] neg_lo:[1,1,0]
	v_lshl_or_b32 v26, v107, 16, v111
	ds_load_u8 v103, v122 offset:8192
	ds_load_u8 v104, v121 offset:8192
	ds_load_u8 v106, v124 offset:8192
	ds_load_u8 v107, v118 offset:8192
	ds_load_u8 v110, v117 offset:8192
	ds_load_u8 v111, v120 offset:8192
	ds_load_u8 v112, v119 offset:8192
	ds_load_u8 v113, v123 offset:8192
	v_lshl_or_b32 v25, v102, 16, v25
	v_wmma_i32_16x16x16_iu4 v[149:156], v[29:30], v[27:28], v[149:156] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v39, v97, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[89:96], v[25:26], v[21:22], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[25:26], v[23:24], v[149:156] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v97, v109, v98, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v21, v99, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v22, v97, 16, v39
	v_perm_b32 v39, v101, v100, 0xc0c0004
	ds_load_u8 v97, v130 offset:8192
	ds_load_u8 v98, v129 offset:8192
	ds_load_u8 v99, v132 offset:8192
	ds_load_u8 v100, v125 offset:8192
	ds_load_u8 v101, v128 offset:8192
	ds_load_u8 v102, v127 offset:8192
	ds_load_u8 v108, v131 offset:8192
	v_lshl_or_b32 v21, v39, 16, v21
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v39, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v103, v113, v106, 0xc0c0004
	v_perm_b32 v104, v110, v107, 0xc0c0004
	v_perm_b32 v106, v112, v111, 0xc0c0004
	ds_load_u8 v107, v126 offset:8192
	v_wmma_i32_16x16x16_iu4 v[89:96], v[21:22], v[9:10], v[89:96] neg_lo:[1,1,0]
	v_lshl_or_b32 v10, v103, 16, v39
	v_wmma_i32_16x16x16_iu4 v[149:156], v[21:22], v[11:12], v[149:156] neg_lo:[1,1,0]
	v_lshl_or_b32 v9, v106, 16, v104
	ds_load_u8 v39, v138 offset:8192
	ds_load_u8 v103, v137 offset:8192
	ds_load_u8 v104, v140 offset:8192
	ds_load_u8 v106, v134 offset:8192
	ds_load_u8 v109, v133 offset:8192
	ds_load_u8 v110, v136 offset:8192
	ds_load_u8 v111, v135 offset:8192
	ds_load_u8 v112, v139 offset:8192
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[89:96], v[9:10], v[17:18], v[89:96] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v31, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v98, v108, v99, 0xc0c0004
	ds_load_u8 v99, v146 offset:8192
	ds_load_u8 v108, v145 offset:8192
	ds_load_u8 v113, v148 offset:8192
	ds_load_u8 v114, v142 offset:8192
	ds_load_u8 v115, v141 offset:8192
	ds_load_u8 v116, v144 offset:8192
	ds_load_u8 v117, v143 offset:8192
	ds_load_u8 v105, v105 offset:8192
	v_wmma_i32_16x16x16_iu4 v[149:156], v[9:10], v[19:20], v[149:156] neg_lo:[1,1,0]
	v_lshl_or_b32 v18, v98, 16, v97
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v27, v103, v39, 0xc0c0004
	v_perm_b32 v100, v100, v107, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v29, v109, v106, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v23, v111, v110, 0xc0c0004
	v_lshl_or_b32 v17, v31, 16, v100
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v28, v112, v104, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v11, v108, v99, 0xc0c0004
	v_lshl_or_b32 v12, v23, 16, v29
	v_wmma_i32_16x16x16_iu4 v[89:96], v[17:18], v[13:14], v[89:96] neg_lo:[1,1,0]
	v_lshl_or_b32 v13, v28, 16, v27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v105, v113, 0xc0c0004
	v_perm_b32 v21, v115, v114, 0xc0c0004
	v_perm_b32 v9, v117, v116, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[149:156], v[17:18], v[15:16], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[12:13], v[5:6], v[89:96] neg_lo:[1,1,0]
	v_lshl_or_b32 v6, v14, 16, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v5, v9, 16, v21
	v_wmma_i32_16x16x16_iu4 v[149:156], v[12:13], v[7:8], v[149:156] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[89:96], v[5:6], v[1:2], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[5:6], v[3:4], v[149:156] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v39, v89
	v_cvt_f32_i32_e32 v100, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v99, v91
	v_cvt_f32_i32_e32 v101, v92
	v_cvt_f32_i32_e32 v97, v93
	v_cvt_f32_i32_e32 v98, v94
	v_cvt_f32_i32_e32 v37, v95
	v_cvt_f32_i32_e32 v38, v96
	v_cvt_f32_i32_e32 v90, v149
	v_cvt_f32_i32_e32 v94, v150
	v_cvt_f32_i32_e32 v93, v151
	v_cvt_f32_i32_e32 v96, v152
	v_cvt_f32_i32_e32 v89, v153
	v_cvt_f32_i32_e32 v91, v154
	v_cvt_f32_i32_e32 v92, v155
	v_cvt_f32_i32_e32 v95, v156
.LBB0_10:
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v1, v84, v81
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s0, s33, s35
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s1, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v2, v83, v82
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s1, s34
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v4, 32, v1
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v3, s35, v1
	s_add_i32 s1, s0, s1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v6, 2, v2
	v_or_b32_e32 v9, 4, v2
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v5, s35, v4
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s0, s26, s3
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v10, 6, v2
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s17, s13, 0xffff
	v_add_lshl_u32 v3, s1, v3, 1
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_mov_b32 s16, s12
	v_add_lshl_u32 v5, s1, v5, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v13, s0, v2, 1
	v_add_lshl_u32 v14, s0, v10, 1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v11, 8, v2
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v12, 10, v2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 182 35                        ; generate_amdgcn.py:182:35
	s_add_i32 s1, s0, s27
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v7, v3, s[16:19], 0 offen
	buffer_load_u16 v8, v5, s[16:19], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v3, s0, v6, 1
	v_add_lshl_u32 v5, s0, v9, 1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v19, 12, v2
	v_or_b32_e32 v20, 14, v2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v2, s1, v2, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	s_and_b32 s17, s15, 0xffff
	s_mov_b32 s16, s14
	v_cndmask_b32_e64 v15, 0x80000000, v14, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v6, s1, v6, 1
	v_add_lshl_u32 v9, s1, v9, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v17, s0, v11, 1
	s_clause 0x3
	buffer_load_u16 v14, v13, s[16:19], 0 offen
	buffer_load_u16 v16, v3, s[16:19], 0 offen
	buffer_load_u16 v13, v5, s[16:19], 0 offen
	buffer_load_u16 v15, v15, s[16:19], 0 offen
	v_add_lshl_u32 v5, s0, v12, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v10, s1, v10, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_add_lshl_u32 v12, s1, v12, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_add_lshl_u32 v11, s1, v11, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	v_add_lshl_u32 v18, s1, v20, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v3, 0x80000000, v17, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	v_add_lshl_u32 v17, s1, v19, 1
	s_clause 0x3
	buffer_load_u16 v21, v2, s[16:19], 0 offen
	buffer_load_u16 v22, v6, s[16:19], 0 offen
	buffer_load_u16 v23, v9, s[16:19], 0 offen
	buffer_load_u16 v24, v10, s[16:19], 0 offen
	v_cndmask_b32_e64 v6, 0x80000000, v12, s2
	v_cndmask_b32_e64 v2, 0x80000000, v11, s2
	v_cndmask_b32_e64 v10, 0x80000000, v18, s2
	v_cndmask_b32_e64 v9, 0x80000000, v17, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x5
	buffer_load_u16 v25, v5, s[16:19], 0 offen
	buffer_load_u16 v26, v3, s[16:19], 0 offen
	buffer_load_u16 v27, v6, s[16:19], 0 offen
	buffer_load_u16 v28, v2, s[16:19], 0 offen
	buffer_load_u16 v18, v10, s[16:19], 0 offen
	buffer_load_u16 v17, v9, s[16:19], 0 offen
	v_add_lshl_u32 v11, s0, v20, 1
	v_add_lshl_u32 v10, s0, v19, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.h, 0
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	s_mul_i32 s33, s33, s27
	v_mul_lo_u32 v2, s27, v1
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	s_clause 0x1
	buffer_load_u16 v10, v10, s[16:19], 0 offen
	buffer_load_u16 v11, v11, s[16:19], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.h, v3.h
	v_mov_b16_e32 v12.h, v3.h
	v_mov_b16_e32 v9.h, v3.h
	v_mov_b16_e32 v19.h, v3.h
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v4, s27, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, s19
	v_and_b32_e32 v0, 16, v0
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v44, v44, v8 :: v_dual_lshlrev_b32 v7, 16, v7
	v_mul_f32_e32 v29, v47, v7
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v30, v100, v7
	v_mul_f32_e32 v31, v39, v7
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v81, v85, v7
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v85, v90, v8
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v20, v87, v7 :: v_dual_and_b32 v5, 0x78, v80
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v47, v101, v7
	v_mul_f32_e32 v80, v99, v7
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v42, v42, v8
	v_dual_mul_f32 v39, v86, v7 :: v_dual_lshlrev_b32 v14, 16, v14
	v_mul_f32_e32 v46, v46, v7
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v83, v97, v7 :: v_dual_mul_f32 v86, v96, v8
	v_mul_f32_e32 v90, v95, v8
	v_dual_mul_f32 v82, v98, v7 :: v_dual_mul_f32 v41, v41, v8
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v21, 16, v21
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v24, 16, v24
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v31, v31, v21, v55
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v21, v85, v21, v65
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v30, v30, v22, v77
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v81, v81, v25, v72
	v_fma_f32 v25, v42, v25, v60
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v65, v21, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v87, v93, v8 :: v_dual_lshlrev_b32 v26, 16, v26
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fma_f32 v80, v80, v23, v73
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v77, v30, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v40, v40, v8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v60, v25, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v60, 0xbfb8aa3b, v21
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v23, v87, v23, v61
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v47, v47, v24, v74
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v46, v46, v26, v71
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v24, v86, v24, v62
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v31, v55, v31, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v42, v73, v80, s2
	v_cndmask_b32_e64 v23, v61, v23, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v89, v89, v8
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v55, 0xbfb8aa3b, v30
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v26, v40, v26, v59
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v40, v90, v18, v56
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v32, v88, v7 :: v_dual_lshlrev_b32 v13, 16, v13
	v_mul_f32_e32 v45, v45, v8
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v29, v29, v14, v78
	v_fma_f32 v14, v41, v14, v67
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v41, v74, v47, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v88, v91, v8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v24, v62, v24, s2
	v_cndmask_b32_e64 v40, v56, v40, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v47, 0xbfb8aa3b, v31
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v83, v83, v28, v69
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v56, 0xbfb8aa3b, v42
	v_mul_f32_e32 v62, 0xbfb8aa3b, v23
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v28, v89, v28, v57
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v84, v94, v8 :: v_dual_lshlrev_b32 v15, 16, v15
	.loc	1 180 13 is_stmt 1              ; generate_amdgcn.py:180:13
	v_fma_f32 v20, v20, v16, v79
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v82, v82, v27, v70
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v16, v44, v16, v68
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v44, v71, v46, s2
	v_cndmask_b32_e64 v46, v69, v83, s2
	v_cndmask_b32_e64 v28, v57, v28, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v57, 0xbfb8aa3b, v41
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v27, v88, v27, v58
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v56
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v43, v43, v8
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v32, v32, v15, v76
	.loc	1 183 17 is_stmt 1              ; generate_amdgcn.py:183:17
	v_fma_f32 v22, v84, v22, v66
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v15, v45, v15, v64
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v45, v70, v82, s2
	v_cndmask_b32_e64 v27, v58, v27, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v58, 0xbfb8aa3b, v46
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	v_cndmask_b32_e64 v56, 0, 0x42800000, s3
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v60
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v91, v92, v8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v22, v66, v22, s2
	v_cndmask_b32_e64 v26, v59, v26, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v59, 0xbfb8aa3b, v45
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v58
	v_cndmask_b32_e64 v60, 0, 0x42800000, s7
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v42
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v39, v39, v13, v75
	v_fma_f32 v13, v43, v13, v63
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v61, 0xbfb8aa3b, v22
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v57
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v59
	v_cndmask_b32_e64 v58, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v62
	v_dual_fmac_f32 v55, 0xbfb8aa3b, v30 :: v_dual_fmac_f32 v60, 0xbfb8aa3b, v21
	v_exp_f32_e32 v56, v56
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v64, v15, s2
	v_cndmask_b32_e64 v13, v63, v13, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v63, 0xbfb8aa3b, v24 :: v_dual_fmac_f32 v58, 0xbfb8aa3b, v46
	v_mul_f32_e32 v64, 0xbfb8aa3b, v28
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v47
	v_cndmask_b32_e64 v57, 0, 0x42800000, s1
	v_cndmask_b32_e64 v59, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v61
	v_cndmask_b32_e64 v62, 0, 0x42800000, s9
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s3
	v_exp_f32_e32 v60, v60
	v_dual_mul_f32 v65, 0xbfb8aa3b, v27 :: v_dual_mul_f32 v66, 0xbfb8aa3b, v40
	v_cndmask_b32_e64 v47, 0, 0x42800000, s0
	v_cndmask_b32_e64 v61, 0, 0x42800000, s6
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v63
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v64
	v_dual_fmac_f32 v57, 0xbfb8aa3b, v41 :: v_dual_fmac_f32 v62, 0xbfb8aa3b, v23
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s7
	v_exp_f32_e32 v58, v58
	v_ldexp_f32 v56, v56, v70
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v45
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v43, v72, v81, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v63, 0, 0x42800000, s8
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v65
	v_cndmask_b32_e64 v64, 0, 0x42800000, s11
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v31
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s5
	v_exp_f32_e32 v55, v55
	v_exp_f32_e32 v62, v62
	v_ldexp_f32 v60, v60, v74
	v_dual_fmac_f32 v61, 0xbfb8aa3b, v22 :: v_dual_add_f32 v56, 1.0, v56
	v_exp_f32_e32 v59, v59
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v32, v76, v32, s2
	v_cndmask_b32_e64 v14, v67, v14, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v65, 0, 0x42800000, s10
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s9
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v28
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v57, v57
	v_ldexp_f32 v58, v58, v72
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v24
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v60, 1.0, v60
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v61, v61
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v16, v68, v16, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s6
	v_exp_f32_e32 v64, v64
	v_ldexp_f32 v55, v55, v67
	v_ldexp_f32 v59, v59, v71
	v_ldexp_f32 v62, v62, v76
	v_dual_fmac_f32 v65, 0xbfb8aa3b, v27 :: v_dual_add_f32 v58, 1.0, v58
	v_exp_f32_e32 v63, v63
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v78, v29, s2
	v_cndmask_b32_e64 v39, v75, v39, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, s11
	v_ldexp_f32 v47, v47, v68
	v_ldexp_f32 v57, v57, v69
	v_ldexp_f32 v61, v61, v73
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v55, 1.0, v55
	v_dual_add_f32 v59, 1.0, v59 :: v_dual_add_f32 v62, 1.0, v62
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v65, v65
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s10
	v_ldexp_f32 v63, v63, v75
	v_ldexp_f32 v64, v64, v78
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v47, 1.0, v47
	v_add_f32_e32 v57, 1.0, v57
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v67, null, v55, v55, v30
	v_div_scale_f32 v75, null, v59, v59, v45
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v79, v20, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v65, v65, v77
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v64, 1.0, v64
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v69, null, v47, v47, v31
	v_div_scale_f32 v71, null, v57, v57, v41
	v_div_scale_f32 v73, null, v56, v56, v42
	v_div_scale_f32 v77, null, v58, v58, v46
	v_div_scale_f32 v79, null, v61, v61, v22
	v_rcp_f32_e32 v92, v67
	v_rcp_f32_e32 v96, v75
	v_div_scale_f32 v81, null, v60, v60, v21
	v_rcp_f32_e32 v93, v69
	v_rcp_f32_e32 v94, v71
	v_rcp_f32_e32 v95, v73
	v_rcp_f32_e32 v97, v77
	v_rcp_f32_e32 v98, v79
	v_rcp_f32_e32 v99, v81
	v_fma_f32 v104, -v67, v92, 1.0
	v_fma_f32 v108, -v75, v96, 1.0
	v_div_scale_f32 v70, s1, v31, v47, v31
	v_fma_f32 v105, -v69, v93, 1.0
	v_fma_f32 v106, -v71, v94, 1.0
	v_fma_f32 v107, -v73, v95, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v109, -v77, v97, 1.0
	v_fma_f32 v110, -v79, v98, 1.0
	v_fmac_f32_e32 v92, v104, v92
	v_div_scale_f32 v68, s0, v30, v55, v30
	v_fmac_f32_e32 v96, v108, v96
	v_div_scale_f32 v76, s5, v45, v59, v45
	v_div_scale_f32 v74, s4, v42, v56, v42
	v_fma_f32 v111, -v81, v99, 1.0
	v_dual_fmac_f32 v93, v105, v93 :: v_dual_mul_f32 v104, v68, v92
	v_fmac_f32_e32 v94, v106, v94
	v_div_scale_f32 v72, s3, v41, v57, v41
	v_fmac_f32_e32 v95, v107, v95
	v_dual_fmac_f32 v97, v109, v97 :: v_dual_mul_f32 v108, v76, v96
	v_fmac_f32_e32 v98, v110, v98
	v_div_scale_f32 v80, vcc_lo, v22, v61, v22
	v_dual_fmac_f32 v99, v111, v99 :: v_dual_mul_f32 v106, v72, v94
	v_fma_f32 v116, -v67, v104, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v105, v70, v93 :: v_dual_mul_f32 v110, v80, v98
	v_fma_f32 v120, -v75, v108, v76
	v_dual_mul_f32 v107, v74, v95 :: v_dual_fmac_f32 v104, v116, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v117, -v69, v105, v70
	v_fma_f32 v122, -v79, v110, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v108, v120, v96
	v_fma_f32 v119, -v73, v107, v74
	v_fma_f32 v118, -v71, v106, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v105, v117, v93 :: v_dual_fmac_f32 v110, v122, v98
	v_fma_f32 v67, -v67, v104, v68
	v_dual_fmac_f32 v107, v119, v95 :: v_dual_fmac_f32 v106, v118, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v68, -v69, v105, v70
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v82, s7, v21, v60, v21
	v_fma_f32 v70, -v73, v107, v74
	v_fma_f32 v73, -v79, v110, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v83, null, v63, v63, v24
	v_div_scale_f32 v85, null, v62, v62, v23
	v_div_fmas_f32 v73, v73, v98, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v100, v83
	s_mov_b32 vcc_lo, s7
	v_rcp_f32_e32 v101, v85
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v22, v73, v61, v22
	v_mul_f32_e32 v111, v82, v99
	v_div_scale_f32 v86, s9, v23, v62, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v87, null, v65, v65, v27
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v16, v16, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v123, -v81, v111, v82
	v_fma_f32 v112, -v83, v100, 1.0
	v_fma_f32 v113, -v85, v101, 1.0
	v_div_scale_f32 v89, null, v64, v64, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v111, v123, v99 :: v_dual_fmac_f32 v100, v112, v100
	v_div_scale_f32 v84, s8, v24, v63, v24
	v_fmac_f32_e32 v101, v113, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v81, v111, v82
	v_div_scale_f32 v78, s6, v46, v58, v46
	v_mul_f32_e32 v112, v84, v100
	v_rcp_f32_e32 v102, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v74, v74, v99, v111
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v103, v89
	v_div_fmas_f32 v67, v67, v92, v104
	v_fma_f32 v124, -v83, v112, v84
	v_mul_f32_e32 v109, v78, v97
	v_fma_f32 v69, -v71, v106, v72
	v_fma_f32 v71, -v75, v108, v76
	v_div_fixup_f32 v30, v67, v55, v30
	v_dual_mul_f32 v113, v86, v101 :: v_dual_fmac_f32 v112, v124, v100
	v_fma_f32 v114, -v87, v102, 1.0
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v20, v20, v30
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v125, -v85, v113, v86
	v_fma_f32 v75, -v83, v112, v84
	v_fma_f32 v115, -v89, v103, 1.0
	v_div_fixup_f32 v21, v74, v60, v21
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v20.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v113, v125, v101
	v_div_fmas_f32 v61, v68, v93, v105
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v102, v114, v102
	v_div_scale_f32 v88, s10, v27, v65, v27
	v_fma_f32 v76, -v85, v113, v86
	v_div_fmas_f32 v60, v75, v100, v112
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v90, s11, v28, v64, v28
	v_dual_fmac_f32 v103, v115, v103 :: v_dual_mul_f32 v114, v88, v102
	v_div_fmas_f32 v22, v76, v101, v113
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v14, v14, v21
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v121, -v77, v109, v78
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v126, -v87, v114, v88
	v_div_fixup_f32 v22, v22, v62, v23
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v14.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v115, v90, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v109, v121, v97 :: v_dual_fmac_f32 v114, v126, v102
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v13, v13, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v6, 1, v6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v127, -v89, v115, v90
	v_div_fmas_f32 v21, v69, v94, v106
	s_mov_b32 vcc_lo, s4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v12.l, v13.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v72, -v77, v109, v78
	v_fmac_f32_e32 v115, v127, v103
	v_fma_f32 v77, -v87, v114, v88
	v_div_fixup_f32 v31, v61, v47, v31
	v_div_fmas_f32 v30, v70, v95, v107
	v_div_fixup_f32 v24, v60, v63, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v12, 1, v12
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v78, -v89, v115, v90
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v30, v30, v56, v42
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v23, v29, v31
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v29, v77, v102, v114
	s_mov_b32 vcc_lo, s11
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v15, v15, v24
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v24, v78, v103, v115
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v21, v21, v57, v41
	v_div_fmas_f32 v22, v71, v96, v108
	s_mov_b32 vcc_lo, s6
	.loc	1 190 18 is_stmt 1              ; generate_amdgcn.py:190:18
	v_add3_u32 v1, s33, s26, v5
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.h, v3.h
	.loc	1 185 26 is_stmt 1              ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v27, v29, v65, v27
	v_div_fmas_f32 v29, v72, v97, v109
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v30, v39, v30
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v23.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v24, v24, v64, v28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v28, 1, v3
	v_mov_b16_e32 v3.l, v16.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v22, v22, v59, v45
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v21, v32, v21
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v14, v14
	v_add3_u32 v6, v14, v6, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v14, v29, v58, v46
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v5, 1, v5
	v_cmp_o_f32_e64 s3, v20, v20
	v_add3_u32 v20, v20, v28, 0x7fff
	v_and_b32_e32 v28, 1, v3
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v22, v43, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v21.h
	v_add3_u32 v5, v23, v5, 0x7fff
	v_mov_b16_e32 v9.l, v30.h
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s1
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v6, v44, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v14.h, 0x7fff, v20.h, s3
	v_and_b32_e32 v20, 1, v3
	v_mov_b16_e32 v3.l, v15.h
	v_cmp_o_f32_e64 s0, v16, v16
	v_cmp_o_f32_e64 s4, v23, v23
	v_cmp_o_f32_e64 s5, v13, v13
	v_add3_u32 v16, v16, v28, 0x7fff
	v_and_b32_e32 v9, 1, v9
	v_add3_u32 v12, v13, v12, 0x7fff
	v_and_b32_e32 v13, 1, v3
	v_mov_b16_e32 v3.l, v22.h
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_cmp_o_f32_e64 s6, v21, v21
	v_cmp_o_f32_e64 s7, v30, v30
	v_cndmask_b16 v14.l, 0x7fff, v5.h, s4
	v_mov_b16_e32 v19.l, v6.h
	v_cndmask_b16 v5.h, 0x7fff, v16.h, s0
	v_add3_u32 v16, v21, v20, 0x7fff
	v_add3_u32 v9, v30, v9, 0x7fff
	v_add3_u32 v13, v15, v13, 0x7fff
	v_and_b32_e32 v15, 1, v3
	v_cndmask_b16 v9.l, 0x7fff, v12.h, s5
	v_cndmask_b16 v12.h, 0x7fff, v16.h, s6
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s7
	v_cndmask_b16 v9.h, 0x7fff, v13.h, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v13, v26, v24 :: v_dual_and_b32 v16, 1, v19
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v15, v22, v15, 0x7fff
	v_cmp_o_f32_e64 s0, v22, v22
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v23, v37, v7
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fma_f32 v19, v91, v17, v54
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v16, v6, v16, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s0
	v_cmp_o_f32_e64 s0, v6, v6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v54, v19, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v36, v36, v8 :: v_dual_lshlrev_b32 v11, 16, v11
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v15.l, 0x7fff, v16.h, s0
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v16, v23, v17, v52
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v8, v35, v8
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v40
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v34, v34, v7
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v16, v52, v16, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v19
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s26, s18
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v6, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v23, 0xbfb8aa3b, v16
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v23
	v_cndmask_b32_e64 v22, 0, 0x42800000, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v6, v6, v24
	v_cndmask_b32_e64 v23, 0, 0x42800000, s0
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v38, v7
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_dual_add_f32 v6, 1.0, v6 :: v_dual_fmac_f32 v23, 0xbfb8aa3b, v16
	.loc	1 183 17 is_stmt 1              ; generate_amdgcn.py:183:17
	v_fma_f32 v18, v20, v18, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v24, null, v6, v6, v40
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v53, v18, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v20, 0xbfb8aa3b, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_ldexp_f32 v23, v23, v30
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v21, v25, v27
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v25.l, v13.h
	v_mov_b16_e32 v25.h, v3.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v19
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v17
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v21.h
	v_and_b32_e32 v25, 1, v25
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v18, v22
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s1
	v_exp_f32_e32 v20, v20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v21, v21
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v32, null, v23, v23, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v25, v13, v25, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v18, v18, v22
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v22, v24
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v20, v20, v28
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, vcc_lo, v40, v6, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v27, null, v18, v18, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v24, v22, 1.0
	v_div_scale_f32 v38, s1, v19, v18, v19
	v_rcp_f32_e32 v31, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v29, v22
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v26, 1, v3
	v_add3_u32 v26, v21, v26, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v21, v28, v22
	v_fma_f32 v29, -v27, v31, 1.0
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v39, -v24, v21, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v31, v29, v31
	v_div_scale_f32 v30, null, v20, v20, v17
	v_rcp_f32_e32 v29, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v41, v38, v31 :: v_dual_lshlrev_b32 v10, 16, v10
	v_rcp_f32_e32 v37, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v8, v8, v10, v48
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v43, -v27, v41, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v8, v48, v8, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v7, v33, v7
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v42, -v30, v37, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v7, v7, v10, v50
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v37, v42, v37
	v_div_scale_f32 v42, s0, v17, v20, v17
	v_fmac_f32_e32 v21, v39, v22
	v_fma_f32 v39, -v32, v29, 1.0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v50, v7, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v24, -v24, v21, v28
	v_mul_f32_e32 v28, v42, v37
	v_fmac_f32_e32 v29, v39, v29
	v_div_scale_f32 v39, s3, v16, v23, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v21, v24, v22, v21
	v_fma_f32 v22, -v30, v28, v42
	v_fmac_f32_e32 v41, v43, v31
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v6, v21, v6, v40
	v_fmac_f32_e32 v28, v22, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v27, v41, v38
	v_div_fmas_f32 v22, v27, v31, v41
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v27, v34, v11, v51
	v_fma_f32 v11, v36, v11, v49
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e64 s0, 0, v0
	v_mov_b32_e32 v0, 0x5410
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v27, v51, v27, s2
	v_cndmask_b32_e64 v10, v49, v11, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v35, v39, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v6, v10, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v24, -v32, v35, v39
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_lshl_or_b32 v0, v0, 8, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s1, v6, v6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v35, v24, v29
	v_fma_f32 v24, -v30, v28, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v0, 0x540054, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v24, v24, v37, v28
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_lshl_or_b32 v0, v0, 4, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v17, v24, v20, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v11, v27, v17 :: v_dual_and_b32 v0, 0x5040504, v0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v11.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v10, 1, v3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v30, -v32, v35, v39
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v6.h
	v_add3_u32 v10, v11, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v28, v30, v29, v35
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v13, v22, v18, v19
	v_div_fixup_f32 v16, v28, v23, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.l, 0x7fff, v25.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v8, v8, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v7, v7, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.h, v3.h
	v_and_b32_e32 v3, 1, v3
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e64 s2, v8, v8
	v_mov_b16_e32 v16.l, v7.h
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_add3_u32 v3, v6, v3, 0x7fff
	v_cndmask_b32_e64 v6, v15, v14, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v13, 1, v16
	v_mov_b16_e32 v16.l, v8.h
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s1
	s_mov_b32 s1, 0x76543210
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v11, v7, v13, 0x7fff
	v_and_b32_e32 v13, 1, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v10.l, 0x7fff, v11.h, vcc_lo
	v_add3_u32 v7, v8, v13, 0x7fff
	v_mov_b32_e32 v13, 0x7632
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v11, v10, v12, s0
	v_cndmask_b16 v3.l, 0x7fff, v7.h, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v8, 0x3276, v13, s0
	v_cndmask_b32_e64 v10, v12, v10, s0
	v_cndmask_b32_e64 v12, v26, v5, s0
	v_cndmask_b32_e64 v5, v5, v26, s0
	v_cndmask_b32_e64 v13, v3, v9, s0
	v_lshl_or_b32 v7, v8, 8, v8
	v_cndmask_b32_e64 v8, v14, v15, s0
	v_cndmask_b32_e64 v3, v9, v3, s0
	v_permlanex16_b32 v9, v10, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v5, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 0x760076, v7
	v_permlanex16_b32 v8, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v7, v7, 4, v7
	v_perm_b32 v5, v8, v6, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v14, 0x7060706, v7
	v_perm_b32 v7, v9, v11, v0
	v_perm_b32 v6, v8, v6, v14
	v_perm_b32 v8, v9, v11, v14
	v_perm_b32 v9, v10, v12, v0
	v_perm_b32 v11, v3, v13, v0
	v_add_lshl_u32 v0, v1, v2, 1
	v_perm_b32 v10, v10, v12, v14
	v_perm_b32 v12, v3, v13, v14
	v_add_lshl_u32 v1, v1, v4, 1
	s_clause 0x1
	buffer_store_b128 v[5:8], v0, s[24:27], 0 offen
	buffer_store_b128 v[9:12], v1, s[24:27], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 217
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 217
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14112
; TotalNumSgprs: 48
; NumVgprs: 217
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 48
; NumVGPRsForWavesPerEU: 217
; Occupancy: 6
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     217
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
