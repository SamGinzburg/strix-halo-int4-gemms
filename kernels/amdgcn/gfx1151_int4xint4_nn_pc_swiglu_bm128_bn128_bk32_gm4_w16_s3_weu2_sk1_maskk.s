	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[14:15], s[0:1], 0x30
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s7, s2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshlrev_b32_e32 v68, 2, v0
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_lshrrev_b32_e32 v4, 5, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v138, 1, v0
	v_and_b32_e32 v141, 0x180, v0
	v_and_b32_e32 v2, 0x7c, v68
	v_and_b32_e32 v69, 8, v0
	s_load_b32 s25, s[0:1], 0x38
	v_and_b32_e32 v140, 48, v138
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v13, 0, v68
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v139, 15, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v67, v140, v139
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s14, 0x7f
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s10, s10, 25
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s8, s8, 7
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s5, s4
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
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s6, s5, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s5, s4
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s7, s8, s6
	s_load_b128 s[8:11], s[0:1], 0x0
	.loc	1 91 20 is_stmt 0               ; generate_amdgcn.py:91:20
	s_min_i32 s7, s7, 4
	.loc	1 92 29 is_stmt 1               ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s12, s7
	s_abs_i32 s5, s2
	s_cvt_f32_u32 s13, s12
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s13
	v_readfirstlane_b32 s13, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[10:11]
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_and_b32_e32 v1, 12, v68
	s_mov_b32 s11, 0x31027000
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s13, s13, 0x4f7ffffe
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s19, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s10, s13
	s_sub_i32 s13, 0, s12
	s_mul_i32 s13, s13, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s10, s13
	s_xor_b32 s13, s2, s7
	s_add_i32 s4, s10, s4
	s_ashr_i32 s23, s13, 31
	s_mul_hi_u32 s4, s5, s4
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s14, s4, s12
	s_add_i32 s13, s4, 1
	s_sub_i32 s5, s5, s14
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s18, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s14, s5, s12
	s_cmp_ge_u32 s5, s12
	s_cselect_b32 s4, s13, s4
	s_cselect_b32 s5, s14, s5
	s_add_i32 s13, s4, 1
	s_cmp_ge_u32 s5, s12
	s_cselect_b32 s4, s13, s4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s5, s25, 31
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s12, s15, 1
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s29, s3, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s26, s4, s23
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s25, s5
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_mul_i32 s5, s12, s29
	v_mad_u64_u32 v[5:6], null, s12, v4, v[2:3]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s12, s26, s23
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s24, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s12, s7
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v8, s29, v1
	v_or_b32_e32 v9, s29, v4
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s4, s2, s4
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mad_u64_u32 v[6:7], null, s24, v3, v[1:2]
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s4, s4, s6
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s14, s12, 7
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s24, v8
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e64 s2, s24, v9
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s20, s4, 7
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s25, 1
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s4, s20, s24
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s22, -1, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v6, s29, s4, v6
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s22, vcc_lo
	s_and_b32 s2, s22, s2
	s_cmp_gt_i32 s25, 33
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_add3_u32 v5, s5, s14, v5
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s21, -1, 0
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	s_add_i32 s4, s29, 16
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v12, 0x80000000, v6, vcc_lo
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v9, s4, v1
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	v_add_nc_u32_e32 v7, s15, v5
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v10, s4, v4
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_lshl_add_u32 v8, s15, 5, v5
	.loc	1 117 22 is_stmt 0              ; generate_amdgcn.py:117:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 108 23 is_stmt 1              ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s24, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v6, 16, v6
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e64 s2, s24, v10
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	v_add_nc_u32_e32 v11, s15, v8
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s21, vcc_lo
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b32 v5, v5, s[16:19], 0 offen
	buffer_load_b32 v7, v7, s[16:19], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_b32 v9, v12, s[8:11], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s21, s2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v12, 0x77c, v68
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_cndmask_b32_e32 v10, 0x80000000, v11, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_b32 v11, v6, s[8:11], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b32 v8, v8, s[16:19], 0 offen
	buffer_load_b32 v10, v10, s[16:19], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_bfe_i32 v6, v0, 5, 1
	s_mov_b32 s18, 0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmpk_gt_i32 s25, 0x41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v6, 0x88, v6
	v_xor_b32_e32 v70, v6, v12
	v_lshlrev_b32_e32 v6, 1, v141
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v12, 0, v70
	s_waitcnt vmcnt(3)
	ds_store_b32 v12, v9
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_store_2addr_stride64_b32 v13, v5, v7 offset0:16 offset1:32
	v_lshlrev_b32_e32 v5, 4, v0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v12, v11 offset:2048
	.loc	1 0 0                           ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v13, v8, v10 offset0:24 offset1:40
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_or_b32_e32 v173, v140, v139
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v71, 8, v0
	v_and_or_b32 v66, 0x70, v5, v6
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_or_b32_e32 v147, 0x80, v173
	v_or_b32_e32 v149, 0x100, v173
	v_or_b32_e32 v151, 0x180, v173
	v_or_b32_e32 v153, 0x200, v173
	v_or_b32_e32 v155, 0x280, v173
	v_or_b32_e32 v157, 0x300, v173
	v_or_b32_e32 v159, 0x380, v173
	v_or_b32_e32 v142, 0x400, v173
	v_or_b32_e32 v143, 0x480, v173
	v_or_b32_e32 v144, 0x500, v173
	v_or_b32_e32 v145, 0x580, v173
	v_or_b32_e32 v146, 0x600, v173
	v_or_b32_e32 v148, 0x680, v173
	v_or_b32_e32 v150, 0x700, v173
	v_or_b32_e32 v152, 0x780, v173
	v_or_b32_e32 v154, 64, v173
	v_or_b32_e32 v156, 0xc0, v173
	v_or_b32_e32 v158, 0x140, v173
	v_or_b32_e32 v160, 0x1c0, v173
	v_or_b32_e32 v161, 0x240, v173
	v_or_b32_e32 v162, 0x2c0, v173
	v_or_b32_e32 v163, 0x340, v173
	v_or_b32_e32 v164, 0x3c0, v173
	v_or_b32_e32 v165, 0x440, v173
	v_or_b32_e32 v166, 0x4c0, v173
	v_or_b32_e32 v167, 0x540, v173
	v_or_b32_e32 v168, 0x5c0, v173
	v_or_b32_e32 v169, 0x640, v173
	v_or_b32_e32 v170, 0x6c0, v173
	v_or_b32_e32 v171, 0x740, v173
	v_or_b32_e32 v172, 0x7c0, v173
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s2, -1
                                        ; implicit-def: $vgpr71
                                        ; implicit-def: $vgpr66
                                        ; implicit-def: $vgpr173
                                        ; implicit-def: $vgpr147
                                        ; implicit-def: $vgpr149
                                        ; implicit-def: $vgpr151
                                        ; implicit-def: $vgpr153
                                        ; implicit-def: $vgpr155
                                        ; implicit-def: $vgpr157
                                        ; implicit-def: $vgpr159
                                        ; implicit-def: $vgpr142
                                        ; implicit-def: $vgpr143
                                        ; implicit-def: $vgpr144
                                        ; implicit-def: $vgpr145
                                        ; implicit-def: $vgpr146
                                        ; implicit-def: $vgpr148
                                        ; implicit-def: $vgpr150
                                        ; implicit-def: $vgpr152
                                        ; implicit-def: $vgpr154
                                        ; implicit-def: $vgpr156
                                        ; implicit-def: $vgpr158
                                        ; implicit-def: $vgpr160
                                        ; implicit-def: $vgpr161
                                        ; implicit-def: $vgpr162
                                        ; implicit-def: $vgpr163
                                        ; implicit-def: $vgpr164
                                        ; implicit-def: $vgpr165
                                        ; implicit-def: $vgpr166
                                        ; implicit-def: $vgpr167
                                        ; implicit-def: $vgpr168
                                        ; implicit-def: $vgpr169
                                        ; implicit-def: $vgpr170
                                        ; implicit-def: $vgpr171
                                        ; implicit-def: $vgpr172
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s25, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	v_lshlrev_b32_e32 v7, 1, v4
	v_sub_nc_u32_e32 v72, s24, v4
	v_and_or_b32 v66, 0x70, v5, v6
	s_lshl_b32 s1, s26, 7
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s0, s24, 15
.Ltmp13:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_lshl_or_b32 v4, s3, 5, v7
	v_add_nc_u32_e32 v3, s20, v3
	v_bfe_i32 v7, v0, 3, 1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s0, s0, 4
