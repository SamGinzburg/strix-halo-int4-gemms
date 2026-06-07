	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
	v_and_b32_e32 v66, 15, v0
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshlrev_b32_e32 v10, 2, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v3, 3, v0
	v_lshrrev_b32_e32 v4, 4, v0
	v_lshlrev_b32_e32 v12, 1, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v2, 3, v66
	v_lshrrev_b32_e32 v67, 1, v0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_lshlrev_b32_e32 v13, 3, v0
                                        ; implicit-def: $vgpr17
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
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v68, 0x70, v67
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v103, 0, v13
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
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_and_b32_e32 v1, 28, v10
	s_mov_b32 s11, 0x31027000
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s7, s7, 0x4f7ffffe
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s31, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_add_i32 s20, s4, 63
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s18
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s22, s19, s7
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s17, s3, 5
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[5:6], null, s34, v4, v[2:3]
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s18, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s23, s22, s6
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v8, s17, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s5, s20, 31
.Ltmp15:
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[6:7], null, s18, v3, v[1:2]
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s23
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v9, s17, v4
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s4, s5, 26
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
	v_cmp_gt_i32_e32 vcc_lo, s18, v8
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s5, 32, v8
	.loc	1 98 14 is_stmt 1               ; generate_amdgcn.py:98:14
	s_lshl_b32 s33, s2, 6
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s6, s18, v9
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s4, 32, v9
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s35, s22, 6
.Ltmp21:
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v5, s26, s21, v5
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	s_mul_i32 s16, s33, s18
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s20, 63
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add3_u32 v6, s17, s16, v6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s16, s5, vcc_lo
	s_and_b32 s6, s4, s6
	.loc	1 174 43                        ; generate_amdgcn.py:174:43
	v_add_nc_u32_e32 v7, s27, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s6
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_and_b32 s29, s29, 0xffff
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v8, 0x80000000, v7
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b32 v11, v6, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_clause 0x1
	buffer_load_b64 v[6:7], v5, s[28:31], 0 offen
	buffer_load_b64 v[8:9], v8, s[28:31], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshrrev_b32_e32 v5, 2, v0
	v_or_b32_e32 v102, v68, v66
	s_mov_b32 s6, -1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s20, 0x7f
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v5, 24, v5
	v_xor_b32_e32 v5, v10, v5
	v_and_b32_e32 v10, 0x218, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v104, 0, v5
	v_lshl_or_b32 v5, v66, 5, v10
	s_waitcnt vmcnt(2)
	ds_store_b32 v104, v11 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v103, v[6:7], v[8:9] offset1:8
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_or_b32_e32 v17, v68, v66
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v71, 0x80, v17
	v_or_b32_e32 v72, 0x100, v17
	v_or_b32_e32 v73, 0x180, v17
	v_or_b32_e32 v74, 0x200, v17
	v_or_b32_e32 v75, 0x280, v17
	v_or_b32_e32 v76, 0x300, v17
	v_or_b32_e32 v77, 0x380, v17
	v_or_b32_e32 v78, 0x400, v17
	v_or_b32_e32 v79, 0x480, v17
	v_or_b32_e32 v80, 0x500, v17
	v_or_b32_e32 v81, 0x580, v17
	v_or_b32_e32 v82, 0x600, v17
	v_or_b32_e32 v83, 0x680, v17
	v_or_b32_e32 v84, 0x700, v17
	v_or_b32_e32 v85, 0x780, v17
	v_or_b32_e32 v86, 0x800, v17
	v_or_b32_e32 v87, 0x880, v17
	v_or_b32_e32 v88, 0x900, v17
	v_or_b32_e32 v89, 0x980, v17
	v_or_b32_e32 v90, 0xa00, v17
	v_or_b32_e32 v91, 0xa80, v17
	v_or_b32_e32 v92, 0xb00, v17
	v_or_b32_e32 v93, 0xb80, v17
	v_or_b32_e32 v94, 0xc00, v17
	v_or_b32_e32 v95, 0xc80, v17
	v_or_b32_e32 v96, 0xd00, v17
	v_or_b32_e32 v97, 0xd80, v17
	v_or_b32_e32 v98, 0xe00, v17
	v_or_b32_e32 v99, 0xe80, v17
	v_or_b32_e32 v100, 0xf00, v17
	v_or_b32_e32 v101, 0xf80, v17
.LBB0_2:                                ; %Flow326
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_xor_b32_e32 v6, 8, v5
	v_xor_b32_e32 v7, 16, v5
	v_xor_b32_e32 v8, 24, v5
	v_dual_mov_b32 v35, 0 :: v_dual_and_b32 v70, 16, v4
	v_bfe_u32 v69, v0, 4, 1
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v105, 0, v6
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v108, 0, v5
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v106, 0, v7
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v107, 0, v8
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v64, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_add_i32 s1, s35, -1
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
	v_dual_mov_b32 v56, 0 :: v_dual_and_b32 v5, 0xe0, v0
	v_dual_mov_b32 v41, 0 :: v_dual_lshlrev_b32 v6, 1, v4
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_sub_nc_u32_e32 v111, s18, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v5, s19, 8, v5
	v_add3_u32 v7, s33, v70, v66
	v_lshl_or_b32 v6, s3, 6, v6
	s_lshl_b32 s3, s7, 8
	s_lshl_b32 s19, s19, 7
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v4, s34, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v9, 0x41, v6
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v6, 64, v6
	v_subrev_nc_u32_e32 v113, s3, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v9, s27, v9
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v8, 32, v7
	v_mul_lo_u32 v4, s27, v6
	v_mul_lo_u32 v7, s35, v7
	v_subrev_nc_u32_e32 v114, s3, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v8, s35, v8
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v3, s33, v3
	v_add3_u32 v5, v9, s19, v2
	s_lshl_b32 s7, s7, 7
	v_add3_u32 v2, v4, s19, v2
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v109, 0, v102
	v_or_b32_e32 v71, 0x80, v102
	v_or_b32_e32 v72, 0x100, v102
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[33:34], null, s18, v3, v[1:2]
	v_or_b32_e32 v73, 0x180, v102
	v_or_b32_e32 v74, 0x200, v102
	v_or_b32_e32 v75, 0x280, v102
	v_or_b32_e32 v76, 0x300, v102
	v_or_b32_e32 v77, 0x380, v102
	v_or_b32_e32 v78, 0x400, v102
	v_or_b32_e32 v79, 0x480, v102
	v_or_b32_e32 v80, 0x500, v102
	v_or_b32_e32 v81, 0x580, v102
	v_or_b32_e32 v82, 0x600, v102
	v_or_b32_e32 v83, 0x680, v102
	v_or_b32_e32 v84, 0x700, v102
	v_or_b32_e32 v85, 0x780, v102
	v_or_b32_e32 v86, 0x800, v102
	v_or_b32_e32 v87, 0x880, v102
	v_or_b32_e32 v88, 0x900, v102
	v_or_b32_e32 v89, 0x980, v102
	v_or_b32_e32 v90, 0xa00, v102
	v_or_b32_e32 v91, 0xa80, v102
	v_or_b32_e32 v92, 0xb00, v102
	v_or_b32_e32 v93, 0xb80, v102
	v_or_b32_e32 v94, 0xc00, v102
	v_or_b32_e32 v95, 0xc80, v102
	v_or_b32_e32 v96, 0xd00, v102
	v_or_b32_e32 v97, 0xd80, v102
	v_or_b32_e32 v98, 0xe00, v102
	v_or_b32_e32 v99, 0xe80, v102
	v_or_b32_e32 v100, 0xf00, v102
	v_or_b32_e32 v101, 0xf80, v102
	v_sub_nc_u32_e32 v110, s18, v1
	v_dual_mov_b32 v65, 0 :: v_dual_lshlrev_b32 v112, 1, v69
	v_dual_mov_b32 v60, 0 :: v_dual_lshlrev_b32 v115, 1, v8
	v_dual_mov_b32 v59, 0 :: v_dual_lshlrev_b32 v116, 1, v7
	v_subrev_nc_u32_e32 v117, s7, v5
	v_subrev_nc_u32_e32 v118, s7, v2
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v35, 0
	v_mov_b32_e32 v34, 0
	s_mov_b32 s16, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_max_i32 s6, s1, 1
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_lshl_b32 s0, s27, 2
	s_lshl_b32 s3, s6, 1
	s_lshl_b32 s6, s27, 6
	s_add_i32 s7, s17, 32
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
	s_mov_b32 s44, s16
