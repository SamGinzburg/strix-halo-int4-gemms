	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v4, 15, v0
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v29, 1, v0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_lshlrev_b32_e32 v11, 3, v0
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
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v2, 3, v4
	v_and_b32_e32 v46, 0x70, v29
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v82, 0, v11
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
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s5, s5, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s5
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s12, 0, s8
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s9
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s12, s12, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s12, s9, s12
	s_add_i32 s9, s9, s12
	s_xor_b32 s12, s2, s5
	s_mul_hi_u32 s9, s10, s9
	s_ashr_i32 s12, s12, 31
	s_mul_i32 s13, s9, s8
	s_delay_alu instid0(SALU_CYCLE_1)
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
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s21, s16, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s16, s16, s5
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s8, s11, s21
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s16
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s22, s8, 4
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s18, s22
	s_abs_i32 s16, s2
	s_cvt_f32_u32 s17, s18
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshlrev_b32_e32 v1, 1, v4
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s11, 0, s18
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_mad_u64_u32 v[5:6], null, s6, v3, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s10, s17
	s_mul_i32 s11, s11, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s11
	s_mov_b32 s11, 0x31027000
	s_add_i32 s10, s10, s5
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s31, s11
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_hi_u32 s5, s16, s10
	s_xor_b32 s10, s2, s22
	s_mul_i32 s19, s5, s18
	s_ashr_i32 s17, s10, 31
	s_sub_i32 s16, s16, s19
	s_add_i32 s19, s5, 1
	s_sub_i32 s20, s16, s18
	s_cmp_ge_u32 s16, s18
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s16, s20, s16
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s16, s18
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s30, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s5, s19, s5
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s27, s7, 1
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s16, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s23, s4, 63
.Ltmp13:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s18, s5, s17
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s19, s3, 5
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[6:7], null, s27, v3, v[2:3]
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s16
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s5, s23, 31
.Ltmp15:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s25, s18, s17
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v8, s19, v3
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s20, s4, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s4, s5, 26
.Ltmp17:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s5, s25, s22
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s24, s27, s19
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s5
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s26, s25, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s22, s23, s4
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e32 vcc_lo, s20, v8
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s4, 32, v8
	.loc	1 92 13 is_stmt 1               ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s21
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v6, s26, s24, v6
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	s_mul_i32 s16, s6, s19
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s33, s22, 6
.Ltmp21:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s5, s2, 5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s23, 63
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_add3_u32 v5, s16, s5, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s16, s4, vcc_lo
	.loc	1 174 43                        ; generate_amdgcn.py:174:43
	v_add_nc_u32_e32 v7, s7, v6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_and_b32 s9, s9, 0xffff
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_cndmask_b32_e32 v9, 0x80000000, v7, vcc_lo
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_and_b32 s29, s29, 0xffff
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_clause 0x1
	buffer_load_b64 v[7:8], v6, s[28:31], 0 offen
	buffer_load_b64 v[9:10], v9, s[28:31], 0 offen
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_lshlrev_b32_e32 v6, 1, v0
	v_or_b32_e32 v80, v46, v4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s23, 0x7f
	s_mov_b32 s16, -1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_add_nc_u32_e32 v81, 0, v6
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v6, 16, v3
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt vmcnt(2)
	ds_store_b16 v81, v5 offset:8192
                                        ; implicit-def: $vgpr5
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v82, v[7:8], v[9:10] offset1:8
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_or_b32_e32 v5, v46, v4
	s_mov_b32 s16, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v49, 0x80, v5
	v_or_b32_e32 v50, 0x100, v5
	v_or_b32_e32 v51, 0x180, v5
	v_or_b32_e32 v52, 0x200, v5
	v_or_b32_e32 v53, 0x280, v5
	v_or_b32_e32 v54, 0x300, v5
	v_or_b32_e32 v55, 0x380, v5
	v_or_b32_e32 v56, 0x400, v5
	v_or_b32_e32 v57, 0x480, v5
	v_or_b32_e32 v58, 0x500, v5
	v_or_b32_e32 v59, 0x580, v5
	v_or_b32_e32 v60, 0x600, v5
	v_or_b32_e32 v61, 0x680, v5
	v_or_b32_e32 v62, 0x700, v5
	v_or_b32_e32 v63, 0x780, v5
	v_or_b32_e32 v64, 0x800, v5
	v_or_b32_e32 v65, 0x880, v5
	v_or_b32_e32 v66, 0x900, v5
	v_or_b32_e32 v67, 0x980, v5
	v_or_b32_e32 v68, 0xa00, v5
	v_or_b32_e32 v69, 0xa80, v5
	v_or_b32_e32 v70, 0xb00, v5
	v_or_b32_e32 v71, 0xb80, v5
	v_or_b32_e32 v72, 0xc00, v5
	v_or_b32_e32 v73, 0xc80, v5
	v_or_b32_e32 v74, 0xd00, v5
	v_or_b32_e32 v75, 0xd80, v5
	v_or_b32_e32 v76, 0xe00, v5
	v_or_b32_e32 v77, 0xe80, v5
	v_or_b32_e32 v78, 0xf00, v5
	v_or_b32_e32 v79, 0xf80, v5
