	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[44:45], s[0:1], 0x5c
	s_load_b64 s[28:29], s[0:1], 0x48
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_load_b256 s[20:27], s[0:1], 0x28
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v99, 15, v0
	v_and_b32_e32 v100, 0xf0, v0
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_and_b32_e32 v84, 0x80, v0
	s_mov_b32 s48, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_sub_i32 s5, s45, s4
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
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
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
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s3, 1
	s_sub_i32 s10, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s3, s9, s3
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s3, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s3, s9, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s3, s3, s7
	s_sub_i32 s45, s3, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s45, s5
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
	s_cmp_lt_i32 s44, 1
	s_cbranch_scc1 .LBB0_6
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_load_b64 s[4:5], s[0:1], 0x20
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v25, 5, v0
	s_clause 0x1
	s_load_b32 s23, s[0:1], 0x58
	s_load_b256 s[36:43], s[0:1], 0x0
	v_dual_mov_b32 v195, 0 :: v_dual_and_b32 v26, 0xe0, v0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_dual_mov_b32 v206, 0 :: v_dual_and_b32 v27, 0x7f, v0
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s0, s34, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	v_dual_mov_b32 v200, 0 :: v_dual_lshlrev_b32 v197, 1, v0
	v_add_co_u32 v3, vcc_lo, v1, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 16
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 24
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_add_u32 s0, s4, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	v_add_co_u32 v9, vcc_lo, v1, 32
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_addc_u32 s1, s5, s3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v10, null, 0, v2, vcc_lo
	v_add_co_u32 v11, vcc_lo, v1, 40
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[46:47], s[0:1], 0x0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v15, s0, s34, v99
	v_add_co_ci_u32_e64 v12, null, 0, v2, vcc_lo
	v_add_co_u32 v13, vcc_lo, v1, 48
	v_add_co_ci_u32_e64 v16, null, s35, 0, s0
	v_add_co_ci_u32_e64 v14, null, 0, v2, vcc_lo
	v_add_co_u32 v17, vcc_lo, v1, 56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, 0, v2, vcc_lo
	v_add_co_u32 v19, vcc_lo, v15, 16
	v_add_co_ci_u32_e64 v20, null, 0, v16, vcc_lo
	v_add_co_u32 v21, vcc_lo, v15, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v22, null, 0, v16, vcc_lo
	v_add_co_u32 v23, vcc_lo, v15, 48
	v_add_co_ci_u32_e64 v24, null, 0, v16, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[24:25], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[30:31], v[1:2]
	v_dual_mov_b32 v196, 0 :: v_dual_add_nc_u32 v1, s34, v99
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[24:25], v[3:4]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[30:31], v[3:4]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	s_lshl_b32 s50, s45, 8
	v_dual_mov_b32 v189, 0 :: v_dual_add_nc_u32 v2, 16, v1
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v3, 32, v1
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v4, 48, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v1, v1, s44
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[24:25], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[30:31], v[7:8]
	v_or_b32_e32 v8, s50, v0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	v_cmp_eq_u32_e32 vcc_lo, 0, v84
	v_dual_mov_b32 v198, 0 :: v_dual_add_nc_u32 v7, s34, v25
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:476
	scratch_store_b32 off, v8, off offset:492
	v_mul_lo_u32 v1, v2, s44
	v_dual_mov_b32 v199, 0 :: v_dual_and_b32 v2, 24, v197
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[24:25], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[30:31], v[9:10]
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v9, 8, v7
	v_dual_mov_b32 v219, 0 :: v_dual_add_nc_u32 v10, 16, v7
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	scratch_store_b32 off, v1, off offset:480 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v3, s44
	v_lshl_or_b32 v202, v99, 5, v2
	v_mov_b32_e32 v233, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[24:25], v[11:12]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[30:31], v[11:12]
	.loc	1 1049 17 is_stmt 1             ; ragged.py:1049:17
	s_waitcnt lgkmcnt(0)
	s_lshl_b32 s47, s33, 1
	v_mul_lo_u32 v204, v7, s23
	v_mul_lo_u32 v205, v9, s23
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v1, off offset:484 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v4, s44
	v_lshlrev_b32_e32 v4, 5, v0
	v_mul_lo_u32 v214, v10, s23
	v_dual_mov_b32 v232, 0 :: v_dual_add_nc_u32 v9, 24, v7
	v_dual_mov_b32 v221, 0 :: v_dual_add_nc_u32 v10, 32, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v231, 0 :: v_dual_and_b32 v4, 32, v4
	scratch_store_b32 off, v1, off offset:488 ; 4-byte Folded Spill
	v_cndmask_b32_e64 v1, 0x88, 0, vcc_lo
	v_dual_mov_b32 v226, 0 :: v_dual_add_nc_u32 v11, 40, v7
	v_dual_mov_b32 v193, 0 :: v_dual_add_nc_u32 v12, 48, v7
	v_xor_b32_e32 v209, v1, v27
	v_lshrrev_b32_e32 v1, 1, v26
	v_dual_mov_b32 v230, 0 :: v_dual_add_nc_u32 v7, 56, v7
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s12
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s12, s47, s23
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v203, 0, v99, v1
	v_dual_mov_b32 v188, 0 :: v_dual_lshlrev_b32 v1, 2, v100
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v207, v27, 1, s50
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[24:25], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[30:31], v[5:6]
	v_xor_b32_e32 v2, 0x110, v209
	v_xor_b32_e32 v3, 8, v202
	v_xor_b32_e32 v5, 16, v202
	v_xor_b32_e32 v6, 24, v202
	v_dual_mov_b32 v227, 0 :: v_dual_and_b32 v8, 28, v197
	v_add3_u32 v1, 0, v1, v4
	v_dual_mov_b32 v229, 0 :: v_dual_lshlrev_b32 v4, 1, v100
	.loc	1 1153 29 is_stmt 1             ; ragged.py:1153:29
	s_mul_i32 s49, s12, s46
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[24:25], v[13:14]
	v_cmp_le_i64_e64 s7, s[24:25], v[17:18]
	v_cmp_le_i64_e64 s8, s[24:25], v[15:16]
	v_cmp_le_i64_e64 s9, s[24:25], v[19:20]
	v_cmp_le_i64_e64 s10, s[24:25], v[21:22]
	v_cmp_le_i64_e64 s11, s[24:25], v[23:24]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[30:31], v[13:14]
	v_cmp_gt_i64_e64 s18, s[30:31], v[17:18]
	v_cmp_gt_i64_e64 s19, s[30:31], v[15:16]
	v_cmp_gt_i64_e64 s20, s[30:31], v[19:20]
	v_cmp_gt_i64_e64 s21, s[30:31], v[21:22]
	v_cmp_gt_i64_e64 s22, s[30:31], v[23:24]
	v_mul_lo_u32 v215, v9, s23
	v_mul_lo_u32 v216, v10, s23
	v_mul_lo_u32 v217, v11, s23
	v_mul_lo_u32 v210, v12, s23
	v_mul_lo_u32 v211, v7, s23
	s_mov_b32 s12, s36
	s_add_u32 s36, s49, s33
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_lshrrev_b32_e32 v208, 7, v84
	v_add3_u32 v212, s36, v207, 1
	v_dual_mov_b32 v228, 0 :: v_dual_add_nc_u32 v213, 0, v2
	v_dual_mov_b32 v191, 0 :: v_dual_add_nc_u32 v222, 0, v3
	v_dual_mov_b32 v220, 0 :: v_dual_add_nc_u32 v223, 0, v5
	v_dual_mov_b32 v187, 0 :: v_dual_add_nc_u32 v224, 0, v6
	v_dual_mov_b32 v218, 0 :: v_dual_add_nc_u32 v1, v1, v8
	v_dual_mov_b32 v192, 0 :: v_dual_add_nc_u32 v225, 0, v4
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v87, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, s2, s13
	s_and_b32 s3, s3, s14
	s_and_b32 s4, s4, s15
	s_and_b32 s5, s5, s16
	s_and_b32 s6, s6, s17
	s_and_b32 s7, s7, s18
	s_and_b32 s8, s8, s19
	s_and_b32 s9, s9, s20
	s_and_b32 s10, s10, s21
	s_and_b32 s11, s11, s22
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s46, s44, s46
	s_and_b32 s13, s37, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_and_b32 s17, s39, 0xffff
	s_mov_b32 s16, s38
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s21, s43, 0xffff
	s_mov_b32 s20, s42
	scratch_store_b32 off, v1, off offset:496 ; 4-byte Folded Spill
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v82, off offset:472
	scratch_store_b32 off, v233, off offset:468
	scratch_store_b32 off, v232, off offset:464
	scratch_store_b32 off, v231, off offset:460
	scratch_store_b32 off, v230, off offset:456
	scratch_store_b32 off, v229, off offset:452
	scratch_store_b32 off, v228, off offset:448
	scratch_store_b32 off, v227, off offset:444
	scratch_store_b32 off, v226, off offset:440
	scratch_store_b32 off, v221, off offset:436
	scratch_store_b32 off, v220, off offset:432
	scratch_store_b32 off, v219, off offset:428
	scratch_store_b32 off, v218, off offset:424
	scratch_store_b32 off, v193, off offset:420
	scratch_store_b32 off, v192, off offset:416
	scratch_store_b32 off, v191, off offset:412
	scratch_store_b32 off, v190, off offset:408
	scratch_store_b32 off, v187, off offset:404
	scratch_store_b32 off, v186, off offset:400
	scratch_store_b32 off, v185, off offset:396
	scratch_store_b32 off, v184, off offset:392
	scratch_store_b32 off, v183, off offset:388
	scratch_store_b32 off, v182, off offset:384
	scratch_store_b32 off, v181, off offset:380
	scratch_store_b32 off, v180, off offset:376
	scratch_store_b32 off, v179, off offset:372
	scratch_store_b32 off, v178, off offset:368
	scratch_store_b32 off, v177, off offset:364
	scratch_store_b32 off, v176, off offset:360
	scratch_store_b32 off, v175, off offset:356
	scratch_store_b32 off, v174, off offset:352
	scratch_store_b32 off, v173, off offset:348
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v172, off offset:344
	scratch_store_b32 off, v171, off offset:340
	scratch_store_b32 off, v170, off offset:336
	scratch_store_b32 off, v169, off offset:332
	scratch_store_b32 off, v168, off offset:328
	scratch_store_b32 off, v167, off offset:324
	scratch_store_b32 off, v166, off offset:320
	scratch_store_b32 off, v165, off offset:316
	scratch_store_b32 off, v164, off offset:312
	scratch_store_b32 off, v163, off offset:308
	scratch_store_b32 off, v162, off offset:304
	scratch_store_b32 off, v161, off offset:300
	scratch_store_b32 off, v160, off offset:296
	scratch_store_b32 off, v159, off offset:292
	scratch_store_b32 off, v158, off offset:288
	scratch_store_b32 off, v157, off offset:284
	scratch_store_b32 off, v151, off offset:280
	scratch_store_b32 off, v150, off offset:276
	scratch_store_b32 off, v149, off offset:272
	scratch_store_b32 off, v156, off offset:268
	scratch_store_b32 off, v155, off offset:264
	scratch_store_b32 off, v154, off offset:260
	scratch_store_b32 off, v153, off offset:256
	scratch_store_b32 off, v148, off offset:252
	scratch_store_b32 off, v147, off offset:248
	scratch_store_b32 off, v146, off offset:244
	scratch_store_b32 off, v145, off offset:240
	scratch_store_b32 off, v144, off offset:236
	scratch_store_b32 off, v143, off offset:232
	scratch_store_b32 off, v142, off offset:228
	scratch_store_b32 off, v141, off offset:224
	scratch_store_b32 off, v140, off offset:220
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v139, off offset:216
	scratch_store_b32 off, v138, off offset:212
	scratch_store_b32 off, v137, off offset:208
	scratch_store_b32 off, v136, off offset:204
	scratch_store_b32 off, v135, off offset:200
	scratch_store_b32 off, v134, off offset:196
	scratch_store_b32 off, v133, off offset:192
	scratch_store_b32 off, v132, off offset:188
	scratch_store_b32 off, v131, off offset:184
	scratch_store_b32 off, v130, off offset:180
	scratch_store_b32 off, v129, off offset:176
	scratch_store_b32 off, v152, off offset:172
	scratch_store_b32 off, v128, off offset:168
	scratch_store_b32 off, v127, off offset:164
	scratch_store_b32 off, v126, off offset:160
	scratch_store_b32 off, v125, off offset:156
	scratch_store_b32 off, v124, off offset:152
	scratch_store_b32 off, v115, off offset:148
	scratch_store_b32 off, v107, off offset:144
	scratch_store_b32 off, v123, off offset:140
	scratch_store_b32 off, v122, off offset:136
	scratch_store_b32 off, v121, off offset:132
	scratch_store_b32 off, v120, off offset:128
	scratch_store_b32 off, v106, off offset:124
	scratch_store_b32 off, v105, off offset:120
	scratch_store_b32 off, v98, off offset:116
	scratch_store_b32 off, v97, off offset:112
	scratch_store_b32 off, v104, off offset:108
	scratch_store_b32 off, v114, off offset:104
	scratch_store_b32 off, v113, off offset:100
	scratch_store_b32 off, v112, off offset:96
	scratch_store_b32 off, v96, off offset:92
	s_clause 0x16                           ; 92-byte Folded Spill
	scratch_store_b32 off, v95, off offset:88
	scratch_store_b32 off, v94, off offset:84
	scratch_store_b32 off, v93, off offset:80
	scratch_store_b32 off, v119, off offset:76
	scratch_store_b32 off, v118, off offset:72
	scratch_store_b32 off, v117, off offset:68
	scratch_store_b32 off, v116, off offset:64
	scratch_store_b32 off, v92, off offset:60
	scratch_store_b32 off, v91, off offset:56
	scratch_store_b32 off, v90, off offset:52
	scratch_store_b32 off, v83, off offset:48
	scratch_store_b32 off, v111, off offset:44
	scratch_store_b32 off, v110, off offset:40
	scratch_store_b32 off, v109, off offset:36
	scratch_store_b32 off, v108, off offset:32
	scratch_store_b32 off, v89, off offset:28
	scratch_store_b32 off, v88, off offset:24
	scratch_store_b32 off, v86, off offset:20
	scratch_store_b32 off, v85, off offset:16
	scratch_store_b32 off, v103, off offset:12
	scratch_store_b32 off, v87, off offset:8
	scratch_store_b32 off, v102, off offset:4
	scratch_store_b32 off, v101, off
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v206
	v_mov_b32_e32 v3, v206
	v_dual_mov_b32 v4, v206 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v5, v206
	v_dual_mov_b32 v6, v206 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v206
	v_dual_mov_b32 v8, v206 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v10, v206 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v11, v206
	v_dual_mov_b32 v12, v206 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v13, v206
	v_dual_mov_b32 v14, v206 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v15, v206
	v_dual_mov_b32 v16, v206 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v18, v206 :: v_dual_mov_b32 v65, 0
	v_mov_b32_e32 v19, v206
	v_dual_mov_b32 v20, v206 :: v_dual_mov_b32 v73, 0
	v_mov_b32_e32 v21, v206
	v_dual_mov_b32 v22, v206 :: v_dual_mov_b32 v81, 0
	v_mov_b32_e32 v23, v206
	v_dual_mov_b32 v24, v206 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v26, v206 :: v_dual_mov_b32 v97, 0
	v_mov_b32_e32 v27, v206
	v_dual_mov_b32 v28, v206 :: v_dual_mov_b32 v105, 0
	v_mov_b32_e32 v29, v206
	v_dual_mov_b32 v30, v206 :: v_dual_mov_b32 v113, 0
	v_mov_b32_e32 v31, v206
	v_dual_mov_b32 v32, v206 :: v_dual_mov_b32 v121, 0
	v_mov_b32_e32 v34, v206
	v_mov_b32_e32 v35, v206
	v_mov_b32_e32 v36, v206
	v_mov_b32_e32 v37, v206
	v_mov_b32_e32 v38, v206
	v_mov_b32_e32 v39, v206
	v_mov_b32_e32 v40, v206
	v_mov_b32_e32 v42, v206
	v_mov_b32_e32 v43, v206
	v_mov_b32_e32 v44, v206
	v_mov_b32_e32 v45, v206
	v_mov_b32_e32 v46, v206
	v_mov_b32_e32 v47, v206
	v_mov_b32_e32 v48, v206
	v_mov_b32_e32 v50, v206
	v_mov_b32_e32 v51, v206
	v_mov_b32_e32 v52, v206
	v_mov_b32_e32 v53, v206
	v_mov_b32_e32 v54, v206
	v_mov_b32_e32 v55, v206
	v_mov_b32_e32 v56, v206
	v_mov_b32_e32 v58, v206
	v_mov_b32_e32 v59, v206
	v_mov_b32_e32 v60, v206
	v_mov_b32_e32 v61, v206
	v_mov_b32_e32 v62, v206
	v_mov_b32_e32 v63, v206
	v_mov_b32_e32 v64, v206
	v_mov_b32_e32 v66, v206
	v_mov_b32_e32 v67, v206
	v_mov_b32_e32 v68, v206
	v_mov_b32_e32 v69, v206
	v_mov_b32_e32 v70, v206
	v_mov_b32_e32 v71, v206
	v_mov_b32_e32 v72, v206
	v_mov_b32_e32 v74, v206
	v_mov_b32_e32 v75, v206
	v_mov_b32_e32 v76, v206
	v_mov_b32_e32 v77, v206
	v_mov_b32_e32 v78, v206
	v_mov_b32_e32 v79, v206
	v_mov_b32_e32 v80, v206
	v_mov_b32_e32 v82, v206
	v_mov_b32_e32 v83, v206
	v_mov_b32_e32 v84, v206
	v_mov_b32_e32 v85, v206
	v_mov_b32_e32 v86, v206
	v_mov_b32_e32 v87, v206
	v_mov_b32_e32 v88, v206
	v_mov_b32_e32 v90, v206
	v_mov_b32_e32 v91, v206
	v_mov_b32_e32 v92, v206
	v_mov_b32_e32 v93, v206
	v_mov_b32_e32 v94, v206
	v_mov_b32_e32 v95, v206
	v_mov_b32_e32 v96, v206
	v_mov_b32_e32 v98, v206
	v_mov_b32_e32 v99, v206
	v_mov_b32_e32 v100, v206
	v_mov_b32_e32 v101, v206
	v_mov_b32_e32 v102, v206
	v_mov_b32_e32 v103, v206
	v_mov_b32_e32 v104, v206
	v_mov_b32_e32 v106, v206
	v_mov_b32_e32 v107, v206
	v_mov_b32_e32 v108, v206
	v_mov_b32_e32 v109, v206
	v_mov_b32_e32 v110, v206
	v_mov_b32_e32 v111, v206
	v_mov_b32_e32 v112, v206
	v_mov_b32_e32 v114, v206
	v_mov_b32_e32 v115, v206
	v_mov_b32_e32 v116, v206
	v_mov_b32_e32 v117, v206
	v_mov_b32_e32 v118, v206
	v_mov_b32_e32 v119, v206
	v_mov_b32_e32 v120, v206
	v_mov_b32_e32 v122, v206
	v_mov_b32_e32 v123, v206
	v_mov_b32_e32 v124, v206
	v_mov_b32_e32 v125, v206
	v_mov_b32_e32 v126, v206
	v_mov_b32_e32 v127, v206
	v_mov_b32_e32 v128, v206
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s22, s48, 6
	s_mov_b32 s18, 0
	s_mov_b32 s23, -1
