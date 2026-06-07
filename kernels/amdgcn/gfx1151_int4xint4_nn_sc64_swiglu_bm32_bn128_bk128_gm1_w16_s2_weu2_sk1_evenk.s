	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
	v_and_b32_e32 v39, 15, v0
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v22, 1, v0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_lshlrev_b32_e32 v11, 3, v0
                                        ; implicit-def: $vgpr43
                                        ; implicit-def: $vgpr44
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
                                        ; implicit-def: $vgpr73
                                        ; implicit-def: $vgpr74
	v_lshlrev_b32_e32 v10, 1, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v2, 3, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v40, 0x70, v22
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v75, 0, v11
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b32_e32 v72, v40, v39
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
	.loc	1 89 16 is_stmt 1               ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s9
	s_mul_hi_u32 s11, s9, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s11
	s_xor_b32 s11, s2, s5
	s_mul_hi_u32 s9, s10, s9
	s_ashr_i32 s11, s11, 31
	s_mul_i32 s12, s9, s8
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
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s6, s6, s16
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s16, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s6, s6, 1
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s18, s6
	s_abs_i32 s19, s2
	s_cvt_f32_u32 s17, s18
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	v_readfirstlane_b32 s17, v1
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s31, s11
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s18
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s17, s17, s10
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s6
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
	s_sub_i32 s21, s19, s18
	s_cmp_ge_u32 s19, s18
	s_cselect_b32 s5, s20, s5
	s_cselect_b32 s19, s21, s19
	s_add_i32 s20, s5, 1
	s_cmp_ge_u32 s19, s18
	s_cselect_b32 s5, s20, s5
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s33, s7, 1
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s20, s5, s17
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[4:5], null, s33, v3, v[2:3]
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s18, s3, 5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s23, s20, s17
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s22, s33, s18
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s26, s23, 7
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s19, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s21, s4, 63
.Ltmp13:
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v4, s26, s22, v4
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshlrev_b32_e32 v1, 1, v39
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s19
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s24, s23, s6
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s19, s4, 1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s5, s21, 31
.Ltmp15:
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v7, s18, v1
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[5:6], null, s19, v3, v[1:2]
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s24
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v8, s18, v3
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s4, s5, 26
.Ltmp17:
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s23, s21, s4
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e32 vcc_lo, s19, v7
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s5, 32, v7
	.loc	1 98 14 is_stmt 1               ; generate_amdgcn.py:98:14
	s_lshl_b32 s27, s2, 5
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s6, s19, v8
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s4, 32, v8
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s34, s23, 6
.Ltmp21:
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	s_mul_i32 s16, s27, s19
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s21, 63
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add3_u32 v5, s18, s16, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s16, s5, vcc_lo
	s_and_b32 s6, s4, s6
	.loc	1 174 43                        ; generate_amdgcn.py:174:43
	v_add_nc_u32_e32 v6, s7, v4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s6
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_and_b32 s29, s29, 0xffff
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v7, 0x80000000, v6
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v9, v5, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_clause 0x1
	buffer_load_b64 v[5:6], v4, s[28:31], 0 offen
	buffer_load_b64 v[7:8], v7, s[28:31], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshrrev_b32_e32 v4, 3, v0
	s_mov_b32 s6, -1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s21, 0x7f
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v4, 24, v4
	v_xor_b32_e32 v4, v10, v4
	v_and_b32_e32 v10, 0x218, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v76, 0, v4
	v_lshl_or_b32 v4, v39, 5, v10
                                        ; implicit-def: $vgpr10
	s_waitcnt vmcnt(2)
	ds_store_b16 v76, v9 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v75, v[5:6], v[7:8] offset1:8
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_or_b32_e32 v10, v40, v39
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v43, 0x80, v10
	v_or_b32_e32 v44, 0x100, v10
	v_or_b32_e32 v45, 0x180, v10
	v_or_b32_e32 v46, 0x200, v10
	v_or_b32_e32 v47, 0x280, v10
	v_or_b32_e32 v48, 0x300, v10
	v_or_b32_e32 v49, 0x380, v10
	v_or_b32_e32 v50, 0x400, v10
	v_or_b32_e32 v51, 0x480, v10
	v_or_b32_e32 v52, 0x500, v10
	v_or_b32_e32 v53, 0x580, v10
	v_or_b32_e32 v54, 0x600, v10
	v_or_b32_e32 v55, 0x680, v10
	v_or_b32_e32 v56, 0x700, v10
	v_or_b32_e32 v57, 0x780, v10
	v_or_b32_e32 v58, 0x800, v10
	v_or_b32_e32 v59, 0x880, v10
	v_or_b32_e32 v60, 0x900, v10
	v_or_b32_e32 v61, 0x980, v10
	v_or_b32_e32 v62, 0xa00, v10
	v_or_b32_e32 v63, 0xa80, v10
	v_or_b32_e32 v64, 0xb00, v10
	v_or_b32_e32 v65, 0xb80, v10
	v_or_b32_e32 v66, 0xc00, v10
	v_or_b32_e32 v67, 0xc80, v10
	v_or_b32_e32 v68, 0xd00, v10
	v_or_b32_e32 v69, 0xd80, v10
	v_or_b32_e32 v70, 0xe00, v10
	v_or_b32_e32 v71, 0xe80, v10
	v_or_b32_e32 v73, 0xf00, v10
	v_or_b32_e32 v74, 0xf80, v10
