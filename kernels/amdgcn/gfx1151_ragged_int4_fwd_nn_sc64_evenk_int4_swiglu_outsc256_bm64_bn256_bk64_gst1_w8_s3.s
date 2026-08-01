	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[48:49], s[0:1], 0x5c
	s_load_b64 s[28:29], s[0:1], 0x48
	v_mov_b32_e32 v173, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_load_b256 s[20:27], s[0:1], 0x28
	s_mov_b32 s36, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v192, 15, v173
	v_and_b32_e32 v193, 0xf0, v173
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_and_b32_e32 v64, 0x80, v173
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
	s_sub_i32 s5, s49, s4
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
	s_xor_b32 s51, s3, s37
	s_sub_i32 s49, s51, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s49, s5
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
	s_cmp_lt_i32 s48, 1
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v24, 5, v173
	s_clause 0x2
	s_load_b64 s[4:5], s[0:1], 0x20
	s_load_b32 s23, s[0:1], 0x58
	s_load_b256 s[40:47], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_dual_mov_b32 v60, 0 :: v_dual_and_b32 v25, 0xe0, v173
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s0, s34, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s35, 0, s0
	v_dual_mov_b32 v211, 0 :: v_dual_and_b32 v26, 0x7f, v173
	v_add_co_u32 v2, vcc_lo, v0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 16
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	v_add_co_u32 v8, vcc_lo, v0, 32
	v_add_co_ci_u32_e64 v9, null, 0, v1, vcc_lo
	v_add_co_u32 v10, vcc_lo, v0, 40
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, 0, v1, vcc_lo
	v_add_co_u32 v12, vcc_lo, v0, 48
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_add_u32 s0, s4, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v13, null, 0, v1, vcc_lo
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_addc_u32 s1, s5, s3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v16, vcc_lo, v0, 56
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[38:39], s[0:1], 0x0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s0, s34, v192
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, s35, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[24:25], v[12:13]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[30:31], v[12:13]
	v_dual_mov_b32 v205, 0 :: v_dual_lshlrev_b32 v12, 1, v173
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v17, null, 0, v1, vcc_lo
	v_add_co_u32 v18, vcc_lo, v14, 16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, 0, v15, vcc_lo
	v_add_co_u32 v20, vcc_lo, v14, 32
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[24:25], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[30:31], v[6:7]
	v_dual_mov_b32 v201, 0 :: v_dual_and_b32 v6, 24, v12
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v21, null, 0, v15, vcc_lo
	v_add_co_u32 v22, vcc_lo, v14, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v23, null, 0, v15, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[24:25], v[8:9]
	v_cmp_le_i64_e64 s4, s[24:25], v[10:11]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[30:31], v[8:9]
	v_cmp_gt_i64_e64 s16, s[30:31], v[10:11]
	v_lshl_or_b32 v9, v192, 5, v6
	v_lshrrev_b32_e32 v6, 1, v25
	v_dual_mov_b32 v197, 0 :: v_dual_lshlrev_b32 v10, 5, v173
	v_dual_mov_b32 v204, 0 :: v_dual_add_nc_u32 v11, s34, v24
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[24:25], v[22:23]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[30:31], v[22:23]
	v_add3_u32 v177, 0, v192, v6
	v_dual_mov_b32 v171, 0 :: v_dual_lshlrev_b32 v6, 2, v193
	v_dual_mov_b32 v199, 0 :: v_dual_and_b32 v10, 32, v10
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[24:25], v[16:17]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[30:31], v[16:17]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[24:25], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s19, s[30:31], v[14:15]
	v_dual_mov_b32 v167, 0 :: v_dual_add_nc_u32 v14, 16, v11
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[24:25], v[0:1]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[30:31], v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s10, s10, s22
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_lshrrev_b32_e32 v1, 7, v64
	v_add3_u32 v6, 0, v6, v10
	v_dual_mov_b32 v169, 0 :: v_dual_add_nc_u32 v10, 8, v11
	v_dual_mov_b32 v202, 0 :: v_dual_add_nc_u32 v15, 24, v11
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s22, s48, s38
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s6, s6, s18
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s18, s22, 1
	v_mul_lo_u32 v180, v14, s23
	v_dual_mov_b32 v253, 0 :: v_dual_add_nc_u32 v14, 40, v11
	s_or_b32 s18, s18, 1
	v_mul_lo_u32 v179, v10, s23
	v_dual_mov_b32 v255, 0 :: v_dual_add_nc_u32 v10, 32, v11
	v_mul_lo_u32 v181, v15, s23
	v_dual_mov_b32 v200, 0 :: v_dual_lshlrev_b32 v15, 1, v1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s7, s7, s19
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_mul_i32 s19, s33, s18
	s_lshl_b32 s18, s51, 8
	v_mul_lo_u32 v183, v14, s23
	v_add3_u32 v14, s19, s18, v173
	s_lshl_b32 s19, s37, 8
	s_mul_i32 s37, s23, s38
	v_dual_mov_b32 v209, 0 :: v_dual_add_nc_u32 v0, s34, v192
	v_mul_lo_u32 v182, v10, s23
	v_dual_mov_b32 v161, 0 :: v_dual_add_nc_u32 v10, 48, v11
	v_lshl_add_u32 v15, s37, 1, v15
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[24:25], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[30:31], v[2:3]
	v_dual_mov_b32 v61, 0 :: v_dual_and_b32 v2, 31, v173
	v_dual_mov_b32 v206, 0 :: v_dual_add_nc_u32 v3, 32, v0
	v_mul_lo_u32 v184, v10, s23
	v_dual_mov_b32 v251, 0 :: v_dual_add_nc_u32 v10, 61, v15
	.loc	1 1153 29 is_stmt 1             ; ragged.py:1153:29
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:212
	scratch_store_b32 off, v12, off offset:216
	v_dual_mov_b32 v207, 0 :: v_dual_add_nc_u32 v2, 16, v0
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mul_lo_u32 v3, s48, v3
	v_mul_lo_u32 v10, s33, v10
	v_dual_mov_b32 v208, 0 :: v_dual_lshlrev_b32 v27, 1, v26
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s11
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s11, s33, 1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[24:25], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[30:31], v[4:5]
	v_dual_mov_b32 v203, 0 :: v_dual_add_nc_u32 v4, 48, v0
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	v_mul_lo_u32 v2, s48, v2
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s11, s11, s23
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_subrev_nc_u32_e32 v14, s19, v14
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s50, s11, s38
	v_cmp_eq_u32_e64 s11, 0, v64
	v_dual_mov_b32 v194, 0 :: v_dual_lshlrev_b32 v189, 1, v3
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add3_u32 v3, v10, s18, v27
	v_mul_lo_u32 v4, s48, v4
	v_mul_lo_u32 v0, s48, v0
	v_or_b32_e32 v10, 30, v1
	v_cndmask_b32_e64 v5, 0x88, 0, s11
	v_dual_mov_b32 v79, 0 :: v_dual_lshlrev_b32 v186, 1, v14
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v14, 57, v15
	v_dual_mov_b32 v107, 0 :: v_dual_lshlrev_b32 v190, 1, v2
	v_subrev_nc_u32_e32 v2, s19, v3
	v_mul_lo_u32 v3, s33, v10
	v_xor_b32_e32 v5, v5, v26
	v_dual_mov_b32 v89, 0 :: v_dual_lshlrev_b32 v188, 1, v4
	v_mul_lo_u32 v4, s33, v14
	v_dual_mov_b32 v170, 0 :: v_dual_lshlrev_b32 v191, 1, v0
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v0, 53, v15
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v2, 1, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:220
	scratch_store_b32 off, v9, off offset:224
	v_mul_lo_u32 v0, s33, v0
	v_dual_mov_b32 v168, 0 :: v_dual_lshlrev_b32 v3, 1, v3
	scratch_store_b32 off, v2, off offset:228 ; 4-byte Folded Spill
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v2, 49, v15
	v_add3_u32 v4, v4, s18, v27
	v_or_b32_e32 v10, 28, v1
	v_add3_u32 v0, v0, s18, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v2, s33, v2
	v_mov_b32_e32 v75, 0
	v_subrev_nc_u32_e32 v4, s19, v4
	v_mul_lo_u32 v10, s33, v10
	v_subrev_nc_u32_e32 v0, s19, v0
	v_mov_b32_e32 v129, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v4, 1, v4
	v_add3_u32 v2, v2, s18, v27
	scratch_store_b32 off, v3, off offset:232 ; 4-byte Folded Spill
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v0, 1, v0
	scratch_store_b32 off, v4, off offset:236 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v4, 1, v10
	v_subrev_nc_u32_e32 v2, s19, v2
	v_dual_mov_b32 v166, 0 :: v_dual_add_nc_u32 v3, 45, v15
	v_or_b32_e32 v10, 24, v1
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 1, v2
	scratch_store_b32 off, v4, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v4, 26, v1
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v0, 41, v15
	s_mul_i32 s22, s22, s33
	v_mul_lo_u32 v3, s33, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v4, s33, v4
	v_mul_lo_u32 v10, s33, v10
	s_lshl_b32 s22, s22, 1
	v_mul_lo_u32 v176, v11, s23
	v_dual_mov_b32 v196, 0 :: v_dual_add_nc_u32 v11, 56, v11
	v_add3_u32 v16, s22, s18, v173
	v_mul_lo_u32 v0, s33, v0
	v_dual_mov_b32 v101, 0 :: v_dual_lshlrev_b32 v4, 1, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v185, v11, s23
	v_subrev_nc_u32_e32 v11, s19, v16
	v_add3_u32 v3, v3, s18, v27
	v_dual_mov_b32 v145, 0 :: v_dual_lshlrev_b32 v10, 1, v10
	scratch_store_b32 off, v4, off offset:248 ; 4-byte Folded Spill
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v4, 37, v15
	v_add3_u32 v0, v0, s18, v27
	v_dual_mov_b32 v198, 0 :: v_dual_lshlrev_b32 v187, 1, v11
	v_or_b32_e32 v11, 22, v1
	v_subrev_nc_u32_e32 v3, s19, v3
	v_mul_lo_u32 v4, s33, v4
	v_subrev_nc_u32_e32 v0, s19, v0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v147, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 1, v3
	scratch_store_b32 off, v2, off offset:252 ; 4-byte Folded Spill
	v_mul_lo_u32 v2, s33, v11
	v_dual_mov_b32 v249, 0 :: v_dual_add_nc_u32 v0, 1, v0
	v_add3_u32 v4, v4, s18, v27
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v3, off offset:260
	scratch_store_b32 off, v173, off offset:376
	scratch_store_b32 off, v0, off offset:268
	v_dual_mov_b32 v162, 0 :: v_dual_add_nc_u32 v3, 33, v15
	v_lshlrev_b32_e32 v2, 1, v2
	scratch_store_b32 off, v10, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v10, 20, v1
	v_subrev_nc_u32_e32 v0, s19, v4
	v_mul_lo_u32 v3, s33, v3
	v_or_b32_e32 v11, 18, v1
	v_mov_b32_e32 v141, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v0, 1, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:264
	scratch_store_b32 off, v192, off offset:380
	v_mul_lo_u32 v2, s33, v10
	v_add_nc_u32_e32 v10, 29, v15
	v_mul_lo_u32 v11, s33, v11
	v_add3_u32 v3, v3, s18, v27
	v_or_b32_e32 v4, 16, v1
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_mul_lo_u32 v10, s33, v10
	v_dual_mov_b32 v247, 0 :: v_dual_lshlrev_b32 v2, 1, v2
	v_subrev_nc_u32_e32 v0, s19, v3
	v_mul_lo_u32 v4, s33, v4
	v_mov_b32_e32 v117, 0
	v_mov_b32_e32 v137, 0
	v_mov_b32_e32 v139, 0
	v_add3_u32 v3, v10, s18, v27
	v_lshlrev_b32_e32 v10, 1, v11
	scratch_store_b32 off, v2, off offset:272 ; 4-byte Folded Spill
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v0, 1, v0
	v_mov_b32_e32 v95, 0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v10, off offset:280
	scratch_store_b32 off, v193, off offset:384
	scratch_store_b32 off, v0, off offset:284
	v_add_nc_u32_e32 v10, 21, v15
	v_lshlrev_b32_e32 v0, 1, v4
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v2, 25, v15
	v_mov_b32_e32 v109, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v4, s33, v10
	v_or_b32_e32 v10, 12, v1
	v_mul_lo_u32 v2, s33, v2
	v_mov_b32_e32 v160, 0
	v_or_b32_e32 v11, 10, v1
	v_mov_b32_e32 v96, 0
	v_mul_lo_u32 v10, s33, v10
	v_mov_b32_e32 v125, 0
	v_add3_u32 v4, v4, s18, v27
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v14, 13, v15
	v_add3_u32 v2, v2, s18, v27
	v_mov_b32_e32 v93, 0
	v_dual_mov_b32 v119, 0 :: v_dual_lshlrev_b32 v10, 1, v10
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s19, v3
	v_or_b32_e32 v3, 14, v1
	v_subrev_nc_u32_e32 v2, s19, v2
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v121, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v0, 1, v0
	scratch_store_b32 off, v64, off offset:388 ; 4-byte Folded Spill
	v_mov_b32_e32 v87, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v63, 0
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s33, v3
	v_add_nc_u32_e32 v3, 17, v15
	v_mov_b32_e32 v123, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v111, 0
	v_xor_b32_e32 v5, 0x110, v5
	v_mul_lo_u32 v3, s33, v3
	v_mov_b32_e32 v88, 0
	v_dual_mov_b32 v113, 0 :: v_dual_lshlrev_b32 v0, 1, v0
	v_xor_b32_e32 v7, 8, v9
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v103, 0
	v_xor_b32_e32 v8, 16, v9
	v_add3_u32 v3, v3, s18, v27
	v_mov_b32_e32 v97, 0
	v_xor_b32_e32 v9, 24, v9
	v_dual_mov_b32 v99, 0 :: v_dual_and_b32 v12, 28, v12
	v_mov_b32_e32 v195, 0
	v_subrev_nc_u32_e32 v3, s19, v3
	v_dual_mov_b32 v62, 0 :: v_dual_lshlrev_b32 v13, 1, v193
	v_mov_b32_e32 v105, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[24:25], v[18:19]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v3, 1, v3
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 1, v2
	v_mul_lo_u32 v2, s33, v11
	v_or_b32_e32 v11, 8, v1
	scratch_store_b32 off, v3, off offset:316 ; 4-byte Folded Spill
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[24:25], v[20:21]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[30:31], v[18:19]
	v_cmp_gt_i64_e64 s21, s[30:31], v[20:21]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_lshl_or_b32 v172, s49, 8, v27
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v229, 0, v13
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_lshlrev_b32_e32 v2, 1, v2
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s19, v4
	v_mul_lo_u32 v4, s33, v14
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v67, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v0, 1, v0
	scratch_store_b32 off, v10, off offset:304 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v10, 9, v15
	v_add3_u32 v4, v4, s18, v27
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v128, 0
	v_mov_b32_e32 v102, 0
	v_mul_lo_u32 v10, s33, v10
	v_subrev_nc_u32_e32 v3, s19, v4
	v_mov_b32_e32 v130, 0
	v_mov_b32_e32 v150, 0
	v_mov_b32_e32 v148, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v3, 1, v3
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s33, v11
	v_or_b32_e32 v11, 2, v1
	v_add3_u32 v4, v10, s18, v27
	v_or_b32_e32 v10, 4, v1
	v_mov_b32_e32 v146, 0
	v_mov_b32_e32 v250, 0
	v_mul_lo_u32 v11, s33, v11
	v_subrev_nc_u32_e32 v4, s19, v4
	v_lshlrev_b32_e32 v0, 1, v0
	scratch_store_b32 off, v2, off offset:312 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 5, v15
	v_mul_lo_u32 v10, s33, v10
	v_mov_b32_e32 v248, 0
	v_mov_b32_e32 v152, 0
	v_mov_b32_e32 v224, 0
	v_mul_lo_u32 v2, s33, v2
	v_mov_b32_e32 v154, 0
	v_mov_b32_e32 v142, 0
	v_mov_b32_e32 v254, 0
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v138, 0
	v_mov_b32_e32 v136, 0
	v_mov_b32_e32 v132, 0
	v_add3_u32 v2, v2, s18, v27
	s_add_i32 s18, s18, s33
	v_mov_b32_e32 v108, 0
	v_mov_b32_e32 v134, 0
	v_mov_b32_e32 v126, 0
	v_subrev_nc_u32_e32 v2, s19, v2
	v_mov_b32_e32 v122, 0
	v_mov_b32_e32 v124, 0
	v_mov_b32_e32 v92, 0
	v_mov_b32_e32 v94, 0
	v_add_nc_u32_e32 v2, 1, v2
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 6, v1
	v_mul_lo_u32 v1, s33, v1
	v_mov_b32_e32 v120, 0
	scratch_store_b32 off, v2, off offset:340 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v2, 1, v11
	v_mul_lo_u32 v0, s33, v0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v80, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v112, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v106, 0
	v_lshlrev_b32_e32 v0, 1, v0
	scratch_store_b32 off, v3, off offset:324 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v15
	v_mov_b32_e32 v98, 0
	v_mov_b32_e32 v104, 0
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v77, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v74, 0
	v_add3_u32 v3, s18, v3, v27
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v66, 0
	v_mov_b32_e32 v72, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s12
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_subrev_nc_u32_e32 v0, s19, v3
	v_add_nc_u32_e32 v3, 1, v4
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s13
	s_and_b32 s2, s2, s14
	s_and_b32 s3, s3, s15
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v0, 1, v0
	scratch_store_b32 off, v3, off offset:332 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v3, 1, v10
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s4, s4, s16
	s_and_b32 s5, s5, s17
	.loc	1 1135 19                       ; ragged.py:1135:19
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v0, 1, v1
	scratch_store_b32 off, v3, off offset:336 ; 4-byte Folded Spill
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s8, s8, s20
	s_and_b32 s9, s9, s21
	s_and_b32 s13, s41, 0xffff
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v5
	.loc	1 1135 19                       ; ragged.py:1135:19
	scratch_store_b32 off, v2, off offset:344 ; 4-byte Folded Spill
	s_mov_b32 s12, s40
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v7
	s_and_b32 s17, s43, 0xffff
	s_mov_b32 s16, s42
	s_add_u32 s11, s50, s33
	s_and_b32 s45, s45, 0xffff
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v8
	s_and_b32 s21, s47, 0xffff
	s_mov_b32 s20, s46
	s_lshl_b32 s51, s33, 2
	s_lshl_b32 s52, s33, 6
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v9
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, v6, v12
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	s_mov_b32 s53, s36
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	scratch_load_b32 v9, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
	s_clause 0x1b                           ; 112-byte Folded Spill
	scratch_store_b32 off, v102, off offset:108
	scratch_store_b32 off, v161, off offset:104
	scratch_store_b32 off, v61, off offset:100
	scratch_store_b32 off, v66, off offset:96
	scratch_store_b32 off, v62, off offset:92
	scratch_store_b32 off, v117, off offset:88
	scratch_store_b32 off, v96, off offset:84
	scratch_store_b32 off, v72, off offset:80
	scratch_store_b32 off, v97, off offset:76
	scratch_store_b32 off, v70, off offset:72
	scratch_store_b32 off, v114, off offset:68
	scratch_store_b32 off, v60, off offset:64
	scratch_store_b32 off, v129, off offset:60
	scratch_store_b32 off, v151, off offset:56
	scratch_store_b32 off, v71, off offset:52
	scratch_store_b32 off, v73, off offset:48
	scratch_store_b32 off, v98, off offset:44
	scratch_store_b32 off, v127, off offset:40
	scratch_store_b32 off, v68, off offset:36
	scratch_store_b32 off, v122, off offset:32
	scratch_store_b32 off, v79, off offset:28
	scratch_store_b32 off, v80, off offset:24
	scratch_store_b32 off, v81, off offset:20
	scratch_store_b32 off, v107, off offset:16
	scratch_store_b32 off, v78, off offset:12
	scratch_store_b32 off, v106, off offset:8
	scratch_store_b32 off, v69, off offset:4
	scratch_store_b32 off, v63, off
	v_dual_mov_b32 v155, v136 :: v_dual_mov_b32 v210, v209
	v_mov_b32_e32 v165, v141
	v_mov_b32_e32 v141, v120
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v7, off, off offset:212
	scratch_load_b32 v8, off, off offset:352
	v_mov_b32_e32 v161, v65
	v_dual_mov_b32 v209, v208 :: v_dual_mov_b32 v174, v166
	v_dual_mov_b32 v208, v207 :: v_dual_mov_b32 v207, v206
	v_mov_b32_e32 v166, v92
	v_dual_mov_b32 v206, v205 :: v_dual_mov_b32 v205, v204
	v_dual_mov_b32 v153, v131 :: v_dual_mov_b32 v156, v137
	v_mov_b32_e32 v131, v121
	v_mov_b32_e32 v121, v87
	v_mov_b32_e32 v137, v126
	v_mov_b32_e32 v151, v159
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s46, s14
	s_mov_b32 s47, s15
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s22, s14
	s_mov_b32 s23, s15
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s48, s48, -1
	v_mov_b32_e32 v136, v123
	v_dual_mov_b32 v120, v113 :: v_dual_mov_b32 v113, v110
	v_dual_mov_b32 v204, v203 :: v_dual_mov_b32 v203, v202
	v_mov_b32_e32 v110, v83
	v_mov_b32_e32 v158, v134
	v_dual_mov_b32 v134, v84 :: v_dual_mov_b32 v97, v154
	v_mov_b32_e32 v154, v108
	v_dual_mov_b32 v108, v74 :: v_dual_mov_b32 v157, v109
	v_mov_b32_e32 v163, v139
	v_mov_b32_e32 v139, v128
	v_mov_b32_e32 v96, v200
	v_mov_b32_e32 v128, v118
	v_dual_mov_b32 v118, v99 :: v_dual_mov_b32 v99, v76
	v_mov_b32_e32 v200, v198
	v_mov_b32_e32 v198, v196
	v_mov_b32_e32 v196, v194
	v_mov_b32_e32 v194, v170
	v_mov_b32_e32 v170, v146
	v_mov_b32_e32 v146, v124
	v_mov_b32_e32 v124, v75
	v_mov_b32_e32 v140, v133
	v_dual_mov_b32 v133, v85 :: v_dual_mov_b32 v126, v112
	v_mov_b32_e32 v112, v104
	v_mov_b32_e32 v104, v89
	v_dual_mov_b32 v178, v135 :: v_dual_mov_b32 v135, v86
	v_dual_mov_b32 v202, v201 :: v_dual_mov_b32 v201, v199
	v_mov_b32_e32 v199, v197
	v_mov_b32_e32 v109, v77
	v_dual_mov_b32 v123, v82 :: v_dual_mov_b32 v192, v168
	v_mov_b32_e32 v168, v144
	v_dual_mov_b32 v144, v94 :: v_dual_mov_b32 v193, v169
	v_mov_b32_e32 v169, v145
	v_mov_b32_e32 v145, v95
	v_mov_b32_e32 v175, v167
	v_mov_b32_e32 v167, v143
	v_mov_b32_e32 v143, v93
	s_waitcnt vmcnt(2)
	v_add3_u32 v245, v9, s53, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v9, s50, v245
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v41, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v244, v9, s53, v172
	v_add_nc_u32_e32 v9, s50, v244
	buffer_load_u16 v42, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v243, v9, s53, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v9, s50, v243
	buffer_load_u16 v43, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v242, v9, s53, v172
	v_add_nc_u32_e32 v9, s50, v242
	buffer_load_u16 v44, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v241, v9, s53, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v9, s50, v241
	buffer_load_u16 v45, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v240, v9, s53, v172
	v_add_nc_u32_e32 v9, s50, v240
	buffer_load_u16 v46, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v239, v9, s53, v172
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v9, s50, v239
	buffer_load_u16 v47, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:288 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v238, v9, s53, v172
	v_dual_mov_b32 v159, v132 :: v_dual_mov_b32 v132, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v9, s50, v238
	buffer_load_u16 v48, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v237, v9, s53, v172
	v_add_nc_u32_e32 v9, s50, v237
	buffer_load_u16 v49, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v236, v9, s53, v172
	v_mov_b32_e32 v115, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v9, s50, v236
	buffer_load_u16 v50, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v235, v9, s53, v172
	v_add_nc_u32_e32 v9, s50, v235
	buffer_load_u16 v51, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v234, v9, s53, v172
	v_mov_b32_e32 v103, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v9, s50, v234
	buffer_load_u16 v52, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v233, v9, s53, v172
	v_add_nc_u32_e32 v9, s50, v233
	buffer_load_u16 v53, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v232, v9, s53, v172
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v9, s50, v232
	buffer_load_u16 v54, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:232 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v0, v7, v176
	v_add3_u32 v246, v8, s53, v172
	v_add_nc_u32_e32 v1, v7, v179
	v_add_nc_u32_e32 v2, v7, v180
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_add_nc_u32 v3, v7, v181
	v_add_nc_u32_e32 v4, v7, v182
	v_add_nc_u32_e32 v5, v7, v183
	v_add_nc_u32_e32 v6, v7, v184
	v_add_nc_u32_e32 v7, v7, v185
	v_add_nc_u32_e32 v8, s50, v246
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	v_cndmask_b32_e64 v6, 0x80000000, v6, s5
	v_cndmask_b32_e64 v7, 0x80000000, v7, s6
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v0, v0, s[12:15], 0 offen
	buffer_load_u8 v1, v1, s[12:15], 0 offen
	buffer_load_u8 v2, v2, s[12:15], 0 offen
	buffer_load_u8 v3, v3, s[12:15], 0 offen
	buffer_load_u8 v4, v4, s[12:15], 0 offen
	buffer_load_u8 v5, v5, s[12:15], 0 offen
	buffer_load_u8 v6, v6, s[12:15], 0 offen
	buffer_load_u8 v7, v7, s[12:15], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v8, v8, s[16:19], 0 offen
	v_mov_b32_e32 v197, v195
	v_mov_b32_e32 v195, v171
	v_mov_b32_e32 v171, v147
	v_mov_b32_e32 v147, v125
	v_mov_b32_e32 v125, v111
	v_dual_mov_b32 v111, v88 :: v_dual_add_nc_u32 v184, 32, v184
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v182, 32, v182
	v_add_nc_u32_e32 v180, 32, v180
	v_add_nc_u32_e32 v176, 32, v176
	v_add_nc_u32_e32 v185, 32, v185
	v_add_nc_u32_e32 v181, 32, v181
	v_add_nc_u32_e32 v183, 32, v183
	v_add_nc_u32_e32 v179, 32, v179
	s_waitcnt vmcnt(9)
	v_add3_u32 v231, v9, s53, v172
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v9, s50, v231
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v55, v9, s[16:19], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v9, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, 0, v9
	ds_store_b8 v9, v0
	ds_store_b8 v9, v2 offset:512
	ds_store_b8 v9, v4 offset:1024
	ds_store_b8 v9, v6 offset:1536
	scratch_load_b32 v0, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v1
	ds_store_b8 v0, v3 offset:512
	ds_store_b8 v0, v5 offset:1024
	ds_store_b8 v0, v7 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, 0, v0
	ds_load_2addr_stride64_b64 v[25:28], v0 offset1:1
	ds_load_2addr_stride64_b64 v[9:12], v0 offset0:2 offset1:3
	scratch_load_b32 v0, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[29:32], v0 offset1:1
	ds_load_2addr_stride64_b64 v[13:16], v0 offset0:2 offset1:3
	scratch_load_b32 v0, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[33:36], v0 offset1:1
	ds_load_2addr_stride64_b64 v[17:20], v0 offset0:2 offset1:3
	scratch_load_b32 v0, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[37:40], v0 offset1:1
	ds_load_2addr_stride64_b64 v[21:24], v0 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v230, 0, v0
	ds_store_b16 v230, v8
	ds_store_b16 v230, v41 offset:512
	ds_store_b16 v230, v42 offset:1024
	ds_store_b16 v230, v43 offset:1536
	ds_store_b16 v230, v44 offset:2048
	ds_store_b16 v230, v45 offset:2560
	ds_store_b16 v230, v46 offset:3072
	ds_store_b16 v230, v47 offset:3584
	ds_store_b16 v230, v48 offset:4096
	ds_store_b16 v230, v49 offset:4608
	ds_store_b16 v230, v50 offset:5120
	ds_store_b16 v230, v51 offset:5632
	ds_store_b16 v230, v52 offset:6144
	ds_store_b16 v230, v53 offset:6656
	ds_store_b16 v230, v54 offset:7168
	ds_store_b16 v230, v55 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v177 offset:1280
	ds_load_u8 v1, v177 offset:1024
	ds_load_u8 v41, v177 offset:1920
	ds_load_u8 v42, v177 offset:1664
	ds_load_u8 v43, v177 offset:1408
	ds_load_u8 v44, v177 offset:1152
	ds_load_u8 v74, v177 offset:2176
	ds_load_u8 v75, v177 offset:6016
	ds_load_u8 v82, v177 offset:4224
	ds_load_u8 v87, v177 offset:7040
	ds_load_u8 v88, v177 offset:6784
	ds_load_u8 v89, v177 offset:6528
	ds_load_u8 v92, v177 offset:6272
	ds_load_u8 v76, v177 offset:5760
	ds_load_u8 v77, v177 offset:5504
	ds_load_u8 v78, v177 offset:5248
	ds_load_u8 v83, v177 offset:8064
	ds_load_u8 v84, v177 offset:7808
	ds_load_u8 v85, v177 offset:7552
	ds_load_u8 v86, v177 offset:7296
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v177 offset:1792
	ds_load_u8 v2, v177 offset:1536
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v41, 16, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v177 offset:256
	ds_load_u8 v3, v177
	ds_load_u8 v45, v177 offset:896
	ds_load_u8 v46, v177 offset:640
	ds_load_u8 v55, v177 offset:384
	ds_load_u8 v56, v177 offset:128
	v_lshl_or_b32 v60, v1, 16, v0
	ds_load_u8 v0, v177 offset:3328
	ds_load_u8 v1, v177 offset:3072
	ds_load_u8 v57, v177 offset:3968
	ds_load_u8 v58, v177 offset:3712
	ds_load_u8 v69, v177 offset:3456
	ds_load_u8 v70, v177 offset:3200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v177 offset:768
	ds_load_u8 v4, v177 offset:512
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v44, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v42, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v44, 16, v42
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v70, v69, 0xc0c0004
	v_perm_b32 v42, v58, v57, 0xc0c0004
	v_lshl_or_b32 v70, v42, 16, v41
	v_perm_b32 v41, v78, v77, 0xc0c0004
	v_perm_b32 v42, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v3, 16, v2
	ds_load_u8 v1, v177 offset:3840
	ds_load_u8 v2, v177 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v177 offset:2304
	ds_load_u8 v3, v177 offset:2048
	ds_load_u8 v71, v177 offset:2944
	ds_load_u8 v72, v177 offset:2688
	ds_load_u8 v73, v177 offset:2432
	v_lshl_or_b32 v62, v1, 16, v0
	ds_load_u8 v0, v177 offset:5376
	ds_load_u8 v1, v177 offset:5120
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v177 offset:2816
	ds_load_u8 v4, v177 offset:2560
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v44, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v43, v74, v73, 0xc0c0004
	v_lshl_or_b32 v72, v42, 16, v41
	v_perm_b32 v41, v86, v85, 0xc0c0004
	v_perm_b32 v42, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	v_lshl_or_b32 v69, v44, 16, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v74, v42, 16, v41
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	v_lshl_or_b32 v61, v3, 16, v2
	ds_load_u8 v1, v177 offset:5888
	ds_load_u8 v2, v177 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v177 offset:4352
	ds_load_u8 v3, v177 offset:4096
	ds_load_u8 v79, v177 offset:4992
	ds_load_u8 v80, v177 offset:4736
	ds_load_u8 v81, v177 offset:4480
	v_lshl_or_b32 v64, v1, 16, v0
	ds_load_u8 v0, v177 offset:7424
	ds_load_u8 v1, v177 offset:7168
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v177 offset:4864
	ds_load_u8 v4, v177 offset:4608
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v44, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v43, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v44, 16, v43
	v_perm_b32 v43, v92, v89, 0xc0c0004
	v_perm_b32 v44, v88, v87, 0xc0c0004
	v_lshl_or_b32 v73, v44, 16, v43
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v3, 16, v2
	ds_load_u8 v1, v177 offset:7936
	ds_load_u8 v2, v177 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v177 offset:6400
	ds_load_u8 v3, v177 offset:6144
	v_lshl_or_b32 v66, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v177 offset:6912
	ds_load_u8 v4, v177 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v3, 16, v2
	v_dual_mov_b32 v1, s36 :: v_dual_mov_b32 v2, s37
	v_dual_mov_b32 v3, s38 :: v_dual_mov_b32 v4, s39
	v_dual_mov_b32 v5, s40 :: v_dual_mov_b32 v6, s41
	v_dual_mov_b32 v7, s42 :: v_dual_mov_b32 v8, s43
	v_wmma_i32_16x16x16_iu4 v[47:54], v[59:60], v[25:26], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[47:54], v[61:62], v[29:30], v[47:54] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[47:54], v[63:64], v[33:34], v[47:54] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[47:54], v[65:66], v[37:38], v[47:54] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v102, v48
	v_cvt_f32_i32_e32 v117, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v129, v50
	v_cvt_f32_i32_e32 v47, v47
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v52
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v53
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v54
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[48:55], v[67:68], v[25:26], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[48:55], v[69:70], v[29:30], v[48:55] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[71:72], v[33:34], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[73:74], v[37:38], v[48:55] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v48
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v53
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v54
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v55
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v49
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v50
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v51
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v52
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[48:55], v[59:60], v[27:28], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[48:55], v[61:62], v[31:32], v[48:55] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[63:64], v[35:36], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[65:66], v[39:40], v[48:55] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v217, v48
	v_cvt_f32_i32_e32 v216, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v215, v50
	v_cvt_f32_i32_e32 v214, v51
	v_cvt_f32_i32_e32 v212, v52
	v_cvt_f32_i32_e32 v98, v53
	v_cvt_f32_i32_e32 v114, v54
	v_cvt_f32_i32_e32 v127, v55
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[48:55], v[67:68], v[27:28], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[69:70], v[31:32], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[71:72], v[35:36], v[48:55] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[73:74], v[39:40], v[48:55] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v48
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v53
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v54
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v55
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v49
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v50
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v51
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v52
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[48:55], v[59:60], v[9:10], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[48:55], v[61:62], v[13:14], v[48:55] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[63:64], v[17:18], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[65:66], v[21:22], v[48:55] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v46, v48
	v_cvt_f32_i32_e32 v45, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v44, v50
	v_cvt_f32_i32_e32 v228, v51
	v_cvt_f32_i32_e32 v227, v52
	v_cvt_f32_i32_e32 v225, v53
	v_cvt_f32_i32_e32 v222, v54
	v_cvt_f32_i32_e32 v220, v55
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[48:55], v[67:68], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[69:70], v[13:14], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[71:72], v[17:18], v[48:55] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[73:74], v[21:22], v[48:55] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v122, v51
	v_cvt_f32_i32_e32 v43, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v106, v50
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v53
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v54
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v55
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v52
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[51:58], v[59:60], v[11:12], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:348 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[51:58], v[61:62], v[15:16], v[51:58] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[51:58], v[63:64], v[19:20], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[51:58], v[65:66], v[23:24], v[51:58] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v50, v52
	v_cvt_f32_i32_e32 v49, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v48, v54
	v_cvt_f32_i32_e32 v54, v56
	v_cvt_f32_i32_e32 v53, v57
	v_cvt_f32_i32_e32 v52, v58
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[56:63], v[67:68], v[11:12], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[56:63], v[69:70], v[15:16], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[71:72], v[19:20], v[56:63] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[73:74], v[23:24], v[56:63] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v219, v56
	v_add_nc_u32_e32 v56, s11, v246
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v226, v57
	v_add_nc_u32_e32 v57, s11, v245
	v_cvt_f32_i32_e32 v223, v58
	v_add_nc_u32_e32 v58, s11, v244
	v_cvt_f32_i32_e32 v221, v59
	v_add_nc_u32_e32 v59, s11, v243
	v_cvt_f32_i32_e32 v218, v60
	v_add_nc_u32_e32 v60, s11, v242
	v_cvt_f32_i32_e32 v213, v61
	v_add_nc_u32_e32 v61, s11, v241
	v_cvt_f32_i32_e32 v42, v62
	v_add_nc_u32_e32 v62, s11, v240
	v_cvt_f32_i32_e32 v107, v63
	v_add_nc_u32_e32 v63, s11, v239
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v64, s53, v0
	scratch_load_b32 v0, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1
	buffer_load_u8 v64, v64, s[16:19], 0 offen
	buffer_load_u8 v65, v56, s[16:19], 0 offen
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v56, s53, v0
	scratch_load_b32 v0, off, off offset:332 ; 4-byte Folded Reload
	buffer_load_u8 v66, v56, s[16:19], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v56, s53, v0
	scratch_load_b32 v0, off, off offset:324 ; 4-byte Folded Reload
	s_clause 0x2
	buffer_load_u8 v67, v56, s[16:19], 0 offen
	buffer_load_u8 v57, v57, s[16:19], 0 offen
	buffer_load_u8 v58, v58, s[16:19], 0 offen
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v56, s53, v0
	scratch_load_b32 v0, off, off offset:316 ; 4-byte Folded Reload
	buffer_load_u8 v68, v56, s[16:19], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v56, s53, v0
	scratch_load_b32 v0, off, off offset:308 ; 4-byte Folded Reload
	s_clause 0x2
	buffer_load_u8 v69, v56, s[16:19], 0 offen
	buffer_load_u8 v59, v59, s[16:19], 0 offen
	buffer_load_u8 v60, v60, s[16:19], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v57.h, 8, v68.l
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v56, s53, v0
	scratch_load_b32 v0, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_or_b16 v57.h, v59.l, v57.h
	buffer_load_u8 v70, v56, s[16:19], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v56, s53, v0
	scratch_load_b32 v0, off, off offset:292 ; 4-byte Folded Reload
	s_clause 0x2
	buffer_load_u8 v71, v56, s[16:19], 0 offen
	buffer_load_u8 v61, v61, s[16:19], 0 offen
	buffer_load_u8 v62, v62, s[16:19], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v58.h, 8, v70.l
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v56, s53, v0
	scratch_load_b32 v0, off, off offset:284 ; 4-byte Folded Reload
	s_clause 0x1
	buffer_load_u8 v72, v56, s[16:19], 0 offen
	buffer_load_u8 v63, v63, s[16:19], 0 offen
	v_lshlrev_b16 v56.h, 8, v66.l
	v_add_nc_u32_e32 v66, s11, v232
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v59.l, 8, v71.l
	s_waitcnt vmcnt(4)
	v_or_b16 v58.h, v61.l, v58.h
	v_add_nc_u32_e32 v61, s11, v237
	v_or_b16 v56.h, v57.l, v56.h
	v_lshlrev_b16 v57.l, 8, v67.l
	s_waitcnt vmcnt(3)
	v_or_b16 v59.l, v62.l, v59.l
	v_add_nc_u32_e32 v62, s11, v236
	v_lshlrev_b16 v56.l, 8, v64.l
	v_add_nc_u32_e32 v64, s11, v234
	v_or_b16 v57.l, v58.l, v57.l
	v_lshlrev_b16 v58.l, 8, v69.l
	v_add_nc_u32_e32 v67, s11, v231
	v_or_b16 v56.l, v65.l, v56.l
	v_add_nc_u32_e32 v65, s11, v233
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b16 v58.l, v60.l, v58.l
	v_add_nc_u32_e32 v60, s11, v238
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v68, s53, v0
	scratch_load_b32 v0, off, off offset:276 ; 4-byte Folded Reload
	s_clause 0x1
	buffer_load_u8 v68, v68, s[16:19], 0 offen
	buffer_load_u8 v69, v60, s[16:19], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v59.h, 8, v72.l
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v59.h, v63.l, v59.h
	v_add_nc_u32_e32 v63, s11, v235
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v60, s53, v0
	scratch_load_b32 v0, off, off offset:268 ; 4-byte Folded Reload
	buffer_load_u8 v70, v60, s[16:19], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v60, s53, v0
	scratch_load_b32 v0, off, off offset:260 ; 4-byte Folded Reload
	s_clause 0x2
	buffer_load_u8 v71, v60, s[16:19], 0 offen
	buffer_load_u8 v61, v61, s[16:19], 0 offen
	buffer_load_u8 v62, v62, s[16:19], 0 offen
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v60, s53, v0
	scratch_load_b32 v0, off, off offset:252 ; 4-byte Folded Reload
	buffer_load_u8 v72, v60, s[16:19], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v60, s53, v0
	scratch_load_b32 v0, off, off offset:244 ; 4-byte Folded Reload
	s_clause 0x2
	buffer_load_u8 v73, v60, s[16:19], 0 offen
	buffer_load_u8 v63, v63, s[16:19], 0 offen
	buffer_load_u8 v64, v64, s[16:19], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v61.h, 8, v72.l
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v60, s53, v0
	scratch_load_b32 v0, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_or_b16 v61.h, v63.l, v61.h
	buffer_load_u8 v74, v60, s[16:19], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v60, s53, v0
	.loc	1 1155 34                       ; ragged.py:1155:34
	scratch_load_b32 v0, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x2
	buffer_load_u8 v75, v60, s[16:19], 0 offen
	buffer_load_u8 v65, v65, s[16:19], 0 offen
	buffer_load_u8 v66, v66, s[16:19], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v62.h, 8, v74.l
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v60, s53, v0
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1
	buffer_load_u8 v76, v60, s[16:19], 0 offen
	buffer_load_u8 v67, v67, s[16:19], 0 offen
	v_lshlrev_b16 v60.h, 8, v70.l
	v_lshlrev_b16 v60.l, 8, v68.l
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v63.l, 8, v75.l
	s_waitcnt vmcnt(3)
	v_or_b16 v62.h, v65.l, v62.h
	s_waitcnt lgkmcnt(0)
	v_or_b16 v60.h, v61.l, v60.h
	v_lshlrev_b16 v61.l, 8, v71.l
	v_or_b16 v60.l, v69.l, v60.l
	s_waitcnt vmcnt(2)
	v_or_b16 v63.l, v66.l, v63.l
	s_barrier
	v_mov_b32_e32 v0, v149
	v_or_b16 v61.l, v62.l, v61.l
	v_lshlrev_b16 v62.l, 8, v73.l
	v_dual_mov_b32 v149, v130 :: v_dual_mov_b32 v130, v119
	v_mov_b32_e32 v119, v105
	v_mov_b32_e32 v105, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b16 v62.l, v64.l, v62.l
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s53, s53, s52
	s_cmp_lg_u32 s48, 0
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v63.h, 8, v76.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v63.h, v67.l, v63.h
	ds_store_b16 v230, v56
	ds_store_b16_d16_hi v230, v56 offset:512
	ds_store_b16 v230, v57 offset:1024
	ds_store_b16_d16_hi v230, v57 offset:1536
	ds_store_b16 v230, v58 offset:2048
	ds_store_b16_d16_hi v230, v58 offset:2560
	ds_store_b16 v230, v59 offset:3072
	ds_store_b16_d16_hi v230, v59 offset:3584
	ds_store_b16 v230, v60 offset:4096
	ds_store_b16_d16_hi v230, v60 offset:4608
	ds_store_b16 v230, v61 offset:5120
	ds_store_b16_d16_hi v230, v61 offset:5632
	ds_store_b16 v230, v62 offset:6144
	ds_store_b16_d16_hi v230, v62 offset:6656
	ds_store_b16 v230, v63 offset:7168
	ds_store_b16_d16_hi v230, v63 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v56, v177 offset:1280
	ds_load_u8 v57, v177 offset:1024
	ds_load_u8 v64, v177 offset:1920
	ds_load_u8 v65, v177 offset:1664
	ds_load_u8 v66, v177 offset:1408
	ds_load_u8 v67, v177 offset:1152
	ds_load_u8 v94, v177 offset:6016
	ds_load_u8 v95, v177 offset:5760
	ds_load_u8 v230, v177 offset:5504
	ds_load_u8 v238, v177 offset:5248
	ds_load_u8 v90, v177 offset:6784
	ds_load_u8 v91, v177 offset:6528
	ds_load_u8 v252, v177 offset:6272
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	ds_load_u8 v57, v177 offset:1792
	ds_load_u8 v58, v177 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v177 offset:256
	ds_load_u8 v59, v177
	ds_load_u8 v68, v177 offset:896
	ds_load_u8 v69, v177 offset:640
	ds_load_u8 v70, v177 offset:384
	ds_load_u8 v71, v177 offset:128
	v_lshl_or_b32 v79, v57, 16, v56
	ds_load_u8 v56, v177 offset:3328
	ds_load_u8 v57, v177 offset:3072
	ds_load_u8 v72, v177 offset:3968
	ds_load_u8 v73, v177 offset:3712
	ds_load_u8 v74, v177 offset:3456
	ds_load_u8 v75, v177 offset:3200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v177 offset:768
	ds_load_u8 v60, v177 offset:512
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v59, 16, v58
	ds_load_u8 v57, v177 offset:3840
	ds_load_u8 v58, v177 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v177 offset:2304
	ds_load_u8 v59, v177 offset:2048
	ds_load_u8 v76, v177 offset:2944
	ds_load_u8 v77, v177 offset:2688
	ds_load_u8 v88, v177 offset:2432
	ds_load_u8 v89, v177 offset:2176
	v_lshl_or_b32 v85, v57, 16, v56
	ds_load_u8 v56, v177 offset:5376
	ds_load_u8 v57, v177 offset:5120
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v177 offset:2816
	ds_load_u8 v60, v177 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v59, 16, v58
	ds_load_u8 v57, v177 offset:5888
	ds_load_u8 v58, v177 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v177 offset:4352
	ds_load_u8 v59, v177 offset:4096
	ds_load_u8 v239, v177 offset:4992
	ds_load_u8 v240, v177 offset:4736
	ds_load_u8 v241, v177 offset:4480
	ds_load_u8 v242, v177 offset:4224
	v_lshl_or_b32 v87, v57, 16, v56
	ds_load_u8 v56, v177 offset:7424
	ds_load_u8 v57, v177 offset:7168
	ds_load_u8 v243, v177 offset:8064
	ds_load_u8 v244, v177 offset:7808
	ds_load_u8 v245, v177 offset:7552
	ds_load_u8 v246, v177 offset:7296
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v177 offset:4864
	ds_load_u8 v60, v177 offset:4608
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v59, 16, v58
	ds_load_u8 v57, v177 offset:7936
	ds_load_u8 v58, v177 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v177 offset:6400
	ds_load_u8 v59, v177 offset:6144
	ds_load_u8 v173, v177 offset:7040
	v_lshl_or_b32 v81, v57, 16, v56
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v177 offset:6912
	ds_load_u8 v60, v177 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v80, v59, 16, v58
	v_wmma_i32_16x16x16_iu4 v[56:63], v[78:79], v[25:26], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[84:85], v[29:30], v[56:63] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[86:87], v[33:34], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[80:81], v[37:38], v[56:63] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v41, v56
	v_cvt_f32_i32_e32 v237, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v236, v58
	v_cvt_f32_i32_e32 v235, v59
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v56, v67, v66, 0xc0c0004
	v_perm_b32 v57, v65, v64, 0xc0c0004
	v_perm_b32 v58, v71, v70, 0xc0c0004
	v_perm_b32 v59, v69, v68, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v234, v60
	v_cvt_f32_i32_e32 v233, v61
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v83, v57, 16, v56
	v_perm_b32 v56, v75, v74, 0xc0c0004
	v_lshl_or_b32 v82, v59, 16, v58
	v_perm_b32 v57, v73, v72, 0xc0c0004
	v_perm_b32 v58, v89, v88, 0xc0c0004
	v_perm_b32 v59, v77, v76, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v232, v62
	v_cvt_f32_i32_e32 v231, v63
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v93, v57, 16, v56
	v_perm_b32 v56, v238, v230, 0xc0c0004
	v_lshl_or_b32 v92, v59, 16, v58
	v_perm_b32 v57, v95, v94, 0xc0c0004
	v_perm_b32 v58, v242, v241, 0xc0c0004
	v_perm_b32 v59, v240, v239, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v95, v57, 16, v56
	v_perm_b32 v56, v246, v245, 0xc0c0004
	v_lshl_or_b32 v94, v59, 16, v58
	v_perm_b32 v57, v244, v243, 0xc0c0004
	v_perm_b32 v58, v252, v91, 0xc0c0004
	v_perm_b32 v59, v90, v173, 0xc0c0004
	v_dual_mov_b32 v90, v105 :: v_dual_mov_b32 v105, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v89, v57, 16, v56
	v_mov_b32_e32 v119, v130
	v_lshl_or_b32 v88, v59, 16, v58
	v_wmma_i32_16x16x16_iu4 v[56:63], v[82:83], v[25:26], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v130, v149 :: v_dual_mov_b32 v149, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[92:93], v[29:30], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[94:95], v[33:34], v[56:63] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu4 v[63:70], v[84:85], v[31:32], v[63:70] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v33, v59
	v_cvt_f32_i32_e32 v230, v56
	v_cvt_f32_i32_e32 v37, v57
	v_cvt_f32_i32_e32 v30, v60
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[63:70], v[86:87], v[35:36], v[63:70] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[63:70], v[80:81], v[39:40], v[63:70] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v62, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v61, v64
	v_cvt_f32_i32_e32 v246, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v245, v66
	v_cvt_f32_i32_e32 v241, v67
	v_cvt_f32_i32_e32 v240, v68
	v_cvt_f32_i32_e32 v239, v69
	v_cvt_f32_i32_e32 v238, v70
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[63:70], v[82:83], v[27:28], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[63:70], v[92:93], v[31:32], v[63:70] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[63:70], v[94:95], v[35:36], v[63:70] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[63:70], v[88:89], v[39:40], v[63:70] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v31, v70
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[70:77], v[78:79], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v27, v68
	v_cvt_f32_i32_e32 v28, v69
	v_cvt_f32_i32_e32 v35, v63
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[70:77], v[84:85], v[13:14], v[70:77] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v39, v64
	v_cvt_f32_i32_e32 v38, v65
	v_cvt_f32_i32_e32 v36, v66
	v_cvt_f32_i32_e32 v32, v67
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[70:77], v[86:87], v[17:18], v[70:77] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[70:77], v[80:81], v[21:22], v[70:77] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v69, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v68, v71
	v_cvt_f32_i32_e32 v59, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v58, v73
	v_cvt_f32_i32_e32 v244, v74
	v_cvt_f32_i32_e32 v243, v75
	v_cvt_f32_i32_e32 v242, v76
	v_cvt_f32_i32_e32 v40, v77
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[70:77], v[82:83], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[70:77], v[92:93], v[13:14], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[70:77], v[94:95], v[17:18], v[70:77] neg_lo:[1,1,0]
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[70:77], v[84:85], v[15:16], v[70:77] neg_lo:[1,1,0]
	v_mov_b32_e32 v84, v134
	v_dual_mov_b32 v134, v158 :: v_dual_mov_b32 v85, v133
	v_mov_b32_e32 v133, v140
	v_wmma_i32_16x16x16_iu4 v[70:77], v[86:87], v[19:20], v[70:77] neg_lo:[1,1,0]
	v_dual_mov_b32 v87, v121 :: v_dual_mov_b32 v86, v135
	v_mov_b32_e32 v135, v178
	v_mov_b32_e32 v121, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[70:77], v[80:81], v[23:24], v[70:77] neg_lo:[1,1,0]
	v_mov_b32_e32 v131, v153
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v78, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v79, v71
	v_cvt_f32_i32_e32 v80, v72
	v_cvt_f32_i32_e32 v81, v73
	v_cvt_f32_i32_e32 v57, v74
	v_cvt_f32_i32_e32 v56, v75
	v_cvt_f32_i32_e32 v63, v76
	v_cvt_f32_i32_e32 v60, v77
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[70:77], v[82:83], v[11:12], v[1:8] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v11, 0x80000000, v191, s7
	v_cndmask_b32_e64 v12, 0x80000000, v190, s8
	v_mov_b32_e32 v83, v110
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[70:77], v[92:93], v[15:16], v[70:77] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v16, 0x80000000, v188, s10
	v_cndmask_b32_e64 v15, 0x80000000, v189, s9
	s_clause 0x1
	buffer_load_u16 v11, v11, s[44:47], 0 offen
	buffer_load_u16 v12, v12, s[44:47], 0 offen
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[70:77], v[94:95], v[19:20], v[70:77] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v16, v16, s[44:47], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v19, v187, s[20:23], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v15, v15, s[44:47], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v20, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[70:77], v[88:89], v[23:24], v[70:77] neg_lo:[1,1,0]
	v_mov_b32_e32 v93, v143
	v_mov_b32_e32 v143, v167
	v_mov_b32_e32 v167, v175
	v_dual_mov_b32 v95, v145 :: v_dual_mov_b32 v88, v111
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v5, v70
	v_cvt_f32_i32_e32 v8, v71
	v_cvt_f32_i32_e32 v7, v72
	v_cvt_f32_i32_e32 v6, v73
	v_mov_b32_e32 v145, v169
	v_mov_b32_e32 v169, v193
	v_mov_b32_e32 v111, v125
	v_mov_b32_e32 v125, v147
	v_mov_b32_e32 v147, v171
	v_mov_b32_e32 v171, v195
	v_mov_b32_e32 v195, v197
	v_mov_b32_e32 v197, v199
	v_mov_b32_e32 v199, v201
	v_dual_mov_b32 v201, v202 :: v_dual_mov_b32 v202, v203
	v_dual_mov_b32 v203, v204 :: v_dual_mov_b32 v204, v205
	v_dual_mov_b32 v205, v206 :: v_dual_mov_b32 v206, v207
	v_dual_mov_b32 v207, v208 :: v_dual_mov_b32 v208, v209
	v_cvt_f32_i32_e32 v1, v75
	v_cvt_f32_i32_e32 v2, v76
	v_mov_b32_e32 v76, v99
	v_cvt_f32_i32_e32 v4, v74
	v_mov_b32_e32 v74, v108
	v_mov_b32_e32 v108, v154
	v_dual_mov_b32 v154, v97 :: v_dual_mov_b32 v89, v104
	v_mov_b32_e32 v104, v112
	v_cvt_f32_i32_e32 v3, v77
	v_mov_b32_e32 v110, v113
	v_dual_mov_b32 v82, v123 :: v_dual_mov_b32 v123, v136
	v_mov_b32_e32 v112, v126
	v_mov_b32_e32 v136, v155
	v_mov_b32_e32 v92, v166
	v_mov_b32_e32 v94, v144
	v_mov_b32_e32 v144, v168
	v_dual_mov_b32 v113, v120 :: v_dual_mov_b32 v126, v137
	v_mov_b32_e32 v137, v156
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v189, 2, v189
	v_dual_mov_b32 v120, v141 :: v_dual_add_nc_u32 v191, 2, v191
	v_dual_mov_b32 v141, v165 :: v_dual_mov_b32 v168, v192
	v_mov_b32_e32 v166, v174
	v_add_nc_u32_e32 v188, 2, v188
	v_add_nc_u32_e32 v187, s51, v187
	v_add_nc_u32_e32 v190, 2, v190
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v12, 16, v12
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v3, v3, v16
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v20, v19
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[64:67], v229
	ds_load_b128 v[70:73], v229 offset:16
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v11, 16, v11
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v1, v16
	v_mul_f32_e32 v4, v16, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v2, v2, v16 :: v_dual_mul_f32 v19, v11, v47
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v209, v210 :: v_dual_fmac_f32 v152, v19, v64
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v11, v102
	v_mov_b32_e32 v75, v124
	scratch_load_b32 v102, off, off offset:108 ; 4-byte Folded Reload
	v_mov_b32_e32 v124, v146
	v_mov_b32_e32 v146, v170
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v224, v19, v65
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v19, v11, v117 :: v_dual_mov_b32 v170, v194
	v_mov_b32_e32 v194, v196
	v_mov_b32_e32 v196, v198
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v198, v200 :: v_dual_fmac_f32 v247, v19, v66
	v_mul_f32_e32 v19, v11, v129
	v_dual_mov_b32 v99, v118 :: v_dual_mov_b32 v118, v128
	v_mov_b32_e32 v128, v139
	v_mov_b32_e32 v139, v163
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v154, v19, v67 :: v_dual_mul_f32 v19, v12, v217
	v_mov_b32_e32 v77, v109
	v_dual_mov_b32 v109, v157 :: v_dual_mov_b32 v200, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v108, v19, v64
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v12, v216
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v109, v19, v65
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v12, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v134, v19, v66
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v12, v214
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v133, v19, v67
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v15, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v84, v19, v64
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v15, v45
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v85, v19, v65
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v15, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v87, v19, v66
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v15, v228
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v86, v19, v67
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v16, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v99, v19, v64
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v16, v50
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v104, v19, v65
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v16, v49
	v_mov_b32_e32 v65, v161
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v13, v13, v15 :: v_dual_mul_f32 v14, v15, v14
	v_mul_f32_e32 v10, v10, v15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v110, v19, v66 :: v_dual_mul_f32 v19, v16, v48
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[44:47], v229 offset:512
	ds_load_b128 v[48:51], v229 offset:528
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v66, off, off offset:96
	scratch_load_b32 v96, off, off offset:84
	scratch_load_b32 v161, off, off offset:104
	scratch_load_b32 v117, off, off offset:88
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v9, v15
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v105, v19, v67
	v_mov_b32_e32 v67, v103
	v_mov_b32_e32 v103, v115
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v19, v11, v0
	scratch_load_b32 v0, off, off offset:168 ; 4-byte Folded Reload
	v_dual_mov_b32 v115, v132 :: v_dual_mov_b32 v132, v159
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(2)
	v_fmac_f32_e32 v144, v19, v70
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v19, v11, v0
	scratch_load_b32 v0, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v11, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v146, v0, v72
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v11, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v147, v0, v73
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v12, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v100, v0, v70
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v12, v98
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v128, v0, v71
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v12, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v102, v0, v72
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v12, v127
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v130, v0, v73
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v15, v227
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v82, v0, v70
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v15, v225
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v115, v0, v71 :: v_dual_mul_f32 v0, v15, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v0, v72
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v15, v220
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v118, v0, v73
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v16, v55
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v83, v0, v70
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v16, v54
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:72
	scratch_load_b32 v127, off, off offset:40
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v88, v0, v71
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v16, v53
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v89, v0, v72
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v0, v16, v52 :: v_dual_mov_b32 v159, v151
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v72, off, off offset:80
	scratch_load_b32 v97, off, off offset:76
	scratch_load_b32 v114, off, off offset:68
	scratch_load_b32 v129, off, off offset:60
	scratch_load_b32 v151, off, off offset:56
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v90, v0, v73
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v73, off, off offset:48
	scratch_load_b32 v98, off, off offset:44
	scratch_load_b32 v0, off, off offset:152
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v11
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v200, v0, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v11, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v116, v0, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v11, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v117, v0, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v11, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v138, v0, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v145, v19, v71
	scratch_load_b32 v71, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v0, v0, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v194, v0, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v12, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v92, v0, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v12, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v93, v0, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v12, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v94, v0, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v167, v0, v44 :: v_dual_mul_f32 v0, v15, v43
	v_dual_fmac_f32 v111, v0, v45 :: v_dual_mul_f32 v0, v15, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v112, v0, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v15, v122
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v70, v0, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v219, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v253, v0, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v16, v226
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v65, v0, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v16, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v66, v0, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v16, v221
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v72, v0, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v11, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v0, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v11
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v199, v0, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v198, v0, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v11
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v195, v0, v51
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v12, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v95, v0, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v170, v0, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v169, v0, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v168, v0, v51
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v15, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v113, v0, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v15
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v166, v0, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v255, v0, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v15
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v164, v0, v51
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v16, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v67, v0, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v213, v16
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v162, v0, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v42, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v161, v0, v50 :: v_dual_mul_f32 v0, v107, v16
	v_fmac_f32_e32 v160, v0, v51
	.loc	1 1218 45                       ; ragged.py:1218:45
	buffer_load_u16 v0, v186, s[20:23], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v186, s51, v186
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v20, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v41
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v229
	ds_load_b128 v[45:48], v229 offset:16
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v159, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v250, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v236
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v248, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v235
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v249, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v62
	scratch_load_b32 v62, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v137, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v61
	scratch_load_b32 v61, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v136, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v135, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v245
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v132, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v69
	scratch_load_b32 v69, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v123, v0, v41 :: v_dual_mul_f32 v0, v15, v68
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:36
	scratch_load_b32 v122, off, off offset:32
	v_dual_fmac_f32 v121, v0, v42 :: v_dual_mul_f32 v0, v15, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v119, v0, v43 :: v_dual_mul_f32 v0, v15, v58
	v_fmac_f32_e32 v120, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v78
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v78, off, off offset:12
	scratch_load_b32 v106, off, off offset:8
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v106, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v79
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v79, off, off offset:28
	scratch_load_b32 v107, off, off offset:16
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v103, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v80
	scratch_load_b32 v80, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v98, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v81
	scratch_load_b32 v81, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v97, v0, v44 :: v_dual_mul_f32 v0, v11, v234
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v151, v0, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v233
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v150, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v148, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v231
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v149, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v131, v0, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v240
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v129, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v127, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v238
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v101, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v114, v0, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v243
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v107, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v71, v0, v47 :: v_dual_mul_f32 v0, v15, v40
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v81, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v96, v0, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v56
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v251, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v63
	scratch_load_b32 v63, off, off          ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v79, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v60
	scratch_load_b32 v60, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[40:43], v229 offset:512
	ds_load_b128 v[44:47], v229 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v78, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v0, v230, v11 :: v_dual_fmac_f32 v73, v4, v44
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v197, v1, v45
	v_dual_fmac_f32 v171, v3, v47 :: v_dual_fmac_f32 v62, v9, v45
	v_fmac_f32_e32 v202, v13, v47
	v_fmac_f32_e32 v196, v2, v46
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v60, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v143, v0, v41 :: v_dual_mul_f32 v0, v11, v34
	v_fmac_f32_e32 v142, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v141, v0, v43 :: v_dual_mul_f32 v0, v35, v12
	v_fmac_f32_e32 v61, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v126, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v38
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v125, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v122, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v17, v15 :: v_dual_mul_f32 v17, v31, v12
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v204, v0, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v15, v22 :: v_dual_fmac_f32 v205, v17, v47
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v80, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v69, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v18
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v68, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v5, v16 :: v_dual_mul_f32 v5, v26, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v201, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v8
	v_dual_mul_f32 v8, v27, v12 :: v_dual_fmac_f32 v209, v5, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v77, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v16, v7 :: v_dual_mul_f32 v7, v11, v30
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v207, v8, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v63, v14, v44 :: v_dual_fmac_f32 v76, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v6
	v_mul_f32_e32 v6, v29, v11
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v254, v7, v44
	v_fmac_f32_e32 v74, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v25, v11 :: v_dual_mul_f32 v11, v28, v12
	v_mul_f32_e32 v12, v12, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v208, v6, v47 :: v_dual_fmac_f32 v211, v0, v45
	v_fmac_f32_e32 v206, v11, v46
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v124, v12, v44 :: v_dual_fmac_f32 v203, v10, v46
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v173, off, off offset:376
	scratch_load_b32 v192, off, off offset:380
	scratch_load_b32 v193, off, off offset:384
	scratch_load_b32 v64, off, off offset:388
	s_branch .LBB0_5
