	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x30
	s_load_b32 s29, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v84, 4, v0
	v_and_b32_e32 v88, 7, v0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v85, 15, v0
	v_lshrrev_b32_e32 v34, 3, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v35, 32, v84
	v_lshlrev_b32_e32 v33, 3, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v65, 4, v85
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_lshrrev_b32_e32 v90, 1, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v89, 0xe0, v0
	v_dual_mov_b32 v24, v8 :: v_dual_lshlrev_b32 v9, 3, v0
	v_dual_mov_b32 v7, v8 :: v_dual_and_b32 v10, 56, v90
	v_dual_mov_b32 v22, v8 :: v_dual_lshlrev_b32 v45, 4, v0
	v_mov_b32_e32 v23, v8
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s21, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s20, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s12, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s4, s12
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xor_b32_e32 v9, v9, v10
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_mov_b32_e32 v21, v8
	v_dual_mov_b32 v20, v8 :: v_dual_add_nc_u32 v45, 0, v45
	v_rcp_iflag_f32_e32 v1, s5
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_readfirstlane_b32 s5, v1
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	s_cvt_u32_f32 s5, s5
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v44, 0, v9
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_mul_i32 s8, s8, s5
	v_mov_b32_e32 v9, v8
	s_mul_hi_u32 s8, s5, s8
	v_lshlrev_b32_e32 v86, 2, v0
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s13, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s4, s7, s13
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s12, s13, s12
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s14, s4, 1
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s12
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s15, s14
	s_load_b256 s[4:11], s[0:1], 0x0
	s_cvt_f32_u32 s16, s15
	s_sub_i32 s19, 0, s15
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_readfirstlane_b32 s16, v1
	s_mul_f32 s18, s16, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[6:7]
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_cvt_u32_f32 s18, s18
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s19, s19, s18
	s_mul_hi_u32 s12, s18, s19
	s_abs_i32 s19, s2
	s_add_i32 s18, s18, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s12, s19, s18
	s_xor_b32 s18, s2, s14
	s_mul_i32 s20, s12, s15
	s_ashr_i32 s26, s18, 31
	s_sub_i32 s19, s19, s20
	s_add_i32 s20, s12, 1
	s_sub_i32 s22, s19, s15
	s_cmp_ge_u32 s19, s15
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_mov_b32 s18, s6
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cselect_b32 s12, s20, s12
	s_cselect_b32 s19, s22, s19
	s_add_i32 s20, s12, 1
	s_cmp_ge_u32 s19, s15
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_mov_b32 s19, s7
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cselect_b32 s12, s20, s12
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s15, s29, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s28, s12, s26
	.loc	1 135 23                        ; generate_amdgcn.py:135:23
	s_lshl_b32 s25, s3, 6
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s3, s29, s15
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s20, s28, s26
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	v_or_b32_e32 v6, s25, v35
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s27, s3, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s3, s20, s14
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	v_or_b32_e32 v4, s25, v33
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s3, s2, s3
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	v_or_b32_e32 v5, s25, v84
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s13, s3, s13
	.loc	1 137 23                        ; generate_amdgcn.py:137:23
	v_cmp_gt_i32_e64 s3, s27, v6
	v_mov_b32_e32 v6, v8
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_mad_u64_u32 v[1:2], null, s21, v84, v[65:66]
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_mad_u64_u32 v[2:3], null, s27, v34, v[33:34]
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s23, s20, 8
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s22, s13, 6
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_lt_i32 s29, 2
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	s_mul_i32 s12, s21, s25
	.loc	1 136 23                        ; generate_amdgcn.py:136:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v4
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	s_mul_i32 s13, s22, s27
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cselect_b32 s24, -1, 0
	s_cmp_gt_i32 s29, 1
	.loc	1 137 23                        ; generate_amdgcn.py:137:23
	v_cmp_gt_i32_e64 s2, s27, v5
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add3_u32 v2, s25, s13, v2
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cselect_b32 s13, -1, 0
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	s_add_i32 s12, s23, s12
	s_lshl_b32 s14, s21, 5
	v_dual_mov_b32 v4, v8 :: v_dual_add_nc_u32 v3, s12, v1
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_and_b32 vcc_lo, s13, vcc_lo
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_add3_u32 v1, s12, s14, v1
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_and_b32 vcc_lo, s13, s2
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_and_b32 vcc_lo, s13, s3
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_b64 v[46:47], v2, s[4:7], 0 offen
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_clause 0x1
	buffer_load_b128 v[36:39], v3, s[16:19], 0 offen
	buffer_load_b128 v[40:43], v1, s[16:19], 0 offen
	s_load_b128 s[12:15], s[0:1], 0x20
	v_mov_b32_e32 v2, v8
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v91, 1, v89
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v1, v8
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmpk_lt_i32 s29, 0x82
	v_add3_u32 v92, 0, v85, v91
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt vmcnt(2)
	ds_store_b64 v44, v[46:47] offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v45, v[36:39]
	s_waitcnt vmcnt(0)
	ds_store_b128 v45, v[40:43] offset:8192
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	v_add_nc_u32_e32 v9, s22, v34
	v_add_nc_u32_e32 v2, s25, v84
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:133:32 ]
	s_add_i32 s0, s27, 63
.Ltmp13:
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_lshl_b32 s1, s28, 8
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:133:32 ]
	s_lshr_b32 s0, s0, 6
