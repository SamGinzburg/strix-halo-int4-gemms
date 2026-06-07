	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
	v_lshrrev_b32_e32 v4, 4, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v67, 1, v0
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
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v68, 0x70, v67
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
	s_sub_i32 s11, 0, s7
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_u32_f32 s10, s17
	s_abs_i32 s17, s2
	s_mul_i32 s11, s11, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s11
	s_mov_b32 s11, 0x31027000
	s_add_i32 s10, s10, s5
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s31, s11
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_hi_u32 s5, s17, s10
	s_mul_i32 s10, s5, s7
	s_add_i32 s19, s5, 1
	s_sub_i32 s17, s17, s10
	s_mov_b32 s10, 0x7ffffffe
	s_sub_i32 s20, s17, s7
	s_cmp_ge_u32 s17, s7
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s30, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s17, s20, s17
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s17, s7
	s_cselect_b32 s7, s19, s5
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s5, s3, 5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s7, s7, s6
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s17, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s19, s4, 63
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
	s_lshr_b32 s4, s20, 26
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
	v_cmp_gt_i32_e64 s4, 32, v3
	.loc	1 92 13 is_stmt 1               ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s35, s27, 1
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s23, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s44, s20, 6
.Ltmp21:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s34, s2, 6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s19, 63
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
	v_and_b32_e32 v5, 15, v0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_and_b32 s29, s29, 0xffff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s19, 0x7f
	s_mov_b32 s16, -1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshlrev_b32_e32 v1, 2, v5
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v2, 3, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_mad_u64_u32 v[6:7], null, s26, v4, v[1:2]
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[7:8], null, s35, v4, v[2:3]
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_add3_u32 v6, s21, s34, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v3, s33, s22, v7
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_or_b32_e32 v103, v68, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 174 43                        ; generate_amdgcn.py:174:43
	v_add_nc_u32_e32 v7, s27, v3
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_cndmask_b32_e32 v9, 0x80000000, v7, vcc_lo
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_b32 v11, v6, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_clause 0x1
	buffer_load_b64 v[7:8], v3, s[28:31], 0 offen
	buffer_load_b64 v[9:10], v9, s[28:31], 0 offen
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_lshlrev_b32_e32 v3, 2, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v6, 16, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_add_nc_u32_e32 v104, 0, v3
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v105, v104, v3
                                        ; implicit-def: $vgpr3
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt vmcnt(2)
	ds_store_b32 v104, v11 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v105, v[7:8], v[9:10] offset1:8
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_or_b32_e32 v3, v68, v5
	s_mov_b32 s16, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v71, 0x80, v3
	v_or_b32_e32 v72, 0x100, v3
	v_or_b32_e32 v73, 0x180, v3
	v_or_b32_e32 v74, 0x200, v3
	v_or_b32_e32 v75, 0x280, v3
	v_or_b32_e32 v76, 0x300, v3
	v_or_b32_e32 v77, 0x380, v3
	v_or_b32_e32 v78, 0x400, v3
	v_or_b32_e32 v79, 0x480, v3
	v_or_b32_e32 v80, 0x500, v3
	v_or_b32_e32 v81, 0x580, v3
	v_or_b32_e32 v82, 0x600, v3
	v_or_b32_e32 v83, 0x680, v3
	v_or_b32_e32 v84, 0x700, v3
	v_or_b32_e32 v85, 0x780, v3
	v_or_b32_e32 v86, 0x800, v3
	v_or_b32_e32 v87, 0x880, v3
	v_or_b32_e32 v88, 0x900, v3
	v_or_b32_e32 v89, 0x980, v3
	v_or_b32_e32 v90, 0xa00, v3
	v_or_b32_e32 v91, 0xa80, v3
	v_or_b32_e32 v92, 0xb00, v3
	v_or_b32_e32 v93, 0xb80, v3
	v_or_b32_e32 v94, 0xc00, v3
	v_or_b32_e32 v95, 0xc80, v3
	v_or_b32_e32 v96, 0xd00, v3
	v_or_b32_e32 v97, 0xd80, v3
	v_or_b32_e32 v98, 0xe00, v3
	v_or_b32_e32 v99, 0xe80, v3
	v_or_b32_e32 v100, 0xf00, v3
	v_or_b32_e32 v101, 0xf80, v3
