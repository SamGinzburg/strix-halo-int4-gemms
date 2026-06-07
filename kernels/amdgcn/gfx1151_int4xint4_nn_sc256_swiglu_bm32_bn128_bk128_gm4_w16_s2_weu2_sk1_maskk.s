	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s7, s2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v2, 4, v0
	v_and_b32_e32 v3, 15, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v4, 16, v2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s22, 31
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
	s_lshr_b32 s10, s10, 27
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
	s_ashr_i32 s8, s8, 5
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
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s7, s7, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v1, v4, v3
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s4, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s10, s4, s8
	s_ashr_i32 s13, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s15, s4, s13
	s_sub_i32 s22, s15, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s22, s7
	s_sub_i32 s2, s2, s4
	s_mov_b32 s4, 0
	.loc	1 92 13 is_stmt 0               ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 98 14 is_stmt 1               ; generate_amdgcn.py:98:14
	s_lshl_b32 s14, s2, 5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s2, s12, 0xff
	v_or_b32_e32 v42, s14, v1
.Ltmp13:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s2, 0xff
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_or_b32_e32 v1, s14, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow239
	s_load_b64 s[20:21], s[0:1], 0x20
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v38, 0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 144 24 is_stmt 1              ; generate_amdgcn.py:144:24
	v_lshrrev_b32_e32 v5, 3, v0
	v_dual_mov_b32 v38, 0 :: v_dual_lshlrev_b32 v1, 2, v3
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v2, s14, v2
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s18, s12, 1
	s_mov_b32 s12, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_sub_nc_u32_e32 v45, s18, v1
	v_sub_nc_u32_e32 v46, s18, v5
	v_mad_u64_u32 v[25:26], null, s18, v2, v[1:2]
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v6, 0xe0, v0
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s17, s3, 6
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_or_b32_e32 v18, s17, v5
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s0, s2, 31
.Ltmp15:
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v10, 1, v6
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s0, s0, 24
.Ltmp17:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_and_b32_e32 v47, 2, v5
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s2, s2, s0
	v_cmp_gt_i32_e64 s0, 0x80, v18
	v_or_b32_e32 v10, v10, v3