.LBB0_3:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s37, s18, s22
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_mov_b32 s18, s14
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s37, v208
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_mov_b32 s19, s15
	v_add_nc_u32_e32 v226, 0, v197
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_and_b32 vcc_lo, exec_lo, s23
	s_mov_b32 s23, 0
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v240, v129, s47
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v129, 2, v208
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s37, v129
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v243, v240, v207
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v234, v129, s47
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v129, 4, v208
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s49, v243
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s37, v129
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v161, v137, s[16:19], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v244, v234, v207
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v241, v129, s47
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v129, 6, v208
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s49, v244
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s37, v129
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v162, v137, s[16:19], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v245, v241, v207
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v239, v129, s47
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v129, 8, v208
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s49, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s37, v129
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v169, v137, s[16:19], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v254, v239, v207
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v229, v129, s47
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v129, 10, v208
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s49, v254
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s37, v129
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v251, v137, s[16:19], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v255, v229, v207
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v238, v129, s47
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v129, 12, v208
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s49, v255
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s37, v129
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v252, v137, s[16:19], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v164, v238, v207
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v228, v129, s47
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v129, 14, v208
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s49, v164
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v164, s36, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s37, v129
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v253, v137, s[16:19], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v163, v228, v207
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v227, v129, s47
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v129, 16, v208
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s49, v163
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v163, s36, v163
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s37, v129
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v174, v137, s[16:19], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v250, v227, v207
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v221, v129, s47
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v129, 18, v208
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s49, v250
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s37, v129
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v175, v137, s[16:19], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v235, v221, v207
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v233, v129, s47
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v129, 20, v208
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s49, v235
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s37, v129
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v176, v137, s[16:19], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v236, v233, v207
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v232, v129, s47
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v129, 22, v208
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s49, v236
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s37, v129
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v177, v137, s[16:19], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v237, v232, v207
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v231, v129, s47
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v129, 24, v208
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s49, v237
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s37, v129
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v182, v137, s[16:19], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v246, v231, v207
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v220, v129, s47
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v129, 26, v208
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s49, v246
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s37, v129
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v183, v137, s[16:19], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v247, v220, v207
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v230, v129, s47
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v129, 28, v208
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s49, v247
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s37, v129
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v165, v137, s[16:19], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v248, v230, v207
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v219, v129, s47
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v129, 30, v208
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s49, v248
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s37, v129
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v166, v137, s[16:19], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v249, v219, v207
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v218, v129, s47
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_and_b32_e32 v129, 31, v0
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s49, v249
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s37, v129
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v184, v137, s[16:19], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v242, v218, v207
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_add_nc_u32_e32 v130, v204, v129
	v_add_nc_u32_e32 v131, v205, v129
	v_add_nc_u32_e32 v132, v214, v129
	v_add_nc_u32_e32 v133, v215, v129
	v_add_nc_u32_e32 v134, v216, v129
	v_add_nc_u32_e32 v135, v217, v129
	v_add_nc_u32_e32 v136, v210, v129
	v_add_nc_u32_e32 v129, v211, v129
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v130, 0x80000000, v130, s0
	v_cndmask_b32_e64 v131, 0x80000000, v131, s1
	v_cndmask_b32_e64 v132, 0x80000000, v132, s2
	v_cndmask_b32_e64 v133, 0x80000000, v133, s3
	v_cndmask_b32_e64 v134, 0x80000000, v134, s4
	v_cndmask_b32_e64 v135, 0x80000000, v135, s5
	v_cndmask_b32_e64 v136, 0x80000000, v136, s6
	v_cndmask_b32_e64 v129, 0x80000000, v129, s7
	s_clause 0x7
	buffer_load_u8 v130, v130, s[12:15], 0 offen
	buffer_load_u8 v131, v131, s[12:15], 0 offen
	buffer_load_u8 v132, v132, s[12:15], 0 offen
	buffer_load_u8 v133, v133, s[12:15], 0 offen
	buffer_load_u8 v134, v134, s[12:15], 0 offen
	buffer_load_u8 v135, v135, s[12:15], 0 offen
	buffer_load_u8 v136, v136, s[12:15], 0 offen
	buffer_load_u8 v129, v129, s[12:15], 0 offen
	.loc	1 1157 25 is_stmt 1             ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s49, v242
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v167, v137, s[16:19], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_add_nc_u32_e32 v137, 0, v209
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(8)
	ds_store_b8 v137, v130
	s_waitcnt vmcnt(6)
	ds_store_b8 v137, v132 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v137, v134 offset:1024
	s_waitcnt vmcnt(2)
	ds_store_b8 v137, v136 offset:1536
	ds_store_b8 v213, v131
	ds_store_b8 v213, v133 offset:512
	ds_store_b8 v213, v135 offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b8 v213, v129 offset:1536
	v_add_nc_u32_e32 v129, 0, v202
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[157:160], v129 offset1:1
	ds_load_2addr_stride64_b64 v[153:156], v129 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[149:152], v222 offset1:1
	ds_load_2addr_stride64_b64 v[145:148], v222 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[141:144], v223 offset1:1
	ds_load_2addr_stride64_b64 v[137:140], v223 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[133:136], v224 offset1:1
	ds_load_2addr_stride64_b64 v[129:132], v224 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v226, v161
	ds_store_b16 v226, v162 offset:512
	ds_store_b16 v226, v169 offset:1024
	ds_store_b16 v226, v251 offset:1536
	ds_store_b16 v226, v252 offset:2048
	ds_store_b16 v226, v253 offset:2560
	ds_store_b16 v226, v174 offset:3072
	ds_store_b16 v226, v175 offset:3584
	ds_store_b16 v226, v176 offset:4096
	ds_store_b16 v226, v177 offset:4608
	ds_store_b16 v226, v182 offset:5120
	ds_store_b16 v226, v183 offset:5632
	ds_store_b16 v226, v165 offset:6144
	ds_store_b16 v226, v166 offset:6656
	ds_store_b16 v226, v184 offset:7168
	s_waitcnt vmcnt(0)
	ds_store_b16 v226, v167 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v161, v203 offset:1280
	ds_load_u8 v162, v203 offset:1024
	ds_load_u8 v165, v203 offset:1920
	ds_load_u8 v166, v203 offset:1664
	ds_load_u8 v167, v203 offset:1408
	ds_load_u8 v169, v203 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	ds_load_u8 v162, v203 offset:1792
	ds_load_u8 v174, v203 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v252, v166, v165, 0xc0c0004
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v165, v212, v240
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v251, v169, v167, 0xc0c0004
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v166, v212, v234
	v_add_nc_u32_e32 v167, v212, v241
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v252, v252, 16, v251
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v174, v162, 0xc0c0004
	ds_load_u8 v174, v203 offset:256
	ds_load_u8 v175, v203
	ds_load_u8 v176, v203 offset:896
	ds_load_u8 v177, v203 offset:640
	ds_load_u8 v182, v203 offset:384
	ds_load_u8 v183, v203 offset:128
	v_lshl_or_b32 v162, v162, 16, v161
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	ds_load_u8 v175, v203 offset:768
	ds_load_u8 v184, v203 offset:512
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v253, v177, v176, 0xc0c0004
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v176, v212, v228
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v169, v183, v182, 0xc0c0004
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v182, s36, v243
	v_add_nc_u32_e32 v183, s36, v244
	v_add_nc_u32_e32 v177, v212, v227
	v_add_nc_u32_e32 v227, s36, v254
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v251, v253, 16, v169
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v169, v212, v239
	v_add_nc_u32_e32 v228, s36, v255
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[105:112], v[251:252], v[153:154], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[251:252], v[155:156], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[251:252], v[157:158], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[251:252], v[159:160], v[89:96] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v184, v175, 0xc0c0004
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v184, s36, v245
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v161, v175, 16, v174
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v174, v212, v229
	v_add_nc_u32_e32 v175, v212, v238
	v_add_nc_u32_e32 v229, s36, v250
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0xf
	buffer_load_u8 v165, v165, s[16:19], 0 offen
	buffer_load_u8 v182, v182, s[16:19], 0 offen
	buffer_load_u8 v166, v166, s[16:19], 0 offen
	buffer_load_u8 v183, v183, s[16:19], 0 offen
	buffer_load_u8 v167, v167, s[16:19], 0 offen
	buffer_load_u8 v184, v184, s[16:19], 0 offen
	buffer_load_u8 v169, v169, s[16:19], 0 offen
	buffer_load_u8 v227, v227, s[16:19], 0 offen
	buffer_load_u8 v174, v174, s[16:19], 0 offen
	buffer_load_u8 v228, v228, s[16:19], 0 offen
	buffer_load_u8 v175, v175, s[16:19], 0 offen
	buffer_load_u8 v234, v164, s[16:19], 0 offen
	buffer_load_u8 v176, v176, s[16:19], 0 offen
	buffer_load_u8 v238, v163, s[16:19], 0 offen
	buffer_load_u8 v177, v177, s[16:19], 0 offen
	buffer_load_u8 v229, v229, s[16:19], 0 offen
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[97:104], v[161:162], v[153:154], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[161:162], v[155:156], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[161:162], v[157:158], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[161:162], v[159:160], v[81:88] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(15)
	v_lshlrev_b16 v163.l, 8, v165.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v165, v212, v221
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(13)
	v_lshlrev_b16 v163.h, 8, v166.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v166, v212, v233
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(11)
	v_lshlrev_b16 v164.l, 8, v167.l
	v_or_b16 v163.l, v182.l, v163.l
	s_waitcnt vmcnt(9)
	v_lshlrev_b16 v164.h, 8, v169.l
	v_or_b16 v163.h, v183.l, v163.h
	s_waitcnt vmcnt(7)
	v_lshlrev_b16 v169.l, 8, v174.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v183, s36, v235
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v164.l, v184.l, v164.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v184, s36, v236
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v164.h, v227.l, v164.h
	s_waitcnt vmcnt(6)
	v_or_b16 v169.l, v228.l, v169.l
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v227.h, 8, v177.l
	v_lshlrev_b16 v169.h, 8, v175.l
	v_lshlrev_b16 v227.l, 8, v176.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v167, v212, v232
	v_add_nc_u32_e32 v174, v212, v231
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(0)
	v_or_b16 v227.h, v229.l, v227.h
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v175, v212, v220
	v_add_nc_u32_e32 v176, v212, v230
	v_add_nc_u32_e32 v177, v212, v219
	v_add_nc_u32_e32 v182, v212, v218
	v_add_nc_u32_e32 v221, s36, v248
	v_add_nc_u32_e32 v228, s36, v249
	v_add_nc_u32_e32 v229, s36, v242
	v_add_nc_u32_e32 v218, s36, v237
	v_add_nc_u32_e32 v219, s36, v246
	v_add_nc_u32_e32 v220, s36, v247
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0xf
	buffer_load_u8 v165, v165, s[16:19], 0 offen
	buffer_load_u8 v183, v183, s[16:19], 0 offen
	buffer_load_u8 v166, v166, s[16:19], 0 offen
	buffer_load_u8 v184, v184, s[16:19], 0 offen
	buffer_load_u8 v167, v167, s[16:19], 0 offen
	buffer_load_u8 v230, v218, s[16:19], 0 offen
	buffer_load_u8 v174, v174, s[16:19], 0 offen
	buffer_load_u8 v231, v219, s[16:19], 0 offen
	buffer_load_u8 v175, v175, s[16:19], 0 offen
	buffer_load_u8 v232, v220, s[16:19], 0 offen
	buffer_load_u8 v176, v176, s[16:19], 0 offen
	buffer_load_u8 v221, v221, s[16:19], 0 offen
	buffer_load_u8 v177, v177, s[16:19], 0 offen
	buffer_load_u8 v228, v228, s[16:19], 0 offen
	buffer_load_u8 v182, v182, s[16:19], 0 offen
	buffer_load_u8 v229, v229, s[16:19], 0 offen
	v_or_b16 v169.h, v234.l, v169.h
	v_or_b16 v227.l, v238.l, v227.l
	s_mov_b32 s18, 32
	s_waitcnt vmcnt(15)
	v_lshlrev_b16 v218.l, 8, v165.l
	s_waitcnt vmcnt(13)
	v_lshlrev_b16 v218.h, 8, v166.l
	s_waitcnt vmcnt(11)
	v_lshlrev_b16 v219.l, 8, v167.l
	v_or_b16 v218.l, v183.l, v218.l
	s_waitcnt vmcnt(9)
	v_lshlrev_b16 v219.h, 8, v174.l
	v_or_b16 v218.h, v184.l, v218.h
	s_waitcnt vmcnt(7)
	v_lshlrev_b16 v220.l, 8, v175.l
	v_or_b16 v219.l, v230.l, v219.l
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v220.h, 8, v176.l
	v_or_b16 v219.h, v231.l, v219.h
	v_or_b16 v220.l, v232.l, v220.l
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v221.h, 8, v182.l
	v_or_b16 v220.h, v221.l, v220.h
	v_lshlrev_b16 v221.l, 8, v177.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v221.h, v229.l, v221.h
	v_or_b16 v221.l, v228.l, v221.l
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v165, v203 offset:3328
	ds_load_u8 v166, v203 offset:3072
	ds_load_u8 v167, v203 offset:3840
	ds_load_u8 v174, v203 offset:3584
	ds_load_u8 v175, v203 offset:3968
	ds_load_u8 v176, v203 offset:3712
	ds_load_u8 v177, v203 offset:3456
	ds_load_u8 v182, v203 offset:3200
	ds_load_u8 v183, v203 offset:2304
	ds_load_u8 v184, v203 offset:2048
	ds_load_u8 v228, v203 offset:2816
	ds_load_u8 v229, v203 offset:2560
	ds_load_u8 v230, v203 offset:2944
	ds_load_u8 v231, v203 offset:2688
	ds_load_u8 v232, v203 offset:2432
	ds_load_u8 v233, v203 offset:2176
	ds_load_u8 v234, v203 offset:5376
	ds_load_u8 v235, v203 offset:5120
	ds_load_u8 v236, v203 offset:6016
	ds_load_u8 v237, v203 offset:5760
	ds_load_u8 v238, v203 offset:5504
	ds_load_u8 v239, v203 offset:5888
	ds_load_u8 v240, v203 offset:5632
	ds_load_u8 v241, v203 offset:5248
	ds_load_u8 v242, v203 offset:4352
	ds_load_u8 v243, v203 offset:4096
	ds_load_u8 v244, v203 offset:4992
	ds_load_u8 v245, v203 offset:4736
	ds_load_u8 v246, v203 offset:4480
	ds_load_u8 v247, v203 offset:4864
	ds_load_u8 v248, v203 offset:4608
	ds_load_u8 v249, v203 offset:4224
	ds_load_u8 v250, v203 offset:7424
	ds_load_u8 v253, v203 offset:7168
	ds_load_u8 v254, v203 offset:8064
	ds_load_u8 v255, v203 offset:7808
	ds_load_u8 v185, v203 offset:7552
	ds_load_u8 v170, v203 offset:7936
	ds_load_u8 v171, v203 offset:7680
	ds_load_u8 v173, v203 offset:7296
	ds_load_u8 v178, v203 offset:6400
	ds_load_u8 v191, v203 offset:6144
	ds_load_u8 v192, v203 offset:7040
	ds_load_u8 v180, v203 offset:6784
	ds_load_u8 v168, v203 offset:6528
	ds_load_u8 v172, v203 offset:6912
	ds_load_u8 v179, v203 offset:6656
	ds_load_u8 v190, v203 offset:6272
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v226, v163
	ds_store_b16_d16_hi v226, v163 offset:512
	ds_store_b16 v226, v164 offset:1024
	ds_store_b16_d16_hi v226, v164 offset:1536
	ds_store_b16 v226, v169 offset:2048
	ds_store_b16_d16_hi v226, v169 offset:2560
	ds_store_b16 v226, v227 offset:3072
	ds_store_b16_d16_hi v226, v227 offset:3584
	ds_store_b16 v226, v218 offset:4096
	ds_store_b16_d16_hi v226, v218 offset:4608
	ds_store_b16 v226, v219 offset:5120
	ds_store_b16_d16_hi v226, v219 offset:5632
	ds_store_b16 v226, v220 offset:6144
	ds_store_b16_d16_hi v226, v220 offset:6656
	ds_store_b16 v226, v221 offset:7168
	ds_store_b16_d16_hi v226, v221 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v163, v203 offset:1280
	ds_load_u8 v164, v203 offset:1024
	ds_load_u8 v169, v203 offset:1920
	ds_load_u8 v218, v203 offset:1664
	ds_load_u8 v219, v203 offset:1408
	ds_load_u8 v220, v203 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v203 offset:1792
	ds_load_u8 v221, v203 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v169, v218, v169, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v221, v164, 0xc0c0004
	ds_load_u8 v221, v203 offset:256
	ds_load_u8 v226, v203
	ds_load_u8 v227, v203 offset:896
	ds_load_u8 v181, v203 offset:640
	ds_load_u8 v193, v203 offset:384
	ds_load_u8 v186, v203 offset:128
	v_lshl_or_b32 v164, v164, 16, v163
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v221, v226, v221, 0xc0c0004
	ds_load_u8 v226, v203 offset:768
	ds_load_u8 v187, v203 offset:512
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v181, v181, v227, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v186, v186, v193, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v218, v181, 16, v186
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v187, v226, 0xc0c0004
	v_lshl_or_b32 v163, v187, 16, v221
	v_perm_b32 v187, v220, v219, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[163:164], v[153:154], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v219, v169, 16, v187
	v_wmma_i32_16x16x16_iu4 v[49:56], v[163:164], v[155:156], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[163:164], v[157:158], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[163:164], v[159:160], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[218:219], v[153:154], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[218:219], v[155:156], v[57:64] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v153, v166, v165, 0xc0c0004
	v_perm_b32 v154, v174, v167, 0xc0c0004
	v_perm_b32 v155, v184, v183, 0xc0c0004
	v_perm_b32 v156, v229, v228, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[218:219], v[157:158], v[9:16] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v157, v233, v232, 0xc0c0004
	v_lshl_or_b32 v154, v154, 16, v153
	v_perm_b32 v158, v231, v230, 0xc0c0004
	v_lshl_or_b32 v153, v156, 16, v155
	v_perm_b32 v155, v182, v177, 0xc0c0004
	v_perm_b32 v156, v176, v175, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[218:219], v[159:160], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[97:104], v[153:154], v[145:146], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[153:154], v[147:148], v[113:120] neg_lo:[1,1,0]
	v_lshl_or_b32 v156, v156, 16, v155
	v_lshl_or_b32 v155, v158, 16, v157
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v157, v203 offset:3328
	ds_load_u8 v158, v203 offset:3072
	ds_load_u8 v159, v203 offset:3968
	ds_load_u8 v160, v203 offset:3712
	ds_load_u8 v161, v203 offset:3456
	ds_load_u8 v162, v203 offset:3200
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[65:72], v[153:154], v[149:150], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[153:154], v[151:152], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[155:156], v[145:146], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[155:156], v[147:148], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[155:156], v[149:150], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[155:156], v[151:152], v[89:96] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	ds_load_u8 v158, v203 offset:3840
	ds_load_u8 v163, v203 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v160, v159, 16, v161
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v163, v158, 0xc0c0004
	ds_load_u8 v163, v203 offset:2304
	ds_load_u8 v164, v203 offset:2048
	ds_load_u8 v165, v203 offset:2944
	ds_load_u8 v166, v203 offset:2688
	ds_load_u8 v167, v203 offset:2432
	ds_load_u8 v169, v203 offset:2176
	v_lshl_or_b32 v158, v158, 16, v157
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v203 offset:2816
	ds_load_u8 v174, v203 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v162, v169, v167, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v174, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v157, v164, 16, v163
	v_perm_b32 v163, v166, v165, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[157:158], v[145:146], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v159, v163, 16, v162
	v_wmma_i32_16x16x16_iu4 v[49:56], v[157:158], v[147:148], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[157:158], v[149:150], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[157:158], v[151:152], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[159:160], v[145:146], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[159:160], v[147:148], v[57:64] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v145, v235, v234, 0xc0c0004
	v_perm_b32 v146, v240, v239, 0xc0c0004
	v_perm_b32 v147, v243, v242, 0xc0c0004
	v_perm_b32 v148, v248, v247, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[159:160], v[149:150], v[9:16] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v149, v249, v246, 0xc0c0004
	v_lshl_or_b32 v146, v146, 16, v145
	v_perm_b32 v150, v245, v244, 0xc0c0004
	v_lshl_or_b32 v145, v148, 16, v147
	v_perm_b32 v147, v241, v238, 0xc0c0004
	v_perm_b32 v148, v237, v236, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[159:160], v[151:152], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[97:104], v[145:146], v[137:138], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[145:146], v[139:140], v[113:120] neg_lo:[1,1,0]
	v_lshl_or_b32 v148, v148, 16, v147
	v_lshl_or_b32 v147, v150, 16, v149
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v149, v203 offset:5376
	ds_load_u8 v150, v203 offset:5120
	ds_load_u8 v151, v203 offset:6016
	ds_load_u8 v152, v203 offset:5760
	ds_load_u8 v153, v203 offset:5504
	ds_load_u8 v154, v203 offset:5248
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[65:72], v[145:146], v[141:142], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[145:146], v[143:144], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[147:148], v[137:138], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[147:148], v[139:140], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[147:148], v[141:142], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[147:148], v[143:144], v[89:96] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v203 offset:5888
	ds_load_u8 v155, v203 offset:5632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v151, 16, v153
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v155, v150, 0xc0c0004
	ds_load_u8 v155, v203 offset:4352
	ds_load_u8 v156, v203 offset:4096
	ds_load_u8 v157, v203 offset:4992
	ds_load_u8 v158, v203 offset:4736
	ds_load_u8 v159, v203 offset:4480
	ds_load_u8 v160, v203 offset:4224
	v_lshl_or_b32 v150, v150, 16, v149
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	ds_load_u8 v156, v203 offset:4864
	ds_load_u8 v161, v203 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v154, v160, v159, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v161, v156, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v149, v156, 16, v155
	v_perm_b32 v155, v158, v157, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[149:150], v[137:138], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v151, v155, 16, v154
	v_wmma_i32_16x16x16_iu4 v[49:56], v[149:150], v[139:140], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[149:150], v[141:142], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[149:150], v[143:144], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[151:152], v[137:138], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[151:152], v[139:140], v[57:64] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v137, v253, v250, 0xc0c0004
	v_perm_b32 v138, v171, v170, 0xc0c0004
	v_perm_b32 v139, v191, v178, 0xc0c0004
	v_perm_b32 v140, v179, v172, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[151:152], v[141:142], v[9:16] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v141, v190, v168, 0xc0c0004
	v_lshl_or_b32 v138, v138, 16, v137
	v_perm_b32 v142, v180, v192, 0xc0c0004
	v_lshl_or_b32 v137, v140, 16, v139
	v_perm_b32 v139, v173, v185, 0xc0c0004
	v_perm_b32 v140, v255, v254, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[151:152], v[143:144], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[65:72], v[137:138], v[133:134], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[137:138], v[135:136], v[81:88] neg_lo:[1,1,0]
	v_lshl_or_b32 v140, v140, 16, v139
	v_lshl_or_b32 v139, v142, 16, v141
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v141, v203 offset:7424
	ds_load_u8 v142, v203 offset:7168
	ds_load_u8 v143, v203 offset:8064
	ds_load_u8 v144, v203 offset:7808
	ds_load_u8 v145, v203 offset:7552
	ds_load_u8 v146, v203 offset:7296
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[97:104], v[137:138], v[129:130], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[137:138], v[131:132], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[139:140], v[133:134], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[139:140], v[135:136], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[139:140], v[129:130], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[139:140], v[131:132], v[121:128] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v203 offset:7936
	ds_load_u8 v147, v203 offset:7680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v144, v143, 16, v145
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v147, v142, 0xc0c0004
	ds_load_u8 v147, v203 offset:6400
	ds_load_u8 v148, v203 offset:6144
	ds_load_u8 v149, v203 offset:7040
	ds_load_u8 v150, v203 offset:6784
	ds_load_u8 v151, v203 offset:6528
	ds_load_u8 v152, v203 offset:6272
	v_lshl_or_b32 v142, v142, 16, v141
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v203 offset:6912
	ds_load_u8 v153, v203 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v146, v152, v151, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v153, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v141, v148, 16, v147
	v_perm_b32 v147, v150, v149, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[141:142], v[133:134], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v143, v147, 16, v146
	v_wmma_i32_16x16x16_iu4 v[17:24], v[141:142], v[135:136], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[141:142], v[129:130], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[141:142], v[131:132], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[143:144], v[133:134], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[143:144], v[135:136], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[143:144], v[129:130], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[143:144], v[131:132], v[57:64] neg_lo:[1,1,0]
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_vccnz .LBB0_3
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v140, v73
	v_cvt_f32_i32_e32 v135, v74
	v_cvt_f32_i32_e32 v158, v83
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v74, v22
	v_cvt_f32_i32_e32 v73, v23
	v_cvt_f32_i32_e32 v83, v36
	v_cvt_f32_i32_e32 v23, v43
	v_cvt_f32_i32_e32 v22, v44
	v_cvt_f32_i32_e32 v36, v55
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v55, off, off offset:492
	scratch_load_b32 v43, off, off offset:476
	scratch_load_b32 v44, off, off offset:480
	s_mov_b32 s42, s14
	s_mov_b32 s43, s15
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v143, v70
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v70, v6
	v_cvt_f32_i32_e32 v6, v30
	v_cvt_f32_i32_e32 v30, v40
	v_cvt_f32_i32_e32 v40, v51
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v144, v69
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v69, v7
	v_cvt_f32_i32_e32 v7, v31
	v_cvt_f32_i32_e32 v31, v39
	v_cvt_f32_i32_e32 v39, v52
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s18, s48, s46
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v147, v86
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s18, s18, s47
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v86, v33
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s22, s14
	s_mov_b32 s23, s15
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v155, v68
	v_cvt_f32_i32_e32 v159, v84
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v68, v8
	v_cvt_f32_i32_e32 v8, v32
	v_cvt_f32_i32_e32 v84, v35
	v_cvt_f32_i32_e32 v32, v38
	v_cvt_f32_i32_e32 v38, v53
	v_cvt_f32_i32_e32 v35, v56
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v152, v65
	v_cvt_f32_i32_e32 v153, v66
	v_cvt_f32_i32_e32 v154, v67
	v_cvt_f32_i32_e32 v141, v72
	v_cvt_f32_i32_e32 v156, v81
	v_cvt_f32_i32_e32 v137, v91
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v91, v1
	v_cvt_f32_i32_e32 v67, v9
	v_cvt_f32_i32_e32 v66, v10
	v_cvt_f32_i32_e32 v65, v11
	v_cvt_f32_i32_e32 v10, v12
	v_cvt_f32_i32_e32 v1, v13
	v_cvt_f32_i32_e32 v81, v18
	v_cvt_f32_i32_e32 v72, v24
	v_cvt_f32_i32_e32 v18, v25
	v_cvt_f32_i32_e32 v25, v41
	v_cvt_f32_i32_e32 v24, v42
	v_cvt_f32_i32_e32 v9, v45
	v_cvt_f32_i32_e32 v11, v46
	v_cvt_f32_i32_e32 v12, v47
	v_cvt_f32_i32_e32 v13, v48
	v_cvt_f32_i32_e32 v42, v49
	v_cvt_f32_i32_e32 v41, v50
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v148, v85
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v85, v34
	v_cvt_f32_i32_e32 v34, v37
	v_cvt_f32_i32_e32 v37, v54
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v146, v87
	v_cvt_f32_i32_e32 v145, v88
	v_cvt_f32_i32_e32 v138, v90
	v_cvt_f32_i32_e32 v136, v92
	v_cvt_f32_i32_e32 v90, v93
	v_cvt_f32_i32_e32 v88, v95
	v_cvt_f32_i32_e32 v87, v96
	v_cvt_f32_i32_e32 v160, v97
	v_cvt_f32_i32_e32 v164, v101
	v_cvt_f32_i32_e32 v150, v103
	v_cvt_f32_i32_e32 v103, v105
	v_cvt_f32_i32_e32 v101, v107
	v_cvt_f32_i32_e32 v95, v109
	v_cvt_f32_i32_e32 v93, v111
	v_cvt_f32_i32_e32 v92, v112
	v_cvt_f32_i32_e32 v109, v114
	v_cvt_f32_i32_e32 v111, v116
	v_cvt_f32_i32_e32 v112, v117
	v_cvt_f32_i32_e32 v114, v119
	v_cvt_f32_i32_e32 v107, v121
	v_cvt_f32_i32_e32 v105, v123
	v_cvt_f32_i32_e32 v97, v127
	v_cvt_f32_i32_e32 v96, v128
	v_cvt_f32_i32_e32 v161, v98
	v_cvt_f32_i32_e32 v98, v126
	v_cvt_f32_i32_e32 v163, v100
	v_cvt_f32_i32_e32 v100, v108
	v_cvt_f32_i32_e32 v108, v113
	v_cvt_f32_i32_e32 v113, v118
	v_cvt_f32_i32_e32 v157, v82
	v_cvt_f32_i32_e32 v139, v89
	v_cvt_f32_i32_e32 v89, v94
	v_cvt_f32_i32_e32 v94, v110
	v_cvt_f32_i32_e32 v110, v115
	v_cvt_f32_i32_e32 v162, v99
	v_cvt_f32_i32_e32 v151, v102
	v_cvt_f32_i32_e32 v102, v106
	v_cvt_f32_i32_e32 v115, v120
	v_cvt_f32_i32_e32 v106, v122
	v_cvt_f32_i32_e32 v142, v71
	v_cvt_f32_i32_e32 v149, v104
	v_cvt_f32_i32_e32 v134, v75
	v_cvt_f32_i32_e32 v133, v76
	v_cvt_f32_i32_e32 v130, v79
	v_cvt_f32_i32_e32 v104, v124
	v_cvt_f32_i32_e32 v132, v77
	v_cvt_f32_i32_e32 v131, v78
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v78, v2
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v129, v80
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v77, v3
	v_cvt_f32_i32_e32 v76, v4
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v99, v125
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v82, v17
	v_cvt_f32_i32_e32 v80, v19
	v_cvt_f32_i32_e32 v79, v20
	v_cvt_f32_i32_e32 v71, v5
	v_cvt_f32_i32_e32 v75, v21
	v_cvt_f32_i32_e32 v3, v15
	v_cvt_f32_i32_e32 v17, v26
	v_cvt_f32_i32_e32 v4, v16
	v_cvt_f32_i32_e32 v16, v27
	v_cvt_f32_i32_e32 v2, v14
	v_cvt_f32_i32_e32 v14, v28
	v_cvt_f32_i32_e32 v5, v29
	v_cvt_f32_i32_e32 v29, v57
	v_cvt_f32_i32_e32 v28, v58
	v_cvt_f32_i32_e32 v27, v59
	v_cvt_f32_i32_e32 v26, v60
	v_cvt_f32_i32_e32 v15, v61
	v_cvt_f32_i32_e32 v19, v62
	v_cvt_f32_i32_e32 v20, v63
	v_cvt_f32_i32_e32 v21, v64
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v33, v55, s18, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v43, s48, v43, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s48, v44, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v33, v33, s[20:23], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v43, 0x80000000, v43, s8
	v_cndmask_b32_e64 v44, 0x80000000, v44, s9
	s_clause 0x1
	buffer_load_u16 v43, v43, s[40:43], 0 offen
	buffer_load_u16 v51, v44, s[40:43], 0 offen
	scratch_load_b32 v44, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v51, 16, v51
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s48, v44, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v7, v7, v51
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v44, 0x80000000, v44, s10
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v5, v51, v5
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v52, v44, s[40:43], 0 offen
	scratch_load_b32 v44, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v52, 16, v52
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s48, v44, 1
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s48, s48, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s48, s44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v34, v52, v34
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v44, 0x80000000, v44, s11
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v52, v32
	v_mul_f32_e32 v30, v52, v30
	v_mul_f32_e32 v9, v52, v9
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v53, v44, s[40:43], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v56, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v31, v52, v31
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v56, v33
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v174, off, off offset:352
	scratch_load_b32 v176, off, off offset:360
	scratch_load_b32 v184, off, off offset:392
	scratch_load_b32 v167, off, off offset:324
	scratch_load_b32 v175, off, off offset:356
	scratch_load_b32 v177, off, off offset:364
	scratch_load_b32 v169, off, off offset:332
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v33, 16, v43
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[43:46], v225
	ds_load_b128 v[47:50], v225 offset:16
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v127, off, off offset:164
	scratch_load_b32 v128, off, off offset:168
	scratch_load_b32 v116, off, off offset:64
	scratch_load_b32 v117, off, off offset:68
	scratch_load_b32 v119, off, off offset:76
	scratch_load_b32 v121, off, off offset:132
	scratch_load_b32 v123, off, off offset:140
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v33, v152
	s_clause 0x15                           ; 88-byte Folded Reload
	scratch_load_b32 v152, off, off offset:172
	scratch_load_b32 v166, off, off offset:320
	scratch_load_b32 v190, off, off offset:408
	scratch_load_b32 v186, off, off offset:400
	scratch_load_b32 v183, off, off offset:388
	scratch_load_b32 v126, off, off offset:160
	scratch_load_b32 v118, off, off offset:72
	scratch_load_b32 v120, off, off offset:128
	scratch_load_b32 v122, off, off offset:136
	scratch_load_b32 v168, off, off offset:328
	scratch_load_b32 v230, off, off offset:456
	scratch_load_b32 v229, off, off offset:452
	scratch_load_b32 v220, off, off offset:432
	scratch_load_b32 v228, off, off offset:448
	scratch_load_b32 v221, off, off offset:436
	scratch_load_b32 v218, off, off offset:424
	scratch_load_b32 v193, off, off offset:420
	scratch_load_b32 v192, off, off offset:416
	scratch_load_b32 v191, off, off offset:412
	scratch_load_b32 v185, off, off offset:396
	scratch_load_b32 v187, off, off offset:404
	scratch_load_b32 v182, off, off offset:384
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v53, v39
	v_mul_f32_e32 v40, v53, v40
	v_mul_f32_e32 v42, v53, v42
	v_mul_f32_e32 v41, v53, v41
	v_mul_f32_e32 v15, v53, v15
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(35) lgkmcnt(1)
	v_fmac_f32_e32 v174, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v33, v153
	scratch_load_b32 v153, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(32)
	v_dual_fmac_f32 v175, v54, v44 :: v_dual_mul_f32 v54, v33, v154
	scratch_load_b32 v154, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(32)
	v_dual_fmac_f32 v177, v54, v45 :: v_dual_mul_f32 v54, v33, v155
	scratch_load_b32 v155, off, off offset:264 ; 4-byte Folded Reload
	v_fmac_f32_e32 v176, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v156
	scratch_load_b32 v156, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v10, v33, v10 :: v_dual_mul_f32 v3, v3, v33
	v_mul_f32_e32 v1, v33, v1
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v153, v54, v43 :: v_dual_mul_f32 v54, v51, v157
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v154, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v158
	scratch_load_b32 v158, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v156, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v159
	scratch_load_b32 v159, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v155, v54, v46 :: v_dual_mul_f32 v54, v52, v160
	scratch_load_b32 v160, off, off offset:296 ; 4-byte Folded Reload
	v_fmac_f32_e32 v126, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v161
	scratch_load_b32 v161, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v127, v54, v44 :: v_dual_mul_f32 v54, v52, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v152, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v163
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v128, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v53, v108
	scratch_load_b32 v108, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v116, v54, v43 :: v_dual_mul_f32 v43, v53, v109
	scratch_load_b32 v109, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v54, v140, v33 :: v_dual_fmac_f32 v117, v43, v44
	v_mul_f32_e32 v43, v53, v110
	scratch_load_b32 v110, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v119, v43, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v111
	scratch_load_b32 v111, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v118, v43, v46 :: v_dual_mul_f32 v43, v33, v144
	scratch_load_b32 v144, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v166, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v33, v143
	scratch_load_b32 v143, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v167, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v33, v142
	scratch_load_b32 v142, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v168, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v33, v141
	scratch_load_b32 v141, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v169, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v148
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v141, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v147
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v142, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v143, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v145
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v144, v43, v50 :: v_dual_mul_f32 v43, v52, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v120, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v151
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v121, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v122, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v149
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v123, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v112
	scratch_load_b32 v112, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v108, v43, v47 :: v_dual_mul_f32 v43, v53, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v109, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v114
	scratch_load_b32 v114, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v110, v43, v49 :: v_dual_mul_f32 v43, v53, v115
	v_fmac_f32_e32 v111, v43, v50
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[43:46], v225 offset:512
	ds_load_b128 v[47:50], v225 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v230, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v33, v135
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v135, off, off offset:200
	scratch_load_b32 v113, off, off offset:100
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v158, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v33, v134
	scratch_load_b32 v134, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v159, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v33, v133
	scratch_load_b32 v133, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v160, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v139, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v220, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v138
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v133, v54, v44 :: v_dual_mul_f32 v54, v51, v137
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v134, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v136
	scratch_load_b32 v136, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v135, v54, v46 :: v_dual_mul_f32 v54, v103, v52
	scratch_load_b32 v103, off, off offset:12 ; 4-byte Folded Reload
	v_dual_fmac_f32 v191, v54, v43 :: v_dual_mul_f32 v54, v52, v102
	scratch_load_b32 v102, off, off offset:4 ; 4-byte Folded Reload
	v_fmac_f32_e32 v112, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v101
	scratch_load_b32 v101, off, off         ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v113, v54, v45 :: v_dual_mul_f32 v54, v52, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v114, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v107, v53
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v185, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v106
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v54, v33, v91 :: v_dual_fmac_f32 v101, v43, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v105
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v102, v43, v45 :: v_dual_mul_f32 v43, v53, v104
	scratch_load_b32 v104, off, off offset:108 ; 4-byte Folded Reload
	v_fmac_f32_e32 v103, v43, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v33, v132
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v161, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v131, v33
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v229, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v130, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v228, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v129, v33
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v221, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v136, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v89, v51
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v218, v43, v48 :: v_dual_mul_f32 v43, v88, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v193, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v87, v51
	scratch_load_b32 v87, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v192, v43, v50 :: v_dual_mul_f32 v43, v52, v95
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v104, v43, v47 :: v_dual_mul_f32 v43, v94, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v190, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v93, v52
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v187, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v92, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v186, v43, v50 :: v_dual_mul_f32 v43, v53, v99
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v87, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v98, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v184, v43, v48 :: v_dual_mul_f32 v43, v97, v53
	v_fmac_f32_e32 v183, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v96, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v182, v43, v50 :: v_dual_add_nc_u32 v43, s33, v55
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v43, v43, s18, 1
	buffer_load_u16 v43, v43, s[20:23], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v56, v43
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1f                           ; 128-byte Folded Reload
	scratch_load_b32 v181, off, off offset:380
	scratch_load_b32 v180, off, off offset:376
	scratch_load_b32 v178, off, off offset:368
	scratch_load_b32 v179, off, off offset:372
	scratch_load_b32 v173, off, off offset:348
	scratch_load_b32 v172, off, off offset:344
	scratch_load_b32 v170, off, off offset:336
	scratch_load_b32 v171, off, off offset:340
	scratch_load_b32 v157, off, off offset:284
	scratch_load_b32 v165, off, off offset:316
	scratch_load_b32 v164, off, off offset:312
	scratch_load_b32 v163, off, off offset:308
	scratch_load_b32 v162, off, off offset:304
	scratch_load_b32 v151, off, off offset:280
	scratch_load_b32 v150, off, off offset:276
	scratch_load_b32 v149, off, off offset:272
	scratch_load_b32 v96, off, off offset:92
	scratch_load_b32 v94, off, off offset:84
	scratch_load_b32 v93, off, off offset:80
	scratch_load_b32 v106, off, off offset:124
	scratch_load_b32 v105, off, off offset:120
	scratch_load_b32 v98, off, off offset:116
	scratch_load_b32 v97, off, off offset:112
	scratch_load_b32 v95, off, off offset:88
	scratch_load_b32 v132, off, off offset:188
	scratch_load_b32 v131, off, off offset:184
	scratch_load_b32 v129, off, off offset:176
	scratch_load_b32 v130, off, off offset:180
	scratch_load_b32 v125, off, off offset:156
	scratch_load_b32 v124, off, off offset:152
	scratch_load_b32 v107, off, off offset:144
	scratch_load_b32 v115, off, off offset:148
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v92, off, off offset:60
	scratch_load_b32 v91, off, off offset:56
	scratch_load_b32 v90, off, off offset:52
	scratch_load_b32 v89, off, off offset:28
	scratch_load_b32 v88, off, off offset:24
	ds_load_b128 v[43:46], v225
	ds_load_b128 v[47:50], v225 offset:16
	s_clause 0xd                            ; 56-byte Folded Reload
	scratch_load_b32 v148, off, off offset:252
	scratch_load_b32 v147, off, off offset:248
	scratch_load_b32 v146, off, off offset:244
	scratch_load_b32 v145, off, off offset:240
	scratch_load_b32 v140, off, off offset:220
	scratch_load_b32 v139, off, off offset:216
	scratch_load_b32 v137, off, off offset:208
	scratch_load_b32 v138, off, off offset:212
	scratch_load_b32 v231, off, off offset:460
	scratch_load_b32 v233, off, off offset:468
	scratch_load_b32 v232, off, off offset:464
	scratch_load_b32 v227, off, off offset:444
	scratch_load_b32 v226, off, off offset:440
	scratch_load_b32 v219, off, off offset:428
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(50) lgkmcnt(1)
	v_dual_fmac_f32 v181, v54, v43 :: v_dual_mul_f32 v54, v33, v78
	s_waitcnt vmcnt(49)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v180, v54, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v33, v77
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(48)
	v_fmac_f32_e32 v178, v54, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v33, v76
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(34)
	v_fmac_f32_e32 v96, v42, v43
	s_waitcnt vmcnt(33)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v94, v40, v45 :: v_dual_fmac_f32 v179, v54, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v51, v82
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(32)
	v_fmac_f32_e32 v93, v39, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v33, v71
	scratch_load_b32 v82, off, off offset:472 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(28)
	v_fmac_f32_e32 v95, v41, v44
	v_dual_fmac_f32 v157, v54, v43 :: v_dual_mul_f32 v54, v51, v81
	s_waitcnt vmcnt(22) lgkmcnt(0)
	v_dual_fmac_f32 v125, v34, v47 :: v_dual_fmac_f32 v124, v32, v48
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v151, v54, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v51, v80
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v173, v39, v47
	s_waitcnt vmcnt(20)
	v_fmac_f32_e32 v115, v30, v50
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v30, v53, v38
	v_dual_mul_f32 v39, v33, v70 :: v_dual_fmac_f32 v150, v54, v45
	v_mul_f32_e32 v54, v51, v79
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(19)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v107, v31, v49 :: v_dual_fmac_f32 v92, v30, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v30, v53, v37
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v172, v39, v48 :: v_dual_fmac_f32 v149, v54, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v52, v86
	scratch_load_b32 v86, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(19)
	v_fmac_f32_e32 v91, v30, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v30, v53, v36
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v132, v54, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v52, v85
	scratch_load_b32 v85, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v131, v54, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v52, v84
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v129, v54, v45 :: v_dual_mul_f32 v54, v52, v83
	scratch_load_b32 v83, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(20)
	v_fmac_f32_e32 v90, v30, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v30, v53, v35
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v130, v54, v46
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v83, v30, v50 :: v_dual_mul_f32 v30, v67, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v33, v69
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v170, v39, v49 :: v_dual_mul_f32 v39, v33, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v171, v39, v50
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v51, v75
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v148, v39, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v51, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v147, v39, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v51, v73
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v146, v39, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v51, v72
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v145, v39, v50
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[34:37], v225 offset:512
	ds_load_b128 v[38:41], v225 offset:528
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v2, v2, v33
	v_mul_f32_e32 v4, v4, v33
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v196, v30, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v30, v33, v66 :: v_dual_fmac_f32 v163, v10, v37
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v10, v18, v51 :: v_dual_fmac_f32 v199, v7, v40
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v195, v2, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v165, v30, v35 :: v_dual_mul_f32 v30, v33, v65
	v_dual_fmac_f32 v201, v10, v34 :: v_dual_mul_f32 v10, v51, v17
	v_dual_fmac_f32 v97, v9, v38 :: v_dual_mul_f32 v6, v6, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v189, v4, v41 :: v_dual_fmac_f32 v164, v30, v36
	v_fmac_f32_e32 v140, v10, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v51, v16
	v_mul_f32_e32 v16, v21, v53
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v162, v1, v38
	v_fmac_f32_e32 v194, v3, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v138, v5, v38 :: v_dual_fmac_f32 v139, v10, v36
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v51, v14
	v_mul_f32_e32 v14, v20, v53
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v200, v6, v39 :: v_dual_fmac_f32 v85, v15, v38
	v_fmac_f32_e32 v219, v16, v41
	v_dual_fmac_f32 v137, v10, v37 :: v_dual_mul_f32 v10, v25, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v226, v14, v40
	v_fmac_f32_e32 v198, v10, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v52, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v106, v10, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v52, v23
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v105, v10, v36 :: v_dual_mul_f32 v10, v52, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v98, v10, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v29, v53
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v231, v10, v34 :: v_dual_mul_f32 v10, v53, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v10, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v53, v27
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v88, v10, v36
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v53, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v86, v10, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v11, v52
	v_mul_f32_e32 v11, v12, v52
	v_mul_f32_e32 v8, v8, v51
	v_dual_mul_f32 v12, v13, v52 :: v_dual_mul_f32 v13, v19, v53
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v233, v11, v40 :: v_dual_fmac_f32 v188, v8, v41
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v232, v12, v41 :: v_dual_fmac_f32 v227, v13, v39
	v_fmac_f32_e32 v82, v10, v39
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.5:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_and_b32_e32 v99, 15, v0
	v_and_b32_e32 v100, 0xf0, v0
	v_and_b32_e32 v84, 0x80, v0
	s_branch .LBB0_7
