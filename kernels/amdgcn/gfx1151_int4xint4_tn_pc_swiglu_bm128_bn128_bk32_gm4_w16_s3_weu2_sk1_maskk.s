	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
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
	v_lshlrev_b32_e32 v66, 2, v0
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_lshrrev_b32_e32 v2, 5, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v130, 1, v0
	s_load_b32 s29, s[0:1], 0x38
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v132, 48, v130
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
	s_sub_i32 s11, 0, s12
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v1, 0x7c, v66
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s13, s13, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	v_mad_u64_u32 v[3:4], null, s14, v2, v[1:2]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s10, s13
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s10
	s_mul_hi_u32 s4, s10, s11
	s_mov_b32 s11, 0x31027000
	s_add_i32 s10, s10, s4
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s19, s11
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_hi_u32 s4, s5, s10
	s_xor_b32 s10, s2, s7
	s_mul_i32 s13, s4, s12
	s_ashr_i32 s23, s10, 31
	s_sub_i32 s5, s5, s13
	s_add_i32 s13, s4, 1
	s_sub_i32 s18, s5, s12
	s_cmp_ge_u32 s5, s12
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s4, s13, s4
	s_cselect_b32 s5, s18, s5
	s_add_i32 s13, s4, 1
	s_cmp_ge_u32 s5, s12
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s18, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s4, s13, s4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s5, s29, 31
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s12, s15, 1
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s25, s3, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s27, s4, s23
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s29, s5
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_mul_i32 s13, s12, s25
	v_mad_u64_u32 v[4:5], null, s12, v2, v[1:2]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s12, s27, s23
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s28, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s12, s7
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v6, s25, v2
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s4
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s20, s12, 7
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s6
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_add3_u32 v4, s13, s20, v4
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s28, v6
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s21, s2, 7
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s29, 1
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	s_mul_i32 s5, s14, s25
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s24, -1, 0
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s24, vcc_lo
	s_cmp_gt_i32 s29, 33
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	v_add3_u32 v3, s5, s21, v3
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s22, -1, 0
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	s_add_i32 s2, s25, 16
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_lshl_add_u32 v7, s15, 5, v4
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v6, s2, v2
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	v_add_nc_u32_e32 v5, s15, v4
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	s_lshl_b32 s26, s14, 4
	.loc	1 111 22 is_stmt 0              ; generate_amdgcn.py:111:22
	v_cndmask_b32_e32 v8, 0x80000000, v3, vcc_lo
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	v_add_nc_u32_e32 v3, s26, v3
	.loc	1 108 23 is_stmt 1              ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e64 s2, s28, v6
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	v_add_nc_u32_e32 v6, s15, v7
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_add_nc_u32_e32 v12, 0, v66
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s22, s2
	s_cmpk_gt_i32 s29, 0x41
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	s_clause 0x1
	buffer_load_b32 v10, v4, s[16:19], 0 offen
	buffer_load_b32 v5, v5, s[16:19], 0 offen
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	buffer_load_b32 v11, v3, s[8:11], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b32 v7, v7, s[16:19], 0 offen
	buffer_load_b32 v6, v6, s[16:19], 0 offen
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v3, 15, v0
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	buffer_load_b32 v8, v8, s[8:11], 0 offen
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v4, 3, v0
	s_mov_b32 s18, 0
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v12, v8, v10 offset1:16
	.loc	1 125 31 is_stmt 1              ; generate_amdgcn.py:125:31
	ds_store_b32 v12, v5 offset:8192
	v_or_b32_e32 v9, v132, v3
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_store_2addr_stride64_b32 v12, v11, v7 offset0:8 offset1:24
	.loc	1 125 31 is_stmt 1              ; generate_amdgcn.py:125:31
	ds_store_b32 v12, v6 offset:10240
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_or_b32_e32 v164, v132, v3
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v142, 0x80, v164
	v_or_b32_e32 v144, 0x100, v164
	v_or_b32_e32 v146, 0x180, v164
	v_or_b32_e32 v148, 0x200, v164
	v_or_b32_e32 v150, 0x280, v164
	v_or_b32_e32 v152, 0x300, v164
	v_or_b32_e32 v154, 0x380, v164
	v_or_b32_e32 v134, 0x400, v164
	v_or_b32_e32 v135, 0x480, v164
	v_or_b32_e32 v136, 0x500, v164
	v_or_b32_e32 v137, 0x580, v164
	v_or_b32_e32 v138, 0x600, v164
	v_or_b32_e32 v139, 0x680, v164
	v_or_b32_e32 v140, 0x700, v164
	v_or_b32_e32 v141, 0x780, v164
	v_or_b32_e32 v143, 64, v164
	v_or_b32_e32 v145, 0xc0, v164
	v_or_b32_e32 v147, 0x140, v164
	v_or_b32_e32 v149, 0x1c0, v164
	v_or_b32_e32 v151, 0x240, v164
	v_or_b32_e32 v153, 0x2c0, v164
	v_or_b32_e32 v155, 0x340, v164
	v_or_b32_e32 v156, 0x3c0, v164
	v_or_b32_e32 v133, 0x440, v164
	v_or_b32_e32 v157, 0x4c0, v164
	v_or_b32_e32 v158, 0x540, v164
	v_or_b32_e32 v159, 0x5c0, v164
	v_or_b32_e32 v160, 0x640, v164
	v_or_b32_e32 v161, 0x6c0, v164
	v_or_b32_e32 v162, 0x740, v164
	v_or_b32_e32 v163, 0x7c0, v164
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s2, -1
                                        ; implicit-def: $vgpr164
                                        ; implicit-def: $vgpr142
                                        ; implicit-def: $vgpr144
                                        ; implicit-def: $vgpr146
                                        ; implicit-def: $vgpr148
                                        ; implicit-def: $vgpr150
                                        ; implicit-def: $vgpr152
                                        ; implicit-def: $vgpr154
                                        ; implicit-def: $vgpr134
                                        ; implicit-def: $vgpr135
                                        ; implicit-def: $vgpr136
                                        ; implicit-def: $vgpr137
                                        ; implicit-def: $vgpr138
                                        ; implicit-def: $vgpr139
                                        ; implicit-def: $vgpr140
                                        ; implicit-def: $vgpr141
                                        ; implicit-def: $vgpr143
                                        ; implicit-def: $vgpr145
                                        ; implicit-def: $vgpr147
                                        ; implicit-def: $vgpr149
                                        ; implicit-def: $vgpr151
                                        ; implicit-def: $vgpr153
                                        ; implicit-def: $vgpr155
                                        ; implicit-def: $vgpr156
                                        ; implicit-def: $vgpr133
                                        ; implicit-def: $vgpr157
                                        ; implicit-def: $vgpr158
                                        ; implicit-def: $vgpr159
                                        ; implicit-def: $vgpr160
                                        ; implicit-def: $vgpr161
                                        ; implicit-def: $vgpr162
                                        ; implicit-def: $vgpr163
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	v_and_or_b32 v131, v4, 48, v3
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s0, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v10, 0 :: v_dual_lshlrev_b32 v3, 1, v2
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	v_sub_nc_u32_e32 v67, s28, v2
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s1, s28, 15
.Ltmp13:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s28, s25, 32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v3, s3, 5, v3
	v_dual_mov_b32 v13, v10 :: v_dual_add_nc_u32 v2, s28, v2
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s1, s1, 4
.Ltmp15:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_lshl_b32 s18, s27, 7
	v_dual_mov_b32 v11, v10 :: v_dual_add_nc_u32 v4, 0x41, v3
	v_dual_mov_b32 v12, v10 :: v_dual_add_nc_u32 v3, 64, v3
	v_mul_lo_u32 v2, s14, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v4, s15, v4
	v_sub_nc_u32_e64 v5, s1, 3 clamp
	v_mul_lo_u32 v3, s15, v3
	s_lshl_b32 s19, s23, 7
	v_mov_b32_e32 v14, v10
	v_mov_b32_e32 v15, v10
	v_readfirstlane_b32 s1, v5
	v_add3_u32 v68, v2, s21, v1
	v_add3_u32 v4, v4, s18, v1
	v_mov_b32_e32 v16, v10
	v_add3_u32 v3, v3, s18, v1
	v_mov_b32_e32 v17, v10
	v_mov_b32_e32 v26, v10
	v_subrev_nc_u32_e32 v69, s19, v4
	v_mov_b32_e32 v27, v10
	v_subrev_nc_u32_e32 v70, s19, v3
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
	s_mov_b32 s29, 1
	s_lshl_b32 s27, s15, 5
	s_add_i32 s23, 0, 0x800
	s_add_i32 s25, 0, 0x1000
	s_add_i32 s3, 0, 0x1800
	s_add_i32 s2, 0, 0x2000
	s_add_i32 s14, s1, 1
	s_add_i32 s1, 0, 0x2800
	s_mov_b32 s18, s10
	s_mov_b32 s19, s11
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e32 vcc_lo, s28, v67
	s_mov_b32 s30, s0
	s_mov_b32 s0, s23
	s_mov_b32 s23, s25
	s_mov_b32 s25, s3
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_dual_cndmask_b32 v71, 0x80000000, v68 :: v_dual_cndmask_b32 v72, 0x80000000, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_cndmask_b32_e32 v73, 0x80000000, v69, vcc_lo
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v75, s23, v9
	s_mov_b32 s3, s2
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	buffer_load_b32 v71, v71, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b32 v72, v72, s[16:19], 0 offen
	buffer_load_b32 v73, v73, s[16:19], 0 offen
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_add_nc_u32_e32 v74, s30, v131
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v76, s3, v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v77, v75 offset:640
	ds_load_u8 v78, v75 offset:512
	ds_load_u8 v79, v75 offset:896
	ds_load_u8 v80, v75 offset:768
	ds_load_u8 v81, v75 offset:960
	ds_load_u8 v82, v75 offset:832
	ds_load_u8 v83, v75 offset:704
	ds_load_u8 v84, v75 offset:576
	ds_load_u8 v85, v75 offset:128
	ds_load_u8 v86, v75
	ds_load_u8 v87, v75 offset:384
	ds_load_u8 v88, v75 offset:256
	ds_load_u8 v89, v75 offset:448
	ds_load_u8 v90, v75 offset:320
	ds_load_u8 v91, v75 offset:192
	ds_load_u8 v92, v75 offset:64
	ds_load_u8 v93, v75 offset:1664
	ds_load_u8 v94, v75 offset:1536
	ds_load_u8 v95, v75 offset:1920
	ds_load_u8 v96, v75 offset:1792
	ds_load_u8 v97, v75 offset:1984
	ds_load_u8 v98, v75 offset:1856
	ds_load_u8 v99, v75 offset:1728
	ds_load_u8 v100, v75 offset:1600
	ds_load_u8 v101, v75 offset:1152
	ds_load_u8 v102, v75 offset:1024
	ds_load_u8 v103, v75 offset:1408
	ds_load_u8 v104, v75 offset:1280
	ds_load_u8 v105, v75 offset:1472
	ds_load_u8 v106, v75 offset:1344
	ds_load_u8 v107, v75 offset:1216
	ds_load_u8 v75, v75 offset:1088
	ds_load_u8 v108, v74 offset:640
	ds_load_u8 v109, v74 offset:512
	ds_load_u8 v110, v74 offset:896
	ds_load_u8 v111, v74 offset:768
	ds_load_u8 v112, v74 offset:960
	ds_load_u8 v113, v74 offset:832
	ds_load_u8 v114, v74 offset:704
	ds_load_u8 v115, v74 offset:576
	ds_load_u8 v116, v74 offset:128
	ds_load_u8 v117, v74
	ds_load_u8 v118, v74 offset:384
	ds_load_u8 v119, v74 offset:256
	ds_load_u8 v120, v74 offset:448
	ds_load_u8 v121, v74 offset:320
	ds_load_u8 v122, v74 offset:192
	ds_load_u8 v123, v74 offset:64
	ds_load_u8 v124, v74 offset:1664
	ds_load_u8 v125, v74 offset:1536
	ds_load_u8 v126, v74 offset:1920
	ds_load_u8 v127, v74 offset:1792
	ds_load_u8 v128, v74 offset:1984
	ds_load_u8 v129, v74 offset:1856
	ds_load_u8 v133, v74 offset:1728
	ds_load_u8 v134, v74 offset:1600
	ds_load_u8 v135, v74 offset:1152
	ds_load_u8 v136, v74 offset:1024
	ds_load_u8 v137, v74 offset:1408
	ds_load_u8 v138, v74 offset:1280
	ds_load_u8 v139, v74 offset:1472
	ds_load_u8 v140, v74 offset:1344
	ds_load_u8 v141, v74 offset:1216
	ds_load_u8 v74, v74 offset:1088
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v142, v76 offset:640
	ds_load_u8 v143, v76 offset:512
	ds_load_u8 v144, v76 offset:896
	ds_load_u8 v145, v76 offset:768
	ds_load_u8 v146, v76 offset:960
	ds_load_u8 v147, v76 offset:832
	ds_load_u8 v148, v76 offset:704
	ds_load_u8 v149, v76 offset:576
	ds_load_u8 v150, v76 offset:128
	ds_load_u8 v151, v76
	ds_load_u8 v152, v76 offset:384
	ds_load_u8 v153, v76 offset:256
	ds_load_u8 v154, v76 offset:448
	ds_load_u8 v155, v76 offset:320
	ds_load_u8 v156, v76 offset:192
	ds_load_u8 v157, v76 offset:64
	ds_load_u8 v158, v76 offset:1664
	ds_load_u8 v159, v76 offset:1536
	ds_load_u8 v160, v76 offset:1920
	ds_load_u8 v161, v76 offset:1792
	ds_load_u8 v162, v76 offset:1984
	ds_load_u8 v163, v76 offset:1856
	ds_load_u8 v164, v76 offset:1728
	ds_load_u8 v165, v76 offset:1600
	ds_load_u8 v166, v76 offset:1152
	ds_load_u8 v167, v76 offset:1024
	ds_load_u8 v168, v76 offset:1408
	ds_load_u8 v169, v76 offset:1280
	ds_load_u8 v170, v76 offset:1472
	ds_load_u8 v171, v76 offset:1344
	ds_load_u8 v172, v76 offset:1216
	ds_load_u8 v76, v76 offset:1088
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v109, v111, v110, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v110, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v111, v119, v118, 0xc0c0004
	v_perm_b32 v77, v78, v77, 0xc0c0004
	v_perm_b32 v78, v80, v79, 0xc0c0004
	v_perm_b32 v79, v86, v85, 0xc0c0004
	v_perm_b32 v80, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v85, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v86, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v87, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v88, v138, v137, 0xc0c0004
	v_perm_b32 v93, v94, v93, 0xc0c0004
	v_perm_b32 v94, v96, v95, 0xc0c0004
	v_perm_b32 v95, v102, v101, 0xc0c0004
	v_perm_b32 v96, v104, v103, 0xc0c0004
	v_perm_b32 v83, v84, v83, 0xc0c0004
	v_perm_b32 v82, v82, v81, 0xc0c0004
	v_perm_b32 v84, v92, v91, 0xc0c0004
	v_perm_b32 v89, v90, v89, 0xc0c0004
	v_perm_b32 v90, v100, v99, 0xc0c0004
	v_perm_b32 v91, v98, v97, 0xc0c0004
	v_perm_b32 v92, v75, v107, 0xc0c0004
	v_perm_b32 v97, v106, v105, 0xc0c0004
	v_perm_b32 v98, v115, v114, 0xc0c0004
	v_perm_b32 v99, v113, v112, 0xc0c0004
	v_perm_b32 v100, v123, v122, 0xc0c0004
	v_perm_b32 v101, v121, v120, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v106, v143, v142, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v107, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v112, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v113, v153, v152, 0xc0c0004
	v_perm_b32 v118, v149, v148, 0xc0c0004
	v_perm_b32 v119, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v120, v157, v156, 0xc0c0004
	v_perm_b32 v121, v155, v154, 0xc0c0004
	s_mov_b32 s2, s1
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s1, s29, 1
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v102, v134, v133, 0xc0c0004
	v_perm_b32 v103, v129, v128, 0xc0c0004
	v_perm_b32 v104, v74, v141, 0xc0c0004
	v_perm_b32 v105, v140, v139, 0xc0c0004
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v114, v159, v158, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v115, v161, v160, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v116, v167, v166, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v117, v169, v168, 0xc0c0004
	v_perm_b32 v122, v165, v164, 0xc0c0004
	v_perm_b32 v123, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v76, v172, 0xc0c0004
	v_perm_b32 v125, v171, v170, 0xc0c0004
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v75, v109, 16, v108
	v_lshl_or_b32 v74, v111, 16, v110
	v_lshl_or_b32 v77, v78, 16, v77
	v_lshl_or_b32 v76, v80, 16, v79
	v_lshl_or_b32 v79, v86, 16, v85
	v_lshl_or_b32 v78, v88, 16, v87
	v_lshl_or_b32 v81, v94, 16, v93
	v_lshl_or_b32 v80, v96, 16, v95
	v_lshl_or_b32 v83, v82, 16, v83
	v_lshl_or_b32 v82, v89, 16, v84
	v_lshl_or_b32 v85, v91, 16, v90
	v_lshl_or_b32 v87, v99, 16, v98
	v_lshl_or_b32 v86, v101, 16, v100
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v91, v107, 16, v106
	v_lshl_or_b32 v90, v113, 16, v112
	v_lshl_or_b32 v95, v119, 16, v118
	v_lshl_or_b32 v94, v121, 16, v120
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lt_i32 s1, 2
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v84, v97, 16, v92
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s29, s1, 0
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v89, v103, 16, v102
	v_lshl_or_b32 v88, v105, 16, v104
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v93, v115, 16, v114
	v_lshl_or_b32 v92, v117, 16, v116
	v_lshl_or_b32 v97, v123, 16, v122
	v_lshl_or_b32 v96, v125, 16, v124
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[34:41], v[76:77], v[74:75], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[82:83], v[74:75], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[76:77], v[86:87], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[82:83], v[86:87], v[58:65] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[10:17], v[90:91], v[74:75], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[94:95], v[74:75], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[90:91], v[86:87], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[94:95], v[86:87], v[1:8] neg_lo:[1,1,0]
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_lshl_b32 s1, s29, 11
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v68, s26, v68
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_add_i32 s23, s1, 0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v69, s27, v69
	v_add_nc_u32_e32 v70, s27, v70
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_add_nc_u32_e32 v173, s23, v66
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[34:41], v[80:81], v[78:79], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[84:85], v[78:79], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[80:81], v[88:89], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[84:85], v[88:89], v[58:65] neg_lo:[1,1,0]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[10:17], v[92:93], v[78:79], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[96:97], v[78:79], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[92:93], v[88:89], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[96:97], v[88:89], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s14, s14, -1
	s_add_i32 s28, s28, 16
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_add_i32 s3, s23, 0x1000
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_add_i32 s1, s23, 0x2000
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s14, 0
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(1)
	ds_store_2addr_stride64_b32 v173, v71, v72 offset1:16
	.loc	1 125 31 is_stmt 1              ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	ds_store_b32 v173, v73 offset:8192
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_or_b32_e32 v142, 0x80, v9
	v_or_b32_e32 v144, 0x100, v9
	v_or_b32_e32 v146, 0x180, v9
	v_or_b32_e32 v148, 0x200, v9
	v_or_b32_e32 v150, 0x280, v9
	v_or_b32_e32 v152, 0x300, v9
	v_or_b32_e32 v154, 0x380, v9
	v_or_b32_e32 v134, 0x400, v9
	v_or_b32_e32 v135, 0x480, v9
	v_or_b32_e32 v136, 0x500, v9
	v_or_b32_e32 v137, 0x580, v9
	v_or_b32_e32 v138, 0x600, v9
	v_or_b32_e32 v139, 0x680, v9
	v_or_b32_e32 v140, 0x700, v9
	v_or_b32_e32 v141, 0x780, v9
	v_or_b32_e32 v143, 64, v9
	v_or_b32_e32 v145, 0xc0, v9
	v_or_b32_e32 v147, 0x140, v9
	v_or_b32_e32 v149, 0x1c0, v9
	v_or_b32_e32 v151, 0x240, v9
	v_or_b32_e32 v153, 0x2c0, v9
	v_or_b32_e32 v155, 0x340, v9
	v_or_b32_e32 v156, 0x3c0, v9
	v_or_b32_e32 v133, 0x440, v9
	v_or_b32_e32 v157, 0x4c0, v9
	v_or_b32_e32 v158, 0x540, v9
	v_or_b32_e32 v159, 0x5c0, v9
	v_or_b32_e32 v160, 0x640, v9
	v_or_b32_e32 v161, 0x6c0, v9
	v_or_b32_e32 v162, 0x740, v9
	v_or_b32_e32 v163, 0x7c0, v9
	v_mov_b32_e32 v164, v9
	s_mov_b32 s18, s0
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v8, 0
	s_add_i32 s23, 0, 0x800
	s_add_i32 s25, 0, 0x1000
	s_add_i32 s3, 0, 0x1800
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
	v_dual_mov_b32 v97, v65 :: v_dual_add_nc_u32 v66, s18, v131
	.loc	1 111 22 is_stmt 1              ; generate_amdgcn.py:111:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v96, v64 :: v_dual_mov_b32 v93, v61
	ds_load_u8_d16 v121, v66
	ds_load_u8_d16 v122, v66 offset:128
	ds_load_u8_d16 v123, v66 offset:256
	ds_load_u8_d16 v124, v66 offset:384
	ds_load_u8_d16 v9, v66 offset:448
	ds_load_u8_d16 v99, v66 offset:320
	ds_load_u8_d16 v101, v66 offset:192
	ds_load_u8_d16 v103, v66 offset:64
	ds_load_u8_d16 v125, v66 offset:512
	ds_load_u8_d16 v126, v66 offset:640
	ds_load_u8_d16 v127, v66 offset:768
	ds_load_u8_d16 v128, v66 offset:896
	ds_load_u8_d16 v105, v66 offset:960
	ds_load_u8_d16 v106, v66 offset:832
	ds_load_u8_d16 v109, v66 offset:704
	ds_load_u8_d16 v110, v66 offset:576
	ds_load_u8_d16 v113, v66 offset:1024
	ds_load_u8_d16 v114, v66 offset:1152
	ds_load_u8_d16 v115, v66 offset:1280
	ds_load_u8_d16 v116, v66 offset:1408
	ds_load_u8_d16 v98, v66 offset:1472
	ds_load_u8_d16 v100, v66 offset:1344
	ds_load_u8_d16 v102, v66 offset:1216
	ds_load_u8_d16 v104, v66 offset:1088
	ds_load_u8_d16 v117, v66 offset:1536
	ds_load_u8_d16 v118, v66 offset:1664
	ds_load_u8_d16 v119, v66 offset:1792
	ds_load_u8_d16 v120, v66 offset:1920
	ds_load_u8_d16 v107, v66 offset:1984
	ds_load_u8_d16 v108, v66 offset:1856
	ds_load_u8_d16 v111, v66 offset:1728
	ds_load_u8_d16 v112, v66 offset:1600
	v_dual_mov_b32 v92, v60 :: v_dual_mov_b32 v95, v63
	v_dual_mov_b32 v94, v62 :: v_dual_mov_b32 v91, v59
	v_dual_mov_b32 v90, v58 :: v_dual_mov_b32 v89, v57
	v_dual_mov_b32 v88, v56 :: v_dual_mov_b32 v85, v53
	v_dual_mov_b32 v84, v52 :: v_dual_mov_b32 v87, v55
	v_dual_mov_b32 v86, v54 :: v_dual_mov_b32 v83, v51
	v_dual_mov_b32 v82, v50 :: v_dual_mov_b32 v81, v49
	v_dual_mov_b32 v80, v48 :: v_dual_mov_b32 v77, v45
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cndmask_b32_e64 v67, 0, 1, s24
	v_dual_mov_b32 v76, v44 :: v_dual_mov_b32 v79, v47
	v_dual_mov_b32 v78, v46 :: v_dual_mov_b32 v75, v43
	v_dual_mov_b32 v74, v42 :: v_dual_mov_b32 v73, v41
	v_dual_mov_b32 v72, v40 :: v_dual_mov_b32 v69, v37
	v_dual_mov_b32 v68, v36 :: v_dual_mov_b32 v71, v39
	v_cmp_ne_u32_e64 s0, 1, v67
	v_dual_mov_b32 v70, v38 :: v_dual_mov_b32 v67, v35
	v_mov_b32_e32 v66, v34
	s_and_not1_b32 vcc_lo, exec_lo, s24
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v68, s25, v150
	v_add_nc_u32_e32 v69, s25, v148
	v_add_nc_u32_e32 v66, s25, v154
	v_add_nc_u32_e32 v72, s25, v142
	v_add_nc_u32_e32 v67, s25, v152
	v_add_nc_u32_e32 v70, s25, v146
	v_add_nc_u32_e32 v71, s25, v144
	v_add_nc_u32_e32 v73, s25, v164
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v68, v68
	ds_load_u8 v69, v69
	ds_load_u8 v66, v66
	ds_load_u8 v72, v72
	ds_load_u8 v73, v73
	ds_load_u8 v70, v70
	ds_load_u8 v71, v71
	ds_load_u8 v67, v67
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v82, v125, v126, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v83, v127, v128, 0xc0c0004
	v_perm_b32 v129, v121, v122, 0xc0c0004
	v_perm_b32 v165, v123, v124, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v85, s25, v153
	v_add_nc_u32_e32 v86, s25, v151
	v_add_nc_u32_e32 v81, s25, v156
	v_add_nc_u32_e32 v89, s25, v145
	v_add_nc_u32_e32 v74, s25, v163
	v_add_nc_u32_e32 v84, s25, v155
	v_add_nc_u32_e32 v87, s25, v149
	v_add_nc_u32_e32 v88, s25, v147
	v_add_nc_u32_e32 v90, s25, v143
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v91, s25, v141
	v_add_nc_u32_e32 v92, s25, v140
	v_add_nc_u32_e32 v93, s25, v139
	v_add_nc_u32_e32 v94, s25, v138
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v69, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	v_perm_b32 v67, v73, v72, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v95, s25, v137
	v_add_nc_u32_e32 v96, s25, v136
	v_add_nc_u32_e32 v97, s25, v135
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v83, v83, 16, v82
	v_lshl_or_b32 v82, v165, 16, v129
	v_lshl_or_b32 v166, v66, 16, v68
	v_lshl_or_b32 v165, v69, 16, v67
	v_dual_mov_b32 v73, v41 :: v_dual_add_nc_u32 v76, s25, v161
	v_mov_b32_e32 v71, v39
	v_dual_mov_b32 v66, v34 :: v_dual_add_nc_u32 v167, s25, v134
	ds_load_u8 v85, v85
	ds_load_u8 v86, v86
	ds_load_u8 v81, v81
	ds_load_u8 v89, v89
	ds_load_u8 v90, v90
	ds_load_u8 v87, v87
	ds_load_u8 v88, v88
	ds_load_u8 v84, v84
	ds_load_u8 v93, v93
	ds_load_u8 v94, v94
	ds_load_u8 v91, v91
	ds_load_u8 v97, v97
	ds_load_u8 v129, v167
	ds_load_u8 v95, v95
	ds_load_u8 v96, v96
	ds_load_u8 v92, v92
	v_dual_mov_b32 v70, v38 :: v_dual_add_nc_u32 v77, s25, v160
	v_dual_mov_b32 v67, v35 :: v_dual_add_nc_u32 v80, s25, v157
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v167, s25, v133
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_dual_mov_b32 v72, v40 :: v_dual_add_nc_u32 v75, s25, v162
	v_dual_mov_b32 v69, v37 :: v_dual_add_nc_u32 v78, s25, v159
	v_dual_mov_b32 v68, v36 :: v_dual_add_nc_u32 v79, s25, v158
	ds_load_u8 v173, v76
	ds_load_u8 v174, v77
	ds_load_u8 v175, v74
	ds_load_u8 v176, v80
	ds_load_u8 v177, v167
	ds_load_u8 v178, v78
	ds_load_u8 v179, v79
	ds_load_u8 v180, v75
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v74, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v75, v84, v81, 0xc0c0004
	v_perm_b32 v76, v90, v89, 0xc0c0004
	v_perm_b32 v77, v88, v87, 0xc0c0004
	v_perm_b32 v169, v117, v118, 0xc0c0004
	v_perm_b32 v170, v119, v120, 0xc0c0004
	v_lshl_or_b32 v168, v75, 16, v74
	v_perm_b32 v171, v113, v114, 0xc0c0004
	v_lshl_or_b32 v167, v77, 16, v76
	v_mov_b32_e32 v81, v49
	v_perm_b32 v172, v115, v116, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v84, v92, v91, 0xc0c0004
	v_perm_b32 v85, v129, v97, 0xc0c0004
	v_perm_b32 v86, v96, v95, 0xc0c0004
	v_dual_mov_b32 v80, v48 :: v_dual_mov_b32 v79, v47
	v_dual_mov_b32 v78, v46 :: v_dual_mov_b32 v77, v45
	v_dual_mov_b32 v76, v44 :: v_dual_mov_b32 v75, v43
	v_mov_b32_e32 v74, v42
	v_wmma_i32_16x16x16_iu4 v[66:73], v[165:166], v[82:83], v[66:73] neg_lo:[1,1,0]
	v_lshl_or_b32 v170, v170, 16, v169
	v_lshl_or_b32 v169, v172, 16, v171
	v_lshl_or_b32 v172, v84, 16, v93
	v_lshl_or_b32 v171, v86, 16, v85
	v_wmma_i32_16x16x16_iu4 v[74:81], v[167:168], v[82:83], v[74:81] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v82, v174, v173, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v180, v175, 0xc0c0004
	v_perm_b32 v84, v110, v109, 0xc0c0004
	v_perm_b32 v85, v106, v105, 0xc0c0004
	v_perm_b32 v86, v103, v101, 0xc0c0004
	v_perm_b32 v87, v99, v9, 0xc0c0004
	v_lshl_or_b32 v174, v83, 16, v82
	v_perm_b32 v129, v177, v176, 0xc0c0004
	v_lshl_or_b32 v176, v85, 16, v84
	v_mov_b32_e32 v97, v65
	v_lshl_or_b32 v175, v87, 16, v86
	v_mov_b32_e32 v89, v57
	v_perm_b32 v173, v179, v178, 0xc0c0004
	v_dual_mov_b32 v88, v56 :: v_dual_mov_b32 v87, v55
	v_dual_mov_b32 v86, v54 :: v_dual_mov_b32 v85, v53
	v_dual_mov_b32 v84, v52 :: v_dual_mov_b32 v83, v51
	v_mov_b32_e32 v82, v50
	v_perm_b32 v177, v112, v111, 0xc0c0004
	v_perm_b32 v178, v108, v107, 0xc0c0004
	v_perm_b32 v179, v104, v102, 0xc0c0004
	v_perm_b32 v180, v100, v98, 0xc0c0004
	v_dual_mov_b32 v96, v64 :: v_dual_mov_b32 v95, v63
	v_dual_mov_b32 v94, v62 :: v_dual_mov_b32 v93, v61
	v_dual_mov_b32 v92, v60 :: v_dual_mov_b32 v91, v59
	v_mov_b32_e32 v90, v58
	v_lshl_or_b32 v173, v173, 16, v129
	v_wmma_i32_16x16x16_iu4 v[82:89], v[165:166], v[175:176], v[82:89] neg_lo:[1,1,0]
	v_lshl_or_b32 v166, v178, 16, v177
	v_lshl_or_b32 v165, v180, 16, v179
	v_wmma_i32_16x16x16_iu4 v[90:97], v[167:168], v[175:176], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[66:73], v[171:172], v[169:170], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[74:81], v[173:174], v[169:170], v[74:81] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[82:89], v[171:172], v[165:166], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[173:174], v[165:166], v[90:97] neg_lo:[1,1,0]