.Ltmp15:
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_mad_u64_u32 v[41:42], null, s27, v9, v[33:34]
	v_mov_b32_e32 v9, 0
	v_lshlrev_b32_e32 v1, 2, v0
	v_add_nc_u32_e32 v3, 0x60, v2
	v_add_nc_u32_e32 v2, 64, v2
	v_sub_nc_u32_e64 v4, s0, 2 clamp
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v12, v9 :: v_dual_and_b32 v1, 0x438, v1
	v_mov_b32_e32 v14, v9
	v_mul_lo_u32 v3, s21, v3
	v_readfirstlane_b32 s0, v4
	v_sub_nc_u32_e32 v46, s27, v33
	v_lshl_or_b32 v1, v85, 6, v1
	v_sub_nc_u32_e32 v47, s27, v84
	v_sub_nc_u32_e32 v48, s27, v35
	s_add_i32 s2, s0, 1
	s_lshl_b32 s0, s26, 8
	v_xor_b32_e32 v11, 56, v1
	v_xor_b32_e32 v5, 8, v1
	v_xor_b32_e32 v6, 16, v1
	v_xor_b32_e32 v7, 24, v1
	v_xor_b32_e32 v8, 32, v1
	v_dual_mov_b32 v27, v9 :: v_dual_add_nc_u32 v58, 0, v11
	v_mov_b32_e32 v11, v9
	v_mul_lo_u32 v2, s21, v2
	v_xor_b32_e32 v10, 40, v1
	v_xor_b32_e32 v4, 48, v1
	v_add3_u32 v3, v3, s1, v65
	v_dual_mov_b32 v16, v9 :: v_dual_add_nc_u32 v51, 0, v1
	v_dual_mov_b32 v13, v9 :: v_dual_add_nc_u32 v52, 0, v5
	v_add3_u32 v2, v2, s1, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v49, s0, v3
	v_dual_mov_b32 v26, v9 :: v_dual_add_nc_u32 v53, 0, v6
	v_dual_mov_b32 v15, v9 :: v_dual_add_nc_u32 v54, 0, v7
	v_subrev_nc_u32_e32 v50, s0, v2
	v_dual_mov_b32 v28, v9 :: v_dual_add_nc_u32 v55, 0, v8
	v_dual_mov_b32 v25, v9 :: v_dual_add_nc_u32 v56, 0, v10
	v_dual_mov_b32 v30, v9 :: v_dual_add_nc_u32 v57, 0, v4
	v_mov_b32_e32 v10, v9
	v_mov_b32_e32 v29, v9
	v_mov_b32_e32 v31, v9
	v_mov_b32_e32 v32, v9
	v_mov_b32_e32 v17, v9
	v_mov_b32_e32 v18, v9
	v_mov_b32_e32 v19, v9
	v_mov_b32_e32 v20, v9
	v_mov_b32_e32 v21, v9
	v_mov_b32_e32 v22, v9
	v_mov_b32_e32 v23, v9
	v_mov_b32_e32 v24, v9
	v_mov_b32_e32 v1, v9
	v_mov_b32_e32 v2, v9
	v_mov_b32_e32 v3, v9
	v_mov_b32_e32 v4, v9
	v_mov_b32_e32 v5, v9
	v_mov_b32_e32 v6, v9
	v_mov_b32_e32 v7, v9
	v_mov_b32_e32 v8, v9
	s_lshl_b32 s3, s21, 6
	s_add_i32 s25, s25, 64
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v33, s25, v41
	.loc	1 136 23                        ; generate_amdgcn.py:136:23
	v_cmp_lt_i32_e32 vcc_lo, s25, v46
	.loc	1 137 23                        ; generate_amdgcn.py:137:23
	v_cmp_lt_i32_e64 s0, s25, v47
	v_cmp_lt_i32_e64 s1, s25, v48
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_add_i32 s2, s2, -1
	s_add_i32 s25, s25, 64
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_cndmask_b32_e64 v34, 0x80000000, v50, s0
	v_cndmask_b32_e64 v37, 0x80000000, v49, s1
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_add_nc_u32_e32 v49, s3, v49
	v_add_nc_u32_e32 v50, s3, v50
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_b64 v[42:43], v33, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v63, v92 offset:1280
	ds_load_u8 v64, v92 offset:1024
	ds_load_u8 v70, v92 offset:1792
	ds_load_u8 v71, v92 offset:1536
	ds_load_u8 v72, v92 offset:256
	ds_load_u8 v73, v92
	ds_load_u8 v74, v92 offset:768
	ds_load_u8 v75, v92 offset:512
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[59:62], v51 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[66:69], v52 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v76, v92 offset:3328
	ds_load_u8 v77, v92 offset:1920
	ds_load_u8 v78, v92 offset:1408
	ds_load_u8 v79, v92 offset:1152
	ds_load_u8 v80, v92 offset:1664
	ds_load_u8 v81, v92 offset:896
	ds_load_u8 v82, v92 offset:384
	ds_load_u8 v83, v92 offset:128
	ds_load_u8 v87, v92 offset:640
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_clause 0x1
	buffer_load_b128 v[33:36], v34, s[16:19], 0 offen
	buffer_load_b128 v[37:40], v37, s[16:19], 0 offen
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v93, v92 offset:3072
	ds_load_u8 v94, v92 offset:3840
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_lg_u32 s2, 0
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v99, v92 offset:14464
	ds_load_u8 v100, v92 offset:15232
	ds_load_u8 v101, v92 offset:14976
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v64, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v70, v73, v72, 0xc0c0004
	ds_load_u8 v72, v92 offset:3584
	ds_load_u8 v73, v92 offset:2304
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v71, v75, v74, 0xc0c0004
	v_lshl_or_b32 v64, v64, 16, v63
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v81, v87, v81, 0xc0c0004
	ds_load_u8 v74, v92 offset:2048
	ds_load_u8 v75, v92 offset:2816
	v_lshl_or_b32 v63, v71, 16, v70
	v_perm_b32 v70, v79, v78, 0xc0c0004
	v_perm_b32 v71, v80, v77, 0xc0c0004
	v_perm_b32 v79, v83, v82, 0xc0c0004
	ds_load_u8 v77, v92 offset:3968
	ds_load_u8 v80, v92 offset:3712
	ds_load_u8 v82, v92 offset:3456
	ds_load_u8 v78, v92 offset:2560
	v_lshl_or_b32 v71, v71, 16, v70
	v_lshl_or_b32 v70, v81, 16, v79
	ds_load_u8 v79, v92 offset:3200
	ds_load_u8 v81, v92 offset:2944
	ds_load_u8 v83, v92 offset:2432
	ds_load_u8 v87, v92 offset:2176
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[59:60], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[63:64], v[61:62], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[70:71], v[59:60], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[70:71], v[61:62], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v95, v92 offset:2688
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[59:62], v53 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v63, v93, v76, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v64, v72, v94, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v74, v74, v73, 0xc0c0004
	ds_load_u8 v76, v92 offset:5376
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[70:73], v54 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_lshl_or_b32 v64, v64, 16, v63
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v75, v78, v75, 0xc0c0004
	ds_load_u8 v78, v92 offset:5120
	ds_load_u8 v93, v92 offset:5888
	v_lshl_or_b32 v63, v75, 16, v74
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v74, v79, v82, 0xc0c0004
	v_perm_b32 v75, v80, v77, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v80, v87, v83, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v81, v95, v81, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[66:67], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[63:64], v[68:69], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v75, v75, 16, v74
	ds_load_u8 v79, v92 offset:5632
	ds_load_u8 v77, v92 offset:4352
	v_lshl_or_b32 v74, v81, 16, v80
	ds_load_u8 v87, v92 offset:6016
	ds_load_u8 v94, v92 offset:5504
	ds_load_u8 v80, v92 offset:4608
	ds_load_u8 v81, v92 offset:7424
	ds_load_u8 v95, v92 offset:9600
	ds_load_u8 v96, v92 offset:9344
	v_wmma_i32_16x16x16_iu4 v[25:32], v[74:75], v[66:67], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[74:75], v[68:69], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v66, v92 offset:5248
	ds_load_u8 v67, v92 offset:5760
	ds_load_u8 v68, v92 offset:4992
	ds_load_u8 v69, v92 offset:4480
	ds_load_u8 v74, v92 offset:4224
	ds_load_u8 v75, v92 offset:4736
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v66, v66, v94, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v67, v67, v87, 0xc0c0004
	ds_load_u8 v87, v92 offset:9472
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v69, v74, v69, 0xc0c0004
	ds_load_u8 v74, v92 offset:9216
	ds_load_u8 v83, v92 offset:4864
	ds_load_u8 v82, v92 offset:4096
	v_perm_b32 v63, v78, v76, 0xc0c0004
	v_perm_b32 v64, v79, v93, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v68, v75, v68, 0xc0c0004
	v_lshl_or_b32 v67, v67, 16, v66
	ds_load_u8 v76, v92 offset:7168
	ds_load_u8 v78, v92 offset:7936
	v_lshl_or_b32 v64, v64, 16, v63
	v_lshl_or_b32 v66, v68, 16, v69
	ds_load_u8 v75, v92 offset:9984
	ds_load_u8 v68, v92 offset:9728
	ds_load_u8 v69, v92 offset:8448
	v_wmma_i32_16x16x16_iu4 v[25:32], v[66:67], v[59:60], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[66:67], v[61:62], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v80, v80, v83, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v77, v82, v77, 0xc0c0004
	ds_load_u8 v82, v92 offset:6400
	v_lshl_or_b32 v63, v80, 16, v77
	ds_load_u8 v77, v92 offset:6144
	ds_load_u8 v80, v92 offset:6912
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[59:60], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[63:64], v[61:62], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v63, v92 offset:8064
	ds_load_u8 v64, v92 offset:7552
	ds_load_u8 v61, v92 offset:7296
	ds_load_u8 v62, v92 offset:7808
	ds_load_u8 v66, v92 offset:7040
	ds_load_u8 v67, v92 offset:6528
	ds_load_u8 v93, v92 offset:6272
	ds_load_u8 v94, v92 offset:6784
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v62, v62, v63, 0xc0c0004
	v_perm_b32 v61, v61, v64, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v63, v93, v67, 0xc0c0004
	ds_load_u8 v93, v92 offset:10240
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v64, v94, v66, 0xc0c0004
	ds_load_u8 v94, v92 offset:11008
	ds_load_u8 v79, v92 offset:7680
	ds_load_u8 v83, v92 offset:6656
	v_perm_b32 v59, v76, v81, 0xc0c0004
	v_perm_b32 v77, v77, v82, 0xc0c0004
	v_lshl_or_b32 v62, v62, 16, v61
	v_lshl_or_b32 v61, v64, 16, v63
	ds_load_u8 v76, v92 offset:8192
	ds_load_u8 v81, v92 offset:11520
	ds_load_u8 v66, v92 offset:10112
	ds_load_u8 v67, v92 offset:9856
	v_perm_b32 v63, v74, v87, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[61:62], v[70:71], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[61:62], v[72:73], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v82, v92 offset:11776
	ds_load_u8 v74, v92 offset:13568
	ds_load_u8 v87, v92 offset:14848
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v60, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v80, v83, v80, 0xc0c0004
	ds_load_u8 v79, v92 offset:8704
	v_lshl_or_b32 v60, v60, 16, v59
	v_lshl_or_b32 v59, v80, 16, v77
	ds_load_u8 v77, v92 offset:11264
	ds_load_u8 v80, v92 offset:12032
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[59:60], v[70:71], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[59:60], v[72:73], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v70, v92 offset:8576
	ds_load_u8 v71, v92 offset:8320
	ds_load_u8 v72, v92 offset:9088
	ds_load_u8 v73, v92 offset:8832
	ds_load_u8 v97, v92 offset:10752
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[59:62], v55 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v92 offset:12288
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v92 offset:13056
	ds_load_u8 v83, v92 offset:10496
	ds_load_u8 v78, v92 offset:8960
	v_perm_b32 v64, v68, v75, 0xc0c0004
	v_perm_b32 v68, v76, v69, 0xc0c0004
	v_perm_b32 v75, v96, v95, 0xc0c0004
	ds_load_u8 v76, v92 offset:13824
	v_lshl_or_b32 v64, v64, 16, v63
	v_lshl_or_b32 v67, v66, 16, v75
	v_lshl_or_b32 v66, v72, 16, v70
	ds_load_u8 v70, v92 offset:12800
	ds_load_u8 v72, v92 offset:15616
	v_perm_b32 v75, v77, v81, 0xc0c0004
	ds_load_u8 v77, v92 offset:14592
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[66:67], v[59:60], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[66:67], v[61:62], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v81, v93, v83, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v69, v79, v78, 0xc0c0004
	ds_load_u8 v78, v92 offset:12544
	v_perm_b32 v83, v97, v94, 0xc0c0004
	v_lshl_or_b32 v63, v69, 16, v68
	ds_load_u8 v68, v92 offset:13312
	ds_load_u8 v69, v92 offset:14080
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v70, v70, v73, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[59:60], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[63:64], v[61:62], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v63, v92 offset:15360
	ds_load_u8 v64, v92 offset:12160
	ds_load_u8 v59, v92 offset:11904
	ds_load_u8 v60, v92 offset:11648
	ds_load_u8 v61, v92 offset:11392
	ds_load_u8 v62, v92 offset:11136
	ds_load_u8 v66, v92 offset:16128
	ds_load_u8 v67, v92 offset:15872
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v93, v61, v60, 0xc0c0004
	v_perm_b32 v72, v63, v72, 0xc0c0004
	ds_load_u8 v60, v92 offset:12928
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v92 offset:14208
	ds_load_u8 v73, v92 offset:13696
	ds_load_u8 v63, v92 offset:13440
	v_perm_b32 v68, v68, v74, 0xc0c0004
	v_perm_b32 v69, v76, v69, 0xc0c0004
	ds_load_u8 v76, v92 offset:10624
	v_perm_b32 v94, v59, v64, 0xc0c0004
	ds_load_u8 v59, v92 offset:12672
	ds_load_u8 v61, v92 offset:12416
	ds_load_u8 v74, v92 offset:10880
	v_perm_b32 v79, v82, v80, 0xc0c0004
	ds_load_u8 v80, v92 offset:14336
	v_perm_b32 v71, v71, v78, 0xc0c0004
	ds_load_u8 v78, v92 offset:10368
	ds_load_u8 v82, v92 offset:15104
	v_lshl_or_b32 v64, v79, 16, v75
	v_lshl_or_b32 v75, v69, 16, v68
	v_lshl_or_b32 v79, v94, 16, v93
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v97, v61, v59, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v95, v74, v62, 0xc0c0004
	ds_load_u8 v62, v92 offset:15744
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v80, v80, v77, 0xc0c0004
	ds_load_u8 v77, v92 offset:13952
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v78, v78, v76, 0xc0c0004
	ds_load_u8 v76, v92 offset:16000
	v_lshl_or_b32 v74, v70, 16, v71
	v_lshl_or_b32 v78, v95, 16, v78
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v96, v77, v67, 0xc0c0004
	ds_load_u8 v67, v92 offset:16256
	ds_load_u8 v77, v92 offset:14720
	v_perm_b32 v82, v87, v82, 0xc0c0004
	ds_load_u8 v87, v92 offset:13184
	v_perm_b32 v73, v63, v73, 0xc0c0004
	ds_load_u8 v63, v92 offset:15488
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v99, v99, v77, 0xc0c0004
	v_lshl_or_b32 v77, v66, 16, v72
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v87, v60, v87, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v63, v62, 0xc0c0004
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[59:62], v56 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_lshl_or_b32 v63, v83, 16, v81
	v_perm_b32 v83, v76, v67, 0xc0c0004
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[66:69], v57 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_lshl_or_b32 v81, v96, 16, v73
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[70:73], v58 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_lshl_or_b32 v76, v82, 16, v80
	v_lshl_or_b32 v80, v87, 16, v97
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v44, v[42:43] offset:16384
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v45, v[33:36]
	s_waitcnt vmcnt(0)
	ds_store_b128 v45, v[37:40] offset:8192
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[59:60], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[63:64], v[61:62], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v64, v101, v100, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[78:79], v[59:60], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[78:79], v[61:62], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v63, v83, 16, v98
	v_wmma_i32_16x16x16_iu4 v[9:16], v[74:75], v[66:67], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v62, v64, 16, v99
	v_wmma_i32_16x16x16_iu4 v[25:32], v[80:81], v[66:67], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[74:75], v[68:69], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[80:81], v[68:69], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[76:77], v[70:71], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[62:63], v[70:71], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[76:77], v[72:73], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[62:63], v[72:73], v[1:8] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow202
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_and_b32_e32 v87, 0x1f0, v0
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_and_not1_b32 vcc_lo, exec_lo, s24
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %._crit_edge._crit_edge
.Ltmp16:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v33, 2, v0
	s_cbranch_execz .LBB0_7
