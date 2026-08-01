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
	s_load_b32 s78, s[0:1], 0x54
	s_load_b64 s[34:35], s[0:1], 0x5c
	s_load_b64 s[68:69], s[0:1], 0x48
	v_mov_b32_e32 v180, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_load_b256 s[60:67], s[0:1], 0x28
	s_mov_b32 s24, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v217, 0x80, v180
	v_lshrrev_b32_e32 v184, 7, v180
	v_and_b32_e32 v213, 15, v180
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_and_b32_e32 v214, 0x7f, v180
	v_or_b32_e32 v91, 30, v184
	v_or_b32_e32 v90, 28, v184
	v_or_b32_e32 v89, 26, v184
	v_or_b32_e32 v88, 24, v184
	v_or_b32_e32 v83, 22, v184
	v_or_b32_e32 v82, 20, v184
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s78, 0xff
	v_or_b32_e32 v81, 18, v184
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	v_or_b32_e32 v80, 16, v184
	s_lshr_b32 s4, s4, 24
	v_or_b32_e32 v75, 14, v184
	s_add_i32 s3, s3, s4
	v_or_b32_e32 v74, 12, v184
	s_ashr_i32 s3, s3, 8
	v_or_b32_e32 v73, 10, v184
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	v_or_b32_e32 v72, 8, v184
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_or_b32_e32 v68, 6, v184
	v_or_b32_e32 v67, 4, v184
	v_rcp_iflag_f32_e32 v0, s5
	v_or_b32_e32 v186, 2, v184
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
	v_cmp_eq_u32_e64 s2, 0, v217
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lt_i32 s34, 1
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_load_b64 s[6:7], s[0:1], 0x20
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v24, 5, v180
	s_clause 0x1
	s_load_b32 s29, s[0:1], 0x58
	s_load_b256 s[36:43], s[0:1], 0x0
	v_dual_mov_b32 v232, 0 :: v_dual_and_b32 v25, 0xe0, v180
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_dual_mov_b32 v61, 0 :: v_dual_lshlrev_b32 v26, 1, v214
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s0, s76, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s77, 0, s0
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_lshl_or_b32 v188, s79, 8, v26
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
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, 0, v1, vcc_lo
	v_add_co_u32 v14, s0, s76, v213
	v_add_co_u32 v12, vcc_lo, v0, 48
	v_add_co_ci_u32_e64 v15, null, s77, 0, s0
	v_add_co_ci_u32_e64 v13, null, 0, v1, vcc_lo
	v_add_co_u32 v16, vcc_lo, v0, 56
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[64:65], v[6:7]
	v_cmp_le_i64_e64 s4, s[64:65], v[8:9]
	v_cmp_le_i64_e64 s5, s[64:65], v[10:11]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[70:71], v[6:7]
	v_cmp_gt_i64_e64 s16, s[70:71], v[8:9]
	v_cmp_gt_i64_e64 s17, s[70:71], v[10:11]
	v_lshrrev_b32_e32 v6, 1, v25
	v_dual_mov_b32 v64, 0 :: v_dual_and_b32 v9, 0xf0, v180
	v_dual_mov_b32 v63, 0 :: v_dual_lshlrev_b32 v10, 5, v180
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v17, null, 0, v1, vcc_lo
	v_add_co_u32 v18, vcc_lo, v14, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, 0, v15, vcc_lo
	v_add_co_u32 v20, vcc_lo, v14, 32
	v_add_co_ci_u32_e64 v21, null, 0, v15, vcc_lo
	v_add_co_u32 v22, vcc_lo, v14, 48
	v_add3_u32 v193, 0, v213, v6
	v_dual_mov_b32 v225, 0 :: v_dual_lshlrev_b32 v6, 2, v9
	v_dual_mov_b32 v215, 0 :: v_dual_and_b32 v10, 32, v10
	v_dual_mov_b32 v224, 0 :: v_dual_add_nc_u32 v11, s76, v24
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[64:65], v[16:17]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s19, s[70:71], v[16:17]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v23, null, 0, v15, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[64:65], v[12:13]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[70:71], v[12:13]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[64:65], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[70:71], v[14:15]
	v_add3_u32 v6, 0, v6, v10
	v_dual_mov_b32 v221, 0 :: v_dual_add_nc_u32 v10, 8, v11
	v_dual_mov_b32 v212, 0 :: v_dual_add_nc_u32 v13, 16, v11
	v_dual_mov_b32 v219, 0 :: v_dual_add_nc_u32 v14, 24, v11
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[64:65], v[20:21]
	v_cmp_le_i64_e64 s11, s[64:65], v[22:23]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[70:71], v[20:21]
	v_cmp_gt_i64_e64 s23, s[70:71], v[22:23]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s7, s7, s19
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s19, s34, s26
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s6, s6, s18
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s18, s19, 1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[64:65], v[18:19]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s21, s[70:71], v[18:19]
	v_mul_lo_u32 v17, v10, s29
	v_dual_mov_b32 v187, 0 :: v_dual_add_nc_u32 v10, 32, v11
	v_mul_lo_u32 v18, v13, s29
	v_dual_mov_b32 v222, 0 :: v_dual_add_nc_u32 v13, 40, v11
	v_mul_lo_u32 v19, v14, s29
	v_dual_mov_b32 v183, 0 :: v_dual_lshlrev_b32 v14, 1, v184
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_or_b32 s18, s18, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s10, s10, s22
	s_and_b32 s11, s11, s23
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_mul_i32 s22, s78, s18
	s_lshl_b32 s18, s28, 8
	s_mul_i32 s23, s29, s26
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[70:71], v[0:1]
	v_dual_mov_b32 v231, 0 :: v_dual_add_nc_u32 v0, s76, v213
	v_mul_lo_u32 v16, v11, s29
	v_mul_lo_u32 v198, v10, s29
	v_mul_lo_u32 v199, v13, s29
	v_dual_mov_b32 v185, 0 :: v_dual_add_nc_u32 v10, 48, v11
	v_dual_mov_b32 v220, 0 :: v_dual_add_nc_u32 v11, 56, v11
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	v_add3_u32 v13, s22, s18, v180
	v_lshl_add_u32 v14, s23, 1, v14
	s_lshl_b32 s22, s25, 8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[64:65], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[70:71], v[2:3]
	v_dual_mov_b32 v227, 0 :: v_dual_add_nc_u32 v2, 32, v0
	v_mul_lo_u32 v200, v10, s29
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	v_subrev_nc_u32_e32 v10, s22, v13
	v_mul_lo_u32 v201, v11, s29
	v_dual_mov_b32 v218, 0 :: v_dual_add_nc_u32 v11, 61, v14
	v_dual_mov_b32 v230, 0 :: v_dual_and_b32 v1, 31, v180
	v_dual_mov_b32 v228, 0 :: v_dual_add_nc_u32 v3, 48, v0
	v_dual_mov_b32 v181, 0 :: v_dual_lshlrev_b32 v202, 1, v10
	v_mul_lo_u32 v2, s34, v2
	v_mul_lo_u32 v10, s78, v11
	v_dual_mov_b32 v229, 0 :: v_dual_lshlrev_b32 v12, 1, v180
	.loc	1 1153 29                       ; ragged.py:1153:29
	scratch_store_b32 off, v1, off offset:212 ; 4-byte Folded Spill
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v1, 16, v0
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mul_lo_u32 v3, s34, v3
	v_dual_mov_b32 v178, 0 :: v_dual_add_nc_u32 v11, 57, v14
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v1, s34, v1
	v_dual_mov_b32 v176, 0 :: v_dual_lshlrev_b32 v205, 1, v2
	v_add3_u32 v2, v10, s18, v26
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[64:65], v[4:5]
	v_dual_mov_b32 v179, 0 :: v_dual_lshlrev_b32 v204, 1, v3
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mul_lo_u32 v3, s78, v11
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[70:71], v[4:5]
	v_cndmask_b32_e64 v4, 0x88, 0, s2
	v_dual_mov_b32 v226, 0 :: v_dual_and_b32 v5, 24, v12
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_subrev_nc_u32_e32 v2, s22, v2
	v_dual_mov_b32 v175, 0 :: v_dual_lshlrev_b32 v206, 1, v1
	v_mul_lo_u32 v1, s78, v91
	v_xor_b32_e32 v4, v4, v214
	v_lshl_or_b32 v8, v213, 5, v5
	v_mul_lo_u32 v0, s34, v0
	v_add3_u32 v3, v3, s18, v26
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v2, 1, v2
	v_dual_mov_b32 v177, 0 :: v_dual_add_nc_u32 v10, 53, v14
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v4, off offset:220
	scratch_store_b32 off, v8, off offset:224
	scratch_store_b32 off, v12, off offset:216
	v_dual_mov_b32 v106, 0 :: v_dual_lshlrev_b32 v1, 1, v1
	scratch_store_b32 off, v2, off offset:228 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v2, s22, v3
	v_mul_lo_u32 v3, s78, v90
	v_dual_mov_b32 v112, 0 :: v_dual_lshlrev_b32 v207, 1, v0
	v_mul_lo_u32 v0, s78, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v2, 1, v2
	scratch_store_b32 off, v1, off offset:232 ; 4-byte Folded Spill
	v_dual_mov_b32 v98, 0 :: v_dual_lshlrev_b32 v3, 1, v3
	scratch_store_b32 off, v2, off offset:236 ; 4-byte Folded Spill
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v10, 49, v14
	v_add3_u32 v0, v0, s18, v26
	scratch_store_b32 off, v3, off offset:240 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s78, v88
	v_mul_lo_u32 v1, s78, v10
	v_mul_lo_u32 v11, s78, v89
	v_subrev_nc_u32_e32 v0, s22, v0
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v10, 45, v14
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v0, 1, v0
	v_lshlrev_b32_e32 v3, 1, v3
	v_add3_u32 v1, v1, s18, v26
	v_mul_lo_u32 v2, s78, v10
	v_mov_b32_e32 v127, 0
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v0, off offset:244
	scratch_store_b32 off, v213, off offset:380
	scratch_store_b32 off, v3, off offset:256
	scratch_store_b32 off, v83, off offset:436
	v_mul_lo_u32 v3, s78, v82
	v_lshlrev_b32_e32 v0, 1, v11
	v_mov_b32_e32 v146, 0
	s_mul_i32 s19, s19, s78
	v_add3_u32 v2, v2, s18, v26
	s_lshl_b32 s19, s19, 1
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v11, 37, v14
	v_lshlrev_b32_e32 v3, 1, v3
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s22, v1
	v_add3_u32 v15, s19, s18, v180
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v10, 41, v14
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v0, 1, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v180, off offset:376
	scratch_store_b32 off, v82, off offset:432
	v_subrev_nc_u32_e32 v13, s22, v15
	v_mul_lo_u32 v1, s78, v10
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s22, v2
	v_mul_lo_u32 v2, s78, v11
	v_dual_mov_b32 v182, 0 :: v_dual_lshlrev_b32 v203, 1, v13
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v13, 33, v14
	v_mul_lo_u32 v10, s78, v83
	v_dual_mov_b32 v145, 0 :: v_dual_add_nc_u32 v0, 1, v0
	v_add3_u32 v2, v2, s18, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v11, s78, v13
	v_mul_lo_u32 v13, s78, v81
	v_mov_b32_e32 v143, 0
	v_add3_u32 v1, v1, s18, v26
	v_subrev_nc_u32_e32 v2, s22, v2
	v_mov_b32_e32 v119, 0
	v_mov_b32_e32 v165, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v128, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v2, 1, v2
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:260
	scratch_store_b32 off, v214, off offset:384
	scratch_store_b32 off, v88, off offset:440
	v_lshlrev_b32_e32 v0, 1, v10
	v_add3_u32 v10, v11, s18, v26
	scratch_store_b32 off, v2, off offset:276 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v2, 1, v13
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v11, 25, v14
	v_subrev_nc_u32_e32 v10, s22, v10
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v0, off offset:264
	scratch_store_b32 off, v2, off offset:280
	scratch_store_b32 off, v89, off offset:444
	scratch_store_b32 off, v184, off offset:388
	v_add_nc_u32_e32 v2, 1, v10
	v_subrev_nc_u32_e32 v0, s22, v1
	v_add_nc_u32_e32 v1, 29, v14
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:284
	scratch_store_b32 off, v80, off offset:424
	v_mul_lo_u32 v2, s78, v80
	v_mul_lo_u32 v1, s78, v1
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v0, 1, v0
	v_dual_mov_b32 v163, 0 :: v_dual_add_nc_u32 v10, 17, v14
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v144, 0
	v_lshlrev_b32_e32 v2, 1, v2
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s78, v11
	v_add3_u32 v1, v1, s18, v26
	v_mul_lo_u32 v11, s78, v75
	v_mul_lo_u32 v10, s78, v10
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v173, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v1, s22, v1
	v_mul_lo_u32 v13, s78, v74
	v_add3_u32 v0, v0, s18, v26
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v15, 13, v14
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_subrev_nc_u32_e32 v0, s22, v0
	scratch_store_b32 off, v3, off offset:272 ; 4-byte Folded Spill
	v_dual_mov_b32 v160, 0 :: v_dual_add_nc_u32 v3, 21, v14
	v_dual_mov_b32 v167, 0 :: v_dual_add_nc_u32 v0, 1, v0
	scratch_store_b32 off, v1, off offset:292 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v1, 1, v11
	scratch_store_b32 off, v2, off offset:288 ; 4-byte Folded Spill
	v_add3_u32 v2, v10, s18, v26
	v_mul_lo_u32 v3, s78, v3
	v_mul_lo_u32 v10, s78, v73
	v_mov_b32_e32 v171, 0
	v_dual_mov_b32 v164, 0 :: v_dual_add_nc_u32 v11, 5, v14
	v_subrev_nc_u32_e32 v2, s22, v2
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v169, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v2, 1, v2
	scratch_store_b32 off, v1, off offset:296 ; 4-byte Folded Spill
	v_add3_u32 v1, v3, s18, v26
	v_lshlrev_b32_e32 v3, 1, v13
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s78, v15
	v_mul_lo_u32 v13, s78, v72
	v_subrev_nc_u32_e32 v1, s22, v1
	v_mov_b32_e32 v162, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v133, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v170, 0 :: v_dual_add_nc_u32 v1, 1, v1
	v_add3_u32 v0, v0, s18, v26
	scratch_store_b32 off, v3, off offset:304 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 9, v14
	v_mov_b32_e32 v155, 0
	v_xor_b32_e32 v4, 0x110, v4
	v_subrev_nc_u32_e32 v0, s22, v0
	v_mov_b32_e32 v153, 0
	v_mul_lo_u32 v3, s78, v3
	v_xor_b32_e32 v5, 8, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v147, 0 :: v_dual_add_nc_u32 v0, 1, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:324
	scratch_store_b32 off, v68, off offset:404
	v_mul_lo_u32 v0, s78, v68
	v_xor_b32_e32 v7, 16, v8
	v_mov_b32_e32 v125, 0
	v_xor_b32_e32 v8, 24, v8
	v_dual_mov_b32 v151, 0 :: v_dual_and_b32 v12, 28, v12
	v_mov_b32_e32 v223, 0
	v_dual_mov_b32 v216, 0 :: v_dual_lshlrev_b32 v9, 1, v9
	v_lshlrev_b32_e32 v0, 1, v0
	scratch_store_b32 off, v1, off offset:308 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v1, 1, v10
	v_lshlrev_b32_e32 v10, 1, v13
	v_mul_lo_u32 v13, s78, v184
	v_mov_b32_e32 v149, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s12
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:312
	scratch_store_b32 off, v91, off offset:452
	v_mul_lo_u32 v1, s78, v11
	v_mul_lo_u32 v11, s78, v186
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s12, s78, 1
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v245, 0, v9
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s12, s12, s29
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v109, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add3_u32 v1, v1, s18, v26
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	v_subrev_nc_u32_e32 v1, s22, v1
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v101, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v1, 1, v1
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v2, off offset:316
	scratch_store_b32 off, v90, off offset:448
	scratch_store_b32 off, v186, off offset:392
	v_add3_u32 v2, v3, s18, v26
	v_mul_lo_u32 v3, s78, v14
	s_add_i32 s18, s18, s78
	scratch_store_b32 off, v1, off offset:340 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v1, 1, v11
	v_subrev_nc_u32_e32 v2, s22, v2
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v87, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v2, 1, v2
	scratch_store_b32 off, v10, off offset:320 ; 4-byte Folded Spill
	v_mul_lo_u32 v10, s78, v67
	v_add3_u32 v3, s18, v3, v26
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v85, 0
	scratch_store_b32 off, v2, off offset:332 ; 4-byte Folded Spill
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v121, 0 :: v_dual_lshlrev_b32 v2, 1, v10
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s22, v3
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v110, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v0, 1, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:344
	scratch_store_b32 off, v217, off offset:396
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v79, 0
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v0, 1, v13
	scratch_store_b32 off, v67, off offset:400 ; 4-byte Folded Spill
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v115, 0
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	scratch_store_b32 off, v72, off offset:408 ; 4-byte Folded Spill
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v103, 0
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v5
	scratch_store_b32 off, v73, off offset:412 ; 4-byte Folded Spill
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v97, 0
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v7
	scratch_store_b32 off, v74, off offset:416 ; 4-byte Folded Spill
	v_mov_b32_e32 v126, 0
	v_mov_b32_e32 v120, 0
	v_mov_b32_e32 v78, 0
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v8
	scratch_store_b32 off, v75, off offset:420 ; 4-byte Folded Spill
	v_mov_b32_e32 v114, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v100, 0
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, v6, v12
	v_mov_b32_e32 v104, 0
	v_mov_b32_e32 v94, 0
	v_mov_b32_e32 v96, 0
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s33, s12, s26
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s13
	s_and_b32 s1, s1, s14
	s_and_b32 s3, s3, s15
	s_and_b32 s4, s4, s16
	s_and_b32 s5, s5, s17
	s_and_b32 s8, s8, s20
	s_and_b32 s9, s9, s21
	s_and_b32 s13, s37, 0xffff
	s_mov_b32 s12, s36
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_and_b32 s17, s39, 0xffff
	s_mov_b32 s16, s38
	s_add_u32 s35, s33, s78
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s21, s43, 0xffff
	s_mov_b32 s20, s42
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s36, s78, 2
	s_lshl_b32 s37, s78, 6
	s_mov_b32 s25, s24
	s_mov_b32 s26, s24
	s_mov_b32 s27, s24
	s_mov_b32 s28, s24
	s_mov_b32 s29, s24
	s_mov_b32 s30, s24
	s_mov_b32 s31, s24
	s_mov_b32 s38, s24
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v81, off offset:428
	scratch_store_b32 off, v0, off offset:372
	scratch_store_b32 off, v2, off offset:336
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	scratch_load_b32 v9, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v19, off offset:156
	scratch_store_b32 off, v18, off offset:152
	scratch_store_b32 off, v17, off offset:148
	scratch_store_b32 off, v16, off offset:144
	scratch_store_b32 off, v62, off offset:140
	scratch_store_b32 off, v63, off offset:136
	scratch_store_b32 off, v64, off offset:132
	scratch_store_b32 off, v122, off offset:128
	scratch_store_b32 off, v94, off offset:124
	scratch_store_b32 off, v136, off offset:120
	scratch_store_b32 off, v119, off offset:116
	scratch_store_b32 off, v70, off offset:112
	scratch_store_b32 off, v121, off offset:108
	scratch_store_b32 off, v95, off offset:104
	scratch_store_b32 off, v107, off offset:100
	scratch_store_b32 off, v132, off offset:96
	scratch_store_b32 off, v142, off offset:92
	scratch_store_b32 off, v69, off offset:88
	scratch_store_b32 off, v120, off offset:84
	scratch_store_b32 off, v61, off offset:80
	scratch_store_b32 off, v141, off offset:76
	scratch_store_b32 off, v155, off offset:72
	scratch_store_b32 off, v148, off offset:68
	scratch_store_b32 off, v66, off offset:64
	scratch_store_b32 off, v146, off offset:60
	scratch_store_b32 off, v65, off offset:56
	scratch_store_b32 off, v160, off offset:52
	scratch_store_b32 off, v145, off offset:48
	scratch_store_b32 off, v79, off offset:44
	scratch_store_b32 off, v85, off offset:40
	scratch_store_b32 off, v138, off offset:36
	scratch_store_b32 off, v87, off offset:32
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v139, off offset:28
	scratch_store_b32 off, v86, off offset:24
	scratch_store_b32 off, v140, off offset:20
	scratch_store_b32 off, v77, off offset:16
	scratch_store_b32 off, v130, off offset:12
	scratch_store_b32 off, v84, off offset:8
	scratch_store_b32 off, v78, off offset:4
	scratch_store_b32 off, v131, off
	v_mov_b32_e32 v191, v175
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v7, off, off offset:212
	scratch_load_b32 v8, off, off offset:352
	v_mov_b32_e32 v214, v183
	v_mov_b32_e32 v190, v174
	v_mov_b32_e32 v174, v143
	v_mov_b32_e32 v194, v166
	v_dual_mov_b32 v166, v111 :: v_dual_mov_b32 v195, v229
	v_mov_b32_e32 v124, v100
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s42, s14
	s_mov_b32 s43, s15
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s22, s14
	s_mov_b32 s23, s15
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s34, s34, -1
	v_mov_b32_e32 v142, v147
	v_mov_b32_e32 v196, v230
	v_mov_b32_e32 v180, v133
	v_mov_b32_e32 v230, v228
	v_mov_b32_e32 v210, v178
	v_mov_b32_e32 v178, v152
	v_mov_b32_e32 v152, v135
	v_mov_b32_e32 v184, v129
	v_mov_b32_e32 v208, v176
	v_dual_mov_b32 v176, v171 :: v_dual_mov_b32 v147, v92
	v_dual_mov_b32 v141, v157 :: v_dual_mov_b32 v148, v150
	v_dual_mov_b32 v150, v128 :: v_dual_mov_b32 v157, v93
	v_mov_b32_e32 v133, v112
	v_mov_b32_e32 v112, v96
	v_dual_mov_b32 v128, v76 :: v_dual_mov_b32 v155, v71
	v_dual_mov_b32 v129, v115 :: v_dual_mov_b32 v228, v226
	v_mov_b32_e32 v226, v224
	v_mov_b32_e32 v224, v222
	v_mov_b32_e32 v222, v220
	v_dual_mov_b32 v220, v218 :: v_dual_mov_b32 v211, v179
	v_dual_mov_b32 v218, v215 :: v_dual_mov_b32 v179, v173
	v_mov_b32_e32 v215, v185
	v_mov_b32_e32 v185, v162
	v_mov_b32_e32 v209, v177
	v_dual_mov_b32 v177, v158 :: v_dual_mov_b32 v158, v137
	v_dual_mov_b32 v173, v117 :: v_dual_mov_b32 v162, v159
	v_mov_b32_e32 v159, v125
	v_mov_b32_e32 v137, v126
	v_dual_mov_b32 v125, v103 :: v_dual_mov_b32 v126, v104
	v_dual_mov_b32 v217, v212 :: v_dual_mov_b32 v212, v181
	v_mov_b32_e32 v181, v154
	v_dual_mov_b32 v154, v102 :: v_dual_mov_b32 v183, v156
	v_dual_mov_b32 v156, v116 :: v_dual_mov_b32 v143, v123
	v_mov_b32_e32 v123, v106
	v_mov_b32_e32 v229, v227
	v_mov_b32_e32 v227, v225
	v_mov_b32_e32 v225, v223
	v_mov_b32_e32 v223, v221
	v_mov_b32_e32 v221, v219
	v_dual_mov_b32 v219, v216 :: v_dual_mov_b32 v216, v187
	v_dual_mov_b32 v187, v164 :: v_dual_mov_b32 v164, v109
	v_dual_mov_b32 v186, v163 :: v_dual_mov_b32 v163, v108
	s_waitcnt vmcnt(2)
	v_add3_u32 v49, v9, s38, v188
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v9, s33, v49
	v_add_nc_u32_e32 v49, s35, v49
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v41, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:336 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v48, v9, s38, v188
	v_dual_mov_b32 v175, v144 :: v_dual_mov_b32 v144, v134
	v_mov_b32_e32 v134, v113
	v_mov_b32_e32 v113, v97
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v9, s33, v48
	v_add_nc_u32_e32 v48, s35, v48
	buffer_load_u16 v43, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:328 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v47, v9, s38, v188
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v9, s33, v47
	v_add_nc_u32_e32 v47, s35, v47
	buffer_load_u16 v45, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v46, v9, s38, v188
	v_mov_b32_e32 v135, v114
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v114, v98 :: v_dual_add_nc_u32 v9, s33, v46
	v_add_nc_u32_e32 v46, s35, v46
	buffer_load_u16 v51, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:312 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v42, v9, s38, v188
	v_mov_b32_e32 v115, v99
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v9, s33, v42
	v_add_nc_u32_e32 v42, s35, v42
	buffer_load_u16 v52, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v44, v9, s38, v188
	v_mov_b32_e32 v171, v153
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v9, s33, v44
	v_add_nc_u32_e32 v44, s35, v44
	buffer_load_u16 v53, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v255, v9, s38, v188
	v_mov_b32_e32 v153, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v9, s33, v255
	buffer_load_u16 v54, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:288 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v254, v9, s38, v188
	v_add_nc_u32_e32 v9, s33, v254
	buffer_load_u16 v55, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v253, v9, s38, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v9, s33, v253
	buffer_load_u16 v56, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v252, v9, s38, v188
	v_add_nc_u32_e32 v9, s33, v252
	buffer_load_u16 v57, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v251, v9, s38, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v9, s33, v251
	buffer_load_u16 v58, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v250, v9, s38, v188
	v_add_nc_u32_e32 v9, s33, v250
	buffer_load_u16 v59, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v249, v9, s38, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v9, s33, v249
	buffer_load_u16 v60, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v248, v9, s38, v188
	v_add_nc_u32_e32 v9, s33, v248
	buffer_load_u16 v61, v9, s[16:19], 0 offen
	scratch_load_b32 v9, off, off offset:232 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v0, v7, v16
	v_add3_u32 v50, v8, s38, v188
	v_add_nc_u32_e32 v1, v7, v17
	v_add_nc_u32_e32 v2, v7, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_add_nc_u32 v3, v7, v19
	v_add_nc_u32_e32 v4, v7, v198
	v_add_nc_u32_e32 v5, v7, v199
	v_add_nc_u32_e32 v6, v7, v200
	v_add_nc_u32_e32 v7, v7, v201
	v_add_nc_u32_e32 v8, s33, v50
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	v_cndmask_b32_e64 v5, 0x80000000, v5, s5
	v_cndmask_b32_e64 v6, 0x80000000, v6, s6
	v_cndmask_b32_e64 v7, 0x80000000, v7, s7
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
	v_add_nc_u32_e32 v50, s35, v50
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v200, 32, v200
	v_add_nc_u32_e32 v198, 32, v198
	v_add_nc_u32_e32 v201, 32, v201
	v_add_nc_u32_e32 v199, 32, v199
	s_waitcnt vmcnt(9)
	v_add3_u32 v247, v9, s38, v188
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v9, s33, v247
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v62, v9, s[16:19], 0 offen
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
	v_add_nc_u32_e32 v246, 0, v0
	ds_store_b16 v246, v8
	ds_store_b16 v246, v41 offset:512
	ds_store_b16 v246, v43 offset:1024
	ds_store_b16 v246, v45 offset:1536
	ds_store_b16 v246, v51 offset:2048
	ds_store_b16 v246, v52 offset:2560
	ds_store_b16 v246, v53 offset:3072
	ds_store_b16 v246, v54 offset:3584
	ds_store_b16 v246, v55 offset:4096
	ds_store_b16 v246, v56 offset:4608
	ds_store_b16 v246, v57 offset:5120
	ds_store_b16 v246, v58 offset:5632
	ds_store_b16 v246, v59 offset:6144
	ds_store_b16 v246, v60 offset:6656
	ds_store_b16 v246, v61 offset:7168
	ds_store_b16 v246, v62 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v193 offset:1280
	ds_load_u8 v1, v193 offset:1024
	ds_load_u8 v41, v193 offset:1920
	ds_load_u8 v43, v193 offset:1664
	ds_load_u8 v45, v193 offset:1408
	ds_load_u8 v59, v193 offset:1152
	ds_load_u8 v71, v193 offset:2432
	ds_load_u8 v72, v193 offset:2176
	ds_load_u8 v92, v193 offset:4224
	ds_load_u8 v96, v193 offset:7296
	ds_load_u8 v97, v193 offset:7040
	ds_load_u8 v98, v193 offset:6784
	ds_load_u8 v99, v193 offset:6528
	ds_load_u8 v101, v193 offset:6272
	ds_load_u8 v93, v193 offset:8064
	ds_load_u8 v94, v193 offset:7808
	ds_load_u8 v95, v193 offset:7552
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v193 offset:1792
	ds_load_u8 v2, v193 offset:1536
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v45, v59, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v41, 16, v45
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v45, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v193 offset:256
	ds_load_u8 v3, v193
	ds_load_u8 v60, v193 offset:896
	ds_load_u8 v61, v193 offset:640
	ds_load_u8 v62, v193 offset:384
	ds_load_u8 v64, v193 offset:128
	v_lshl_or_b32 v76, v1, 16, v0
	ds_load_u8 v0, v193 offset:3328
	ds_load_u8 v1, v193 offset:3072
	ds_load_u8 v65, v193 offset:3968
	ds_load_u8 v66, v193 offset:3712
	ds_load_u8 v67, v193 offset:3456
	ds_load_u8 v68, v193 offset:3200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v193 offset:768
	ds_load_u8 v4, v193 offset:512
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v43, v64, v62, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v3, 16, v2
	ds_load_u8 v1, v193 offset:3840
	ds_load_u8 v2, v193 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v193 offset:2304
	ds_load_u8 v3, v193 offset:2048
	ds_load_u8 v69, v193 offset:2944
	ds_load_u8 v70, v193 offset:2688
	v_lshl_or_b32 v78, v1, 16, v0
	ds_load_u8 v0, v193 offset:5376
	ds_load_u8 v1, v193 offset:5120
	ds_load_u8 v73, v193 offset:6016
	ds_load_u8 v74, v193 offset:5760
	ds_load_u8 v83, v193 offset:5504
	ds_load_u8 v84, v193 offset:5248
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v193 offset:2816
	ds_load_u8 v4, v193 offset:2560
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v3, 16, v2
	ds_load_u8 v1, v193 offset:5888
	ds_load_u8 v2, v193 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v193 offset:4352
	ds_load_u8 v3, v193 offset:4096
	ds_load_u8 v89, v193 offset:4992
	ds_load_u8 v90, v193 offset:4736
	ds_load_u8 v91, v193 offset:4480
	v_lshl_or_b32 v80, v1, 16, v0
	ds_load_u8 v0, v193 offset:7424
	ds_load_u8 v1, v193 offset:7168
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v193 offset:4864
	ds_load_u8 v4, v193 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v3, 16, v2
	ds_load_u8 v1, v193 offset:7936
	ds_load_u8 v2, v193 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v193 offset:6400
	ds_load_u8 v3, v193 offset:6144
	v_lshl_or_b32 v82, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v193 offset:6912
	ds_load_u8 v4, v193 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v3, 16, v2
	v_dual_mov_b32 v1, s24 :: v_dual_mov_b32 v2, s25
	v_dual_mov_b32 v3, s26 :: v_dual_mov_b32 v4, s27
	v_dual_mov_b32 v5, s28 :: v_dual_mov_b32 v6, s29
	v_dual_mov_b32 v7, s30 :: v_dual_mov_b32 v8, s31
	v_wmma_i32_16x16x16_iu4 v[51:58], v[75:76], v[25:26], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[51:58], v[77:78], v[29:30], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[51:58], v[79:80], v[33:34], v[51:58] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[51:58], v[81:82], v[37:38], v[51:58] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v63, v51
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v51, v61, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v107, v52
	v_cvt_f32_i32_e32 v119, v53
	v_cvt_f32_i32_e32 v122, v56
	v_cvt_f32_i32_e32 v136, v58
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v85, v51, 16, v43
	v_perm_b32 v43, v66, v65, 0xc0c0004
	v_perm_b32 v51, v70, v69, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v120, v54
	v_cvt_f32_i32_e32 v132, v57
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[64:71], v[85:86], v[25:26], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v88, v43, 16, v41
	v_lshl_or_b32 v87, v51, 16, v45
	v_perm_b32 v41, v84, v83, 0xc0c0004
	v_perm_b32 v43, v74, v73, 0xc0c0004
	v_perm_b32 v45, v92, v91, 0xc0c0004
	v_perm_b32 v51, v90, v89, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[64:71], v[87:88], v[29:30], v[64:71] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v121, v55
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v90, v43, 16, v41
	v_perm_b32 v41, v96, v95, 0xc0c0004
	v_lshl_or_b32 v89, v51, 16, v45
	v_perm_b32 v43, v94, v93, 0xc0c0004
	v_perm_b32 v45, v101, v99, 0xc0c0004
	v_perm_b32 v51, v98, v97, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[64:71], v[89:90], v[33:34], v[64:71] neg_lo:[1,1,0]
	v_lshl_or_b32 v92, v43, 16, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v91, v51, 16, v45
	v_wmma_i32_16x16x16_iu4 v[64:71], v[91:92], v[37:38], v[64:71] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v64
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v69
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v70
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v71
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v65
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v66
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v67
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v68
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[64:71], v[75:76], v[27:28], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[64:71], v[77:78], v[31:32], v[64:71] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[64:71], v[79:80], v[35:36], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[64:71], v[81:82], v[39:40], v[64:71] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v233, v64
	v_cvt_f32_i32_e32 v192, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v197, v66
	v_cvt_f32_i32_e32 v43, v67
	v_cvt_f32_i32_e32 v52, v68
	v_cvt_f32_i32_e32 v53, v69
	v_cvt_f32_i32_e32 v56, v70
	v_cvt_f32_i32_e32 v59, v71
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[64:71], v[85:86], v[27:28], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[64:71], v[87:88], v[31:32], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[64:71], v[89:90], v[35:36], v[64:71] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[64:71], v[91:92], v[39:40], v[64:71] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v145, v65
	v_cvt_f32_i32_e32 v146, v66
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v160, v67
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v69
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v70
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v71
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v68
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[64:71], v[75:76], v[9:10], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:348 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[64:71], v[77:78], v[13:14], v[64:71] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[64:71], v[79:80], v[17:18], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[64:71], v[81:82], v[21:22], v[64:71] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v62, v64
	v_cvt_f32_i32_e32 v61, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v60, v66
	v_cvt_f32_i32_e32 v244, v67
	v_cvt_f32_i32_e32 v243, v68
	v_cvt_f32_i32_e32 v241, v69
	v_cvt_f32_i32_e32 v238, v70
	v_cvt_f32_i32_e32 v236, v71
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[64:71], v[85:86], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[64:71], v[87:88], v[13:14], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[64:71], v[89:90], v[17:18], v[64:71] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[64:71], v[91:92], v[21:22], v[64:71] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v138, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v139, v70
	v_cvt_f32_i32_e32 v140, v71
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v58, v67
	v_cvt_f32_i32_e32 v131, v68
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[67:74], v[75:76], v[11:12], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v54, v65
	v_cvt_f32_i32_e32 v130, v64
	v_cvt_f32_i32_e32 v57, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[67:74], v[77:78], v[15:16], v[67:74] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[67:74], v[79:80], v[19:20], v[67:74] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[67:74], v[81:82], v[23:24], v[67:74] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v76, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v70, v72
	v_cvt_f32_i32_e32 v65, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v69, v73
	v_cvt_f32_i32_e32 v64, v74
	v_cvt_f32_i32_e32 v66, v68
	v_add_nc_u32_e32 v68, s35, v255
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v67, v67
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v72, s38, v0
	scratch_load_b32 v0, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1
	buffer_load_u8 v72, v72, s[16:19], 0 offen
	buffer_load_u8 v50, v50, s[16:19], 0 offen
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v73, s38, v0
	scratch_load_b32 v0, off, off offset:332 ; 4-byte Folded Reload
	buffer_load_u8 v73, v73, s[16:19], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v74, s38, v0
	scratch_load_b32 v0, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[77:84], v[85:86], v[11:12], v[1:8] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x2
	buffer_load_u8 v74, v74, s[16:19], 0 offen
	buffer_load_u8 v49, v49, s[16:19], 0 offen
	buffer_load_u8 v48, v48, s[16:19], 0 offen
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[77:84], v[87:88], v[15:16], v[77:84] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[89:90], v[19:20], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[77:84], v[91:92], v[23:24], v[77:84] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v235, v77
	v_cvt_f32_i32_e32 v242, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v239, v79
	v_cvt_f32_i32_e32 v45, v82
	v_cvt_f32_i32_e32 v237, v80
	v_cvt_f32_i32_e32 v234, v81
	v_cvt_f32_i32_e32 v51, v83
	v_cvt_f32_i32_e32 v55, v84
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v75, s38, v0
	scratch_load_b32 v0, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	buffer_load_u8 v75, v75, s[16:19], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v77, s38, v0
	scratch_load_b32 v0, off, off offset:308 ; 4-byte Folded Reload
	s_clause 0x2
	buffer_load_u8 v77, v77, s[16:19], 0 offen
	buffer_load_u8 v47, v47, s[16:19], 0 offen
	buffer_load_u8 v78, v46, s[16:19], 0 offen
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v46, s38, v0
	scratch_load_b32 v0, off, off offset:300 ; 4-byte Folded Reload
	buffer_load_u8 v79, v46, s[16:19], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v46, s38, v0
	scratch_load_b32 v0, off, off offset:292 ; 4-byte Folded Reload
	s_clause 0x2
	buffer_load_u8 v80, v46, s[16:19], 0 offen
	buffer_load_u8 v81, v42, s[16:19], 0 offen
	buffer_load_u8 v82, v44, s[16:19], 0 offen
	v_lshlrev_b16 v46.l, 8, v77.l
	v_lshlrev_b16 v44.l, 8, v74.l
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v46.h, 8, v79.l
	v_add_nc_u32_e32 v74, s35, v248
	v_or_b16 v46.l, v78.l, v46.l
	v_or_b16 v44.l, v48.l, v44.l
	v_add_nc_u32_e32 v48, s35, v254
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v42, s38, v0
	scratch_load_b32 v0, off, off offset:284 ; 4-byte Folded Reload
	s_clause 0x1
	buffer_load_u8 v83, v42, s[16:19], 0 offen
	buffer_load_u8 v68, v68, s[16:19], 0 offen
	v_lshlrev_b16 v42.l, 8, v72.l
	v_lshlrev_b16 v42.h, 8, v73.l
	v_add_nc_u32_e32 v72, s35, v250
	v_add_nc_u32_e32 v73, s35, v249
	s_waitcnt vmcnt(4)
	v_or_b16 v46.h, v81.l, v46.h
	v_or_b16 v42.l, v50.l, v42.l
	v_or_b16 v42.h, v49.l, v42.h
	v_add_nc_u32_e32 v49, s35, v253
	v_add_nc_u32_e32 v50, s35, v252
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v77, s38, v0
	scratch_load_b32 v0, off, off offset:276 ; 4-byte Folded Reload
	s_clause 0x1
	buffer_load_u8 v77, v77, s[16:19], 0 offen
	buffer_load_u8 v78, v48, s[16:19], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v47.h, 8, v83.l
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v47.h, v68.l, v47.h
	v_add_nc_u32_e32 v68, s35, v251
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v48, s38, v0
	scratch_load_b32 v0, off, off offset:268 ; 4-byte Folded Reload
	buffer_load_u8 v79, v48, s[16:19], 0 offen
	v_lshlrev_b16 v44.h, 8, v75.l
	v_add_nc_u32_e32 v75, s35, v247
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v44.h, v47.l, v44.h
	v_lshlrev_b16 v47.l, 8, v80.l
	v_or_b16 v47.l, v82.l, v47.l
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v48, s38, v0
	scratch_load_b32 v0, off, off offset:260 ; 4-byte Folded Reload
	s_clause 0x2
	buffer_load_u8 v80, v48, s[16:19], 0 offen
	buffer_load_u8 v49, v49, s[16:19], 0 offen
	buffer_load_u8 v50, v50, s[16:19], 0 offen
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v48, s38, v0
	scratch_load_b32 v0, off, off offset:252 ; 4-byte Folded Reload
	buffer_load_u8 v81, v48, s[16:19], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v48, s38, v0
	scratch_load_b32 v0, off, off offset:244 ; 4-byte Folded Reload
	s_clause 0x2
	buffer_load_u8 v82, v48, s[16:19], 0 offen
	buffer_load_u8 v68, v68, s[16:19], 0 offen
	buffer_load_u8 v72, v72, s[16:19], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v49.h, 8, v81.l
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v48, s38, v0
	scratch_load_b32 v0, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_or_b16 v49.h, v68.l, v49.h
	buffer_load_u8 v83, v48, s[16:19], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v48, s38, v0
	.loc	1 1155 34                       ; ragged.py:1155:34
	scratch_load_b32 v0, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x2
	buffer_load_u8 v84, v48, s[16:19], 0 offen
	buffer_load_u8 v73, v73, s[16:19], 0 offen
	buffer_load_u8 v74, v74, s[16:19], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v50.h, 8, v83.l
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v48, s38, v0
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1
	buffer_load_u8 v85, v48, s[16:19], 0 offen
	buffer_load_u8 v75, v75, s[16:19], 0 offen
	v_lshlrev_b16 v48.h, 8, v79.l
	v_lshlrev_b16 v48.l, 8, v77.l
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v68.l, 8, v84.l
	s_waitcnt vmcnt(3)
	v_or_b16 v50.h, v73.l, v50.h
	s_waitcnt lgkmcnt(0)
	v_or_b16 v48.h, v49.l, v48.h
	v_lshlrev_b16 v49.l, 8, v80.l
	v_or_b16 v48.l, v78.l, v48.l
	s_waitcnt vmcnt(2)
	v_or_b16 v68.l, v74.l, v68.l
	s_barrier
	v_mov_b32_e32 v0, v165
	v_or_b16 v49.l, v50.l, v49.l
	v_lshlrev_b16 v50.l, 8, v82.l
	v_mov_b32_e32 v165, v110
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s38, s38, s37
	s_cmp_lg_u32 s34, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v50.l, v72.l, v50.l
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v68.h, 8, v85.l
	s_waitcnt vmcnt(0)
	v_or_b16 v68.h, v75.l, v68.h
	ds_store_b16 v246, v42
	ds_store_b16_d16_hi v246, v42 offset:512
	ds_store_b16 v246, v44 offset:1024
	ds_store_b16_d16_hi v246, v44 offset:1536
	ds_store_b16 v246, v46 offset:2048
	ds_store_b16_d16_hi v246, v46 offset:2560
	ds_store_b16 v246, v47 offset:3072
	ds_store_b16_d16_hi v246, v47 offset:3584
	ds_store_b16 v246, v48 offset:4096
	ds_store_b16_d16_hi v246, v48 offset:4608
	ds_store_b16 v246, v49 offset:5120
	ds_store_b16_d16_hi v246, v49 offset:5632
	ds_store_b16 v246, v50 offset:6144
	ds_store_b16_d16_hi v246, v50 offset:6656
	ds_store_b16 v246, v68 offset:7168
	ds_store_b16_d16_hi v246, v68 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v42, v193 offset:1280
	ds_load_u8 v44, v193 offset:1024
	ds_load_u8 v50, v193 offset:1920
	ds_load_u8 v72, v193 offset:1664
	ds_load_u8 v73, v193 offset:1408
	ds_load_u8 v74, v193 offset:1152
	ds_load_u8 v103, v193 offset:2432
	ds_load_u8 v110, v193 offset:6016
	ds_load_u8 v116, v193 offset:7040
	ds_load_u8 v117, v193 offset:6272
	ds_load_u8 v104, v193 offset:2176
	ds_load_u8 v111, v193 offset:5760
	ds_load_u8 v246, v193 offset:5504
	ds_load_u8 v247, v193 offset:5248
	ds_load_u8 v100, v193 offset:7552
	ds_load_u8 v213, v193 offset:7296
	ds_load_u8 v106, v193 offset:6784
	ds_load_u8 v189, v193 offset:6528
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v42, v44, v42, 0xc0c0004
	ds_load_u8 v44, v193 offset:1792
	ds_load_u8 v46, v193 offset:1536
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v50, v72, v50, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v46, v44, 0xc0c0004
	ds_load_u8 v46, v193 offset:256
	ds_load_u8 v47, v193
	ds_load_u8 v75, v193 offset:896
	ds_load_u8 v85, v193 offset:640
	ds_load_u8 v86, v193 offset:384
	ds_load_u8 v87, v193 offset:128
	v_lshl_or_b32 v49, v44, 16, v42
	ds_load_u8 v42, v193 offset:3328
	ds_load_u8 v44, v193 offset:3072
	ds_load_u8 v88, v193 offset:3968
	ds_load_u8 v89, v193 offset:3712
	ds_load_u8 v90, v193 offset:3456
	ds_load_u8 v91, v193 offset:3200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v193 offset:768
	ds_load_u8 v48, v193 offset:512
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v72, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v42, v44, v42, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v47, 16, v46
	ds_load_u8 v44, v193 offset:3840
	ds_load_u8 v46, v193 offset:3584
	v_wmma_i32_16x16x16_iu4 v[77:84], v[48:49], v[25:26], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v46, v44, 0xc0c0004
	ds_load_u8 v46, v193 offset:2304
	ds_load_u8 v47, v193 offset:2048
	ds_load_u8 v92, v193 offset:2944
	ds_load_u8 v93, v193 offset:2688
	v_lshl_or_b32 v95, v44, 16, v42
	ds_load_u8 v42, v193 offset:5376
	ds_load_u8 v44, v193 offset:5120
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v193 offset:2816
	ds_load_u8 v68, v193 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v42, v44, v42, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v68, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v47, 16, v46
	ds_load_u8 v44, v193 offset:5888
	ds_load_u8 v46, v193 offset:5632
	v_wmma_i32_16x16x16_iu4 v[77:84], v[94:95], v[29:30], v[77:84] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v46, v44, 0xc0c0004
	ds_load_u8 v46, v193 offset:4352
	ds_load_u8 v47, v193 offset:4096
	ds_load_u8 v248, v193 offset:4992
	ds_load_u8 v249, v193 offset:4736
	ds_load_u8 v250, v193 offset:4480
	ds_load_u8 v252, v193 offset:4224
	v_lshl_or_b32 v102, v44, 16, v42
	ds_load_u8 v42, v193 offset:7424
	ds_load_u8 v44, v193 offset:7168
	ds_load_u8 v253, v193 offset:8064
	ds_load_u8 v254, v193 offset:7808
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v193 offset:4864
	ds_load_u8 v68, v193 offset:4608
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v42, v44, v42, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v68, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v101, v47, 16, v46
	ds_load_u8 v44, v193 offset:7936
	ds_load_u8 v46, v193 offset:7680
	v_wmma_i32_16x16x16_iu4 v[77:84], v[101:102], v[33:34], v[77:84] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v46, v44, 0xc0c0004
	ds_load_u8 v46, v193 offset:6400
	ds_load_u8 v47, v193 offset:6144
	v_lshl_or_b32 v97, v44, 16, v42
	v_perm_b32 v42, v74, v73, 0xc0c0004
	v_perm_b32 v73, v85, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v99, v50, 16, v42
	v_lshl_or_b32 v98, v73, 16, v72
	v_perm_b32 v42, v91, v90, 0xc0c0004
	v_perm_b32 v50, v89, v88, 0xc0c0004
	v_perm_b32 v72, v104, v103, 0xc0c0004
	v_perm_b32 v73, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v109, v50, 16, v42
	v_perm_b32 v42, v247, v246, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v193 offset:6912
	ds_load_u8 v68, v193 offset:6656
	v_lshl_or_b32 v108, v73, 16, v72
	v_perm_b32 v50, v111, v110, 0xc0c0004
	v_perm_b32 v72, v252, v250, 0xc0c0004
	v_perm_b32 v73, v249, v248, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v111, v50, 16, v42
	v_perm_b32 v42, v213, v100, 0xc0c0004
	v_lshl_or_b32 v110, v73, 16, v72
	v_perm_b32 v50, v254, v253, 0xc0c0004
	v_perm_b32 v72, v117, v189, 0xc0c0004
	v_perm_b32 v73, v106, v116, 0xc0c0004
	v_mov_b32_e32 v117, v173
	v_mov_b32_e32 v173, v179
	v_lshl_or_b32 v104, v50, 16, v42
	v_mov_b32_e32 v116, v156
	v_lshl_or_b32 v103, v73, 16, v72
	v_dual_mov_b32 v156, v183 :: v_dual_mov_b32 v183, v214
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v68, v47, 0xc0c0004
	v_mov_b32_e32 v106, v123
	v_mov_b32_e32 v123, v143
	v_mov_b32_e32 v143, v174
	v_mov_b32_e32 v174, v190
	v_lshl_or_b32 v96, v47, 16, v46
	v_dual_mov_b32 v100, v124 :: v_dual_mov_b32 v179, v211
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[96:97], v[37:38], v[77:84] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v41, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v68, v78
	v_cvt_f32_i32_e32 v77, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v255, v80
	v_cvt_f32_i32_e32 v251, v81
	v_cvt_f32_i32_e32 v47, v82
	v_cvt_f32_i32_e32 v46, v83
	v_cvt_f32_i32_e32 v44, v84
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[78:85], v[98:99], v[25:26], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[78:85], v[108:109], v[29:30], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[78:85], v[110:111], v[33:34], v[78:85] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[78:85], v[103:104], v[37:38], v[78:85] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v42, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v25, v83
	v_cvt_f32_i32_e32 v26, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v29, v85
	v_cvt_f32_i32_e32 v37, v79
	v_cvt_f32_i32_e32 v34, v80
	v_cvt_f32_i32_e32 v33, v81
	v_cvt_f32_i32_e32 v30, v82
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[78:85], v[48:49], v[27:28], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[78:85], v[94:95], v[31:32], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[78:85], v[101:102], v[35:36], v[78:85] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[78:85], v[96:97], v[39:40], v[78:85] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v73, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v72, v80
	v_cvt_f32_i32_e32 v78, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v252, v82
	v_cvt_f32_i32_e32 v247, v83
	v_cvt_f32_i32_e32 v246, v84
	v_cvt_f32_i32_e32 v50, v85
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[80:87], v[98:99], v[27:28], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v79, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[80:87], v[108:109], v[31:32], v[80:87] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[80:87], v[110:111], v[35:36], v[80:87] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[80:87], v[103:104], v[39:40], v[80:87] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v28, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v31, v87
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[86:93], v[48:49], v[9:10], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v27, v85
	v_cvt_f32_i32_e32 v32, v84
	v_cvt_f32_i32_e32 v35, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[86:93], v[94:95], v[13:14], v[86:93] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v39, v81
	v_cvt_f32_i32_e32 v38, v82
	v_cvt_f32_i32_e32 v36, v83
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[86:93], v[101:102], v[17:18], v[86:93] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[86:93], v[96:97], v[21:22], v[86:93] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v85, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v84, v87
	v_cvt_f32_i32_e32 v75, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v74, v89
	v_cvt_f32_i32_e32 v253, v90
	v_cvt_f32_i32_e32 v250, v91
	v_cvt_f32_i32_e32 v249, v92
	v_cvt_f32_i32_e32 v248, v93
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[86:93], v[98:99], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[86:93], v[108:109], v[13:14], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[110:111], v[17:18], v[86:93] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[86:93], v[103:104], v[21:22], v[86:93] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v17, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v9, v91
	v_cvt_f32_i32_e32 v10, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v13, v93
	v_cvt_f32_i32_e32 v22, v87
	v_cvt_f32_i32_e32 v21, v88
	v_cvt_f32_i32_e32 v18, v89
	v_cvt_f32_i32_e32 v14, v90
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[86:93], v[48:49], v[11:12], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[86:93], v[94:95], v[15:16], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[86:93], v[101:102], v[19:20], v[86:93] neg_lo:[1,1,0]
	v_mov_b32_e32 v102, v154
	v_mov_b32_e32 v154, v181
	v_mov_b32_e32 v101, v153
	v_mov_b32_e32 v153, v171
	v_wmma_i32_16x16x16_iu4 v[86:93], v[96:97], v[23:24], v[86:93] neg_lo:[1,1,0]
	v_mov_b32_e32 v96, v112
	v_mov_b32_e32 v171, v176
	v_dual_mov_b32 v181, v212 :: v_dual_mov_b32 v212, v217
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v81, v86
	v_cvt_f32_i32_e32 v80, v87
	v_cvt_f32_i32_e32 v87, v88
	v_cvt_f32_i32_e32 v86, v89
	v_cvt_f32_i32_e32 v254, v90
	v_cvt_f32_i32_e32 v49, v91
	v_cvt_f32_i32_e32 v48, v92
	v_cvt_f32_i32_e32 v40, v93
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[98:99], v[11:12], v[1:8] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v11, 0x80000000, v207, s8
	v_cndmask_b32_e64 v12, 0x80000000, v206, s9
	v_mov_b32_e32 v99, v115
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[108:109], v[15:16], v[88:95] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v16, 0x80000000, v204, s11
	v_cndmask_b32_e64 v15, 0x80000000, v205, s10
	s_clause 0x1
	buffer_load_u16 v11, v11, s[40:43], 0 offen
	buffer_load_u16 v12, v12, s[40:43], 0 offen
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[110:111], v[19:20], v[88:95] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v16, v16, s[40:43], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v19, v203, s[20:23], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v15, v15, s[40:43], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v20, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[103:104], v[23:24], v[88:95] neg_lo:[1,1,0]
	v_dual_mov_b32 v115, v129 :: v_dual_mov_b32 v98, v114
	v_dual_mov_b32 v114, v135 :: v_dual_mov_b32 v135, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v5, v88
	v_cvt_f32_i32_e32 v1, v93
	v_cvt_f32_i32_e32 v2, v94
	v_cvt_f32_i32_e32 v3, v95
	v_cvt_f32_i32_e32 v8, v89
	v_cvt_f32_i32_e32 v7, v90
	v_cvt_f32_i32_e32 v6, v91
	v_cvt_f32_i32_e32 v4, v92
	v_dual_mov_b32 v152, v178 :: v_dual_mov_b32 v109, v164
	v_mov_b32_e32 v178, v210
	v_dual_mov_b32 v164, v187 :: v_dual_mov_b32 v187, v216
	v_dual_mov_b32 v216, v219 :: v_dual_mov_b32 v219, v221
	v_mov_b32_e32 v221, v223
	v_mov_b32_e32 v223, v225
	v_dual_mov_b32 v225, v227 :: v_dual_mov_b32 v110, v165
	v_dual_mov_b32 v227, v229 :: v_dual_mov_b32 v108, v163
	v_mov_b32_e32 v163, v186
	v_mov_b32_e32 v165, v0
	v_dual_mov_b32 v229, v195 :: v_dual_mov_b32 v104, v126
	v_mov_b32_e32 v126, v137
	v_dual_mov_b32 v176, v208 :: v_dual_mov_b32 v97, v113
	v_dual_mov_b32 v113, v134 :: v_dual_mov_b32 v134, v144
	v_dual_mov_b32 v144, v175 :: v_dual_mov_b32 v103, v125
	v_mov_b32_e32 v125, v159
	v_dual_mov_b32 v175, v191 :: v_dual_mov_b32 v112, v133
	v_mov_b32_e32 v129, v184
	v_mov_b32_e32 v133, v180
	v_mov_b32_e32 v111, v166
	v_dual_mov_b32 v137, v158 :: v_dual_mov_b32 v158, v177
	v_mov_b32_e32 v177, v209
	v_dual_mov_b32 v159, v162 :: v_dual_mov_b32 v162, v185
	v_mov_b32_e32 v185, v215
	v_dual_mov_b32 v215, v218 :: v_dual_mov_b32 v218, v220
	v_mov_b32_e32 v220, v222
	v_mov_b32_e32 v222, v224
	v_mov_b32_e32 v224, v226
	v_mov_b32_e32 v226, v228
	v_mov_b32_e32 v228, v230
	v_mov_b32_e32 v230, v196
	v_dual_mov_b32 v166, v194 :: v_dual_add_nc_u32 v205, 2, v205
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v207, 2, v207
	v_add_nc_u32_e32 v204, 2, v204
	v_add_nc_u32_e32 v206, 2, v206
	v_add_nc_u32_e32 v203, s36, v203
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
	ds_load_b128 v[88:91], v245
	ds_load_b128 v[92:95], v245 offset:16
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v2, v2, v16 :: v_dual_lshlrev_b32 v15, 16, v15
	v_mul_f32_e32 v1, v1, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v4, v16, v4 :: v_dual_mul_f32 v19, v11, v63
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v168, v19, v88
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v11, v107
	v_mul_f32_e32 v0, v11, v132
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v169, v19, v89
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v11, v119
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v163, v0, v94 :: v_dual_mul_f32 v0, v11, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v171, v19, v90
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v19, v11, v120 :: v_dual_fmac_f32 v164, v0, v95
	v_mul_f32_e32 v0, v12, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v116, v0, v92
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v12, v53
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v170, v19, v91 :: v_dual_mul_f32 v19, v12, v233
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v117, v0, v93
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v12, v56
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v240, v19, v88
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v12, v192
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v143, v0, v94
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v12, v59
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v144, v0, v95
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v15, v243
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v125, v19, v89
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v12, v197
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v127, v0, v92 :: v_dual_mul_f32 v0, v15, v241
	v_fmac_f32_e32 v151, v19, v90
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v12, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v149, v19, v91
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v15, v62
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v135, v19, v88
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v15, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v101, v19, v89
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v15, v60
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v137, v19, v90
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v15, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v102, v19, v91
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v16, v67
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v113, v19, v88
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v16, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v114, v19, v89
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v16, v65
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v9, v9, v15 :: v_dual_mul_f32 v14, v15, v14
	v_mul_f32_e32 v13, v13, v15
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v115, v19, v90
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v16, v76
	v_mov_b32_e32 v76, v128
	v_mov_b32_e32 v128, v150
	v_mov_b32_e32 v150, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v128, v0, v93
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v15, v238
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v76, v19, v91
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v11, v121
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v129, v0, v94 :: v_dual_mul_f32 v0, v15, v236
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v159, v19, v92
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v19, v11, v122
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v122, off, off offset:128
	scratch_load_b32 v136, off, off offset:120
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v134, v0, v95
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v16, v71
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v162, v19, v93
	v_mov_b32_e32 v71, v155
	scratch_load_b32 v19, off, off offset:156 ; 4-byte Folded Reload
	v_fmac_f32_e32 v98, v0, v92
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v16, v70
	v_dual_mov_b32 v92, v147 :: v_dual_mov_b32 v147, v142
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v70, off, off offset:112
	scratch_load_b32 v121, off, off offset:108
	scratch_load_b32 v142, off, off offset:92
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v105, v0, v93
	v_mov_b32_e32 v93, v157
	v_dual_mov_b32 v157, v141 :: v_dual_mul_f32 v0, v16, v69
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v69, off, off offset:88
	scratch_load_b32 v120, off, off offset:84
	scratch_load_b32 v141, off, off offset:76
	scratch_load_b32 v155, off, off offset:72
	scratch_load_b32 v148, off, off offset:68
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v69, v0, v94
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v16, v64
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[60:63], v245 offset:512
	ds_load_b128 v[64:67], v245 offset:528
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v94, off, off offset:124
	scratch_load_b32 v119, off, off offset:116
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v70, v0, v95
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v95, off, off offset:104
	scratch_load_b32 v107, off, off offset:100
	scratch_load_b32 v132, off, off offset:96
	scratch_load_b32 v0, off, off offset:200
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v11
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v223, v0, v60
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v11, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v132, v0, v61
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v11, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v133, v0, v62
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v11, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v154, v0, v63
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v219, v0, v60
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v12, v145
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v108, v0, v61
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v12, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v109, v0, v62
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v12, v160
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v110, v0, v63
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v130, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v183, v0, v60 :: v_dual_mul_f32 v0, v15, v54
	v_fmac_f32_e32 v121, v0, v61
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v15, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v122, v0, v62
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v15, v58
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v123, v0, v63 :: v_dual_mul_f32 v0, v235, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v178, v0, v60
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v16, v242
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v94, v0, v61
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v16, v239
	scratch_load_b32 v61, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v95, v0, v62
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v16, v237
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v97, v0, v63
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v63, off, off offset:136
	scratch_load_b32 v0, off, off offset:172
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v11, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v155, v0, v64
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v11
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v222, v0, v65
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v11
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v221, v0, v66
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:160
	scratch_load_b32 v62, off, off offset:140
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v19, 32, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v0, v0, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v220, v0, v67
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v12, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v111, v0, v64
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v218, v0, v65
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v187, v0, v66
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v185, v0, v67
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v15, v131
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v126, v0, v64
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v138, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v182, v0, v65
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v139, v15
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v181, v0, v66
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v140, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v179, v0, v67
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v16, v234
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v96, v0, v64
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v45, v16
	scratch_load_b32 v64, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v177, v0, v65 :: v_dual_mul_f32 v0, v51, v16
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:56
	scratch_load_b32 v145, off, off offset:48
	v_fmac_f32_e32 v176, v0, v66
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v55, v16
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v66, off, off offset:64
	scratch_load_b32 v146, off, off offset:60
	scratch_load_b32 v160, off, off offset:52
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v175, v0, v67
	.loc	1 1218 45                       ; ragged.py:1218:45
	buffer_load_u16 v0, v202, s[20:23], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v202, s36, v202
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v20, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[51:54], v245
	ds_load_b128 v[55:58], v245 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v41
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v174, v0, v51
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v68
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v173, v0, v52 :: v_dual_mul_f32 v0, v11, v77
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v77, off, off offset:16
	scratch_load_b32 v130, off, off offset:12
	v_fmac_f32_e32 v172, v0, v53
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v255
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v167, v0, v54
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v73
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v153, v0, v51
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v79
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v79, off, off offset:44
	scratch_load_b32 v140, off, off offset:20
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v152, v0, v52
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v72
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v147, v0, v53
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v78
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v78, off, off offset:4
	scratch_load_b32 v131, off, off
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v150, v0, v54
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v85
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v85, off, off offset:40
	scratch_load_b32 v138, off, off offset:36
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v138, v0, v51
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v84
	scratch_load_b32 v84, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v136, v0, v52
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v131, v0, v53 :: v_dual_mul_f32 v0, v15, v74
	v_fmac_f32_e32 v130, v0, v54
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v120, v0, v51
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v80
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v77, v0, v52
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v87
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v87, off, off offset:32
	scratch_load_b32 v139, off, off offset:28
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v78, v0, v53
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v86
	scratch_load_b32 v86, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v79, v0, v54 :: v_dual_mul_f32 v0, v11, v251
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v166, v0, v55
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v47
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v165, v0, v56 :: v_dual_mul_f32 v0, v11, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v161, v0, v57 :: v_dual_mul_f32 v0, v11, v44
	v_fmac_f32_e32 v160, v0, v58
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v252
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v146, v0, v55
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v247
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v145, v0, v56
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v118, v0, v57
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v50
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v119, v0, v58 :: v_dual_mul_f32 v0, v15, v253
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v93, v0, v55 :: v_dual_mul_f32 v0, v15, v250
	v_fmac_f32_e32 v92, v0, v56
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v249
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v66, v0, v57
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v248
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v65, v0, v58
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v71, v0, v55
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v49
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v112, v0, v56
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v107, v0, v57
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v40
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v106, v0, v58
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v42, v11
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[40:43], v245 offset:512
	ds_load_b128 v[44:47], v245 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v61, v0, v40 :: v_dual_mul_f32 v0, v11, v37
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v63, v9, v45
	v_dual_fmac_f32 v225, v13, v47 :: v_dual_fmac_f32 v104, v4, v44
	v_fmac_f32_e32 v216, v1, v45
	v_fmac_f32_e32 v158, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v11, v34
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v215, v2, v46 :: v_dual_fmac_f32 v212, v3, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v157, v0, v42 :: v_dual_mul_f32 v0, v11, v33
	v_fmac_f32_e32 v148, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v35, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v62, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v39
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v142, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v141, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v12, v36
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v140, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v17, v15 :: v_dual_mul_f32 v17, v31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v226, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v15, v22 :: v_dual_fmac_f32 v227, v17, v47
	scratch_load_b32 v17, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v87, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v21
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v15, v18
	scratch_load_b32 v18, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v84, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v5, v16 :: v_dual_mul_f32 v5, v26, v11
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v224, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v8, v27, v12 :: v_dual_fmac_f32 v231, v5, v46
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v99, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v16, v7 :: v_dual_mul_f32 v7, v11, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v229, v8, v45
	v_dual_fmac_f32 v85, v14, v44 :: v_dual_fmac_f32 v100, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v16, v6
	scratch_load_b32 v16, off, off offset:144 ; 4-byte Folded Reload
	v_mul_f32_e32 v6, v29, v11
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v156, v7, v44 :: v_dual_fmac_f32 v103, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v25, v11 :: v_dual_mul_f32 v11, v28, v12
	v_mul_f32_e32 v12, v12, v32
	v_mul_f32_e32 v10, v10, v15
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v230, v6, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v232, v0, v45
	v_dual_fmac_f32 v228, v11, v46 :: v_dual_fmac_f32 v139, v12, v44
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v64, v10, v46 :: v_dual_add_nc_u32 v17, 32, v17
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v18, 32, v18
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v16, 32, v16
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x13                           ; 80-byte Folded Reload
	scratch_load_b32 v180, off, off offset:376
	scratch_load_b32 v213, off, off offset:380
	scratch_load_b32 v214, off, off offset:384
	scratch_load_b32 v184, off, off offset:388
	scratch_load_b32 v186, off, off offset:392
	scratch_load_b32 v217, off, off offset:396
	scratch_load_b32 v67, off, off offset:400
	scratch_load_b32 v68, off, off offset:404
	scratch_load_b32 v72, off, off offset:408
	scratch_load_b32 v73, off, off offset:412
	scratch_load_b32 v74, off, off offset:416
	scratch_load_b32 v75, off, off offset:420
	scratch_load_b32 v80, off, off offset:424
	scratch_load_b32 v81, off, off offset:428
	scratch_load_b32 v82, off, off offset:432
	scratch_load_b32 v83, off, off offset:436
	scratch_load_b32 v88, off, off offset:440
	scratch_load_b32 v89, off, off offset:444
	scratch_load_b32 v90, off, off offset:448
	scratch_load_b32 v91, off, off offset:452
	s_branch .LBB0_5