.Ltmp15:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_lshl_b32 s2, s23, 7
	v_add_nc_u32_e32 v5, 0x41, v4
	v_add_nc_u32_e32 v4, 64, v4
	v_sub_nc_u32_e64 v6, s0, 3 clamp
	v_and_or_b32 v73, 0x88, v7, v66
	v_sub_nc_u32_e32 v71, s24, v1
	v_mul_lo_u32 v5, s15, v5
	v_mul_lo_u32 v4, s15, v4
	v_readfirstlane_b32 s0, v6
	v_xor_b32_e32 v74, 8, v73
	s_mov_b32 s28, 1
	s_lshl_b32 s26, s15, 5
	s_add_i32 s3, 0, 0x800
	s_add_i32 s27, s0, 1
	v_add3_u32 v5, v5, s1, v2
	v_add3_u32 v2, v4, s1, v2
	s_add_i32 s23, 0, 0x1800
	s_add_i32 s1, 0, 0x2800
	s_add_i32 s29, s29, 32
	v_subrev_nc_u32_e32 v75, s2, v5
	v_mad_u64_u32 v[9:10], null, s24, v3, v[1:2]
	v_mov_b32_e32 v10, 0
	v_subrev_nc_u32_e32 v76, s2, v2
	s_add_i32 s24, 0, 0x1000
	s_add_i32 s2, 0, 0x2000
	s_mov_b32 s18, s10
	v_mov_b32_e32 v11, v10
	v_mov_b32_e32 v12, v10
	v_mov_b32_e32 v13, v10
	v_mov_b32_e32 v14, v10
	v_mov_b32_e32 v15, v10
	v_mov_b32_e32 v16, v10
	v_mov_b32_e32 v17, v10
	v_mov_b32_e32 v26, v10
	v_mov_b32_e32 v27, v10
	v_mov_b32_e32 v28, v10
	v_mov_b32_e32 v29, v10
	v_mov_b32_e32 v30, v10
	v_mov_b32_e32 v31, v10
	v_mov_b32_e32 v32, v10
	v_mov_b32_e32 v33, v10
	v_mov_b32_e32 v18, v10
	v_mov_b32_e32 v19, v10
	v_mov_b32_e32 v20, v10
	v_mov_b32_e32 v21, v10
	v_mov_b32_e32 v22, v10
	v_mov_b32_e32 v23, v10
	v_mov_b32_e32 v24, v10
	v_mov_b32_e32 v25, v10
	v_mov_b32_e32 v1, v10
	v_mov_b32_e32 v2, v10
	v_mov_b32_e32 v3, v10
	v_mov_b32_e32 v4, v10
	v_mov_b32_e32 v5, v10
	v_mov_b32_e32 v6, v10
	v_mov_b32_e32 v7, v10
	v_mov_b32_e32 v8, v10
	v_mov_b32_e32 v34, v10
	v_mov_b32_e32 v35, v10
	v_mov_b32_e32 v36, v10
	v_mov_b32_e32 v37, v10
	v_mov_b32_e32 v38, v10
	v_mov_b32_e32 v39, v10
	v_mov_b32_e32 v40, v10
	v_mov_b32_e32 v41, v10
	v_mov_b32_e32 v42, v10
	v_mov_b32_e32 v43, v10
	v_mov_b32_e32 v44, v10
	v_mov_b32_e32 v45, v10
	v_mov_b32_e32 v46, v10
	v_mov_b32_e32 v47, v10
	v_mov_b32_e32 v48, v10
	v_mov_b32_e32 v49, v10
	v_mov_b32_e32 v50, v10
	v_mov_b32_e32 v51, v10
	v_mov_b32_e32 v52, v10
	v_mov_b32_e32 v53, v10
	v_mov_b32_e32 v54, v10
	v_mov_b32_e32 v55, v10
	v_mov_b32_e32 v56, v10
	v_mov_b32_e32 v57, v10
	v_mov_b32_e32 v58, v10
	v_mov_b32_e32 v59, v10
	v_mov_b32_e32 v60, v10
	v_mov_b32_e32 v61, v10
	v_mov_b32_e32 v62, v10
	v_mov_b32_e32 v63, v10
	v_mov_b32_e32 v64, v10
	v_mov_b32_e32 v65, v10
	s_mov_b32 s19, s11
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v77, s29, v9
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s29, v72
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e64 s0, s29, v71
	s_mov_b32 s30, s24
	s_mov_b32 s24, s23
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v88, s30, v67
	v_dual_cndmask_b32 v78, 0x80000000, v76 :: v_dual_cndmask_b32 v79, 0x80000000, v75
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v77, 0x80000000, v77, s0
	s_mov_b32 s0, s25
	s_mov_b32 s25, s3
	v_add_nc_u32_e32 v80, s0, v73
	v_add_nc_u32_e32 v84, s0, v74
	buffer_load_b32 v77, v77, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b32 v78, v78, s[16:19], 0 offen
	buffer_load_b32 v79, v79, s[16:19], 0 offen
	s_mov_b32 s3, s2
	s_mov_b32 s2, s1
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v89, s3, v67
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_stride64_b64 v[80:83], v80 offset1:2
	ds_load_2addr_stride64_b64 v[84:87], v84 offset1:2
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v90, v88 offset:640
	ds_load_u8 v91, v88 offset:512
	ds_load_u8 v92, v88 offset:896
	ds_load_u8 v93, v88 offset:768
	ds_load_u8 v94, v88 offset:960
	ds_load_u8 v95, v88 offset:832
	ds_load_u8 v96, v88 offset:704
	ds_load_u8 v97, v88 offset:576
	ds_load_u8 v98, v88 offset:128
	ds_load_u8 v99, v88
	ds_load_u8 v100, v88 offset:384
	ds_load_u8 v101, v88 offset:256
	ds_load_u8 v102, v88 offset:448
	ds_load_u8 v103, v88 offset:320
	ds_load_u8 v104, v88 offset:192
	ds_load_u8 v105, v88 offset:64
	ds_load_u8 v106, v88 offset:1664
	ds_load_u8 v107, v88 offset:1536
	ds_load_u8 v108, v88 offset:1920
	ds_load_u8 v109, v88 offset:1792
	ds_load_u8 v110, v88 offset:1984
	ds_load_u8 v111, v88 offset:1856
	ds_load_u8 v112, v88 offset:1728
	ds_load_u8 v113, v88 offset:1600
	ds_load_u8 v114, v88 offset:1152
	ds_load_u8 v115, v88 offset:1024
	ds_load_u8 v116, v88 offset:1408
	ds_load_u8 v117, v88 offset:1280
	ds_load_u8 v118, v88 offset:1472
	ds_load_u8 v119, v88 offset:1344
	ds_load_u8 v120, v88 offset:1216
	ds_load_u8 v88, v88 offset:1088
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v121, v89 offset:640
	ds_load_u8 v122, v89 offset:512
	ds_load_u8 v123, v89 offset:896
	ds_load_u8 v124, v89 offset:768
	ds_load_u8 v125, v89 offset:960
	ds_load_u8 v126, v89 offset:832
	ds_load_u8 v127, v89 offset:704
	ds_load_u8 v128, v89 offset:576
	ds_load_u8 v129, v89 offset:128
	ds_load_u8 v130, v89
	ds_load_u8 v131, v89 offset:384
	ds_load_u8 v132, v89 offset:256
	ds_load_u8 v133, v89 offset:448
	ds_load_u8 v134, v89 offset:320
	ds_load_u8 v135, v89 offset:192
	ds_load_u8 v136, v89 offset:64
	ds_load_u8 v137, v89 offset:1664
	ds_load_u8 v142, v89 offset:1536
	ds_load_u8 v143, v89 offset:1920
	ds_load_u8 v144, v89 offset:1792
	ds_load_u8 v145, v89 offset:1984
	ds_load_u8 v146, v89 offset:1856
	ds_load_u8 v147, v89 offset:1728
	ds_load_u8 v148, v89 offset:1600
	ds_load_u8 v149, v89 offset:1152
	ds_load_u8 v150, v89 offset:1024
	ds_load_u8 v151, v89 offset:1408
	ds_load_u8 v152, v89 offset:1280
	ds_load_u8 v153, v89 offset:1472
	ds_load_u8 v154, v89 offset:1344
	ds_load_u8 v155, v89 offset:1216
	ds_load_u8 v89, v89 offset:1088
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v91, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v92, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v93, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v98, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v99, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v100, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v101, v117, v116, 0xc0c0004
	v_perm_b32 v96, v97, v96, 0xc0c0004
	v_perm_b32 v94, v95, v94, 0xc0c0004
	v_perm_b32 v95, v105, v104, 0xc0c0004
	v_perm_b32 v97, v103, v102, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v106, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v107, v124, v123, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v108, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v109, v132, v131, 0xc0c0004
	v_perm_b32 v114, v128, v127, 0xc0c0004
	v_perm_b32 v115, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v116, v136, v135, 0xc0c0004
	v_perm_b32 v117, v134, v133, 0xc0c0004
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s1, s28, 1
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v102, v113, v112, 0xc0c0004
	v_perm_b32 v103, v111, v110, 0xc0c0004
	v_perm_b32 v104, v88, v120, 0xc0c0004
	v_perm_b32 v105, v119, v118, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v110, v142, v137, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v111, v144, v143, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v112, v150, v149, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v113, v152, v151, 0xc0c0004
	v_perm_b32 v118, v148, v147, 0xc0c0004
	v_perm_b32 v119, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v89, v155, 0xc0c0004
	v_perm_b32 v121, v154, v153, 0xc0c0004
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v89, v91, 16, v90
	v_lshl_or_b32 v88, v93, 16, v92
	v_lshl_or_b32 v90, v101, 16, v100
	v_lshl_or_b32 v93, v94, 16, v96
	v_lshl_or_b32 v92, v97, 16, v95
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v97, v107, 16, v106
	v_lshl_or_b32 v96, v109, 16, v108
	v_lshl_or_b32 v101, v115, 16, v114
	v_lshl_or_b32 v100, v117, 16, v116
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lt_i32 s1, 2
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v91, v99, 16, v98
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s28, s1, 0
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v95, v103, 16, v102
	v_lshl_or_b32 v94, v105, 16, v104
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v99, v111, 16, v110
	v_lshl_or_b32 v98, v113, 16, v112
	v_lshl_or_b32 v103, v119, 16, v118
	v_lshl_or_b32 v102, v121, 16, v120
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[34:41], v[88:89], v[80:81], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[92:93], v[80:81], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[88:89], v[82:83], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[92:93], v[82:83], v[58:65] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[10:17], v[96:97], v[80:81], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[100:101], v[80:81], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[96:97], v[82:83], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[100:101], v[82:83], v[1:8] neg_lo:[1,1,0]
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_lshl_b32 s0, s28, 11
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v76, s26, v76
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_add_i32 s3, s0, 0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v75, s26, v75
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v156, s3, v70
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[34:41], v[90:91], v[84:85], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[94:95], v[84:85], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[90:91], v[86:87], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[94:95], v[86:87], v[58:65] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[10:17], v[98:99], v[84:85], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[102:103], v[84:85], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[98:99], v[86:87], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[102:103], v[86:87], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s27, s27, -1
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v157, s3, v68
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s29, s29, 16
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_add_i32 s23, s3, 0x1000
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_add_i32 s1, s3, 0x2000
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s27, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v156, v77
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v157, v78, v79 offset0:16 offset1:32
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_or_b32_e32 v147, 0x80, v67
	v_or_b32_e32 v149, 0x100, v67
	v_or_b32_e32 v151, 0x180, v67
	v_or_b32_e32 v153, 0x200, v67
	v_or_b32_e32 v155, 0x280, v67
	v_or_b32_e32 v157, 0x300, v67
	v_or_b32_e32 v159, 0x380, v67
	v_or_b32_e32 v142, 0x400, v67
	v_or_b32_e32 v143, 0x480, v67
	v_or_b32_e32 v144, 0x500, v67
	v_or_b32_e32 v145, 0x580, v67
	v_or_b32_e32 v146, 0x600, v67
	v_or_b32_e32 v148, 0x680, v67
	v_or_b32_e32 v150, 0x700, v67
	v_or_b32_e32 v152, 0x780, v67
	v_or_b32_e32 v154, 64, v67
	v_or_b32_e32 v156, 0xc0, v67
	v_or_b32_e32 v158, 0x140, v67
	v_or_b32_e32 v160, 0x1c0, v67
	v_or_b32_e32 v161, 0x240, v67
	v_or_b32_e32 v162, 0x2c0, v67
	v_or_b32_e32 v163, 0x340, v67
	v_or_b32_e32 v164, 0x3c0, v67
	v_or_b32_e32 v165, 0x440, v67
	v_or_b32_e32 v166, 0x4c0, v67
	v_or_b32_e32 v167, 0x540, v67
	v_or_b32_e32 v168, 0x5c0, v67
	v_or_b32_e32 v169, 0x640, v67
	v_or_b32_e32 v170, 0x6c0, v67
	v_or_b32_e32 v171, 0x740, v67
	v_or_b32_e32 v172, 0x7c0, v67
	v_mov_b32_e32 v71, v69
	v_mov_b32_e32 v173, v67
	s_mov_b32 s18, s25
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v8, 0
	s_add_i32 s3, 0, 0x800
	s_add_i32 s24, 0, 0x1000
	s_add_i32 s23, 0, 0x1800
	s_add_i32 s2, 0, 0x2000
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v2, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v24, v8 :: v_dual_mov_b32 v41, v9
	v_dual_mov_b32 v35, v9 :: v_dual_mov_b32 v20, v8
	v_dual_mov_b32 v43, v9 :: v_dual_mov_b32 v22, v8
	v_dual_mov_b32 v47, v9 :: v_dual_mov_b32 v18, v8
	v_dual_mov_b32 v45, v9 :: v_dual_mov_b32 v32, v8
	v_dual_mov_b32 v49, v9 :: v_dual_mov_b32 v28, v8
	v_dual_mov_b32 v51, v9 :: v_dual_mov_b32 v30, v8
	v_dual_mov_b32 v55, v9 :: v_dual_mov_b32 v26, v8
	v_dual_mov_b32 v53, v9 :: v_dual_mov_b32 v16, v8
	v_dual_mov_b32 v57, v9 :: v_dual_mov_b32 v12, v8
	v_dual_mov_b32 v59, v9 :: v_dual_mov_b32 v14, v8
	v_dual_mov_b32 v63, v9 :: v_dual_mov_b32 v10, v8
	v_dual_mov_b32 v61, v9 :: v_dual_mov_b32 v34, v8
	v_mov_b32_e32 v65, v9
	v_mov_b32_e32 v39, v9
	v_mov_b32_e32 v37, v9
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v33, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v38, v8
	v_mov_b32_e32 v36, v8
	v_mov_b32_e32 v40, v8
	v_mov_b32_e32 v42, v8
	v_mov_b32_e32 v46, v8
	v_mov_b32_e32 v44, v8
	v_mov_b32_e32 v48, v8
	v_mov_b32_e32 v50, v8
	v_mov_b32_e32 v54, v8
	v_mov_b32_e32 v52, v8
	v_mov_b32_e32 v56, v8
	v_mov_b32_e32 v58, v8
	v_mov_b32_e32 v62, v8
	v_mov_b32_e32 v60, v8
	v_mov_b32_e32 v64, v8
	s_add_i32 s1, 0, 0x2800
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v71
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v93, v61 :: v_dual_mov_b32 v92, v60
	v_cndmask_b32_e64 v9, 0x88, 0, vcc_lo
	v_dual_mov_b32 v95, v63 :: v_dual_mov_b32 v94, v62
	v_dual_mov_b32 v91, v59 :: v_dual_mov_b32 v90, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v9, v9, v66
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cndmask_b32_e64 v66, 0, 1, s22
	v_dual_mov_b32 v89, v57 :: v_dual_mov_b32 v88, v56
	v_dual_mov_b32 v85, v53 :: v_dual_mov_b32 v84, v52
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xor_b32_e32 v106, 8, v9
	v_add_nc_u32_e32 v67, s18, v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cmp_ne_u32_e64 s0, 1, v66
	v_dual_mov_b32 v87, v55 :: v_dual_mov_b32 v86, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v97, v65 :: v_dual_add_nc_u32 v68, s18, v106
	v_mov_b32_e32 v96, v64
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_stride64_b64 v[102:105], v67 offset1:2
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[98:101], v68 offset1:2
	v_dual_mov_b32 v83, v51 :: v_dual_mov_b32 v82, v50
	v_dual_mov_b32 v81, v49 :: v_dual_mov_b32 v80, v48
	v_dual_mov_b32 v77, v45 :: v_dual_mov_b32 v76, v44
	v_dual_mov_b32 v79, v47 :: v_dual_mov_b32 v78, v46
	v_dual_mov_b32 v75, v43 :: v_dual_mov_b32 v74, v42
	v_dual_mov_b32 v73, v41 :: v_dual_mov_b32 v72, v40
	v_dual_mov_b32 v69, v37 :: v_dual_mov_b32 v68, v36
	v_dual_mov_b32 v71, v39 :: v_dual_mov_b32 v70, v38
	v_dual_mov_b32 v67, v35 :: v_dual_mov_b32 v66, v34
	.loc	1 118 23 is_stmt 1              ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s22
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v80, s24, v155
	v_add_nc_u32_e32 v81, s24, v153
	v_add_nc_u32_e32 v90, s24, v159
	v_add_nc_u32_e32 v92, s24, v147
	v_add_nc_u32_e32 v93, s24, v173
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v80, v80
	ds_load_u8 v81, v81
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v94, s24, v151
	v_add_nc_u32_e32 v91, s24, v157
	v_add_nc_u32_e32 v95, s24, v149
	v_add_nc_u32_e32 v86, s24, v148
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v90, v90
	ds_load_u8 v92, v92
	ds_load_u8 v93, v93
	ds_load_u8 v94, v94
	ds_load_u8 v95, v95
	ds_load_u8 v91, v91
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v87, s24, v146
	v_add_nc_u32_e32 v84, s24, v152
	v_add_nc_u32_e32 v96, s24, v143
	v_add_nc_u32_e32 v74, s24, v164
	v_add_nc_u32_e32 v75, s24, v163
	v_add_nc_u32_e32 v76, s24, v162
	v_add_nc_u32_e32 v77, s24, v161
	v_add_nc_u32_e32 v78, s24, v160
	v_add_nc_u32_e32 v79, s24, v158
	v_add_nc_u32_e32 v82, s24, v156
	v_add_nc_u32_e32 v83, s24, v154
	v_add_nc_u32_e32 v85, s24, v150
	v_add_nc_u32_e32 v88, s24, v145
	v_add_nc_u32_e32 v89, s24, v144
	v_add_nc_u32_e32 v97, s24, v142
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v86
	ds_load_u8 v86, v87
	ds_load_u8 v84, v84
	ds_load_u8 v87, v96
	ds_load_u8 v96, v97
	ds_load_u8 v88, v88
	ds_load_u8 v89, v89
	ds_load_u8 v85, v85
	ds_load_u8 v76, v76
	ds_load_u8 v77, v77
	ds_load_u8 v74, v74
	ds_load_u8 v82, v82
	ds_load_u8 v83, v83
	ds_load_u8 v78, v78
	ds_load_u8 v79, v79
	ds_load_u8 v75, v75
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v68, s24, v170
	v_add_nc_u32_e32 v69, s24, v169
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v66, s24, v172
	v_add_nc_u32_e32 v73, s24, v165
	v_add_nc_u32_e32 v70, s24, v168
	v_add_nc_u32_e32 v67, s24, v171
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v108, v90, 16, v80
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v80, v86, v81, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v71, s24, v167
	v_add_nc_u32_e32 v72, s24, v166
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v81, v85, v84, 0xc0c0004
	v_perm_b32 v91, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	v_perm_b32 v92, v95, v94, 0xc0c0004
	v_perm_b32 v84, v96, v87, 0xc0c0004
	v_lshl_or_b32 v110, v81, 16, v80
	v_perm_b32 v85, v89, v88, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v77, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_perm_b32 v75, v83, v82, 0xc0c0004
	v_lshl_or_b32 v107, v92, 16, v91
	v_lshl_or_b32 v109, v85, 16, v84
	v_mov_b32_e32 v89, v57
	v_lshl_or_b32 v112, v74, 16, v76
	v_lshl_or_b32 v111, v77, 16, v75
	v_mov_b32_e32 v81, v49
	ds_load_u8 v93, v68
	ds_load_u8 v94, v69
	ds_load_u8 v95, v66
	ds_load_u8 v97, v73
	ds_load_u8 v113, v70
	ds_load_u8 v114, v71
	ds_load_u8 v115, v67
	ds_load_u8 v116, v72
	v_dual_mov_b32 v73, v41 :: v_dual_mov_b32 v72, v40
	v_dual_mov_b32 v71, v39 :: v_dual_mov_b32 v70, v38
	v_dual_mov_b32 v69, v37 :: v_dual_mov_b32 v68, v36
	v_dual_mov_b32 v67, v35 :: v_dual_mov_b32 v66, v34
	v_dual_mov_b32 v80, v48 :: v_dual_mov_b32 v79, v47
	v_dual_mov_b32 v78, v46 :: v_dual_mov_b32 v77, v45
	v_mov_b32_e32 v76, v44
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v117, v94, v93, 0xc0c0004
	v_dual_mov_b32 v75, v43 :: v_dual_mov_b32 v74, v42
	v_mov_b32_e32 v88, v56
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v115, v115, v95, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v97, v116, 0xc0c0004
	v_mov_b32_e32 v97, v65
	v_dual_mov_b32 v87, v55 :: v_dual_mov_b32 v86, v54
	v_dual_mov_b32 v85, v53 :: v_dual_mov_b32 v84, v52
	v_dual_mov_b32 v83, v51 :: v_dual_mov_b32 v82, v50
	v_dual_mov_b32 v96, v64 :: v_dual_mov_b32 v95, v63
	v_dual_mov_b32 v94, v62 :: v_dual_mov_b32 v93, v61
	v_dual_mov_b32 v92, v60 :: v_dual_mov_b32 v91, v59
	v_mov_b32_e32 v90, v58
	v_wmma_i32_16x16x16_iu4 v[66:73], v[107:108], v[102:103], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[74:81], v[111:112], v[102:103], v[74:81] neg_lo:[1,1,0]
	v_lshl_or_b32 v114, v115, 16, v117
	v_lshl_or_b32 v113, v113, 16, v116
	v_wmma_i32_16x16x16_iu4 v[82:89], v[107:108], v[104:105], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[111:112], v[104:105], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[66:73], v[109:110], v[98:99], v[66:73] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[74:81], v[113:114], v[98:99], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[109:110], v[100:101], v[82:89] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[113:114], v[100:101], v[90:97] neg_lo:[1,1,0]