.Ltmp17:
; %bb.5:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v86, v33
	s_branch .LBB0_8
.LBB0_6:
                                        ; implicit-def: $vgpr33
.LBB0_7:
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	v_and_b32_e32 v33, 0x438, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v85, 6, v33
	v_xad_u32 v33, v61, 56, 0
	v_xad_u32 v37, v61, 48, 0
	v_xad_u32 v41, v61, 40, 0
	v_xad_u32 v45, v61, 32, 0
	v_xad_u32 v49, v61, 24, 0
	v_xad_u32 v53, v61, 16, 0
	v_xad_u32 v57, v61, 8, 0
	v_add_nc_u32_e32 v61, 0, v61
	ds_load_2addr_stride64_b64 v[61:64], v61 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v66, v92 offset:1280
	ds_load_u8 v67, v92 offset:1024
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[57:60], v57 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[53:56], v53 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[49:52], v49 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[45:48], v45 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[41:44], v41 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[37:40], v37 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[33:36], v33 offset0:32 offset1:36
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v92 offset:1792
	ds_load_u8 v68, v92 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v67, 16, v66
	ds_load_u8 v66, v92 offset:256
	ds_load_u8 v68, v92
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v68, v66, 0xc0c0004
	ds_load_u8 v68, v92 offset:768
	ds_load_u8 v69, v92 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v68, 16, v66
	ds_load_u8 v68, v92 offset:3328
	ds_load_u8 v69, v92 offset:3072
	v_wmma_i32_16x16x16_iu4 v[9:16], v[66:67], v[61:62], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[66:67], v[63:64], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v92 offset:3840
	ds_load_u8 v70, v92 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v69, 16, v68
	ds_load_u8 v68, v92 offset:2304
	ds_load_u8 v70, v92 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v70, v68, 0xc0c0004
	ds_load_u8 v70, v92 offset:2816
	ds_load_u8 v71, v92 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v70, 16, v68
	ds_load_u8 v70, v92 offset:5376
	ds_load_u8 v71, v92 offset:5120
	v_wmma_i32_16x16x16_iu4 v[9:16], v[68:69], v[57:58], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[68:69], v[59:60], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v92 offset:5888
	ds_load_u8 v72, v92 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v71, 16, v70
	ds_load_u8 v70, v92 offset:4352
	ds_load_u8 v72, v92 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v72, v70, 0xc0c0004
	ds_load_u8 v72, v92 offset:4864
	ds_load_u8 v73, v92 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v72, 16, v70
	ds_load_u8 v72, v92 offset:7424
	ds_load_u8 v73, v92 offset:7168
	v_wmma_i32_16x16x16_iu4 v[9:16], v[70:71], v[53:54], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[70:71], v[55:56], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v92 offset:7936
	ds_load_u8 v74, v92 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v73, 16, v72
	ds_load_u8 v72, v92 offset:6400
	ds_load_u8 v74, v92 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v74, v72, 0xc0c0004
	ds_load_u8 v74, v92 offset:6912
	ds_load_u8 v75, v92 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v74, 16, v72
	ds_load_u8 v74, v92 offset:9472
	ds_load_u8 v75, v92 offset:9216
	v_wmma_i32_16x16x16_iu4 v[9:16], v[72:73], v[49:50], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[72:73], v[51:52], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	ds_load_u8 v75, v92 offset:9984
	ds_load_u8 v76, v92 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v75, 16, v74
	ds_load_u8 v74, v92 offset:8448
	ds_load_u8 v76, v92 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v76, v74, 0xc0c0004
	ds_load_u8 v76, v92 offset:8960
	ds_load_u8 v77, v92 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v76, 16, v74
	ds_load_u8 v76, v92 offset:11520
	ds_load_u8 v77, v92 offset:11264
	v_wmma_i32_16x16x16_iu4 v[9:16], v[74:75], v[45:46], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[74:75], v[47:48], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v92 offset:12032
	ds_load_u8 v78, v92 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v77, 16, v76
	ds_load_u8 v76, v92 offset:10496
	ds_load_u8 v78, v92 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v78, v76, 0xc0c0004
	ds_load_u8 v78, v92 offset:11008
	ds_load_u8 v79, v92 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v78, 16, v76
	ds_load_u8 v78, v92 offset:13568
	ds_load_u8 v79, v92 offset:13312
	v_wmma_i32_16x16x16_iu4 v[9:16], v[76:77], v[41:42], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[76:77], v[43:44], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v92 offset:14080
	ds_load_u8 v80, v92 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v79, 16, v78
	ds_load_u8 v78, v92 offset:12544
	ds_load_u8 v80, v92 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v80, v78, 0xc0c0004
	ds_load_u8 v80, v92 offset:13056
	ds_load_u8 v81, v92 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v80, 16, v78
	ds_load_u8 v80, v92 offset:15616
	ds_load_u8 v81, v92 offset:15360
	v_wmma_i32_16x16x16_iu4 v[9:16], v[78:79], v[37:38], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[78:79], v[39:40], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	ds_load_u8 v81, v92 offset:16128
	ds_load_u8 v82, v92 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v81, 16, v80
	ds_load_u8 v80, v92 offset:14592
	ds_load_u8 v82, v92 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v82, v80, 0xc0c0004
	ds_load_u8 v82, v92 offset:15104
	ds_load_u8 v83, v92 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v82, 16, v80
	ds_load_u8 v82, v92 offset:1408
	ds_load_u8 v83, v92 offset:1152
	v_wmma_i32_16x16x16_iu4 v[9:16], v[80:81], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[80:81], v[35:36], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v92 offset:1920
	ds_load_u8 v93, v92 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v93, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v82
	ds_load_u8 v82, v92 offset:384
	ds_load_u8 v93, v92 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v93, v82, 0xc0c0004
	ds_load_u8 v93, v92 offset:896
	ds_load_u8 v94, v92 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v82, v93, 16, v82
	v_wmma_i32_16x16x16_iu4 v[25:32], v[82:83], v[61:62], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v61, v92 offset:3456
	ds_load_u8 v62, v92 offset:3200
	v_wmma_i32_16x16x16_iu4 v[1:8], v[82:83], v[63:64], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v92 offset:3968
	ds_load_u8 v93, v92 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v93, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v92 offset:2432
	ds_load_u8 v93, v92 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v93, v61, 0xc0c0004
	ds_load_u8 v93, v92 offset:2944
	ds_load_u8 v94, v92 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v93, 16, v61
	v_wmma_i32_16x16x16_iu4 v[25:32], v[61:62], v[57:58], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v57, v92 offset:5504
	ds_load_u8 v58, v92 offset:5248
	v_wmma_i32_16x16x16_iu4 v[1:8], v[61:62], v[59:60], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v92 offset:6016
	ds_load_u8 v93, v92 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v93, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v57
	ds_load_u8 v57, v92 offset:4480
	ds_load_u8 v93, v92 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v93, v57, 0xc0c0004
	ds_load_u8 v93, v92 offset:4992
	ds_load_u8 v94, v92 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v93, 16, v57
	v_wmma_i32_16x16x16_iu4 v[25:32], v[57:58], v[53:54], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v53, v92 offset:7552
	ds_load_u8 v54, v92 offset:7296
	v_wmma_i32_16x16x16_iu4 v[1:8], v[57:58], v[55:56], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v92 offset:8064
	ds_load_u8 v93, v92 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v93, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v54, 16, v53
	ds_load_u8 v53, v92 offset:6528
	ds_load_u8 v93, v92 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v93, v53, 0xc0c0004
	ds_load_u8 v93, v92 offset:7040
	ds_load_u8 v94, v92 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v93, 16, v53
	v_wmma_i32_16x16x16_iu4 v[25:32], v[53:54], v[49:50], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v49, v92 offset:9600
	ds_load_u8 v50, v92 offset:9344
	v_wmma_i32_16x16x16_iu4 v[1:8], v[53:54], v[51:52], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v92 offset:10112
	ds_load_u8 v93, v92 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v93, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v92 offset:8576
	ds_load_u8 v93, v92 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v93, v49, 0xc0c0004
	ds_load_u8 v93, v92 offset:9088
	ds_load_u8 v94, v92 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v93, 16, v49
	v_wmma_i32_16x16x16_iu4 v[25:32], v[49:50], v[45:46], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v45, v92 offset:11648
	ds_load_u8 v46, v92 offset:11392
	v_wmma_i32_16x16x16_iu4 v[1:8], v[49:50], v[47:48], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v92 offset:12160
	ds_load_u8 v93, v92 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v93, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v92 offset:10624
	ds_load_u8 v93, v92 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v93, v45, 0xc0c0004
	ds_load_u8 v93, v92 offset:11136
	ds_load_u8 v94, v92 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v93, 16, v45
	v_wmma_i32_16x16x16_iu4 v[25:32], v[45:46], v[41:42], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v41, v92 offset:13696
	ds_load_u8 v42, v92 offset:13440
	v_wmma_i32_16x16x16_iu4 v[1:8], v[45:46], v[43:44], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v92 offset:14208
	ds_load_u8 v93, v92 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v93, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v92 offset:12672
	ds_load_u8 v93, v92 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v93, v41, 0xc0c0004
	ds_load_u8 v93, v92 offset:13184
	ds_load_u8 v94, v92 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v93, 16, v41
	v_wmma_i32_16x16x16_iu4 v[25:32], v[41:42], v[37:38], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v37, v92 offset:15744
	ds_load_u8 v38, v92 offset:15488
	v_wmma_i32_16x16x16_iu4 v[1:8], v[41:42], v[39:40], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v92 offset:16256
	ds_load_u8 v93, v92 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v93, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	ds_load_u8 v37, v92 offset:14720
	ds_load_u8 v93, v92 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v93, v37, 0xc0c0004
	ds_load_u8 v93, v92 offset:15232
	ds_load_u8 v92, v92 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v92, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v92, 16, v37
	v_wmma_i32_16x16x16_iu4 v[25:32], v[37:38], v[33:34], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[37:38], v[35:36], v[1:8] neg_lo:[1,1,0]