.LBB0_2:                                ; %Flow251
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v47, v6, v4
	v_bfe_u32 v48, v0, 4, 1
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v42, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v83, 0, v47
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v30, 0
	v_mov_b32_e32 v43, 0
	s_and_not1_b32 vcc_lo, exec_lo, s16
	s_add_i32 s1, s33, -1
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
	v_dual_mov_b32 v30, 0 :: v_dual_lshlrev_b32 v5, 1, v3
	s_mov_b32 s16, 0
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_sub_nc_u32_e32 v85, s20, v3
	s_mov_b32 s21, s16
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v5, s3, 6, v5
	s_add_i32 s3, s19, 32
	s_mov_b32 s19, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v7, 0xe0, v0
	s_lshl_b32 s20, s17, 8
	v_add3_u32 v4, s5, v6, v4
	s_lshl_b32 s17, s17, 7
	v_or_b32_e32 v49, 0x80, v80
	v_lshl_or_b32 v7, s18, 8, v7
	s_lshl_b32 s18, s18, 7
	v_mul_lo_u32 v4, s33, v4
	v_or_b32_e32 v50, 0x100, v80
	v_or_b32_e32 v51, 0x180, v80
	v_add_nc_u32_e32 v9, s27, v7
	v_subrev_nc_u32_e32 v88, s20, v7
	v_or_b32_e32 v52, 0x200, v80
	v_or_b32_e32 v53, 0x280, v80
	v_or_b32_e32 v54, 0x300, v80
	v_subrev_nc_u32_e32 v87, s20, v9
	s_mov_b32 s20, s16
	v_add_nc_u32_e32 v8, 0x41, v5
	v_add_nc_u32_e32 v5, 64, v5
	v_dual_mov_b32 v44, 0 :: v_dual_lshlrev_b32 v89, 1, v4
	v_or_b32_e32 v55, 0x380, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v6, s7, v8
	v_mul_lo_u32 v5, s7, v5
	v_or_b32_e32 v56, 0x400, v80
	v_or_b32_e32 v57, 0x480, v80
	v_or_b32_e32 v58, 0x500, v80
	v_or_b32_e32 v59, 0x580, v80
	v_or_b32_e32 v60, 0x600, v80
	v_or_b32_e32 v61, 0x680, v80
	v_add3_u32 v6, v6, s18, v2
	v_add3_u32 v2, v5, s18, v2
	s_mov_b32 s18, s16
	v_or_b32_e32 v62, 0x700, v80
	v_or_b32_e32 v63, 0x780, v80
	v_subrev_nc_u32_e32 v90, s17, v6
	v_subrev_nc_u32_e32 v91, s17, v2
	s_mov_b32 s17, s16
	v_add_nc_u32_e32 v3, s3, v3
	v_add_nc_u32_e32 v84, 0, v80
	v_or_b32_e32 v64, 0x800, v80
	v_or_b32_e32 v65, 0x880, v80
	v_or_b32_e32 v66, 0x900, v80
	v_mul_lo_u32 v3, s6, v3
	v_or_b32_e32 v67, 0x980, v80
	v_or_b32_e32 v68, 0xa00, v80
	v_or_b32_e32 v69, 0xa80, v80
	v_or_b32_e32 v70, 0xb00, v80
	v_or_b32_e32 v71, 0xb80, v80
	v_or_b32_e32 v72, 0xc00, v80
	v_or_b32_e32 v73, 0xc80, v80
	v_add3_u32 v92, v3, s5, v1
	v_mov_b32_e32 v1, s16
	v_or_b32_e32 v74, 0xd00, v80
	v_or_b32_e32 v75, 0xd80, v80
	v_or_b32_e32 v76, 0xe00, v80
	v_or_b32_e32 v77, 0xe80, v80
	v_or_b32_e32 v78, 0xf00, v80
	v_or_b32_e32 v79, 0xf80, v80
	v_dual_mov_b32 v3, s18 :: v_dual_lshlrev_b32 v86, 1, v48
	v_mov_b32_e32 v2, s17
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v6, s21 :: v_dual_mov_b32 v7, s22
	v_mov_b32_e32 v36, 0
	v_dual_mov_b32 v8, s23 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v31, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_max_i32 s0, s1, 1
	s_lshl_b32 s34, s7, 2
	s_lshl_b32 s35, s7, 6
	s_lshl_b32 s6, s6, 5
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_4:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e32 vcc_lo, s3, v85
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_dual_mov_b32 v101, s23 :: v_dual_mov_b32 v100, s22
	v_dual_mov_b32 v99, s21 :: v_dual_mov_b32 v98, s20
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_dual_mov_b32 v97, s19 :: v_dual_mov_b32 v96, s18
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e32 v9, 0x80000000, v92, vcc_lo
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_dual_mov_b32 v95, s17 :: v_dual_mov_b32 v94, s16
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s0, s0, -1
	s_add_i32 s3, s3, 32
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_u16 v93, v9, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e32 v9, 0x80000000, v91, vcc_lo
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v91, s35, v91
	s_cmp_lg_u32 s0, 0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b64 v[25:26], v9, s[28:31], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v83 offset:8352
	ds_load_u8 v10, v83 offset:8320
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v92, s6, v92
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v83 offset:8416
	ds_load_u8 v11, v83 offset:8384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v10, 16, v9
	ds_load_u8 v9, v83 offset:8288
	ds_load_u8 v10, v83 offset:8256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v83 offset:8192
	ds_load_u8 v11, v83 offset:8224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v102, v9, 16, v10
	ds_load_u8 v9, v84 offset:640
	ds_load_u8 v10, v84 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v84 offset:896
	ds_load_u8 v11, v84 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v10, 16, v9
	ds_load_u8 v9, v84 offset:128
	ds_load_u8 v10, v84
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v84 offset:384
	ds_load_u8 v11, v84 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v10, 16, v9
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[102:103], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v17, v83 offset:8608
	ds_load_u8 v18, v83 offset:8576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v83 offset:8672
	ds_load_u8 v19, v83 offset:8640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v105, v18, 16, v17
	ds_load_u8 v17, v83 offset:8480
	ds_load_u8 v18, v83 offset:8448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v83 offset:8544
	ds_load_u8 v19, v83 offset:8512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v18, 16, v17
	ds_load_u8 v17, v84 offset:1664
	ds_load_u8 v18, v84 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v84 offset:1920
	ds_load_u8 v19, v84 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v84 offset:1152
	ds_load_u8 v19, v84 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v84 offset:1408
	ds_load_u8 v20, v84 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[104:105], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v83 offset:8864
	ds_load_u8 v18, v83 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v83 offset:8928
	ds_load_u8 v19, v83 offset:8896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v18, 16, v17
	ds_load_u8 v17, v83 offset:8736
	ds_load_u8 v18, v83 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v83 offset:8800
	ds_load_u8 v19, v83 offset:8768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v106, v18, 16, v17
	ds_load_u8 v17, v84 offset:2688
	ds_load_u8 v18, v84 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v84 offset:2944
	ds_load_u8 v19, v84 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v84 offset:2176
	ds_load_u8 v19, v84 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v84 offset:2432
	ds_load_u8 v20, v84 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[106:107], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v83 offset:9120
	ds_load_u8 v18, v83 offset:9088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v83 offset:9184
	ds_load_u8 v19, v83 offset:9152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v109, v18, 16, v17
	ds_load_u8 v17, v83 offset:8992
	ds_load_u8 v18, v83 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v83 offset:9056
	ds_load_u8 v19, v83 offset:9024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v18, 16, v17
	ds_load_u8 v17, v84 offset:3712
	ds_load_u8 v18, v84 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v84 offset:3968
	ds_load_u8 v19, v84 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v84 offset:3200
	ds_load_u8 v19, v84 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v84 offset:3456
	ds_load_u8 v20, v84 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[108:109], v[9:16] neg_lo:[1,1,0]
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_cndmask_b32_e32 v17, 0x80000000, v90, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v90, s35, v90
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	buffer_load_b64 v[27:28], v17, s[28:31], 0 offen
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v17, v84 offset:4736
	ds_load_u8 v18, v84 offset:4608
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v84 offset:4992
	ds_load_u8 v19, v84 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v111, v18, 16, v17
	ds_load_u8 v17, v84 offset:4224
	ds_load_u8 v18, v84 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v84 offset:4480
	ds_load_u8 v19, v84 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v110, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[17:24], v[110:111], v[102:103], v[94:101] neg_lo:[1,1,0]
	ds_load_u8 v94, v84 offset:5760
	ds_load_u8 v95, v84 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v84 offset:6016
	ds_load_u8 v96, v84 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v95, v95, 16, v94
	ds_load_u8 v94, v84 offset:5248
	ds_load_u8 v96, v84 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v96, v94, 0xc0c0004
	ds_load_u8 v96, v84 offset:5504
	ds_load_u8 v97, v84 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v94, v96, 16, v94
	v_wmma_i32_16x16x16_iu4 v[17:24], v[94:95], v[104:105], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v94, v84 offset:6784
	ds_load_u8 v95, v84 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v84 offset:7040
	ds_load_u8 v96, v84 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v95, v95, 16, v94
	ds_load_u8 v94, v84 offset:6272
	ds_load_u8 v96, v84 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v96, v94, 0xc0c0004
	ds_load_u8 v96, v84 offset:6528
	ds_load_u8 v97, v84 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v94, v96, 16, v94
	v_wmma_i32_16x16x16_iu4 v[17:24], v[94:95], v[106:107], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v94, v84 offset:7808
	ds_load_u8 v95, v84 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v84 offset:8064
	ds_load_u8 v96, v84 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v95, v95, 16, v94
	ds_load_u8 v94, v84 offset:7296
	ds_load_u8 v96, v84 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v96, v94, 0xc0c0004
	ds_load_u8 v96, v84 offset:7552
	ds_load_u8 v97, v84 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v94, v96, 16, v94
	v_wmma_i32_16x16x16_iu4 v[17:24], v[94:95], v[108:109], v[17:24] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v94, v89, s[36:39], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v89, 2, v89
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v94, 16, v94
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v17, v94, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v95, v86, v88
	s_clause 0x7
	buffer_load_u16 v96, v95, s[40:43], 0 offen
	buffer_load_u16 v97, v95, s[40:43], 0 offen offset:4
	buffer_load_u16 v98, v95, s[40:43], 0 offen offset:8
	buffer_load_u16 v99, v95, s[40:43], 0 offen offset:12
	buffer_load_u16 v100, v95, s[40:43], 0 offen offset:16
	buffer_load_u16 v101, v95, s[40:43], 0 offen offset:20
	buffer_load_u16 v102, v95, s[40:43], 0 offen offset:24
	buffer_load_u16 v95, v95, s[40:43], 0 offen offset:28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v10, v94, v10
	v_mul_f32_e32 v9, v94, v9
	v_mul_f32_e32 v12, v94, v12
	v_mul_f32_e32 v11, v94, v11
	v_mul_f32_e32 v14, v94, v14
	v_mul_f32_e32 v13, v94, v13
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v22, v94, v22
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v16, v94, v16
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v18, v94, v18
	v_mul_f32_e32 v20, v94, v20
	v_mul_f32_e32 v24, v94, v24
	v_dual_mul_f32 v23, v94, v23 :: v_dual_add_nc_u32 v88, s34, v88
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v96, 16, v96
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v44, v9, v96 :: v_dual_lshlrev_b32 v97, 16, v97
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v45, v10, v97 :: v_dual_lshlrev_b32 v96, 16, v99
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v103, v86, v87
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v97, 16, v98
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v95, 16, v95
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v42, v12, v96 :: v_dual_add_nc_u32 v87, s34, v87
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v104, v103, s[40:43], 0 offen
	buffer_load_u16 v105, v103, s[40:43], 0 offen offset:4
	buffer_load_u16 v106, v103, s[40:43], 0 offen offset:8
	buffer_load_u16 v107, v103, s[40:43], 0 offen offset:12
	buffer_load_u16 v108, v103, s[40:43], 0 offen offset:16
	buffer_load_u16 v109, v103, s[40:43], 0 offen offset:20
	buffer_load_u16 v110, v103, s[40:43], 0 offen offset:24
	buffer_load_u16 v103, v103, s[40:43], 0 offen offset:28
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v96, 16, v101
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v41, v11, v97
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v97, 16, v100
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v15, v94, v15
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v19, v94, v19
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v38, v14, v96
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v37, v13, v97 :: v_dual_lshlrev_b32 v96, 16, v102
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v81, v93 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_store_2addr_stride64_b64 v82, v[25:26], v[27:28] offset1:8
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v10, 16, v104
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v9, 16, v105
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v12, 16, v106
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v11, 16, v107
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v14, 16, v108
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v13, 16, v109
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v31, v16, v95 :: v_dual_lshlrev_b32 v16, 16, v110
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v21, v94, v21 :: v_dual_fmac_f32 v34, v15, v96
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v30, v17, v10 :: v_dual_lshlrev_b32 v15, 16, v103
	v_dual_fmac_f32 v43, v18, v9 :: v_dual_fmac_f32 v40, v20, v11
	v_fmac_f32_e32 v39, v19, v12
	v_dual_fmac_f32 v35, v21, v14 :: v_dual_fmac_f32 v36, v22, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v32, v23, v16 :: v_dual_fmac_f32 v33, v24, v15
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v5, v80
.LBB0_6:                                ; %._crit_edge
	.loc	1 160 26 is_stmt 1              ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v92, v83 offset:8192
	ds_load_u8_d16 v93, v83 offset:8224
	ds_load_u8_d16 v94, v83 offset:8256
	ds_load_u8_d16 v95, v83 offset:8288
	ds_load_u8_d16 v96, v83 offset:8320
	ds_load_u8_d16 v97, v83 offset:8352
	ds_load_u8_d16 v98, v83 offset:8384
	ds_load_u8_d16 v99, v83 offset:8416
	ds_load_u8_d16 v84, v83 offset:8448
	ds_load_u8_d16 v85, v83 offset:8480
	ds_load_u8_d16 v86, v83 offset:8512
	ds_load_u8_d16 v87, v83 offset:8544
	ds_load_u8_d16 v88, v83 offset:8576
	ds_load_u8_d16 v89, v83 offset:8608
	ds_load_u8_d16 v90, v83 offset:8640
	ds_load_u8_d16 v91, v83 offset:8672
	ds_load_u8_d16 v10, v83 offset:8704
	ds_load_u8_d16 v11, v83 offset:8736
	ds_load_u8_d16 v19, v83 offset:8768
	ds_load_u8_d16 v20, v83 offset:8800
	ds_load_u8_d16 v22, v83 offset:8832
	ds_load_u8_d16 v25, v83 offset:8864
	ds_load_u8_d16 v26, v83 offset:8896
	ds_load_u8_d16 v28, v83 offset:8928
	ds_load_u8_d16 v21, v83 offset:8960
	ds_load_u8_d16 v23, v83 offset:8992
	ds_load_u8_d16 v24, v83 offset:9024
	ds_load_u8_d16 v27, v83 offset:9056
	ds_load_u8_d16 v80, v83 offset:9088
	ds_load_u8_d16 v81, v83 offset:9120
	ds_load_u8_d16 v82, v83 offset:9152
	ds_load_u8_d16 v83, v83 offset:9184
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_cndmask_b32_e64 v2, 0, 1, s2
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v78, 0, v78
	v_add_nc_u32_e32 v79, 0, v79
	v_dual_mov_b32 v6, 0 :: v_dual_add_nc_u32 v77, 0, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s0, 1, v2
	v_dual_mov_b32 v3, 0 :: v_dual_add_nc_u32 v76, 0, v76
	v_dual_mov_b32 v4, 0 :: v_dual_add_nc_u32 v75, 0, v75
	v_dual_mov_b32 v7, 0 :: v_dual_add_nc_u32 v74, 0, v74
	v_dual_mov_b32 v8, 0 :: v_dual_add_nc_u32 v73, 0, v73
	v_add_nc_u32_e32 v72, 0, v72
	v_add_nc_u32_e32 v71, 0, v71
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v70, 0, v70
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
	v_add_nc_u32_e32 v56, 0, v56
	v_add_nc_u32_e32 v55, 0, v55
	v_add_nc_u32_e32 v54, 0, v54
	v_add_nc_u32_e32 v53, 0, v53
	v_add_nc_u32_e32 v100, 0, v52
	v_add_nc_u32_e32 v51, 0, v51
	v_add_nc_u32_e32 v50, 0, v50
	v_add_nc_u32_e32 v49, 0, v49
	v_add_nc_u32_e32 v52, 0, v5
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v5, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	ds_load_u8 v4, v53
	ds_load_u8 v5, v100
	ds_load_u8 v6, v55
	ds_load_u8 v7, v52
	ds_load_u8 v8, v51
	ds_load_u8 v9, v50
	ds_load_u8 v12, v54
	ds_load_u8 v13, v49
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v2, v96, v97, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v3, v98, v99, 0xc0c0004
	v_perm_b32 v14, v92, v93, 0xc0c0004
	v_perm_b32 v15, v94, v95, 0xc0c0004
	v_mov_b32_e32 v101, 0
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v115, v26, v28, 0xc0c0004
	v_lshl_or_b32 v3, v3, 16, v2
	v_perm_b32 v116, v10, v11, 0xc0c0004
	v_lshl_or_b32 v2, v15, 16, v14
	v_mov_b32_e32 v102, v101
	v_mov_b32_e32 v103, v101
	v_mov_b32_e32 v104, v101
	v_mov_b32_e32 v105, v101
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	v_mov_b32_e32 v106, v101
	v_mov_b32_e32 v107, v101
	v_mov_b32_e32 v108, v101
	v_perm_b32 v117, v19, v20, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v5, v12, v6, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v13, 0xc0c0004
	v_perm_b32 v7, v9, v8, 0xc0c0004
	ds_load_u8 v8, v61
	ds_load_u8 v9, v60
	ds_load_u8 v12, v63
	ds_load_u8 v13, v56
	ds_load_u8 v14, v59
	ds_load_u8 v15, v58
	ds_load_u8 v16, v62
	v_lshl_or_b32 v5, v5, 16, v4
	v_lshl_or_b32 v4, v7, 16, v6
	ds_load_u8 v6, v57
	v_wmma_i32_16x16x16_iu4 v[101:108], v[4:5], v[2:3], v[101:108] neg_lo:[1,1,0]
	v_perm_b32 v2, v88, v89, 0xc0c0004
	v_perm_b32 v3, v90, v91, 0xc0c0004
	v_perm_b32 v4, v84, v85, 0xc0c0004
	v_perm_b32 v5, v86, v87, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v7, v9, v8, 0xc0c0004
	v_lshl_or_b32 v3, v3, 16, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v2, v5, 16, v4
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v8, v16, v12, 0xc0c0004
	ds_load_u8 v9, v69
	ds_load_u8 v12, v68
	ds_load_u8 v16, v71
	ds_load_u8 v17, v65
	ds_load_u8 v18, v64
	ds_load_u8 v109, v67
	ds_load_u8 v110, v66
	ds_load_u8 v111, v70
	v_lshl_or_b32 v5, v8, 16, v7
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v4, v13, v6, 0xc0c0004
	v_perm_b32 v6, v15, v14, 0xc0c0004
	ds_load_u8 v7, v77
	ds_load_u8 v8, v76
	ds_load_u8 v13, v79
	ds_load_u8 v14, v73
	ds_load_u8 v15, v72
	ds_load_u8 v112, v75
	ds_load_u8 v113, v74
	ds_load_u8 v114, v78
	v_lshl_or_b32 v4, v6, 16, v4
	v_perm_b32 v6, v22, v25, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v9, v12, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[101:108], v[4:5], v[2:3], v[101:108] neg_lo:[1,1,0]
	v_lshl_or_b32 v3, v115, 16, v6
	v_lshl_or_b32 v2, v117, 16, v116
	v_perm_b32 v6, v80, v81, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v12, v111, v16, 0xc0c0004
	v_perm_b32 v16, v18, v17, 0xc0c0004
	v_perm_b32 v17, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	v_lshl_or_b32 v5, v12, 16, v9
	v_perm_b32 v9, v82, v83, 0xc0c0004
	v_lshl_or_b32 v4, v17, 16, v16
	v_perm_b32 v12, v21, v23, 0xc0c0004
	v_perm_b32 v16, v24, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v114, v13, 0xc0c0004
	v_perm_b32 v13, v15, v14, 0xc0c0004
	v_perm_b32 v14, v113, v112, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[101:108], v[4:5], v[2:3], v[101:108] neg_lo:[1,1,0]
	v_lshl_or_b32 v3, v9, 16, v6
	v_lshl_or_b32 v2, v16, 16, v12
	v_lshl_or_b32 v5, v8, 16, v7
	v_lshl_or_b32 v4, v14, 16, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[101:108], v[4:5], v[2:3], v[101:108] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v3, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v7, v102
	v_cvt_f32_i32_e32 v6, v103
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v9, v104
	v_cvt_f32_i32_e32 v2, v105
	v_cvt_f32_i32_e32 v5, v106
	v_cvt_f32_i32_e32 v4, v107
	v_cvt_f32_i32_e32 v8, v108
