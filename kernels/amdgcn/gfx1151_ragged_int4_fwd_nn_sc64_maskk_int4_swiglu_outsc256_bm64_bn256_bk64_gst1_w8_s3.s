	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[60:61], s[0:1], 0x5c
	s_load_b64 s[28:29], s[0:1], 0x48
	v_mov_b32_e32 v192, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_load_b256 s[20:27], s[0:1], 0x28
	s_mov_b32 s36, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v193, 15, v192
	v_and_b32_e32 v194, 0xf0, v192
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_and_b32_e32 v76, 0x80, v192
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s4, s4, 24
	s_add_i32 s3, s3, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s3, s3, 8
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_rcp_iflag_f32_e32 v0, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s5
	s_mul_hi_u32 s6, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s61, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s7
	v_readfirstlane_b32 s7, v0
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s7, s8
	s_abs_i32 s8, s2
	s_add_i32 s7, s7, s3
	s_mul_hi_u32 s3, s8, s7
	s_xor_b32 s7, s2, s5
	s_mul_i32 s9, s3, s6
	s_ashr_i32 s37, s7, 31
	s_sub_i32 s7, s8, s9
	s_add_i32 s8, s3, 1
	s_sub_i32 s9, s7, s6
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s3, s8, s3
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s3, 1
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s3, s8, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s54, s3, s37
	s_sub_i32 s61, s54, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s61, s5
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s4
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[2:3], s[2:3], 3
	s_add_u32 s4, s20, s2
	s_addc_u32 s5, s21, s3
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s22, s2
	s_addc_u32 s7, s23, s3
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_load_b64 s[34:35], s[4:5], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s4, s24, s2
	s_addc_u32 s5, s25, s3
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[24:25], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[30:31], s[4:5], 0x0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lt_i32 s60, 1
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_load_b64 s[4:5], s[0:1], 0x20
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v24, 5, v192
	s_clause 0x1
	s_load_b32 s23, s[0:1], 0x58
	s_load_b256 s[40:47], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_dual_mov_b32 v68, 0 :: v_dual_and_b32 v25, 0xe0, v192
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v194, off offset:424
	scratch_store_b32 off, v192, off offset:416
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s0, s34, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s35, 0, s0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v139, 0
	v_add_co_u32 v2, vcc_lo, v0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 16
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 24
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_add_u32 s0, s4, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	v_add_co_u32 v8, vcc_lo, v0, 32
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_addc_u32 s1, s5, s3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, 0, v1, vcc_lo
	v_add_co_u32 v10, vcc_lo, v0, 40
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[38:39], s[0:1], 0x0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s0, s34, v193
	v_add_co_ci_u32_e64 v11, null, 0, v1, vcc_lo
	v_add_co_u32 v12, vcc_lo, v0, 48
	v_add_co_ci_u32_e64 v15, null, s35, 0, s0
	v_add_co_ci_u32_e64 v13, null, 0, v1, vcc_lo
	v_add_co_u32 v16, vcc_lo, v0, 56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, 0, v1, vcc_lo
	v_add_co_u32 v18, vcc_lo, v14, 16
	v_add_co_ci_u32_e64 v19, null, 0, v15, vcc_lo
	v_add_co_u32 v20, vcc_lo, v14, 32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, 0, v15, vcc_lo
	v_add_co_u32 v22, vcc_lo, v14, 48
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[24:25], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[30:31], v[8:9]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v23, null, 0, v15, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[24:25], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[30:31], v[0:1]
	v_dual_mov_b32 v209, 0 :: v_dual_add_nc_u32 v0, s34, v193
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[24:25], v[4:5]
	v_cmp_le_i64_e64 s9, s[24:25], v[20:21]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[30:31], v[4:5]
	v_cmp_gt_i64_e64 s21, s[30:31], v[20:21]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s66, s3, s15
	.loc	1 1049 17 is_stmt 1             ; ragged.py:1049:17
	s_lshl_b32 s3, s33, 1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[24:25], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[30:31], v[2:3]
	v_dual_mov_b32 v206, 0 :: v_dual_add_nc_u32 v3, 48, v0
	.loc	1 1153 29 is_stmt 1             ; ragged.py:1153:29
	s_mul_i32 s3, s3, s23
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s64, s1, s13
	s_and_b32 s1, s9, s21
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s21, s3, s38
	v_cmp_eq_u32_e64 s3, 0, v76
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[24:25], v[12:13]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[30:31], v[12:13]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	v_mul_lo_u32 v3, s60, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[24:25], v[22:23]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[30:31], v[22:23]
	v_dual_mov_b32 v69, 0 :: v_dual_and_b32 v22, 31, v192
	.loc	1 1045 36 is_stmt 1             ; ragged.py:1045:36
	v_and_b32_e32 v26, 0x7f, v192
	v_cndmask_b32_e64 v4, 0x88, 0, s3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[24:25], v[10:11]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[30:31], v[10:11]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s68, s5, s17
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_mul_i32 s5, s60, s38
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[24:25], v[6:7]
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s3, s5, 1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[30:31], v[6:7]
	v_dual_mov_b32 v254, 0 :: v_dual_lshlrev_b32 v189, 1, v3
	v_mov_b32_e32 v3, v22
	v_xor_b32_e32 v6, v4, v26
	v_lshrrev_b32_e32 v4, 1, v25
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_or_b32 s3, s3, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s67, s4, s16
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_mul_i32 s4, s33, s3
	s_lshl_b32 s3, s54, 8
	v_dual_mov_b32 v208, 0 :: v_dual_add_nc_u32 v1, 16, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[24:25], v[14:15]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s19, s[30:31], v[14:15]
	v_add3_u32 v186, 0, v193, v4
	v_dual_mov_b32 v203, 0 :: v_dual_lshlrev_b32 v4, 5, v192
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	v_add3_u32 v14, s4, s3, v192
	s_mul_i32 s5, s5, s33
	v_dual_mov_b32 v207, 0 :: v_dual_add_nc_u32 v2, 32, v0
	v_dual_mov_b32 v202, 0 :: v_dual_add_nc_u32 v11, s34, v24
	s_lshl_b32 s4, s37, 8
	s_lshl_b32 s5, s5, 1
	v_mul_lo_u32 v1, s60, v1
	v_mul_lo_u32 v0, s60, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[24:25], v[18:19]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[30:31], v[18:19]
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_lshrrev_b32_e32 v21, 7, v76
	v_dual_mov_b32 v70, 0 :: v_dual_lshlrev_b32 v9, 2, v194
	v_dual_mov_b32 v201, 0 :: v_dual_and_b32 v4, 32, v4
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_subrev_nc_u32_e32 v14, s4, v14
	v_add3_u32 v18, s5, s3, v192
	v_dual_mov_b32 v179, 0 :: v_dual_add_nc_u32 v20, 56, v11
	v_mul_lo_u32 v2, s60, v2
	v_add3_u32 v4, 0, v9, v4
	v_dual_mov_b32 v200, 0 :: v_dual_lshlrev_b32 v9, 1, v194
	v_dual_mov_b32 v177, 0 :: v_dual_lshlrev_b32 v194, 1, v14
	v_subrev_nc_u32_e32 v14, s4, v18
	v_dual_mov_b32 v255, 0 :: v_dual_lshlrev_b32 v18, 1, v21
	v_dual_mov_b32 v205, 0 :: v_dual_lshlrev_b32 v10, 1, v192
	v_dual_mov_b32 v174, 0 :: v_dual_lshlrev_b32 v191, 1, v1
	v_dual_mov_b32 v249, 0 :: v_dual_lshlrev_b32 v192, 1, v0
	v_mad_u64_u32 v[0:1], null, v20, s23, v[22:23]
	s_mul_i32 s5, s23, s38
	v_dual_mov_b32 v178, 0 :: v_dual_add_nc_u32 v19, 48, v11
	v_dual_mov_b32 v169, 0 :: v_dual_lshlrev_b32 v190, 1, v2
	v_lshl_add_u32 v2, s5, 1, v18
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[18:19], null, v19, s23, v[22:23]
	scratch_store_b64 off, v[0:1], off offset:204 ; 8-byte Folded Spill
	v_dual_mov_b32 v210, 0 :: v_dual_lshlrev_b32 v27, 1, v26
	v_mul_lo_u32 v0, s33, v2
	s_add_i32 s5, s3, s33
	v_dual_mov_b32 v196, 0 :: v_dual_add_nc_u32 v15, 24, v11
	v_dual_mov_b32 v252, 0 :: v_dual_add_nc_u32 v1, 61, v2
	v_dual_mov_b32 v251, 0 :: v_dual_lshlrev_b32 v188, 1, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v0, s5, v0, v27
	v_mad_u64_u32 v[14:15], null, v15, s23, v[22:23]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v1, s33, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[24:25], v[16:17]
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_subrev_nc_u32_e32 v0, s4, v0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[30:31], v[16:17]
	v_dual_mov_b32 v198, 0 :: v_dual_add_nc_u32 v13, 16, v11
	v_dual_mov_b32 v180, 0 :: v_dual_add_nc_u32 v17, 40, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v0, 1, v0
	v_dual_mov_b32 v204, 0 :: v_dual_and_b32 v5, 24, v10
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[18:19], off offset:212
	scratch_store_b64 off, v[14:15], off offset:236
	scratch_store_b32 off, v0, off offset:268
	v_mad_u64_u32 v[17:18], null, v17, s23, v[22:23]
	v_mad_u64_u32 v[13:14], null, v13, s23, v[22:23]
	v_mul_lo_u32 v0, s33, v21
	v_add3_u32 v1, v1, s3, v27
	v_lshl_or_b32 v8, v193, 5, v5
	s_clause 0x4                            ; 24-byte Folded Spill
	scratch_store_b32 off, v6, off offset:196
	scratch_store_b32 off, v10, off offset:192
	scratch_store_b64 off, v[3:4], off offset:184
	scratch_store_b32 off, v21, off offset:180
	scratch_store_b32 off, v8, off offset:200
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v12, 8, v11
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v16, 32, v11
	v_dual_mov_b32 v172, 0 :: v_dual_add_nc_u32 v3, 57, v2
	v_subrev_nc_u32_e32 v1, s4, v1
	scratch_store_b64 off, v[17:18], off offset:220 ; 8-byte Folded Spill
	v_mad_u64_u32 v[16:17], null, v16, s23, v[22:23]
	v_mul_lo_u32 v3, s33, v3
	v_dual_mov_b32 v95, 0 :: v_dual_lshlrev_b32 v0, 1, v0
	scratch_store_b64 off, v[13:14], off offset:244 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, v12, s23, v[22:23]
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v1, 1, v1
	scratch_store_b64 off, v[16:17], off offset:228 ; 8-byte Folded Spill
	v_mov_b32_e32 v90, 0
	v_mov_b32_e32 v170, 0
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v1, off offset:276
	scratch_store_b64 off, v[12:13], off offset:252
	scratch_store_b32 off, v193, off offset:420
	v_add3_u32 v1, v3, s3, v27
	v_mad_u64_u32 v[11:12], null, v11, s23, v[22:23]
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v13, 49, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_subrev_nc_u32_e32 v1, s4, v1
	v_mov_b32_e32 v89, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v1, 1, v1
	scratch_store_b64 off, v[11:12], off offset:260 ; 8-byte Folded Spill
	v_or_b32_e32 v12, 30, v21
	v_add_nc_u32_e32 v11, 53, v2
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v14, 37, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v12, s33, v12
	v_mul_lo_u32 v11, s33, v11
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_mov_b32_e32 v130, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v135, 0 :: v_dual_lshlrev_b32 v12, 1, v12
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 28, v21
	v_add3_u32 v3, v11, s3, v27
	v_mul_lo_u32 v11, s33, v13
	v_add_nc_u32_e32 v13, 45, v2
	scratch_store_b32 off, v12, off offset:280 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s33, v0
	v_subrev_nc_u32_e32 v3, s4, v3
	v_or_b32_e32 v12, 26, v21
	v_mul_lo_u32 v13, s33, v13
	v_mov_b32_e32 v158, 0
	v_mov_b32_e32 v152, 0
	v_mov_b32_e32 v134, 0
	v_mov_b32_e32 v132, 0
	v_lshlrev_b32_e32 v0, 1, v0
	scratch_store_b32 off, v1, off offset:284 ; 4-byte Folded Spill
	v_add3_u32 v1, v11, s3, v27
	v_add3_u32 v11, v13, s3, v27
	v_dual_mov_b32 v164, 0 :: v_dual_add_nc_u32 v13, 41, v2
	v_mov_b32_e32 v133, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v1, s4, v1
	v_subrev_nc_u32_e32 v11, s4, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v13, s33, v13
	v_mov_b32_e32 v156, 0
	v_dual_mov_b32 v248, 0 :: v_dual_add_nc_u32 v1, 1, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:288
	scratch_store_b32 off, v76, off offset:428
	v_add_nc_u32_e32 v0, 1, v3
	v_or_b32_e32 v3, 24, v21
	scratch_store_b32 off, v1, off offset:300 ; 4-byte Folded Spill
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v154, 0
	v_mov_b32_e32 v131, 0
	v_mul_lo_u32 v3, s33, v3
	v_mov_b32_e32 v129, 0
	v_mov_b32_e32 v159, 0
	v_xor_b32_e32 v5, 0x110, v6
	v_xor_b32_e32 v6, 8, v8
	v_mov_b32_e32 v160, 0
	v_xor_b32_e32 v7, 16, v8
	v_xor_b32_e32 v8, 24, v8
	v_lshlrev_b32_e32 v1, 1, v3
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s33, v12
	v_or_b32_e32 v12, 22, v21
	v_dual_mov_b32 v199, 0 :: v_dual_and_b32 v10, 28, v10
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v181, s61, 8, v27
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v230, 0, v9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mul_lo_u32 v12, s33, v12
	v_lshlrev_b32_e32 v0, 1, v0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v157, 0
	v_mov_b32_e32 v162, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v253, 0
	v_lshlrev_b32_e32 v3, 1, v12
	scratch_store_b32 off, v1, off offset:304 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 1, v11
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s33, v14
	v_or_b32_e32 v11, 20, v21
	v_or_b32_e32 v12, 18, v21
	v_or_b32_e32 v14, 16, v21
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v148, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v11, s33, v11
	v_mul_lo_u32 v12, s33, v12
	v_add3_u32 v0, v0, s3, v27
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v125, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v0, s4, v0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v103, 0
	v_lshlrev_b32_e32 v12, 1, v12
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v123, 0
	v_add_nc_u32_e32 v0, 1, v0
	scratch_store_b32 off, v3, off offset:312 ; 4-byte Folded Spill
	v_add3_u32 v3, v13, s3, v27
	v_add_nc_u32_e32 v13, 29, v2
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v102, 0
	v_mov_b32_e32 v121, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v3, s4, v3
	v_mul_lo_u32 v13, s33, v13
	v_mov_b32_e32 v163, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v124, 0
	v_mov_b32_e32 v93, 0
	v_add_nc_u32_e32 v3, 1, v3
	scratch_store_b32 off, v1, off offset:308 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 33, v2
	v_mov_b32_e32 v151, 0
	v_mov_b32_e32 v247, 0
	scratch_store_b32 off, v3, off offset:316 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v3, 1, v11
	v_add_nc_u32_e32 v11, 25, v2
	v_mul_lo_u32 v1, s33, v1
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v126, 0
	v_mov_b32_e32 v119, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v11, s33, v11
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v122, 0
	v_mov_b32_e32 v111, 0
	v_add3_u32 v1, v1, s3, v27
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v120, 0
	v_mov_b32_e32 v71, 0
	v_add3_u32 v11, v11, s3, v27
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v118, 0
	v_mov_b32_e32 v75, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v11, s4, v11
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v72, 0
	v_mov_b32_e32 v99, 0
	v_add_nc_u32_e32 v11, 1, v11
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s4, v1
	v_mul_lo_u32 v1, s33, v14
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v225, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v0, 1, v0
	scratch_store_b32 off, v3, off offset:320 ; 4-byte Folded Spill
	v_add3_u32 v3, v13, s3, v27
	v_lshlrev_b32_e32 v1, 1, v1
	scratch_store_b32 off, v12, off offset:328 ; 4-byte Folded Spill
	v_or_b32_e32 v12, 14, v21
	v_or_b32_e32 v13, 10, v21
	v_subrev_nc_u32_e32 v3, s4, v3
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v79, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v3, 1, v3
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 21, v2
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v85, 0
	v_mul_lo_u32 v0, s33, v0
	v_mov_b32_e32 v80, 0
	v_mov_b32_e32 v78, 0
	v_mov_b32_e32 v82, 0
	v_mov_b32_e32 v84, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, vcc_lo, s11
	s_and_b32 s63, s0, s12
	s_and_b32 s65, s2, s14
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add3_u32 v0, v0, s3, v27
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s69, s6, s18
	s_and_b32 vcc_lo, s7, s19
	s_and_b32 s0, s8, s20
	s_and_b32 s2, s10, s22
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_subrev_nc_u32_e32 v0, s4, v0
	s_and_b32 s49, s41, 0xffff
	s_mov_b32 s48, s40
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	v_add_nc_u32_e32 v0, 1, v0
	scratch_store_b32 off, v3, off offset:340 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v12
	v_add_nc_u32_e32 v12, 17, v2
	s_and_b32 s53, s43, 0xffff
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 9, v2
	s_mov_b32 s52, s42
	v_mul_lo_u32 v12, s33, v12
	s_add_u32 s22, s21, s33
	v_lshlrev_b32_e32 v3, 1, v3
	scratch_store_b32 off, v1, off offset:336 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 12, v21
	v_mul_lo_u32 v0, s33, v0
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s57, s47, 0xffff
	s_mov_b32 s56, s46
	v_mul_lo_u32 v1, s33, v1
	s_lshl_b32 s70, s33, 2
	s_lshl_b32 s71, s33, 6
	s_mov_b32 s37, s36
	v_add3_u32 v0, v0, s3, v27
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	v_lshlrev_b32_e32 v1, 1, v1
	v_subrev_nc_u32_e32 v0, s4, v0
	scratch_store_b32 off, v3, off offset:344 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v13
	v_add_nc_u32_e32 v13, 13, v2
	v_add_nc_u32_e32 v2, 5, v2
	v_add_nc_u32_e32 v0, 1, v0
	scratch_store_b32 off, v1, off offset:352 ; 4-byte Folded Spill
	v_add3_u32 v1, v12, s3, v27
	v_or_b32_e32 v12, 4, v21
	s_mov_b32 s41, s36
	v_lshlrev_b32_e32 v3, 1, v3
	scratch_store_b32 off, v11, off offset:348 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v1, s4, v1
	v_mul_lo_u32 v12, s33, v12
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_mul_lo_u32 v11, s33, v13
	v_or_b32_e32 v13, 2, v21
	v_add_nc_u32_e32 v1, 1, v1
	scratch_store_b32 off, v3, off offset:360 ; 4-byte Folded Spill
	v_or_b32_e32 v3, 8, v21
	s_mov_b32 s42, s36
	v_lshlrev_b32_e32 v0, 1, v12
	scratch_store_b32 off, v1, off offset:364 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s33, v2
	v_mul_lo_u32 v2, s33, v3
	v_add3_u32 v11, v11, s3, v27
	v_or_b32_e32 v3, 6, v21
	v_mul_lo_u32 v13, s33, v13
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	s_mov_b32 s43, s36
	v_subrev_nc_u32_e32 v11, s4, v11
	v_add3_u32 v1, v1, s3, v27
	v_lshlrev_b32_e32 v2, 1, v2
	v_mul_lo_u32 v3, s33, v3
	s_mov_b32 s72, s36
	s_mov_b32 s73, s36
	v_subrev_nc_u32_e32 v1, s4, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 1, v1
	scratch_store_b32 off, v2, off offset:368 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 1, v11
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v0, 1, v13
	scratch_store_b32 off, v2, off offset:372 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v2, 1, v3
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:376
	scratch_store_b32 off, v0, off offset:396
	v_add_nc_u32_e32 v0, 0, v6
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v7
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v8
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, v4, v10
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[0:1], off, off offset:184
	scratch_load_b32 v16, off, off offset:280
	s_clause 0x12                           ; 76-byte Folded Spill
	scratch_store_b32 off, v69, off offset:72
	scratch_store_b32 off, v70, off offset:68
	scratch_store_b32 off, v71, off offset:64
	scratch_store_b32 off, v122, off offset:60
	scratch_store_b32 off, v72, off offset:56
	scratch_store_b32 off, v123, off offset:52
	scratch_store_b32 off, v68, off offset:48
	scratch_store_b32 off, v73, off offset:44
	scratch_store_b32 off, v116, off offset:40
	scratch_store_b32 off, v114, off offset:36
	scratch_store_b32 off, v130, off offset:32
	scratch_store_b32 off, v78, off offset:28
	scratch_store_b32 off, v81, off offset:24
	scratch_store_b32 off, v110, off offset:20
	scratch_store_b32 off, v80, off offset:16
	scratch_store_b32 off, v99, off offset:12
	scratch_store_b32 off, v115, off offset:8
	scratch_store_b32 off, v79, off offset:4
	scratch_store_b32 off, v100, off
	v_mov_b32_e32 v110, v172
	v_mov_b32_e32 v172, v153
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v1, off, off offset:392
	scratch_load_b64 v[17:18], off, off offset:260
	v_mov_b32_e32 v153, v129
	v_mov_b32_e32 v171, v152
	v_mov_b32_e32 v99, v169
	v_mov_b32_e32 v169, v150
	v_mov_b32_e32 v49, v163
	v_mov_b32_e32 v163, v142
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s46, s50
	s_mov_b32 s47, s51
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s58, s50
	s_mov_b32 s59, s51
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s60, s60, -1
	v_mov_b32_e32 v129, v113
	v_mov_b32_e32 v113, v74
	v_mov_b32_e32 v100, v170
	v_mov_b32_e32 v170, v151
	v_dual_mov_b32 v152, v109 :: v_dual_mov_b32 v109, v126
	v_dual_mov_b32 v126, v77 :: v_dual_mov_b32 v151, v127
	v_mov_b32_e32 v150, v103
	v_dual_mov_b32 v127, v75 :: v_dual_mov_b32 v182, v178
	v_mov_b32_e32 v178, v159
	v_mov_b32_e32 v159, v139
	v_mov_b32_e32 v139, v121
	v_mov_b32_e32 v103, v82
	v_mov_b32_e32 v184, v86
	v_dual_mov_b32 v168, v146 :: v_dual_mov_b32 v187, v87
	v_mov_b32_e32 v146, v134
	v_mov_b32_e32 v134, v112
	v_dual_mov_b32 v112, v89 :: v_dual_mov_b32 v175, v156
	v_mov_b32_e32 v156, v133
	v_dual_mov_b32 v142, v93 :: v_dual_mov_b32 v133, v111
	v_dual_mov_b32 v166, v143 :: v_dual_mov_b32 v111, v88
	v_dual_mov_b32 v143, v94 :: v_dual_mov_b32 v114, v205
	v_mov_b32_e32 v122, v203
	v_mov_b32_e32 v176, v157
	v_mov_b32_e32 v157, v137
	v_dual_mov_b32 v137, v118 :: v_dual_mov_b32 v118, v96
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v105, v90 :: v_dual_add_nc_u32 v0, s73, v0
	s_waitcnt vmcnt(2)
	v_add3_u32 v232, v16, s72, v181
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_gt_i32_e64 s19, s23, v0
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add3_u32 v246, v1, s72, v181
	v_add_nc_u32_e32 v16, s21, v232
	s_and_b32 s20, s62, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v2, s21, v246
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s73, v0
	v_add_nc_u32_e32 v1, 2, v0
	v_cmp_gt_i32_e64 s18, s23, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_gt_i32_e64 s15, s23, v1
	scratch_load_b32 v1, off, off offset:384 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v2, 0x80000000, v2, s15
	s_waitcnt vmcnt(0)
	v_add3_u32 v245, v1, s72, v181
	v_add_nc_u32_e32 v1, 4, v0
	v_mov_b32_e32 v183, v177
	v_dual_mov_b32 v177, v138 :: v_dual_mov_b32 v138, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, s21, v245
	v_cmp_gt_i32_e64 s16, s23, v1
	scratch_load_b32 v1, off, off offset:376 ; 4-byte Folded Reload
	v_mov_b32_e32 v120, v104
	v_dual_mov_b32 v104, v83 :: v_dual_mov_b32 v193, v180
	v_cndmask_b32_e64 v3, 0x80000000, v3, s16
	v_mov_b32_e32 v180, v162
	v_mov_b32_e32 v162, v141
	v_mov_b32_e32 v141, v117
	v_mov_b32_e32 v117, v95
	s_waitcnt vmcnt(0)
	v_add3_u32 v244, v1, s72, v181
	v_add_nc_u32_e32 v1, 6, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v4, s21, v244
	v_cmp_gt_i32_e64 s17, s23, v1
	scratch_load_b32 v1, off, off offset:368 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v4, 0x80000000, v4, s17
	s_waitcnt vmcnt(0)
	v_add3_u32 v243, v1, s72, v181
	v_add_nc_u32_e32 v1, 8, v0
	v_dual_mov_b32 v121, v108 :: v_dual_mov_b32 v108, v97
	v_mov_b32_e32 v97, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v5, s21, v243
	v_cmp_gt_i32_e64 s14, s23, v1
	scratch_load_b32 v1, off, off offset:360 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v5, 0x80000000, v5, s14
	s_waitcnt vmcnt(0)
	v_add3_u32 v242, v1, s72, v181
	v_add_nc_u32_e32 v1, 10, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v6, s21, v242
	v_cmp_gt_i32_e64 s11, s23, v1
	scratch_load_b32 v1, off, off offset:352 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v6, 0x80000000, v6, s11
	s_waitcnt vmcnt(0)
	v_add3_u32 v241, v1, s72, v181
	v_add_nc_u32_e32 v1, 12, v0
	v_dual_mov_b32 v167, v144 :: v_dual_mov_b32 v144, v119
	v_mov_b32_e32 v119, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v7, s21, v241
	v_cmp_gt_i32_e64 s12, s23, v1
	scratch_load_b32 v1, off, off offset:344 ; 4-byte Folded Reload
	v_dual_mov_b32 v98, v85 :: v_dual_mov_b32 v173, v154
	v_mov_b32_e32 v154, v131
	v_cndmask_b32_e64 v7, 0x80000000, v7, s12
	s_waitcnt vmcnt(0)
	v_add3_u32 v240, v1, s72, v181
	v_add_nc_u32_e32 v1, 14, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v8, s21, v240
	v_cmp_gt_i32_e64 s13, s23, v1
	scratch_load_b32 v1, off, off offset:336 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v8, 0x80000000, v8, s13
	s_waitcnt vmcnt(0)
	v_add3_u32 v239, v1, s72, v181
	v_add_nc_u32_e32 v1, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v9, s21, v239
	v_cmp_gt_i32_e64 s10, s23, v1
	scratch_load_b32 v1, off, off offset:328 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v9, 0x80000000, v9, s10
	s_waitcnt vmcnt(0)
	v_add3_u32 v238, v1, s72, v181
	v_add_nc_u32_e32 v1, 18, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v10, s21, v238
	v_cmp_gt_i32_e64 s7, s23, v1
	scratch_load_b32 v1, off, off offset:320 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v10, 0x80000000, v10, s7
	s_waitcnt vmcnt(0)
	v_add3_u32 v236, v1, s72, v181
	v_add_nc_u32_e32 v1, 20, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v11, s21, v236
	v_cmp_gt_i32_e64 s8, s23, v1
	scratch_load_b32 v1, off, off offset:312 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v11, 0x80000000, v11, s8
	s_waitcnt vmcnt(0)
	v_add3_u32 v235, v1, s72, v181
	v_add_nc_u32_e32 v1, 22, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v12, s21, v235
	v_cmp_gt_i32_e64 s9, s23, v1
	scratch_load_b32 v1, off, off offset:304 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v12, 0x80000000, v12, s9
	s_waitcnt vmcnt(0)
	v_add3_u32 v234, v1, s72, v181
	v_add_nc_u32_e32 v1, 24, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v13, s21, v234
	v_cmp_gt_i32_e64 s6, s23, v1
	scratch_load_b32 v1, off, off offset:296 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v13, 0x80000000, v13, s6
	s_waitcnt vmcnt(0)
	v_add3_u32 v233, v1, s72, v181
	v_add_nc_u32_e32 v1, 26, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v14, s21, v233
	v_cmp_gt_i32_e64 s3, s23, v1
	scratch_load_b32 v1, off, off offset:288 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v14, 0x80000000, v14, s3
	s_waitcnt vmcnt(0)
	v_add3_u32 v231, v1, s72, v181
	v_add_nc_u32_e32 v1, 28, v0
	v_add_nc_u32_e32 v0, 30, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v15, s21, v231
	v_cmp_gt_i32_e64 s4, s23, v1
	scratch_load_b32 v1, off, off offset:272 ; 4-byte Folded Reload
	v_cmp_gt_i32_e64 s5, s23, v0
	v_cndmask_b32_e64 v15, 0x80000000, v15, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v16, 0x80000000, v16, s5
	s_waitcnt vmcnt(0)
	v_add3_u32 v250, v1, s72, v181
	v_add_nc_u32_e32 v1, s21, v250
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v1, s18
	v_add_nc_u32_e32 v1, s73, v17
	s_clause 0x6                            ; 56-byte Folded Reload
	scratch_load_b64 v[17:18], off, off offset:252
	scratch_load_b64 v[18:19], off, off offset:244
	scratch_load_b64 v[19:20], off, off offset:236
	scratch_load_b64 v[20:21], off, off offset:228
	scratch_load_b64 v[21:22], off, off offset:220
	scratch_load_b64 v[22:23], off, off offset:212
	scratch_load_b64 v[23:24], off, off offset:204
	v_cndmask_b32_e64 v1, 0x80000000, v1, s20
	s_and_b32 s20, s63, s19
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v17, s73, v17
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v18, s73, v18
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v19, s73, v19
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v20, s73, v20
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v21, s73, v21
	v_cndmask_b32_e64 v17, 0x80000000, v17, s20
	s_and_b32 s20, s64, s19
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v22, s73, v22
	v_cndmask_b32_e64 v18, 0x80000000, v18, s20
	s_and_b32 s20, s65, s19
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s73, v23
	v_cndmask_b32_e64 v19, 0x80000000, v19, s20
	s_and_b32 s20, s66, s19
	s_add_i32 s73, s73, 32
	v_cndmask_b32_e64 v20, 0x80000000, v20, s20
	s_and_b32 s20, s67, s19
	s_delay_alu instid0(SALU_CYCLE_1)
	v_cndmask_b32_e64 v21, 0x80000000, v21, s20
	s_and_b32 s20, s68, s19
	s_and_b32 s19, s69, s19
	v_cndmask_b32_e64 v22, 0x80000000, v22, s20
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v1, v1, s[48:51], 0 offen
	buffer_load_u8 v18, v18, s[48:51], 0 offen
	buffer_load_u8 v20, v20, s[48:51], 0 offen
	buffer_load_u8 v22, v22, s[48:51], 0 offen
	buffer_load_u8 v23, v23, s[48:51], 0 offen
	buffer_load_u8 v21, v21, s[48:51], 0 offen
	buffer_load_u8 v19, v19, s[48:51], 0 offen
	buffer_load_u8 v17, v17, s[48:51], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0xf
	buffer_load_u16 v0, v0, s[52:55], 0 offen
	buffer_load_u16 v2, v2, s[52:55], 0 offen
	buffer_load_u16 v3, v3, s[52:55], 0 offen
	buffer_load_u16 v4, v4, s[52:55], 0 offen
	buffer_load_u16 v5, v5, s[52:55], 0 offen
	buffer_load_u16 v6, v6, s[52:55], 0 offen
	buffer_load_u16 v7, v7, s[52:55], 0 offen
	buffer_load_u16 v8, v8, s[52:55], 0 offen
	buffer_load_u16 v41, v9, s[52:55], 0 offen
	buffer_load_u16 v42, v10, s[52:55], 0 offen
	buffer_load_u16 v43, v11, s[52:55], 0 offen
	buffer_load_u16 v44, v12, s[52:55], 0 offen
	buffer_load_u16 v45, v13, s[52:55], 0 offen
	buffer_load_u16 v46, v14, s[52:55], 0 offen
	buffer_load_u16 v47, v15, s[52:55], 0 offen
	buffer_load_u16 v48, v16, s[52:55], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v9, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, 0, v9
	ds_store_b8 v9, v1
	ds_store_b8 v9, v18 offset:512
	ds_store_b8 v9, v20 offset:1024
	ds_store_b8 v9, v22 offset:1536
	scratch_load_b32 v1, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v17
	ds_store_b8 v1, v19 offset:512
	ds_store_b8 v1, v21 offset:1024
	ds_store_b8 v1, v23 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, 0, v1
	ds_load_2addr_stride64_b64 v[25:28], v1 offset1:1
	ds_load_2addr_stride64_b64 v[9:12], v1 offset0:2 offset1:3
	scratch_load_b32 v1, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[29:32], v1 offset1:1
	ds_load_2addr_stride64_b64 v[13:16], v1 offset0:2 offset1:3
	scratch_load_b32 v1, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[33:36], v1 offset1:1
	ds_load_2addr_stride64_b64 v[17:20], v1 offset0:2 offset1:3
	scratch_load_b32 v1, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[37:40], v1 offset1:1
	ds_load_2addr_stride64_b64 v[21:24], v1 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v237, 0, v1
	ds_store_b16 v237, v0
	ds_store_b16 v237, v2 offset:512
	ds_store_b16 v237, v3 offset:1024
	ds_store_b16 v237, v4 offset:1536
	ds_store_b16 v237, v5 offset:2048
	ds_store_b16 v237, v6 offset:2560
	ds_store_b16 v237, v7 offset:3072
	ds_store_b16 v237, v8 offset:3584
	ds_store_b16 v237, v41 offset:4096
	ds_store_b16 v237, v42 offset:4608
	ds_store_b16 v237, v43 offset:5120
	ds_store_b16 v237, v44 offset:5632
	ds_store_b16 v237, v45 offset:6144
	ds_store_b16 v237, v46 offset:6656
	ds_store_b16 v237, v47 offset:7168
	ds_store_b16 v237, v48 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v186 offset:1280
	ds_load_u8 v1, v186 offset:1024
	ds_load_u8 v50, v186 offset:1920
	ds_load_u8 v51, v186 offset:1664
	ds_load_u8 v52, v186 offset:1408
	ds_load_u8 v53, v186 offset:1152
	ds_load_u8 v74, v186 offset:2432
	ds_load_u8 v82, v186 offset:4480
	ds_load_u8 v88, v186 offset:7040
	ds_load_u8 v89, v186 offset:6784
	ds_load_u8 v93, v186 offset:6528
	ds_load_u8 v94, v186 offset:6272
	ds_load_u8 v83, v186 offset:4224
	ds_load_u8 v75, v186 offset:2176
	ds_load_u8 v77, v186 offset:5760
	ds_load_u8 v78, v186 offset:5504
	ds_load_u8 v79, v186 offset:5248
	ds_load_u8 v84, v186 offset:8064
	ds_load_u8 v85, v186 offset:7808
	ds_load_u8 v86, v186 offset:7552
	ds_load_u8 v87, v186 offset:7296
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v186 offset:1792
	ds_load_u8 v2, v186 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v186 offset:256
	ds_load_u8 v3, v186
	ds_load_u8 v54, v186 offset:896
	ds_load_u8 v55, v186 offset:640
	ds_load_u8 v56, v186 offset:384
	ds_load_u8 v57, v186 offset:128
	v_lshl_or_b32 v64, v1, 16, v0
	ds_load_u8 v0, v186 offset:3328
	ds_load_u8 v1, v186 offset:3072
	ds_load_u8 v58, v186 offset:3968
	ds_load_u8 v59, v186 offset:3712
	ds_load_u8 v60, v186 offset:3456
	ds_load_u8 v61, v186 offset:3200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v186 offset:768
	ds_load_u8 v4, v186 offset:512
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v3, 16, v2
	ds_load_u8 v1, v186 offset:3840
	ds_load_u8 v2, v186 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v186 offset:2304
	ds_load_u8 v3, v186 offset:2048
	ds_load_u8 v62, v186 offset:2944
	ds_load_u8 v73, v186 offset:2688
	v_lshl_or_b32 v66, v1, 16, v0
	ds_load_u8 v0, v186 offset:5376
	ds_load_u8 v1, v186 offset:5120
	ds_load_u8 v76, v186 offset:6016
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v186 offset:2816
	ds_load_u8 v4, v186 offset:2560
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v3, 16, v2
	ds_load_u8 v1, v186 offset:5888
	ds_load_u8 v2, v186 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v186 offset:4352
	ds_load_u8 v3, v186 offset:4096
	ds_load_u8 v80, v186 offset:4992
	ds_load_u8 v81, v186 offset:4736
	v_lshl_or_b32 v68, v1, 16, v0
	ds_load_u8 v0, v186 offset:7424
	ds_load_u8 v1, v186 offset:7168
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v186 offset:4864
	ds_load_u8 v4, v186 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v3, 16, v2
	ds_load_u8 v1, v186 offset:7936
	ds_load_u8 v2, v186 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v186 offset:6400
	ds_load_u8 v3, v186 offset:6144
	v_lshl_or_b32 v70, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v186 offset:6912
	ds_load_u8 v4, v186 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v3, 16, v2
	v_dual_mov_b32 v1, s36 :: v_dual_mov_b32 v2, s37
	v_dual_mov_b32 v3, s38 :: v_dual_mov_b32 v4, s39
	v_dual_mov_b32 v5, s40 :: v_dual_mov_b32 v6, s41
	v_dual_mov_b32 v7, s42 :: v_dual_mov_b32 v8, s43
	v_wmma_i32_16x16x16_iu4 v[41:48], v[63:64], v[25:26], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[65:66], v[29:30], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[33:34], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[69:70], v[37:38], v[41:48] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v42
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v223, v41
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v43
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v43, v53, v52, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v44
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v44, v51, v50, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v45
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v45, v57, v56, 0xc0c0004
	v_lshl_or_b32 v72, v44, 16, v43
	v_perm_b32 v43, v61, v60, 0xc0c0004
	v_perm_b32 v44, v59, v58, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v46
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v46, v55, v54, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v71, v46, 16, v45
	v_perm_b32 v45, v75, v74, 0xc0c0004
	v_perm_b32 v46, v73, v62, 0xc0c0004
	v_lshl_or_b32 v74, v44, 16, v43
	v_perm_b32 v43, v79, v78, 0xc0c0004
	v_perm_b32 v44, v77, v76, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[53:60], v[71:72], v[25:26], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v73, v46, 16, v45
	v_perm_b32 v45, v83, v82, 0xc0c0004
	v_perm_b32 v46, v81, v80, 0xc0c0004
	v_lshl_or_b32 v76, v44, 16, v43
	v_perm_b32 v43, v87, v86, 0xc0c0004
	v_perm_b32 v44, v85, v84, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[53:60], v[73:74], v[29:30], v[53:60] neg_lo:[1,1,0]
	v_lshl_or_b32 v75, v46, 16, v45
	v_perm_b32 v45, v94, v93, 0xc0c0004
	v_perm_b32 v46, v89, v88, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v47
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v212, v44, 16, v43
	v_wmma_i32_16x16x16_iu4 v[53:60], v[75:76], v[33:34], v[53:60] neg_lo:[1,1,0]
	v_mov_b32_e32 v44, v210
	v_lshl_or_b32 v211, v46, 16, v45
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v48
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[53:60], v[211:212], v[37:38], v[53:60] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v53
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v58
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v59
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v60
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v54
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v55
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v56
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v57
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[54:61], v[63:64], v[27:28], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[54:61], v[65:66], v[31:32], v[54:61] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[54:61], v[67:68], v[35:36], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[54:61], v[69:70], v[39:40], v[54:61] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v210, v54
	v_cvt_f32_i32_e32 v42, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v43, v56
	v_cvt_f32_i32_e32 v45, v57
	v_cvt_f32_i32_e32 v205, v58
	v_cvt_f32_i32_e32 v48, v59
	v_cvt_f32_i32_e32 v51, v60
	v_cvt_f32_i32_e32 v116, v61
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[54:61], v[71:72], v[27:28], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[54:61], v[73:74], v[31:32], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[54:61], v[75:76], v[35:36], v[54:61] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[54:61], v[211:212], v[39:40], v[54:61] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v54
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v59
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v60
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v61
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v55
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v56
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v57
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v58
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[54:61], v[63:64], v[9:10], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[54:61], v[65:66], v[13:14], v[54:61] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[54:61], v[67:68], v[17:18], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[54:61], v[69:70], v[21:22], v[54:61] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v222, v54
	v_cvt_f32_i32_e32 v221, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v220, v56
	v_cvt_f32_i32_e32 v219, v57
	v_cvt_f32_i32_e32 v218, v58
	v_cvt_f32_i32_e32 v217, v59
	v_cvt_f32_i32_e32 v215, v60
	v_cvt_f32_i32_e32 v213, v61
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[54:61], v[71:72], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[54:61], v[73:74], v[13:14], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[54:61], v[75:76], v[17:18], v[54:61] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[54:61], v[211:212], v[21:22], v[54:61] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v203, v55
	v_cvt_f32_i32_e32 v53, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v115, v57
	v_cvt_f32_i32_e32 v130, v58
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v60
	v_cvt_f32_i32_e32 v123, v54
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v61
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[55:62], v[63:64], v[11:12], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:268 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[55:62], v[65:66], v[15:16], v[55:62] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[55:62], v[67:68], v[19:20], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[55:62], v[69:70], v[23:24], v[55:62] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v54, v56
	v_cvt_f32_i32_e32 v50, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v229, v58
	v_cvt_f32_i32_e32 v228, v59
	v_cvt_f32_i32_e32 v227, v60
	v_cvt_f32_i32_e32 v226, v61
	v_cvt_f32_i32_e32 v224, v62
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[56:63], v[71:72], v[11:12], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[56:63], v[73:74], v[15:16], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[75:76], v[19:20], v[56:63] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[211:212], v[23:24], v[56:63] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v211, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v214, v59
	v_add_nc_u32_e32 v59, s22, v244
	v_cvt_f32_i32_e32 v216, v58
	v_add_nc_u32_e32 v58, s22, v245
	v_cvt_f32_i32_e32 v185, v57
	v_add_nc_u32_e32 v57, s22, v246
	v_cvt_f32_i32_e32 v212, v56
	v_add_nc_u32_e32 v56, s22, v250
	v_cndmask_b32_e64 v59, 0x80000000, v59, s17
	v_cndmask_b32_e64 v58, 0x80000000, v58, s16
	v_cndmask_b32_e64 v57, 0x80000000, v57, s15
	v_cvt_f32_i32_e32 v46, v61
	v_cndmask_b32_e64 v56, 0x80000000, v56, s18
	v_cvt_f32_i32_e32 v47, v62
	v_cvt_f32_i32_e32 v52, v63
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v60, s72, v0
	scratch_load_b32 v0, off, off offset:388 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v60, 0x80000000, v60, s18
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x4
	buffer_load_u8 v60, v60, s[52:55], 0 offen
	buffer_load_u8 v59, v59, s[52:55], 0 offen
	buffer_load_u8 v58, v58, s[52:55], 0 offen
	buffer_load_u8 v57, v57, s[52:55], 0 offen
	buffer_load_u8 v61, v56, s[52:55], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v56.l, 8, v60.l
	v_add_nc_u32_e32 v60, s72, v0
	scratch_load_b32 v0, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_or_b16 v56.l, v61.l, v56.l
	v_cndmask_b32_e64 v60, 0x80000000, v60, s15
	v_add_nc_u32_e32 v61, s22, v240
	buffer_load_u8 v60, v60, s[52:55], 0 offen
	v_cndmask_b32_e64 v61, 0x80000000, v61, s13
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v56.h, 8, v60.l
	v_dual_mov_b32 v131, v125 :: v_dual_add_nc_u32 v60, s22, v241
	v_dual_mov_b32 v125, v106 :: v_dual_mov_b32 v106, v91
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b16 v56.h, v57.l, v56.h
	v_add_nc_u32_e32 v57, s72, v0
	scratch_load_b32 v0, off, off offset:372 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v60, 0x80000000, v60, s12
	v_cndmask_b32_e64 v57, 0x80000000, v57, s16
	buffer_load_u8 v57, v57, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v57.l, 8, v57.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v57.l, v58.l, v57.l
	v_add_nc_u32_e32 v58, s72, v0
	scratch_load_b32 v0, off, off offset:364 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v58, 0x80000000, v58, s17
	buffer_load_u8 v58, v58, s[52:55], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v62, s72, v0
	scratch_load_b32 v0, off, off offset:356 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v62, 0x80000000, v62, s14
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v57.h, 8, v58.l
	v_add_nc_u32_e32 v58, s22, v243
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v57.h, v59.l, v57.h
	v_add_nc_u32_e32 v59, s22, v242
	v_cndmask_b32_e64 v58, 0x80000000, v58, s14
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v59, 0x80000000, v59, s11
	s_clause 0x4
	buffer_load_u8 v62, v62, s[52:55], 0 offen
	buffer_load_u8 v61, v61, s[52:55], 0 offen
	buffer_load_u8 v60, v60, s[52:55], 0 offen
	buffer_load_u8 v59, v59, s[52:55], 0 offen
	buffer_load_u8 v63, v58, s[52:55], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v58.l, 8, v62.l
	v_add_nc_u32_e32 v62, s72, v0
	scratch_load_b32 v0, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_or_b16 v58.l, v63.l, v58.l
	v_cndmask_b32_e64 v62, 0x80000000, v62, s11
	v_add_nc_u32_e32 v63, s22, v235
	buffer_load_u8 v62, v62, s[52:55], 0 offen
	v_cndmask_b32_e64 v63, 0x80000000, v63, s9
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v58.h, 8, v62.l
	v_add_nc_u32_e32 v62, s22, v236
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b16 v58.h, v59.l, v58.h
	v_add_nc_u32_e32 v59, s72, v0
	scratch_load_b32 v0, off, off offset:340 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v62, 0x80000000, v62, s8
	v_cndmask_b32_e64 v59, 0x80000000, v59, s12
	buffer_load_u8 v59, v59, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v59.l, 8, v59.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v59.l, v60.l, v59.l
	v_add_nc_u32_e32 v60, s72, v0
	scratch_load_b32 v0, off, off offset:332 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v60, 0x80000000, v60, s13
	buffer_load_u8 v60, v60, s[52:55], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v64, s72, v0
	scratch_load_b32 v0, off, off offset:324 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v64, 0x80000000, v64, s10
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v59.h, 8, v60.l
	v_add_nc_u32_e32 v60, s22, v239
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v59.h, v61.l, v59.h
	v_add_nc_u32_e32 v61, s22, v238
	v_cndmask_b32_e64 v60, 0x80000000, v60, s10
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v61, 0x80000000, v61, s7
	s_clause 0x4
	buffer_load_u8 v64, v64, s[52:55], 0 offen
	buffer_load_u8 v63, v63, s[52:55], 0 offen
	buffer_load_u8 v62, v62, s[52:55], 0 offen
	buffer_load_u8 v61, v61, s[52:55], 0 offen
	buffer_load_u8 v65, v60, s[52:55], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v60.l, 8, v64.l
	v_add_nc_u32_e32 v64, s72, v0
	scratch_load_b32 v0, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_or_b16 v60.l, v65.l, v60.l
	v_cndmask_b32_e64 v64, 0x80000000, v64, s7
	v_add_nc_u32_e32 v65, s22, v232
	buffer_load_u8 v64, v64, s[52:55], 0 offen
	v_cndmask_b32_e64 v65, 0x80000000, v65, s5
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v60.h, 8, v64.l
	v_add_nc_u32_e32 v64, s22, v231
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b16 v60.h, v61.l, v60.h
	v_add_nc_u32_e32 v61, s72, v0
	scratch_load_b32 v0, off, off offset:308 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v64, 0x80000000, v64, s4
	v_cndmask_b32_e64 v61, 0x80000000, v61, s8
	buffer_load_u8 v61, v61, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v61.l, 8, v61.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v61.l, v62.l, v61.l
	v_add_nc_u32_e32 v62, s72, v0
	scratch_load_b32 v0, off, off offset:300 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v62, 0x80000000, v62, s9
	buffer_load_u8 v62, v62, s[52:55], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v66, s72, v0
	scratch_load_b32 v0, off, off offset:292 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v66, 0x80000000, v66, s6
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v61.h, 8, v62.l
	v_add_nc_u32_e32 v62, s22, v234
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v61.h, v63.l, v61.h
	v_add_nc_u32_e32 v63, s22, v233
	v_cndmask_b32_e64 v62, 0x80000000, v62, s6
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v63, 0x80000000, v63, s3
	s_clause 0x4
	buffer_load_u8 v66, v66, s[52:55], 0 offen
	buffer_load_u8 v65, v65, s[52:55], 0 offen
	buffer_load_u8 v64, v64, s[52:55], 0 offen
	buffer_load_u8 v63, v63, s[52:55], 0 offen
	buffer_load_u8 v67, v62, s[52:55], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v62.l, 8, v66.l
	v_add_nc_u32_e32 v66, s72, v0
	scratch_load_b32 v0, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_or_b16 v62.l, v67.l, v62.l
	v_cndmask_b32_e64 v66, 0x80000000, v66, s3
	buffer_load_u8 v66, v66, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v62.h, 8, v66.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v62.h, v63.l, v62.h
	v_add_nc_u32_e32 v63, s72, v0
	scratch_load_b32 v0, off, off offset:276 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v63, 0x80000000, v63, s4
	buffer_load_u8 v63, v63, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v63.l, 8, v63.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_or_b16 v63.l, v64.l, v63.l
	v_add_nc_u32_e32 v64, s72, v0
	v_dual_mov_b32 v0, v107 :: v_dual_mov_b32 v107, v92
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s72, s72, s71
	s_cmp_lg_u32 s60, 0
	v_cndmask_b32_e64 v64, 0x80000000, v64, s5
	.loc	1 1185 39                       ; ragged.py:1185:39
	buffer_load_u8 v64, v64, s[52:55], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v63.h, 8, v64.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v63.h, v65.l, v63.h
	ds_store_b16 v237, v56
	ds_store_b16_d16_hi v237, v56 offset:512
	ds_store_b16 v237, v57 offset:1024
	ds_store_b16_d16_hi v237, v57 offset:1536
	ds_store_b16 v237, v58 offset:2048
	ds_store_b16_d16_hi v237, v58 offset:2560
	ds_store_b16 v237, v59 offset:3072
	ds_store_b16_d16_hi v237, v59 offset:3584
	ds_store_b16 v237, v60 offset:4096
	ds_store_b16_d16_hi v237, v60 offset:4608
	ds_store_b16 v237, v61 offset:5120
	ds_store_b16_d16_hi v237, v61 offset:5632
	ds_store_b16 v237, v62 offset:6144
	ds_store_b16_d16_hi v237, v62 offset:6656
	ds_store_b16 v237, v63 offset:7168
	ds_store_b16_d16_hi v237, v63 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v56, v186 offset:1280
	ds_load_u8 v57, v186 offset:1024
	ds_load_u8 v64, v186 offset:1920
	ds_load_u8 v65, v186 offset:1664
	ds_load_u8 v66, v186 offset:1408
	ds_load_u8 v67, v186 offset:1152
	ds_load_u8 v95, v186 offset:6016
	ds_load_u8 v90, v186 offset:7040
	ds_load_u8 v91, v186 offset:6784
	ds_load_u8 v96, v186 offset:5760
	ds_load_u8 v231, v186 offset:5504
	ds_load_u8 v239, v186 offset:5248
	ds_load_u8 v92, v186 offset:6528
	ds_load_u8 v101, v186 offset:6272
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	ds_load_u8 v57, v186 offset:1792
	ds_load_u8 v58, v186 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v186 offset:256
	ds_load_u8 v59, v186
	ds_load_u8 v68, v186 offset:896
	ds_load_u8 v69, v186 offset:640
	ds_load_u8 v70, v186 offset:384
	ds_load_u8 v71, v186 offset:128
	v_lshl_or_b32 v79, v57, 16, v56
	ds_load_u8 v56, v186 offset:3328
	ds_load_u8 v57, v186 offset:3072
	ds_load_u8 v72, v186 offset:3968
	ds_load_u8 v73, v186 offset:3712
	ds_load_u8 v74, v186 offset:3456
	ds_load_u8 v75, v186 offset:3200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v186 offset:768
	ds_load_u8 v60, v186 offset:512
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v59, 16, v58
	ds_load_u8 v57, v186 offset:3840
	ds_load_u8 v58, v186 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v186 offset:2304
	ds_load_u8 v59, v186 offset:2048
	ds_load_u8 v76, v186 offset:2944
	ds_load_u8 v77, v186 offset:2688
	ds_load_u8 v88, v186 offset:2432
	ds_load_u8 v89, v186 offset:2176
	v_lshl_or_b32 v87, v57, 16, v56
	ds_load_u8 v56, v186 offset:5376
	ds_load_u8 v57, v186 offset:5120
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v186 offset:2816
	ds_load_u8 v60, v186 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v59, 16, v58
	ds_load_u8 v57, v186 offset:5888
	ds_load_u8 v58, v186 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v186 offset:4352
	ds_load_u8 v59, v186 offset:4096
	ds_load_u8 v240, v186 offset:4992
	ds_load_u8 v241, v186 offset:4736
	ds_load_u8 v242, v186 offset:4480
	ds_load_u8 v243, v186 offset:4224
	v_lshl_or_b32 v81, v57, 16, v56
	ds_load_u8 v56, v186 offset:7424
	ds_load_u8 v57, v186 offset:7168
	ds_load_u8 v244, v186 offset:8064
	ds_load_u8 v245, v186 offset:7808
	ds_load_u8 v246, v186 offset:7552
	ds_load_u8 v250, v186 offset:7296
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v186 offset:4864
	ds_load_u8 v60, v186 offset:4608
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v59, 16, v58
	ds_load_u8 v57, v186 offset:7936
	ds_load_u8 v58, v186 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v186 offset:6400
	ds_load_u8 v59, v186 offset:6144
	v_lshl_or_b32 v83, v57, 16, v56
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v186 offset:6912
	ds_load_u8 v60, v186 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v82, v59, 16, v58
	v_wmma_i32_16x16x16_iu4 v[56:63], v[78:79], v[25:26], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[86:87], v[29:30], v[56:63] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[80:81], v[33:34], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[82:83], v[37:38], v[56:63] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v41, v56
	v_cvt_f32_i32_e32 v238, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v237, v58
	v_cvt_f32_i32_e32 v236, v59
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v56, v67, v66, 0xc0c0004
	v_perm_b32 v57, v65, v64, 0xc0c0004
	v_perm_b32 v58, v71, v70, 0xc0c0004
	v_perm_b32 v59, v69, v68, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v235, v60
	v_cvt_f32_i32_e32 v234, v61
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v85, v57, 16, v56
	v_perm_b32 v56, v75, v74, 0xc0c0004
	v_lshl_or_b32 v84, v59, 16, v58
	v_perm_b32 v57, v73, v72, 0xc0c0004
	v_perm_b32 v58, v89, v88, 0xc0c0004
	v_perm_b32 v59, v77, v76, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v233, v62
	v_cvt_f32_i32_e32 v232, v63
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v94, v57, 16, v56
	v_perm_b32 v56, v239, v231, 0xc0c0004
	v_lshl_or_b32 v93, v59, 16, v58
	v_perm_b32 v57, v96, v95, 0xc0c0004
	v_perm_b32 v58, v243, v242, 0xc0c0004
	v_perm_b32 v59, v241, v240, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v96, v57, 16, v56
	v_perm_b32 v56, v250, v246, 0xc0c0004
	v_lshl_or_b32 v95, v59, 16, v58
	v_perm_b32 v57, v245, v244, 0xc0c0004
	v_perm_b32 v58, v101, v92, 0xc0c0004
	v_perm_b32 v59, v91, v90, 0xc0c0004
	v_dual_mov_b32 v91, v106 :: v_dual_mov_b32 v92, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v89, v57, 16, v56
	v_mov_b32_e32 v107, v0
	v_lshl_or_b32 v88, v59, 16, v58
	v_wmma_i32_16x16x16_iu4 v[56:63], v[84:85], v[25:26], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v90, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[93:94], v[29:30], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[95:96], v[33:34], v[56:63] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[88:89], v[37:38], v[56:63] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v29, v63
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[63:70], v[78:79], v[27:28], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v25, v61
	v_cvt_f32_i32_e32 v26, v62
	v_cvt_f32_i32_e32 v34, v58
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[63:70], v[86:87], v[31:32], v[63:70] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v33, v59
	v_cvt_f32_i32_e32 v30, v60
	v_cvt_f32_i32_e32 v231, v56
	v_cvt_f32_i32_e32 v37, v57
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[63:70], v[80:81], v[35:36], v[63:70] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[63:70], v[82:83], v[39:40], v[63:70] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v62, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v61, v64
	v_cvt_f32_i32_e32 v250, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v246, v66
	v_cvt_f32_i32_e32 v242, v67
	v_cvt_f32_i32_e32 v241, v68
	v_cvt_f32_i32_e32 v240, v69
	v_cvt_f32_i32_e32 v239, v70
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[63:70], v[84:85], v[27:28], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[63:70], v[93:94], v[31:32], v[63:70] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[63:70], v[95:96], v[35:36], v[63:70] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[63:70], v[88:89], v[39:40], v[63:70] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v31, v70
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[70:77], v[78:79], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v28, v69
	v_cvt_f32_i32_e32 v35, v63
	v_cvt_f32_i32_e32 v39, v64
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[70:77], v[86:87], v[13:14], v[70:77] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v27, v68
	v_cvt_f32_i32_e32 v38, v65
	v_cvt_f32_i32_e32 v36, v66
	v_cvt_f32_i32_e32 v32, v67
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[70:77], v[80:81], v[17:18], v[70:77] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[70:77], v[82:83], v[21:22], v[70:77] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v60, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v69, v71
	v_cvt_f32_i32_e32 v59, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v58, v73
	v_cvt_f32_i32_e32 v245, v74
	v_cvt_f32_i32_e32 v244, v75
	v_cvt_f32_i32_e32 v243, v76
	v_cvt_f32_i32_e32 v40, v77
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[70:77], v[84:85], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[70:77], v[93:94], v[13:14], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[70:77], v[95:96], v[17:18], v[70:77] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[70:77], v[88:89], v[21:22], v[70:77] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v17, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v9, v75
	v_cvt_f32_i32_e32 v10, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v13, v77
	v_cvt_f32_i32_e32 v22, v71
	v_cvt_f32_i32_e32 v21, v72
	v_cvt_f32_i32_e32 v18, v73
	v_cvt_f32_i32_e32 v14, v74
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[70:77], v[78:79], v[11:12], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[70:77], v[86:87], v[15:16], v[70:77] neg_lo:[1,1,0]
	v_dual_mov_b32 v86, v184 :: v_dual_mov_b32 v87, v187
	v_wmma_i32_16x16x16_iu4 v[70:77], v[80:81], v[19:20], v[70:77] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[70:77], v[82:83], v[23:24], v[70:77] neg_lo:[1,1,0]
	v_mov_b32_e32 v83, v104
	v_mov_b32_e32 v104, v120
	v_mov_b32_e32 v120, v138
	v_mov_b32_e32 v138, v177
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v78, v70
	v_cvt_f32_i32_e32 v79, v71
	v_cvt_f32_i32_e32 v80, v72
	v_cvt_f32_i32_e32 v81, v73
	v_cvt_f32_i32_e32 v57, v74
	v_cvt_f32_i32_e32 v64, v75
	v_cvt_f32_i32_e32 v63, v76
	v_cvt_f32_i32_e32 v56, v77
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[70:77], v[84:85], v[11:12], v[1:8] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v11, 0x80000000, v192, vcc_lo
	v_cndmask_b32_e64 v12, 0x80000000, v191, s0
	v_mov_b32_e32 v85, v98
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[70:77], v[93:94], v[15:16], v[70:77] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v16, 0x80000000, v189, s2
	s_clause 0x1
	buffer_load_u16 v11, v11, s[44:47], 0 offen
	buffer_load_u16 v12, v12, s[44:47], 0 offen
	v_cndmask_b32_e64 v15, 0x80000000, v190, s1
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[70:77], v[95:96], v[19:20], v[70:77] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v16, v16, s[44:47], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v19, v188, s[56:59], 0 offen
	v_dual_mov_b32 v98, v119 :: v_dual_mov_b32 v119, v144
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v15, v15, s[44:47], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v20, off, off offset:412 ; 4-byte Folded Reload
	v_mov_b32_e32 v144, v167
	v_mov_b32_e32 v84, v97
	v_dual_mov_b32 v106, v125 :: v_dual_mov_b32 v125, v131
	v_dual_mov_b32 v131, v154 :: v_dual_mov_b32 v154, v173
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[70:77], v[88:89], v[23:24], v[70:77] neg_lo:[1,1,0]
	v_mov_b32_e32 v89, v112
	v_dual_mov_b32 v97, v108 :: v_dual_mov_b32 v112, v134
	v_mov_b32_e32 v82, v103
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v5, v70
	v_cvt_f32_i32_e32 v8, v71
	v_cvt_f32_i32_e32 v7, v72
	v_cvt_f32_i32_e32 v6, v73
	v_mov_b32_e32 v103, v150
	v_dual_mov_b32 v93, v142 :: v_dual_mov_b32 v142, v163
	v_mov_b32_e32 v163, v49
	v_dual_mov_b32 v177, v183 :: v_dual_mov_b32 v96, v118
	v_dual_mov_b32 v150, v169 :: v_dual_mov_b32 v169, v99
	v_mov_b32_e32 v118, v137
	v_dual_mov_b32 v108, v121 :: v_dual_mov_b32 v121, v139
	v_dual_mov_b32 v134, v146 :: v_dual_mov_b32 v139, v159
	v_dual_mov_b32 v146, v168 :: v_dual_mov_b32 v159, v178
	v_mov_b32_e32 v88, v111
	v_dual_mov_b32 v94, v143 :: v_dual_mov_b32 v137, v157
	v_mov_b32_e32 v157, v176
	v_cvt_f32_i32_e32 v1, v75
	v_mov_b32_e32 v75, v127
	v_cvt_f32_i32_e32 v3, v77
	v_mov_b32_e32 v111, v133
	v_cvt_f32_i32_e32 v4, v74
	v_mov_b32_e32 v178, v182
	v_cvt_f32_i32_e32 v2, v76
	v_dual_mov_b32 v143, v166 :: v_dual_mov_b32 v74, v113
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v189, 2, v189
	v_add_nc_u32_e32 v191, 2, v191
	v_add_nc_u32_e32 v190, 2, v190
	v_add_nc_u32_e32 v192, 2, v192
	v_add_nc_u32_e32 v188, s70, v188
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v11, 16, v11
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v127, v151 :: v_dual_lshlrev_b32 v12, 16, v12
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v1, v16
	v_mul_f32_e32 v2, v2, v16
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v20, v19
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[65:68], v230
	ds_load_b128 v[70:73], v230 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v11, v223
	v_dual_mov_b32 v77, v126 :: v_dual_mov_b32 v126, v109
	v_dual_mov_b32 v109, v152 :: v_dual_mov_b32 v152, v171
	v_mov_b32_e32 v113, v129
	v_mov_b32_e32 v129, v153
	v_dual_mov_b32 v153, v172 :: v_dual_mov_b32 v172, v110
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v3, v3, v16
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v4, v16, v4 :: v_dual_fmac_f32 v161, v19, v65
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v11, v0
	scratch_load_b32 v0, off, off offset:172 ; 4-byte Folded Reload
	v_mov_b32_e32 v95, v117
	v_mov_b32_e32 v117, v141
	v_dual_mov_b32 v141, v162 :: v_dual_mov_b32 v162, v180
	v_mov_b32_e32 v180, v193
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v162, v19, v66
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v11, v0
	scratch_load_b32 v0, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v164, v19, v67
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v11, v0
	scratch_load_b32 v0, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v163, v19, v68
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v12, v210
	v_mov_b32_e32 v133, v156
	v_mov_b32_e32 v210, v44
	v_mov_b32_e32 v156, v175
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v136, v19, v65 :: v_dual_mul_f32 v19, v12, v42
	v_fmac_f32_e32 v137, v19, v66
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v12, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v139, v19, v67
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v12, v45
	v_dual_mov_b32 v151, v170 :: v_dual_mov_b32 v170, v100
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v138, v19, v68
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v15, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v93, v19, v65
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v15, v221
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v94, v19, v66
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v15, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v119, v19, v67
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v15, v219
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v118, v19, v68 :: v_dual_mul_f32 v19, v16, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v98, v19, v65 :: v_dual_mul_f32 v19, v16, v54
	v_fmac_f32_e32 v104, v19, v66
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v16, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v74, v19, v67 :: v_dual_mul_f32 v19, v16, v229
	v_fmac_f32_e32 v225, v19, v68
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v11, v0
	scratch_load_b32 v0, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v152, v19, v70
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v11, v0
	scratch_load_b32 v0, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v153, v19, v71
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v11, v0
	scratch_load_b32 v0, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v154, v19, v72
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v11, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v155, v0, v73
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v12, v205
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v109, v0, v70
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v12, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v129, v0, v71
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v12, v51
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v131, v0, v72
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v12, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v132, v0, v73
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v15, v218
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v112, v0, v70
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v15, v217
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v86, v0, v71
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v15, v215
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v87, v0, v72 :: v_dual_mul_f32 v0, v15, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v113, v0, v73
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v16, v228
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v88, v0, v70
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v16, v227
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v89, v0, v71
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v0, v16, v226 :: v_dual_mul_f32 v9, v9, v15
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v13, v13, v15 :: v_dual_mul_f32 v14, v15, v14
	v_mul_f32_e32 v10, v10, v15
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v90, v0, v72
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v16, v224
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v91, v0, v73
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[65:68], v230 offset:512
	ds_load_b128 v[70:73], v230 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v11
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v202, v0, v65
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v11, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v144, v0, v66
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v11, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v145, v0, v67
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v11, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v146, v0, v68
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v205, v114 :: v_dual_mul_f32 v0, v0, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v180, v0, v65
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v12, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v253, v0, v66
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v12, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v125, v0, v67
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v12, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v103, v0, v68 :: v_dual_mul_f32 v0, v123, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v254, v0, v65
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v0, v15, v203 :: v_dual_mov_b32 v203, v122
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v77, v0, v66 :: v_dual_mul_f32 v0, v15, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v0, v67
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v15, v115
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v107, v0, v68
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v212, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v251, v0, v65
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v16, v185
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v82, v0, v66
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v16, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v83, v0, v67
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v16, v214
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v85, v0, v68
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:48
	scratch_load_b32 v0, off, off offset:88
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v11, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v147, v0, v70
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v11
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v200, v0, v71
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v198, v0, v72
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v11
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v196, v0, v73
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v12, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v126, v0, v70
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v178, v0, v71
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v177, v0, v72
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v255, v0, v73 :: v_dual_mul_f32 v0, v15, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v108, v0, v70
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v15
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v174, v0, v71
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v252, v0, v72
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v15
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v172, v0, v73
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v16, v211
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v84, v0, v70
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v46, v16
	scratch_load_b32 v70, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v170, v0, v71
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v47, v16
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v71, off, off offset:64
	scratch_load_b32 v122, off, off offset:60
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v169, v0, v72
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v52, v16
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v72, off, off offset:56
	scratch_load_b32 v123, off, off offset:52
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v249, v0, v73
	.loc	1 1218 45                       ; ragged.py:1218:45
	buffer_load_u16 v0, v194, s[56:59], 0 offen
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v73, off, off offset:44
	scratch_load_b32 v114, off, off offset:36
	scratch_load_b32 v130, off, off offset:32
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v194, s70, v194
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v20, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v41
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v230
	ds_load_b128 v[45:48], v230 offset:16
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v248, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v247, v0, v42 :: v_dual_mul_f32 v0, v11, v237
	v_fmac_f32_e32 v160, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v165, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v62
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v143, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v142, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v250
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v141, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v140, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v60
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v123, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v69
	scratch_load_b32 v69, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v122, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v120, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v58
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v121, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v78
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v78, off, off offset:28
	scratch_load_b32 v99, off, off offset:12
	scratch_load_b32 v115, off, off offset:8
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v106, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v79
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v79, off, off offset:4
	scratch_load_b32 v100, off, off
	scratch_load_b32 v116, off, off offset:40
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v100, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v80
	scratch_load_b32 v80, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v99, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v81
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v81, off, off offset:24
	scratch_load_b32 v110, off, off offset:20
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v73, v0, v44 :: v_dual_mul_f32 v0, v11, v235
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v159, v0, v45 :: v_dual_mul_f32 v0, v11, v234
	v_fmac_f32_e32 v158, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v156, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v232
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v157, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v135, v0, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v241
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v134, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v133, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v239
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v130, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v117, v0, v45 :: v_dual_mul_f32 v0, v15, v244
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v116, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v114, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v40
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v115, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v97, v0, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v64
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v96, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v95, v0, v47
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[40:43], v230 offset:512
	ds_load_b128 v[44:47], v230 offset:528
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v56
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v92, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v231, v11
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v68, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v0, v11, v37 :: v_dual_fmac_f32 v71, v14, v44
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v70, v9, v45
	v_dual_fmac_f32 v201, v13, v47 :: v_dual_fmac_f32 v78, v4, v44
	v_dual_fmac_f32 v151, v0, v41 :: v_dual_mul_f32 v0, v11, v34
	v_fmac_f32_e32 v197, v1, v45
	v_fmac_f32_e32 v195, v2, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v179, v3, v47 :: v_dual_fmac_f32 v150, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v33
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v149, v0, v43 :: v_dual_mul_f32 v0, v35, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v39
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v128, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v127, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v36
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v102, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v17, v15 :: v_dual_mul_f32 v17, v31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v204, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v15, v22 :: v_dual_fmac_f32 v205, v17, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v111, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v21
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v110, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v72, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v5, v16 :: v_dual_mul_f32 v5, v26, v11
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v199, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v8, v27, v12 :: v_dual_fmac_f32 v209, v5, v46
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v81, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v16, v7 :: v_dual_mul_f32 v7, v11, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v207, v8, v45
	v_fmac_f32_e32 v203, v10, v46
	v_fmac_f32_e32 v80, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v6
	v_mul_f32_e32 v6, v29, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v148, v7, v44 :: v_dual_fmac_f32 v79, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v25, v11 :: v_dual_mul_f32 v11, v28, v12
	v_mul_f32_e32 v12, v12, v32
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v208, v6, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v210, v0, v45
	v_fmac_f32_e32 v206, v11, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v124, v12, v44
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v192, off, off offset:416
	scratch_load_b32 v193, off, off offset:420
	scratch_load_b32 v194, off, off offset:424
	scratch_load_b32 v76, off, off offset:428
	s_branch .LBB0_5