.LBB0_4:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e32 vcc_lo, s7, v110
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v1, s7, v33
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v127, s23 :: v_dual_mov_b32 v124, s20
	v_mov_b32_e32 v126, s22
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 vcc_lo, vcc_lo, s5
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v125, s21 :: v_dual_mov_b32 v122, s18
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v123, s19 :: v_dual_mov_b32 v120, s16
	v_mov_b32_e32 v121, s17
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e32 vcc_lo, s7, v111
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b32 v119, v1, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v1, v109 offset:640
	ds_load_u8 v2, v109 offset:896
	ds_load_u8 v3, v109 offset:768
	ds_load_u8 v4, v109 offset:512
	ds_load_u8 v5, v109 offset:128
	ds_load_u8 v6, v109 offset:384
	ds_load_u8 v7, v109 offset:256
	ds_load_u8 v8, v109
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v9, v109 offset:4736
	ds_load_u8 v10, v109 offset:4992
	ds_load_u8 v11, v109 offset:4864
	ds_load_u8 v12, v109 offset:4608
	ds_load_u8 v13, v109 offset:4224
	ds_load_u8 v14, v109 offset:4352
	ds_load_u8 v15, v109 offset:4096
	ds_load_u8 v16, v109 offset:4480
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[128:131], v108 offset0:16 offset1:18
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v134, v109 offset:1664
	ds_load_u8 v135, v109 offset:1792
	ds_load_u8 v136, v109 offset:1536
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s7, s7, 32
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v1, v4, v1, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v4, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v3, v8, v5, 0xc0c0004
	v_lshl_or_b32 v2, v2, 16, v1
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v6, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v5, v12, v9, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v1, v4, 16, v3
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v7, v15, v13, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v8, v14, v16, 0xc0c0004
	v_lshl_or_b32 v133, v6, 16, v5
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[1:2], v[128:129], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[1:2], v[130:131], v[120:127] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v132, v8, 16, v7
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[132:133], v[128:129], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[132:133], v[130:131], v[120:127] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v120, v109 offset:1920
	ds_load_u8 v121, v109 offset:1152
	ds_load_u8 v122, v109 offset:1280
	ds_load_u8 v123, v109 offset:1024
	ds_load_u8 v124, v109 offset:1408
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v125, v109 offset:5760
	ds_load_u8 v127, v109 offset:5888
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v126, v136, v134, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v120, v135, v120, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v121, v123, v121, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v123, v109 offset:6016
	ds_load_u8 v128, v109 offset:5632
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v122, v122, v124, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v124, v109 offset:5504
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v123, v127, v123, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v128, v128, v125, 0xc0c0004
	ds_load_u8 v125, v109 offset:5248
	ds_load_u8 v127, v109 offset:5376
	ds_load_u8 v129, v109 offset:5120
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v130, v127, v124, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v129, v125, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v125, v120, 16, v126
	v_lshl_or_b32 v124, v122, 16, v121
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v127, v123, 16, v128
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[120:123], v105 offset0:16 offset1:18
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v128, v109 offset:2688
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v126, v130, 16, v129
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[124:125], v[120:121], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[124:125], v[122:123], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v124, v109 offset:2816
	ds_load_u8 v125, v109 offset:2560
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[126:127], v[120:121], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[126:127], v[122:123], v[17:24] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v120, v109 offset:2944
	ds_load_u8 v121, v109 offset:2176
	ds_load_u8 v122, v109 offset:2304
	ds_load_u8 v123, v109 offset:2048
	ds_load_u8 v126, v109 offset:2432
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v127, v109 offset:6784
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v120, v124, v120, 0xc0c0004
	v_perm_b32 v125, v125, v128, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v128, v109 offset:6912
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v121, v123, v121, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v123, v109 offset:7040
	ds_load_u8 v124, v109 offset:6656
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v122, v122, v126, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v126, v109 offset:6528
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v125, v120, 16, v125
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v123, v128, v123, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v127, v124, v127, 0xc0c0004
	ds_load_u8 v124, v109 offset:6272
	ds_load_u8 v128, v109 offset:6400
	ds_load_u8 v129, v109 offset:6144
	v_lshl_or_b32 v127, v123, 16, v127
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v126, v128, v126, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v129, v124, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v124, v122, 16, v121
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[120:123], v106 offset0:16 offset1:18
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v128, v109 offset:3712
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v126, v126, 16, v129
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[124:125], v[120:121], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[124:125], v[122:123], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v124, v109 offset:3840
	ds_load_u8 v125, v109 offset:3584
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[126:127], v[120:121], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[126:127], v[122:123], v[17:24] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v120, v109 offset:3968
	ds_load_u8 v121, v109 offset:3200
	ds_load_u8 v122, v109 offset:3328
	ds_load_u8 v123, v109 offset:3072
	ds_load_u8 v126, v109 offset:3456
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v127, v109 offset:7808
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v120, v124, v120, 0xc0c0004
	v_perm_b32 v125, v125, v128, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v128, v109 offset:7936
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v121, v123, v121, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v123, v109 offset:8064
	ds_load_u8 v124, v109 offset:7680
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v122, v122, v126, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v126, v109 offset:7552
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v125, v120, 16, v125
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v123, v128, v123, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v127, v124, v127, 0xc0c0004
	ds_load_u8 v124, v109 offset:7296
	ds_load_u8 v128, v109 offset:7424
	ds_load_u8 v129, v109 offset:7168
	v_lshl_or_b32 v127, v123, 16, v127
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v126, v128, v126, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v129, v124, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v124, v122, 16, v121
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[120:123], v107 offset0:16 offset1:18
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_nc_u32_e32 v128, s44, v115
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v126, v126, 16, v129
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[124:125], v[120:121], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[124:125], v[122:123], v[25:32] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v125, v128, s[36:39], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v124, v112, v114
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[126:127], v[120:121], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[126:127], v[122:123], v[17:24] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v121, v26
	v_cvt_f32_i32_e32 v122, v27
	v_cvt_f32_i32_e32 v123, v28
	v_cvt_f32_i32_e32 v26, v29
	v_cvt_f32_i32_e32 v28, v30
	v_cvt_f32_i32_e32 v27, v32
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v29, v17
	v_cvt_f32_i32_e32 v30, v19
	v_cvt_f32_i32_e32 v32, v20
	v_cvt_f32_i32_e32 v19, v21
	v_cvt_f32_i32_e32 v21, v22
	v_cvt_f32_i32_e32 v20, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v22, v9
	v_cvt_f32_i32_e32 v24, v10
	v_cvt_f32_i32_e32 v126, v11
	v_cvt_f32_i32_e32 v127, v12
	v_cvt_f32_i32_e32 v10, v13
	v_cvt_f32_i32_e32 v12, v14
	v_cvt_f32_i32_e32 v9, v15
	v_cvt_f32_i32_e32 v11, v16
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v13, v1
	v_cvt_f32_i32_e32 v15, v2
	v_cvt_f32_i32_e32 v14, v3
	v_cvt_f32_i32_e32 v16, v4
	v_cvt_f32_i32_e32 v2, v5
	v_cvt_f32_i32_e32 v4, v6
	v_cvt_f32_i32_e32 v1, v7
	v_cvt_f32_i32_e32 v3, v8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v17, v124, s[40:43], 0 offen
	buffer_load_u16 v128, v124, s[40:43], 0 offen offset:4
	buffer_load_u16 v129, v124, s[40:43], 0 offen offset:8
	buffer_load_u16 v130, v124, s[40:43], 0 offen offset:12
	buffer_load_u16 v6, v124, s[40:43], 0 offen offset:16
	buffer_load_u16 v8, v124, s[40:43], 0 offen offset:20
	buffer_load_u16 v5, v124, s[40:43], 0 offen offset:24
	buffer_load_u16 v7, v124, s[40:43], 0 offen offset:28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v120, v25
	v_cvt_f32_i32_e32 v25, v31
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v31, v18
	v_cvt_f32_i32_e32 v18, v23
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v114, s0, v114
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v23, 16, v125
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_cndmask_b32_e32 v125, 0x80000000, v117, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v117, s6, v117
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v124, 16, v17
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v17, v23, v120 :: v_dual_add_nc_u32 v120, v112, v113
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v113, s0, v113
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v53, v17, v124
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_nc_u32_e32 v17, s44, v116
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s44, s44, 2
	s_cmp_lg_u32 s3, s44
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v17, v17, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v22, v17, v22 :: v_dual_mul_f32 v121, v23, v121
	v_mul_f32_e32 v123, v23, v123
	v_mul_f32_e32 v28, v23, v28
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v30, v23, v30
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v64, v22, v124
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e32 v124, 0x80000000, v118, vcc_lo
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v22, 16, v128
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v24, v17, v24
	v_mul_f32_e32 v126, v17, v126
	v_mul_f32_e32 v127, v17, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v31, v23, v31 :: v_dual_fmac_f32 v54, v121, v22
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v122, v23, v122 :: v_dual_lshlrev_b32 v121, 16, v129
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v29, v23, v29 :: v_dual_add_nc_u32 v118, s6, v118
	v_dual_mul_f32 v32, v23, v32 :: v_dual_fmac_f32 v61, v126, v121
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v49, v122, v121
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v121, 16, v130
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v65, v24, v22
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x4
	buffer_load_u16 v22, v120, s[40:43], 0 offen
	buffer_load_u16 v24, v120, s[40:43], 0 offen offset:4
	buffer_load_u16 v122, v120, s[40:43], 0 offen offset:8
	buffer_load_u16 v126, v120, s[40:43], 0 offen offset:12
	buffer_load_u16 v128, v120, s[40:43], 0 offen offset:16
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v50, v123, v121
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v123, v120, s[40:43], 0 offen offset:20
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v62, v127, v121
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x1
	buffer_load_u16 v127, v120, s[40:43], 0 offen offset:28
	buffer_load_u16 v129, v120, s[40:43], 0 offen offset:24
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b64 v[120:121], v124, s[28:31], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v26, v23, v26
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v23, v21
	v_mul_f32_e32 v124, v23, v19
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v23, v27
	v_mul_f32_e32 v25, v23, v25
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v20, v23, v20
	v_mul_f32_e32 v23, v23, v18
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	buffer_load_b64 v[18:19], v125, s[28:31], 0 offen
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v15, v17, v15 :: v_dual_lshlrev_b32 v6, 16, v6
	v_dual_mul_f32 v16, v17, v16 :: v_dual_lshlrev_b32 v7, 16, v7
	v_dual_mul_f32 v14, v17, v14 :: v_dual_lshlrev_b32 v5, 16, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v4, v17, v4 :: v_dual_fmac_f32 v45, v26, v6
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v9, v17, v9 :: v_dual_fmac_f32 v46, v28, v8
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v13, v17, v13
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v12, v17, v12
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v3, v17, v3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v11, v17, v11
	v_mul_f32_e32 v10, v17, v10
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_store_b32 v104, v119 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v103, v[120:121], v[18:19] offset1:8
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v24, 16, v24
	v_lshlrev_b32_e32 v22, 16, v22
	v_lshlrev_b32_e32 v125, 16, v126
	v_lshlrev_b32_e32 v122, 16, v122
	v_lshlrev_b32_e32 v123, 16, v123
	v_lshlrev_b32_e32 v126, 16, v128
	v_lshlrev_b32_e32 v127, 16, v127
	v_lshlrev_b32_e32 v128, 16, v129
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v2, v17, v2 :: v_dual_fmac_f32 v63, v15, v24
	v_dual_mul_f32 v1, v17, v1 :: v_dual_fmac_f32 v34, v27, v7
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v58, v12, v8 :: v_dual_fmac_f32 v35, v25, v5
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v56, v4, v123
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v36, v9, v5 :: v_dual_fmac_f32 v37, v11, v7
	v_fmac_f32_e32 v57, v10, v6
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v41, v13, v22 :: v_dual_fmac_f32 v60, v16, v125
	v_dual_fmac_f32 v59, v14, v122 :: v_dual_fmac_f32 v38, v1, v128
	v_dual_fmac_f32 v55, v2, v126 :: v_dual_fmac_f32 v52, v31, v24
	v_dual_fmac_f32 v39, v3, v127 :: v_dual_fmac_f32 v48, v32, v125
	v_dual_fmac_f32 v51, v29, v22 :: v_dual_fmac_f32 v40, v23, v128
	v_dual_fmac_f32 v47, v30, v122 :: v_dual_fmac_f32 v44, v21, v123
	v_fmac_f32_e32 v43, v124, v126
	v_fmac_f32_e32 v42, v20, v127
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v17, v102
.LBB0_6:                                ; %._crit_edge
	.loc	1 162 26 is_stmt 1              ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[13:16], v105 offset0:16 offset1:18
	ds_load_2addr_stride64_b64 v[5:8], v106 offset0:16 offset1:18
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[1:4], v107 offset0:16 offset1:18
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[9:12], v108 offset0:16 offset1:18
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	v_cndmask_b32_e64 v18, 0, 1, s2
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v100, 0, v100
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v101, 0, v101
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v18
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v99, 0, v99
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v98, 0, v98
	v_add_nc_u32_e32 v97, 0, v97
	v_add_nc_u32_e32 v96, 0, v96
	v_dual_mov_b32 v18, 0 :: v_dual_add_nc_u32 v95, 0, v95
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v94, 0, v94
	v_dual_mov_b32 v24, 0 :: v_dual_add_nc_u32 v93, 0, v93
	v_add_nc_u32_e32 v92, 0, v92
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v91, 0, v91
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v90, 0, v90
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v89, 0, v89
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v88, 0, v88
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v87, 0, v87
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v86, 0, v86
	v_add_nc_u32_e32 v105, 0, v85
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v102, 0, v84
	v_add_nc_u32_e32 v108, 0, v83
	v_add_nc_u32_e32 v109, 0, v82
	v_add_nc_u32_e32 v103, 0, v81
	v_add_nc_u32_e32 v104, 0, v80
	v_add_nc_u32_e32 v106, 0, v79
	v_add_nc_u32_e32 v107, 0, v78
	v_add_nc_u32_e32 v114, 0, v77
	v_add_nc_u32_e32 v110, 0, v76
	v_add_nc_u32_e32 v116, 0, v75
	v_add_nc_u32_e32 v117, 0, v74
	v_add_nc_u32_e32 v112, 0, v73
	v_add_nc_u32_e32 v113, 0, v72
	v_add_nc_u32_e32 v111, 0, v71
	v_add_nc_u32_e32 v115, 0, v17
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_mov_b32_e32 v17, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_mov_b32 s4, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	ds_load_u8 v17, v116
	ds_load_u8 v18, v117
	ds_load_u8 v19, v114
	ds_load_u8 v20, v115
	ds_load_u8 v21, v112
	ds_load_u8 v22, v113
	ds_load_u8 v23, v110
	ds_load_u8 v24, v111
	ds_load_u8 v30, v91
	ds_load_u8 v31, v90
	ds_load_u8 v32, v93
	ds_load_u8 v33, v87
	ds_load_u8 v71, v86
	ds_load_u8 v72, v89
	ds_load_u8 v81, v88
	ds_load_u8 v82, v92
	ds_load_u8 v83, v99
	ds_load_u8 v84, v98
	ds_load_u8 v85, v101
	ds_load_u8 v118, v95
	ds_load_u8 v119, v94
	ds_load_u8 v120, v97
	ds_load_u8 v121, v96
	ds_load_u8 v122, v100
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v80, s11 :: v_dual_mov_b32 v79, s10
	v_dual_mov_b32 v78, s9 :: v_dual_mov_b32 v77, s8
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	v_dual_mov_b32 v76, s7 :: v_dual_mov_b32 v75, s6
	v_dual_mov_b32 v74, s5 :: v_dual_mov_b32 v73, s4
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v18, v23, v19, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v19, v20, v24, 0xc0c0004
	v_perm_b32 v20, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v31, v82, v32, 0xc0c0004
	v_lshl_or_b32 v26, v18, 16, v17
	v_perm_b32 v32, v71, v33, 0xc0c0004
	v_lshl_or_b32 v25, v20, 16, v19
	ds_load_u8 v17, v108
	ds_load_u8 v18, v109
	ds_load_u8 v19, v105
	ds_load_u8 v20, v106
	ds_load_u8 v21, v107
	ds_load_u8 v22, v103
	ds_load_u8 v23, v104
	ds_load_u8 v24, v102
	v_perm_b32 v33, v81, v72, 0xc0c0004
	v_lshl_or_b32 v31, v31, 16, v30
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v71, v119, v118, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v30, v33, 16, v32
	v_perm_b32 v32, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v33, v122, v85, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v27, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v123, v21, v20, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v124, v23, v22, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v24, v19, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[9:10], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[25:26], v[11:12], v[73:80] neg_lo:[1,1,0]
	v_perm_b32 v25, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v28, v28, 16, v27
	v_lshl_or_b32 v27, v124, 16, v123
	v_lshl_or_b32 v26, v33, 16, v32
	v_lshl_or_b32 v25, v25, 16, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[27:28], v[13:14], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[27:28], v[15:16], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[30:31], v[5:6], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[30:31], v[7:8], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[1:2], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[25:26], v[3:4], v[73:80] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v31, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v71, v18
	v_cvt_f32_i32_e32 v33, v19
	v_cvt_f32_i32_e32 v72, v20
	v_cvt_f32_i32_e32 v30, v21
	v_cvt_f32_i32_e32 v32, v22
	v_cvt_f32_i32_e32 v17, v23
	v_cvt_f32_i32_e32 v18, v24
	v_cvt_f32_i32_e32 v24, v73
	v_cvt_f32_i32_e32 v27, v74
	v_cvt_f32_i32_e32 v26, v75
	v_cvt_f32_i32_e32 v28, v76
	v_cvt_f32_i32_e32 v23, v77
	v_cvt_f32_i32_e32 v25, v78
	v_cvt_f32_i32_e32 v19, v79
	v_cvt_f32_i32_e32 v20, v80