.LBB0_10:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v42, s2, v155
	v_add_nc_u32_e32 v43, s2, v153
	v_add_nc_u32_e32 v40, s2, v159
	v_add_nc_u32_e32 v46, s2, v147
	v_add_nc_u32_e32 v41, s2, v157
	v_add_nc_u32_e32 v44, s2, v151
	v_add_nc_u32_e32 v45, s2, v149
	v_add_nc_u32_e32 v47, s2, v173
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v42, v42
	ds_load_u8 v43, v43
	ds_load_u8 v40, v40
	ds_load_u8 v46, v46
	ds_load_u8 v47, v47
	ds_load_u8 v44, v44
	ds_load_u8 v45, v45
	ds_load_u8 v41, v41
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v52, s2, v162
	v_add_nc_u32_e32 v53, s2, v161
	v_add_nc_u32_e32 v50, s2, v164
	v_add_nc_u32_e32 v56, s2, v156
	v_add_nc_u32_e32 v38, s2, v168
	v_add_nc_u32_e32 v39, s2, v167
	v_add_nc_u32_e32 v48, s2, v166
	v_add_nc_u32_e32 v49, s2, v165
	v_add_nc_u32_e32 v51, s2, v163
	v_add_nc_u32_e32 v54, s2, v160
	v_add_nc_u32_e32 v55, s2, v158
	v_add_nc_u32_e32 v57, s2, v154
	v_add_nc_u32_e32 v58, s2, v152
	v_add_nc_u32_e32 v59, s2, v150
	v_add_nc_u32_e32 v60, s2, v148
	v_add_nc_u32_e32 v61, s2, v146
	v_add_nc_u32_e32 v62, s2, v145
	v_add_nc_u32_e32 v63, s2, v144
	v_add_nc_u32_e32 v64, s2, v143
	v_add_nc_u32_e32 v65, s2, v142
	v_add_nc_u32_e32 v34, s2, v172
	v_add_nc_u32_e32 v35, s2, v171
	v_add_nc_u32_e32 v36, s2, v170
	v_add_nc_u32_e32 v37, s2, v169
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	v_perm_b32 v41, v47, v46, 0xc0c0004
	v_perm_b32 v43, v45, v44, 0xc0c0004
	ds_load_u8 v44, v52
	ds_load_u8 v45, v53
	ds_load_u8 v46, v50
	ds_load_u8 v47, v56
	ds_load_u8 v50, v57
	ds_load_u8 v52, v54
	ds_load_u8 v53, v55
	ds_load_u8 v51, v51
	ds_load_u8 v54, v60
	ds_load_u8 v55, v61
	ds_load_u8 v56, v58
	ds_load_u8 v57, v64
	ds_load_u8 v58, v65
	ds_load_u8 v60, v62
	ds_load_u8 v61, v63
	ds_load_u8 v59, v59
	ds_load_u8 v62, v36
	ds_load_u8 v63, v37
	ds_load_u8 v64, v34
	ds_load_u8 v49, v49
	ds_load_u8 v38, v38
	ds_load_u8 v39, v39
	ds_load_u8 v65, v35
	ds_load_u8 v48, v48
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v36, v45, v44, 0xc0c0004
	v_lshl_or_b32 v35, v40, 16, v42
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v42, v53, v52, 0xc0c0004
	v_lshl_or_b32 v34, v43, 16, v41
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v37, v51, v46, 0xc0c0004
	v_perm_b32 v41, v50, v47, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v40, v55, v54, 0xc0c0004
	v_mov_b32_e32 v52, v84
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v44, v58, v57, 0xc0c0004
	v_lshl_or_b32 v37, v37, 16, v36
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v45, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v43, v59, v56, 0xc0c0004
	v_lshl_or_b32 v36, v42, 16, v41
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v41, v63, v62, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[10:17], v[34:35], v[102:103], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[34:35], v[104:105], v[18:25] neg_lo:[1,1,0]
	v_mov_b32_e32 v60, v92
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v47, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v42, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v49, v48, 0xc0c0004
	v_lshl_or_b32 v39, v43, 16, v40
	v_lshl_or_b32 v38, v45, 16, v44
	v_wmma_i32_16x16x16_iu4 v[26:33], v[36:37], v[102:103], v[26:33] neg_lo:[1,1,0]
	v_lshl_or_b32 v41, v42, 16, v41
	v_lshl_or_b32 v40, v47, 16, v46
	v_wmma_i32_16x16x16_iu4 v[1:8], v[36:37], v[104:105], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[10:17], v[38:39], v[98:99], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[38:39], v[100:101], v[18:25] neg_lo:[1,1,0]
	v_mov_b32_e32 v64, v96
	v_wmma_i32_16x16x16_iu4 v[26:33], v[40:41], v[98:99], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[40:41], v[100:101], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v62, v94
	v_mov_b32_e32 v58, v90
	v_mov_b32_e32 v56, v88
	v_mov_b32_e32 v54, v86
	v_mov_b32_e32 v50, v82
	v_mov_b32_e32 v48, v80
	v_mov_b32_e32 v44, v76
	v_mov_b32_e32 v46, v78
	v_mov_b32_e32 v42, v74
	v_mov_b32_e32 v40, v72
	v_mov_b32_e32 v36, v68
	v_mov_b32_e32 v38, v70
	v_dual_mov_b32 v34, v66 :: v_dual_mov_b32 v65, v97
	v_mov_b32_e32 v61, v93
	v_mov_b32_e32 v63, v95
	v_mov_b32_e32 v59, v91
	v_mov_b32_e32 v57, v89
	v_mov_b32_e32 v53, v85
	v_mov_b32_e32 v55, v87
	v_mov_b32_e32 v51, v83
	v_mov_b32_e32 v49, v81
	v_mov_b32_e32 v45, v77
	v_mov_b32_e32 v47, v79
	v_mov_b32_e32 v43, v75
	v_mov_b32_e32 v41, v73
	v_mov_b32_e32 v37, v69
	v_mov_b32_e32 v39, v71
	v_mov_b32_e32 v35, v67