.LBB0_2:                                ; %Flow200
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_xor_b32_e32 v5, 8, v4
	v_xor_b32_e32 v6, 16, v4
	v_xor_b32_e32 v7, 24, v4
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v41, 16, v3
	v_bfe_u32 v42, v0, 4, 1
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v77, 0, v4
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v78, 0, v5
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v79, 0, v6
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v80, 0, v7
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_mov_b32_e32 v23, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_add_i32 s1, s34, -1
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
	v_dual_mov_b32 v23, 0 :: v_dual_lshlrev_b32 v4, 1, v3
	v_dual_mov_b32 v38, 0 :: v_dual_and_b32 v5, 0xe0, v0
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_add3_u32 v7, s27, v41, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v4, s3, 6, v4
	s_lshl_b32 s0, s17, 8
	v_lshl_or_b32 v5, s20, 8, v5
	s_lshl_b32 s20, s20, 7
	v_sub_nc_u32_e32 v83, s19, v3
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v6, 0x41, v4
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v4, 64, v4
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v8, s33, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v6, s7, v6
	v_mul_lo_u32 v4, s7, v4
	v_mul_lo_u32 v7, s34, v7
	v_subrev_nc_u32_e32 v86, s0, v5
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v3, s27, v3
	v_subrev_nc_u32_e32 v85, s0, v8
	s_lshl_b32 s0, s17, 7
	v_add3_u32 v5, v6, s20, v2
	v_add3_u32 v2, v4, s20, v2
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v81, 0, v72
	v_or_b32_e32 v43, 0x80, v72
	v_or_b32_e32 v44, 0x100, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[17:18], null, s19, v3, v[1:2]
	v_or_b32_e32 v45, 0x180, v72
	v_or_b32_e32 v46, 0x200, v72
	v_or_b32_e32 v47, 0x280, v72
	v_or_b32_e32 v48, 0x300, v72
	v_or_b32_e32 v49, 0x380, v72
	v_or_b32_e32 v50, 0x400, v72
	v_or_b32_e32 v51, 0x480, v72
	v_or_b32_e32 v52, 0x500, v72
	v_or_b32_e32 v53, 0x580, v72
	v_or_b32_e32 v54, 0x600, v72
	v_or_b32_e32 v55, 0x680, v72
	v_or_b32_e32 v56, 0x700, v72
	v_or_b32_e32 v57, 0x780, v72
	v_or_b32_e32 v58, 0x800, v72
	v_or_b32_e32 v59, 0x880, v72
	v_or_b32_e32 v60, 0x900, v72
	v_or_b32_e32 v61, 0x980, v72
	v_or_b32_e32 v62, 0xa00, v72
	v_or_b32_e32 v63, 0xa80, v72
	v_or_b32_e32 v64, 0xb00, v72
	v_or_b32_e32 v65, 0xb80, v72
	v_or_b32_e32 v66, 0xc00, v72
	v_or_b32_e32 v67, 0xc80, v72
	v_or_b32_e32 v68, 0xd00, v72
	v_or_b32_e32 v69, 0xd80, v72
	v_or_b32_e32 v70, 0xe00, v72
	v_or_b32_e32 v71, 0xe80, v72
	v_or_b32_e32 v73, 0xf00, v72
	v_or_b32_e32 v74, 0xf80, v72
	v_sub_nc_u32_e32 v82, s19, v1
	v_dual_mov_b32 v33, 0 :: v_dual_lshlrev_b32 v84, 1, v42
	v_dual_mov_b32 v28, 0 :: v_dual_lshlrev_b32 v87, 1, v7
	v_subrev_nc_u32_e32 v88, s0, v5
	v_subrev_nc_u32_e32 v89, s0, v2
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_mov_b32_e32 v24, 0
	s_mov_b32 s16, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_max_i32 s3, s1, 1
	s_lshl_b32 s6, s7, 2
	s_lshl_b32 s35, s7, 6
	s_add_i32 s44, s18, 32
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
	v_cmp_lt_i32_e32 vcc_lo, s44, v82
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v98, s23 :: v_dual_add_nc_u32 v1, s44, v17
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s44, v83
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v97, s22 :: v_dual_mov_b32 v96, s21
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 vcc_lo, vcc_lo, s5
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v95, s20 :: v_dual_mov_b32 v94, s19
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, s4
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v93, s18 :: v_dual_mov_b32 v92, s17
	v_mov_b32_e32 v91, s16
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v90, v1, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v1, 0x80000000, v89, s0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[99:100], v77 offset:8192
	ds_load_b64 v[101:102], v78 offset:8192
	ds_load_b64 v[103:104], v79 offset:8192
	ds_load_b64 v[105:106], v80 offset:8192
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v89, s35, v89
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b64 v[18:19], v1, s[28:31], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v1, v81 offset:640
	ds_load_u8 v2, v81 offset:512
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s3, s3, -1
	s_add_i32 s44, s44, 32
	s_cmp_lg_u32 s3, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v81 offset:896
	ds_load_u8 v3, v81 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v2, 16, v1
	ds_load_u8 v1, v81 offset:128
	ds_load_u8 v2, v81
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v81 offset:384
	ds_load_u8 v3, v81 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v2, 16, v1
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[99:100], v[91:98] neg_lo:[1,1,0]
	ds_load_u8 v9, v81 offset:1664
	ds_load_u8 v10, v81 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v81 offset:1920
	ds_load_u8 v11, v81 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v81 offset:1152
	ds_load_u8 v11, v81 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v81 offset:1408
	ds_load_u8 v12, v81 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[101:102], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v81 offset:2688
	ds_load_u8 v10, v81 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v81 offset:2944
	ds_load_u8 v11, v81 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v81 offset:2176
	ds_load_u8 v11, v81 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v81 offset:2432
	ds_load_u8 v12, v81 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[103:104], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v9, v81 offset:3712
	ds_load_u8 v10, v81 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v81 offset:3968
	ds_load_u8 v11, v81 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v10, 16, v9
	ds_load_u8 v9, v81 offset:3200
	ds_load_u8 v11, v81 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v11, v9, 0xc0c0004
	ds_load_u8 v11, v81 offset:3456
	ds_load_u8 v12, v81 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v11, 16, v9
	v_wmma_i32_16x16x16_iu4 v[1:8], v[9:10], v[105:106], v[1:8] neg_lo:[1,1,0]
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_cndmask_b32_e64 v9, 0x80000000, v88, s0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v88, s35, v88
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	buffer_load_b64 v[20:21], v9, s[28:31], 0 offen
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v9, v81 offset:4736
	ds_load_u8 v10, v81 offset:4608
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v81 offset:4992
	ds_load_u8 v11, v81 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v10, 16, v9
	ds_load_u8 v9, v81 offset:4224
	ds_load_u8 v10, v81 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v81 offset:4480
	ds_load_u8 v11, v81 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v107, v10, 16, v9
	v_wmma_i32_16x16x16_iu4 v[9:16], v[107:108], v[99:100], v[91:98] neg_lo:[1,1,0]
	ds_load_u8 v91, v81 offset:5760
	ds_load_u8 v92, v81 offset:5632
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v100, v84, v85
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v85, s6, v85
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v81 offset:6016
	ds_load_u8 v93, v81 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v92, 16, v91
	ds_load_u8 v91, v81 offset:5248
	ds_load_u8 v93, v81 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v93, v91, 0xc0c0004
	ds_load_u8 v93, v81 offset:5504
	ds_load_u8 v94, v81 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v93, 16, v91
	v_wmma_i32_16x16x16_iu4 v[9:16], v[91:92], v[101:102], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v91, v81 offset:6784
	ds_load_u8 v92, v81 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v81 offset:7040
	ds_load_u8 v93, v81 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v92, 16, v91
	ds_load_u8 v91, v81 offset:6272
	ds_load_u8 v93, v81 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v93, v91, 0xc0c0004
	ds_load_u8 v93, v81 offset:6528
	ds_load_u8 v94, v81 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v93, 16, v91
	v_wmma_i32_16x16x16_iu4 v[9:16], v[91:92], v[103:104], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v91, v81 offset:7808
	ds_load_u8 v92, v81 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	ds_load_u8 v92, v81 offset:8064
	ds_load_u8 v93, v81 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v92, v92, 16, v91
	ds_load_u8 v91, v81 offset:7296
	ds_load_u8 v93, v81 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v93, v91, 0xc0c0004
	ds_load_u8 v93, v81 offset:7552
	ds_load_u8 v94, v81 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v93, 16, v91
	v_wmma_i32_16x16x16_iu4 v[9:16], v[91:92], v[105:106], v[9:16] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v91, v87, s[36:39], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v92, v84, v86
	s_clause 0xf
	buffer_load_u16 v93, v92, s[40:43], 0 offen
	buffer_load_u16 v94, v92, s[40:43], 0 offen offset:4
	buffer_load_u16 v95, v92, s[40:43], 0 offen offset:8
	buffer_load_u16 v96, v92, s[40:43], 0 offen offset:12
	buffer_load_u16 v97, v92, s[40:43], 0 offen offset:16
	buffer_load_u16 v98, v92, s[40:43], 0 offen offset:20
	buffer_load_u16 v99, v92, s[40:43], 0 offen offset:24
	buffer_load_u16 v92, v92, s[40:43], 0 offen offset:28
	buffer_load_u16 v101, v100, s[40:43], 0 offen
	buffer_load_u16 v102, v100, s[40:43], 0 offen offset:4
	buffer_load_u16 v103, v100, s[40:43], 0 offen offset:8
	buffer_load_u16 v104, v100, s[40:43], 0 offen offset:12
	buffer_load_u16 v105, v100, s[40:43], 0 offen offset:16
	buffer_load_u16 v106, v100, s[40:43], 0 offen offset:20
	buffer_load_u16 v107, v100, s[40:43], 0 offen offset:24
	buffer_load_u16 v100, v100, s[40:43], 0 offen offset:28
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v87, 2, v87
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(19)
	ds_store_b16 v76, v90 offset:8192
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(17)
	ds_store_2addr_stride64_b64 v75, v[18:19], v[20:21] offset1:8
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v86, s6, v86
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v94, 16, v94
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v91, 16, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v2, v91, v2 :: v_dual_lshlrev_b32 v93, 16, v93
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v92, 16, v92
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v38, v2, v94 :: v_dual_mul_f32 v1, v91, v1
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v3, v91, v3 :: v_dual_lshlrev_b32 v2, 16, v101
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v9, v91, v9 :: v_dual_lshlrev_b32 v94, 16, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v37, v1, v93 :: v_dual_mul_f32 v10, v91, v10
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v4, v91, v4 :: v_dual_lshlrev_b32 v1, 16, v102
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v34, v3, v94 :: v_dual_lshlrev_b32 v93, 16, v96
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v6, v91, v6 :: v_dual_lshlrev_b32 v3, 16, v104
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v12, v91, v12 :: v_dual_fmac_f32 v35, v4, v93
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v4, 16, v103
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v11, v91, v11 :: v_dual_lshlrev_b32 v94, 16, v97
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v93, 16, v98
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v5, v91, v5
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v14, v91, v14
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v8, v91, v8
	v_mul_f32_e32 v7, v91, v7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v31, v6, v93 :: v_dual_fmac_f32 v30, v5, v94
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v5, 16, v106
	v_lshlrev_b32_e32 v6, 16, v105
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v93, 16, v99
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v13, v91, v13 :: v_dual_fmac_f32 v24, v8, v92
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v8, 16, v107
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v16, v91, v16 :: v_dual_fmac_f32 v23, v9, v2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v27, v7, v93
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v36, v10, v1 :: v_dual_lshlrev_b32 v7, 16, v100
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v15, v91, v15 :: v_dual_fmac_f32 v28, v13, v6
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v32, v11, v4 :: v_dual_fmac_f32 v33, v12, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v29, v14, v5 :: v_dual_fmac_f32 v26, v16, v7
	v_fmac_f32_e32 v25, v15, v8
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v10, v72
.LBB0_6:                                ; %._crit_edge
	.loc	1 162 26 is_stmt 1              ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[7:8], v77 offset:8192
	ds_load_b64 v[5:6], v78 offset:8192
	ds_load_b64 v[3:4], v79 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_b64 v[1:2], v80 offset:8192
	v_cndmask_b32_e64 v11, 0, 1, s2
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v74, 0, v74
	v_add_nc_u32_e32 v72, 0, v73
	v_add_nc_u32_e32 v71, 0, v71
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s0, 1, v11
	v_dual_mov_b32 v15, 0 :: v_dual_add_nc_u32 v70, 0, v70
	v_dual_mov_b32 v14, 0 :: v_dual_add_nc_u32 v69, 0, v69
	v_dual_mov_b32 v13, 0 :: v_dual_add_nc_u32 v68, 0, v68
	v_dual_mov_b32 v12, 0 :: v_dual_add_nc_u32 v67, 0, v67
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v66, 0, v66
	v_dual_mov_b32 v16, 0 :: v_dual_add_nc_u32 v65, 0, v65
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
	v_add_nc_u32_e32 v52, 0, v52
	v_add_nc_u32_e32 v51, 0, v51
	v_add_nc_u32_e32 v50, 0, v50
	v_add_nc_u32_e32 v73, 0, v49
	v_add_nc_u32_e32 v48, 0, v48
	v_add_nc_u32_e32 v76, 0, v47
	v_add_nc_u32_e32 v77, 0, v46
	v_add_nc_u32_e32 v47, 0, v45
	v_add_nc_u32_e32 v49, 0, v44
	v_add_nc_u32_e32 v46, 0, v43
	v_add_nc_u32_e32 v75, 0, v10
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v10, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	ds_load_u8 v10, v76
	ds_load_u8 v11, v77
	ds_load_u8 v12, v73
	ds_load_u8 v13, v75
	ds_load_u8 v17, v47
	ds_load_u8 v18, v49
	ds_load_u8 v19, v48
	ds_load_u8 v20, v46
	ds_load_u8 v81, v63
	ds_load_u8 v82, v62
	ds_load_u8 v83, v65
	ds_load_u8 v84, v59
	ds_load_u8 v85, v58
	ds_load_u8 v86, v61
	ds_load_u8 v87, v60
	ds_load_u8 v88, v64
	ds_load_u8 v89, v71
	ds_load_u8 v90, v70
	ds_load_u8 v91, v74
	ds_load_u8 v92, v67
	ds_load_u8 v93, v66
	ds_load_u8 v94, v69
	ds_load_u8 v95, v68
	ds_load_u8 v96, v72
	v_mov_b32_e32 v14, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v15, v14
	v_mov_b32_e32 v16, v14
	v_mov_b32_e32 v21, v14
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v11, v19, v12, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v12, v13, v20, 0xc0c0004
	v_perm_b32 v13, v18, v17, 0xc0c0004
	v_mov_b32_e32 v17, v14
	v_mov_b32_e32 v18, v14
	v_lshl_or_b32 v11, v11, 16, v10
	v_mov_b32_e32 v19, v14
	v_lshl_or_b32 v10, v13, 16, v12
	ds_load_u8 v12, v55
	ds_load_u8 v13, v54
	ds_load_u8 v43, v57
	ds_load_u8 v44, v51
	ds_load_u8 v45, v50
	ds_load_u8 v78, v53
	ds_load_u8 v79, v52
	ds_load_u8 v80, v56
	v_mov_b32_e32 v20, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[14:21], v[10:11], v[7:8], v[14:21] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v80, v43, 0xc0c0004
	v_perm_b32 v43, v45, v44, 0xc0c0004
	v_perm_b32 v44, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v11, v13, 16, v12
	v_perm_b32 v12, v82, v81, 0xc0c0004
	v_lshl_or_b32 v10, v44, 16, v43
	v_perm_b32 v13, v88, v83, 0xc0c0004
	v_perm_b32 v43, v85, v84, 0xc0c0004
	v_perm_b32 v44, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[14:21], v[10:11], v[5:6], v[14:21] neg_lo:[1,1,0]
	v_lshl_or_b32 v11, v13, 16, v12
	v_perm_b32 v12, v90, v89, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v10, v44, 16, v43
	v_perm_b32 v13, v96, v91, 0xc0c0004
	v_perm_b32 v43, v93, v92, 0xc0c0004
	v_perm_b32 v44, v95, v94, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[14:21], v[10:11], v[3:4], v[14:21] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v11, v13, 16, v12
	v_lshl_or_b32 v10, v44, 16, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[14:21], v[10:11], v[1:2], v[14:21] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v11, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v14, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v10, v18
	v_cvt_f32_i32_e32 v13, v19
	v_cvt_f32_i32_e32 v12, v20
	v_cvt_f32_i32_e32 v16, v21