.LBB0_8:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v33, 0x100, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_bfe_u32 v35, v0, 4, 1
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_and_b32 s1, s9, 0xffff
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v36, 4, v33
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or3_b32 v35, v35, v91, s23
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_mov_b32 s0, s8
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_or3_b32 v36, v36, v85, s22
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_lshlrev_b32_e32 v35, 1, v35
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_lshlrev_b32_e32 v36, 1, v36
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_or_b32_e32 v40, 8, v35
	v_or_b32_e32 v42, 16, v35
	v_or_b32_e32 v44, 24, v35
	v_or_b32_e32 v46, 0x100, v35
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	buffer_load_u16 v37, v36, s[0:3], 0 offen
	v_or_b32_e32 v36, 64, v36
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_or_b32_e32 v48, 0x108, v35
	v_or_b32_e32 v39, 4, v35
	v_or_b32_e32 v41, 12, v35
	v_or_b32_e32 v43, 20, v35
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	buffer_load_u16 v36, v36, s[0:3], 0 offen
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_and_b32 s1, s11, 0xffff
	s_mov_b32 s0, s10
	v_or_b32_e32 v45, 28, v35
	s_clause 0x9
	buffer_load_u16 v38, v35, s[0:3], 0 offen
	buffer_load_u16 v39, v39, s[0:3], 0 offen
	buffer_load_u16 v41, v41, s[0:3], 0 offen
	buffer_load_u16 v43, v43, s[0:3], 0 offen
	buffer_load_u16 v45, v45, s[0:3], 0 offen
	buffer_load_u16 v40, v40, s[0:3], 0 offen
	buffer_load_u16 v42, v42, s[0:3], 0 offen
	buffer_load_u16 v44, v44, s[0:3], 0 offen
	buffer_load_u16 v46, v46, s[0:3], 0 offen
	buffer_load_u16 v48, v48, s[0:3], 0 offen
	v_or_b32_e32 v47, 0x104, v35
	v_or_b32_e32 v49, 0x10c, v35
	v_or_b32_e32 v50, 0x110, v35
	v_or_b32_e32 v52, 0x118, v35
	v_or_b32_e32 v51, 0x114, v35
	s_clause 0x4
	buffer_load_u16 v47, v47, s[0:3], 0 offen
	buffer_load_u16 v49, v49, s[0:3], 0 offen
	buffer_load_u16 v50, v50, s[0:3], 0 offen
	buffer_load_u16 v52, v52, s[0:3], 0 offen
	buffer_load_u16 v51, v51, s[0:3], 0 offen
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v38, 16, v38
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v48, 16, v48
	v_lshlrev_b32_e32 v46, 16, v46
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_lshlrev_b32_e32 v36, 16, v36
	v_lshlrev_b32_e32 v37, 16, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v53, v37, v38 :: v_dual_and_b32 v34, 16, v0
	v_dual_mul_f32 v38, v36, v38 :: v_dual_mul_f32 v63, v37, v48
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v61, v37, v46 :: v_dual_lshlrev_b32 v52, 16, v52
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v49, 16, v49
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v27, v63, v27
	v_mul_f32_e32 v25, v61, v25
	.loc	1 171 16 is_stmt 0              ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v68, v37, v52 :: v_dual_lshlrev_b32 v43, 16, v43
	v_mul_f32_e32 v64, v37, v49
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v67, v37, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v17, v38, v17 :: v_dual_mul_f32 v58, v37, v43
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v56, v37, v41
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_or_b32_e32 v35, 0x11c, v35
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v41, v36, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v66, v37, v50 :: v_dual_lshlrev_b32 v47, 16, v47
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v45, 16, v45
	buffer_load_u16 v35, v35, s[0:3], 0 offen
	v_lshlrev_b32_e32 v40, 16, v40
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v62, v37, v47
	v_dual_mul_f32 v60, v37, v45 :: v_dual_lshlrev_b32 v39, 16, v39
	v_mul_f32_e32 v43, v36, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v55, v37, v40
	v_mul_f32_e32 v40, v36, v40
	v_mul_f32_e32 v54, v37, v39
	v_mul_f32_e32 v39, v36, v39
	v_mul_f32_e32 v45, v36, v45
	v_dual_mul_f32 v46, v36, v46 :: v_dual_mul_f32 v11, v55, v11
	v_dual_mul_f32 v47, v36, v47 :: v_dual_mul_f32 v14, v58, v14
	v_dual_mul_f32 v49, v36, v49 :: v_dual_mul_f32 v26, v62, v26
	v_dual_mul_f32 v51, v36, v51 :: v_dual_mul_f32 v30, v67, v30
	v_mul_f32_e32 v52, v36, v52
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v10, v54, v10
	v_mul_f32_e32 v12, v56, v12
	v_dual_mul_f32 v16, v60, v16 :: v_dual_mul_f32 v29, v66, v29
	v_mul_f32_e32 v28, v64, v28
	v_dual_mul_f32 v31, v68, v31 :: v_dual_mul_f32 v18, v39, v18
	v_dual_mul_f32 v19, v40, v19 :: v_dual_mul_f32 v20, v41, v20
	v_dual_mul_f32 v1, v46, v1 :: v_dual_mul_f32 v2, v47, v2
	.loc	1 178 19 is_stmt 1              ; generate_amdgcn.py:178:19
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v26, 0, v26
	v_dual_max_f32 v27, 0, v27 :: v_dual_max_f32 v28, 0, v28
	v_dual_max_f32 v29, 0, v29 :: v_dual_max_f32 v30, 0, v30
	v_dual_max_f32 v39, 0, v19 :: v_dual_max_f32 v40, 0, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 179 19                        ; generate_amdgcn.py:179:19
	v_mul_f32_e32 v19, v25, v25
	s_mov_b32 s0, 0x76543210
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp19:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s1, s21, 31
.Ltmp20:
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v9, v53, v9
.Ltmp21:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s1, s21, s1
.Ltmp22:
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v22, v43, v22
	v_mul_f32_e32 v24, v45, v24
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 178 19                        ; generate_amdgcn.py:178:19
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v9, 0, v9
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v4, v49, v4
	v_dual_mul_f32 v6, v51, v6 :: v_dual_max_f32 v1, 0, v1
	.loc	1 178 19                        ; generate_amdgcn.py:178:19
	v_max_f32_e32 v38, 0, v18