.LBB0_10:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v36, s2, v150
	v_add_nc_u32_e32 v37, s2, v148
	v_add_nc_u32_e32 v34, s2, v154
	v_add_nc_u32_e32 v48, s2, v142
	v_add_nc_u32_e32 v35, s2, v152
	v_add_nc_u32_e32 v46, s2, v146
	v_add_nc_u32_e32 v47, s2, v144
	v_add_nc_u32_e32 v49, s2, v164
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v36, v36
	ds_load_u8 v37, v37
	ds_load_u8 v34, v34
	ds_load_u8 v48, v48
	ds_load_u8 v49, v49
	ds_load_u8 v46, v46
	ds_load_u8 v47, v47
	ds_load_u8 v35, v35
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v59, s2, v139
	v_add_nc_u32_e32 v60, s2, v138
	v_add_nc_u32_e32 v51, s2, v153
	v_add_nc_u32_e32 v52, s2, v151
	v_add_nc_u32_e32 v45, s2, v156
	v_add_nc_u32_e32 v50, s2, v155
	v_add_nc_u32_e32 v53, s2, v149
	v_add_nc_u32_e32 v54, s2, v147
	v_add_nc_u32_e32 v55, s2, v145
	v_add_nc_u32_e32 v56, s2, v143
	v_add_nc_u32_e32 v57, s2, v141
	v_add_nc_u32_e32 v58, s2, v140
	v_add_nc_u32_e32 v61, s2, v137
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v62, s2, v136
	v_add_nc_u32_e32 v63, s2, v135
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v40, s2, v161
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v35, v34, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v47, s2, v134
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_perm_b32 v64, v125, v126, 0xc0c0004
	v_perm_b32 v65, v127, v128, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v41, s2, v160
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v37, v37, 16, v36
	v_lshl_or_b32 v36, v46, 16, v48
	ds_load_u8 v46, v59
	ds_load_u8 v48, v60
	ds_load_u8 v49, v51
	ds_load_u8 v51, v52
	ds_load_u8 v45, v45
	ds_load_u8 v52, v55
	ds_load_u8 v55, v56
	ds_load_u8 v53, v53
	ds_load_u8 v54, v54
	ds_load_u8 v50, v50
	ds_load_u8 v56, v57
	ds_load_u8 v57, v63
	ds_load_u8 v47, v47
	ds_load_u8 v59, v61
	ds_load_u8 v60, v62
	ds_load_u8 v58, v58
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v38, s2, v163
	v_add_nc_u32_e32 v44, s2, v157
	v_add_nc_u32_e32 v61, s2, v133
	v_add_nc_u32_e32 v39, s2, v162
	v_add_nc_u32_e32 v42, s2, v159
	v_add_nc_u32_e32 v43, s2, v158
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v35, v65, 16, v64
	v_perm_b32 v62, v117, v118, 0xc0c0004
	v_perm_b32 v64, v113, v114, 0xc0c0004
	v_perm_b32 v65, v115, v116, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v46, v48, v46, 0xc0c0004
	ds_load_u8 v48, v40
	ds_load_u8 v113, v41
	ds_load_u8 v114, v38
	ds_load_u8 v44, v44
	ds_load_u8 v61, v61
	ds_load_u8 v115, v42
	ds_load_u8 v116, v43
	ds_load_u8 v117, v39
	v_perm_b32 v121, v121, v122, 0xc0c0004
	v_perm_b32 v122, v123, v124, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v38, v51, v49, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v39, v50, v45, 0xc0c0004
	v_perm_b32 v40, v55, v52, 0xc0c0004
	v_perm_b32 v41, v54, v53, 0xc0c0004
	v_lshl_or_b32 v34, v122, 16, v121
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v42, v58, v56, 0xc0c0004
	v_lshl_or_b32 v39, v39, 16, v38
	v_perm_b32 v45, v47, v57, 0xc0c0004
	v_lshl_or_b32 v38, v41, 16, v40
	v_wmma_i32_16x16x16_iu4 v[10:17], v[36:37], v[34:35], v[10:17] neg_lo:[1,1,0]
	v_perm_b32 v47, v60, v59, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v46
	v_perm_b32 v46, v103, v101, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[26:33], v[38:39], v[34:35], v[26:33] neg_lo:[1,1,0]
	v_perm_b32 v34, v110, v109, 0xc0c0004
	v_perm_b32 v35, v106, v105, 0xc0c0004
	v_perm_b32 v9, v99, v9, 0xc0c0004
	v_perm_b32 v63, v119, v120, 0xc0c0004
	v_lshl_or_b32 v42, v47, 16, v45
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v45, v113, v48, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v117, v114, 0xc0c0004
	v_perm_b32 v44, v61, v44, 0xc0c0004
	v_perm_b32 v48, v116, v115, 0xc0c0004
	v_lshl_or_b32 v35, v35, 16, v34
	v_lshl_or_b32 v34, v9, 16, v46
	v_perm_b32 v9, v112, v111, 0xc0c0004
	v_perm_b32 v46, v108, v107, 0xc0c0004
	v_perm_b32 v49, v104, v102, 0xc0c0004
	v_perm_b32 v50, v100, v98, 0xc0c0004
	v_lshl_or_b32 v41, v63, 16, v62
	v_lshl_or_b32 v40, v65, 16, v64
	v_lshl_or_b32 v45, v47, 16, v45
	v_lshl_or_b32 v44, v48, 16, v44
	v_wmma_i32_16x16x16_iu4 v[18:25], v[36:37], v[34:35], v[18:25] neg_lo:[1,1,0]
	v_lshl_or_b32 v37, v46, 16, v9
	v_lshl_or_b32 v36, v50, 16, v49
	v_wmma_i32_16x16x16_iu4 v[1:8], v[38:39], v[34:35], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[10:17], v[42:43], v[40:41], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[44:45], v[40:41], v[26:33] neg_lo:[1,1,0]
	v_mov_b32_e32 v64, v96
	v_wmma_i32_16x16x16_iu4 v[18:25], v[42:43], v[36:37], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[44:45], v[36:37], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v60, v92
	v_mov_b32_e32 v62, v94
	v_mov_b32_e32 v58, v90
	v_mov_b32_e32 v56, v88
	v_mov_b32_e32 v52, v84
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
.LBB0_12:                               ; %._crit_edge150
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	s_waitcnt lgkmcnt(10)
	v_dual_mov_b32 v101, v61 :: v_dual_add_nc_u32 v98, s23, v131
	s_waitcnt lgkmcnt(9)
	v_dual_mov_b32 v100, v60 :: v_dual_mov_b32 v103, v63
	s_waitcnt lgkmcnt(8)
	v_dual_mov_b32 v102, v62 :: v_dual_mov_b32 v105, v59
	.loc	1 111 22 is_stmt 1              ; generate_amdgcn.py:111:22
	ds_load_u8_d16 v188, v98
	ds_load_u8_d16 v189, v98 offset:128
	ds_load_u8_d16 v190, v98 offset:256
	ds_load_u8_d16 v191, v98 offset:384
	ds_load_u8_d16 v9, v98 offset:448
	ds_load_u8_d16 v166, v98 offset:320
	ds_load_u8_d16 v168, v98 offset:192
	ds_load_u8_d16 v170, v98 offset:64
	ds_load_u8_d16 v192, v98 offset:512
	ds_load_u8_d16 v193, v98 offset:640
	ds_load_u8_d16 v194, v98 offset:768
	ds_load_u8_d16 v195, v98 offset:896
	ds_load_u8_d16 v172, v98 offset:960
	ds_load_u8_d16 v173, v98 offset:832
	ds_load_u8_d16 v176, v98 offset:704
	ds_load_u8_d16 v177, v98 offset:576
	ds_load_u8_d16 v180, v98 offset:1024
	ds_load_u8_d16 v181, v98 offset:1152
	ds_load_u8_d16 v182, v98 offset:1280
	ds_load_u8_d16 v183, v98 offset:1408
	ds_load_u8_d16 v165, v98 offset:1472
	ds_load_u8_d16 v167, v98 offset:1344
	ds_load_u8_d16 v169, v98 offset:1216
	ds_load_u8_d16 v171, v98 offset:1088
	ds_load_u8_d16 v184, v98 offset:1536
	ds_load_u8_d16 v185, v98 offset:1664
	ds_load_u8_d16 v186, v98 offset:1792
	ds_load_u8_d16 v187, v98 offset:1920
	ds_load_u8_d16 v174, v98 offset:1984
	ds_load_u8_d16 v175, v98 offset:1856
	ds_load_u8_d16 v178, v98 offset:1728
	ds_load_u8_d16 v179, v98 offset:1600
	s_waitcnt lgkmcnt(35)
	v_dual_mov_b32 v104, v58 :: v_dual_mov_b32 v107, v57
	s_waitcnt lgkmcnt(34)
	v_dual_mov_b32 v106, v56 :: v_dual_mov_b32 v109, v53
	s_waitcnt lgkmcnt(33)
	v_dual_mov_b32 v108, v52 :: v_dual_mov_b32 v111, v55
	s_waitcnt lgkmcnt(32)
	v_dual_mov_b32 v110, v54 :: v_dual_mov_b32 v113, v51
	v_dual_mov_b32 v112, v50 :: v_dual_mov_b32 v115, v49
	v_dual_mov_b32 v114, v48 :: v_dual_mov_b32 v117, v45
	v_dual_mov_b32 v116, v44 :: v_dual_mov_b32 v119, v47
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cndmask_b32_e64 v99, 0, 1, s22
	v_dual_mov_b32 v118, v46 :: v_dual_mov_b32 v121, v43
	v_dual_mov_b32 v120, v42 :: v_dual_mov_b32 v123, v41
	v_dual_mov_b32 v122, v40 :: v_dual_mov_b32 v125, v37
	v_dual_mov_b32 v124, v36 :: v_dual_mov_b32 v127, v39
	v_dual_mov_b32 v126, v38 :: v_dual_mov_b32 v129, v35
	v_cmp_ne_u32_e64 s0, 1, v99
	v_dual_mov_b32 v99, v65 :: v_dual_mov_b32 v98, v64
	v_mov_b32_e32 v128, v34
	s_and_not1_b32 vcc_lo, exec_lo, s22
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v100, s3, v150
	v_add_nc_u32_e32 v101, s3, v148
	v_add_nc_u32_e32 v98, s3, v154
	v_add_nc_u32_e32 v113, s3, v142
	v_add_nc_u32_e32 v99, s3, v152
	v_add_nc_u32_e32 v111, s3, v146
	v_add_nc_u32_e32 v112, s3, v144
	v_add_nc_u32_e32 v114, s3, v164
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v100, v100
	ds_load_u8 v101, v101
	ds_load_u8 v98, v98
	ds_load_u8 v113, v113
	ds_load_u8 v114, v114
	ds_load_u8 v111, v111
	ds_load_u8 v112, v112
	ds_load_u8 v99, v99
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v116, s3, v153
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v129, v192, v193, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v196, v194, v195, 0xc0c0004
	v_perm_b32 v197, v188, v189, 0xc0c0004
	v_perm_b32 v198, v190, v191, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v117, s3, v151
	v_add_nc_u32_e32 v110, s3, v156
	v_add_nc_u32_e32 v120, s3, v145
	v_add_nc_u32_e32 v106, s3, v159
	v_add_nc_u32_e32 v107, s3, v158
	v_add_nc_u32_e32 v108, s3, v157
	v_add_nc_u32_e32 v109, s3, v133
	v_add_nc_u32_e32 v115, s3, v155
	v_add_nc_u32_e32 v118, s3, v149
	v_add_nc_u32_e32 v119, s3, v147
	v_add_nc_u32_e32 v121, s3, v143
	v_add_nc_u32_e32 v122, s3, v141
	v_add_nc_u32_e32 v123, s3, v140
	v_add_nc_u32_e32 v124, s3, v139
	v_add_nc_u32_e32 v125, s3, v138
	v_add_nc_u32_e32 v126, s3, v137
	v_add_nc_u32_e32 v127, s3, v136
	v_add_nc_u32_e32 v128, s3, v135
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v112, s3, v134
	v_add_nc_u32_e32 v102, s3, v163
	v_add_nc_u32_e32 v103, s3, v162
	v_add_nc_u32_e32 v104, s3, v161
	v_add_nc_u32_e32 v105, s3, v160
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v99, v98, 0xc0c0004
	v_lshl_or_b32 v99, v196, 16, v129
	v_lshl_or_b32 v98, v198, 16, v197
	ds_load_u8 v116, v116
	ds_load_u8 v117, v117
	ds_load_u8 v110, v110
	ds_load_u8 v120, v120
	ds_load_u8 v121, v121
	ds_load_u8 v118, v118
	ds_load_u8 v119, v119
	ds_load_u8 v115, v115
	ds_load_u8 v124, v124
	ds_load_u8 v125, v125
	ds_load_u8 v122, v122
	ds_load_u8 v128, v128
	ds_load_u8 v112, v112
	ds_load_u8 v126, v126
	ds_load_u8 v127, v127
	ds_load_u8 v123, v123
	ds_load_u8 v129, v104
	ds_load_u8 v196, v105
	ds_load_u8 v197, v102
	ds_load_u8 v108, v108
	ds_load_u8 v109, v109
	ds_load_u8 v106, v106
	ds_load_u8 v107, v107
	ds_load_u8 v198, v103
	v_perm_b32 v113, v114, v113, 0xc0c0004
	v_lshl_or_b32 v101, v101, 16, v100
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v104, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v105, v115, v110, 0xc0c0004
	v_perm_b32 v110, v121, v120, 0xc0c0004
	v_lshl_or_b32 v100, v111, 16, v113
	v_perm_b32 v111, v184, v185, 0xc0c0004
	v_perm_b32 v113, v186, v187, 0xc0c0004
	v_perm_b32 v114, v180, v181, 0xc0c0004
	v_perm_b32 v102, v182, v183, 0xc0c0004
	v_lshl_or_b32 v105, v105, 16, v104
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v112, v112, v128, 0xc0c0004
	v_lshl_or_b32 v103, v113, 16, v111
	v_perm_b32 v111, v119, v118, 0xc0c0004
	v_lshl_or_b32 v102, v102, 16, v114
	v_perm_b32 v113, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	v_perm_b32 v109, v166, v9, 0xc0c0004
	v_lshl_or_b32 v104, v111, 16, v110
	v_perm_b32 v110, v177, v176, 0xc0c0004
	v_perm_b32 v111, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v118, v107, v106, 0xc0c0004
	v_perm_b32 v106, v170, v168, 0xc0c0004
	v_perm_b32 v114, v123, v122, 0xc0c0004
	v_perm_b32 v115, v127, v126, 0xc0c0004
	v_perm_b32 v116, v196, v129, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v198, v197, 0xc0c0004
	v_lshl_or_b32 v107, v111, 16, v110
	v_perm_b32 v110, v179, v178, 0xc0c0004
	v_perm_b32 v111, v175, v174, 0xc0c0004
	v_perm_b32 v119, v171, v169, 0xc0c0004
	v_perm_b32 v120, v167, v165, 0xc0c0004
	v_lshl_or_b32 v106, v109, 16, v106
	v_wmma_i32_16x16x16_iu4 v[66:73], v[100:101], v[98:99], v[66:73] neg_lo:[1,1,0]
	v_lshl_or_b32 v109, v117, 16, v116
	v_lshl_or_b32 v108, v118, 16, v108
	v_lshl_or_b32 v111, v111, 16, v110
	v_lshl_or_b32 v110, v120, 16, v119
	v_wmma_i32_16x16x16_iu4 v[90:97], v[104:105], v[106:107], v[90:97] neg_lo:[1,1,0]
	v_lshl_or_b32 v113, v114, 16, v113
	v_lshl_or_b32 v112, v115, 16, v112
	v_wmma_i32_16x16x16_iu4 v[74:81], v[104:105], v[98:99], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[100:101], v[106:107], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[108:109], v[110:111], v[90:97] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[66:73], v[112:113], v[102:103], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[74:81], v[108:109], v[102:103], v[74:81] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[82:89], v[112:113], v[110:111], v[82:89] neg_lo:[1,1,0]
	v_mov_b32_e32 v99, v97
	v_mov_b32_e32 v101, v93
	v_mov_b32_e32 v103, v95
	v_mov_b32_e32 v105, v91
	v_mov_b32_e32 v107, v89
	v_mov_b32_e32 v109, v85
	v_mov_b32_e32 v111, v87
	v_mov_b32_e32 v113, v83
	v_mov_b32_e32 v115, v81
	v_mov_b32_e32 v117, v77
	v_mov_b32_e32 v119, v79
	v_mov_b32_e32 v121, v75
	v_mov_b32_e32 v123, v73
	v_mov_b32_e32 v125, v69
	v_mov_b32_e32 v127, v71
	v_dual_mov_b32 v129, v67 :: v_dual_mov_b32 v98, v96
	v_mov_b32_e32 v100, v92
	v_mov_b32_e32 v102, v94
	v_mov_b32_e32 v104, v90
	v_mov_b32_e32 v106, v88
	v_mov_b32_e32 v108, v84
	v_mov_b32_e32 v110, v86
	v_mov_b32_e32 v112, v82
	v_mov_b32_e32 v114, v80
	v_mov_b32_e32 v116, v76
	v_mov_b32_e32 v118, v78
	v_mov_b32_e32 v120, v74
	v_mov_b32_e32 v122, v72
	v_mov_b32_e32 v124, v68
	v_mov_b32_e32 v126, v70
	v_mov_b32_e32 v128, v66