.LBB0_2:                                ; %Flow366
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v69, v6, v5
	v_bfe_u32 v70, v0, 4, 1
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v102, 0, v69
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_mov_b32_e32 v42, 0
	s_and_not1_b32 vcc_lo, exec_lo, s16
	s_add_i32 s1, s44, -1
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
	v_dual_mov_b32 v42, 0 :: v_dual_and_b32 v3, 0xe0, v0
	v_dual_mov_b32 v64, 0 :: v_dual_lshlrev_b32 v7, 1, v4
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_add3_u32 v5, s34, v6, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v3, s7, 8, v3
	v_sub_nc_u32_e32 v107, s17, v4
	v_lshl_or_b32 v7, s3, 6, v7
	s_lshl_b32 s17, s6, 8
	s_add_i32 s5, s5, 32
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v6, s35, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v8, 0x41, v7
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v9, 32, v5
	v_subrev_nc_u32_e32 v109, s17, v6
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v6, 64, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v7, s27, v8
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v4, s5, v4
	v_mul_lo_u32 v6, s27, v6
	v_mul_lo_u32 v8, s44, v9
	v_mul_lo_u32 v5, s44, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v4, s26, v4
	s_lshl_b32 s7, s7, 7
	v_subrev_nc_u32_e32 v110, s17, v3
	v_add3_u32 v3, v7, s7, v2
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v106, 0, v103
	v_add3_u32 v2, v6, s7, v2
	s_lshl_b32 s7, s6, 7
	v_or_b32_e32 v71, 0x80, v103
	v_or_b32_e32 v72, 0x100, v103
	v_or_b32_e32 v73, 0x180, v103
	v_or_b32_e32 v74, 0x200, v103
	v_or_b32_e32 v75, 0x280, v103
	v_or_b32_e32 v76, 0x300, v103
	v_or_b32_e32 v77, 0x380, v103
	v_or_b32_e32 v78, 0x400, v103
	v_or_b32_e32 v79, 0x480, v103
	v_or_b32_e32 v80, 0x500, v103
	v_or_b32_e32 v81, 0x580, v103
	v_or_b32_e32 v82, 0x600, v103
	v_or_b32_e32 v83, 0x680, v103
	v_or_b32_e32 v84, 0x700, v103
	v_or_b32_e32 v85, 0x780, v103
	v_or_b32_e32 v86, 0x800, v103
	v_or_b32_e32 v87, 0x880, v103
	v_or_b32_e32 v88, 0x900, v103
	v_or_b32_e32 v89, 0x980, v103
	v_or_b32_e32 v90, 0xa00, v103
	v_or_b32_e32 v91, 0xa80, v103
	v_or_b32_e32 v92, 0xb00, v103
	v_or_b32_e32 v93, 0xb80, v103
	v_or_b32_e32 v94, 0xc00, v103
	v_or_b32_e32 v95, 0xc80, v103
	v_or_b32_e32 v96, 0xd00, v103
	v_or_b32_e32 v97, 0xd80, v103
	v_or_b32_e32 v98, 0xe00, v103
	v_or_b32_e32 v99, 0xe80, v103
	v_or_b32_e32 v100, 0xf00, v103
	v_or_b32_e32 v101, 0xf80, v103
	v_dual_mov_b32 v59, 0 :: v_dual_lshlrev_b32 v108, 1, v70
	v_dual_mov_b32 v56, 0 :: v_dual_lshlrev_b32 v111, 1, v8
	v_dual_mov_b32 v37, 0 :: v_dual_lshlrev_b32 v112, 1, v5
	v_subrev_nc_u32_e32 v113, s7, v3
	v_subrev_nc_u32_e32 v114, s7, v2
	v_add3_u32 v115, v4, s34, v1
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v35, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v36, 0
	s_mov_b32 s16, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_max_i32 s0, s1, 1
	s_lshl_b32 s3, s27, 2
	s_lshl_b32 s6, s27, 6
	s_lshl_b32 s7, s26, 5
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
	v_cmp_lt_i32_e32 vcc_lo, s5, v107
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v124, s23 :: v_dual_mov_b32 v123, s22
	v_dual_mov_b32 v122, s21 :: v_dual_mov_b32 v121, s20
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v120, s19 :: v_dual_mov_b32 v119, s18
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e32 v1, 0x80000000, v115, vcc_lo
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v118, s17 :: v_dual_mov_b32 v117, s16
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s0, s0, -1
	s_add_i32 s5, s5, 32
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_b32 v116, v1, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v1, v102 offset:8512
	ds_load_u8 v2, v102 offset:8448
	ds_load_u8 v3, v102 offset:8640
	ds_load_u8 v4, v102 offset:8576
	ds_load_u8 v5, v102 offset:8256
	ds_load_u8 v6, v102 offset:8192
	ds_load_u8 v7, v102 offset:8384
	ds_load_u8 v8, v102 offset:8320
	ds_load_u8 v9, v102 offset:8416
	ds_load_u8 v10, v102 offset:8352
	ds_load_u8 v11, v102 offset:8288
	ds_load_u8 v12, v102 offset:8224
	ds_load_u8 v13, v106 offset:640
	ds_load_u8 v14, v106 offset:896
	ds_load_u8 v15, v106 offset:768
	ds_load_u8 v16, v106 offset:512
	ds_load_u8 v17, v106 offset:128
	ds_load_u8 v18, v106 offset:384
	ds_load_u8 v19, v106 offset:256
	ds_load_u8 v20, v106
	ds_load_u8 v127, v102 offset:9024
	ds_load_u8 v128, v102 offset:8960
	ds_load_u8 v129, v102 offset:9152
	ds_load_u8 v130, v102 offset:9088
	ds_load_u8 v21, v102 offset:8672
	ds_load_u8 v22, v102 offset:8608
	ds_load_u8 v23, v102 offset:8544
	ds_load_u8 v24, v102 offset:8480
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v25, v106 offset:4736
	ds_load_u8 v26, v106 offset:4992
	ds_load_u8 v27, v106 offset:4864
	ds_load_u8 v28, v106 offset:4608
	ds_load_u8 v29, v106 offset:4224
	ds_load_u8 v30, v106 offset:4480
	ds_load_u8 v31, v106 offset:4352
	ds_load_u8 v32, v106 offset:4096
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v131, v102 offset:8768
	ds_load_u8 v132, v102 offset:8704
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v3, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v4, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v5, v16, v13, 0xc0c0004
	v_perm_b32 v6, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v7, v20, v17, 0xc0c0004
	v_perm_b32 v8, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v14, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v13, v24, v23, 0xc0c0004
	v_perm_b32 v11, v12, v11, 0xc0c0004
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v12, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v10, v28, v25, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v18, v2, 16, v1
	v_lshl_or_b32 v17, v4, 16, v3
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v16, v31, v30, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v32, v29, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v2, v6, 16, v5
	v_lshl_or_b32 v1, v8, 16, v7
	v_lshl_or_b32 v34, v14, 16, v13
	v_lshl_or_b32 v33, v9, 16, v11
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v126, v12, 16, v10
	v_lshl_or_b32 v125, v16, 16, v15
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v133, v102 offset:8896
	ds_load_u8 v135, v102 offset:9184
	v_wmma_i32_16x16x16_iu4 v[9:16], v[1:2], v[17:18], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[1:2], v[33:34], v[117:124] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[125:126], v[17:18], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[125:126], v[33:34], v[117:124] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v34, v130, v129, 0xc0c0004
	ds_load_u8 v118, v106 offset:1664
	ds_load_u8 v129, v102 offset:9600
	ds_load_u8 v136, v102 offset:9120
	ds_load_u8 v134, v102 offset:8832
	ds_load_u8 v123, v102 offset:8800
	ds_load_u8 v124, v102 offset:8736
	ds_load_u8 v119, v102 offset:9056
	ds_load_u8 v120, v102 offset:8992
	ds_load_u8 v121, v102 offset:8928
	ds_load_u8 v122, v102 offset:8864
	v_perm_b32 v33, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v117, v132, v131, 0xc0c0004
	ds_load_u8 v126, v106 offset:1792
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s0, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v34, v34, 16, v33
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v125, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	v_perm_b32 v120, v136, v135, 0xc0c0004
	v_perm_b32 v123, v124, v123, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	v_lshl_or_b32 v33, v125, 16, v117
	ds_load_u8 v117, v106 offset:1536
	ds_load_u8 v125, v106 offset:1408
	v_lshl_or_b32 v120, v120, 16, v119
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v124, v106 offset:5248
	ds_load_u8 v122, v106 offset:5376
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v119, v121, 16, v123
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v121, v106 offset:5120
	ds_load_u8 v123, v106 offset:5504
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v117, v117, v118, 0xc0c0004
	ds_load_u8 v118, v106 offset:1920
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v121, v121, v124, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v124, v102 offset:9664
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v123, v122, v123, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v121, v123, 16, v121
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v118, v126, v118, 0xc0c0004
	ds_load_u8 v126, v106 offset:1152
	ds_load_u8 v127, v106 offset:1280
	ds_load_u8 v128, v106 offset:1024
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v125, v127, v125, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v126, v128, v126, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v127, v106 offset:5888
	ds_load_u8 v128, v106 offset:5632
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v117, v125, 16, v126
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v125, v106 offset:5760
	ds_load_u8 v126, v106 offset:6016
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[117:118], v[119:120], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v117, v102 offset:9408
	ds_load_u8 v118, v102 offset:9344
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v125, v128, v125, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v128, v102 offset:9536
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v122, v126, 16, v125
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v123, v102 offset:9280
	ds_load_u8 v125, v102 offset:9216
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v106 offset:2816
	ds_load_u8 v126, v102 offset:9696
	ds_load_u8 v130, v102 offset:9632
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[121:122], v[33:34], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[121:122], v[119:120], v[17:24] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v119, v102 offset:9568
	ds_load_u8 v120, v102 offset:9504
	ds_load_u8 v121, v102 offset:9440
	ds_load_u8 v122, v102 offset:9376
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v123, v125, v123, 0xc0c0004
	ds_load_u8 v125, v106 offset:2688
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	v_perm_b32 v120, v130, v126, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v122, v106 offset:6400
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v127, v102 offset:9472
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v126, v106 offset:6656
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v120, v120, 16, v119
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v33, v127, v128, 0xc0c0004
	ds_load_u8 v127, v102 offset:9312
	v_perm_b32 v34, v129, v124, 0xc0c0004
	ds_load_u8 v124, v102 offset:9248
	v_lshl_or_b32 v34, v34, 16, v33
	v_lshl_or_b32 v33, v117, 16, v123
	ds_load_u8 v117, v106 offset:2560
	ds_load_u8 v123, v106 offset:2432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v124, v124, v127, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v127, v106 offset:6272
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v117, v117, v125, 0xc0c0004
	ds_load_u8 v125, v106 offset:2944
	v_lshl_or_b32 v119, v121, 16, v124
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v121, v106 offset:6144
	ds_load_u8 v124, v106 offset:6528
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v118, v118, v125, 0xc0c0004
	ds_load_u8 v125, v106 offset:2176
	ds_load_u8 v128, v106 offset:2304
	ds_load_u8 v129, v106 offset:2048
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v121, v121, v127, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v124, v122, v124, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v127, v102 offset:10176
	v_lshl_or_b32 v118, v118, 16, v117
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v121, v124, 16, v121
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v123, v128, v123, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v125, v129, v125, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v128, v106 offset:6912
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v129, v102 offset:10112
	v_lshl_or_b32 v117, v123, 16, v125
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v123, v106 offset:6784
	ds_load_u8 v125, v106 offset:7040
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[117:118], v[119:120], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v117, v102 offset:9920
	ds_load_u8 v118, v102 offset:9856
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v123, v126, v123, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v126, v102 offset:10048
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v106 offset:3840
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_perm_b32 v125, v128, v125, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v128, v102 offset:9984
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v122, v125, 16, v123
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v125, v102 offset:10208
	ds_load_u8 v130, v102 offset:10144
	ds_load_u8 v123, v102 offset:9792
	ds_load_u8 v124, v102 offset:9728
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[121:122], v[33:34], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[121:122], v[119:120], v[17:24] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v119, v102 offset:10080
	ds_load_u8 v120, v102 offset:10016
	ds_load_u8 v121, v102 offset:9952
	ds_load_u8 v122, v102 offset:9888
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v33, v128, v126, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v106 offset:3712
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	v_perm_b32 v120, v130, v125, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v125, v106 offset:7936
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v122, v106 offset:8064
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e32 v130, 0x80000000, v114, vcc_lo
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v120, v120, 16, v119
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v114, s6, v114
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v125, v122, 0xc0c0004
	ds_load_u8 v125, v106 offset:7168
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v126, v102 offset:9824
	v_perm_b32 v34, v129, v127, 0xc0c0004
	ds_load_u8 v127, v102 offset:9760
	v_lshl_or_b32 v34, v34, 16, v33
	v_lshl_or_b32 v33, v117, 16, v123
	ds_load_u8 v117, v106 offset:3584
	ds_load_u8 v123, v106 offset:3456
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v127, v106 offset:7680
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v117, v117, v124, 0xc0c0004
	ds_load_u8 v124, v106 offset:3968
	v_lshl_or_b32 v119, v121, 16, v126
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v121, v106 offset:7296
	ds_load_u8 v126, v106 offset:7552
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v118, v118, v124, 0xc0c0004
	ds_load_u8 v124, v106 offset:3200
	ds_load_u8 v128, v106 offset:3328
	ds_load_u8 v129, v106 offset:3072
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v121, v125, v121, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v118, v118, 16, v117
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v123, v128, v123, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v129, v124, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v117, v123, 16, v124
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v124, v106 offset:7808
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[25:32], v[117:118], v[119:120], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[117:118], v[33:34], v[9:16] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v137, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v132, v11
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v127, v124, 0xc0c0004
	ds_load_u8 v127, v106 offset:7424
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v133, v12
	v_cvt_f32_i32_e32 v134, v13
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v122, v122, 16, v124
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v135, v14
	v_cvt_f32_i32_e32 v136, v15
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v127, v126, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v121, v125, 16, v121
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v124, v112, s[36:39], 0 offen
	buffer_load_u16 v125, v111, s[36:39], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v112, 2, v112
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[121:122], v[33:34], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[121:122], v[119:120], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v16, v2
	v_cvt_f32_i32_e32 v140, v6
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v138, v1
	v_cvt_f32_i32_e32 v142, v8
	v_cvt_f32_i32_e32 v139, v5
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v141, v7
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v143, 16, v124
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v125
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v123, v108, v110
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v129, v108, v109
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v110, s3, v110
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v6, v2, v25
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v126, v123, s[40:43], 0 offen
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v8, v2, v19
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0xb
	buffer_load_u16 v1, v123, s[40:43], 0 offen offset:4
	buffer_load_u16 v118, v123, s[40:43], 0 offen offset:8
	buffer_load_u16 v120, v123, s[40:43], 0 offen offset:12
	buffer_load_u16 v34, v123, s[40:43], 0 offen offset:16
	buffer_load_u16 v119, v123, s[40:43], 0 offen offset:20
	buffer_load_u16 v33, v123, s[40:43], 0 offen offset:24
	buffer_load_u16 v117, v123, s[40:43], 0 offen offset:28
	buffer_load_u16 v121, v129, s[40:43], 0 offen
	buffer_load_u16 v125, v129, s[40:43], 0 offen offset:20
	buffer_load_u16 v123, v129, s[40:43], 0 offen offset:4
	buffer_load_u16 v122, v129, s[40:43], 0 offen offset:8
	buffer_load_u16 v124, v129, s[40:43], 0 offen offset:12
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v1, 16, v1
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v118, 16, v118
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v120, 16, v120
	v_lshlrev_b32_e32 v5, 16, v126
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x2
	buffer_load_u16 v128, v129, s[40:43], 0 offen offset:16
	buffer_load_u16 v127, v129, s[40:43], 0 offen offset:28
	buffer_load_u16 v126, v129, s[40:43], 0 offen offset:24
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v54, v6, v5
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v6, v143, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v65, v6, v5
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v5, v2, v26
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v55, v5, v1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v5, v143, v10
	.loc	1 174 35 is_stmt 1              ; generate_amdgcn.py:174:35
	v_dual_cndmask_b32 v131, 0x80000000, v113 :: v_dual_mul_f32 v14, v2, v30
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v15, v2, v32
	v_mul_f32_e32 v19, v2, v31
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v11, v2, v24
	v_mul_f32_e32 v12, v2, v23
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v66, v5, v1 :: v_dual_mul_f32 v5, v2, v18
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v6, v2, v17 :: v_dual_mul_f32 v31, v143, v134
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v13, v2, v28 :: v_dual_mul_f32 v28, v143, v135
	v_dual_mul_f32 v17, v2, v27 :: v_dual_mul_f32 v32, v143, v136
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v7, v2, v20 :: v_dual_mul_f32 v24, v143, v139
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v18, v2, v29 :: v_dual_mul_f32 v23, v143, v140
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v9, v2, v22 :: v_dual_mul_f32 v26, v143, v141
	v_dual_mul_f32 v10, v2, v21 :: v_dual_mul_f32 v25, v143, v142
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b64 v[1:2], v130, s[28:31], 0 offen
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v143, v4
	v_mul_f32_e32 v22, v143, v3
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	buffer_load_b64 v[3:4], v131, s[28:31], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v29, v143, v137
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v20, v143, v138 :: v_dual_lshlrev_b32 v117, 16, v117
	v_dual_mul_f32 v16, v143, v16 :: v_dual_lshlrev_b32 v119, 16, v119
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v143, v133
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v38, v29, v117
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v30, v143, v132
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v47, v14, v119 :: v_dual_lshlrev_b32 v124, 16, v124
	v_dual_fmac_f32 v51, v13, v120 :: v_dual_lshlrev_b32 v122, 16, v122
	v_dual_fmac_f32 v63, v27, v120 :: v_dual_lshlrev_b32 v34, 16, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 183 17 is_stmt 1              ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v60, v22, v122 :: v_dual_lshlrev_b32 v125, 16, v125
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v50, v17, v118 :: v_dual_add_nc_u32 v109, s3, v109
	v_dual_fmac_f32 v62, v30, v118 :: v_dual_add_nc_u32 v115, s7, v115
	v_dual_fmac_f32 v46, v18, v34 :: v_dual_add_nc_u32 v113, s6, v113
	v_dual_fmac_f32 v58, v31, v34 :: v_dual_add_nc_u32 v111, 2, v111
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v57, v23, v125 :: v_dual_fmac_f32 v48, v8, v122
	v_fmac_f32_e32 v49, v7, v124
	v_fmac_f32_e32 v45, v9, v125
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v59, v28, v119
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	ds_store_b32 v104, v116 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v105, v[1:2], v[3:4] offset1:8
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v128, 16, v128
	v_lshlrev_b32_e32 v127, 16, v127
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v56, v24, v128 :: v_dual_lshlrev_b32 v33, 16, v33
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v35, v15, v117 :: v_dual_lshlrev_b32 v126, 16, v126
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v40, v25, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v36, v19, v33 :: v_dual_lshlrev_b32 v123, 16, v123
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v121, 16, v121
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v37, v32, v33 :: v_dual_fmac_f32 v44, v10, v128
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v64, v16, v123 :: v_dual_fmac_f32 v61, v21, v124
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v52, v6, v121
	v_dual_fmac_f32 v42, v20, v121 :: v_dual_fmac_f32 v39, v26, v126
	v_fmac_f32_e32 v53, v5, v123
	v_fmac_f32_e32 v41, v12, v126
	v_fmac_f32_e32 v43, v11, v127
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v3, v103
.LBB0_6:                                ; %._crit_edge
	.loc	1 160 26 is_stmt 1              ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v144, v102 offset:8192
	ds_load_u8_d16 v5, v102 offset:8224
	ds_load_u8_d16 v145, v102 offset:8256
	ds_load_u8_d16 v146, v102 offset:8320
	ds_load_u8_d16 v147, v102 offset:8384
	ds_load_u8_d16 v21, v102 offset:8416
	ds_load_u8_d16 v29, v102 offset:8352
	ds_load_u8_d16 v33, v102 offset:8288
	ds_load_u8_d16 v148, v102 offset:8448
	ds_load_u8_d16 v149, v102 offset:8512
	ds_load_u8_d16 v150, v102 offset:8576
	ds_load_u8_d16 v151, v102 offset:8640
	ds_load_u8_d16 v105, v102 offset:8672
	ds_load_u8_d16 v108, v102 offset:8608
	ds_load_u8_d16 v113, v102 offset:8544
	ds_load_u8_d16 v116, v102 offset:8480
	ds_load_u8_d16 v124, v102 offset:8704
	ds_load_u8_d16 v125, v102 offset:8768
	ds_load_u8_d16 v126, v102 offset:8832
	ds_load_u8_d16 v127, v102 offset:8896
	ds_load_u8_d16 v8, v102 offset:8928
	ds_load_u8_d16 v26, v102 offset:8864
	ds_load_u8_d16 v30, v102 offset:8800
	ds_load_u8_d16 v34, v102 offset:8736
	ds_load_u8_d16 v136, v102 offset:8960
	ds_load_u8_d16 v137, v102 offset:9024
	ds_load_u8_d16 v138, v102 offset:9088
	ds_load_u8_d16 v139, v102 offset:9152
	ds_load_u8_d16 v106, v102 offset:9184
	ds_load_u8_d16 v109, v102 offset:9120
	ds_load_u8_d16 v114, v102 offset:9056
	ds_load_u8_d16 v117, v102 offset:8992
	ds_load_u8_d16 v132, v102 offset:9216
	ds_load_u8_d16 v133, v102 offset:9280
	ds_load_u8_d16 v134, v102 offset:9344
	ds_load_u8_d16 v135, v102 offset:9408
	ds_load_u8_d16 v9, v102 offset:9440
	ds_load_u8_d16 v27, v102 offset:9376
	ds_load_u8_d16 v31, v102 offset:9312
	ds_load_u8_d16 v103, v102 offset:9248
	ds_load_u8_d16 v140, v102 offset:9472
	ds_load_u8_d16 v141, v102 offset:9536
	ds_load_u8_d16 v142, v102 offset:9600
	ds_load_u8_d16 v143, v102 offset:9664
	ds_load_u8_d16 v107, v102 offset:9696
	ds_load_u8_d16 v110, v102 offset:9632
	ds_load_u8_d16 v115, v102 offset:9568
	ds_load_u8_d16 v118, v102 offset:9504
	ds_load_u8_d16 v122, v102 offset:9728
	ds_load_u8_d16 v123, v102 offset:9792
	ds_load_u8_d16 v120, v102 offset:9856
	ds_load_u8_d16 v121, v102 offset:9920
	ds_load_u8_d16 v17, v102 offset:9952
	ds_load_u8_d16 v28, v102 offset:9888
	ds_load_u8_d16 v32, v102 offset:9824
	ds_load_u8_d16 v104, v102 offset:9760
	ds_load_u8_d16 v128, v102 offset:9984
	ds_load_u8_d16 v129, v102 offset:10048
	ds_load_u8_d16 v130, v102 offset:10112
	ds_load_u8_d16 v131, v102 offset:10176
	ds_load_u8_d16 v111, v102 offset:10208
	ds_load_u8_d16 v112, v102 offset:10144
	ds_load_u8_d16 v119, v102 offset:10080
	ds_load_u8_d16 v102, v102 offset:10016
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_cndmask_b32_e64 v1, 0, 1, s2
	v_dual_mov_b32 v18, 0 :: v_dual_add_nc_u32 v101, 0, v101
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v100, 0, v100
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v1
	v_dual_mov_b32 v22, 0 :: v_dual_add_nc_u32 v99, 0, v99
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v98, 0, v98
	v_dual_mov_b32 v24, 0 :: v_dual_add_nc_u32 v97, 0, v97
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v96, 0, v96
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v95, 0, v95
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v94, 0, v94
	v_dual_mov_b32 v2, 0 :: v_dual_add_nc_u32 v93, 0, v93
	v_dual_mov_b32 v11, 0 :: v_dual_add_nc_u32 v92, 0, v92
	v_dual_mov_b32 v14, 0 :: v_dual_add_nc_u32 v91, 0, v91
	v_dual_mov_b32 v13, 0 :: v_dual_add_nc_u32 v90, 0, v90
	v_dual_mov_b32 v10, 0 :: v_dual_add_nc_u32 v89, 0, v89
	v_dual_mov_b32 v15, 0 :: v_dual_add_nc_u32 v88, 0, v88
	v_dual_mov_b32 v12, 0 :: v_dual_add_nc_u32 v87, 0, v87
	v_add_nc_u32_e32 v86, 0, v86
	v_dual_mov_b32 v4, 0 :: v_dual_add_nc_u32 v85, 0, v85
	v_add_nc_u32_e32 v84, 0, v84
	v_add_nc_u32_e32 v152, 0, v83
	v_add_nc_u32_e32 v153, 0, v82
	v_add_nc_u32_e32 v81, 0, v81
	v_add_nc_u32_e32 v80, 0, v80
	v_add_nc_u32_e32 v82, 0, v79
	v_add_nc_u32_e32 v83, 0, v78
	v_add_nc_u32_e32 v161, 0, v77
	v_add_nc_u32_e32 v157, 0, v76
	v_add_nc_u32_e32 v163, 0, v75
	v_add_nc_u32_e32 v164, 0, v74
	v_add_nc_u32_e32 v159, 0, v73
	v_add_nc_u32_e32 v160, 0, v72
	v_add_nc_u32_e32 v158, 0, v71
	v_add_nc_u32_e32 v162, 0, v3
	v_mov_b32_e32 v3, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_mov_b32 s4, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v1, v148, v149, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v2, v150, v151, 0xc0c0004
	v_perm_b32 v3, v146, v147, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v144, v145, 0xc0c0004
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_lshl_or_b32 v1, v3, 16, v1
	ds_load_u8 v3, v163
	ds_load_u8 v4, v164
	v_dual_mov_b32 v78, s11 :: v_dual_mov_b32 v77, s10
	v_dual_mov_b32 v76, s9 :: v_dual_mov_b32 v75, s8
	v_dual_mov_b32 v74, s7 :: v_dual_mov_b32 v73, s6
	v_dual_mov_b32 v72, s5 :: v_dual_mov_b32 v71, s4
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v161
	ds_load_u8 v6, v157
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v6, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v4, v4, 16, v3
	ds_load_u8 v3, v158
	ds_load_u8 v6, v162
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v6, v3, 0xc0c0004
	ds_load_u8 v6, v159
	ds_load_u8 v7, v160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v3, v6, 16, v3
	v_perm_b32 v6, v126, v127, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[165:172], v[3:4], v[1:2], v[71:78] neg_lo:[1,1,0]
	v_perm_b32 v1, v136, v137, 0xc0c0004
	v_perm_b32 v2, v138, v139, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v124, v125, 0xc0c0004
	v_lshl_or_b32 v1, v6, 16, v1
	ds_load_u8 v6, v152
	ds_load_u8 v7, v153
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v85
	ds_load_u8 v10, v84
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v10, v7, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v7, v7, 16, v6
	ds_load_u8 v6, v82
	ds_load_u8 v10, v83
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v10, v6, 0xc0c0004
	ds_load_u8 v10, v81
	ds_load_u8 v11, v80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v6, v10, 16, v6
	v_perm_b32 v10, v134, v135, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[165:172], v[6:7], v[1:2], v[165:172] neg_lo:[1,1,0]
	v_perm_b32 v1, v140, v141, 0xc0c0004
	v_perm_b32 v2, v142, v143, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v132, v133, 0xc0c0004
	v_lshl_or_b32 v1, v10, 16, v1
	ds_load_u8 v10, v91
	ds_load_u8 v11, v90
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v93
	ds_load_u8 v12, v92
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v11, v11, 16, v10
	ds_load_u8 v10, v87
	ds_load_u8 v12, v86
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v89
	ds_load_u8 v13, v88
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v10, v12, 16, v10
	v_perm_b32 v12, v120, v121, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[165:172], v[10:11], v[1:2], v[165:172] neg_lo:[1,1,0]
	v_perm_b32 v1, v128, v129, 0xc0c0004
	v_perm_b32 v2, v130, v131, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v122, v123, 0xc0c0004
	v_lshl_or_b32 v1, v12, 16, v1
	ds_load_u8 v12, v99
	ds_load_u8 v13, v98
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v101
	ds_load_u8 v14, v100
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v13, 16, v12
	ds_load_u8 v12, v95
	ds_load_u8 v14, v94
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v14, v12, 0xc0c0004
	ds_load_u8 v14, v97
	ds_load_u8 v15, v96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v12, v14, 16, v12
	v_perm_b32 v14, v29, v21, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[165:172], v[12:13], v[1:2], v[165:172] neg_lo:[1,1,0]
	v_perm_b32 v1, v116, v113, 0xc0c0004
	v_perm_b32 v2, v108, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v22, v165
	v_cvt_f32_i32_e32 v24, v166
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v5, v33, 0xc0c0004
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v23, v167
	v_cvt_f32_i32_e32 v25, v168
	v_cvt_f32_i32_e32 v19, v169
	v_cvt_f32_i32_e32 v20, v170
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v1, v14, 16, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[71:78], v[3:4], v[1:2], v[71:78] neg_lo:[1,1,0]
	v_perm_b32 v1, v117, v114, 0xc0c0004
	v_perm_b32 v2, v109, v106, 0xc0c0004
	v_perm_b32 v3, v26, v8, 0xc0c0004
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v34, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v1, v3, 16, v1
	v_perm_b32 v3, v27, v9, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[71:78], v[6:7], v[1:2], v[71:78] neg_lo:[1,1,0]
	v_perm_b32 v1, v118, v115, 0xc0c0004
	v_perm_b32 v2, v110, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v103, v31, 0xc0c0004
	v_lshl_or_b32 v1, v3, 16, v1
	v_perm_b32 v3, v28, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[71:78], v[10:11], v[1:2], v[71:78] neg_lo:[1,1,0]
	v_perm_b32 v1, v102, v119, 0xc0c0004
	v_perm_b32 v2, v112, v111, 0xc0c0004
	v_lshl_or_b32 v2, v2, 16, v1
	v_perm_b32 v1, v104, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v1
	v_wmma_i32_16x16x16_iu4 v[71:78], v[12:13], v[1:2], v[71:78] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v1, v171
	v_cvt_f32_i32_e32 v2, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v11, v71
	v_cvt_f32_i32_e32 v14, v72
	v_cvt_f32_i32_e32 v13, v73
	v_cvt_f32_i32_e32 v15, v74
	v_cvt_f32_i32_e32 v10, v75
	v_cvt_f32_i32_e32 v12, v76
	v_cvt_f32_i32_e32 v3, v77
	v_cvt_f32_i32_e32 v4, v78