.Ltmp23:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s1, s1, 1
.Ltmp24:
	.loc	1 178 19                        ; generate_amdgcn.py:178:19
	v_max_f32_e32 v14, 0, v14
	v_dual_max_f32 v41, 0, v22 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v43, 0, v24 :: v_dual_max_f32 v2, 0, v2
	.loc	1 179 19                        ; generate_amdgcn.py:179:19
	v_dual_mul_f32 v47, v9, v9 :: v_dual_mul_f32 v22, v27, v27
.Ltmp25:
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	s_mul_i32 s4, s22, s1
.Ltmp26:
	.loc	1 179 19                        ; generate_amdgcn.py:179:19
	v_mul_f32_e32 v20, v26, v26
	v_mul_f32_e32 v24, v29, v29
.Ltmp27:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v34, 7, v34
.Ltmp28:
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v35, 16, v35
	v_lshlrev_b32_e32 v44, 16, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v59, v37, v44 :: v_dual_lshlrev_b32 v42, 16, v42
	v_mul_f32_e32 v57, v37, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v42, v36, v42 :: v_dual_mul_f32 v37, v37, v35
	v_mul_f32_e32 v44, v36, v44
	v_dual_mul_f32 v48, v36, v48 :: v_dual_mul_f32 v13, v57, v13
	v_dual_mul_f32 v50, v36, v50 :: v_dual_mul_f32 v15, v59, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v35, v36, v35 :: v_dual_mul_f32 v32, v37, v32
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v21, v42, v21
	v_mul_f32_e32 v23, v44, v23
	v_mul_f32_e32 v5, v50, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v7, v52, v7 :: v_dual_mul_f32 v8, v35, v8
	.loc	1 178 19 is_stmt 1              ; generate_amdgcn.py:178:19
	v_max_f32_e32 v13, 0, v13
	v_dual_max_f32 v35, 0, v15 :: v_dual_max_f32 v36, 0, v16
	v_dual_max_f32 v31, 0, v31 :: v_dual_max_f32 v32, 0, v32
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v3, v48, v3
	.loc	1 178 19                        ; generate_amdgcn.py:178:19
	v_max_f32_e32 v37, 0, v17
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v42, 0, v23
	v_dual_max_f32 v5, 0, v5 :: v_dual_mul_f32 v48, v10, v10
	v_dual_max_f32 v45, 0, v7 :: v_dual_mul_f32 v50, v12, v12
	.loc	1 179 19                        ; generate_amdgcn.py:179:19
	v_dual_mul_f32 v15, v13, v13 :: v_dual_mul_f32 v16, v14, v14
	v_mul_f32_e32 v17, v35, v35
	v_dual_mul_f32 v23, v28, v28 :: v_dual_mul_f32 v26, v31, v31
	v_mul_f32_e32 v25, v30, v30
	.loc	1 178 19                        ; generate_amdgcn.py:178:19
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v46, 0, v8
	v_dual_max_f32 v44, 0, v6 :: v_dual_mul_f32 v49, v11, v11
	.loc	1 179 19                        ; generate_amdgcn.py:179:19
	v_mul_f32_e32 v18, v36, v36
	v_dual_mul_f32 v27, v32, v32 :: v_dual_mul_f32 v32, v41, v41
	v_mul_f32_e32 v36, v21, v21
	v_mul_f32_e32 v21, v1, v1
	v_mul_f32_e32 v13, v2, v2
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v1, v47, v48
	v_max3_f32 v2, v50, v15, v16
	v_max3_f32 v10, v20, v22, v23
	v_max3_f32 v11, v24, v25, v26