.LBB0_14:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v36, s1, v150
	v_add_nc_u32_e32 v37, s1, v148
	v_add_nc_u32_e32 v34, s1, v154
	v_add_nc_u32_e32 v48, s1, v142
	v_add_nc_u32_e32 v35, s1, v152
	v_add_nc_u32_e32 v46, s1, v146
	v_add_nc_u32_e32 v47, s1, v144
	v_add_nc_u32_e32 v49, s1, v164
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v36, v36
	ds_load_u8 v37, v37
	ds_load_u8 v34, v34
	ds_load_u8 v48, v48
	ds_load_u8 v49, v49
	ds_load_u8 v46, v46
	ds_load_u8 v47, v47
	ds_load_u8 v35, v35
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v59, s1, v139
	v_add_nc_u32_e32 v60, s1, v138
	v_add_nc_u32_e32 v51, s1, v153
	v_add_nc_u32_e32 v52, s1, v151
	v_add_nc_u32_e32 v45, s1, v156
	v_add_nc_u32_e32 v50, s1, v155
	v_add_nc_u32_e32 v53, s1, v149
	v_add_nc_u32_e32 v54, s1, v147
	v_add_nc_u32_e32 v55, s1, v145
	v_add_nc_u32_e32 v56, s1, v143
	v_add_nc_u32_e32 v57, s1, v141
	v_add_nc_u32_e32 v58, s1, v140
	v_add_nc_u32_e32 v61, s1, v137
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v62, s1, v136
	v_add_nc_u32_e32 v63, s1, v135
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v40, s1, v161
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v35, v34, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v47, s1, v134
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_perm_b32 v66, v188, v189, 0xc0c0004
	v_perm_b32 v67, v190, v191, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v41, s1, v160
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v37, v37, 16, v36
	v_lshl_or_b32 v36, v46, 16, v48
	ds_load_u8 v46, v59
	ds_load_u8 v48, v60
	ds_load_u8 v49, v51
	ds_load_u8 v51, v52
	ds_load_u8 v45, v45
	ds_load_u8 v52, v55
	ds_load_u8 v55, v56
	ds_load_u8 v53, v53
	ds_load_u8 v54, v54
	ds_load_u8 v50, v50
	ds_load_u8 v56, v57
	ds_load_u8 v57, v63
	ds_load_u8 v47, v47
	ds_load_u8 v59, v61
	ds_load_u8 v60, v62
	ds_load_u8 v58, v58
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v38, s1, v163
	v_add_nc_u32_e32 v44, s1, v157
	v_add_nc_u32_e32 v61, s1, v133
	v_add_nc_u32_e32 v39, s1, v162
	v_add_nc_u32_e32 v42, s1, v159
	v_add_nc_u32_e32 v43, s1, v158
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v34, v67, 16, v66
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v46, v48, v46, 0xc0c0004
	ds_load_u8 v48, v40
	ds_load_u8 v66, v41
	ds_load_u8 v67, v38
	ds_load_u8 v44, v44
	ds_load_u8 v61, v61
	ds_load_u8 v68, v42
	ds_load_u8 v69, v43
	ds_load_u8 v70, v39
	v_perm_b32 v64, v192, v193, 0xc0c0004
	v_perm_b32 v65, v194, v195, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v38, v51, v49, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v40, v55, v52, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v39, v50, v45, 0xc0c0004
	v_perm_b32 v41, v54, v53, 0xc0c0004
	v_lshl_or_b32 v35, v65, 16, v64
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v45, v47, v57, 0xc0c0004
	v_perm_b32 v9, v166, v9, 0xc0c0004
	v_lshl_or_b32 v39, v39, 16, v38
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v42, v58, v56, 0xc0c0004
	v_lshl_or_b32 v38, v41, 16, v40
	v_wmma_i32_16x16x16_iu4 v[10:17], v[36:37], v[34:35], v[10:17] neg_lo:[1,1,0]
	v_perm_b32 v47, v60, v59, 0xc0c0004
	v_perm_b32 v62, v184, v185, 0xc0c0004
	v_lshl_or_b32 v43, v42, 16, v46
	v_wmma_i32_16x16x16_iu4 v[26:33], v[38:39], v[34:35], v[26:33] neg_lo:[1,1,0]
	v_perm_b32 v34, v177, v176, 0xc0c0004
	v_perm_b32 v35, v173, v172, 0xc0c0004
	v_perm_b32 v46, v170, v168, 0xc0c0004
	v_perm_b32 v63, v186, v187, 0xc0c0004
	v_perm_b32 v64, v180, v181, 0xc0c0004
	v_perm_b32 v65, v182, v183, 0xc0c0004
	v_lshl_or_b32 v42, v47, 16, v45
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v45, v66, v48, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v70, v67, 0xc0c0004
	v_perm_b32 v44, v61, v44, 0xc0c0004
	v_perm_b32 v48, v69, v68, 0xc0c0004
	v_lshl_or_b32 v35, v35, 16, v34
	v_lshl_or_b32 v34, v9, 16, v46
	v_perm_b32 v9, v179, v178, 0xc0c0004
	v_perm_b32 v46, v175, v174, 0xc0c0004
	v_perm_b32 v49, v171, v169, 0xc0c0004
	v_perm_b32 v50, v167, v165, 0xc0c0004
	v_lshl_or_b32 v41, v63, 16, v62
	v_lshl_or_b32 v40, v65, 16, v64
	v_lshl_or_b32 v45, v47, 16, v45
	v_lshl_or_b32 v44, v48, 16, v44
	v_wmma_i32_16x16x16_iu4 v[18:25], v[36:37], v[34:35], v[18:25] neg_lo:[1,1,0]
	v_lshl_or_b32 v37, v46, 16, v9
	v_lshl_or_b32 v36, v50, 16, v49
	v_wmma_i32_16x16x16_iu4 v[1:8], v[38:39], v[34:35], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[10:17], v[42:43], v[40:41], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[44:45], v[40:41], v[26:33] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[18:25], v[42:43], v[36:37], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[44:45], v[36:37], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_17