.LBB0_8:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v76, 0
	.loc	1 175 36 is_stmt 1              ; generate_amdgcn.py:175:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	ds_load_u8 v6, v163 offset:4096
	ds_load_u8 v7, v164 offset:4096
	ds_load_u8 v16, v161 offset:4096
	ds_load_u8 v18, v162 offset:4096
	ds_load_u8 v71, v159 offset:4096
	ds_load_u8 v72, v160 offset:4096
	ds_load_u8 v73, v157 offset:4096
	ds_load_u8 v74, v158 offset:4096
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v75, v148, v149, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v76, v150, v151, 0xc0c0004
	v_perm_b32 v77, v144, v145, 0xc0c0004
	v_perm_b32 v78, v146, v147, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v151, s11 :: v_dual_mov_b32 v150, s10
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v79, v7, v6, 0xc0c0004
	v_lshl_or_b32 v7, v76, 16, v75
	v_lshl_or_b32 v6, v78, 16, v77
	v_dual_mov_b32 v149, s9 :: v_dual_mov_b32 v148, s8
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v16, v73, v16, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v18, v74, 0xc0c0004
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_dual_mov_b32 v147, s7 :: v_dual_mov_b32 v146, s6
	v_lshl_or_b32 v72, v16, 16, v79
	ds_load_u8 v16, v152 offset:4096
	ds_load_u8 v73, v153 offset:4096
	ds_load_u8 v74, v85 offset:4096
	ds_load_u8 v75, v82 offset:4096
	ds_load_u8 v76, v83 offset:4096
	ds_load_u8 v77, v81 offset:4096
	ds_load_u8 v78, v80 offset:4096
	ds_load_u8 v79, v84 offset:4096
	v_lshl_or_b32 v71, v71, 16, v18
	ds_load_u8 v18, v91 offset:4096
	ds_load_u8 v84, v90 offset:4096
	ds_load_u8 v85, v93 offset:4096
	ds_load_u8 v87, v87 offset:4096
	ds_load_u8 v86, v86 offset:4096
	ds_load_u8 v89, v89 offset:4096
	ds_load_u8 v88, v88 offset:4096
	ds_load_u8 v90, v92 offset:4096
	v_dual_mov_b32 v145, s5 :: v_dual_mov_b32 v144, s4
	v_perm_b32 v82, v136, v137, 0xc0c0004
	v_perm_b32 v83, v138, v139, 0xc0c0004
	v_perm_b32 v91, v124, v125, 0xc0c0004
	v_perm_b32 v92, v126, v127, 0xc0c0004
	v_perm_b32 v5, v5, v33, 0xc0c0004
	v_perm_b32 v21, v29, v21, 0xc0c0004
	v_perm_b32 v29, v120, v121, 0xc0c0004
	v_perm_b32 v26, v26, v8, 0xc0c0004
	v_perm_b32 v9, v27, v9, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v16, v73, v16, 0xc0c0004
	v_perm_b32 v28, v28, v17, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v18, v84, v18, 0xc0c0004
	v_perm_b32 v93, v76, v75, 0xc0c0004
	v_perm_b32 v124, v78, v77, 0xc0c0004
	v_perm_b32 v73, v79, v74, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[74:81], v[71:72], v[6:7], v[144:151] neg_lo:[1,1,0]
	v_lshl_or_b32 v7, v83, 16, v82
	v_lshl_or_b32 v6, v92, 16, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v83, v73, 16, v16
	v_lshl_or_b32 v82, v124, 16, v93
	v_perm_b32 v16, v140, v141, 0xc0c0004
	v_perm_b32 v73, v142, v143, 0xc0c0004
	v_perm_b32 v91, v132, v133, 0xc0c0004
	v_perm_b32 v92, v134, v135, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v90, v85, 0xc0c0004
	v_perm_b32 v86, v86, v87, 0xc0c0004
	v_perm_b32 v87, v88, v89, 0xc0c0004
	ds_load_u8 v88, v99 offset:4096
	ds_load_u8 v89, v98 offset:4096
	ds_load_u8 v90, v101 offset:4096
	ds_load_u8 v93, v94 offset:4096
	ds_load_u8 v94, v97 offset:4096
	ds_load_u8 v96, v96 offset:4096
	ds_load_u8 v97, v100 offset:4096
	v_wmma_i32_16x16x16_iu4 v[74:81], v[82:83], v[6:7], v[74:81] neg_lo:[1,1,0]
	v_lshl_or_b32 v7, v73, 16, v16
	v_lshl_or_b32 v6, v92, 16, v91
	v_lshl_or_b32 v85, v84, 16, v18
	v_lshl_or_b32 v84, v87, 16, v86
	v_perm_b32 v16, v128, v129, 0xc0c0004
	v_perm_b32 v18, v130, v131, 0xc0c0004
	ds_load_u8 v73, v95 offset:4096
	v_lshl_or_b32 v86, v21, 16, v5
	v_wmma_i32_16x16x16_iu4 v[74:81], v[84:85], v[6:7], v[74:81] neg_lo:[1,1,0]
	v_perm_b32 v7, v122, v123, 0xc0c0004
	v_lshl_or_b32 v6, v18, 16, v16
	v_perm_b32 v16, v116, v113, 0xc0c0004
	v_perm_b32 v18, v108, v105, 0xc0c0004
	v_perm_b32 v21, v34, v30, 0xc0c0004
	v_lshl_or_b32 v5, v29, 16, v7
	v_perm_b32 v7, v118, v115, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v33, v89, v88, 0xc0c0004
	v_lshl_or_b32 v87, v18, 16, v16
	v_perm_b32 v16, v117, v114, 0xc0c0004
	v_perm_b32 v18, v109, v106, 0xc0c0004
	v_lshl_or_b32 v29, v26, 16, v21
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v88, v97, v90, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[144:151], v[71:72], v[86:87], v[144:151] neg_lo:[1,1,0]
	v_lshl_or_b32 v30, v18, 16, v16
	v_perm_b32 v16, v110, v107, 0xc0c0004
	v_perm_b32 v18, v103, v31, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v93, v73, 0xc0c0004
	v_perm_b32 v31, v96, v94, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[144:151], v[82:83], v[29:30], v[144:151] neg_lo:[1,1,0]
	v_lshl_or_b32 v27, v16, 16, v7
	v_lshl_or_b32 v26, v9, 16, v18
	v_perm_b32 v9, v102, v119, 0xc0c0004
	v_perm_b32 v16, v112, v111, 0xc0c0004
	v_perm_b32 v18, v104, v32, 0xc0c0004
	v_lshl_or_b32 v8, v88, 16, v33
	v_lshl_or_b32 v7, v31, 16, v21
	v_wmma_i32_16x16x16_iu4 v[144:151], v[84:85], v[26:27], v[144:151] neg_lo:[1,1,0]
	v_lshl_or_b32 v17, v16, 16, v9
	v_lshl_or_b32 v16, v28, 16, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[74:81], v[7:8], v[5:6], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[144:151], v[7:8], v[16:17], v[144:151] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v18, v74
	v_cvt_f32_i32_e32 v155, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v154, v76
	v_cvt_f32_i32_e32 v156, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v6, v80
	v_cvt_f32_i32_e32 v7, v81
	v_cvt_f32_i32_e32 v72, v144
	v_cvt_f32_i32_e32 v75, v145
	v_cvt_f32_i32_e32 v74, v146
	v_cvt_f32_i32_e32 v77, v147
	v_cvt_f32_i32_e32 v71, v148
	v_cvt_f32_i32_e32 v73, v149
	v_cvt_f32_i32_e32 v16, v150
	v_cvt_f32_i32_e32 v76, v151