.LBB0_4:
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v222, 0
	v_mov_b32_e32 v221, 0
	v_mov_b32_e32 v223, 0
.LBB0_5:                                ; %._crit_edge
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	s_waitcnt vmcnt(16)
	v_or_b32_e32 v0, 62, v184
	v_and_b32_e32 v7, 63, v180
	v_or_b32_e32 v8, 58, v184
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v10, 0xbfb8aa3b, v173 :: v_dual_mul_f32 v13, 0xbfb8aa3b, v231
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s0, s76, v0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 60, v184
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s77, 0, s0
	v_add_co_u32 v1, s0, s76, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v5, s1, s76, v0
	v_add_co_ci_u32_e64 v6, null, s77, 0, s1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 56, v184
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v8, s1, s76, v8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[64:65], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[70:71], v[5:6]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v5, 54, v184
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
	v_or_b32_e32 v0, 52, v184
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s6, s76, v5
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[64:65], v[8:9]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s77, 0, s6
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[70:71], v[8:9]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v8, 50, v184
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[70:71], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s10, s76, v0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 48, v184
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
	v_dual_mul_f32 v0, 0xbfb8aa3b, v61 :: v_dual_mul_f32 v11, 0xbfb8aa3b, v174
	v_dual_mul_f32 v14, 0xbfb8aa3b, v230 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v160
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[64:65], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[70:71], v[5:6]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_mul_f32_e32 v6, 0xbfb8aa3b, v232
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v13
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v14
	v_mul_f32_e32 v28, 0xbfb8aa3b, v161
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_cndmask_b32_e64 v15, 0, 0x42800000, s18
	v_cndmask_b32_e64 v17, 0, 0x42800000, s19
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s18
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s19
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_dual_fmac_f32 v12, 0xbfb8aa3b, v61 :: v_dual_fmac_f32 v15, 0xbfb8aa3b, v231
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v230
	v_dual_mul_f32 v18, 0xbfb8aa3b, v62 :: v_dual_mul_f32 v33, 0xbfb8aa3b, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v232
	v_exp_f32_e32 v12, v12
	v_exp_f32_e32 v15, v15
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_exp_f32_e32 v13, v13
	v_dual_mul_f32 v39, 0xbfb8aa3b, v150 :: v_dual_mul_f32 v18, 0xbfb8aa3b, v228
	v_mul_f32_e32 v19, 0xbfb8aa3b, v227
	v_mul_f32_e32 v211, 0xbfb8aa3b, v146
	v_mul_f32_e32 v207, 0xbfb8aa3b, v140
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v12, v12, v0
	v_mul_f32_e32 v0, 0xbfb8aa3b, v148
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v14, v15, v14
	v_ldexp_f32 v13, v13, v6
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v18
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v19
	v_dual_mul_f32 v201, 0xbfb8aa3b, v93 :: v_dual_mul_f32 v36, 0xbfb8aa3b, v118
	v_mul_f32_e32 v23, 0xbfb8aa3b, v225
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v20, 0, 0x42800000, s18
	v_ldexp_f32 v15, v17, v16
	v_mul_f32_e32 v16, 0xbfb8aa3b, v229
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v44, 0xbfb8aa3b, v153
	v_cndmask_b32_e64 v22, 0, 0x42800000, s19
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v228
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v62
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s18
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v227
	v_exp_f32_e32 v20, v20
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v35, 0xbfb8aa3b, v119
	v_exp_f32_e32 v17, v17
	v_exp_f32_e32 v22, v22
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v229
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s19
	v_mul_f32_e32 v199, 0xbfb8aa3b, v66
	v_mul_f32_e32 v197, 0xbfb8aa3b, v87
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v23
	v_exp_f32_e32 v18, v18
	v_mul_f32_e32 v195, 0xbfb8aa3b, v84
	v_ldexp_f32 v17, v17, v6
	v_mul_f32_e32 v6, 0xbfb8aa3b, v226
	v_cndmask_b32_e64 v26, 0, 0x42800000, s19
	v_mul_f32_e32 v193, 0xbfb8aa3b, v120
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s19
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v225
	v_ldexp_f32 v16, v18, v16
	v_ldexp_f32 v18, v20, v19
	v_ldexp_f32 v19, v22, v21
	v_mul_f32_e32 v20, 0xbfb8aa3b, v63
	v_mul_f32_e32 v22, 0xbfb8aa3b, v64
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v208, 0xbfb8aa3b, v141
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v22
	v_exp_f32_e32 v26, v26
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v226
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0x42800000, s18
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s18
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v63
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v190, 0xbfb8aa3b, v78 :: v_dual_add_f32 v13, 1.0, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v22, v22
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v46, null, v12, v12, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v21, v21, v6
	v_mul_f32_e32 v6, 0xbfb8aa3b, v224
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v60, null, v17, v17, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v50, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v192, 0xbfb8aa3b, v77 :: v_dual_add_f32 v19, 1.0, v19
	v_ldexp_f32 v20, v22, v20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_ldexp_f32 v22, v24, v23
	v_mul_f32_e32 v24, 0xbfb8aa3b, v216
	v_ldexp_f32 v23, v26, v25
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_dual_mul_f32 v25, 0xbfb8aa3b, v215 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v212
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s18
	v_cndmask_b32_e64 v41, 0, 0x42800000, s18
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v26
	v_mul_f32_e32 v198, 0xbfb8aa3b, v65
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v200, 0xbfb8aa3b, v92
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v216
	v_cndmask_b32_e64 v26, 0, 0x42800000, s18
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v215
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s18
	v_exp_f32_e32 v41, v41
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v212
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v224
	v_exp_f32_e32 v47, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v51, vcc_lo, v61, v12, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v26
	v_exp_f32_e32 v24, v24
	v_dual_mul_f32 v30, 0xbfb8aa3b, v106 :: v_dual_add_f32 v21, 1.0, v21
	v_ldexp_f32 v40, v41, v40
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[70:71], v[3:4]
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_ldexp_f32 v41, v47, v43
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v47, null, v13, v13, v232
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v43, v48, v45
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v46, v50, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v24, v6
	v_dual_mul_f32 v6, 0xbfb8aa3b, v104 :: v_dual_add_f32 v41, 1.0, v41
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v48, null, v14, v14, v231
	v_div_scale_f32 v57, s19, v231, v14, v231
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v52, v48
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v3, 46, v184
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[64:65], v[8:9]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v31, 0xbfb8aa3b, v165 :: v_dual_mul_f32 v38, 0xbfb8aa3b, v166
	v_dual_mul_f32 v37, 0xbfb8aa3b, v158 :: v_dual_mul_f32 v42, 0xbfb8aa3b, v152
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s14, s76, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s77, 0, s14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v48, v52, 1.0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[70:71], v[8:9]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v8, 0xbfb8aa3b, v172 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v167
	v_dual_mul_f32 v29, 0xbfb8aa3b, v156 :: v_dual_mul_f32 v32, 0xbfb8aa3b, v157
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_fmac_f32_e32 v52, v56, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v24, 0xbfb8aa3b, v103
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v56, null, v15, v15, v230
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v210, 0xbfb8aa3b, v145 :: v_dual_mul_f32 v209, 0xbfb8aa3b, v142
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v59, v57, v52
	v_fmac_f32_e32 v50, v45, v50
	v_rcp_f32_e32 v45, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v34, 0xbfb8aa3b, v107
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v58, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v206, 0xbfb8aa3b, v139 :: v_dual_mul_f32 v203, 0xbfb8aa3b, v130
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v53, v51, v50 :: v_dual_mul_f32 v202, 0xbfb8aa3b, v131
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v205, 0xbfb8aa3b, v138 :: v_dual_mul_f32 v204, 0xbfb8aa3b, v136
	v_mul_f32_e32 v191, 0xbfb8aa3b, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v47, v45, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v188, 0xbfb8aa3b, v112
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v46, v53, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v196, 0xbfb8aa3b, v86 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v100
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v54, s18, v232, v13, v232
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v53, v55, v50 :: v_dual_mul_f32 v194, 0xbfb8aa3b, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v189, 0xbfb8aa3b, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v55, v54, v45
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp4:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v46, v53, v51
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp6:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v5, 44, v184
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v47, v55, v54
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v99
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[64:65], v[3:4]
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s72, s78, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s73, s67, 0xffff
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v51, v45
	v_fma_f32 v51, -v48, v59, v57
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s72, s78, s72
	s_mov_b32 s75, 0x31027000
	s_mov_b32 s74, 0x7ffffffe
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v7, s76, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v59, v51, v52
	v_div_fmas_f32 v46, v46, v50, v53
	v_rcp_f32_e32 v50, v60
	v_fma_f32 v53, -v56, v58, 1.0
	s_mov_b32 vcc_lo, s18
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 s69, s69, 0xffff
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v12, v46, v12, v61
	v_fma_f32 v46, -v47, v55, v54
	v_fmac_f32_e32 v58, v53, v58
	v_div_scale_f32 v53, s18, v62, v17, v62
	v_div_scale_f32 v47, s20, v230, v15, v230
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v51, -v60, v50, 1.0
	v_div_fmas_f32 v45, v46, v45, v55
	v_fma_f32 v46, -v48, v59, v57
	s_mov_b32 vcc_lo, s19
	v_mul_f32_e32 v48, v47, v58
	v_fmac_f32_e32 v50, v51, v50
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v46, v46, v52, v59
	v_div_fixup_f32 v13, v45, v13, v232
	v_fma_f32 v54, -v56, v48, v47
	v_mul_f32_e32 v55, v53, v50
	v_div_scale_f32 v51, null, v16, v16, v229
	s_mov_b32 vcc_lo, s20
	v_fmac_f32_e32 v48, v54, v58
	v_fma_f32 v45, -v60, v55, v53
	v_rcp_f32_e32 v52, v51
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v14, v46, v14, v231
	v_fma_f32 v47, -v56, v48, v47
	v_fmac_f32_e32 v55, v45, v50
	v_div_scale_f32 v45, s19, v229, v16, v229
	v_div_scale_f32 v56, null, v19, v19, v227
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v47, v47, v58, v48
	v_fma_f32 v54, -v51, v52, 1.0
	v_fma_f32 v48, -v60, v55, v53
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v60, null, v21, v21, v226
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v52, v54, v52
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v54, v56
	v_div_fmas_f32 v48, v48, v50, v55
	v_div_scale_f32 v61, s18, v227, v19, v227
	v_mul_f32_e32 v53, v45, v52
	v_div_scale_f32 v57, null, v18, v18, v228
	v_div_scale_f32 v58, s20, v228, v18, v228
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v51, v53, v45
	v_rcp_f32_e32 v46, v57
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v15, v47, v15, v230
	v_div_fixup_f32 v17, v48, v17, v62
	v_fmac_f32_e32 v53, v50, v52
	v_div_scale_f32 v50, null, v20, v20, v63
	s_mov_b32 vcc_lo, s19
	v_fma_f32 v45, -v51, v53, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v59, -v57, v46, 1.0
	v_rcp_f32_e32 v51, v50
	v_div_fmas_f32 v45, v45, v52, v53
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v46, v59, v46
	v_fma_f32 v59, -v56, v54, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s20
	v_div_fixup_f32 v16, v45, v16, v229
	v_mul_f32_e32 v55, v58, v46
	v_fmac_f32_e32 v54, v59, v54
	v_rcp_f32_e32 v59, v60
	v_fma_f32 v53, -v50, v51, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v57, v55, v58
	v_mul_f32_e32 v48, v61, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v51, v53, v51
	v_div_scale_f32 v53, null, v22, v22, v64
	v_fmac_f32_e32 v55, v47, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v47, -v56, v48, v61
	v_fma_f32 v62, -v60, v59, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v52, -v57, v55, v58
	v_dual_fmac_f32 v48, v47, v54 :: v_dual_fmac_f32 v59, v62, v59
	v_div_scale_f32 v62, s21, v226, v21, v226
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v46, v52, v46, v55
	v_fma_f32 v52, -v56, v48, v61
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v47, v62, v59
	v_div_scale_f32 v56, s19, v63, v20, v63
	v_div_fmas_f32 v48, v52, v54, v48
	v_rcp_f32_e32 v52, v53
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v55, -v60, v47, v62
	v_div_fixup_f32 v45, v46, v18, v228
	s_mov_b32 vcc_lo, s21
	v_div_fixup_f32 v46, v48, v19, v227
	v_div_scale_f32 v48, null, v23, v23, v225
	v_fmac_f32_e32 v47, v55, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v55, -v53, v52, 1.0
	v_fma_f32 v18, -v60, v47, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v52, v55, v52
	v_mul_f32_e32 v54, v56, v51
	v_div_fmas_f32 v18, v18, v59, v47
	v_rcp_f32_e32 v47, v48
	v_div_scale_f32 v55, null, v49, v49, v224
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v19, -v50, v54, v56
	v_div_fixup_f32 v57, v18, v21, v226
	s_mov_b32 vcc_lo, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v54, v19, v51
	v_div_scale_f32 v19, s18, v64, v22, v64
	v_fma_f32 v18, -v50, v54, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v48, v47, 1.0
	v_rcp_f32_e32 v56, v55
	v_mul_f32_e32 v21, v19, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v18, v18, v51, v54
	v_fmac_f32_e32 v47, v50, v47
	v_div_scale_f32 v50, null, v40, v40, v216
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v53, v21, v19
	v_div_fixup_f32 v59, v18, v20, v63
	v_div_scale_f32 v54, s19, v225, v23, v225
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v18, v50
	v_fma_f32 v58, -v55, v56, 1.0
	v_fmac_f32_e32 v21, v51, v52
	v_div_scale_f32 v51, s20, v224, v49, v224
	v_div_scale_f32 v63, null, v43, v43, v212
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v56, v58, v56
	v_div_scale_f32 v58, null, v41, v41, v215
	v_fma_f32 v61, -v50, v18, 1.0
	v_fma_f32 v19, -v53, v21, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v60, v51, v56
	v_rcp_f32_e32 v62, v58
	s_mov_b32 vcc_lo, s18
	v_fmac_f32_e32 v18, v61, v18
	v_mul_f32_e32 v20, v54, v47
	v_div_fmas_f32 v19, v19, v52, v21
	v_fma_f32 v21, -v55, v60, v51
	v_rcp_f32_e32 v52, v63
	s_mov_b32 vcc_lo, s19
	v_fma_f32 v53, -v48, v20, v54
	v_div_fixup_f32 v64, v19, v22, v64
	v_fma_f32 v61, -v58, v62, 1.0
	v_fmac_f32_e32 v60, v21, v56
	v_div_scale_f32 v22, s21, v215, v41, v215
	v_fmac_f32_e32 v20, v53, v47
	v_div_scale_f32 v53, s18, v216, v40, v216
	v_fmac_f32_e32 v62, v61, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v19, -v48, v20, v54
	v_mul_f32_e32 v21, v53, v18
	v_fma_f32 v48, -v63, v52, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v19, v19, v47, v20
	v_fma_f32 v20, -v55, v60, v51
	v_fma_f32 v47, -v50, v21, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v51, v22, v62 :: v_dual_fmac_f32 v52, v48, v52
	v_div_scale_f32 v48, s19, v212, v43, v212
	v_fmac_f32_e32 v21, v47, v18
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v47, -v58, v51, v22
	s_mov_b32 vcc_lo, s20
	v_div_fixup_f32 v55, v19, v23, v225
	v_mul_f32_e32 v54, v48, v52
	v_fma_f32 v19, -v50, v21, v53
	v_fmac_f32_e32 v51, v47, v62
	v_div_fmas_f32 v20, v20, v56, v60
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v10
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v11, v19, v18, v21
	v_div_fixup_f32 v49, v20, v49, v224
	v_fma_f32 v20, -v63, v54, v48
	v_fma_f32 v18, -v58, v51, v22
	s_mov_b32 vcc_lo, s21
	v_div_fixup_f32 v40, v11, v40, v216
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v54, v20, v52
	v_div_fmas_f32 v18, v18, v62, v51
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, s20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v23, v223, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v63, v54, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0x42800000, s18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v22, v222, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v18, v41, v215
	v_div_fmas_f32 v10, v21, v52, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v173
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v218, v16
	v_mul_f32_e32 v16, v185, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v10, v10, v43, v212
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v11, v48
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v38
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v167
	v_ldexp_f32 v8, v11, v47
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v174
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v172
	v_exp_f32_e32 v21, v20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v221, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v11
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v178, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v9, v21, v19
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v219, v17
	v_mul_f32_e32 v17, v187, v45
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v45, 1.0, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v51, v47
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v43, 1.0, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v13
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v13, v179, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v46, null, v45, v45, v173
	v_div_scale_f32 v48, null, v43, v43, v174
	v_div_scale_f32 v54, vcc_lo, v174, v43, v174
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v52, v46
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v8, v9, v12
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v21, v220, v15
	v_mul_f32_e32 v15, v183, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v57, s18, v173, v45, v173
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v8
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v46, v52, 1.0
	v_fma_f32 v9, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v55, null, v53, v53, v167
	v_div_scale_f32 v58, s19, v167, v53, v167
	v_fmac_f32_e32 v50, v9, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v49, v55
	v_fmac_f32_e32 v52, v8, v52
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v177, v40
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v40, 1.0, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v56, v54, v50 :: v_dual_mul_f32 v9, v176, v41
	v_mul_f32_e32 v41, v57, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v51, -v48, v56, v54
	v_fma_f32 v47, -v55, v49, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v56, v51, v50
	v_div_scale_f32 v51, null, v40, v40, v172
	v_fmac_f32_e32 v49, v47, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v48, v56, v54
	v_rcp_f32_e32 v47, v51
	v_fma_f32 v54, -v46, v41, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v38, v48, v50, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0x42800000, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v54, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v54, v58, v49
	v_div_fixup_f32 v38, v38, v43, v174
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v56, -v51, v47, 1.0
	v_fma_f32 v43, -v46, v41, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v166
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_fma_f32 v46, -v55, v54, v58
	v_fmac_f32_e32 v47, v56, v47
	v_div_scale_f32 v56, s20, v172, v40, v172
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v50, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v31, v43, v52, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0x42800000, s21
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v41, v56, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v54, v46, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, s21
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v165
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v51, v41, v56
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v181, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v46, v50, v48
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v55, v54, v58
	v_fmac_f32_e32 v41, v28, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v52
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v161
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	v_div_fixup_f32 v31, v31, v45, v173
	v_div_fmas_f32 v49, v55, v49, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_exp_f32_e32 v50, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v51, v41, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v208
	v_ldexp_f32 v28, v28, v43
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v14, v182, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v27, v47, v41
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v41, 1.0, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v50, v48
	v_dual_fmac_f32 v51, 0xbfb8aa3b, v160 :: v_dual_mul_f32 v10, v175, v10
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v169, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v48, null, v41, v41, v165
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v49, v53, v167
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v55, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v43, v51, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v48, v55, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v43, 1.0, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v55, v49, v55 :: v_dual_add_f32 v46, 1.0, v46
	v_div_scale_f32 v52, null, v46, v46, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v54, v52
	v_fma_f32 v47, -v52, v54, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v54, v47, v54
	v_div_scale_f32 v47, vcc_lo, v166, v46, v166
	v_mul_f32_e32 v57, v47, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v52, v57, v47
	v_fmac_f32_e32 v57, v45, v54
	v_div_scale_f32 v45, s18, v165, v41, v165
	v_div_fixup_f32 v27, v27, v40, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v52, v57, v47
	v_div_scale_f32 v52, null, v43, v43, v160
	v_mul_f32_e32 v51, v45, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v27, v171, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v47, v47, v54, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v53, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v48, v51, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v168, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v51, v54, v55
	v_div_fixup_f32 v46, v47, v46, v166
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v52, v53, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v48, v51, v45
	v_div_scale_f32 v48, s20, v160, v43, v160
	v_fmac_f32_e32 v53, v47, v53
	v_div_scale_f32 v56, null, v50, v50, v161
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v158
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v28, v170, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v40, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v157
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v56, v40, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v49, v40
	v_div_scale_f32 v49, s19, v161, v50, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v57, v49, v40
	v_fma_f32 v38, -v56, v57, v49
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v57, v38, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_div_fmas_f32 v45, v45, v55, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_exp_f32_e32 v0, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v51, v48, v53
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v47, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v56, v57, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v55, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v52, v51, v48
	s_mov_b32 vcc_lo, s19
	v_div_fmas_f32 v40, v49, v40, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v0, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v51, v32, v53
	v_div_fixup_f32 v38, v45, v41, v165
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v148
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v40, v50, v161
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v52, v51, v48
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v162, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s20
	v_div_scale_f32 v45, null, v0, v0, v157
	v_div_fmas_f32 v40, v40, v53, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v163, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v50, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v40, v43, v160
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v41, v41, v54
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v156
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v45, v50, 1.0
	v_div_scale_f32 v54, null, v41, v41, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v52, v50
	v_div_scale_f32 v56, null, v47, v47, v158
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v55, v54
	v_div_scale_f32 v52, s19, v157, v0, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v49, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v43, v43, v40
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v159, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v54, v55, 1.0
	v_fma_f32 v48, -v56, v49, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v46, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v48, v49
	v_div_scale_f32 v48, s18, v158, v47, v158
	s_mov_b32 vcc_lo, s18
	v_mul_f32_e32 v51, v48, v49
	v_fma_f32 v53, -v56, v51, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v51, v53, v49
	v_mul_f32_e32 v53, v52, v50
	v_fma_f32 v48, -v56, v51, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v56, -v45, v53, v52
	v_div_fmas_f32 v48, v48, v49, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v53, v56, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v47, v48, v47, v158
	v_div_scale_f32 v48, null, v43, v43, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v45, v53, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v46, v48
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v132, v132, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v42, v45, v50, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v153
	v_cndmask_b32_e64 v50, 0, 0x42800000, s20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v164, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v42, v0, v157
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v48, v46, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v152
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s20
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v33
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v133, v133, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v46, v53, v46
	v_div_scale_f32 v44, s18, v148, v41, v148
	v_div_scale_f32 v53, s19, v156, v43, v156
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v39, v51, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v52, v44, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v50, v50
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_fma_f32 v42, -v54, v52, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v52, v42, v55
	v_mul_f32_e32 v42, v53, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v50, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v54, v52, v44
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v54, 1.0, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v48, v42, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v50, null, v54, v54, v153
	v_fmac_f32_e32 v42, v39, v46
	v_div_fmas_f32 v33, v44, v55, v52
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0x42800000, s20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v48, v42, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s20
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v209
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v42, v44, v46, v42
	v_div_scale_f32 v44, vcc_lo, v153, v54, v153
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v42, v43, v156
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v56, null, v45, v45, v152
	v_rcp_f32_e32 v53, v56
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v43, v43, v48
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v56, v53, 1.0
	v_fmac_f32_e32 v53, v46, v53
	v_div_scale_f32 v46, s18, v152, v45, v152
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v39, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v51, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v39, v39, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v50, v51, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v39, v33, v41, v148
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v33, v155, v42 :: v_dual_mul_f32 v42, v46, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v51, v55, v51
	v_mul_f32_e32 v52, v44, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v50, v52, v44
	v_fmac_f32_e32 v52, v41, v51
	v_fma_f32 v41, -v56, v42, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v43, -v50, v52, v44
	v_fmac_f32_e32 v42, v41, v53
	v_div_scale_f32 v44, null, v0, v0, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v43, v43, v51, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v211
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v56, v42, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v43, v43, v54, v153
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_div_fmas_f32 v42, v46, v53, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v146
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, null, v49, v49, v150
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v210
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v42, v45, v152
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v45, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v57, v55
	v_div_scale_f32 v47, s19, v150, v49, v150
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, s18, v147, v0, v147
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v125, v125, v42 :: v_dual_mul_f32 v124, v240, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v145
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v55, v57, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v41, v57
	v_rcp_f32_e32 v41, v44
	v_fma_f32 v51, -v44, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v41, v51, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_ldexp_f32 v36, v45, v48
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v54, 1.0, v36 :: v_dual_mul_f32 v39, v154, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v46, v47, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v55, v46, v47
	v_fmac_f32_e32 v46, v50, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v55, v46, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v50, 0xbfb8aa3b, v118 :: v_dual_mul_f32 v45, v53, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, null, v54, v54, v146
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v44, v45, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v50, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v35, v48
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v45, v36, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v52, v51
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	v_fma_f32 v44, -v44, v45, v53
	v_div_fmas_f32 v46, v47, v57, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v47, 1.0, v36 :: v_dual_fmac_f32 v52, 0xbfb8aa3b, v119
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_fma_f32 v36, -v55, v50, 1.0
	v_div_fmas_f32 v41, v44, v41, v45
	v_div_scale_f32 v48, null, v47, v47, v145
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v52
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, vcc_lo, v146, v54, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v48
	v_div_fixup_f32 v0, v41, v0, v147
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v41, null, v52, v52, v118
	v_div_fixup_f32 v36, v46, v49, v150
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v35, v151, v0 :: v_dual_mul_f32 v46, v53, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v44, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v44, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v48, v45, 1.0
	v_fma_f32 v51, -v55, v46, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_fmac_f32 v45, v49, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v49, s18, v145, v47, v145
	v_fmac_f32_e32 v46, v51, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v41, v44, 1.0
	v_div_scale_f32 v56, null, v0, v0, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v42, v49, v45
	v_fmac_f32_e32 v44, v51, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v51, v56
	v_fma_f32 v57, -v56, v51, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v51, v57, v51
	v_fma_f32 v43, -v55, v46, v53
	v_fma_f32 v53, -v48, v42, v49
	v_div_scale_f32 v55, s19, v118, v52, v118
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0x42800000, s21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v43, v43, v50, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v42, v53, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0x42800000, s20
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, s20
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v141
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v53, v55, v44
	v_fma_f32 v48, -v48, v42, v49
	v_div_fixup_f32 v43, v43, v54, v146
	v_div_scale_f32 v54, s20, v119, v0, v119
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v49, -v41, v53, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v142
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v149, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v42, v48, v45, v42
	v_fmac_f32_e32 v53, v49, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v50, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v45, v54, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s21
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v207
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v41, v53, v55
	v_div_fixup_f32 v42, v42, v47, v145
	v_fma_f32 v49, -v56, v45, v54
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v116, v116, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v46, v50, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v45, v49, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v57
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v41, v41, v44, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v206
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v56, v45, v54
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v117, v117, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, null, v46, v46, v142
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v49, v48
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v56, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s20
	v_rcp_f32_e32 v53, v55
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v45, v54, v51, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v140
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v41, v52, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v51, null, v48, v48, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v118, v143, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, s18, v141, v48, v141
	v_rcp_f32_e32 v54, v51
	v_div_fixup_f32 v0, v45, v0, v119
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v44, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v55, v53, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v119, v144, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v51, v54, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v44, 1.0, v44 :: v_dual_fmac_f32 v53, v50, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, vcc_lo, v142, v46, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v54, v52, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v139
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v57, null, v44, v44, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v45, v57
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v56, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v49, v41, v54 :: v_dual_mul_f32 v58, v50, v53
	v_fma_f32 v47, -v55, v58, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v58, v47, v53
	v_fma_f32 v47, -v57, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v55, v58, v50
	v_fmac_f32_e32 v45, v47, v45
	v_div_scale_f32 v47, s19, v140, v44, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v42, v42, v53, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v205
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v55, v47, v45
	v_fma_f32 v53, -v51, v49, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v42, v42, v46, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v57, v55, v47
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v49, v53, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v58, 0xbfb8aa3b, v138 :: v_dual_fmac_f32 v55, v43, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, null, v0, v0, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v204
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v43, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v51, v49, v41
	v_rcp_f32_e32 v52, v50
	v_div_scale_f32 v53, s20, v139, v0, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v57, v55, v47
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v43, v43, v56
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v136
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v50, v52, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v43, 1.0, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v52, v46, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v58, null, v43, v43, v138
	v_div_fmas_f32 v41, v41, v54, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v203
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v46, v51, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v41, v48, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	v_div_fmas_f32 v45, v47, v45, v55
	v_rcp_f32_e32 v47, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v130
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v49, v53, v52
	s_mov_b32 vcc_lo, s20
	v_div_fixup_f32 v44, v45, v44, v140
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v109, v109, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v50, v49, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v200
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v110, v110, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v58, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v49, v54, v52
	v_fmac_f32_e32 v47, v51, v47
	v_div_scale_f32 v51, s18, v138, v43, v138
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v46, 1.0, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v50, v49, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v48, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v53, v51, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v50, null, v46, v46, v136
	v_div_fmas_f32 v45, v45, v52, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v202
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v49, v50
	v_div_fixup_f32 v0, v45, v0, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v111, v111, v0 :: v_dual_fmac_f32 v52, 0xbfb8aa3b, v131
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v50, v49, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v58, v53, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v49, v54, v49
	v_div_scale_f32 v54, s19, v136, v46, v136
	v_div_scale_f32 v55, null, v0, v0, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v53, v48, v47 :: v_dual_mul_f32 v48, v54, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v52, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v41, v55
	v_fma_f32 v44, -v58, v53, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v50, v48, v54
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v108, v108, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v44, v44, v47, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, v51, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v201
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v47, null, v42, v42, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v43, v44, v43, v138
	v_fma_f32 v44, -v50, v48, v54
	v_fma_f32 v45, -v55, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	v_fmac_f32_e32 v41, v45, v41
	v_div_scale_f32 v45, s18, v130, v0, v130
	v_div_fmas_f32 v44, v44, v49, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0x42800000, s20
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s20
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v47, v50, 1.0
	v_mul_f32_e32 v53, v45, v41
	v_div_fixup_f32 v44, v44, v46, v136
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v92
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v199
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v50, v54, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v55, v53, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, s19, v131, v42, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v53, v46, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v198
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v101, v101, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v49, v48
	v_ldexp_f32 v46, v52, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v51, v54, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v55, v53, v45
	v_fma_f32 v55, -v47, v51, v54
	v_div_scale_f32 v49, null, v46, v46, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v41, v45, v41, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0x42800000, s20
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v57, v49
	v_fmac_f32_e32 v51, v55, v50
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v65
	v_exp_f32_e32 v55, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v41, v0, v130
	v_fma_f32 v45, -v47, v51, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v49, v57, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v45, v45, v50, v51
	v_div_scale_f32 v51, vcc_lo, v93, v46, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v57, v56, v57
	v_div_scale_f32 v58, null, v48, v48, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v55, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v45, v42, v131
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v45, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v54, v58
	v_dual_mul_f32 v53, v51, v57 :: v_dual_add_f32 v50, 1.0, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v56, v137, v42 :: v_dual_mul_f32 v55, v135, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v49, v53, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v59, null, v50, v50, v66
	v_fma_f32 v52, -v58, v54, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v53, v41, v57
	v_rcp_f32_e32 v60, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v54, v52, v54
	v_div_scale_f32 v52, s18, v92, v48, v92
	v_fma_f32 v43, -v49, v53, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v42, v52, v54
	v_div_fmas_f32 v43, v43, v57, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v197
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v58, v42, v52
	v_div_fixup_f32 v43, v43, v46, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v102, v102, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v45, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v47, s19, v66, v50, v66
	v_fmac_f32_e32 v42, v41, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_fma_f32 v41, -v59, v60, 1.0
	v_fma_f32 v45, -v58, v42, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v87
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v44, null, v0, v0, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v42, v45, v54, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v196
	v_exp_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v42, v48, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v60, v41, v60
	v_rcp_f32_e32 v41, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v195
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v86
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v45, v47, v60
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v51, v49
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v93, v128, v42 :: v_dual_mul_f32 v92, v127, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v59, v45, v47
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v46, -v44, v41, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v84
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v194
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v46, v41
	v_div_scale_f32 v46, s18, v65, v0, v65
	v_fmac_f32_e32 v45, v48, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v54, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, null, v49, v49, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v48, v46, v41
	v_fma_f32 v47, -v59, v45, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v53, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v59, v58
	v_fma_f32 v57, -v44, v48, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v48, v57, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v53, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v45, v47, v60, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v54, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v85
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v58, v59, 1.0
	v_div_fixup_f32 v45, v45, v50, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v47, 1.0, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v44, v48, v46
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v46, 1.0, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v41, v44, v41, v48
	v_div_scale_f32 v44, null, v47, v47, v84
	v_div_scale_f32 v53, null, v46, v46, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v0, v41, v0, v65
	v_fmac_f32_e32 v59, v51, v59
	v_div_scale_f32 v51, s19, v87, v49, v87
	v_rcp_f32_e32 v50, v44
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v66, v134, v0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v41, v52, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v48, v51, v59 :: v_dual_mul_f32 v65, v129, v45
	v_rcp_f32_e32 v54, v53
	s_mov_b32 vcc_lo, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v52, -v58, v48, v51
	v_fma_f32 v45, -v44, v50, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v50, v45, v50
	v_div_scale_f32 v45, s20, v84, v47, v84
	v_fmac_f32_e32 v48, v52, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v57, -v53, v54, 1.0
	v_mul_f32_e32 v43, v45, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v58, v48, v51
	v_div_fmas_f32 v48, v51, v59, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v193
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v48, v48, v49, v87
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v54, v57, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v192
	v_dual_fmac_f32 v59, 0xbfb8aa3b, v120 :: v_dual_add_f32 v0, 1.0, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, s18, v86, v46, v86
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v57, v41, v54
	v_div_scale_f32 v52, null, v0, v0, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v53, v57, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v58, v52
	v_fmac_f32_e32 v57, v42, v54
	v_fma_f32 v42, -v44, v43, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v53, v57, v41
	v_fmac_f32_e32 v43, v42, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v42, v59
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v52, v58, 1.0
	v_div_fmas_f32 v41, v41, v54, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v191
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v44, v43, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v45, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v41, v46, v86
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v42, v42, v51
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v58, v49, v58 :: v_dual_fmac_f32 v57, 0xbfb8aa3b, v79
	v_div_scale_f32 v49, s19, v85, v0, v85
	v_div_fmas_f32 v43, v44, v50, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v190
	v_exp_f32_e32 v50, v57
	v_ldexp_f32 v44, v45, v60
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v189
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v43, v43, v47, v84
	v_mul_f32_e32 v53, v49, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v84, v121, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v86, v123, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v52, v53, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v50, v51
	v_cndmask_b32_e64 v60, 0, 0x42800000, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, null, v44, v44, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v53, v54, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v52, v53, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v49, v49, v58, v53
	v_rcp_f32_e32 v53, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s20
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v49, v0, v85
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v42, 1.0, v42 :: v_dual_mul_f32 v85, v122, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v87, v126, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v45, null, v42, v42, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v52, v45
	v_fma_f32 v51, -v45, v52, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, v51, v52
	v_div_scale_f32 v51, vcc_lo, v120, v42, v120
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v46, 1.0, v50 :: v_dual_mul_f32 v47, v51, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, null, v46, v46, v79
	v_div_scale_f32 v48, s19, v79, v46, v79
	v_fma_f32 v43, -v45, v47, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v0, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v47, v43, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v59, v53, 1.0
	v_fma_f32 v45, -v45, v47, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v53, v57, v53
	v_div_scale_f32 v57, s18, v77, v44, v77
	v_div_fmas_f32 v45, v45, v52, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v41, v49, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v50, v0, 1.0
	v_mul_f32_e32 v49, v57, v53
	s_mov_b32 vcc_lo, s18
	v_div_fixup_f32 v42, v45, v42, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v41, 1.0, v41 :: v_dual_fmac_f32 v0, v54, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v59, v49, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v54, null, v41, v41, v78
	v_fmac_f32_e32 v49, v43, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v43, v48, v0
	v_rcp_f32_e32 v51, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v59, v49, v57
	v_fma_f32 v52, -v50, v43, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v47, v47, v53, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v188
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v43, v52, v0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v54, v51, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v44, v47, v44, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v51, v49, v51
	v_div_scale_f32 v34, s18, v78, v41, v78
	v_fma_f32 v48, -v50, v43, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v57, 0xbfb8aa3b, v112 :: v_dual_mul_f32 v50, v34, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v107
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v48, v0, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v52, v58
	v_exp_f32_e32 v57, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v54, v50, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v59
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v46, v79
	v_dual_fmac_f32 v50, v43, v51 :: v_dual_mul_f32 v77, v114, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v58, null, v52, v52, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v53, v57, v53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v30, v48, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v54, v50, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v30, 1.0, v30 :: v_dual_add_f32 v45, 1.0, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v34, v34, v51, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v106
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v43, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_scale_f32 v50, null, v30, v30, v107
	v_div_scale_f32 v46, null, v45, v45, v112
	v_div_fixup_f32 v34, v34, v41, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v49, v50
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v54, v46
	v_div_scale_f32 v51, vcc_lo, v71, v52, v71
	v_fma_f32 v53, -v58, v43, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v79, v115, v34 :: v_dual_mul_f32 v78, v76, v0
	v_mul_f32_e32 v76, v113, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v44, s19, v107, v30, v107
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fma_f32 v47, -v50, v49, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v41, v41, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v49, v47, v49
	v_fmac_f32_e32 v43, v53, v43
	v_fma_f32 v53, -v46, v54, 1.0
	v_dual_mul_f32 v57, v51, v43 :: v_dual_fmac_f32 v54, v53, v54
	v_div_scale_f32 v53, s18, v112, v45, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v58, v57, v51
	v_dual_mul_f32 v34, v53, v54 :: v_dual_fmac_f32 v57, v0, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v46, v34, v53
	v_fma_f32 v42, -v58, v57, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v0, v54
	v_mul_f32_e32 v0, v44, v49
	v_div_fmas_f32 v42, v42, v43, v57
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v46, v34, v53
	v_fma_f32 v46, -v50, v0, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v42, v52, v71
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v26, v43, v54, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v43, 0, 0x42800000, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v46, v49
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v98, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s20
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v99
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v50, v0, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v100
	v_exp_f32_e32 v43, v43
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v42, |v111|, |v18|, |v17|
.Ltmp8:
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v6, v47
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0x42800000, s18
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v103
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v26, v45, v112
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v43, v34
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v43, v50
	v_ldexp_f32 v6, v6, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v43, v43, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v48, null, v6, v6, v100
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v58, -v48, v50, 1.0
	v_fmac_f32_e32 v50, v58, v50
	v_div_scale_f32 v58, s19, v100, v6, v100
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v44, v49, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, s18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v62, v58, v50
	v_div_scale_f32 v25, null, v41, v41, v106
	v_div_scale_f32 v46, vcc_lo, v106, v41, v106
	v_div_fixup_f32 v0, v0, v30, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v24, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v47
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v45, null, v30, v30, v99
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v49, -v25, v24, 1.0
	v_rcp_f32_e32 v47, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v34, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v24, v49, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v34, 1.0, v34 :: v_dual_mul_f32 v49, v46, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v45, v47, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v57, null, v34, v34, v104
	v_fma_f32 v54, -v25, v49, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v51, v47
	v_rcp_f32_e32 v59, v57
	v_div_scale_f32 v51, s18, v99, v30, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v49, v54, v24 :: v_dual_mul_f32 v60, v51, v47
	v_fma_f32 v25, -v25, v49, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v61, -v57, v59, 1.0
	v_fma_f32 v46, -v45, v60, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v24, v25, v24, v49
	v_fma_f32 v25, -v48, v62, v58
	v_fmac_f32_e32 v59, v61, v59
	v_div_scale_f32 v61, s21, v104, v34, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v24, v24, v41, v106
	v_fmac_f32_e32 v60, v46, v47
	v_fmac_f32_e32 v62, v25, v50
	v_mul_f32_e32 v49, v61, v59
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v70, v24
	v_mul_f32_e32 v70, v69, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v44, null, v43, v43, v103
	v_fma_f32 v25, -v57, v49, v61
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v105, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v45, v60, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v53, v44
	v_fma_f32 v45, -v48, v62, v58
	v_dual_fmac_f32 v49, v25, v59 :: v_dual_and_b32 v48, 8, v180
	v_div_fmas_f32 v41, v41, v47, v60
	s_mov_b32 vcc_lo, s19
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, |v33|, |v22|, |v20|
	s_mov_b32 s18, 0x76543210
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v47, 4, v180
.Ltmp11:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s19, s76, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v44, v53, 1.0
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v51, v47, 6, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v53, v54, v53
	v_div_scale_f32 v54, s20, v103, v43, v103
	v_mul_f32_e32 v63, v54, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v44, v63, v54
	v_fmac_f32_e32 v63, v46, v53
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v46, 1, v217
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp15:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v44, v63, v54
	v_div_fmas_f32 v44, v45, v50, v62
	v_fma_f32 v45, -v57, v49, v61
	s_mov_b32 vcc_lo, s20
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v50, 3, v217
.Ltmp17:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v53, v63
	s_mov_b32 vcc_lo, s21
	v_div_fixup_f32 v6, v44, v6, v100
	v_div_fmas_f32 v45, v45, v59, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v24, v25, v43, v103
	v_div_fixup_f32 v25, v41, v30, v99
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v61, v95, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v45, v34, v104
.Ltmp18:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, |v28|, |v40|, |v38|
.Ltmp19:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v63, v97, v24 :: v_dual_mul_f32 v60, v94, v25
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v132|, |v133|, |v39|
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp21:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v96, v0
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v37|, |v31|
	v_max3_f32 v24, |v32|, |v29|, |v23|
	v_max_f32_e64 v30, |v124|, |v125|
	v_max3_f32 v34, |v36|, |v116|, |v117|
	v_max3_f32 v41, |v108|, |v109|, |v110|
	v_max3_f32 v0, v0, |v27|, v6
	v_max3_f32 v6, v25, v26, |v21|
	v_max3_f32 v25, |v118|, |v119|, |v19|
	v_max3_f32 v26, v30, |v35|, v34
	v_max3_f32 v30, v41, v42, |v16|
	v_max_f32_e64 v34, |v55|, |v101|
	v_max3_f32 v41, |v102|, |v92|, |v93|
	v_max3_f32 v42, |v84|, |v85|, |v86|
	v_max3_f32 v43, |v87|, |v14|, |v12|
	v_max3_f32 v0, v0, v24, v6
	v_max3_f32 v24, v26, v25, v30
	v_max3_f32 v6, |v65|, |v66|, |v15|
	v_max3_f32 v25, v34, |v56|, v41
	v_max3_f32 v26, v42, v43, |v13|
	v_max_f32_e64 v30, |v76|, |v77|
	v_max3_f32 v34, |v78|, |v64|, |v69|
	v_max3_f32 v41, |v60|, |v61|, |v63|
	v_max3_f32 v42, |v62|, |v8|, |v9|
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v43, v0, s18, 0xfedcba98 op_sel:[1,0]
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, v25, v6, v26
	v_max3_f32 v30, v30, |v79|, v34
	v_max3_f32 v26, |v70|, |v71|, |v11|
	v_max3_f32 v34, v41, v42, |v10|
	v_max_f32_e32 v41, v43, v43
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v42, v24, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v25, s18, 0xfedcba98 op_sel:[1,0]
.Ltmp26:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s77, 0, s19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v41, v0, v41 :: v_dual_and_b32 v0, 3, v180
	v_dual_max_f32 v42, v42, v42 :: v_dual_max_f32 v43, v43, v43
	v_max3_f32 v26, v30, v26, v34
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v30, 4, v180
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v34, v0, 9, 0
	v_lshlrev_b32_e32 v44, 5, v0
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v42, v24, v42 :: v_dual_max_f32 v43, v25, v43
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v24, v26, s18, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v25, 0x60, v180
	v_lshl_add_u32 v34, v47, 2, v34
	v_and_or_b32 v45, 0x680, v30, v44