.Ltmp19:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_lshl_b32 s16, s13, 8
	v_mov_b32_e32 v39, 0
	v_lshrrev_b32_e32 v11, 2, v6
	v_lshl_or_b32 v6, s15, 8, v6
	v_add_nc_u32_e32 v44, 0, v10
	v_add_nc_u32_e32 v10, 64, v18
	v_lshlrev_b32_e32 v18, 1, v5
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s33, s2, 8
.Ltmp21:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_subrev_nc_u32_e32 v49, s16, v6
	v_or_b32_e32 v19, s17, v1
	v_cmp_gt_i32_e64 s2, 0x80, v10
	v_lshl_or_b32 v5, s3, 7, v18
	s_lshl_b32 s3, s13, 7
	s_mov_b32 s13, s12
	v_lshlrev_b32_e32 v7, 2, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v10, 0x80, v5
	v_mov_b32_e32 v37, 0
	s_add_i32 s35, s17, 64
	v_and_b32_e32 v9, 0x438, v7
	v_xor_b32_e32 v7, v7, v11
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v20, 64, v19
	v_mov_b32_e32 v40, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v9, v3, 6, v9
	v_add3_u32 v3, s14, v4, v3
	v_lshl_add_u32 v4, s23, 1, v6
	v_add_nc_u32_e32 v6, 0x81, v5
	s_mov_b32 s14, s12
	v_xor_b32_e32 v11, 8, v9
	v_mul_lo_u32 v3, s33, v3
	v_subrev_nc_u32_e32 v48, s16, v4
	s_lshl_b32 s16, s15, 7
	s_mov_b32 s15, s12
	v_xor_b32_e32 v12, 16, v9
	v_xor_b32_e32 v13, 24, v9
	v_xor_b32_e32 v14, 32, v9
	v_xor_b32_e32 v15, 40, v9
	v_dual_mov_b32 v33, 0 :: v_dual_lshlrev_b32 v50, 1, v3
	v_mad_u64_u32 v[3:4], null, s23, v5, s[16:17]
	v_mad_u64_u32 v[4:5], null, s23, v6, s[16:17]
	v_mad_u64_u32 v[5:6], null, s23, v10, s[16:17]
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v8, 4, v0
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v6, s23, v3
	v_xor_b32_e32 v16, 48, v9
	v_xor_b32_e32 v17, 56, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v43, 0x70, v8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_subrev_nc_u32_e32 v51, s3, v4
	v_subrev_nc_u32_e32 v52, s3, v5
	v_subrev_nc_u32_e32 v53, s3, v6
	v_subrev_nc_u32_e32 v54, s3, v3
	v_add_nc_u32_e32 v55, 0, v7
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v56, 0, v8
	v_mov_b32_e32 v1, s12
	v_cmp_gt_i32_e64 s1, 0x80, v20
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v57, 0, v9
	v_add_nc_u32_e32 v58, 0, v11
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v59, 0, v12
	v_add_nc_u32_e32 v60, 0, v13
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v61, 0, v14
	v_add_nc_u32_e32 v62, 0, v15
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v63, 0, v16
	v_add_nc_u32_e32 v64, 0, v17
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_mov_b32_e32 v8, s19
	v_mov_b32_e32 v28, 0
	v_mov_b32_e32 v26, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s34, s23, 2
	s_lshl_b32 s36, s23, 8
	s_mov_b32 s24, s4
	s_mov_b32 s25, s5
	s_mov_b32 s28, s6
	s_mov_b32 s29, s7
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s12, s8
	s_mov_b32 s13, s9
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v17, s35, v25
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_sub_i32 s4, s35, 64
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_add_nc_u32_e32 v13, v43, v53
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s3, s4, v45
	v_cmp_lt_i32_e64 s4, s4, v46
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_subrev_nc_u32_e32 v9, 64, v17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v53, s36, v53
	s_add_i32 s33, s33, -1
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, s3, vcc_lo
	s_and_b32 s4, s4, s0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_cndmask_b32_e64 v13, 0x80000000, v13, s4
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s3, s35, v45
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b32 v18, v9, s[24:27], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v9, v43, v54
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s5, s3, s1
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	buffer_load_b128 v[13:16], v13, s[28:31], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v54, s36, v54
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s4, s35, v46
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_addk_i32 s35, 0x80
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[9:12], v9, s[28:31], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v55, v18 offset:16384
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v56, v[9:12]
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	ds_store_b128 v56, v[13:16] offset:8192
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v9, 0x80000000, v17, s5
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, s4, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s33, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b32 v91, v9, s[24:27], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v9, v43, v52
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[73:74], v57 offset:16384
	ds_load_b64 v[75:76], v58 offset:16384
	ds_load_b64 v[77:78], v59 offset:16384
	ds_load_b64 v[79:80], v60 offset:16384
	ds_load_b64 v[81:82], v61 offset:16384
	ds_load_b64 v[83:84], v62 offset:16384
	ds_load_b64 v[85:86], v63 offset:16384
	ds_load_b64 v[87:88], v64 offset:16384
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v52, s36, v52
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	buffer_load_b128 v[65:68], v9, s[28:31], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v44 offset:640
	ds_load_u8 v10, v44 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v44 offset:896
	ds_load_u8 v11, v44 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v10, 16, v9
	ds_load_u8 v9, v44 offset:128
	ds_load_u8 v10, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v44 offset:384
	ds_load_u8 v11, v44 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v10, 16, v9
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[73:74], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v17, v44 offset:1664
	ds_load_u8 v18, v44 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v44 offset:1920
	ds_load_u8 v19, v44 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v44 offset:1152
	ds_load_u8 v19, v44 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v44 offset:1408
	ds_load_u8 v20, v44 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[75:76], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v44 offset:2688
	ds_load_u8 v18, v44 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v44 offset:2944
	ds_load_u8 v19, v44 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v44 offset:2176
	ds_load_u8 v19, v44 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v44 offset:2432
	ds_load_u8 v20, v44 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[77:78], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v44 offset:3712
	ds_load_u8 v18, v44 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v44 offset:3968
	ds_load_u8 v19, v44 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v44 offset:3200
	ds_load_u8 v19, v44 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v44 offset:3456
	ds_load_u8 v20, v44 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[79:80], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v44 offset:4736
	ds_load_u8 v18, v44 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v44 offset:4992
	ds_load_u8 v19, v44 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v44 offset:4224
	ds_load_u8 v19, v44 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v44 offset:4480
	ds_load_u8 v20, v44 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[81:82], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v44 offset:5760
	ds_load_u8 v18, v44 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v44 offset:6016
	ds_load_u8 v19, v44 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v44 offset:5248
	ds_load_u8 v19, v44 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v44 offset:5504
	ds_load_u8 v20, v44 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[83:84], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v44 offset:6784
	ds_load_u8 v18, v44 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v44 offset:7040
	ds_load_u8 v19, v44 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v44 offset:6272
	ds_load_u8 v19, v44 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v44 offset:6528
	ds_load_u8 v20, v44 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[85:86], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v44 offset:7808
	ds_load_u8 v18, v44 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v44 offset:8064
	ds_load_u8 v19, v44 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v44 offset:7296
	ds_load_u8 v19, v44 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v44 offset:7552
	ds_load_u8 v20, v44 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[87:88], v[9:16] neg_lo:[1,1,0]
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_add_nc_u32_e32 v17, v43, v51
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v51, s36, v51
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	buffer_load_b128 v[69:72], v17, s[28:31], 0 offen
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v17, v44 offset:8832
	ds_load_u8 v18, v44 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v44 offset:9088
	ds_load_u8 v19, v44 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v18, 16, v17
	ds_load_u8 v17, v44 offset:8320
	ds_load_u8 v18, v44 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v44 offset:8576
	ds_load_u8 v19, v44 offset:8448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[17:24], v[89:90], v[73:74], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v73, v44 offset:9856
	ds_load_u8 v74, v44 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v44 offset:10112
	ds_load_u8 v89, v44 offset:9984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v89, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v44 offset:9344
	ds_load_u8 v89, v44 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v89, v73, 0xc0c0004
	ds_load_u8 v89, v44 offset:9600
	ds_load_u8 v90, v44 offset:9472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v89, 16, v73
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[75:76], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v73, v44 offset:10880
	ds_load_u8 v74, v44 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v44 offset:11136
	ds_load_u8 v75, v44 offset:11008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v44 offset:10368
	ds_load_u8 v75, v44 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	ds_load_u8 v75, v44 offset:10624
	ds_load_u8 v76, v44 offset:10496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v75, 16, v73
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[77:78], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v73, v44 offset:11904
	ds_load_u8 v74, v44 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v44 offset:12160
	ds_load_u8 v75, v44 offset:12032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v44 offset:11392
	ds_load_u8 v75, v44 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	ds_load_u8 v75, v44 offset:11648
	ds_load_u8 v76, v44 offset:11520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v75, 16, v73
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[79:80], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v73, v44 offset:12928
	ds_load_u8 v74, v44 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v44 offset:13184
	ds_load_u8 v75, v44 offset:13056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v44 offset:12416
	ds_load_u8 v75, v44 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	ds_load_u8 v75, v44 offset:12672
	ds_load_u8 v76, v44 offset:12544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v75, 16, v73
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[81:82], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v73, v44 offset:13952
	ds_load_u8 v74, v44 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v44 offset:14208
	ds_load_u8 v75, v44 offset:14080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v44 offset:13440
	ds_load_u8 v75, v44 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	ds_load_u8 v75, v44 offset:13696
	ds_load_u8 v76, v44 offset:13568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v75, 16, v73
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[83:84], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v73, v44 offset:14976
	ds_load_u8 v74, v44 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v44 offset:15232
	ds_load_u8 v75, v44 offset:15104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v44 offset:14464
	ds_load_u8 v75, v44 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	ds_load_u8 v75, v44 offset:14720
	ds_load_u8 v76, v44 offset:14592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v75, 16, v73
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[85:86], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v73, v44 offset:16000
	ds_load_u8 v74, v44 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v44 offset:16256
	ds_load_u8 v75, v44 offset:16128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v44 offset:15488
	ds_load_u8 v75, v44 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	ds_load_u8 v75, v44 offset:15744
	ds_load_u8 v76, v44 offset:15616
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b32 v55, v91 offset:16384
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v56, v[65:68]
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	s_waitcnt vmcnt(0)
	ds_store_b128 v56, v[69:72] offset:8192
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v73, v75, 16, v73
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[87:88], v[17:24] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[65:66], v57 offset:16384
	ds_load_b64 v[67:68], v58 offset:16384
	ds_load_b64 v[69:70], v59 offset:16384
	ds_load_b64 v[71:72], v60 offset:16384
	ds_load_b64 v[73:74], v61 offset:16384
	ds_load_b64 v[75:76], v62 offset:16384
	ds_load_b64 v[77:78], v63 offset:16384
	ds_load_b64 v[79:80], v64 offset:16384
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v81, v44 offset:640
	ds_load_u8 v82, v44 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v44 offset:896
	ds_load_u8 v83, v44 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v82, 16, v81
	ds_load_u8 v81, v44 offset:128
	ds_load_u8 v83, v44
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v83, v81, 0xc0c0004
	ds_load_u8 v83, v44 offset:384
	ds_load_u8 v84, v44 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v83, 16, v81
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[65:66], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v81, v44 offset:1664
	ds_load_u8 v82, v44 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v44 offset:1920
	ds_load_u8 v83, v44 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v82, 16, v81
	ds_load_u8 v81, v44 offset:1152
	ds_load_u8 v83, v44 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v83, v81, 0xc0c0004
	ds_load_u8 v83, v44 offset:1408
	ds_load_u8 v84, v44 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v83, 16, v81
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[67:68], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v81, v44 offset:2688
	ds_load_u8 v82, v44 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v44 offset:2944
	ds_load_u8 v83, v44 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v82, 16, v81
	ds_load_u8 v81, v44 offset:2176
	ds_load_u8 v83, v44 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v83, v81, 0xc0c0004
	ds_load_u8 v83, v44 offset:2432
	ds_load_u8 v84, v44 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v83, 16, v81
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[69:70], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v81, v44 offset:3712
	ds_load_u8 v82, v44 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v44 offset:3968
	ds_load_u8 v83, v44 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v82, 16, v81
	ds_load_u8 v81, v44 offset:3200
	ds_load_u8 v83, v44 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v83, v81, 0xc0c0004
	ds_load_u8 v83, v44 offset:3456
	ds_load_u8 v84, v44 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v83, 16, v81
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[71:72], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v81, v44 offset:4736
	ds_load_u8 v82, v44 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v44 offset:4992
	ds_load_u8 v83, v44 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v82, 16, v81
	ds_load_u8 v81, v44 offset:4224
	ds_load_u8 v83, v44 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v83, v81, 0xc0c0004
	ds_load_u8 v83, v44 offset:4480
	ds_load_u8 v84, v44 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v83, 16, v81
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[73:74], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v81, v44 offset:5760
	ds_load_u8 v82, v44 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v44 offset:6016
	ds_load_u8 v83, v44 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v82, 16, v81
	ds_load_u8 v81, v44 offset:5248
	ds_load_u8 v83, v44 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v83, v81, 0xc0c0004
	ds_load_u8 v83, v44 offset:5504
	ds_load_u8 v84, v44 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v83, 16, v81
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[75:76], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v81, v44 offset:6784
	ds_load_u8 v82, v44 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v44 offset:7040
	ds_load_u8 v83, v44 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v82, 16, v81
	ds_load_u8 v81, v44 offset:6272
	ds_load_u8 v83, v44 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v83, v81, 0xc0c0004
	ds_load_u8 v83, v44 offset:6528
	ds_load_u8 v84, v44 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v83, 16, v81
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[77:78], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v81, v44 offset:7808
	ds_load_u8 v82, v44 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v44 offset:8064
	ds_load_u8 v83, v44 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v82, 16, v81
	ds_load_u8 v81, v44 offset:7296
	ds_load_u8 v83, v44 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v83, v81, 0xc0c0004
	ds_load_u8 v83, v44 offset:7552
	ds_load_u8 v84, v44 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v83, 16, v81
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[79:80], v[9:16] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v81, v44 offset:8832
	ds_load_u8 v82, v44 offset:8704
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v44 offset:9088
	ds_load_u8 v83, v44 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v82, 16, v81
	ds_load_u8 v81, v44 offset:8320
	ds_load_u8 v83, v44 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v83, v81, 0xc0c0004
	ds_load_u8 v83, v44 offset:8576
	ds_load_u8 v84, v44 offset:8448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v83, 16, v81
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[65:66], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v65, v44 offset:9856
	ds_load_u8 v66, v44 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v44 offset:10112
	ds_load_u8 v81, v44 offset:9984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v81, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v44 offset:9344
	ds_load_u8 v81, v44 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v81, v65, 0xc0c0004
	ds_load_u8 v81, v44 offset:9600
	ds_load_u8 v82, v44 offset:9472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v81, 16, v65
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[67:68], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v65, v44 offset:10880
	ds_load_u8 v66, v44 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v44 offset:11136
	ds_load_u8 v67, v44 offset:11008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v44 offset:10368
	ds_load_u8 v67, v44 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v67, v65, 0xc0c0004
	ds_load_u8 v67, v44 offset:10624
	ds_load_u8 v68, v44 offset:10496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v67, 16, v65
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[69:70], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v65, v44 offset:11904
	ds_load_u8 v66, v44 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v44 offset:12160
	ds_load_u8 v67, v44 offset:12032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v44 offset:11392
	ds_load_u8 v67, v44 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v67, v65, 0xc0c0004
	ds_load_u8 v67, v44 offset:11648
	ds_load_u8 v68, v44 offset:11520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v67, 16, v65
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[71:72], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v65, v44 offset:12928
	ds_load_u8 v66, v44 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v44 offset:13184
	ds_load_u8 v67, v44 offset:13056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v44 offset:12416
	ds_load_u8 v67, v44 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v67, v65, 0xc0c0004
	ds_load_u8 v67, v44 offset:12672
	ds_load_u8 v68, v44 offset:12544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v67, 16, v65
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[73:74], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v65, v44 offset:13952
	ds_load_u8 v66, v44 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v44 offset:14208
	ds_load_u8 v67, v44 offset:14080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v44 offset:13440
	ds_load_u8 v67, v44 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v67, v65, 0xc0c0004
	ds_load_u8 v67, v44 offset:13696
	ds_load_u8 v68, v44 offset:13568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v67, 16, v65
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[75:76], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v65, v44 offset:14976
	ds_load_u8 v66, v44 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v44 offset:15232
	ds_load_u8 v67, v44 offset:15104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v44 offset:14464
	ds_load_u8 v67, v44 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v67, v65, 0xc0c0004
	ds_load_u8 v67, v44 offset:14720
	ds_load_u8 v68, v44 offset:14592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v67, 16, v65
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[77:78], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v65, v44 offset:16000
	ds_load_u8 v66, v44 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v44 offset:16256
	ds_load_u8 v67, v44 offset:16128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v44 offset:15488
	ds_load_u8 v67, v44 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v67, v65, 0xc0c0004
	ds_load_u8 v67, v44 offset:15744
	ds_load_u8 v68, v44 offset:15616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v67, 16, v65
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[79:80], v[17:24] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v65, v50, s[12:15], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v50, 2, v50
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v67, v47, v49
	s_clause 0x7
	buffer_load_u16 v72, v67, s[8:11], 0 offen
	buffer_load_u16 v73, v67, s[8:11], 0 offen offset:4
	buffer_load_u16 v70, v67, s[8:11], 0 offen offset:8
	buffer_load_u16 v71, v67, s[8:11], 0 offen offset:12
	buffer_load_u16 v68, v67, s[8:11], 0 offen offset:16
	buffer_load_u16 v69, v67, s[8:11], 0 offen offset:20
	buffer_load_u16 v66, v67, s[8:11], 0 offen offset:24
	buffer_load_u16 v67, v67, s[8:11], 0 offen offset:28
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v49, s34, v49
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v70, 16, v70
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v65, 16, v65
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v68, 16, v68
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v11, v65, v11 :: v_dual_lshlrev_b32 v66, 16, v66
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v34, v11, v70
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v9, v65, v9 :: v_dual_add_nc_u32 v74, v47, v48
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_clause 0x7
	buffer_load_u16 v75, v74, s[8:11], 0 offen
	buffer_load_u16 v76, v74, s[8:11], 0 offen offset:4
	buffer_load_u16 v77, v74, s[8:11], 0 offen offset:8
	buffer_load_u16 v78, v74, s[8:11], 0 offen offset:12
	buffer_load_u16 v79, v74, s[8:11], 0 offen offset:16
	buffer_load_u16 v80, v74, s[8:11], 0 offen offset:20
	buffer_load_u16 v81, v74, s[8:11], 0 offen offset:24
	buffer_load_u16 v74, v74, s[8:11], 0 offen offset:28
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v22, v65, v22 :: v_dual_lshlrev_b32 v73, 16, v73
	v_dual_mul_f32 v17, v65, v17 :: v_dual_lshlrev_b32 v72, 16, v72
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v10, v65, v10
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v19, v65, v19
	v_dual_mul_f32 v24, v65, v24 :: v_dual_lshlrev_b32 v69, 16, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v39, v9, v72 :: v_dual_fmac_f32 v40, v10, v73
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v14, v65, v14
	v_mul_f32_e32 v13, v65, v13
	v_dual_mul_f32 v16, v65, v16 :: v_dual_lshlrev_b32 v71, 16, v71
	v_mul_f32_e32 v12, v65, v12
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v30, v14, v69 :: v_dual_mul_f32 v15, v65, v15
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v18, v65, v18
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v20, v65, v20 :: v_dual_fmac_f32 v35, v12, v71
	v_dual_mul_f32 v23, v65, v23 :: v_dual_add_nc_u32 v48, s34, v48
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v10, 16, v75
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v9, 16, v76
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v12, 16, v77
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v21, v65, v21 :: v_dual_lshlrev_b32 v14, 16, v79
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v31, v13, v68
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v38, v17, v10 :: v_dual_lshlrev_b32 v13, 16, v80
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v67, 16, v67
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v41, v18, v9 :: v_dual_fmac_f32 v36, v19, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v32, v22, v13 :: v_dual_lshlrev_b32 v11, 16, v78
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v26, v16, v67
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v27, v15, v66 :: v_dual_lshlrev_b32 v16, 16, v81
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v74
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v37, v20, v11
	v_fmac_f32_e32 v33, v21, v14
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v29, v23, v16 :: v_dual_fmac_f32 v28, v24, v15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v1, v42
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 185 44 is_stmt 1              ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v2, 0xbfb8aa3b, v41 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v38
	v_dual_mul_f32 v9, 0xbfb8aa3b, v33 :: v_dual_mul_f32 v10, 0xbfb8aa3b, v32
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	v_dual_mul_f32 v3, 0xbfb8aa3b, v36 :: v_dual_mul_f32 v8, 0xbfb8aa3b, v37
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0x42800000, s0
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_dual_fmac_f32 v5, 0xbfb8aa3b, v41 :: v_dual_mul_f32 v12, 0xbfb8aa3b, v28
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v5, v5
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v9
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v37
	v_cndmask_b32_e64 v18, 0, 0x42800000, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v4, v5, v4
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v38
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v36
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v33
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v4, 1.0, v4
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v3, v7
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.h, 0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v18, v18
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v19, vcc_lo, v41, v4, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.h, v7.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v3, v3, v6
	v_exp_f32_e32 v6, v13
	v_exp_f32_e32 v13, v15
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v15, null, v4, v4, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v3, 1.0, v3 :: v_dual_and_b32 v2, 0x78, v2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v6, v6, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v8, v15
	v_div_scale_f32 v16, null, v3, v3, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v13, v13, v14
	v_dual_mul_f32 v11, 0xbfb8aa3b, v29 :: v_dual_add_f32 v6, 1.0, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v9, v16
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s0
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v22, s0, v38, v3, v38
	v_fma_f32 v20, -v15, v8, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v14, v18, v14
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_dual_fmac_f32 v8, v20, v8 :: v_dual_add_f32 v13, 1.0, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v21, -v16, v9, 1.0
	v_div_scale_f32 v20, null, v6, v6, v36
	v_mul_f32_e32 v24, v19, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v23, null, v13, v13, v37
	v_rcp_f32_e32 v42, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v15, v24, v19
	v_fmac_f32_e32 v9, v21, v9
	v_rcp_f32_e32 v21, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v24, v43, v8 :: v_dual_mul_f32 v25, v22, v9
	v_div_scale_f32 v43, s1, v37, v13, v37
	v_fma_f32 v15, -v15, v24, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v44, -v16, v25, v22
	v_fma_f32 v45, -v23, v21, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v8, v15, v8, v24
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v15, s0, v36, v6, v36
	v_fmac_f32_e32 v25, v44, v9
	v_div_fixup_f32 v4, v8, v4, v41
	v_fmac_f32_e32 v21, v45, v21
	v_fma_f32 v44, -v20, v42, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v24.h, v7.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v16, -v16, v25, v22
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v4, v40, v4
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_fmac_f32 v17, 0xbfb8aa3b, v32 :: v_dual_mul_f32 v8, v43, v21
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v42, v44, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v9, v16, v9, v25
	s_mov_b32 vcc_lo, s1
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v17, v17
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v16, -v23, v8, v43
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v11
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v3, v9, v3, v38
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v4.h
	v_cmp_o_f32_e64 s2, v4, v4
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v8, v16, v21
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v18, 0, 0x42800000, s1
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v3, v39, v3
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v16, 1, v7
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v9, v17, v10
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v10, v15, v42
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v29
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.l, v3.h
	v_cmp_o_f32_e64 s3, v3, v3
	v_add3_u32 v4, v4, v16, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v17, -v20, v10, v15
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v5, 1, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v10, v17, v42
	v_fma_f32 v17, -v23, v8, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v3, v3, v5, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v5, null, v9, v9, v32
	v_fma_f32 v15, -v20, v10, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v8, v17, v21, v8
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v4.l, 0x7fff, v3.h, s3
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v3, 1.0, v14
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v12, v5
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v16, null, v3, v3, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v28
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v10, v15, v42, v10
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v15, v18
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v20, v16
	v_div_fixup_f32 v8, v8, v13, v37
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v11, v11
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v19, -v5, v12, 1.0
	v_div_fixup_f32 v6, v10, v6, v36
	v_div_scale_f32 v13, vcc_lo, v32, v9, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fmac_f32_e32 v12, v19, v12
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v15, v15, v17
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v8, v35, v8
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v10, -v16, v20, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v11, v11, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v6, v34, v6 :: v_dual_add_f32 v15, 1.0, v15
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v8.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v20, v10, v20
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v10, 1.0, v11
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v11, s0, v33, v3, v33
	v_div_scale_f32 v21, null, v15, v15, v29
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v24.l, v6.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v19, v11, v20
	v_div_scale_f32 v17, null, v10, v10, v28
	v_rcp_f32_e32 v23, v21
	v_mul_f32_e32 v14, v13, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v22, v17
	v_fma_f32 v18, -v5, v14, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v14, v18, v12
	v_fma_f32 v18, -v16, v19, v11
	v_fma_f32 v5, -v5, v14, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v13, -v17, v22, 1.0
	v_fmac_f32_e32 v19, v18, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v5, v5, v12, v14
	v_fma_f32 v12, -v21, v23, 1.0
	v_fmac_f32_e32 v22, v13, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v11, -v16, v19, v11
	v_div_scale_f32 v13, s1, v28, v10, v28
	v_fmac_f32_e32 v23, v12, v23
	v_div_scale_f32 v12, s2, v29, v15, v29
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v5, v5, v9, v32
	v_div_fmas_f32 v11, v11, v20, v19
	v_mul_f32_e32 v14, v13, v22
	v_mul_f32_e32 v18, v12, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v5, v30, v5 :: v_dual_and_b32 v16, 1, v7
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v3, v11, v3, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v11, -v17, v14, v13
	v_fma_f32 v20, -v21, v18, v12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v16, v8, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v8, v8
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v3, v31, v3
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v14, v11, v22
	v_fmac_f32_e32 v18, v20, v23
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v8.h, v7.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v8.l, v3.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v9, -v17, v14, v13
	v_fma_f32 v11, -v21, v18, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v19, 1, v24
	v_mov_b16_e32 v7.l, v5.h
	v_and_b32_e32 v8, 1, v8
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v9, v9, v22, v14
	s_mov_b32 vcc_lo, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v12, v6, v19, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v11, v11, v23, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v14, 1, v7
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_add3_u32 v6, v3, v8, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v8, v9, v10, v28
	v_div_fixup_f32 v11, v11, v15, v29
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v13.h, 0x7fff, v16.h, s0
	v_add3_u32 v10, v5, v14, 0x7fff
	v_cmp_o_f32_e64 s0, v5, v5
	v_cmp_o_f32_e64 s1, v3, v3
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v9, v27, v11
	v_mul_f32_e32 v3, v26, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.h, v7.h
	v_cndmask_b16 v8.h, 0x7fff, v10.h, s0
	v_cndmask_b16 v8.l, 0x7fff, v6.h, s1
	v_mov_b16_e32 v5.l, v9.h
	v_mov_b16_e32 v7.l, v3.h
	v_cmp_eq_u32_e64 s0, 0, v0
	v_mov_b32_e32 v0, 0x5410
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v6, 0x7632 :: v_dual_and_b32 v5, 1, v5
	v_and_b32_e32 v7, 1, v7
	v_cmp_o_f32_e64 s1, v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	v_cndmask_b32_e64 v6, 0x3276, v6, s0
	v_add3_u32 v5, v9, v5, 0x7fff
	v_add3_u32 v7, v3, v7, 0x7fff
	v_cmp_o_f32_e64 s2, v9, v9
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v3, v6, 8, v6
	v_cndmask_b16 v13.l, 0x7fff, v12.h, vcc_lo
	v_cndmask_b16 v6.h, 0x7fff, v7.h, s1
	v_cndmask_b16 v6.l, 0x7fff, v5.h, s2
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v3, 0x760076, v3
	v_cndmask_b32_e64 v10, v8, v4, s0
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v5, v1, s23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e64 v1, v4, v8, s0
	v_cndmask_b32_e64 v4, v13, v6, s0
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v3, v3, 4, v3
	s_mov_b32 s1, 0x76543210
	v_cndmask_b32_e64 v6, v6, v13, s0
	v_permlanex16_b32 v1, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 0x5040504, v0
	v_and_b32_e32 v3, 0x7060706, v3
	v_permlanex16_b32 v4, v4, s1, 0xfedcba98 op_sel:[1,0]
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_lshl_or_b32 v8, s22, 7, v2
	s_mov_b32 s23, 0x31027000
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_perm_b32 v0, v1, v10, v7
	v_perm_b32 v1, v1, v10, v3
	v_perm_b32 v2, v4, v6, v7
	v_perm_b32 v3, v4, v6, v3
	v_add_lshl_u32 v4, v8, v5, 1
	s_mov_b32 s22, 0x7ffffffe
	buffer_store_b128 v[0:3], v4, s[20:23], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 92
		.amdhsa_next_free_sgpr 37
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 92
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 37
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9136
; TotalNumSgprs: 39
; NumVgprs: 92
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 39
; NumVGPRsForWavesPerEU: 92
; Occupancy: 16
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     39
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc256_swiglu_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     92
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