.LBB0_8:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_mov_b32_e32 v19, 0
	.loc	1 175 36 is_stmt 1              ; generate_amdgcn.py:175:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	ds_load_u8 v9, v76 offset:4096
	ds_load_u8 v18, v77 offset:4096
	ds_load_u8 v19, v73 offset:4096
	ds_load_u8 v20, v75 offset:4096
	ds_load_u8 v21, v47 offset:4096
	ds_load_u8 v47, v49 offset:4096
	ds_load_u8 v48, v48 offset:4096
	ds_load_u8 v46, v46 offset:4096
	v_mov_b32_e32 v43, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v44, v43
	v_mov_b32_e32 v45, v43
	v_mov_b32_e32 v49, v43
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v9, v18, v9, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v21, v47, v21, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v18, v48, v19, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v20, v46, 0xc0c0004
	v_mov_b32_e32 v46, v43
	v_mov_b32_e32 v47, v43
	v_mov_b32_e32 v48, v43
	v_lshl_or_b32 v19, v18, 16, v9
	v_lshl_or_b32 v18, v21, 16, v20
	ds_load_u8 v9, v55 offset:4096
	ds_load_u8 v20, v54 offset:4096
	ds_load_u8 v21, v57 offset:4096
	ds_load_u8 v51, v51 offset:4096
	ds_load_u8 v54, v50 offset:4096
	ds_load_u8 v53, v53 offset:4096
	ds_load_u8 v52, v52 offset:4096
	ds_load_u8 v55, v56 offset:4096
	ds_load_u8 v56, v63 offset:4096
	ds_load_u8 v57, v62 offset:4096
	ds_load_u8 v62, v65 offset:4096
	ds_load_u8 v59, v59 offset:4096
	ds_load_u8 v58, v58 offset:4096
	ds_load_u8 v61, v61 offset:4096
	ds_load_u8 v60, v60 offset:4096
	ds_load_u8 v63, v64 offset:4096
	ds_load_u8 v64, v71 offset:4096
	ds_load_u8 v65, v70 offset:4096
	ds_load_u8 v70, v74 offset:4096
	ds_load_u8 v67, v67 offset:4096
	ds_load_u8 v66, v66 offset:4096
	ds_load_u8 v69, v69 offset:4096
	ds_load_u8 v68, v68 offset:4096
	ds_load_u8 v71, v72 offset:4096
	v_mov_b32_e32 v50, v43
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[43:50], v[18:19], v[7:8], v[43:50] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v9, v20, v9, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v19, v58, v59, 0xc0c0004
	v_perm_b32 v20, v55, v21, 0xc0c0004
	v_perm_b32 v21, v54, v51, 0xc0c0004
	v_perm_b32 v51, v52, v53, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v18, v63, v62, 0xc0c0004
	v_lshl_or_b32 v8, v20, 16, v9
	v_perm_b32 v9, v57, v56, 0xc0c0004
	v_lshl_or_b32 v7, v51, 16, v21
	v_perm_b32 v20, v60, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[43:50], v[7:8], v[5:6], v[43:50] neg_lo:[1,1,0]
	v_lshl_or_b32 v6, v18, 16, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v5, v20, 16, v19
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v7, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v71, v70, 0xc0c0004
	v_perm_b32 v9, v66, v67, 0xc0c0004
	v_perm_b32 v18, v68, v69, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[43:50], v[5:6], v[3:4], v[43:50] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v4, v8, 16, v7
	v_lshl_or_b32 v3, v18, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[43:50], v[3:4], v[1:2], v[43:50] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v9, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v43, v44
	v_cvt_f32_i32_e32 v21, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v45, v46
	v_cvt_f32_i32_e32 v18, v47
	v_cvt_f32_i32_e32 v20, v48
	v_cvt_f32_i32_e32 v19, v49
	v_cvt_f32_i32_e32 v44, v50