.Ltmp31:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[64:65], v[5:6]
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v24, v24, v24
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v49, v44, v25
	v_lshl_add_u32 v34, v48, 4, v34
	v_xor_b32_e32 v45, v45, v25
.Ltmp34:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[70:71], v[5:6]
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v44, v26, v24
.Ltmp36:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v26, 42, v184
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v24, v34, v46, v49
	v_add3_u32 v34, v51, v50, v45
.Ltmp38:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v5, 38, v184
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v51.h, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v45, s18, s76, v26
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v24, v[41:44]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v34
.Ltmp40:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v46, null, s77, 0, s18
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[70:71], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 40, v184
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp42:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[64:65], v[45:46]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[70:71], v[45:46]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s23, s76, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s77, 0, s23
	v_add_co_u32 v5, s23, s76, v5
	v_add_co_ci_u32_e64 v6, null, s77, 0, s23
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[70:71], v[3:4]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v3, 36, v184
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v24, v41
.Ltmp44:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[64:65], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[70:71], v[5:6]
.Ltmp45:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v26, v43
.Ltmp46:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s27, s76, v3
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v24, v24 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s77, 0, s27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v26, v26 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v24, v24
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v24, v42
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp52:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[70:71], v[3:4]
.Ltmp53:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v44, v44
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v44, v44 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v41, v41
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v24, v24 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v42, v42
	v_max_f32_e32 v26, v26, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v34, v44, v44 :: v_dual_max_f32 v5, v5, v6
	v_max_f32_e32 v6, v24, v24
	v_max_f32_e32 v24, v43, v43