.LBB0_10:
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	s_waitcnt lgkmcnt(43)
	v_or_b32_e32 v8, 32, v69
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_waitcnt lgkmcnt(27)
	v_mul_lo_u32 v9, s44, v69
	s_mul_i32 s0, s34, s44
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s1, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v5, v70, v68
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_waitcnt lgkmcnt(11)
	v_mul_lo_u32 v17, s44, v8
	s_add_i32 s0, s0, s1
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s1, s1, s35
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s17, s13, 0xffff
	v_add_lshl_u32 v9, s0, v9, 1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v21, 2, v5
	v_or_b32_e32 v26, 4, v5
	s_mov_b32 s19, 0x31027000
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v17, s0, v17, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	s_mov_b32 s18, 0x7ffffffe
	s_mov_b32 s16, s12
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v27, 6, v5
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s0, s33, s1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v29, 10, v5
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v31, s0, v26, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v33, v9, s[16:19], 0 offen
	buffer_load_u16 v68, v17, s[16:19], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v9, s0, v5, 1
	v_add_lshl_u32 v17, s0, v21, 1
	s_waitcnt lgkmcnt(9)
	v_add_lshl_u32 v32, s0, v27, 1
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	s_and_b32 s17, s15, 0xffff
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	s_mov_b32 s16, s14
	v_cndmask_b32_e64 v32, 0x80000000, v32, s2
	.loc	1 182 35                        ; generate_amdgcn.py:182:35
	s_add_i32 s1, s0, s27
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v70, v9, s[16:19], 0 offen
	buffer_load_u16 v80, v17, s[16:19], 0 offen
	buffer_load_u16 v81, v31, s[16:19], 0 offen
	buffer_load_u16 v82, v32, s[16:19], 0 offen
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v31, s1, v5, 1
	v_add_lshl_u32 v21, s1, v21, 1
	v_add_lshl_u32 v26, s1, v26, 1
	v_add_lshl_u32 v27, s1, v27, 1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v28, 8, v5
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v30, 14, v5
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v17, s0, v29, 1
	v_add_lshl_u32 v34, s0, v28, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x3
	buffer_load_u16 v83, v31, s[16:19], 0 offen
	buffer_load_u16 v84, v21, s[16:19], 0 offen
	buffer_load_u16 v85, v26, s[16:19], 0 offen
	buffer_load_u16 v86, v27, s[16:19], 0 offen
	v_add_lshl_u32 v29, s1, v29, 1
	v_add_lshl_u32 v28, s1, v28, 1
	v_add_lshl_u32 v32, s1, v30, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_cndmask_b32_e64 v9, 0x80000000, v34, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v21, 0x80000000, v29, s2
	v_cndmask_b32_e64 v26, 0x80000000, v28, s2
	v_cndmask_b32_e64 v27, 0x80000000, v32, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x4
	buffer_load_u16 v87, v17, s[16:19], 0 offen
	buffer_load_u16 v88, v9, s[16:19], 0 offen
	buffer_load_u16 v89, v21, s[16:19], 0 offen
	buffer_load_u16 v90, v26, s[16:19], 0 offen
	buffer_load_u16 v34, v27, s[16:19], 0 offen
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v9, 12, v5
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v28, s0, v30, 1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v26, 0x78, v67
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s34, s34, s27
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.h, 0
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v5, s1, v9, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v27, s0, v9, 1
	v_cndmask_b32_e64 v29, 0x80000000, v28, s2
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v9, s34, s33, v26
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v30.h, v17.h
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	s_clause 0x2
	buffer_load_u16 v28, v27, s[16:19], 0 offen
	buffer_load_u16 v29, v29, s[16:19], 0 offen
	buffer_load_u16 v21, v5, s[16:19], 0 offen
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v5, s27, v69
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v31.h, v17.h
	v_mov_b16_e32 v32.h, v17.h
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v8, s27, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	v_and_b32_e32 v0, 16, v0
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v27, 16, v68
	v_lshlrev_b32_e32 v26, 16, v33
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v33.h, v17.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v11, v11, v27
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v67, v155, v26
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v25, v25, v26
	v_mul_f32_e32 v24, v24, v26
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v80, 16, v80
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v22, v22, v26
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v68, v156, v26
	v_dual_mul_f32 v69, v154, v26 :: v_dual_mul_f32 v72, v72, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v20, v20, v26
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v79, v79, v26 :: v_dual_mul_f32 v74, v74, v27
	v_mul_f32_e32 v78, v78, v26
	v_dual_mul_f32 v75, v75, v27 :: v_dual_lshlrev_b32 v70, 16, v70
	v_mul_f32_e32 v77, v77, v27
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v83, 16, v83
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v84, 16, v84
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v85, 16, v85
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v13, v13, v27 :: v_dual_lshlrev_b32 v86, 16, v86
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v18, v18, v26 :: v_dual_lshlrev_b32 v81, 16, v81
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fma_f32 v67, v67, v84, v64
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v87, 16, v87
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v23, v23, v26 :: v_dual_lshlrev_b32 v88, 16, v88
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v90, 16, v90
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v64, v64, v67, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v12, v12, v27 :: v_dual_lshlrev_b32 v89, 16, v89
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v73, v73, v27 :: v_dual_lshlrev_b32 v34, 16, v34
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v22, v22, v70, v65
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v78, v78, v90, v56
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v11, v11, v70, v54
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v70, v72, v83, v52
	v_fma_f32 v72, v75, v84, v53
	v_fma_f32 v74, v74, v85, v48
	v_fma_f32 v75, v77, v86, v49
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v12, v12, v87, v47
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v19, v19, v26 :: v_dual_mul_f32 v14, v14, v27
	.loc	1 183 17 is_stmt 1              ; generate_amdgcn.py:183:17
	v_fma_f32 v69, v69, v85, v60
	v_fma_f32 v79, v79, v89, v57
	v_fma_f32 v18, v18, v83, v42
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v23, v23, v81, v62
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v68, v68, v86, v61
	v_fma_f32 v73, v73, v89, v45
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v56, v56, v78, s2
	v_cndmask_b32_e64 v49, v49, v75, s2
	v_cndmask_b32_e64 v48, v48, v74, s2
	v_cndmask_b32_e64 v12, v47, v12, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v47, 0xbfb8aa3b, v64 :: v_dual_lshlrev_b32 v82, 16, v82
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v15, v15, v27
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v14, v14, v80, v55
	v_fma_f32 v13, v13, v81, v50
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v60, v60, v69, s2
	v_cndmask_b32_e64 v57, v57, v79, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v20, v20, v87, v59
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v42, v18, s2
	v_cndmask_b32_e64 v23, v62, v23, s2
	v_cndmask_b32_e64 v42, v61, v68, s2
	v_cndmask_b32_e64 v11, v54, v11, s2
	v_cndmask_b32_e64 v53, v53, v72, s2
	v_cndmask_b32_e64 v45, v45, v73, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v54, 0xbfb8aa3b, v56
	v_dual_mul_f32 v61, 0xbfb8aa3b, v48 :: v_dual_mul_f32 v62, 0xbfb8aa3b, v49
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v76, v76, v27
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v15, v15, v82, v51
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v14, v55, v14, s2
	v_cndmask_b32_e64 v13, v50, v13, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v50, 0xbfb8aa3b, v60 :: v_dual_mul_f32 v55, 0xbfb8aa3b, v57
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v10, v10, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v22, v65, v22, s2
	v_cndmask_b32_e64 v20, v59, v20, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v59, 0xbfb8aa3b, v53
	v_mul_f32_e32 v65, 0xbfb8aa3b, v45
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v54
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v62
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v51, v15, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v51, 0xbfb8aa3b, v42
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v50
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v55
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v10, v10, v88, v46
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v54, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v59
	v_cndmask_b32_e64 v62, 0, 0x42800000, s8
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v64
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v19, v19, v88, v58
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v52, v52, v70, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v51
	v_cndmask_b32_e64 v50, 0, 0x42800000, s3
	v_cndmask_b32_e64 v55, 0, 0x42800000, s4
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v71, v71, v27
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v24, v24, v80, v66
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v46, v10, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v46, 0xbfb8aa3b, v18
	v_cndmask_b32_e64 v59, 0, 0x42800000, s6
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v56
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v49
	v_exp_f32_e32 v47, v47
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v58, v19, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v51, 0, 0x42800000, s1
	v_mul_f32_e32 v58, 0xbfb8aa3b, v52
	v_dual_fmac_f32 v50, 0xbfb8aa3b, v60 :: v_dual_fmac_f32 v55, 0xbfb8aa3b, v57
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v71, v71, v90, v44
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v24, v66, v24, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v46
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v53
	v_exp_f32_e32 v54, v54
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v42
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v58
	v_exp_f32_e32 v55, v55
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v25, v25, v82, v63
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v44, v44, v71, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v46, 0, 0x42800000, s0
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s5
	v_ldexp_f32 v47, v47, v66
	v_cndmask_b32_e64 v58, 0, 0x42800000, s7
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v65
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s4
	v_exp_f32_e32 v62, v62
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v63, v25, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v63, 0xbfb8aa3b, v44 :: v_dual_fmac_f32 v46, 0xbfb8aa3b, v18
	v_ldexp_f32 v54, v54, v71
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v65, 0, 0x42800000, s10
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v52
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s8
	v_ldexp_f32 v55, v55, v70
	v_exp_f32_e32 v51, v51
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v61
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v59, v59
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v66, null, v47, v47, v64
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v45
	v_exp_f32_e32 v58, v58
	v_ldexp_f32 v62, v62, v74
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v55, 1.0, v55
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v63
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v61, 0, 0x42800000, s9
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v90, v66
	.loc	1 183 17 is_stmt 1              ; generate_amdgcn.py:183:17
	v_fma_f32 v76, v76, v34, v43
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s7
	v_exp_f32_e32 v65, v65
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v74, null, v55, v55, v57
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v63, 0, 0x42800000, s11
	v_ldexp_f32 v51, v51, v68
	v_ldexp_f32 v46, v46, v67
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v48
	v_ldexp_f32 v50, v50, v69
	v_ldexp_f32 v59, v59, v72
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v43, v43, v76, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s10
	v_ldexp_f32 v58, v58, v73
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v94, v74
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_fmac_f32 v63, 0xbfb8aa3b, v44 :: v_dual_add_f32 v50, 1.0, v50
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v51, 1.0, v51 :: v_dual_add_f32 v58, 1.0, v58
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v61, v61
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_waitcnt lgkmcnt(0)
	v_fma_f32 v102, -v66, v90, 1.0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v59, 1.0, v59
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v65, v65, v76
	v_exp_f32_e32 v63, v63
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v70, null, v51, v51, v42
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s9
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v68, null, v46, v46, v18
	v_div_scale_f32 v72, null, v50, v50, v60
	v_fmac_f32_e32 v90, v102, v90
	v_div_scale_f32 v78, null, v59, v59, v53
	v_div_scale_f32 v80, null, v58, v58, v52
	v_fma_f32 v106, -v74, v94, 1.0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s11
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v92, v70
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v61, v61, v75
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v76, null, v54, v54, v56
	v_div_scale_f32 v82, null, v62, v62, v49
	v_rcp_f32_e32 v91, v68
	v_rcp_f32_e32 v93, v72
	v_rcp_f32_e32 v96, v78
	v_rcp_f32_e32 v97, v80
	v_fmac_f32_e32 v94, v106, v94
	v_div_scale_f32 v86, null, v65, v65, v45
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v63, v63, v77
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v95, v76
	v_rcp_f32_e32 v98, v82
	v_rcp_f32_e32 v100, v86
	v_fma_f32 v104, -v70, v92, 1.0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v84, null, v61, v61, v48
	v_fma_f32 v103, -v68, v91, 1.0
	v_fma_f32 v105, -v72, v93, 1.0
	v_fma_f32 v108, -v78, v96, 1.0
	v_fma_f32 v109, -v80, v97, 1.0
	v_fmac_f32_e32 v92, v104, v92
	v_div_scale_f32 v88, null, v63, v63, v44
	v_div_scale_f32 v67, s0, v64, v47, v64
	v_div_scale_f32 v69, s1, v18, v46, v18
	v_div_scale_f32 v73, s4, v60, v50, v60
	v_div_scale_f32 v79, vcc_lo, v53, v59, v53
	v_rcp_f32_e32 v99, v84
	v_fma_f32 v107, -v76, v95, 1.0
	v_fma_f32 v110, -v82, v98, 1.0
	v_dual_fmac_f32 v91, v103, v91 :: v_dual_fmac_f32 v96, v108, v96
	v_fmac_f32_e32 v93, v105, v93
	v_div_scale_f32 v81, s7, v52, v58, v52
	v_fma_f32 v112, -v86, v100, 1.0
	v_dual_fmac_f32 v97, v109, v97 :: v_dual_mul_f32 v102, v67, v90
	v_rcp_f32_e32 v101, v88
	v_div_scale_f32 v75, s5, v57, v55, v57
	v_div_scale_f32 v77, s6, v56, v54, v56
	v_div_scale_f32 v83, s8, v49, v62, v49
	v_dual_fmac_f32 v95, v107, v95 :: v_dual_fmac_f32 v100, v112, v100
	v_dual_fmac_f32 v98, v110, v98 :: v_dual_mul_f32 v103, v69, v91
	v_dual_mul_f32 v106, v75, v94 :: v_dual_mul_f32 v105, v73, v93
	v_mul_f32_e32 v108, v79, v96
	v_div_scale_f32 v87, s10, v45, v65, v45
	v_mul_f32_e32 v109, v81, v97
	v_fma_f32 v111, -v84, v99, 1.0
	v_dual_mul_f32 v107, v77, v95 :: v_dual_mul_f32 v110, v83, v98
	v_fma_f32 v114, -v66, v102, v67
	v_fma_f32 v115, -v68, v103, v69
	v_fma_f32 v117, -v72, v105, v73
	v_fma_f32 v120, -v78, v108, v79
	v_mul_f32_e32 v112, v87, v100
	v_fma_f32 v121, -v80, v109, v81
	v_div_scale_f32 v71, s3, v42, v51, v42
	v_fma_f32 v113, -v88, v101, 1.0
	v_dual_fmac_f32 v99, v111, v99 :: v_dual_fmac_f32 v102, v114, v90
	v_fma_f32 v122, -v82, v110, v83
	v_dual_fmac_f32 v103, v115, v91 :: v_dual_fmac_f32 v108, v120, v96
	v_fmac_f32_e32 v105, v117, v93
	v_fmac_f32_e32 v109, v121, v97
	v_div_scale_f32 v85, s9, v48, v61, v48
	v_dual_fmac_f32 v101, v113, v101 :: v_dual_mul_f32 v104, v71, v92
	v_fmac_f32_e32 v110, v122, v98
	v_fma_f32 v66, -v66, v102, v67
	v_fma_f32 v67, -v68, v103, v69
	v_fma_f32 v69, -v72, v105, v73
	v_fma_f32 v72, -v78, v108, v79
	v_fma_f32 v73, -v80, v109, v81
	v_fma_f32 v116, -v70, v104, v71
	v_mul_f32_e32 v111, v85, v99
	v_div_scale_f32 v89, s11, v44, v63, v44
	v_div_fmas_f32 v72, v72, v96, v108
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v118, -v74, v106, v75
	v_div_fmas_f32 v73, v73, v97, v109
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v104, v116, v92
	v_fma_f32 v123, -v84, v111, v85
	v_div_fmas_f32 v66, v66, v90, v102
	s_mov_b32 vcc_lo, s1
	v_dual_mul_f32 v113, v89, v101 :: v_dual_fmac_f32 v106, v118, v94
	v_div_fixup_f32 v53, v72, v59, v53
	v_div_fmas_f32 v59, v67, v91, v103
	v_fmac_f32_e32 v111, v123, v99
	v_fma_f32 v119, -v76, v107, v77
	v_fma_f32 v124, -v86, v112, v87
	v_fma_f32 v125, -v88, v113, v89
	v_fma_f32 v68, -v70, v104, v71
	v_fma_f32 v70, -v74, v106, v75
	v_fma_f32 v74, -v82, v110, v83
	v_div_fixup_f32 v18, v59, v46, v18
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v14, v14, v53
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v75, -v84, v111, v85
	v_dual_fmac_f32 v107, v119, v95 :: v_dual_fmac_f32 v112, v124, v100
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v47, v66, v47, v64
	v_dual_fmac_f32 v113, v125, v101 :: v_dual_mul_f32 v18, v22, v18
	v_div_fixup_f32 v52, v73, v58, v52
	v_div_fmas_f32 v58, v74, v98, v110
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v71, -v76, v107, v77
	v_div_fmas_f32 v53, v75, v99, v111
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v76, -v86, v112, v87
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v24, v24, v47
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v46, v68, v92, v104
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v77, -v88, v113, v89
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v30.l, v18.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v11, v11, v52
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v47, v69, v93, v105
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v48, v53, v61, v48
	v_div_fmas_f32 v22, v76, v100, v112
	s_mov_b32 vcc_lo, s11
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.l, v24.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v42, v46, v51, v42
	v_div_fmas_f32 v46, v77, v101, v113
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v30, 1, v30
	v_mov_b16_e32 v31.l, v11.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v22, v22, v65, v45
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v16, v16, v27 :: v_dual_and_b32 v45, 1, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.l, v14.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v13, v13, v48
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v48, v70, v94, v106
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v49, v58, v62, v49
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v25, v25, v42
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v42, v71, v95, v107
	v_div_fixup_f32 v44, v46, v63, v44
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v31, 1, v31
	v_cmp_o_f32_e64 s1, v11, v11
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v46, v48, v55, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v15, v15, v49 :: v_dual_mul_f32 v10, v10, v44
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v11, v11, v31, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v31, v42, v54, v56
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v42, 1, v17
	v_mov_b16_e32 v17.l, v25.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v47, v47, v50, v60
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s4, v18, v18
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v20, v20, v46
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v18, v18, v30, 0x7fff
	v_and_b32_e32 v30, 1, v17
	v_mov_b16_e32 v17.l, v15.h
	v_cmp_o_f32_e64 s3, v24, v24
	v_add3_u32 v24, v24, v45, 0x7fff
	v_cmp_o_f32_e64 s0, v14, v14
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v23, v23, v47
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v14, v14, v42, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v18.h, s4
	v_and_b32_e32 v18, 1, v17
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_cmp_o_f32_e64 s6, v25, v25
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s0
	v_add3_u32 v14, v25, v30, 0x7fff
	v_add3_u32 v15, v15, v18, 0x7fff
	v_mov_b16_e32 v32.l, v23.h
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v6, v6, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v33.l, v13.h
	v_cndmask_b16 v18.h, 0x7fff, v14.h, s6
	v_cndmask_b16 v14.h, 0x7fff, v15.h, vcc_lo
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v21
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s5, v13, v13
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v12, v12, v22 :: v_dual_and_b32 v33, 1, v33
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s7, v23, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v16, v16, v15, v41
	v_fma_f32 v6, v6, v15, v39
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v13, v13, v33, 0x7fff
	v_mov_b16_e32 v17.l, v20.h
	v_cmp_o_f32_e64 s0, v20, v20
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v16, v41, v16, s2
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v19, v19, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v31, 1, v32
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v39, v6, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v43
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v14.l, 0x7fff, v13.h, s5
	v_mov_b16_e32 v13.h, v17.h
	v_add3_u32 v23, v23, v31, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v16
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v13.l, v19.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v4, v4, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v18.l, 0x7fff, v23.h, s7
	v_and_b32_e32 v23, 1, v17
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v13, 1, v13
	v_mov_b16_e32 v17.l, v12.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v23, v20, v23, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v43
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v13, v19, v13, 0x7fff
	v_and_b32_e32 v30, 1, v17
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v20.h, 0x7fff, v23.h, s0
	v_cmp_o_f32_e64 s0, v19, v19
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v19, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v28, 16, v28
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v20.l, 0x7fff, v13.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v2, v2, v26 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v30, v12, v30, 0x7fff
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v4, v4, v29, v35
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v13, v19, v22
	v_exp_f32_e32 v15, v21
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v35, v4, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v22, 0xbfb8aa3b, v6 :: v_dual_add_f32 v13, 1.0, v13
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v3, v27
	v_mul_f32_e32 v1, v1, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v25.l, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v23, null, v13, v13, v43
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v15, v15, v21
	.loc	1 180 13 is_stmt 1              ; generate_amdgcn.py:180:13
	v_fma_f32 v1, v1, v28, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v22, 0, 0x42800000, s0
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v21, v23
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v25.h, v17.h
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v37, v1, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v6
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v3, v3, v28, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v31, null, v15, v15, v16
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v33, -v23, v21, 1.0
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v3, v36, v3, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v39, v31
	v_fmac_f32_e32 v21, v33, v21
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v7, v7, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fma_f32 v7, v7, v34, v40
	.loc	1 185 44 is_stmt 1              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s0
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v33, -v31, v39, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v12, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v40, v7, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v22, v22, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v39, v33, v39
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v19, 0xbfb8aa3b, v7 :: v_dual_add_f32 v22, 1.0, v22
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v40, null, v22, v22, v6
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v33, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v7
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v32
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v32, vcc_lo, v43, v13, v43
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v19, 1.0, v19 :: v_dual_mul_f32 v12, v32, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v34, null, v19, v19, v7
	v_fma_f32 v44, -v23, v12, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v41, v34
	v_fmac_f32_e32 v12, v44, v21
	v_fma_f32 v44, -v40, v33, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v23, v12, v32
	v_fmac_f32_e32 v33, v44, v33
	v_div_scale_f32 v44, s3, v6, v22, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v34, v41, 1.0
	v_div_fmas_f32 v12, v23, v21, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v32, v44, v33
	v_fmac_f32_e32 v41, v46, v41
	v_div_scale_f32 v46, s0, v7, v19, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v40, v32, v44
	v_mul_f32_e32 v27, v46, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v32, v23, v33
	v_div_scale_f32 v42, s1, v16, v15, v16
	v_fma_f32 v21, -v34, v27, v46
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v26, -v40, v32, v44
	v_mul_f32_e32 v45, v42, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v27, v21, v41
	v_fma_f32 v47, -v31, v45, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v34, v27, v46
	v_fmac_f32_e32 v45, v47, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v31, v45, v42
	v_div_fmas_f32 v21, v31, v39, v45
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e64 s0, 0, v0
	v_mov_b32_e32 v0, 0x5410
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v23, v23, v41, v27
	s_mov_b32 vcc_lo, s3
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v2, v2, v29, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v7, v23, v19, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v38, v2, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v25, 1, v25
	v_lshl_or_b32 v0, v0, 8, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v2, v2, v7
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v7, v12, v13, v43
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v0, 0x540054, v0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v26, v26, v33, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v25, v10, v25, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_mov_b16_e32 v17.l, v2.h
	v_mov_b16_e32 v10.h, v17.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v6, v26, v22, v6
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v4, v4, v7
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v30.l, 0x7fff, v25.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_lshl_or_b32 v0, v0, 4, v0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v1, v1, v6
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v6, v21, v15, v16
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v4, v4
	v_cndmask_b32_e64 v12, v30, v11, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v10.l, v1.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v3, v3, v6 :: v_dual_and_b32 v6, 1, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.l, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v7, 1, v10
	v_mov_b16_e32 v10.l, v3.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v6, v2, v6, 0x7fff
	v_cmp_o_f32_e64 s2, v3, v3
	v_add3_u32 v2, v1, v7, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_b32_e32 v7, 1, v10
	v_and_b32_e32 v10, 1, v17
	v_cndmask_b16 v6.h, 0x7fff, v6.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_add3_u32 v1, v3, v7, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v7, v4, v10, 0x7fff
	v_mov_b32_e32 v10, 0x7632
	v_cndmask_b16 v6.l, 0x7fff, v2.h, vcc_lo
	v_cndmask_b32_e64 v3, v20, v24, s0
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s2
	v_cndmask_b16 v2.h, 0x7fff, v7.h, s1
	v_cndmask_b32_e64 v4, 0x3276, v10, s0
	v_cndmask_b32_e64 v7, v6, v18, s0
	v_cndmask_b32_e64 v6, v18, v6, s0
	v_cndmask_b32_e64 v10, v11, v30, s0
	v_cndmask_b32_e64 v13, v2, v14, s0
	v_lshl_or_b32 v1, v4, 8, v4
	v_cndmask_b32_e64 v4, v24, v20, s0
	v_cndmask_b32_e64 v2, v14, v2, s0
	s_mov_b32 s1, 0x76543210
	v_and_b32_e32 v14, 0x5040504, v0
	v_and_b32_e32 v1, 0x760076, v1
	v_permlanex16_b32 v4, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v10, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v2, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v1, v1, 4, v1
	v_perm_b32 v0, v4, v3, v14
	v_perm_b32 v2, v6, v7, v14
	v_perm_b32 v10, v11, v12, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v15, 0x7060706, v1
	v_perm_b32 v1, v4, v3, v15
	v_perm_b32 v3, v6, v7, v15
	v_add_lshl_u32 v4, v9, v5, 1
	v_perm_b32 v11, v11, v12, v15
	v_perm_b32 v12, v16, v13, v14
	v_perm_b32 v13, v16, v13, v15
	v_add_lshl_u32 v5, v9, v8, 1
	s_clause 0x1
	buffer_store_b128 v[0:3], v4, s[24:27], 0 offen
	buffer_store_b128 v[10:13], v5, s[24:27], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 173
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 173
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13460
; TotalNumSgprs: 47
; NumVgprs: 173
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 173
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     173
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
