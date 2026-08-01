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
	s_load_b32 s78, s[0:1], 0x54
	s_load_b64 s[34:35], s[0:1], 0x5c
	s_load_b64 s[68:69], s[0:1], 0x48
	v_mov_b32_e32 v107, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_load_b256 s[60:67], s[0:1], 0x28
	s_mov_b32 s24, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v213, 0x80, v107
	v_lshrrev_b32_e32 v112, 7, v107
	v_and_b32_e32 v108, 15, v107
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_and_b32_e32 v111, 0x7f, v107
	v_or_b32_e32 v98, 30, v112
	v_or_b32_e32 v97, 28, v112
	v_or_b32_e32 v92, 26, v112
	v_or_b32_e32 v91, 24, v112
	v_or_b32_e32 v90, 22, v112
	v_or_b32_e32 v89, 20, v112
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s78, 0xff
	v_or_b32_e32 v84, 18, v112
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	v_or_b32_e32 v83, 16, v112
	s_lshr_b32 s4, s4, 24
	v_or_b32_e32 v82, 14, v112
	s_add_i32 s3, s3, s4
	v_or_b32_e32 v81, 12, v112
	s_ashr_i32 s3, s3, 8
	v_or_b32_e32 v77, 10, v112
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	v_or_b32_e32 v76, 8, v112
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_or_b32_e32 v75, 6, v112
	v_or_b32_e32 v74, 4, v112
	v_rcp_iflag_f32_e32 v0, s5
	v_or_b32_e32 v120, 2, v112
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
	s_sub_i32 s5, s35, s4
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
	s_ashr_i32 s25, s7, 31
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
	s_xor_b32 s28, s3, s25
	s_sub_i32 s79, s28, s25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s79, s5
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s4
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[2:3], 3
	s_add_u32 s2, s60, s4
	s_addc_u32 s3, s61, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s62, s4
	s_addc_u32 s7, s63, s5
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_load_b64 s[76:77], s[2:3], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s64, s4
	s_addc_u32 s3, s65, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[64:65], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[70:71], s[2:3], 0x0
	v_cmp_eq_u32_e64 s2, 0, v213
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lt_i32 s34, 1
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_load_b64 s[6:7], s[0:1], 0x20
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v24, 5, v107
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x58
	s_load_b256 s[36:43], s[0:1], 0x0
	v_dual_mov_b32 v232, 0 :: v_dual_and_b32 v25, 0xe0, v107
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_dual_mov_b32 v69, 0 :: v_dual_lshlrev_b32 v26, 1, v111
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s0, s76, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s77, 0, s0
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_lshl_or_b32 v197, s79, 8, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v2, vcc_lo, v0, 8
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_add_u32 s0, s6, s4
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v6, vcc_lo, v0, 24
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_addc_u32 s1, s7, s5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	v_add_co_u32 v8, vcc_lo, v0, 32
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[26:27], s[0:1], 0x0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, 0, v1, vcc_lo
	v_add_co_u32 v10, vcc_lo, v0, 40
	v_add_co_u32 v14, s0, s76, v108
	v_add_co_ci_u32_e64 v11, null, 0, v1, vcc_lo
	v_add_co_u32 v12, vcc_lo, v0, 48
	v_add_co_ci_u32_e64 v15, null, s77, 0, s0
	v_add_co_ci_u32_e64 v13, null, 0, v1, vcc_lo
	v_add_co_u32 v16, vcc_lo, v0, 56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, 0, v1, vcc_lo
	v_add_co_u32 v18, vcc_lo, v14, 16
	v_add_co_ci_u32_e64 v19, null, 0, v15, vcc_lo
	v_add_co_u32 v20, vcc_lo, v14, 32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, 0, v15, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[64:65], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[70:71], v[8:9]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[64:65], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[70:71], v[12:13]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[64:65], v[4:5]
	v_cmp_le_i64_e64 s10, s[64:65], v[20:21]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[70:71], v[4:5]
	v_cmp_gt_i64_e64 s22, s[70:71], v[20:21]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s55, s4, s16
	.loc	1 1049 17 is_stmt 1             ; ragged.py:1049:17
	s_lshl_b32 s4, s78, 1
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v22, vcc_lo, v14, 48
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[64:65], v[10:11]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[70:71], v[10:11]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s57, s6, s18
	.loc	1 1153 29 is_stmt 1             ; ragged.py:1153:29
	s_mul_i32 s4, s4, s33
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s6, s34, s26
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v23, null, 0, v15, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[70:71], v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s53, s1, s14
	s_and_b32 s1, s10, s22
	v_dual_mov_b32 v230, 0 :: v_dual_and_b32 v21, 31, v107
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_add_nc_u32_e32 v0, s76, v108
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s22, s4, s26
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s4, s6, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s56, s5, s17
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_or_b32 s4, s4, 1
	s_lshl_b32 s5, s28, 8
	s_mul_i32 s4, s78, s4
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v1, 16, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[64:65], v[14:15]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[70:71], v[14:15]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	v_add3_u32 v14, s4, s5, v107
	s_mul_i32 s6, s6, s78
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[64:65], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[70:71], v[2:3]
	v_dual_mov_b32 v231, 0 :: v_dual_add_nc_u32 v2, 32, v0
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v12, s76, v24
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_lshl_b32 s4, s25, 8
	s_lshl_b32 s6, s6, 1
	v_dual_mov_b32 v226, 0 :: v_dual_add_nc_u32 v3, 48, v0
	v_mul_lo_u32 v1, s34, v1
	v_mul_lo_u32 v0, s34, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[64:65], v[18:19]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s21, s[70:71], v[18:19]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	v_subrev_nc_u32_e32 v14, s4, v14
	v_add3_u32 v18, s6, s5, v107
	v_dual_mov_b32 v193, 0 :: v_dual_add_nc_u32 v20, 56, v12
	v_mul_lo_u32 v2, s34, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[64:65], v[22:23]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s23, s[70:71], v[22:23]
	v_dual_mov_b32 v194, 0 :: v_dual_lshlrev_b32 v23, 1, v14
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	v_subrev_nc_u32_e32 v14, s4, v18
	v_dual_mov_b32 v223, 0 :: v_dual_lshlrev_b32 v18, 1, v112
	v_dual_mov_b32 v215, 0 :: v_dual_lshlrev_b32 v234, 1, v1
	v_dual_mov_b32 v188, 0 :: v_dual_lshlrev_b32 v235, 1, v0
	v_mad_u64_u32 v[0:1], null, v20, s33, v[21:22]
	s_mul_i32 s6, s33, s26
	v_dual_mov_b32 v196, 0 :: v_dual_add_nc_u32 v19, 48, v12
	v_dual_mov_b32 v190, 0 :: v_dual_lshlrev_b32 v245, 1, v2
	v_lshl_add_u32 v2, s6, 1, v18
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[18:19], null, v19, s33, v[21:22]
	scratch_store_b64 off, v[0:1], off offset:208 ; 8-byte Folded Spill
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v0, 61, v2
	v_cndmask_b32_e64 v4, 0x88, 0, s2
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v1, 57, v2
	v_dual_mov_b32 v218, 0 :: v_dual_add_nc_u32 v15, 24, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v0, s78, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[64:65], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[70:71], v[6:7]
	v_xor_b32_e32 v6, v4, v111
	v_lshrrev_b32_e32 v4, 1, v25
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	v_mul_lo_u32 v1, s78, v1
	v_dual_mov_b32 v221, 0 :: v_dual_lshlrev_b32 v24, 1, v14
	v_add3_u32 v0, v0, s5, v26
	v_mad_u64_u32 v[14:15], null, v15, s33, v[21:22]
	v_add3_u32 v201, 0, v108, v4
	v_dual_mov_b32 v229, 0 :: v_dual_and_b32 v4, 0xf0, v107
	v_dual_mov_b32 v214, 0 :: v_dual_lshlrev_b32 v9, 5, v107
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[64:65], v[16:17]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s19, s[70:71], v[16:17]
	v_dual_mov_b32 v220, 0 :: v_dual_add_nc_u32 v13, 16, v12
	v_dual_mov_b32 v216, 0 :: v_dual_add_nc_u32 v17, 40, v12
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	v_subrev_nc_u32_e32 v0, s4, v0
	v_dual_mov_b32 v227, 0 :: v_dual_lshlrev_b32 v10, 2, v4
	v_dual_mov_b32 v224, 0 :: v_dual_and_b32 v9, 32, v9
	v_add3_u32 v1, v1, s5, v26
	scratch_store_b64 off, v[18:19], off offset:216 ; 8-byte Folded Spill
	v_mad_u64_u32 v[17:18], null, v17, s33, v[21:22]
	v_dual_mov_b32 v189, 0 :: v_dual_add_nc_u32 v0, 1, v0
	scratch_store_b64 off, v[14:15], off offset:240 ; 8-byte Folded Spill
	v_mad_u64_u32 v[13:14], null, v13, s33, v[21:22]
	v_add3_u32 v9, 0, v10, v9
	v_dual_mov_b32 v219, 0 :: v_dual_add_nc_u32 v10, 8, v12
	v_dual_mov_b32 v217, 0 :: v_dual_add_nc_u32 v16, 32, v12
	v_subrev_nc_u32_e32 v1, s4, v1
	scratch_store_b64 off, v[17:18], off offset:224 ; 8-byte Folded Spill
	v_mov_b32_e32 v80, 0
	v_mad_u64_u32 v[16:17], null, v16, s33, v[21:22]
	v_add_nc_u32_e32 v1, 1, v1
	scratch_store_b64 off, v[13:14], off offset:248 ; 8-byte Folded Spill
	v_mad_u64_u32 v[13:14], null, v10, s33, v[21:22]
	v_mul_lo_u32 v10, s78, v98
	v_dual_mov_b32 v228, 0 :: v_dual_lshlrev_b32 v11, 1, v107
	v_mul_lo_u32 v3, s34, v3
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[16:17], off offset:232
	scratch_store_b32 off, v0, off offset:272
	v_dual_mov_b32 v72, 0 :: v_dual_and_b32 v5, 24, v11
	v_dual_mov_b32 v79, 0 :: v_dual_lshlrev_b32 v0, 1, v10
	scratch_store_b64 off, v[13:14], off offset:256 ; 8-byte Folded Spill
	v_mov_b32_e32 v13, v21
	v_mul_lo_u32 v10, s78, v97
	v_dual_mov_b32 v192, 0 :: v_dual_lshlrev_b32 v49, 1, v3
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v3, 53, v2
	v_lshl_or_b32 v8, v108, 5, v5
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v6, off offset:200
	scratch_store_b32 off, v11, off offset:196
	scratch_store_b64 off, v[13:14], off offset:188
	v_mad_u64_u32 v[12:13], null, v12, s33, v[21:22]
	v_mul_lo_u32 v3, s78, v3
	v_dual_mov_b32 v123, 0 :: v_dual_lshlrev_b32 v10, 1, v10
	v_mov_b32_e32 v101, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v122, 0
	s_clause 0x3                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[12:13], off offset:264
	scratch_store_b32 off, v107, off offset:420
	scratch_store_b32 off, v10, off offset:284
	scratch_store_b32 off, v90, off offset:476
	v_mul_lo_u32 v10, s78, v91
	v_add3_u32 v3, v3, s5, v26
	v_add_nc_u32_e32 v12, 49, v2
	v_mul_lo_u32 v13, s78, v92
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v136, 0
	v_lshlrev_b32_e32 v10, 1, v10
	scratch_store_b32 off, v1, off offset:280 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v1, s4, v3
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v14, 33, v2
	v_mov_b32_e32 v139, 0
	scratch_store_b32 off, v10, off offset:300 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 1, v1
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s78, v12
	v_add_nc_u32_e32 v12, 45, v2
	v_mul_lo_u32 v10, s78, v89
	scratch_store_b32 off, v1, off offset:288 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v1, 1, v13
	v_add_nc_u32_e32 v13, 37, v2
	v_mul_lo_u32 v3, s78, v12
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v12, 41, v2
	v_add3_u32 v0, v0, s5, v26
	v_dual_mov_b32 v103, 0 :: v_dual_lshlrev_b32 v10, 1, v10
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v155, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_subrev_nc_u32_e32 v0, s4, v0
	v_add3_u32 v3, v3, s5, v26
	v_mov_b32_e32 v150, 0
	v_mov_b32_e32 v126, 0
	v_mov_b32_e32 v102, 0
	v_add_nc_u32_e32 v0, 1, v0
	scratch_store_b32 off, v1, off offset:292 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s78, v12
	v_mul_lo_u32 v12, s78, v90
	v_mov_b32_e32 v104, 0
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s4, v3
	v_mul_lo_u32 v3, s78, v13
	v_mul_lo_u32 v13, s78, v14
	v_mul_lo_u32 v14, s78, v84
	v_add3_u32 v1, v1, s5, v26
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v0, 1, v0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v179, 0
	v_add3_u32 v3, v3, s5, v26
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v151, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_subrev_nc_u32_e32 v3, s4, v3
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v15, 13, v2
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v180, 0
	v_add_nc_u32_e32 v3, 1, v3
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:304
	scratch_store_b32 off, v108, off offset:424
	scratch_store_b32 off, v91, off offset:480
	v_lshlrev_b32_e32 v0, 1, v12
	v_add3_u32 v12, v13, s5, v26
	scratch_store_b32 off, v3, off offset:320 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v3, 1, v14
	v_add_nc_u32_e32 v13, 25, v2
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v0, off offset:308
	scratch_store_b32 off, v111, off offset:428
	scratch_store_b32 off, v92, off offset:484
	scratch_store_b32 off, v3, off offset:324
	v_subrev_nc_u32_e32 v12, s4, v12
	v_subrev_nc_u32_e32 v0, s4, v1
	v_add_nc_u32_e32 v1, 29, v2
	v_mul_lo_u32 v14, s78, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v186, 0 :: v_dual_add_nc_u32 v3, 1, v12
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:328
	scratch_store_b32 off, v83, off offset:464
	v_mul_lo_u32 v3, s78, v83
	v_mul_lo_u32 v1, s78, v1
	v_add_nc_u32_e32 v0, 1, v0
	v_dual_mov_b32 v173, 0 :: v_dual_add_nc_u32 v12, 17, v2
	v_mov_b32_e32 v185, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v176, 0
	v_lshlrev_b32_e32 v3, 1, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:312
	scratch_store_b32 off, v120, off offset:432
	v_mul_lo_u32 v0, s78, v13
	v_add3_u32 v1, v1, s5, v26
	v_mul_lo_u32 v13, s78, v82
	v_mul_lo_u32 v12, s78, v12
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v181, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v1, s4, v1
	v_mov_b32_e32 v182, 0
	v_add3_u32 v0, v0, s5, v26
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v156, 0
	v_add_nc_u32_e32 v1, 1, v1
	scratch_store_b32 off, v10, off offset:316 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s4, v0
	v_add_nc_u32_e32 v10, 21, v2
	v_xor_b32_e32 v5, 0x110, v6
	v_mov_b32_e32 v169, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v167, 0 :: v_dual_add_nc_u32 v0, 1, v0
	scratch_store_b32 off, v1, off offset:336 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v1, 1, v13
	scratch_store_b32 off, v3, off offset:332 ; 4-byte Folded Spill
	v_add3_u32 v3, v12, s5, v26
	v_mul_lo_u32 v10, s78, v10
	v_mul_lo_u32 v12, s78, v77
	v_add_nc_u32_e32 v13, 5, v2
	v_xor_b32_e32 v6, 8, v8
	v_subrev_nc_u32_e32 v3, s4, v3
	v_mov_b32_e32 v165, 0
	v_xor_b32_e32 v7, 16, v8
	v_mov_b32_e32 v171, 0
	scratch_store_b32 off, v8, off offset:204 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 1, v3
	scratch_store_b32 off, v1, off offset:340 ; 4-byte Folded Spill
	v_add3_u32 v1, v10, s5, v26
	v_lshlrev_b32_e32 v10, 1, v14
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s78, v15
	v_mul_lo_u32 v14, s78, v76
	v_subrev_nc_u32_e32 v1, s4, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:360
	scratch_store_b32 off, v97, off offset:488
	v_xor_b32_e32 v8, 24, v8
	v_mov_b32_e32 v163, 0
	v_add_nc_u32_e32 v1, 1, v1
	v_add3_u32 v0, v0, s5, v26
	scratch_store_b32 off, v10, off offset:348 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v10, 9, v2
	v_mul_lo_u32 v2, s78, v2
	v_dual_mov_b32 v222, 0 :: v_dual_and_b32 v11, 28, v11
	v_subrev_nc_u32_e32 v0, s4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v10, s78, v10
	v_dual_mov_b32 v225, 0 :: v_dual_lshlrev_b32 v4, 1, v4
	v_dual_mov_b32 v161, 0 :: v_dual_add_nc_u32 v0, 1, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:368
	scratch_store_b32 off, v75, off offset:444
	v_mul_lo_u32 v0, s78, v75
	v_add3_u32 v3, v10, s5, v26
	v_lshlrev_b32_e32 v10, 1, v14
	scratch_store_b32 off, v1, off offset:352 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v1, 1, v12
	v_mul_lo_u32 v12, s78, v120
	v_subrev_nc_u32_e32 v3, s4, v3
	scratch_store_b32 off, v10, off offset:364 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v0, 1, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:356
	scratch_store_b32 off, v98, off offset:492
	v_mul_lo_u32 v1, s78, v13
	v_mul_lo_u32 v10, s78, v74
	v_mul_lo_u32 v13, s78, v112
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v236, 0, v4
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v119, 0
	v_add3_u32 v1, v1, s5, v26
	s_add_i32 s5, s5, s78
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v117, 0
	v_add3_u32 v2, s5, v2, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_subrev_nc_u32_e32 v1, s4, v1
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v143, 0
	v_add_nc_u32_e32 v1, 1, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:372
	scratch_store_b32 off, v213, off offset:436
	v_subrev_nc_u32_e32 v0, s4, v2
	v_add_nc_u32_e32 v2, 1, v3
	scratch_store_b32 off, v1, off offset:384 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v1, 1, v12
	v_dual_mov_b32 v157, 0 :: v_dual_add_nc_u32 v0, 1, v0
	scratch_store_b32 off, v2, off offset:376 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v2, 1, v10
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v141, 0
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v0, 1, v13
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v2, off offset:380
	scratch_store_b32 off, v74, off offset:440
	scratch_store_b32 off, v1, off offset:388
	scratch_store_b32 off, v76, off offset:448
	scratch_store_b32 off, v0, off offset:396
	v_add_nc_u32_e32 v0, 0, v5
	scratch_store_b32 off, v77, off offset:452 ; 4-byte Folded Spill
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v109, 0
	v_mov_b32_e32 v159, 0
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v6
	scratch_store_b32 off, v81, off offset:456 ; 4-byte Folded Spill
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v133, 0
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v7
	scratch_store_b32 off, v82, off offset:460 ; 4-byte Folded Spill
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v93, 0
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v8
	scratch_store_b32 off, v84, off offset:468 ; 4-byte Folded Spill
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v87, 0
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, v9, v11
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v105, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v128, 0
	v_mov_b32_e32 v130, 0
	v_mov_b32_e32 v114, 0
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v106, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s35, vcc_lo, s12
	s_and_b32 s52, s0, s13
	s_and_b32 s54, s3, s15
	s_and_b32 s58, s7, s19
	s_and_b32 vcc_lo, s8, s20
	s_and_b32 s0, s9, s21
	s_and_b32 s3, s11, s23
	s_and_b32 s45, s37, 0xffff
	s_mov_b32 s44, s36
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	s_and_b32 s37, s39, 0xffff
	s_mov_b32 s36, s38
	s_add_u32 s23, s22, s78
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s49, s43, 0xffff
	s_mov_b32 s48, s42
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s59, s78, 2
	s_lshl_b32 s60, s78, 6
	s_mov_b32 s25, s24
	s_mov_b32 s26, s24
	s_mov_b32 s27, s24
	s_mov_b32 s28, s24
	s_mov_b32 s29, s24
	s_mov_b32 s30, s24
	s_mov_b32 s31, s24
	s_mov_b32 s61, s24
	s_mov_b32 s62, s24
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v89, off offset:472
	scratch_store_b32 off, v0, off offset:416
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x2                            ; 20-byte Folded Reload
	scratch_load_b64 v[0:1], off, off offset:188
	scratch_load_b64 v[17:18], off, off offset:264
	scratch_load_b32 v1, off, off offset:388
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v231, off offset:132
	scratch_store_b32 off, v24, off offset:128
	scratch_store_b32 off, v23, off offset:124
	scratch_store_b32 off, v229, off offset:120
	scratch_store_b32 off, v70, off offset:116
	scratch_store_b32 off, v218, off offset:112
	scratch_store_b32 off, v226, off offset:108
	scratch_store_b32 off, v71, off offset:104
	scratch_store_b32 off, v72, off offset:100
	scratch_store_b32 off, v219, off offset:96
	scratch_store_b32 off, v216, off offset:92
	scratch_store_b32 off, v214, off offset:88
	scratch_store_b32 off, v69, off offset:84
	scratch_store_b32 off, v88, off offset:80
	scratch_store_b32 off, v143, off offset:76
	scratch_store_b32 off, v166, off offset:72
	scratch_store_b32 off, v78, off offset:68
	scratch_store_b32 off, v87, off offset:64
	scratch_store_b32 off, v142, off offset:60
	scratch_store_b32 off, v133, off offset:56
	scratch_store_b32 off, v169, off offset:52
	scratch_store_b32 off, v156, off offset:48
	scratch_store_b32 off, v150, off offset:44
	scratch_store_b32 off, v141, off offset:40
	scratch_store_b32 off, v73, off offset:36
	scratch_store_b32 off, v127, off offset:32
	scratch_store_b32 off, v140, off offset:28
	scratch_store_b32 off, v86, off offset:24
	scratch_store_b32 off, v144, off offset:20
	scratch_store_b32 off, v85, off offset:16
	scratch_store_b32 off, v135, off offset:12
	scratch_store_b32 off, v80, off offset:8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v79, off offset:4
	scratch_store_b32 off, v134, off
	v_mov_b32_e32 v203, v220
	v_mov_b32_e32 v207, v225
	v_mov_b32_e32 v225, v221
	v_mov_b32_e32 v221, v191
	v_mov_b32_e32 v191, v174
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	s_mov_b32 s38, s46
	s_mov_b32 s39, s47
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s42, s46
	s_mov_b32 s43, s47
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s50, s46
	s_mov_b32 s51, s47
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s34, s34, -1
	v_dual_mov_b32 v133, v194 :: v_dual_mov_b32 v194, v177
	v_mov_b32_e32 v177, v163
	v_dual_mov_b32 v163, v148 :: v_dual_mov_b32 v148, v137
	v_dual_mov_b32 v137, v93 :: v_dual_mov_b32 v202, v183
	v_mov_b32_e32 v220, v190
	v_dual_mov_b32 v190, v172 :: v_dual_mov_b32 v183, v159
	v_mov_b32_e32 v172, v126
	v_mov_b32_e32 v126, v113
	v_dual_mov_b32 v208, v186 :: v_dual_mov_b32 v199, v185
	v_mov_b32_e32 v185, v165
	v_mov_b32_e32 v165, v160
	v_dual_mov_b32 v159, v139 :: v_dual_mov_b32 v186, v149
	v_dual_mov_b32 v149, v132 :: v_dual_mov_b32 v132, v131
	v_mov_b32_e32 v139, v96
	v_mov_b32_e32 v113, v99
	scratch_load_b32 v16, off, off offset:276 ; 4-byte Folded Reload
	v_mov_b32_e32 v166, v227
	v_mov_b32_e32 v174, v152
	v_mov_b32_e32 v152, v102
	v_mov_b32_e32 v206, v196
	v_mov_b32_e32 v196, v154
	v_mov_b32_e32 v154, v145
	v_mov_b32_e32 v204, v222
	v_mov_b32_e32 v222, v192
	v_mov_b32_e32 v192, v176
	v_mov_b32_e32 v176, v162
	v_mov_b32_e32 v162, v147
	v_mov_b32_e32 v205, v223
	v_mov_b32_e32 v223, v195
	v_dual_mov_b32 v195, v178 :: v_dual_mov_b32 v178, v164
	v_dual_mov_b32 v164, v157 :: v_dual_mov_b32 v157, v136
	v_dual_mov_b32 v136, v124 :: v_dual_mov_b32 v145, v101
	v_mov_b32_e32 v147, v104
	v_mov_b32_e32 v209, v187
	v_dual_mov_b32 v124, v123 :: v_dual_mov_b32 v123, v122
	v_dual_mov_b32 v122, v121 :: v_dual_mov_b32 v121, v116
	v_dual_mov_b32 v116, v115 :: v_dual_mov_b32 v115, v106
	v_mov_b32_e32 v198, v161
	v_mov_b32_e32 v120, v112
	v_dual_mov_b32 v210, v188 :: v_dual_mov_b32 v211, v189
	v_dual_mov_b32 v189, v173 :: v_dual_mov_b32 v188, v179
	v_dual_mov_b32 v160, v109 :: v_dual_mov_b32 v187, v171
	v_mov_b32_e32 v171, v125
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v125, v105 :: v_dual_add_nc_u32 v0, s62, v0
	s_waitcnt vmcnt(1)
	v_add3_u32 v59, v1, s61, v197
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_gt_i32_e64 s20, s33, v0
	v_add_nc_u32_e32 v0, s62, v112
	v_add_nc_u32_e32 v2, s22, v59
	v_add_nc_u32_e32 v59, s23, v59
	s_and_b32 s21, s35, s20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 2, v0
	v_cmp_gt_i32_e64 s19, s33, v0
	v_cmp_gt_i32_e64 s16, s33, v1
	scratch_load_b32 v1, off, off offset:380 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v2, 0x80000000, v2, s16
	v_cndmask_b32_e64 v59, 0x80000000, v59, s16
	s_waitcnt vmcnt(0)
	v_add3_u32 v58, v1, s61, v197
	v_add_nc_u32_e32 v1, 4, v0
	v_mov_b32_e32 v127, v49
	v_mov_b32_e32 v49, v182
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v182, v158 :: v_dual_add_nc_u32 v3, s22, v58
	v_mov_b32_e32 v158, v138
	v_cmp_gt_i32_e64 s17, s33, v1
	scratch_load_b32 v1, off, off offset:372 ; 4-byte Folded Reload
	v_mov_b32_e32 v138, v94
	v_add_nc_u32_e32 v58, s23, v58
	v_cndmask_b32_e64 v3, 0x80000000, v3, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v58, 0x80000000, v58, s17
	s_waitcnt vmcnt(0)
	v_add3_u32 v57, v1, s61, v197
	v_add_nc_u32_e32 v1, 6, v0
	v_add_nc_u32_e32 v4, s22, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_gt_i32_e64 s18, s33, v1
	scratch_load_b32 v1, off, off offset:364 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v57, s23, v57
	v_cndmask_b32_e64 v4, 0x80000000, v4, s18
	v_cndmask_b32_e64 v57, 0x80000000, v57, s18
	s_waitcnt vmcnt(0)
	v_add3_u32 v56, v1, s61, v197
	v_add_nc_u32_e32 v1, 8, v0
	v_dual_mov_b32 v131, v130 :: v_dual_mov_b32 v130, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v5, s22, v56
	v_cmp_gt_i32_e64 s15, s33, v1
	scratch_load_b32 v1, off, off offset:356 ; 4-byte Folded Reload
	v_dual_mov_b32 v179, v153 :: v_dual_add_nc_u32 v56, s23, v56
	v_cndmask_b32_e64 v5, 0x80000000, v5, s15
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v56, 0x80000000, v56, s15
	s_waitcnt vmcnt(0)
	v_add3_u32 v52, v1, s61, v197
	v_add_nc_u32_e32 v1, 10, v0
	v_dual_mov_b32 v129, v128 :: v_dual_mov_b32 v128, v114
	v_mov_b32_e32 v114, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v6, s22, v52
	v_cmp_gt_i32_e64 s12, s33, v1
	scratch_load_b32 v1, off, off offset:348 ; 4-byte Folded Reload
	v_dual_mov_b32 v161, v118 :: v_dual_add_nc_u32 v52, s23, v52
	v_mov_b32_e32 v173, v151
	v_cndmask_b32_e64 v6, 0x80000000, v6, s12
	v_mov_b32_e32 v151, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v52, 0x80000000, v52, s12
	s_waitcnt vmcnt(0)
	v_add3_u32 v54, v1, s61, v197
	v_add_nc_u32_e32 v1, 12, v0
	v_add_nc_u32_e32 v7, s22, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_gt_i32_e64 s13, s33, v1
	scratch_load_b32 v1, off, off offset:340 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v54, s23, v54
	v_cndmask_b32_e64 v7, 0x80000000, v7, s13
	v_cndmask_b32_e64 v54, 0x80000000, v54, s13
	s_waitcnt vmcnt(0)
	v_add3_u32 v255, v1, s61, v197
	v_add_nc_u32_e32 v1, 14, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v8, s22, v255
	v_cmp_gt_i32_e64 s14, s33, v1
	scratch_load_b32 v1, off, off offset:332 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v8, 0x80000000, v8, s14
	s_waitcnt vmcnt(0)
	v_add3_u32 v254, v1, s61, v197
	v_add_nc_u32_e32 v1, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v9, s22, v254
	v_cmp_gt_i32_e64 s11, s33, v1
	scratch_load_b32 v1, off, off offset:324 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v9, 0x80000000, v9, s11
	s_waitcnt vmcnt(0)
	v_add3_u32 v253, v1, s61, v197
	v_add_nc_u32_e32 v1, 18, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v10, s22, v253
	v_cmp_gt_i32_e64 s8, s33, v1
	scratch_load_b32 v1, off, off offset:316 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v10, 0x80000000, v10, s8
	s_waitcnt vmcnt(0)
	v_add3_u32 v251, v1, s61, v197
	v_add_nc_u32_e32 v1, 20, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v11, s22, v251
	v_cmp_gt_i32_e64 s9, s33, v1
	scratch_load_b32 v1, off, off offset:308 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v11, 0x80000000, v11, s9
	s_waitcnt vmcnt(0)
	v_add3_u32 v250, v1, s61, v197
	v_add_nc_u32_e32 v1, 22, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v12, s22, v250
	v_cmp_gt_i32_e64 s10, s33, v1
	scratch_load_b32 v1, off, off offset:300 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v12, 0x80000000, v12, s10
	s_waitcnt vmcnt(0)
	v_add3_u32 v249, v1, s61, v197
	v_add_nc_u32_e32 v1, 24, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v13, s22, v249
	v_cmp_gt_i32_e64 s7, s33, v1
	scratch_load_b32 v1, off, off offset:292 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v13, 0x80000000, v13, s7
	s_waitcnt vmcnt(0)
	v_add3_u32 v248, v1, s61, v197
	v_add_nc_u32_e32 v1, 26, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v14, s22, v248
	v_cmp_gt_i32_e64 s4, s33, v1
	scratch_load_b32 v1, off, off offset:284 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v14, 0x80000000, v14, s4
	s_waitcnt vmcnt(0)
	v_add3_u32 v246, v1, s61, v197
	v_add_nc_u32_e32 v1, 28, v0
	v_add_nc_u32_e32 v0, 30, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v15, s22, v246
	v_cmp_gt_i32_e64 s5, s33, v1
	scratch_load_b32 v1, off, off offset:396 ; 4-byte Folded Reload
	v_cmp_gt_i32_e64 s6, s33, v0
	v_cndmask_b32_e64 v15, 0x80000000, v15, s5
	s_waitcnt vmcnt(0)
	v_add3_u32 v63, v1, s61, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v1, s22, v63
	v_add_nc_u32_e32 v63, s23, v63
	v_cndmask_b32_e64 v0, 0x80000000, v1, s19
	v_add_nc_u32_e32 v1, s62, v17
	s_clause 0x6                            ; 56-byte Folded Reload
	scratch_load_b64 v[17:18], off, off offset:256
	scratch_load_b64 v[18:19], off, off offset:248
	scratch_load_b64 v[19:20], off, off offset:240
	scratch_load_b64 v[20:21], off, off offset:232
	scratch_load_b64 v[21:22], off, off offset:224
	scratch_load_b64 v[22:23], off, off offset:216
	scratch_load_b64 v[23:24], off, off offset:208
	v_cndmask_b32_e64 v1, 0x80000000, v1, s21
	s_and_b32 s21, s52, s20
	v_add3_u32 v247, v16, s61, v197
	v_cndmask_b32_e64 v63, 0x80000000, v63, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v16, s22, v247
	v_cndmask_b32_e64 v16, 0x80000000, v16, s6
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v17, s62, v17
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v18, s62, v18
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v19, s62, v19
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v20, s62, v20
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v21, s62, v21
	v_cndmask_b32_e64 v17, 0x80000000, v17, s21
	s_and_b32 s21, s53, s20
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v22, s62, v22
	v_cndmask_b32_e64 v18, 0x80000000, v18, s21
	s_and_b32 s21, s54, s20
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s62, v23
	v_cndmask_b32_e64 v19, 0x80000000, v19, s21
	s_and_b32 s21, s55, s20
	s_add_i32 s62, s62, 32
	v_cndmask_b32_e64 v20, 0x80000000, v20, s21
	s_and_b32 s21, s56, s20
	s_delay_alu instid0(SALU_CYCLE_1)
	v_cndmask_b32_e64 v21, 0x80000000, v21, s21
	s_and_b32 s21, s57, s20
	s_and_b32 s20, s58, s20
	v_cndmask_b32_e64 v22, 0x80000000, v22, s21
	v_cndmask_b32_e64 v23, 0x80000000, v23, s20
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v1, v1, s[44:47], 0 offen
	buffer_load_u8 v18, v18, s[44:47], 0 offen
	buffer_load_u8 v20, v20, s[44:47], 0 offen
	buffer_load_u8 v22, v22, s[44:47], 0 offen
	buffer_load_u8 v23, v23, s[44:47], 0 offen
	buffer_load_u8 v21, v21, s[44:47], 0 offen
	buffer_load_u8 v19, v19, s[44:47], 0 offen
	buffer_load_u8 v17, v17, s[44:47], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0xf
	buffer_load_u16 v0, v0, s[36:39], 0 offen
	buffer_load_u16 v2, v2, s[36:39], 0 offen
	buffer_load_u16 v3, v3, s[36:39], 0 offen
	buffer_load_u16 v4, v4, s[36:39], 0 offen
	buffer_load_u16 v5, v5, s[36:39], 0 offen
	buffer_load_u16 v6, v6, s[36:39], 0 offen
	buffer_load_u16 v7, v7, s[36:39], 0 offen
	buffer_load_u16 v8, v8, s[36:39], 0 offen
	buffer_load_u16 v41, v9, s[36:39], 0 offen
	buffer_load_u16 v42, v10, s[36:39], 0 offen
	buffer_load_u16 v43, v11, s[36:39], 0 offen
	buffer_load_u16 v44, v12, s[36:39], 0 offen
	buffer_load_u16 v45, v13, s[36:39], 0 offen
	buffer_load_u16 v46, v14, s[36:39], 0 offen
	buffer_load_u16 v47, v15, s[36:39], 0 offen
	buffer_load_u16 v48, v16, s[36:39], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v9, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, 0, v9
	ds_store_b8 v9, v1
	ds_store_b8 v9, v18 offset:512
	ds_store_b8 v9, v20 offset:1024
	ds_store_b8 v9, v22 offset:1536
	scratch_load_b32 v1, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v17
	ds_store_b8 v1, v19 offset:512
	ds_store_b8 v1, v21 offset:1024
	ds_store_b8 v1, v23 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, 0, v1
	ds_load_2addr_stride64_b64 v[25:28], v1 offset1:1
	ds_load_2addr_stride64_b64 v[9:12], v1 offset0:2 offset1:3
	scratch_load_b32 v1, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[29:32], v1 offset1:1
	ds_load_2addr_stride64_b64 v[13:16], v1 offset0:2 offset1:3
	scratch_load_b32 v1, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[33:36], v1 offset1:1
	ds_load_2addr_stride64_b64 v[17:20], v1 offset0:2 offset1:3
	scratch_load_b32 v1, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[37:40], v1 offset1:1
	ds_load_2addr_stride64_b64 v[21:24], v1 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v252, 0, v1
	ds_store_b16 v252, v0
	ds_store_b16 v252, v2 offset:512
	ds_store_b16 v252, v3 offset:1024
	ds_store_b16 v252, v4 offset:1536
	ds_store_b16 v252, v5 offset:2048
	ds_store_b16 v252, v6 offset:2560
	ds_store_b16 v252, v7 offset:3072
	ds_store_b16 v252, v8 offset:3584
	ds_store_b16 v252, v41 offset:4096
	ds_store_b16 v252, v42 offset:4608
	ds_store_b16 v252, v43 offset:5120
	ds_store_b16 v252, v44 offset:5632
	ds_store_b16 v252, v45 offset:6144
	ds_store_b16 v252, v46 offset:6656
	ds_store_b16 v252, v47 offset:7168
	ds_store_b16 v252, v48 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v201 offset:1280
	ds_load_u8 v1, v201 offset:1024
	ds_load_u8 v50, v201 offset:1920
	ds_load_u8 v51, v201 offset:1664
	ds_load_u8 v53, v201 offset:1408
	ds_load_u8 v55, v201 offset:1152
	ds_load_u8 v93, v201 offset:8064
	ds_load_u8 v96, v201 offset:7296
	ds_load_u8 v99, v201 offset:6528
	ds_load_u8 v100, v201 offset:6272
	ds_load_u8 v94, v201 offset:7808
	ds_load_u8 v95, v201 offset:7552
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v201 offset:1792
	ds_load_u8 v2, v201 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v201 offset:256
	ds_load_u8 v3, v201
	ds_load_u8 v60, v201 offset:896
	ds_load_u8 v61, v201 offset:640
	ds_load_u8 v62, v201 offset:384
	ds_load_u8 v64, v201 offset:128
	v_lshl_or_b32 v80, v1, 16, v0
	ds_load_u8 v0, v201 offset:3328
	ds_load_u8 v1, v201 offset:3072
	ds_load_u8 v65, v201 offset:3968
	ds_load_u8 v66, v201 offset:3712
	ds_load_u8 v67, v201 offset:3456
	ds_load_u8 v68, v201 offset:3200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v201 offset:768
	ds_load_u8 v4, v201 offset:512
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v3, 16, v2
	ds_load_u8 v1, v201 offset:3840
	ds_load_u8 v2, v201 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v201 offset:2304
	ds_load_u8 v3, v201 offset:2048
	ds_load_u8 v69, v201 offset:2944
	ds_load_u8 v70, v201 offset:2688
	ds_load_u8 v71, v201 offset:2432
	ds_load_u8 v72, v201 offset:2176
	v_lshl_or_b32 v82, v1, 16, v0
	ds_load_u8 v0, v201 offset:5376
	ds_load_u8 v1, v201 offset:5120
	ds_load_u8 v73, v201 offset:6016
	ds_load_u8 v74, v201 offset:5760
	ds_load_u8 v75, v201 offset:5504
	ds_load_u8 v76, v201 offset:5248
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v201 offset:2816
	ds_load_u8 v4, v201 offset:2560
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v81, v3, 16, v2
	ds_load_u8 v1, v201 offset:5888
	ds_load_u8 v2, v201 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v201 offset:4352
	ds_load_u8 v3, v201 offset:4096
	ds_load_u8 v77, v201 offset:4992
	ds_load_u8 v78, v201 offset:4736
	ds_load_u8 v91, v201 offset:4480
	ds_load_u8 v92, v201 offset:4224
	v_lshl_or_b32 v84, v1, 16, v0
	ds_load_u8 v0, v201 offset:7424
	ds_load_u8 v1, v201 offset:7168
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v201 offset:4864
	ds_load_u8 v4, v201 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v3, 16, v2
	ds_load_u8 v1, v201 offset:7936
	ds_load_u8 v2, v201 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v201 offset:6400
	ds_load_u8 v3, v201 offset:6144
	ds_load_u8 v97, v201 offset:7040
	ds_load_u8 v98, v201 offset:6784
	v_lshl_or_b32 v86, v1, 16, v0
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v201 offset:6912
	ds_load_u8 v4, v201 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v3, 16, v2
	v_dual_mov_b32 v1, s24 :: v_dual_mov_b32 v2, s25
	v_dual_mov_b32 v3, s26 :: v_dual_mov_b32 v4, s27
	v_dual_mov_b32 v5, s28 :: v_dual_mov_b32 v6, s29
	v_dual_mov_b32 v7, s30 :: v_dual_mov_b32 v8, s31
	v_wmma_i32_16x16x16_iu4 v[41:48], v[79:80], v[25:26], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[81:82], v[29:30], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[83:84], v[33:34], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[85:86], v[37:38], v[41:48] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v135, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v140, v44
	v_cvt_f32_i32_e32 v150, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v156, v46
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v43, v55, v53, 0xc0c0004
	v_perm_b32 v44, v51, v50, 0xc0c0004
	v_perm_b32 v45, v64, v62, 0xc0c0004
	v_perm_b32 v46, v61, v60, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v48
	v_mov_b32_e32 v61, v228
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v88, v44, 16, v43
	v_perm_b32 v43, v68, v67, 0xc0c0004
	v_lshl_or_b32 v87, v46, 16, v45
	v_perm_b32 v44, v66, v65, 0xc0c0004
	v_perm_b32 v45, v72, v71, 0xc0c0004
	v_perm_b32 v46, v70, v69, 0xc0c0004
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_mov_b32_e32 v53, v230
	v_lshl_or_b32 v90, v44, 16, v43
	v_perm_b32 v43, v76, v75, 0xc0c0004
	v_lshl_or_b32 v89, v46, 16, v45
	v_perm_b32 v44, v74, v73, 0xc0c0004
	v_perm_b32 v45, v92, v91, 0xc0c0004
	v_perm_b32 v46, v78, v77, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[66:73], v[87:88], v[25:26], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v92, v44, 16, v43
	v_perm_b32 v43, v96, v95, 0xc0c0004
	v_lshl_or_b32 v91, v46, 16, v45
	v_perm_b32 v44, v94, v93, 0xc0c0004
	v_perm_b32 v45, v100, v99, 0xc0c0004
	v_perm_b32 v46, v98, v97, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[66:73], v[89:90], v[29:30], v[66:73] neg_lo:[1,1,0]
	v_mov_b32_e32 v51, v232
	v_lshl_or_b32 v94, v44, 16, v43
	v_wmma_i32_16x16x16_iu4 v[226:233], v[87:88], v[27:28], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v93, v46, 16, v45
	v_wmma_i32_16x16x16_iu4 v[66:73], v[91:92], v[33:34], v[66:73] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v134, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[226:233], v[89:90], v[31:32], v[226:233] neg_lo:[1,1,0]
	v_dual_mov_b32 v65, v215 :: v_dual_mov_b32 v64, v217
	v_wmma_i32_16x16x16_iu4 v[66:73], v[93:94], v[37:38], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[212:219], v[79:80], v[27:28], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[226:233], v[91:92], v[35:36], v[226:233] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v169, v47
	v_cvt_f32_i32_e32 v0, v66
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[212:219], v[81:82], v[31:32], v[212:219] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v239, v41
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[226:233], v[93:94], v[39:40], v[226:233] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v71
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[212:219], v[83:84], v[35:36], v[212:219] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v142, v228
	v_cvt_f32_i32_e32 v143, v229
	v_cvt_f32_i32_e32 v144, v226
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v72
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[212:219], v[85:86], v[39:40], v[212:219] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v73
	v_cvt_f32_i32_e32 v46, v213
	v_cvt_f32_i32_e32 v48, v215
	v_cvt_f32_i32_e32 v60, v216
	v_cvt_f32_i32_e32 v215, v218
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v67
	v_cvt_f32_i32_e32 v45, v212
	v_cvt_f32_i32_e32 v47, v214
	v_cvt_f32_i32_e32 v212, v219
	v_cvt_f32_i32_e32 v217, v217
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v68
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v69
	v_cvt_f32_i32_e32 v69, v227
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v70
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[70:77], v[79:80], v[9:10], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v231
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[70:77], v[81:82], v[13:14], v[70:77] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v232
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[70:77], v[83:84], v[17:18], v[70:77] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v233
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[70:77], v[85:86], v[21:22], v[70:77] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v230
	v_cvt_f32_i32_e32 v238, v70
	v_cvt_f32_i32_e32 v237, v71
	v_cvt_f32_i32_e32 v42, v72
	v_cvt_f32_i32_e32 v43, v73
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:392 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v44, v74
	v_cvt_f32_i32_e32 v232, v75
	v_cvt_f32_i32_e32 v230, v76
	v_cvt_f32_i32_e32 v228, v77
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[70:77], v[87:88], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[70:77], v[89:90], v[13:14], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[70:77], v[91:92], v[17:18], v[70:77] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[70:77], v[93:94], v[21:22], v[70:77] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v67, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v68, v76
	v_cvt_f32_i32_e32 v141, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v218, v71
	v_cvt_f32_i32_e32 v216, v72
	v_cvt_f32_i32_e32 v213, v73
	v_cvt_f32_i32_e32 v66, v74
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[71:78], v[79:80], v[11:12], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v62, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[71:78], v[81:82], v[15:16], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[71:78], v[83:84], v[19:20], v[71:78] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[71:78], v[85:86], v[23:24], v[71:78] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v70, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v50, v73
	v_cvt_f32_i32_e32 v244, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v243, v75
	v_cvt_f32_i32_e32 v242, v76
	v_cvt_f32_i32_e32 v241, v77
	v_cvt_f32_i32_e32 v200, v78
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[72:79], v[87:88], v[11:12], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[72:79], v[89:90], v[15:16], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[72:79], v[91:92], v[19:20], v[72:79] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[72:79], v[93:94], v[23:24], v[72:79] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v227, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v233, v73
	v_cvt_f32_i32_e32 v231, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v229, v75
	v_cvt_f32_i32_e32 v226, v76
	v_cvt_f32_i32_e32 v55, v77
	v_cvt_f32_i32_e32 v219, v78
	v_cvt_f32_i32_e32 v214, v79
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v72, s61, v0
	scratch_load_b32 v0, off, off offset:384 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v72, 0x80000000, v72, s19
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x4
	buffer_load_u8 v72, v72, s[36:39], 0 offen
	buffer_load_u8 v73, v57, s[36:39], 0 offen
	buffer_load_u8 v74, v58, s[36:39], 0 offen
	buffer_load_u8 v58, v59, s[36:39], 0 offen
	buffer_load_u8 v59, v63, s[36:39], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v57.l, 8, v72.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v57.l, v59.l, v57.l
	v_add_nc_u32_e32 v59, s61, v0
	scratch_load_b32 v0, off, off offset:376 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v59, 0x80000000, v59, s16
	buffer_load_u8 v59, v59, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v57.h, 8, v59.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v57.h, v58.l, v57.h
	v_add_nc_u32_e32 v58, s61, v0
	scratch_load_b32 v0, off, off offset:368 ; 4-byte Folded Reload
	v_mov_b32_e32 v153, v110
	v_cndmask_b32_e64 v58, 0x80000000, v58, s17
	buffer_load_u8 v58, v58, s[36:39], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v59, s61, v0
	scratch_load_b32 v0, off, off offset:360 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v59, 0x80000000, v59, s18
	buffer_load_u8 v59, v59, s[36:39], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v58.l, 8, v58.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v58.l, v74.l, v58.l
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v63, s61, v0
	scratch_load_b32 v0, off, off offset:352 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v63, 0x80000000, v63, s15
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v58.h, 8, v59.l
	v_add_nc_u32_e32 v59, s23, v255
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v58.h, v73.l, v58.h
	v_cndmask_b32_e64 v59, 0x80000000, v59, s14
	s_clause 0x4
	buffer_load_u8 v63, v63, s[36:39], 0 offen
	buffer_load_u8 v59, v59, s[36:39], 0 offen
	buffer_load_u8 v72, v54, s[36:39], 0 offen
	buffer_load_u8 v54, v52, s[36:39], 0 offen
	buffer_load_u8 v56, v56, s[36:39], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v52.l, 8, v63.l
	v_add_nc_u32_e32 v63, s23, v251
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b16 v52.l, v56.l, v52.l
	v_add_nc_u32_e32 v56, s61, v0
	scratch_load_b32 v0, off, off offset:344 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v63, 0x80000000, v63, s9
	v_cndmask_b32_e64 v56, 0x80000000, v56, s12
	buffer_load_u8 v56, v56, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v52.h, 8, v56.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v52.h, v54.l, v52.h
	v_add_nc_u32_e32 v54, s61, v0
	scratch_load_b32 v0, off, off offset:336 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v54, 0x80000000, v54, s13
	buffer_load_u8 v54, v54, s[36:39], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v56, s61, v0
	scratch_load_b32 v0, off, off offset:328 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v56, 0x80000000, v56, s14
	buffer_load_u8 v56, v56, s[36:39], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v54.l, 8, v54.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v54.l, v72.l, v54.l
	v_add_nc_u32_e32 v72, s23, v250
	v_cndmask_b32_e64 v72, 0x80000000, v72, s10
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v73, s61, v0
	scratch_load_b32 v0, off, off offset:320 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v73, 0x80000000, v73, s11
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v54.h, 8, v56.l
	v_add_nc_u32_e32 v56, s23, v254
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v54.h, v59.l, v54.h
	v_add_nc_u32_e32 v59, s23, v253
	v_cndmask_b32_e64 v56, 0x80000000, v56, s11
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v59, 0x80000000, v59, s8
	s_clause 0x4
	buffer_load_u8 v73, v73, s[36:39], 0 offen
	buffer_load_u8 v72, v72, s[36:39], 0 offen
	buffer_load_u8 v63, v63, s[36:39], 0 offen
	buffer_load_u8 v59, v59, s[36:39], 0 offen
	buffer_load_u8 v74, v56, s[36:39], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v56.l, 8, v73.l
	v_add_nc_u32_e32 v73, s61, v0
	scratch_load_b32 v0, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_or_b16 v56.l, v74.l, v56.l
	v_cndmask_b32_e64 v73, 0x80000000, v73, s8
	v_add_nc_u32_e32 v74, s23, v247
	buffer_load_u8 v73, v73, s[36:39], 0 offen
	v_cndmask_b32_e64 v74, 0x80000000, v74, s6
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v56.h, 8, v73.l
	v_add_nc_u32_e32 v73, s23, v246
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b16 v56.h, v59.l, v56.h
	v_add_nc_u32_e32 v59, s61, v0
	scratch_load_b32 v0, off, off offset:304 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v73, 0x80000000, v73, s5
	v_cndmask_b32_e64 v59, 0x80000000, v59, s9
	buffer_load_u8 v59, v59, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v59.l, 8, v59.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v59.l, v63.l, v59.l
	v_add_nc_u32_e32 v63, s61, v0
	scratch_load_b32 v0, off, off offset:296 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v63, 0x80000000, v63, s10
	buffer_load_u8 v63, v63, s[36:39], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v75, s61, v0
	scratch_load_b32 v0, off, off offset:288 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v75, 0x80000000, v75, s7
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v59.h, 8, v63.l
	v_add_nc_u32_e32 v63, s23, v249
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v59.h, v72.l, v59.h
	v_add_nc_u32_e32 v72, s23, v248
	v_cndmask_b32_e64 v63, 0x80000000, v63, s7
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v72, 0x80000000, v72, s4
	s_clause 0x4
	buffer_load_u8 v75, v75, s[36:39], 0 offen
	buffer_load_u8 v74, v74, s[36:39], 0 offen
	buffer_load_u8 v73, v73, s[36:39], 0 offen
	buffer_load_u8 v72, v72, s[36:39], 0 offen
	buffer_load_u8 v76, v63, s[36:39], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v63.l, 8, v75.l
	v_add_nc_u32_e32 v75, s61, v0
	scratch_load_b32 v0, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_or_b16 v63.l, v76.l, v63.l
	v_cndmask_b32_e64 v75, 0x80000000, v75, s4
	buffer_load_u8 v75, v75, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v63.h, 8, v75.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v63.h, v72.l, v63.h
	v_add_nc_u32_e32 v72, s61, v0
	scratch_load_b32 v0, off, off offset:272 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v72, 0x80000000, v72, s5
	buffer_load_u8 v72, v72, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v72.l, 8, v72.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_or_b16 v72.l, v73.l, v72.l
	v_add_nc_u32_e32 v73, s61, v0
	v_dual_mov_b32 v0, v181 :: v_dual_mov_b32 v181, v155
	v_dual_mov_b32 v155, v146 :: v_dual_mov_b32 v146, v103
	v_cndmask_b32_e64 v73, 0x80000000, v73, s6
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s61, s61, s60
	s_cmp_lg_u32 s34, 0
	.loc	1 1185 39                       ; ragged.py:1185:39
	buffer_load_u8 v73, v73, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v72.h, 8, v73.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v72.h, v74.l, v72.h
	ds_store_b16 v252, v57
	ds_store_b16_d16_hi v252, v57 offset:512
	ds_store_b16 v252, v58 offset:1024
	ds_store_b16_d16_hi v252, v58 offset:1536
	ds_store_b16 v252, v52 offset:2048
	ds_store_b16_d16_hi v252, v52 offset:2560
	ds_store_b16 v252, v54 offset:3072
	ds_store_b16_d16_hi v252, v54 offset:3584
	ds_store_b16 v252, v56 offset:4096
	ds_store_b16_d16_hi v252, v56 offset:4608
	ds_store_b16 v252, v59 offset:5120
	ds_store_b16_d16_hi v252, v59 offset:5632
	ds_store_b16 v252, v63 offset:6144
	ds_store_b16_d16_hi v252, v63 offset:6656
	ds_store_b16 v252, v72 offset:7168
	ds_store_b16_d16_hi v252, v72 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v52, v201 offset:1280
	ds_load_u8 v54, v201 offset:1024
	ds_load_u8 v80, v201 offset:1920
	ds_load_u8 v81, v201 offset:1664
	ds_load_u8 v82, v201 offset:1408
	ds_load_u8 v83, v201 offset:1152
	ds_load_u8 v105, v201 offset:5760
	ds_load_u8 v117, v201 offset:6528
	ds_load_u8 v118, v201 offset:6272
	ds_load_u8 v106, v201 offset:5504
	ds_load_u8 v107, v201 offset:5248
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v52, v54, v52, 0xc0c0004
	ds_load_u8 v54, v201 offset:1792
	ds_load_u8 v56, v201 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v56, v54, 0xc0c0004
	ds_load_u8 v56, v201 offset:256
	ds_load_u8 v57, v201
	ds_load_u8 v84, v201 offset:896
	ds_load_u8 v85, v201 offset:640
	ds_load_u8 v86, v201 offset:384
	ds_load_u8 v87, v201 offset:128
	v_lshl_or_b32 v102, v54, 16, v52
	ds_load_u8 v52, v201 offset:3328
	ds_load_u8 v54, v201 offset:3072
	ds_load_u8 v88, v201 offset:3968
	ds_load_u8 v89, v201 offset:3712
	ds_load_u8 v90, v201 offset:3456
	ds_load_u8 v91, v201 offset:3200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	ds_load_u8 v57, v201 offset:768
	ds_load_u8 v58, v201 offset:512
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v52, v54, v52, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v101, v57, 16, v56
	ds_load_u8 v54, v201 offset:3840
	ds_load_u8 v56, v201 offset:3584
	v_wmma_i32_16x16x16_iu4 v[72:79], v[101:102], v[25:26], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v56, v54, 0xc0c0004
	ds_load_u8 v56, v201 offset:2304
	ds_load_u8 v57, v201 offset:2048
	ds_load_u8 v92, v201 offset:2944
	ds_load_u8 v93, v201 offset:2688
	ds_load_u8 v94, v201 offset:2432
	ds_load_u8 v95, v201 offset:2176
	v_lshl_or_b32 v104, v54, 16, v52
	ds_load_u8 v52, v201 offset:5376
	ds_load_u8 v54, v201 offset:5120
	ds_load_u8 v96, v201 offset:6016
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	ds_load_u8 v57, v201 offset:2816
	ds_load_u8 v58, v201 offset:2560
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v52, v54, v52, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v57, 16, v56
	ds_load_u8 v54, v201 offset:5888
	ds_load_u8 v56, v201 offset:5632
	v_wmma_i32_16x16x16_iu4 v[72:79], v[103:104], v[29:30], v[72:79] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v56, v54, 0xc0c0004
	ds_load_u8 v56, v201 offset:4352
	ds_load_u8 v57, v201 offset:4096
	ds_load_u8 v108, v201 offset:4992
	ds_load_u8 v247, v201 offset:4736
	ds_load_u8 v248, v201 offset:4480
	ds_load_u8 v249, v201 offset:4224
	v_lshl_or_b32 v98, v54, 16, v52
	ds_load_u8 v52, v201 offset:7424
	ds_load_u8 v54, v201 offset:7168
	ds_load_u8 v250, v201 offset:8064
	ds_load_u8 v251, v201 offset:7808
	ds_load_u8 v252, v201 offset:7552
	ds_load_u8 v253, v201 offset:7296
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	ds_load_u8 v57, v201 offset:4864
	ds_load_u8 v58, v201 offset:4608
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v52, v54, v52, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v97, v57, 16, v56
	ds_load_u8 v54, v201 offset:7936
	ds_load_u8 v56, v201 offset:7680
	v_wmma_i32_16x16x16_iu4 v[72:79], v[97:98], v[33:34], v[72:79] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v56, v54, 0xc0c0004
	ds_load_u8 v56, v201 offset:6400
	ds_load_u8 v57, v201 offset:6144
	ds_load_u8 v254, v201 offset:7040
	ds_load_u8 v255, v201 offset:6784
	v_lshl_or_b32 v110, v54, 16, v52
	v_perm_b32 v52, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	ds_load_u8 v57, v201 offset:6912
	ds_load_u8 v58, v201 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v109, v57, 16, v56
	v_wmma_i32_16x16x16_iu4 v[72:79], v[109:110], v[37:38], v[72:79] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v41, v72
	v_cvt_f32_i32_e32 v246, v73
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v63, v74
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v72, v81, v80, 0xc0c0004
	v_perm_b32 v73, v87, v86, 0xc0c0004
	v_perm_b32 v74, v85, v84, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v59, v75
	v_cvt_f32_i32_e32 v58, v76
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v112, v72, 16, v52
	v_perm_b32 v52, v91, v90, 0xc0c0004
	v_lshl_or_b32 v111, v74, 16, v73
	v_perm_b32 v72, v89, v88, 0xc0c0004
	v_perm_b32 v73, v95, v94, 0xc0c0004
	v_perm_b32 v74, v93, v92, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v57, v77
	v_cvt_f32_i32_e32 v56, v78
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v100, v72, 16, v52
	v_perm_b32 v52, v107, v106, 0xc0c0004
	v_lshl_or_b32 v99, v74, 16, v73
	v_perm_b32 v72, v105, v96, 0xc0c0004
	v_perm_b32 v73, v249, v248, 0xc0c0004
	v_perm_b32 v74, v247, v108, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v54, v79
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[89:96], v[101:102], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v72, 16, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v105, v74, 16, v73
	v_perm_b32 v52, v253, v252, 0xc0c0004
	v_perm_b32 v72, v251, v250, 0xc0c0004
	v_perm_b32 v73, v118, v117, 0xc0c0004
	v_perm_b32 v74, v255, v254, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[89:96], v[103:104], v[13:14], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v108, v72, 16, v52
	v_lshl_or_b32 v107, v74, 16, v73
	v_wmma_i32_16x16x16_iu4 v[72:79], v[111:112], v[25:26], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[89:96], v[97:98], v[17:18], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[72:79], v[99:100], v[29:30], v[72:79] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[89:96], v[109:110], v[21:22], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[72:79], v[105:106], v[33:34], v[72:79] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v88, v90
	v_cvt_f32_i32_e32 v87, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v253, v93
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[72:79], v[107:108], v[37:38], v[72:79] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v252, v94
	v_cvt_f32_i32_e32 v251, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v29, v79
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[79:86], v[101:102], v[27:28], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v26, v78
	v_cvt_f32_i32_e32 v37, v73
	v_cvt_f32_i32_e32 v34, v74
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[79:86], v[103:104], v[31:32], v[79:86] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v74, v89
	v_cvt_f32_i32_e32 v52, v72
	v_cvt_f32_i32_e32 v25, v77
	v_cvt_f32_i32_e32 v33, v75
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[79:86], v[97:98], v[35:36], v[79:86] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v30, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[79:86], v[109:110], v[39:40], v[79:86] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v78, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v73, v80
	v_cvt_f32_i32_e32 v255, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v254, v82
	v_cvt_f32_i32_e32 v250, v83
	v_cvt_f32_i32_e32 v249, v84
	v_cvt_f32_i32_e32 v248, v85
	v_cvt_f32_i32_e32 v247, v86
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[79:86], v[111:112], v[27:28], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[79:86], v[99:100], v[31:32], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[79:86], v[105:106], v[35:36], v[79:86] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[79:86], v[107:108], v[39:40], v[79:86] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v40, v96
	v_cvt_f32_i32_e32 v31, v86
	v_cvt_f32_i32_e32 v86, v92
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[89:96], v[111:112], v[9:10], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v35, v79
	v_cvt_f32_i32_e32 v28, v85
	v_cvt_f32_i32_e32 v39, v80
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[89:96], v[99:100], v[13:14], v[89:96] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v27, v84
	v_cvt_f32_i32_e32 v38, v81
	v_cvt_f32_i32_e32 v36, v82
	v_cvt_f32_i32_e32 v32, v83
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[89:96], v[105:106], v[17:18], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[89:96], v[107:108], v[21:22], v[89:96] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v17, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v9, v94
	v_cvt_f32_i32_e32 v10, v95
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v13, v96
	v_cvt_f32_i32_e32 v22, v90
	v_cvt_f32_i32_e32 v21, v91
	v_cvt_f32_i32_e32 v18, v92
	v_cvt_f32_i32_e32 v14, v93
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[89:96], v[101:102], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v102, v152
	v_mov_b32_e32 v152, v174
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[89:96], v[103:104], v[15:16], v[89:96] neg_lo:[1,1,0]
	v_dual_mov_b32 v104, v147 :: v_dual_mov_b32 v147, v162
	v_mov_b32_e32 v162, v176
	v_mov_b32_e32 v176, v192
	v_wmma_i32_16x16x16_iu4 v[89:96], v[97:98], v[19:20], v[89:96] neg_lo:[1,1,0]
	v_mov_b32_e32 v192, v222
	v_dual_mov_b32 v222, v204 :: v_dual_mov_b32 v101, v145
	v_mov_b32_e32 v145, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[89:96], v[109:110], v[23:24], v[89:96] neg_lo:[1,1,0]
	v_dual_mov_b32 v103, v146 :: v_dual_mov_b32 v146, v155
	v_mov_b32_e32 v155, v181
	v_mov_b32_e32 v181, v0
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v75, v89
	v_cvt_f32_i32_e32 v76, v90
	v_cvt_f32_i32_e32 v77, v91
	v_cvt_f32_i32_e32 v97, v92
	v_cvt_f32_i32_e32 v85, v93
	v_cvt_f32_i32_e32 v80, v94
	v_cvt_f32_i32_e32 v79, v95
	v_cvt_f32_i32_e32 v72, v96
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[89:96], v[111:112], v[11:12], v[1:8] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v11, 0x80000000, v235, vcc_lo
	v_cndmask_b32_e64 v12, 0x80000000, v234, s0
	v_mov_b32_e32 v174, v191
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[89:96], v[99:100], v[15:16], v[89:96] neg_lo:[1,1,0]
	v_mov_b32_e32 v100, v114
	v_mov_b32_e32 v114, v128
	v_dual_mov_b32 v128, v129 :: v_dual_mov_b32 v129, v130
	v_wmma_i32_16x16x16_iu4 v[89:96], v[105:106], v[19:20], v[89:96] neg_lo:[1,1,0]
	v_dual_mov_b32 v130, v131 :: v_dual_mov_b32 v131, v132
	v_mov_b32_e32 v132, v149
	v_mov_b32_e32 v110, v153
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[89:96], v[107:108], v[23:24], v[89:96] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v24, off, off offset:128
	scratch_load_b32 v23, off, off offset:124
	v_mov_b32_e32 v153, v179
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v15, 0x80000000, v245, s1
	s_clause 0x1
	buffer_load_u16 v11, v11, s[40:43], 0 offen
	buffer_load_u16 v12, v12, s[40:43], 0 offen
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v1, v94
	v_mov_b32_e32 v94, v138
	v_mov_b32_e32 v138, v158
	v_mov_b32_e32 v158, v182
	v_dual_mov_b32 v182, v49 :: v_dual_mov_b32 v49, v127
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v15, v15, s[40:43], 0 offen
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v5, v89
	v_cvt_f32_i32_e32 v8, v90
	v_cvt_f32_i32_e32 v7, v91
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v16, 0x80000000, v49, s3
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v6, v92
	v_cvt_f32_i32_e32 v3, v96
	v_mov_b32_e32 v96, v139
	v_mov_b32_e32 v117, v151
	v_dual_mov_b32 v151, v173 :: v_dual_mov_b32 v154, v196
	v_dual_mov_b32 v196, v206 :: v_dual_mov_b32 v191, v221
	v_dual_mov_b32 v112, v120 :: v_dual_mov_b32 v221, v225
	v_mov_b32_e32 v225, v207
	v_dual_mov_b32 v179, v188 :: v_dual_mov_b32 v188, v210
	v_dual_mov_b32 v118, v161 :: v_dual_mov_b32 v161, v198
	v_cvt_f32_i32_e32 v4, v93
	v_cvt_f32_i32_e32 v2, v95
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v16, v16, s[40:43], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(5)
	buffer_load_u16 v19, v24, s[48:51], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v20, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v235, 2, v235
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v245, 2, v245
	v_add_nc_u32_e32 v234, 2, v234
	v_add_nc_u32_e32 v24, s59, v24
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v15, 16, v15
	v_mov_b32_e32 v93, v137
	v_dual_mov_b32 v137, v148 :: v_dual_mov_b32 v148, v163
	v_mov_b32_e32 v163, v177
	v_dual_mov_b32 v177, v194 :: v_dual_mov_b32 v194, v133
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(1)
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
	scratch_load_b32 v0, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[81:84], v236
	ds_load_b128 v[89:92], v236 offset:16
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v11, 16, v11
	v_mov_b32_e32 v99, v113
	v_mov_b32_e32 v113, v126
	v_mov_b32_e32 v139, v159
	v_mov_b32_e32 v159, v183
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v11, v239
	v_mov_b32_e32 v109, v160
	v_mov_b32_e32 v183, v202
	v_dual_mov_b32 v149, v186 :: v_dual_mov_b32 v186, v208
	v_mov_b32_e32 v126, v172
	v_mov_b32_e32 v172, v190
	v_mov_b32_e32 v160, v165
	v_dual_mov_b32 v173, v189 :: v_dual_mov_b32 v106, v115
	v_dual_mov_b32 v115, v116 :: v_dual_mov_b32 v116, v121
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v121, v122 :: v_dual_fmac_f32 v180, v19, v81
	v_mul_f32_e32 v19, v11, v134
	v_dual_mov_b32 v122, v123 :: v_dual_mov_b32 v105, v125
	v_mov_b32_e32 v189, v211
	v_mov_b32_e32 v123, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v181, v19, v82
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v19, v11, v135 :: v_dual_mov_b32 v124, v136
	v_dual_mov_b32 v136, v157 :: v_dual_mov_b32 v157, v164
	v_dual_mov_b32 v164, v178 :: v_dual_fmac_f32 v183, v19, v83
	v_mul_f32_e32 v19, v11, v140
	v_mov_b32_e32 v165, v185
	v_mov_b32_e32 v185, v199
	v_mov_b32_e32 v178, v195
	v_dual_mov_b32 v125, v171 :: v_dual_mov_b32 v190, v220
	v_mov_b32_e32 v220, v203
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v182, v19, v84
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v1, v16
	v_mul_f32_e32 v2, v2, v16
	v_mul_f32_e32 v4, v16, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v11, v0
	v_mov_b32_e32 v195, v223
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v223, v205 :: v_dual_fmac_f32 v176, v0, v92
	v_mul_f32_e32 v0, v12, v60
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v125, v0, v89
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v0, v12, v217 :: v_dual_mov_b32 v171, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v187, v209 :: v_dual_fmac_f32 v126, v0, v90
	v_dual_mul_f32 v0, v12, v215 :: v_dual_mov_b32 v215, v65
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v151, v0, v91
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v0, v12, v212 :: v_dual_add_nc_u32 v49, 2, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v152, v0, v92
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v15, v44
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v101, v0, v89 :: v_dual_mul_f32 v0, v15, v232
	v_mov_b32_e32 v232, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v102, v0, v90
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v15, v230
	v_dual_mov_b32 v230, v53 :: v_dual_fmac_f32 v103, v0, v91
	v_mul_f32_e32 v0, v15, v228
	v_mov_b32_e32 v228, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v104, v0, v92
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v12, v45
	v_dual_mul_f32 v0, v16, v243 :: v_dual_fmac_f32 v157, v19, v81
	v_mul_f32_e32 v19, v12, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v113, v0, v89
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v16, v242
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v158, v19, v82 :: v_dual_mul_f32 v19, v12, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v160, v19, v83 :: v_dual_mul_f32 v19, v12, v48
	v_fmac_f32_e32 v159, v19, v84
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v15, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v109, v19, v81
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v15, v237
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v110, v19, v82
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v15, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v146, v19, v83
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v15, v43
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v145, v19, v84
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v16, v71
	scratch_load_b32 v71, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v128, v19, v81 :: v_dual_mul_f32 v19, v16, v70
	scratch_load_b32 v70, off, off offset:116 ; 4-byte Folded Reload
	v_fmac_f32_e32 v129, v19, v82
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v16, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v131, v19, v83
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v16, v244
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v130, v19, v84 :: v_dual_fmac_f32 v121, v0, v90
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v0, v16, v241 :: v_dual_mul_f32 v19, v11, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v122, v0, v91
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v16, v200
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v172, v19, v89
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v11, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v123, v0, v92
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v173, v19, v90
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v11, v169
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v174, v19, v91
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[81:84], v236 offset:512
	ds_load_b128 v[89:92], v236 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v11
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v224, v0, v81
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v11, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v165, v0, v82
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v11, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v170, v0, v83
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v11, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v168, v0, v84
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v0, v144, v12 :: v_dual_mul_f32 v13, v13, v15
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v9, v9, v15 :: v_dual_mul_f32 v14, v15, v14
	v_mul_f32_e32 v10, v10, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v220, v0, v81
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v12, v69
	scratch_load_b32 v69, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v117, v0, v82
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v12, v142
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v118, v0, v83
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v12, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v147, v0, v84 :: v_dual_mul_f32 v0, v62, v15
	v_fmac_f32_e32 v196, v0, v81
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v15, v218
	scratch_load_b32 v218, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v93, v0, v82 :: v_dual_mul_f32 v0, v15, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v0, v83
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v15, v213
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v240, v0, v84
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v227, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v191, v0, v81
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v16, v233
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v99, v0, v82
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v16, v231
	scratch_load_b32 v231, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v100, v0, v83
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v0, v16, v229 :: v_dual_mov_b32 v227, v166
	scratch_load_b32 v229, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v106, v0, v84
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v217, v64 :: v_dual_mul_f32 v0, v11, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v171, v0, v89
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v11
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v223, v0, v90
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v11
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v222, v0, v91
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:136
	scratch_load_b32 v216, off, off offset:92
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v0, v0, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v221, v0, v92
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v12, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v148, v0, v89
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v218, v0, v90
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v216, v0, v91
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v215, v0, v92 :: v_dual_mul_f32 v0, v15, v66
	v_fmac_f32_e32 v96, v0, v89
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v67, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v195, v0, v90
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v68, v15
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v194, v0, v91
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v141, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v192, v0, v92
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v16, v226
	scratch_load_b32 v226, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v105, v0, v89 :: v_dual_mul_f32 v0, v55, v16
	v_fmac_f32_e32 v190, v0, v90
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v219, v16
	scratch_load_b32 v219, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v189, v0, v91 :: v_dual_mul_f32 v0, v214, v16
	scratch_load_b32 v214, off, off offset:88 ; 4-byte Folded Reload
	v_fmac_f32_e32 v188, v0, v92
	.loc	1 1218 45                       ; ragged.py:1218:45
	buffer_load_u16 v0, v23, s[48:51], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v23, s59, v23
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
	ds_load_b128 v[41:44], v236
	ds_load_b128 v[45:48], v236 offset:16
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v187, v0, v41 :: v_dual_mul_f32 v0, v11, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v186, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v63
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v185, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v59
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v184, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v78
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v78, off, off offset:68
	scratch_load_b32 v133, off, off offset:56
	scratch_load_b32 v150, off, off offset:44
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v164, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v73
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v73, off, off offset:36
	scratch_load_b32 v127, off, off offset:32
	scratch_load_b32 v144, off, off offset:20
	scratch_load_b32 v135, off, off offset:12
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v163, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v255
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v161, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v254
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v162, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v74
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v144, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v88
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v88, off, off offset:80
	scratch_load_b32 v143, off, off offset:76
	scratch_load_b32 v166, off, off offset:72
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v143, v0, v42 :: v_dual_mul_f32 v0, v15, v87
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v87, off, off offset:64
	scratch_load_b32 v142, off, off offset:60
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v142, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v86
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v86, off, off offset:24
	scratch_load_b32 v169, off, off offset:52
	scratch_load_b32 v156, off, off offset:48
	scratch_load_b32 v141, off, off offset:40
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v141, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v127, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v76
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v86, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v87, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v97
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v88, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v58
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v179, v0, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v57
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v178, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v177, v0, v47 :: v_dual_mul_f32 v0, v11, v54
	v_fmac_f32_e32 v175, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v250
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v155, v0, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v249
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v154, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v248
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v150, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v247
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v153, v0, v48 :: v_dual_mul_f32 v0, v15, v253
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v139, v0, v45 :: v_dual_mul_f32 v0, v15, v252
	v_fmac_f32_e32 v138, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v251
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v137, v0, v47 :: v_dual_mul_f32 v0, v15, v40
	v_fmac_f32_e32 v136, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v85
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v85, off, off offset:16
	scratch_load_b32 v140, off, off offset:28
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v78, v0, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v80
	scratch_load_b32 v80, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v124, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v79
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v79, off, off offset:4
	scratch_load_b32 v134, off, off
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v80, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v72
	scratch_load_b32 v72, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[40:43], v236 offset:512
	ds_load_b128 v[44:47], v236 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v79, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v11
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v69, v0, v40 :: v_dual_mul_f32 v0, v11, v37
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v132, v14, v44 :: v_dual_fmac_f32 v71, v9, v45
	v_dual_fmac_f32 v225, v13, v47 :: v_dual_fmac_f32 v116, v4, v44
	v_dual_fmac_f32 v169, v0, v41 :: v_dual_mul_f32 v0, v11, v34
	v_dual_fmac_f32 v217, v1, v45 :: v_dual_fmac_f32 v214, v2, v46
	v_fmac_f32_e32 v193, v3, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v167, v0, v42 :: v_dual_mul_f32 v0, v11, v33
	v_fmac_f32_e32 v156, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v35, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v70, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v39
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v149, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v140, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v36
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v135, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v17, v15 :: v_dual_mul_f32 v17, v31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v226, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v15, v22 :: v_dual_fmac_f32 v227, v17, v47
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v134, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v21
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v133, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v85, v0, v43 :: v_dual_mul_f32 v0, v5, v16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v5, v26, v11
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v219, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v8, v27, v12 :: v_dual_fmac_f32 v231, v5, v46
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v73, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v16, v7 :: v_dual_mul_f32 v7, v11, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v229, v8, v45
	v_fmac_f32_e32 v114, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v6
	v_mul_f32_e32 v6, v29, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v166, v7, v44 :: v_dual_fmac_f32 v115, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v25, v11 :: v_dual_mul_f32 v11, v28, v12
	v_mul_f32_e32 v12, v12, v32
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v230, v6, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v232, v0, v45
	v_dual_fmac_f32 v228, v11, v46 :: v_dual_fmac_f32 v119, v12, v44
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v72, v10, v46
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x12                           ; 76-byte Folded Reload
	scratch_load_b32 v107, off, off offset:420
	scratch_load_b32 v108, off, off offset:424
	scratch_load_b32 v111, off, off offset:428
	scratch_load_b32 v120, off, off offset:432
	scratch_load_b32 v213, off, off offset:436
	scratch_load_b32 v74, off, off offset:440
	scratch_load_b32 v75, off, off offset:444
	scratch_load_b32 v76, off, off offset:448
	scratch_load_b32 v77, off, off offset:452
	scratch_load_b32 v81, off, off offset:456
	scratch_load_b32 v82, off, off offset:460
	scratch_load_b32 v83, off, off offset:464
	scratch_load_b32 v84, off, off offset:468
	scratch_load_b32 v89, off, off offset:472
	scratch_load_b32 v90, off, off offset:476
	scratch_load_b32 v91, off, off offset:480
	scratch_load_b32 v92, off, off offset:484
	scratch_load_b32 v97, off, off offset:488
	scratch_load_b32 v98, off, off offset:492
	s_branch .LBB0_5