.Ltmp58:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v41, 34, v184
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v44, 0, v217
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v24, v24, v26
	v_max_f32_e32 v26, v3, v34
	v_max_f32_e32 v6, v4, v6
.Ltmp61:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s29, s76, v41
	v_add_co_ci_u32_e64 v4, null, s77, 0, s29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v43, v26
	v_mov_b32_e32 v34, v6
	v_mov_b32_e32 v42, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
.Ltmp63:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[70:71], v[3:4]
.Ltmp64:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v42, v42 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v34, v34 :: v_dual_max_f32 v34, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v26, v26, v34
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v43, v26
	v_mov_b32_e32 v41, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v41, v41 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v41, v41
.Ltmp68:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v41, 32, v184
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v3
	v_max_f32_e32 v24, v24, v4
	v_max_f32_e32 v42, v42, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp70:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s31, s76, v41
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v34, v6 :: v_dual_mov_b32 v41, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v42
.Ltmp73:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s77, 0, s31
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v41, v41 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v42, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
.Ltmp75:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[70:71], v[3:4]
.Ltmp76:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v34, v34
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v34, 4, v0
	v_mov_b32_dpp v42, v42 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v42, v42, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_max_f32_e32 v3, v5, v42
	v_max_f32_e32 v5, v41, v41
	v_max_f32_e32 v41, v43, v43
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v42, 1, v25
	v_lshlrev_b32_e32 v43, 3, v48
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v6, v4 :: v_dual_max_f32 v5, v24, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v6, v26, v41
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v24, 5, v47
	v_add_nc_u32_e32 v26, 0, v34
	v_add3_u32 v0, v44, v42, v43