.LBB0_12:                               ; %._crit_edge151
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v98, s3, v106
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cndmask_b32_e64 v106, 0, 1, s21
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v9, s3, v9
	v_dual_mov_b32 v109, v61 :: v_dual_mov_b32 v108, v60
	v_dual_mov_b32 v111, v63 :: v_dual_mov_b32 v110, v62
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cmp_ne_u32_e64 s0, 1, v106
	v_dual_mov_b32 v107, v65 :: v_dual_mov_b32 v106, v64
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_stride64_b64 v[102:105], v9 offset1:2
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[98:101], v98 offset1:2
	v_dual_mov_b32 v113, v59 :: v_dual_mov_b32 v112, v58
	v_dual_mov_b32 v115, v57 :: v_dual_mov_b32 v114, v56
	v_dual_mov_b32 v117, v53 :: v_dual_mov_b32 v116, v52
	v_dual_mov_b32 v119, v55 :: v_dual_mov_b32 v118, v54
	v_dual_mov_b32 v121, v51 :: v_dual_mov_b32 v120, v50
	v_dual_mov_b32 v123, v49 :: v_dual_mov_b32 v122, v48
	v_dual_mov_b32 v125, v45 :: v_dual_mov_b32 v124, v44
	v_dual_mov_b32 v127, v47 :: v_dual_mov_b32 v126, v46
	v_dual_mov_b32 v129, v43 :: v_dual_mov_b32 v128, v42
	v_dual_mov_b32 v131, v41 :: v_dual_mov_b32 v130, v40
	v_dual_mov_b32 v133, v37 :: v_dual_mov_b32 v132, v36
	v_dual_mov_b32 v135, v39 :: v_dual_mov_b32 v134, v38
	v_dual_mov_b32 v137, v35 :: v_dual_mov_b32 v136, v34
	.loc	1 118 23 is_stmt 1              ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s21
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v119, s23, v155
	v_add_nc_u32_e32 v120, s23, v153
	v_add_nc_u32_e32 v131, s23, v159
	v_add_nc_u32_e32 v133, s23, v147
	v_add_nc_u32_e32 v134, s23, v173
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v119, v119
	ds_load_u8 v120, v120
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v135, s23, v151
	v_add_nc_u32_e32 v132, s23, v157
	v_add_nc_u32_e32 v136, s23, v149
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v131, v131
	ds_load_u8 v133, v133
	ds_load_u8 v134, v134
	ds_load_u8 v135, v135
	ds_load_u8 v136, v136
	ds_load_u8 v132, v132
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v115, s23, v162
	v_add_nc_u32_e32 v129, s23, v143
	v_add_nc_u32_e32 v116, s23, v161
	v_add_nc_u32_e32 v113, s23, v164
	v_add_nc_u32_e32 v121, s23, v156
	v_add_nc_u32_e32 v9, s23, v172
	v_add_nc_u32_e32 v108, s23, v169
	v_add_nc_u32_e32 v110, s23, v167
	v_add_nc_u32_e32 v111, s23, v166
	v_add_nc_u32_e32 v112, s23, v165
	v_add_nc_u32_e32 v114, s23, v163
	v_add_nc_u32_e32 v117, s23, v160
	v_add_nc_u32_e32 v118, s23, v158
	v_add_nc_u32_e32 v122, s23, v154
	v_add_nc_u32_e32 v123, s23, v152
	v_add_nc_u32_e32 v124, s23, v150
	v_add_nc_u32_e32 v125, s23, v148
	v_add_nc_u32_e32 v126, s23, v146
	v_add_nc_u32_e32 v127, s23, v145
	v_add_nc_u32_e32 v128, s23, v144
	v_add_nc_u32_e32 v130, s23, v142
	v_add_nc_u32_e32 v106, s23, v171
	v_add_nc_u32_e32 v107, s23, v170
	v_add_nc_u32_e32 v109, s23, v168
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v115, v115
	ds_load_u8 v116, v116
	ds_load_u8 v113, v113
	ds_load_u8 v120, v121
	ds_load_u8 v121, v122
	ds_load_u8 v117, v117
	ds_load_u8 v118, v118
	ds_load_u8 v114, v114
	ds_load_u8 v122, v125
	ds_load_u8 v125, v126
	ds_load_u8 v123, v123
	ds_load_u8 v126, v130
	ds_load_u8 v127, v127
	ds_load_u8 v128, v128
	ds_load_u8 v124, v124
	ds_load_u8 v130, v107
	ds_load_u8 v108, v108
	ds_load_u8 v9, v9
	ds_load_u8 v111, v111
	ds_load_u8 v112, v112
	ds_load_u8 v137, v109
	ds_load_u8 v110, v110
	ds_load_u8 v174, v106
	ds_load_u8 v129, v129
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v106, v132, v131, 0xc0c0004
	v_perm_b32 v109, v134, v133, 0xc0c0004
	v_perm_b32 v131, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	v_lshl_or_b32 v107, v106, 16, v119
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v114, v125, v122, 0xc0c0004
	v_lshl_or_b32 v106, v131, 16, v109
	v_perm_b32 v109, v116, v115, 0xc0c0004
	v_perm_b32 v116, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v115, v124, v123, 0xc0c0004
	v_perm_b32 v118, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v117, v108, v130, 0xc0c0004
	v_lshl_or_b32 v109, v113, 16, v109
	v_perm_b32 v113, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v112, v112, v111, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[66:73], v[106:107], v[102:103], v[66:73] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v110, v110, v137, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v174, v9, 0xc0c0004
	v_lshl_or_b32 v108, v116, 16, v113
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v126, v129, 0xc0c0004
	v_lshl_or_b32 v113, v115, 16, v114
	v_lshl_or_b32 v110, v110, 16, v112
	v_lshl_or_b32 v111, v9, 16, v117
	v_wmma_i32_16x16x16_iu4 v[90:97], v[108:109], v[104:105], v[90:97] neg_lo:[1,1,0]
	v_lshl_or_b32 v112, v118, 16, v116
	v_wmma_i32_16x16x16_iu4 v[74:81], v[108:109], v[102:103], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[106:107], v[104:105], v[82:89] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[110:111], v[100:101], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[66:73], v[112:113], v[98:99], v[66:73] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[74:81], v[110:111], v[98:99], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[112:113], v[100:101], v[82:89] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v107, v97
	v_mov_b32_e32 v109, v93
	v_mov_b32_e32 v111, v95
	v_mov_b32_e32 v113, v91
	v_mov_b32_e32 v115, v89
	v_mov_b32_e32 v117, v85
	v_mov_b32_e32 v119, v87
	v_mov_b32_e32 v121, v83
	v_mov_b32_e32 v123, v81
	v_mov_b32_e32 v125, v77
	v_mov_b32_e32 v127, v79
	v_mov_b32_e32 v129, v75
	v_mov_b32_e32 v131, v73
	v_mov_b32_e32 v133, v69
	v_mov_b32_e32 v135, v71
	v_dual_mov_b32 v137, v67 :: v_dual_mov_b32 v106, v96
	v_mov_b32_e32 v108, v92
	v_mov_b32_e32 v110, v94
	v_mov_b32_e32 v112, v90
	v_mov_b32_e32 v114, v88
	v_mov_b32_e32 v116, v84
	v_mov_b32_e32 v118, v86
	v_mov_b32_e32 v120, v82
	v_mov_b32_e32 v122, v80
	v_mov_b32_e32 v124, v76
	v_mov_b32_e32 v126, v78
	v_mov_b32_e32 v128, v74
	v_mov_b32_e32 v130, v72
	v_mov_b32_e32 v132, v68
	v_mov_b32_e32 v134, v70
	v_mov_b32_e32 v136, v66
.LBB0_14:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v41, s1, v155
	v_add_nc_u32_e32 v42, s1, v153
	v_add_nc_u32_e32 v39, s1, v159
	v_add_nc_u32_e32 v45, s1, v147
	v_add_nc_u32_e32 v40, s1, v157
	v_add_nc_u32_e32 v43, s1, v151
	v_add_nc_u32_e32 v44, s1, v149
	v_add_nc_u32_e32 v46, s1, v173
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v41, v41
	ds_load_u8 v42, v42
	ds_load_u8 v39, v39
	ds_load_u8 v45, v45
	ds_load_u8 v46, v46
	ds_load_u8 v43, v43
	ds_load_u8 v44, v44
	ds_load_u8 v40, v40
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v51, s1, v162
	v_add_nc_u32_e32 v52, s1, v161
	v_add_nc_u32_e32 v49, s1, v164
	v_add_nc_u32_e32 v55, s1, v156
	v_add_nc_u32_e32 v9, s1, v172
	v_add_nc_u32_e32 v38, s1, v167
	v_add_nc_u32_e32 v47, s1, v166
	v_add_nc_u32_e32 v48, s1, v165
	v_add_nc_u32_e32 v50, s1, v163
	v_add_nc_u32_e32 v53, s1, v160
	v_add_nc_u32_e32 v54, s1, v158
	v_add_nc_u32_e32 v56, s1, v154
	v_add_nc_u32_e32 v57, s1, v152
	v_add_nc_u32_e32 v58, s1, v150
	v_add_nc_u32_e32 v59, s1, v148
	v_add_nc_u32_e32 v60, s1, v146
	v_add_nc_u32_e32 v61, s1, v145
	v_add_nc_u32_e32 v62, s1, v144
	v_add_nc_u32_e32 v63, s1, v143
	v_add_nc_u32_e32 v64, s1, v142
	v_add_nc_u32_e32 v34, s1, v171
	v_add_nc_u32_e32 v35, s1, v170
	v_add_nc_u32_e32 v36, s1, v169
	v_add_nc_u32_e32 v37, s1, v168
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	v_perm_b32 v40, v46, v45, 0xc0c0004
	v_perm_b32 v42, v44, v43, 0xc0c0004
	ds_load_u8 v43, v51
	ds_load_u8 v44, v52
	ds_load_u8 v45, v49
	ds_load_u8 v46, v55
	ds_load_u8 v49, v56
	ds_load_u8 v51, v53
	ds_load_u8 v52, v54
	ds_load_u8 v50, v50
	ds_load_u8 v53, v59
	ds_load_u8 v54, v60
	ds_load_u8 v55, v57
	ds_load_u8 v56, v63
	ds_load_u8 v57, v64
	ds_load_u8 v59, v61
	ds_load_u8 v60, v62
	ds_load_u8 v58, v58
	ds_load_u8 v61, v35
	ds_load_u8 v62, v36
	ds_load_u8 v9, v9
	ds_load_u8 v48, v48
	ds_load_u8 v63, v37
	ds_load_u8 v38, v38
	ds_load_u8 v64, v34
	ds_load_u8 v47, v47
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v36, v44, v43, 0xc0c0004
	v_lshl_or_b32 v35, v39, 16, v41
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v41, v52, v51, 0xc0c0004
	v_lshl_or_b32 v34, v42, 16, v40
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v37, v50, v45, 0xc0c0004
	v_perm_b32 v40, v49, v46, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v39, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v43, v57, v56, 0xc0c0004
	v_lshl_or_b32 v37, v37, 16, v36
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v44, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v42, v58, v55, 0xc0c0004
	v_lshl_or_b32 v36, v41, 16, v40
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v40, v62, v61, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[10:17], v[34:35], v[102:103], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[34:35], v[104:105], v[18:25] neg_lo:[1,1,0]
	v_lshl_or_b32 v39, v42, 16, v39
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v46, v38, v63, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v64, v9, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v48, v47, 0xc0c0004
	v_lshl_or_b32 v38, v44, 16, v43
	v_wmma_i32_16x16x16_iu4 v[26:33], v[36:37], v[102:103], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[36:37], v[104:105], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v41, v9, 16, v40
	v_lshl_or_b32 v40, v46, 16, v45
	v_wmma_i32_16x16x16_iu4 v[10:17], v[38:39], v[98:99], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[38:39], v[100:101], v[18:25] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[40:41], v[98:99], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[40:41], v[100:101], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_17