.LBB0_6:
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v230, 0
.LBB0_7:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v9, 0xbfb8aa3b, v181 :: v_dual_mul_f32 v2, 0xbfb8aa3b, v194
	v_dual_mul_f32 v1, 0xbfb8aa3b, v196 :: v_dual_mul_f32 v6, 0xbfb8aa3b, v179
	v_mul_f32_e32 v33, 0xbfb8aa3b, v150
	v_mul_f32_e32 v43, 0xbfb8aa3b, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_mul_f32_e32 v53, 0xbfb8aa3b, v124
	v_dual_mul_f32 v5, 0xbfb8aa3b, v178 :: v_dual_mul_f32 v8, 0xbfb8aa3b, v180
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v10, 0, 0x42800000, s0
	v_mul_f32_e32 v1, 0xbfb8aa3b, v195
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v30, 0xbfb8aa3b, v172
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v194
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_dual_mul_f32 v23, 0xbfb8aa3b, v171 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v170
	v_dual_mul_f32 v37, 0xbfb8aa3b, v164 :: v_dual_mul_f32 v38, 0xbfb8aa3b, v165
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v3, 0xbfb8aa3b, v189
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v10, v10
	v_dual_mul_f32 v31, 0xbfb8aa3b, v162 :: v_dual_mul_f32 v32, 0xbfb8aa3b, v163
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v195
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v3
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, s0
	v_dual_mul_f32 v49, 0xbfb8aa3b, v157 :: v_dual_mul_f32 v42, 0xbfb8aa3b, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v2, v2
	v_cndmask_b32_e64 v12, 0, 0x42800000, s1
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v196
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s1
	v_ldexp_f32 v10, v10, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v27, 0xbfb8aa3b, v219 :: v_dual_fmac_f32 v12, 0xbfb8aa3b, v189
	v_exp_f32_e32 v13, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_dual_mul_f32 v7, 0xbfb8aa3b, v173 :: v_dual_add_f32 v10, 1.0, v10
	v_ldexp_f32 v14, v2, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v12, v12
	v_dual_mul_f32 v2, 0xbfb8aa3b, v200 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v151
	v_dual_mul_f32 v36, 0xbfb8aa3b, v146 :: v_dual_mul_f32 v35, 0xbfb8aa3b, v145
	v_mul_f32_e32 v48, 0xbfb8aa3b, v139
	v_ldexp_f32 v4, v13, v4
	v_dual_mul_f32 v13, 0xbfb8aa3b, v201 :: v_dual_mul_f32 v40, 0xbfb8aa3b, v138
	v_dual_mul_f32 v51, 0xbfb8aa3b, v131 :: v_dual_mul_f32 v60, 0xbfb8aa3b, v132
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v11, v12, v11
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_dual_mul_f32 v12, 0xbfb8aa3b, v199 :: v_dual_mul_f32 v13, 0xbfb8aa3b, v188
	v_dual_mul_f32 v57, 0xbfb8aa3b, v125 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v90
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v12
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v52, 0xbfb8aa3b, v148 :: v_dual_fmac_f32 v3, 0xbfb8aa3b, v201
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v17, 0, 0x42800000, s1
	v_mul_f32_e32 v39, 0xbfb8aa3b, v149
	v_exp_f32_e32 v3, v3
	v_dual_fmac_f32 v12, 0xbfb8aa3b, v200 :: v_dual_fmac_f32 v15, 0xbfb8aa3b, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v44, 0xbfb8aa3b, v129 :: v_dual_fmac_f32 v17, 0xbfb8aa3b, v188
	v_mul_f32_e32 v50, 0xbfb8aa3b, v130
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v15, v15
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v17, v17
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s1
	v_ldexp_f32 v18, v3, v1
	v_dual_mul_f32 v1, 0xbfb8aa3b, v198 :: v_dual_mul_f32 v46, 0xbfb8aa3b, v107
	v_dual_mul_f32 v45, 0xbfb8aa3b, v115 :: v_dual_mul_f32 v28, 0xbfb8aa3b, v93
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v12, v12, v2
	v_ldexp_f32 v13, v15, v13
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v15, v17, v16
	v_mul_f32_e32 v2, 0xbfb8aa3b, v82
	v_mul_f32_e32 v16, 0xbfb8aa3b, v233
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_dual_mul_f32 v17, 0xbfb8aa3b, v232 :: v_dual_mul_f32 v54, 0xbfb8aa3b, v97
	v_mul_f32_e32 v56, 0xbfb8aa3b, v98
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v16
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v17
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v58, 0xbfb8aa3b, v105 :: v_dual_fmac_f32 v3, 0xbfb8aa3b, v198
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v47, 0xbfb8aa3b, v140
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v3, v3
	v_dual_fmac_f32 v16, 0xbfb8aa3b, v82 :: v_dual_fmac_f32 v19, 0xbfb8aa3b, v233
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v232
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s1
	v_exp_f32_e32 v16, v16
	v_exp_f32_e32 v19, v19
	v_exp_f32_e32 v21, v21
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v3, v1
	v_mul_f32_e32 v1, 0xbfb8aa3b, v231
	v_mul_f32_e32 v3, 0xbfb8aa3b, v226
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v65, 1.0, v4 :: v_dual_add_f32 v14, 1.0, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v16, v16, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v227
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_ldexp_f32 v17, v19, v17
	v_ldexp_f32 v19, v21, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v65, v65, v196
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v61, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v27
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, vcc_lo, v196, v65, v196
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, s0
	v_mul_f32_e32 v55, 0xbfb8aa3b, v96
	v_dual_fmac_f32 v61, 0xbfb8aa3b, v227 :: v_dual_add_f32 v18, 1.0, v18
	v_dual_fmac_f32 v3, 0xbfb8aa3b, v226 :: v_dual_fmac_f32 v64, 0xbfb8aa3b, v219
	v_mul_f32_e32 v21, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v61, v61
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s0
	v_exp_f32_e32 v67, v3
	v_exp_f32_e32 v64, v64
	v_dual_mul_f32 v25, 0xbfb8aa3b, v94 :: v_dual_fmac_f32 v2, 0xbfb8aa3b, v231
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, s1, v194, v10, v194
	v_div_scale_f32 v79, null, v18, v18, v201
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v20, v61, v20
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v61, v67, v62
	v_ldexp_f32 v62, v64, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v66, v69, 1.0
	v_div_scale_f32 v64, null, v14, v14, v195
	v_div_scale_f32 v67, null, v10, v10, v194
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v69, v63, v69 :: v_dual_add_f32 v20, 1.0, v20
	v_rcp_f32_e32 v63, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v71, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v68, v2, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v72, v70, v69 :: v_dual_add_f32 v11, 1.0, v11
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v15, 1.0, v15 :: v_dual_add_f32 v62, 1.0, v62
	v_add_f32_e32 v68, 1.0, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v66, v72, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v92
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v64, v63, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v75, -v67, v71, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v1, 0xbfb8aa3b, v85 :: v_dual_add_f32 v16, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v72, v74, v69 :: v_dual_fmac_f32 v63, v73, v63
	v_div_scale_f32 v73, s0, v195, v14, v195
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v3, 0xbfb8aa3b, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v75, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_mul_f32 v74, v73, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v66, v72, v70
	v_div_scale_f32 v75, null, v11, v11, v189
	v_mul_f32_e32 v78, v76, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v64, v74, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v77, v75
	v_div_fmas_f32 v66, v66, v69, v72
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v74, v70, v63
	v_fma_f32 v70, -v67, v78, v76
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v79
	v_div_fixup_f32 v65, v66, v65, v196
	v_fma_f32 v64, -v64, v74, v73
	v_fmac_f32_e32 v78, v70, v71
	v_fma_f32 v72, -v75, v77, 1.0
	v_div_scale_f32 v66, s2, v189, v11, v189
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v63, v64, v63, v74
	v_fma_f32 v64, -v67, v78, v76
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v76, null, v13, v13, v199
	v_fmac_f32_e32 v77, v72, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v64, v64, v71, v78
	v_fma_f32 v70, -v79, v69, 1.0
	v_div_scale_f32 v72, s0, v201, v18, v201
	v_mul_f32_e32 v67, v66, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v10, v64, v10, v194
	v_rcp_f32_e32 v64, v76
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, null, v12, v12, v200
	v_fma_f32 v73, -v75, v67, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v19, 1.0, v19 :: v_dual_mul_f32 v74, v72, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v70
	v_div_fixup_f32 v14, v63, v14, v195
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v78, -v76, v64, 1.0
	v_fma_f32 v63, -v79, v74, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v59, 0xbfb8aa3b, v106 :: v_dual_mul_f32 v24, 0xbfb8aa3b, v91
	v_dual_mul_f32 v29, 0xbfb8aa3b, v95 :: v_dual_mul_f32 v4, 0xbfb8aa3b, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v64, v78, v64 :: v_dual_fmac_f32 v67, v73, v77
	v_fma_f32 v73, -v70, v71, 1.0
	v_fmac_f32_e32 v74, v63, v69
	v_div_scale_f32 v63, s1, v200, v12, v200
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v66, -v75, v67, v66
	v_div_scale_f32 v75, null, v15, v15, v188
	v_dual_fmac_f32 v71, v73, v71 :: v_dual_mul_f32 v2, 0xbfb8aa3b, v86
	v_div_fmas_f32 v66, v66, v77, v67
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v73, v75
	v_fma_f32 v67, -v79, v74, v72
	v_div_scale_f32 v79, null, v34, v34, v198
	v_mul_f32_e32 v72, v63, v71
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v77, s2, v199, v13, v199
	v_div_scale_f32 v80, s0, v188, v15, v188
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v78, -v75, v73, 1.0
	v_div_fixup_f32 v11, v66, v11, v189
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp4:
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 s29, s29, 0xffff
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v78, v73
	v_rcp_f32_e32 v78, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v79, v78, 1.0
	v_fmac_f32_e32 v78, v81, v78
	v_div_fmas_f32 v67, v67, v69, v74
	v_fma_f32 v69, -v70, v72, v63
	v_mul_f32_e32 v74, v77, v64
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v81, s3, v198, v34, v198
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v72, v69, v71
	v_div_scale_f32 v69, null, v16, v16, v82
	v_div_fixup_f32 v66, v67, v18, v201
	v_fma_f32 v18, -v76, v74, v77
	v_mul_f32_e32 v67, v80, v73
	v_fma_f32 v63, -v70, v72, v63
	v_rcp_f32_e32 v70, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v74, v18, v64
	v_fma_f32 v18, -v75, v67, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v63, v63, v71, v72
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v71, -v76, v74, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v12, v63, v12, v200
	v_fma_f32 v72, -v69, v70, 1.0
	v_dual_fmac_f32 v67, v18, v73 :: v_dual_mul_f32 v18, v81, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v64, v71, v64, v74
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v70, v72, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v75, v67, v80
	v_div_scale_f32 v72, null, v17, v17, v233
	v_fma_f32 v74, -v79, v18, v81
	v_div_scale_f32 v75, s1, v82, v16, v82
	v_div_fmas_f32 v67, v71, v73, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v71, v72
	v_fmac_f32_e32 v18, v74, v78
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v13, v64, v13, v199
	v_div_fixup_f32 v63, v67, v15, v188
	v_div_scale_f32 v67, null, v19, v19, v232
	v_fma_f32 v15, -v79, v18, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v74, -v72, v71, 1.0
	v_div_fmas_f32 v15, v15, v78, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v18, v67
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v71, v74, v71
	v_div_scale_f32 v74, null, v68, v68, v231
	v_div_fixup_f32 v34, v15, v34, v198
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v76, v74
	v_fma_f32 v77, -v74, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v73, v75, v70 :: v_dual_fmac_f32 v76, v77, v76
	v_fma_f32 v64, -v69, v73, v75
	v_div_scale_f32 v77, null, v61, v61, v226
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v73, v64, v70
	v_div_scale_f32 v64, s0, v233, v17, v233
	v_rcp_f32_e32 v81, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v15, -v69, v73, v75
	v_fma_f32 v75, -v67, v18, 1.0
	v_div_fmas_f32 v15, v15, v70, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v18, v75, v18
	v_div_scale_f32 v73, null, v20, v20, v227
	v_div_scale_f32 v75, s1, v232, v19, v232
	v_mul_f32_e32 v69, v64, v71
	v_div_fixup_f32 v78, v15, v16, v82
	v_rcp_f32_e32 v15, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v16, v75, v18
	v_div_scale_f32 v82, null, v62, v62, v219
	v_fma_f32 v70, -v72, v69, v64
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v69, v70, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v73, v15, 1.0
	v_div_scale_f32 v70, s2, v231, v68, v231
	v_fma_f32 v64, -v72, v69, v64
	v_fma_f32 v72, -v67, v16, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v15, v80, v15
	v_fma_f32 v80, -v77, v81, 1.0
	v_fmac_f32_e32 v16, v72, v18
	v_div_fmas_f32 v64, v64, v71, v69
	v_rcp_f32_e32 v71, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v80, v81
	v_mul_f32_e32 v79, v70, v76
	v_div_scale_f32 v72, s0, v227, v20, v227
	v_div_fixup_f32 v64, v64, v17, v233
	v_fma_f32 v17, -v67, v16, v75
	v_fma_f32 v69, -v74, v79, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v67, v72, v15
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v75, -v82, v71, 1.0
	v_div_fmas_f32 v16, v17, v18, v16
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v18, -v73, v67, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v71, v75, v71
	v_fmac_f32_e32 v79, v69, v76
	v_div_scale_f32 v69, s3, v226, v61, v226
	v_div_fixup_f32 v75, v16, v19, v232
	v_fmac_f32_e32 v67, v18, v15
	v_fma_f32 v17, -v74, v79, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v70, v69, v81
	v_div_scale_f32 v74, s1, v219, v62, v219
	v_fma_f32 v16, -v77, v70, v69
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v18, v74, v71
	v_div_fmas_f32 v17, v17, v76, v79
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v73, v67, v72
	v_fmac_f32_e32 v70, v16, v81
	v_fma_f32 v16, -v82, v18, v74
	v_div_fixup_f32 v68, v17, v68, v231
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v18, v16, v71
	v_div_fmas_f32 v9, v9, v15, v67
	v_fma_f32 v15, -v77, v70, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v181
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v16, -v82, v18, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v15, v15, v81, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v67, v9, v20, v227
	v_div_fmas_f32 v8, v16, v71, v18
	v_div_fixup_f32 v61, v15, v61, v226
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v230, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v62, v8, v62, v219
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v6, v19, v17
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v180
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v17, v228, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v6, v15
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v179
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v15, v218, v12 :: v_dual_mul_f32 v12, v191, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v69, v69, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v10, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v16, v220, v66
	v_mul_f32_e32 v18, v221, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v6, v9
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, vcc_lo, v181, v69, v181
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v5
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v10, v8
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v229, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v9, 0xbfb8aa3b, v178 :: v_dual_mul_f32 v14, v193, v13
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v13, v192, v63 :: v_dual_add_f32 v66, 1.0, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v70, v65, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v9
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v187, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, null, v34, v34, v180
	v_div_scale_f32 v74, null, v66, v66, v179
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v5, v184, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v63
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v186, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v64, v74
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v73, v6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v6, v183, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v63, v72, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v74, v64, 1.0
	v_dual_fmac_f32 v65, v8, v65 :: v_dual_mul_f32 v8, v185, v68
	v_fmac_f32_e32 v72, v77, v72
	v_div_scale_f32 v68, s0, v180, v34, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v64, v73, v64
	v_dual_mul_f32 v76, v71, v65 :: v_dual_mul_f32 v11, v190, v78
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v70, v76, v71
	v_fmac_f32_e32 v76, v75, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v70, v76, v71
	v_mul_f32_e32 v70, v68, v72
	v_div_scale_f32 v71, s1, v179, v66, v179
	v_div_fmas_f32 v65, v67, v65, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v63, v70, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v76, v71, v64 :: v_dual_mul_f32 v7, v182, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v62, v65, v69, v181
	v_fmac_f32_e32 v70, v75, v72
	v_div_scale_f32 v73, null, v61, v61, v178
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v67, v73
	v_fma_f32 v63, -v63, v70, v68
	v_fma_f32 v65, -v74, v76, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v173
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v65, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v172
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v73, v67, 1.0
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v63, v63, v72, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v69, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v26, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, s2, v178, v61, v178
	v_fma_f32 v71, -v74, v76, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v30, v30, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v64, v71, v64, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v26, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v69, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v73, v70, v69
	v_div_scale_f32 v75, null, v68, v68, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v70, v30, v67
	v_div_fixup_f32 v30, v63, v34, v180
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v75
	v_div_fixup_f32 v26, v64, v66, v179
	v_fma_f32 v34, -v73, v70, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v66, null, v63, v63, v172
	v_div_fmas_f32 v34, v34, v67, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v69, -v75, v65, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v23, v34, v61, v178
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v170
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v69, v65
	v_div_scale_f32 v69, s0, v173, v68, v173
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v23, v177, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v64, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v66, v67, 1.0
	v_dual_mul_f32 v70, v69, v65 :: v_dual_fmac_f32 v61, 0xbfb8aa3b, v171
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v67, v71, v67
	v_div_scale_f32 v71, s1, v172, v63, v172
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v61
	v_ldexp_f32 v64, v64, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v75, v70, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v61, v61, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v64, v64, v170
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v34, v174, v62 :: v_dual_add_f32 v61, 1.0, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v73
	v_fma_f32 v62, -v73, v74, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v74, v62, v74
	v_fmac_f32_e32 v70, v72, v65
	v_mul_f32_e32 v72, v71, v67
	v_fma_f32 v69, -v75, v70, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v75, -v66, v72, v71
	v_div_fmas_f32 v65, v69, v65, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v72, v75, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, s0, v170, v64, v170
	v_div_fixup_f32 v65, v65, v68, v173
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v66, -v66, v72, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v68, null, v61, v61, v171
	v_div_fmas_f32 v37, v66, v67, v72
	v_mul_f32_e32 v71, v38, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v62, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v37, v37, v63, v172
	v_fma_f32 v63, -v73, v71, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v70, 0xbfb8aa3b, v165 :: v_dual_fmac_f32 v67, 0xbfb8aa3b, v164
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v63, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v68, v62, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v167, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v73, v71, v38
	v_fmac_f32_e32 v62, v72, v62
	v_div_scale_f32 v72, s1, v171, v61, v171
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v70, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v26, v176, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v63, v72, v62
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v67, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v163
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v68, v63, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v73, v73, v165
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v63, v32, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v67
	v_div_scale_f32 v75, null, v66, v66, v164
	v_div_fmas_f32 v31, v38, v74, v71
	v_fma_f32 v38, -v68, v63, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v75
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v38, v38, v62, v63
	v_fma_f32 v74, -v67, v70, 1.0
	v_div_scale_f32 v62, vcc_lo, v165, v73, v165
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v38, v38, v61, v171
	v_fmac_f32_e32 v70, v74, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v63, -v75, v72, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v162
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v30, v175, v30 :: v_dual_add_f32 v69, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v31, v64, v170
	v_fmac_f32_e32 v72, v63, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, s0, v164, v66, v164
	v_mul_f32_e32 v71, v62, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v31, v169, v38 :: v_dual_mul_f32 v32, v168, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v64, v63, v72
	v_div_scale_f32 v74, null, v69, v69, v163
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v38, -v67, v71, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v61, v61, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v75, v64, v63
	v_rcp_f32_e32 v76, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v38, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v61, 1.0, v61 :: v_dual_fmac_f32 v64, v68, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v67, v71, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v67, null, v61, v61, v162
	v_fma_f32 v63, -v75, v64, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v62, v62, v70, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v49, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v62, v62, v73, v165
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v63, v63, v72, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v157
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v67, v49, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, s0, v162, v61, v162
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v49, v71, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v151
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v63, v63, v66, v164
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v39, v41, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v166, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v74, v76, 1.0
	v_mul_f32_e32 v41, v72, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v67, v41, v72
	v_fmac_f32_e32 v76, v65, v76
	v_div_scale_f32 v65, s1, v163, v69, v163
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v149
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v41, v39, v49 :: v_dual_mul_f32 v64, v65, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v39, v71, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v74, v64, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v64, v66, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_exp_f32_e32 v33, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v74, v64, v65
	v_div_scale_f32 v74, null, v73, v73, v157
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v68, v74
	v_div_fmas_f32 v64, v65, v76, v64
	v_fma_f32 v65, -v67, v41, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v33, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v150
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v41, v65, v49, v41
	v_div_scale_f32 v66, null, v67, v67, v151
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v74, v68, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v33
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v66
	v_div_scale_f32 v72, vcc_lo, v157, v73, v157
	v_div_fixup_f32 v33, v41, v61, v162
	v_fmac_f32_e32 v68, v39, v68
	v_div_fixup_f32 v39, v64, v69, v163
	v_div_scale_f32 v75, s0, v151, v67, v151
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v161, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v49, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v66, v65, 1.0
	v_mul_f32_e32 v64, v72, v68
	v_div_scale_f32 v61, null, v71, v71, v149
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v160, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v41, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v70, -v74, v64, v72
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v159, v63
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v49
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v158, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v61
	v_fmac_f32_e32 v64, v70, v68
	v_mul_f32_e32 v70, v75, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v62, -v74, v64, v72
	v_fma_f32 v72, -v66, v70, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v76, -v61, v69, 1.0
	v_div_fmas_f32 v52, v62, v68, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v72, v65
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v52, v52, v73, v157
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v148
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, null, v63, v63, v150
	v_fma_f32 v66, -v66, v70, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v64, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v42, v66, v65, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v76, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, s1, v149, v71, v149
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v147
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v77, v74, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v62, v64, v62
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v42, v67, v151
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v72, v74
	v_div_scale_f32 v72, s2, v150, v63, v150
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v65, v72, v74
	v_fma_f32 v36, -v77, v65, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v65, v36, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v62, v62, v148
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v36, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v76, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v61, v68, v76
	v_fmac_f32_e32 v68, v73, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v61, -v61, v68, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v146
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v61, v61, v69, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v73
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v70
	v_fma_f32 v35, -v77, v65, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v145
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v35, v35, v74, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v68, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v70, v69, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v35, v35, v63, v150
	v_div_scale_f32 v68, null, v65, v65, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v69, v64, v69
	v_div_scale_f32 v64, vcc_lo, v148, v62, v148
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v68
	v_div_fixup_f32 v36, v61, v71, v149
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v76, v64, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v72, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v73, v73, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v35, v156, v35 :: v_dual_mul_f32 v36, v155, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v70, v76, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v68, v74, 1.0
	v_fmac_f32_e32 v76, v63, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v71, null, v66, v66, v145
	v_div_scale_f32 v63, s0, v147, v65, v147
	v_fma_f32 v64, -v70, v76, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v64, v64, v69, v76
	v_rcp_f32_e32 v69, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v153, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v52, v64, v62, v148
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v71, v69, 1.0
	v_fmac_f32_e32 v74, v67, v74
	v_fma_f32 v67, -v75, v61, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v42, v154, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v78, 0xbfb8aa3b, v140 :: v_dual_fmac_f32 v69, v64, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v63, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v61, v67, v61
	v_div_scale_f32 v67, s1, v146, v73, v146
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v68, v70, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v67, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v72, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v75, v76, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v48, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v68, v70, v63
	v_div_scale_f32 v68, s2, v145, v66, v145
	v_fmac_f32_e32 v76, v62, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v63, v63, v74, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	v_exp_f32_e32 v43, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v68, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v75, v76, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v71, v70, v68
	v_div_scale_f32 v75, null, v64, v64, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v137
	v_ldexp_f32 v43, v43, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v62, v75
	v_div_fmas_f32 v61, v67, v61, v76
	v_fmac_f32_e32 v70, v48, v69
	v_div_fixup_f32 v48, v63, v65, v147
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v43, v61, v73, v146
	v_fma_f32 v61, -v71, v70, v68
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v67, null, v63, v63, v139
	v_fma_f32 v68, -v75, v62, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v61, v61, v69, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v65, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v68, v62
	v_div_scale_f32 v68, s0, v140, v64, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v51
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v40, v61, v66, v145
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v68, v62
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v71, -v67, v69, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v65, v65, v137
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v138
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v75, v70, v68
	v_fmac_f32_e32 v69, v71, v69
	v_div_scale_f32 v71, s1, v139, v63, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v72, v62
	v_rcp_f32_e32 v74, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v72, v71, v69
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v143, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v75, v70, v68
	v_fma_f32 v75, -v67, v72, v71
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v61, v66, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v62, v68, v62, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v60
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v75, v69
	v_fma_f32 v66, -v73, v74, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v62, v62, v64, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v67, v72, v71
	v_fmac_f32_e32 v74, v66, v74
	v_div_scale_f32 v67, null, v61, v61, v138
	v_div_scale_f32 v60, s0, v137, v65, v137
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v66, v67
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v132
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v51, v64, v69, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v60, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	v_exp_f32_e32 v70, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v51, v63, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v131
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v67, v66, 1.0
	v_fma_f32 v63, -v73, v71, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v44
	v_exp_f32_e32 v69, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v72, v66
	v_div_scale_f32 v72, s1, v138, v61, v138
	v_fmac_f32_e32 v71, v63, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v70, v68
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v63, v72, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v73, v71, v60
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v64, v69, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v67, v63, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v130
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v69, null, v73, v73, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v64, 1.0, v64 :: v_dual_fmac_f32 v63, v50, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v50, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v69
	v_div_fmas_f32 v44, v60, v74, v71
	v_div_scale_f32 v75, null, v64, v64, v131
	v_fma_f32 v60, -v67, v63, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v72, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v60, v60, v66, v63
	v_fma_f32 v74, -v69, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v129
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, vcc_lo, v132, v73, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v50, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v74, v70
	v_div_fixup_f32 v60, v60, v61, v138
	v_fma_f32 v66, -v75, v72, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v63, v70
	v_div_fixup_f32 v50, v44, v65, v137
	v_fmac_f32_e32 v72, v66, v72
	v_div_scale_f32 v66, s0, v131, v64, v131
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v136, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v69, v71, v63
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v142, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v65, v66, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v61, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v68, v68, v130
	v_fmac_f32_e32 v71, v60, v70
	v_fma_f32 v60, -v75, v65, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v133, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v76, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v69, v71, v63
	v_fmac_f32_e32 v65, v60, v72
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v40, v144, v40 :: v_dual_mul_f32 v51, v134, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v63, v63, v70, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v75, v65, v66
	v_fma_f32 v60, -v74, v76, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v63, v63, v73, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v76, v60, v76
	v_div_fmas_f32 v65, v66, v72, v65
	v_div_scale_f32 v60, s1, v130, v68, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v125
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v65, v64, v131
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v60, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v70
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v62, v62, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v65, -v74, v66, v60
	v_div_scale_f32 v72, s0, v129, v62, v129
	v_rcp_f32_e32 v57, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v65, v76
	v_fma_f32 v60, -v74, v66, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v67, v57, 1.0
	v_fmac_f32_e32 v57, v71, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	v_ldexp_f32 v46, v53, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v52, v141, v52 :: v_dual_mul_f32 v53, v72, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v124
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v67, v53, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v71
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v107
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v73, v73, v125
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v53, v46, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v45, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v74
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v46, v71, v70
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v60, v60, v76, v66
	v_fma_f32 v66, -v67, v53, v72
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v45, v65
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v115
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v74, v69, 1.0
	v_div_fmas_f32 v53, v66, v57, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v57, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v67, v67, v124
	v_fmac_f32_e32 v69, v46, v69
	v_div_fixup_f32 v46, v60, v68, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v60, null, v71, v71, v107
	v_rcp_f32_e32 v66, v65
	v_div_scale_f32 v72, vcc_lo, v125, v73, v125
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v68, v60
	v_div_fixup_f32 v45, v53, v62, v129
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v57, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, s0, v124, v67, v124
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v152, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v65, v66, 1.0
	v_fma_f32 v76, -v60, v68, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v66, v53, v66 :: v_dual_mul_f32 v53, v127, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v76, v68
	v_dual_mul_f32 v62, v72, v69 :: v_dual_mul_f32 v57, v126, v63
	v_div_scale_f32 v76, s1, v107, v71, v107
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v50, v135, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v74, v62, v72
	v_fmac_f32_e32 v62, v70, v69
	v_mul_f32_e32 v70, v75, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v63, -v74, v62, v72
	v_fma_f32 v72, -v65, v70, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v59, v63, v69, v62
	v_fmac_f32_e32 v70, v72, v66
	v_mul_f32_e32 v69, v76, v68
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v59, v59, v73, v125
	v_fma_f32 v65, -v65, v70, v75
	v_fma_f32 v73, -v60, v69, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v58, v65, v66, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v73, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v63, v63
	v_cndmask_b32_e64 v70, 0, 0x42800000, s3
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v60, v69, v76
	v_div_fixup_f32 v58, v58, v67, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v70, 0xbfb8aa3b, v105 :: v_dual_fmac_f32 v73, 0xbfb8aa3b, v98
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, null, v64, v64, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v62, v63, v62
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v74, v77
	v_div_fmas_f32 v60, v60, v68, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v75, 1.0, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v62, v73
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v77, v74, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v46, v128, v46 :: v_dual_fmac_f32 v69, 0xbfb8aa3b, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v72, v74
	v_div_scale_f32 v72, s2, v115, v64, v115
	v_mul_f32_e32 v65, v72, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, -v77, v65, v72
	v_fmac_f32_e32 v65, v56, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v75, v75, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v54, -v77, v65, v72
	v_rcp_f32_e32 v68, v70
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v56, v56, v66
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v54, v54, v74, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v56, v62, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v70, v68, 1.0
	v_div_scale_f32 v73, vcc_lo, v106, v75, v106
	v_div_scale_f32 v63, null, v65, v65, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v62, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v62, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v63
	v_div_fixup_f32 v54, v54, v64, v115
	v_div_scale_f32 v69, null, v72, v72, v98
	v_mul_f32_e32 v76, v73, v68
	v_div_fixup_f32 v56, v60, v71, v107
	v_rcp_f32_e32 v60, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v64, -v70, v76, v73
	v_fma_f32 v67, -v63, v74, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v62, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v121, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v64, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v74, v67, v74
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v58, 1.0, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v69, v60, 1.0
	v_div_scale_f32 v64, s0, v105, v65, v105
	v_fma_f32 v66, -v70, v76, v73
	v_div_scale_f32 v73, null, v58, v58, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v60, v67, v60
	v_div_scale_f32 v67, s1, v98, v72, v98
	v_div_fmas_f32 v66, v66, v68, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v64, v74
	v_rcp_f32_e32 v55, v73
	v_mul_f32_e32 v76, v67, v60
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v120, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v63, v71, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v59, v66, v75, v106
	v_fma_f32 v66, -v69, v76, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v96
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v68, v74
	v_fma_f32 v68, -v73, v55, 1.0
	v_fmac_f32_e32 v76, v66, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v78
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v63, v71, v64
	v_fmac_f32_e32 v55, v68, v55
	v_div_scale_f32 v68, s2, v97, v58, v97
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v95
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v67, -v69, v76, v67
	v_div_fmas_f32 v63, v63, v74, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v29, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v68, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_exp_f32_e32 v28, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v63, v63, v65, v105
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v73, v71, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v75, null, v29, v29, v96
	v_fmac_f32_e32 v71, v66, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v28, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v60, v67, v60, v76
	v_rcp_f32_e32 v67, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v73, v71, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v60, v60, v72, v98
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v55, v64, v55, v71
	v_div_scale_f32 v66, null, v28, v28, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v75, v67, 1.0
	v_div_scale_f32 v25, s0, v96, v29, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v71, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v68, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v65, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v55, v55, v58, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v68, v25, v67 :: v_dual_add_f32 v73, 1.0, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v122, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v66, v71, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v64
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v123, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v75, v68, v25
	v_div_scale_f32 v74, null, v73, v73, v93
	v_fmac_f32_e32 v71, v69, v71
	v_div_scale_f32 v69, s1, v95, v28, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v68, v65, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v114, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v60, v74
	v_mul_f32_e32 v76, v69, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v58, v72, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v65, v113, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v75, v68, v25
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v63, -v66, v76, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v58, 1.0, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v72, v112, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v67, v68
	v_fma_f32 v59, -v74, v60, 1.0
	v_fmac_f32_e32 v76, v63, v71
	v_div_scale_f32 v63, null, v58, v58, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v60, v59, v60
	v_div_fixup_f32 v25, v25, v29, v96
	v_rcp_f32_e32 v59, v63
	v_fma_f32 v29, -v66, v76, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, s0, v93, v73, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v24
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v92
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v69, v27, v60
	v_div_fmas_f32 v24, v29, v71, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v63, v59, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v24, v28, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v91
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v74, v69, v27
	v_fmac_f32_e32 v59, v71, v59
	v_div_scale_f32 v71, s1, v94, v58, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v28, v60
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v67, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v28, v71, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v74, v69, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v63, v28, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v90
	v_ldexp_f32 v29, v68, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v28, v74, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v27, v60, v69
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v60, -v63, v28, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v29, v29, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v28, v60, v59, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v59, v67, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v27, v73, v93
	v_div_fixup_f32 v28, v28, v58, v94
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v59, 1.0, v59 :: v_dual_mul_f32 v66, v117, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, s0, v91, v29, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v78, null, v59, v59, v90
	v_fma_f32 v60, -v74, v71, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v119, v28
	v_mul_f32_e32 v67, v116, v25
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v79, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v60, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v118, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v27, v58, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v104, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v73, v77, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v78, v79, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v79, v27, v79 :: v_dual_add_f32 v22, 1.0, v22
	v_div_scale_f32 v27, s1, v90, v59, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v68, null, v22, v22, v92
	v_rcp_f32_e32 v21, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v68, v21, 1.0
	v_fmac_f32_e32 v21, v75, v21
	v_div_scale_f32 v75, vcc_lo, v92, v22, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v76, v75, v21
	v_fma_f32 v28, -v68, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v76, v28, v21
	v_fma_f32 v28, -v74, v73, v77
	v_fma_f32 v25, -v68, v76, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v73, v28, v71
	v_div_scale_f32 v28, null, v24, v24, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v21, v25, v21, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v74, v73, v77
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v58, v28
	v_div_fmas_f32 v4, v25, v71, v73
	v_mul_f32_e32 v25, v27, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, s0, v83, v24, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v4, v4, v29, v91
	v_fma_f32 v3, -v78, v25, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v25, v3, v79
	v_div_fixup_f32 v21, v21, v22, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_exp_f32_e32 v3, v69
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v2, -v28, v58, 1.0
	v_fma_f32 v27, -v78, v25, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_exp_f32_e32 v1, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v2, v58
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v3, v3, v68
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v86
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v3, 1.0, v3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v85
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v1, v1, v22
	v_exp_f32_e32 v68, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v27, v79, v25
	v_mul_f32_e32 v27, v73, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, null, v3, v3, v89
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v1, 1.0, v1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v25, v59, v90
	v_fma_f32 v71, -v28, v27, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v59, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v68, v68, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v79, s0, v88, v1, v88
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v22, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, null, v1, v1, v88
	v_fmac_f32_e32 v27, v71, v58
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v29, v59, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v75, v22
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v28, v27, v73
	v_div_scale_f32 v74, null, v71, v71, v86
	v_fmac_f32_e32 v59, v68, v59
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v73, v109, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v76, v74
	v_fma_f32 v68, -v22, v75, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v75, v68, v75
	v_div_fmas_f32 v27, v28, v58, v27
	v_div_scale_f32 v28, null, v2, v2, v85
	v_div_scale_f32 v58, vcc_lo, v89, v3, v89
	v_mul_f32_e32 v80, v79, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v77, v28
	v_fma_f32 v69, -v28, v77, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v77, v69, v77
	v_div_fixup_f32 v24, v27, v24, v83
	v_fma_f32 v27, -v74, v76, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v110, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v82, s2, v85, v2, v85
	v_fmac_f32_e32 v76, v27, v76
	v_div_scale_f32 v27, s1, v86, v71, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v83, v82, v77 :: v_dual_mul_f32 v68, v111, v24
	v_mul_f32_e32 v81, v27, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v74, v81, v27
	v_dual_mul_f32 v78, v58, v59 :: v_dual_fmac_f32 v81, v25, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v29, v78, v58
	v_fmac_f32_e32 v78, v24, v59
	v_fma_f32 v24, -v22, v80, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v4, -v29, v78, v58
	v_fmac_f32_e32 v80, v24, v75
	v_fma_f32 v24, -v28, v83, v82
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v29, |v57|, |v53|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v4, v4, v59, v78
	v_fma_f32 v22, -v22, v80, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v83, v24, v77
	v_fma_f32 v24, -v74, v81, v27
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v3, v4, v3, v89
	v_div_fmas_f32 v22, v22, v75, v80
	v_fma_f32 v25, -v28, v83, v82
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v75, v108, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v24, v24, v76, v81
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v1, v22, v1, v88
	v_div_fmas_f32 v25, v25, v77, v83
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v21, |v34|, |v30|
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v4, v24, v71, v86
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, |v26|, |v38|, |v37|
	v_max3_f32 v24, |v49|, |v41|, |v39|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v2, v25, v2, v85
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v33|, |v19|, |v17|
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v59, v103, v4
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v21, |v23|, v22
	v_max_f32_e64 v22, |v47|, |v42|
	v_max3_f32 v27, |v61|, |v51|, |v50|
	v_max3_f32 v21, v24, v25, |v18|
	v_max3_f32 v24, |v36|, |v52|, |v48|
	v_max3_f32 v28, |v44|, |v15|, |v14|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v58, v87, v2
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, |v32|, |v31|, |v20|
	v_max3_f32 v25, |v43|, |v40|, |v16|
	v_max3_f32 v71, |v46|, |v70|, |v62|
	v_max3_f32 v22, v22, |v35|, v24
	v_max3_f32 v24, v27, v28, |v13|
	v_max3_f32 v74, |v72|, |v65|, |v64|
	v_max3_f32 v76, |v55|, |v11|, |v9|
	v_max3_f32 v28, v29, |v45|, v71
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v102, v1
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v1, v4, v2, v21
	v_max3_f32 v2, v22, v25, v24
	v_max_f32_e64 v4, |v67|, |v66|
	v_max3_f32 v21, |v60|, |v75|, |v73|
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v29, v74, v76, |v10|
.Ltmp18:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v74, v101, v3
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v27, |v56|, |v54|, |v12|
	v_max3_f32 v4, v4, |v63|, v21
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v21, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, |v69|, |v68|, |v8|
	v_max3_f32 v24, |v74|, |v71|, |v59|
	v_max3_f32 v3, v28, v27, v29
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v27, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v21, v21, v21
	v_max3_f32 v25, |v58|, |v5|, |v6|
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v29, 0x60, v0
	v_permlanex16_b32 v28, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v76, 8, v0
	v_lshrrev_b32_e32 v79, 3, v84
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v24, v24, v25, |v7|
	v_max_f32_e32 v25, v27, v27
	v_dual_max_f32 v27, v28, v28 :: v_dual_max_f32 v2, v2, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v4, v4, v22, v24
	v_dual_max_f32 v1, v1, v25 :: v_dual_and_b32 v22, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v3, v3, v27 :: v_dual_and_b32 v24, 4, v0
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v21, v4, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v27, v22, 9, 0
	v_lshlrev_b32_e32 v28, 4, v0
	v_lshl_add_u32 v80, v24, 6, 0
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v21, v21, v21
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v25, 5, v22
	v_lshl_add_u32 v77, v24, 2, v27
	v_lshlrev_b32_e32 v27, 1, v84
	v_lshl_add_u32 v22, v22, 4, 0
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v21
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v28, 0x680, v28, v25
	v_xor_b32_e32 v78, v25, v29
	v_lshl_add_u32 v77, v76, 4, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v28, v28, v29
	v_add3_u32 v21, v77, v27, v78
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v28, v80, v79, v28
	ds_store_b128 v21, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v28
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v21, v1 :: v_dual_mov_b32 v28, v2
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v78, v4, v4
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v28, v28 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v77, v3
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_lshlrev_b32_e32 v76, 3, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v28, v28, v28 :: v_dual_max_f32 v21, v21, v21
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v77, v77 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
	v_dual_max_f32 v2, v2, v28 :: v_dual_max_f32 v1, v1, v21
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v21, v77, v77 :: v_dual_max_f32 v4, v78, v4
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v77, v2 :: v_dual_mov_b32 v28, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v78, v4
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v28, v28 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v21
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v77, v77, v77 :: v_dual_max_f32 v28, v28, v28
	v_dual_max_f32 v1, v1, v28 :: v_dual_max_f32 v28, v78, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v21, v3 :: v_dual_max_f32 v2, v2, v77
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v78, v2 :: v_dual_mov_b32 v77, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v28, v4 :: v_dual_max_f32 v21, v21, v21
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v28, v28 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v21 :: v_dual_max_f32 v78, v78, v78
	v_dual_max_f32 v77, v77, v77 :: v_dual_max_f32 v28, v28, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v21, v3 :: v_dual_max_f32 v2, v2, v78
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v77
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v77, 1, v29
	v_add_nc_u32_e32 v78, 0, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v28 :: v_dual_max_f32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v3, v3, v21
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v21, 5, v24
	v_add3_u32 v24, v78, v77, v76
	v_add3_u32 v21, v22, v21, v76
	ds_store_b128 v24, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp49:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v24, 4, v100
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[76:79], v21
.Ltmp51:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 48, v24
	v_or_b32_e32 v81, 32, v24
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v1, v76, v76 :: v_dual_max_f32 v78, v78, v78
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v21, 63, v0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v77, v77, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v22, 0x2b8cbccc, v1
	v_max_f32_e32 v78, 0x2b8cbccc, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v21
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v28, null, 0x40e00000, 0x40e00000, v22
	v_div_scale_f32 v83, null, 0x40e00000, 0x40e00000, v78
	v_div_scale_f32 v82, vcc_lo, v22, 0x40e00000, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v76, v28
	v_rcp_f32_e32 v85, v83
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s0, s34, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v4, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v77, 0x2b8cbccc, v77
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[30:31], v[3:4]
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v80, -v28, v76, 1.0
	v_fma_f32 v86, -v83, v85, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v87, null, 0x40e00000, 0x40e00000, v77
	v_fmac_f32_e32 v76, v80, v76
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v80, s0, s34, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v81, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v84, v82, v76
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[24:25], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v85, v86, v85
	v_div_scale_f32 v86, s6, v78, 0x40e00000, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v3, -v28, v84, v82
	v_max_f32_e32 v79, v79, v79
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 16, v24
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[24:25], v[80:81]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v84, v3, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s3, s34, v4
	v_add_co_ci_u32_e64 v4, null, s35, 0, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v28, -v28, v84, v82
	v_rcp_f32_e32 v82, v87
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[30:31], v[80:81]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v81.h, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[24:25], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v28, v28, v76, v84
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[30:31], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v22, v28, 0x40e00000, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v87, v82, 1.0
	v_fmac_f32_e32 v82, v80, v82
	v_dual_mul_f32 v76, v86, v85 :: v_dual_max_f32 v79, 0x2b8cbccc, v79
	v_div_scale_f32 v80, s7, v77, 0x40e00000, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v28, -v83, v76, v86
	v_div_scale_f32 v88, null, 0x40e00000, 0x40e00000, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v90, v80, v82
	v_rcp_f32_e32 v84, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v88, v84, 1.0
	v_fmac_f32_e32 v84, v89, v84
	v_div_scale_f32 v89, s8, v79, 0x40e00000, v79
	v_fmac_f32_e32 v76, v28, v85
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v28.l, v22.h
	v_mov_b16_e32 v28.h, v81.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v83, v76, v86
	v_mul_f32_e32 v83, v89, v84
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v28
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v28, -v87, v90, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v76, v3, v85, v76
	s_mov_b32 vcc_lo, s7
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v22, v22, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v90, v28, v82
	v_fma_f32 v28, -v88, v83, v89
	v_div_fixup_f32 v76, v76, 0x40e00000, v78
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s34, v24
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v85, 0xffff0000, v22
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v78, -v87, v90, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v81.l, v76.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v83, v28, v84
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s6
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v80, null, v85, v85, v34
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v28, v78, v82, v90
	v_fma_f32 v78, -v88, v83, v89
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v82, v80
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[24:25], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v28, v28, 0x40e00000, v77
	v_div_fmas_f32 v77, v78, v84, v83
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v83, null, v85, v85, v30
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v78, 1, v81
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[30:31], v[3:4]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v77, v77, 0x40e00000, v79
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v86, v83
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v84, -v80, v82, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v79.l, v28.h
	v_mov_b16_e32 v79.h, v81.h
	v_add3_u32 v3, v76, v78, 0x7fff
	v_mov_b16_e32 v81.l, v77.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v84, v82
	v_div_scale_f32 v84, vcc_lo, v34, v85, v34
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v83, v86, 1.0
	v_div_scale_f32 v87, null, v85, v85, v23
	v_mul_f32_e32 v79, v84, v82
	v_div_scale_f32 v89, null, v85, v85, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v76, v86
	v_div_scale_f32 v90, s8, v30, v85, v30
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v78, 1, v81
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v80, v79, v84
	v_rcp_f32_e32 v88, v87
	v_mul_f32_e32 v91, v90, v86
	v_div_scale_f32 v94, null, v85, v85, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v79, v81, v82
	v_rcp_f32_e32 v81, v89
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v28, v28, v4, 0x7fff
	v_add3_u32 v4, v77, v78, 0x7fff
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v77, 0xffff0000, v3
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v80, -v80, v79, v84
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v92, -v87, v88, 1.0
	v_fma_f32 v84, -v83, v91, v90
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v78, 0xffff0000, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v80, v82, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v93, -v89, v81, 1.0
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s9, v23, v85, v23
	v_rcp_f32_e32 v82, v94
	v_fmac_f32_e32 v81, v93, v81
	v_div_scale_f32 v93, null, v85, v85, v37
	v_fmac_f32_e32 v91, v84, v86
	v_mul_f32_e32 v80, v92, v88
	v_div_scale_f32 v84, s10, v26, v85, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v95, v93
	v_div_fixup_f32 v34, v79, v85, v34
	v_fma_f32 v79, -v83, v91, v90
	v_fma_f32 v83, -v87, v80, v92
	v_mul_f32_e32 v90, v84, v81
	v_fma_f32 v96, -v94, v82, 1.0
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v86, v91
	v_div_scale_f32 v86, s8, v38, v85, v38
	v_fmac_f32_e32 v82, v96, v82
	v_fmac_f32_e32 v80, v83, v88
	v_fma_f32 v83, -v89, v90, v84
	v_fma_f32 v91, -v93, v95, 1.0
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v76, 0xffff0000, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v30, v79, v85, v30
	v_fma_f32 v79, -v87, v80, v92
	v_div_scale_f32 v87, s11, v37, v85, v37
	v_fmac_f32_e32 v95, v91, v95
	v_dual_fmac_f32 v90, v83, v81 :: v_dual_mul_f32 v83, v86, v82
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v91, null, v85, v85, v32
	v_div_fmas_f32 v79, v79, v88, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v80, -v89, v90, v84
	v_fma_f32 v84, -v94, v83, v86
	v_mul_f32_e32 v89, v87, v95
	v_div_scale_f32 v92, null, v85, v85, v31
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v83, v84, v82
	v_fma_f32 v84, -v93, v89, v87
	v_rcp_f32_e32 v88, v91
	v_div_fixup_f32 v23, v79, v85, v23
	v_div_scale_f32 v96, null, v85, v85, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v89, v84, v95
	v_div_fmas_f32 v80, v80, v81, v90
	v_rcp_f32_e32 v81, v92
	v_fma_f32 v79, -v94, v83, v86
	v_div_scale_f32 v86, null, v85, v85, v20
	v_fma_f32 v90, -v91, v88, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v26, v80, v85, v26
	v_div_fmas_f32 v79, v79, v82, v83
	v_fma_f32 v82, -v93, v89, v87
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v92, v81, 1.0
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, null, v85, v85, v49
	v_div_fmas_f32 v82, v82, v95, v89
	v_fmac_f32_e32 v81, v84, v81
	v_rcp_f32_e32 v84, v86
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v95, v90
	v_div_scale_f32 v80, s9, v32, v85, v32
	v_div_scale_f32 v87, s8, v31, v85, v31
	v_div_fixup_f32 v38, v79, v85, v38
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v37, v82, v85, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v93, v87, v81
	v_fma_f32 v94, -v86, v84, 1.0
	v_div_scale_f32 v82, s10, v20, v85, v20
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v92, v93, v87
	v_fmac_f32_e32 v84, v94, v84
	v_fma_f32 v94, -v90, v95, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v79, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s11, v49, v85, v49
	v_mul_f32_e32 v83, v80, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v91, v83, v80
	v_fmac_f32_e32 v83, v89, v88
	v_div_scale_f32 v89, null, v85, v85, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v91, v83, v80
	v_rcp_f32_e32 v91, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v80, v80, v88, v83
	v_fma_f32 v83, -v92, v93, v87
	v_mul_f32_e32 v88, v94, v95
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v32, v80, v85, v32
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v89, v91, 1.0
	v_div_fmas_f32 v81, v83, v81, v93
	v_rcp_f32_e32 v83, v96
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v92, v91
	v_mul_f32_e32 v79, v82, v84
	v_div_scale_f32 v92, s8, v41, v85, v41
	v_div_fixup_f32 v31, v81, v85, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v87, -v86, v79, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v79, v87, v84
	v_fma_f32 v87, -v90, v88, v94
	v_fma_f32 v80, -v86, v79, v82
	v_fma_f32 v82, -v96, v83, 1.0
	v_div_scale_f32 v86, null, v85, v85, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v88, v87, v95
	v_div_scale_f32 v87, s9, v39, v85, v39
	v_fmac_f32_e32 v83, v82, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v82, v86
	v_fma_f32 v93, -v86, v82, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v82, v93, v82 :: v_dual_mul_f32 v81, v92, v91
	v_div_fmas_f32 v79, v80, v84, v79
	v_fma_f32 v80, -v90, v88, v94
	v_div_scale_f32 v90, null, v85, v85, v19
	v_fma_f32 v84, -v89, v81, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v20, v79, v85, v20
	v_div_scale_f32 v93, null, v85, v85, v17
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v81, v84, v91
	v_rcp_f32_e32 v84, v90
	v_div_fmas_f32 v80, v80, v95, v88
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v89, v81, v92
	v_div_scale_f32 v89, s10, v33, v85, v33
	v_div_fixup_f32 v49, v80, v85, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v79, v79, v91, v81
	v_fma_f32 v92, -v90, v84, 1.0
	v_rcp_f32_e32 v81, v93
	v_div_scale_f32 v91, s8, v19, v85, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v41, v79, v85, v41
	v_fmac_f32_e32 v84, v92, v84
	v_mul_f32_e32 v88, v87, v83
	v_div_scale_f32 v92, null, v85, v85, v18
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v94, v91, v84
	v_fma_f32 v80, -v96, v88, v87
	v_rcp_f32_e32 v95, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v41, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v80, v83
	v_mul_f32_e32 v80, v89, v82
	v_fma_f32 v79, -v96, v88, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v87, -v86, v80, v89
	v_fma_f32 v96, -v93, v81, 1.0
	v_div_fmas_f32 v79, v79, v83, v88
	v_fma_f32 v83, -v90, v94, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v96, v81
	v_fma_f32 v88, -v92, v95, 1.0
	v_fmac_f32_e32 v80, v87, v82
	v_div_scale_f32 v87, s9, v17, v85, v17
	v_div_fixup_f32 v39, v79, v85, v39
	v_dual_fmac_f32 v94, v83, v84 :: v_dual_fmac_f32 v95, v88, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v86, v80, v89
	v_mul_f32_e32 v83, v87, v81
	v_div_scale_f32 v88, null, v78, v78, v47
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v86, s11, v18, v85, v18
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v82, -v93, v83, v87
	v_rcp_f32_e32 v89, v88
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v33, v79, v85, v33
	v_fmac_f32_e32 v83, v82, v81
	v_fma_f32 v80, -v90, v94, v91
	v_div_scale_f32 v91, null, v78, v78, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v93, v83, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v80, v80, v84, v94
	v_fma_f32 v94, -v88, v89, 1.0
	v_rcp_f32_e32 v82, v91
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v87, null, v78, v78, v35
	v_div_fixup_f32 v19, v80, v85, v19
	v_fmac_f32_e32 v89, v94, v89
	v_div_scale_f32 v80, s8, v47, v78, v47
	v_mul_f32_e32 v90, v86, v95
	v_div_fmas_f32 v79, v79, v81, v83
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v83, v80, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v92, v90, v86
	v_div_fixup_f32 v17, v79, v85, v17
	v_fmac_f32_e32 v90, v84, v95
	v_fma_f32 v84, -v91, v82, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v92, v90, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v82, v84, v82
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v86, s9, v42, v78, v42
	v_div_scale_f32 v92, null, v78, v78, v36
	v_mul_f32_e32 v93, v86, v82
	v_div_fmas_f32 v81, v81, v95, v90
	v_fma_f32 v90, -v88, v83, v80
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v94, -v87, v84, 1.0
	v_fma_f32 v79, -v91, v93, v86
	v_div_fixup_f32 v18, v81, v85, v18
	v_fmac_f32_e32 v83, v90, v89
	v_div_scale_f32 v85, null, v78, v78, v52
	v_dual_fmac_f32 v84, v94, v84 :: v_dual_fmac_f32 v93, v79, v82
	v_div_scale_f32 v81, s10, v35, v78, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v88, v83, v80
	v_rcp_f32_e32 v88, v85
	v_rcp_f32_e32 v95, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v79, v81, v84
	v_div_scale_f32 v94, null, v78, v78, v48
	v_div_fmas_f32 v80, v80, v89, v83
	v_fma_f32 v83, -v91, v93, v86
	v_fma_f32 v86, -v87, v79, v81
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v85, v88, 1.0
	v_div_fixup_f32 v47, v80, v78, v47
	v_fmac_f32_e32 v79, v86, v84
	v_div_fmas_f32 v82, v83, v82, v93
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v88, v91, v88
	v_div_scale_f32 v91, s8, v52, v78, v52
	v_fma_f32 v80, -v87, v79, v81
	v_fma_f32 v90, -v92, v95, 1.0
	v_rcp_f32_e32 v83, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v81, v91, v88
	v_div_fixup_f32 v42, v82, v78, v42
	v_div_fmas_f32 v79, v80, v84, v79
	v_div_scale_f32 v87, s9, v48, v78, v48
	v_fma_f32 v84, -v85, v81, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v35, v79, v78, v35
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v94, v83, 1.0
	v_fmac_f32_e32 v81, v84, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v82, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v79, -v85, v81, v91
	v_div_scale_f32 v85, s10, v43, v78, v43
	v_fmac_f32_e32 v95, v90, v95
	v_div_scale_f32 v90, s11, v36, v78, v36
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v89, v90, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v92, v89, v90
	v_fmac_f32_e32 v89, v86, v95
	v_div_scale_f32 v86, null, v78, v78, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v92, v89, v90
	v_rcp_f32_e32 v82, v86
	v_div_scale_f32 v90, null, v78, v78, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v80, v80, v95, v89
	v_mul_f32_e32 v89, v87, v83
	v_rcp_f32_e32 v84, v90
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v36, v80, v78, v36
	v_fma_f32 v92, -v86, v82, 1.0
	v_fma_f32 v80, -v94, v89, v87
	v_div_fmas_f32 v79, v79, v88, v81
	v_div_scale_f32 v88, s8, v40, v78, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v82, v92, v82
	v_div_scale_f32 v92, null, v78, v78, v16
	v_fma_f32 v91, -v90, v84, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v89, v80, v83 :: v_dual_mul_f32 v80, v85, v82
	v_rcp_f32_e32 v81, v92
	v_div_fixup_f32 v52, v79, v78, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v91, null, v78, v78, v61
	v_fma_f32 v79, -v94, v89, v87
	v_fma_f32 v87, -v86, v80, v85
	v_mul_f32_e32 v93, v88, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v94, v91
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v95, -v92, v81, 1.0
	v_div_fmas_f32 v79, v79, v83, v89
	v_fmac_f32_e32 v80, v87, v82
	v_fma_f32 v83, -v90, v93, v88
	v_div_scale_f32 v87, s9, v16, v78, v16
	v_fmac_f32_e32 v81, v95, v81
	v_div_fixup_f32 v48, v79, v78, v48
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v91, v94, 1.0
	v_fma_f32 v79, -v86, v80, v85
	v_fmac_f32_e32 v93, v83, v84
	v_mul_f32_e32 v83, v87, v81
	v_div_scale_f32 v86, null, v78, v78, v51
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v94, v89, v94
	v_div_scale_f32 v85, s11, v61, v78, v61
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v90, v93, v88
	v_fma_f32 v82, -v92, v83, v87
	v_rcp_f32_e32 v88, v86
	v_div_scale_f32 v90, null, v78, v78, v50
	v_mul_f32_e32 v89, v85, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v82, v81
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v82, v90
	v_div_fmas_f32 v80, v80, v84, v93
	v_fma_f32 v84, -v91, v89, v85
	v_div_fixup_f32 v43, v79, v78, v43
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v86, v88, 1.0
	v_fma_f32 v79, -v92, v83, v87
	v_div_fixup_f32 v40, v80, v78, v40
	v_fmac_f32_e32 v89, v84, v94
	v_div_scale_f32 v80, s8, v51, v78, v51
	v_fmac_f32_e32 v88, v93, v88
	v_fma_f32 v84, -v90, v82, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v87, null, v78, v78, v44
	v_div_fmas_f32 v79, v79, v81, v83
	v_fma_f32 v81, -v91, v89, v85
	v_mul_f32_e32 v83, v80, v88
	v_fmac_f32_e32 v82, v84, v82
	v_div_scale_f32 v85, s9, v50, v78, v50
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v16, v79, v78, v16
	v_div_fmas_f32 v81, v81, v94, v89
	v_fma_f32 v89, -v86, v83, v80
	v_mul_f32_e32 v92, v85, v82
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v91, null, v78, v78, v15
	v_fmac_f32_e32 v83, v89, v88
	v_fma_f32 v79, -v90, v92, v85
	v_div_scale_f32 v95, null, v78, v78, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v94, v91
	v_fma_f32 v80, -v86, v83, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v92, v79, v82
	v_fma_f32 v93, -v87, v84, 1.0
	v_div_scale_f32 v89, null, v78, v78, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v80, v80, v88, v83
	v_fma_f32 v83, -v90, v92, v85
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v61, v81, v78, v61
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v81, s10, v44, v78, v44
	v_div_fmas_f32 v82, v83, v82, v92
	v_rcp_f32_e32 v83, v95
	v_fma_f32 v93, -v91, v94, 1.0
	v_rcp_f32_e32 v86, v89
	v_div_fixup_f32 v51, v80, v78, v51
	v_div_fixup_f32 v50, v82, v78, v50
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v94, v93, v94
	v_div_scale_f32 v93, s11, v15, v78, v15
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v95, v83, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v88, v93, v94
	v_fma_f32 v90, -v89, v86, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v82, v83
	v_mul_f32_e32 v79, v81, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v90, s8, v14, v78, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v85, -v87, v79, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v79, v85, v84
	v_fma_f32 v85, -v91, v88, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v87, v79, v81
	v_fmac_f32_e32 v88, v85, v94
	v_mul_f32_e32 v81, v90, v86
	v_div_scale_f32 v85, null, v77, v77, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v79, v80, v84, v79
	v_fma_f32 v80, -v91, v88, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v84, -v89, v81, v90
	v_div_scale_f32 v91, null, v77, v77, v53
	v_div_scale_f32 v87, s9, v13, v78, v13
	v_fmac_f32_e32 v81, v84, v86
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v84, v91
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v82, v85
	v_div_fmas_f32 v80, v80, v94, v88
	v_mul_f32_e32 v88, v87, v83
	v_div_fixup_f32 v44, v79, v78, v44
	v_fma_f32 v79, -v89, v81, v90
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v15, v80, v78, v15
	v_fma_f32 v80, -v95, v88, v87
	v_fma_f32 v90, -v91, v84, 1.0
	v_div_fmas_f32 v79, v79, v86, v81
	v_fma_f32 v92, -v85, v82, 1.0
	v_div_scale_f32 v89, s10, v57, v77, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v90, v84
	v_div_scale_f32 v90, null, v77, v77, v46
	v_fmac_f32_e32 v88, v80, v83
	v_fmac_f32_e32 v82, v92, v82
	v_div_scale_f32 v92, null, v77, v77, v45
	v_rcp_f32_e32 v94, v90
	v_div_fixup_f32 v14, v79, v78, v14
	v_fma_f32 v79, -v95, v88, v87
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v80, v89, v82
	v_rcp_f32_e32 v81, v92
	v_div_scale_f32 v86, s8, v53, v77, v53
	v_div_fmas_f32 v79, v79, v83, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v87, -v85, v80, v89
	v_fma_f32 v88, -v90, v94, 1.0
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v13, v79, v78, v13
	v_fmac_f32_e32 v80, v87, v82
	v_dual_fmac_f32 v94, v88, v94 :: v_dual_mul_f32 v93, v86, v84
	v_fma_f32 v95, -v92, v81, 1.0
	v_div_scale_f32 v87, s9, v45, v77, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v85, v80, v89
	v_fma_f32 v83, -v91, v93, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v95, v81
	v_div_scale_f32 v85, null, v77, v77, v70
	v_div_fmas_f32 v78, v78, v82, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v93, v83, v84
	v_mul_f32_e32 v79, v87, v81
	v_div_scale_f32 v83, s11, v46, v77, v46
	v_div_scale_f32 v89, null, v77, v77, v62
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v80, -v91, v93, v86
	v_rcp_f32_e32 v86, v85
	v_fma_f32 v82, -v92, v79, v87
	v_mul_f32_e32 v88, v83, v94
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v57, v78, v77, v57
	v_div_fmas_f32 v80, v80, v84, v93
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v84, -v90, v88, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v85, v86, 1.0
	v_fmac_f32_e32 v79, v82, v81
	v_rcp_f32_e32 v82, v89
	v_div_fixup_f32 v53, v80, v77, v53
	v_fmac_f32_e32 v88, v84, v94
	v_fmac_f32_e32 v86, v91, v86
	v_fma_f32 v78, -v92, v79, v87
	v_div_scale_f32 v80, s8, v70, v77, v70
	v_div_scale_f32 v87, null, v77, v77, v56
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v89, v82, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v14, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v84, v82
	v_div_fmas_f32 v78, v78, v81, v79
	v_fma_f32 v79, -v90, v88, v83
	v_mul_f32_e32 v81, v80, v86
	v_div_scale_f32 v84, s9, v62, v77, v62
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v45, v78, v77, v45
	v_div_fmas_f32 v79, v79, v94, v88
	v_fma_f32 v88, -v85, v81, v80
	v_mul_f32_e32 v91, v84, v82
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v94, null, v77, v77, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v88, v86
	v_fma_f32 v78, -v89, v91, v84
	v_rcp_f32_e32 v83, v87
	v_div_scale_f32 v90, null, v77, v77, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v85, v81, v80
	v_fmac_f32_e32 v91, v78, v82
	v_div_scale_f32 v88, null, v77, v77, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v93, v90
	v_div_fmas_f32 v80, v80, v86, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v81, -v89, v91, v84
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v92, -v87, v83, 1.0
	v_div_fixup_f32 v46, v79, v77, v46
	v_div_scale_f32 v79, s10, v56, v77, v56
	v_div_fmas_f32 v81, v81, v82, v91
	v_rcp_f32_e32 v82, v94
	v_rcp_f32_e32 v85, v88
	v_div_fixup_f32 v70, v80, v77, v70
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v62, v81, v77, v62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rndne_f32_e32 v62, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v94, v82, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v89, -v88, v85, 1.0
	v_dual_fmac_f32 v82, v81, v82 :: v_dual_fmac_f32 v83, v92, v83
	v_fma_f32 v92, -v90, v93, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, s8, v12, v77, v12
	v_dual_mul_f32 v78, v79, v83 :: v_dual_fmac_f32 v93, v92, v93
	v_div_scale_f32 v92, s11, v54, v77, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v80, v89, v85
	v_fma_f32 v84, -v87, v78, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v86, v92, v93
	v_fmac_f32_e32 v78, v84, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v84, -v90, v86, v92
	v_fma_f32 v79, -v87, v78, v79
	v_div_scale_f32 v87, s9, v72, v77, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v84, v93
	v_div_scale_f32 v84, null, v77, v77, v65
	v_div_fmas_f32 v78, v79, v83, v78
	v_fma_f32 v83, -v88, v80, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v90, v86, v92
	v_div_scale_f32 v90, null, v77, v77, v64
	v_div_fixup_f32 v56, v78, v77, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v83, v85
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v83, v90
	v_rcp_f32_e32 v81, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v88, v80, v89
	v_div_scale_f32 v88, s10, v65, v77, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v89, -v90, v83, 1.0
	v_fma_f32 v91, -v84, v81, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v89, v83
	v_div_fmas_f32 v79, v79, v93, v86
	v_mul_f32_e32 v86, v87, v82
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v89, null, v77, v77, v11
	v_div_fixup_f32 v54, v79, v77, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v94, v86, v87
	v_div_fmas_f32 v78, v78, v85, v80
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v85, s8, v64, v77, v64
	v_fmac_f32_e32 v86, v79, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v12, v78, v77, v12
	v_rcp_f32_e32 v93, v89
	v_mul_f32_e32 v92, v85, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v94, v86, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v82, v86
	v_div_scale_f32 v86, s9, v55, v77, v55
	v_fmac_f32_e32 v81, v91, v81
	v_div_scale_f32 v91, null, v77, v77, v55
	v_fma_f32 v82, -v90, v92, v85
	v_div_fixup_f32 v72, v78, v77, v72
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v80, v91
	v_fmac_f32_e32 v92, v82, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v91, v80, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v94, v80
	v_dual_mul_f32 v82, v86, v80 :: v_dual_mul_f32 v79, v88, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v84, v79, v88
	v_fmac_f32_e32 v79, v87, v81
	v_fma_f32 v87, -v89, v93, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v78, -v84, v79, v88
	v_fmac_f32_e32 v93, v87, v93
	v_div_scale_f32 v84, s11, v11, v77, v11
	v_div_scale_f32 v87, null, v77, v77, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v78, v78, v81, v79
	v_fma_f32 v79, -v90, v92, v85
	v_fma_f32 v81, -v91, v82, v86
	v_mul_f32_e32 v88, v84, v93
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v85, v87
	v_div_fmas_f32 v79, v79, v83, v92
	v_fmac_f32_e32 v82, v81, v80
	v_fma_f32 v83, -v89, v88, v84
	v_div_fixup_f32 v65, v78, v77, v65
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v90, null, v77, v77, v10
	v_fma_f32 v78, -v91, v82, v86
	v_fmac_f32_e32 v88, v83, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v92, -v87, v85, 1.0
	v_rcp_f32_e32 v81, v90
	v_div_scale_f32 v91, null, v76, v76, v66
	v_div_fmas_f32 v78, v78, v80, v82
	v_fma_f32 v80, -v89, v88, v84
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v64, v79, v77, v64
	v_fmac_f32_e32 v85, v92, v85
	v_div_scale_f32 v79, s8, v9, v77, v9
	v_div_fmas_f32 v80, v80, v93, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v90, v81, 1.0
	v_div_scale_f32 v84, s9, v10, v77, v10
	v_mul_f32_e32 v82, v79, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v11, v80, v77, v11
	v_rcp_f32_e32 v80, v91
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v55, v78, v77, v55
	v_fma_f32 v88, -v87, v82, v79
	v_div_scale_f32 v93, null, v76, v76, v60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v88, v85
	v_rcp_f32_e32 v95, v93
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v92, -v91, v80, 1.0
	v_fmac_f32_e32 v81, v83, v81
	v_div_scale_f32 v83, null, v76, v76, v67
	v_fma_f32 v79, -v87, v82, v79
	v_div_scale_f32 v87, null, v76, v76, v63
	v_rcp_f32_e32 v86, v83
	v_fmac_f32_e32 v80, v92, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v79, v79, v85, v82
	v_div_scale_f32 v85, s8, v66, v76, v66
	v_mul_f32_e32 v89, v84, v81
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v9, v79, v77, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v94, v85, v80
	v_fma_f32 v79, -v93, v95, 1.0
	v_fma_f32 v88, -v83, v86, 1.0
	v_fma_f32 v78, -v90, v89, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v95, v79, v95 :: v_dual_fmac_f32 v86, v88, v86
	v_rcp_f32_e32 v88, v87
	v_fmac_f32_e32 v89, v78, v81
	v_div_scale_f32 v78, s10, v67, v76, v67
	v_div_scale_f32 v79, s9, v60, v76, v60
	v_fma_f32 v82, -v90, v89, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v84, v78, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v87, v88, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v92, -v83, v84, v78
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s11, v63, v76, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v92, v86
	v_div_fmas_f32 v81, v82, v81, v89
	v_fma_f32 v82, -v91, v94, v85
	v_mul_f32_e32 v89, v90, v88
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v10, v81, v77, v10
	v_fma_f32 v77, -v83, v84, v78
	v_fma_f32 v78, -v87, v89, v90
	v_div_scale_f32 v81, null, v76, v76, v75
	v_dual_fmac_f32 v94, v82, v80 :: v_dual_mul_f32 v83, v79, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v89, v78, v88
	v_rcp_f32_e32 v78, v81
	v_div_fmas_f32 v77, v77, v86, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v91, v94, v85
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v84, null, v76, v76, v73
	v_div_fixup_f32 v67, v77, v76, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v80, v82, v80, v94
	v_fma_f32 v82, -v87, v89, v90
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v85, -v81, v78, 1.0
	v_fma_f32 v87, -v93, v83, v79
	v_rcp_f32_e32 v86, v84
	v_div_fmas_f32 v82, v82, v88, v89
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v78, v85, v78 :: v_dual_fmac_f32 v83, v87, v95
	v_div_scale_f32 v85, s8, v75, v76, v75
	v_div_fixup_f32 v63, v82, v76, v63
	v_div_scale_f32 v82, null, v76, v76, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v77, v85, v78
	v_fma_f32 v79, -v93, v83, v79
	v_div_fixup_f32 v66, v80, v76, v66
	v_rcp_f32_e32 v88, v82
	v_fma_f32 v80, -v84, v86, 1.0
	v_fma_f32 v87, -v81, v77, v85
	v_div_fmas_f32 v79, v79, v95, v83
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v66, v66
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v77, v87, v78
	v_div_scale_f32 v87, null, v76, v76, v68
	v_div_fixup_f32 v60, v79, v76, v60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v81, v77, v85
	v_fma_f32 v85, -v82, v88, 1.0
	v_rcp_f32_e32 v89, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v60, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v85, v88
	v_div_fmas_f32 v77, v79, v78, v77
	v_div_scale_f32 v85, null, v76, v76, v74
	v_div_scale_f32 v79, s8, v69, v76, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v75, v77, v76, v75
	v_fma_f32 v77, -v87, v89, 1.0
	v_fmac_f32_e32 v86, v80, v86
	v_div_scale_f32 v80, s10, v73, v76, v73
	v_rcp_f32_e32 v91, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v89, v77, v89
	v_div_scale_f32 v78, null, v76, v76, v8
	v_mul_f32_e32 v83, v80, v86
	v_div_scale_f32 v77, s9, v68, v76, v68
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v92, s10, v8, v76, v8
	v_fma_f32 v81, -v84, v83, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v93, -v85, v91, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v75, v75
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v93, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v83, v81, v86
	v_rcp_f32_e32 v81, v78
	v_div_scale_f32 v93, s11, v74, v76, v74
	v_fma_f32 v80, -v84, v83, v80
	v_mul_f32_e32 v84, v79, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v80, v80, v86, v83
	v_fma_f32 v90, -v78, v81, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v83, -v82, v84, v79
	v_mul_f32_e32 v86, v77, v89
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v73, v80, v76, v73
	v_dual_fmac_f32 v81, v90, v81 :: v_dual_fmac_f32 v84, v83, v88
	v_div_scale_f32 v90, null, v76, v76, v71
	v_fma_f32 v83, -v87, v86, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v82, v84, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v94, v90
	v_fmac_f32_e32 v86, v83, v89
	v_dual_mul_f32 v95, v92, v81 :: v_dual_mul_f32 v82, v93, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v79, v79, v88, v84
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v77, -v87, v86, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v80, -v78, v95, v92
	v_div_scale_f32 v84, null, v76, v76, v59
	v_fma_f32 v83, -v90, v94, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v77, v77, v89, v86
	v_fmac_f32_e32 v95, v80, v81
	v_fma_f32 v80, -v85, v82, v93
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v94, v83, v94
	v_div_scale_f32 v83, s8, v71, v76, v71
	v_fma_f32 v78, -v78, v95, v92
	v_fmac_f32_e32 v82, v80, v91
	v_div_fixup_f32 v68, v77, v76, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v80, v83, v94
	v_rcp_f32_e32 v86, v84
	v_div_fmas_f32 v78, v78, v81, v95
	v_fma_f32 v81, -v85, v82, v93
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v85, -v90, v80, v83
	v_div_fixup_f32 v69, v79, v76, v69
	v_div_fixup_f32 v8, v78, v76, v8
	v_div_fmas_f32 v81, v81, v91, v82
	v_div_scale_f32 v78, null, v76, v76, v58
	v_fmac_f32_e32 v80, v85, v94
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v74, v81, v76, v74
	v_div_scale_f32 v81, null, v76, v76, v6
	v_fma_f32 v79, -v84, v86, 1.0
	v_div_scale_f32 v88, null, v76, v76, v7
	v_rcp_f32_e32 v85, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v81, v85, 1.0
	v_fmac_f32_e32 v85, v92, v85
	v_fma_f32 v77, -v90, v80, v83
	v_div_scale_f32 v92, s10, v6, v76, v6
	v_rcp_f32_e32 v90, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v77, v77, v94, v80
	v_rcp_f32_e32 v80, v78
	v_div_scale_f32 v82, vcc_lo, v59, v76, v59
	v_mul_f32_e32 v96, v92, v85
	v_div_fixup_f32 v71, v77, v76, v71
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v94, -v88, v90, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v78, v80, 1.0
	v_fmac_f32_e32 v90, v94, v90
	v_div_scale_f32 v94, s11, v7, v76, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v77, v80
	v_div_scale_f32 v77, s8, v58, v76, v58
	v_fmac_f32_e32 v86, v79, v86
	v_div_scale_f32 v79, null, v76, v76, v5
	v_mul_f32_e32 v93, v77, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v87, v82, v86
	v_rcp_f32_e32 v83, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v84, v87, v82
	v_fmac_f32_e32 v87, v91, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v89, -v79, v83, 1.0
	v_fma_f32 v91, -v78, v93, v77
	v_fma_f32 v82, -v84, v87, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v89, v83
	v_div_scale_f32 v89, s9, v5, v76, v5
	v_fmac_f32_e32 v93, v91, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v82, v82, v86, v87
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v95, v89, v83
	s_mov_b32 s8, 0xc1000000
	v_fma_f32 v91, -v81, v96, v92
	v_mul_f32_e32 v97, v94, v90
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v30, v30, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v79, v95, v89
	v_fma_f32 v77, -v78, v93, v77
	v_fmac_f32_e32 v96, v91, v85
	v_fma_f32 v78, -v88, v97, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_cvt_i32_f32_e32 v30, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v84, v83
	v_div_fmas_f32 v77, v77, v80, v93
	s_mov_b32 vcc_lo, s9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v97, v78, v90
	v_fma_f32 v79, -v79, v95, v89
	v_fma_f32 v78, -v81, v96, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v88, v97, v94
	v_div_fmas_f32 v79, v79, v83, v95
	s_mov_b32 vcc_lo, s10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v88, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v85, v96
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v10, 15, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v90, v97
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v7, v80, v76, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v75, v75, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v26, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v59, v82, v76, v59
	v_div_fixup_f32 v58, v77, v76, v58
	v_div_fixup_f32 v5, v79, v76, v5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v7, v7, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v6, v78, v76, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v77, v18
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v92, v8
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v98, v7
	v_and_b32_e32 v7, 15, v23
	v_and_b32_e32 v8, 15, v26
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v23, 10, v0
	v_and_b32_e32 v26, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v5, v5
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_cvt_i32_f32_e32 v81, v13
	v_cvt_i32_f32_e32 v89, v63
	v_cvt_i32_f32_e32 v93, v71
	v_and_b32_e32 v13, 15, v20
	v_and_b32_e32 v20, 15, v77
	v_and_b32_e32 v63, 15, v66
	v_and_b32_e32 v66, 15, v75
	v_and_b32_e32 v71, 15, v74
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v74, 4, v99
	v_and_b32_e32 v23, 0x1800, v23
	v_lshlrev_b32_e32 v75, 6, v26
	v_lshlrev_b32_e32 v77, 6, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_med3_f32 v5, v5, s8, 0x40e00000
	v_med3_f32 v6, v6, s8, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v82, v45
	v_cvt_i32_f32_e32 v83, v46
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v90, v60
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v29, v74, v29
	v_add3_u32 v23, 0, v23, v75
	v_and_or_b32 v25, 0x1b00, v77, v25
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v76, v17
	v_cvt_i32_f32_e32 v78, v16
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v79, v15
	v_cvt_i32_f32_e32 v80, v14
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v84, v12
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v94, v59
	v_cvt_i32_f32_e32 v86, v11
	v_cvt_i32_f32_e32 v87, v9
	v_cvt_i32_f32_e32 v96, v5
	v_cvt_i32_f32_e32 v97, v6
	v_and_b32_e32 v6, 15, v30
	v_and_b32_e32 v9, 15, v38
	v_and_b32_e32 v11, 15, v32
	v_and_b32_e32 v12, 15, v31
	v_and_b32_e32 v14, 15, v49
	v_and_b32_e32 v17, 15, v33
	v_and_b32_e32 v30, 15, v47
	v_and_b32_e32 v31, 15, v42
	v_and_b32_e32 v32, 15, v35
	v_and_b32_e32 v33, 15, v36
	v_and_b32_e32 v35, 15, v48
	v_and_b32_e32 v36, 15, v43
	v_and_b32_e32 v37, 15, v40
	v_and_b32_e32 v40, 15, v51
	v_and_b32_e32 v46, 15, v57
	v_and_b32_e32 v47, 15, v53
	v_and_b32_e32 v48, 15, v82
	v_and_b32_e32 v49, 15, v83
	v_and_b32_e32 v51, 15, v62
	v_and_b32_e32 v57, 15, v64
	v_and_b32_e32 v62, 15, v67
	v_and_b32_e32 v64, 15, v89
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v23, v23, v29, v27
	v_xad_u32 v25, v25, v100, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v5, 15, v34
	v_and_b32_e32 v34, 15, v52
	v_and_b32_e32 v52, 15, v56
	v_and_b32_e32 v56, 15, v65
	v_and_b32_e32 v65, 15, v90
	v_cvt_i32_f32_e32 v85, v55
	v_and_b32_e32 v15, 15, v41
	v_and_b32_e32 v16, 15, v39
	v_and_b32_e32 v18, 15, v19
	v_and_b32_e32 v19, 15, v76
	v_and_b32_e32 v38, 15, v78
	v_and_b32_e32 v39, 15, v61
	v_and_b32_e32 v41, 15, v50
	v_and_b32_e32 v42, 15, v44
	v_and_b32_e32 v43, 15, v79
	v_and_b32_e32 v44, 15, v80
	v_and_b32_e32 v45, 15, v81
	v_and_b32_e32 v50, 15, v70
	v_and_b32_e32 v53, 15, v54
	v_and_b32_e32 v54, 15, v84
	v_and_b32_e32 v55, 15, v72
	v_and_b32_e32 v67, 15, v73
	v_and_b32_e32 v70, 15, v92
	v_and_b32_e32 v72, 15, v93
	v_and_b32_e32 v73, 15, v94
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v23, v[5:8]
	ds_store_b128 v23, v[13:16] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v25
	ds_load_b128 v[13:16], v25 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v23, v[30:33]
	ds_store_b128 v23, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v25
	ds_load_b128 v[38:41], v25 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v23, v[46:49]
	ds_store_b128 v23, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v25
	ds_load_b128 v[54:57], v25 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v23, v[62:65]
	ds_store_b128 v23, v[70:73] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[62:65], v25
	ds_load_b128 v[70:73], v25 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v23, v[9:12]
	ds_store_b128 v23, v[17:20] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v25
	ds_load_b128 v[17:20], v25 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v23, v[34:37]
	ds_store_b128 v23, v[42:45] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v25
	ds_load_b128 v[42:45], v25 offset:1024
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_and_b32_e32 v59, 15, v86
	v_and_b32_e32 v60, 15, v87
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v91, v68
	v_and_b32_e32 v61, 15, v88
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v95, v58
	v_and_b32_e32 v58, 15, v85
	v_and_b32_e32 v68, 15, v69
	v_and_b32_e32 v69, 15, v91
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_store_b128 v23, v[50:53]
	ds_store_b128 v23, v[58:61] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[50:53], v25
	ds_load_b128 v[58:61], v25 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v74, 15, v95
	v_and_b32_e32 v75, 15, v96
	v_and_b32_e32 v76, 15, v97
	v_and_b32_e32 v77, 15, v98
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v27, v42, 4, v33
	v_lshl_or_b32 v33, v55, 4, v47
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v47, 3, v99
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v6, v14, 4, v6
	v_lshl_or_b32 v14, v16, 4, v8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, s34, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v23, v[66:69]
	ds_store_b128 v23, v[74:77] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[66:69], v25
	ds_load_b128 v[74:77], v25 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v13, v13, 4, v5
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v5, s45, 7, v47
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v16, v18, 4, v10
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 16, v8
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v7, v15, 4, v7
	v_lshl_or_b32 v15, v17, 4, v9
	v_lshl_or_b32 v17, v19, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 32, v8
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v18, v20, 4, v12
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 48, v8
	v_mad_u64_u32 v[8:9], null, v8, s8, v[5:6]
	v_mad_u64_u32 v[9:10], null, v10, s8, v[5:6]
	v_mad_u64_u32 v[10:11], null, v11, s8, v[5:6]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v19, v38, 4, v29
	v_lshl_or_b32 v20, v39, 4, v30
	v_lshl_or_b32 v23, v40, 4, v31
	v_lshl_or_b32 v29, v43, 4, v34
	v_lshl_or_b32 v30, v44, 4, v35
	v_lshl_or_b32 v31, v45, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[11:12], null, v12, s8, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v14.l
	v_and_b16 v4.l, 0xff, v7.l
	v_lshlrev_b16 v5.l, 8, v6.l
	v_and_b16 v5.h, 0xff, v13.l
	v_lshlrev_b16 v6.l, 8, v18.l
	v_and_b16 v6.h, 0xff, v17.l
	v_lshlrev_b16 v7.l, 8, v16.l
	v_and_b16 v7.h, 0xff, v15.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v25, v41, 4, v32
	v_lshl_or_b32 v36, v58, 4, v50
	v_lshl_or_b32 v37, v59, 4, v51
	v_lshl_or_b32 v38, v60, 4, v52
	v_lshl_or_b32 v39, v61, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v4.l, v3.l
	v_or_b16 v12.l, v5.h, v5.l
	v_or_b16 v13.h, v6.h, v6.l
	v_or_b16 v13.l, v7.h, v7.l
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v6.l, 8, v31.l
	v_and_b16 v6.h, 0xff, v30.l
	v_lshlrev_b16 v7.l, 8, v29.l
	v_and_b16 v7.h, 0xff, v27.l
	s_and_b32 s9, s27, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s26
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v32, v54, 4, v46
	v_lshl_or_b32 v34, v56, 4, v48
	v_lshl_or_b32 v35, v57, 4, v49
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v44, v74, 4, v66
	v_lshl_or_b32 v45, v75, 4, v67
	v_lshl_or_b32 v46, v76, 4, v68
	v_lshl_or_b32 v24, v77, 4, v69
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v25.l
	v_and_b16 v4.l, 0xff, v23.l
	v_lshlrev_b16 v5.l, 8, v20.l
	v_and_b16 v5.h, 0xff, v19.l
	buffer_store_b64 v[12:13], v8, s[8:11], 0 offen
	v_or_b16 v13.h, v6.h, v6.l
	v_or_b16 v13.l, v7.h, v7.l
	v_lshlrev_b16 v6.l, 8, v39.l
	v_and_b16 v6.h, 0xff, v38.l
	v_lshlrev_b16 v7.l, 8, v37.l
	v_and_b16 v7.h, 0xff, v36.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v40, v70, 4, v62
	v_lshl_or_b32 v41, v71, 4, v63
	v_lshl_or_b32 v42, v72, 4, v64
	v_lshl_or_b32 v43, v73, 4, v65
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v4.l, v3.l
	v_or_b16 v12.l, v5.h, v5.l
	v_cndmask_b32_e32 v8, 0x80000000, v9, vcc_lo
	v_lshlrev_b16 v3.l, 8, v35.l
	v_and_b16 v4.l, 0xff, v34.l
	v_lshlrev_b16 v5.l, 8, v33.l
	v_and_b16 v5.h, 0xff, v32.l
	v_or_b16 v9.h, v6.h, v6.l
	v_or_b16 v9.l, v7.h, v7.l
	v_lshlrev_b16 v6.l, 8, v24.l
	v_and_b16 v6.h, 0xff, v46.l
	v_lshlrev_b16 v7.l, 8, v45.l
	v_and_b16 v7.h, 0xff, v44.l
	buffer_store_b64 v[12:13], v8, s[8:11], 0 offen
	v_or_b16 v8.h, v4.l, v3.l
	v_or_b16 v8.l, v5.h, v5.l
	v_lshlrev_b16 v3.l, 8, v43.l
	v_and_b16 v4.l, 0xff, v42.l
	v_lshlrev_b16 v5.l, 8, v41.l
	v_and_b16 v5.h, 0xff, v40.l
	v_or_b16 v13.h, v6.h, v6.l
	v_or_b16 v13.l, v7.h, v7.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v0
	v_lshrrev_b32_e32 v7, 2, v26
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v4.l, v3.l
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.l, v5.h, v5.l
	v_dual_cndmask_b32 v5, 0x80000000, v11 :: v_dual_and_b32 v6, 2, v6
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v7, 0, v7
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[8:9], v10, s[8:11], 0 offen
	buffer_store_b64 v[12:13], v5, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v5, 0, v47
	v_mov_b16_e32 v4.l, v28.h
	v_mov_b16_e32 v3.l, v22.h
	v_add3_u32 v6, v7, v6, v47
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1254 13 is_stmt 0             ; ragged.py:1254:13
	v_add_nc_u32_e32 v8, s34, v21
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	ds_store_b64 v5, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v3, v6
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v4, v8, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[24:25], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[30:31], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	v_cmp_eq_u32_e64 s1, 0, v0
	v_add_lshl_u32 v0, v4, s45, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v3, v0, s[28:31], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp52:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 504
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
		.amdhsa_next_free_sgpr 51
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 504
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 32112
; TotalNumSgprs: 53
; NumVgprs: 256
; ScratchSize: 504
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 53
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
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 504
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 125
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