.LBB0_4:
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v200, 0
.LBB0_5:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v60 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v159
	v_mul_f32_e32 v2, 0xbfb8aa3b, v208
	v_dual_mul_f32 v8, 0xbfb8aa3b, v250 :: v_dual_mul_f32 v1, 0xbfb8aa3b, v209
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v0, 0xbfb8aa3b, v211 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v149
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v1
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v7, 0, 0x42800000, s1
	v_cndmask_b32_e64 v2, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v31, 0xbfb8aa3b, v141 :: v_dual_fmac_f32 v4, 0xbfb8aa3b, v60
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s1
	v_dual_fmac_f32 v2, 0xbfb8aa3b, v209 :: v_dual_mul_f32 v37, 0xbfb8aa3b, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v7, 0xbfb8aa3b, v208 :: v_dual_fmac_f32 v0, 0xbfb8aa3b, v211
	v_exp_f32_e32 v4, v4
	v_exp_f32_e32 v2, v2
	v_dual_mul_f32 v14, 0xbfb8aa3b, v205 :: v_dual_mul_f32 v189, 0xbfb8aa3b, v131
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v13, v7
	v_exp_f32_e32 v12, v0
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v14
	v_mul_f32_e32 v36, 0xbfb8aa3b, v127
	v_ldexp_f32 v3, v4, v3
	v_mul_f32_e32 v4, 0xbfb8aa3b, v61
	v_mul_f32_e32 v188, 0xbfb8aa3b, v129
	v_cndmask_b32_e64 v17, 0, 0x42800000, s1
	v_ldexp_f32 v11, v13, v11
	v_mul_f32_e32 v13, 0xbfb8aa3b, v206
	v_ldexp_f32 v10, v12, v10
	v_ldexp_f32 v12, v2, v1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v205
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v13
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s1
	v_mul_f32_e32 v185, 0xbfb8aa3b, v122
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_mul_f32_e32 v2, 0xbfb8aa3b, v207
	v_exp_f32_e32 v17, v17
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v4, 0xbfb8aa3b, v61 :: v_dual_fmac_f32 v15, 0xbfb8aa3b, v206
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_mul_f32_e32 v176, 0xbfb8aa3b, v80
	v_dual_mul_f32 v172, 0xbfb8aa3b, v106 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v171
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v15, v15
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v190, 0xbfb8aa3b, v136
	v_exp_f32_e32 v4, v4
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v5, 0xbfb8aa3b, v248 :: v_dual_mul_f32 v6, 0xbfb8aa3b, v249
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v207
	v_dual_mul_f32 v7, 0xbfb8aa3b, v151 :: v_dual_mul_f32 v30, 0xbfb8aa3b, v150
	v_mul_f32_e32 v39, 0xbfb8aa3b, v132
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v14, v15, v14
	v_exp_f32_e32 v13, v13
	v_ldexp_f32 v15, v17, v16
	v_dual_mul_f32 v16, 0xbfb8aa3b, v203 :: v_dual_mul_f32 v17, 0xbfb8aa3b, v202
	v_ldexp_f32 v18, v4, v1
	v_mul_f32_e32 v1, 0xbfb8aa3b, v204
	v_dual_mul_f32 v26, 0xbfb8aa3b, v148 :: v_dual_mul_f32 v33, 0xbfb8aa3b, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v16
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v17
	v_ldexp_f32 v13, v13, v2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_dual_mul_f32 v32, 0xbfb8aa3b, v142 :: v_dual_mul_f32 v35, 0xbfb8aa3b, v101
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	v_mul_f32_e32 v2, 0xbfb8aa3b, v62
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v203
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v179, 0xbfb8aa3b, v107 :: v_dual_fmac_f32 v4, 0xbfb8aa3b, v204
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v202
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v19, v19
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v4, v4
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v62
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s1
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_dual_add_f32 v45, 1.0, v3 :: v_dual_mul_f32 v0, 0xbfb8aa3b, v254
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v191, 0xbfb8aa3b, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v17, v19, v17
	v_ldexp_f32 v34, v4, v1
	v_mul_f32_e32 v1, 0xbfb8aa3b, v201
	v_ldexp_f32 v19, v21, v20
	v_dual_mul_f32 v21, 0xbfb8aa3b, v78 :: v_dual_mul_f32 v4, 0xbfb8aa3b, v196
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v46, null, v45, v45, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_ldexp_f32 v16, v16, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v197
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v49, v46
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v10, 1.0, v10 :: v_dual_add_f32 v17, 1.0, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v11, 1.0, v11
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v38, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v27
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, vcc_lo, v60, v45, v60
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0x42800000, s0
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v197
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v196
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, s0
	v_dual_fmac_f32 v2, 0xbfb8aa3b, v201 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v76
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v171
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v47, v4
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v2, v2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v44
	v_dual_mul_f32 v4, 0xbfb8aa3b, v77 :: v_dual_add_f32 v19, 1.0, v19
	v_dual_mul_f32 v40, 0xbfb8aa3b, v124 :: v_dual_mul_f32 v187, 0xbfb8aa3b, v126
	v_dual_mul_f32 v186, 0xbfb8aa3b, v125 :: v_dual_mul_f32 v181, 0xbfb8aa3b, v119
	v_ldexp_f32 v20, v38, v20
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v38, v47, v42
	v_ldexp_f32 v48, v2, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_ldexp_f32 v42, v44, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v46, v49, 1.0
	v_div_scale_f32 v44, null, v10, v10, v211
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v2, 0xbfb8aa3b, v74
	v_dual_mul_f32 v184, 0xbfb8aa3b, v123 :: v_dual_mul_f32 v177, 0xbfb8aa3b, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v49, v43, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v43, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v182, 0xbfb8aa3b, v120 :: v_dual_mul_f32 v183, 0xbfb8aa3b, v121
	v_dual_mul_f32 v180, 0xbfb8aa3b, v114 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v52, v50, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v178, 0xbfb8aa3b, v71 :: v_dual_mul_f32 v175, 0xbfb8aa3b, v69
	v_dual_mul_f32 v174, 0xbfb8aa3b, v68 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v44, v43, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v46, v52, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v28, 0xbfb8aa3b, v97 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v103
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v43, v53, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v47, null, v12, v12, v209
	v_div_scale_f32 v53, s0, v211, v10, v211
	v_fmac_f32_e32 v52, v54, v49
	v_rcp_f32_e32 v51, v47
	v_div_scale_f32 v56, s1, v209, v12, v209
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v54, v53, v43
	v_fma_f32 v46, -v46, v52, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v22, 0xbfb8aa3b, v79 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v96
	v_dual_mul_f32 v24, 0xbfb8aa3b, v251 :: v_dual_mul_f32 v1, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v44, v54, v53
	v_fma_f32 v55, -v47, v51, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v46, v46, v49, v52
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v54, v50, v43
	v_fmac_f32_e32 v51, v55, v51
	v_div_scale_f32 v55, null, v11, v11, v208
	v_div_scale_f32 v59, null, v18, v18, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v58, v56, v51
	v_rcp_f32_e32 v57, v55
	v_div_fixup_f32 v45, v46, v45, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v49, v59
	v_fma_f32 v44, -v44, v54, v53
	v_fma_f32 v50, -v47, v58, v56
	v_div_scale_f32 v46, s2, v208, v11, v208
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
.Ltmp4:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v43, v44, v43, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v58, v50, v51
	v_fma_f32 v52, -v55, v57, 1.0
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v59, v49, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v47, v58, v56
	v_dual_fmac_f32 v57, v52, v57 :: v_dual_add_f32 v34, 1.0, v34
	v_fmac_f32_e32 v49, v50, v49
	v_div_scale_f32 v50, null, v13, v13, v207
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v47, v46, v57
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v52, s0, v61, v18, v61
	v_div_fmas_f32 v44, v44, v51, v58
	v_rcp_f32_e32 v51, v50
	v_fma_f32 v53, -v55, v47, v46
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v54, v52, v49
	v_div_scale_f32 v56, null, v14, v14, v206
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v47, v53, v57
	v_div_fixup_f32 v10, v43, v10, v211
	v_div_fixup_f32 v12, v44, v12, v209
	v_fma_f32 v43, -v59, v54, v52
	v_rcp_f32_e32 v44, v56
	v_fma_f32 v53, -v50, v51, 1.0
	v_fma_f32 v46, -v55, v47, v46
	v_div_scale_f32 v55, null, v15, v15, v205
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v54, v43, v49 :: v_dual_fmac_f32 v51, v53, v51
	v_div_scale_f32 v43, s1, v207, v13, v207
	v_rcp_f32_e32 v53, v55
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v58, -v56, v44, 1.0
	v_div_fmas_f32 v46, v46, v57, v47
	v_fma_f32 v47, -v59, v54, v52
	v_mul_f32_e32 v52, v43, v51
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v44, v58, v44
	v_div_scale_f32 v57, s2, v206, v14, v206
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v55, v53, 1.0
	v_div_scale_f32 v59, null, v34, v34, v204
	v_div_fmas_f32 v47, v47, v49, v54
	v_fma_f32 v49, -v50, v52, v43
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_fmac_f32 v53, v58, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v54, v57, v44
	v_rcp_f32_e32 v58, v59
	v_div_scale_f32 v60, s0, v205, v15, v205
	v_fmac_f32_e32 v52, v49, v51
	v_div_scale_f32 v49, null, v16, v16, v62
	v_div_fixup_f32 v11, v46, v11, v208
	v_div_fixup_f32 v46, v47, v18, v61
	v_fma_f32 v18, -v56, v54, v57
	v_mul_f32_e32 v47, v60, v53
	v_fma_f32 v43, -v50, v52, v43
	v_rcp_f32_e32 v50, v49
	v_fma_f32 v61, -v59, v58, 1.0
	v_fmac_f32_e32 v54, v18, v44
	v_fma_f32 v18, -v55, v47, v60
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v61, v58
	v_div_scale_f32 v61, s3, v204, v34, v204
	v_div_fmas_f32 v43, v43, v51, v52
	v_fma_f32 v51, -v56, v54, v57
	v_fmac_f32_e32 v47, v18, v53
	v_fma_f32 v52, -v49, v50, 1.0
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v18, v61, v58
	v_div_fmas_f32 v44, v51, v44, v54
	v_fma_f32 v51, -v55, v47, v60
	v_fmac_f32_e32 v50, v52, v50
	v_div_scale_f32 v52, null, v17, v17, v203
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v54, -v59, v18, v61
	v_div_fmas_f32 v47, v51, v53, v47
	v_rcp_f32_e32 v51, v52
	v_div_scale_f32 v55, s1, v62, v16, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v18, v54, v58
	v_div_fixup_f32 v13, v43, v13, v207
	v_div_fixup_f32 v43, v47, v15, v205
	v_mul_f32_e32 v53, v55, v50
	v_div_scale_f32 v47, null, v19, v19, v202
	v_fma_f32 v15, -v59, v18, v61
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v54, -v52, v51, 1.0
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v14, v44, v14, v206
	v_fma_f32 v44, -v49, v53, v55
	v_div_fmas_f32 v15, v15, v58, v18
	v_rcp_f32_e32 v18, v47
	v_fmac_f32_e32 v51, v54, v51
	v_div_scale_f32 v54, null, v48, v48, v201
	v_fmac_f32_e32 v53, v44, v50
	v_div_scale_f32 v44, s0, v203, v17, v203
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v56, v54
	v_div_fixup_f32 v34, v15, v34, v204
	v_fma_f32 v15, -v49, v53, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v49, v44, v51
	v_fma_f32 v55, -v47, v18, 1.0
	s_mov_b32 vcc_lo, s1
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v15, v15, v50, v53
	v_fma_f32 v50, -v52, v49, v44
	v_fmac_f32_e32 v18, v55, v18
	v_div_scale_f32 v53, null, v20, v20, v197
	v_div_scale_f32 v55, s1, v202, v19, v202
	v_fma_f32 v57, -v54, v56, 1.0
	v_div_fixup_f32 v58, v15, v16, v62
	v_fmac_f32_e32 v49, v50, v51
	v_rcp_f32_e32 v15, v53
	v_mul_f32_e32 v16, v55, v18
	v_fmac_f32_e32 v56, v57, v56
	v_div_scale_f32 v50, s2, v201, v48, v201
	v_div_scale_f32 v57, null, v38, v38, v196
	v_fma_f32 v44, -v52, v49, v44
	v_fma_f32 v52, -v47, v16, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v59, v50, v56
	v_rcp_f32_e32 v61, v57
	v_div_scale_f32 v62, null, v42, v42, v171
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v60, -v53, v15, 1.0
	v_div_fmas_f32 v44, v44, v51, v49
	v_fmac_f32_e32 v16, v52, v18
	v_fma_f32 v49, -v54, v59, v50
	v_rcp_f32_e32 v51, v62
	v_fmac_f32_e32 v15, v60, v15
	v_div_scale_f32 v52, s0, v197, v20, v197
	v_fma_f32 v60, -v57, v61, 1.0
	v_div_fixup_f32 v44, v44, v17, v203
	v_fma_f32 v17, -v47, v16, v55
	v_fmac_f32_e32 v59, v49, v56
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v47, v52, v15
	v_fmac_f32_e32 v61, v60, v61
	v_div_scale_f32 v49, s3, v196, v38, v196
	v_fma_f32 v55, -v62, v51, 1.0
	v_div_fmas_f32 v16, v17, v18, v16
	v_fma_f32 v17, -v54, v59, v50
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v18, -v53, v47, v52
	v_dual_mul_f32 v50, v49, v61 :: v_dual_fmac_f32 v51, v55, v51
	v_div_scale_f32 v54, s1, v171, v42, v171
	v_div_fmas_f32 v17, v17, v56, v59
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v55, v16, v19, v202
	v_fmac_f32_e32 v47, v18, v15
	v_fma_f32 v16, -v57, v50, v49
	v_mul_f32_e32 v18, v54, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v48, v17, v48, v201
	v_fma_f32 v9, -v53, v47, v52
	v_fmac_f32_e32 v50, v16, v61
	v_fma_f32 v16, -v62, v18, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v159
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v9, v9, v15, v47
	v_fma_f32 v15, -v57, v50, v49
	v_fmac_f32_e32 v18, v16, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v47, v9, v20, v197
	v_div_fmas_f32 v15, v15, v61, v50
	v_fma_f32 v16, -v62, v18, v54
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v200, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v38, v15, v38, v196
	v_div_fmas_f32 v8, v16, v51, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_ldexp_f32 v6, v19, v17
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v199, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v8, v42, v171
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v250
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_exp_f32_e32 v6, v15
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v249
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, null, v49, v49, v159
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v17, v198, v12 :: v_dual_mul_f32 v12, v167, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v10, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v45, v50
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v170, v13
	v_mul_f32_e32 v13, v168, v43
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v6, v9
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v51, vcc_lo, v159, v49, v159
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v5
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v10, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v50, v45, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v9, 0xbfb8aa3b, v248 :: v_dual_mul_f32 v16, v194, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, null, v34, v34, v250
	v_fmac_f32_e32 v45, v8, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v9
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v46, 1.0, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v52, v43
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v164, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v56, v51, v45 :: v_dual_mul_f32 v5, v162, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v54, null, v46, v46, v249
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v255, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v50, v56, v51
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v53, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v44, v54
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v57, -v43, v52, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v6, v161, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v55, v45
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v47
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v253, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v52, v57, v52
	v_div_scale_f32 v48, s0, v250, v34, v250
	v_fma_f32 v47, -v50, v56, v51
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v18, v195, v11 :: v_dual_mul_f32 v11, v166, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v54, v44, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v50, v48, v52
	v_div_fmas_f32 v45, v47, v45, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v51, s1, v249, v46, v249
	v_fmac_f32_e32 v44, v53, v44
	v_div_scale_f32 v53, null, v38, v38, v248
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v43, v50, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v47, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v151
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v50, v55, v52
	v_dual_mul_f32 v56, v51, v44 :: v_dual_mul_f32 v7, v160, v42
	v_div_fixup_f32 v42, v45, v49, v159
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v43, v50, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v54, v56, v51
	v_fma_f32 v49, -v53, v47, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v188
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s29, s29, 0xffff
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v150
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v45, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v30, v30, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s2, v248, v38, v248
	v_div_fmas_f32 v43, v43, v52, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_exp_f32_e32 v26, v48
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v50, v49, v47
	v_fma_f32 v51, -v54, v56, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, null, v48, v48, v151
	v_fma_f32 v30, -v53, v50, v49
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v26, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v45, v55
	v_div_fmas_f32 v44, v51, v44, v56
	v_fmac_f32_e32 v50, v30, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v148
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v43, v34, v250
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v43, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v44, v46, v249
	v_fma_f32 v34, -v53, v50, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v46, null, v43, v43, v150
	v_fma_f32 v49, -v55, v45, 1.0
	v_div_fmas_f32 v34, v34, v47, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v47, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v45, v49, v45
	v_div_scale_f32 v49, s0, v151, v48, v151
	v_div_fixup_f32 v23, v34, v38, v248
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v44, v44, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v50, v49, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v46, v47, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v149
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v55, v50, v49
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v47, v51, v47
	v_div_scale_f32 v51, s1, v150, v43, v150
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, null, v44, v44, v148
	v_fmac_f32_e32 v50, v52, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v52, v51, v47
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v14, v169, v14 :: v_dual_mul_f32 v23, v247, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v54, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v55, v50, v49
	v_fma_f32 v55, -v46, v52, v51
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v38, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v152, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v45, v49, v45, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v52, v55, v47
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v38
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v53, v54, 1.0
	v_div_fixup_f32 v45, v45, v48, v151
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v46, v52, v51
	v_div_scale_f32 v48, null, v38, v38, v149
	v_fmac_f32_e32 v54, v42, v54
	v_div_scale_f32 v37, s0, v148, v44, v148
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v143
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v42, v48
	v_div_fmas_f32 v32, v46, v47, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v51, v37, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v50, v50
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v43, v32, v43, v150
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v142
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v53, v51, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v48, v42, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v0
	v_exp_f32_e32 v47, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v51, v32, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v50, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v42, v52, v42
	v_div_scale_f32 v52, s1, v149, v38, v149
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v53, v51, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v32, v52, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v46, v47, v46
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v47, null, v53, v53, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v48, v32, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v141
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v0, v47
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v32, v31, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, null, v46, v46, v142
	v_div_fmas_f32 v37, v37, v54, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v48, v32, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v54, v50
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v55, -v47, v0, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v37, v37, v44, v148
	v_div_fmas_f32 v32, v48, v42, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v254
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v55, v0
	v_div_scale_f32 v42, vcc_lo, v143, v53, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v31, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v50, v54, 1.0
	v_div_fixup_f32 v32, v32, v38, v149
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v52, v42, v0 :: v_dual_add_f32 v49, 1.0, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v54, v48, v54
	v_div_scale_f32 v48, s0, v142, v46, v142
	v_fma_f32 v44, -v47, v52, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, null, v49, v49, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v56, v48, v54
	v_fmac_f32_e32 v52, v44, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v51, v38, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v57, v55
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v147, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v50, v56, v48
	v_fma_f32 v42, -v47, v52, v42
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v32, v146, v37 :: v_dual_mul_f32 v37, v145, v43
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v43, 1.0, v51 :: v_dual_fmac_f32 v56, v44, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v42, v0, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v191
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v144, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v55, v57, 1.0
	v_div_scale_f32 v45, null, v43, v43, v254
	v_fma_f32 v42, -v50, v56, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v57, v44, v57
	v_rcp_f32_e32 v44, v45
	v_div_fmas_f32 v42, v42, v54, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v137
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v47, s1, v141, v49, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v190
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v42, v46, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v46, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v51, v47, v57
	v_div_fixup_f32 v0, v0, v53, v143
	v_fma_f32 v52, -v45, v44, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, s0, v254, v43, v254
	v_fma_f32 v50, -v55, v51, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v44, v52, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_ldexp_f32 v39, v46, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v51, v50, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v136
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v46, v54, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v56, 1.0, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v55, v51, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v53
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v132
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, null, v56, v56, v137
	v_fma_f32 v39, -v45, v46, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v33, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v50, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v117, v117, v42 :: v_dual_fmac_f32 v46, v39, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v39, v53, v52
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v45, -v45, v46, v54
	v_div_fmas_f32 v47, v47, v57, v51
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v33, v48
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v135
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v55, v50, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v48, null, v51, v51, v136
	v_div_fmas_f32 v44, v45, v44, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v45, v53
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v53, 1.0, v33 :: v_dual_fmac_f32 v50, v39, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, vcc_lo, v137, v56, v137
	v_rcp_f32_e32 v46, v48
	v_div_fixup_f32 v33, v44, v43, v254
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v43, null, v53, v53, v132
	v_mul_f32_e32 v44, v54, v50
	v_div_fixup_f32 v39, v47, v49, v141
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v45, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v49, v43
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v116, v116, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v55, v44, v54
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v48, v46, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v189
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v33, v139, v33 :: v_dual_fmac_f32 v44, v52, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, s0, v136, v51, v136
	v_fma_f32 v52, -v43, v49, 1.0
	v_div_scale_f32 v57, null, v42, v42, v135
	v_fma_f32 v0, -v55, v44, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v47, v46
	v_fmac_f32_e32 v49, v52, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v52, v57
	v_div_scale_f32 v55, s1, v132, v53, v132
	v_div_fmas_f32 v0, v0, v50, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v48, v45, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v0, v0, v56, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v50, 0xbfb8aa3b, v131 :: v_dual_fmac_f32 v45, v54, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v57, v52, 1.0
	v_mul_f32_e32 v54, v55, v49
	v_div_scale_f32 v56, s2, v135, v42, v135
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v50, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v48, v45, v47
	v_fmac_f32_e32 v52, v58, v52
	v_fma_f32 v48, -v43, v54, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, s3
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v108, v108, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v45, v47, v46, v45
	v_mul_f32_e32 v46, v56, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v54, v48, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v50, v44
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v129
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v57, v46, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v43, v54, v55
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v46, v36, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v58
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v127
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, null, v44, v44, v131
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v43, v43, v49, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v50, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v57, v46, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v36, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v45, v45, v51, v136
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v175
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v109, v109, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v35, v35, v52, v46
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v46, 1.0, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v49, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v55, v50, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v101
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v35, v35, v42, v135
	v_div_scale_f32 v49, null, v46, v46, v129
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v50, v48, v50
	v_div_scale_f32 v48, vcc_lo, v131, v44, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v56, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v54, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v57, null, v52, v52, v127
	v_mul_f32_e32 v58, v48, v50
	v_div_fixup_f32 v36, v43, v53, v132
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v138, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v42, v57
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v134, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v55, v58, v48
	v_fma_f32 v51, -v49, v56, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v54, v47
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v26, v154, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v43, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v56, v51, v56
	v_div_scale_f32 v43, s0, v129, v46, v129
	v_fma_f32 v51, -v57, v42, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v45, 1.0, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v55, v58, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v48, v43, v56
	v_fmac_f32_e32 v42, v51, v42
	v_div_scale_f32 v51, s1, v127, v52, v127
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v47, v47, v50, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v187
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, null, v45, v45, v101
	v_fma_f32 v54, -v49, v48, v43
	v_mul_f32_e32 v55, v51, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v50, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v54, v56
	v_div_fixup_f32 v0, v47, v44, v131
	v_fma_f32 v44, -v57, v55, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v126
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v186
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v49, v48, v43
	v_div_scale_f32 v54, s2, v101, v45, v101
	v_fmac_f32_e32 v55, v44, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v59
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v30, v224, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v53, v50, 1.0
	v_fma_f32 v51, -v57, v55, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v100, v100, v0 :: v_dual_fmac_f32 v49, 0xbfb8aa3b, v125
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v50, v47, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v44, v44, v58
	v_exp_f32_e32 v49, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v43, v43, v56, v48
	v_mul_f32_e32 v48, v54, v50
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v185
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v43, v43, v46, v129
	v_fma_f32 v56, -v53, v48, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v59, null, v44, v44, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v49, v47
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v49, v59
	v_div_fmas_f32 v42, v51, v42, v55
	v_fmac_f32_e32 v48, v56, v50
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v46, 1.0, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v122
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v42, v42, v52, v127
	v_fma_f32 v47, -v53, v48, v54
	v_div_scale_f32 v52, null, v46, v46, v125
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v59, v49, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v47, v47, v50, v48
	v_rcp_f32_e32 v48, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, s0, v126, v44, v126
	v_fmac_f32_e32 v49, v53, v49
	v_div_fixup_f32 v40, v47, v45, v101
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v51, v51, v57
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v53, v50, v49
	v_fma_f32 v54, -v52, v48, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v124
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v51, 1.0, v51 :: v_dual_mul_f32 v102, v102, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v59, v53, v50
	v_fmac_f32_e32 v48, v54, v48
	v_div_scale_f32 v54, s1, v125, v46, v125
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v56, null, v51, v51, v122
	v_fmac_f32_e32 v53, v55, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v55, v54, v48
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v101, v128, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v42, v56
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v43, -v59, v53, v50
	v_fma_f32 v50, -v52, v55, v54
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v47, v45
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v183
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v43, v43, v49, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v55, v50, v48 :: v_dual_add_f32 v0, 1.0, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v184
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v56, v42, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v43, v43, v44, v126
	v_fma_f32 v44, -v52, v55, v54
	v_div_scale_f32 v47, null, v0, v0, v124
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v42, v45, v42
	v_div_scale_f32 v45, s0, v122, v51, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v49, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v123
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v44, v44, v48, v55
	v_mul_f32_e32 v54, v45, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v52
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v182
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v121
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v47, v49, 1.0
	v_div_fixup_f32 v44, v44, v46, v125
	v_fma_f32 v46, -v56, v54, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s2
	v_exp_f32_e32 v53, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v49, v55, v49
	v_div_scale_f32 v55, s1, v124, v0, v124
	v_fmac_f32_e32 v54, v46, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v46, v52, v50
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v50, v55, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v181
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v56, v54, v45
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v53, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v47, v50, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v120
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, null, v46, v46, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v56, v49
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v57, v53
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v92, v92, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, null, v48, v48, v121
	v_div_fmas_f32 v42, v45, v42, v54
	v_fma_f32 v45, -v47, v50, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v55, v58
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v59, -v53, v57, 1.0
	v_div_fmas_f32 v45, v45, v49, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v119
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, vcc_lo, v123, v46, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v57, v59, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v56, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v45, v0, v124
	v_fma_f32 v52, -v58, v55, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v45, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v54, v50, v57
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v95, v95, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v52, v55
	v_div_scale_f32 v52, s0, v121, v48, v121
	v_fma_f32 v0, -v53, v54, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v56, null, v49, v49, v120
	v_div_fixup_f32 v42, v42, v51, v122
	v_mul_f32_e32 v51, v52, v55
	v_fmac_f32_e32 v54, v0, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v59, v56
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v93, v93, v44 :: v_dual_mul_f32 v94, v94, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v42, v45, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v58, v51, v52
	v_fma_f32 v43, -v53, v54, v50
	v_div_scale_f32 v47, s1, v120, v49, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v42, 1.0, v42 :: v_dual_fmac_f32 v51, v0, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v43, v43, v57, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v180
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v56, v59, 1.0
	v_div_scale_f32 v44, null, v42, v42, v119
	v_fma_f32 v45, -v58, v51, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v59, v0, v59
	v_rcp_f32_e32 v0, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v114
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v45, v45, v55, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v179
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v43, v43, v46, v123
	v_mul_f32_e32 v46, v47, v59
	v_div_scale_f32 v54, s0, v119, v42, v119
	v_div_fixup_f32 v45, v45, v48, v121
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v52
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v44, v0, 1.0
	v_fma_f32 v52, -v56, v46, v47
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v85, v85, v45 :: v_dual_mul_f32 v84, v84, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v53, 0xbfb8aa3b, v107 :: v_dual_fmac_f32 v0, v51, v0
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v178
	v_ldexp_f32 v48, v48, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v53, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v50, v54, v0
	v_fmac_f32_e32 v46, v52, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v44, v50, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v177
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v56, v46, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v56, null, v48, v48, v114
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v51, v53, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v50, v57, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v53, v56
	v_div_fmas_f32 v46, v47, v59, v46
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v47, 1.0, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v44, v50, v54
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v46, v46, v49, v120
	v_div_scale_f32 v54, null, v47, v47, v107
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v51, v55, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v56, v53, 1.0
	v_div_fmas_f32 v0, v44, v0, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v58
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v53, v52, v53
	v_div_scale_f32 v52, vcc_lo, v114, v48, v114
	v_div_fixup_f32 v0, v0, v42, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v42, null, v51, v51, v71
	v_mul_f32_e32 v49, v52, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v54, v50, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v87, v87, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v44, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v44, v42
	v_fma_f32 v57, -v56, v49, v52
	v_fmac_f32_e32 v50, v55, v50
	v_div_scale_f32 v55, s0, v107, v47, v107
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_fmac_f32 v49, v57, v53
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v86, v86, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v45, v55, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v176
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v42, v44, 1.0
	v_div_scale_f32 v57, null, v0, v0, v81
	v_fma_f32 v43, -v56, v49, v52
	v_fma_f32 v52, -v54, v45, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v46, v44
	v_rcp_f32_e32 v46, v57
	v_div_scale_f32 v56, s1, v71, v51, v71
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v45, v52, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v43, v43, v53, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v53, v56, v44
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v80
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v57, v46, 1.0
	v_div_fixup_f32 v43, v43, v48, v114
	v_fma_f32 v48, -v54, v45, v55
	v_div_scale_f32 v55, s2, v81, v0, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v46, v58, v46
	v_fma_f32 v54, -v42, v53, v56
	v_div_fmas_f32 v45, v48, v50, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, s3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v174
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v48, v55, v46 :: v_dual_fmac_f32 v53, v54, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v49, v52, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v57, v48, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v42, v53, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v49, 1.0, v49 :: v_dual_fmac_f32 v48, v54, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v54, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v56, null, v49, v49, v80
	v_div_fmas_f32 v42, v42, v44, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v44, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v41, v56
	v_fma_f32 v53, -v57, v48, v55
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v54, v50
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v45, v45, v47, v107
	v_div_fmas_f32 v46, v53, v46, v48
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v48, 1.0, v50 :: v_dual_fmac_f32 v55, 0xbfb8aa3b, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v56, v41, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v44, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v46, v0, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v52, null, v48, v48, v69
	v_fmac_f32_e32 v41, v50, v41
	v_div_scale_f32 v50, vcc_lo, v80, v49, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v53, v52
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v58, v50, v41
	v_div_fixup_f32 v42, v42, v51, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v118, v0
	v_mul_f32_e32 v81, v115, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v57, null, v44, v44, v68
	v_fma_f32 v47, -v56, v58, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v55, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v52, v53, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v46, v57
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v75, v75, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v47, v41
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_fmac_f32 v53, v51, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, s0, v69, v48, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v56, v58, v50
	v_div_scale_f32 v51, null, v0, v0, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v57, v46, 1.0
	v_mul_f32_e32 v50, v42, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v41, v45, v41, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v172
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v45, v51
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, s1, v68, v44, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v52, v50, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v41, v49, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v106
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v51, v45, 1.0
	v_dual_mul_f32 v55, v47, v46 :: v_dual_fmac_f32 v50, v54, v53
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v82, v82, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v58
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v45, v49, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v57, v55, v47
	v_fma_f32 v42, -v52, v50, v42
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v133, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v52, s2, v63, v0, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v103
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v43, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v29, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v42, v42, v53, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_exp_f32_e32 v28, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v50, v52, v45
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v57, v55, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v51, v50, v52
	v_div_scale_f32 v56, null, v29, v29, v106
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v28, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v46, v47, v46, v55
	v_rcp_f32_e32 v43, v56
	v_fmac_f32_e32 v50, v49, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v97
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v42, v48, v69
	v_div_fixup_f32 v44, v46, v44, v68
	v_fma_f32 v46, -v51, v50, v52
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v48, null, v28, v28, v103
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v56, v43, 1.0
	v_div_fmas_f32 v45, v46, v45, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v46, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, s0, v106, v29, v106
	v_fmac_f32_e32 v43, v49, v43
	v_div_fixup_f32 v0, v45, v0, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v47, v47, v53
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v50, v25, v43
	v_fma_f32 v51, -v48, v46, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v49, 0xbfb8aa3b, v98 :: v_dual_mul_f32 v80, v113, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v56, v50, v25
	v_fmac_f32_e32 v46, v51, v46
	v_div_scale_f32 v51, s1, v103, v28, v103
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v52, null, v0, v0, v97
	v_fmac_f32_e32 v50, v47, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v47, v51, v46 :: v_dual_mul_f32 v70, v70, v44
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v112, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v42, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v25, -v56, v50, v25
	v_fma_f32 v44, -v48, v47, v51
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v49, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v130, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v43, v50
	v_dual_fmac_f32 v47, v44, v46 :: v_dual_mul_f32 v68, v111, v41
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v41, 1.0, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v52, v42, 1.0
	v_div_fixup_f32 v25, v25, v29, v106
	v_fma_f32 v29, -v48, v47, v51
	v_div_scale_f32 v44, null, v41, v41, v98
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v24
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v42, v43, v42
	v_rcp_f32_e32 v43, v44
	v_div_fmas_f32 v24, v29, v46, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v96
	v_cndmask_b32_e64 v46, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, s0, v97, v0, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v48, v48
	v_dual_fmac_f32 v46, 0xbfb8aa3b, v251 :: v_dual_mul_f32 v47, v27, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v44, v43, 1.0
	v_div_fixup_f32 v24, v24, v28, v103
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_exp_f32_e32 v46, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v52, v47, v27
	v_fmac_f32_e32 v43, v49, v43
	v_div_scale_f32 v49, s1, v98, v41, v98
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v48, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v47, v28, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v28, v49, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v21
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v46, v29
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v44, v28, v49
	v_fma_f32 v27, -v52, v47, v27
	v_div_scale_f32 v46, null, v22, v22, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v29, 1.0, v29 :: v_dual_fmac_f32 v28, v50, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v21, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, null, v29, v29, v251
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v104, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v27, v42, v47
	v_fma_f32 v42, -v44, v28, v49
	v_rcp_f32_e32 v49, v50
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v46, v21, 1.0
	v_div_fmas_f32 v28, v42, v43, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v42, v48, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, vcc_lo, v96, v22, v96
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v21, v51, v21
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v45, -v50, v49, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v28, v41, v98
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v47, v43, v21
	v_fmac_f32_e32 v49, v45, v49
	v_div_scale_f32 v45, s0, v251, v29, v251
	v_div_scale_f32 v48, null, v42, v42, v79
	v_div_fixup_f32 v0, v27, v0, v97
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v110, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v46, v47, v43
	v_mul_f32_e32 v28, v45, v49
	v_rcp_f32_e32 v51, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v62, v105, v0 :: v_dual_fmac_f32 v47, v27, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v50, v28, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v99, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v41, v44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v46, v47, v43
	v_fmac_f32_e32 v28, v27, v49
	v_fma_f32 v25, -v48, v51, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v21, v24, v21, v47
	v_fma_f32 v24, -v50, v28, v45
	v_fmac_f32_e32 v51, v25, v51
	v_div_scale_f32 v25, s1, v79, v42, v79
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v27, null, v0, v0, v78
	v_div_fmas_f32 v4, v24, v49, v28
	v_mul_f32_e32 v24, v25, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v28, v27
	v_div_fixup_f32 v21, v21, v22, v96
	v_div_fixup_f32 v4, v4, v29, v251
	v_fma_f32 v3, -v48, v24, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v77
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v24, v3, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v3, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v2, -v27, v28, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v76
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s2
	v_exp_f32_e32 v1, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v48, v24, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v74
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v28, v2, v28
	v_div_scale_f32 v45, s0, v78, v0, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v73
	v_ldexp_f32 v3, v3, v41
	v_exp_f32_e32 v41, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v1, v1, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v24, v25, v51, v24
	v_mul_f32_e32 v25, v45, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v29
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v3, 1.0, v3
	v_add_f32_e32 v1, 1.0, v1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v24, v42, v79
	v_fma_f32 v44, -v27, v25, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v41, v41, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, null, v3, v3, v77
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v25, v44, v28
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v22, v2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v42, v29
	v_div_scale_f32 v22, null, v1, v1, v76
	v_fma_f32 v27, -v27, v25, v45
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, null, v41, v41, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v22
	v_div_fmas_f32 v25, v27, v28, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v27, null, v2, v2, v73
	v_rcp_f32_e32 v46, v43
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v29, v42, 1.0
	v_div_scale_f32 v28, vcc_lo, v77, v3, v77
	v_rcp_f32_e32 v47, v27
	v_div_fixup_f32 v0, v25, v0, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fmac_f32_e32 v42, v44, v42
	v_fma_f32 v44, -v22, v45, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v89, v24
	v_mul_f32_e32 v53, v88, v4
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v43, v46, 1.0
	v_mul_f32_e32 v48, v28, v42
	v_fmac_f32_e32 v45, v44, v45
	v_div_scale_f32 v44, s0, v76, v1, v76
	v_fma_f32 v49, -v27, v47, 1.0
	v_fmac_f32_e32 v46, v25, v46
	v_div_scale_f32 v25, s1, v74, v41, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v90, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v29, v48, v28
	v_dual_mul_f32 v50, v44, v45 :: v_dual_fmac_f32 v47, v49, v47
	v_div_scale_f32 v49, s2, v73, v2, v73
	v_mul_f32_e32 v51, v25, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, v0, v42
	v_fma_f32 v0, -v22, v50, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v52, v49, v47
	v_fma_f32 v24, -v43, v51, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v4, -v29, v48, v28
	v_fmac_f32_e32 v50, v0, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v0, -v27, v52, v49
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v28, |v84|, |v85|
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v51, v24, v46
	v_div_fmas_f32 v4, v4, v42, v48
	v_fma_f32 v22, -v22, v50, v44
	v_fmac_f32_e32 v52, v0, v47
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v0, -v43, v51, v25
	v_div_fixup_f32 v3, v4, v3, v77
	v_div_fmas_f32 v22, v22, v45, v50
	v_fma_f32 v24, -v27, v52, v49
	s_mov_b32 vcc_lo, s1
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v4, |v34|, |v30|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v0, v46, v51
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v1, v22, v1, v76
	v_div_fmas_f32 v24, v24, v47, v52
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v52, v83, v21
.Ltmp11:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v21, |v26|, |v38|, |v37|
	v_max3_f32 v22, |v116|, |v117|, |v39|