.LBB0_4:
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v252, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v202, 0
.LBB0_5:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v68 :: v_dual_mul_f32 v1, 0xbfb8aa3b, v209
	v_dual_mul_f32 v41, 0xbfb8aa3b, v143 :: v_dual_mul_f32 v14, 0xbfb8aa3b, v205
	v_mul_f32_e32 v47, 0xbfb8aa3b, v128
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v0, 0xbfb8aa3b, v210 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v157
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v1
	v_mul_f32_e32 v181, 0xbfb8aa3b, v106
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v7, 0, 0x42800000, s0
	v_dual_mul_f32 v27, 0xbfb8aa3b, v179 :: v_dual_mul_f32 v24, 0xbfb8aa3b, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v68
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v2, 0xbfb8aa3b, v208 :: v_dual_fmac_f32 v7, 0xbfb8aa3b, v209
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v4, v4
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v210
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v2
	v_exp_f32_e32 v12, v7
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, s0
	v_dual_mul_f32 v8, 0xbfb8aa3b, v247 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v248
	v_cndmask_b32_e64 v11, 0, 0x42800000, s1
	v_exp_f32_e32 v1, v1
	v_mul_f32_e32 v30, 0xbfb8aa3b, v158
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_ldexp_f32 v3, v4, v3
	v_dual_mul_f32 v4, 0xbfb8aa3b, v69 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v140
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v208
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s1
	v_ldexp_f32 v12, v12, v2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_mul_f32_e32 v2, 0xbfb8aa3b, v207
	v_exp_f32_e32 v11, v11
	v_ldexp_f32 v13, v1, v0
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v14
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v42, 0xbfb8aa3b, v134
	v_mul_f32_e32 v35, 0xbfb8aa3b, v130
	v_cndmask_b32_e64 v17, 0, 0x42800000, s1
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v69
	v_ldexp_f32 v10, v11, v10
	v_mul_f32_e32 v11, 0xbfb8aa3b, v206
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v205
	v_exp_f32_e32 v4, v4
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v11
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v36, 0xbfb8aa3b, v133
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v17, v17
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_dual_fmac_f32 v11, 0xbfb8aa3b, v207 :: v_dual_mul_f32 v40, 0xbfb8aa3b, v124
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v18, v4, v1
	v_dual_mul_f32 v1, 0xbfb8aa3b, v204 :: v_dual_mul_f32 v188, 0xbfb8aa3b, v121
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v206
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v11, v11
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_add_f32 v12, 1.0, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v15, v15
	v_dual_mul_f32 v3, 0xbfb8aa3b, v80 :: v_dual_add_f32 v10, 1.0, v10
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v11, v11, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v70
	v_mul_f32_e32 v189, 0xbfb8aa3b, v122
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v204
	v_ldexp_f32 v14, v15, v14
	v_ldexp_f32 v15, v17, v16
	v_mul_f32_e32 v16, 0xbfb8aa3b, v203
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_mul_f32_e32 v17, 0xbfb8aa3b, v201
	v_exp_f32_e32 v4, v4
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v17
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v18, v18, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v70
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	v_mul_f32_e32 v190, 0xbfb8aa3b, v123
	v_ldexp_f32 v34, v4, v1
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v203
	v_exp_f32_e32 v16, v16
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v201
	v_mul_f32_e32 v1, 0xbfb8aa3b, v199
	v_mul_f32_e32 v4, 0xbfb8aa3b, v195
	v_exp_f32_e32 v19, v19
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s0
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v64, s1, v209, v12, v209
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v16, v16, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v197
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v15, 1.0, v15 :: v_dual_add_f32 v34, 1.0, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v17, v19, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_ldexp_f32 v19, v21, v20
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v49, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v27
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v27, 0xbfb8aa3b, v97
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v197
	v_cndmask_b32_e64 v52, 0, 0x42800000, s0
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v195
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s0
	v_dual_mul_f32 v21, 0xbfb8aa3b, v92 :: v_dual_fmac_f32 v2, 0xbfb8aa3b, v199
	v_exp_f32_e32 v49, v49
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v179
	v_exp_f32_e32 v55, v4
	v_mul_f32_e32 v4, 0xbfb8aa3b, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, null, v53, v53, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, vcc_lo, v68, v53, v68
	v_rcp_f32_e32 v57, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v20, v49, v20
	v_exp_f32_e32 v2, v2
	v_ldexp_f32 v49, v55, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, null, v12, v12, v209
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v52, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v52, null, v13, v13, v210
	v_fma_f32 v51, -v54, v57, 1.0
	v_rcp_f32_e32 v59, v55
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v56, v2, v1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v16, 1.0, v16 :: v_dual_add_f32 v17, 1.0, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v51, v57
	v_rcp_f32_e32 v51, v52
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v56, 1.0, v56 :: v_dual_add_f32 v49, 1.0, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v5, 0xbfb8aa3b, v160 :: v_dual_mul_f32 v6, 0xbfb8aa3b, v165
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v60, v58, v57
	v_fma_f32 v63, -v55, v59, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v26, 0xbfb8aa3b, v156 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v159
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v52, v51, 1.0
	v_fma_f32 v62, -v54, v60, v58
	v_fmac_f32_e32 v59, v63, v59
	v_div_scale_f32 v63, null, v10, v10, v208
	v_fmac_f32_e32 v51, v61, v51
	v_div_scale_f32 v61, s0, v210, v13, v210
	v_fmac_f32_e32 v60, v62, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v65, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v37, 0xbfb8aa3b, v150 :: v_dual_mul_f32 v38, 0xbfb8aa3b, v151
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v62, v61, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v54, v60, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v31, 0xbfb8aa3b, v148 :: v_dual_mul_f32 v32, 0xbfb8aa3b, v149
	v_dual_mul_f32 v33, 0xbfb8aa3b, v141 :: v_dual_mul_f32 v0, 0xbfb8aa3b, v142
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v52, v62, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v54, v54, v57, v60
	v_fma_f32 v60, -v63, v65, 1.0
	v_rcp_f32_e32 v57, v67
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v62, v58, v51
	v_div_fixup_f32 v53, v54, v53, v68
	v_fmac_f32_e32 v65, v60, v65
	v_div_scale_f32 v54, s2, v208, v10, v208
	v_mul_f32_e32 v66, v64, v59
	v_fma_f32 v52, -v52, v62, v61
	v_div_scale_f32 v60, s0, v69, v18, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v191, 0xbfb8aa3b, v135 :: v_dual_mul_f32 v44, 0xbfb8aa3b, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v55, v66, v64
	v_div_fmas_f32 v51, v52, v51, v62
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v43, 0xbfb8aa3b, v102 :: v_dual_mul_f32 v48, 0xbfb8aa3b, v127
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v58, v59
	v_fma_f32 v58, -v67, v57, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v13, v51, v13, v210
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v186, 0xbfb8aa3b, v116 :: v_dual_mul_f32 v187, 0xbfb8aa3b, v117
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v55, v66, v64
	v_mul_f32_e32 v55, v54, v65
	v_fmac_f32_e32 v57, v58, v57
	v_div_scale_f32 v58, null, v11, v11, v207
	v_div_scale_f32 v64, null, v14, v14, v206
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v61, -v63, v55, v54
	v_dual_mul_f32 v62, v60, v57 :: v_dual_mul_f32 v45, 0xbfb8aa3b, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v46, 0xbfb8aa3b, v114
	v_dual_mul_f32 v184, 0xbfb8aa3b, v110 :: v_dual_mul_f32 v185, 0xbfb8aa3b, v111
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v61, v65
	v_div_fmas_f32 v52, v52, v59, v66
	v_rcp_f32_e32 v59, v58
	v_fma_f32 v51, -v67, v62, v60
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v54, -v63, v55, v54
	v_div_fixup_f32 v12, v52, v12, v209
	v_rcp_f32_e32 v52, v64
	v_div_scale_f32 v63, null, v15, v15, v205
	v_fmac_f32_e32 v62, v51, v57
	v_div_scale_f32 v51, s1, v207, v11, v207
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v61, -v58, v59, 1.0
	v_div_fmas_f32 v54, v54, v65, v55
	v_fma_f32 v55, -v67, v62, v60
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v66, -v64, v52, 1.0
	v_fmac_f32_e32 v59, v61, v59
	v_rcp_f32_e32 v61, v63
	v_div_scale_f32 v68, s0, v205, v15, v205
	v_fmac_f32_e32 v52, v66, v52
	v_div_scale_f32 v65, s2, v206, v14, v206
	v_div_fmas_f32 v55, v55, v57, v62
	v_div_fixup_f32 v10, v54, v10, v208
	v_div_scale_f32 v67, null, v34, v34, v204
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v66, -v63, v61, 1.0
	v_mul_f32_e32 v60, v51, v59
	v_div_fixup_f32 v54, v55, v18, v69
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v182, 0xbfb8aa3b, v71 :: v_dual_mul_f32 v183, 0xbfb8aa3b, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v66, v61
	v_fma_f32 v57, -v58, v60, v51
	v_rcp_f32_e32 v66, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v29, 0xbfb8aa3b, v100 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v55, v68, v61 :: v_dual_mul_f32 v62, v65, v52
	v_fmac_f32_e32 v60, v57, v59
	v_div_scale_f32 v57, null, v16, v16, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v25, 0xbfb8aa3b, v99 :: v_dual_mul_f32 v28, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v18, -v64, v62, v65
	v_fma_f32 v51, -v58, v60, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v58, v57
	v_fma_f32 v69, -v67, v66, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v1, 0xbfb8aa3b, v78 :: v_dual_mul_f32 v2, 0xbfb8aa3b, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v18, v52
	v_fma_f32 v18, -v63, v55, v68
	v_div_fmas_f32 v51, v51, v59, v60
	s_mov_b32 vcc_lo, s2
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
.Ltmp4:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v64, v62, v65
	v_fmac_f32_e32 v55, v18, v61
	v_fma_f32 v60, -v57, v58, 1.0
	v_div_fixup_f32 v11, v51, v11, v207
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v52, v59, v52, v62
	v_fma_f32 v59, -v63, v55, v68
	v_fmac_f32_e32 v58, v60, v58
	v_div_scale_f32 v60, null, v17, v17, v203
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v63, s1, v70, v16, v70
	v_div_fmas_f32 v55, v59, v61, v55
	v_rcp_f32_e32 v59, v60
	v_fmac_f32_e32 v66, v69, v66
	v_div_scale_f32 v69, s3, v204, v34, v204
	v_mul_f32_e32 v61, v63, v58
	v_div_fixup_f32 v14, v52, v14, v206
	v_div_fixup_f32 v51, v55, v15, v205
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v18, v69, v66
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v52, -v57, v61, v63
	v_div_scale_f32 v55, null, v19, v19, v201
	v_fma_f32 v62, -v67, v18, v69
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 s29, s29, 0xffff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v52, v58
	v_div_scale_f32 v52, s0, v203, v17, v203
	v_fmac_f32_e32 v18, v62, v66
	v_fma_f32 v62, -v60, v59, 1.0
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v14, v177, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v15, -v67, v18, v69
	v_fmac_f32_e32 v59, v62, v59
	v_div_scale_f32 v62, null, v56, v56, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v15, v15, v66, v18
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v64, v62
	v_rcp_f32_e32 v18, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v34, v15, v34, v204
	v_fma_f32 v15, -v57, v61, v63
	v_mul_f32_e32 v57, v52, v59
	v_div_fmas_f32 v15, v15, v58, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v58, -v60, v57, v52
	v_div_scale_f32 v61, null, v20, v20, v197
	v_fma_f32 v65, -v62, v64, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v66, v15, v16, v70
	v_fmac_f32_e32 v57, v58, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v15, v61
	v_div_scale_f32 v70, null, v50, v50, v179
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v52, -v60, v57, v52
	v_fma_f32 v63, -v55, v18, 1.0
	v_div_scale_f32 v58, s2, v199, v56, v199
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v52, v52, v59, v57
	v_rcp_f32_e32 v59, v70
	v_fmac_f32_e32 v64, v65, v64
	v_div_scale_f32 v65, null, v49, v49, v195
	v_fma_f32 v68, -v61, v15, 1.0
	v_div_fixup_f32 v52, v52, v17, v203
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v69, v65
	v_dual_fmac_f32 v15, v68, v15 :: v_dual_fmac_f32 v18, v63, v18
	v_div_scale_f32 v63, s1, v201, v19, v201
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v65, v69, 1.0
	v_dual_mul_f32 v16, v63, v18 :: v_dual_fmac_f32 v69, v68, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v55, v16, v63
	v_fmac_f32_e32 v16, v60, v18
	v_div_scale_f32 v60, s0, v197, v20, v197
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v17, -v55, v16, v63
	v_fma_f32 v63, -v70, v59, 1.0
	v_mul_f32_e32 v55, v60, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v16, v17, v18, v16
	v_fmac_f32_e32 v59, v63, v59
	v_mul_f32_e32 v67, v58, v64
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v18, -v61, v55, v60
	v_div_fixup_f32 v63, v16, v19, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v57, -v62, v67, v58
	v_fmac_f32_e32 v55, v18, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v67, v57, v64
	v_div_scale_f32 v57, s3, v195, v49, v195
	v_fma_f32 v17, -v62, v67, v58
	v_div_scale_f32 v62, s1, v179, v50, v179
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v17, v17, v64, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v18, v62, v59
	v_fma_f32 v9, -v61, v55, v60
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v56, v17, v56, v199
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v58, v57, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v8
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v248
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v65, v58, v57
	v_div_fmas_f32 v9, v9, v15, v55
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v42
	v_exp_f32_e32 v19, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v16, v69
	v_fma_f32 v16, -v70, v18, v62
	v_div_fixup_f32 v55, v9, v20, v197
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v202, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v15, -v65, v58, v57
	v_fmac_f32_e32 v18, v16, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v15, v15, v69, v58
	v_fma_f32 v16, -v70, v18, v62
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v49, v15, v49, v195
	v_div_fmas_f32 v8, v16, v59, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_ldexp_f32 v6, v19, v17
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v17, v198, v12 :: v_dual_mul_f32 v18, v196, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v247
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v16, v180, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v8, v50, v179
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v6, v15
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v165
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, null, v57, v57, v248
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v10, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v53, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v200, v13
	v_mul_f32_e32 v15, v178, v11
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v6, v9
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v254, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, vcc_lo, v248, v57, v248
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v34, 1.0, v5 :: v_dual_mul_f32 v11, v174, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v10, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v58, v53, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v160
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v13, v255, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v51, null, v34, v34, v247
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v54, 1.0, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v53, v8, v53 :: v_dual_mul_f32 v8, v251, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v9
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v252, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v62, null, v54, v54, v165
	v_dual_mul_f32 v64, v59, v53 :: v_dual_mul_f32 v5, v170, v55
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v172, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v52, v62
	v_rcp_f32_e32 v60, v51
	v_fma_f32 v63, -v58, v64, v59
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v61, v6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v6, v169, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v56, s0, v247, v34, v247
	v_dual_fmac_f32 v64, v63, v53 :: v_dual_add_f32 v49, 1.0, v55
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v61, -v62, v52, 1.0
	v_fma_f32 v65, -v51, v60, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v58, v64, v59
	v_div_scale_f32 v59, s1, v165, v54, v165
	v_fmac_f32_e32 v52, v61, v52
	v_div_scale_f32 v61, null, v49, v49, v160
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v53, v55, v53, v64
	v_fmac_f32_e32 v60, v65, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v55, v61
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v249, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v53, v57, v248
	v_mul_f32_e32 v64, v59, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v62, v64, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v159
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v61, v55, 1.0
	v_mul_f32_e32 v58, v56, v60
	v_fmac_f32_e32 v64, v53, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v57, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v63, -v51, v58, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v57, s2, v160, v49, v160
	v_fma_f32 v59, -v62, v64, v59
	v_fmac_f32_e32 v58, v63, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v30, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v51, v58, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v51, v51, v60, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v158
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v58, v57, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v26, v56
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v56, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v61, v58, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v63, null, v56, v56, v159
	v_div_fmas_f32 v52, v59, v52, v64
	v_fmac_f32_e32 v58, v30, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v26, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v53, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v156
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v51, v34, v247
	v_fma_f32 v34, -v61, v58, v57
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v52, v54, v165
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, null, v51, v51, v158
	v_fma_f32 v57, -v63, v53, 1.0
	v_div_fmas_f32 v34, v34, v55, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v55, v54
	v_fmac_f32_e32 v53, v57, v53
	v_div_scale_f32 v57, s0, v159, v56, v159
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v52, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v34, v49, v160
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v58, v57, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v54, v55, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v52, 1.0, v52 :: v_dual_fmac_f32 v49, 0xbfb8aa3b, v157
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v63, v58, v57
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v55, v59, v55
	v_div_scale_f32 v59, s1, v158, v51, v158
	v_div_scale_f32 v61, null, v52, v52, v156
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v60, v53
	v_mul_f32_e32 v60, v59, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v62, v61
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v23, v164, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v63, v58, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v63, -v54, v60, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v49, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v161, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v60, v63, v55
	v_fma_f32 v50, -v61, v62, 1.0
	v_div_fmas_f32 v53, v57, v53, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, s0, v156, v52, v156
	v_fma_f32 v54, -v54, v60, v59
	v_fmac_f32_e32 v62, v50, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v37, v54, v55, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v59, v38, v62 :: v_dual_fmac_f32 v58, 0xbfb8aa3b, v151
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v37, v37, v51, v158
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v51, -v61, v59, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v58
	v_cndmask_b32_e64 v55, 0, 0x42800000, s2
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v31
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v26, v163, v26 :: v_dual_mul_f32 v37, v153, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v59, v51, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v150
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v61, v59, v38
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v58, v57
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v31, v38, v62, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, s2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v61, 1.0, v32 :: v_dual_fmac_f32 v58, 0xbfb8aa3b, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v148
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v53, v53, v56, v159
	v_div_scale_f32 v56, null, v49, v49, v157
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v54, v55, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, null, v61, v61, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v50, v56
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v54, 1.0, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, null, v54, v54, v150
	v_fma_f32 v60, -v56, v50, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v60, v50
	v_div_scale_f32 v60, s1, v157, v49, v157
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v51, v60, v50
	v_fma_f32 v32, -v56, v51, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v51, v32, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v58, v55
	v_fma_f32 v38, -v56, v51, v60
	v_rcp_f32_e32 v60, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v191
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v38, v38, v50, v51
	v_div_scale_f32 v50, vcc_lo, v151, v61, v151
	v_fma_f32 v62, -v55, v58, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v38, v38, v49, v157
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v59
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v63, v60, 1.0
	v_dual_fmac_f32 v58, v62, v58 :: v_dual_add_f32 v57, 1.0, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v60, v51, v60 :: v_dual_mul_f32 v59, v50, v58
	v_div_fixup_f32 v32, v31, v52, v156
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v155, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v51, s0, v150, v54, v150
	v_fma_f32 v38, -v55, v59, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v49, v56
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v30, v162, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v62, null, v57, v57, v149
	v_dual_fmac_f32 v59, v38, v58 :: v_dual_mul_f32 v52, v51, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v64, v62
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v152, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v55, v59, v50
	v_fma_f32 v56, -v63, v52, v51
	v_div_scale_f32 v55, null, v49, v49, v148
	v_div_fmas_f32 v50, v50, v58, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v52, v56, v60
	v_rcp_f32_e32 v41, v55
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v53, -v62, v64, 1.0
	v_div_fixup_f32 v50, v50, v61, v151
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v63, v52, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v64, v53, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v143
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, s1, v149, v57, v149
	v_div_fmas_f32 v51, v51, v60, v52
	v_fma_f32 v59, -v55, v41, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_exp_f32_e32 v0, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v52, v53, v64
	v_div_fixup_f32 v51, v51, v54, v150
	v_fmac_f32_e32 v41, v59, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v62, v52, v53
	v_div_scale_f32 v60, s0, v148, v49, v148
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v142
	v_ldexp_f32 v0, v0, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v52, v54, v64 :: v_dual_mul_f32 v39, v60, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v59, v59
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v55, v39, v60
	v_fma_f32 v53, -v62, v52, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v140
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v62, null, v0, v0, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v61, v41
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v56
	v_ldexp_f32 v56, v59, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v58, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v52, v53, v64, v52
	v_fma_f32 v53, -v55, v39, v60
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v55, 1.0, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v141
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v33, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v62, v58, 1.0
	v_div_scale_f32 v56, null, v55, v55, v142
	v_div_fmas_f32 v39, v53, v41, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v54, v58
	v_rcp_f32_e32 v53, v56
	v_div_scale_f32 v54, vcc_lo, v143, v0, v143
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v60, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v39, v49, v148
	v_div_fixup_f32 v52, v52, v57, v149
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v61, v54, v58
	v_div_scale_f32 v64, s0, v142, v55, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v41, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v56, v53, 1.0
	v_fma_f32 v63, -v62, v61, v54
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v145, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v57, null, v60, v60, v140
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v51, 1.0, v49 :: v_dual_mul_f32 v32, v154, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v53, v39, v53
	v_fmac_f32_e32 v61, v63, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v59, v57
	v_div_scale_f32 v65, null, v51, v51, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v39, v146, v52 :: v_dual_mul_f32 v52, v64, v53
	v_mul_f32_e32 v49, v144, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v62, v61, v54
	v_rcp_f32_e32 v62, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v147, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v56, v52, v64
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v63, -v57, v59, 1.0
	v_div_fmas_f32 v50, v50, v58, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_dual_fmac_f32 v52, v54, v53 :: v_dual_fmac_f32 v59, v63, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v0, v50, v0, v143
	v_fma_f32 v66, -v65, v62, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v135
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, s1, v140, v60, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v56, v52, v64
	v_fmac_f32_e32 v62, v66, v62
	v_div_scale_f32 v64, s2, v141, v51, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v61, v63, v59
	v_div_fmas_f32 v42, v50, v53, v52
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v50, v64, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0x42800000, s3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v57, v61, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v65, v50, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v134
	v_ldexp_f32 v54, v58, v54
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v56, v59
	v_fmac_f32_e32 v50, v36, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v53
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v133
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v57, v61, v63
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v42, v42, v55, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v184
	v_exp_f32_e32 v58, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v57, v57, v59, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v65, v50, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v36, v52
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v35, v35, v62, v50
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v58, v56
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v35, v35, v51, v141
	v_div_scale_f32 v58, null, v50, v50, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v36, v57, v60, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v63, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v139, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v64, null, v62, v62, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v51, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v61, v52
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v58, v63, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v52, 1.0, v52 :: v_dual_fmac_f32 v63, v57, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v64, v51, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v60, null, v52, v52, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v51, v57, v51
	v_div_scale_f32 v53, null, v54, v54, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v59, v53
	v_fma_f32 v56, -v53, v59, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v59, v56, v59
	v_div_scale_f32 v56, vcc_lo, v135, v54, v135
	v_mul_f32_e32 v65, v56, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v55, -v53, v65, v56
	v_fmac_f32_e32 v65, v55, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v53, v65, v56
	v_div_fmas_f32 v53, v53, v59, v65
	v_rcp_f32_e32 v59, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v136, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v53, v54, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v109, v109, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v60, v59, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v128
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v59, v54, v59
	v_div_scale_f32 v57, s1, v133, v62, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v67
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v65, v57, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v127
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v64, v65, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v48, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v53, v51
	v_div_scale_f32 v55, s0, v134, v50, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v57, -v64, v65, v57
	v_mul_f32_e32 v56, v55, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v58, v56, v55
	v_fmac_f32_e32 v56, v61, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v55, -v58, v56, v55
	v_div_scale_f32 v58, s2, v130, v52, v130
	v_div_fmas_f32 v55, v55, v63, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v56, v58, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v54
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v54, 1.0, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v138, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v60, v56, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v102
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v51, v57, v51, v65
	v_fmac_f32_e32 v56, v48, v59
	v_div_fixup_f32 v48, v55, v50, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v43, v43, v53
	v_exp_f32_e32 v55, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v189
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v43, v51, v62, v133
	v_fma_f32 v51, -v60, v56, v58
	v_div_scale_f32 v57, null, v50, v50, v127
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v55, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v51, v51, v59, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v56, v57
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v131, v43
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v55, 1.0, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v64, null, v54, v54, v128
	v_div_scale_f32 v62, null, v55, v55, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v53, v64
	v_fma_f32 v60, -v57, v56, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v63, v62
	v_fma_f32 v58, -v64, v53, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v42, v137, v42 :: v_dual_fmac_f32 v53, v58, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, s0, v128, v54, v128
	v_mul_f32_e32 v59, v58, v53
	v_div_fixup_f32 v40, v51, v52, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v61, -v64, v59, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v132, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v52, 0xbfb8aa3b, v124 :: v_dual_fmac_f32 v59, v61, v53
	v_exp_f32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v64, v59, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v51, v52, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v52, v58, v53, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v190
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v52, v52, v54, v128
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v60, v56
	v_div_scale_f32 v60, s1, v127, v50, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v123
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v61, v60, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v57, v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v61, v64, v56
	v_fma_f32 v53, -v57, v61, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v53, v53, v56, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v188
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v53, v50, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v62, v63, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v121
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, null, v0, v0, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v63, v51, v63
	v_div_scale_f32 v51, s0, v102, v55, v102
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v129, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v57, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v61, v51, v63
	v_fma_f32 v53, -v62, v61, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v122
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v54, v57, 1.0
	v_fmac_f32_e32 v61, v53, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v60, v60
	v_ldexp_f32 v53, v59, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v64, v57
	v_div_scale_f32 v64, s1, v124, v0, v124
	v_fma_f32 v51, -v62, v61, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v53
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v56, v60, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v44, v51, v63, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v58, v64, v57
	v_div_scale_f32 v60, null, v53, v53, v123
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v56, 1.0, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v120
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v54, v58, v64
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v55, v44, v55, v102
	v_div_scale_f32 v66, null, v56, v56, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v102, v125, v50 :: v_dual_mul_f32 v103, v103, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v63, v66
	v_fmac_f32_e32 v58, v62, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v62, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v54, v58, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v185
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v51, v51, v57, v58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v62, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v60, v65, 1.0
	v_div_scale_f32 v58, vcc_lo, v123, v53, v123
	v_fma_f32 v59, -v66, v63, 1.0
	v_div_fixup_f32 v0, v51, v0, v124
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v65, v64, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v61
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v63, v59, v63
	v_div_scale_f32 v59, s0, v122, v56, v122
	v_mul_f32_e32 v61, v58, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v126, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v62, null, v57, v57, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v64, v59, v63
	v_fma_f32 v0, -v60, v61, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v51, v51, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v67, v62
	v_div_scale_f32 v55, s1, v121, v57, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v61, v0, v65 :: v_dual_add_f32 v50, 1.0, v51
	v_fma_f32 v0, -v66, v64, v59
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v101, v253, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v60, v61, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v52, null, v50, v50, v120
	v_fmac_f32_e32 v64, v0, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v62, v67, 1.0
	v_div_fmas_f32 v51, v51, v65, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v187
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v66, v64, v59
	v_div_fixup_f32 v51, v51, v53, v123
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v54, v54, v63, v64
	v_div_scale_f32 v63, s0, v120, v50, v120
	v_fmac_f32_e32 v67, v0, v67
	v_rcp_f32_e32 v0, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v54, v54, v56, v122
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v186
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v94, v94, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v52, v0, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v117
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v60, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v59
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	v_exp_f32_e32 v61, v61
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_ldexp_f32 v46, v56, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v56, v63, v0
	v_mul_f32_e32 v53, v55, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v52, v56, v63
	v_fma_f32 v59, -v62, v53, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v56, v46, v0 :: v_dual_fmac_f32 v53, v59, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_ldexp_f32 v46, v61, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v52, v56, v63
	v_fma_f32 v55, -v62, v53, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v114
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v62, null, v64, v64, v117
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v45, v59
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v115
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v53, v55, v67, v53
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v59, v62
	v_div_fmas_f32 v0, v52, v0, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, vcc_lo, v117, v64, v117
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v45, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v50, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v119, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v52, v60
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v55, 1.0, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v62, v59, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, null, v55, v55, v116
	v_fmac_f32_e32 v59, v46, v59
	v_div_fixup_f32 v46, v53, v57, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v65, null, v0, v0, v115
	v_rcp_f32_e32 v56, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v118, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v58, v56, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v57, v56
	v_div_scale_f32 v57, s0, v116, v55, v116
	v_mul_f32_e32 v54, v57, v56
	v_div_scale_f32 v50, null, v61, v61, v114
	v_mul_f32_e32 v53, v63, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v52, v50
	v_fma_f32 v60, -v62, v53, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v53, v60, v59
	v_fma_f32 v60, -v50, v52, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v52, v60, v52
	v_rcp_f32_e32 v60, v65
	v_fma_f32 v66, -v65, v60, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v93, v93, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v62, v53, v63
	v_fma_f32 v62, -v58, v54, v57
	v_div_scale_f32 v63, s1, v114, v61, v114
	v_fmac_f32_e32 v60, v66, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v54, v62, v56
	v_mul_f32_e32 v62, v63, v52
	v_div_fmas_f32 v51, v51, v59, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, s2
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v58, v54, v57
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v51, v51, v64, v117
	v_div_scale_f32 v64, s2, v115, v0, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v111
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v54, v57, v56, v54
	v_fma_f32 v58, -v50, v62, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v56, v64, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v183
	v_exp_f32_e32 v59, v59
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v110
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v54, v54, v55, v116
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v53, v59, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v58, v52
	v_fma_f32 v58, -v65, v56, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v50, v62, v63
	v_fmac_f32_e32 v56, v58, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, null, v53, v53, v111
	v_div_fmas_f32 v50, v50, v52, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v182
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v62, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v50, v61, v114
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v58, v57
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v52, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v65, v56, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v56, v64, v60, v56
	v_div_scale_f32 v60, null, v57, v57, v110
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v52, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v63, v62, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v56, v0, v115
	v_rcp_f32_e32 v64, v60
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v59, v62
	v_div_scale_f32 v59, vcc_lo, v111, v53, v111
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v52, v52, v72
	v_dual_mul_f32 v67, v59, v62 :: v_dual_mul_f32 v68, v113, v0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v61, -v60, v64, 1.0
	v_rcp_f32_e32 v55, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v87, v87, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v63, v67, v59
	v_div_scale_f32 v50, s0, v110, v57, v110
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v65, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v64, v61, v64 :: v_dual_fmac_f32 v67, v56, v62
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v66, v55, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v86, v86, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v63, v67, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v59, null, v0, v0, v71
	v_fmac_f32_e32 v55, v56, v55
	v_div_scale_f32 v56, s1, v72, v52, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v61, v59
	v_mul_f32_e32 v58, v50, v64
	v_div_fmas_f32 v54, v54, v62, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v181
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v63, v56, v55
	v_fma_f32 v62, -v60, v58, v50
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v65, v112, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v54, v53, v111
	v_fma_f32 v54, -v59, v61, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v62, v64
	v_fma_f32 v53, -v66, v63, v56
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v77, v77, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v54, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v106
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v60, v58, v50
	v_div_scale_f32 v60, s2, v71, v0, v71
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v54, 0xbfb8aa3b, v100 :: v_dual_fmac_f32 v63, v53, v55
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v50, v50, v64, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_exp_f32_e32 v28, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v50, v57, v110
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v29, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v75, v75, v50 :: v_dual_fmac_f32 v64, 0xbfb8aa3b, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v28, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v58, v60, v61
	v_fma_f32 v56, -v66, v63, v56
	v_fma_f32 v54, -v59, v58, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v55, v56, v55, v63
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v56, null, v28, v28, v100
	v_fmac_f32_e32 v58, v54, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v52, v55, v52, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v64
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v59, v58, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v72, v107, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v54, v54, v61, v58
	v_rcp_f32_e32 v58, v56
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v55, v62
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v54, v0, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v71, v108, v0 :: v_dual_add_f32 v0, 1.0, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v29, v29, v106
	v_div_scale_f32 v25, s0, v106, v29, v106
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v56, v58, 1.0
	v_rcp_f32_e32 v53, v66
	v_div_scale_f32 v61, null, v0, v0, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v58, v60, v58
	v_div_scale_f32 v60, s1, v100, v28, v100
	v_rcp_f32_e32 v50, v61
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v66, v53, 1.0
	v_fmac_f32_e32 v53, v57, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v59, v25, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v66, v59, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v57, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v59, v55, v53
	v_mul_f32_e32 v55, v60, v58
	v_fma_f32 v52, -v56, v55, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v54, v57, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v52, v58
	v_fma_f32 v52, -v61, v50, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v50, v52, v50
	v_fma_f32 v25, -v66, v59, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v25, v25, v53, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, s0, v73, v0, v73
	v_div_fixup_f32 v25, v25, v29, v106
	v_fma_f32 v29, -v56, v55, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v98, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v24, v29, v58, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v97
	v_cndmask_b32_e64 v55, 0, 0x42800000, s2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v21
	v_exp_f32_e32 v56, v56
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v96
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v24, v28, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v55
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v104, v24
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v56, v54
	v_cndmask_b32_e64 v56, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v55, v29
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v95
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, null, v51, v51, v99
	v_div_scale_f32 v55, null, v22, v22, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v52, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v21, v55
	v_fma_f32 v58, -v53, v52, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v60, -v55, v21, 1.0
	v_fmac_f32_e32 v52, v58, v52
	v_div_scale_f32 v58, s1, v99, v51, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v60, v21
	v_mul_f32_e32 v57, v27, v50
	v_fma_f32 v28, -v61, v57, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v57, v28, v50 :: v_dual_mul_f32 v28, v58, v52
	v_fma_f32 v59, -v53, v28, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v28, v59, v52
	v_fma_f32 v27, -v61, v57, v27
	v_div_scale_f32 v59, null, v29, v29, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v27, v27, v50, v57
	v_fma_f32 v50, -v53, v28, v58
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v58, v59
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v27, v0, v73
	v_div_fmas_f32 v28, v50, v52, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v56, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v52, vcc_lo, v97, v22, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v28, v51, v99
	v_fma_f32 v54, -v59, v58, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v74, v74, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v56, v52, v21
	v_fmac_f32_e32 v58, v54, v58
	v_div_scale_f32 v54, s0, v96, v29, v96
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v92
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v55, v56, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v73, v225, v0 :: v_dual_mul_f32 v28, v54, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v27, v21
	v_div_scale_f32 v57, null, v50, v50, v95
	v_fma_f32 v27, -v59, v28, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v24, -v55, v56, v52
	v_rcp_f32_e32 v60, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v28, v27, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v51, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v21, v24, v21, v56
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v59, v28, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v21, v21, v22, v97
	v_fma_f32 v25, -v57, v60, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v4, v24, v58, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v60, v25, v60
	v_div_scale_f32 v25, s1, v95, v50, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v4, v4, v29, v96
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v24, v25, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v80
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v3, -v57, v24, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v0, v0, v92
	v_div_scale_f32 v54, s0, v92, v0, v92
	v_fmac_f32_e32 v24, v3, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v28, v27
	v_fma_f32 v2, -v27, v28, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v2, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v81
	v_exp_f32_e32 v3, v52
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_exp_f32_e32 v1, v29
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v3, v3, v51
	v_exp_f32_e32 v51, v53
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v78
	v_ldexp_f32 v1, v1, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v3, 1.0, v3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v1, 1.0, v1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v57, v24, v25
	v_div_scale_f32 v29, null, v3, v3, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v51, v51, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v24, v25, v60, v24
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v25, v54, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v22, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v24, v50, v95
	v_rcp_f32_e32 v50, v29
	v_div_scale_f32 v52, null, v51, v51, v79
	v_fma_f32 v53, -v27, v25, v54
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, null, v1, v1, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v55, v52
	v_fmac_f32_e32 v25, v53, v28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v90, v24
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v29, v50, 1.0
	v_fma_f32 v27, -v27, v25, v54
	v_rcp_f32_e32 v54, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v50, v53, v50
	v_div_fmas_f32 v25, v27, v28, v25
	v_div_scale_f32 v27, null, v2, v2, v78
	v_div_scale_f32 v28, vcc_lo, v81, v3, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v0, v25, v0, v92
	v_rcp_f32_e32 v56, v27
	v_fma_f32 v25, -v52, v55, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v53, -v22, v54, 1.0
	v_dual_mul_f32 v57, v28, v50 :: v_dual_mul_f32 v64, v91, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v0, -v29, v57, v28
	v_fma_f32 v58, -v27, v56, 1.0
	v_fmac_f32_e32 v55, v25, v55
	v_div_scale_f32 v25, s1, v79, v51, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v57, v0, v50 :: v_dual_fmac_f32 v56, v58, v56
	v_div_scale_f32 v58, s2, v78, v2, v78
	v_fmac_f32_e32 v54, v53, v54
	v_div_scale_f32 v53, s0, v80, v1, v80
	v_dual_mul_f32 v60, v25, v55 :: v_dual_mul_f32 v61, v58, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v52, v60, v25
	v_dual_mul_f32 v59, v53, v54 :: v_dual_fmac_f32 v60, v24, v55
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v0, -v22, v59, v53
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v89, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v4, -v29, v57, v28
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v28, |v93|, |v94|
	v_max3_f32 v29, |v46|, |v65|, |v86|
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v59, v0, v54
	v_fma_f32 v0, -v27, v61, v58
	v_div_fmas_f32 v4, v4, v50, v57
	s_mov_b32 vcc_lo, s0
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v50, |v77|, |v75|, |v72|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v22, v59, v53
	s_mov_b32 s0, 0x76543210
	v_div_fixup_f32 v3, v4, v3, v81
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v4, |v34|, |v30|
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v53, 3, v76
.Ltmp13:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v22, v22, v54, v59
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v1, v22, v1, v80
	v_fmac_f32_e32 v61, v0, v56
	v_fma_f32 v0, -v52, v60, v25
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, |v49|, |v41|, |v39|
	v_max3_f32 v25, |v101|, |v102|, |v103|