.Ltmp30:
	.loc	1 179 19                        ; generate_amdgcn.py:179:19
	v_dual_mul_f32 v29, v37, v37 :: v_dual_mul_f32 v30, v42, v42
	v_dual_mul_f32 v31, v38, v38 :: v_dual_mul_f32 v28, v43, v43
	v_dual_mul_f32 v35, v39, v39 :: v_dual_mul_f32 v6, v5, v5
	v_dual_mul_f32 v37, v40, v40 :: v_dual_mul_f32 v8, v3, v3
	v_mul_f32_e32 v7, v4, v4
	v_dual_mul_f32 v5, v44, v44 :: v_dual_mul_f32 v4, v45, v45
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v9, v17, v18, v19
	v_max3_f32 v1, v1, v49, v2
	v_max3_f32 v2, v10, v11, v27
.Ltmp32:
	.loc	1 179 19                        ; generate_amdgcn.py:179:19
	v_mul_f32_e32 v3, v46, v46
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v12, v6, v5, v4
	v_max3_f32 v10, v30, v28, v21
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_add_u32 v14, v88, 8, 0
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v1, v1, v9, v2
	v_max_f32_e32 v2, v29, v31
	v_max3_f32 v9, v37, v36, v32
	v_max3_f32 v11, v13, v8, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max3_f32 v2, v2, v35, v9
	v_max3_f32 v9, v11, v12, v3
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_and_b32_e32 v11, 8, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, v2, v10, v9
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v9, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_and_b32 v10, 0xf0, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v1, v1, v9
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v9, v2, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s0, 0xc1000000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	v_dual_max_f32 v2, v2, v9 :: v_dual_lshlrev_b32 v9, 4, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v12, v9, v10
	v_add3_u32 v12, v14, v12, v11
	ds_store_b64 v12, v[1:2]
	v_lshl_or_b32 v1, v89, 3, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v1, v1, v10
	v_lshrrev_b32_e32 v10, 1, v33
	v_add3_u32 v1, 0, v11, v1
	ds_load_b64 v[1:2], v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v9, v1
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v9
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v9, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v9
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v9, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v1, v1, v9
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v9, v2
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	v_max_f32_e32 v2, v2, v9
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_add_u32 v11, v11, 3, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_e32 v9, v2
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	v_max_f32_e32 v2, v2, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v9, v2
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	v_max_f32_e32 v2, v2, v9
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v9, 2, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v9, v11, v9, v10
	ds_store_b64 v9, v[1:2]
	v_lshlrev_b32_e32 v1, 3, v85
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v2, 0, v1, v10
	ds_load_b64 v[9:10], v2