.LBB0_16:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v99, v65 :: v_dual_mov_b32 v98, v64
	v_dual_mov_b32 v101, v61 :: v_dual_mov_b32 v100, v60
	v_dual_mov_b32 v103, v63 :: v_dual_mov_b32 v102, v62
	v_dual_mov_b32 v105, v59 :: v_dual_mov_b32 v104, v58
	v_dual_mov_b32 v107, v57 :: v_dual_mov_b32 v106, v56
	v_dual_mov_b32 v109, v53 :: v_dual_mov_b32 v108, v52
	v_dual_mov_b32 v111, v55 :: v_dual_mov_b32 v110, v54
	v_dual_mov_b32 v113, v51 :: v_dual_mov_b32 v112, v50
	v_dual_mov_b32 v115, v49 :: v_dual_mov_b32 v114, v48
	v_dual_mov_b32 v117, v45 :: v_dual_mov_b32 v116, v44
	v_dual_mov_b32 v119, v47 :: v_dual_mov_b32 v118, v46
	v_dual_mov_b32 v121, v43 :: v_dual_mov_b32 v120, v42
	v_dual_mov_b32 v123, v41 :: v_dual_mov_b32 v122, v40
	v_dual_mov_b32 v125, v37 :: v_dual_mov_b32 v124, v36
	v_dual_mov_b32 v127, v39 :: v_dual_mov_b32 v126, v38
	v_dual_mov_b32 v129, v35 :: v_dual_mov_b32 v128, v34