.LBB0_4:
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v223, 0
	v_mov_b32_e32 v222, 0
	v_mov_b32_e32 v224, 0
.LBB0_5:                                ; %._crit_edge
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v0, 62, v112
	s_waitcnt vmcnt(18)
	v_and_b32_e32 v7, 63, v107
	v_or_b32_e32 v8, 58, v112
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v10, 0xbfb8aa3b, v186 :: v_dual_mul_f32 v13, 0xbfb8aa3b, v231
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s0, s76, v0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 60, v112
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s77, 0, s0
	v_add_co_u32 v1, s0, s76, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v5, s1, s76, v0
	v_add_co_ci_u32_e64 v6, null, s77, 0, s1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 56, v112
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v8, s1, s76, v8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[64:65], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[70:71], v[5:6]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v5, 54, v112
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s77, 0, s0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[64:65], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, s77, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[70:71], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s76, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s77, 0, s6
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 52, v112
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s6, s76, v5
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[64:65], v[8:9]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s77, 0, s6
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[70:71], v[8:9]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v8, 50, v112
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[70:71], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s10, s76, v0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 48, v112
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s77, 0, s10
	v_add_co_u32 v8, s10, s76, v8
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[64:65], v[5:6]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, s77, 0, s10
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[70:71], v[5:6]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s14, s76, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v6, null, s77, 0, s14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v69
	v_dual_mul_f32 v14, 0xbfb8aa3b, v230 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v175
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[64:65], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[70:71], v[5:6]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v6, 0xbfb8aa3b, v232 :: v_dual_mul_f32 v11, 0xbfb8aa3b, v187
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v13
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v14
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_cndmask_b32_e64 v15, 0, 0x42800000, s18
	v_cndmask_b32_e64 v17, 0, 0x42800000, s19
	v_mul_f32_e32 v28, 0xbfb8aa3b, v177
	v_mul_f32_e32 v40, 0xbfb8aa3b, v179
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_dual_fmac_f32 v12, 0xbfb8aa3b, v69 :: v_dual_fmac_f32 v15, 0xbfb8aa3b, v231
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v230
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v232
	v_exp_f32_e32 v12, v12
	v_exp_f32_e32 v15, v15
	v_exp_f32_e32 v17, v17
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s19
	v_exp_f32_e32 v13, v13
	v_mul_f32_e32 v37, 0xbfb8aa3b, v169
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v39, 0xbfb8aa3b, v162 :: v_dual_mul_f32 v18, 0xbfb8aa3b, v228
	v_mul_f32_e32 v19, 0xbfb8aa3b, v227
	v_ldexp_f32 v12, v12, v0
	v_mul_f32_e32 v0, 0xbfb8aa3b, v70
	v_ldexp_f32 v14, v15, v14
	v_ldexp_f32 v15, v17, v16
	v_mul_f32_e32 v16, 0xbfb8aa3b, v229
	v_ldexp_f32 v13, v13, v6
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v18
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v19
	v_mul_f32_e32 v41, 0xbfb8aa3b, v154
	v_mul_f32_e32 v43, 0xbfb8aa3b, v142
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_mul_f32_e32 v42, 0xbfb8aa3b, v164
	v_cndmask_b32_e64 v20, 0, 0x42800000, s18
	v_cndmask_b32_e64 v22, 0, 0x42800000, s19
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v70
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v35, 0xbfb8aa3b, v153 :: v_dual_fmac_f32 v20, 0xbfb8aa3b, v228
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v227
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v17, v17
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v229
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v20, v20
	v_exp_f32_e32 v22, v22
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s18
	v_exp_f32_e32 v18, v18
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s19
	v_dual_mul_f32 v211, 0xbfb8aa3b, v144 :: v_dual_mul_f32 v44, 0xbfb8aa3b, v119
	v_mul_f32_e32 v23, 0xbfb8aa3b, v225
	v_ldexp_f32 v17, v17, v6
	v_mul_f32_e32 v6, 0xbfb8aa3b, v226
	v_mul_f32_e32 v207, 0xbfb8aa3b, v138
	v_mul_f32_e32 v205, 0xbfb8aa3b, v133
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v23
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v16, v18, v16
	v_ldexp_f32 v18, v20, v19
	v_ldexp_f32 v19, v22, v21
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_mul_f32_e32 v20, 0xbfb8aa3b, v71
	v_mul_f32_e32 v22, 0xbfb8aa3b, v72
	v_cndmask_b32_e64 v26, 0, 0x42800000, s19
	v_mul_f32_e32 v199, 0xbfb8aa3b, v87
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v22
	v_mul_f32_e32 v212, 0xbfb8aa3b, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v26, 0xbfb8aa3b, v225 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v226
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0x42800000, s18
	v_mul_f32_e32 v201, 0xbfb8aa3b, v86
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v21, v21
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v71
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v72
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s18
	v_exp_f32_e32 v26, v26
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s19
	v_exp_f32_e32 v22, v22
	v_exp_f32_e32 v24, v24
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v21, v21, v6
	v_mul_f32_e32 v6, 0xbfb8aa3b, v219
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v206, 0xbfb8aa3b, v134 :: v_dual_add_f32 v13, 1.0, v13
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v20, v22, v20
	v_ldexp_f32 v22, v24, v23
	v_mul_f32_e32 v24, 0xbfb8aa3b, v217
	v_ldexp_f32 v23, v26, v25
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_dual_mul_f32 v25, 0xbfb8aa3b, v214 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v193
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, null, v12, v12, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, s18
	v_cndmask_b32_e64 v50, 0, 0x42800000, s18
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, s19, v231, v14, v231
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v217
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0x42800000, s18
	v_mul_f32_e32 v208, 0xbfb8aa3b, v139
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v58, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v25, 0xbfb8aa3b, v214 :: v_dual_fmac_f32 v26, 0xbfb8aa3b, v193
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s18
	v_dual_mul_f32 v200, 0xbfb8aa3b, v88 :: v_dual_add_f32 v15, 1.0, v15
	v_exp_f32_e32 v55, v25
	v_exp_f32_e32 v56, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v17, v17, v70
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v50, v49
	v_dual_mul_f32 v202, 0xbfb8aa3b, v127 :: v_dual_add_f32 v21, 1.0, v21
	v_dual_mul_f32 v34, 0xbfb8aa3b, v80 :: v_dual_add_f32 v23, 1.0, v23
	v_dual_mul_f32 v198, 0xbfb8aa3b, v78 :: v_dual_add_f32 v49, 1.0, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v50, v55, v51
	v_ldexp_f32 v51, v56, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v54, v58, 1.0
	v_div_scale_f32 v55, null, v13, v13, v232
	v_div_scale_f32 v56, null, v14, v14, v231
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v58, v53, v58
	v_rcp_f32_e32 v53, v55
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v51
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v60, v56
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[70:71], v[3:4]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v3, 46, v112
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[64:65], v[8:9]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v31, 0xbfb8aa3b, v178 :: v_dual_mul_f32 v32, 0xbfb8aa3b, v156
	v_dual_mul_f32 v29, 0xbfb8aa3b, v166 :: v_dual_mul_f32 v38, 0xbfb8aa3b, v167
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_fma_f32 v62, -v55, v53, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v219
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v56, v60, 1.0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s14, s76, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v53, v62, v53
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_exp_f32_e32 v24, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v62, s18, v232, v13, v232
	v_fmac_f32_e32 v60, v64, v60
	v_div_scale_f32 v64, null, v15, v15, v230
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s77, 0, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v67, v65, v60
	v_rcp_f32_e32 v66, v64
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_ldexp_f32 v57, v24, v6
	v_mul_f32_e32 v6, 0xbfb8aa3b, v116
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[70:71], v[8:9]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v8, 0xbfb8aa3b, v185 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v184
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, vcc_lo, v69, v12, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v30, 0xbfb8aa3b, v79 :: v_dual_mul_f32 v33, 0xbfb8aa3b, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v0, 0xbfb8aa3b, v163 :: v_dual_mul_f32 v61, v59, v58
	v_dual_mul_f32 v46, 0xbfb8aa3b, v155 :: v_dual_mul_f32 v209, 0xbfb8aa3b, v141
	v_dual_mul_f32 v36, 0xbfb8aa3b, v150 :: v_dual_mul_f32 v45, 0xbfb8aa3b, v135
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v54, v61, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v52, 0xbfb8aa3b, v149 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v136
	v_dual_mul_f32 v210, 0xbfb8aa3b, v143 :: v_dual_mul_f32 v203, 0xbfb8aa3b, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v63, v58
	v_mul_f32_e32 v63, v62, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v48, 0xbfb8aa3b, v137 :: v_dual_mul_f32 v197, 0xbfb8aa3b, v124
	v_dual_mul_f32 v204, 0xbfb8aa3b, v85 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v114
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v54, v61, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v59, -v55, v63, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v24, 0xbfb8aa3b, v115
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp4:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v54, v54, v58, v61
	v_rcp_f32_e32 v58, v68
	v_fmac_f32_e32 v63, v59, v53
	v_fma_f32 v59, -v56, v67, v65
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v64, v66, 1.0
	v_div_fixup_f32 v12, v54, v12, v69
	v_fma_f32 v54, -v55, v63, v62
	v_fmac_f32_e32 v67, v59, v60
	s_mov_b32 vcc_lo, s18
	v_fmac_f32_e32 v66, v61, v66
	v_fma_f32 v59, -v68, v58, 1.0
	v_div_scale_f32 v61, s18, v70, v17, v70
	v_div_scale_f32 v55, s20, v230, v15, v230
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v58, v59, v58
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v53, v54, v53, v63
	v_fma_f32 v54, -v56, v67, v65
	s_mov_b32 vcc_lo, s19
	v_mul_f32_e32 v63, v61, v58
	v_div_scale_f32 v59, null, v16, v16, v229
	v_mul_f32_e32 v56, v55, v66
	v_div_fmas_f32 v54, v54, v60, v67
	v_div_fixup_f32 v13, v53, v13, v232
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v60, v59
	v_fma_f32 v53, -v68, v63, v61
	v_fma_f32 v62, -v64, v56, v55
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s20
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v5, 44, v112
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v63, v53, v58
	v_fmac_f32_e32 v56, v62, v66
	v_div_scale_f32 v53, s19, v229, v16, v229
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v59, v60, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[64:65], v[3:4]
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v64, v56, v55
	v_div_scale_f32 v64, null, v19, v19, v227
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v60, v62, v60
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s72, s78, 31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v55, v55, v66, v56
	v_fma_f32 v56, -v68, v63, v61
	s_mov_b32 vcc_lo, s18
	v_mul_f32_e32 v61, v53, v60
	v_div_fixup_f32 v14, v54, v14, v231
	v_rcp_f32_e32 v62, v64
	v_div_fmas_f32 v56, v56, v58, v63
	v_div_scale_f32 v68, null, v21, v21, v226
	v_fma_f32 v58, -v59, v61, v53
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v15, v55, v15, v230
	v_div_scale_f32 v69, s18, v227, v19, v227
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v61, v58, v60
	v_div_scale_f32 v65, null, v18, v18, v228
	v_div_scale_f32 v66, s20, v228, v18, v228
	v_div_fixup_f32 v17, v56, v17, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v54, v65
	v_div_scale_f32 v58, null, v20, v20, v71
	v_fma_f32 v53, -v59, v61, v53
	s_mov_b32 vcc_lo, s19
	.loc	1 1249 38 is_stmt 1             ; ragged.py:1249:38
	s_add_i32 s72, s78, s72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v59, v58
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s73, s67, 0xffff
	s_mov_b32 s75, 0x31027000
	s_mov_b32 s74, 0x7ffffffe
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v65, v54, 1.0
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v7, s76, v7
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 s69, s69, 0xffff
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v54, v67, v54
	v_fma_f32 v67, -v64, v62, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v63, v66, v54
	v_fmac_f32_e32 v62, v67, v62
	v_rcp_f32_e32 v67, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v55, -v65, v63, v66
	v_mul_f32_e32 v56, v69, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v63, v55, v54
	v_fma_f32 v55, -v64, v56, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v70, -v68, v67, 1.0
	v_div_fmas_f32 v53, v53, v60, v61
	s_mov_b32 vcc_lo, s20
	v_fma_f32 v60, -v65, v63, v66
	v_dual_fmac_f32 v56, v55, v62 :: v_dual_fmac_f32 v67, v70, v67
	v_div_scale_f32 v70, s21, v226, v21, v226
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v58, v59, 1.0
	v_div_fmas_f32 v54, v60, v54, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v55, v70, v67
	v_fma_f32 v60, -v64, v56, v69
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v50, 1.0, v50 :: v_dual_fmac_f32 v59, v61, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v68, v55, v70
	v_div_scale_f32 v61, null, v22, v22, v72
	v_div_scale_f32 v64, s19, v71, v20, v71
	v_div_fmas_f32 v56, v60, v62, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v63, v67
	v_rcp_f32_e32 v60, v61
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v62, v64, v59
	v_div_fixup_f32 v16, v53, v16, v229
	v_div_fixup_f32 v53, v54, v18, v228
	v_div_fixup_f32 v54, v56, v19, v227
	v_fma_f32 v18, -v68, v55, v70
	v_div_scale_f32 v56, null, v23, v23, v225
	s_mov_b32 vcc_lo, s21
	v_fma_f32 v19, -v58, v62, v64
	v_div_fmas_f32 v18, v18, v67, v55
	v_rcp_f32_e32 v55, v56
	v_fma_f32 v63, -v61, v60, 1.0
	s_mov_b32 vcc_lo, s19
	v_fmac_f32_e32 v62, v19, v59
	v_div_fixup_f32 v65, v18, v21, v226
	v_div_scale_f32 v19, s18, v72, v22, v72
	v_fmac_f32_e32 v60, v63, v60
	v_div_scale_f32 v63, null, v57, v57, v219
	v_fma_f32 v18, -v58, v62, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v56, v55, 1.0
	v_mul_f32_e32 v21, v19, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v64, v63
	v_div_fmas_f32 v18, v18, v59, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v58, v55
	v_div_scale_f32 v58, null, v49, v49, v217
	v_fma_f32 v59, -v61, v21, v19
	v_div_fixup_f32 v67, v18, v20, v71
	v_div_scale_f32 v62, s19, v225, v23, v225
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v18, v58
	v_fma_f32 v66, -v63, v64, 1.0
	v_fmac_f32_e32 v21, v59, v60
	v_div_scale_f32 v59, s20, v219, v57, v219
	s_mov_b32 vcc_lo, s18
	v_fmac_f32_e32 v64, v66, v64
	v_div_scale_f32 v66, null, v50, v50, v214
	v_fma_f32 v19, -v61, v21, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v69, -v58, v18, 1.0
	v_mul_f32_e32 v68, v59, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v70, v66
	v_div_scale_f32 v71, null, v51, v51, v193
	v_fmac_f32_e32 v18, v69, v18
	v_mul_f32_e32 v20, v62, v55
	v_div_fmas_f32 v19, v19, v60, v21
	v_fma_f32 v21, -v63, v68, v59
	s_mov_b32 vcc_lo, s19
	v_rcp_f32_e32 v60, v71
	v_fma_f32 v61, -v56, v20, v62
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v69, -v66, v70, 1.0
	v_div_fixup_f32 v72, v19, v22, v72
	v_fmac_f32_e32 v68, v21, v64
	v_div_scale_f32 v22, s21, v214, v50, v214
	v_fmac_f32_e32 v20, v61, v55
	v_div_scale_f32 v61, s18, v217, v49, v217
	v_fmac_f32_e32 v70, v69, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v19, -v56, v20, v62
	v_mul_f32_e32 v21, v61, v18
	v_fma_f32 v56, -v71, v60, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v19, v19, v55, v20
	v_fma_f32 v20, -v63, v68, v59
	v_fma_f32 v55, -v58, v21, v61
	v_mul_f32_e32 v59, v22, v70
	s_mov_b32 vcc_lo, s20
	v_div_fixup_f32 v63, v19, v23, v225
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v21, v55, v18
	v_fma_f32 v55, -v66, v59, v22
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v23, v224, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v19, -v58, v21, v61
	v_fmac_f32_e32 v59, v55, v70
	v_div_fmas_f32 v20, v20, v64, v68
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v11, v19, v18, v21
	v_fma_f32 v18, -v66, v59, v22
	s_mov_b32 vcc_lo, s21
	v_div_fixup_f32 v57, v20, v57, v219
	v_fmac_f32_e32 v60, v56, v60
	v_div_scale_f32 v56, s19, v193, v51, v193
	v_div_fmas_f32 v18, v18, v70, v59
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v22, v223, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v49, v11, v49, v217
	v_div_fixup_f32 v50, v18, v50, v214
	v_mul_f32_e32 v62, v56, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v218, v16
	v_mul_f32_e32 v16, v215, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v20, -v71, v62, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v62, v20, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, s20
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v71, v62, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v187
	v_cndmask_b32_e64 v56, 0, 0x42800000, s18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v10, v21, v60, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v21, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v186
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v10, v10, v51, v193
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_ldexp_f32 v9, v21, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v184
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v220, v17
	v_mul_f32_e32 v17, v216, v53
	v_mul_f32_e32 v21, v221, v15
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v13
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v13, v192, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v11, v56
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v196, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v56, null, v51, v51, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v58, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v8, v11, v55
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v62, vcc_lo, v187, v51, v187
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v185
	v_ldexp_f32 v8, v9, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v56, v58, 1.0
	v_div_scale_f32 v54, null, v53, v53, v186
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v58, v9, v58 :: v_dual_add_f32 v61, 1.0, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v60, v54
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v191, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, s18, v186, v53, v186
	v_mul_f32_e32 v64, v62, v58
	v_div_scale_f32 v63, null, v61, v61, v184
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v59, v55
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v189, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v56, v64, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v8, -v54, v60, 1.0
	v_rcp_f32_e32 v57, v63
	v_div_scale_f32 v66, s19, v184, v61, v184
	v_fmac_f32_e32 v64, v59, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v60, v8, v60
	v_fma_f32 v56, -v56, v64, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v50, v65, v60
	v_div_fmas_f32 v40, v56, v58, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, s20
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v54, v50, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_div_fixup_f32 v40, v40, v51, v187
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v8, v190, v49 :: v_dual_add_f32 v49, 1.0, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v63, v57, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v179
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v50, v62, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v59, null, v49, v49, v185
	v_fmac_f32_e32 v57, v55, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v54, v50, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v55, v59
	v_mul_f32_e32 v62, v66, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v31, v51, v60, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0x42800000, s21
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v63, v62, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v31, v53, v186
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v64, -v59, v55, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v178
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v54, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v54, v58, v56
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v64, v55
	v_div_scale_f32 v64, s20, v185, v49, v185
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v63, v62, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v50, v64, v55
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v212
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v57, v63, v57, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v59, v50, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v177
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v12, v194, v72 :: v_dual_mul_f32 v31, v181, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v50, v28, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v60, null, v54, v54, v179
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v59, v50, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v62, v60
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v20, v222, v14 :: v_dual_fmac_f32 v59, 0xbfb8aa3b, v175
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v28, v51
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s20
	v_div_fmas_f32 v27, v27, v55, v50
	v_fma_f32 v55, -v60, v62, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v59
	v_ldexp_f32 v28, v58, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v27, v49, v185
	v_fmac_f32_e32 v62, v55, v62
	v_div_scale_f32 v55, vcc_lo, v179, v54, v179
	v_div_scale_f32 v56, null, v50, v50, v178
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v58, 1.0, v28 :: v_dual_mul_f32 v65, v55, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v51, v59, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v63, v56
	v_div_fixup_f32 v28, v57, v61, v184
	v_div_scale_f32 v64, null, v58, v58, v177
	v_fma_f32 v53, -v60, v65, v55
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v14, v195, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v49, v64
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v27, v183, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v53, v62
	v_fma_f32 v57, -v56, v63, 1.0
	v_div_scale_f32 v53, s18, v178, v50, v178
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v60, v65, v55
	v_div_scale_f32 v60, null, v51, v51, v175
	v_fmac_f32_e32 v63, v57, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v64, v49, 1.0
	v_div_fmas_f32 v55, v55, v62, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v60
	v_mul_f32_e32 v59, v53, v63
	v_fmac_f32_e32 v49, v57, v49
	v_div_scale_f32 v57, s19, v177, v58, v177
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v56, v59, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v180, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v40, v55, v54, v179
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v169
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v60, v61, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v10, v188, v10 :: v_dual_mul_f32 v65, v57, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v59, v62, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v55, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v64, v65, v57
	v_fma_f32 v53, -v56, v59, v53
	v_div_scale_f32 v56, s20, v175, v51, v175
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v167
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v54, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v38, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v53, v53, v63, v59
	v_mul_f32_e32 v59, v56, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_exp_f32_e32 v32, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v64, v65, v57
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v55, 1.0, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v60, v59, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	v_div_scale_f32 v64, null, v55, v55, v169
	v_div_fmas_f32 v49, v57, v49, v65
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v59, v38, v61
	v_div_fixup_f32 v38, v53, v50, v178
	s_mov_b32 vcc_lo, s20
	v_rcp_f32_e32 v54, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v49, v58, v177
	v_fma_f32 v49, -v60, v59, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v156
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v56, null, v50, v50, v167
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v49, v49, v61, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	v_exp_f32_e32 v53, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v64, v54, 1.0
	v_rcp_f32_e32 v58, v56
	v_div_fixup_f32 v29, v49, v51, v175
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v176, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v166
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v53, v53, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v56, v58, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v51
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v62, null, v53, v53, v156
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v51, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v54, v57, v54
	v_div_scale_f32 v57, s18, v169, v55, v169
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v63, v62
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v59, v57, v54
	v_fma_f32 v61, -v64, v59, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v28, v182, v28 :: v_dual_fmac_f32 v59, v61, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v64, v59, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v51, v57, v54, v59
	v_fma_f32 v54, -v62, v63, 1.0
	v_fmac_f32_e32 v58, v60, v58
	v_div_scale_f32 v60, s19, v167, v50, v167
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v63, v54, v63
	v_div_fixup_f32 v51, v51, v55, v169
	v_mul_f32_e32 v61, v60, v58
	v_div_scale_f32 v42, s18, v156, v53, v156
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v56, v61, v60
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v174, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v38, v173, v38 :: v_dual_fmac_f32 v59, 0xbfb8aa3b, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v64, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v56, v61, v60
	v_div_scale_f32 v56, null, v49, v49, v166
	v_mul_f32_e32 v60, v42, v63
	v_div_fmas_f32 v0, v55, v58, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, s20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v54, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v50, v167
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v163
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v62, v60, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v39, v59, v57
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v172, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v56, v54, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v60, v50, v63 :: v_dual_fmac_f32 v59, 0xbfb8aa3b, v162
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v62, v60, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v58, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v54, v61, v54
	v_div_scale_f32 v61, s19, v166, v49, v166
	v_div_fmas_f32 v33, v42, v63, v60
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v55, 1.0, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v61, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0x42800000, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v64, null, v55, v55, v163
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v56, v50, v61
	v_fmac_f32_e32 v50, v39, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v39, v39, v57
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v39
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v56, v50, v61
	v_rcp_f32_e32 v61, v64
	v_div_fixup_f32 v39, v33, v53, v156
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v161
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v42, v42, v54, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v52
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v168, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v42, v49, v166
	v_fma_f32 v54, -v64, v61, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v60
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v171, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v54, v61
	v_div_scale_f32 v54, s18, v163, v55, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v53, v54, v61
	v_div_scale_f32 v58, null, v62, v62, v164
	v_div_scale_f32 v50, vcc_lo, v164, v62, v164
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v56, v49, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v59, v58
	v_fma_f32 v66, -v64, v53, v54
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v165, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v53, v66, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v63, -v58, v59, 1.0
	v_fma_f32 v54, -v64, v53, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v59, v63, v59
	v_div_scale_f32 v63, null, v57, v57, v162
	v_mul_f32_e32 v60, v50, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v65, v63
	v_fma_f32 v42, -v58, v60, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v60, v42, v59
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v42, v170, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v63, v65, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v58, v60, v50
	v_div_scale_f32 v56, null, v0, v0, v161
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v65, v51, v65
	v_div_fmas_f32 v50, v50, v59, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v46, v56
	v_div_scale_f32 v51, s19, v162, v57, v162
	v_div_fixup_f32 v50, v50, v62, v164
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_div_fmas_f32 v53, v54, v61, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v59, 0xbfb8aa3b, v155 :: v_dual_mul_f32 v54, v51, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v56, v46, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v53, v53, v55, v163
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v61, s18, v161, v0, v161
	v_fmac_f32_e32 v46, v60, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v63, v54, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v154
	v_ldexp_f32 v36, v41, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v41, v61, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v54, v55, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v60, v60
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v56, v41, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v150
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v63, v54, v51
	v_fmac_f32_e32 v41, v36, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, null, v62, v62, v155
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v60, v59
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	v_rcp_f32_e32 v58, v63
	v_div_fmas_f32 v51, v51, v65, v54
	v_fma_f32 v54, -v56, v41, v61
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v56, 1.0, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v35, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v41, v54, v46, v41
	v_div_scale_f32 v55, null, v56, v56, v154
	v_div_scale_f32 v64, s18, v154, v56, v154
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v0, v41, v0, v161
	v_rcp_f32_e32 v54, v55
	v_fma_f32 v36, -v63, v58, 1.0
	v_div_scale_f32 v61, vcc_lo, v155, v62, v155
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v58, v36, v58
	v_div_fixup_f32 v36, v51, v57, v162
	v_fma_f32 v41, -v55, v54, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v57, v61, v58
	v_dual_fmac_f32 v54, v41, v54 :: v_dual_mul_f32 v41, v158, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v53, v64, v54 :: v_dual_fmac_f32 v60, 0xbfb8aa3b, v153
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v46, v60
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v60, 1.0, v35 :: v_dual_mul_f32 v35, v160, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v46, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v63, v57, v61
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_fmac_f32 v57, v46, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v157, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v0, v0, v153
	v_fma_f32 v50, -v63, v57, v61
	v_fma_f32 v61, -v55, v53, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v63, v66
	v_fmac_f32_e32 v53, v61, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v55, -v55, v53, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, s21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v66, v63, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v64, 0xbfb8aa3b, v140 :: v_dual_fmac_f32 v63, v61, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v50, v50, v58, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0x42800000, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v61, s20, v153, v0, v153
	s_mov_b32 vcc_lo, s18
	v_div_fixup_f32 v50, v50, v62, v155
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v149
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v51, null, v60, v60, v150
	v_div_fmas_f32 v53, v55, v54, v53
	v_mul_f32_e32 v54, v61, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v59, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v57, v57
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v125, v125, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v66, v54, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v53, v53, v56, v154
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_fmac_f32_e32 v54, v45, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v45, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v51, v59, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v57, v52
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v126, v126, v53 :: v_dual_fmac_f32 v59, v65, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, s19, v150, v60, v150
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v45, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v58, v65, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v51, v58, v65
	v_fmac_f32_e32 v58, v62, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v51, -v51, v58, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v51, v51, v59, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v62
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v66, v54, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v44, v44, v63, v54
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v54, 1.0, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v58, v57
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, null, v54, v54, v140
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v45, v51, v60, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v63, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v65, null, v62, v62, v135
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v151, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v44, v0, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v51, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v152, v0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v61, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v58, v63, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_scale_f32 v64, null, v52, v52, v149
	v_div_scale_f32 v55, s18, v140, v54, v140
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v59, v64
	v_fmac_f32_e32 v63, v60, v63
	v_div_scale_f32 v60, null, v0, v0, v119
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v64, v59, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v36, v159, v36 :: v_dual_fmac_f32 v59, v57, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v57, vcc_lo, v149, v52, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v66, v57, v59
	v_fma_f32 v56, -v64, v66, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v66, v56, v59
	v_fma_f32 v56, -v65, v51, 1.0
	v_fma_f32 v53, -v64, v66, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v51, v56, v51
	v_mul_f32_e32 v57, v55, v63
	v_div_fmas_f32 v53, v53, v59, v66
	v_rcp_f32_e32 v59, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v211
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v58, v57, v55
	v_div_fixup_f32 v50, v53, v52, v149
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v61, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v210
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v60, v59, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v144
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v61, s20, v119, v0, v119
	v_fma_f32 v55, -v58, v57, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v59, v53, v59
	v_div_scale_f32 v56, s19, v135, v62, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_mul_f32_e32 v64, v56, v51
	v_div_fmas_f32 v55, v55, v63, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v143
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v57, v61, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v209
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v65, v64, v56
	v_div_fixup_f32 v54, v55, v54, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v60, v57, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v117, v117, v50 :: v_dual_fmac_f32 v64, v52, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v118, v118, v54 :: v_dual_fmac_f32 v57, v63, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v65, v64, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v53, v58, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v60, v57, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v52, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v51, v56, v51, v64
	s_mov_b32 vcc_lo, s20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v141
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v55, v55, v59, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v51, v62, v135
	v_div_scale_f32 v60, null, v53, v53, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v55, v0, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v119, v147, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v57, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v207
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v148, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v58, v58, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v60, v57, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v58 :: v_dual_fmac_f32 v57, v63, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v64, null, v0, v0, v141
	v_div_scale_f32 v63, s19, v143, v53, v143
	v_rcp_f32_e32 v51, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v52, v52, v144
	v_rcp_f32_e32 v56, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v67, v56, 1.0
	v_fmac_f32_e32 v56, v61, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v142
	v_exp_f32_e32 v61, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v55, v61, v55
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v64, v51, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v51, v55, v51
	v_div_scale_f32 v59, s18, v144, v52, v144
	s_mov_b32 vcc_lo, s18
	v_mul_f32_e32 v62, v59, v56
	v_fma_f32 v58, -v67, v62, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v62, v58, v56
	v_mul_f32_e32 v58, v63, v57
	v_fma_f32 v54, -v67, v62, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v59, -v60, v58, v63
	v_div_fmas_f32 v54, v54, v56, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v208
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v59, v57
	v_div_scale_f32 v56, null, v50, v50, v142
	v_div_fixup_f32 v52, v54, v52, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v60, v58, v63
	v_rcp_f32_e32 v59, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v109, v109, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, s18, v141, v0, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v139
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	v_div_fmas_f32 v54, v54, v57, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v62, v55, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v56, v59, 1.0
	v_div_fixup_f32 v53, v54, v53, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v138
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v64, v62, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v59, v63, v59
	v_div_scale_f32 v63, s19, v142, v50, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v54, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v61, v60
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v54, v63, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v64, v62, v55
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v56, v54, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v58, v57
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v137
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, null, v64, v64, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v54, v48, v59
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v61
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v58
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v47, v55, v51, v62
	v_fma_f32 v51, -v56, v54, v63
	s_mov_b32 vcc_lo, s19
	v_div_scale_f32 v65, null, v57, v57, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0x42800000, s20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v51, v51, v59, v54
	v_fma_f32 v63, -v58, v61, 1.0
	v_div_scale_f32 v54, vcc_lo, v139, v64, v139
	v_rcp_f32_e32 v62, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v48, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v61, v63, v61 :: v_dual_fmac_f32 v56, 0xbfb8aa3b, v136
	v_div_fixup_f32 v50, v51, v50, v142
	v_div_fixup_f32 v0, v47, v0, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v60, v54, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v56
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v146, v50
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v65, v62, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v56, 1.0, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v58, v60, v54
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v145, v0
	v_mul_f32_e32 v110, v110, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v59, v62
	v_div_scale_f32 v59, s18, v138, v57, v138
	v_fmac_f32_e32 v60, v50, v61
	v_div_scale_f32 v63, null, v56, v56, v137
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v51, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v59, v62
	v_fma_f32 v51, -v58, v60, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v67, v63
	v_div_scale_f32 v54, s19, v137, v56, v137
	v_fma_f32 v50, -v65, v66, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v51, v51, v61, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v206
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v50, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v51, v51, v64, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v63, v67, 1.0
	v_div_scale_f32 v52, null, v0, v0, v136
	v_fma_f32 v53, -v65, v66, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v58, 0xbfb8aa3b, v134 :: v_dual_fmac_f32 v67, v50, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v50, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v53, v53, v62, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v205
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v59, v54, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v101, v101, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v53, v53, v57, v138
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v60, -v52, v50, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v63, v59, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v58, v55
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v50, v60, v50
	v_div_scale_f32 v60, s18, v136, v0, v136
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v204
	v_dual_fmac_f32 v62, 0xbfb8aa3b, v133 :: v_dual_add_f32 v55, 1.0, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v59, v57, v67
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v57, v60, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v62, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v55, v55, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v203
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v63, v59, v54
	v_fma_f32 v63, -v52, v57, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v66, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v85
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v102, v102, v53 :: v_dual_fmac_f32 v57, v63, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v61, v62, v61
	v_exp_f32_e32 v63, v64
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v132
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	v_fma_f32 v52, -v52, v57, v60
	v_div_fmas_f32 v54, v54, v67, v59
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v59, 1.0, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v65, v66, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v58, v63, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v50, v52, v50, v57
	v_fmac_f32_e32 v66, v60, v66
	v_div_scale_f32 v60, s19, v134, v55, v134
	s_mov_b32 vcc_lo, s19
	v_div_fixup_f32 v0, v50, v0, v136
	v_div_scale_f32 v62, null, v59, v59, v133
	v_mul_f32_e32 v57, v60, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v61, v64
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v104, v104, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v58, 1.0, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v63, v62
	v_fma_f32 v61, -v65, v57, v60
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, s18, v133, v59, v133
	v_div_scale_f32 v52, null, v58, v58, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v57, v61, v66
	v_div_scale_f32 v61, null, v0, v0, v132
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v64, -v62, v63, 1.0
	v_fma_f32 v60, -v65, v57, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v65, v61
	v_fmac_f32_e32 v63, v64, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v57, v60, v66, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v202
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v64, v50, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v55, v57, v55, v134
	v_fma_f32 v57, -v61, v65, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v62, v64, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v201
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v57, v65
	v_div_fixup_f32 v54, v54, v56, v137
	v_rcp_f32_e32 v56, v52
	v_fmac_f32_e32 v64, v51, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v127
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v103, v103, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v57, s19, v132, v0, v132
	v_fma_f32 v50, -v62, v64, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v86
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v52, v56, 1.0
	s_mov_b32 vcc_lo, s18
	v_mul_f32_e32 v62, v57, v65
	v_div_fmas_f32 v50, v50, v63, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v200
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v54, v56
	v_div_scale_f32 v54, s20, v85, v58, v85
	v_fma_f32 v63, -v61, v62, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v50, v59, v133
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v53, v54, v56
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v93, v93, v55 :: v_dual_fmac_f32 v62, v63, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v88
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v94, v94, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v52, v53, v54
	v_fmac_f32_e32 v53, v51, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v52, v53, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v54, v68
	v_ldexp_f32 v51, v51, v60
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v198
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v52, v52, v56, v53
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v51
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v53, v54, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v61, v62, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v57, v64
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v199
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, null, v51, v51, v127
	v_div_fixup_f32 v52, v52, v58, v85
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v57, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v56, v56, v65, v62
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v95, v240, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v53, v53, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v64, 0xbfb8aa3b, v87 :: v_dual_add_f32 v57, 1.0, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v54, v61, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v62, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, s20
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, null, v57, v57, v88
	v_fmac_f32_e32 v61, v60, v61
	v_div_scale_f32 v60, vcc_lo, v127, v51, v127
	v_div_scale_f32 v55, s19, v88, v57, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v67, 0xbfb8aa3b, v78 :: v_dual_mul_f32 v58, v60, v61
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v54, v58, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v58, v52, v61
	v_fma_f32 v54, -v54, v58, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v54, v54, v61, v58
	v_div_fixup_f32 v51, v54, v51, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v85, v128, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v56, v0, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v66, v62, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v96, v96, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v0, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v62, v64, v62
	v_div_scale_f32 v64, s18, v86, v53, v86
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v56, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v56, v64, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v63, -v59, v0, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v66, v56, v64
	v_fmac_f32_e32 v0, v63, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v63, null, v50, v50, v87
	v_fmac_f32_e32 v56, v52, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v52, v55, v0
	v_rcp_f32_e32 v60, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v58, -v66, v56, v64
	v_fma_f32 v61, -v59, v52, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v56, v58, v62, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v197
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v52, v61, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v67
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v63, v60, 1.0
	v_div_fixup_f32 v53, v56, v53, v86
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v60, v58, v60
	v_div_scale_f32 v34, s18, v87, v50, v87
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v124
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v61, v61, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v59, v52, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v64, v64
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v80
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	v_mul_f32_e32 v59, v34, v60
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v55, v0, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v66
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v63, v59, v34
	v_div_scale_f32 v65, null, v61, v61, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v62, v64, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v57, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v59, v52, v60
	v_rcp_f32_e32 v52, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v54, 1.0, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v55, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v63, v59, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v55, null, v54, v54, v124
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v65, v52, 1.0
	v_div_fmas_f32 v34, v34, v60, v59
	v_rcp_f32_e32 v63, v55
	v_div_scale_f32 v60, vcc_lo, v78, v61, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v62, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, null, v30, v30, v80
	v_div_fixup_f32 v34, v34, v50, v87
	v_mul_f32_e32 v64, v60, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v50, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v55, v63, 1.0
	v_rcp_f32_e32 v58, v59
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v88, v131, v34 :: v_dual_mul_f32 v87, v130, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v65, v64, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v63, v62, v63
	v_div_scale_f32 v62, s18, v124, v54, v124
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v86, v129, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v0, v52
	v_div_scale_f32 v53, s19, v80, v30, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v34, v62, v63
	v_fma_f32 v56, -v59, v58, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v65, v64, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v50, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v55, v34, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v58, v56, v58
	v_div_fmas_f32 v51, v51, v52, v64
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v0, v63
	v_mul_f32_e32 v0, v53, v58
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v51, v61, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v55, v34, v62
	v_fma_f32 v55, -v59, v0, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v26, v52, v63, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0x42800000, s20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v55, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v50, v50, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v73
	v_cndmask_b32_e64 v56, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v59, v0, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v52
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v114
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v24, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v6, v56
	v_cndmask_b32_e64 v56, 0, 0x42800000, s18
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v115
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v53, v58, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v52, v34
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s18
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v116
	v_exp_f32_e32 v52, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v30, v80
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v6, v6, v55
	v_exp_f32_e32 v34, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v25, v24, 1.0
	v_div_fixup_f32 v26, v26, v54, v124
	v_div_scale_f32 v54, null, v30, v30, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v6, 1.0, v6
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v52, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v24, v58, v24
	v_div_scale_f32 v55, vcc_lo, v79, v50, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v34, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v57, null, v6, v6, v114
	v_rcp_f32_e32 v56, v54
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, null, v52, v52, v115
	v_rcp_f32_e32 v59, v57
	v_mul_f32_e32 v58, v55, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v64, null, v34, v34, v116
	v_rcp_f32_e32 v62, v53
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v78, v121, v26
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v54, v56, 1.0
	v_rcp_f32_e32 v66, v64
	v_fma_f32 v63, -v25, v58, v55
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, |v33|, |v22|, |v20|
	s_delay_alu instid0(TRANS32_DEP_3)
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v57, v59, 1.0
	v_fmac_f32_e32 v56, v60, v56
	v_div_scale_f32 v60, s18, v73, v30, v73
	v_fmac_f32_e32 v58, v63, v24
	v_fma_f32 v63, -v53, v62, 1.0
	v_fmac_f32_e32 v59, v65, v59
	v_div_scale_f32 v65, s19, v114, v6, v114
	v_fma_f32 v68, -v64, v66, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v67, v60, v56 :: v_dual_fmac_f32 v62, v63, v62
	v_div_scale_f32 v63, s20, v115, v52, v115
	v_fma_f32 v25, -v25, v58, v55
	v_dual_mul_f32 v69, v65, v59 :: v_dual_fmac_f32 v66, v68, v66
	v_div_scale_f32 v68, s21, v116, v34, v116
	v_fma_f32 v55, -v54, v67, v60
	v_mul_f32_e32 v70, v63, v62
	v_div_fmas_f32 v24, v25, v24, v58
	v_fma_f32 v25, -v57, v69, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v58, v68, v66 :: v_dual_fmac_f32 v67, v55, v56
	v_fma_f32 v55, -v53, v70, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v24, v24, v50, v79
	v_fmac_f32_e32 v69, v25, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v25, -v64, v58, v68
	v_fma_f32 v50, -v54, v67, v60
	v_fmac_f32_e32 v70, v55, v62
	s_mov_b32 vcc_lo, s18
	v_fma_f32 v54, -v57, v69, v65
	v_fmac_f32_e32 v58, v25, v66
	v_div_fmas_f32 v50, v50, v56, v67
	v_fma_f32 v25, -v53, v70, v63
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v80, v123, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v53, v54, v59, v69
	v_fma_f32 v54, -v64, v58, v68
	s_mov_b32 vcc_lo, s20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v79, v122, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v62, v70
	s_mov_b32 vcc_lo, s21
	v_div_fixup_f32 v6, v53, v6, v114
	v_div_fmas_f32 v54, v54, v66, v58
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v53, |v96|, |v14|, |v12|
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v25, v52, v115
	v_div_fixup_f32 v25, v50, v30, v73
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v70, v100, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v54, v34, v116
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, |v28|, |v40|, |v38|
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp10:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v73, v113, v51 :: v_dual_mul_f32 v50, v99, v25
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v49|, |v42|, |v39|
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v105, v0
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v37|, |v31|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v72, v106, v24
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v24, |v32|, |v29|, |v23|
	v_max_f32_e64 v30, |v46|, |v41|
	v_max3_f32 v34, |v36|, |v125|, |v126|
	v_max3_f32 v51, |v117|, |v118|, |v119|
	v_max3_f32 v52, |v43|, |v18|, |v17|
	v_max3_f32 v0, v0, |v27|, v6
	v_max3_f32 v6, v25, v26, |v21|
	v_max3_f32 v25, |v45|, |v44|, |v19|
	v_max3_f32 v26, v30, |v35|, v34
	v_max3_f32 v30, v51, v52, |v16|
	v_max_f32_e64 v34, |v109|, |v110|
	v_max3_f32 v51, |v48|, |v101|, |v102|
	v_max3_f32 v52, |v93|, |v94|, |v95|
	v_max3_f32 v0, v0, v24, v6
	s_mov_b32 s18, 0x76543210
	v_max3_f32 v24, v26, v25, v30
	v_max3_f32 v6, |v103|, |v104|, |v15|
	v_max3_f32 v25, v34, |v47|, v51
	v_max3_f32 v26, v52, v53, |v13|
	v_max_f32_e64 v30, |v85|, |v86|
	v_max3_f32 v34, |v87|, |v73|, |v78|
	v_max3_f32 v51, |v50|, |v70|, |v72|
	v_max3_f32 v52, |v71|, |v8|, |v9|
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v53, v0, s18, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, v25, v6, v26
	v_max3_f32 v30, v30, |v88|, v34
	v_max3_f32 v26, |v79|, |v80|, |v11|
	v_max3_f32 v34, v51, v52, |v10|
	v_max_f32_e32 v51, v53, v53
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v52, v24, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v53, v25, s18, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v57, 4, v107
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, v30, v26, v34
	v_max_f32_e32 v51, v0, v51
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v0, 3, v107
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v52, v52, v52 :: v_dual_max_f32 v53, v53, v53
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v30, 4, v107
	v_and_b32_e32 v58, 8, v107
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v34, v0, 9, 0
	v_lshlrev_b32_e32 v54, 5, v0
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v52, v24, v52 :: v_dual_max_f32 v53, v25, v53
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v24, v26, s18, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v25, 0x60, v107
	v_lshl_add_u32 v34, v57, 2, v34
	v_and_or_b32 v55, 0x680, v30, v54
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v56, 1, v213
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v24, v24, v24
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v59, v54, v25
	v_lshl_add_u32 v34, v58, 4, v34
	v_lshrrev_b32_e32 v60, 3, v213
	v_xor_b32_e32 v55, v55, v25
	v_lshl_add_u32 v61, v57, 6, 0
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v54, v26, v24
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v24, v34, v56, v59
.Ltmp29:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v26, 42, v112
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v5, s19, s76, v5
.Ltmp30:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v34, v61, v60, v55
	ds_store_b128 v24, v[51:54]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp31:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v55, s18, s76, v26
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[51:54], v34
.Ltmp33:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s77, 0, s19
	v_add_co_ci_u32_e64 v56, null, s77, 0, s18
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[70:71], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 40, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[64:65], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[70:71], v[5:6]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v5, 38, v112
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
.Ltmp35:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s23, s76, v3
	v_add_co_ci_u32_e64 v4, null, s77, 0, s23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v5, s23, s76, v5
	v_add_co_ci_u32_e64 v6, null, s77, 0, s23
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[64:65], v[3:4]
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v24, v51
.Ltmp37:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[70:71], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 36, v112
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[64:65], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[70:71], v[5:6]
.Ltmp38:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v24, v24 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v26, v53
.Ltmp39:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s27, s76, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v4, null, s77, 0, s27
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v24, v24
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v24, v52 :: v_dual_max_f32 v5, v51, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp42:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[70:71], v[3:4]
.Ltmp43:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v26, v26 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v24, v24 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v54, v54
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v54, v54 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v5, v6 :: v_dual_max_f32 v4, v52, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v6, v24, v24
	v_max_f32_e32 v24, v53, v53
	v_max_f32_e32 v26, v26, v26
	v_max_f32_e32 v34, v54, v54