.Ltmp59:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v2, v9, v9 :: v_dual_max_f32 v9, v10, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v2, 0x2b8cbccc, v2 :: v_dual_max_f32 v9, 0x2b8cbccc, v9
	v_div_scale_f32 v10, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v11, v10
	v_fma_f32 v12, -v10, v11, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v11, v12, v11
	v_div_scale_f32 v12, vcc_lo, v2, 0x40e00000, v2
	v_mul_f32_e32 v14, v12, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v10, v14, v12
	v_fmac_f32_e32 v14, v38, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v10, -v10, v14, v12
	v_div_fmas_f32 v10, v10, v11, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v2, v10, 0x40e00000, v2
	v_div_scale_f32 v10, null, 0x40e00000, 0x40e00000, v9
	v_rcp_f32_e32 v11, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v10, v11, 1.0
	v_fmac_f32_e32 v11, v12, v11
	v_div_scale_f32 v12, vcc_lo, v9, 0x40e00000, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v14, v12, v11
	v_fma_f32 v38, -v10, v14, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v38, v11
	v_fma_f32 v10, -v10, v14, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v10, v10, v11, v14
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v11.l, v2.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v9, v10, 0x40e00000, v9
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v10.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v10.l, v9.h
	v_mov_b16_e32 v11.h, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v10, 1, v10
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v9, v9, v10, 0x7fff
	v_add3_u32 v11, v2, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v2.h, v9.h
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v38, 0xffff0000, v11
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v2.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v10, null, v38, v38, v47
	v_rcp_f32_e32 v11, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v10, v11, 1.0
	v_fmac_f32_e32 v11, v12, v11
	v_div_scale_f32 v12, vcc_lo, v47, v38, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v14, v12, v11
	v_fma_f32 v39, -v10, v14, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v39, v11
	v_fma_f32 v10, -v10, v14, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v10, v10, v11, v14
	v_div_scale_f32 v11, null, v38, v38, v48
	v_div_fixup_f32 v10, v10, v38, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v12, v11
	v_fma_f32 v14, -v11, v12, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v12, v14, v12
	v_div_scale_f32 v14, vcc_lo, v48, v38, v48
	v_mul_f32_e32 v39, v14, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v11, v39, v14
	v_fmac_f32_e32 v39, v40, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v11, -v11, v39, v14
	v_div_fmas_f32 v11, v11, v12, v39
	v_div_scale_f32 v12, null, v38, v38, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v11, v11, v38, v48
	v_rcp_f32_e32 v14, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v12, v14, 1.0
	v_fmac_f32_e32 v14, v39, v14
	v_div_scale_f32 v39, vcc_lo, v49, v38, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v39, v14
	v_fma_f32 v41, -v12, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v14
	v_fma_f32 v12, -v12, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v12, v12, v14, v40
	v_div_scale_f32 v14, null, v38, v38, v50
	v_div_fixup_f32 v12, v12, v38, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v14
	v_fma_f32 v40, -v14, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v50, v38, v50
	v_mul_f32_e32 v41, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v14, v41, v40
	v_fmac_f32_e32 v41, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v14, -v14, v41, v40
	v_div_fmas_f32 v14, v14, v39, v41
	v_div_scale_f32 v39, null, v38, v38, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v14, v14, v38, v50
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v15, v38, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v39, v40, v42
	v_div_fixup_f32 v15, v39, v38, v15
	v_div_scale_f32 v39, null, v38, v38, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v16, v38, v16
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v42, v41
	v_div_fmas_f32 v39, v39, v40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v16, v39, v38, v16
	v_div_scale_f32 v39, null, v38, v38, v17
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v17, v38, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v39, v40, v42
	v_div_fixup_f32 v17, v39, v38, v17
	v_div_scale_f32 v39, null, v38, v38, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v40, v41, v40 :: v_dual_and_b32 v9, 0xffff0000, v9
	v_div_scale_f32 v41, vcc_lo, v18, v38, v18
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v42, v41
	v_div_fmas_f32 v39, v39, v40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v18, v39, v38, v18
	v_div_scale_f32 v39, null, v38, v38, v19
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v19, v38, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v39, v40, v42
	v_div_fixup_f32 v19, v39, v38, v19
	v_div_scale_f32 v39, null, v38, v38, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v20, v38, v20
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v42, v41
	v_div_fmas_f32 v39, v39, v40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v20, v39, v38, v20
	v_div_scale_f32 v39, null, v38, v38, v22
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v22, v38, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v39, v40, v42
	v_div_fixup_f32 v22, v39, v38, v22
	v_div_scale_f32 v39, null, v38, v38, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v23, v38, v23
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v42, v41
	v_div_fmas_f32 v39, v39, v40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v23, v39, v38, v23
	v_div_scale_f32 v39, null, v38, v38, v24
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v24, v38, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v39, v40, v42
	v_div_fixup_f32 v24, v39, v38, v24
	v_div_scale_f32 v39, null, v38, v38, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v25, v38, v25
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v42, v41
	v_div_fmas_f32 v39, v39, v40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v25, v39, v38, v25
	v_div_scale_f32 v39, null, v38, v38, v26
	v_rcp_f32_e32 v40, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v39, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v26, v38, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v42, v41, v40
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v39, v39, v40, v42
	v_div_fixup_f32 v26, v39, v38, v26
	v_div_scale_f32 v39, null, v38, v38, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v39
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v27, v38, v27
	v_mul_f32_e32 v42, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v39, v42, v41
	v_fmac_f32_e32 v42, v43, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v39, v42, v41
	v_div_fmas_f32 v39, v39, v40, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v27, v39, v38, v27
	v_div_scale_f32 v38, null, v9, v9, v29
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v29, v9, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v29, v38, v9, v29
	v_div_scale_f32 v38, null, v9, v9, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v40, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v31, v9, v31
	v_mul_f32_e32 v41, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v41, v40
	v_fmac_f32_e32 v41, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v41, v40
	v_div_fmas_f32 v38, v38, v39, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v31, v38, v9, v31
	v_div_scale_f32 v38, null, v9, v9, v35
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v35, v9, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v35, v38, v9, v35
	v_div_scale_f32 v38, null, v9, v9, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v40, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v37, v9, v37
	v_mul_f32_e32 v41, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v41, v40
	v_fmac_f32_e32 v41, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v41, v40
	v_div_fmas_f32 v38, v38, v39, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v37, v38, v9, v37
	v_div_scale_f32 v38, null, v9, v9, v36
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v36, v9, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v36, v38, v9, v36
	v_div_scale_f32 v38, null, v9, v9, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v36, v36
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v32, v9, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v32, v38, v9, v32
	v_div_scale_f32 v38, null, v9, v9, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v32, v32
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v30, v9, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v30, v38, v9, v30
	v_div_scale_f32 v38, null, v9, v9, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v30, v30
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_cvt_i32_f32_e32 v30, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v28, v9, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v28, v38, v9, v28
	v_div_scale_f32 v38, null, v9, v9, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v28, v28
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_cvt_i32_f32_e32 v28, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v21, v9, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v21, v38, v9, v21
	v_div_scale_f32 v38, null, v9, v9, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v21, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v21, v21, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v13, v9, v13
	v_mul_f32_e32 v41, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v41, v40
	v_fmac_f32_e32 v41, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v41, v40
	v_div_fmas_f32 v38, v38, v39, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v13, v38, v9, v13
	v_div_scale_f32 v38, null, v9, v9, v8
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v13, v13, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v8, v9, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v8, v38, v9, v8
	v_div_scale_f32 v38, null, v9, v9, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v8, v8, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v7, v9, v7
	v_mul_f32_e32 v41, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v41, v40
	v_fmac_f32_e32 v41, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v41, v40
	v_div_fmas_f32 v38, v38, v39, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v7, v38, v9, v7
	v_div_scale_f32 v38, null, v9, v9, v6
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v7, v7, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v6, v9, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v6, v38, v9, v6
	v_div_scale_f32 v38, null, v9, v9, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v6, v6, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v5, v9, v5
	v_mul_f32_e32 v41, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v38, v41, v40
	v_fmac_f32_e32 v41, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v41, v40
	v_div_fmas_f32 v38, v38, v39, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v5, v38, v9, v5
	v_div_scale_f32 v38, null, v9, v9, v4
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v5, v5, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v4, v9, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v39
	v_fma_f32 v38, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v38, v38, v39, v41
	v_div_fixup_f32 v4, v38, v9, v4
	v_div_scale_f32 v38, null, v9, v9, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v4, v4
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_cvt_i32_f32_e32 v43, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v38, v39, 1.0
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v3, v9, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v40, v39
	v_fma_f32 v42, -v38, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v41, v42, v39
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v42, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v38, -v38, v41, v40
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v40, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v38, v38, v39, v41
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v39, v8
	v_cvt_i32_f32_e32 v41, v6
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v3, v38, v9, v3
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v9, v10
	v_rndne_f32_e32 v10, v11
	v_rndne_f32_e32 v11, v12
	v_rndne_f32_e32 v12, v14
	v_rndne_f32_e32 v14, v15
	v_rndne_f32_e32 v15, v16
	v_rndne_f32_e32 v16, v17
	v_rndne_f32_e32 v17, v18
	v_rndne_f32_e32 v18, v19
	v_rndne_f32_e32 v19, v20
	v_rndne_f32_e32 v20, v22
	v_rndne_f32_e32 v22, v23
	v_rndne_f32_e32 v23, v24
	v_rndne_f32_e32 v24, v25
	v_rndne_f32_e32 v25, v26
	v_rndne_f32_e32 v26, v27
	v_rndne_f32_e32 v27, v29
	v_rndne_f32_e32 v29, v31
	v_rndne_f32_e32 v31, v35
	v_rndne_f32_e32 v3, v3
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v35, v37
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v9, v9
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v37, v21
	v_and_b32_e32 v21, 15, v31
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v31, 11, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v44, v3
	v_and_b32_e32 v3, 15, v9
	v_and_b32_e32 v9, 15, v16
	v_and_b32_e32 v16, 15, v24
	v_and_b32_e32 v24, 15, v32
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v31, 0x3000, v31
	v_and_b32_e32 v32, 0x160, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_cvt_i32_f32_e32 v10, v10
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v38, v13
	v_and_b32_e32 v13, 15, v20
	v_and_b32_e32 v20, 15, v29
	v_and_b32_e32 v29, 15, v39
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v39, 0x200, v86
	v_xor_b32_e32 v32, v65, v32
	v_add3_u32 v31, 0, v31, v34
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v22, v22
	v_and_b32_e32 v4, 15, v10
	v_and_b32_e32 v5, 15, v11
	v_and_b32_e32 v6, 15, v12
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v31, v31, v39, v32
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v7, 15, v14
	v_and_b32_e32 v11, 15, v18
	v_and_b32_e32 v12, 15, v19
	v_and_b32_e32 v14, 15, v22
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v31, v[3:6]
	ds_store_b128 v31, v[11:14] offset:1024
	v_lshlrev_b32_e32 v4, 5, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v3, 7, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v17, v17, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v4, 0x60, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v35, v35
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v3, 0x3600, v3, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v26, v26
	v_and_b32_e32 v19, 15, v27
	v_and_b32_e32 v22, 15, v35
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xad_u32 v32, v3, v87, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v10, 15, v17
	v_and_b32_e32 v17, 15, v25
	v_and_b32_e32 v18, 15, v26
	v_and_b32_e32 v25, 15, v30
	v_and_b32_e32 v26, 15, v28
	v_and_b32_e32 v27, 15, v37
	v_and_b32_e32 v28, 15, v38
	v_and_b32_e32 v30, 15, v40
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v32
	ds_load_b128 v[11:14], v32 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v31, v[19:22]
	ds_store_b128 v31, v[27:30] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[19:22], v32
	ds_load_b128 v[27:30], v32 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v23, v23
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s0, s20, 7
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v8, 15, v15
	v_and_b32_e32 v15, 15, v23
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v31, v[7:10]
	ds_store_b128 v31, v[15:18] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v32
	ds_load_b128 v[15:18], v32 offset:2048
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v3, v11, 4, v3
	v_lshl_or_b32 v5, v13, 4, v5
	v_lshl_or_b32 v6, v14, 4, v6
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v1, s4, s0, v1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v23, 15, v36
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v11, v27, 4, v19
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v19, s1, v84
	s_lshl_b32 s1, s1, 5
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v4, v12, 4, v4
	v_lshl_or_b32 v12, v28, 4, v20
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v35, 15, v41
	v_and_b32_e32 v36, 15, v42
	v_and_b32_e32 v37, 15, v43
	v_and_b32_e32 v38, 15, v44
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add_nc_u32_e32 v20, v1, v19
	v_add3_u32 v19, v19, s1, v1
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v1.l, 8, v6.l
	v_and_b16 v1.h, 0xff, v5.l
	.loc	1 83 18 is_stmt 1               ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v31, v[23:26]
	ds_store_b128 v31, v[35:38] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[23:26], v32
	ds_load_b128 v[34:37], v32 offset:2048
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v9, v17, 4, v9
	v_lshl_or_b32 v10, v18, 4, v10
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v3.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v4.l
	v_and_b16 v1.h, 0xff, v3.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v7, v15, 4, v7
	v_lshl_or_b32 v8, v16, 4, v8
	v_lshl_or_b32 v13, v29, 4, v21
	v_lshl_or_b32 v14, v30, 4, v22
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v3.l, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v10.l
	v_and_b16 v1.h, 0xff, v9.l
	s_and_b32 s1, s13, 0xffff
	s_mov_b32 s0, s12
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v4.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v8.l
	v_and_b16 v1.h, 0xff, v7.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v17, v36, 4, v25
	v_lshl_or_b32 v18, v37, 4, v26
	v_lshl_or_b32 v15, v34, 4, v23
	v_lshl_or_b32 v16, v35, 4, v24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.l, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v14.l
	v_and_b16 v1.h, 0xff, v13.l
	buffer_store_b64 v[3:4], v20, s[0:3], 0 offen
	v_or_b16 v3.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v12.l
	v_and_b16 v1.h, 0xff, v11.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_or_b16 v3.l, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v18.l
	v_and_b16 v1.h, 0xff, v17.l
	v_or_b16 v4.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v16.l
	v_and_b16 v1.h, 0xff, v15.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v4.l, v1.h, v1.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v1, v0, 63, s22
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v0, 0x1c0, v0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[3:4], v19, s[0:3], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v3, 2, v85
	v_lshrrev_b32_e32 v4, 2, v33
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s21, 31
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_barrier
	v_add3_u32 v3, 0, v3, v4
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s21, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s1, s15, 0xffff
	ds_store_b32 v3, v2
	v_and_b32_e32 v2, 0x7c, v86
	v_and_b32_e32 v3, 2, v84
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v1, v1, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s0, s14
	v_add3_u32 v2, 0, v2, v3
	s_delay_alu instid0(VALU_DEP_2)
	v_add_lshl_u32 v0, v1, s20, 1
	ds_load_u16 v1, v2
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[0:3], 0 offen
.Ltmp60:
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp61:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 102
		.amdhsa_next_free_sgpr 30
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 102
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 30
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13320
; TotalNumSgprs: 32
; NumVgprs: 102
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 12
; NumSGPRsForWavesPerEU: 32
; NumVGPRsForWavesPerEU: 102
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
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	1                               ; Abbrev [1] 0xb:0x82 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x5c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	115                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	114                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	133                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x65:0x26 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	243                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x71:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x7d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
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
.Ldebug_ranges3:
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     102
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