.LBB0_17:
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	s_waitcnt lgkmcnt(27)
	v_lshrrev_b32_e32 v9, 4, v0
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_or_b32_e32 v60, 64, v131
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	s_add_i32 s0, s20, s15
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_and_b32 s17, s5, 0xffff
	s_mov_b32 s19, 0x31027000
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_or_b32 v52, v9, 1, v132
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v9, s21, v131
	v_or_b32_e32 v34, s21, v60
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 128 14 is_stmt 0              ; generate_amdgcn.py:128:14
	s_mov_b32 s16, s4
	.loc	1 129 22 is_stmt 1              ; generate_amdgcn.py:129:22
	v_or_b32_e32 v38, s20, v52
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v37, 2, v52
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v9, 1, v9
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v35, 6, v52
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v34, 1, v34
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v36, 4, v52
	v_or_b32_e32 v53, 10, v52
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v38, 1, v38
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v39, s0, v52, 1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v59, 8, v52
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_clause 0x1
	buffer_load_u16 v77, v9, s[16:19], 0 offen
	buffer_load_u16 v78, v34, s[16:19], 0 offen
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v9, s20, v37
	v_or_b32_e32 v40, s20, v35
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v37, s0, v37, 1
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v34, s20, v36
	.loc	1 129 14 is_stmt 0              ; generate_amdgcn.py:129:14
	s_and_b32 s17, s7, 0xffff
	s_mov_b32 s16, s6
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v35, s0, v35, 1
	v_add_lshl_u32 v36, s0, v36, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_clause 0x1
	buffer_load_u16 v90, v38, s[16:19], 0 offen
	buffer_load_u16 v91, v39, s[16:19], 0 offen
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v38, s0, v53, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v9, 1, v9
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v39, s0, v59, 1
	s_clause 0x5
	buffer_load_u16 v92, v37, s[16:19], 0 offen
	buffer_load_u16 v93, v35, s[16:19], 0 offen
	buffer_load_u16 v94, v36, s[16:19], 0 offen
	buffer_load_u16 v95, v38, s[16:19], 0 offen
	buffer_load_u16 v96, v39, s[16:19], 0 offen
	buffer_load_u16 v97, v9, s[16:19], 0 offen
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v9, 1, v40
	v_lshlrev_b32_e32 v34, 1, v34
	s_clause 0x1
	buffer_load_u16 v132, v9, s[16:19], 0 offen
	buffer_load_u16 v133, v34, s[16:19], 0 offen
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v35, v98
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v98, v10
	v_cvt_f32_i32_e32 v10, v32
	v_cvt_f32_i32_e32 v63, v24
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v24, 0x42, v52
	v_or_b32_e32 v32, 64, v52
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v41, v100
	v_cvt_f32_i32_e32 v36, v99
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v85, v12
	v_cvt_f32_i32_e32 v87, v13
	v_cvt_f32_i32_e32 v84, v14
	v_cvt_f32_i32_e32 v61, v16
	v_cvt_f32_i32_e32 v62, v17
	v_cvt_f32_i32_e32 v50, v27
	v_cvt_f32_i32_e32 v27, v29
	v_cvt_f32_i32_e32 v12, v30
	v_cvt_f32_i32_e32 v13, v31
	v_cvt_f32_i32_e32 v30, v19
	v_cvt_f32_i32_e32 v99, v18
	v_cvt_f32_i32_e32 v100, v20
	v_cvt_f32_i32_e32 v18, v6
	v_cvt_f32_i32_e32 v6, v7
	v_cvt_f32_i32_e32 v7, v8
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v8, 0x4e, v52
	v_or_b32_e32 v14, 0x4c, v52
	v_or_b32_e32 v16, 0x4a, v52
	v_or_b32_e32 v17, 0x48, v52
	v_or_b32_e32 v19, 0x46, v52
	v_or_b32_e32 v20, 0x44, v52
	v_or_b32_e32 v29, 12, v52
	v_or_b32_e32 v31, 14, v52
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v52, s20, v59
	v_or_b32_e32 v53, s20, v53
	v_or_b32_e32 v64, s20, v32
	v_or_b32_e32 v66, s20, v24
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v48, v105
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v88, v11
	v_cvt_f32_i32_e32 v11, v33
	v_cvt_f32_i32_e32 v33, v1
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v1, s15, v60
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v59, s20, v29
	v_or_b32_e32 v60, s20, v31
	v_or_b32_e32 v70, s20, v20
	v_or_b32_e32 v71, s20, v19
	v_or_b32_e32 v72, s20, v17
	v_or_b32_e32 v73, s20, v16
	v_or_b32_e32 v89, s20, v14
	v_or_b32_e32 v105, s20, v8
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v29, s0, v29, 1
	v_add_lshl_u32 v31, s0, v31, 1
	v_add_lshl_u32 v32, s0, v32, 1
	v_add_lshl_u32 v24, s0, v24, 1
	v_add_lshl_u32 v20, s0, v20, 1
	v_add_lshl_u32 v19, s0, v19, 1
	v_add_lshl_u32 v17, s0, v17, 1
	v_add_lshl_u32 v16, s0, v16, 1
	v_add_lshl_u32 v8, s0, v8, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v52, 1, v52
	v_lshlrev_b32_e32 v53, 1, v53
	v_lshlrev_b32_e32 v64, 1, v64
	v_lshlrev_b32_e32 v66, 1, v66
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v34, v114
	v_cvt_f32_i32_e32 v9, v115
	v_cvt_f32_i32_e32 v81, v113
	v_cvt_f32_i32_e32 v83, v112
	v_cvt_f32_i32_e32 v79, v108
	v_cvt_f32_i32_e32 v80, v109
	v_cvt_f32_i32_e32 v51, v110
	v_cvt_f32_i32_e32 v69, v111
	v_cvt_f32_i32_e32 v55, v106
	v_cvt_f32_i32_e32 v58, v107
	v_cvt_f32_i32_e32 v44, v101
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v101, v21
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_add_lshl_u32 v14, s0, v14, 1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v106, 1, v59
	v_lshlrev_b32_e32 v107, 1, v60
	v_lshlrev_b32_e32 v108, 1, v70
	v_lshlrev_b32_e32 v109, 1, v71
	v_lshlrev_b32_e32 v110, 1, v72
	v_lshlrev_b32_e32 v111, 1, v73
	v_lshlrev_b32_e32 v112, 1, v89
	v_lshlrev_b32_e32 v105, 1, v105
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_clause 0x15
	buffer_load_u16 v89, v29, s[16:19], 0 offen
	buffer_load_u16 v113, v31, s[16:19], 0 offen
	buffer_load_u16 v70, v32, s[16:19], 0 offen
	buffer_load_u16 v71, v24, s[16:19], 0 offen
	buffer_load_u16 v59, v20, s[16:19], 0 offen
	buffer_load_u16 v60, v19, s[16:19], 0 offen
	buffer_load_u16 v31, v17, s[16:19], 0 offen
	buffer_load_u16 v32, v16, s[16:19], 0 offen
	buffer_load_u16 v19, v14, s[16:19], 0 offen
	buffer_load_u16 v20, v8, s[16:19], 0 offen
	buffer_load_u16 v114, v52, s[16:19], 0 offen
	buffer_load_u16 v115, v53, s[16:19], 0 offen
	buffer_load_u16 v72, v106, s[16:19], 0 offen
	buffer_load_u16 v73, v107, s[16:19], 0 offen
	buffer_load_u16 v64, v64, s[16:19], 0 offen
	buffer_load_u16 v66, v66, s[16:19], 0 offen
	buffer_load_u16 v52, v108, s[16:19], 0 offen
	buffer_load_u16 v53, v109, s[16:19], 0 offen
	buffer_load_u16 v24, v110, s[16:19], 0 offen
	buffer_load_u16 v29, v111, s[16:19], 0 offen
	buffer_load_u16 v16, v112, s[16:19], 0 offen
	buffer_load_u16 v17, v105, s[16:19], 0 offen
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v82, v128
	v_cvt_f32_i32_e32 v40, v103
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v103, v23
	v_cvt_f32_i32_e32 v86, v15
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v75, v125
	v_cvt_f32_i32_e32 v76, v129
	v_cvt_f32_i32_e32 v37, v102
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v102, v22
	v_cvt_f32_i32_e32 v49, v26
	v_cvt_f32_i32_e32 v26, v28
	v_cvt_f32_i32_e32 v28, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.h, 0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v74, v124
	v_cvt_f32_i32_e32 v43, v116
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s1, s21, s15
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v54, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v23.h, v4.h
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	s_add_i32 s1, s1, s20
	.loc	1 127 15 is_stmt 1              ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v67, v126
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_and_or_b32 v2, v130, 56, s1
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v46, v120
	v_cvt_f32_i32_e32 v38, v118
	v_cvt_f32_i32_e32 v47, v121
	v_cvt_f32_i32_e32 v68, v127
	v_cvt_f32_i32_e32 v42, v117
	v_cvt_f32_i32_e32 v57, v122
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v22, v3
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v3, s15, v131
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v21.h, v4.h
	.loc	1 127 15 is_stmt 1              ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v39, v119
	v_cvt_f32_i32_e32 v56, v123
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v65, v25
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v25.h, v4.h
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v45, v104
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v104.h, v4.h
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v15, v5
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_or_b32_e32 v5, 64, v2
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
	v_and_b32_e32 v0, 16, v0
	.loc	1 128 14 is_stmt 1              ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v8, 16, v78
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v78, 16, v90
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v106, 16, v132
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v90, 16, v92
	v_lshlrev_b32_e32 v92, 16, v94
	v_lshlrev_b32_e32 v94, 16, v96
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v96, 16, v97
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v97, v8, v78 :: v_dual_lshlrev_b32 v14, 16, v77
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v77, 16, v91
	v_lshlrev_b32_e32 v91, 16, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v83, v97, v83
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v109, v8, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v97, v109, v101
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v101, v14, v106
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v105, v8, v90
	v_dual_mul_f32 v90, v14, v90 :: v_dual_lshlrev_b32 v93, 16, v95
	v_dual_mul_f32 v108, v8, v92 :: v_dual_mul_f32 v75, v101, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v30, v105, v30 :: v_dual_mul_f32 v95, v8, v77
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v77, v14, v77
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v95, v95, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v99, v108, v100 :: v_dual_mul_f32 v78, v14, v78
	v_mul_f32_e32 v77, v77, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v78, v78, v82
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v91, v14, v91
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v82, v90, v88 :: v_dual_mul_f32 v111, v8, v93
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v93, v14, v93
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v87, v91, v87 :: v_dual_mul_f32 v92, v14, v92
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v91, v111, v103 :: v_dual_mul_f32 v86, v93, v86
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v93, 0xbfb8aa3b, v95
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v90, v8, v106 :: v_dual_lshlrev_b32 v107, 16, v133
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v85, v92, v85
	.loc	1 134 25 is_stmt 0              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v110, v8, v94
	v_mul_f32_e32 v94, v14, v94
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v93
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v98, v8, v96 :: v_dual_mul_f32 v101, 0xbfb8aa3b, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v103, 0xbfb8aa3b, v91 :: v_dual_mul_f32 v84, v94, v84
	v_mul_f32_e32 v94, 0xbfb8aa3b, v77
	v_cndmask_b32_e64 v93, 0, 0x42800000, vcc_lo
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v96, v14, v96
	v_dual_mul_f32 v88, v8, v107 :: v_dual_mul_f32 v81, v98, v81
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v98, 0xbfb8aa3b, v30 :: v_dual_fmac_f32 v93, 0xbfb8aa3b, v95
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v101
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v103
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v100, v14, v107 :: v_dual_mul_f32 v105, 0xbfb8aa3b, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v93, v93
	v_cndmask_b32_e64 v101, 0, 0x42800000, s5
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v76, v96, v76
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v103, 0, 0x42800000, s7
	v_mul_f32_e32 v96, 0xbfb8aa3b, v82
	v_cndmask_b32_e64 v107, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v94
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v92, v110, v102 :: v_dual_mul_f32 v79, v88, v79
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v103, 0xbfb8aa3b, v91
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v96
	v_ldexp_f32 v93, v93, v107
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v80, v90, v80
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v94, 0, 0x42800000, s0
	v_fmac_f32_e32 v101, 0xbfb8aa3b, v87
	v_cndmask_b32_e64 v96, 0, 0x42800000, s2
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v93, 1.0, v93
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v110, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v94, 0xbfb8aa3b, v77
	v_exp_f32_e32 v101, v101
	v_fmac_f32_e32 v96, 0xbfb8aa3b, v82
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v107, null, v93, v93, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v94, v94
	v_cndmask_b32_e64 v108, 0, 0xffffffc0, s0
	v_exp_f32_e32 v96, v96
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v125, v107
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v116, 0, 0xffffffc0, s5
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v98
	v_exp_f32_e32 v103, v103
	v_cndmask_b32_e64 v118, 0, 0xffffffc0, s7
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v105
	v_ldexp_f32 v101, v101, v116
	v_ldexp_f32 v94, v94, v108
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v108, vcc_lo, v95, v93, v95
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v96, v96, v110
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v134, -v107, v125, 1.0
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v74, v100, v74
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v98, 0, 0x42800000, s1
	v_cndmask_b32_e64 v109, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_dual_add_f32 v96, 1.0, v96 :: v_dual_fmac_f32 v125, v134, v125
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v88, 0xbfb8aa3b, v99 :: v_dual_add_f32 v101, 1.0, v101
	v_ldexp_f32 v103, v103, v118
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v116, null, v96, v96, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v134, v108, v125
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v90, 0xbfb8aa3b, v97 :: v_dual_add_f32 v103, 1.0, v103
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v128, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v142, -v107, v134, v108
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v88, 0, 0x42800000, s4
	v_cndmask_b32_e64 v112, 0, 0xffffffc0, s4
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v90
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v122, null, v101, v101, v87
	v_fmac_f32_e32 v134, v142, v125
	v_div_scale_f32 v123, s5, v87, v101, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v137, -v116, v128, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v90, 0, 0x42800000, s3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v107, -v107, v134, v108
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v111, 0, 0xffffffc0, s3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v131, v122
	v_fmac_f32_e32 v128, v137, v128
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v98, 0xbfb8aa3b, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v107, v107, v125, v134
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v105, 0, 0x42800000, s10
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v73, 16, v73
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v66, 16, v66
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v98, v98
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v93, v107, v93, v95
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v94, 1.0, v94
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v140, -v122, v131, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v106, 0xbfb8aa3b, v86 :: v_dual_fmac_f32 v105, 0xbfb8aa3b, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v83, v83, v93
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v110, s0, v77, v94, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v131, v140, v131
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v98, v98, v109
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v109, null, v94, v94, v77
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v140, v123, v131
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v98, 1.0, v98
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v126, v109
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v64, 16, v64
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v106, 0, 0x42800000, s9
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v148, -v122, v140, v123
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v52, 16, v52
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v140, v148, v131
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v135, -v109, v126, 1.0
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v126, v135, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v135, v110, v126
	v_fma_f32 v143, -v109, v135, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v88, 0xbfb8aa3b, v99 :: v_dual_fmac_f32 v135, v143, v126
	v_exp_f32_e32 v88, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v108, -v109, v135, v110
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v88, v88, v112
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v112, s1, v30, v98, v30
	s_mov_b32 vcc_lo, s1
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v88, 1.0, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v120, null, v88, v88, v99
	v_div_scale_f32 v121, s4, v99, v88, v99
	v_rcp_f32_e32 v130, v120
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v139, -v120, v130, 1.0
	v_fmac_f32_e32 v130, v139, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v90, 0xbfb8aa3b, v97 :: v_dual_mul_f32 v139, v121, v130
	v_exp_f32_e32 v90, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v147, -v120, v139, v121
	v_fmac_f32_e32 v139, v147, v130
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v90, v90, v111
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v111, null, v98, v98, v30
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v90, 1.0, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v127, v111
	v_div_scale_f32 v118, null, v90, v90, v97
	v_div_scale_f32 v119, s3, v97, v90, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v129, v118
	v_fma_f32 v136, -v111, v127, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v100, 0xbfb8aa3b, v85 :: v_dual_fmac_f32 v127, v136, v127
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v100
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v138, -v118, v129, 1.0
	v_mul_f32_e32 v136, v112, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v100, 0, 0x42800000, s6
	v_cndmask_b32_e64 v117, 0, 0xffffffc0, s6
	v_dual_mul_f32 v102, 0xbfb8aa3b, v92 :: v_dual_fmac_f32 v129, v138, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v144, -v111, v136, v112
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v100, 0xbfb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v102
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v138, v119, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v136, v144, v127
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v100, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v102, 0, 0x42800000, s8
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v146, -v118, v138, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v109, -v111, v136, v112
	v_fma_f32 v112, -v120, v139, v121
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v102, 0xbfb8aa3b, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v138, v146, v129
	v_div_fmas_f32 v109, v109, v127, v136
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v100, v100, v117
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v95, v108, v126, v135
	v_fma_f32 v111, -v118, v138, v119
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v102, v102
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v83, v83
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v77, v95, v94, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v77, v78, v77
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v30, v109, v98, v30
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v77.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v30, v81, v30
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v77, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v23.l, v30.h
	v_and_b32_e32 v23, 1, v23
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v117, s2, v82, v96, v82
	s_mov_b32 vcc_lo, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v23, v30, v23, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v137, v117, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v145, -v116, v137, v117
	v_fmac_f32_e32 v137, v145, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v110, -v116, v137, v117
	v_fma_f32 v116, -v122, v140, v123
	v_div_fmas_f32 v107, v110, v128, v137
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v98, v111, v129, v138
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v82, v107, v96, v82
	v_div_fmas_f32 v93, v112, v130, v139
	s_mov_b32 vcc_lo, s5
	v_div_fmas_f32 v81, v116, v131, v140
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v76, v76, v82
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v81, v81, v101, v87
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v21.l, v76.h
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v100, 1.0, v100
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v76, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v75, v75, v81
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v124, null, v100, v100, v85
	v_div_scale_f32 v133, s6, v85, v100, v85
	v_div_fixup_f32 v88, v93, v88, v99
	v_rcp_f32_e32 v132, v124
	s_mov_b32 vcc_lo, s6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v81, 1, v4
	v_mov_b16_e32 v4.l, v83.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v79, v79, v88
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v90, v98, v90, v97
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v93, 16, v114
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v75, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mov_b16_e32 v25.l, v79.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v141, -v124, v132, 1.0
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v80, v80, v90
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v90, 16, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v132, v141, v132
	v_mul_f32_e32 v141, v133, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v149, -v124, v141, v133
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v106, 0xbfb8aa3b, v86 :: v_dual_fmac_f32 v141, v149, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v117, -v124, v141, v133
	v_div_fmas_f32 v78, v117, v132, v141
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_add3_u32 v30, v77, v81, 0x7fff
	v_and_b32_e32 v77, 1, v4
	v_mov_b16_e32 v4.l, v75.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v78, v78, v100, v85
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v100, v8, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v74, v74, v78 :: v_dual_mul_f32 v69, v100, v69
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v78, 1, v25
	v_add3_u32 v25, v76, v21, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v23.h, vcc_lo
	v_mov_b16_e32 v104.l, v74.h
	v_cndmask_b16 v25.l, 0x7fff, v30.h, s1
	v_and_b32_e32 v23, 1, v4
	v_mov_b16_e32 v4.l, v80.h
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v96, v8, v93
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v30, 1, v104
	v_cmp_o_f32_e64 s4, v74, v74
	v_add3_u32 v23, v75, v23, 0x7fff
	v_and_b32_e32 v75, 1, v4
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v51, v96, v51
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v74, v74, v30, 0x7fff
	v_add3_u32 v76, v83, v77, 0x7fff
	v_cndmask_b16 v30.h, 0x7fff, v23.h, s3
	v_add3_u32 v23, v80, v75, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v75, v106
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v30.l, 0x7fff, v74.h, s4
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v21.l, 0x7fff, v76.h, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v76, null, v103, v103, v91
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v80, v80
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v74, v102, v74
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, s9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v77, v79, v78, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v78, v105
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v81, v76
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v74, 1.0, v74
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v75, v75, v80
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v23.h, 0x7fff, v23.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v80, null, v74, v74, v92
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v75, 1.0, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v78, v78, v82
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v79, -v76, v81, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v82, v80
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v23.l, 0x7fff, v77.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v83, null, v75, v75, v86
	v_fmac_f32_e32 v81, v79, v81
	v_div_scale_f32 v85, vcc_lo, v91, v103, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v79, v83
	v_fma_f32 v87, -v80, v82, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v94, v85, v81
	v_fmac_f32_e32 v82, v87, v82
	v_div_scale_f32 v87, s0, v92, v74, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v95, -v83, v79, 1.0
	v_fma_f32 v97, -v76, v94, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v99, v87, v82
	v_fmac_f32_e32 v79, v95, v79
	v_div_scale_f32 v95, s1, v86, v75, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v94, v97, v81
	v_fma_f32 v97, -v80, v99, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v101, v95, v79
	v_fma_f32 v76, -v76, v94, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v99, v97, v82
	v_fma_f32 v85, -v83, v101, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v76, v76, v81, v94
	v_fma_f32 v80, -v80, v99, v87
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v101, v85, v79
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v81, v14, v93
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v76, v76, v103, v91
	v_div_fmas_f32 v80, v80, v82, v99
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v82, -v83, v101, v95
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v83, v14, v90
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v69, v69, v76
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v67, v81, v67
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v81.h, v4.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v79, v82, v79, v101
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v68, v83, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v75, v79, v75, v86
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_dual_add_f32 v78, 1.0, v78 :: v_dual_lshlrev_b32 v79, 16, v113
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v74, v80, v74, v92
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v68, v68, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v75, v8, v79
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v77, null, v78, v78, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v65, v75, v65
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v88, v77
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v75, 16, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v76, v8, v75
	v_mul_f32_e32 v75, v14, v75
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v98, -v77, v88, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v63, v76, v63
	.loc	1 134 25 is_stmt 0              ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v76, v14, v79 :: v_dual_mul_f32 v61, v75, v61
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v68.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v88, v98, v88
	v_div_scale_f32 v98, s2, v84, v78, v84
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v79, 0xbfb8aa3b, v63
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s2
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v74, v51, v74
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v102, v98, v88
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v51.h, v4.h
	v_cmp_o_f32_e64 s0, v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v97, -v77, v102, v98
	v_fmac_f32_e32 v102, v97, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v77, v102, v98
	v_div_fmas_f32 v77, v77, v88, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v77, v77, v78, v84
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v67, v67, v77
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v77, 1, v4
	v_mov_b16_e32 v4.l, v69.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v51.l, v67.h
	v_add3_u32 v77, v68, v77, 0x7fff
	v_cmp_o_f32_e64 s1, v67, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v51, 1, v51
	v_add3_u32 v68, v67, v51, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v51.h, 0x7fff, v77.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v79
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v51.l, 0x7fff, v68.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v77, 0, 0x42800000, s0
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v63
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v81.l, v74.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v62, v76, v62 :: v_dual_and_b32 v81, 1, v81
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v78, 0xbfb8aa3b, v65
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v81, v74, v81, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v75, 0xbfb8aa3b, v62
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v78
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v75
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v65
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v76, v78
	v_dual_mul_f32 v78, 0xbfb8aa3b, v61 :: v_dual_fmac_f32 v75, 0xbfb8aa3b, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v78
	v_exp_f32_e32 v75, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v67, v76, v67
	v_exp_f32_e32 v76, v77
	v_cndmask_b32_e64 v77, 0, 0x42800000, s2
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v78, null, v67, v67, v65
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v68, v76, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v76, v77
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v79, v78
	v_div_scale_f32 v85, vcc_lo, v65, v67, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v75, v75, v77
	v_ldexp_f32 v76, v76, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v75, 1.0, v75
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v80, -v78, v79, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v83, null, v75, v75, v62
	v_dual_fmac_f32 v79, v80, v79 :: v_dual_add_f32 v68, 1.0, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v84, v83
	v_mul_f32_e32 v89, v85, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v77, null, v68, v68, v63
	v_fma_f32 v91, -v78, v89, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v82, v77
	v_fma_f32 v90, -v83, v84, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v89, v91, v79 :: v_dual_fmac_f32 v84, v90, v84
	v_div_scale_f32 v90, s1, v62, v75, v62
	v_fma_f32 v86, -v77, v82, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v78, -v78, v89, v85
	v_fmac_f32_e32 v82, v86, v82
	v_div_scale_f32 v86, s0, v63, v68, v63
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v76, 1.0, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v78, v78, v79, v89
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v93, v86, v82
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v74, v74
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v80, null, v76, v76, v61
	v_div_fixup_f32 v65, v78, v67, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v77, v93, v86
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v72, 16, v72
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v87, v80
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v78, v8, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v64, v14, v64 :: v_dual_fmac_f32 v93, v91, v82
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v45, v78, v45 :: v_dual_mul_f32 v46, v64, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26 is_stmt 1              ; generate_amdgcn.py:135:26
	v_fma_f32 v77, -v77, v93, v86
	v_fma_f32 v92, -v80, v87, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v88, 1, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v77, v77, v82, v93
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v87, v92, v87
	v_div_scale_f32 v92, s2, v61, v76, v61
	v_mul_f32_e32 v94, v90, v84
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v82, v14, v72
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v88, v69, v88, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v95, v92, v87
	v_div_fixup_f32 v63, v77, v68, v63
	v_fma_f32 v85, -v83, v94, v90
	v_fma_f32 v91, -v80, v95, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v94, v85, v84 :: v_dual_fmac_f32 v95, v91, v87
	v_fma_f32 v79, -v83, v94, v90
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v83, v14, v73
	v_mul_f32_e32 v73, v8, v73
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v80, -v80, v95, v92
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v57, v82, v57
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v79, v79, v84, v94
	s_mov_b32 vcc_lo, s2
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v58, v73, v58
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v80, v80, v87, v95
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v69, v83, v56
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v62, v79, v75, v62
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v58, v58, v65
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v61, v80, v76, v61
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v56.h, 0x7fff, v88.h, vcc_lo
	v_cndmask_b16 v56.l, 0x7fff, v81.h, s0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v82, v8, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v66, v14, v66 :: v_dual_mul_f32 v57, v57, v61
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v61, v69, v62 :: v_dual_mul_f32 v62, v8, v72
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v69.h, v4.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v48, v82, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v47, v66, v47
	v_mul_f32_e32 v55, v62, v55
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v62, 16, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v67, v8, v62
	v_mul_f32_e32 v62, v14, v62
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v69.l, v57.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v55, v55, v63
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v57, v57
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v50, v62, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v68, 1, v69
	v_mov_b16_e32 v4.l, v61.h
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	v_add3_u32 v63, v57, v68, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v69, 1, v4
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v57, 16, v70
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v58.h
	v_add3_u32 v68, v61, v69, 0x7fff
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v61, v67, v54
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v54.l, 0x7fff, v63.h, s0
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v63, v8, v57
	v_mul_f32_e32 v57, v14, v57
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v54.h, 0x7fff, v68.h, vcc_lo
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v65, 0xbfb8aa3b, v61
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v67.l, v55.h
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v63, v63, v33
	v_mul_f32_e32 v49, v57, v49
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v57, 0xbfb8aa3b, v50
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v68, 0xbfb8aa3b, v63 :: v_dual_and_b32 v33, 1, v4
	v_mul_f32_e32 v69, 0xbfb8aa3b, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v67.h, v4.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v33, v58, v33, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v68
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v61
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v69
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v67, 1, v67
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v62, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v58, v58
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v50
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v67, v55, v67, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v63
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v57, v57
	v_ldexp_f32 v62, v62, v68
	v_exp_f32_e32 v65, v65
	v_cndmask_b32_e64 v68, 0, 0x42800000, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v33.l, 0x7fff, v67.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	s_waitcnt vmcnt(0)
	v_dual_add_f32 v62, 1.0, v62 :: v_dual_lshlrev_b32 v17, 16, v17
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v57, v57, v58
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v70, null, v62, v62, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v65, v65, v69
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v55, 1.0, v57
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v69, v70
	v_div_scale_f32 v73, vcc_lo, v61, v62, v61
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v72, null, v55, v55, v50
	v_div_scale_f32 v58, null, v65, v65, v63
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v68, v68, v71
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v57, -v70, v69, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v67, v72
	v_rcp_f32_e32 v71, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v68, 1.0, v68 :: v_dual_fmac_f32 v69, v57, v69
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v57, null, v68, v68, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v76, v73, v69
	v_fma_f32 v74, -v58, v71, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v77, -v72, v67, 1.0
	v_rcp_f32_e32 v75, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v70, v76, v73
	v_fmac_f32_e32 v71, v74, v71
	v_div_scale_f32 v74, s0, v63, v65, v63
	v_fmac_f32_e32 v67, v77, v67
	v_div_scale_f32 v77, s1, v50, v55, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v81, v74, v71
	v_fma_f32 v80, -v57, v75, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v76, v79, v69 :: v_dual_mul_f32 v83, v77, v67
	v_fma_f32 v79, -v58, v81, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v75, v80, v75
	v_div_scale_f32 v80, s2, v49, v68, v49
	v_fma_f32 v70, -v70, v76, v73
	v_fma_f32 v73, -v72, v83, v77
	v_fmac_f32_e32 v81, v79, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v84, v80, v75
	v_div_fmas_f32 v69, v70, v69, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v73, v67
	v_fma_f32 v58, -v58, v81, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v57, v84, v80
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v70, -v72, v83, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v58, v58, v71, v81
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v84, v79, v75
	v_div_fmas_f32 v67, v70, v67, v83
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v57, -v57, v84, v80
	v_div_fixup_f32 v50, v67, v55, v50
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v55, 16, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v57, v57, v75, v84
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v47, v47, v50 :: v_dual_mul_f32 v50, v8, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v49, v57, v68, v49
	v_div_fixup_f32 v57, v58, v65, v63
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v47.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v28, v50, v28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v50.h, v4.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v46, v46, v49
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v49, v69, v62, v61
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v45, v45, v57
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v57, 16, v59
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v59, 0xbfb8aa3b, v28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v50.l, v46.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v48, v48, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v49, v8, v57 :: v_dual_and_b32 v58, 1, v4
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v50, 1, v50
	v_cmp_o_f32_e64 s0, v47, v47
	v_add3_u32 v58, v47, v58, 0x7fff
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v49, v49, v22
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v47, v46, v50, 0x7fff
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v50, v14, v55
	v_mul_f32_e32 v57, v14, v57
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v55, 0xbfb8aa3b, v49
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v22.h, 0x7fff, v58.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v27, v50, v27 :: v_dual_mul_f32 v26, v57, v26
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v50, v59
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v46, v46
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v58, 0xbfb8aa3b, v26
	v_cndmask_b32_e64 v55, 0, 0x42800000, s0
	v_mul_f32_e32 v57, 0xbfb8aa3b, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v22.l, 0x7fff, v47.h, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v58
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v49
	v_ldexp_f32 v46, v50, v46
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v61.h, v4.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s2
	v_exp_f32_e32 v50, v55
	v_cndmask_b32_e64 v55, 0, 0x42800000, s2
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v48.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v26
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v58, null, v46, v46, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v68, 1, v4
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v47, v50, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v50, v55
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v59, v58
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v65, vcc_lo, v28, v46, v28
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v68, v48, v68, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v50, v50, v60
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v60, -v58, v59, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v50, 1.0, v50 :: v_dual_fmac_f32 v59, v60, v59
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v60, null, v50, v50, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v69, v65, v59
	v_rcp_f32_e32 v67, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v58, v69, v65
	v_fmac_f32_e32 v69, v71, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v72, -v60, v67, 1.0
	v_fma_f32 v58, -v58, v69, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v67, v72, v67
	v_div_scale_f32 v72, s2, v26, v50, v26
	v_div_fmas_f32 v58, v58, v59, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v75, v72, v67
	v_div_fixup_f32 v28, v58, v46, v28
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v57, v57
	v_ldexp_f32 v55, v57, v55
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v57, null, v47, v47, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v55, 1.0, v55
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v62, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v63, null, v55, v55, v27
	v_rcp_f32_e32 v64, v63
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v57, v62, 1.0
	v_fmac_f32_e32 v62, v66, v62
	v_div_scale_f32 v66, s0, v49, v47, v49
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v70, -v63, v64, 1.0
	v_mul_f32_e32 v73, v66, v62
	v_fmac_f32_e32 v64, v70, v64
	v_div_scale_f32 v70, s1, v27, v55, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v71, -v57, v73, v66
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v61.l, v45.h
	v_cmp_o_f32_e64 s0, v45, v45
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v74, v70, v64 :: v_dual_fmac_f32 v73, v71, v62
	v_fma_f32 v71, -v60, v75, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v61, 1, v61
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v65, -v63, v74, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v57, v73, v66
	v_fmac_f32_e32 v75, v71, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v61, v45, v61, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v74, v65, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v57, v57, v62, v73
	v_fma_f32 v60, -v60, v75, v72
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v63, v74, v70
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v62, v14, v52
	v_mul_f32_e32 v63, v14, v53
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v59, v59, v64, v74
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v43, v62, v43
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v60, v60, v67, v75
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v42, v63, v42
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v27, v59, v55, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v48, v8, v53
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v45, v60, v50, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.l, 0x7fff, v61.h, s0
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v27, v42, v27 :: v_dual_mul_f32 v42, v8, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v44, v48, v44 :: v_dual_mul_f32 v43, v43, v45
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v45.h, v4.h
	v_mov_b16_e32 v4.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v48, v8, v32 :: v_dual_mul_f32 v41, v42, v41
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v45.l, v43.h
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v32, v14, v32
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v42, v57, v47, v49
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v64, v8, v29 :: v_dual_and_b32 v47, 1, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v18, v48, v18 :: v_dual_and_b32 v45, 1, v45
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.h, 0x7fff, v68.h, vcc_lo
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v41, v41, v42
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v61, v8, v24
	v_mul_f32_e32 v24, v14, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v42, v43, v45, 0x7fff
	v_add3_u32 v45, v27, v47, 0x7fff
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v40, v64, v40 :: v_dual_lshlrev_b32 v27, 16, v31
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v31, 0xbfb8aa3b, v18 :: v_dual_mul_f32 v28, v44, v28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v43, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v44, v8, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v43.h, 0x7fff, v45.h, vcc_lo
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v28.h
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v27, v14, v27
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v15, v44, v15
	v_mul_f32_e32 v13, v32, v13
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v24, v24, v38 :: v_dual_and_b32 v45, 1, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v44, 0xbfb8aa3b, v15
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v12, v27, v12 :: v_dual_fmac_f32 v31, 0xbfb8aa3b, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v43.l, 0x7fff, v42.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v27, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v44
	v_mul_f32_e32 v46, 0xbfb8aa3b, v12
	v_exp_f32_e32 v31, v31
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v32, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v46
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v42.l, v41.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v15
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, s1
	v_ldexp_f32 v31, v31, v44
	v_cndmask_b32_e64 v44, 0, 0x42800000, s1
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v13
	v_exp_f32_e32 v32, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v42.h, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v31, 1.0, v31 :: v_dual_fmac_f32 v44, 0xbfb8aa3b, v12
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v27, v27
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v45, v28, v45, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v42, 1, v42
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v47, null, v31, v31, v18
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v32, v32, v46
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v48, v47
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_add3_u32 v42, v41, v42, 0x7fff
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v27, v27, v46
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v52, s0, v18, v31, v18
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v44, v44, v49
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v28, null, v32, v32, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v46, -v47, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v49, v28
	v_div_scale_f32 v50, null, v27, v27, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v41, null, v44, v44, v12
	v_fmac_f32_e32 v48, v46, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v46, v50
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v45.l, 0x7fff, v42.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v55, v41
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v53, -v28, v49, 1.0
	v_mul_f32_e32 v42, v52, v48
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v49, v53, v49
	v_div_scale_f32 v53, s1, v15, v32, v15
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v57, -v50, v46, 1.0
	v_fma_f32 v59, -v41, v55, 1.0
	v_fma_f32 v58, -v47, v42, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v60, v53, v49
	v_fmac_f32_e32 v46, v57, v46
	v_div_scale_f32 v57, s2, v13, v27, v13
	v_fmac_f32_e32 v55, v59, v55
	v_div_scale_f32 v59, s3, v12, v44, v12
	v_fmac_f32_e32 v42, v58, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v62, v57, v46
	v_fma_f32 v58, -v28, v60, v53
	v_mul_f32_e32 v63, v59, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v47, v42, v52
	v_fma_f32 v52, -v50, v62, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v60, v58, v49
	v_fma_f32 v58, -v41, v63, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v42, v47, v48, v42
	v_fmac_f32_e32 v62, v52, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v28, -v28, v60, v53
	v_fmac_f32_e32 v63, v58, v55
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v50, v62, v57
	v_div_fmas_f32 v28, v28, v49, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v41, v63, v59
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v46, v47, v46, v62
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v41, v41, v55, v63
	v_div_fixup_f32 v13, v46, v27, v13
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v27, v61, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v12, v41, v44, v12
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v12, v24, v12
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v24, v8, v20
	v_mul_f32_e32 v20, v14, v20
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v18, v42, v31, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v7, v24, v7
	v_mul_f32_e32 v11, v20, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v29, v14, v29 :: v_dual_mul_f32 v18, v40, v18
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v29, v29, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 19 is_stmt 1              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v13, v29, v13
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v29, v8, v19
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v13.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v6, v29, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v24, 1, v4
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v15, v28, v32, v15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v18.h
	v_add3_u32 v24, v13, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v15, v27, v15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v27.l, v12.h
	v_mov_b16_e32 v27.h, v4.h
	v_cndmask_b16 v24.h, 0x7fff, v24.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v27, 1, v27
	v_add3_u32 v27, v12, v27, 0x7fff
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v12, v14, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v24.l, 0x7fff, v27.h, vcc_lo
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v10, v12, v10
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v12, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v12, v12, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v39, null, v12, v12, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v47, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v47, v40
	v_div_scale_f32 v47, s2, v11, v12, v11
	v_mul_f32_e32 v50, v47, v40
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v28, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v28
	v_mul_f32_e32 v28, 0xbfb8aa3b, v6
	v_cndmask_b32_e64 v13, 0, 0x42800000, s0
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v28
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v19, 0, 0x42800000, s1
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v13, v13, v20
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v13, 1.0, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v28, null, v13, v13, v7
	v_div_scale_f32 v41, vcc_lo, v7, v13, v7
	v_rcp_f32_e32 v31, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v28, v31, 1.0
	v_fmac_f32_e32 v31, v37, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v19, 0xbfb8aa3b, v6 :: v_dual_mul_f32 v46, v41, v31
	v_mul_f32_e32 v27, 0xbfb8aa3b, v10
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v18, v18
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v20, 0, 0x42800000, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v19, v19, v27
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v27.h, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v20, 0xbfb8aa3b, v10 :: v_dual_add_f32 v19, 1.0, v19
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v29, null, v19, v19, v6
	v_rcp_f32_e32 v38, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v20, v20, v32
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v32, 1, v4
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v42, -v29, v38, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v32, v18, v32, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v18, -v28, v46, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v37, null, v20, v20, v10
	v_fmac_f32_e32 v38, v42, v38
	v_div_scale_f32 v42, s0, v6, v19, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v44, v37
	v_fmac_f32_e32 v46, v18, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v49, v42, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v28, -v28, v46, v41
	v_fma_f32 v18, -v29, v49, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v37, v44, 1.0
	v_div_fmas_f32 v28, v28, v31, v46
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v18, v38
	v_fma_f32 v18, -v39, v50, v47
	v_fmac_f32_e32 v44, v48, v44
	v_div_scale_f32 v48, s3, v10, v20, v10
	v_fma_f32 v29, -v29, v49, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v50, v18, v40
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v27.l, v15.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v52, v48, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v18, v29, v38, v49
	v_fma_f32 v29, -v39, v50, v47
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v41, -v37, v52, v48
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v38, v8, v17
	v_mul_f32_e32 v8, v8, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v29, v29, v40, v50
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v52, v41, v44
	v_div_fixup_f32 v6, v18, v19, v6
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v8, v8, v35
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v27, 1, v27
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v7, v28, v13, v7
	v_fma_f32 v37, -v37, v52, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v6, v8, v6
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v37, v37, v44, v52
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s2, v6, v6
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v10, v37, v20, v10
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v31, v14, v16
	v_mul_f32_e32 v14, v14, v17
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v11, v29, v12, v11
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v16, v38, v36
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v27, v15, v27, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v9, v14, v9 :: v_dual_mov_b32 v14, 0x7632
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v32.l, 0x7fff, v27.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v9, v9, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v11.h, v4.h
	v_mov_b16_e32 v4.l, v9.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v17, v31, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_and_b32_e32 v12, 1, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v10, v17, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v12, v9, v12, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v11.l, v10.h
	v_cmp_o_f32_e64 s0, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v8, 1, v11
	v_mov_b16_e32 v11.l, v6.h
	v_add3_u32 v8, v10, v8, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v11
	v_add3_u32 v9, v6, v11, 0x7fff
	v_cndmask_b16 v6.h, 0x7fff, v12.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v7, v16, v7 :: v_dual_mov_b32 v12, 0x5410
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v0.l, 0x7fff, v9.h, s2
	v_cndmask_b16 v6.l, 0x7fff, v8.h, s0
	v_cndmask_b32_e32 v9, v54, v30, vcc_lo
	v_mov_b16_e32 v4.l, v7.h
	v_cmp_o_f32_e64 s1, v7, v7
	v_dual_cndmask_b32 v15, v56, v21 :: v_dual_cndmask_b32 v12, 0x1054, v12
	v_dual_cndmask_b32 v14, 0x3276, v14 :: v_dual_cndmask_b32 v17, v33, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b32_e32 v8, v30, v54, vcc_lo
	v_lshl_or_b32 v12, v12, 8, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v14, v14, 8, v14
	s_mov_b32 s0, 0x76543210
	v_add3_u32 v4, v7, v4, 0x7fff
	v_dual_cndmask_b32 v7, v25, v51 :: v_dual_and_b32 v12, 0x540054, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v14, 0x760076, v14
	v_dual_cndmask_b32 v11, v24, v22 :: v_dual_cndmask_b32 v16, v21, v56
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s1
	v_cndmask_b32_e32 v10, v22, v24, vcc_lo
	v_dual_cndmask_b32 v18, v23, v33 :: v_dual_cndmask_b32 v19, v32, v26
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v20, v26, v32 :: v_dual_cndmask_b32 v21, v0, v45
	v_cndmask_b32_e32 v0, v45, v0, vcc_lo
	v_permlanex16_b32 v22, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v8, v12, 4, v12
	v_lshl_or_b32 v12, v14, 4, v14
	v_dual_cndmask_b32 v13, v6, v43 :: v_dual_cndmask_b32 v6, v43, v6
	v_cndmask_b32_e32 v4, v51, v25, vcc_lo
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v24, 0x5040504, v8
	v_and_b32_e32 v25, 0x7060706, v12
	v_permlanex16_b32 v18, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v6, v7, v4, v24
	v_perm_b32 v7, v7, v4, v25
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
	v_add_lshl_u32 v0, v2, v3, 1
	v_perm_b32 v12, v23, v13, v24
	v_perm_b32 v13, v23, v13, v25
	v_add_lshl_u32 v3, v5, v3, 1
	v_add_lshl_u32 v2, v2, v1, 1
	v_add_lshl_u32 v1, v5, v1, 1
	s_clause 0x3
	buffer_store_b128 v[6:9], v0, s[12:15], 0 offen
	buffer_store_b128 v[10:13], v3, s[12:15], 0 offen
	buffer_store_b128 v[14:17], v2, s[12:15], 0 offen
	buffer_store_b128 v[18:21], v1, s[12:15], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 199
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.num_vgpr, 199
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18480
; TotalNumSgprs: 33
; NumVgprs: 199
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 33
; NumVGPRsForWavesPerEU: 199
; Occupancy: 7
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_pc_swiglu_bm128_bn128_bk32_gm4_w16_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     199
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