.LBB0_8:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_mov_b32_e32 v79, 0
	.loc	1 175 36 is_stmt 1              ; generate_amdgcn.py:175:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	ds_load_u8 v21, v116 offset:4096
	ds_load_u8 v22, v117 offset:4096
	ds_load_u8 v29, v114 offset:4096
	ds_load_u8 v73, v115 offset:4096
	ds_load_u8 v74, v112 offset:4096
	ds_load_u8 v75, v113 offset:4096
	ds_load_u8 v76, v110 offset:4096
	ds_load_u8 v77, v111 offset:4096
	ds_load_u8 v99, v99 offset:4096
	ds_load_u8 v98, v98 offset:4096
	ds_load_u8 v101, v101 offset:4096
	ds_load_u8 v95, v95 offset:4096
	ds_load_u8 v94, v94 offset:4096
	ds_load_u8 v97, v97 offset:4096
	ds_load_u8 v96, v96 offset:4096
	ds_load_u8 v100, v100 offset:4096
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v22, v76, v29, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v29, v73, v77, 0xc0c0004
	v_perm_b32 v73, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v22, v22, 16, v21
	v_lshl_or_b32 v21, v73, 16, v29
	ds_load_u8 v29, v108 offset:4096
	ds_load_u8 v73, v109 offset:4096
	ds_load_u8 v74, v105 offset:4096
	ds_load_u8 v75, v106 offset:4096
	ds_load_u8 v76, v107 offset:4096
	ds_load_u8 v77, v103 offset:4096
	ds_load_u8 v78, v104 offset:4096
	ds_load_u8 v79, v102 offset:4096
	ds_load_u8 v81, v91 offset:4096
	ds_load_u8 v82, v90 offset:4096
	ds_load_u8 v83, v93 offset:4096
	ds_load_u8 v84, v87 offset:4096
	ds_load_u8 v85, v86 offset:4096
	ds_load_u8 v102, v89 offset:4096
	ds_load_u8 v103, v88 offset:4096
	ds_load_u8 v104, v92 offset:4096
	v_dual_mov_b32 v93, s11 :: v_dual_mov_b32 v92, s10
	v_dual_mov_b32 v91, s9 :: v_dual_mov_b32 v90, s8
	v_dual_mov_b32 v89, s7 :: v_dual_mov_b32 v88, s6
	v_dual_mov_b32 v87, s5 :: v_dual_mov_b32 v86, s4
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v29, v73, v29, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v106, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v107, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v105, v79, v74, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[73:80], v[21:22], v[9:10], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[21:22], v[11:12], v[86:93] neg_lo:[1,1,0]
	v_lshl_or_b32 v9, v107, 16, v106
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v10, v105, 16, v29
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v29, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v104, v83, 0xc0c0004
	v_perm_b32 v82, v85, v84, 0xc0c0004
	v_perm_b32 v83, v103, v102, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[73:80], v[9:10], v[13:14], v[73:80] neg_lo:[1,1,0]
	v_perm_b32 v11, v96, v97, 0xc0c0004
	v_lshl_or_b32 v14, v81, 16, v29
	v_perm_b32 v29, v98, v99, 0xc0c0004
	v_lshl_or_b32 v13, v83, 16, v82
	v_perm_b32 v81, v100, v101, 0xc0c0004
	v_perm_b32 v82, v94, v95, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[86:93], v[9:10], v[15:16], v[86:93] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[13:14], v[5:6], v[73:80] neg_lo:[1,1,0]
	v_lshl_or_b32 v6, v81, 16, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v5, v11, 16, v82
	v_wmma_i32_16x16x16_iu4 v[86:93], v[13:14], v[7:8], v[86:93] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[5:6], v[1:2], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[5:6], v[3:4], v[86:93] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v29, v73
	v_cvt_f32_i32_e32 v84, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v83, v75
	v_cvt_f32_i32_e32 v85, v76
	v_cvt_f32_i32_e32 v81, v77
	v_cvt_f32_i32_e32 v82, v78
	v_cvt_f32_i32_e32 v21, v79
	v_cvt_f32_i32_e32 v22, v80
	v_cvt_f32_i32_e32 v74, v86
	v_cvt_f32_i32_e32 v78, v87
	v_cvt_f32_i32_e32 v77, v88
	v_cvt_f32_i32_e32 v80, v89
	v_cvt_f32_i32_e32 v73, v90
	v_cvt_f32_i32_e32 v75, v91
	v_cvt_f32_i32_e32 v76, v92
	v_cvt_f32_i32_e32 v79, v93