.Ltmp15:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v83, v1
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_fma_f32 v24, -v27, v61, v58
	v_div_fmas_f32 v0, v0, v55, v60
	s_mov_b32 vcc_lo, s2
.Ltmp16:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v27, |v44|, |v15|, |v14|
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp17:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v24, v24, v56, v61
	v_div_fixup_f32 v0, v0, v51, v79
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v61, v88, v21
.Ltmp18:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v21, |v26|, |v38|, |v37|
	v_max3_f32 v51, |v71|, |v11|, |v9|
.Ltmp19:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v2, v24, v2, v78
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v24, |v33|, |v19|, |v17|
.Ltmp21:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v85, v0
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, |v32|, |v31|, |v20|
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp23:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v84, v2
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v4, |v23|, v21
	v_max3_f32 v4, v22, v24, |v18|
	v_max_f32_e64 v21, |v47|, |v42|
	v_max3_f32 v22, |v36|, |v109|, |v48|
	v_max3_f32 v24, |v43|, |v40|, |v16|
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max3_f32 v0, v2, v0, v4
	v_max3_f32 v4, |v73|, |v61|, |v62|
	v_max3_f32 v21, v21, |v35|, v22
	v_max3_f32 v22, v25, v27, |v13|
	v_max3_f32 v25, |v87|, |v68|, |v12|
	v_max3_f32 v27, v28, |v45|, v29
	v_max3_f32 v28, v50, v51, |v10|