.LBB0_16:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v107, v65 :: v_dual_mov_b32 v106, v64
	v_dual_mov_b32 v109, v61 :: v_dual_mov_b32 v108, v60
	v_dual_mov_b32 v111, v63 :: v_dual_mov_b32 v110, v62
	v_dual_mov_b32 v113, v59 :: v_dual_mov_b32 v112, v58
	v_dual_mov_b32 v115, v57 :: v_dual_mov_b32 v114, v56
	v_dual_mov_b32 v117, v53 :: v_dual_mov_b32 v116, v52
	v_dual_mov_b32 v119, v55 :: v_dual_mov_b32 v118, v54
	v_dual_mov_b32 v121, v51 :: v_dual_mov_b32 v120, v50
	v_dual_mov_b32 v123, v49 :: v_dual_mov_b32 v122, v48
	v_dual_mov_b32 v125, v45 :: v_dual_mov_b32 v124, v44
	v_dual_mov_b32 v127, v47 :: v_dual_mov_b32 v126, v46
	v_dual_mov_b32 v129, v43 :: v_dual_mov_b32 v128, v42
	v_dual_mov_b32 v131, v41 :: v_dual_mov_b32 v130, v40
	v_dual_mov_b32 v133, v37 :: v_dual_mov_b32 v132, v36
	v_dual_mov_b32 v135, v39 :: v_dual_mov_b32 v134, v38
	v_dual_mov_b32 v137, v35 :: v_dual_mov_b32 v136, v34