.LBB0_8:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v18, 0
	.loc	1 175 36 is_stmt 1              ; generate_amdgcn.py:175:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	ds_load_u8 v1, v53 offset:4096
	ds_load_u8 v14, v100 offset:4096
	ds_load_u8 v15, v55 offset:4096
	ds_load_u8 v16, v52 offset:4096
	ds_load_u8 v17, v51 offset:4096
	ds_load_u8 v18, v50 offset:4096
	ds_load_u8 v50, v54 offset:4096
	ds_load_u8 v51, v49 offset:4096
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v12, v96, v97, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v13, v98, v99, 0xc0c0004
	v_perm_b32 v52, v92, v93, 0xc0c0004
	v_perm_b32 v53, v94, v95, 0xc0c0004
	v_mov_b32_e32 v49, 0
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	v_lshl_or_b32 v13, v13, 16, v12
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v19, v19, v20, 0xc0c0004
	v_lshl_or_b32 v12, v53, 16, v52
	v_mov_b32_e32 v52, v49
	v_mov_b32_e32 v53, v49
	v_mov_b32_e32 v54, v49
	v_mov_b32_e32 v55, v49
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v14, v1, 0xc0c0004
	v_lshl_or_b32 v10, v19, 16, v10
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v14, v50, v15, 0xc0c0004
	ds_load_u8 v18, v61 offset:4096
	ds_load_u8 v60, v60 offset:4096
	ds_load_u8 v61, v63 offset:4096
	ds_load_u8 v63, v56 offset:4096
	ds_load_u8 v59, v59 offset:4096
	ds_load_u8 v58, v58 offset:4096
	ds_load_u8 v62, v62 offset:4096
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v16, v16, v51, 0xc0c0004
	v_mov_b32_e32 v50, v49
	v_mov_b32_e32 v51, v49
	v_lshl_or_b32 v15, v14, 16, v1
	ds_load_u8 v1, v57 offset:4096
	v_lshl_or_b32 v14, v17, 16, v16
	v_mov_b32_e32 v56, v49
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[14:15], v[12:13], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v12, v88, v89, 0xc0c0004
	v_perm_b32 v13, v90, v91, 0xc0c0004
	v_perm_b32 v14, v84, v85, 0xc0c0004
	v_perm_b32 v15, v86, v87, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v16, v60, v18, 0xc0c0004
	v_lshl_or_b32 v13, v13, 16, v12
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v17, v62, v61, 0xc0c0004
	ds_load_u8 v18, v69 offset:4096
	ds_load_u8 v57, v68 offset:4096
	ds_load_u8 v60, v71 offset:4096
	ds_load_u8 v61, v65 offset:4096
	ds_load_u8 v62, v64 offset:4096
	ds_load_u8 v64, v67 offset:4096
	ds_load_u8 v65, v66 offset:4096
	ds_load_u8 v66, v70 offset:4096
	v_lshl_or_b32 v12, v15, 16, v14
	v_perm_b32 v14, v58, v59, 0xc0c0004
	v_lshl_or_b32 v15, v17, 16, v16
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v1, v63, v1, 0xc0c0004
	ds_load_u8 v16, v77 offset:4096
	ds_load_u8 v17, v76 offset:4096
	ds_load_u8 v58, v79 offset:4096
	ds_load_u8 v59, v73 offset:4096
	ds_load_u8 v63, v72 offset:4096
	ds_load_u8 v67, v75 offset:4096
	ds_load_u8 v68, v74 offset:4096
	ds_load_u8 v69, v78 offset:4096
	v_lshl_or_b32 v14, v14, 16, v1
	v_perm_b32 v1, v22, v25, 0xc0c0004
	v_perm_b32 v22, v26, v28, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v18, v57, v18, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[14:15], v[12:13], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v14, v82, v83, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v25, v62, v61, 0xc0c0004
	v_lshl_or_b32 v11, v22, 16, v1
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v26, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v20, v66, v60, 0xc0c0004
	v_perm_b32 v1, v80, v81, 0xc0c0004
	v_perm_b32 v15, v21, v23, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	v_lshl_or_b32 v12, v26, 16, v25
	v_lshl_or_b32 v13, v20, 16, v18
	v_perm_b32 v18, v24, v27, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v69, v58, 0xc0c0004
	v_perm_b32 v19, v63, v59, 0xc0c0004
	v_perm_b32 v20, v68, v67, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[12:13], v[10:11], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v11, v14, 16, v1
	v_lshl_or_b32 v10, v18, 16, v15
	v_lshl_or_b32 v13, v17, 16, v16
	v_lshl_or_b32 v12, v20, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[12:13], v[10:11], v[49:56] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v1, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v16, v50
	v_cvt_f32_i32_e32 v15, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v18, v52
	v_cvt_f32_i32_e32 v12, v53
	v_cvt_f32_i32_e32 v14, v54
	v_cvt_f32_i32_e32 v13, v55
	v_cvt_f32_i32_e32 v17, v56