.Ltmp12:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v41, v74
	v_div_fixup_f32 v2, v24, v2, v73
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v24, |v33|, |v19|, |v17|
	v_max3_f32 v25, |v92|, |v93|, |v94|
	v_max3_f32 v27, |v95|, |v15|, |v14|
	v_max3_f32 v29, |v86|, |v82|, |v81|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v67, v2
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v4, |v23|, v21
	v_max3_f32 v4, v22, v24, |v18|
	v_max_f32_e64 v21, |v108|, |v109|
	v_max3_f32 v22, |v36|, |v100|, |v101|
	v_max3_f32 v41, |v68|, |v69|, |v70|
	v_max3_f32 v42, |v80|, |v11|, |v9|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v72, v0
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, |v32|, |v31|, |v20|
	v_max3_f32 v24, |v102|, |v40|, |v16|
	v_max3_f32 v21, v21, |v35|, v22
	v_max3_f32 v22, v25, v27, |v13|
	v_max3_f32 v25, |v75|, |v71|, |v12|
	v_max3_f32 v27, v28, |v87|, v29
	v_max3_f32 v28, v41, v42, |v10|
.Ltmp18:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v45, v66, v1 :: v_dual_mul_f32 v44, v65, v3
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, v2, v0, v4
	v_max3_f32 v1, v21, v24, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v2, v27, v25, v28
	v_max_f32_e64 v3, |v60|, |v61|
	v_max3_f32 v4, |v62|, |v52|, |v53|
	v_max3_f32 v22, |v44|, |v45|, |v47|
	v_max3_f32 v24, |v46|, |v5|, |v6|
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v21, |v54|, |v55|, |v8|
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v25, v0, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v3, |v63|, v4
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v27, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, v22, v24, |v7|
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v4, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v24, v25, v25
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt vmcnt(3)
	v_and_b32_e32 v29, 0x60, v173
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v25, v27, v27
	v_max3_f32 v3, v3, v21, v22
	v_dual_max_f32 v4, v4, v4 :: v_dual_and_b32 v21, 3, v173
	v_max_f32_e32 v0, v0, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v2, v2, v25
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v22, 4, v173
	v_lshl_add_u32 v24, v21, 9, 0
	v_lshlrev_b32_e32 v25, 5, v21
	v_lshlrev_b32_e32 v27, 4, v173
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v4
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v4, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v28, 8, v173
	v_lshl_add_u32 v24, v22, 2, v24
	v_and_or_b32 v41, 0x680, v27, v25
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 1, v64
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v42, v25, v29
	v_lshl_add_u32 v24, v28, 4, v24
	v_lshrrev_b32_e32 v43, 3, v64
	v_xor_b32_e32 v41, v41, v29
	v_lshl_add_u32 v48, v22, 6, 0
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v4
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v4, v24, v27, v42
	v_lshlrev_b32_e32 v28, 3, v28
	v_lshl_add_u32 v21, v21, 4, 0
	v_add3_u32 v24, v48, v43, v41
	ds_store_b128 v4, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v24
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v4, v0
	v_dual_mov_b32 v24, v1 :: v_dual_mov_b32 v41, v2
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v0 :: v_dual_max_f32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v24, v24 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v41, v41 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v42, v3, v3
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v24, v24, v24
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v0, v0, v4
	v_max_f32_e32 v4, v41, v41
	v_max_f32_e32 v1, v1, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v3, v42, v3 :: v_dual_mov_b32 v24, v0
	v_dual_max_f32 v2, v2, v4 :: v_dual_mov_b32 v41, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v42, v3
	v_mov_b32_dpp v24, v24 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v4, v2
	v_mov_b32_dpp v41, v41 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v42, v42 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v24, v24, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v41, v41, v41 :: v_dual_max_f32 v0, v0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v1, v1, v41
	v_dual_max_f32 v24, v42, v42 :: v_dual_mov_b32 v41, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v2, v2, v4
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v42, v1 :: v_dual_max_f32 v3, v3, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v41, v41 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v42, v42 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v24, v3 :: v_dual_max_f32 v41, v41, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v42, v42, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v24, v24 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v1, v1, v42
	v_max_f32_e32 v24, v24, v24
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v41, 1, v29
	v_add_nc_u32_e32 v42, 0, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v4
	v_dual_max_f32 v3, v3, v24 :: v_dual_lshlrev_b32 v4, 5, v22