.LBB0_10:
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	s_waitcnt lgkmcnt(1)
	v_or_b32_e32 v1, v70, v66
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s0, s33, s35
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s1, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v2, v69, v68
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s1, s34
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v4, 32, v1
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v3, s35, v1
	s_add_i32 s1, s0, s1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v6, 2, v2
	s_waitcnt lgkmcnt(0)
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
	v_or_b32_e32 v69, 12, v2
	v_or_b32_e32 v70, 14, v2
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
	v_add_lshl_u32 v66, s0, v11, 1
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
	v_add_lshl_u32 v68, s1, v70, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v3, 0x80000000, v66, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	v_add_lshl_u32 v66, s1, v69, 1
	s_clause 0x3
	buffer_load_u16 v86, v2, s[16:19], 0 offen
	buffer_load_u16 v87, v6, s[16:19], 0 offen
	buffer_load_u16 v88, v9, s[16:19], 0 offen
	buffer_load_u16 v89, v10, s[16:19], 0 offen
	v_cndmask_b32_e64 v6, 0x80000000, v12, s2
	v_cndmask_b32_e64 v2, 0x80000000, v11, s2
	v_cndmask_b32_e64 v10, 0x80000000, v68, s2
	v_cndmask_b32_e64 v9, 0x80000000, v66, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x5
	buffer_load_u16 v90, v5, s[16:19], 0 offen
	buffer_load_u16 v91, v3, s[16:19], 0 offen
	buffer_load_u16 v92, v6, s[16:19], 0 offen
	buffer_load_u16 v93, v2, s[16:19], 0 offen
	buffer_load_u16 v68, v10, s[16:19], 0 offen
	buffer_load_u16 v66, v9, s[16:19], 0 offen
	v_add_lshl_u32 v10, s0, v69, 1
	v_add_lshl_u32 v11, s0, v70, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.h, 0
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	s_mul_i32 s33, s33, s27
	v_mul_lo_u32 v2, s27, v1
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	s_clause 0x1
	buffer_load_u16 v10, v10, s[16:19], 0 offen
	buffer_load_u16 v11, v11, s[16:19], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v12.h, v3.h
	v_mov_b16_e32 v6.h, v3.h
	v_mov_b16_e32 v9.h, v3.h
	v_and_b32_e32 v0, 16, v0
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v4, s27, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, s19
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v8, 16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v78, v78, v8 :: v_dual_lshlrev_b32 v7, 16, v7
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v69, v71, v7
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v70, v84, v7
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v71, v72, v7
	v_mul_f32_e32 v33, v33, v7
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v72, v85, v7
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v32, v32, v7 :: v_dual_mul_f32 v77, v77, v8
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v31, v31, v7 :: v_dual_lshlrev_b32 v16, 16, v16
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v82, v82, v7 :: v_dual_mul_f32 v27, v27, v8
	v_dual_mul_f32 v29, v29, v7 :: v_dual_lshlrev_b32 v14, 16, v14
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v25, v25, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v69, v69, v16, v65
	v_fma_f32 v16, v27, v16, v54
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v83, v83, v7
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v30, v30, v7 :: v_dual_lshlrev_b32 v85, 16, v86
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v84, 16, v87
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v87, 16, v88
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v88, 16, v90
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v86, 16, v89
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v90, 16, v92
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v70, v70, v84, v63
	v_fma_f32 v27, v78, v84, v52
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v66, 16, v66
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v25, v25, v88, v46
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v28, v28, v8 :: v_dual_lshlrev_b32 v89, 16, v91
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v63, v63, v70, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v23, v23, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v46, v25, s2
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v29, v29, v85, v41
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v27, v52, v27, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v46, 0xbfb8aa3b, v63
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v81, v81, v7 :: v_dual_lshlrev_b32 v68, 16, v68
	v_dual_mul_f32 v74, v74, v8 :: v_dual_lshlrev_b32 v15, 16, v15
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v91, 16, v93
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v82, v82, v90, v56
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v83, v83, v87, v59
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v73, v73, v8
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v23, v23, v89, v45
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v41, v29, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v26, v26, v8
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v75, v75, v8 :: v_dual_mul_f32 v52, 0xbfb8aa3b, v27
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v71, v71, v15, v62
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v81, v81, v91, v55
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v15, v28, v15, v50
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v56, v56, v82, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v63
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v73, v73, v91, v43
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v33, v33, v13, v61
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v72, v72, v86, v60
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v59, v59, v83, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v80, v80, v8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v45, v23, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v45, 0xbfb8aa3b, v29
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v13, v26, v13, v49
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v26, v77, v87, v47
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v52
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v24, v24, v8 :: v_dual_and_b32 v5, 0x78, v67
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v30, v30, v89, v57
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v55, v55, v81, s2
	v_cndmask_b32_e64 v15, v50, v15, s2
	v_cndmask_b32_e64 v43, v43, v73, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v50, 0xbfb8aa3b, v56
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v60, v60, v72, s2
	v_cndmask_b32_e64 v26, v47, v26, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v47, 0xbfb8aa3b, v59
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v28, v80, v86, v48
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v52, 0, 0x42800000, s6
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v79, v79, v8
	v_mul_f32_e32 v76, v76, v8
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v31, v31, v14, v64
	v_fma_f32 v14, v24, v14, v53
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v24, v74, v85, v51
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v57, v30, s2
	v_cndmask_b32_e64 v13, v49, v13, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v49, 0xbfb8aa3b, v55
	v_mul_f32_e32 v57, 0xbfb8aa3b, v43
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v50
	v_exp_f32_e32 v46, v46
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v28, v48, v28, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v48, 0xbfb8aa3b, v60
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v74, v75, v90, v44
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v27
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v75, v79, v68, v42
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v41, v62, v71, s2
	v_cndmask_b32_e64 v24, v51, v24, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v50, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v49
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v14, v53, v14, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v53, 0xbfb8aa3b, v26
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v45
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v48
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v16, v54, v16, s2
	v_cndmask_b32_e64 v42, v42, v75, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v54, 0xbfb8aa3b, v28
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v47
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v32, v32, v88, v58
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v44, v44, v74, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v49, 0, 0x42800000, s5
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v56
	v_ldexp_f32 v46, v46, v62
	v_mul_f32_e32 v51, 0xbfb8aa3b, v24
	v_cndmask_b32_e64 v45, 0, 0x42800000, s0
	v_cndmask_b32_e64 v48, 0, 0x42800000, s1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v33, v61, v33, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v61, 0xbfb8aa3b, v42
	v_cndmask_b32_e64 v47, 0, 0x42800000, s3
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v54
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v53
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v32, v58, v32, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v58, 0xbfb8aa3b, v44 :: v_dual_fmac_f32 v45, 0xbfb8aa3b, v29
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v55
	v_exp_f32_e32 v50, v50
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v51
	v_dual_fmac_f32 v48, 0xbfb8aa3b, v60 :: v_dual_fmac_f32 v47, 0xbfb8aa3b, v59
	v_cndmask_b32_e64 v54, 0, 0x42800000, s8
	v_cndmask_b32_e64 v53, 0, 0x42800000, s9
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v51, 0, 0x42800000, s7
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v58
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s4
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v48, v48
	v_dual_fmac_f32 v54, 0xbfb8aa3b, v28 :: v_dual_fmac_f32 v53, 0xbfb8aa3b, v26
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v52, v52
	v_cndmask_b32_e64 v58, 0, 0x42800000, s10
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v57
	v_ldexp_f32 v50, v50, v71
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v24
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v65, v65, v69, s2
	v_cndmask_b32_e64 v31, v64, v31, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s6
	v_exp_f32_e32 v53, v53
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v62, null, v46, v46, v63
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v57, 0, 0x42800000, s11
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v44
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v51, v51
	v_ldexp_f32 v45, v45, v64
	v_ldexp_f32 v48, v48, v69
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s9
	v_ldexp_f32 v47, v47, v70
	v_ldexp_f32 v52, v52, v73
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v92, v62
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s7
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v43
	v_exp_f32_e32 v58, v58
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v54, v54
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v45, 1.0, v45 :: v_dual_add_f32 v48, 1.0, v48
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v53, v53, v77
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v47, 1.0, v47 :: v_dual_add_f32 v52, 1.0, v52
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, s10
	v_ldexp_f32 v51, v51, v74
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s8
	v_exp_f32_e32 v57, v57
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v71, null, v48, v48, v60
	v_div_scale_f32 v69, null, v45, v45, v29
	v_div_scale_f32 v73, null, v47, v47, v59
	v_div_scale_f32 v80, null, v52, v52, v27
	v_fma_f32 v104, -v62, v92, 1.0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v58, v58, v78
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s11
	v_ldexp_f32 v49, v49, v72
	v_ldexp_f32 v54, v54, v75
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v94, v71
	v_div_scale_f32 v75, null, v50, v50, v56
	v_rcp_f32_e32 v93, v69
	v_rcp_f32_e32 v95, v73
	v_rcp_f32_e32 v98, v80
	v_fmac_f32_e32 v92, v104, v92
	v_div_scale_f32 v86, null, v53, v53, v26
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v58, 1.0, v58
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v82, null, v51, v51, v24
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v57, v57, v79
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v49, 1.0, v49 :: v_dual_add_f32 v54, 1.0, v54
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v96, v75
	v_rcp_f32_e32 v101, v86
	v_div_scale_f32 v88, null, v58, v58, v44
	v_rcp_f32_e32 v99, v82
	v_div_scale_f32 v78, null, v49, v49, v55
	v_div_scale_f32 v84, null, v54, v54, v28
	v_fma_f32 v106, -v71, v94, 1.0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v105, -v69, v93, 1.0
	v_fma_f32 v107, -v73, v95, 1.0
	v_fma_f32 v110, -v80, v98, 1.0
	v_rcp_f32_e32 v102, v88
	v_rcp_f32_e32 v97, v78
	v_rcp_f32_e32 v100, v84
	v_fmac_f32_e32 v94, v106, v94
	v_div_scale_f32 v90, null, v57, v57, v43
	v_div_scale_f32 v64, s0, v63, v46, v63
	v_div_scale_f32 v70, s1, v29, v45, v29
	v_div_scale_f32 v74, s4, v59, v47, v59
	v_div_scale_f32 v81, vcc_lo, v27, v52, v27
	v_fma_f32 v108, -v75, v96, 1.0
	v_fma_f32 v113, -v86, v101, 1.0
	v_fmac_f32_e32 v93, v105, v93
	v_dual_fmac_f32 v95, v107, v95 :: v_dual_fmac_f32 v98, v110, v98
	v_fma_f32 v111, -v82, v99, 1.0
	v_rcp_f32_e32 v103, v90
	v_div_scale_f32 v77, s5, v56, v50, v56
	v_dual_fmac_f32 v96, v108, v96 :: v_dual_fmac_f32 v101, v113, v101
	v_dual_mul_f32 v104, v64, v92 :: v_dual_mul_f32 v105, v70, v93
	v_dual_mul_f32 v107, v74, v95 :: v_dual_mul_f32 v110, v81, v98
	v_div_scale_f32 v83, s7, v24, v51, v24
	v_fma_f32 v114, -v88, v102, 1.0
	v_fmac_f32_e32 v99, v111, v99
	v_fma_f32 v109, -v78, v97, 1.0
	v_fma_f32 v112, -v84, v100, 1.0
	v_div_scale_f32 v87, s9, v26, v53, v26
	v_mul_f32_e32 v108, v77, v96
	v_fma_f32 v116, -v62, v104, v64
	v_fma_f32 v117, -v69, v105, v70
	v_fma_f32 v119, -v73, v107, v74
	v_fma_f32 v122, -v80, v110, v81
	v_div_scale_f32 v89, s10, v44, v58, v44
	v_dual_fmac_f32 v102, v114, v102 :: v_dual_mul_f32 v111, v83, v99
	v_div_scale_f32 v72, s3, v60, v48, v60
	v_div_scale_f32 v79, s6, v55, v49, v55
	v_div_scale_f32 v85, s8, v28, v54, v28
	v_fma_f32 v115, -v90, v103, 1.0
	v_dual_fmac_f32 v97, v109, v97 :: v_dual_fmac_f32 v100, v112, v100
	v_dual_mul_f32 v113, v87, v101 :: v_dual_fmac_f32 v104, v116, v92
	v_fma_f32 v120, -v75, v108, v77
	v_fmac_f32_e32 v105, v117, v93
	v_dual_fmac_f32 v107, v119, v95 :: v_dual_fmac_f32 v110, v122, v98
	v_mul_f32_e32 v114, v89, v102
	v_fma_f32 v123, -v82, v111, v83
	v_dual_fmac_f32 v103, v115, v103 :: v_dual_mul_f32 v106, v72, v94
	v_dual_mul_f32 v109, v79, v97 :: v_dual_mul_f32 v112, v85, v100
	v_fmac_f32_e32 v108, v120, v96
	v_fma_f32 v62, -v62, v104, v64
	v_fma_f32 v64, -v69, v105, v70
	v_fma_f32 v70, -v73, v107, v74
	v_fma_f32 v73, -v80, v110, v81
	v_fma_f32 v126, -v88, v114, v89
	v_fmac_f32_e32 v111, v123, v99
	v_div_scale_f32 v91, s11, v43, v57, v43
	v_fma_f32 v118, -v71, v106, v72
	v_fma_f32 v121, -v78, v109, v79
	v_fma_f32 v124, -v84, v112, v85
	v_fma_f32 v125, -v86, v113, v87
	v_div_fmas_f32 v73, v73, v98, v110
	v_fmac_f32_e32 v114, v126, v102
	v_fma_f32 v74, -v82, v111, v83
	v_dual_mul_f32 v115, v91, v103 :: v_dual_fmac_f32 v106, v118, v94
	v_dual_fmac_f32 v109, v121, v97 :: v_dual_fmac_f32 v112, v124, v100
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v27, v73, v52, v27
	v_fmac_f32_e32 v113, v125, v101
	v_div_fmas_f32 v74, v74, v99, v111
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v69, -v71, v106, v72
	v_fma_f32 v71, -v75, v108, v77
	v_fma_f32 v75, -v84, v112, v85
	v_div_fmas_f32 v62, v62, v92, v104
	s_mov_b32 vcc_lo, s1
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v16, v16, v27
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v77, -v86, v113, v87
	v_div_fmas_f32 v52, v64, v93, v105
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v24, v74, v51, v24
	v_div_fmas_f32 v51, v75, v100, v112
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v127, -v90, v115, v91
	v_div_fmas_f32 v27, v77, v101, v113
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v67.h, v3.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v46, v62, v46, v63
	s_mov_b32 vcc_lo, s3
	v_dual_fmac_f32 v115, v127, v103 :: v_dual_mul_f32 v14, v14, v24
	v_div_fixup_f32 v26, v27, v53, v26
	v_fma_f32 v72, -v78, v109, v79
	v_fma_f32 v78, -v88, v114, v89
	v_div_fixup_f32 v29, v52, v45, v29
	v_div_fmas_f32 v24, v69, v94, v106
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v13, v13, v26
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v79, -v90, v115, v91
	v_div_fixup_f32 v28, v51, v54, v28
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v14.h
	v_mov_b16_e32 v12.l, v13.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v45, v65, v46
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v46, v70, v95, v107
	s_mov_b32 vcc_lo, s10
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v27, v31, v29 :: v_dual_and_b32 v6, 1, v6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v29, v78, v102, v114
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v24, v24, v48, v60
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v15, v15, v28
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v28, v79, v103, v115
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v12, 1, v12
	v_mov_b16_e32 v3.l, v45.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s5
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v1, s33, s26, v5
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v26, v71, v96, v108
	s_mov_b32 vcc_lo, s6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.h, v3.h
	v_mov_b16_e32 v5.l, v27.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v31, v46, v47, v59
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v24, v41, v24
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v41, v72, v97, v109
	v_div_fixup_f32 v28, v28, v57, v43
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v43, 1, v3
	v_mov_b16_e32 v3.l, v16.h
	v_and_b32_e32 v5, 1, v5
	v_cmp_o_f32_e64 s1, v14, v14
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v26, v26, v50, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v6, v14, v6, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v14, v41, v49, v55
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v31, v33, v31
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v41, 1, v3
	v_mov_b16_e32 v3.l, v24.h
	v_add3_u32 v5, v27, v5, 0x7fff
	v_cmp_o_f32_e64 s4, v27, v27
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v26, v32, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s1
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v6, v30, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v9.l, v31.h
	v_and_b32_e32 v27, 1, v3
	v_mov_b16_e32 v3.l, v15.h
	v_cmp_o_f32_e64 s5, v13, v13
	v_add3_u32 v12, v13, v12, 0x7fff
	v_and_b32_e32 v9, 1, v9
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_and_b32_e32 v13, 1, v3
	v_cmp_o_f32_e64 s7, v31, v31
	v_mov_b16_e32 v3.l, v26.h
	v_add3_u32 v9, v31, v9, 0x7fff
	v_cmp_o_f32_e64 s0, v16, v16
	v_add3_u32 v13, v15, v13, 0x7fff
	v_add3_u32 v16, v16, v41, 0x7fff
	v_and_b32_e32 v15, 1, v3
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s7
	v_cmp_o_f32_e64 s6, v24, v24
	v_cndmask_b16 v9.h, 0x7fff, v13.h, vcc_lo
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v13, v23, v28 :: v_dual_mul_f32 v22, v22, v7
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v23, v76, v66, v40
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v14.l, 0x7fff, v5.h, s4
	v_mov_b16_e32 v67.l, v6.h
	v_cndmask_b16 v5.h, 0x7fff, v16.h, s0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v40, v23, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v16, v24, v27, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v15, v26, v15, 0x7fff
	v_cmp_o_f32_e64 s0, v26, v26
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v26, 0xbfb8aa3b, v23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v9.l, 0x7fff, v12.h, s5
	v_cndmask_b16 v12.h, 0x7fff, v16.h, s6
	v_and_b32_e32 v16, 1, v67
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v42
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v26
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v29, v29, v58, v44
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s0
	v_add3_u32 v16, v6, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v6, v6
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v6, v24
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v21, v7
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v24, 0, 0x42800000, s1
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v22, v22, v68, v39
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v25, v25, v29
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v15.l, 0x7fff, v16.h, s0
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v16, v21, v66, v38
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v23
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v39, v22, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v6, v6, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v25.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v16, v38, v16, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v22, v24
	v_mul_f32_e32 v24, 0xbfb8aa3b, v21
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s1
	v_dual_mul_f32 v27, 0xbfb8aa3b, v16 :: v_dual_and_b32 v30, 1, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v6, v6, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v27
	v_ldexp_f32 v22, v22, v26
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v26, v28
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s3, v45, v45
	v_add3_u32 v33, v45, v43, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v27, 0, 0x42800000, s0
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v21
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v14.h, 0x7fff, v33.h, s3
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s0
	v_exp_f32_e32 v24, v24
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v33, -v28, v26, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v16
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v31, null, v22, v22, v23
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v29.l, v13.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v26, v33, v26
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v39, v31
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v29.h, v3.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v24, v24, v32
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v32, vcc_lo, v42, v6, v42
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v30, v25, v30, 0x7fff
	v_cmp_o_f32_e64 s0, v25, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v24, 1.0, v24 :: v_dual_mul_f32 v25, v32, v26
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v27, v27, v38
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v20, v20, v8 :: v_dual_and_b32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v38, null, v24, v24, v21
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	s_waitcnt vmcnt(1)
	v_dual_add_f32 v27, 1.0, v27 :: v_dual_lshlrev_b32 v10, 16, v10
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v33, -v31, v39, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v41, v38
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v8, v19, v8
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v40, null, v27, v27, v16
	v_fma_f32 v44, -v28, v25, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v18, v18, v7
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v43, s1, v23, v22, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v25, v44, v26
	v_fma_f32 v46, -v38, v41, 1.0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v8, v8, v10, v35
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v29, v13, v29, 0x7fff
	s_mov_b32 s26, s18
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v19, -v28, v25, v32
	v_fmac_f32_e32 v41, v46, v41
	v_div_scale_f32 v46, s0, v21, v24, v21
	v_fmac_f32_e32 v39, v33, v39
	v_rcp_f32_e32 v33, v40
	v_div_fmas_f32 v19, v19, v26, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v28, v46, v41
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v8, v35, v8, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v7, v17, v7
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v6, v19, v6, v42
	v_fma_f32 v25, -v38, v28, v46
	v_mul_f32_e32 v45, v43, v39
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v7, v7, v10, v36
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v44, -v40, v33, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v28, v25, v41
	v_fma_f32 v47, -v31, v45, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v36, v7, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v33, v44, v33
	v_div_scale_f32 v44, s3, v16, v27, v16
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v25, -v38, v28, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v32, v44, v33
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v18, v18, v11, v37
	v_fma_f32 v11, v20, v11, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v26, -v40, v32, v44
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v37, v18, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v10, v34, v11, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v6, v10, v6 :: v_dual_fmac_f32 v45, v47, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v32, v26, v33
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v31, -v31, v45, v43
	v_fma_f32 v26, -v40, v32, v44
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v17, v31, v39, v45
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e64 s0, 0, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v25, v25, v41, v28
	s_mov_b32 vcc_lo, s3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v0, 0x5410
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v26, v26, v33, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v20, v25, v24, v21
	v_div_fixup_f32 v13, v17, v22, v23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v16, v26, v27, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v30.l, 0x7fff, v29.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v11, v18, v20 :: v_dual_mul_f32 v8, v8, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_lshl_or_b32 v0, v0, 8, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v7, v7, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.h, v3.h
	v_mov_b16_e32 v3.l, v11.h
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_cmp_o_f32_e64 s2, v8, v8
	v_mov_b16_e32 v16.l, v7.h
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v10, 1, v3
	v_mov_b16_e32 v3.l, v6.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v13, 1, v16
	v_mov_b16_e32 v16.l, v8.h
	v_add3_u32 v10, v11, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v3, 1, v3
	v_lshl_or_b32 v0, v0, 4, v0
	v_add3_u32 v11, v7, v13, 0x7fff
	v_and_b32_e32 v13, 1, v16
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_add3_u32 v3, v6, v3, 0x7fff
	v_cndmask_b32_e64 v6, v15, v14, s0
	v_add3_u32 v7, v8, v13, 0x7fff
	v_mov_b32_e32 v13, 0x7632
	v_cndmask_b16 v10.l, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s1
	s_mov_b32 s1, 0x76543210
	v_cndmask_b16 v3.l, 0x7fff, v7.h, s2
	v_cndmask_b32_e64 v8, 0x3276, v13, s0
	v_cndmask_b32_e64 v11, v10, v12, s0
	v_cndmask_b32_e64 v10, v12, v10, s0
	v_cndmask_b32_e64 v12, v30, v5, s0
	v_cndmask_b32_e64 v5, v5, v30, s0
	v_lshl_or_b32 v7, v8, 8, v8
	v_cndmask_b32_e64 v8, v14, v15, s0
	v_cndmask_b32_e64 v13, v3, v9, s0
	v_cndmask_b32_e64 v3, v9, v3, s0
	v_and_b32_e32 v0, 0x5040504, v0
	v_and_b32_e32 v7, 0x760076, v7
	v_permlanex16_b32 v8, v8, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v10, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v5, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s1, 0xfedcba98 op_sel:[1,0]
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 137
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 137
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10800
; TotalNumSgprs: 47
; NumVgprs: 137
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 137
; Occupancy: 10
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     137
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