.Ltmp82:
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt vmcnt(0)
	v_add_co_u32 v41, s34, s76, v91
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v42, null, s77, 0, s34
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v24, v26, v24, v43
	ds_store_b128 v0, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp84:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v43, s34, s76, v90
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[3:6], v24
.Ltmp86:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v44, null, s77, 0, s34
	v_add_co_u32 v45, s34, s76, v89
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v46, null, s77, 0, s34
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[64:65], v[41:42]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[70:71], v[41:42]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v41, s39, s76, v88
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[64:65], v[43:44]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[70:71], v[43:44]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v42, null, s77, 0, s39
	v_add_co_u32 v43, s39, s76, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v44, null, s77, 0, s39
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s40, s[64:65], v[41:42]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[70:71], v[41:42]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v41, s44, s76, v82
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v5, v5, v5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[64:65], v[43:44]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[70:71], v[43:44]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v42, null, s77, 0, s44
	v_add_co_u32 v43, s44, s76, v81
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[64:65], v[45:46]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[70:71], v[45:46]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v44, null, s77, 0, s44
	v_add_co_u32 v45, s44, s76, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v46, null, s77, 0, s44
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v5, 0x2b8cbccc, v5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[64:65], v[41:42]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[70:71], v[41:42]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[64:65], v[45:46]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[70:71], v[45:46]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v46, null, 0x40e00000, 0x40e00000, v5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v41, s50, s76, v75
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[64:65], v[43:44]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v48, v46
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[70:71], v[43:44]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v42, null, s77, 0, s50
	v_add_co_u32 v43, s50, s76, v74
	v_add_co_ci_u32_e64 v44, null, s77, 0, s50
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[64:65], v[41:42]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[70:71], v[41:42]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v41, s53, s76, v73
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[64:65], v[43:44]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v42, null, s77, 0, s53
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[70:71], v[43:44]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v43, 0x2b8cbccc, v4
	v_fma_f32 v4, -v46, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[64:65], v[41:42]
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v44, null, 0x40e00000, 0x40e00000, v43
	v_fmac_f32_e32 v48, v4, v48
	v_max_f32_e32 v0, v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v0, 0x2b8cbccc, v0
	v_div_scale_f32 v3, null, 0x40e00000, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v3
	v_fma_f32 v26, -v3, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v26, v24
	v_div_scale_f32 v26, vcc_lo, v0, 0x40e00000, v0
	v_mul_f32_e32 v45, v26, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v3, v45, v26
	v_fmac_f32_e32 v45, v47, v24
	v_rcp_f32_e32 v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v3, -v3, v45, v26
	v_div_fmas_f32 v24, v3, v24, v45
	v_div_scale_f32 v26, vcc_lo, v5, 0x40e00000, v5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s55, s76, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v24, 0x40e00000, v0
	v_mul_f32_e32 v49, v26, v48
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s77, 0, s55
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[70:71], v[41:42]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v41.l, v0.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v24, -v46, v49, v26
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v41.h, v51.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v42, -v44, v47, 1.0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[70:71], v[3:4]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_dual_fmac_f32 v49, v24, v48 :: v_dual_and_b32 v24, 1, v41
	v_fmac_f32_e32 v47, v42, v47
	v_div_scale_f32 v41, s60, v43, 0x40e00000, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v26, -v46, v49, v26
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_add3_u32 v24, v0, v24, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v0, v41, v47
	v_div_fmas_f32 v26, v26, v48, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v49, 0xffff0000, v24
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v6, 0x2b8cbccc, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v44, v0, v41
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v26, v26, 0x40e00000, v5
	v_div_scale_f32 v45, null, 0x40e00000, 0x40e00000, v6
	v_div_scale_f32 v42, s61, v6, 0x40e00000, v6
	v_fmac_f32_e32 v0, v48, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v50, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v48, null, v49, v49, v37
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v51.l, v26.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v3, -v45, v50, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v3, v50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s58, s76, v68
	v_add_co_ci_u32_e64 v4, null, s77, 0, s58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v46, v42, v50
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[70:71], v[3:4]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v52, -v45, v46, v42
	v_fma_f32 v3, -v44, v0, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v41, v48
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v46, v52, v50
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v0, v3, v47, v0
	s_mov_b32 vcc_lo, s61
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v3, 1, v51
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v52, null, v49, v49, v28
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v4, -v45, v46, v42
	v_div_fixup_f32 v0, v0, 0x40e00000, v43
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v5, -v48, v41, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v42.h, v51.h
	v_add3_u32 v3, v26, v3, 0x7fff
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v4, v4, v50, v46
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v42.l, v0.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v41, v5, v41
	v_div_scale_f32 v45, vcc_lo, v37, v49, v37
	v_div_scale_f32 v43, null, v49, v49, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v47, v45, v41 :: v_dual_and_b32 v26, 1, v42
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s60, s76, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v67, null, v49, v49, v40
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v26, v0, v26, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v48, v47, v45
	v_rcp_f32_e32 v44, v43
	v_div_scale_f32 v50, null, v49, v49, v27
	v_fmac_f32_e32 v47, v0, v41
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v4, v4, 0x40e00000, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s77, 0, s60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v53, s60, v31, v49, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v45, -v48, v47, v45
	v_fma_f32 v42, -v43, v44, 1.0
	v_rcp_f32_e32 v0, v52
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v51.l, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v41, v45, v41, v47
	v_rcp_f32_e32 v47, v67
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v37, v41, v49, v37
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v59, -v52, v0, 1.0
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v72, -v67, v47, 1.0
	v_fmac_f32_e32 v0, v59, v0
	v_div_scale_f32 v59, null, v49, v49, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v47, v72, v47 :: v_dual_fmac_f32 v44, v42, v44
	v_rcp_f32_e32 v68, v59
	v_div_scale_f32 v72, null, v49, v49, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v57, v53, v44
	v_fma_f32 v48, -v43, v57, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v57, v48, v44
	v_div_scale_f32 v48, s62, v28, v49, v28
	v_fma_f32 v41, -v43, v57, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v53, v48, v0 :: v_dual_and_b32 v46, 1, v51
	v_rcp_f32_e32 v51, v50
	v_div_fmas_f32 v41, v41, v44, v57
	v_fma_f32 v57, -v59, v68, 1.0
	v_div_scale_f32 v44, s60, v40, v49, v40
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v54, 0xffff0000, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v31, v41, v49, v31
	v_fmac_f32_e32 v68, v57, v68
	v_div_scale_f32 v57, null, v49, v49, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v50, v51, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v51, v58, v51
	v_div_scale_f32 v58, s61, v27, v49, v27
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v45, v58, v51
	v_fma_f32 v43, -v50, v45, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v45, v43, v51
	v_fma_f32 v43, -v52, v53, v48
	v_fma_f32 v41, -v50, v45, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v53, v43, v0
	v_mul_f32_e32 v43, v44, v47
	v_div_scale_f32 v50, s63, v38, v49, v38
	v_div_fmas_f32 v41, v41, v51, v45
	v_rcp_f32_e32 v51, v57
	v_fma_f32 v45, -v52, v53, v48
	v_fma_f32 v48, -v67, v43, v44
	v_mul_f32_e32 v52, v50, v68
	v_div_scale_f32 v58, null, v49, v49, v29
	s_mov_b32 vcc_lo, s62
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_add3_u32 v4, v4, v46, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v45, v0, v53
	v_fmac_f32_e32 v43, v48, v47
	v_rcp_f32_e32 v45, v58
	v_fma_f32 v48, -v59, v52, v50
	v_fma_f32 v53, -v57, v51, 1.0
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v46, 0xffff0000, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v27, v41, v49, v27
	v_div_fixup_f32 v28, v0, v49, v28
	v_fma_f32 v0, -v67, v43, v44
	v_dual_fmac_f32 v52, v48, v68 :: v_dual_fmac_f32 v51, v53, v51
	v_div_scale_f32 v41, s61, v32, v49, v32
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v44, -v58, v45, 1.0
	v_div_fmas_f32 v0, v0, v47, v43
	v_fma_f32 v43, -v59, v52, v50
	v_mul_f32_e32 v47, v41, v51
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v45, v44, v45
	v_div_scale_f32 v50, s60, v29, v49, v29
	v_div_fmas_f32 v43, v43, v68, v52
	v_fma_f32 v52, -v57, v47, v41
	v_div_scale_f32 v48, null, v49, v49, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v59, v50, v45
	v_div_fixup_f32 v40, v0, v49, v40
	v_fmac_f32_e32 v47, v52, v51
	v_div_scale_f32 v52, null, v49, v49, v133
	v_rcp_f32_e32 v44, v48
	v_fma_f32 v0, -v58, v59, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v57, v47, v41
	v_rcp_f32_e32 v57, v52
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v42, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v59, v0, v45
	v_div_fmas_f32 v41, v41, v51, v47
	v_div_fixup_f32 v38, v43, v49, v38
	v_div_scale_f32 v43, s62, v23, v49, v23
	v_fma_f32 v67, -v48, v44, 1.0
	v_fma_f32 v47, -v58, v59, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v58, -v52, v57, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v32, v41, v49, v32
	v_div_scale_f32 v53, null, v49, v49, v132
	v_fmac_f32_e32 v57, v58, v57
	v_div_scale_f32 v58, s60, v133, v49, v133
	v_fmac_f32_e32 v44, v67, v44
	v_div_fmas_f32 v45, v47, v45, v59
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v68, v53
	v_div_scale_f32 v59, null, v49, v49, v33
	v_mul_f32_e32 v0, v43, v44
	v_div_fixup_f32 v29, v45, v49, v29
	v_div_scale_f32 v89, null, v42, v42, v101
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v50, -v48, v0, v43
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v67, -v53, v68, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v0, v50, v44
	v_rcp_f32_e32 v50, v72
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v38, v38
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v4.l, v26.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v41, -v48, v0, v43
	v_mul_f32_e32 v43, v58, v57
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v3.l, v24.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v41, v44, v0
	v_fma_f32 v44, -v52, v43, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v72, v50, 1.0
	v_div_fixup_f32 v23, v0, v49, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v43, v44, v57
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v52, v43, v58
	v_div_scale_f32 v52, s62, v33, v49, v33
	v_fmac_f32_e32 v50, v45, v50
	v_rcp_f32_e32 v45, v59
	v_div_scale_f32 v58, null, v49, v49, v20
	v_fma_f32 v48, -v59, v45, 1.0
	v_fmac_f32_e32 v68, v67, v68
	v_div_scale_f32 v67, s63, v132, v49, v132
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v45, v48, v45
	v_mul_f32_e32 v51, v67, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v53, v51, v67
	v_fmac_f32_e32 v51, v47, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v53, v51, v67
	v_div_scale_f32 v53, s61, v39, v49, v39
	v_div_scale_f32 v67, null, v49, v49, v22
	v_div_fmas_f32 v41, v41, v68, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v51, v53, v50
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v44, v67
	v_div_fmas_f32 v0, v0, v57, v43
	v_div_fixup_f32 v47, v41, v49, v132
	v_fma_f32 v41, -v72, v51, v53
	v_rcp_f32_e32 v43, v58
	v_div_scale_f32 v68, null, v49, v49, v21
	v_div_scale_f32 v57, s60, v22, v49, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v51, v41, v50
	v_fma_f32 v48, -v67, v44, 1.0
	v_mul_f32_e32 v41, v52, v45
	v_rcp_f32_e32 v73, v68
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v74, -v58, v43, 1.0
	v_fmac_f32_e32 v44, v48, v44
	v_div_fixup_f32 v48, v0, v49, v133
	v_fma_f32 v0, -v72, v51, v53
	v_fma_f32 v53, -v59, v41, v52
	v_fmac_f32_e32 v43, v74, v43
	v_div_scale_f32 v74, null, v54, v54, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v0, v0, v50, v51
	v_fmac_f32_e32 v41, v53, v45
	v_mul_f32_e32 v72, v57, v44
	v_fma_f32 v53, -v68, v73, 1.0
	v_div_scale_f32 v51, s61, v20, v49, v20
	v_div_fixup_f32 v39, v0, v49, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v67, v72, v57
	v_fma_f32 v0, -v59, v41, v52
	v_fmac_f32_e32 v73, v53, v73
	v_div_scale_f32 v53, null, v54, v54, v124
	v_fmac_f32_e32 v72, v50, v44
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v52, s63, v21, v49, v21
	v_mul_f32_e32 v50, v51, v43
	v_div_fmas_f32 v0, v0, v45, v41
	v_fma_f32 v41, -v67, v72, v57
	v_rcp_f32_e32 v57, v53
	v_div_scale_f32 v67, null, v54, v54, v125
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v59, v52, v73
	v_fma_f32 v45, -v58, v50, v51
	v_div_fmas_f32 v41, v41, v44, v72
	v_rcp_f32_e32 v44, v67
	v_div_fixup_f32 v33, v0, v49, v33
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v50, v45, v43
	v_fma_f32 v45, -v68, v59, v52
	v_fma_f32 v72, -v53, v57, 1.0
	v_div_fixup_f32 v22, v41, v49, v22
	v_div_scale_f32 v41, s60, v124, v54, v124
	v_fma_f32 v0, -v58, v50, v51
	v_fmac_f32_e32 v59, v45, v73
	v_fma_f32 v45, -v67, v44, 1.0
	v_fmac_f32_e32 v57, v72, v57
	v_div_scale_f32 v51, null, v54, v54, v35
	v_div_fmas_f32 v0, v0, v43, v50
	v_fma_f32 v43, -v68, v59, v52
	v_fmac_f32_e32 v44, v45, v44
	v_mul_f32_e32 v50, v41, v57
	v_rcp_f32_e32 v45, v51
	v_div_scale_f32 v52, s61, v125, v54, v125
	v_div_scale_f32 v58, null, v54, v54, v36
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v68, v52, v44
	v_div_fmas_f32 v43, v43, v73, v59
	v_fma_f32 v59, -v53, v50, v41
	v_rcp_f32_e32 v73, v58
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v72, -v51, v45, 1.0
	v_div_fixup_f32 v20, v0, v49, v20
	v_div_fixup_f32 v21, v43, v49, v21
	v_fmac_f32_e32 v50, v59, v57
	v_fma_f32 v0, -v67, v68, v52
	v_div_scale_f32 v49, null, v54, v54, v116
	v_fmac_f32_e32 v45, v72, v45
	v_div_scale_f32 v43, s62, v35, v54, v35
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v59, -v58, v73, 1.0
	v_fma_f32 v41, -v53, v50, v41
	v_fmac_f32_e32 v68, v0, v44
	v_rcp_f32_e32 v53, v49
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v0, v43, v45
	v_fmac_f32_e32 v73, v59, v73
	v_div_scale_f32 v59, s63, v36, v54, v36
	v_div_fmas_f32 v41, v41, v57, v50
	v_fma_f32 v50, -v67, v68, v52
	v_div_scale_f32 v72, null, v54, v54, v117
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v52, -v51, v0, v43
	v_fma_f32 v67, -v49, v53, 1.0
	v_div_fmas_f32 v44, v50, v44, v68
	v_rcp_f32_e32 v50, v72
	v_mul_f32_e32 v57, v59, v73
	v_fmac_f32_e32 v0, v52, v45
	v_fmac_f32_e32 v53, v67, v53
	v_div_scale_f32 v67, s60, v116, v54, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v58, v57, v59
	v_fma_f32 v43, -v51, v0, v43
	v_div_scale_f32 v68, null, v54, v54, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v67, v53
	v_fmac_f32_e32 v57, v52, v73
	v_fma_f32 v52, -v72, v50, 1.0
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v75, v74
	v_div_fmas_f32 v0, v43, v45, v0
	v_fma_f32 v43, -v58, v57, v59
	v_fma_f32 v45, -v49, v51, v67
	v_fmac_f32_e32 v50, v52, v50
	v_rcp_f32_e32 v52, v68
	v_div_scale_f32 v59, null, v54, v54, v119
	v_div_scale_f32 v58, s61, v117, v54, v117
	v_fmac_f32_e32 v51, v45, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v45, v59
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v0, v0, v54, v35
	v_div_fmas_f32 v43, v43, v73, v57
	v_mul_f32_e32 v57, v58, v50
	v_fma_f32 v73, -v68, v52, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v41, v41, v54, v124
	v_div_fixup_f32 v35, v43, v54, v36
	v_fma_f32 v36, -v49, v51, v67
	v_fma_f32 v43, -v72, v57, v58
	v_fmac_f32_e32 v52, v73, v52
	v_div_scale_f32 v49, s62, v118, v54, v118
	v_fma_f32 v67, -v59, v45, 1.0
	v_div_scale_f32 v73, null, v54, v54, v19
	v_div_fmas_f32 v36, v36, v53, v51
	v_fmac_f32_e32 v57, v43, v50
	v_mul_f32_e32 v51, v49, v52
	v_fmac_f32_e32 v45, v67, v45
	v_div_scale_f32 v67, s60, v119, v54, v119
	v_rcp_f32_e32 v53, v73
	v_fma_f32 v43, -v72, v57, v58
	v_fma_f32 v58, -v68, v51, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v72, v67, v45
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v44, v44, v54, v125
	v_div_fmas_f32 v43, v43, v50, v57
	v_fmac_f32_e32 v51, v58, v52
	v_fma_f32 v50, -v59, v72, v67
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v80, -v73, v53, 1.0
	v_div_scale_f32 v57, s61, v19, v54, v19
	v_fma_f32 v49, -v68, v51, v49
	v_fmac_f32_e32 v72, v50, v45
	v_div_scale_f32 v68, null, v54, v54, v109
	v_fmac_f32_e32 v53, v80, v53
	v_fma_f32 v58, -v74, v75, 1.0
	v_div_fmas_f32 v49, v49, v52, v51
	v_fma_f32 v51, -v59, v72, v67
	v_rcp_f32_e32 v59, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v50, v57, v53 :: v_dual_fmac_f32 v75, v58, v75
	v_div_scale_f32 v58, s63, v108, v54, v108
	v_div_scale_f32 v80, null, v54, v54, v110
	v_fma_f32 v52, -v73, v50, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v67, v58, v75
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v81, -v68, v59, 1.0
	v_div_fixup_f32 v36, v36, v54, v116
	v_fmac_f32_e32 v50, v52, v53
	v_rcp_f32_e32 v52, v80
	v_div_fixup_f32 v43, v43, v54, v117
	v_fmac_f32_e32 v59, v81, v59
	v_div_fmas_f32 v51, v51, v45, v72
	v_fma_f32 v72, -v74, v67, v58
	v_div_fixup_f32 v45, v49, v54, v118
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v49, v51, v54, v119
	v_fma_f32 v51, -v73, v50, v57
	v_fmac_f32_e32 v67, v72, v75
	v_div_scale_f32 v73, null, v54, v54, v111
	v_div_scale_f32 v57, s60, v109, v54, v109
	v_fma_f32 v72, -v80, v52, 1.0
	v_div_fmas_f32 v50, v51, v53, v50
	v_fma_f32 v51, -v74, v67, v58
	v_rcp_f32_e32 v58, v73
	v_div_scale_f32 v74, null, v54, v54, v18
	v_dual_mul_f32 v53, v57, v59 :: v_dual_fmac_f32 v52, v72, v52
	v_div_scale_f32 v72, s61, v110, v54, v110
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v82, v74
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v19, v50, v54, v19
	v_div_fmas_f32 v51, v51, v75, v67
	v_fma_f32 v67, -v68, v53, v57
	v_mul_f32_e32 v75, v72, v52
	v_fma_f32 v81, -v73, v58, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v50, v51, v54, v108
	v_fmac_f32_e32 v53, v67, v59
	v_fma_f32 v51, -v80, v75, v72
	v_fmac_f32_e32 v58, v81, v58
	v_div_scale_f32 v67, s62, v111, v54, v111
	v_div_scale_f32 v81, null, v54, v54, v17
	v_fma_f32 v83, -v74, v82, 1.0
	v_fma_f32 v57, -v68, v53, v57
	v_fmac_f32_e32 v75, v51, v52
	v_mul_f32_e32 v68, v67, v58
	v_rcp_f32_e32 v88, v81
	v_fmac_f32_e32 v82, v83, v82
	v_div_scale_f32 v83, s63, v18, v54, v18
	v_div_fmas_f32 v51, v57, v59, v53
	v_fma_f32 v53, -v80, v75, v72
	v_fma_f32 v57, -v73, v68, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v59, v83, v82
	v_div_scale_f32 v80, null, v54, v54, v16
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v72, -v81, v88, 1.0
	v_div_fmas_f32 v52, v53, v52, v75
	v_fmac_f32_e32 v68, v57, v58
	v_rcp_f32_e32 v57, v80
	v_fma_f32 v53, -v74, v59, v83
	v_fmac_f32_e32 v88, v72, v88
	v_div_scale_f32 v72, s60, v17, v54, v17
	v_fma_f32 v67, -v73, v68, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v59, v53, v82
	v_div_scale_f32 v75, null, v42, v42, v55
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v73, v72, v88
	v_fma_f32 v53, -v80, v57, 1.0
	v_div_fmas_f32 v58, v67, v58, v68
	v_fma_f32 v67, -v74, v59, v83
	v_rcp_f32_e32 v74, v75
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v68, -v81, v73, v72
	v_fmac_f32_e32 v57, v53, v57
	v_div_scale_f32 v83, s61, v16, v54, v16
	v_div_fmas_f32 v59, v67, v82, v59
	v_rcp_f32_e32 v67, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v73, v68, v88 :: v_dual_mul_f32 v68, v83, v57
	v_fma_f32 v82, -v75, v74, 1.0
	v_div_fixup_f32 v53, v58, v54, v111
	v_div_fixup_f32 v18, v59, v54, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v58, -v81, v73, v72
	v_fma_f32 v59, -v80, v68, v83
	v_fmac_f32_e32 v74, v82, v74
	v_div_scale_f32 v72, s62, v55, v42, v55
	v_fma_f32 v81, -v89, v67, 1.0
	v_div_scale_f32 v82, null, v42, v42, v56
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v68, v59, v57
	v_div_fmas_f32 v58, v58, v88, v73
	v_mul_f32_e32 v59, v72, v74
	v_fmac_f32_e32 v67, v81, v67
	v_rcp_f32_e32 v73, v82
	v_div_scale_f32 v81, s60, v101, v42, v101
	v_div_scale_f32 v88, null, v42, v42, v102
	v_div_fixup_f32 v17, v58, v54, v17
	v_fma_f32 v58, -v80, v68, v83
	v_fma_f32 v80, -v75, v59, v72
	v_mul_f32_e32 v83, v81, v67
	v_rcp_f32_e32 v90, v88
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v82, v73, 1.0
	v_div_fmas_f32 v57, v58, v57, v68
	v_fmac_f32_e32 v59, v80, v74
	v_fma_f32 v58, -v89, v83, v81
	v_div_fixup_f32 v51, v51, v54, v109
	v_div_fixup_f32 v52, v52, v54, v110
	v_fmac_f32_e32 v73, v91, v73
	v_div_scale_f32 v68, s61, v56, v42, v56
	v_fma_f32 v80, -v88, v90, 1.0
	v_div_fixup_f32 v16, v57, v54, v16
	v_fma_f32 v54, -v75, v59, v72
	v_fmac_f32_e32 v83, v58, v67
	v_div_scale_f32 v72, null, v42, v42, v92
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v57, v68, v73
	v_fmac_f32_e32 v90, v80, v90
	v_div_scale_f32 v58, s63, v102, v42, v102
	v_div_fmas_f32 v54, v54, v74, v59
	v_fma_f32 v59, -v89, v83, v81
	v_rcp_f32_e32 v75, v72
	v_div_scale_f32 v81, null, v42, v42, v93
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v74, -v82, v57, v68
	v_mul_f32_e32 v80, v58, v90
	v_div_fmas_f32 v59, v59, v67, v83
	v_rcp_f32_e32 v67, v81
	v_div_fixup_f32 v54, v54, v42, v55
	v_fmac_f32_e32 v57, v74, v73
	v_fma_f32 v74, -v88, v80, v58
	v_fma_f32 v83, -v72, v75, 1.0
	v_div_fixup_f32 v55, v59, v42, v101
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v59, -v82, v57, v68
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v80, v74, v90 :: v_dual_fmac_f32 v75, v83, v75
	v_div_scale_f32 v68, s60, v92, v42, v92
	v_fma_f32 v74, -v81, v67, 1.0
	v_div_scale_f32 v82, null, v42, v42, v65
	v_div_fmas_f32 v57, v59, v73, v57
	v_fma_f32 v58, -v88, v80, v58
	v_mul_f32_e32 v59, v68, v75
	v_fmac_f32_e32 v67, v74, v67
	v_rcp_f32_e32 v73, v82
	v_div_scale_f32 v74, s61, v93, v42, v93
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v83, null, v42, v42, v66
	v_div_fmas_f32 v58, v58, v90, v80
	v_fma_f32 v80, -v72, v59, v68
	v_mul_f32_e32 v88, v74, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v90, v83
	v_fma_f32 v89, -v82, v73, 1.0
	v_div_fixup_f32 v56, v57, v42, v56
	v_div_fixup_f32 v57, v58, v42, v102
	v_fmac_f32_e32 v59, v80, v75
	v_fma_f32 v58, -v81, v88, v74
	v_fmac_f32_e32 v73, v89, v73
	v_div_scale_f32 v80, s62, v65, v42, v65
	v_div_scale_f32 v89, null, v42, v42, v15
	v_fma_f32 v68, -v72, v59, v68
	v_fmac_f32_e32 v88, v58, v67
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v91, -v83, v90, 1.0
	v_mul_f32_e32 v72, v80, v73
	v_rcp_f32_e32 v94, v89
	v_div_fmas_f32 v58, v68, v75, v59
	v_fma_f32 v59, -v81, v88, v74
	v_div_scale_f32 v81, null, v42, v42, v84
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, s63, v66, v42, v66
	v_fma_f32 v68, -v82, v72, v80
	v_div_fmas_f32 v59, v59, v67, v88
	v_rcp_f32_e32 v67, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v74, v91, v90
	v_fma_f32 v75, -v89, v94, 1.0
	v_fmac_f32_e32 v72, v68, v73
	v_div_scale_f32 v88, null, v42, v42, v85
	v_fma_f32 v68, -v83, v74, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v94, v75, v94
	v_div_scale_f32 v75, s60, v15, v42, v15
	v_fma_f32 v80, -v82, v72, v80
	v_fma_f32 v82, -v81, v67, 1.0
	v_fmac_f32_e32 v74, v68, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v68, v75, v94
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v58, v58, v42, v92
	v_fmac_f32_e32 v67, v82, v67
	v_rcp_f32_e32 v82, v88
	v_div_fmas_f32 v72, v80, v73, v72
	v_fma_f32 v73, -v83, v74, v91
	v_fma_f32 v80, -v89, v68, v75
	v_div_scale_f32 v83, s61, v84, v42, v84
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v91, null, v42, v42, v86
	v_div_fmas_f32 v73, v73, v90, v74
	v_fmac_f32_e32 v68, v80, v94
	v_mul_f32_e32 v80, v83, v67
	v_fma_f32 v90, -v88, v82, 1.0
	v_rcp_f32_e32 v74, v91
	v_div_fixup_f32 v66, v73, v42, v66
	v_div_fixup_f32 v65, v72, v42, v65
	v_fma_f32 v73, -v81, v80, v83
	v_fmac_f32_e32 v82, v90, v82
	v_div_scale_f32 v90, null, v42, v42, v87
	v_fma_f32 v72, -v89, v68, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v73, v67
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v73, v90
	v_div_scale_f32 v75, s62, v85, v42, v85
	v_fma_f32 v89, -v91, v74, 1.0
	v_div_fmas_f32 v68, v72, v94, v68
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v72, v75, v82
	v_div_scale_f32 v92, null, v42, v42, v14
	v_fmac_f32_e32 v74, v89, v74
	v_div_scale_f32 v89, s60, v86, v42, v86
	v_div_fixup_f32 v15, v68, v42, v15
	v_fma_f32 v68, -v81, v80, v83
	v_fma_f32 v94, -v90, v73, 1.0
	v_fma_f32 v81, -v88, v72, v75
	v_div_fixup_f32 v59, v59, v42, v93
	v_rcp_f32_e32 v93, v92
	v_div_fmas_f32 v67, v68, v67, v80
	v_fmac_f32_e32 v73, v94, v73
	v_mul_f32_e32 v83, v89, v74
	v_fmac_f32_e32 v72, v81, v82
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v67, v67, v42, v84
	v_div_scale_f32 v84, null, v42, v42, v12
	v_fma_f32 v68, -v91, v83, v89
	v_fma_f32 v75, -v88, v72, v75
	v_div_scale_f32 v80, s61, v87, v42, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v88, v84
	v_fmac_f32_e32 v83, v68, v74
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v72, v75, v82, v72
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v81, -v92, v93, 1.0
	v_mul_f32_e32 v68, v80, v73
	v_fma_f32 v75, -v91, v83, v89
	v_div_scale_f32 v91, null, v42, v42, v13
	v_div_fixup_f32 v72, v72, v42, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v90, v68, v80
	v_div_fmas_f32 v74, v75, v74, v83
	v_fma_f32 v83, -v84, v88, 1.0
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v75, v91
	v_fmac_f32_e32 v68, v82, v73
	v_div_fixup_f32 v74, v74, v42, v86
	v_dual_fmac_f32 v88, v83, v88 :: v_dual_fmac_f32 v93, v81, v93
	v_div_scale_f32 v81, s63, v14, v42, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v90, v68, v80
	v_div_scale_f32 v90, null, v46, v46, v77
	v_mul_f32_e32 v89, v81, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v91, v75, 1.0
	v_div_fmas_f32 v68, v80, v73, v68
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v92, v89, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v68, v68, v42, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v82, v93
	v_div_scale_f32 v82, s60, v12, v42, v12
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	v_rndne_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v73, -v92, v89, v81
	v_mul_f32_e32 v80, v82, v88
	v_div_scale_f32 v81, null, v46, v46, v76
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v41, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v86, -v84, v80, v82
	v_rcp_f32_e32 v85, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v86, v88
	v_rcp_f32_e32 v86, v90
	v_div_fmas_f32 v73, v73, v93, v89
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v93, null, v46, v46, v78
	v_fma_f32 v82, -v84, v80, v82
	v_fma_f32 v87, -v81, v85, 1.0
	v_div_scale_f32 v84, null, v46, v46, v79
	v_div_fixup_f32 v14, v73, v42, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v92, -v90, v86, 1.0
	v_div_fmas_f32 v80, v82, v88, v80
	v_div_scale_f32 v88, s60, v77, v46, v77
	v_dual_fmac_f32 v85, v87, v85 :: v_dual_fmac_f32 v86, v92, v86
	v_rcp_f32_e32 v87, v84
	v_rcp_f32_e32 v95, v93
	v_div_fixup_f32 v12, v80, v42, v12
	v_div_scale_f32 v80, null, v46, v46, v64
	v_dual_mul_f32 v94, v88, v86 :: v_dual_fmac_f32 v75, v83, v75
	v_div_scale_f32 v83, s61, v13, v42, v13
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v15, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v89, v83, v75
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v68, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v73, -v91, v89, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v73, v75
	v_div_scale_f32 v73, s62, v76, v46, v76
	v_fma_f32 v82, -v91, v89, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v83, v73, v85
	v_fma_f32 v91, -v84, v87, 1.0
	v_div_fmas_f32 v75, v82, v75, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v92, -v81, v83, v73
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s63, v79, v46, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v75, v42, v13
	v_fmac_f32_e32 v83, v92, v85
	v_fma_f32 v82, -v90, v94, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v89, v91, v87
	v_fma_f32 v75, -v93, v95, 1.0
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v42, -v81, v83, v73
	v_fmac_f32_e32 v94, v82, v86
	v_fma_f32 v73, -v84, v89, v91
	v_fmac_f32_e32 v95, v75, v95
	v_div_scale_f32 v75, s61, v78, v46, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v90, v94, v88
	v_fmac_f32_e32 v89, v73, v87
	v_rcp_f32_e32 v73, v80
	v_div_fmas_f32 v42, v42, v85, v83
	v_mul_f32_e32 v83, v75, v95
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v82, -v84, v89, v91
	v_div_scale_f32 v84, null, v46, v46, v69
	v_div_fmas_f32 v81, v81, v86, v94
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v42, v42, v46, v76
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v85, -v80, v73, 1.0
	v_div_fmas_f32 v82, v82, v87, v89
	v_rcp_f32_e32 v86, v84
	v_fma_f32 v87, -v93, v83, v75
	v_div_fixup_f32 v76, v81, v46, v77
	v_fmac_f32_e32 v73, v85, v73
	v_div_scale_f32 v85, s60, v64, v46, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v87, v95
	v_div_fixup_f32 v77, v82, v46, v79
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v79, v85, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v84, v86, 1.0
	v_fma_f32 v75, -v93, v83, v75
	v_div_scale_f32 v82, null, v46, v46, v70
	v_fma_f32 v87, -v80, v79, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v81, v86
	v_div_scale_f32 v81, s62, v69, v46, v69
	v_div_fmas_f32 v75, v75, v95, v83
	v_fmac_f32_e32 v79, v87, v73
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v83, v81, v86
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v75, v75, v46, v78
	v_fma_f32 v78, -v80, v79, v85
	v_div_scale_f32 v87, null, v46, v46, v71
	v_fma_f32 v80, -v84, v83, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v75, v75
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v73, v78, v73, v79
	v_div_scale_f32 v78, null, v46, v46, v11
	v_fma_f32 v85, -v82, v88, 1.0
	v_rcp_f32_e32 v89, v87
	v_fmac_f32_e32 v83, v80, v86
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v80, v78
	v_div_scale_f32 v79, s60, v70, v46, v70
	v_fmac_f32_e32 v88, v85, v88
	v_div_scale_f32 v85, null, v46, v46, v60
	v_div_fixup_f32 v64, v73, v46, v64
	v_fma_f32 v81, -v84, v83, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v87, v89, 1.0
	v_rcp_f32_e32 v91, v85
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v78, v80, 1.0
	v_mul_f32_e32 v84, v79, v88
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v89, v73, v89
	v_div_scale_f32 v73, s61, v71, v46, v71
	v_fmac_f32_e32 v80, v90, v80
	v_div_scale_f32 v90, null, v46, v46, v61
	v_div_fmas_f32 v81, v81, v86, v83
	v_fma_f32 v83, -v82, v84, v79
	v_mul_f32_e32 v86, v73, v89
	v_div_scale_f32 v92, s62, v11, v46, v11
	v_fma_f32 v93, -v85, v91, 1.0
	v_rcp_f32_e32 v94, v90
	v_fmac_f32_e32 v84, v83, v88
	v_fma_f32 v83, -v87, v86, v73
	v_mul_f32_e32 v95, v92, v80
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s63, v60, v46, v60
	v_div_fixup_f32 v69, v81, v46, v69
	v_fma_f32 v79, -v82, v84, v79
	v_fmac_f32_e32 v86, v83, v89
	v_fma_f32 v81, -v78, v95, v92
	v_mul_f32_e32 v82, v93, v91
	v_fma_f32 v83, -v90, v94, 1.0
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v73, -v87, v86, v73
	v_fmac_f32_e32 v95, v81, v80
	v_fma_f32 v81, -v85, v82, v93
	v_fmac_f32_e32 v94, v83, v94
	v_div_scale_f32 v83, s60, v61, v46, v61
	v_div_fmas_f32 v79, v79, v88, v84
	v_fma_f32 v78, -v78, v95, v92
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v82, v81, v91 :: v_dual_mul_f32 v81, v83, v94
	v_div_scale_f32 v84, null, v46, v46, v63
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v70, v79, v46, v70
	v_div_fmas_f32 v73, v73, v89, v86
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v86, v84
	v_div_fmas_f32 v78, v78, v80, v95
	v_fma_f32 v80, -v85, v82, v93
	v_fma_f32 v85, -v90, v81, v83
	v_div_fixup_f32 v71, v73, v46, v71
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v11, v78, v46, v11
	v_div_fmas_f32 v80, v80, v91, v82
	v_fmac_f32_e32 v81, v85, v94
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v79, -v84, v86, 1.0
	v_div_scale_f32 v78, null, v46, v46, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v90, v81, v83
	v_div_fixup_f32 v60, v80, v46, v60
	v_fmac_f32_e32 v86, v79, v86
	v_div_scale_f32 v79, null, v46, v46, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v73, v73, v94, v81
	v_div_scale_f32 v82, vcc_lo, v63, v46, v63
	v_rcp_f32_e32 v80, v78
	v_rcp_f32_e32 v83, v79
	v_div_scale_f32 v81, null, v46, v46, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v87, v82, v86
	v_div_scale_f32 v88, null, v46, v46, v10
	v_div_fixup_f32 v61, v73, v46, v61
	v_rcp_f32_e32 v85, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fma_f32 v91, -v84, v87, v82
	v_fma_f32 v73, -v78, v80, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v89, -v79, v83, 1.0
	v_rcp_f32_e32 v90, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v87, v91, v86 :: v_dual_fmac_f32 v80, v73, v80
	v_div_scale_f32 v73, s60, v62, v46, v62
	v_fmac_f32_e32 v83, v89, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v84, v87, v82
	v_div_scale_f32 v89, s61, v8, v46, v8
	v_fma_f32 v92, -v81, v85, 1.0
	v_mul_f32_e32 v93, v73, v80
	v_div_fmas_f32 v82, v82, v86, v87
	s_mov_b32 vcc_lo, s60
	s_mov_b32 s60, 0xc1000000
	v_fma_f32 v94, -v88, v90, 1.0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v18, v18, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v92, v85
	v_div_scale_f32 v92, s62, v9, v46, v9
	v_fma_f32 v91, -v78, v93, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v95, v89, v83 :: v_dual_fmac_f32 v90, v94, v90
	v_div_scale_f32 v94, s63, v10, v46, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v16, v16, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v79, v95, v89
	v_dual_mul_f32 v96, v92, v85 :: v_dual_fmac_f32 v93, v91, v80
	v_div_fixup_f32 v63, v82, v46, v63
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s60, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v84, v83
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v84, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v97, v94, v90
	v_fma_f32 v91, -v81, v96, v92
	v_fma_f32 v73, -v78, v93, v73
	v_fma_f32 v79, -v79, v95, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v88, v97, v94
	v_fmac_f32_e32 v96, v91, v85
	v_div_fmas_f32 v73, v73, v80, v93
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v97, v78, v90
	v_fma_f32 v78, -v81, v96, v92
	v_div_fmas_f32 v79, v79, v83, v95
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v62, v73, v46, v62
	v_fma_f32 v80, -v88, v97, v94
	v_div_fmas_f32 v78, v78, v85, v96
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v8, v79, v46, v8
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v31, v31, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v90, v97
	v_div_fixup_f32 v9, v78, v46, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v32, v32, s60, 0x40e00000
	v_med3_f32 v33, v33, s60, 0x40e00000
	v_med3_f32 v0, v0, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v10, v80, v46, v10
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v47
	v_rndne_f32_e32 v47, v48
	v_rndne_f32_e32 v48, v49
	v_rndne_f32_e32 v49, v50
	v_rndne_f32_e32 v50, v51
	v_rndne_f32_e32 v51, v52
	v_rndne_f32_e32 v52, v53
	v_rndne_f32_e32 v53, v54
	v_rndne_f32_e32 v54, v55
	v_rndne_f32_e32 v55, v56
	v_rndne_f32_e32 v56, v57
	v_rndne_f32_e32 v57, v58
	v_rndne_f32_e32 v58, v59
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v75, v75, s60, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v79, v35
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s60, 0x40e00000
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_med3_f32 v17, v17, s60, 0x40e00000
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_med3_f32 v12, v12, s60, 0x40e00000
	v_med3_f32 v63, v63, s60, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v95, v75
	v_and_b32_e32 v75, 15, v21
	v_and_b32_e32 v21, 15, v79
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v79, 16, v180
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v65
	v_rndne_f32_e32 v65, v66
	v_rndne_f32_e32 v66, v67
	v_rndne_f32_e32 v67, v72
	v_rndne_f32_e32 v72, v74
	v_rndne_f32_e32 v74, v77
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v8, v8, s60, 0x40e00000
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v77, v39
	v_cvt_i32_f32_e32 v83, v17
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v92, v12
	v_cvt_i32_f32_e32 v102, v63
	v_and_b32_e32 v12, 15, v31
	v_and_b32_e32 v39, 15, v32
	v_and_b32_e32 v63, 15, v33
	v_and_b32_e32 v17, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 13, v180
	v_and_b32_e32 v31, 0x2f0, v30
	v_lshlrev_b32_e32 v32, 8, v79
	v_and_b32_e32 v33, 64, v180
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v73, v76
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v10, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s60, 0x40e00000
	v_med3_f32 v53, v53, s60, 0x40e00000
	v_med3_f32 v42, v42, s60, 0x40e00000
	v_cvt_i32_f32_e32 v104, v8
	v_and_b32_e32 v8, 15, v37
	v_and_b32_e32 v37, 15, v58
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v58, 3, v217
	v_and_or_b32 v0, 0xe000, v0, v32
	v_xor_b32_e32 v31, v31, v33
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v62, v62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v27, v27, s60, 0x40e00000
	v_med3_f32 v28, v28, s60, 0x40e00000
	v_med3_f32 v40, v40, s60, 0x40e00000
	v_med3_f32 v29, v29, s60, 0x40e00000
	v_med3_f32 v36, v36, s60, 0x40e00000
	v_med3_f32 v57, v57, s60, 0x40e00000
	v_med3_f32 v64, v64, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v23, v23, s60, 0x40e00000
	v_med3_f32 v44, v44, s60, 0x40e00000
	v_med3_f32 v48, v48, s60, 0x40e00000
	v_med3_f32 v19, v19, s60, 0x40e00000
	v_med3_f32 v49, v49, s60, 0x40e00000
	v_med3_f32 v50, v50, s60, 0x40e00000
	v_med3_f32 v54, v54, s60, 0x40e00000
	v_med3_f32 v15, v15, s60, 0x40e00000
	v_med3_f32 v73, v73, s60, 0x40e00000
	v_med3_f32 v11, v11, s60, 0x40e00000
	v_med3_f32 v9, v9, s60, 0x40e00000
	v_med3_f32 v10, v10, s60, 0x40e00000
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v42, v42
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v0, v0, v58, v31
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s60, 0x40e00000
	v_med3_f32 v20, v20, s60, 0x40e00000
	v_med3_f32 v43, v43, s60, 0x40e00000
	v_med3_f32 v45, v45, s60, 0x40e00000
	v_med3_f32 v52, v52, s60, 0x40e00000
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_med3_f32 v66, v66, s60, 0x40e00000
	v_med3_f32 v68, v68, s60, 0x40e00000
	v_med3_f32 v69, v69, s60, 0x40e00000
	v_med3_f32 v62, v62, s60, 0x40e00000
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v96, v64
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v61, v61
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v47, v47, s60, 0x40e00000
	v_med3_f32 v56, v56, s60, 0x40e00000
	v_med3_f32 v14, v14, s60, 0x40e00000
	v_med3_f32 v13, v13, s60, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v94, v73
	v_cvt_i32_f32_e32 v99, v11
	v_cvt_i32_f32_e32 v105, v9
	v_cvt_i32_f32_e32 v106, v10
	v_and_b32_e32 v9, 15, v41
	v_and_b32_e32 v10, 15, v53
	v_and_b32_e32 v11, 15, v42
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v31, 0, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v78, v20
	v_cvt_i32_f32_e32 v80, v43
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v82, v52
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v90, v68
	v_cvt_i32_f32_e32 v97, v69
	v_cvt_i32_f32_e32 v103, v62
	v_and_b32_e32 v16, 15, v27
	v_and_b32_e32 v20, 15, v28
	v_and_b32_e32 v27, 15, v40
	v_and_b32_e32 v43, 15, v29
	v_and_b32_e32 v28, 15, v36
	v_and_b32_e32 v29, 15, v57
	v_and_b32_e32 v30, 15, v96
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v46, v46, s60, 0x40e00000
	v_med3_f32 v51, v51, s60, 0x40e00000
	v_med3_f32 v55, v55, s60, 0x40e00000
	v_med3_f32 v67, v67, s60, 0x40e00000
	v_med3_f32 v72, v72, s60, 0x40e00000
	v_med3_f32 v74, v74, s60, 0x40e00000
	v_med3_f32 v60, v60, s60, 0x40e00000
	v_med3_f32 v61, v61, s60, 0x40e00000
	v_cvt_i32_f32_e32 v76, v47
	v_cvt_i32_f32_e32 v86, v56
	v_cvt_i32_f32_e32 v91, v14
	v_cvt_i32_f32_e32 v93, v13
	v_and_b32_e32 v47, 15, v23
	v_and_b32_e32 v13, 15, v44
	v_and_b32_e32 v44, 15, v48
	v_and_b32_e32 v48, 15, v19
	v_and_b32_e32 v52, 15, v49
	v_and_b32_e32 v56, 15, v50
	v_and_b32_e32 v14, 15, v54
	v_and_b32_e32 v49, 15, v15
	v_and_b32_e32 v15, 15, v94
	v_and_b32_e32 v50, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v31, v[8:11]
	ds_store_b128 v31, v[27:30] offset:256
	v_xad_u32 v8, v0, 16, 0
	v_lshlrev_b32_e32 v9, 6, v180
	v_lshlrev_b32_e32 v10, 5, v25
	v_cndmask_b32_e64 v11, 0x2010, 0, s2
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v22, v22, s60, 0x40e00000
	v_med3_f32 v59, v59, s60, 0x40e00000
	v_med3_f32 v70, v70, s60, 0x40e00000
	v_and_b32_e32 v35, 15, v38
	v_and_b32_e32 v36, 15, v80
	v_and_b32_e32 v40, 15, v45
	v_and_b32_e32 v64, 15, v82
	v_and_b32_e32 v45, 15, v65
	v_and_b32_e32 v53, 15, v66
	v_and_b32_e32 v65, 15, v90
	v_and_b32_e32 v38, 15, v97
	v_and_b32_e32 v66, 15, v103
	v_med3_f32 v71, v71, s60, 0x40e00000
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v81, v51
	v_cvt_i32_f32_e32 v85, v55
	v_cvt_i32_f32_e32 v88, v67
	v_cvt_i32_f32_e32 v89, v72
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v100, v60
	v_cvt_i32_f32_e32 v101, v61
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
	v_cvt_i32_f32_e32 v87, v59
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v98, v71
	v_and_b32_e32 v51, 15, v46
	v_and_b32_e32 v55, 15, v76
	v_and_b32_e32 v59, 15, v77
	v_and_b32_e32 v60, 15, v81
	v_and_b32_e32 v68, 15, v18
	v_and_b32_e32 v18, 15, v85
	v_and_b32_e32 v57, 15, v88
	v_and_b32_e32 v61, 15, v89
	v_and_b32_e32 v19, 15, v74
	v_and_b32_e32 v54, 15, v100
	v_and_b32_e32 v58, 15, v101
	v_and_b32_e32 v62, 15, v102
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v12, v0, 32, 0
	v_xad_u32 v0, v0, 48, 0
	v_or3_b32 v25, v10, v9, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v67, 15, v22
	v_and_b32_e32 v71, 15, v78
	v_and_b32_e32 v72, 15, v83
	v_and_b32_e32 v76, 15, v84
	v_and_b32_e32 v41, 15, v87
	v_and_b32_e32 v69, 15, v91
	v_and_b32_e32 v73, 15, v92
	v_and_b32_e32 v77, 15, v93
	v_and_b32_e32 v42, 15, v70
	v_and_b32_e32 v70, 15, v104
	v_and_b32_e32 v74, 15, v105
	v_and_b32_e32 v78, 15, v106
	v_and_b32_e32 v22, 15, v86
	v_and_b32_e32 v23, 15, v95
	v_and_b32_e32 v46, 15, v98
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
	v_add_co_u32 v75, s2, s76, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v76, null, s77, 0, s2
	v_add_co_u32 v77, s2, s76, v184
	v_add_co_ci_u32_e64 v78, null, s77, 0, s2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[70:71], v[5:6]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v5, s76, v184
	v_lshl_or_b32 v0, s79, 7, v214
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
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s2, s2, 24
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
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s78, s78, s2
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
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
	v_lshrrev_b32_e32 v6, 4, v180
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
	v_cndmask_b32_e32 v0, 0x80000000, v5, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshlrev_b32_e32 v5, 3, v213
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
	v_and_b32_e32 v4, 0xc0, v180
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
.Ltmp87:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 460
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 80
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 460
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 34460
; TotalNumSgprs: 82
; NumVgprs: 256
; ScratchSize: 460
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
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
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
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
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
    .private_segment_fixed_size: 460
    .sgpr_count:     82
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 114
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