.Ltmp47:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v51, 34, v112
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v52, v5
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v4, v6
	v_max_f32_e32 v24, v24, v26
	v_max_f32_e32 v26, v3, v34
.Ltmp50:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s29, s76, v51
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v52, v52 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v34, v6 :: v_dual_mov_b32 v51, v24
	v_mov_b32_e32 v53, v26
.Ltmp52:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s77, 0, s29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v52, v52, v52
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v51, v51 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v53, v53 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[70:71], v[3:4]
.Ltmp56:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v52
	v_dual_max_f32 v3, v34, v34 :: v_dual_max_f32 v4, v51, v51
	v_max_f32_e32 v34, v53, v53
.Ltmp57:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v51, 32, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v52, v5
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v3
	v_max_f32_e32 v24, v24, v4
	v_max_f32_e32 v26, v26, v34
.Ltmp60:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s31, s76, v51
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v34, v6 :: v_dual_mov_b32 v51, v24
	v_mov_b32_e32 v53, v26
.Ltmp62:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s77, 0, s31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v52, v52, v52
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v51, v51 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v53, v53 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[70:71], v[3:4]
.Ltmp66:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v5, v52 :: v_dual_max_f32 v4, v34, v34
	v_max_f32_e32 v5, v51, v51
	v_dual_max_f32 v51, v53, v53 :: v_dual_lshlrev_b32 v34, 4, v0
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v52, 1, v25
	v_lshlrev_b32_e32 v53, 3, v58
	v_add_nc_u32_e32 v54, 0, v213
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v6, v4 :: v_dual_max_f32 v5, v24, v5
	v_max_f32_e32 v6, v26, v51
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v24, 5, v57
	v_add_nc_u32_e32 v26, 0, v34
	v_add3_u32 v0, v54, v52, v53
	s_barrier