.Ltmp50:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v24, 4, v193
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v22, v42, v41, v28
	v_add3_u32 v4, v21, v4, v28
.Ltmp52:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v21, 63, v173
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v43, 32, v24
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v22, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v4
.Ltmp54:
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
	v_dual_max_f32 v0, v48, v48 :: v_dual_max_f32 v41, v50, v50
	v_max_f32_e32 v49, v49, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v51, v51, v51 :: v_dual_max_f32 v0, 0x2b8cbccc, v0
	v_max_f32_e32 v48, 0x2b8cbccc, v41
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v41, s0, s34, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v49, 0x2b8cbccc, v49
	v_div_scale_f32 v22, null, 0x40e00000, 0x40e00000, v0
	v_div_scale_f32 v50, vcc_lo, v0, 0x40e00000, v0
	v_div_scale_f32 v56, null, 0x40e00000, 0x40e00000, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v28, v22
	v_div_scale_f32 v59, null, 0x40e00000, 0x40e00000, v49
	v_rcp_f32_e32 v57, v56
	v_max_f32_e32 v51, 0x2b8cbccc, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v64, null, 0x40e00000, 0x40e00000, v51
	v_fma_f32 v42, -v22, v28, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v58, -v56, v57, 1.0
	v_fmac_f32_e32 v28, v42, v28
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v42, null, s35, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[24:25], v[3:4]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v57, v58, v57
	v_mul_f32_e32 v43, v50, v28
	v_div_scale_f32 v58, s6, v48, 0x40e00000, v48
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 16, v24
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[24:25], v[41:42]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v22, v43, v50
	v_fmac_f32_e32 v43, v3, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s3, s34, v4
	v_add_co_ci_u32_e64 v4, null, s35, 0, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v22, -v22, v43, v50
	v_rcp_f32_e32 v50, v59
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[30:31], v[41:42]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v42.h, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[24:25], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v22, v22, v28, v43
	v_mul_f32_e32 v28, v58, v57
	v_rcp_f32_e32 v43, v64
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[30:31], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v0, v22, 0x40e00000, v0
	v_fma_f32 v41, -v59, v50, 1.0
	v_fma_f32 v22, -v56, v28, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v50, v41, v50
	v_div_scale_f32 v41, s7, v49, 0x40e00000, v49
	v_fma_f32 v65, -v64, v43, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v28, v22, v57
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v22.l, v0.h
	v_mov_b16_e32 v22.h, v42.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v66, v41, v50
	v_fmac_f32_e32 v43, v65, v43
	v_div_scale_f32 v65, s8, v51, 0x40e00000, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v22
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v56, v28, v58
	v_fma_f32 v56, -v59, v66, v41
	v_mul_f32_e32 v58, v65, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v22, v0, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v28, v3, v57, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v66, v56, v50
	v_fma_f32 v0, -v64, v58, v65
	s_mov_b32 vcc_lo, s7
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v56, 0xffff0000, v22
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v28, v28, 0x40e00000, v48
	v_fma_f32 v41, -v59, v66, v41
	v_fmac_f32_e32 v58, v0, v43
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s34, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v56, v56, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v41, v41, v50, v66
	v_fma_f32 v50, -v64, v58, v65
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v48, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v41, v41, 0x40e00000, v49
	v_div_fmas_f32 v43, v50, v43, v58
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v49, null, v56, v56, v30
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v42.l, v28.h
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[24:25], v[3:4]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v43, v43, 0x40e00000, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v57, -v0, v48, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v51.l, v41.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v58, v49
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v51.h, v42.h
	v_and_b32_e32 v50, 1, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v48, v57, v48
	v_div_scale_f32 v57, vcc_lo, v34, v56, v34
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[30:31], v[3:4]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v59, null, v56, v56, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v51, v57, v48
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v28, v50, 0x7fff
	v_mov_b16_e32 v42.l, v43.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v50, -v49, v58, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v28, v41, v4, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v41, -v0, v51, v57
	v_rcp_f32_e32 v64, v59
	v_div_scale_f32 v66, null, v56, v56, v26
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v42, 1, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v58, v50, v58
	v_div_scale_f32 v67, s8, v30, v56, v30
	v_fmac_f32_e32 v51, v41, v48
	v_rcp_f32_e32 v41, v66
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v43, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v42, v67, v58
	v_fma_f32 v72, -v59, v64, 1.0
	v_fma_f32 v0, -v0, v51, v57
	v_div_scale_f32 v74, null, v56, v56, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v49, v42, v67
	v_fmac_f32_e32 v64, v72, v64
	v_div_scale_f32 v72, s9, v23, v56, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v66, v41, 1.0
	v_div_fmas_f32 v0, v0, v48, v51
	v_fmac_f32_e32 v42, v57, v58
	v_mul_f32_e32 v48, v72, v64
	v_rcp_f32_e32 v51, v74
	v_fmac_f32_e32 v41, v73, v41
	v_div_scale_f32 v57, s10, v26, v56, v26
	v_div_scale_f32 v73, null, v56, v56, v37
	v_div_fixup_f32 v34, v0, v56, v34
	v_fma_f32 v0, -v49, v42, v67
	v_fma_f32 v49, -v59, v48, v72
	v_mul_f32_e32 v67, v57, v41
	v_rcp_f32_e32 v76, v73
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v77, -v74, v51, 1.0
	v_div_fmas_f32 v0, v0, v58, v42
	v_fmac_f32_e32 v48, v49, v64
	v_fma_f32 v42, -v66, v67, v57
	v_div_scale_f32 v49, s8, v38, v56, v38
	v_fmac_f32_e32 v51, v77, v51
	v_div_fixup_f32 v30, v0, v56, v30
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v58, -v73, v76, 1.0
	v_fma_f32 v0, -v59, v48, v72
	v_fmac_f32_e32 v67, v42, v41
	v_div_scale_f32 v59, null, v56, v56, v32
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v42, v49, v51
	v_fmac_f32_e32 v76, v58, v76
	v_div_scale_f32 v58, s11, v37, v56, v37
	v_div_fmas_f32 v0, v0, v64, v48
	v_fma_f32 v48, -v66, v67, v57
	v_rcp_f32_e32 v64, v59
	v_div_scale_f32 v72, null, v56, v56, v31
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v57, -v74, v42, v49
	v_mul_f32_e32 v66, v58, v76
	v_div_fmas_f32 v41, v48, v41, v67
	v_rcp_f32_e32 v48, v72
	v_div_fixup_f32 v23, v0, v56, v23
	v_fmac_f32_e32 v42, v57, v51
	v_fma_f32 v57, -v73, v66, v58
	v_fma_f32 v67, -v59, v64, 1.0
	v_div_fixup_f32 v26, v41, v56, v26
	v_div_scale_f32 v41, s9, v32, v56, v32
	v_fma_f32 v0, -v74, v42, v49
	v_fmac_f32_e32 v66, v57, v76
	v_fmac_f32_e32 v64, v67, v64
	v_fma_f32 v49, -v72, v48, 1.0
	v_div_scale_f32 v57, null, v56, v56, v20
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v67, null, v56, v56, v116
	v_div_fmas_f32 v0, v0, v51, v42
	v_fma_f32 v42, -v73, v66, v58
	v_mul_f32_e32 v51, v41, v64
	v_fmac_f32_e32 v48, v49, v48
	v_rcp_f32_e32 v49, v57
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v58, s8, v31, v56, v31
	v_div_fmas_f32 v42, v42, v76, v66
	v_fma_f32 v66, -v59, v51, v41
	v_rcp_f32_e32 v76, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v73, v58, v48
	v_div_fixup_f32 v38, v0, v56, v38
	v_div_fixup_f32 v37, v42, v56, v37
	v_fma_f32 v74, -v57, v49, 1.0
	v_fmac_f32_e32 v51, v66, v64
	v_div_scale_f32 v66, null, v56, v56, v117
	v_fma_f32 v0, -v72, v73, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v74, v49
	v_div_scale_f32 v42, s10, v20, v56, v20
	v_fma_f32 v74, -v67, v76, 1.0
	v_fma_f32 v41, -v59, v51, v41
	v_rcp_f32_e32 v59, v66
	v_dual_fmac_f32 v73, v0, v48 :: v_dual_mul_f32 v0, v42, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v76, v74, v76
	v_div_scale_f32 v74, s11, v116, v56, v116
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v77, null, v56, v56, v39
	v_div_fmas_f32 v41, v41, v64, v51
	v_fma_f32 v51, -v72, v73, v58
	v_fma_f32 v58, -v57, v0, v42
	v_mul_f32_e32 v64, v74, v76
	v_fma_f32 v72, -v66, v59, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v32, v41, v56, v32
	v_div_fmas_f32 v48, v51, v48, v73
	v_fmac_f32_e32 v0, v58, v49
	v_rcp_f32_e32 v51, v77
	v_fma_f32 v58, -v67, v64, v74
	v_fmac_f32_e32 v59, v72, v59
	v_div_scale_f32 v72, s8, v117, v56, v117
	v_fma_f32 v41, -v57, v0, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v64, v58, v76
	v_div_scale_f32 v57, null, v56, v56, v33
	v_mul_f32_e32 v42, v72, v59
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v31, v48, v56, v31
	v_fma_f32 v48, -v77, v51, 1.0
	v_div_fmas_f32 v0, v41, v49, v0
	v_fma_f32 v41, -v67, v64, v74
	v_fma_f32 v49, -v66, v42, v72
	v_rcp_f32_e32 v58, v57
	v_div_scale_f32 v73, null, v56, v56, v19
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v51, v48, v51
	v_div_scale_f32 v67, s9, v39, v56, v39
	v_div_fmas_f32 v41, v41, v76, v64
	v_fmac_f32_e32 v42, v49, v59
	v_rcp_f32_e32 v64, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v74, v67, v51
	v_fma_f32 v49, -v57, v58, 1.0
	v_div_fixup_f32 v20, v0, v56, v20
	v_fma_f32 v0, -v66, v42, v72
	v_div_scale_f32 v72, null, v56, v56, v17
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v48, v41, v56, v116
	v_fma_f32 v41, -v77, v74, v67
	v_fmac_f32_e32 v58, v49, v58
	v_div_scale_f32 v66, s10, v33, v56, v33
	v_fma_f32 v49, -v73, v64, 1.0
	v_div_fmas_f32 v0, v0, v59, v42
	v_rcp_f32_e32 v42, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v74, v41, v51 :: v_dual_mul_f32 v41, v66, v58
	v_fmac_f32_e32 v64, v49, v64
	v_div_scale_f32 v59, s8, v19, v56, v19
	v_div_scale_f32 v76, null, v56, v56, v18
	v_div_fixup_f32 v49, v0, v56, v117
	v_fma_f32 v0, -v77, v74, v67
	v_fma_f32 v67, -v57, v41, v66
	v_mul_f32_e32 v77, v59, v64
	v_rcp_f32_e32 v78, v76
	v_fma_f32 v79, -v72, v42, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v65, 0xffff0000, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v51, v74
	v_fmac_f32_e32 v41, v67, v58
	v_fma_f32 v51, -v73, v77, v59
	v_fmac_f32_e32 v42, v79, v42
	v_div_scale_f32 v67, s9, v17, v56, v17
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v74, -v76, v78, 1.0
	v_div_fixup_f32 v39, v0, v56, v39
	v_fma_f32 v0, -v57, v41, v66
	v_fmac_f32_e32 v77, v51, v64
	v_mul_f32_e32 v51, v67, v42
	v_div_scale_f32 v66, null, v65, v65, v108
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v78, v74, v78
	v_div_scale_f32 v57, s11, v18, v56, v18
	v_div_fmas_f32 v0, v0, v58, v41
	v_fma_f32 v41, -v73, v77, v59
	v_fma_f32 v58, -v72, v51, v67
	v_rcp_f32_e32 v59, v66
	v_div_scale_f32 v74, null, v65, v65, v109
	v_mul_f32_e32 v73, v57, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v51, v58, v42
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v58, v74
	v_div_fmas_f32 v41, v41, v64, v77
	v_fma_f32 v64, -v76, v73, v57
	v_div_fixup_f32 v33, v0, v56, v33
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v77, -v66, v59, 1.0
	v_fma_f32 v0, -v72, v51, v67
	v_div_fixup_f32 v19, v41, v56, v19
	v_fmac_f32_e32 v73, v64, v78
	v_div_scale_f32 v41, s8, v108, v65, v108
	v_fmac_f32_e32 v59, v77, v59
	v_fma_f32 v64, -v74, v58, 1.0
	v_div_scale_f32 v67, null, v65, v65, v35
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v72, null, v65, v65, v36
	v_div_fmas_f32 v0, v0, v42, v51
	v_fma_f32 v42, -v76, v73, v57
	v_dual_mul_f32 v51, v41, v59 :: v_dual_fmac_f32 v58, v64, v58
	v_rcp_f32_e32 v57, v67
	v_div_scale_f32 v64, s9, v109, v65, v109
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v17, v0, v56, v17
	v_div_fmas_f32 v42, v42, v78, v73
	v_fma_f32 v73, -v66, v51, v41
	v_mul_f32_e32 v76, v64, v58
	v_rcp_f32_e32 v78, v72
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v77, -v67, v57, 1.0
	v_fmac_f32_e32 v51, v73, v59
	v_fma_f32 v0, -v74, v76, v64
	v_div_scale_f32 v73, null, v65, v65, v100
	v_div_fixup_f32 v18, v42, v56, v18
	v_fmac_f32_e32 v57, v77, v57
	v_div_scale_f32 v56, s10, v35, v65, v35
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v42, -v72, v78, 1.0
	v_fma_f32 v41, -v66, v51, v41
	v_fmac_f32_e32 v76, v0, v58
	v_rcp_f32_e32 v66, v73
	v_mul_f32_e32 v0, v56, v57
	v_fmac_f32_e32 v78, v42, v78
	v_div_scale_f32 v77, s11, v36, v65, v36
	v_fma_f32 v42, -v74, v76, v64
	v_div_scale_f32 v74, null, v65, v65, v101
	v_div_fmas_f32 v41, v41, v59, v51
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v51, -v67, v0, v56
	v_mul_f32_e32 v59, v77, v78
	v_fma_f32 v64, -v73, v66, 1.0
	v_div_fmas_f32 v58, v42, v58, v76
	v_rcp_f32_e32 v76, v74
	v_fmac_f32_e32 v0, v51, v57
	v_fma_f32 v79, -v72, v59, v77
	v_fmac_f32_e32 v66, v64, v66
	v_div_scale_f32 v64, s8, v100, v65, v100
	v_div_fixup_f32 v42, v41, v65, v108
	v_div_fixup_f32 v51, v58, v65, v109
	v_fma_f32 v41, -v67, v0, v56
	v_fmac_f32_e32 v59, v79, v78
	v_mul_f32_e32 v56, v64, v66
	v_fma_f32 v58, -v74, v76, 1.0
	v_div_scale_f32 v67, null, v65, v65, v102
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v79, null, v65, v65, v92
	v_div_fmas_f32 v0, v41, v57, v0
	v_fma_f32 v41, -v72, v59, v77
	v_fma_f32 v57, -v73, v56, v64
	v_fmac_f32_e32 v76, v58, v76
	v_rcp_f32_e32 v58, v67
	v_div_scale_f32 v77, null, v65, v65, v40
	v_div_scale_f32 v72, s9, v101, v65, v101
	v_fmac_f32_e32 v56, v57, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v57, v77
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v0, v0, v65, v35
	v_div_fmas_f32 v41, v41, v78, v59
	v_mul_f32_e32 v59, v72, v76
	v_fma_f32 v78, -v67, v58, 1.0
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v83, v79
	v_div_fixup_f32 v35, v41, v65, v36
	v_fma_f32 v36, -v73, v56, v64
	v_fma_f32 v41, -v74, v59, v72
	v_fmac_f32_e32 v58, v78, v58
	v_div_scale_f32 v64, s10, v102, v65, v102
	v_fma_f32 v73, -v77, v57, 1.0
	v_div_scale_f32 v78, null, v65, v65, v16
	v_div_fmas_f32 v36, v36, v66, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v59, v41, v76 :: v_dual_mul_f32 v56, v64, v58
	v_fmac_f32_e32 v57, v73, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v66, v78
	v_div_scale_f32 v73, s8, v40, v65, v40
	v_fma_f32 v41, -v74, v59, v72
	v_fma_f32 v72, -v67, v56, v64
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v74, v73, v57
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v50, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v41, v41, v76, v59
	v_fmac_f32_e32 v56, v72, v58
	v_fma_f32 v88, -v78, v66, 1.0
	v_fma_f32 v59, -v77, v74, v73
	v_fma_f32 v76, -v79, v83, 1.0
	v_div_scale_f32 v72, s9, v16, v65, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v66, v88, v66
	v_fma_f32 v64, -v67, v56, v64
	v_dual_fmac_f32 v74, v59, v57 :: v_dual_fmac_f32 v83, v76, v83
	v_div_scale_f32 v76, null, v65, v65, v93
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v59, v72, v66
	v_div_scale_f32 v67, s11, v92, v65, v92
	v_div_fmas_f32 v56, v64, v58, v56
	v_fma_f32 v58, -v77, v74, v73
	v_rcp_f32_e32 v73, v76
	v_fma_f32 v64, -v78, v59, v72
	v_mul_f32_e32 v77, v67, v83
	v_div_scale_f32 v88, null, v65, v65, v94
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v59, v64, v66
	v_div_fmas_f32 v57, v58, v57, v74
	v_rcp_f32_e32 v58, v88
	v_fma_f32 v64, -v79, v77, v67
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v74, -v76, v73, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v40, v57, v65, v40
	v_fma_f32 v57, -v78, v59, v72
	v_fmac_f32_e32 v77, v64, v83
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, null, v65, v65, v95
	v_div_scale_f32 v64, s8, v93, v65, v93
	v_fma_f32 v72, -v88, v58, 1.0
	v_div_fmas_f32 v57, v57, v66, v59
	v_fma_f32 v59, -v79, v77, v67
	v_rcp_f32_e32 v67, v74
	v_mul_f32_e32 v66, v64, v73
	v_fmac_f32_e32 v58, v72, v58
	v_div_scale_f32 v72, s9, v94, v65, v94
	v_div_scale_f32 v78, null, v65, v65, v15
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v79, v72, v58
	v_div_fmas_f32 v59, v59, v83, v77
	v_fma_f32 v77, -v76, v66, v64
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v83, -v74, v67, 1.0
	v_rcp_f32_e32 v89, v78
	v_div_fixup_f32 v16, v57, v65, v16
	v_div_fixup_f32 v57, v59, v65, v92
	v_fmac_f32_e32 v66, v77, v73
	v_fma_f32 v59, -v88, v79, v72
	v_fmac_f32_e32 v67, v83, v67
	v_div_scale_f32 v77, s10, v95, v65, v95
	v_div_scale_f32 v83, null, v65, v65, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v78, v89, 1.0
	v_fma_f32 v64, -v76, v66, v64
	v_dual_fmac_f32 v79, v59, v58 :: v_dual_mul_f32 v76, v77, v67
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v91, v83
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, s11, v15, v65, v15
	v_div_fmas_f32 v59, v64, v73, v66
	v_fma_f32 v64, -v88, v79, v72
	v_fma_f32 v66, -v74, v76, v77
	v_div_scale_f32 v88, null, v65, v65, v13
	v_mul_f32_e32 v72, v90, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v83, v91, 1.0
	v_fmac_f32_e32 v76, v66, v67
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v66, v88
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v92, null, v50, v50, v87
	v_div_fmas_f32 v64, v64, v58, v79
	v_fma_f32 v79, -v78, v72, v90
	v_fmac_f32_e32 v91, v73, v91
	v_div_scale_f32 v73, s8, v14, v65, v14
	v_div_fixup_f32 v58, v59, v65, v93
	v_div_fixup_f32 v59, v64, v65, v94
	v_fma_f32 v64, -v74, v76, v77
	v_fmac_f32_e32 v72, v79, v89
	v_mul_f32_e32 v74, v73, v91
	v_fma_f32 v77, -v88, v66, 1.0
	v_div_scale_f32 v79, null, v50, v50, v84
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v36, v36, v65, v100
	v_div_fmas_f32 v64, v64, v67, v76
	v_fma_f32 v67, -v78, v72, v90
	v_fma_f32 v76, -v83, v74, v73
	v_fmac_f32_e32 v66, v77, v66
	v_rcp_f32_e32 v77, v79
	v_div_scale_f32 v90, null, v50, v50, v85
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v78, s9, v13, v65, v13
	v_div_fmas_f32 v67, v67, v89, v72
	v_fmac_f32_e32 v74, v76, v91
	v_rcp_f32_e32 v72, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v76, v78, v66
	v_fma_f32 v89, -v79, v77, 1.0
	v_div_fixup_f32 v15, v67, v65, v15
	v_fma_f32 v67, -v83, v74, v73
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v73, -v88, v76, v78
	v_fmac_f32_e32 v77, v89, v77
	v_div_scale_f32 v83, s10, v84, v50, v84
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v90, v72, 1.0
	v_div_fmas_f32 v67, v67, v91, v74
	v_rcp_f32_e32 v74, v92
	v_div_scale_f32 v91, null, v50, v50, v86
	v_dual_fmac_f32 v76, v73, v66 :: v_dual_mul_f32 v73, v83, v77
	v_fmac_f32_e32 v72, v89, v72
	v_div_scale_f32 v89, s8, v85, v50, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v93, v91
	v_div_fixup_f32 v14, v67, v65, v14
	v_fma_f32 v67, -v88, v76, v78
	v_fma_f32 v78, -v79, v73, v83
	v_mul_f32_e32 v88, v89, v72
	v_fma_f32 v94, -v92, v74, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v41, v41, v65, v101
	v_div_fmas_f32 v66, v67, v66, v76
	v_fmac_f32_e32 v73, v78, v77
	v_fma_f32 v67, -v90, v88, v89
	v_fmac_f32_e32 v74, v94, v74
	v_div_scale_f32 v76, s9, v87, v50, v87
	v_fma_f32 v78, -v91, v93, 1.0
	v_div_fixup_f32 v56, v56, v65, v102
	v_div_fixup_f32 v64, v64, v65, v95
	v_div_fixup_f32 v13, v66, v65, v13
	v_fma_f32 v65, -v79, v73, v83
	v_dual_fmac_f32 v88, v67, v72 :: v_dual_mul_f32 v67, v76, v74
	v_fmac_f32_e32 v93, v78, v93
	v_div_scale_f32 v78, s11, v86, v50, v86
	v_div_scale_f32 v79, null, v50, v50, v82
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v66, -v90, v88, v89
	v_div_fmas_f32 v65, v65, v77, v73
	v_fma_f32 v73, -v92, v67, v76
	v_rcp_f32_e32 v77, v79
	v_mul_f32_e32 v83, v78, v93
	v_div_scale_f32 v89, null, v50, v50, v81
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v67, v73, v74
	v_div_fmas_f32 v66, v66, v72, v88
	v_rcp_f32_e32 v73, v89
	v_fma_f32 v72, -v91, v83, v78
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v79, v77, 1.0
	v_div_fixup_f32 v66, v66, v50, v85
	v_fma_f32 v76, -v92, v67, v76
	v_fmac_f32_e32 v83, v72, v93
	v_div_scale_f32 v85, null, v50, v50, v75
	v_div_fixup_f32 v65, v65, v50, v84
	v_fmac_f32_e32 v77, v88, v77
	v_div_scale_f32 v84, s8, v82, v50, v82
	v_fma_f32 v72, -v89, v73, 1.0
	v_div_fmas_f32 v67, v76, v74, v67
	v_fma_f32 v74, -v91, v83, v78
	v_rcp_f32_e32 v78, v85
	v_mul_f32_e32 v76, v84, v77
	v_fmac_f32_e32 v73, v72, v73
	v_div_scale_f32 v88, s9, v81, v50, v81
	v_div_scale_f32 v90, null, v50, v50, v71
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v67, v67, v50, v87
	v_div_fmas_f32 v72, v74, v93, v83
	v_fma_f32 v74, -v79, v76, v84
	v_mul_f32_e32 v83, v88, v73
	v_fma_f32 v91, -v85, v78, 1.0
	v_rcp_f32_e32 v92, v90
	v_div_fixup_f32 v72, v72, v50, v86
	v_fmac_f32_e32 v76, v74, v77
	v_fma_f32 v74, -v89, v83, v88
	v_fmac_f32_e32 v78, v91, v78
	v_div_scale_f32 v86, s10, v75, v50, v75
	v_div_scale_f32 v87, null, v50, v50, v12
	v_fma_f32 v79, -v79, v76, v84
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v90, v92, 1.0
	v_fmac_f32_e32 v83, v74, v73
	v_mul_f32_e32 v84, v86, v78
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v93, v87
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s11, v71, v50, v71
	v_div_fmas_f32 v74, v79, v77, v76
	v_fma_f32 v76, -v89, v83, v88
	v_fma_f32 v77, -v85, v84, v86
	v_div_scale_f32 v89, null, v50, v50, v68
	v_mul_f32_e32 v79, v91, v92
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v77, v78
	v_rcp_f32_e32 v77, v89
	v_fma_f32 v88, -v87, v93, 1.0
	v_div_fmas_f32 v76, v76, v73, v83
	v_fma_f32 v83, -v90, v79, v91
	v_div_fixup_f32 v73, v74, v50, v82
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v93, v88, v93
	v_div_scale_f32 v88, s8, v12, v50, v12
	v_div_fixup_f32 v74, v76, v50, v81
	v_fma_f32 v76, -v85, v84, v86
	v_fmac_f32_e32 v79, v83, v92
	v_fma_f32 v82, -v89, v77, 1.0
	v_div_scale_f32 v83, null, v50, v50, v69
	v_mul_f32_e32 v81, v88, v93
	v_div_fmas_f32 v76, v76, v78, v84
	v_fma_f32 v78, -v90, v79, v91
	v_fmac_f32_e32 v77, v82, v77
	v_rcp_f32_e32 v82, v83
	v_div_scale_f32 v86, null, v50, v50, v70
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v84, -v87, v81, v88
	v_div_scale_f32 v85, s9, v68, v50, v68
	v_div_fmas_f32 v78, v78, v92, v79
	v_rcp_f32_e32 v79, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v84, v93
	v_mul_f32_e32 v84, v85, v77
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v83, v82, 1.0
	v_div_fixup_f32 v75, v76, v50, v75
	v_div_fixup_f32 v76, v78, v50, v71
	v_fma_f32 v71, -v87, v81, v88
	v_fma_f32 v78, -v89, v84, v85
	v_fmac_f32_e32 v82, v90, v82
	v_div_scale_f32 v87, s10, v69, v50, v69
	v_fma_f32 v88, -v86, v79, 1.0
	v_div_scale_f32 v90, null, v50, v50, v80
	v_div_scale_f32 v91, null, v50, v50, v11
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v84, v78, v77
	v_div_fmas_f32 v71, v71, v93, v81
	v_dual_mul_f32 v78, v87, v82 :: v_dual_fmac_f32 v79, v88, v79
	v_rcp_f32_e32 v81, v90
	v_div_scale_f32 v88, s8, v70, v50, v70
	v_rcp_f32_e32 v92, v91
	v_div_fixup_f32 v12, v71, v50, v12
	v_fma_f32 v71, -v89, v84, v85
	v_fma_f32 v85, -v83, v78, v87
	v_mul_f32_e32 v89, v88, v79
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v43, 0xffff0000, v4
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v90, v81, 1.0
	v_div_fmas_f32 v71, v71, v77, v84
	v_fmac_f32_e32 v78, v85, v82
	v_fma_f32 v77, -v86, v89, v88
	v_fma_f32 v85, -v91, v92, 1.0
	v_fmac_f32_e32 v81, v93, v81
	v_div_scale_f32 v84, s9, v80, v50, v80
	v_div_fixup_f32 v68, v71, v50, v68
	v_fma_f32 v71, -v83, v78, v87
	v_fmac_f32_e32 v89, v77, v79
	v_fmac_f32_e32 v92, v85, v92
	v_div_scale_f32 v85, null, v50, v50, v9
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v77, v84, v81
	v_div_scale_f32 v83, s11, v11, v50, v11
	v_div_fmas_f32 v71, v71, v82, v78
	v_fma_f32 v78, -v86, v89, v88
	v_rcp_f32_e32 v86, v85
	v_div_scale_f32 v88, null, v50, v50, v10
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v82, -v90, v77, v84
	v_mul_f32_e32 v87, v83, v92
	v_div_fmas_f32 v78, v78, v79, v89
	v_rcp_f32_e32 v79, v88
	v_div_fixup_f32 v69, v71, v50, v69
	v_fmac_f32_e32 v77, v82, v81
	v_fma_f32 v82, -v91, v87, v83
	v_fma_f32 v89, -v85, v86, 1.0
	v_div_fixup_f32 v70, v78, v50, v70
	v_div_scale_f32 v78, s8, v9, v50, v9
	v_fma_f32 v71, -v90, v77, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v87, v82, v92 :: v_dual_fmac_f32 v86, v89, v86
	v_fma_f32 v82, -v88, v79, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v90, null, v43, v43, v61
	v_div_fmas_f32 v71, v71, v81, v77
	v_fma_f32 v77, -v91, v87, v83
	v_mul_f32_e32 v81, v78, v86
	v_fmac_f32_e32 v79, v82, v79
	v_div_scale_f32 v82, null, v43, v43, v60
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v83, s9, v10, v50, v10
	v_div_fmas_f32 v77, v77, v92, v87
	v_rcp_f32_e32 v84, v82
	v_fma_f32 v87, -v85, v81, v78
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v89, v83, v79
	v_div_fixup_f32 v71, v71, v50, v80
	v_div_fixup_f32 v11, v77, v50, v11
	v_rcp_f32_e32 v80, v90
	v_fmac_f32_e32 v81, v87, v86
	v_fma_f32 v77, -v88, v89, v83
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v92, null, v43, v43, v62
	v_fma_f32 v87, -v82, v84, 1.0
	v_fma_f32 v78, -v85, v81, v78
	v_div_scale_f32 v85, null, v43, v43, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v89, v77, v79 :: v_dual_fmac_f32 v84, v87, v84
	v_div_scale_f32 v77, s10, v60, v43, v60
	v_rcp_f32_e32 v87, v85
	v_fma_f32 v91, -v90, v80, 1.0
	v_div_fmas_f32 v78, v78, v86, v81
	v_fma_f32 v81, -v88, v89, v83
	v_mul_f32_e32 v83, v77, v84
	v_div_scale_f32 v86, s8, v61, v43, v61
	v_fmac_f32_e32 v80, v91, v80
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v91, -v82, v83, v77
	v_fma_f32 v88, -v85, v87, 1.0
	v_rcp_f32_e32 v94, v92
	v_mul_f32_e32 v93, v86, v80
	v_div_fmas_f32 v79, v81, v79, v89
	v_fmac_f32_e32 v83, v91, v84
	v_fmac_f32_e32 v87, v88, v87
	v_div_scale_f32 v88, s11, v63, v43, v63
	v_fma_f32 v81, -v90, v93, v86
	v_div_fixup_f32 v9, v78, v50, v9
	v_div_fixup_f32 v10, v79, v50, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v89, v88, v87
	v_fma_f32 v50, -v82, v83, v77
	v_div_scale_f32 v79, null, v43, v43, v52
	v_fmac_f32_e32 v93, v81, v80
	v_fma_f32 v77, -v85, v89, v88
	v_fma_f32 v78, -v92, v94, 1.0
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v90, v93, v86
	v_fmac_f32_e32 v89, v77, v87
	v_rcp_f32_e32 v77, v79
	v_fmac_f32_e32 v94, v78, v94
	v_div_scale_f32 v78, s9, v62, v43, v62
	v_div_fmas_f32 v50, v50, v84, v83
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v83, null, v43, v43, v53
	v_div_fmas_f32 v80, v81, v80, v93
	v_fma_f32 v81, -v85, v89, v88
	v_mul_f32_e32 v82, v78, v94
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v84, -v79, v77, 1.0
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v85, v83
	v_div_fmas_f32 v81, v81, v87, v89
	v_fma_f32 v86, -v92, v82, v78
	v_fmac_f32_e32 v77, v84, v77
	v_div_scale_f32 v84, s8, v52, v43, v52
	v_div_fixup_f32 v50, v50, v43, v60
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v82, v86, v94
	v_div_fixup_f32 v60, v80, v43, v61
	v_div_fixup_f32 v61, v81, v43, v63
	v_mul_f32_e32 v63, v84, v77
	v_fma_f32 v80, -v83, v85, 1.0
	v_fma_f32 v78, -v92, v82, v78
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v81, null, v43, v43, v54
	v_fma_f32 v86, -v79, v63, v84
	v_fmac_f32_e32 v85, v80, v85
	v_div_scale_f32 v80, s10, v53, v43, v53
	v_div_fmas_f32 v78, v78, v94, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v63, v86, v77
	v_rcp_f32_e32 v87, v81
	v_mul_f32_e32 v82, v80, v85
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v62, v78, v43, v62
	v_fma_f32 v78, -v79, v63, v84
	v_div_scale_f32 v86, null, v43, v43, v55
	v_fma_f32 v79, -v83, v82, v80
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v63, v78, v77, v63
	v_div_scale_f32 v77, null, v43, v43, v8
	v_fma_f32 v84, -v81, v87, 1.0
	v_rcp_f32_e32 v88, v86
	v_fmac_f32_e32 v82, v79, v85
	v_rcp_f32_e32 v79, v77
	v_div_scale_f32 v78, s8, v54, v43, v54
	v_fmac_f32_e32 v87, v84, v87
	v_div_scale_f32 v84, null, v43, v43, v44
	v_div_fixup_f32 v52, v63, v43, v52
	v_fma_f32 v80, -v83, v82, v80
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v63, -v86, v88, 1.0
	v_rcp_f32_e32 v90, v84
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v77, v79, 1.0
	v_mul_f32_e32 v83, v78, v87
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v88, v63, v88
	v_div_scale_f32 v63, s9, v55, v43, v55
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v43, v43, v45
	v_div_fmas_f32 v80, v80, v85, v82
	v_fma_f32 v82, -v81, v83, v78
	v_mul_f32_e32 v85, v63, v88
	v_div_scale_f32 v91, s10, v8, v43, v8
	v_fma_f32 v92, -v84, v90, 1.0
	v_rcp_f32_e32 v93, v89
	v_fmac_f32_e32 v83, v82, v87
	v_fma_f32 v82, -v86, v85, v63
	v_mul_f32_e32 v94, v91, v79
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s11, v44, v43, v44
	v_div_fixup_f32 v53, v80, v43, v53
	v_fma_f32 v78, -v81, v83, v78
	v_fmac_f32_e32 v85, v82, v88
	v_fma_f32 v80, -v77, v94, v91
	v_mul_f32_e32 v81, v92, v90
	v_fma_f32 v82, -v89, v93, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v63, -v86, v85, v63
	v_fmac_f32_e32 v94, v80, v79
	v_fma_f32 v80, -v84, v81, v92
	v_fmac_f32_e32 v93, v82, v93
	v_div_scale_f32 v82, s8, v45, v43, v45
	v_div_fmas_f32 v78, v78, v87, v83
	v_div_scale_f32 v83, null, v43, v43, v47
	v_fma_f32 v77, -v77, v94, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v81, v80, v90 :: v_dual_mul_f32 v80, v82, v93
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v54, v78, v43, v54
	v_div_fmas_f32 v63, v63, v88, v85
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v85, v83
	v_div_fmas_f32 v77, v77, v79, v94
	v_fma_f32 v79, -v84, v81, v92
	v_fma_f32 v84, -v89, v80, v82
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v55, v63, v43, v55
	v_div_fixup_f32 v8, v77, v43, v8
	v_div_fmas_f32 v79, v79, v90, v81
	v_fmac_f32_e32 v80, v84, v93
	v_div_scale_f32 v77, null, v43, v43, v46
	v_fma_f32 v78, -v83, v85, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v44, v79, v43, v44
	v_fma_f32 v63, -v89, v80, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v79, v77
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v85, v78, v85
	v_div_scale_f32 v78, null, v43, v43, v5
	v_div_fmas_f32 v63, v63, v93, v80
	v_div_scale_f32 v80, null, v43, v43, v6
	v_div_scale_f32 v87, null, v43, v43, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v82, v78
	v_rcp_f32_e32 v84, v80
	v_div_scale_f32 v81, vcc_lo, v47, v43, v47
	v_div_fixup_f32 v45, v63, v43, v45
	v_fma_f32 v63, -v77, v79, 1.0
	v_rcp_f32_e32 v89, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v86, v81, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v79, v63, v79
	v_div_scale_f32 v63, s8, v46, v43, v46
	v_fma_f32 v88, -v78, v82, 1.0
	v_fma_f32 v91, -v80, v84, 1.0
	v_fma_f32 v90, -v83, v86, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v92, v63, v79
	v_fma_f32 v93, -v87, v89, 1.0
	v_fmac_f32_e32 v82, v88, v82
	v_div_scale_f32 v88, s9, v5, v43, v5
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v91, s10, v6, v43, v6
	v_fmac_f32_e32 v86, v90, v85
	v_fma_f32 v90, -v77, v92, v63
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s11, v7, v43, v7
	v_dual_mul_f32 v94, v88, v82 :: v_dual_mul_f32 v95, v91, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v92, v90, v79
	v_mul_f32_e32 v96, v93, v89
	v_fma_f32 v81, -v83, v86, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v78, v94, v88
	v_fma_f32 v90, -v80, v95, v91
	v_fma_f32 v63, -v77, v92, v63
	v_fma_f32 v77, -v87, v96, v93
	v_div_fmas_f32 v81, v81, v85, v86
	v_dual_fmac_f32 v94, v83, v82 :: v_dual_fmac_f32 v95, v90, v84
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v96, v77, v89
	v_div_fmas_f32 v63, v63, v79, v92
	v_fma_f32 v78, -v78, v94, v88
	v_fma_f32 v77, -v80, v95, v91
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v79, -v87, v96, v93
	s_mov_b32 s8, 0xc1000000
	v_div_fmas_f32 v78, v78, v82, v94
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v47, v81, v43, v47
	v_div_fmas_f32 v77, v77, v84, v95
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v46, v63, v43, v46
	v_div_fmas_f32 v79, v79, v89, v96
	v_div_fixup_f32 v5, v78, v43, v5
	v_div_fixup_f32 v6, v77, v43, v6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v8, v8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v7, v79, v43, v7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v48
	v_rndne_f32_e32 v48, v49
	v_rndne_f32_e32 v49, v51
	v_rndne_f32_e32 v51, v56
	v_rndne_f32_e32 v56, v57
	v_rndne_f32_e32 v57, v58
	v_rndne_f32_e32 v58, v59
	v_rndne_f32_e32 v59, v64
	v_rndne_f32_e32 v64, v66
	v_rndne_f32_e32 v66, v72
	v_rndne_f32_e32 v72, v74
	v_rndne_f32_e32 v74, v76
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v0, v0, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v63, v65
	v_rndne_f32_e32 v65, v67
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v62, v62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v82, v11
	v_cvt_i32_f32_e32 v93, v8
	v_cvt_i32_f32_e32 v100, v7
	v_and_b32_e32 v7, 15, v23
	v_and_b32_e32 v8, 15, v26
	v_and_b32_e32 v11, 15, v32
	v_and_b32_e32 v32, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v173
	v_and_b32_e32 v23, 16, v173
	v_lshlrev_b32_e32 v26, 4, v192
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v67, v73
	v_rndne_f32_e32 v73, v75
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v5, v5
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_cvt_i32_f32_e32 v90, v53
	v_and_b32_e32 v53, 15, v74
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v74, 6, v23
	v_xor_b32_e32 v26, v26, v29
	v_lshlrev_b32_e32 v29, 6, v173
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v55, v55
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v5, v5, s8, 0x40e00000
	v_med3_f32 v6, v6, s8, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v85, v50
	v_cvt_i32_f32_e32 v86, v60
	v_cvt_i32_f32_e32 v87, v61
	v_cvt_i32_f32_e32 v88, v62
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v74
	v_and_or_b32 v25, 0x1b00, v29, v25
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v75, v17
	v_cvt_i32_f32_e32 v76, v18
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v77, v16
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v81, v12
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v94, v44
	v_cvt_i32_f32_e32 v95, v45
	v_cvt_i32_f32_e32 v96, v47
	v_cvt_i32_f32_e32 v78, v15
	v_cvt_i32_f32_e32 v83, v9
	v_cvt_i32_f32_e32 v84, v10
	v_cvt_i32_f32_e32 v97, v46
	v_cvt_i32_f32_e32 v98, v5
	v_cvt_i32_f32_e32 v99, v6
	v_and_b32_e32 v5, 15, v34
	v_and_b32_e32 v6, 15, v30
	v_and_b32_e32 v9, 15, v38
	v_and_b32_e32 v10, 15, v37
	v_and_b32_e32 v12, 15, v31
	v_and_b32_e32 v15, 15, v48
	v_and_b32_e32 v17, 15, v33
	v_and_b32_e32 v30, 15, v42
	v_and_b32_e32 v31, 15, v49
	v_and_b32_e32 v33, 15, v35
	v_and_b32_e32 v46, 15, v63
	v_and_b32_e32 v47, 15, v64
	v_and_b32_e32 v48, 15, v65
	v_and_b32_e32 v49, 15, v66
	v_and_b32_e32 v62, 15, v85
	v_and_b32_e32 v63, 15, v86
	v_and_b32_e32 v64, 15, v87
	v_and_b32_e32 v65, 15, v88
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v26, v27
	v_xad_u32 v25, v25, v193, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v79, v14
	v_cvt_i32_f32_e32 v80, v13
	v_cvt_i32_f32_e32 v89, v52
	v_cvt_i32_f32_e32 v91, v54
	v_cvt_i32_f32_e32 v92, v55
	v_and_b32_e32 v13, 15, v20
	v_and_b32_e32 v14, 15, v43
	v_and_b32_e32 v16, 15, v39
	v_and_b32_e32 v18, 15, v19
	v_and_b32_e32 v19, 15, v75
	v_and_b32_e32 v20, 15, v76
	v_and_b32_e32 v34, 15, v36
	v_and_b32_e32 v35, 15, v41
	v_and_b32_e32 v36, 15, v51
	v_and_b32_e32 v37, 15, v40
	v_and_b32_e32 v38, 15, v77
	v_and_b32_e32 v39, 15, v56
	v_and_b32_e32 v40, 15, v57
	v_and_b32_e32 v41, 15, v58
	v_and_b32_e32 v51, 15, v72
	v_and_b32_e32 v52, 15, v73
	v_and_b32_e32 v54, 15, v81
	v_and_b32_e32 v55, 15, v68
	v_and_b32_e32 v56, 15, v69
	v_and_b32_e32 v57, 15, v70
	v_and_b32_e32 v58, 15, v71
	v_and_b32_e32 v70, 15, v93
	v_and_b32_e32 v71, 15, v94
	v_and_b32_e32 v72, 15, v95
	v_and_b32_e32 v73, 15, v96
	v_med3_f32 v59, v59, s8, 0x40e00000
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
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_cvt_i32_f32_e32 v59, v59
	v_and_b32_e32 v43, 15, v78
	v_and_b32_e32 v44, 15, v79
	v_and_b32_e32 v45, 15, v80
	v_cvt_i32_f32_e32 v67, v67
	v_and_b32_e32 v42, 15, v59
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[34:37]
	ds_store_b128 v0, v[42:45] offset:512
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v50, 15, v67
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v25
	ds_load_b128 v[42:45], v25 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v59, 15, v82
	v_and_b32_e32 v60, 15, v83
	v_and_b32_e32 v61, 15, v84
	v_and_b32_e32 v66, 15, v89
	v_and_b32_e32 v67, 15, v90
	v_and_b32_e32 v68, 15, v91
	v_and_b32_e32 v69, 15, v92
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
	v_and_b32_e32 v74, 15, v97
	v_and_b32_e32 v75, 15, v98
	v_and_b32_e32 v76, 15, v99
	v_and_b32_e32 v77, 15, v100
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v12, v20, 4, v12
	v_lshl_or_b32 v20, v40, 4, v31
	v_lshl_or_b32 v31, v54, 4, v46
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v46, 3, v192
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
	v_lshl_or_b32 v0, s49, 7, v46
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
	v_lshrrev_b32_e32 v5, 4, v173
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
	v_and_b32_e32 v4, 0xc0, v173
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[24:25], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[30:31], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	v_cmp_eq_u32_e64 s1, 0, v4
	v_add_lshl_u32 v1, v3, s49, 1
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
.Ltmp55:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 396
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
		.amdhsa_next_free_sgpr 54
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 54
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 396
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 32280
; TotalNumSgprs: 56
; NumVgprs: 256
; ScratchSize: 396
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 56
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
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 396
    .sgpr_count:     56
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 98
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