.LBB0_10:
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v2, v41, v39
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s0, s27, s34
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s1, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v1, v42, v40
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_add_i32 s0, s0, s1
	v_mul_lo_u32 v3, s34, v2
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s1, s33
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s9, s13, 0xffff
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s1, s26, s3
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v4, 2, v1
	v_or_b32_e32 v5, 4, v1
	v_or_b32_e32 v6, 6, v1
	v_or_b32_e32 v7, 8, v1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v3, s0, v3, 1
	.loc	1 182 35                        ; generate_amdgcn.py:182:35
	s_add_i32 s0, s1, s7
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v8, 10, v1
	v_or_b32_e32 v39, 12, v1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v40, s1, v1, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v41, 14, v1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v1, s0, v1, 1
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_mov_b32 s8, s12
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v42, s1, v4, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v4, s0, v4, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v46, s1, v5, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v5, s0, v5, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v3, v3, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v47, s1, v6, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v6, s0, v6, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_and_b32 s9, s15, 0xffff
	s_mov_b32 s8, s14
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	s_clause 0x3
	buffer_load_u16 v52, v1, s[8:11], 0 offen
	buffer_load_u16 v4, v4, s[8:11], 0 offen
	buffer_load_u16 v5, v5, s[8:11], 0 offen
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v49, s1, v8, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v8, s0, v8, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v48, s1, v7, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v7, s0, v7, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v51, s1, v41, 1
	v_add_lshl_u32 v50, s1, v39, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v1, s0, v39, 1
	v_add_lshl_u32 v39, s0, v41, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v41, 0x80000000, v51, s2
	v_cndmask_b32_e64 v50, 0x80000000, v50, s2
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_clause 0x5
	buffer_load_u16 v8, v8, s[8:11], 0 offen
	buffer_load_u16 v7, v7, s[8:11], 0 offen
	buffer_load_u16 v41, v41, s[8:11], 0 offen
	buffer_load_u16 v50, v50, s[8:11], 0 offen
	buffer_load_u16 v39, v39, s[8:11], 0 offen
	buffer_load_u16 v51, v1, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	v_cndmask_b32_e64 v48, 0x80000000, v48, s2
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	s_clause 0x5
	buffer_load_u16 v40, v40, s[8:11], 0 offen
	buffer_load_u16 v42, v42, s[8:11], 0 offen
	buffer_load_u16 v46, v46, s[8:11], 0 offen
	buffer_load_u16 v47, v47, s[8:11], 0 offen
	buffer_load_u16 v48, v48, s[8:11], 0 offen
	buffer_load_u16 v49, v49, s[8:11], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v54, 0x7632
	v_mov_b16_e32 v1.h, 0
	v_dual_mov_b32 v53, 0x5410 :: v_dual_and_b32 v0, 16, v0
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_or_b32_e32 v2, s27, v2
	s_mov_b32 s8, 0x76543210
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v55.h, v1.h
	v_mov_b16_e32 v56.h, v1.h
	v_mov_b16_e32 v57.h, v1.h
	v_mov_b16_e32 v58.h, v1.h
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, s11
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v3, 16, v3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v43, v43, v3
	v_mul_f32_e32 v20, v20, v3
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v9, v9, v3 :: v_dual_lshlrev_b32 v52, 16, v52
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v13, v13, v3 :: v_dual_lshlrev_b32 v4, 16, v4
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v45, v45, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v14, v14, v3 :: v_dual_lshlrev_b32 v5, 16, v5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v4, v43, v4, v36
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v21, v21, v3
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v9, v9, v52, v23
	v_fma_f32 v6, v45, v6, v33
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v15, v15, v3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v36, v4, s2
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v5, v21, v5, v32
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v9, v23, v9, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v18, v18, v3 :: v_dual_lshlrev_b32 v41, 16, v41
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v8, v20, v8, v29
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v20, 0xbfb8aa3b, v4
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v42, 16, v42
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v47, 16, v47
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v48, 16, v48
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v11, v11, v3 :: v_dual_lshlrev_b32 v40, 16, v40
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v17, v17, v3 :: v_dual_lshlrev_b32 v46, 16, v46
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v10, v10, v3 :: v_dual_lshlrev_b32 v49, 16, v49
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v33, v6, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v12, v12, v3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v32, v5, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v16, v16, v3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v8, v29, v8, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v44, v44, v3
	v_mul_f32_e32 v3, v19, v3
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v19, 0xbfb8aa3b, v9 :: v_dual_fmac_f32 v20, 0xbfb8aa3b, v4
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v7, v18, v7, v28
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v5
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v16, v16, v41, v24
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v23, 0xbfb8aa3b, v6
	v_exp_f32_e32 v20, v20
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v28, v7, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v16, v24, v16, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v23
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v19
	v_mul_f32_e32 v24, 0xbfb8aa3b, v7
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v11, v11, v40, v37
	v_fma_f32 v15, v15, v42, v38
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v23, 0, 0x42800000, s1
	v_ldexp_f32 v20, v20, v28
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v24
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v39, 16, v39
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v14, v14, v46, v34
	v_fma_f32 v17, v17, v47, v35
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v24, 0, 0x42800000, s4
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v6
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s4
	.loc	1 180 13 is_stmt 1              ; generate_amdgcn.py:180:13
	v_fma_f32 v10, v10, v48, v30
	v_fma_f32 v13, v13, v49, v31
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v7
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v12, v12, v50, v27
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v38, v15, s2
	v_cndmask_b32_e64 v11, v37, v11, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v24, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v35, v17, s2
	v_cndmask_b32_e64 v14, v34, v14, s2
	v_cndmask_b32_e64 v13, v31, v13, s2
	v_cndmask_b32_e64 v10, v30, v10, s2
	v_cndmask_b32_e64 v12, v27, v12, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v9
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s0
	v_exp_f32_e32 v23, v23
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s1
	v_ldexp_f32 v24, v24, v33
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v19, v19
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v20, v20, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 183 17 is_stmt 1              ; generate_amdgcn.py:183:17
	v_fma_f32 v3, v3, v51, v25
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v23, v23, v30
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v43, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v38, null, v24, v24, v7
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v3, v25, v3, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v25, 0xbfb8aa3b, v8
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v18, v44, v39, v26
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v19, v19, v29
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v48, v38
	v_div_scale_f32 v29, vcc_lo, v4, v20, v4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v26, v18, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v26, 0xbfb8aa3b, v3
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v21
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v25
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v27, 0xbfb8aa3b, v18
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v26
	v_cndmask_b32_e64 v21, 0, 0x42800000, s2
	v_cndmask_b32_e64 v25, 0, 0x42800000, s3
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v30, null, v19, v19, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v26, 0, 0x42800000, s6
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v5
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s6
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v27
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v44, v30
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v3
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s3
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v27, 0, 0x42800000, s5
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s5
	v_exp_f32_e32 v26, v26
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v52, -v28, v43, 1.0
	v_fma_f32 v63, -v38, v48, 1.0
	v_fma_f32 v59, -v30, v44, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v18
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v39, s4, v7, v24, v7
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v21, v21, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v44, v59, v44
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v26, v26, v35
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v8
	v_exp_f32_e32 v27, v27
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v21, 1.0, v21 :: v_dual_fmac_f32 v48, v63, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v35, s2, v5, v21, v5
	v_div_scale_f32 v42, null, v26, v26, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v27, v27, v34
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v34, null, v21, v21, v5
	v_rcp_f32_e32 v50, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v25, v25, v32
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v51, s6, v3, v26, v3
	v_rcp_f32_e32 v46, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v65, -v42, v50, 1.0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v61, -v34, v46, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v65, v50
	v_div_scale_f32 v32, null, v23, v23, v6
	v_div_scale_f32 v33, s1, v6, v23, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, v61, v46
	v_rcp_f32_e32 v45, v32
	v_div_scale_f32 v31, s0, v9, v19, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v32, v45, 1.0
	v_fmac_f32_e32 v45, v60, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v27, 1.0, v27 :: v_dual_mul_f32 v60, v33, v45
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v40, null, v27, v27, v18
	v_div_scale_f32 v41, s5, v18, v27, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v68, -v32, v60, v33
	v_rcp_f32_e32 v49, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v40, v49, 1.0
	v_fmac_f32_e32 v49, v64, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v43, v52, v43 :: v_dual_mul_f32 v64, v41, v49
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v25, 1.0, v25 :: v_dual_mul_f32 v52, v29, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v72, -v40, v64, v41
	v_div_scale_f32 v36, null, v25, v25, v8
	v_div_scale_f32 v37, s3, v8, v25, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v66, -v28, v52, v29
	v_rcp_f32_e32 v47, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v52, v66, v43 :: v_dual_mul_f32 v61, v35, v46
	v_fmac_f32_e32 v64, v72, v49
	v_fma_f32 v28, -v28, v52, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v36, v47, 1.0
	v_fma_f32 v69, -v34, v61, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v28, v28, v43, v52
	v_fmac_f32_e32 v47, v62, v47
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v4, v28, v20, v4
	v_mul_f32_e32 v62, v37, v47
	v_dual_fmac_f32 v60, v68, v45 :: v_dual_fmac_f32 v61, v69, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v4, v15, v4
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v70, -v36, v62, v37
	v_mul_f32_e32 v59, v31, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v1.l, v4.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v62, v70, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v30, v59, v31
	v_fmac_f32_e32 v59, v67, v44
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v29, -v30, v59, v31
	v_fma_f32 v30, -v32, v60, v33
	v_fma_f32 v31, -v34, v61, v35
	v_fma_f32 v32, -v36, v62, v37
	v_fma_f32 v34, -v40, v64, v41
	v_div_fmas_f32 v29, v29, v44, v59
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v30, v30, v45, v60
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fixup_f32 v9, v29, v19, v9
	v_div_fmas_f32 v20, v31, v46, v61
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v6, v30, v23, v6
	v_div_fmas_f32 v19, v32, v47, v62
	v_mul_f32_e32 v63, v39, v48
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v9, v11, v9 :: v_dual_mul_f32 v6, v17, v6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v8, v19, v25, v8
	v_mul_f32_e32 v65, v51, v50
	v_fma_f32 v71, -v38, v63, v39
	v_div_fixup_f32 v5, v20, v21, v5
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v55.l, v9.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v8, v13, v8
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v73, -v42, v65, v51
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v13, 1, v1
	v_mov_b16_e32 v1.l, v6.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v63, v71, v48
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v5, v14, v5
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v65, v73, v50
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v9, v9
	v_cmp_o_f32_e64 s3, v8, v8
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v33, -v38, v63, v39
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v56.l, v5.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v35, -v42, v65, v51
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v5, v5
	v_cmp_o_f32_e64 s1, v6, v6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v15, v33, v48, v63
	s_mov_b32 vcc_lo, s5
	v_div_fmas_f32 v11, v34, v49, v64
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fixup_f32 v7, v15, v24, v7
	v_div_fmas_f32 v17, v35, v50, v65
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v11, v11, v27, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v4, v4, v13, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v7, v10, v7
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v3, v17, v26, v3
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v10, 1, v55
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v11, v16, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v13, 1, v56
	v_mov_b16_e32 v57.l, v7.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v3, v12, v3 :: v_dual_and_b32 v12, 1, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v1.l, v8.h
	v_add3_u32 v9, v9, v10, 0x7fff
	v_cndmask_b16 v4.h, 0x7fff, v4.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v58.l, v3.h
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v10, 1, v1
	v_mov_b16_e32 v1.l, v11.h
	v_and_b32_e32 v14, 1, v57
	v_cndmask_b16 v4.l, 0x7fff, v9.h, s0
	v_add3_u32 v0, v5, v13, 0x7fff
	v_add3_u32 v8, v8, v10, 0x7fff
	v_and_b32_e32 v5, 1, v58
	v_cndmask_b32_e32 v9, 0x1054, v53, vcc_lo
	v_dual_cndmask_b32 v10, 0x3276, v54 :: v_dual_and_b32 v1, 1, v1
	v_cmp_o_f32_e64 s4, v7, v7
	v_cmp_o_f32_e64 s5, v11, v11
	v_cmp_o_f32_e64 s6, v3, v3
	v_add3_u32 v7, v7, v14, 0x7fff
	v_add3_u32 v6, v6, v12, 0x7fff
	v_add3_u32 v3, v3, v5, 0x7fff
	v_lshl_or_b32 v5, v9, 8, v9
	v_lshl_or_b32 v9, v10, 8, v10
	v_add3_u32 v1, v11, v1, 0x7fff
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s3
	v_cndmask_b16 v8.l, 0x7fff, v7.h, s4
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s1
	v_cndmask_b16 v6.l, 0x7fff, v0.h, s2
	v_cndmask_b16 v0.l, 0x7fff, v3.h, s6
	v_and_b32_e32 v3, 0x540054, v5
	v_and_b32_e32 v5, 0x760076, v9
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s5
	v_cndmask_b32_e32 v7, v8, v4, vcc_lo
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v9, v2, s7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v1, v4, v8, vcc_lo
	v_lshl_or_b32 v2, v3, 4, v3
	v_lshl_or_b32 v3, v5, 4, v5
	v_dual_cndmask_b32 v4, v6, v0 :: v_dual_cndmask_b32 v5, v0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v1, v1, s8, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v2, 0x5040504, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v3, 0x7060706, v3
	v_permlanex16_b32 v4, v4, s8, 0xfedcba98 op_sel:[1,0]
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_and_or_b32 v6, 0x78, v22, s26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s26, s10
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 109
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 109
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8208
; TotalNumSgprs: 47
; NumVgprs: 109
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 13
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 109
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc64_swiglu_bm32_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     109
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