.Ltmp70:
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt vmcnt(0)
	v_add_co_u32 v51, s34, s76, v98
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v24, v26, v24, v53
	ds_store_b128 v0, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp72:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v52, null, s77, 0, s34
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[3:6], v24
.Ltmp74:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v53, s34, s76, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v54, null, s77, 0, s34
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[64:65], v[55:56]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[70:71], v[55:56]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v55, s34, s76, v92
	v_add_co_ci_u32_e64 v56, null, s77, 0, s34
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[64:65], v[51:52]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[70:71], v[51:52]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v51, s39, s76, v91
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[64:65], v[53:54]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[70:71], v[53:54]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v52, null, s77, 0, s39
	v_add_co_u32 v53, s39, s76, v90
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v0, v3, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v54, null, s77, 0, s39
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s40, s[64:65], v[51:52]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[70:71], v[51:52]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v0, 0x2b8cbccc, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v51, s44, s76, v89
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v5, v5, v5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[64:65], v[53:54]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v3, null, 0x40e00000, 0x40e00000, v0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[70:71], v[53:54]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v52, null, s77, 0, s44
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v24, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v53, s44, s76, v84
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[64:65], v[55:56]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[70:71], v[55:56]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v54, null, s77, 0, s44
	v_add_co_u32 v55, s44, s76, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_co_ci_u32_e64 v56, null, s77, 0, s44
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v26, -v3, v24, 1.0
	v_max_f32_e32 v5, 0x2b8cbccc, v5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[64:65], v[51:52]
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_le_i64_e64 s48, s[64:65], v[55:56]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[70:71], v[55:56]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v24, v26, v24
	v_div_scale_f32 v26, vcc_lo, v0, 0x40e00000, v0
	v_div_scale_f32 v56, null, 0x40e00000, 0x40e00000, v5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[70:71], v[51:52]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v55, v26, v24
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v51, s50, s76, v82
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[64:65], v[53:54]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[70:71], v[53:54]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v52, null, s77, 0, s50
	v_add_co_u32 v53, s50, s76, v81
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v54, null, s77, 0, s50
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v57, -v3, v55, v26
	v_rcp_f32_e32 v58, v56
	v_max_f32_e32 v4, v4, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[64:65], v[51:52]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[70:71], v[51:52]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v51, s53, s76, v77
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[64:65], v[53:54]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v52, null, s77, 0, s53
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v55, v57, v24
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[70:71], v[53:54]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v53, 0x2b8cbccc, v4 :: v_dual_max_f32 v6, v6, v6
	v_fma_f32 v4, -v56, v58, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v3, -v3, v55, v26
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v61.h, 0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v54, null, 0x40e00000, 0x40e00000, v53
	v_max_f32_e32 v6, 0x2b8cbccc, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v24, v3, v24, v55
	v_fmac_f32_e32 v58, v4, v58
	v_div_scale_f32 v26, vcc_lo, v5, 0x40e00000, v5
	v_rcp_f32_e32 v57, v54
	v_div_scale_f32 v55, null, 0x40e00000, 0x40e00000, v6
	v_div_fixup_f32 v0, v24, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v59, v26, v58
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s55, s76, v76
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[64:65], v[51:52]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s77, 0, s55
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v60, v55
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[70:71], v[51:52]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v24, -v56, v59, v26
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v51.l, v0.h
	v_mov_b16_e32 v51.h, v61.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v52, -v54, v57, 1.0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[64:65], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v59, v24, v58
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[70:71], v[3:4]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_fmac_f32 v57, v52, v57 :: v_dual_and_b32 v24, 1, v51
	v_div_scale_f32 v51, s60, v53, 0x40e00000, v53
	v_fma_f32 v3, -v55, v60, 1.0
	v_fma_f32 v26, -v56, v59, v26
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_add3_u32 v24, v0, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v0, v51, v57
	v_div_scale_f32 v52, s61, v6, 0x40e00000, v6
	v_fmac_f32_e32 v60, v3, v60
	v_div_fmas_f32 v26, v26, v58, v59
	v_fma_f32 v58, -v54, v0, v51
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v59, 0xffff0000, v24
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s58, s76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v4, null, s77, 0, s58
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v56, v52, v60
	v_fmac_f32_e32 v0, v58, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v58, null, v59, v59, v37
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[64:65], v[3:4]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v62, -v55, v56, v52
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[70:71], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v54, v0, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v51, v58
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v26, v26, 0x40e00000, v5
	v_fmac_f32_e32 v56, v62, v60
	v_div_fmas_f32 v0, v3, v57, v0
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v62, null, v59, v59, v27
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v61.l, v26.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v4, -v55, v56, v52
	v_div_fixup_f32 v0, v0, 0x40e00000, v53
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v5, -v58, v51, 1.0
	v_div_scale_f32 v53, null, v59, v59, v31
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v3, 1, v61
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v4, v4, v60, v56
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v52.l, v0.h
	v_mov_b16_e32 v52.h, v61.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v51, v5, v51
	v_div_scale_f32 v55, vcc_lo, v37, v59, v37
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v4, v4, 0x40e00000, v6
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v54, v53
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v26, v3, 0x7fff
	v_and_b32_e32 v26, 1, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v60, v55, v51
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v61.l, v4.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v63, null, v59, v59, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v26, v0, v26, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v58, v60, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v56, 1, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v52, -v53, v54, 1.0
	v_rcp_f32_e32 v61, v62
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s60, s76, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v60, v0, v51
	v_rcp_f32_e32 v0, v63
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s77, 0, s60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v54, v52, v54
	v_div_scale_f32 v64, s60, v31, v59, v31
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v62, v61, 1.0
	v_fma_f32 v55, -v58, v60, v55
	v_div_scale_f32 v68, null, v59, v59, v40
	v_mul_f32_e32 v65, v64, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v63, v0, 1.0
	v_fmac_f32_e32 v61, v66, v61
	v_div_scale_f32 v66, s61, v27, v59, v27
	v_fma_f32 v58, -v53, v65, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v0, v67, v0
	v_div_scale_f32 v67, null, v59, v59, v38
	v_div_fmas_f32 v51, v55, v51, v60
	v_fmac_f32_e32 v65, v58, v54
	v_mul_f32_e32 v55, v66, v61
	v_rcp_f32_e32 v58, v68
	v_div_scale_f32 v60, s62, v28, v59, v28
	v_rcp_f32_e32 v69, v67
	v_div_fixup_f32 v37, v51, v59, v37
	v_fma_f32 v51, -v53, v65, v64
	v_fma_f32 v53, -v62, v55, v66
	v_mul_f32_e32 v64, v60, v0
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v57, 0xffff0000, v26
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v74, -v68, v58, 1.0
	v_div_fmas_f32 v51, v51, v54, v65
	v_fmac_f32_e32 v55, v53, v61
	v_fma_f32 v53, -v63, v64, v60
	v_fma_f32 v65, -v67, v69, 1.0
	v_fmac_f32_e32 v58, v74, v58
	v_div_scale_f32 v54, s60, v40, v59, v40
	v_div_fixup_f32 v31, v51, v59, v31
	v_fma_f32 v51, -v62, v55, v66
	v_fmac_f32_e32 v64, v53, v0
	v_fmac_f32_e32 v69, v65, v69
	v_div_scale_f32 v65, null, v59, v59, v32
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v53, v54, v58
	v_div_scale_f32 v62, s63, v38, v59, v38
	v_div_fmas_f32 v51, v51, v61, v55
	v_fma_f32 v55, -v63, v64, v60
	v_rcp_f32_e32 v61, v65
	v_div_scale_f32 v66, null, v59, v59, v29
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v60, -v68, v53, v54
	v_mul_f32_e32 v63, v62, v69
	v_div_fmas_f32 v0, v55, v0, v64
	v_rcp_f32_e32 v55, v66
	v_div_fixup_f32 v27, v51, v59, v27
	v_fmac_f32_e32 v53, v60, v58
	v_fma_f32 v60, -v67, v63, v62
	v_fma_f32 v64, -v65, v61, 1.0
	v_div_fixup_f32 v28, v0, v59, v28
	v_div_scale_f32 v51, s61, v32, v59, v32
	v_fma_f32 v0, -v68, v53, v54
	v_fmac_f32_e32 v63, v60, v69
	v_fmac_f32_e32 v61, v64, v61
	v_fma_f32 v54, -v66, v55, 1.0
	v_div_scale_f32 v60, null, v59, v59, v23
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v64, null, v59, v59, v49
	v_div_fmas_f32 v0, v0, v58, v53
	v_fma_f32 v53, -v67, v63, v62
	v_dual_mul_f32 v58, v51, v61 :: v_dual_fmac_f32 v55, v54, v55
	v_rcp_f32_e32 v54, v60
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v62, s60, v29, v59, v29
	v_div_fmas_f32 v53, v53, v69, v63
	v_fma_f32 v63, -v65, v58, v51
	v_rcp_f32_e32 v69, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v67, v62, v55
	v_div_fixup_f32 v40, v0, v59, v40
	v_div_fixup_f32 v38, v53, v59, v38
	v_fma_f32 v68, -v60, v54, 1.0
	v_fmac_f32_e32 v58, v63, v61
	v_div_scale_f32 v63, null, v59, v59, v42
	v_fma_f32 v0, -v66, v67, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v54, v68, v54
	v_div_scale_f32 v53, s62, v23, v59, v23
	v_fma_f32 v68, -v64, v69, 1.0
	v_fma_f32 v51, -v65, v58, v51
	v_rcp_f32_e32 v65, v63
	v_dual_fmac_f32 v67, v0, v55 :: v_dual_mul_f32 v0, v53, v54
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v69, v68, v69
	v_div_scale_f32 v68, s63, v49, v59, v49
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v74, null, v59, v59, v39
	v_div_fmas_f32 v51, v51, v61, v58
	v_fma_f32 v58, -v66, v67, v62
	v_fma_f32 v61, -v60, v0, v53
	v_mul_f32_e32 v62, v68, v69
	v_fma_f32 v66, -v63, v65, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v32, v51, v59, v32
	v_div_fmas_f32 v55, v58, v55, v67
	v_fmac_f32_e32 v0, v61, v54
	v_rcp_f32_e32 v58, v74
	v_fma_f32 v61, -v64, v62, v68
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, s60, v42, v59, v42
	v_fma_f32 v51, -v60, v0, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v62, v61, v69
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v53, v66, v65
	v_div_fixup_f32 v29, v55, v59, v29
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v55, -v74, v58, 1.0
	v_div_scale_f32 v60, null, v59, v59, v33
	v_div_fmas_f32 v0, v51, v54, v0
	v_fma_f32 v51, -v64, v62, v68
	v_fma_f32 v54, -v63, v53, v66
	v_div_scale_f32 v64, null, v59, v59, v22
	v_fmac_f32_e32 v58, v55, v58
	v_rcp_f32_e32 v55, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v53, v54, v65
	v_rcp_f32_e32 v54, v64
	v_div_scale_f32 v61, s61, v39, v59, v39
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v23, v0, v59, v23
	v_div_fmas_f32 v51, v51, v69, v62
	v_mul_f32_e32 v62, v61, v58
	v_fma_f32 v0, -v63, v53, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v67, -v60, v55, 1.0
	v_div_scale_f32 v63, s62, v33, v59, v33
	v_fma_f32 v66, -v64, v54, 1.0
	v_div_fixup_f32 v49, v51, v59, v49
	v_fma_f32 v51, -v74, v62, v61
	v_fmac_f32_e32 v55, v67, v55
	v_div_scale_f32 v67, null, v59, v59, v20
	v_fmac_f32_e32 v54, v66, v54
	v_div_scale_f32 v66, null, v59, v59, v21
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v62, v51, v58
	v_div_fmas_f32 v0, v0, v65, v53
	v_mul_f32_e32 v51, v63, v55
	v_rcp_f32_e32 v53, v67
	v_div_scale_f32 v65, s60, v22, v59, v22
	v_rcp_f32_e32 v69, v66
	v_div_fixup_f32 v42, v0, v59, v42
	v_fma_f32 v0, -v74, v62, v61
	v_fma_f32 v61, -v60, v51, v63
	v_mul_f32_e32 v68, v65, v54
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v52, 0xffff0000, v3
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v74, -v67, v53, 1.0
	v_div_fmas_f32 v0, v0, v58, v62
	v_fmac_f32_e32 v51, v61, v55
	v_fma_f32 v58, -v64, v68, v65
	v_fma_f32 v62, -v66, v69, 1.0
	v_fmac_f32_e32 v53, v74, v53
	v_div_scale_f32 v61, s61, v20, v59, v20
	v_div_fixup_f32 v39, v0, v59, v39
	v_fma_f32 v0, -v60, v51, v63
	v_fmac_f32_e32 v68, v58, v54
	v_fmac_f32_e32 v69, v62, v69
	v_div_scale_f32 v62, null, v57, v57, v46
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v58, v61, v53
	v_div_scale_f32 v60, s63, v21, v59, v21
	v_div_fmas_f32 v0, v0, v55, v51
	v_fma_f32 v51, -v64, v68, v65
	v_rcp_f32_e32 v63, v62
	v_div_scale_f32 v65, null, v57, v57, v41
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v55, -v67, v58, v61
	v_mul_f32_e32 v64, v60, v69
	v_div_fmas_f32 v51, v51, v54, v68
	v_rcp_f32_e32 v54, v65
	v_div_fixup_f32 v33, v0, v59, v33
	v_fmac_f32_e32 v58, v55, v53
	v_fma_f32 v55, -v66, v64, v60
	v_fma_f32 v68, -v62, v63, 1.0
	v_div_fixup_f32 v22, v51, v59, v22
	v_div_scale_f32 v51, s60, v46, v57, v46
	v_fma_f32 v0, -v67, v58, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v64, v55, v69 :: v_dual_fmac_f32 v63, v68, v63
	v_fma_f32 v55, -v65, v54, 1.0
	v_div_scale_f32 v61, null, v57, v57, v35
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v83, null, v52, v52, v95
	v_div_fmas_f32 v0, v0, v53, v58
	v_fma_f32 v53, -v66, v64, v60
	v_mul_f32_e32 v58, v51, v63
	v_fmac_f32_e32 v54, v55, v54
	v_rcp_f32_e32 v55, v61
	v_div_scale_f32 v60, s61, v41, v57, v41
	v_div_scale_f32 v66, null, v57, v57, v36
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v67, v60, v54
	v_div_fmas_f32 v53, v53, v69, v64
	v_fma_f32 v64, -v62, v58, v51
	v_rcp_f32_e32 v69, v66
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v68, -v61, v55, 1.0
	v_div_fixup_f32 v0, v0, v59, v20
	v_div_fixup_f32 v20, v53, v59, v21
	v_fmac_f32_e32 v58, v64, v63
	v_fma_f32 v21, -v65, v67, v60
	v_fmac_f32_e32 v55, v68, v55
	v_div_scale_f32 v53, s62, v35, v57, v35
	v_div_scale_f32 v59, null, v57, v57, v125
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v64, -v66, v69, 1.0
	v_fma_f32 v51, -v62, v58, v51
	v_fmac_f32_e32 v67, v21, v54
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v62, v53, v55
	v_rcp_f32_e32 v68, v59
	v_fmac_f32_e32 v69, v64, v69
	v_div_scale_f32 v64, s63, v36, v57, v36
	v_div_fmas_f32 v21, v51, v63, v58
	v_fma_f32 v51, -v65, v67, v60
	v_div_scale_f32 v65, null, v57, v57, v126
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v58, -v61, v62, v53
	v_mul_f32_e32 v60, v64, v69
	v_div_fmas_f32 v51, v51, v54, v67
	v_rcp_f32_e32 v54, v65
	v_fma_f32 v63, -v59, v68, 1.0
	v_fmac_f32_e32 v62, v58, v55
	v_fma_f32 v58, -v66, v60, v64
	v_div_fixup_f32 v21, v21, v57, v46
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v68, v63, v68
	v_div_scale_f32 v63, s60, v125, v57, v125
	v_fma_f32 v46, -v61, v62, v53
	v_fmac_f32_e32 v60, v58, v69
	v_fma_f32 v53, -v65, v54, 1.0
	v_div_scale_f32 v58, null, v57, v57, v45
	v_div_fixup_f32 v41, v51, v57, v41
	v_mul_f32_e32 v51, v63, v68
	v_div_fmas_f32 v46, v46, v55, v62
	v_fma_f32 v55, -v66, v60, v64
	v_fmac_f32_e32 v54, v53, v54
	v_rcp_f32_e32 v53, v58
	v_div_scale_f32 v64, null, v57, v57, v44
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v61, -v59, v51, v63
	v_div_fmas_f32 v55, v55, v69, v60
	v_rcp_f32_e32 v60, v64
	v_div_scale_f32 v62, s61, v126, v57, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v51, v61, v68
	v_fma_f32 v66, -v58, v53, 1.0
	v_div_fixup_f32 v35, v46, v57, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v61, v62, v54
	v_div_fixup_f32 v36, v55, v57, v36
	v_fma_f32 v46, -v59, v51, v63
	v_fmac_f32_e32 v53, v66, v53
	v_fma_f32 v63, -v64, v60, 1.0
	v_div_scale_f32 v66, null, v57, v57, v19
	v_fma_f32 v55, -v65, v61, v62
	v_div_scale_f32 v59, s62, v45, v57, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v60, v63, v60
	v_rcp_f32_e32 v63, v66
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v61, v55, v54
	v_div_fmas_f32 v46, v46, v68, v51
	v_mul_f32_e32 v55, v59, v53
	v_div_scale_f32 v67, s60, v44, v57, v44
	v_div_scale_f32 v68, null, v57, v57, v117
	v_fma_f32 v51, -v65, v61, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v58, v55, v59
	v_mul_f32_e32 v65, v67, v60
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v69, v68
	v_fma_f32 v74, -v66, v63, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v55, v62, v53
	v_div_fmas_f32 v51, v51, v54, v61
	v_fma_f32 v54, -v64, v65, v67
	v_fmac_f32_e32 v63, v74, v63
	v_div_scale_f32 v61, s61, v19, v57, v19
	v_fma_f32 v58, -v58, v55, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v62, -v68, v69, 1.0
	v_dual_fmac_f32 v65, v54, v60 :: v_dual_mul_f32 v54, v61, v63
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v59, s63, v117, v57, v117
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v69, v62, v69
	v_div_fmas_f32 v53, v58, v53, v55
	v_fma_f32 v58, -v66, v54, v61
	v_div_scale_f32 v74, null, v57, v57, v119
	v_div_scale_f32 v62, null, v57, v57, v118
	v_fma_f32 v55, -v64, v65, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v67, v59, v69 :: v_dual_fmac_f32 v54, v58, v63
	v_rcp_f32_e32 v58, v74
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v64, v62
	v_div_fmas_f32 v55, v55, v60, v65
	v_fma_f32 v60, -v68, v67, v59
	v_div_fixup_f32 v45, v53, v57, v45
	v_fma_f32 v53, -v66, v54, v61
	v_div_scale_f32 v61, null, v57, v57, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v67, v60, v69
	v_fma_f32 v60, -v74, v58, 1.0
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v65, -v62, v64, 1.0
	v_div_fixup_f32 v44, v55, v57, v44
	v_div_scale_f32 v55, s60, v118, v57, v118
	v_fmac_f32_e32 v58, v60, v58
	v_rcp_f32_e32 v60, v61
	v_fmac_f32_e32 v64, v65, v64
	v_div_fmas_f32 v53, v53, v63, v54
	v_fma_f32 v54, -v68, v67, v59
	v_div_scale_f32 v65, null, v57, v57, v18
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v59, v55, v64
	v_div_scale_f32 v63, s61, v119, v57, v119
	v_div_fmas_f32 v54, v54, v69, v67
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v68, -v61, v60, 1.0
	v_rcp_f32_e32 v69, v65
	v_fma_f32 v66, -v62, v59, v55
	v_mul_f32_e32 v67, v63, v58
	v_div_fixup_f32 v19, v53, v57, v19
	v_fmac_f32_e32 v60, v68, v60
	v_div_scale_f32 v68, null, v57, v57, v17
	v_div_fixup_f32 v53, v54, v57, v117
	v_fmac_f32_e32 v59, v66, v64
	v_fma_f32 v54, -v74, v67, v63
	v_div_scale_f32 v66, s62, v43, v57, v43
	v_fma_f32 v75, -v65, v69, 1.0
	v_rcp_f32_e32 v76, v68
	v_fma_f32 v55, -v62, v59, v55
	v_fmac_f32_e32 v67, v54, v58
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v62, v66, v60 :: v_dual_fmac_f32 v69, v75, v69
	v_div_scale_f32 v75, s63, v18, v57, v18
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v46, v46, v57, v125
	v_div_fmas_f32 v54, v55, v64, v59
	v_fma_f32 v55, -v74, v67, v63
	v_fma_f32 v59, -v61, v62, v66
	v_mul_f32_e32 v63, v75, v69
	v_fma_f32 v64, -v68, v76, 1.0
	v_div_scale_f32 v74, null, v57, v57, v16
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v62, v59, v60
	v_div_fmas_f32 v55, v55, v58, v67
	v_rcp_f32_e32 v58, v74
	v_fma_f32 v59, -v65, v63, v75
	v_fmac_f32_e32 v76, v64, v76
	v_div_scale_f32 v64, s60, v17, v57, v17
	v_fma_f32 v61, -v61, v62, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v63, v59, v69
	v_div_scale_f32 v67, null, v52, v52, v109
	v_mul_f32_e32 v59, v64, v76
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v66, -v74, v58, 1.0
	v_div_fmas_f32 v60, v61, v60, v62
	v_fma_f32 v61, -v65, v63, v75
	v_fma_f32 v62, -v68, v59, v64
	v_rcp_f32_e32 v65, v67
	v_fmac_f32_e32 v58, v66, v58
	v_div_scale_f32 v66, s61, v16, v57, v16
	v_div_scale_f32 v75, null, v52, v52, v110
	v_fmac_f32_e32 v59, v62, v76
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v43, v60, v57, v43
	v_div_fmas_f32 v61, v61, v69, v63
	v_rcp_f32_e32 v62, v75
	v_mul_f32_e32 v63, v66, v58
	v_fma_f32 v69, -v67, v65, 1.0
	v_fma_f32 v60, -v68, v59, v64
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v18, v61, v57, v18
	v_fma_f32 v61, -v74, v63, v66
	v_fmac_f32_e32 v65, v69, v65
	v_div_scale_f32 v64, s62, v109, v52, v109
	v_div_scale_f32 v69, null, v52, v52, v47
	v_div_fmas_f32 v59, v60, v76, v59
	v_div_scale_f32 v76, null, v52, v52, v48
	v_fma_f32 v68, -v75, v62, 1.0
	v_dual_fmac_f32 v63, v61, v58 :: v_dual_mul_f32 v60, v64, v65
	v_rcp_f32_e32 v61, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v77, v76
	v_fmac_f32_e32 v62, v68, v62
	v_div_scale_f32 v68, s60, v110, v52, v110
	v_div_fixup_f32 v17, v59, v57, v17
	v_fma_f32 v59, -v74, v63, v66
	v_fma_f32 v66, -v67, v60, v64
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v74, v68, v62
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v81, -v69, v61, 1.0
	v_div_fmas_f32 v58, v59, v58, v63
	v_fmac_f32_e32 v60, v66, v65
	v_fma_f32 v66, -v76, v77, 1.0
	v_div_fixup_f32 v51, v51, v57, v126
	v_div_fixup_f32 v54, v54, v57, v118
	v_div_fixup_f32 v55, v55, v57, v119
	v_fma_f32 v59, -v75, v74, v68
	v_fmac_f32_e32 v61, v81, v61
	v_div_scale_f32 v63, s61, v47, v52, v47
	v_div_fixup_f32 v16, v58, v57, v16
	v_fma_f32 v57, -v67, v60, v64
	v_fmac_f32_e32 v77, v66, v77
	v_div_scale_f32 v66, null, v52, v52, v101
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v74, v59, v62
	v_mul_f32_e32 v59, v63, v61
	v_div_scale_f32 v64, s63, v48, v52, v48
	v_div_fmas_f32 v57, v57, v65, v60
	v_rcp_f32_e32 v65, v66
	v_fma_f32 v58, -v75, v74, v68
	v_fma_f32 v60, -v69, v59, v63
	v_mul_f32_e32 v67, v64, v77
	v_div_scale_f32 v68, null, v52, v52, v102
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v59, v60, v61
	v_div_fmas_f32 v58, v58, v62, v74
	v_rcp_f32_e32 v60, v68
	v_fma_f32 v62, -v76, v67, v64
	v_fma_f32 v74, -v66, v65, 1.0
	v_fma_f32 v63, -v69, v59, v63
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v75, null, v52, v52, v104
	v_fmac_f32_e32 v67, v62, v77
	v_fmac_f32_e32 v65, v74, v65
	v_div_scale_f32 v74, null, v52, v52, v103
	v_div_scale_f32 v62, s60, v101, v52, v101
	v_fma_f32 v69, -v68, v60, 1.0
	v_div_fmas_f32 v59, v63, v61, v59
	v_fma_f32 v61, -v76, v67, v64
	v_rcp_f32_e32 v64, v74
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v63, v62, v65 :: v_dual_fmac_f32 v60, v69, v60
	v_div_scale_f32 v69, s61, v102, v52, v102
	v_rcp_f32_e32 v81, v75
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v47, v59, v52, v47
	v_div_fmas_f32 v61, v61, v77, v67
	v_fma_f32 v67, -v66, v63, v62
	v_mul_f32_e32 v76, v69, v60
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v77, -v74, v64, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v48, v61, v52, v48
	v_fmac_f32_e32 v63, v67, v65
	v_fma_f32 v59, -v68, v76, v69
	v_fmac_f32_e32 v64, v77, v64
	v_div_scale_f32 v61, s62, v103, v52, v103
	v_div_scale_f32 v67, null, v52, v52, v15
	v_fma_f32 v77, -v75, v81, 1.0
	v_fma_f32 v62, -v66, v63, v62
	v_fmac_f32_e32 v76, v59, v60
	v_mul_f32_e32 v66, v61, v64
	v_rcp_f32_e32 v82, v67
	v_fmac_f32_e32 v81, v77, v81
	v_div_scale_f32 v77, s63, v104, v52, v104
	v_div_fmas_f32 v59, v62, v65, v63
	v_fma_f32 v62, -v68, v76, v69
	v_fma_f32 v63, -v74, v66, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v65, v77, v81
	v_div_scale_f32 v69, null, v52, v52, v93
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v68, -v67, v82, 1.0
	v_div_fmas_f32 v60, v62, v60, v76
	v_fmac_f32_e32 v66, v63, v64
	v_rcp_f32_e32 v63, v69
	v_fma_f32 v62, -v75, v65, v77
	v_fmac_f32_e32 v82, v68, v82
	v_div_scale_f32 v68, s60, v15, v52, v15
	v_fma_f32 v61, -v74, v66, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v65, v62, v81
	v_div_scale_f32 v76, null, v52, v52, v94
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v74, v68, v82
	v_fma_f32 v62, -v69, v63, 1.0
	v_div_fmas_f32 v61, v61, v64, v66
	v_fma_f32 v64, -v75, v65, v77
	v_rcp_f32_e32 v75, v76
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v66, -v67, v74, v68
	v_fmac_f32_e32 v63, v62, v63
	v_div_scale_f32 v77, s61, v93, v52, v93
	v_div_fmas_f32 v62, v64, v81, v65
	v_rcp_f32_e32 v64, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v74, v66, v82 :: v_dual_mul_f32 v65, v77, v63
	v_fma_f32 v66, -v76, v75, 1.0
	v_div_scale_f32 v84, null, v52, v52, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v67, v74, v68
	v_fma_f32 v68, -v69, v65, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v75, v66, v75
	v_div_scale_f32 v66, s62, v94, v52, v94
	v_fma_f32 v81, -v83, v64, 1.0
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v65, v68, v63
	v_div_fmas_f32 v67, v67, v82, v74
	v_mul_f32_e32 v68, v66, v75
	v_fmac_f32_e32 v64, v81, v64
	v_rcp_f32_e32 v74, v84
	v_div_scale_f32 v81, s60, v95, v52, v95
	v_div_scale_f32 v82, null, v52, v52, v14
	v_div_fixup_f32 v15, v67, v52, v15
	v_fma_f32 v67, -v69, v65, v77
	v_fma_f32 v69, -v76, v68, v66
	v_mul_f32_e32 v77, v81, v64
	v_rcp_f32_e32 v89, v82
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v84, v74, 1.0
	v_div_fmas_f32 v63, v67, v63, v65
	v_fmac_f32_e32 v68, v69, v75
	v_fma_f32 v65, -v83, v77, v81
	v_div_scale_f32 v67, s61, v96, v52, v96
	v_fmac_f32_e32 v74, v90, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v66, -v76, v68, v66
	v_fma_f32 v69, -v82, v89, 1.0
	v_fmac_f32_e32 v77, v65, v64
	v_div_scale_f32 v76, null, v52, v52, v12
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v65, v67, v74
	v_fmac_f32_e32 v89, v69, v89
	v_div_scale_f32 v69, s63, v14, v52, v14
	v_div_fmas_f32 v66, v66, v75, v68
	v_fma_f32 v68, -v83, v77, v81
	v_rcp_f32_e32 v81, v76
	v_fma_f32 v75, -v84, v65, v67
	v_mul_f32_e32 v83, v69, v89
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v64, v68, v64, v77
	v_fmac_f32_e32 v65, v75, v74
	v_fma_f32 v75, -v82, v83, v69
	s_mov_b32 vcc_lo, s61
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_add3_u32 v4, v4, v56, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v76, v81, 1.0
	v_fma_f32 v67, -v84, v65, v67
	v_fmac_f32_e32 v83, v75, v89
	v_div_scale_f32 v75, s60, v12, v52, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v77, v81
	v_div_fmas_f32 v65, v67, v74, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v82, v83, v69
	s_mov_b32 vcc_lo, s63
	v_dual_mul_f32 v69, v75, v81 :: v_dual_and_b32 v56, 0xffff0000, v4
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v67, v67, v89, v83
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v74, null, v56, v56, v85
	v_fma_f32 v83, -v76, v69, v75
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v82, v74
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v69, v83, v81
	v_div_scale_f32 v90, null, v52, v52, v13
	v_div_fixup_f32 v14, v67, v52, v14
	v_div_fixup_f32 v63, v63, v52, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v76, v69, v75
	v_rcp_f32_e32 v68, v90
	v_div_fixup_f32 v64, v64, v52, v95
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v74, v82, 1.0
	v_div_fixup_f32 v57, v57, v52, v109
	v_div_fmas_f32 v69, v75, v81, v69
	v_div_fixup_f32 v58, v58, v52, v110
	v_div_fixup_f32 v59, v59, v52, v101
	v_fmac_f32_e32 v82, v91, v82
	v_div_fixup_f32 v60, v60, v52, v102
	v_div_fixup_f32 v61, v61, v52, v103
	v_fma_f32 v77, -v90, v68, 1.0
	v_div_fixup_f32 v62, v62, v52, v104
	v_div_fixup_f32 v66, v66, v52, v94
	v_div_fixup_f32 v65, v65, v52, v96
	v_div_fixup_f32 v12, v69, v52, v12
	v_fmac_f32_e32 v68, v77, v68
	v_div_scale_f32 v77, s61, v13, v52, v13
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v84, v77, v68
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v67, -v90, v84, v77
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v67, v68
	v_div_scale_f32 v67, s62, v85, v56, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v75, -v90, v84, v77
	v_mul_f32_e32 v77, v67, v82
	v_div_scale_f32 v89, null, v56, v56, v86
	v_div_scale_f32 v76, null, v56, v56, v88
	v_div_scale_f32 v93, null, v56, v56, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v83, v89
	v_rcp_f32_e32 v91, v76
	v_div_scale_f32 v81, s60, v86, v56, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v95, v93
	v_div_fmas_f32 v68, v75, v68, v84
	v_div_scale_f32 v69, null, v56, v56, v73
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v89, v83, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v90, -v76, v91, 1.0
	v_div_fixup_f32 v13, v68, v52, v13
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v68, -v93, v95, 1.0
	v_fmac_f32_e32 v83, v92, v83
	v_fma_f32 v92, -v74, v77, v67
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v90, s63, v88, v56, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v94, v81, v83 :: v_dual_fmac_f32 v77, v92, v82
	v_fmac_f32_e32 v95, v68, v95
	v_mul_f32_e32 v84, v90, v91
	v_div_scale_f32 v68, s61, v87, v56, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v74, v77, v67
	v_fma_f32 v75, -v89, v94, v81
	v_fma_f32 v67, -v76, v84, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v15, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v52, v52, v82, v77
	v_fmac_f32_e32 v94, v75, v83
	v_fmac_f32_e32 v84, v67, v91
	v_rcp_f32_e32 v67, v69
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v77, null, v56, v56, v78
	v_fma_f32 v74, -v89, v94, v81
	v_fma_f32 v75, -v76, v84, v90
	v_mul_f32_e32 v76, v68, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v82, v77
	v_div_fixup_f32 v52, v52, v56, v85
	v_div_fmas_f32 v74, v74, v83, v94
	v_fma_f32 v81, -v69, v67, 1.0
	v_fma_f32 v83, -v93, v76, v68
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v85, null, v56, v56, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v67, v81, v67
	v_div_scale_f32 v81, s60, v73, v56, v73
	v_fmac_f32_e32 v76, v83, v95
	v_div_fixup_f32 v74, v74, v56, v86
	v_div_fmas_f32 v75, v75, v91, v84
	v_mul_f32_e32 v83, v81, v67
	v_fma_f32 v84, -v77, v82, 1.0
	v_fma_f32 v68, -v93, v76, v68
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v75, v75, v56, v88
	v_fma_f32 v86, -v69, v83, v81
	v_rcp_f32_e32 v88, v85
	v_div_fmas_f32 v68, v68, v95, v76
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v82, v84, v82 :: v_dual_fmac_f32 v83, v86, v67
	v_div_scale_f32 v84, s62, v78, v56, v78
	v_div_scale_f32 v86, null, v56, v56, v80
	v_fma_f32 v69, -v69, v83, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v76, v84, v82
	v_div_fixup_f32 v68, v68, v56, v87
	v_fma_f32 v87, -v85, v88, 1.0
	v_rcp_f32_e32 v89, v86
	v_div_fmas_f32 v67, v69, v67, v83
	v_div_scale_f32 v69, null, v56, v56, v11
	v_fma_f32 v81, -v77, v76, v84
	v_fmac_f32_e32 v88, v87, v88
	v_div_scale_f32 v87, null, v56, v56, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v83, v69
	v_fmac_f32_e32 v76, v81, v82
	v_div_scale_f32 v81, s60, v79, v56, v79
	v_div_fixup_f32 v67, v67, v56, v73
	v_fma_f32 v73, -v86, v89, 1.0
	v_rcp_f32_e32 v91, v87
	v_fma_f32 v77, -v77, v76, v84
	v_mul_f32_e32 v84, v81, v88
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v69, v83, 1.0
	v_fmac_f32_e32 v89, v73, v89
	v_div_scale_f32 v73, s61, v80, v56, v80
	v_div_fmas_f32 v76, v77, v82, v76
	v_fmac_f32_e32 v83, v90, v83
	v_div_scale_f32 v90, null, v56, v56, v70
	v_fma_f32 v77, -v85, v84, v81
	v_mul_f32_e32 v82, v73, v89
	v_div_scale_f32 v92, s62, v11, v56, v11
	v_fma_f32 v93, -v87, v91, 1.0
	v_rcp_f32_e32 v94, v90
	v_fmac_f32_e32 v84, v77, v88
	v_fma_f32 v77, -v86, v82, v73
	v_mul_f32_e32 v95, v92, v83
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s63, v50, v56, v50
	v_div_fixup_f32 v76, v76, v56, v78
	v_fma_f32 v78, -v85, v84, v81
	v_fmac_f32_e32 v82, v77, v89
	v_fma_f32 v77, -v69, v95, v92
	v_mul_f32_e32 v81, v93, v91
	v_fma_f32 v85, -v90, v94, 1.0
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v73, -v86, v82, v73
	v_div_fmas_f32 v78, v78, v88, v84
	v_fmac_f32_e32 v95, v77, v83
	v_fma_f32 v77, -v87, v81, v93
	v_fmac_f32_e32 v94, v85, v94
	v_div_scale_f32 v84, s60, v70, v56, v70
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v81, v77, v91
	v_div_fmas_f32 v73, v73, v89, v82
	v_mul_f32_e32 v77, v84, v94
	v_div_scale_f32 v82, null, v56, v56, v72
	v_fma_f32 v69, -v69, v95, v92
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v85, -v90, v77, v84
	v_rcp_f32_e32 v86, v82
	v_div_fixup_f32 v78, v78, v56, v79
	v_div_fmas_f32 v69, v69, v83, v95
	v_fma_f32 v83, -v87, v81, v93
	v_fmac_f32_e32 v77, v85, v94
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v73, v73, v56, v80
	v_div_fixup_f32 v11, v69, v56, v11
	v_div_scale_f32 v79, null, v56, v56, v71
	v_fma_f32 v69, -v90, v77, v84
	v_fma_f32 v80, -v82, v86, 1.0
	v_div_fmas_f32 v81, v83, v91, v81
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v88, null, v56, v56, v10
	v_div_fmas_f32 v69, v69, v94, v77
	v_rcp_f32_e32 v77, v79
	v_fmac_f32_e32 v86, v80, v86
	v_div_scale_f32 v80, null, v56, v56, v8
	v_div_fixup_f32 v50, v81, v56, v50
	v_div_scale_f32 v81, null, v56, v56, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v84, v80
	v_div_scale_f32 v83, vcc_lo, v72, v56, v72
	v_rcp_f32_e32 v85, v81
	v_div_fixup_f32 v69, v69, v56, v70
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v70, -v79, v77, 1.0
	v_rcp_f32_e32 v90, v88
	v_mul_f32_e32 v87, v83, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v77, v70, v77
	v_div_scale_f32 v70, s60, v71, v56, v71
	v_fma_f32 v89, -v80, v84, 1.0
	v_fma_f32 v92, -v81, v85, 1.0
	v_fma_f32 v91, -v82, v87, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v93, v70, v77
	v_fma_f32 v94, -v88, v90, 1.0
	v_fmac_f32_e32 v84, v89, v84
	v_div_scale_f32 v89, s61, v8, v56, v8
	v_fmac_f32_e32 v85, v92, v85
	v_div_scale_f32 v92, s62, v9, v56, v9
	v_fmac_f32_e32 v87, v91, v86
	v_fma_f32 v91, -v79, v93, v70
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v95, v89, v84 :: v_dual_mul_f32 v96, v92, v85
	v_fmac_f32_e32 v90, v94, v90
	v_div_scale_f32 v94, s63, v10, v56, v10
	v_fma_f32 v82, -v82, v87, v83
	v_fmac_f32_e32 v93, v91, v77
	v_fma_f32 v83, -v80, v95, v89
	v_fma_f32 v91, -v81, v96, v92
	v_mul_f32_e32 v97, v94, v90
	v_div_fmas_f32 v82, v82, v86, v87
	v_fma_f32 v70, -v79, v93, v70
	v_fmac_f32_e32 v95, v83, v84
	v_fmac_f32_e32 v96, v91, v85
	v_fma_f32 v79, -v88, v97, v94
	s_mov_b32 vcc_lo, s60
	s_mov_b32 s60, 0xc1000000
	v_div_fmas_f32 v70, v70, v77, v93
	v_fma_f32 v77, -v80, v95, v89
	v_fmac_f32_e32 v97, v79, v90
	v_fma_f32 v79, -v81, v96, v92
	s_mov_b32 vcc_lo, s61
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v21, v21, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v84, v95
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v80, -v88, v97, v94
	v_div_fmas_f32 v79, v79, v85, v96
	s_mov_b32 vcc_lo, s63
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v36, v36, s60, 0x40e00000
	v_med3_f32 v51, v51, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v90, v97
	v_div_fixup_f32 v9, v79, v56, v9
	v_div_fixup_f32 v72, v82, v56, v72
	v_div_fixup_f32 v70, v70, v56, v71
	v_div_fixup_f32 v8, v77, v56, v8
	v_div_fixup_f32 v10, v80, v56, v10
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v56, v57
	v_rndne_f32_e32 v57, v58
	v_rndne_f32_e32 v58, v59
	v_rndne_f32_e32 v59, v60
	v_rndne_f32_e32 v60, v61
	v_rndne_f32_e32 v61, v62
	v_rndne_f32_e32 v62, v63
	v_rndne_f32_e32 v63, v66
	v_rndne_f32_e32 v71, v75
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v31, v31, s60, 0x40e00000
	v_med3_f32 v32, v32, s60, 0x40e00000
	v_med3_f32 v33, v33, s60, 0x40e00000
	v_med3_f32 v0, v0, s60, 0x40e00000
	v_med3_f32 v9, v9, s60, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v79, v51
	v_med3_f32 v29, v29, s60, 0x40e00000
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_med3_f32 v63, v63, s60, 0x40e00000
	v_med3_f32 v12, v12, s60, 0x40e00000
	v_med3_f32 v71, v71, s60, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v105, v9
	v_and_b32_e32 v9, 15, v21
	v_and_b32_e32 v21, 15, v36
	v_and_b32_e32 v36, 15, v79
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v79, 16, v107
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v74
	v_rndne_f32_e32 v74, v76
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s60, 0x40e00000
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v76, v39
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v89, v63
	v_cvt_i32_f32_e32 v92, v12
	v_cvt_i32_f32_e32 v95, v71
	v_and_b32_e32 v12, 15, v31
	v_and_b32_e32 v39, 15, v32
	v_and_b32_e32 v63, 15, v33
	v_and_b32_e32 v71, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 13, v107
	v_and_b32_e32 v31, 0x2f0, v30
	v_lshlrev_b32_e32 v32, 8, v79
	v_and_b32_e32 v33, 64, v107
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v10, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s60, 0x40e00000
	v_med3_f32 v56, v56, s60, 0x40e00000
	v_med3_f32 v52, v52, s60, 0x40e00000
	v_cvt_i32_f32_e32 v81, v43
	v_and_b32_e32 v43, 15, v29
	v_and_b32_e32 v29, 15, v58
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v58, 3, v213
	v_and_or_b32 v0, 0xe000, v0, v32
	v_xor_b32_e32 v31, v31, v33
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v70, v70
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v27, v27, s60, 0x40e00000
	v_med3_f32 v28, v28, s60, 0x40e00000
	v_med3_f32 v40, v40, s60, 0x40e00000
	v_med3_f32 v46, v46, s60, 0x40e00000
	v_med3_f32 v67, v67, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v50, v50
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v23, v23, s60, 0x40e00000
	v_med3_f32 v49, v49, s60, 0x40e00000
	v_med3_f32 v41, v41, s60, 0x40e00000
	v_med3_f32 v19, v19, s60, 0x40e00000
	v_med3_f32 v57, v57, s60, 0x40e00000
	v_med3_f32 v15, v15, s60, 0x40e00000
	v_med3_f32 v66, v66, s60, 0x40e00000
	v_med3_f32 v11, v11, s60, 0x40e00000
	v_med3_f32 v8, v8, s60, 0x40e00000
	v_med3_f32 v10, v10, s60, 0x40e00000
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v84, v56
	v_cvt_i32_f32_e32 v94, v52
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v0, v0, v58, v31
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v64, v64
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s60, 0x40e00000
	v_med3_f32 v20, v20, s60, 0x40e00000
	v_med3_f32 v16, v16, s60, 0x40e00000
	v_med3_f32 v59, v59, s60, 0x40e00000
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_med3_f32 v74, v74, s60, 0x40e00000
	v_med3_f32 v70, v70, s60, 0x40e00000
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v97, v67
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v72, v72
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v47, v47, s60, 0x40e00000
	v_med3_f32 v48, v48, s60, 0x40e00000
	v_med3_f32 v14, v14, s60, 0x40e00000
	v_med3_f32 v13, v13, s60, 0x40e00000
	v_med3_f32 v50, v50, s60, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v100, v11
	v_cvt_i32_f32_e32 v104, v8
	v_cvt_i32_f32_e32 v106, v10
	v_and_b32_e32 v8, 15, v37
	v_and_b32_e32 v10, 15, v84
	v_and_b32_e32 v11, 15, v94
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v31, 0, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v75, v78
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s60, 0x40e00000
	v_med3_f32 v64, v64, s60, 0x40e00000
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v77, v20
	v_cvt_i32_f32_e32 v83, v16
	v_cvt_i32_f32_e32 v87, v59
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v70, v70
	v_and_b32_e32 v16, 15, v27
	v_and_b32_e32 v20, 15, v28
	v_and_b32_e32 v27, 15, v40
	v_and_b32_e32 v28, 15, v46
	v_and_b32_e32 v30, 15, v97
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v73, v73
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s60, 0x40e00000
	v_med3_f32 v45, v45, s60, 0x40e00000
	v_med3_f32 v53, v53, s60, 0x40e00000
	v_med3_f32 v54, v54, s60, 0x40e00000
	v_med3_f32 v55, v55, s60, 0x40e00000
	v_med3_f32 v18, v18, s60, 0x40e00000
	v_med3_f32 v61, v61, s60, 0x40e00000
	v_med3_f32 v62, v62, s60, 0x40e00000
	v_med3_f32 v69, v69, s60, 0x40e00000
	v_med3_f32 v72, v72, s60, 0x40e00000
	v_cvt_i32_f32_e32 v85, v47
	v_cvt_i32_f32_e32 v86, v48
	v_cvt_i32_f32_e32 v91, v14
	v_cvt_i32_f32_e32 v93, v13
	v_cvt_i32_f32_e32 v101, v50
	v_and_b32_e32 v47, 15, v23
	v_and_b32_e32 v51, 15, v49
	v_and_b32_e32 v13, 15, v41
	v_and_b32_e32 v48, 15, v19
	v_and_b32_e32 v14, 15, v57
	v_and_b32_e32 v49, 15, v15
	v_and_b32_e32 v15, 15, v66
	v_and_b32_e32 v50, 15, v100
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v31, v[8:11]
	ds_store_b128 v31, v[27:30] offset:256
	v_xad_u32 v8, v0, 16, 0
	v_lshlrev_b32_e32 v9, 6, v107
	v_lshlrev_b32_e32 v10, 5, v25
	v_cndmask_b32_e64 v11, 0x2010, 0, s2
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v22, v22, s60, 0x40e00000
	v_med3_f32 v17, v17, s60, 0x40e00000
	v_med3_f32 v60, v60, s60, 0x40e00000
	v_med3_f32 v75, v75, s60, 0x40e00000
	v_cvt_i32_f32_e32 v78, v35
	v_cvt_i32_f32_e32 v90, v64
	v_and_b32_e32 v35, 15, v38
	v_and_b32_e32 v64, 15, v81
	v_and_b32_e32 v37, 15, v87
	v_and_b32_e32 v65, 15, v65
	v_and_b32_e32 v38, 15, v74
	v_and_b32_e32 v66, 15, v70
	v_med3_f32 v68, v68, s60, 0x40e00000
	v_med3_f32 v44, v44, s60, 0x40e00000
	v_med3_f32 v73, v73, s60, 0x40e00000
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v80, v55
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v102, v69
	v_cvt_i32_f32_e32 v103, v72
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v31, v[47:50] offset:2048
	ds_store_b128 v31, v[63:66] offset:2304
	ds_store_b128 v8, v[12:15]
	ds_store_b128 v8, v[35:38] offset:256
	v_lshlrev_b32_e32 v13, 2, v79
	v_and_or_b32 v9, 0x300, v9, v10
	v_xor_b32_e32 v10, v11, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v82, v17
	v_cvt_i32_f32_e32 v88, v60
	v_cvt_i32_f32_e32 v98, v75
	v_cvt_i32_f32_e32 v96, v68
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v99, v73
	v_and_b32_e32 v55, 15, v42
	v_and_b32_e32 v59, 15, v76
	v_and_b32_e32 v17, 15, v78
	v_and_b32_e32 v40, 15, v45
	v_and_b32_e32 v52, 15, v53
	v_and_b32_e32 v56, 15, v54
	v_and_b32_e32 v60, 15, v80
	v_and_b32_e32 v68, 15, v18
	v_and_b32_e32 v18, 15, v85
	v_and_b32_e32 v45, 15, v61
	v_and_b32_e32 v53, 15, v62
	v_and_b32_e32 v57, 15, v89
	v_and_b32_e32 v61, 15, v90
	v_and_b32_e32 v19, 15, v95
	v_and_b32_e32 v54, 15, v101
	v_and_b32_e32 v58, 15, v102
	v_and_b32_e32 v62, 15, v103
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v12, v0, 32, 0
	v_xad_u32 v0, v0, 48, 0
	v_or3_b32 v25, v10, v9, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v67, 15, v22
	v_and_b32_e32 v75, 15, v77
	v_and_b32_e32 v72, 15, v82
	v_and_b32_e32 v76, 15, v83
	v_and_b32_e32 v41, 15, v88
	v_and_b32_e32 v69, 15, v91
	v_and_b32_e32 v73, 15, v92
	v_and_b32_e32 v77, 15, v93
	v_and_b32_e32 v42, 15, v98
	v_and_b32_e32 v70, 15, v104
	v_and_b32_e32 v74, 15, v105
	v_and_b32_e32 v78, 15, v106
	v_and_b32_e32 v22, 15, v86
	v_and_b32_e32 v23, 15, v96
	v_and_b32_e32 v44, 15, v44
	v_and_b32_e32 v46, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v8, v[51:54] offset:2048
	ds_store_b128 v8, v[67:70] offset:2304
	ds_store_b128 v12, v[16:19]
	ds_store_b128 v12, v[39:42] offset:256
	ds_store_b128 v12, v[55:58] offset:2048
	ds_store_b128 v12, v[71:74] offset:2304
	ds_store_b128 v0, v[20:23]
	ds_store_b128 v0, v[43:46] offset:256
	ds_store_b128 v0, v[59:62] offset:2048
	ds_store_b128 v0, v[75:78] offset:2304
	v_xad_u32 v0, 0x4020, v25, 0
	v_add_nc_u32_e32 v20, 0, v25
	v_xad_u32 v55, 0x8040, v25, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v0
	ds_load_b128 v[31:34], v0 offset:128
	ds_load_b128 v[35:38], v0 offset:4096
	ds_load_b128 v[39:42], v0 offset:4224
	v_xad_u32 v0, 0xc060, v25, 0
	ds_load_b128 v[8:11], v20
	ds_load_b128 v[12:15], v20 offset:128
	ds_load_b128 v[16:19], v20 offset:4096
	ds_load_b128 v[20:23], v20 offset:4224
	ds_load_b128 v[43:46], v55
	ds_load_b128 v[47:50], v55 offset:128
	ds_load_b128 v[51:54], v55 offset:4096
	ds_load_b128 v[55:58], v55 offset:4224
	ds_load_b128 v[59:62], v0 offset:4096
	ds_load_b128 v[63:66], v0
	ds_load_b128 v[67:70], v0 offset:128
	ds_load_b128 v[71:74], v0 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v75, s2, s76, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v76, null, s77, 0, s2
	v_add_co_u32 v77, s2, s76, v112
	v_add_co_ci_u32_e64 v78, null, s77, 0, s2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[70:71], v[5:6]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v5, s76, v112
	v_lshl_or_b32 v0, s79, 7, v111
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[64:65], v[75:76]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[70:71], v[75:76]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	s_waitcnt lgkmcnt(5)
	v_lshl_or_b32 v43, v51, 4, v43
	s_waitcnt lgkmcnt(4)
	v_lshl_or_b32 v48, v56, 4, v48
	v_lshl_or_b32 v75, v35, 4, v27
	v_lshl_or_b32 v25, v16, 4, v8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 2, v5
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v56, v72, 4, v68
	v_lshl_or_b32 v68, v18, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 4, v5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v49, v57, 4, v49
	v_lshl_or_b32 v57, v73, 4, v69
	v_lshl_or_b32 v69, v19, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 6, v5
	v_add_nc_u32_e32 v27, 32, v5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v51, v59, 4, v63
	v_lshl_or_b32 v59, v20, 4, v12
	v_lshl_or_b32 v72, v37, 4, v29
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s77, s72, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 8, v5
	v_add_nc_u32_e32 v29, 34, v5
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v44, v52, 4, v44
	v_lshl_or_b32 v52, v60, 4, v64
	v_lshl_or_b32 v60, v21, 4, v13
	v_lshl_or_b32 v73, v38, 4, v30
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 10, v5
	v_add_nc_u32_e32 v30, 36, v5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v63, v39, 4, v31
	v_lshl_or_b32 v47, v55, 4, v47
	v_lshl_or_b32 v55, v71, 4, v67
	v_lshl_or_b32 v67, v17, 4, v9
	v_lshl_or_b32 v45, v53, 4, v45
	v_lshl_or_b32 v53, v61, 4, v65
	v_lshl_or_b32 v61, v22, 4, v14
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 12, v5
	v_add_nc_u32_e32 v31, 38, v5
	v_mad_u64_u32 v[8:9], null, v8, s77, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v64, v40, 4, v32
	v_lshl_or_b32 v46, v54, 4, v46
	v_lshl_or_b32 v54, v62, 4, v66
	v_lshl_or_b32 v62, v23, 4, v15
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 14, v5
	v_add_nc_u32_e32 v32, 40, v5
	v_mad_u64_u32 v[9:10], null, v10, s77, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v71, v36, 4, v28
	v_lshl_or_b32 v65, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 16, v5
	v_add_nc_u32_e32 v33, 42, v5
	v_mad_u64_u32 v[10:11], null, v11, s77, v[0:1]
	v_mad_u64_u32 v[27:28], null, v27, s77, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v66, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 18, v5
	v_add_nc_u32_e32 v34, 44, v5
	v_mad_u64_u32 v[11:12], null, v12, s77, v[0:1]
	v_mad_u64_u32 v[28:29], null, v29, s77, v[0:1]
	v_add_nc_u32_e32 v18, 20, v5
	v_add_nc_u32_e32 v35, 46, v5
	v_mad_u64_u32 v[12:13], null, v13, s77, v[0:1]
	v_mad_u64_u32 v[29:30], null, v30, s77, v[0:1]
	v_add_nc_u32_e32 v19, 22, v5
	v_add_nc_u32_e32 v36, 48, v5
	v_mad_u64_u32 v[13:14], null, v14, s77, v[0:1]
	v_mad_u64_u32 v[30:31], null, v31, s77, v[0:1]
	v_add_nc_u32_e32 v20, 24, v5
	v_add_nc_u32_e32 v37, 50, v5
	v_mad_u64_u32 v[14:15], null, v15, s77, v[0:1]
	v_mad_u64_u32 v[31:32], null, v32, s77, v[0:1]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s62, s[64:65], v[77:78]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s63, s[70:71], v[77:78]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v50, v58, 4, v50
	v_lshl_or_b32 v58, v74, 4, v70
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v21, 26, v5
	v_add_nc_u32_e32 v22, 28, v5
	v_add_nc_u32_e32 v23, 30, v5
	v_add_nc_u32_e32 v38, 52, v5
	v_add_nc_u32_e32 v39, 54, v5
	v_add_nc_u32_e32 v40, 56, v5
	v_add_nc_u32_e32 v41, 58, v5
	v_add_nc_u32_e32 v42, 60, v5
	v_add_nc_u32_e32 v70, 62, v5
	v_mad_u64_u32 v[5:6], null, v5, s77, v[0:1]
	v_mad_u64_u32 v[15:16], null, v16, s77, v[0:1]
	v_mad_u64_u32 v[32:33], null, v33, s77, v[0:1]
	v_mad_u64_u32 v[16:17], null, v17, s77, v[0:1]
	v_mad_u64_u32 v[33:34], null, v34, s77, v[0:1]
	v_mad_u64_u32 v[17:18], null, v18, s77, v[0:1]
	v_mad_u64_u32 v[34:35], null, v35, s77, v[0:1]
	v_mad_u64_u32 v[18:19], null, v19, s77, v[0:1]
	v_mad_u64_u32 v[35:36], null, v36, s77, v[0:1]
	v_mad_u64_u32 v[19:20], null, v20, s77, v[0:1]
	v_mad_u64_u32 v[36:37], null, v37, s77, v[0:1]
	v_mad_u64_u32 v[20:21], null, v21, s77, v[0:1]
	v_mad_u64_u32 v[37:38], null, v38, s77, v[0:1]
	v_mad_u64_u32 v[21:22], null, v22, s77, v[0:1]
	v_mad_u64_u32 v[38:39], null, v39, s77, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[22:23], null, v23, s77, v[0:1]
	v_mad_u64_u32 v[39:40], null, v40, s77, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s60, s60, s61
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[40:41], null, v41, s77, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v23, 0x80000000, v5, s62
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[41:42], null, v42, s77, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s60
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[5:6], null, v70, s77, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v0, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s58, s59
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s72, s66
	v_cndmask_b32_e32 v6, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s56, s57
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b8 v25, v23, s[72:75], 0 offen
	buffer_store_b8 v75, v8, s[72:75], 0 offen
	v_cndmask_b32_e32 v8, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s54, s55
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s78, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s52, s53
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v4.l, v26.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s50, s51
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v43, v0, s[72:75], 0 offen
	buffer_store_b8 v51, v6, s[72:75], 0 offen
	buffer_store_b8 v59, v8, s[72:75], 0 offen
	buffer_store_b8 v63, v9, s[72:75], 0 offen
	buffer_store_b8 v47, v10, s[72:75], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s48, s49
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v3.l, v24.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s2, s2, 24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s78, s78, s2
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s42, s43
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s40, s41
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v55, v0, s[72:75], 0 offen
	buffer_store_b8 v67, v6, s[72:75], 0 offen
	buffer_store_b8 v71, v8, s[72:75], 0 offen
	buffer_store_b8 v44, v9, s[72:75], 0 offen
	buffer_store_b8 v52, v10, s[72:75], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s38, s39
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s36, s37
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s34, s35
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s31, s33
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v27, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s29, s30
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v60, v0, s[72:75], 0 offen
	buffer_store_b8 v64, v6, s[72:75], 0 offen
	buffer_store_b8 v48, v8, s[72:75], 0 offen
	buffer_store_b8 v56, v9, s[72:75], 0 offen
	buffer_store_b8 v68, v10, s[72:75], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s27, s28
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s25, s26
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s23, s24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s21, s22
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s19, s20
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v72, v0, s[72:75], 0 offen
	buffer_store_b8 v45, v6, s[72:75], 0 offen
	buffer_store_b8 v53, v8, s[72:75], 0 offen
	buffer_store_b8 v61, v9, s[72:75], 0 offen
	buffer_store_b8 v65, v10, s[72:75], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s17, s18
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s15, s16
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s13, s14
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s11, s12
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s9, s10
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v49, v0, s[72:75], 0 offen
	buffer_store_b8 v57, v6, s[72:75], 0 offen
	buffer_store_b8 v69, v8, s[72:75], 0 offen
	buffer_store_b8 v73, v9, s[72:75], 0 offen
	buffer_store_b8 v46, v10, s[72:75], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v39, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v40, vcc_lo
	s_clause 0x2
	buffer_store_b8 v54, v0, s[72:75], 0 offen
	buffer_store_b8 v62, v6, s[72:75], 0 offen
	buffer_store_b8 v66, v8, s[72:75], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v107
	v_lshrrev_b32_e32 v8, 2, v79
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v41, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v0, 0x80000000, v5 :: v_dual_lshlrev_b32 v5, 3, v108
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v8, 0, v8
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v50, v9, s[72:75], 0 offen
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s78, 8
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v58, v0, s[72:75], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v5
	v_add3_u32 v5, v8, v6, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[1:2]
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v0, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v3, v7, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 0xc0, v107
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[70:71], v[1:2]
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_mov_b32 s70, s74
	s_mov_b32 s71, s75
	v_cmp_eq_u32_e64 s1, 0, v4
	v_add_lshl_u32 v1, v3, s79, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[68:71], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp75:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 500
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
		.amdhsa_next_free_sgpr 80
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
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 80
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 500
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 35104
; TotalNumSgprs: 82
; NumVgprs: 256
; ScratchSize: 500
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 82
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
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
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
    .private_segment_fixed_size: 500
    .sgpr_count:     82
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 124
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