.LBB0_10:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_waitcnt lgkmcnt(14)
	v_mul_lo_u32 v11, s33, v47
	s_mul_i32 s0, s5, s33
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s1, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v10, v48, v46
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_add_i32 s0, s0, s1
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s1, s1, s27
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s9, s13, 0xffff
	s_mov_b32 s11, 0x31027000
	v_add_lshl_u32 v11, s0, v11, 1
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s0, s26, s1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	s_waitcnt lgkmcnt(13)
	v_or_b32_e32 v19, 2, v10
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt lgkmcnt(10)
	v_add_lshl_u32 v25, s0, v10, 1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v20, 4, v10
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v21, 6, v10
	v_or_b32_e32 v22, 8, v10
	s_waitcnt lgkmcnt(6)
	v_or_b32_e32 v23, 10, v10
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_mov_b32 s8, s12
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v24, 12, v10
	.loc	1 182 35                        ; generate_amdgcn.py:182:35
	s_add_i32 s1, s0, s7
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt lgkmcnt(4)
	buffer_load_u16 v27, v11, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v11, 0x80000000, v25, s2
	v_add_lshl_u32 v25, s0, v19, 1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v26, 14, v10
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v28, s0, v20, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v10, s1, v10, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v46, s0, v21, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v19, s1, v19, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v48, s0, v22, 1
	v_add_lshl_u32 v49, s0, v23, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v20, s1, v20, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v50, s0, v24, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v21, s1, v21, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_and_b32 s9, s15, 0xffff
	s_mov_b32 s8, s14
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_add_lshl_u32 v23, s1, v23, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v48, 0x80000000, v48, s2
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	v_add_lshl_u32 v22, s1, v22, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x5
	buffer_load_u16 v51, v11, s[8:11], 0 offen
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	buffer_load_u16 v28, v28, s[8:11], 0 offen
	buffer_load_u16 v46, v46, s[8:11], 0 offen
	buffer_load_u16 v48, v48, s[8:11], 0 offen
	buffer_load_u16 v49, v49, s[8:11], 0 offen
	v_cndmask_b32_e64 v11, 0x80000000, v50, s2
	v_add_lshl_u32 v50, s0, v26, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	s_clause 0x3
	buffer_load_u16 v52, v10, s[8:11], 0 offen
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	v_add_lshl_u32 v10, s1, v24, 1
	v_add_lshl_u32 v24, s1, v26, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v26, 0x80000000, v50, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	s_clause 0x5
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	buffer_load_u16 v22, v22, s[8:11], 0 offen
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	buffer_load_u16 v50, v11, s[8:11], 0 offen
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	buffer_load_u16 v53, v10, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v54, 0x7632
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_or_b32_e32 v10, s5, v47
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v11.h, 0
	v_dual_mov_b32 v47, 0x5410 :: v_dual_and_b32 v0, 16, v0
	s_mov_b32 s8, 0x76543210
	s_and_b32 s25, s25, 0xffff
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b16_e32 v55.h, v11.h
	v_mov_b16_e32 v57.h, v11.h
	v_mov_b16_e32 v56.h, v11.h
	v_mov_b16_e32 v58.h, v11.h
	s_mov_b32 s27, s11
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v27, 16, v27
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v16, v16, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v7, v7, v27
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v1, v1, v27
	v_mul_f32_e32 v18, v18, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v6, v6, v27
	v_mul_f32_e32 v5, v5, v27
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v15, v15, v27
	v_mul_f32_e32 v13, v13, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v9, v9, v27
	v_mul_f32_e32 v2, v2, v27
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v17, v17, v27
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v3, v27
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v25, 16, v25
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v28, 16, v28
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v46, 16, v46
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v48, 16, v48
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v7, v7, v25, v45
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v6, v6, v28, v41
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v20, 16, v20
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v9, v9, v46, v42
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v1, v1, v52, v30
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v23, 16, v23
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v18, v18, v21, v40
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v30, v1, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v53, 16, v53
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v40, v18, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v13, v13, v53, v32
	v_fma_f32 v15, v15, v20, v39
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v2, v2, v48, v37
	v_fma_f32 v5, v5, v49, v38
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v45, v7, s2
	v_cndmask_b32_e64 v13, v32, v13, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v12, v12, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v39, v15, s2
	v_cndmask_b32_e64 v9, v42, v9, s2
	v_cndmask_b32_e64 v6, v41, v6, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v25, 0xbfb8aa3b, v13
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v12, v12, v22, v35
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v22, 0xbfb8aa3b, v18
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v16, v16, v19, v43
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v1
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v17, v17, v24, v33
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v12, v35, v12, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v14, v14, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v16, v43, v16, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v19
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v33, v17, s2
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v14, v14, v23, v36
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v23, 0xbfb8aa3b, v12
	v_mul_f32_e32 v20, 0xbfb8aa3b, v16
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v8, v8, v27
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v3, v3, v51, v44
	.loc	1 185 44 is_stmt 1              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v23
	v_mul_f32_e32 v21, 0xbfb8aa3b, v15
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v8, v8, v26, v31
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v23, 0, 0x42800000, s4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v4, v4, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v14, v36, v14, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v22
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v3, v44, v3, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v12
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v4, v4, v50, v34
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v38, v5, s2
	v_cndmask_b32_e64 v2, v37, v2, s2
	v_cndmask_b32_e64 v8, v31, v8, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v26, 0xbfb8aa3b, v17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v34, v4, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v21
	v_mul_f32_e32 v24, 0xbfb8aa3b, v14
	v_cndmask_b32_e64 v22, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v25
	v_exp_f32_e32 v19, v19
	v_cndmask_b32_e64 v21, 0, 0x42800000, s2
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v16
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v24
	v_cndmask_b32_e64 v25, 0, 0x42800000, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v22, 0xbfb8aa3b, v18 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v15
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v24, 0, 0x42800000, s3
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v13
	v_exp_f32_e32 v22, v22
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v21, v21
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v26
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s1
	v_exp_f32_e32 v23, v23
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v19, v19, v28
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v14
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s2
	v_ldexp_f32 v20, v20, v27
	v_cndmask_b32_e64 v26, 0, 0x42800000, s5
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s6
	v_ldexp_f32 v22, v22, v30
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v21, v21, v31
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s3
	v_ldexp_f32 v23, v23, v33
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v17
	v_ldexp_f32 v25, v25, v35
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_add_f32 v21, 1.0, v21
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v27, null, v20, v20, v16
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v24, v24, v32
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v26, v26
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v32, null, v22, v22, v18
	v_rcp_f32_e32 v43, v27
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s5
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v30, null, v19, v19, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v45, v32
	v_div_scale_f32 v42, null, v25, v25, v13
	s_delay_alu instid0(TRANS32_DEP_3) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v26, v26, v34
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v34, null, v21, v21, v15
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_fma_f32 v53, -v27, v43, 1.0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v44, v30
	v_div_scale_f32 v38, null, v23, v23, v12
	v_fma_f32 v60, -v32, v45, 1.0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v26, 1.0, v26 :: v_dual_fmac_f32 v43, v53, v43
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v36, null, v24, v24, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v60, v45
	v_div_scale_f32 v40, null, v26, v26, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v48, v36
	v_rcp_f32_e32 v46, v34
	v_rcp_f32_e32 v51, v42
	v_rcp_f32_e32 v50, v40
	v_rcp_f32_e32 v49, v38
	v_fma_f32 v59, -v30, v44, 1.0
	v_div_scale_f32 v28, vcc_lo, v16, v20, v16
	v_div_scale_f32 v31, s0, v1, v19, v1
	v_fma_f32 v62, -v36, v48, 1.0
	v_fma_f32 v61, -v34, v46, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v65, -v42, v51, 1.0
	v_fma_f32 v64, -v40, v50, 1.0
	v_fmac_f32_e32 v44, v59, v44
	v_div_scale_f32 v33, s1, v18, v22, v18
	v_fma_f32 v63, -v38, v49, 1.0
	v_dual_fmac_f32 v48, v62, v48 :: v_dual_mul_f32 v53, v28, v43
	v_div_scale_f32 v35, s2, v15, v21, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v46, v61, v46 :: v_dual_fmac_f32 v49, v63, v49
	v_div_scale_f32 v41, s5, v17, v26, v17
	v_dual_fmac_f32 v51, v65, v51 :: v_dual_fmac_f32 v50, v64, v50
	v_dual_mul_f32 v59, v31, v44 :: v_dual_mul_f32 v60, v33, v45
	v_mul_f32_e32 v61, v35, v46
	v_fma_f32 v66, -v27, v53, v28
	v_div_scale_f32 v37, s3, v14, v24, v14
	v_div_scale_f32 v52, s6, v13, v25, v13
	v_mul_f32_e32 v64, v41, v50
	v_fma_f32 v67, -v30, v59, v31
	v_fma_f32 v68, -v32, v60, v33
	v_fmac_f32_e32 v53, v66, v43
	v_div_scale_f32 v39, s4, v12, v23, v12
	v_mul_f32_e32 v62, v37, v48
	v_fma_f32 v69, -v34, v61, v35
	v_mul_f32_e32 v65, v52, v51
	v_fma_f32 v72, -v40, v64, v41
	v_dual_fmac_f32 v59, v67, v44 :: v_dual_fmac_f32 v60, v68, v45
	v_fma_f32 v27, -v27, v53, v28
	v_mul_f32_e32 v63, v39, v49
	v_fma_f32 v70, -v36, v62, v37
	v_fmac_f32_e32 v61, v69, v46
	v_fmac_f32_e32 v64, v72, v50
	v_fma_f32 v28, -v30, v59, v31
	v_fma_f32 v30, -v32, v60, v33
	v_div_fmas_f32 v27, v27, v43, v53
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v62, v70, v48
	v_fma_f32 v31, -v34, v61, v35
	v_div_fmas_f32 v28, v28, v44, v59
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v71, -v38, v63, v39
	v_div_fmas_f32 v30, v30, v45, v60
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v16, v27, v20, v16
	v_div_fmas_f32 v20, v31, v46, v61
	v_fma_f32 v32, -v36, v62, v37
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v1, v28, v19, v1
	v_fma_f32 v73, -v42, v65, v52
	v_div_fixup_f32 v15, v20, v21, v15
	v_fmac_f32_e32 v63, v71, v49
	v_div_fmas_f32 v19, v32, v48, v62
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v7, v7, v16 :: v_dual_mul_f32 v6, v6, v15
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v33, -v38, v63, v39
	v_fma_f32 v34, -v40, v64, v41
	v_div_fixup_f32 v18, v30, v22, v18
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v1, v3, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v14, v19, v24, v14
	v_div_fmas_f32 v16, v33, v49, v63
	s_mov_b32 vcc_lo, s5
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v9, v9, v18
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v3, v34, v50, v64
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v12, v16, v23, v12
	v_fmac_f32_e32 v65, v73, v51
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v11.l, v7.h
	v_mov_b16_e32 v55.l, v1.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v3, v3, v26, v17
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v2, v2, v12
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v35, -v42, v65, v52
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v5, v5, v14 :: v_dual_and_b32 v14, 1, v11
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v12, 1, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v57.l, v2.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v18, v35, v51, v65
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v3, v8, v3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v7, v7, v14, 0x7fff
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v13, v18, v25, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v1, v1, v12, 0x7fff
	v_and_b32_e32 v14, 1, v57
	v_cndmask_b16 v7.h, 0x7fff, v7.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v4, v4, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v11.l, v9.h
	v_cmp_o_f32_e64 s1, v9, v9
	v_mov_b16_e32 v56.l, v6.h
	v_cmp_o_f32_e64 s4, v2, v2
	v_mov_b16_e32 v58.l, v4.h
	v_and_b32_e32 v8, 1, v11
	v_mov_b16_e32 v11.l, v5.h
	v_cmp_o_f32_e64 s3, v5, v5
	v_add3_u32 v2, v2, v14, 0x7fff
	v_and_b32_e32 v13, 1, v56
	v_add3_u32 v8, v9, v8, 0x7fff
	v_dual_cndmask_b32 v9, 0x3276, v54 :: v_dual_and_b32 v12, 1, v11
	v_cndmask_b16 v7.l, 0x7fff, v1.h, s0
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s4
	v_cmp_o_f32_e64 s2, v6, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v5, v5, v12, 0x7fff
	v_cmp_o_f32_e64 s6, v4, v4
	v_mov_b16_e32 v11.l, v3.h
	v_add3_u32 v0, v6, v13, 0x7fff
	v_cndmask_b32_e32 v6, 0x1054, v47, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v5.h, s3
	v_and_b32_e32 v2, 1, v58
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s1
	v_cndmask_b16 v8.l, 0x7fff, v0.h, s2
	v_cmp_o_f32_e64 s5, v3, v3
	v_cndmask_b32_e32 v5, v1, v7, vcc_lo
	v_add3_u32 v2, v4, v2, 0x7fff
	v_lshl_or_b32 v4, v6, 8, v6
	v_lshl_or_b32 v6, v9, 8, v9
	v_cndmask_b32_e32 v1, v7, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s6
	v_and_b32_e32 v11, 1, v11
	v_and_b32_e32 v2, 0x540054, v4
	v_permlanex16_b32 v1, v1, s8, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v3, v3, v11, 0x7fff
	v_lshl_or_b32 v2, v2, 4, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s5
	v_and_b32_e32 v4, 0x760076, v6
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v6, v10, s7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_dual_cndmask_b32 v7, v0, v8 :: v_dual_and_b32 v2, 0x5040504, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v3, v4, 4, v4
	v_cndmask_b32_e32 v4, v8, v0, vcc_lo
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_and_or_b32 v8, 0x78, v29, s26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_perm_b32 v0, v1, v5, v2
	s_mov_b32 s26, s10
	v_and_b32_e32 v3, 0x7060706, v3
	v_permlanex16_b32 v4, v4, s8, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_perm_b32 v1, v1, v5, v3
	v_perm_b32 v2, v4, v7, v2
	v_perm_b32 v3, v4, v7, v3
	v_add_lshl_u32 v4, v8, v6, 1
	buffer_store_b128 v[0:3], v4, s[24:27], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 118
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 118
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9484
; TotalNumSgprs: 46
; NumVgprs: 118
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 118
; Occupancy: 12
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc64_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     118
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