.LBB0_17:
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v9, 3, v141
	v_lshrrev_b32_e32 v34, 4, v0
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_and_b32 s17, s5, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v59, v9, v139
	v_and_or_b32 v62, v34, 1, v140
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_mov_b32 s16, s4
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	s_add_i32 s0, s14, s15
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v66, v25
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v52, 64, v59
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v34, s20, v59
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v36, 2, v62
	v_or_b32_e32 v9, 6, v62
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v38, s14, v62
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v35, s20, v52
	.loc	1 128 14 is_stmt 0              ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v34, 1, v34
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v37, 4, v62
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v39, s14, v36
	v_or_b32_e32 v41, s14, v9
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v35, 1, v35
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v64, 10, v62
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v40, s14, v37
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v36, s0, v36, 1
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_clause 0x1
	buffer_load_u16 v77, v34, s[16:19], 0 offen
	buffer_load_u16 v78, v35, s[16:19], 0 offen
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v34, 1, v38
	v_lshlrev_b32_e32 v35, 1, v39
	s_and_b32 s17, s7, 0xffff
	s_mov_b32 s16, s6
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v38, s0, v62, 1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v65, 8, v62
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_clause 0x1
	buffer_load_u16 v90, v34, s[16:19], 0 offen
	buffer_load_u16 v91, v35, s[16:19], 0 offen
	v_lshlrev_b32_e32 v35, 1, v41
	v_lshlrev_b32_e32 v34, 1, v40
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v9, s0, v9, 1
	s_clause 0x1
	buffer_load_u16 v92, v38, s[16:19], 0 offen
	buffer_load_u16 v93, v36, s[16:19], 0 offen
	v_add_lshl_u32 v36, s0, v37, 1
	v_add_lshl_u32 v38, s0, v64, 1
	v_add_lshl_u32 v37, s0, v65, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_clause 0x3
	buffer_load_u16 v94, v35, s[16:19], 0 offen
	buffer_load_u16 v95, v34, s[16:19], 0 offen
	buffer_load_u16 v96, v9, s[16:19], 0 offen
	buffer_load_u16 v97, v36, s[16:19], 0 offen
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt lgkmcnt(0)
	s_clause 0x1
	buffer_load_u16 v98, v38, s[16:19], 0 offen
	buffer_load_u16 v99, v37, s[16:19], 0 offen
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v25, 12, v62
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v87, v13
	v_cvt_f32_i32_e32 v13, v31
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v31, 14, v62
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v85, v12
	v_cvt_f32_i32_e32 v84, v14
	v_cvt_f32_i32_e32 v86, v15
	v_cvt_f32_i32_e32 v60, v16
	v_cvt_f32_i32_e32 v61, v17
	v_cvt_f32_i32_e32 v12, v30
	v_cvt_f32_i32_e32 v100, v18
	v_cvt_f32_i32_e32 v101, v19
	v_cvt_f32_i32_e32 v102, v20
	v_cvt_f32_i32_e32 v30, v23
	v_cvt_f32_i32_e32 v17, v5
	v_cvt_f32_i32_e32 v18, v6
	v_cvt_f32_i32_e32 v6, v7
	v_cvt_f32_i32_e32 v7, v8
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v5, 0x4e, v62
	v_or_b32_e32 v8, 0x4c, v62
	v_or_b32_e32 v14, 0x4a, v62
	v_or_b32_e32 v15, 0x48, v62
	v_or_b32_e32 v16, 0x46, v62
	v_or_b32_e32 v19, 0x44, v62
	v_or_b32_e32 v20, 0x42, v62
	v_or_b32_e32 v23, 64, v62
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v88, v10
	v_cvt_f32_i32_e32 v10, v32
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v32, s14, v65
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v89, v11
	v_cvt_f32_i32_e32 v11, v33
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v33, s14, v64
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v49, v26
	v_cvt_f32_i32_e32 v26, v28
	v_cvt_f32_i32_e32 v28, v4
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v4, s15, v59
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v59, s14, v25
	v_or_b32_e32 v62, s14, v31
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v35, v106
	v_cvt_f32_i32_e32 v36, v107
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v64, s14, v23
	v_or_b32_e32 v65, s14, v20
	v_or_b32_e32 v70, s14, v19
	v_or_b32_e32 v71, s14, v16
	v_or_b32_e32 v72, s14, v15
	v_or_b32_e32 v73, s14, v14
	v_or_b32_e32 v106, s14, v8
	v_or_b32_e32 v107, s14, v5
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v40, v111
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v111, s0, v15, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v15, 1, v32
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v37, v110
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v110, s0, v16, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v16, 1, v33
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v44, v109
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v109, s0, v23, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v23, 1, v59
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v41, v108
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v108, s0, v25, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v25, 1, v62
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v45, v112
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v31, s0, v31, 1
	v_add_lshl_u32 v20, s0, v20, 1
	v_add_lshl_u32 v19, s0, v19, 1
	v_add_lshl_u32 v112, s0, v5, 1
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v5, s15, v52
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v32, 1, v64
	v_lshlrev_b32_e32 v33, 1, v65
	v_lshlrev_b32_e32 v52, 1, v70
	v_lshlrev_b32_e32 v59, 1, v71
	v_lshlrev_b32_e32 v62, 1, v72
	v_lshlrev_b32_e32 v70, 1, v73
	v_lshlrev_b32_e32 v71, 1, v106
	v_lshlrev_b32_e32 v106, 1, v107
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v48, v113
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v14, s0, v14, 1
	v_add_lshl_u32 v8, s0, v8, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_clause 0x15
	buffer_load_u16 v107, v15, s[16:19], 0 offen
	buffer_load_u16 v113, v16, s[16:19], 0 offen
	buffer_load_u16 v72, v23, s[16:19], 0 offen
	buffer_load_u16 v73, v25, s[16:19], 0 offen
	buffer_load_u16 v64, v32, s[16:19], 0 offen
	buffer_load_u16 v65, v33, s[16:19], 0 offen
	buffer_load_u16 v33, v52, s[16:19], 0 offen
	buffer_load_u16 v52, v59, s[16:19], 0 offen
	buffer_load_u16 v23, v62, s[16:19], 0 offen
	buffer_load_u16 v25, v70, s[16:19], 0 offen
	buffer_load_u16 v15, v71, s[16:19], 0 offen
	buffer_load_u16 v16, v106, s[16:19], 0 offen
	buffer_load_u16 v106, v108, s[16:19], 0 offen
	buffer_load_u16 v108, v31, s[16:19], 0 offen
	buffer_load_u16 v70, v109, s[16:19], 0 offen
	buffer_load_u16 v71, v20, s[16:19], 0 offen
	buffer_load_u16 v59, v19, s[16:19], 0 offen
	buffer_load_u16 v62, v110, s[16:19], 0 offen
	buffer_load_u16 v31, v111, s[16:19], 0 offen
	buffer_load_u16 v32, v14, s[16:19], 0 offen
	buffer_load_u16 v19, v8, s[16:19], 0 offen
	buffer_load_u16 v20, v112, s[16:19], 0 offen
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v83, v121
	v_cvt_f32_i32_e32 v76, v136
	v_cvt_f32_i32_e32 v79, v137
	v_cvt_f32_i32_e32 v82, v120
	v_cvt_f32_i32_e32 v80, v116
	v_cvt_f32_i32_e32 v75, v133
	v_cvt_f32_i32_e32 v81, v117
	v_cvt_f32_i32_e32 v58, v115
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v50, v27
	v_cvt_f32_i32_e32 v27, v29
	v_cvt_f32_i32_e32 v103, v21
	v_cvt_f32_i32_e32 v29, v22
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v74, v132
	v_cvt_f32_i32_e32 v55, v114
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s1, s20, s15
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v51, v1
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_add_i32 s1, s1, s14
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v39, v127
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_and_or_b32 v1, v138, 56, s1
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v53, v118
	v_cvt_f32_i32_e32 v38, v126
	v_cvt_f32_i32_e32 v34, v122
	v_cvt_f32_i32_e32 v46, v128
	v_cvt_f32_i32_e32 v47, v129
	v_cvt_f32_i32_e32 v43, v124
	v_cvt_f32_i32_e32 v56, v131
	v_cvt_f32_i32_e32 v68, v135
	v_cvt_f32_i32_e32 v57, v130
	v_cvt_f32_i32_e32 v69, v119
	v_cvt_f32_i32_e32 v42, v125
	v_cvt_f32_i32_e32 v9, v123
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v54, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.h, 0
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v63, v24
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v67, v134
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v22, v3
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_or_b32_e32 v3, 64, v1
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v21.h, v2.h
	v_mov_b16_e32 v24.h, v2.h
	v_mov_b16_e32 v104.h, v2.h
	v_mov_b16_e32 v105.h, v2.h
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
	v_and_b32_e32 v0, 16, v0
	.loc	1 128 14 is_stmt 1              ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(33)
	v_lshlrev_b32_e32 v14, 16, v77
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v8, 16, v78
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v78, 16, v90
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v77, 16, v91
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v91, 16, v92
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v90, 16, v93
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v93, 16, v95
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v95, 16, v97
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v92, 16, v94
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v97, 16, v99
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v99, v8, v77 :: v_dual_lshlrev_b32 v94, 16, v96
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v96, 16, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v116, v8, v97 :: v_dual_mul_f32 v83, v99, v83
	v_mul_f32_e32 v97, v14, v97
	v_mul_f32_e32 v109, v8, v91
	v_mul_f32_e32 v117, v8, v96
	v_mul_f32_e32 v96, v14, v96
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v77, v14, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v99, v109, v100 :: v_dual_mul_f32 v98, v8, v78
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v78, v14, v78 :: v_dual_mul_f32 v77, v77, v79
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v110, v8, v90
	v_mul_f32_e32 v90, v14, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v82, v98, v82
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v91, v14, v91 :: v_dual_mul_f32 v86, v96, v86
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v98, v110, v101
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v111, v8, v93
	v_mul_f32_e32 v93, v14, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v79, v91, v88
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v112, v8, v92
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v91, v116, v29
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v29, 0xbfb8aa3b, v99 :: v_dual_mul_f32 v76, v78, v76
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v114, v8, v95
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v81, v112, v81
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v115, v8, v94
	v_mul_f32_e32 v95, v14, v95
	v_mul_f32_e32 v94, v14, v94
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v78, v90, v89
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v29
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v88, v115, v103
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v92, v14, v92
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v80, v111, v80 :: v_dual_mul_f32 v89, v114, v102
	v_dual_mul_f32 v74, v93, v74 :: v_dual_mul_f32 v87, v94, v87
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v85, v95, v85 :: v_dual_mul_f32 v90, v117, v30
	v_dual_mul_f32 v84, v97, v84 :: v_dual_mul_f32 v93, 0xbfb8aa3b, v78
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v30, 0xbfb8aa3b, v98 :: v_dual_mul_f32 v95, 0xbfb8aa3b, v88
	v_cndmask_b32_e64 v29, 0, 0x42800000, s0
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v75, v92, v75
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v92, 0xbfb8aa3b, v79 :: v_dual_mul_f32 v101, 0xbfb8aa3b, v90
	v_dual_mul_f32 v94, 0xbfb8aa3b, v89 :: v_dual_mul_f32 v97, 0xbfb8aa3b, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v102, 0xbfb8aa3b, v84 :: v_dual_fmac_f32 v29, 0xbfb8aa3b, v99
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v93
	v_dual_mul_f32 v96, 0xbfb8aa3b, v85 :: v_dual_mul_f32 v103, 0xbfb8aa3b, v86
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v92
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v93, 0, 0x42800000, s1
	v_mul_f32_e32 v100, 0xbfb8aa3b, v91
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v95
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v94
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v97
	v_exp_f32_e32 v29, v29
	v_cndmask_b32_e64 v92, 0, 0x42800000, s2
	v_cndmask_b32_e64 v95, 0, 0x42800000, s3
	v_cndmask_b32_e64 v94, 0, 0x42800000, s4
	v_cndmask_b32_e64 v97, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v96
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v101
	v_dual_fmac_f32 v30, 0xbfb8aa3b, v98 :: v_dual_fmac_f32 v95, 0xbfb8aa3b, v88
	v_cndmask_b32_e64 v110, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v93, 0xbfb8aa3b, v78
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v100
	v_cndmask_b32_e64 v96, 0, 0x42800000, s6
	v_cndmask_b32_e64 v101, 0, 0x42800000, s7
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v103
	v_fmac_f32_e32 v92, 0xbfb8aa3b, v79
	v_cndmask_b32_e64 v100, 0, 0x42800000, s8
	v_dual_fmac_f32 v94, 0xbfb8aa3b, v89 :: v_dual_fmac_f32 v97, 0xbfb8aa3b, v87
	v_exp_f32_e32 v30, v30
	v_exp_f32_e32 v93, v93
	v_ldexp_f32 v29, v29, v110
	v_cndmask_b32_e64 v103, 0, 0x42800000, s9
	v_cndmask_b32_e64 v109, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v111, 0, 0xffffffc0, s1
	v_dual_fmac_f32 v96, 0xbfb8aa3b, v85 :: v_dual_fmac_f32 v101, 0xbfb8aa3b, v90
	v_dual_fmac_f32 v100, 0xbfb8aa3b, v91 :: v_dual_add_f32 v29, 1.0, v29
	v_exp_f32_e32 v92, v92
	v_exp_f32_e32 v95, v95
	v_exp_f32_e32 v97, v97
	v_exp_f32_e32 v94, v94
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v102
	v_cndmask_b32_e64 v112, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v114, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v116, 0, 0xffffffc0, s5
	v_fmac_f32_e32 v103, 0xbfb8aa3b, v86
	v_exp_f32_e32 v96, v96
	v_ldexp_f32 v30, v30, v109
	v_ldexp_f32 v93, v93, v111
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v111, null, v29, v29, v99
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v115, 0, 0xffffffc0, s4
	v_exp_f32_e32 v101, v101
	v_cndmask_b32_e64 v102, 0, 0x42800000, s10
	v_cndmask_b32_e64 v117, 0, 0xffffffc0, s6
	v_ldexp_f32 v92, v92, v112
	v_ldexp_f32 v95, v95, v114
	v_ldexp_f32 v97, v97, v116
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v127, v111
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v118, 0, 0xffffffc0, s7
	v_ldexp_f32 v94, v94, v115
	v_dual_fmac_f32 v102, 0xbfb8aa3b, v84 :: v_dual_add_f32 v93, 1.0, v93
	v_ldexp_f32 v96, v96, v117
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v92, 1.0, v92 :: v_dual_add_f32 v97, 1.0, v97
	v_add_f32_e32 v95, 1.0, v95
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v109, null, v30, v30, v98
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v101, v101, v118
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v94, 1.0, v94
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v114, null, v93, v93, v78
	v_div_scale_f32 v116, null, v92, v92, v79
	v_div_scale_f32 v122, null, v97, v97, v87
	v_rcp_f32_e32 v126, v109
	v_fma_f32 v136, -v111, v127, 1.0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v96, 1.0, v96 :: v_dual_add_f32 v101, 1.0, v101
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v120, null, v94, v94, v89
	v_rcp_f32_e32 v128, v114
	v_div_scale_f32 v118, null, v95, v95, v88
	v_rcp_f32_e32 v129, v116
	v_rcp_f32_e32 v132, v122
	v_fmac_f32_e32 v127, v136, v127
	v_div_scale_f32 v124, null, v96, v96, v85
	v_rcp_f32_e32 v131, v120
	v_rcp_f32_e32 v130, v118
	v_fma_f32 v135, -v109, v126, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v133, v124
	v_fma_f32 v137, -v114, v128, 1.0
	v_div_scale_f32 v110, vcc_lo, v98, v30, v98
	v_fma_f32 v138, -v116, v129, 1.0
	v_fma_f32 v141, -v122, v132, 1.0
	v_fmac_f32_e32 v126, v135, v126
	v_div_scale_f32 v112, s0, v99, v29, v99
	v_fma_f32 v140, -v120, v131, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v100, v100
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v115, s1, v78, v93, v78
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v128, v137, v128 :: v_dual_fmac_f32 v131, v140, v131
	v_fma_f32 v139, -v118, v130, 1.0
	v_fma_f32 v142, -v124, v133, 1.0
	v_dual_fmac_f32 v129, v138, v129 :: v_dual_fmac_f32 v132, v141, v132
	v_dual_mul_f32 v135, v110, v126 :: v_dual_mul_f32 v136, v112, v127
	v_mul_f32_e32 v137, v115, v128
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v119, 0, 0xffffffc0, s8
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v125, s6, v85, v96, v85
	v_dual_fmac_f32 v130, v139, v130 :: v_dual_fmac_f32 v133, v142, v133
	v_fma_f32 v143, -v109, v135, v110
	v_div_scale_f32 v117, s2, v79, v92, v79
	v_fma_f32 v144, -v111, v136, v112
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v100, v100, v119
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v119, s3, v88, v95, v88
	v_fma_f32 v145, -v114, v137, v115
	v_div_scale_f32 v121, s4, v89, v94, v89
	v_dual_mul_f32 v142, v125, v133 :: v_dual_fmac_f32 v135, v143, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v138, v117, v129 :: v_dual_mul_f32 v139, v119, v130
	v_div_scale_f32 v123, s5, v87, v97, v87
	v_dual_fmac_f32 v136, v144, v127 :: v_dual_fmac_f32 v137, v145, v128
	v_dual_mul_f32 v140, v121, v131 :: v_dual_mul_f32 v141, v123, v132
	v_fma_f32 v109, -v109, v135, v110
	v_fma_f32 v146, -v116, v138, v117
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v110, -v111, v136, v112
	v_fma_f32 v147, -v118, v139, v119
	v_fma_f32 v111, -v114, v137, v115
	v_fma_f32 v148, -v120, v140, v121
	v_div_fmas_f32 v109, v109, v126, v135
	s_mov_b32 vcc_lo, s0
	v_dual_fmac_f32 v138, v146, v129 :: v_dual_fmac_f32 v139, v147, v130
	v_fma_f32 v149, -v122, v141, v123
	v_div_fmas_f32 v110, v110, v127, v136
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v150, -v124, v142, v125
	v_div_fmas_f32 v111, v111, v128, v137
	v_dual_fmac_f32 v140, v148, v131 :: v_dual_fmac_f32 v141, v149, v132
	v_fma_f32 v112, -v116, v138, v117
	v_fma_f32 v114, -v118, v139, v119
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v78, v111, v93, v78
	v_fmac_f32_e32 v142, v150, v133
	v_fma_f32 v115, -v120, v140, v121
	v_div_fixup_f32 v30, v109, v30, v98
	v_div_fmas_f32 v98, v112, v129, v138
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v116, -v122, v141, v123
	v_div_fixup_f32 v29, v110, v29, v99
	v_div_fmas_f32 v99, v114, v130, v139
	s_mov_b32 vcc_lo, s4
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v77, v77, v78
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v117, -v124, v142, v125
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v30, v83, v30 :: v_dual_mul_f32 v29, v82, v29
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v83, v115, v131, v140
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v79, v98, v92, v79
	v_div_fmas_f32 v82, v116, v132, v141
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v88, v99, v95, v88
	v_div_fmas_f32 v78, v117, v133, v142
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v76, v76, v79
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v83, v83, v94, v89
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v24.l, v29.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v81, v81, v88
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v78, v78, v96, v85
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v21.l, v76.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v79, v82, v97, v87
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v77.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v80, v80, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v74, v74, v78 :: v_dual_and_b32 v21, 1, v21
	v_dual_mul_f32 v75, v75, v79 :: v_dual_and_b32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v79, 1, v2
	v_mov_b16_e32 v104.l, v74.h
	v_mov_b16_e32 v2.l, v30.h
	v_cmp_o_f32_e64 s2, v76, v76
	v_add3_u32 v21, v76, v21, 0x7fff
	v_cmp_o_f32_e64 s0, v29, v29
	v_and_b32_e32 v76, 1, v104
	v_cmp_o_f32_e64 s1, v77, v77
	v_add3_u32 v24, v29, v24, 0x7fff
	v_add3_u32 v29, v77, v79, 0x7fff
	v_and_b32_e32 v77, 1, v2
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v103, v103
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s4, v74, v74
	v_add3_u32 v74, v74, v76, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v76, 1.0, v100
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v30, v30, v77, 0x7fff
	v_mov_b16_e32 v2.l, v75.h
	v_cndmask_b16 v30.l, 0x7fff, v74.h, s4
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v21.l, 0x7fff, v24.h, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v134, null, v101, v101, v90
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v24, 1, v2
	v_mov_b16_e32 v2.l, v81.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v74, v103, v74
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v75, v75
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v89, 16, v107
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v24, v75, v24, 0x7fff
	v_and_b32_e32 v75, 1, v2
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v74, 1.0, v74
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v105.l, v80.h
	v_cndmask_b16 v29.l, 0x7fff, v21.h, s2
	v_cndmask_b16 v21.h, 0x7fff, v30.h, vcc_lo
	v_cndmask_b16 v30.h, 0x7fff, v24.h, s3
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v94, v8, v89
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v24, v81, v75, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v75, v134
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v78, 1, v105
	v_cmp_o_f32_e32 vcc_lo, v81, v81
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v79, null, v76, v76, v91
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v102, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v77, v80, v78, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v24.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v80, v80
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v81, v79
	v_fma_f32 v80, -v134, v75, 1.0
	v_div_scale_f32 v82, null, v74, v74, v86
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, s10
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v75, v80, v75
	v_rcp_f32_e32 v80, v82
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v24.l, 0x7fff, v77.h, vcc_lo
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v78, v102, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v85, -v79, v81, 1.0
	v_div_scale_f32 v83, vcc_lo, v90, v101, v90
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v53, v94, v53 :: v_dual_add_f32 v78, 1.0, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v81, v85, v81
	v_div_scale_f32 v85, s0, v91, v76, v91
	v_fma_f32 v93, -v82, v80, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v77, null, v78, v78, v84
	v_mul_f32_e32 v97, v85, v81
	s_waitcnt vmcnt(18)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v80, v93, v80 :: v_dual_lshlrev_b32 v73, 16, v73
	v_div_scale_f32 v93, s1, v86, v74, v86
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v88, 16, v113
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v87, v77
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v72, 16, v72
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v99, v93, v80
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v64, 16, v64
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v98, v8, v88
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_waitcnt vmcnt(16)
	v_dual_mul_f32 v92, v83, v75 :: v_dual_lshlrev_b32 v65, 16, v65
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v52, 16, v52
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v69, v98, v69
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v95, -v134, v92, v83
	v_fma_f32 v96, -v77, v87, 1.0
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v32, 16, v32
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v92, v95, v75
	v_fma_f32 v95, -v79, v97, v85
	v_fmac_f32_e32 v87, v96, v87
	v_div_scale_f32 v96, s2, v84, v78, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v134, v92, v83
	v_fmac_f32_e32 v97, v95, v81
	v_fma_f32 v95, -v82, v99, v93
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v100, v96, v87
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v75, v83, v75, v92
	v_fma_f32 v79, -v79, v97, v85
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v99, v95, v80
	v_fma_f32 v98, -v77, v100, v96
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v83, v14, v88
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v79, v79, v81, v97
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v81, v14, v89
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v82, -v82, v99, v93
	s_mov_b32 vcc_lo, s1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v68, v83, v68
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v75, v75, v101, v90
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v67, v81, v67
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v100, v98, v87
	v_div_fmas_f32 v80, v82, v80, v99
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v76, v79, v76, v91
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v69, v69, v75
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v77, -v77, v100, v96
	v_div_fixup_f32 v74, v80, v74, v86
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v80, 16, v108
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v81.h, v2.h
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v77, v77, v87, v100
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v68, v68, v74 :: v_dual_lshlrev_b32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v77, v77, v78, v84
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v68.h
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v74, v8, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v68, v68
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v67, v67, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v77, 1, v2
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v66, v74, v66
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v74, 16, v106
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v76, v53, v76
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v53.l, v67.h
	v_mov_b16_e32 v53.h, v2.h
	v_add3_u32 v77, v68, v77, 0x7fff
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v75, v8, v74
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v67, v67
	v_mov_b16_e32 v81.l, v76.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v78, 0xbfb8aa3b, v66 :: v_dual_and_b32 v53, 1, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v63, v75, v63
	.loc	1 134 25 is_stmt 0              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v75, v14, v80
	v_mul_f32_e32 v74, v14, v74
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v68, v67, v53, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v78
	v_mul_f32_e32 v79, 0xbfb8aa3b, v63
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v61, v75, v61
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v53.h, 0x7fff, v77.h, s0
	v_cndmask_b16 v53.l, 0x7fff, v68.h, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v79
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v81, 1, v81
	v_mov_b16_e32 v2.l, v69.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v66
	v_cndmask_b32_e64 v77, 0, 0x42800000, s0
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v60, v74, v60
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v81, v76, v81, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v75, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v77, 0xbfb8aa3b, v63 :: v_dual_mul_f32 v78, 0xbfb8aa3b, v60
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v67, v75, v67
	v_mul_f32_e32 v74, 0xbfb8aa3b, v61
	v_exp_f32_e32 v75, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v77, 0, 0x42800000, s2
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, s2
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v74
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v78, null, v67, v67, v66
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v68, v75, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v75, v77
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v79, v78
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v61
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v85, vcc_lo, v66, v67, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v74, v74
	v_ldexp_f32 v75, v75, v80
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v80, -v78, v79, 1.0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v75, 1.0, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v79, v80, v79
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v74, v74, v77
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v77, null, v68, v68, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v80, null, v75, v75, v60
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v74, 1.0, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v82, v77
	v_dual_mul_f32 v89, v85, v79 :: v_dual_and_b32 v88, 1, v2
	v_rcp_f32_e32 v87, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v83, null, v74, v74, v61
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v88, v69, v88, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v91, -v78, v89, v85
	v_rcp_f32_e32 v84, v83
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v86, -v77, v82, 1.0
	v_fma_f32 v92, -v80, v87, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v86, v82
	v_div_scale_f32 v86, s0, v63, v68, v63
	v_fmac_f32_e32 v87, v92, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v83, v84, 1.0
	v_div_scale_f32 v92, s2, v60, v75, v60
	v_mul_f32_e32 v93, v86, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v90, v84
	v_div_scale_f32 v90, s1, v61, v74, v61
	v_fmac_f32_e32 v89, v91, v79
	v_fma_f32 v91, -v77, v93, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v94, v90, v84
	v_fma_f32 v78, -v78, v89, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v93, v91, v82
	v_fma_f32 v85, -v83, v94, v90
	v_mul_f32_e32 v95, v92, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v78, v78, v79, v89
	v_fma_f32 v77, -v77, v93, v86
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v94, v85, v84
	v_fma_f32 v91, -v80, v95, v92
	v_div_fixup_f32 v66, v78, v67, v66
	v_div_fmas_f32 v77, v77, v82, v93
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v79, -v83, v94, v90
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v82, v14, v72
	v_mul_f32_e32 v83, v14, v73
	v_mul_f32_e32 v73, v8, v73
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v76, v76
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v79, v79, v84, v94
	s_mov_b32 vcc_lo, s2
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v57, v82, v57 :: v_dual_mul_f32 v58, v73, v58
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v63, v77, v68, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v61, v79, v74, v61
	v_dual_fmac_f32 v95, v91, v87 :: v_dual_mul_f32 v82, v8, v65
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v58, v58, v66
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v78, v8, v64
	v_mul_f32_e32 v64, v14, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v80, -v80, v95, v92
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v48, v82, v48
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v65, v14, v65
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v45, v78, v45 :: v_dual_mul_f32 v46, v64, v46
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26 is_stmt 1              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v80, v80, v87, v95
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v69, v83, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v56.l, 0x7fff, v81.h, s0
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v47, v65, v47
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v60, v80, v75, v60
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v56.h, 0x7fff, v88.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v57, v57, v60
	v_dual_mul_f32 v60, v69, v61 :: v_dual_mul_f32 v61, v8, v72
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v69.h, v2.h
	v_mov_b16_e32 v69.l, v57.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v2.l, v60.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v55, v61, v55
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v61, 16, v71
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	v_and_b32_e32 v68, 1, v69
	v_and_b32_e32 v69, 1, v2
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v55, v55, v63
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v67, v8, v61
	v_mul_f32_e32 v61, v14, v61
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v63, v57, v68, 0x7fff
	v_add3_u32 v68, v60, v69, 0x7fff
	v_cmp_o_f32_e64 s0, v57, v57
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v57, 16, v70
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v50, v61, v50
	v_mul_f32_e32 v60, v67, v54
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v54.h, 0x7fff, v68.h, vcc_lo
	v_cndmask_b16 v54.l, 0x7fff, v63.h, s0
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v63, v8, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v57, v14, v57 :: v_dual_mul_f32 v66, 0xbfb8aa3b, v60
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v58.h
	v_mov_b16_e32 v67.h, v2.h
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v51, v63, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v57, v57, v49
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_mul_f32_e32 v49, 0xbfb8aa3b, v50
	v_dual_mul_f32 v68, 0xbfb8aa3b, v51 :: v_dual_and_b32 v63, 1, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v69, 0xbfb8aa3b, v57
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v63, v58, v63, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v68
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v60
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v69
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v61, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, s0
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v58, v58
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v66, 0xbfb8aa3b, v51 :: v_dual_fmac_f32 v49, 0xbfb8aa3b, v50
	v_ldexp_f32 v61, v61, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v66, v66
	v_cndmask_b32_e64 v68, 0, 0x42800000, s1
	v_exp_f32_e32 v70, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v71, null, v61, v61, v60
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v49, v66, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v66, v68
	v_ldexp_f32 v58, v70, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v68, v71
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v69, 1.0, v49
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v49.h, 0x7fff, v63.h, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v66, v66, v72
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v67.l, v55.h
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v67, 1, v67
	v_add3_u32 v67, v55, v67, 0x7fff
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v55, 1.0, v58
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v58, -v71, v68, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v49.l, 0x7fff, v67.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v73, vcc_lo, v60, v61, v60
	v_fmac_f32_e32 v68, v58, v68
	v_div_scale_f32 v72, null, v55, v55, v50
	v_div_scale_f32 v58, null, v66, v66, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v76, v73, v68
	v_div_scale_f32 v63, null, v69, v69, v51
	v_rcp_f32_e32 v67, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v75, v58
	v_fma_f32 v79, -v71, v76, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v70, v63
	v_fmac_f32_e32 v76, v79, v68
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v77, -v72, v67, 1.0
	v_fma_f32 v80, -v58, v75, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v71, -v71, v76, v73
	v_fma_f32 v74, -v63, v70, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v67, v77, v67
	v_div_scale_f32 v77, s1, v50, v55, v50
	v_fmac_f32_e32 v70, v74, v70
	v_div_scale_f32 v74, s0, v51, v69, v51
	v_fmac_f32_e32 v75, v80, v75
	v_div_scale_f32 v80, s2, v57, v66, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v81, v74, v70
	v_mul_f32_e32 v83, v77, v67
	v_div_fmas_f32 v68, v71, v68, v76
	v_mul_f32_e32 v84, v80, v75
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v79, -v63, v81, v74
	v_fma_f32 v73, -v72, v83, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v79, v70
	v_fma_f32 v79, -v58, v84, v80
	v_fmac_f32_e32 v83, v73, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v63, -v63, v81, v74
	v_fmac_f32_e32 v84, v79, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v63, v63, v70, v81
	v_fma_f32 v70, -v72, v83, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v58, -v58, v84, v80
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v67, v70, v67, v83
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v58, v58, v75, v84
	v_div_fixup_f32 v57, v58, v66, v57
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v46, v46, v57
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v50, v67, v55, v50
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v55, 16, v62
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v57, v68, v61, v60
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v61.h, v2.h
	v_cmp_o_f32_e64 s1, v46, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v47, v47, v50 :: v_dual_mul_f32 v50, v8, v55
	v_mul_f32_e32 v48, v48, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v47.h
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v28, v50, v28
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v51, v63, v69, v51
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v50.l, v46.h
	v_mov_b16_e32 v50.h, v2.h
	v_and_b32_e32 v58, 1, v2
	v_mov_b16_e32 v2.l, v48.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v45, v45, v51
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v51, 16, v59
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v59, 0xbfb8aa3b, v28 :: v_dual_and_b32 v50, 1, v50
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v58, v47, v58, 0x7fff
	v_cmp_o_f32_e64 s0, v47, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v57, v8, v51
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v47, v46, v50, 0x7fff
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v50, v14, v55
	v_mul_f32_e32 v51, v14, v51
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v57, v57, v22
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v22.h, 0x7fff, v58.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v27, v50, v27 :: v_dual_mul_f32 v26, v51, v26
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v55, 0xbfb8aa3b, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v28
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v51, 0xbfb8aa3b, v27 :: v_dual_mul_f32 v58, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v55
	v_exp_f32_e32 v50, v59
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v22.l, 0x7fff, v47.h, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v58
	v_cndmask_b32_e64 v55, 0, 0x42800000, s0
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v68, 1, v2
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v57
	v_ldexp_f32 v46, v50, v46
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v61.l, v45.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v68, v48, v68, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v50, v55
	v_cndmask_b32_e64 v55, 0, 0x42800000, s2
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v51, v51
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v61, 1, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v26
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v58, null, v46, v46, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v61, v45, v61, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v47, v50, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v50, v55
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v59, v58
	v_div_scale_f32 v65, vcc_lo, v28, v46, v28
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v51, v51, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v55, null, v47, v47, v57
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v51, 1.0, v51
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v50, v50, v60
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v60, -v58, v59, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v62, v55
	v_div_scale_f32 v63, null, v51, v51, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v50, 1.0, v50 :: v_dual_fmac_f32 v59, v60, v59
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v64, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v60, null, v50, v50, v26
	v_fma_f32 v66, -v55, v62, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v69, v65, v59
	v_rcp_f32_e32 v67, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v62, v66, v62
	v_fma_f32 v70, -v63, v64, 1.0
	v_div_scale_f32 v66, s0, v57, v47, v57
	v_fma_f32 v71, -v58, v69, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v64, v70, v64
	v_div_scale_f32 v70, s1, v27, v51, v27
	v_mul_f32_e32 v73, v66, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v69, v71, v59
	v_fma_f32 v72, -v60, v67, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v74, v70, v64
	v_fma_f32 v71, -v55, v73, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v58, v69, v65
	v_fmac_f32_e32 v67, v72, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v65, -v63, v74, v70
	v_div_scale_f32 v72, s2, v26, v50, v26
	v_fmac_f32_e32 v73, v71, v62
	v_div_fmas_f32 v58, v58, v59, v69
	v_dual_fmac_f32 v74, v65, v64 :: v_dual_mul_f32 v75, v72, v67
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v55, -v55, v73, v66
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v45, v45
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v59, -v63, v74, v70
	v_fma_f32 v71, -v60, v75, v72
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v63, v14, v52
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v55, v55, v62, v73
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v28, v58, v46, v28
	v_div_fmas_f32 v59, v59, v64, v74
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v64, v8, v25
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s2
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v42, v63, v42 :: v_dual_mul_f32 v25, v14, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v27, v59, v51, v27
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v40, v64, v40 :: v_dual_fmac_f32 v75, v71, v67
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v62, v14, v33
	v_mul_f32_e32 v33, v8, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19 is_stmt 1              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v27, v42, v27
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v60, -v60, v75, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v33, v33, v41
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v27.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v60, v60, v67, v75
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v48, v8, v52
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v41, v55, v47, v57
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v47, v8, v32
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v45, v60, v50, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.l, 0x7fff, v61.h, s0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v61, v8, v23
	v_dual_mul_f32 v23, v14, v23 :: v_dual_mul_f32 v42, v48, v44
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v44.h, v2.h
	v_cndmask_b16 v26.h, 0x7fff, v68.h, vcc_lo
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v33, v33, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v23, v23, v38
	v_dual_mul_f32 v43, v62, v43 :: v_dual_mul_f32 v18, v47, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v28, v42, v28
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v32, v14, v32 :: v_dual_mul_f32 v43, v43, v45
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v45, 1, v2
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v25, v25, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v28.h
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v13, v32, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v44.l, v43.h
	v_cmp_o_f32_e64 s0, v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v44, 1, v44
	v_add3_u32 v41, v43, v44, 0x7fff
	v_add3_u32 v44, v27, v45, 0x7fff
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v27, 16, v31
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v31, 0xbfb8aa3b, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v41.l, v33.h
	v_cndmask_b16 v42.l, 0x7fff, v41.h, s0
	v_cndmask_b16 v42.h, 0x7fff, v44.h, vcc_lo
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v43, v8, v27
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v27, v14, v27 :: v_dual_and_b32 v44, 1, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v41.h, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v17, v43, v17
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v12, v27, v12 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v44, v28, v44, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v43, 0xbfb8aa3b, v17
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, 0xbfb8aa3b, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v41, 1, v41
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v31, v31
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v45
	v_cndmask_b32_e64 v32, 0, 0x42800000, s0
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v41, v33, v41, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v17
	v_ldexp_f32 v31, v31, v43
	v_cndmask_b32_e64 v43, 0, 0x42800000, s1
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v32, v32
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v12
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v46, null, v31, v31, v18
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v43, v43
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v51, s0, v18, v31, v18
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v32, v32, v45
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v47, v46
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v32, 1.0, v32
	s_delay_alu instid0(TRANS32_DEP_3) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v27, v27, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v43, v43, v48
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v44.h, 0x7fff, v44.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v28, null, v32, v32, v17
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v45, -v46, v47, 1.0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v43, 1.0, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v48, v28
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v44.l, 0x7fff, v41.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v50, null, v27, v27, v13
	v_fmac_f32_e32 v47, v45, v47
	v_div_scale_f32 v33, null, v43, v43, v12
	v_rcp_f32_e32 v45, v50
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v41, v51, v47
	v_rcp_f32_e32 v55, v33
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v52, -v28, v48, 1.0
	v_fma_f32 v58, -v46, v41, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v48, v52, v48
	v_fma_f32 v57, -v50, v45, 1.0
	v_div_scale_f32 v52, s1, v17, v32, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v33, v55, 1.0
	v_fmac_f32_e32 v41, v58, v47
	v_fmac_f32_e32 v45, v57, v45
	v_div_scale_f32 v57, s2, v13, v27, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v60, v52, v48 :: v_dual_fmac_f32 v55, v59, v55
	v_div_scale_f32 v59, s3, v12, v43, v12
	v_mul_f32_e32 v62, v57, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v28, v60, v52
	v_fma_f32 v46, -v46, v41, v51
	v_mul_f32_e32 v63, v59, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v50, v62, v57
	v_fmac_f32_e32 v60, v58, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v41, v46, v47, v41
	v_fma_f32 v58, -v33, v63, v59
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v62, v51, v45
	v_fma_f32 v28, -v28, v60, v52
	v_div_fixup_f32 v18, v41, v31, v18
	v_fmac_f32_e32 v63, v58, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v50, v62, v57
	v_div_fmas_f32 v28, v28, v48, v60
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v33, -v33, v63, v59
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v18, v40, v18
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v45, v46, v45, v62
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v17, v28, v32, v17
	v_div_fmas_f32 v33, v33, v55, v63
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v28, v8, v19
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v13, v45, v27, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v12, v33, v43, v12
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v6, v28, v6 :: v_dual_mul_f32 v13, v25, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v25.h, v2.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v12, v23, v12
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v23, v8, v20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v13.h
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v20, v14, v20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v25.l, v12.h
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v7, v23, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v23, 1, v2
	v_mov_b16_e32 v2.l, v18.h
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v11, v20, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v25, 1, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v23, v13, v23, 0x7fff
	v_add3_u32 v25, v12, v25, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v23.h, 0x7fff, v23.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v12, v14, v19
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v23.l, 0x7fff, v25.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v27, v61, v37 :: v_dual_mul_f32 v10, v12, v10
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v12, 0xbfb8aa3b, v11 :: v_dual_mul_f32 v17, v27, v17
	v_mul_f32_e32 v27, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v25, 0xbfb8aa3b, v10
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v27
	v_mul_f32_e32 v27, 0xbfb8aa3b, v6
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v27
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v25
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v11
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v7
	v_cndmask_b32_e64 v19, 0, 0x42800000, s1
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s0
	v_exp_f32_e32 v12, v12
	v_exp_f32_e32 v13, v13
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v12, v12, v28
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v13, v13, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, s0
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_add_f32 v13, 1.0, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v10
	v_ldexp_f32 v19, v19, v25
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v25.l, v17.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v38, null, v12, v12, v11
	v_div_scale_f32 v27, null, v13, v13, v7
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v20, v20
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v31, v27
	v_div_scale_f32 v40, vcc_lo, v7, v13, v7
	v_div_scale_f32 v28, null, v19, v19, v6
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v25.h, v2.h
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v20, v20, v32
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v37, v28
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v32, 1, v2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v33, -v27, v31, 1.0
	v_fma_f32 v46, -v38, v39, 1.0
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_and_b32 v25, 1, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v32, v18, v32, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v31, v33, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v46, v39
	v_div_scale_f32 v33, null, v20, v20, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v28, v37, 1.0
	v_mul_f32_e32 v45, v40, v31
	v_div_scale_f32 v46, s2, v11, v12, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v43, v33
	v_fmac_f32_e32 v37, v41, v37
	v_div_scale_f32 v41, s0, v6, v19, v6
	v_fma_f32 v18, -v27, v45, v40
	v_mul_f32_e32 v50, v46, v39
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v25, v17, v25, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v48, v41, v37
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v45, v18, v31
	v_fma_f32 v47, -v33, v43, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v18, -v28, v48, v41
	v_fma_f32 v27, -v27, v45, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v43, v47, v43
	v_div_scale_f32 v47, s3, v10, v20, v10
	v_fmac_f32_e32 v48, v18, v37
	v_fma_f32 v18, -v38, v50, v46
	v_div_fmas_f32 v27, v27, v31, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v51, v47, v43
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v28, -v28, v48, v41
	v_fmac_f32_e32 v50, v18, v39
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v31, v14, v15
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v40, -v33, v51, v47
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v14, v14, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v18, v28, v37, v48
	v_fma_f32 v28, -v38, v50, v46
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v51, v40, v43
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v37, v8, v16 :: v_dual_mul_f32 v16, v31, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v28, v28, v39, v50
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v33, -v33, v51, v47
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v8, v8, v15 :: v_dual_mul_f32 v9, v14, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v11, v28, v12, v11
	v_div_fixup_f32 v6, v18, v19, v6
	v_div_fmas_f32 v33, v33, v43, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v8, v8, v35 :: v_dual_mul_f32 v15, v37, v36
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v9, v9, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v11.h, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v10, v33, v20, v10
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v6, v8, v6
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v7, v27, v13, v7
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v9.h
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v10, v16, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v7, v15, v7 :: v_dual_and_b32 v12, 1, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v32.l, 0x7fff, v25.h, vcc_lo
	v_mov_b16_e32 v11.l, v10.h
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v2.l, v7.h
	v_add3_u32 v12, v9, v12, 0x7fff
	v_mov_b32_e32 v14, 0x7632
	v_and_b32_e32 v8, 1, v11
	v_mov_b16_e32 v11.l, v6.h
	v_and_b32_e32 v2, 1, v2
	v_cmp_o_f32_e64 s0, v10, v10
	v_cmp_o_f32_e64 s1, v7, v7
	v_add3_u32 v8, v10, v8, 0x7fff
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v2, v7, v2, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v9, v6, v11, 0x7fff
	v_cndmask_b16 v6.h, 0x7fff, v12.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_mov_b32_e32 v12, 0x5410
	v_cndmask_b16 v6.l, 0x7fff, v8.h, s0
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	v_cndmask_b16 v0.l, 0x7fff, v9.h, s2
	v_cndmask_b32_e32 v14, 0x3276, v14, vcc_lo
	v_cndmask_b32_e32 v12, 0x1054, v12, vcc_lo
	v_cndmask_b32_e32 v8, v30, v54, vcc_lo
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v7, v29, v53, vcc_lo
	v_lshl_or_b32 v14, v14, 8, v14
	v_lshl_or_b32 v12, v12, 8, v12
	v_dual_cndmask_b32 v11, v23, v22 :: v_dual_cndmask_b32 v10, v22, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v15, v56, v21 :: v_dual_and_b32 v14, 0x760076, v14
	v_and_b32_e32 v12, 0x540054, v12
	v_cndmask_b32_e32 v16, v21, v56, vcc_lo
	v_cndmask_b32_e32 v18, v24, v49, vcc_lo
	v_cndmask_b32_e32 v20, v26, v32, vcc_lo
	v_cndmask_b32_e32 v21, v0, v44, vcc_lo
	v_cndmask_b32_e32 v0, v44, v0, vcc_lo
	v_permlanex16_b32 v22, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v8, v12, 4, v12
	v_lshl_or_b32 v12, v14, 4, v14
	v_cndmask_b32_e32 v13, v6, v42, vcc_lo
	v_cndmask_b32_e32 v6, v42, v6, vcc_lo
	v_dual_cndmask_b32 v2, v53, v29 :: v_dual_cndmask_b32 v9, v54, v30
	v_cndmask_b32_e32 v17, v49, v24, vcc_lo
	v_cndmask_b32_e32 v19, v32, v26, vcc_lo
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v24, 0x5040504, v8
	v_and_b32_e32 v25, 0x7060706, v12
	v_permlanex16_b32 v18, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v6, v7, v2, v24
	v_perm_b32 v7, v7, v2, v25
	v_perm_b32 v8, v22, v9, v24
	v_perm_b32 v9, v22, v9, v25
	v_perm_b32 v10, v14, v11, v24
	v_perm_b32 v11, v14, v11, v25
	v_perm_b32 v14, v16, v15, v24
	v_perm_b32 v15, v16, v15, v25
	v_perm_b32 v16, v18, v17, v24
	v_perm_b32 v17, v18, v17, v25
	v_perm_b32 v18, v20, v19, v24
	v_perm_b32 v19, v20, v19, v25
	v_perm_b32 v20, v0, v21, v24
	v_perm_b32 v21, v0, v21, v25
	v_add_lshl_u32 v0, v1, v4, 1
	v_perm_b32 v12, v23, v13, v24
	v_perm_b32 v13, v23, v13, v25
	v_add_lshl_u32 v2, v3, v4, 1
	v_add_lshl_u32 v1, v1, v5, 1
	v_add_lshl_u32 v3, v3, v5, 1
	s_clause 0x3
	buffer_store_b128 v[6:9], v0, s[12:15], 0 offen
	buffer_store_b128 v[10:13], v2, s[12:15], 0 offen
	buffer_store_b128 v[14:17], v1, s[12:15], 0 offen
	buffer_store_b128 v[18:21], v3, s[12:15], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 175
		.amdhsa_next_free_sgpr 31
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.num_vgpr, 175
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16396
; TotalNumSgprs: 33
; NumVgprs: 175
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 33
; NumVGPRsForWavesPerEU: 175
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
	.byte	105                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     175
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