.Ltmp25:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v50, v82, v3
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v1, v21, v24, v22
	v_max_f32_e64 v3, |v69|, |v70|
	v_max3_f32 v24, |v55|, |v5|, |v6|
	v_max3_f32 v2, v27, v25, v28
	v_max3_f32 v22, |v50|, |v54|, |v56|
	v_max3_f32 v21, |v63|, |v64|, |v8|
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v25, v0, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v3, |v74|, v4
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v27, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, v22, v24, |v7|
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v4, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v24, v25, v25 :: v_dual_and_b32 v29, 0x60, v192
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v25, v27, v27
	v_max3_f32 v3, v3, v21, v22
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v21, 3, v192
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v24
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v22, 4, v192
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v25
	v_dual_max_f32 v4, v4, v4 :: v_dual_lshlrev_b32 v25, 5, v21
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v24, v21, 9, 0
	v_lshlrev_b32_e32 v27, 4, v192
	v_and_b32_e32 v28, 8, v192
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v4
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v4, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v24, v22, 2, v24
	v_and_or_b32 v51, 0x680, v27, v25
	v_lshlrev_b32_e32 v27, 1, v76
	v_xor_b32_e32 v52, v25, v29
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v24, v28, 4, v24
	v_xor_b32_e32 v51, v51, v29
	v_lshl_add_u32 v57, v22, 6, 0
	v_lshl_add_u32 v21, v21, 4, 0
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v4
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v4, v24, v27, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v24, v57, v53, v51
	ds_store_b128 v4, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v24
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v24, v1
	v_dual_mov_b32 v4, v0 :: v_dual_mov_b32 v51, v2
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v0, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v24, v24 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v51, v51 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v52, v3, v3
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v24, v24, v24
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v1, v1, v24
	v_max_f32_e32 v4, v4, v4
	v_dual_max_f32 v3, v52, v3 :: v_dual_lshlrev_b32 v28, 3, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v0, v0, v4
	v_dual_max_f32 v4, v51, v51 :: v_dual_mov_b32 v51, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v52, v3
	v_mov_b32_e32 v24, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v4
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v51, v51 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v24, v24 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v51, v51, v51 :: v_dual_max_f32 v24, v24, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v1, v1, v51 :: v_dual_max_f32 v0, v0, v24
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v4, v2 :: v_dual_mov_b32 v51, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v51, v51 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v51, v51, v51
	v_max_f32_e32 v2, v2, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v4, v2
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v2, v2, v4
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v4, 5, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v4, v21, v4, v28
.Ltmp58:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v21, 63, v192
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v52, v52 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v24, v52, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v52, v1 :: v_dual_max_f32 v3, v3, v24
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v24, v3
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v52, v52, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v24, v24 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v52
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v52, 0, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v24, v24, v24
	v_max_f32_e32 v0, v0, v51
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v51, 1, v29
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v24
.Ltmp69:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v24, 4, v194
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v22, v52, v51, v28
.Ltmp71:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v53, 32, v24
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v22, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[57:60], v4
.Ltmp73:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 48, v24
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	v_add_co_u32 v3, s0, s34, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s35, 0, s0
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[30:31], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v0, v57, v57 :: v_dual_max_f32 v51, v59, v59
	v_max_f32_e32 v60, v60, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v0, 0x2b8cbccc, v0 :: v_dual_max_f32 v57, 0x2b8cbccc, v51
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v51, s0, s34, v53
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v60, 0x2b8cbccc, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v22, null, 0x40e00000, 0x40e00000, v0
	v_div_scale_f32 v59, vcc_lo, v0, 0x40e00000, v0
	v_div_scale_f32 v66, null, 0x40e00000, 0x40e00000, v57
	v_rcp_f32_e32 v28, v22
	v_div_scale_f32 v79, null, 0x40e00000, 0x40e00000, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v52, -v22, v28, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v76, -v66, v67, 1.0
	v_fmac_f32_e32 v28, v52, v28
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v52, null, s35, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[24:25], v[3:4]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v67, v76, v67
	v_mul_f32_e32 v53, v59, v28
	v_div_scale_f32 v76, s6, v57, 0x40e00000, v57
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 16, v24
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[24:25], v[51:52]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v22, v53, v59
	v_fmac_f32_e32 v53, v3, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s3, s34, v4
	v_add_co_ci_u32_e64 v4, null, s35, 0, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v22, -v22, v53, v59
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[30:31], v[51:52]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v52.h, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[24:25], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[30:31], v[3:4]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_fmas_f32 v22, v22, v28, v53
	v_mul_f32_e32 v28, v76, v67
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v53, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v22, 0x40e00000, v0
	v_fma_f32 v22, -v66, v28, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v28, v22, v67
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v22.l, v0.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v80, -v79, v53, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v22.h, v52.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v66, v28, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v53, v80, v53
	v_div_scale_f32 v80, s8, v60, 0x40e00000, v60
	v_div_fmas_f32 v28, v3, v67, v28
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v22
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s34, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v76, v80, v53
	v_div_fixup_f32 v28, v28, 0x40e00000, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_add3_u32 v22, v0, v4, 0x7fff
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v0, -v79, v76, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v52.l, v28.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v58, v58, v58
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[24:25], v[3:4]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v76, v0, v53
	v_max_f32_e32 v58, 0x2b8cbccc, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v57, -v79, v76, v80
	v_div_scale_f32 v78, null, 0x40e00000, 0x40e00000, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v59, v78
	v_fma_f32 v51, -v78, v59, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v59, v51, v59
	v_div_scale_f32 v51, s7, v58, 0x40e00000, v58
	s_mov_b32 vcc_lo, s7
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[30:31], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v81, v51, v59
	v_fma_f32 v66, -v78, v81, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v81, v66, v59 :: v_dual_and_b32 v66, 0xffff0000, v22
	v_fma_f32 v51, -v78, v81, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v66, v66, v34
	v_div_scale_f32 v79, null, v66, v66, v23
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v51, v51, v59, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v67, v0
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v80, v79
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v53, v57, v53, v76
	v_div_fixup_f32 v51, v51, 0x40e00000, v58
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v58, null, v66, v66, v30
	v_div_scale_f32 v78, vcc_lo, v34, v66, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v53, v53, 0x40e00000, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v59, -v0, v67, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v60.l, v51.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v76, v58
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v60.h, v52.h
	v_and_b32_e32 v57, 1, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v67, v59, v67
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v52.l, v53.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v81, null, v66, v66, v26
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v60, v78, v67
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v28, v57, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v57, -v58, v76, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v52, 1, v52
	v_add3_u32 v28, v51, v4, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v51, -v0, v60, v78
	v_div_scale_f32 v82, s8, v30, v66, v30
	v_fmac_f32_e32 v76, v57, v76
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v53, v52, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v60, v51, v67
	v_rcp_f32_e32 v51, v81
	v_fma_f32 v83, -v79, v80, 1.0
	v_mul_f32_e32 v52, v82, v76
	v_div_scale_f32 v85, null, v66, v66, v38
	v_fma_f32 v0, -v0, v60, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v83, v80
	v_fma_f32 v78, -v58, v52, v82
	v_div_scale_f32 v83, s9, v23, v66, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v81, v51, 1.0
	v_div_fmas_f32 v0, v0, v67, v60
	v_fmac_f32_e32 v52, v78, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v60, v83, v80
	v_rcp_f32_e32 v67, v85
	v_fmac_f32_e32 v51, v84, v51
	v_div_scale_f32 v84, null, v66, v66, v37
	v_div_scale_f32 v78, s10, v26, v66, v26
	v_div_fixup_f32 v34, v0, v66, v34
	v_fma_f32 v0, -v58, v52, v82
	v_fma_f32 v58, -v79, v60, v83
	v_rcp_f32_e32 v88, v84
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v82, v78, v51
	v_fma_f32 v89, -v85, v67, 1.0
	v_div_fmas_f32 v0, v0, v76, v52
	v_fmac_f32_e32 v60, v58, v80
	v_div_scale_f32 v58, s8, v38, v66, v38
	v_fma_f32 v52, -v81, v82, v78
	v_fmac_f32_e32 v67, v89, v67
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v76, -v84, v88, 1.0
	v_div_fixup_f32 v30, v0, v66, v30
	v_fma_f32 v0, -v79, v60, v83
	v_div_scale_f32 v79, null, v66, v66, v32
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v82, v52, v51
	v_mul_f32_e32 v52, v58, v67
	v_fmac_f32_e32 v88, v76, v88
	v_div_scale_f32 v76, s11, v37, v66, v37
	v_div_fmas_f32 v0, v0, v80, v60
	v_rcp_f32_e32 v80, v79
	v_fma_f32 v60, -v81, v82, v78
	v_fma_f32 v78, -v85, v52, v58
	v_mul_f32_e32 v81, v76, v88
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v23, v0, v66, v23
	v_div_fmas_f32 v51, v60, v51, v82
	v_fmac_f32_e32 v52, v78, v67
	v_fma_f32 v78, -v84, v81, v76
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v82, -v79, v80, 1.0
	v_div_fixup_f32 v26, v51, v66, v26
	v_fma_f32 v0, -v85, v52, v58
	v_fmac_f32_e32 v81, v78, v88
	v_div_scale_f32 v51, s9, v32, v66, v32
	v_fmac_f32_e32 v80, v82, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v0, v0, v67, v52
	v_fma_f32 v52, -v84, v81, v76
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v59, 0xffff0000, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v67, v51, v80
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v57, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v52, v52, v88, v81
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v90, null, v59, v59, v13
	v_fma_f32 v81, -v79, v67, v51
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v53, 0xffff0000, v4
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v67, v81, v80
	v_div_scale_f32 v83, null, v66, v66, v31
	v_div_scale_f32 v78, null, v66, v66, v20
	v_div_scale_f32 v82, null, v66, v66, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v60, v83
	v_div_scale_f32 v76, s8, v31, v66, v31
	v_rcp_f32_e32 v88, v82
	v_div_scale_f32 v81, null, v66, v66, v41
	v_div_fixup_f32 v38, v0, v66, v38
	v_div_fixup_f32 v37, v52, v66, v37
	v_div_scale_f32 v52, s10, v20, v66, v20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v58, -v83, v60, 1.0
	v_fma_f32 v51, -v79, v67, v51
	v_rcp_f32_e32 v79, v81
	v_div_scale_f32 v89, null, v66, v66, v39
	v_fmac_f32_e32 v60, v58, v60
	v_rcp_f32_e32 v58, v78
	v_div_fmas_f32 v51, v51, v80, v67
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v84, v76, v60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v32, v51, v66, v32
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v83, v84, v76
	v_fma_f32 v85, -v78, v58, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v0, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v58, v85, v58
	v_fma_f32 v85, -v82, v88, 1.0
	v_fma_f32 v67, -v83, v84, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v0, v52, v58
	v_fmac_f32_e32 v88, v85, v88
	v_div_scale_f32 v85, s11, v49, v66, v49
	v_fma_f32 v83, -v81, v79, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v78, v0, v52
	v_div_fmas_f32 v60, v67, v60, v84
	v_mul_f32_e32 v80, v85, v88
	v_rcp_f32_e32 v67, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v79, v83, v79 :: v_dual_fmac_f32 v0, v76, v58
	v_div_scale_f32 v83, s8, v41, v66, v41
	v_fma_f32 v76, -v82, v80, v85
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v78, v0, v52
	v_mul_f32_e32 v52, v83, v79
	v_div_fixup_f32 v31, v60, v66, v31
	v_fmac_f32_e32 v80, v76, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v89, v67, 1.0
	v_div_scale_f32 v76, null, v66, v66, v33
	v_div_fmas_f32 v0, v51, v58, v0
	v_fma_f32 v51, -v82, v80, v85
	v_fma_f32 v58, -v81, v52, v83
	v_div_scale_f32 v82, null, v66, v66, v19
	v_fmac_f32_e32 v67, v60, v67
	v_rcp_f32_e32 v60, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v52, v58, v79
	v_rcp_f32_e32 v58, v82
	v_div_scale_f32 v78, s9, v39, v66, v39
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v20, v0, v66, v20
	v_div_fmas_f32 v51, v51, v88, v80
	v_mul_f32_e32 v80, v78, v67
	v_fma_f32 v0, -v81, v52, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v84, -v76, v60, 1.0
	v_div_scale_f32 v81, s10, v33, v66, v33
	v_fma_f32 v83, -v82, v58, 1.0
	v_div_fixup_f32 v49, v51, v66, v49
	v_fma_f32 v51, -v89, v80, v78
	v_fmac_f32_e32 v60, v84, v60
	v_div_scale_f32 v84, null, v66, v66, v17
	v_fmac_f32_e32 v58, v83, v58
	v_div_scale_f32 v83, null, v66, v66, v18
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v80, v51, v67
	v_div_fmas_f32 v0, v0, v79, v52
	v_mul_f32_e32 v51, v81, v60
	v_rcp_f32_e32 v52, v84
	v_div_scale_f32 v79, s8, v19, v66, v19
	v_rcp_f32_e32 v88, v83
	v_div_fixup_f32 v41, v0, v66, v41
	v_fma_f32 v0, -v89, v80, v78
	v_fma_f32 v78, -v76, v51, v81
	v_mul_f32_e32 v85, v79, v58
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v84, v52, 1.0
	v_div_fmas_f32 v0, v0, v67, v80
	v_fmac_f32_e32 v51, v78, v60
	v_fma_f32 v67, -v82, v85, v79
	v_fma_f32 v80, -v83, v88, 1.0
	v_fmac_f32_e32 v52, v89, v52
	v_div_scale_f32 v78, s9, v17, v66, v17
	v_div_fixup_f32 v39, v0, v66, v39
	v_fma_f32 v0, -v76, v51, v81
	v_dual_fmac_f32 v85, v67, v58 :: v_dual_fmac_f32 v88, v80, v88
	v_div_scale_f32 v80, null, v59, v59, v47
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v67, v78, v52
	v_div_scale_f32 v76, s11, v18, v66, v18
	v_div_fmas_f32 v0, v0, v60, v51
	v_fma_f32 v51, -v82, v85, v79
	v_rcp_f32_e32 v79, v80
	v_div_scale_f32 v82, null, v59, v59, v42
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v60, -v84, v67, v78
	v_mul_f32_e32 v81, v76, v88
	v_div_fmas_f32 v51, v51, v58, v85
	v_rcp_f32_e32 v58, v82
	v_div_fixup_f32 v33, v0, v66, v33
	v_fmac_f32_e32 v67, v60, v52
	v_fma_f32 v60, -v83, v81, v76
	v_fma_f32 v85, -v80, v79, 1.0
	v_div_fixup_f32 v19, v51, v66, v19
	v_div_scale_f32 v51, s8, v47, v59, v47
	v_fma_f32 v0, -v84, v67, v78
	v_fmac_f32_e32 v81, v60, v88
	v_fmac_f32_e32 v79, v85, v79
	v_fma_f32 v60, -v82, v58, 1.0
	v_div_scale_f32 v78, null, v59, v59, v35
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v52, v67
	v_fma_f32 v52, -v83, v81, v76
	v_dual_mul_f32 v67, v51, v79 :: v_dual_fmac_f32 v58, v60, v58
	v_rcp_f32_e32 v60, v78
	v_div_scale_f32 v76, s9, v42, v59, v42
	v_div_scale_f32 v83, null, v59, v59, v36
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v84, v76, v58
	v_div_fmas_f32 v52, v52, v88, v81
	v_fma_f32 v81, -v80, v67, v51
	v_rcp_f32_e32 v88, v83
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v85, -v78, v60, 1.0
	v_div_fixup_f32 v0, v0, v66, v17
	v_div_fixup_f32 v17, v52, v66, v18
	v_fmac_f32_e32 v67, v81, v79
	v_fma_f32 v18, -v82, v84, v76
	v_fmac_f32_e32 v60, v85, v60
	v_div_scale_f32 v52, s10, v35, v59, v35
	v_div_scale_f32 v66, null, v59, v59, v109
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v81, -v83, v88, 1.0
	v_fma_f32 v51, -v80, v67, v51
	v_fmac_f32_e32 v84, v18, v58
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v80, v52, v60
	v_rcp_f32_e32 v85, v66
	v_fmac_f32_e32 v88, v81, v88
	v_div_scale_f32 v81, s11, v36, v59, v36
	v_div_fmas_f32 v18, v51, v79, v67
	v_fma_f32 v51, -v82, v84, v76
	v_div_scale_f32 v82, null, v59, v59, v48
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v67, -v78, v80, v52
	v_mul_f32_e32 v76, v81, v88
	v_div_fmas_f32 v51, v51, v58, v84
	v_rcp_f32_e32 v58, v82
	v_fma_f32 v79, -v66, v85, 1.0
	v_fmac_f32_e32 v80, v67, v60
	v_fma_f32 v67, -v83, v76, v81
	v_div_fixup_f32 v18, v18, v59, v47
	v_div_fixup_f32 v42, v51, v59, v42
	v_fmac_f32_e32 v85, v79, v85
	v_div_scale_f32 v79, s8, v109, v59, v109
	v_fma_f32 v47, -v78, v80, v52
	v_fmac_f32_e32 v76, v67, v88
	v_fma_f32 v52, -v82, v58, 1.0
	v_div_scale_f32 v67, null, v59, v59, v43
	v_mul_f32_e32 v51, v79, v85
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v58, v52, v58
	v_rcp_f32_e32 v52, v67
	v_div_fmas_f32 v47, v47, v60, v80
	v_fma_f32 v60, -v83, v76, v81
	v_fma_f32 v78, -v66, v51, v79
	v_div_scale_f32 v80, s9, v48, v59, v48
	v_div_scale_f32 v81, null, v59, v59, v40
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v51, v78, v85
	v_div_fmas_f32 v60, v60, v88, v76
	v_rcp_f32_e32 v76, v81
	v_mul_f32_e32 v78, v80, v58
	v_fma_f32 v83, -v67, v52, 1.0
	v_div_fixup_f32 v35, v47, v59, v35
	v_div_fixup_f32 v36, v60, v59, v36
	v_fma_f32 v47, -v66, v51, v79
	v_fma_f32 v60, -v82, v78, v80
	v_fmac_f32_e32 v52, v83, v52
	v_div_scale_f32 v83, null, v59, v59, v16
	v_div_scale_f32 v66, s10, v43, v59, v43
	v_fma_f32 v79, -v81, v76, 1.0
	v_fmac_f32_e32 v78, v60, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v60, v83
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v84, null, v59, v59, v101
	v_div_fmas_f32 v47, v47, v85, v51
	v_mul_f32_e32 v51, v66, v52
	v_fmac_f32_e32 v76, v79, v76
	v_div_scale_f32 v79, s8, v40, v59, v40
	v_fma_f32 v80, -v82, v78, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v67, v51, v66
	v_rcp_f32_e32 v88, v84
	v_mul_f32_e32 v85, v79, v76
	v_fma_f32 v89, -v83, v60, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v51, v82, v52
	v_div_fmas_f32 v58, v80, v58, v78
	v_fma_f32 v78, -v81, v85, v79
	v_fmac_f32_e32 v60, v89, v60
	v_div_scale_f32 v80, s9, v16, v59, v16
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v82, -v84, v88, 1.0
	v_div_fixup_f32 v48, v58, v59, v48
	v_fma_f32 v58, -v67, v51, v66
	v_fmac_f32_e32 v85, v78, v76
	v_mul_f32_e32 v66, v80, v60
	v_div_scale_f32 v78, null, v59, v59, v102
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v88, v82, v88
	v_div_scale_f32 v67, s11, v101, v59, v101
	v_div_fmas_f32 v51, v58, v52, v51
	v_fma_f32 v52, -v81, v85, v79
	v_fma_f32 v58, -v83, v66, v80
	v_rcp_f32_e32 v79, v78
	v_div_scale_f32 v82, null, v59, v59, v103
	v_mul_f32_e32 v81, v67, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v66, v58, v60
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v58, v82
	v_div_fmas_f32 v52, v52, v76, v85
	v_fma_f32 v76, -v84, v81, v67
	v_div_fixup_f32 v43, v51, v59, v43
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v85, -v78, v79, 1.0
	v_fma_f32 v51, -v83, v66, v80
	v_div_fixup_f32 v40, v52, v59, v40
	v_fmac_f32_e32 v81, v76, v88
	v_div_scale_f32 v52, s8, v102, v59, v102
	v_fmac_f32_e32 v79, v85, v79
	v_fma_f32 v76, -v82, v58, 1.0
	v_div_scale_f32 v80, null, v59, v59, v44
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v83, null, v59, v59, v15
	v_div_fmas_f32 v51, v51, v60, v66
	v_fma_f32 v60, -v84, v81, v67
	v_mul_f32_e32 v66, v52, v79
	v_fmac_f32_e32 v58, v76, v58
	v_rcp_f32_e32 v67, v80
	v_div_scale_f32 v76, s9, v103, v59, v103
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v16, v51, v59, v16
	v_div_fmas_f32 v60, v60, v88, v81
	v_fma_f32 v81, -v78, v66, v52
	v_mul_f32_e32 v84, v76, v58
	v_rcp_f32_e32 v88, v83
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v85, -v80, v67, 1.0
	v_div_fixup_f32 v51, v60, v59, v101
	v_fmac_f32_e32 v66, v81, v79
	v_fma_f32 v60, -v82, v84, v76
	v_div_scale_f32 v81, s10, v44, v59, v44
	v_fmac_f32_e32 v67, v85, v67
	v_div_scale_f32 v85, null, v59, v59, v14
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v83, v88, 1.0
	v_fma_f32 v52, -v78, v66, v52
	v_fmac_f32_e32 v84, v60, v58
	v_mul_f32_e32 v60, v81, v67
	v_rcp_f32_e32 v78, v85
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, s11, v15, v59, v15
	v_div_fmas_f32 v52, v52, v79, v66
	v_fma_f32 v66, -v82, v84, v76
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v76, -v80, v60, v81
	v_mul_f32_e32 v79, v89, v88
	v_div_fixup_f32 v47, v47, v59, v109
	v_div_fmas_f32 v58, v66, v58, v84
	v_rcp_f32_e32 v66, v90
	v_fma_f32 v82, -v85, v78, 1.0
	v_fmac_f32_e32 v60, v76, v67
	v_fma_f32 v76, -v83, v79, v89
	v_div_scale_f32 v84, null, v57, v57, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v78, v82, v78
	v_div_scale_f32 v82, s8, v14, v59, v14
	v_fma_f32 v80, -v80, v60, v81
	v_fmac_f32_e32 v79, v76, v88
	v_fma_f32 v81, -v90, v66, 1.0
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v76, v82, v78
	v_div_fmas_f32 v60, v80, v67, v60
	v_fma_f32 v67, -v83, v79, v89
	v_fmac_f32_e32 v66, v81, v66
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v89, null, v57, v57, v94
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v80, -v85, v76, v82
	v_div_fmas_f32 v67, v67, v88, v79
	v_rcp_f32_e32 v79, v89
	v_div_scale_f32 v83, s9, v13, v59, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v76, v80, v78
	v_fma_f32 v88, -v84, v81, 1.0
	v_div_fixup_f32 v44, v60, v59, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v80, v83, v66
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v60, -v85, v76, v82
	v_fmac_f32_e32 v81, v88, v81
	v_fma_f32 v85, -v89, v79, 1.0
	v_div_scale_f32 v88, null, v57, v57, v45
	v_div_fixup_f32 v15, v67, v59, v15
	v_fma_f32 v67, -v90, v80, v83
	v_div_scale_f32 v82, s10, v93, v57, v93
	v_div_fmas_f32 v60, v60, v78, v76
	v_fmac_f32_e32 v79, v85, v79
	v_rcp_f32_e32 v76, v88
	v_div_scale_f32 v85, null, v57, v57, v46
	v_dual_fmac_f32 v80, v67, v66 :: v_dual_mul_f32 v67, v82, v81
	v_div_scale_f32 v78, s8, v94, v57, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v91, v85
	v_div_fixup_f32 v14, v60, v59, v14
	v_fma_f32 v60, -v90, v80, v83
	v_fma_f32 v83, -v84, v67, v82
	v_mul_f32_e32 v90, v78, v79
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v88, v76, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v52, v52, v59, v102
	v_div_fmas_f32 v60, v60, v66, v80
	v_fmac_f32_e32 v67, v83, v81
	v_fma_f32 v66, -v89, v90, v78
	v_fmac_f32_e32 v76, v92, v76
	v_div_scale_f32 v80, s9, v45, v57, v45
	v_fma_f32 v83, -v85, v91, 1.0
	v_div_fixup_f32 v58, v58, v59, v103
	v_div_fixup_f32 v13, v60, v59, v13
	v_fma_f32 v59, -v84, v67, v82
	v_fmac_f32_e32 v90, v66, v79
	v_dual_mul_f32 v66, v80, v76 :: v_dual_fmac_f32 v91, v83, v91
	v_div_scale_f32 v83, null, v57, v57, v65
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v82, s11, v46, v57, v46
	v_div_fmas_f32 v59, v59, v81, v67
	v_fma_f32 v60, -v89, v90, v78
	v_fma_f32 v67, -v88, v66, v80
	v_rcp_f32_e32 v78, v83
	v_div_scale_f32 v84, null, v57, v57, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v81, v82, v91 :: v_dual_fmac_f32 v66, v67, v76
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v67, v84
	v_div_fmas_f32 v60, v60, v79, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v79, -v85, v81, v82
	v_fma_f32 v80, -v88, v66, v80
	v_fma_f32 v89, -v83, v78, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v59, v59, v57, v93
	v_fmac_f32_e32 v81, v79, v91
	v_div_scale_f32 v79, s8, v65, v57, v65
	v_fmac_f32_e32 v78, v89, v78
	v_fma_f32 v88, -v84, v67, 1.0
	v_div_scale_f32 v89, null, v57, v57, v87
	v_div_fmas_f32 v66, v80, v76, v66
	v_fma_f32 v76, -v85, v81, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v80, v79, v78 :: v_dual_fmac_f32 v67, v88, v67
	v_rcp_f32_e32 v82, v89
	v_div_scale_f32 v85, s9, v86, v57, v86
	v_div_scale_f32 v88, null, v57, v57, v68
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v90, v85, v67
	v_div_fmas_f32 v76, v76, v91, v81
	v_fma_f32 v81, -v83, v80, v79
	v_rcp_f32_e32 v92, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v89, v82, 1.0
	v_div_fixup_f32 v45, v66, v57, v45
	v_fma_f32 v66, -v84, v90, v85
	v_fmac_f32_e32 v80, v81, v78
	v_div_fixup_f32 v46, v76, v57, v46
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v76, s10, v87, v57, v87
	v_div_scale_f32 v81, null, v57, v57, v12
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v88, v92, 1.0
	v_fma_f32 v79, -v83, v80, v79
	v_fmac_f32_e32 v90, v66, v67
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v83, v76, v82
	v_rcp_f32_e32 v93, v81
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s11, v68, v57, v68
	v_div_fmas_f32 v66, v79, v78, v80
	v_fma_f32 v78, -v84, v90, v85
	v_div_scale_f32 v85, null, v57, v57, v77
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v79, -v89, v83, v76
	v_mul_f32_e32 v80, v91, v92
	v_div_fmas_f32 v67, v78, v67, v90
	v_rcp_f32_e32 v78, v85
	v_fma_f32 v84, -v81, v93, 1.0
	v_fmac_f32_e32 v83, v79, v82
	v_fma_f32 v79, -v88, v80, v91
	v_div_fixup_f32 v65, v66, v57, v65
	v_div_fixup_f32 v66, v67, v57, v86
	v_fmac_f32_e32 v93, v84, v93
	v_div_scale_f32 v84, s8, v12, v57, v12
	v_fmac_f32_e32 v80, v79, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v85, v78, 1.0
	v_div_scale_f32 v86, null, v57, v57, v75
	v_fma_f32 v67, -v89, v83, v76
	v_mul_f32_e32 v76, v84, v93
	v_fmac_f32_e32 v78, v79, v78
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v79, v86
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v89, null, v57, v57, v72
	v_div_fmas_f32 v67, v67, v82, v83
	v_fma_f32 v82, -v88, v80, v91
	v_fma_f32 v83, -v81, v76, v84
	v_div_scale_f32 v88, s9, v77, v57, v77
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v86, v79, 1.0
	v_div_fmas_f32 v80, v82, v92, v80
	v_fmac_f32_e32 v76, v83, v93
	v_rcp_f32_e32 v82, v89
	v_mul_f32_e32 v83, v88, v78
	v_fmac_f32_e32 v79, v90, v79
	v_div_fixup_f32 v68, v80, v57, v68
	v_fma_f32 v80, -v81, v76, v84
	v_div_scale_f32 v90, null, v57, v57, v71
	v_fma_f32 v81, -v85, v83, v88
	v_div_fixup_f32 v67, v67, v57, v87
	v_div_scale_f32 v84, s10, v75, v57, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v89, v82, 1.0
	v_fmac_f32_e32 v83, v81, v78
	v_rcp_f32_e32 v81, v90
	v_div_scale_f32 v91, null, v57, v57, v11
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v82, v87, v82
	v_div_fmas_f32 v76, v80, v93, v76
	v_mul_f32_e32 v80, v84, v79
	v_div_scale_f32 v87, s8, v72, v57, v72
	v_rcp_f32_e32 v92, v91
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v12, v76, v57, v12
	v_fma_f32 v76, -v85, v83, v88
	v_fma_f32 v85, -v86, v80, v84
	v_mul_f32_e32 v88, v87, v82
	v_fma_f32 v93, -v90, v81, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v60, v60, v57, v94
	v_div_fmas_f32 v76, v76, v78, v83
	v_fmac_f32_e32 v80, v85, v79
	v_fma_f32 v78, -v89, v88, v87
	v_fmac_f32_e32 v81, v93, v81
	v_div_scale_f32 v83, s9, v71, v57, v71
	v_fma_f32 v85, -v91, v92, 1.0
	v_div_fixup_f32 v76, v76, v57, v77
	v_fma_f32 v77, -v86, v80, v84
	v_fmac_f32_e32 v88, v78, v82
	v_mul_f32_e32 v78, v83, v81
	v_fmac_f32_e32 v92, v85, v92
	v_div_scale_f32 v85, null, v57, v57, v9
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v84, s11, v11, v57, v11
	v_div_fmas_f32 v77, v77, v79, v80
	v_fma_f32 v79, -v89, v88, v87
	v_fma_f32 v80, -v90, v78, v83
	v_rcp_f32_e32 v86, v85
	v_div_scale_f32 v89, null, v57, v57, v10
	v_mul_f32_e32 v87, v84, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v80, v81
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v80, v89
	v_div_fmas_f32 v79, v79, v82, v88
	v_fma_f32 v82, -v91, v87, v84
	v_div_fixup_f32 v75, v77, v57, v75
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v85, v86, 1.0
	v_fma_f32 v77, -v90, v78, v83
	v_div_fixup_f32 v72, v79, v57, v72
	v_fmac_f32_e32 v87, v82, v92
	v_div_scale_f32 v79, s8, v9, v57, v9
	v_fmac_f32_e32 v86, v88, v86
	v_fma_f32 v82, -v89, v80, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v83, s9, v10, v57, v10
	v_div_fmas_f32 v77, v77, v81, v78
	v_fma_f32 v78, -v91, v87, v84
	v_dual_mul_f32 v81, v79, v86 :: v_dual_fmac_f32 v80, v82, v80
	v_div_scale_f32 v82, null, v53, v53, v69
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v90, null, v53, v53, v70
	v_div_fmas_f32 v78, v78, v92, v87
	v_rcp_f32_e32 v84, v82
	v_fma_f32 v87, -v85, v81, v79
	v_mul_f32_e32 v88, v83, v80
	v_div_fixup_f32 v71, v77, v57, v71
	v_div_fixup_f32 v11, v78, v57, v11
	v_rcp_f32_e32 v78, v90
	v_fmac_f32_e32 v81, v87, v86
	v_fma_f32 v77, -v89, v88, v83
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v92, null, v53, v53, v73
	v_fma_f32 v87, -v82, v84, 1.0
	v_fma_f32 v79, -v85, v81, v79
	v_div_scale_f32 v85, null, v53, v53, v74
	v_fmac_f32_e32 v88, v77, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v87, v84
	v_div_scale_f32 v77, s10, v69, v53, v69
	v_rcp_f32_e32 v87, v85
	v_fma_f32 v91, -v90, v78, 1.0
	v_div_fmas_f32 v79, v79, v86, v81
	v_fma_f32 v81, -v89, v88, v83
	v_mul_f32_e32 v83, v77, v84
	v_div_scale_f32 v86, s8, v70, v53, v70
	v_fmac_f32_e32 v78, v91, v78
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v91, -v82, v83, v77
	v_fma_f32 v89, -v85, v87, 1.0
	v_rcp_f32_e32 v94, v92
	v_mul_f32_e32 v93, v86, v78
	v_div_fmas_f32 v80, v81, v80, v88
	v_fmac_f32_e32 v83, v91, v84
	v_fmac_f32_e32 v87, v89, v87
	v_div_scale_f32 v89, s11, v74, v53, v74
	v_fma_f32 v81, -v90, v93, v86
	v_div_fixup_f32 v9, v79, v57, v9
	v_div_fixup_f32 v10, v80, v57, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v88, v89, v87
	v_fma_f32 v57, -v82, v83, v77
	v_div_scale_f32 v80, null, v53, v53, v61
	v_fmac_f32_e32 v93, v81, v78
	v_fma_f32 v77, -v85, v88, v89
	v_fma_f32 v79, -v92, v94, 1.0
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v90, v93, v86
	v_fmac_f32_e32 v88, v77, v87
	v_rcp_f32_e32 v77, v80
	v_fmac_f32_e32 v94, v79, v94
	v_div_scale_f32 v79, s9, v73, v53, v73
	v_div_fmas_f32 v57, v57, v84, v83
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v83, null, v53, v53, v62
	v_div_fmas_f32 v78, v81, v78, v93
	v_fma_f32 v81, -v85, v88, v89
	v_mul_f32_e32 v82, v79, v94
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v84, -v80, v77, 1.0
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v85, v83
	v_div_fmas_f32 v81, v81, v87, v88
	v_fma_f32 v86, -v92, v82, v79
	v_fmac_f32_e32 v77, v84, v77
	v_div_scale_f32 v84, s8, v61, v53, v61
	v_div_fixup_f32 v57, v57, v53, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v82, v86, v94
	v_div_fixup_f32 v69, v78, v53, v70
	v_div_fixup_f32 v70, v81, v53, v74
	v_mul_f32_e32 v74, v84, v77
	v_fma_f32 v78, -v83, v85, 1.0
	v_fma_f32 v79, -v92, v82, v79
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v81, null, v53, v53, v63
	v_fma_f32 v86, -v80, v74, v84
	v_fmac_f32_e32 v85, v78, v85
	v_div_scale_f32 v78, s10, v62, v53, v62
	v_div_fmas_f32 v79, v79, v94, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v74, v86, v77
	v_rcp_f32_e32 v87, v81
	v_mul_f32_e32 v82, v78, v85
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v73, v79, v53, v73
	v_fma_f32 v79, -v80, v74, v84
	v_div_scale_f32 v86, null, v53, v53, v64
	v_fma_f32 v80, -v83, v82, v78
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v74, v79, v77, v74
	v_div_scale_f32 v77, null, v53, v53, v8
	v_fma_f32 v84, -v81, v87, 1.0
	v_rcp_f32_e32 v88, v86
	v_fmac_f32_e32 v82, v80, v85
	v_rcp_f32_e32 v80, v77
	v_div_scale_f32 v79, s8, v63, v53, v63
	v_fmac_f32_e32 v87, v84, v87
	v_div_scale_f32 v84, null, v53, v53, v50
	v_div_fixup_f32 v61, v74, v53, v61
	v_fma_f32 v78, -v83, v82, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v86, v88, 1.0
	v_rcp_f32_e32 v90, v84
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v77, v80, 1.0
	v_mul_f32_e32 v83, v79, v87
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v88, v74, v88
	v_div_scale_f32 v74, s9, v64, v53, v64
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v89, null, v53, v53, v54
	v_div_fmas_f32 v78, v78, v85, v82
	v_fma_f32 v82, -v81, v83, v79
	v_mul_f32_e32 v85, v74, v88
	v_div_scale_f32 v91, s10, v8, v53, v8
	v_fma_f32 v92, -v84, v90, 1.0
	v_rcp_f32_e32 v93, v89
	v_fmac_f32_e32 v83, v82, v87
	v_fma_f32 v82, -v86, v85, v74
	v_mul_f32_e32 v94, v91, v80
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s11, v50, v53, v50
	v_div_fixup_f32 v62, v78, v53, v62
	v_fma_f32 v78, -v81, v83, v79
	v_fmac_f32_e32 v85, v82, v88
	v_fma_f32 v79, -v77, v94, v91
	v_mul_f32_e32 v81, v92, v90
	v_fma_f32 v82, -v89, v93, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v74, -v86, v85, v74
	v_fmac_f32_e32 v94, v79, v80
	v_fma_f32 v79, -v84, v81, v92
	v_fmac_f32_e32 v93, v82, v93
	v_div_scale_f32 v82, s8, v54, v53, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v77, -v77, v94, v91
	v_fmac_f32_e32 v81, v79, v90
	v_div_fmas_f32 v78, v78, v87, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v79, v82, v93
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v83, null, v53, v53, v56
	v_div_fmas_f32 v74, v74, v88, v85
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v63, v78, v53, v63
	v_div_fmas_f32 v77, v77, v80, v94
	v_fma_f32 v80, -v84, v81, v92
	v_fma_f32 v84, -v89, v79, v82
	v_rcp_f32_e32 v85, v83
	v_div_fixup_f32 v64, v74, v53, v64
	v_div_fixup_f32 v8, v77, v53, v8
	v_div_scale_f32 v77, null, v53, v53, v55
	v_fmac_f32_e32 v79, v84, v93
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v87, null, v53, v53, v7
	v_div_fmas_f32 v80, v80, v90, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v74, -v89, v79, v82
	v_fma_f32 v78, -v83, v85, 1.0
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v89, v87
	v_div_fixup_f32 v50, v80, v53, v50
	v_div_fmas_f32 v74, v74, v93, v79
	v_rcp_f32_e32 v79, v77
	v_fmac_f32_e32 v85, v78, v85
	v_div_scale_f32 v78, null, v53, v53, v5
	v_div_scale_f32 v80, null, v53, v53, v6
	v_div_scale_f32 v81, vcc_lo, v56, v53, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v82, v78
	v_rcp_f32_e32 v84, v80
	v_div_fixup_f32 v54, v74, v53, v54
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v74, -v77, v79, 1.0
	v_mul_f32_e32 v86, v81, v85
	v_fma_f32 v93, -v87, v89, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v79, v74, v79
	v_div_scale_f32 v74, s8, v55, v53, v55
	v_fma_f32 v88, -v78, v82, 1.0
	v_fma_f32 v91, -v80, v84, 1.0
	v_fma_f32 v90, -v83, v86, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v92, v74, v79 :: v_dual_fmac_f32 v89, v93, v89
	v_fmac_f32_e32 v82, v88, v82
	v_div_scale_f32 v88, s9, v5, v53, v5
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v91, s10, v6, v53, v6
	v_fmac_f32_e32 v86, v90, v85
	v_fma_f32 v90, -v77, v92, v74
	v_div_scale_f32 v93, s11, v7, v53, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v94, v88, v82 :: v_dual_mul_f32 v95, v91, v84
	v_fmac_f32_e32 v92, v90, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v96, v93, v89
	v_fma_f32 v81, -v83, v86, v81
	v_fma_f32 v83, -v78, v94, v88
	v_fma_f32 v90, -v80, v95, v91
	v_fma_f32 v74, -v77, v92, v74
	v_fma_f32 v77, -v87, v96, v93
	v_div_fmas_f32 v81, v81, v85, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v94, v83, v82 :: v_dual_fmac_f32 v95, v90, v84
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v96, v77, v89
	v_div_fmas_f32 v74, v74, v79, v92
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v78, -v78, v94, v88
	v_fma_f32 v77, -v80, v95, v91
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v79, -v87, v96, v93
	s_mov_b32 s8, 0xc1000000
	v_div_fmas_f32 v78, v78, v82, v94
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v56, v81, v53, v56
	v_div_fmas_f32 v77, v77, v84, v95
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v55, v74, v53, v55
	v_div_fmas_f32 v79, v79, v89, v96
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v75
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v7, v79, v53, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v19, v19
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v5, v78, v53, v5
	v_div_fixup_f32 v6, v77, v53, v6
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v53, v58
	v_rndne_f32_e32 v58, v59
	v_rndne_f32_e32 v59, v60
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v60, v65
	v_rndne_f32_e32 v65, v66
	v_rndne_f32_e32 v66, v67
	v_rndne_f32_e32 v67, v68
	v_rndne_f32_e32 v68, v76
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v73, v73
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_cvt_i32_f32_e32 v76, v18
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v92, v8
	v_cvt_i32_f32_e32 v99, v7
	v_and_b32_e32 v7, 15, v23
	v_and_b32_e32 v8, 15, v26
	v_and_b32_e32 v18, 15, v19
	v_and_b32_e32 v19, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v192
	v_and_b32_e32 v23, 16, v192
	v_lshlrev_b32_e32 v26, 4, v193
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v5, v5
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_cvt_i32_f32_e32 v95, v56
	v_and_b32_e32 v56, 15, v74
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v74, 6, v23
	v_xor_b32_e32 v26, v26, v29
	v_lshlrev_b32_e32 v29, 6, v192
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v55, v55
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v5, v5, s8, 0x40e00000
	v_med3_f32 v6, v6, s8, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v81, v45
	v_cvt_i32_f32_e32 v82, v46
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v87, v57
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v73, v73
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v74
	v_and_or_b32 v25, 0x1b00, v29, v25
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v75, v17
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v77, v16
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v83, v12
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v93, v50
	v_cvt_i32_f32_e32 v94, v54
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v44, v44
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v79, v14
	v_cvt_i32_f32_e32 v84, v11
	v_cvt_i32_f32_e32 v85, v9
	v_cvt_i32_f32_e32 v86, v10
	v_cvt_i32_f32_e32 v89, v62
	v_cvt_i32_f32_e32 v90, v63
	v_cvt_i32_f32_e32 v91, v64
	v_cvt_i32_f32_e32 v97, v5
	v_cvt_i32_f32_e32 v98, v6
	v_and_b32_e32 v5, 15, v34
	v_and_b32_e32 v6, 15, v30
	v_and_b32_e32 v9, 15, v38
	v_and_b32_e32 v10, 15, v37
	v_and_b32_e32 v11, 15, v32
	v_and_b32_e32 v12, 15, v31
	v_and_b32_e32 v14, 15, v49
	v_and_b32_e32 v16, 15, v39
	v_and_b32_e32 v17, 15, v33
	v_and_b32_e32 v30, 15, v76
	v_and_b32_e32 v31, 15, v42
	v_and_b32_e32 v32, 15, v35
	v_and_b32_e32 v33, 15, v36
	v_and_b32_e32 v34, 15, v47
	v_and_b32_e32 v35, 15, v48
	v_and_b32_e32 v39, 15, v51
	v_and_b32_e32 v46, 15, v58
	v_and_b32_e32 v47, 15, v59
	v_and_b32_e32 v48, 15, v81
	v_and_b32_e32 v49, 15, v82
	v_and_b32_e32 v51, 15, v65
	v_and_b32_e32 v62, 15, v87
	v_and_b32_e32 v63, 15, v69
	v_and_b32_e32 v64, 15, v70
	v_and_b32_e32 v65, 15, v73
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v26, v27
	v_xad_u32 v25, v25, v194, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v78, v15
	v_cvt_i32_f32_e32 v80, v13
	v_cvt_i32_f32_e32 v96, v55
	v_and_b32_e32 v13, 15, v20
	v_and_b32_e32 v15, 15, v41
	v_and_b32_e32 v20, 15, v75
	v_and_b32_e32 v37, 15, v40
	v_and_b32_e32 v38, 15, v77
	v_and_b32_e32 v40, 15, v52
	v_and_b32_e32 v41, 15, v53
	v_and_b32_e32 v54, 15, v83
	v_and_b32_e32 v55, 15, v68
	v_and_b32_e32 v57, 15, v72
	v_and_b32_e32 v58, 15, v71
	v_and_b32_e32 v70, 15, v92
	v_and_b32_e32 v71, 15, v93
	v_and_b32_e32 v72, 15, v94
	v_and_b32_e32 v73, 15, v95
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[5:8]
	ds_store_b128 v0, v[13:16] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v25
	ds_load_b128 v[13:16], v25 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[30:33]
	ds_store_b128 v0, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v25
	ds_load_b128 v[38:41], v25 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[46:49]
	ds_store_b128 v0, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v25
	ds_load_b128 v[54:57], v25 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[62:65]
	ds_store_b128 v0, v[70:73] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[62:65], v25
	ds_load_b128 v[70:73], v25 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[9:12]
	ds_store_b128 v0, v[17:20] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v25
	ds_load_b128 v[17:20], v25 offset:1024
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v44, v44
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_and_b32_e32 v36, 15, v43
	v_and_b32_e32 v42, 15, v44
	v_and_b32_e32 v43, 15, v78
	v_and_b32_e32 v44, 15, v79
	v_and_b32_e32 v45, 15, v80
	v_cvt_i32_f32_e32 v88, v61
	v_and_b32_e32 v50, 15, v60
	v_and_b32_e32 v52, 15, v66
	v_and_b32_e32 v53, 15, v67
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[34:37]
	ds_store_b128 v0, v[42:45] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v25
	ds_load_b128 v[42:45], v25 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v59, 15, v84
	v_and_b32_e32 v60, 15, v85
	v_and_b32_e32 v61, 15, v86
	v_and_b32_e32 v66, 15, v88
	v_and_b32_e32 v67, 15, v89
	v_and_b32_e32 v68, 15, v90
	v_and_b32_e32 v69, 15, v91
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[50:53]
	ds_store_b128 v0, v[58:61] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[50:53], v25
	ds_load_b128 v[58:61], v25 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v74, 15, v96
	v_and_b32_e32 v75, 15, v97
	v_and_b32_e32 v76, 15, v98
	v_and_b32_e32 v77, 15, v99
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v12, v20, 4, v12
	v_lshl_or_b32 v20, v40, 4, v31
	v_lshl_or_b32 v31, v54, 4, v46
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v46, 3, v193
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v5, v13, 4, v5
	v_lshl_or_b32 v13, v15, 4, v7
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, s34, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[66:69]
	ds_store_b128 v0, v[74:77] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[66:69], v25
	ds_load_b128 v[74:77], v25 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s61, 7, v46
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v15, v17, 4, v9
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 16, v7
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v6, v14, 4, v6
	v_lshl_or_b32 v14, v16, 4, v8
	v_lshl_or_b32 v16, v18, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 32, v7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v17, v19, 4, v11
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 48, v7
	v_mad_u64_u32 v[7:8], null, v7, s8, v[0:1]
	v_mad_u64_u32 v[8:9], null, v9, s8, v[0:1]
	v_mad_u64_u32 v[9:10], null, v10, s8, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v18, v38, 4, v29
	v_lshl_or_b32 v19, v39, 4, v30
	v_lshl_or_b32 v26, v42, 4, v33
	v_lshl_or_b32 v27, v43, 4, v34
	v_lshl_or_b32 v29, v44, 4, v35
	v_lshl_or_b32 v30, v45, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v11, s8, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v14.l
	v_and_b16 v0.h, 0xff, v13.l
	v_lshlrev_b16 v3.l, 8, v6.l
	v_and_b16 v4.l, 0xff, v5.l
	v_lshlrev_b16 v5.l, 8, v12.l
	v_and_b16 v5.h, 0xff, v17.l
	v_lshlrev_b16 v6.l, 8, v16.l
	v_and_b16 v6.h, 0xff, v15.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v25, v41, 4, v32
	v_lshl_or_b32 v35, v58, 4, v50
	v_lshl_or_b32 v36, v59, 4, v51
	v_lshl_or_b32 v37, v60, 4, v52
	v_lshl_or_b32 v38, v61, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v4.l, v3.l
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v5.l, 8, v30.l
	v_and_b16 v5.h, 0xff, v29.l
	v_lshlrev_b16 v6.l, 8, v27.l
	v_and_b16 v6.h, 0xff, v26.l
	s_and_b32 s9, s27, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s26
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v32, v55, 4, v47
	v_lshl_or_b32 v33, v56, 4, v48
	v_lshl_or_b32 v34, v57, 4, v49
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v43, v74, 4, v66
	v_lshl_or_b32 v44, v75, 4, v67
	v_lshl_or_b32 v45, v76, 4, v68
	v_lshl_or_b32 v24, v77, 4, v69
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v25.l
	v_and_b16 v0.h, 0xff, v20.l
	v_lshlrev_b16 v3.l, 8, v19.l
	v_and_b16 v4.l, 0xff, v18.l
	buffer_store_b64 v[11:12], v7, s[8:11], 0 offen
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	v_lshlrev_b16 v5.l, 8, v38.l
	v_and_b16 v5.h, 0xff, v37.l
	v_lshlrev_b16 v6.l, 8, v36.l
	v_and_b16 v6.h, 0xff, v35.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v39, v70, 4, v62
	v_lshl_or_b32 v40, v71, 4, v63
	v_lshl_or_b32 v41, v72, 4, v64
	v_lshl_or_b32 v42, v73, 4, v65
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v4.l, v3.l
	v_cndmask_b32_e32 v7, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v0.l, 8, v34.l
	v_and_b16 v0.h, 0xff, v33.l
	v_lshlrev_b16 v3.l, 8, v32.l
	v_and_b16 v4.l, 0xff, v31.l
	v_or_b16 v8.h, v5.h, v5.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v5.l, 8, v24.l
	v_and_b16 v5.h, 0xff, v45.l
	v_lshlrev_b16 v6.l, 8, v44.l
	v_and_b16 v6.h, 0xff, v43.l
	buffer_store_b64 v[11:12], v7, s[8:11], 0 offen
	v_or_b16 v7.h, v0.h, v0.l
	v_or_b16 v7.l, v4.l, v3.l
	v_lshlrev_b16 v0.l, 8, v42.l
	v_and_b16 v0.h, 0xff, v41.l
	v_lshlrev_b16 v3.l, 8, v40.l
	v_and_b16 v4.l, 0xff, v39.l
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v5, 4, v192
	v_lshrrev_b32_e32 v6, 2, v23
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.l, v4.l, v3.l
	v_dual_cndmask_b32 v0, 0x80000000, v10 :: v_dual_and_b32 v5, 2, v5
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[7:8], v9, s[8:11], 0 offen
	buffer_store_b64 v[11:12], v0, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v46
	v_mov_b16_e32 v4.l, v28.h
	v_mov_b16_e32 v3.l, v22.h
	v_add3_u32 v5, v6, v5, v46
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1254 13 is_stmt 0             ; ragged.py:1254:13
	v_add_nc_u32_e32 v7, s34, v21
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	ds_store_b64 v0, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v3, v7, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 0xc0, v192
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[24:25], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[30:31], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	v_cmp_eq_u32_e64 s1, 0, v4
	v_add_lshl_u32 v1, v3, s61, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[28:31], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp74:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 436
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 74
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 74
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 436
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 33440
; TotalNumSgprs: 76
; NumVgprs: 256
; ScratchSize: 436
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 76
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
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
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 436
    .sgpr_count:     76
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 108
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
