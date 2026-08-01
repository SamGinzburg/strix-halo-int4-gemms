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
	s_load_b32 s78, s[0:1], 0x54
	s_load_b64 s[34:35], s[0:1], 0x5c
	s_load_b64 s[68:69], s[0:1], 0x48
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_load_b256 s[60:67], s[0:1], 0x28
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v255, 7, v0
	v_and_b32_e32 v113, 0x80, v0
	v_and_b32_e32 v111, 15, v0
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_and_b32_e32 v112, 0x7f, v0
	s_mov_b32 s33, 0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v166, 2, v255
	v_or_b32_e32 v167, 4, v255
	v_or_b32_e32 v168, 6, v255
	v_or_b32_e32 v169, 8, v255
	v_or_b32_e32 v170, 10, v255
	v_or_b32_e32 v171, 12, v255
	v_or_b32_e32 v172, 14, v255
	v_or_b32_e32 v174, 16, v255
	v_or_b32_e32 v175, 18, v255
	v_or_b32_e32 v176, 20, v255
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s78, 0xff
.Ltmp2:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v177, 22, v255
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
.Ltmp4:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v178, 24, v255
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_lshr_b32 s4, s4, 24
.Ltmp6:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v179, 26, v255
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_add_i32 s3, s3, s4
.Ltmp8:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v180, 28, v255
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s3, s3, 8
.Ltmp10:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v181, 30, v255
	.loc	1 1033 25                       ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
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
	s_sub_i32 s79, s3, s7
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
	v_cmp_eq_u32_e64 s2, 0, v113
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lt_i32 s34, 1
	s_cbranch_scc1 .LBB0_6
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_load_b64 s[6:7], s[0:1], 0x20
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v25, 5, v0
	s_clause 0x1
	s_load_b32 s38, s[0:1], 0x58
	s_load_b256 s[24:31], s[0:1], 0x0
	v_dual_mov_b32 v233, 0 :: v_dual_and_b32 v26, 0xe0, v0
	v_dual_mov_b32 v230, 0 :: v_dual_lshlrev_b32 v235, 1, v0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s0, s76, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s77, 0, s0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v208, 0
	v_add_co_u32 v3, vcc_lo, v1, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 16
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 24
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_add_u32 s0, s6, s4
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	v_add_co_u32 v9, vcc_lo, v1, 32
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_addc_u32 s1, s7, s5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v10, null, 0, v2, vcc_lo
	v_add_co_u32 v11, vcc_lo, v1, 40
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[36:37], s[0:1], 0x0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v15, s0, s76, v111
	v_add_co_ci_u32_e64 v12, null, 0, v2, vcc_lo
	v_add_co_u32 v13, vcc_lo, v1, 48
	v_add_co_ci_u32_e64 v16, null, s77, 0, s0
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
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[70:71], v[1:2]
	v_dual_mov_b32 v232, 0 :: v_dual_add_nc_u32 v1, s76, v111
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[64:65], v[3:4]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[70:71], v[3:4]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	s_waitcnt lgkmcnt(0)
	s_lshl_b32 s37, s79, 8
	v_dual_mov_b32 v231, 0 :: v_dual_add_nc_u32 v2, 16, v1
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v3, 32, v1
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v4, 48, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v1, v1, s34
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[64:65], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[70:71], v[9:10]
	v_or_b32_e32 v9, s37, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[64:65], v[5:6]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[70:71], v[5:6]
	v_dual_mov_b32 v226, 0 :: v_dual_lshlrev_b32 v5, 5, v0
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:528
	scratch_store_b32 off, v9, off offset:544
	scratch_store_b32 off, v167, off offset:12
	v_mul_lo_u32 v1, v2, s34
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[64:65], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[70:71], v[7:8]
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v8, s76, v25
	v_dual_mov_b32 v229, 0 :: v_dual_and_b32 v2, 24, v235
	v_dual_mov_b32 v224, 0 :: v_dual_and_b32 v5, 32, v5
	scratch_store_b32 off, v1, off offset:532 ; 4-byte Folded Spill
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v1, v3, s34
	v_lshrrev_b32_e32 v3, 1, v26
	v_mov_b32_e32 v227, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[64:65], v[11:12]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[70:71], v[11:12]
	v_dual_mov_b32 v225, 0 :: v_dual_add_nc_u32 v10, 8, v8
	v_add3_u32 v234, 0, v111, v3
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	scratch_store_b32 off, v1, off offset:536 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v4, s34
	v_and_b32_e32 v4, 0xf0, v0
	v_dual_mov_b32 v222, 0 :: v_dual_add_nc_u32 v11, 16, v8
	v_lshl_or_b32 v237, v111, 5, v2
	v_dual_mov_b32 v216, 0 :: v_dual_and_b32 v9, 28, v235
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v88, 0 :: v_dual_lshlrev_b32 v3, 2, v4
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v1, off offset:540 ; 4-byte Folded Spill
	v_cndmask_b32_e64 v1, 0x88, 0, s2
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s13
	v_add3_u32 v3, 0, v3, v5
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s13, s78, 1
	v_mul_lo_u32 v238, v8, s38
	v_xor_b32_e32 v236, v1, v112
	v_mul_lo_u32 v240, v10, s38
	v_mul_lo_u32 v241, v11, s38
	v_dual_mov_b32 v220, 0 :: v_dual_add_nc_u32 v5, 24, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v1, 0x110, v236
	v_dual_mov_b32 v215, 0 :: v_dual_add_nc_u32 v10, 32, v8
	v_dual_mov_b32 v218, 0 :: v_dual_add_nc_u32 v11, 40, v8
	v_dual_mov_b32 v223, 0 :: v_dual_add_nc_u32 v12, 48, v8
	v_dual_mov_b32 v221, 0 :: v_dual_add_nc_u32 v8, 56, v8
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s3, s3, s14
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s14, s13, s38
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v173, v112, 1, s37
	v_xor_b32_e32 v2, 8, v237
	v_xor_b32_e32 v6, 16, v237
	v_xor_b32_e32 v7, 24, v237
	v_dual_mov_b32 v217, 0 :: v_dual_lshlrev_b32 v4, 1, v4
	v_dual_mov_b32 v219, 0 :: v_dual_add_nc_u32 v244, 0, v1
	v_dual_mov_b32 v212, 0 :: v_dual_add_nc_u32 v1, v3, v9
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s14, s14, s36
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[64:65], v[13:14]
	v_cmp_le_i64_e64 s8, s[64:65], v[17:18]
	v_cmp_le_i64_e64 s9, s[64:65], v[15:16]
	v_cmp_le_i64_e64 s10, s[64:65], v[19:20]
	v_cmp_le_i64_e64 s11, s[64:65], v[21:22]
	v_cmp_le_i64_e64 s12, s[64:65], v[23:24]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[70:71], v[13:14]
	v_cmp_gt_i64_e64 s19, s[70:71], v[17:18]
	v_cmp_gt_i64_e64 s20, s[70:71], v[15:16]
	v_cmp_gt_i64_e64 s21, s[70:71], v[19:20]
	v_cmp_gt_i64_e64 s22, s[70:71], v[21:22]
	v_cmp_gt_i64_e64 s23, s[70:71], v[23:24]
	v_mul_lo_u32 v242, v5, s38
	v_mul_lo_u32 v228, v10, s38
	v_mul_lo_u32 v245, v11, s38
	v_mul_lo_u32 v246, v12, s38
	v_mul_lo_u32 v247, v8, s38
	s_add_u32 s35, s14, s78
	v_dual_mov_b32 v213, 0 :: v_dual_add_nc_u32 v248, 0, v2
	v_add3_u32 v243, s35, v173, 1
	v_dual_mov_b32 v214, 0 :: v_dual_add_nc_u32 v249, 0, v6
	v_dual_mov_b32 v211, 0 :: v_dual_add_nc_u32 v254, 0, v7
	scratch_store_b32 off, v1, off offset:548 ; 4-byte Folded Spill
	v_dual_mov_b32 v210, 0 :: v_dual_add_nc_u32 v1, 0, v4
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_mov_b32_e32 v92, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_and_b32 s4, s4, s15
	s_and_b32 s5, s5, s16
	s_and_b32 s6, s6, s17
	s_and_b32 s7, s7, s18
	s_and_b32 s8, s8, s19
	s_and_b32 s9, s9, s20
	s_and_b32 s10, s10, s21
	s_and_b32 s11, s11, s22
	s_and_b32 s12, s12, s23
	.loc	1 1214 25 is_stmt 1             ; ragged.py:1214:25
	s_mul_i32 s15, s34, s36
	s_and_b32 s17, s25, 0xffff
	s_mov_b32 s16, s24
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s21, s27, 0xffff
	s_mov_b32 s20, s26
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s25, s31, 0xffff
	s_mov_b32 s24, s30
	scratch_store_b32 off, v1, off offset:552 ; 4-byte Folded Spill
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v233, off offset:524
	scratch_store_b32 off, v232, off offset:520
	scratch_store_b32 off, v86, off offset:516
	scratch_store_b32 off, v231, off offset:512
	scratch_store_b32 off, v87, off offset:508
	scratch_store_b32 off, v230, off offset:504
	scratch_store_b32 off, v229, off offset:500
	scratch_store_b32 off, v227, off offset:496
	scratch_store_b32 off, v226, off offset:492
	scratch_store_b32 off, v88, off offset:488
	scratch_store_b32 off, v89, off offset:484
	scratch_store_b32 off, v225, off offset:480
	scratch_store_b32 off, v224, off offset:476
	scratch_store_b32 off, v223, off offset:472
	scratch_store_b32 off, v222, off offset:468
	scratch_store_b32 off, v221, off offset:464
	scratch_store_b32 off, v220, off offset:460
	scratch_store_b32 off, v219, off offset:456
	scratch_store_b32 off, v218, off offset:452
	scratch_store_b32 off, v217, off offset:448
	scratch_store_b32 off, v216, off offset:444
	scratch_store_b32 off, v215, off offset:440
	scratch_store_b32 off, v214, off offset:436
	scratch_store_b32 off, v213, off offset:432
	scratch_store_b32 off, v212, off offset:428
	scratch_store_b32 off, v211, off offset:424
	scratch_store_b32 off, v210, off offset:420
	scratch_store_b32 off, v209, off offset:416
	scratch_store_b32 off, v208, off offset:412
	scratch_store_b32 off, v207, off offset:408
	scratch_store_b32 off, v206, off offset:404
	scratch_store_b32 off, v205, off offset:400
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v204, off offset:396
	scratch_store_b32 off, v203, off offset:392
	scratch_store_b32 off, v202, off offset:388
	scratch_store_b32 off, v201, off offset:384
	scratch_store_b32 off, v200, off offset:380
	scratch_store_b32 off, v199, off offset:376
	scratch_store_b32 off, v198, off offset:372
	scratch_store_b32 off, v197, off offset:368
	scratch_store_b32 off, v196, off offset:364
	scratch_store_b32 off, v195, off offset:360
	scratch_store_b32 off, v194, off offset:356
	scratch_store_b32 off, v193, off offset:352
	scratch_store_b32 off, v192, off offset:348
	scratch_store_b32 off, v191, off offset:344
	scratch_store_b32 off, v190, off offset:340
	scratch_store_b32 off, v189, off offset:336
	scratch_store_b32 off, v188, off offset:332
	scratch_store_b32 off, v187, off offset:328
	scratch_store_b32 off, v186, off offset:324
	scratch_store_b32 off, v185, off offset:320
	scratch_store_b32 off, v184, off offset:316
	scratch_store_b32 off, v183, off offset:312
	scratch_store_b32 off, v164, off offset:308
	scratch_store_b32 off, v163, off offset:304
	scratch_store_b32 off, v162, off offset:300
	scratch_store_b32 off, v161, off offset:296
	scratch_store_b32 off, v160, off offset:292
	scratch_store_b32 off, v159, off offset:288
	scratch_store_b32 off, v182, off offset:284
	scratch_store_b32 off, v158, off offset:280
	scratch_store_b32 off, v157, off offset:276
	scratch_store_b32 off, v239, off offset:272
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v156, off offset:268
	scratch_store_b32 off, v151, off offset:264
	scratch_store_b32 off, v150, off offset:260
	scratch_store_b32 off, v149, off offset:256
	scratch_store_b32 off, v145, off offset:252
	scratch_store_b32 off, v146, off offset:248
	scratch_store_b32 off, v147, off offset:244
	scratch_store_b32 off, v148, off offset:240
	scratch_store_b32 off, v144, off offset:236
	scratch_store_b32 off, v143, off offset:232
	scratch_store_b32 off, v142, off offset:228
	scratch_store_b32 off, v141, off offset:224
	scratch_store_b32 off, v140, off offset:220
	scratch_store_b32 off, v139, off offset:216
	scratch_store_b32 off, v137, off offset:212
	scratch_store_b32 off, v138, off offset:208
	scratch_store_b32 off, v136, off offset:204
	scratch_store_b32 off, v135, off offset:200
	scratch_store_b32 off, v134, off offset:196
	scratch_store_b32 off, v133, off offset:192
	scratch_store_b32 off, v155, off offset:188
	scratch_store_b32 off, v154, off offset:184
	scratch_store_b32 off, v153, off offset:180
	scratch_store_b32 off, v152, off offset:176
	scratch_store_b32 off, v132, off offset:172
	scratch_store_b32 off, v131, off offset:168
	scratch_store_b32 off, v130, off offset:164
	scratch_store_b32 off, v129, off offset:160
	scratch_store_b32 off, v128, off offset:156
	scratch_store_b32 off, v127, off offset:152
	scratch_store_b32 off, v126, off offset:148
	scratch_store_b32 off, v125, off offset:144
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v124, off offset:140
	scratch_store_b32 off, v123, off offset:136
	scratch_store_b32 off, v122, off offset:132
	scratch_store_b32 off, v107, off offset:128
	scratch_store_b32 off, v106, off offset:124
	scratch_store_b32 off, v121, off offset:120
	scratch_store_b32 off, v120, off offset:116
	scratch_store_b32 off, v115, off offset:112
	scratch_store_b32 off, v105, off offset:108
	scratch_store_b32 off, v104, off offset:104
	scratch_store_b32 off, v103, off offset:100
	scratch_store_b32 off, v99, off offset:96
	scratch_store_b32 off, v119, off offset:92
	scratch_store_b32 off, v118, off offset:88
	scratch_store_b32 off, v117, off offset:84
	scratch_store_b32 off, v116, off offset:80
	scratch_store_b32 off, v98, off offset:76
	scratch_store_b32 off, v90, off offset:72
	scratch_store_b32 off, v97, off offset:68
	scratch_store_b32 off, v96, off offset:64
	scratch_store_b32 off, v114, off offset:60
	scratch_store_b32 off, v110, off offset:56
	scratch_store_b32 off, v109, off offset:52
	scratch_store_b32 off, v95, off offset:48
	scratch_store_b32 off, v94, off offset:44
	scratch_store_b32 off, v93, off offset:40
	scratch_store_b32 off, v91, off offset:36
	scratch_store_b32 off, v108, off offset:32
	scratch_store_b32 off, v102, off offset:28
	scratch_store_b32 off, v92, off offset:24
	scratch_store_b32 off, v101, off offset:20
	scratch_store_b32 off, v100, off offset:16
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v128, 0
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s26, s33, 6
	s_mov_b32 s22, 0
	v_mov_b32_e32 v9, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v4, v128
	v_mov_b32_e32 v2, v128
	v_mov_b32_e32 v3, v128
	v_mov_b32_e32 v5, v128
	v_dual_mov_b32 v6, v128 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v7, v128
	v_dual_mov_b32 v8, v128 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v10, v128 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v11, v128
	v_dual_mov_b32 v12, v128 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v13, v128
	v_dual_mov_b32 v14, v128 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v15, v128
	v_dual_mov_b32 v16, v128 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v18, v128 :: v_dual_mov_b32 v73, 0
	v_mov_b32_e32 v19, v128
	v_dual_mov_b32 v20, v128 :: v_dual_mov_b32 v81, 0
	v_mov_b32_e32 v21, v128
	v_dual_mov_b32 v22, v128 :: v_dual_mov_b32 v89, 0
	v_mov_b32_e32 v23, v128
	v_dual_mov_b32 v24, v128 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v26, v128 :: v_dual_mov_b32 v105, 0
	v_mov_b32_e32 v27, v128
	v_dual_mov_b32 v28, v128 :: v_dual_mov_b32 v113, 0
	v_mov_b32_e32 v29, v128
	v_dual_mov_b32 v30, v128 :: v_dual_mov_b32 v121, 0
	v_mov_b32_e32 v31, v128
	v_mov_b32_e32 v32, v128
	v_mov_b32_e32 v34, v128
	v_mov_b32_e32 v35, v128
	v_mov_b32_e32 v36, v128
	v_mov_b32_e32 v37, v128
	v_mov_b32_e32 v38, v128
	v_mov_b32_e32 v39, v128
	v_mov_b32_e32 v40, v128
	v_mov_b32_e32 v42, v128
	v_mov_b32_e32 v43, v128
	v_mov_b32_e32 v44, v128
	v_mov_b32_e32 v45, v128
	v_mov_b32_e32 v46, v128
	v_mov_b32_e32 v47, v128
	v_mov_b32_e32 v48, v128
	v_mov_b32_e32 v50, v128
	v_mov_b32_e32 v51, v128
	v_mov_b32_e32 v52, v128
	v_mov_b32_e32 v53, v128
	v_mov_b32_e32 v54, v128
	v_mov_b32_e32 v55, v128
	v_mov_b32_e32 v56, v128
	v_mov_b32_e32 v58, v128
	v_mov_b32_e32 v59, v128
	v_mov_b32_e32 v60, v128
	v_mov_b32_e32 v61, v128
	v_mov_b32_e32 v62, v128
	v_mov_b32_e32 v63, v128
	v_mov_b32_e32 v64, v128
	v_mov_b32_e32 v66, v128
	v_mov_b32_e32 v67, v128
	v_mov_b32_e32 v68, v128
	v_mov_b32_e32 v69, v128
	v_mov_b32_e32 v70, v128
	v_mov_b32_e32 v71, v128
	v_mov_b32_e32 v72, v128
	v_mov_b32_e32 v74, v128
	v_mov_b32_e32 v75, v128
	v_mov_b32_e32 v76, v128
	v_mov_b32_e32 v77, v128
	v_mov_b32_e32 v78, v128
	v_mov_b32_e32 v79, v128
	v_mov_b32_e32 v80, v128
	v_mov_b32_e32 v82, v128
	v_mov_b32_e32 v83, v128
	v_mov_b32_e32 v84, v128
	v_mov_b32_e32 v85, v128
	v_mov_b32_e32 v86, v128
	v_mov_b32_e32 v87, v128
	v_mov_b32_e32 v88, v128
	v_mov_b32_e32 v90, v128
	v_mov_b32_e32 v91, v128
	v_mov_b32_e32 v92, v128
	v_mov_b32_e32 v93, v128
	v_mov_b32_e32 v94, v128
	v_mov_b32_e32 v95, v128
	v_mov_b32_e32 v96, v128
	v_mov_b32_e32 v98, v128
	v_mov_b32_e32 v99, v128
	v_mov_b32_e32 v100, v128
	v_mov_b32_e32 v101, v128
	v_mov_b32_e32 v102, v128
	v_mov_b32_e32 v103, v128
	v_mov_b32_e32 v104, v128
	v_mov_b32_e32 v106, v128
	v_mov_b32_e32 v107, v128
	v_mov_b32_e32 v108, v128
	v_mov_b32_e32 v109, v128
	v_mov_b32_e32 v110, v128
	v_mov_b32_e32 v111, v128
	v_mov_b32_e32 v112, v128
	v_mov_b32_e32 v114, v128
	v_mov_b32_e32 v115, v128
	v_mov_b32_e32 v116, v128
	v_mov_b32_e32 v117, v128
	v_mov_b32_e32 v118, v128
	v_mov_b32_e32 v119, v128
	v_mov_b32_e32 v120, v128
	v_mov_b32_e32 v122, v128
	v_mov_b32_e32 v123, v128
	v_mov_b32_e32 v124, v128
	v_mov_b32_e32 v125, v128
	v_mov_b32_e32 v126, v128
	v_mov_b32_e32 v127, v128
	s_mov_b32 s27, -1
.LBB0_3:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s30, s22, s26
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_mov_b32 s22, s18
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s30, v255
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_mov_b32 s23, s19
	v_add_nc_u32_e32 v189, 0, v235
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_and_b32 vcc_lo, exec_lo, s27
	s_mov_b32 s27, 0
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v184, v129, s13
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s30, v166
	v_mov_b32_e32 v229, v179
	v_mov_b32_e32 v239, v244
	v_mov_b32_e32 v219, v255
	v_mov_b32_e32 v255, v246
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v188, v129, s13
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s30, v167
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v190, v184, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v187, v129, s13
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s30, v168
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s14, v190
	v_add_nc_u32_e32 v194, v188, v173
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v183, v129, s13
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s30, v169
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v161, v137, s[20:23], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v195, v187, v173
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v187, v243, v187
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v201, v129, s13
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s30, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v182, v129, s13
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s30, v171
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v202, v201, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v167, v129, s13
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s30, v172
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v203, v182, v173
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v182, v243, v182
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v192, v129, s13
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s30, v174
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v204, v167, v173
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v167, v243, v167
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v191, v129, s13
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s30, v175
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v205, v192, v173
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v192, v243, v192
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v186, v129, s13
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s30, v176
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v193, v191, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v185, v129, s13
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s30, v177
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v198, v186, v173
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v186, v243, v186
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v253, v129, s13
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s30, v178
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v199, v185, v173
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v185, v243, v185
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v252, v129, s13
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s30, v179
	v_mov_b32_e32 v179, v174
	v_dual_mov_b32 v174, v168 :: v_dual_add_nc_u32 v137, s14, v194
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v209, v183, v173
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v251, v129, s13
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s30, v180
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v162, v137, s[20:23], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s14, v195
	v_add_nc_u32_e32 v200, v253, v173
	v_add_nc_u32_e32 v197, v252, v173
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v250, v129, s13
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s30, v181
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v210, v137, s[20:23], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s14, v209
	v_add_nc_u32_e32 v206, v251, v173
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v183, v243, v183
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v163, v129, s13
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_and_b32_e32 v129, 31, v0
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v211, v137, s[20:23], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v207, v250, v173
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v195, s35, v195
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s30, v129
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v208, v163, v173
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v163, v243, v163
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_add_nc_u32_e32 v130, v238, v129
	v_add_nc_u32_e32 v131, v240, v129
	v_add_nc_u32_e32 v132, v241, v129
	v_add_nc_u32_e32 v136, v246, v129
	v_dual_mov_b32 v246, v235 :: v_dual_mov_b32 v235, v180
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s14, v202
	v_dual_mov_b32 v180, v175 :: v_dual_add_nc_u32 v133, v242, v129
	v_dual_mov_b32 v175, v169 :: v_dual_add_nc_u32 v134, v228, v129
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v212, v137, s[20:23], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s14, v203
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_add_nc_u32_e32 v135, v245, v129
	v_add_nc_u32_e32 v129, v247, v129
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v130, 0x80000000, v130, s0
	v_cndmask_b32_e64 v131, 0x80000000, v131, s1
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	buffer_load_u16 v214, v137, s[20:23], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s14, v204
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v132, 0x80000000, v132, s3
	v_cndmask_b32_e64 v133, 0x80000000, v133, s4
	v_cndmask_b32_e64 v134, 0x80000000, v134, s5
	v_cndmask_b32_e64 v135, 0x80000000, v135, s6
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v222, v137, s[20:23], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s14, v205
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v136, 0x80000000, v136, s7
	v_cndmask_b32_e64 v129, 0x80000000, v129, s8
	s_clause 0x7
	buffer_load_u8 v130, v130, s[16:19], 0 offen
	buffer_load_u8 v131, v131, s[16:19], 0 offen
	buffer_load_u8 v132, v132, s[16:19], 0 offen
	buffer_load_u8 v133, v133, s[16:19], 0 offen
	buffer_load_u8 v134, v134, s[16:19], 0 offen
	buffer_load_u8 v135, v135, s[16:19], 0 offen
	buffer_load_u8 v136, v136, s[16:19], 0 offen
	buffer_load_u8 v129, v129, s[16:19], 0 offen
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v184, v243, v184
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v223, v137, s[20:23], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s14, v193
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v188, v243, v188
	v_add_nc_u32_e32 v194, s35, v194
	v_add_nc_u32_e32 v202, s35, v202
	v_add_nc_u32_e32 v203, s35, v203
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v224, v137, s[20:23], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s14, v198
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v205, s35, v205
	v_add_nc_u32_e32 v193, s35, v193
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v196, v137, s[20:23], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s14, v199
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v215, v137, s[20:23], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s14, v200
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v216, v137, s[20:23], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s14, v197
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v197, s35, v197
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v217, v137, s[20:23], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s14, v206
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v225, v137, s[20:23], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s14, v207
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v213, v137, s[20:23], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, s14, v208
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v218, v137, s[20:23], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_add_nc_u32_e32 v137, 0, v236
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(16)
	ds_store_b8 v137, v130
	s_waitcnt vmcnt(14)
	ds_store_b8 v137, v132 offset:512
	s_waitcnt vmcnt(12)
	ds_store_b8 v137, v134 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b8 v137, v136 offset:1536
	ds_store_b8 v244, v131
	ds_store_b8 v244, v133 offset:512
	ds_store_b8 v244, v135 offset:1024
	s_waitcnt vmcnt(9)
	ds_store_b8 v244, v129 offset:1536
	v_add_nc_u32_e32 v129, 0, v237
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[157:160], v129 offset1:1
	ds_load_2addr_stride64_b64 v[153:156], v129 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[149:152], v248 offset1:1
	ds_load_2addr_stride64_b64 v[145:148], v248 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[141:144], v249 offset1:1
	ds_load_2addr_stride64_b64 v[137:140], v249 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[133:136], v254 offset1:1
	ds_load_2addr_stride64_b64 v[129:132], v254 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v189, v161
	ds_store_b16 v189, v162 offset:512
	ds_store_b16 v189, v210 offset:1024
	ds_store_b16 v189, v211 offset:1536
	ds_store_b16 v189, v212 offset:2048
	ds_store_b16 v189, v214 offset:2560
	ds_store_b16 v189, v222 offset:3072
	s_waitcnt vmcnt(8)
	ds_store_b16 v189, v223 offset:3584
	s_waitcnt vmcnt(7)
	ds_store_b16 v189, v224 offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b16 v189, v196 offset:4608
	s_waitcnt vmcnt(5)
	ds_store_b16 v189, v215 offset:5120
	s_waitcnt vmcnt(4)
	ds_store_b16 v189, v216 offset:5632
	s_waitcnt vmcnt(3)
	ds_store_b16 v189, v217 offset:6144
	s_waitcnt vmcnt(2)
	ds_store_b16 v189, v225 offset:6656
	s_waitcnt vmcnt(1)
	ds_store_b16 v189, v213 offset:7168
	s_waitcnt vmcnt(0)
	ds_store_b16 v189, v218 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v161, v234 offset:1280
	ds_load_u8 v162, v234 offset:1024
	ds_load_u8 v196, v234 offset:1920
	ds_load_u8 v210, v234 offset:1664
	ds_load_u8 v211, v234 offset:1408
	ds_load_u8 v212, v234 offset:1152
	v_dual_mov_b32 v244, v247 :: v_dual_mov_b32 v247, v237
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v190, s35, v190
	v_dual_mov_b32 v237, v236 :: v_dual_add_nc_u32 v204, s35, v204
	v_dual_mov_b32 v236, v181 :: v_dual_mov_b32 v181, v176
	v_mov_b32_e32 v176, v170
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v221, v234 offset:6272
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	ds_load_u8 v162, v234 offset:1792
	ds_load_u8 v213, v234 offset:1536
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v210, v210, v196, 0xc0c0004
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v196, v243, v201
	v_add_nc_u32_e32 v201, s35, v209
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v213, v162, 0xc0c0004
	ds_load_u8 v213, v234 offset:256
	ds_load_u8 v214, v234
	ds_load_u8 v215, v234 offset:896
	ds_load_u8 v216, v234 offset:640
	ds_load_u8 v217, v234 offset:384
	ds_load_u8 v218, v234 offset:128
	v_lshl_or_b32 v162, v162, 16, v161
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v213, v214, v213, 0xc0c0004
	ds_load_u8 v214, v234 offset:768
	ds_load_u8 v222, v234 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v214, v222, v214, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v161, v214, 16, v213
	v_perm_b32 v214, v212, v211, 0xc0c0004
	v_perm_b32 v211, v218, v217, 0xc0c0004
	v_perm_b32 v212, v216, v215, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[97:104], v[161:162], v[153:154], v[97:104] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v223, v210, 16, v214
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0xf
	buffer_load_u8 v184, v184, s[20:23], 0 offen
	buffer_load_u8 v190, v190, s[20:23], 0 offen
	buffer_load_u8 v188, v188, s[20:23], 0 offen
	buffer_load_u8 v194, v194, s[20:23], 0 offen
	buffer_load_u8 v187, v187, s[20:23], 0 offen
	buffer_load_u8 v195, v195, s[20:23], 0 offen
	buffer_load_u8 v183, v183, s[20:23], 0 offen
	buffer_load_u8 v201, v201, s[20:23], 0 offen
	buffer_load_u8 v196, v196, s[20:23], 0 offen
	buffer_load_u8 v202, v202, s[20:23], 0 offen
	buffer_load_u8 v209, v182, s[20:23], 0 offen
	buffer_load_u8 v203, v203, s[20:23], 0 offen
	buffer_load_u8 v210, v167, s[20:23], 0 offen
	buffer_load_u8 v204, v204, s[20:23], 0 offen
	buffer_load_u8 v192, v192, s[20:23], 0 offen
	buffer_load_u8 v205, v205, s[20:23], 0 offen
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v222, v212, 16, v211
	v_wmma_i32_16x16x16_iu4 v[113:120], v[161:162], v[155:156], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[161:162], v[157:158], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[161:162], v[159:160], v[81:88] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[105:112], v[222:223], v[153:154], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[222:223], v[155:156], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[222:223], v[157:158], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[222:223], v[159:160], v[89:96] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(15)
	v_lshlrev_b16 v167.l, 8, v184.l
	s_waitcnt vmcnt(13)
	v_lshlrev_b16 v167.h, 8, v188.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v188, v243, v253
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(11)
	v_lshlrev_b16 v182.l, 8, v187.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v187, v243, v191
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(9)
	v_lshlrev_b16 v182.h, 8, v183.l
	v_or_b16 v167.h, v194.l, v167.h
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v194, s35, v198
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v167.l, v190.l, v167.l
	v_or_b16 v182.l, v195.l, v182.l
	s_waitcnt vmcnt(7)
	v_lshlrev_b16 v183.l, 8, v196.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v190, v243, v252
	v_add_nc_u32_e32 v191, v243, v251
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v184.h, 8, v192.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v192, v243, v250
	v_add_nc_u32_e32 v195, s35, v199
	v_add_nc_u32_e32 v196, s35, v200
	v_add_nc_u32_e32 v198, s35, v206
	v_add_nc_u32_e32 v199, s35, v207
	v_add_nc_u32_e32 v200, s35, v208
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v182.h, v201.l, v182.h
	s_clause 0xf
	buffer_load_u8 v187, v187, s[20:23], 0 offen
	buffer_load_u8 v193, v193, s[20:23], 0 offen
	buffer_load_u8 v186, v186, s[20:23], 0 offen
	buffer_load_u8 v194, v194, s[20:23], 0 offen
	buffer_load_u8 v185, v185, s[20:23], 0 offen
	buffer_load_u8 v195, v195, s[20:23], 0 offen
	buffer_load_u8 v188, v188, s[20:23], 0 offen
	buffer_load_u8 v196, v196, s[20:23], 0 offen
	buffer_load_u8 v190, v190, s[20:23], 0 offen
	buffer_load_u8 v197, v197, s[20:23], 0 offen
	buffer_load_u8 v191, v191, s[20:23], 0 offen
	buffer_load_u8 v198, v198, s[20:23], 0 offen
	buffer_load_u8 v192, v192, s[20:23], 0 offen
	buffer_load_u8 v199, v199, s[20:23], 0 offen
	buffer_load_u8 v201, v163, s[20:23], 0 offen
	buffer_load_u8 v200, v200, s[20:23], 0 offen
	v_lshlrev_b16 v183.h, 8, v209.l
	v_lshlrev_b16 v184.l, 8, v210.l
	v_or_b16 v183.l, v202.l, v183.l
	s_waitcnt vmcnt(16)
	v_or_b16 v184.h, v205.l, v184.h
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v230, v234 offset:7936
	ds_load_u8 v227, v234 offset:7680
	ds_load_u8 v250, v234 offset:7296
	ds_load_u8 v226, v234 offset:6400
	ds_load_u8 v232, v234 offset:6144
	ds_load_u8 v251, v234 offset:7040
	ds_load_u8 v233, v234 offset:6784
	ds_load_u8 v231, v234 offset:6528
	ds_load_u8 v220, v234 offset:6912
	ds_load_u8 v165, v234 offset:6656
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v183.h, v203.l, v183.h
	v_or_b16 v184.l, v204.l, v184.l
	s_mov_b32 s22, 32
	s_waitcnt vmcnt(15)
	v_lshlrev_b16 v163.l, 8, v187.l
	s_waitcnt vmcnt(13)
	v_lshlrev_b16 v163.h, 8, v186.l
	s_waitcnt vmcnt(11)
	v_lshlrev_b16 v185.l, 8, v185.l
	v_or_b16 v163.l, v193.l, v163.l
	s_waitcnt vmcnt(9)
	v_lshlrev_b16 v185.h, 8, v188.l
	v_or_b16 v163.h, v194.l, v163.h
	s_waitcnt vmcnt(7)
	v_lshlrev_b16 v186.l, 8, v190.l
	v_or_b16 v185.l, v195.l, v185.l
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v186.h, 8, v191.l
	v_or_b16 v185.h, v196.l, v185.h
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v187.l, 8, v192.l
	v_or_b16 v186.l, v197.l, v186.l
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v187.h, 8, v201.l
	v_or_b16 v186.h, v198.l, v186.h
	v_or_b16 v187.l, v199.l, v187.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b16 v187.h, v200.l, v187.h
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v188, v234 offset:3328
	ds_load_u8 v190, v234 offset:3072
	ds_load_u8 v191, v234 offset:3840
	ds_load_u8 v192, v234 offset:3584
	ds_load_u8 v193, v234 offset:3968
	ds_load_u8 v194, v234 offset:3712
	ds_load_u8 v195, v234 offset:3456
	ds_load_u8 v196, v234 offset:3200
	ds_load_u8 v197, v234 offset:2304
	ds_load_u8 v198, v234 offset:2048
	ds_load_u8 v199, v234 offset:2816
	ds_load_u8 v200, v234 offset:2560
	ds_load_u8 v201, v234 offset:2944
	ds_load_u8 v202, v234 offset:2688
	ds_load_u8 v203, v234 offset:2432
	ds_load_u8 v204, v234 offset:2176
	ds_load_u8 v205, v234 offset:5376
	ds_load_u8 v206, v234 offset:5120
	ds_load_u8 v207, v234 offset:6016
	ds_load_u8 v208, v234 offset:5760
	ds_load_u8 v209, v234 offset:5504
	ds_load_u8 v210, v234 offset:5888
	ds_load_u8 v211, v234 offset:5632
	ds_load_u8 v212, v234 offset:5248
	ds_load_u8 v213, v234 offset:4352
	ds_load_u8 v214, v234 offset:4096
	ds_load_u8 v215, v234 offset:4992
	ds_load_u8 v216, v234 offset:4736
	ds_load_u8 v217, v234 offset:4480
	ds_load_u8 v218, v234 offset:4864
	ds_load_u8 v224, v234 offset:4608
	ds_load_u8 v225, v234 offset:4224
	ds_load_u8 v253, v234 offset:7424
	ds_load_u8 v252, v234 offset:7168
	ds_load_u8 v164, v234 offset:8064
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v164, off        ; 4-byte Folded Spill
	ds_load_u8 v164, v234 offset:7808
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v164, off offset:4 ; 4-byte Folded Spill
	ds_load_u8 v164, v234 offset:7552
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v164, off offset:8 ; 4-byte Folded Spill
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v189, v167
	ds_store_b16_d16_hi v189, v167 offset:512
	ds_store_b16 v189, v182 offset:1024
	ds_store_b16_d16_hi v189, v182 offset:1536
	ds_store_b16 v189, v183 offset:2048
	ds_store_b16_d16_hi v189, v183 offset:2560
	ds_store_b16 v189, v184 offset:3072
	ds_store_b16_d16_hi v189, v184 offset:3584
	ds_store_b16 v189, v163 offset:4096
	ds_store_b16_d16_hi v189, v163 offset:4608
	ds_store_b16 v189, v185 offset:5120
	ds_store_b16_d16_hi v189, v185 offset:5632
	ds_store_b16 v189, v186 offset:6144
	ds_store_b16_d16_hi v189, v186 offset:6656
	ds_store_b16 v189, v187 offset:7168
	ds_store_b16_d16_hi v189, v187 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v163, v234 offset:1280
	ds_load_u8 v167, v234 offset:1024
	ds_load_u8 v184, v234 offset:1920
	ds_load_u8 v185, v234 offset:1664
	ds_load_u8 v186, v234 offset:1408
	ds_load_u8 v187, v234 offset:1152
	ds_load_u8 v168, v234 offset:384
	ds_load_u8 v170, v234 offset:512
	ds_load_u8 v169, v234 offset:128
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v163, v167, v163, 0xc0c0004
	ds_load_u8 v167, v234 offset:1792
	ds_load_u8 v182, v234 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v182, v167, 0xc0c0004
	ds_load_u8 v182, v234 offset:256
	ds_load_u8 v183, v234
	ds_load_u8 v189, v234 offset:896
	ds_load_u8 v164, v234 offset:640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v234 offset:768
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v164, v164, v189, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v170, v183, 0xc0c0004
	v_lshl_or_b32 v183, v167, 16, v163
	v_perm_b32 v163, v187, v186, 0xc0c0004
	v_perm_b32 v167, v185, v184, 0xc0c0004
	v_lshl_or_b32 v184, v164, 16, v168
	v_lshl_or_b32 v182, v170, 16, v182
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v185, v167, 16, v163
	v_wmma_i32_16x16x16_iu4 v[33:40], v[182:183], v[153:154], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[182:183], v[155:156], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[182:183], v[157:158], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[184:185], v[153:154], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[184:185], v[155:156], v[57:64] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v153, v190, v188, 0xc0c0004
	v_perm_b32 v154, v192, v191, 0xc0c0004
	v_perm_b32 v155, v198, v197, 0xc0c0004
	v_perm_b32 v156, v200, v199, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[184:185], v[157:158], v[9:16] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v157, v204, v203, 0xc0c0004
	v_lshl_or_b32 v154, v154, 16, v153
	v_perm_b32 v158, v202, v201, 0xc0c0004
	v_lshl_or_b32 v153, v156, 16, v155
	v_perm_b32 v155, v196, v195, 0xc0c0004
	v_perm_b32 v156, v194, v193, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[17:24], v[182:183], v[159:160], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[184:185], v[159:160], v[25:32] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[97:104], v[153:154], v[145:146], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[153:154], v[147:148], v[113:120] neg_lo:[1,1,0]
	v_lshl_or_b32 v156, v156, 16, v155
	v_lshl_or_b32 v155, v158, 16, v157
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v157, v234 offset:3328
	ds_load_u8 v158, v234 offset:3072
	ds_load_u8 v159, v234 offset:3968
	ds_load_u8 v160, v234 offset:3712
	ds_load_u8 v161, v234 offset:3456
	ds_load_u8 v162, v234 offset:3200
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
	ds_load_u8 v158, v234 offset:3840
	ds_load_u8 v163, v234 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v160, v159, 16, v161
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v163, v158, 0xc0c0004
	ds_load_u8 v163, v234 offset:2304
	ds_load_u8 v164, v234 offset:2048
	ds_load_u8 v167, v234 offset:2944
	ds_load_u8 v168, v234 offset:2688
	ds_load_u8 v169, v234 offset:2432
	ds_load_u8 v170, v234 offset:2176
	v_lshl_or_b32 v158, v158, 16, v157
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v234 offset:2816
	ds_load_u8 v182, v234 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v162, v170, v169, 0xc0c0004
	v_mov_b32_e32 v170, v176
	v_dual_mov_b32 v176, v181 :: v_dual_mov_b32 v181, v236
	v_dual_mov_b32 v236, v237 :: v_dual_mov_b32 v237, v247
	v_dual_mov_b32 v247, v244 :: v_dual_mov_b32 v244, v239
	v_mov_b32_e32 v169, v175
	v_dual_mov_b32 v175, v180 :: v_dual_mov_b32 v180, v235
	v_dual_mov_b32 v235, v246 :: v_dual_mov_b32 v246, v255
	v_mov_b32_e32 v255, v219
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v182, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v157, v164, 16, v163
	v_perm_b32 v163, v168, v167, 0xc0c0004
	scratch_load_b32 v167, off, off offset:12 ; 4-byte Folded Reload
	v_mov_b32_e32 v168, v174
	v_mov_b32_e32 v174, v179
	v_wmma_i32_16x16x16_iu4 v[33:40], v[157:158], v[145:146], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v159, v163, 16, v162
	v_wmma_i32_16x16x16_iu4 v[49:56], v[157:158], v[147:148], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[157:158], v[149:150], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[157:158], v[151:152], v[17:24] neg_lo:[1,1,0]
	v_mov_b32_e32 v179, v229
	v_wmma_i32_16x16x16_iu4 v[41:48], v[159:160], v[145:146], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[159:160], v[147:148], v[57:64] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v145, v206, v205, 0xc0c0004
	v_perm_b32 v146, v211, v210, 0xc0c0004
	v_perm_b32 v147, v214, v213, 0xc0c0004
	v_perm_b32 v148, v224, v218, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[159:160], v[149:150], v[9:16] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v149, v225, v217, 0xc0c0004
	v_lshl_or_b32 v146, v146, 16, v145
	v_perm_b32 v150, v216, v215, 0xc0c0004
	v_lshl_or_b32 v145, v148, 16, v147
	v_perm_b32 v147, v212, v209, 0xc0c0004
	v_perm_b32 v148, v208, v207, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[159:160], v[151:152], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[97:104], v[145:146], v[137:138], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[145:146], v[139:140], v[113:120] neg_lo:[1,1,0]
	v_lshl_or_b32 v148, v148, 16, v147
	v_lshl_or_b32 v147, v150, 16, v149
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v149, v234 offset:5376
	ds_load_u8 v150, v234 offset:5120
	ds_load_u8 v151, v234 offset:6016
	ds_load_u8 v152, v234 offset:5760
	ds_load_u8 v153, v234 offset:5504
	ds_load_u8 v154, v234 offset:5248
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
	ds_load_u8 v150, v234 offset:5888
	ds_load_u8 v155, v234 offset:5632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v151, 16, v153
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v155, v150, 0xc0c0004
	ds_load_u8 v155, v234 offset:4352
	ds_load_u8 v156, v234 offset:4096
	ds_load_u8 v157, v234 offset:4992
	ds_load_u8 v158, v234 offset:4736
	ds_load_u8 v159, v234 offset:4480
	ds_load_u8 v160, v234 offset:4224
	v_lshl_or_b32 v150, v150, 16, v149
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	ds_load_u8 v156, v234 offset:4864
	ds_load_u8 v161, v234 offset:4608
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
	v_perm_b32 v137, v252, v253, 0xc0c0004
	v_perm_b32 v138, v227, v230, 0xc0c0004
	v_perm_b32 v139, v232, v226, 0xc0c0004
	v_perm_b32 v140, v165, v220, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[151:152], v[141:142], v[9:16] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v142, v233, v251, 0xc0c0004
	v_lshl_or_b32 v138, v138, 16, v137
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[151:152], v[143:144], v[25:32] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v137, v140, 16, v139
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v139, off, off offset:8
	scratch_load_b32 v140, off, off
	scratch_load_b32 v141, off, off offset:4
	v_wmma_i32_16x16x16_iu4 v[65:72], v[137:138], v[133:134], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[137:138], v[135:136], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[137:138], v[129:130], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[137:138], v[131:132], v[113:120] neg_lo:[1,1,0]
	s_waitcnt vmcnt(2)
	v_perm_b32 v139, v250, v139, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	v_perm_b32 v141, v221, v231, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v140, v140, 16, v139
	v_lshl_or_b32 v139, v142, 16, v141
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v141, v234 offset:7424
	ds_load_u8 v142, v234 offset:7168
	ds_load_u8 v143, v234 offset:8064
	ds_load_u8 v144, v234 offset:7808
	ds_load_u8 v145, v234 offset:7552
	ds_load_u8 v146, v234 offset:7296
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[73:80], v[139:140], v[133:134], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[139:140], v[135:136], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[139:140], v[129:130], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[139:140], v[131:132], v[121:128] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v234 offset:7936
	ds_load_u8 v147, v234 offset:7680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v144, v143, 16, v145
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v147, v142, 0xc0c0004
	ds_load_u8 v147, v234 offset:6400
	ds_load_u8 v148, v234 offset:6144
	ds_load_u8 v149, v234 offset:7040
	ds_load_u8 v150, v234 offset:6784
	ds_load_u8 v151, v234 offset:6528
	ds_load_u8 v152, v234 offset:6272
	v_lshl_or_b32 v142, v142, 16, v141
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v234 offset:6912
	ds_load_u8 v153, v234 offset:6656
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
	scratch_load_b32 v55, off, off offset:544
	scratch_load_b32 v43, off, off offset:528
	scratch_load_b32 v44, off, off offset:532
	s_mov_b32 s30, s18
	s_mov_b32 s31, s19
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
	s_add_i32 s22, s33, s15
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v147, v86
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s22, s22, s13
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v86, v33
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
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
	v_cvt_f32_i32_e32 v142, v71
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v71, v5
	v_cvt_f32_i32_e32 v5, v29
	v_cvt_f32_i32_e32 v29, v57
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
	v_cvt_f32_i32_e32 v145, v88
	v_cvt_f32_i32_e32 v138, v90
	v_cvt_f32_i32_e32 v136, v92
	v_cvt_f32_i32_e32 v90, v93
	v_cvt_f32_i32_e32 v88, v95
	v_cvt_f32_i32_e32 v162, v99
	v_cvt_f32_i32_e32 v95, v109
	v_cvt_f32_i32_e32 v93, v111
	v_cvt_f32_i32_e32 v92, v112
	v_cvt_f32_i32_e32 v109, v114
	v_cvt_f32_i32_e32 v111, v116
	v_cvt_f32_i32_e32 v112, v117
	v_cvt_f32_i32_e32 v114, v119
	v_cvt_f32_i32_e32 v99, v125
	v_cvt_f32_i32_e32 v157, v82
	v_cvt_f32_i32_e32 v163, v100
	v_cvt_f32_i32_e32 v100, v108
	v_cvt_f32_i32_e32 v108, v113
	v_cvt_f32_i32_e32 v113, v118
	v_cvt_f32_i32_e32 v139, v89
	v_cvt_f32_i32_e32 v89, v94
	v_cvt_f32_i32_e32 v160, v97
	v_cvt_f32_i32_e32 v94, v110
	v_cvt_f32_i32_e32 v110, v115
	v_cvt_f32_i32_e32 v146, v87
	v_cvt_f32_i32_e32 v87, v96
	v_cvt_f32_i32_e32 v161, v98
	v_cvt_f32_i32_e32 v96, v128
	v_cvt_f32_i32_e32 v98, v126
	v_cvt_f32_i32_e32 v97, v127
	v_cvt_f32_i32_e32 v164, v101
	v_cvt_f32_i32_e32 v115, v120
	v_cvt_f32_i32_e32 v151, v102
	v_cvt_f32_i32_e32 v149, v104
	v_cvt_f32_i32_e32 v134, v75
	v_cvt_f32_i32_e32 v150, v103
	v_cvt_f32_i32_e32 v133, v76
	v_cvt_f32_i32_e32 v102, v106
	v_cvt_f32_i32_e32 v101, v107
	v_cvt_f32_i32_e32 v107, v121
	v_cvt_f32_i32_e32 v106, v122
	v_cvt_f32_i32_e32 v103, v105
	v_cvt_f32_i32_e32 v105, v123
	v_cvt_f32_i32_e32 v104, v124
	v_cvt_f32_i32_e32 v132, v77
	v_cvt_f32_i32_e32 v131, v78
	v_cvt_f32_i32_e32 v130, v79
	v_cvt_f32_i32_e32 v129, v80
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v77, v3
	v_cvt_f32_i32_e32 v78, v2
	v_cvt_f32_i32_e32 v76, v4
	v_cvt_f32_i32_e32 v82, v17
	v_cvt_f32_i32_e32 v80, v19
	v_cvt_f32_i32_e32 v79, v20
	v_cvt_f32_i32_e32 v75, v21
	v_cvt_f32_i32_e32 v3, v15
	v_cvt_f32_i32_e32 v4, v16
	v_cvt_f32_i32_e32 v17, v26
	v_cvt_f32_i32_e32 v16, v27
	v_cvt_f32_i32_e32 v2, v14
	v_cvt_f32_i32_e32 v14, v28
	v_cvt_f32_i32_e32 v19, v62
	v_cvt_f32_i32_e32 v28, v58
	v_cvt_f32_i32_e32 v27, v59
	v_cvt_f32_i32_e32 v15, v61
	v_cvt_f32_i32_e32 v26, v60
	v_cvt_f32_i32_e32 v20, v63
	v_cvt_f32_i32_e32 v21, v64
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v33, v55, s22, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v43, s33, v43, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s33, v44, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v43, 0x80000000, v43, s9
	v_cndmask_b32_e64 v44, 0x80000000, v44, s10
	s_clause 0x1
	buffer_load_u16 v43, v43, s[28:31], 0 offen
	buffer_load_u16 v51, v44, s[28:31], 0 offen
	scratch_load_b32 v44, off, off offset:536 ; 4-byte Folded Reload
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v51, 16, v51
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s33, v44, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v5, v51, v5
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v44, 0x80000000, v44, s11
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v7, v7, v51
	v_mul_f32_e32 v8, v8, v51
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v52, v44, s[28:31], 0 offen
	scratch_load_b32 v44, off, off offset:540 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s33, v44, 1
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s33, s33, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s33, s34
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v44, 0x80000000, v44, s12
	buffer_load_u16 v53, v44, s[28:31], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v56, off, off offset:548 ; 4-byte Folded Reload
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v56, v33
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0xd                            ; 56-byte Folded Reload
	scratch_load_b32 v57, off, off offset:552
	scratch_load_b32 v218, off, off offset:452
	scratch_load_b32 v206, off, off offset:404
	scratch_load_b32 v197, off, off offset:368
	scratch_load_b32 v198, off, off offset:372
	scratch_load_b32 v200, off, off offset:380
	scratch_load_b32 v214, off, off offset:436
	scratch_load_b32 v199, off, off offset:376
	scratch_load_b32 v191, off, off offset:344
	scratch_load_b32 v184, off, off offset:316
	scratch_load_b32 v239, off, off offset:272
	scratch_load_b32 v182, off, off offset:284
	scratch_load_b32 v127, off, off offset:152
	scratch_load_b32 v121, off, off offset:120
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v33, 16, v43
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(13)
	ds_load_b128 v[43:46], v57
	ds_load_b128 v[47:50], v57 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v33, v152
	s_clause 0x11                           ; 72-byte Folded Reload
	scratch_load_b32 v116, off, off offset:80
	scratch_load_b32 v117, off, off offset:84
	scratch_load_b32 v119, off, off offset:92
	scratch_load_b32 v125, off, off offset:144
	scratch_load_b32 v189, off, off offset:336
	scratch_load_b32 v128, off, off offset:156
	scratch_load_b32 v152, off, off offset:176
	scratch_load_b32 v118, off, off offset:88
	scratch_load_b32 v120, off, off offset:116
	scratch_load_b32 v190, off, off offset:340
	scratch_load_b32 v192, off, off offset:348
	scratch_load_b32 v213, off, off offset:432
	scratch_load_b32 v183, off, off offset:312
	scratch_load_b32 v212, off, off offset:428
	scratch_load_b32 v219, off, off offset:456
	scratch_load_b32 v208, off, off offset:412
	scratch_load_b32 v221, off, off offset:464
	scratch_load_b32 v209, off, off offset:416
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(28) lgkmcnt(1)
	v_dual_fmac_f32 v197, v54, v43 :: v_dual_mul_f32 v54, v33, v153
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v153, off, off offset:180
	scratch_load_b32 v222, off, off offset:468
	scratch_load_b32 v210, off, off offset:420
	scratch_load_b32 v223, off, off offset:472
	scratch_load_b32 v211, off, off offset:424
	s_waitcnt vmcnt(32)
	v_fmac_f32_e32 v198, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v33, v154
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v154, off, off offset:184
	scratch_load_b32 v220, off, off offset:460
	scratch_load_b32 v207, off, off offset:408
	scratch_load_b32 v205, off, off offset:400
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(35)
	v_fmac_f32_e32 v200, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v33, v155
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v155, off, off offset:188
	scratch_load_b32 v126, off, off offset:148
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v42, v53, v42
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(35)
	v_dual_fmac_f32 v199, v54, v46 :: v_dual_mul_f32 v54, v51, v156
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v40, v53, v40
	v_dual_mul_f32 v10, v33, v10 :: v_dual_mul_f32 v3, v3, v33
	v_mul_f32_e32 v1, v33, v1
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(32)
	v_dual_fmac_f32 v239, v54, v43 :: v_dual_mul_f32 v54, v51, v157
	scratch_load_b32 v157, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v15, v53, v15
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v157, v54, v44 :: v_dual_mul_f32 v54, v51, v158
	scratch_load_b32 v158, off, off offset:280 ; 4-byte Folded Reload
	v_fmac_f32_e32 v182, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v159
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v158, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v160
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v152, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v153, v54, v44 :: v_dual_mul_f32 v54, v52, v162
	v_dual_fmac_f32 v155, v54, v45 :: v_dual_mul_f32 v54, v52, v163
	scratch_load_b32 v163, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v39, v53, v39 :: v_dual_mul_f32 v34, v52, v34
	v_mul_f32_e32 v32, v52, v32
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v154, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v53, v108
	scratch_load_b32 v108, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v30, v52, v30
	v_mul_f32_e32 v31, v52, v31
	v_dual_mul_f32 v9, v52, v9 :: v_dual_fmac_f32 v116, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v109
	scratch_load_b32 v109, off, off offset:52 ; 4-byte Folded Reload
	v_dual_mul_f32 v54, v140, v33 :: v_dual_fmac_f32 v117, v43, v44
	v_mul_f32_e32 v43, v53, v110
	scratch_load_b32 v110, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v119, v43, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v118, v43, v46 :: v_dual_mul_f32 v43, v33, v144
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v189, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v33, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v190, v43, v48 :: v_dual_mul_f32 v43, v33, v142
	v_fmac_f32_e32 v191, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v33, v141
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v192, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v148
	scratch_load_b32 v148, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v148, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v147
	scratch_load_b32 v147, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v147, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v146
	scratch_load_b32 v146, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v146, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v145
	scratch_load_b32 v145, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v145, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v164
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v164, off, off offset:308
	scratch_load_b32 v140, off, off offset:220
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v125, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v126, v43, v48 :: v_dual_mul_f32 v43, v52, v150
	v_fmac_f32_e32 v127, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v128, v43, v50 :: v_dual_mul_f32 v43, v53, v112
	v_dual_fmac_f32 v108, v43, v47 :: v_dual_mul_f32 v43, v53, v113
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v109, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v114
	scratch_load_b32 v114, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v110, v43, v49 :: v_dual_mul_f32 v43, v53, v115
	scratch_load_b32 v115, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v114, v43, v50
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[43:46], v57 offset:512
	ds_load_b128 v[47:50], v57 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v223, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v33, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v163, v54, v44 :: v_dual_mul_f32 v54, v33, v134
	v_fmac_f32_e32 v164, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v33, v133
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v183, v54, v46 :: v_dual_mul_f32 v54, v139, v51
	scratch_load_b32 v139, off, off offset:216 ; 4-byte Folded Reload
	v_dual_fmac_f32 v219, v54, v43 :: v_dual_mul_f32 v54, v51, v138
	scratch_load_b32 v138, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v138, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v137
	scratch_load_b32 v137, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v137, v54, v45 :: v_dual_mul_f32 v54, v51, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v139, v54, v46 :: v_dual_mul_f32 v54, v103, v52
	v_fmac_f32_e32 v212, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v102
	scratch_load_b32 v102, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v115, v54, v44 :: v_dual_mul_f32 v54, v52, v101
	scratch_load_b32 v101, off, off offset:20 ; 4-byte Folded Reload
	v_fmac_f32_e32 v120, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v100
	scratch_load_b32 v100, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v121, v54, v46 :: v_dual_mul_f32 v54, v107, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v208, v54, v43 :: v_dual_mul_f32 v43, v53, v106
	scratch_load_b32 v106, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v33, v91
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v100, v43, v44 :: v_dual_mul_f32 v43, v53, v105
	v_fmac_f32_e32 v101, v43, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v102, v43, v46 :: v_dual_mul_f32 v43, v33, v132
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v184, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v131, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v222, v43, v48 :: v_dual_mul_f32 v43, v130, v33
	v_fmac_f32_e32 v221, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v129, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v220, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v90
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v140, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v89, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v218, v43, v48 :: v_dual_mul_f32 v43, v88, v51
	v_fmac_f32_e32 v214, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v87, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v213, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v95
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v106, v43, v47 :: v_dual_mul_f32 v43, v94, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v211, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v93, v52
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v210, v43, v49 :: v_dual_mul_f32 v43, v92, v52
	scratch_load_b32 v92, off, off offset:24 ; 4-byte Folded Reload
	v_fmac_f32_e32 v209, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v99
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v92, v43, v47 :: v_dual_mul_f32 v43, v98, v53
	v_fmac_f32_e32 v207, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v97, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v206, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v96, v53
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v205, v43, v50
	v_add_nc_u32_e32 v43, s78, v55
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v43, v43, s22, 1
	buffer_load_u16 v43, v43, s[24:27], 0 offen
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
	scratch_load_b32 v204, off, off offset:396
	scratch_load_b32 v203, off, off offset:392
	scratch_load_b32 v202, off, off offset:388
	scratch_load_b32 v201, off, off offset:384
	scratch_load_b32 v196, off, off offset:364
	scratch_load_b32 v195, off, off offset:360
	scratch_load_b32 v194, off, off offset:356
	scratch_load_b32 v193, off, off offset:352
	scratch_load_b32 v162, off, off offset:300
	scratch_load_b32 v188, off, off offset:332
	scratch_load_b32 v187, off, off offset:328
	scratch_load_b32 v185, off, off offset:320
	scratch_load_b32 v186, off, off offset:324
	scratch_load_b32 v161, off, off offset:296
	scratch_load_b32 v159, off, off offset:288
	scratch_load_b32 v160, off, off offset:292
	scratch_load_b32 v136, off, off offset:204
	scratch_load_b32 v135, off, off offset:200
	scratch_load_b32 v134, off, off offset:196
	scratch_load_b32 v133, off, off offset:192
	scratch_load_b32 v132, off, off offset:172
	scratch_load_b32 v131, off, off offset:168
	scratch_load_b32 v130, off, off offset:164
	scratch_load_b32 v129, off, off offset:160
	scratch_load_b32 v105, off, off offset:108
	scratch_load_b32 v99, off, off offset:96
	scratch_load_b32 v103, off, off offset:100
	scratch_load_b32 v124, off, off offset:140
	scratch_load_b32 v123, off, off offset:136
	scratch_load_b32 v107, off, off offset:128
	scratch_load_b32 v122, off, off offset:132
	scratch_load_b32 v104, off, off offset:104
	s_clause 0x16                           ; 92-byte Folded Reload
	scratch_load_b32 v96, off, off offset:64
	scratch_load_b32 v98, off, off offset:76
	scratch_load_b32 v90, off, off offset:72
	scratch_load_b32 v97, off, off offset:68
	scratch_load_b32 v91, off, off offset:36
	scratch_load_b32 v93, off, off offset:40
	scratch_load_b32 v94, off, off offset:44
	scratch_load_b32 v95, off, off offset:48
	scratch_load_b32 v156, off, off offset:268
	scratch_load_b32 v151, off, off offset:264
	scratch_load_b32 v149, off, off offset:256
	scratch_load_b32 v150, off, off offset:260
	scratch_load_b32 v144, off, off offset:236
	scratch_load_b32 v143, off, off offset:232
	scratch_load_b32 v142, off, off offset:228
	scratch_load_b32 v141, off, off offset:224
	scratch_load_b32 v233, off, off offset:524
	scratch_load_b32 v87, off, off offset:508
	scratch_load_b32 v232, off, off offset:520
	scratch_load_b32 v231, off, off offset:512
	scratch_load_b32 v230, off, off offset:504
	scratch_load_b32 v229, off, off offset:500
	scratch_load_b32 v227, off, off offset:496
	ds_load_b128 v[43:46], v57
	ds_load_b128 v[47:50], v57 offset:16
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v226, off, off offset:492
	scratch_load_b32 v224, off, off offset:476
	scratch_load_b32 v88, off, off offset:488
	scratch_load_b32 v89, off, off offset:484
	scratch_load_b32 v225, off, off offset:480
	scratch_load_b32 v217, off, off offset:448
	scratch_load_b32 v216, off, off offset:444
	scratch_load_b32 v215, off, off offset:440
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(62) lgkmcnt(1)
	v_fmac_f32_e32 v204, v54, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v33, v78
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(61)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v203, v54, v44 :: v_dual_mul_f32 v54, v33, v77
	s_waitcnt vmcnt(60)
	v_fmac_f32_e32 v202, v54, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v33, v76
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(59)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v201, v54, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v51, v82
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(41) lgkmcnt(0)
	v_dual_fmac_f32 v132, v34, v47 :: v_dual_fmac_f32 v131, v32, v48
	s_waitcnt vmcnt(39)
	v_fmac_f32_e32 v129, v30, v50
	v_fmac_f32_e32 v162, v54, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(38)
	v_dual_mul_f32 v54, v51, v81 :: v_dual_fmac_f32 v105, v42, v43
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v30, v53, v38 :: v_dual_fmac_f32 v161, v54, v44
	v_mul_f32_e32 v54, v51, v80
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(31)
	v_dual_fmac_f32 v104, v39, v46 :: v_dual_mul_f32 v39, v33, v71
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(30)
	v_dual_mul_f32 v41, v53, v41 :: v_dual_fmac_f32 v96, v30, v47
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v159, v54, v45 :: v_dual_mul_f32 v54, v51, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v196, v39, v47 :: v_dual_mul_f32 v39, v33, v70
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v30, v53, v37
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v99, v41, v44 :: v_dual_fmac_f32 v160, v54, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v52, v86
	scratch_load_b32 v86, off, off offset:516 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v195, v39, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(30)
	v_dual_mul_f32 v39, v33, v69 :: v_dual_fmac_f32 v98, v30, v48
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v136, v54, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v52, v85
	v_mul_f32_e32 v30, v53, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v194, v39, v49 :: v_dual_mul_f32 v39, v33, v68
	v_fmac_f32_e32 v135, v54, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v52, v84
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(29)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v90, v30, v49 :: v_dual_fmac_f32 v193, v39, v50
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v51, v75
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v103, v40, v45
	v_fmac_f32_e32 v134, v54, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v54, v52, v83
	v_mul_f32_e32 v30, v53, v35
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(23)
	v_fmac_f32_e32 v156, v39, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v51, v74
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v130, v31, v49 :: v_dual_fmac_f32 v133, v54, v46
	v_dual_fmac_f32 v97, v30, v50 :: v_dual_mul_f32 v30, v67, v33
	s_waitcnt vmcnt(22)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v151, v39, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v51, v73
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(21)
	v_fmac_f32_e32 v149, v39, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v51, v72
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(20)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v150, v39, v50
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[34:37], v57 offset:512
	ds_load_b128 v[38:41], v57 offset:528
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v4, v4, v33
	v_mul_f32_e32 v2, v2, v33
	v_mul_f32_e32 v6, v6, v51
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(15) lgkmcnt(1)
	v_fmac_f32_e32 v233, v30, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v30, v33, v66 :: v_dual_fmac_f32 v185, v10, v37
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v10, v18, v51 :: v_dual_fmac_f32 v141, v5, v38
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(10)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v229, v7, v40 :: v_dual_fmac_f32 v188, v30, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v30, v33, v65 :: v_dual_fmac_f32 v87, v10, v34
	v_mul_f32_e32 v10, v51, v17
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v231, v4, v41 :: v_dual_fmac_f32 v186, v1, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v187, v30, v36 :: v_dual_fmac_f32 v122, v9, v38
	v_fmac_f32_e32 v144, v10, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v51, v16
	v_dual_mul_f32 v16, v21, v53 :: v_dual_fmac_f32 v95, v15, v38
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(9)
	v_dual_fmac_f32 v232, v2, v39 :: v_dual_fmac_f32 v227, v8, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v143, v10, v36 :: v_dual_mul_f32 v10, v51, v14
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v20, v53
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v230, v6, v39 :: v_dual_fmac_f32 v215, v16, v41
	v_fmac_f32_e32 v142, v10, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v25, v52
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v216, v14, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v226, v10, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v52, v24
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v124, v10, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v52, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v123, v10, v36 :: v_dual_mul_f32 v10, v52, v22
	v_fmac_f32_e32 v107, v10, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v29, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v224, v10, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v53, v28
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v91, v10, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v53, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v93, v10, v36 :: v_dual_mul_f32 v10, v53, v26
	v_fmac_f32_e32 v94, v10, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v11, v52
	v_mul_f32_e32 v11, v12, v52
	v_dual_mul_f32 v12, v13, v52 :: v_dual_mul_f32 v13, v19, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v89, v11, v40
	v_dual_fmac_f32 v225, v12, v41 :: v_dual_fmac_f32 v88, v10, v39
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v217, v13, v39 :: v_dual_fmac_f32 v86, v3, v40
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.5:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_and_b32_e32 v111, 15, v0
	v_and_b32_e32 v112, 0x7f, v0
	v_and_b32_e32 v113, 0x80, v0
	s_branch .LBB0_7
.LBB0_6:
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v223, 0
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v1, 62, v255
	v_or_b32_e32 v5, 60, v255
	v_and_b32_e32 v7, 63, v0
	v_or_b32_e32 v8, 58, v255
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v14, 0xbfb8aa3b, v86 :: v_dual_mul_f32 v11, 0xbfb8aa3b, v204
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s0, s76, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s77, 0, s0
	v_add_co_u32 v5, s1, s76, v5
	v_add_co_ci_u32_e64 v6, null, s77, 0, s1
	v_add_co_u32 v1, s0, s76, v7
	v_add_co_u32 v8, s1, s76, v8
	v_add_co_ci_u32_e64 v2, null, s77, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[64:65], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, s77, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[70:71], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 56, v255
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[64:65], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[70:71], v[5:6]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v5, 54, v255
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[64:65], v[8:9]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s76, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v4, null, s77, 0, s6
	v_add_co_u32 v5, s6, s76, v5
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s77, 0, s6
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[70:71], v[8:9]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v8, 52, v255
	v_or_b32_e32 v9, 50, v255
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[70:71], v[3:4]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[64:65], v[5:6]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s10, s76, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s77, 0, s10
	v_add_co_u32 v8, s10, s76, v9
	v_add_co_ci_u32_e64 v9, null, s77, 0, s10
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[70:71], v[5:6]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v5, 48, v255
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[70:71], v[3:4]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v3, 46, v255
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[64:65], v[8:9]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s14, s76, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v6, null, s77, 0, s14
	v_add_co_u32 v3, s14, s76, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s77, 0, s14
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[70:71], v[8:9]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v9, 0xbfb8aa3b, v233 :: v_dual_mul_f32 v10, 0xbfb8aa3b, v203
	v_mul_f32_e32 v12, 0xbfb8aa3b, v232
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[64:65], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[70:71], v[5:6]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	v_mul_f32_e32 v9, 0xbfb8aa3b, v201
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v14
	v_dual_mul_f32 v33, 0xbfb8aa3b, v159 :: v_dual_mul_f32 v42, 0xbfb8aa3b, v161
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v16, 0, 0x42800000, s18
	v_mul_f32_e32 v44, 0xbfb8aa3b, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v48, 0xbfb8aa3b, v130 :: v_dual_fmac_f32 v13, 0xbfb8aa3b, v233
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v15, 0xbfb8aa3b, v231 :: v_dual_fmac_f32 v16, 0xbfb8aa3b, v86
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v13, v13
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v232
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v15
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s18
	v_mul_f32_e32 v49, 0xbfb8aa3b, v162
	v_exp_f32_e32 v14, v14
	v_cndmask_b32_e64 v18, 0, 0x42800000, s19
	v_mul_f32_e32 v27, 0xbfb8aa3b, v193
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s19
	v_ldexp_f32 v6, v13, v6
	v_mul_f32_e32 v13, 0xbfb8aa3b, v87
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v231
	v_mul_f32_e32 v64, 0xbfb8aa3b, v105
	v_mul_f32_e32 v8, 0xbfb8aa3b, v202
	v_dual_mul_f32 v40, 0xbfb8aa3b, v196 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v186
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v12, v14, v12
	v_ldexp_f32 v14, v16, v15
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_mul_f32_e32 v16, 0xbfb8aa3b, v230
	v_dual_mul_f32 v28, 0xbfb8aa3b, v194 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v195
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v32, 0xbfb8aa3b, v185 :: v_dual_mul_f32 v37, 0xbfb8aa3b, v188
	v_ldexp_f32 v15, v18, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v18, 0xbfb8aa3b, v229
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_mul_f32_e32 v23, 0xbfb8aa3b, v225
	v_dual_mul_f32 v30, 0xbfb8aa3b, v97 :: v_dual_add_f32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v19, 0xbfb8aa3b, v227
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v38, 0xbfb8aa3b, v187 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v160
	v_cndmask_b32_e64 v20, 0, 0x42800000, s18
	v_dual_fmac_f32 v17, 0xbfb8aa3b, v87 :: v_dual_fmac_f32 v18, 0xbfb8aa3b, v230
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v229
	v_exp_f32_e32 v17, v17
	v_exp_f32_e32 v18, v18
	v_cndmask_b32_e64 v22, 0, 0x42800000, s19
	v_mul_f32_e32 v35, 0xbfb8aa3b, v150
	v_exp_f32_e32 v20, v20
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s19
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v23
	v_dual_fmac_f32 v22, 0xbfb8aa3b, v227 :: v_dual_mul_f32 v55, 0xbfb8aa3b, v132
	v_mul_f32_e32 v65, 0xbfb8aa3b, v123
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v13, v17, v13
	v_mul_f32_e32 v17, 0xbfb8aa3b, v226
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v16, v18, v16
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v18, v20, v19
	v_mul_f32_e32 v20, 0xbfb8aa3b, v88
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v26, 0, 0x42800000, s19
	v_mul_f32_e32 v59, 0xbfb8aa3b, v103
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s19
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v19, v22, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v22, 0xbfb8aa3b, v89
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v225
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v85, null, v13, v13, v87
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v226
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v26, v26
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v24, 0, 0x42800000, s18
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v88
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s18
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v19, 1.0, v19 :: v_dual_mul_f32 v46, 0xbfb8aa3b, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v45, 0xbfb8aa3b, v142 :: v_dual_fmac_f32 v24, 0xbfb8aa3b, v89
	v_exp_f32_e32 v22, v22
	v_dual_mul_f32 v36, 0xbfb8aa3b, v149 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v151
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v17, v21, v17
	v_exp_f32_e32 v24, v24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v62, 0xbfb8aa3b, v144 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v17, 1.0, v17 :: v_dual_mul_f32 v50, 0xbfb8aa3b, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v43, 0xbfb8aa3b, v134
	v_ldexp_f32 v20, v22, v20
	v_ldexp_f32 v22, v26, v25
	v_mul_f32_e32 v26, 0xbfb8aa3b, v215
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v21, v24, v23
	v_dual_mul_f32 v24, 0xbfb8aa3b, v217 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v224
	v_mul_f32_e32 v25, 0xbfb8aa3b, v216
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, null, v70, v70, v233
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v60, 0xbfb8aa3b, v136 :: v_dual_mul_f32 v57, 0xbfb8aa3b, v107
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s18
	v_cndmask_b32_e64 v58, 0, 0x42800000, s18
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v26
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v217
	v_cndmask_b32_e64 v26, 0, 0x42800000, s18
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s18
	v_dual_mul_f32 v52, 0xbfb8aa3b, v135 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v129
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v215
	v_exp_f32_e32 v71, v58
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, vcc_lo, v233, v70, v233
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v26
	v_dual_fmac_f32 v25, 0xbfb8aa3b, v216 :: v_dual_mul_f32 v54, 0xbfb8aa3b, v131
	v_mul_f32_e32 v61, 0xbfb8aa3b, v104
	v_dual_mul_f32 v66, 0xbfb8aa3b, v124 :: v_dual_mul_f32 v53, 0xbfb8aa3b, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v73, v25
	v_ldexp_f32 v67, v71, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v72, v75, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v224
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v69, v74, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v14, v14, v86
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_add_f32 v67, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v71, v75
	v_rcp_f32_e32 v77, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v68, v73, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v12, v12, v232
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v78, v76, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v24, v24
	v_dual_mul_f32 v26, 0xbfb8aa3b, v91 :: v_dual_add_f32 v69, 1.0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fma_f32 v80, -v72, v78, v76
	v_fma_f32 v81, -v74, v77, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v6, 0xbfb8aa3b, v95
	v_dual_mul_f32 v56, 0xbfb8aa3b, v122 :: v_dual_mul_f32 v63, 0xbfb8aa3b, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v78, v80, v75 :: v_dual_fmac_f32 v77, v81, v77
	v_div_scale_f32 v81, null, v15, v15, v231
	v_fma_f32 v79, -v73, v71, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v72, v78, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v58, 0xbfb8aa3b, v96
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v83, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v23, v24, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v79, v71
	v_div_scale_f32 v79, s18, v232, v12, v232
	v_div_fmas_f32 v72, v72, v75, v78
	v_rcp_f32_e32 v75, v85
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v80, v79, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v24, 0xbfb8aa3b, v94 :: v_dual_add_f32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v78, -v81, v83, 1.0
	v_div_fixup_f32 v70, v72, v70, v233
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v73, v80, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v34, 0xbfb8aa3b, v90 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v83, v78, v83
	v_div_scale_f32 v82, s19, v86, v14, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v76, v71
	v_div_scale_f32 v78, s18, v87, v13, v87
	v_mul_f32_e32 v84, v82, v77
.Ltmp11:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp12:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v73, v80, v79
	v_div_scale_f32 v73, s20, v231, v15, v231
	v_fma_f32 v76, -v74, v84, v82
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp14:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v71, v72, v71, v80
	s_mov_b32 vcc_lo, s19
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v5, 44, v255
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v84, v76, v77
	v_fma_f32 v76, -v85, v75, 1.0
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v12, v71, v12, v232
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[64:65], v[3:4]
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v74, v84, v82
	v_fmac_f32_e32 v75, v76, v75
	v_div_scale_f32 v76, null, v16, v16, v230
	v_mul_f32_e32 v74, v73, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v72, v72, v77, v84
	v_mul_f32_e32 v80, v78, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v77, v76
	s_mov_b32 vcc_lo, s20
	v_fma_f32 v79, -v81, v74, v73
	v_div_fixup_f32 v14, v72, v14, v86
	v_fma_f32 v71, -v85, v80, v78
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s72, s78, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s73, s67, 0xffff
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v79, v83
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s72, s78, s72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v80, v71, v75
	v_fma_f32 v79, -v76, v77, 1.0
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v81, v74, v73
	v_div_scale_f32 v81, null, v19, v19, v227
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v77, v79, v77
	v_div_scale_f32 v82, null, v18, v18, v229
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v79, v81
	v_div_scale_f32 v71, s19, v230, v16, v230
	v_rcp_f32_e32 v72, v82
	v_div_fmas_f32 v73, v73, v83, v74
	v_fma_f32 v74, -v85, v80, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v78, v71, v77
	v_div_scale_f32 v85, null, v17, v17, v226
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v83, s20, v229, v18, v229
	v_div_fmas_f32 v74, v74, v75, v80
	v_fma_f32 v84, -v82, v72, 1.0
	v_fma_f32 v75, -v76, v78, v71
	v_div_scale_f32 v86, s18, v227, v19, v227
	v_div_fixup_f32 v15, v73, v15, v231
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v72, v84, v72
	v_fma_f32 v84, -v81, v79, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v75, v77
	v_div_fixup_f32 v13, v74, v13, v87
	v_dual_mul_f32 v80, v83, v72 :: v_dual_fmac_f32 v79, v84, v79
	v_rcp_f32_e32 v84, v85
	v_div_scale_f32 v75, null, v20, v20, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v82, v80, v83
	v_mul_f32_e32 v74, v86, v79
	v_fma_f32 v71, -v76, v78, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v76, v75
	s_mov_b32 vcc_lo, s19
	v_fmac_f32_e32 v80, v73, v72
	v_fma_f32 v73, -v81, v74, v86
	v_fma_f32 v87, -v85, v84, 1.0
	v_div_fmas_f32 v71, v71, v77, v78
	s_mov_b32 vcc_lo, s20
	v_fma_f32 v77, -v82, v80, v83
	v_fmac_f32_e32 v74, v73, v79
	v_fmac_f32_e32 v84, v87, v84
	v_div_scale_f32 v87, s21, v226, v17, v226
	v_fma_f32 v78, -v75, v76, 1.0
	v_div_fmas_f32 v72, v77, v72, v80
	v_fma_f32 v77, -v81, v74, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v73, v87, v84
	s_mov_b32 vcc_lo, s18
	v_fmac_f32_e32 v76, v78, v76
	v_div_scale_f32 v78, null, v21, v21, v89
	v_fma_f32 v80, -v85, v73, v87
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v81, s19, v88, v20, v88
	v_div_fmas_f32 v74, v77, v79, v74
	v_rcp_f32_e32 v77, v78
	v_fmac_f32_e32 v73, v80, v84
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v79, v81, v76
	v_div_fixup_f32 v16, v71, v16, v230
	v_div_fixup_f32 v71, v72, v18, v229
	v_div_fixup_f32 v72, v74, v19, v227
	v_fma_f32 v18, -v85, v73, v87
	v_div_scale_f32 v74, null, v22, v22, v225
	s_mov_b32 vcc_lo, s21
	v_fma_f32 v19, -v75, v79, v81
	v_fma_f32 v80, -v78, v77, 1.0
	v_div_fmas_f32 v18, v18, v84, v73
	v_rcp_f32_e32 v73, v74
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v79, v19, v76
	v_fmac_f32_e32 v77, v80, v77
	v_div_scale_f32 v80, null, v23, v23, v224
	v_div_scale_f32 v19, s18, v89, v21, v89
	v_div_fixup_f32 v82, v18, v17, v226
	v_fma_f32 v17, -v75, v79, v81
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v75, -v74, v73, 1.0
	v_rcp_f32_e32 v81, v80
	s_mov_b32 vcc_lo, s19
	v_mul_f32_e32 v18, v19, v77
	v_div_fmas_f32 v17, v17, v76, v79
	v_fmac_f32_e32 v73, v75, v73
	v_div_scale_f32 v75, null, v67, v67, v217
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v76, -v78, v18, v19
	v_div_scale_f32 v79, s19, v225, v22, v225
	v_fma_f32 v83, -v80, v81, 1.0
	v_div_fixup_f32 v84, v17, v20, v88
	v_rcp_f32_e32 v17, v75
	v_fmac_f32_e32 v18, v76, v77
	v_mul_f32_e32 v20, v79, v73
	v_fmac_f32_e32 v81, v83, v81
	v_div_scale_f32 v76, s20, v224, v23, v224
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v19, -v78, v18, v19
	v_fma_f32 v78, -v74, v20, v79
	v_div_scale_f32 v83, null, v68, v68, v216
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v85, v76, v81
	v_fma_f32 v86, -v75, v17, 1.0
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v88, null, v69, v69, v215
	v_div_fmas_f32 v18, v19, v77, v18
	v_fmac_f32_e32 v20, v78, v73
	v_fma_f32 v19, -v80, v85, v76
	v_fmac_f32_e32 v17, v86, v17
	v_div_scale_f32 v78, s18, v217, v67, v217
	v_rcp_f32_e32 v87, v83
	v_rcp_f32_e32 v77, v88
	v_div_fixup_f32 v89, v18, v21, v89
	v_fma_f32 v18, -v74, v20, v79
	v_fmac_f32_e32 v85, v19, v81
	v_mul_f32_e32 v19, v78, v17
	s_mov_b32 vcc_lo, s19
	v_div_scale_f32 v21, s21, v216, v68, v216
	v_div_fmas_f32 v18, v18, v73, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v73, -v75, v19, v78
	v_fma_f32 v86, -v83, v87, 1.0
	v_fma_f32 v74, -v88, v77, 1.0
	v_fma_f32 v20, -v80, v85, v76
	s_mov_b32 vcc_lo, s20
	v_fmac_f32_e32 v19, v73, v17
	v_fmac_f32_e32 v87, v86, v87
	v_fmac_f32_e32 v77, v74, v77
	v_div_scale_f32 v74, s19, v215, v69, v215
	v_div_fixup_f32 v80, v18, v22, v225
	v_fma_f32 v18, -v75, v19, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v21, v87
	v_div_fmas_f32 v20, v20, v81, v85
	s_mov_b32 vcc_lo, s18
	v_mul_f32_e32 v79, v74, v77
	v_div_fmas_f32 v11, v18, v17, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v83, v76, v21
	v_div_fixup_f32 v81, v20, v23, v224
	v_fma_f32 v20, -v88, v79, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v19, 0xbfb8aa3b, v204 :: v_dual_fmac_f32 v76, v73, v87
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v79, v20, v77
	s_mov_b32 vcc_lo, s21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v83, v76, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0x42800000, s18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v20, -v88, v79, v74
	v_div_fixup_f32 v67, v11, v67, v217
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v23, v223, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v17, v17, v87, v76
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v203
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v10, v20, v77, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	v_ldexp_f32 v9, v19, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v68, v17, v68, v216
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v221, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v10, v10, v69, v215
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v11, v21
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v22, v222, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v201
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v69, v69, v204
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v219, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v13, v209, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v14
	v_ldexp_f32 v8, v11, v73
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v17, v214, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v78, vcc_lo, v204, v69, v204
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v202
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_ldexp_f32 v8, v9, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v70, v74, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v21, v220, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v75, v11
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v208, v81
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v77, 1.0, v8 :: v_dual_fmac_f32 v74, v9, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v212, v82
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v82, s18, v203, v71, v203
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v79, null, v77, v77, v201
	v_mul_f32_e32 v80, v78, v74
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v73, v75, v73
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v218, v16
	v_mul_f32_e32 v16, v213, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, null, v71, v71, v203
	v_fma_f32 v81, -v70, v80, v78
	v_rcp_f32_e32 v75, v79
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v206, v68
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v76, v72
	v_div_scale_f32 v83, s19, v201, v77, v201
	v_fmac_f32_e32 v80, v81, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v31
	s_mov_b32 s75, 0x31027000
	s_mov_b32 s74, 0x7ffffffe
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s69, s69, 0xffff
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v70, v80, v78
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v7, s76, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v72, v76, 1.0
	v_div_fmas_f32 v40, v70, v74, v80
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, s20
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v8, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_div_fixup_f32 v40, v40, v69, v204
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v8, v207, v67 :: v_dual_add_f32 v67, 1.0, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v79, v75, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v14, v211, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v82, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v196
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v81, null, v67, v67, v202
	v_fmac_f32_e32 v75, v73, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v72, v68, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v73, v81
	v_fmac_f32_e32 v68, v78, v76
	v_mul_f32_e32 v78, v83, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v69, -v72, v68, v82
	v_fma_f32 v72, -v79, v78, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v80, -v81, v73, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v70, v74, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v31, v69, v76, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0x42800000, s21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v80, v73
	v_div_scale_f32 v80, s20, v202, v67, v202
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v72, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v195
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v80, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v79, -v79, v78, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v81, v68, v80
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v194
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v75, v79, v75, v78
	v_fmac_f32_e32 v68, v28, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v70, v70, v196
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v74
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v81, v68, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v78, v76
	v_div_fixup_f32 v31, v31, v71, v203
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v50
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v28, v28, v69
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v198, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v27, v73, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v74, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v76, v78, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v193
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v27, v67, v202
	v_div_scale_f32 v73, null, v68, v68, v195
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v78, v72, v78
	v_div_scale_f32 v72, vcc_lo, v196, v70, v196
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v79, v79
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v80, v73
	v_mul_f32_e32 v82, v72, v78
	v_div_fixup_f32 v28, v75, v77, v201
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v12, v210, v89 :: v_dual_mul_f32 v27, v200, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v81, null, v74, v74, v194
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v71, -v76, v82, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v69, v79, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v67, v81
	v_fma_f32 v75, -v73, v80, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v82, v71, v78 :: v_dual_add_f32 v69, 1.0, v69
	v_div_scale_f32 v71, s18, v195, v68, v195
	v_fmac_f32_e32 v80, v75, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v76, v82, v72
	v_div_scale_f32 v77, null, v69, v69, v193
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v81, v67, 1.0
	v_mul_f32_e32 v76, v71, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v72, v72, v78, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v78, v77
	v_fmac_f32_e32 v67, v75, v67
	v_div_scale_f32 v75, s19, v194, v74, v194
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v84, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v79, -v73, v76, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v83, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v197, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v40, v72, v70, v196
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v188
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v77, v78, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v82, v75, v67
	v_fmac_f32_e32 v76, v79, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v72, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v81, v82, v75
	v_fma_f32 v71, -v73, v76, v71
	v_div_scale_f32 v73, s20, v193, v69, v193
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v187
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v82, v70, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v38, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v71, v71, v80, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_exp_f32_e32 v32, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v73, v78
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v81, v82, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v77, v76, v73
	v_div_scale_f32 v81, null, v72, v72, v188
	s_mov_b32 vcc_lo, s19
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v67, v75, v67, v82
	v_rcp_f32_e32 v70, v81
	v_fmac_f32_e32 v76, v38, v78
	v_div_fixup_f32 v38, v71, v68, v195
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v185
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v67, v74, v194
	v_fma_f32 v67, -v77, v76, v73
	s_mov_b32 vcc_lo, s20
	v_div_scale_f32 v73, null, v68, v68, v187
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v80
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v81, v70, 1.0
	v_div_fmas_f32 v67, v67, v78, v76
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v75, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v74, v70
	v_div_scale_f32 v74, s18, v188, v72, v188
	v_div_fixup_f32 v29, v67, v69, v193
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v71, v71, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v74, v70
	v_fma_f32 v77, -v73, v75, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v205, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v186
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v78, -v81, v76, v74
	v_fmac_f32_e32 v75, v77, v75
	v_div_scale_f32 v77, s19, v187, v68, v187
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v69, v69
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v79, null, v71, v71, v185
	v_fmac_f32_e32 v76, v78, v70
	v_mul_f32_e32 v78, v77, v75
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v80, v79
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v192, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v81, v76, v74
	v_fma_f32 v81, -v73, v78, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v69, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v69, v74, v70, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v81, v75
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v79, v80, 1.0
	v_div_fixup_f32 v69, v69, v72, v188
	v_fma_f32 v72, -v73, v78, v77
	v_div_scale_f32 v73, null, v67, v67, v186
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v80, v70, v80
	v_div_scale_f32 v49, s18, v185, v71, v185
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v70, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v162
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	v_mul_f32_e32 v77, v49, v80
	v_div_fmas_f32 v42, v72, v75, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, s20
	v_exp_f32_e32 v76, v76
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v78, -v73, v70, 1.0
	v_div_fixup_f32 v42, v42, v68, v187
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v161
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v79, v77, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v78, v70
	v_div_scale_f32 v78, s19, v186, v67, v186
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v75, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v68, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v39, v76, v74
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v78, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v79, v77, v49
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v79, 1.0, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v73, v68, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v160
	v_ldexp_f32 v72, v75, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v75, null, v79, v79, v162
	v_fmac_f32_e32 v68, v39, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v76, v75
	v_div_fmas_f32 v33, v49, v80, v77
	v_fma_f32 v49, -v73, v68, v78
	v_div_scale_f32 v81, null, v72, v72, v161
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0x42800000, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v78, v81
	v_div_fmas_f32 v49, v49, v70, v68
	v_fma_f32 v80, -v75, v76, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v159
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, vcc_lo, v162, v79, v162
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v39, v39, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v80, v76
	v_div_fixup_f32 v49, v49, v67, v186
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v81, v78, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v74, 1.0, v39 :: v_dual_mul_f32 v77, v68, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v39, v33, v71, v185
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v33, v184, v49 :: v_dual_fmac_f32 v78, v70, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, s18, v161, v72, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v49, -v75, v77, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v67, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v28, v199, v28 :: v_dual_mul_f32 v71, v70, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v74, v74, v160
	v_fmac_f32_e32 v77, v49, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v81, v71, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v82, v80
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v163, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v75, v77, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v73, v78
	v_div_scale_f32 v73, null, v67, v67, v159
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v68, v68, v76, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v81, v71, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v46, v73
	v_fma_f32 v69, -v80, v82, 1.0
	v_div_fixup_f32 v68, v68, v79, v162
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_fmac_f32_e32 v82, v69, v82
	v_div_scale_f32 v69, s19, v160, v74, v160
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v156
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v70, v70, v78, v71
	v_fma_f32 v77, -v73, v46, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v69, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v70, v70, v72, v161
	v_fmac_f32_e32 v46, v77, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v80, v71, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v78, s18, v159, v67, v159
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v151
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v36, v41, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v72, v82
	v_mul_f32_e32 v41, v78, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v77, v77
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v79, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v80, v71, v69
	v_fma_f32 v36, -v73, v41, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v149
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v79, v79, v156
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v36, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v75
	v_ldexp_f32 v36, v77, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v183, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v69, v69, v82, v71
	v_fma_f32 v71, -v73, v41, v78
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v35, v72
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v150
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v80, v75, 1.0
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v72, null, v73, v73, v151
	v_div_fmas_f32 v41, v71, v46, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v46, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v36, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v71, v72
	v_div_scale_f32 v78, vcc_lo, v156, v79, v156
	v_div_fixup_f32 v36, v69, v74, v160
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v77, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v35, v41, v67, v159
	v_mul_f32_e32 v69, v78, v75
	v_div_scale_f32 v81, s18, v151, v73, v151
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v46, v46, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v72, v71, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v80, v69, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v190, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v77, v77, v149
	v_fmac_f32_e32 v71, v41, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v157, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v70, 1.0, v46 :: v_dual_fmac_f32 v69, v76, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v239, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v81, v71
	v_div_scale_f32 v83, null, v70, v70, v150
	v_fma_f32 v68, -v80, v69, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v32, v191, v32 :: v_dual_mul_f32 v35, v182, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v80, v83
	v_fma_f32 v78, -v72, v76, v81
	v_div_fmas_f32 v62, v68, v75, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v82, -v67, v74, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v78, v71
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v69, 0xbfb8aa3b, v144 :: v_dual_fmac_f32 v74, v82, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v82, s19, v149, v77, v149
	v_fma_f32 v78, -v83, v80, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v69, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v72, v76, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v75, v82, v74
	v_div_fixup_f32 v62, v62, v79, v156
	v_fmac_f32_e32 v80, v78, v80
	v_div_scale_f32 v78, s20, v150, v70, v150
	v_fma_f32 v79, -v67, v75, v82
	v_div_fmas_f32 v50, v72, v71, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0x42800000, s21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v78, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_ldexp_f32 v68, v69, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v75, v79, v74 :: v_dual_fmac_f32 v76, 0xbfb8aa3b, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v83, v71, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v189, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v67, v75, v82
	v_fmac_f32_e32 v71, v45, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v45, v76
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v142
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v68, v68, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v67, v67, v74, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v79
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v76
	v_fma_f32 v44, -v83, v71, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v45, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v50, v73, v151
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s20
	v_div_fmas_f32 v44, v44, v80, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v74, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v76, v75, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v141
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v44, v44, v70, v150
	v_div_scale_f32 v74, null, v71, v71, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v75, v69, v75
	v_div_scale_f32 v69, vcc_lo, v144, v68, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v78, v78
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v79, 1.0, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v80, v74
	v_mul_f32_e32 v82, v69, v75
	v_div_fixup_f32 v45, v67, v77, v149
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v81, null, v79, v79, v142
	v_fma_f32 v70, -v76, v82, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v146, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v72, v78, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v67, v81
	v_fma_f32 v73, -v74, v80, 1.0
	v_fmac_f32_e32 v82, v70, v75
	v_div_scale_f32 v70, s18, v143, v71, v143
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v80, v73, v80
	v_fma_f32 v69, -v76, v82, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v77, null, v72, v72, v141
	v_div_fmas_f32 v69, v69, v75, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v81, v67, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v75, v77
	v_mul_f32_e32 v76, v70, v80
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v148, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v84, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v73, v67
	v_div_scale_f32 v73, s19, v142, v79, v142
	v_fma_f32 v78, -v74, v76, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v83, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v62, v69, v68, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v136
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v77, v75, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v82, v73, v67
	v_fmac_f32_e32 v76, v78, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v69, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v81, v82, v73
	v_fma_f32 v70, -v74, v76, v70
	v_div_scale_f32 v74, s20, v141, v72, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v135
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v82, v68, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v52, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v70, v70, v80, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	v_exp_f32_e32 v51, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v76, v74, v75 :: v_dual_add_f32 v69, 1.0, v52
	v_fma_f32 v73, -v81, v82, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v77, v76, v74
	v_div_scale_f32 v81, null, v69, v69, v136
	s_mov_b32 vcc_lo, s19
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v51, v51, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v67, v73, v67, v82
	v_rcp_f32_e32 v68, v81
	v_fmac_f32_e32 v76, v52, v75
	v_div_fixup_f32 v52, v70, v71, v143
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v133
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v67, v79, v142
	v_fma_f32 v67, -v77, v76, v74
	s_mov_b32 vcc_lo, s20
	v_div_scale_f32 v73, null, v70, v70, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v80
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v81, v68, 1.0
	v_div_fmas_f32 v67, v67, v75, v76
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v75, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v74, v68
	v_div_scale_f32 v74, s18, v136, v69, v136
	v_div_fixup_f32 v43, v67, v72, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v71, v71, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v74, v68
	v_fma_f32 v77, -v73, v75, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v42, v164, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v72, 0xbfb8aa3b, v134 :: v_dual_add_f32 v71, 1.0, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v78, -v81, v76, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v75, v77, v75
	v_div_scale_f32 v77, s19, v135, v70, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v79, null, v71, v71, v133
	v_fmac_f32_e32 v76, v78, v68
	v_mul_f32_e32 v78, v77, v75
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v80, v79
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v140, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v81, v76, v74
	v_fma_f32 v81, -v73, v78, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v72, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v36, v158, v36 :: v_dual_mul_f32 v51, v139, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v68, v74, v68, v76
	v_fmac_f32_e32 v78, v81, v75
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v79, v80, 1.0
	v_div_fixup_f32 v68, v68, v69, v136
	v_fma_f32 v69, -v73, v78, v77
	v_div_scale_f32 v73, null, v67, v67, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v80, v72, v80
	v_div_scale_f32 v55, s18, v133, v71, v133
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v72, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v132
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	v_mul_f32_e32 v77, v55, v80
	v_div_fmas_f32 v54, v69, v75, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, s20
	v_exp_f32_e32 v76, v76
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v78, -v73, v72, 1.0
	v_div_fixup_f32 v54, v54, v70, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v131
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v79, v77, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v78, v72
	v_div_scale_f32 v78, s19, v134, v67, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v75, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v70, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v76, v74
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v78, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v79, v77, v55
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v79, 1.0, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v73, v70, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v130
	v_ldexp_f32 v69, v75, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v75, null, v79, v79, v132
	v_fmac_f32_e32 v70, v48, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v76
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v76, v75
	v_div_fmas_f32 v47, v55, v80, v77
	v_fma_f32 v55, -v73, v70, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0x42800000, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v81, null, v69, v69, v131
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v55, v55, v72, v70
	v_rcp_f32_e32 v78, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v75, v76, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v129
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, vcc_lo, v132, v79, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v48, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v80, v76
	v_div_fixup_f32 v55, v55, v67, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v81, v78, 1.0
	v_mul_f32_e32 v77, v70, v76
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v48, v47, v71, v133
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v47, v155, v55 :: v_dual_fmac_f32 v78, v72, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v75, v77, v70
	v_div_scale_f32 v72, s18, v131, v69, v131
	v_div_scale_f32 v80, null, v74, v74, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v77, v55, v76
	v_mul_f32_e32 v71, v72, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v67, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v82, v80
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v152, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v75, v77, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v44, v145, v44 :: v_dual_add_f32 v67, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v81, v71, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v68, v68, v76, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v73, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v80, v82, 1.0
	v_div_scale_f32 v73, null, v67, v67, v129
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v81, v71, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v70, v82
	v_rcp_f32_e32 v66, v73
	v_div_scale_f32 v70, s19, v130, v74, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v124
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_div_fixup_f32 v68, v68, v79, v132
	v_div_fmas_f32 v71, v72, v78, v71
	v_mul_f32_e32 v72, v70, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v76, v76
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v73, v66, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v69, v71, v69, v131
	v_fma_f32 v71, -v80, v72, v70
	v_div_scale_f32 v65, s18, v129, v67, v129
	v_fmac_f32_e32 v66, v77, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v71, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	v_ldexp_f32 v71, v76, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v57, v65, v66 :: v_dual_fmac_f32 v78, 0xbfb8aa3b, v123
	v_fma_f32 v70, -v80, v72, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v79, -v73, v57, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v78, v78
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v107
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v71, v71, v124
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v79, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v79, v80
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v77, v78, v77
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	v_fma_f32 v65, -v73, v57, v65
	v_div_fmas_f32 v70, v70, v82, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v56, v56, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v80, v79, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v122
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v50, v147, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, null, v72, v72, v123
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v78, 1.0, v56 :: v_dual_fmac_f32 v79, v73, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, s19, v124, v71, v124
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v75, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_rcp_f32_e32 v81, v77
	v_div_fmas_f32 v56, v65, v66, v57
	v_div_scale_f32 v65, null, v78, v78, v107
	v_mul_f32_e32 v66, v73, v79
	v_div_fixup_f32 v57, v70, v74, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v56, v56, v67, v129
	v_rcp_f32_e32 v70, v65
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v75, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v80, v66, v73
	v_fma_f32 v75, -v77, v81, 1.0
	s_mov_b32 vcc_lo, s19
	v_div_scale_f32 v82, s20, v107, v78, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v66, v74, v79
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v76, 1.0, v67 :: v_dual_fmac_f32 v81, v75, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, s18, v123, v72, v123
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v65, v70, 1.0
	v_fma_f32 v73, -v80, v66, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v75, null, v76, v76, v122
	v_mul_f32_e32 v80, v74, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v70, v67, v70
	v_div_fmas_f32 v66, v73, v79, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v83, v75
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v67, v126, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v77, v80, v74
	v_mul_f32_e32 v73, v82, v70
	v_div_fixup_f32 v66, v66, v71, v124
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v80, v69, v81
	v_fma_f32 v69, -v65, v73, v82
	v_fma_f32 v64, -v75, v83, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v105
	v_cndmask_b32_e64 v84, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v77, v80, v74
	v_fmac_f32_e32 v73, v69, v70
	v_fmac_f32_e32 v83, v64, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v69, v79
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v99
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v63, s19, v122, v76, v122
	v_div_fmas_f32 v74, v74, v81, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	v_exp_f32_e32 v61, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v77, v63, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v69, v69, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v65, v73, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v79, -v75, v77, v63
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v104
	v_ldexp_f32 v61, v61, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v65, v65, v70, v73
	v_fmac_f32_e32 v77, v79, v83
	v_div_scale_f32 v70, null, v69, v69, v105
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	v_exp_f32_e32 v59, v80
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v75, v77, v63
	v_rcp_f32_e32 v73, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v79, null, v61, v61, v99
	s_mov_b32 vcc_lo, s19
	v_div_fixup_f32 v72, v74, v72, v123
	v_div_fmas_f32 v63, v63, v83, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v59, v59, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v77, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v103
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v70, v73, 1.0
	v_div_scale_f32 v81, vcc_lo, v105, v69, v105
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v59, v63, v76, v122
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v76, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v71, v73
	v_div_fixup_f32 v64, v65, v78, v107
	v_div_scale_f32 v80, null, v74, v74, v104
	v_fma_f32 v63, -v79, v77, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v78, v81, v73
	v_div_scale_f32 v82, s18, v99, v61, v99
	v_rcp_f32_e32 v65, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v77, v63, v77 :: v_dual_mul_f32 v62, v138, v62
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v121, v64
	v_mul_f32_e32 v64, v120, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v72, v76, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v70, v78, v81
	v_dual_mul_f32 v76, v82, v77 :: v_dual_mul_f32 v71, v115, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v58
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v83, -v80, v65, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v75, v73
	v_fma_f32 v72, -v79, v76, v82
	v_div_scale_f32 v75, s19, v104, v74, v104
	v_fmac_f32_e32 v65, v83, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v70, v78, v81
	v_fmac_f32_e32 v76, v72, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v84, 0, 0x42800000, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v83, null, v66, v66, v103
	v_mul_f32_e32 v58, v75, v65
	v_div_fmas_f32 v70, v70, v73, v78
	v_fma_f32 v73, -v79, v76, v82
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v96
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v78, -v80, v58, v75
	v_rcp_f32_e32 v72, v83
	v_div_fmas_f32 v73, v73, v77, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	v_exp_f32_e32 v76, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v78, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v69, v70, v69, v105
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v83, v72, 1.0
	v_fma_f32 v75, -v80, v58, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v98
	v_ldexp_f32 v76, v76, v81
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v53, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v78, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v90
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, s18, v103, v66, v103
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v76, 1.0, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v58, v75, v65, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v75, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v80, v34, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v77, v78, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v79, null, v76, v76, v96
	v_fma_f32 v65, -v83, v80, v34
	v_div_fixup_f32 v58, v58, v74, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v77, 1.0, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v75, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v80, v65, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, null, v77, v77, v98
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v83, v80, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v78, v53
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v75, -v79, v74, 1.0
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v34, v34, v72, v80
	v_div_scale_f32 v72, null, v30, v30, v90
	v_fmac_f32_e32 v74, v75, v74
	v_div_scale_f32 v75, vcc_lo, v96, v76, v96
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v80, -v53, v78, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v97
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v34, v66, v103
	v_rcp_f32_e32 v82, v72
	v_mul_f32_e32 v83, v75, v74
	v_fmac_f32_e32 v78, v80, v78
	v_div_scale_f32 v80, s18, v98, v77, v98
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v81, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v66, v73, v61, v99
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v65, v119, v34
	v_mul_f32_e32 v61, v118, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v79, v83, v75
	v_mul_f32_e32 v58, v80, v78
	v_fma_f32 v73, -v72, v82, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v52, v137, v52 :: v_dual_mul_f32 v59, v106, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v83, v34, v74
	v_fma_f32 v34, -v53, v58, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v73, v82
	v_div_scale_f32 v73, s19, v90, v30, v90
	v_fma_f32 v75, -v79, v83, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v58, v34, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v81, v81, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v34, v73, v82
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v116, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v74, v75, v74, v83
	v_fma_f32 v53, -v53, v58, v80
	s_mov_b32 vcc_lo, s18
	v_fma_f32 v75, -v72, v34, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v6
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v53, v78, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, s20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v75, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v69, v69, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v91
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v72, v34, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v58
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v24, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v154, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v6, v72, v82, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v78
	v_cndmask_b32_e64 v78, 0, 0x42800000, s18
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v94
	v_ldexp_f32 v53, v58, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v6, v6, v30, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s18
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v95
	v_exp_f32_e32 v58, v79
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v80, -v25, v24, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v34, v75
	v_exp_f32_e32 v53, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v26, v77, v98
	v_div_scale_f32 v75, null, v30, v30, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v24, v80, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v58, v58, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, vcc_lo, v97, v69, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v78, null, v34, v34, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v53, v53, v72
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v58, 1.0, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v153, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v77, v75
	v_rcp_f32_e32 v80, v78
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, null, v58, v58, v94
	v_mul_f32_e32 v79, v73, v24
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v128, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v84, null, v53, v53, v95
	v_rcp_f32_e32 v82, v72
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v75, v77, 1.0
	v_fma_f32 v83, -v25, v79, v73
	v_rcp_f32_e32 v86, v84
	v_fma_f32 v85, -v78, v80, 1.0
	v_div_fixup_f32 v74, v74, v76, v96
	v_fmac_f32_e32 v77, v81, v77
	v_div_scale_f32 v81, s18, v91, v30, v91
	v_fmac_f32_e32 v79, v83, v24
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v83, -v72, v82, 1.0
	v_fmac_f32_e32 v80, v85, v80
	v_div_scale_f32 v85, s19, v93, v34, v93
	v_fma_f32 v88, -v84, v86, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v87, v81, v77 :: v_dual_fmac_f32 v82, v83, v82
	v_div_scale_f32 v83, s20, v94, v58, v94
	v_fma_f32 v25, -v25, v79, v73
	v_dual_mul_f32 v89, v85, v80 :: v_dual_fmac_f32 v86, v88, v86
	v_div_scale_f32 v88, s21, v95, v53, v95
	v_fma_f32 v73, -v75, v87, v81
	v_mul_f32_e32 v90, v83, v82
	v_div_fmas_f32 v24, v25, v24, v79
	v_fma_f32 v25, -v78, v89, v85
	v_mul_f32_e32 v79, v88, v86
	v_fmac_f32_e32 v87, v73, v77
	v_fma_f32 v73, -v72, v90, v83
	v_div_fixup_f32 v24, v24, v69, v97
	v_fmac_f32_e32 v89, v25, v80
	v_fma_f32 v25, -v84, v79, v88
	v_fma_f32 v69, -v75, v87, v81
	v_fmac_f32_e32 v90, v73, v82
	s_mov_b32 vcc_lo, s18
	v_fma_f32 v73, -v78, v89, v85
	v_fmac_f32_e32 v79, v25, v86
	v_div_fmas_f32 v69, v69, v77, v87
	v_fma_f32 v25, -v72, v90, v83
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v75, v109, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v84, v79, v88
	v_div_fmas_f32 v77, v73, v80, v89
	s_mov_b32 vcc_lo, s20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v73, v110, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v82, v90
	s_mov_b32 vcc_lo, s21
	v_div_fixup_f32 v26, v69, v30, v91
	v_div_fmas_f32 v78, v72, v86, v79
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v72, v114, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v25, v58, v94
	v_div_fixup_f32 v25, v77, v34, v93
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v76, v108, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v6, v78, v53, v95
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v74, v100, v26
	v_mul_f32_e32 v58, v102, v24
.Ltmp15:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v24, |v28|, |v40|, |v38|
	v_max3_f32 v26, |v49|, |v42|, |v39|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v53, v92, v6
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v6, |v37|, |v31|
	v_max3_f32 v30, |v33|, |v22|, |v20|
.Ltmp18:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v101, v25
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v32|, |v29|, |v23|
.Ltmp20:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v127, v57
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v6, |v27|, v24
	v_max3_f32 v24, v26, v30, |v21|
	v_max_f32_e64 v34, |v46|, |v41|
	v_max3_f32 v77, |v36|, |v60|, |v50|
	v_max3_f32 v78, |v62|, |v52|, |v51|
	v_max3_f32 v79, |v43|, |v18|, |v17|
	v_max3_f32 v24, v6, v25, v24
.Ltmp22:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v125, v68
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, |v45|, |v44|, |v19|
	v_max3_f32 v30, v34, |v35|, v77
	v_max3_f32 v34, v78, v79, |v16|
	v_max_f32_e64 v77, |v55|, |v54|
	v_max3_f32 v78, |v48|, |v68|, |v67|
	v_max3_f32 v79, |v71|, |v64|, |v63|
	v_max3_f32 v80, |v59|, |v14|, |v12|
.Ltmp24:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v66, v117, v66
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, v30, v26, v34
	v_max3_f32 v6, |v57|, |v56|, |v15|
	v_max3_f32 v26, v77, |v47|, v78
	v_max3_f32 v30, v79, v80, |v13|
	s_mov_b32 s18, 0x76543210
	v_max_f32_e64 v34, |v70|, |v66|
	v_max3_f32 v77, |v61|, |v76|, |v75|
	v_max3_f32 v78, |v74|, |v69|, |v58|
	v_max3_f32 v79, |v53|, |v8|, |v9|
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v80, v24, s18, 0xfedcba98 op_sel:[1,0]
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, v26, v6, v30
	v_max3_f32 v30, |v73|, |v72|, |v11|
	v_max3_f32 v34, v34, |v65|, v77
	v_max3_f32 v77, v78, v79, |v10|
	v_max_f32_e32 v78, v80, v80
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v79, v25, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v80, v26, s18, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v83, 4, v0
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v34, v34, v30, v77
	v_max_f32_e32 v77, v24, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_max_f32 v79, v79, v79 :: v_dual_max_f32 v80, v80, v80
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v24, 3, v0
	v_lshlrev_b32_e32 v30, 4, v0
	v_and_b32_e32 v84, 8, v0
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v78, v25, v79 :: v_dual_max_f32 v79, v26, v80
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v80, v24, 9, 0
	v_lshlrev_b32_e32 v81, 5, v24
	v_permlanex16_b32 v26, v34, s18, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v25, 0x60, v0
	v_lshlrev_b32_e32 v85, 1, v113
	v_lshl_add_u32 v80, v83, 2, v80
	v_and_or_b32 v82, 0x680, v30, v81
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v26, v26, v26
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v81, v81, v25
	v_lshrrev_b32_e32 v87, 3, v113
	v_lshl_add_u32 v86, v84, 4, v80
	v_xor_b32_e32 v82, v82, v25
	v_lshl_add_u32 v88, v83, 6, 0
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v34, v26
.Ltmp36:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v34, 42, v255
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v26, v86, v85, v81
.Ltmp38:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s19, s76, v5
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v81, v88, v87, v82
.Ltmp40:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s77, 0, s19
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v26, v[77:80]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[77:80], v81
.Ltmp42:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v81, s18, s76, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v82, null, s77, 0, s18
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[70:71], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 40, v255
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[64:65], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[70:71], v[5:6]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v5, 38, v255
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[64:65], v[81:82]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s23, s76, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v4, null, s77, 0, s23
	v_add_co_u32 v5, s23, s76, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v6, null, s77, 0, s23
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[64:65], v[3:4]
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v26, v77
.Ltmp44:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[70:71], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 36, v255
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[64:65], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[70:71], v[5:6]
.Ltmp45:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v26, v26 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v34, v79
.Ltmp46:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s27, s76, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v4, null, s77, 0, s27
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v26, v26
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v26, v78 :: v_dual_max_f32 v5, v77, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp49:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[70:71], v[3:4]
.Ltmp50:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v26, v26 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v80, v80
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v80, v80 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v6
	v_max_f32_e32 v4, v78, v78
	v_max_f32_e32 v6, v26, v26
	v_max_f32_e32 v26, v79, v79
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v77, v80, v80
.Ltmp54:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v78, 34, v255
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v79, v5 :: v_dual_max_f32 v6, v4, v6
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v26, v26, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, v3, v77
.Ltmp57:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s29, s76, v78
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v77, v6
	v_mov_b32_e32 v78, v26
	v_mov_b32_e32 v80, v34
.Ltmp59:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s77, 0, s29
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v79, v79
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[70:71], v[3:4]
.Ltmp63:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v79
	v_dual_max_f32 v3, v77, v77 :: v_dual_max_f32 v4, v78, v78
	v_max_f32_e32 v77, v80, v80
.Ltmp64:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v78, 32, v255
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v79, v5 :: v_dual_max_f32 v6, v6, v3
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v26, v26, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v77, v34, v77
.Ltmp67:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s31, s76, v78
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v34, v6
	v_mov_b32_e32 v78, v26
	v_mov_b32_e32 v80, v77
.Ltmp69:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s77, 0, s31
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v79, v79
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[70:71], v[81:82]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[64:65], v[3:4]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[70:71], v[3:4]
.Ltmp73:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v5, v79 :: v_dual_max_f32 v4, v34, v34
	v_dual_max_f32 v5, v78, v78 :: v_dual_max_f32 v78, v80, v80
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v79, 1, v25
	v_lshlrev_b32_e32 v80, 3, v84
	v_add_nc_u32_e32 v81, 0, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v26, v5 :: v_dual_lshlrev_b32 v34, 4, v24
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v26, 5, v83
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v6, v4
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v24, v81, v79, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v79, 0, v34
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v77, v78
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp81:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v77, s34, s76, v181
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v26, v79, v26, v80
	ds_store_b128 v24, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp83:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v78, null, s77, 0, s34
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[3:6], v26
.Ltmp85:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v79, s34, s76, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v80, null, s77, 0, s34
	v_add_co_u32 v81, s34, s76, v179
	v_add_co_ci_u32_e64 v82, null, s77, 0, s34
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[64:65], v[77:78]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[70:71], v[77:78]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v77, s39, s76, v178
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[64:65], v[79:80]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[70:71], v[79:80]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v78, null, s77, 0, s39
	v_add_co_u32 v79, s39, s76, v177
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v80, null, s77, 0, s39
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v3, v3, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s40, s[64:65], v[77:78]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[70:71], v[77:78]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v77, s44, s76, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v24, 0x2b8cbccc, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[64:65], v[79:80]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[70:71], v[79:80]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v78, null, s77, 0, s44
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v3, null, 0x40e00000, 0x40e00000, v24
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v79, s44, s76, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v80, null, s77, 0, s44
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v26, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[64:65], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[70:71], v[81:82]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v81, s44, s76, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_add_co_ci_u32_e64 v82, null, s77, 0, s44
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[64:65], v[79:80]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[70:71], v[79:80]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v5, v5, v5
	v_fma_f32 v79, -v3, v26, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[64:65], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[70:71], v[81:82]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v81, vcc_lo, v24, 0x40e00000, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_max_f32 v5, 0x2b8cbccc, v5 :: v_dual_fmac_f32 v26, v79, v26
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[64:65], v[77:78]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[70:71], v[77:78]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v77, s50, s76, v172
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v82, v81, v26
	v_div_scale_f32 v83, null, 0x40e00000, 0x40e00000, v5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v78, null, s77, 0, s50
	v_add_co_u32 v79, s50, s76, v171
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v80, null, s77, 0, s50
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v84, -v3, v82, v81
	v_rcp_f32_e32 v85, v83
	v_max_f32_e32 v4, v4, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[64:65], v[77:78]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[70:71], v[77:78]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v77, s53, s76, v170
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[64:65], v[79:80]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v78, null, s77, 0, s53
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v82, v84, v26
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[70:71], v[79:80]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v79, 0x2b8cbccc, v4
	v_fma_f32 v4, -v83, v85, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v3, -v3, v82, v81
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v87.h, 0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v6, 0x2b8cbccc, v6
	v_div_scale_f32 v81, null, 0x40e00000, 0x40e00000, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v26, v3, v26, v82
	v_fmac_f32_e32 v85, v4, v85
	v_div_scale_f32 v80, vcc_lo, v5, 0x40e00000, v5
	v_div_scale_f32 v82, null, 0x40e00000, 0x40e00000, v6
	v_rcp_f32_e32 v84, v81
	v_div_fixup_f32 v24, v26, 0x40e00000, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v26, v80, v85
	v_rcp_f32_e32 v86, v82
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s55, s76, v169
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[64:65], v[77:78]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s77, 0, s55
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[70:71], v[77:78]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v77, -v83, v26, v80
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v78.l, v24.h
	v_mov_b16_e32 v78.h, v87.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v88, -v81, v84, 1.0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[70:71], v[3:4]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v26, v77, v85
	v_fma_f32 v3, -v82, v86, 1.0
	v_dual_fmac_f32 v84, v88, v84 :: v_dual_and_b32 v77, 1, v78
	v_div_scale_f32 v78, s60, v79, 0x40e00000, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v3, v86
	v_div_scale_f32 v88, s61, v6, 0x40e00000, v6
	v_fma_f32 v80, -v83, v26, v80
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_add3_u32 v24, v24, v77, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v77, v78, v84
	v_mul_f32_e32 v83, v88, v86
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s58, s76, v168
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v26, v80, v85, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v81, v77, v78
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v85, 0xffff0000, v24
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s77, 0, s58
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v89, -v82, v83, v88
	v_fmac_f32_e32 v77, v80, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v80, null, v85, v85, v37
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[64:65], v[3:4]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v83, v89, v86
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[70:71], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v81, v77, v78
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v81, v80
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v26, v26, 0x40e00000, v5
	v_fma_f32 v4, -v82, v83, v88
	v_div_fmas_f32 v3, v3, v84, v77
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v82, null, v85, v85, v31
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s61
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v87.l, v26.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v4, v4, v86, v83
	v_div_fixup_f32 v78, v3, 0x40e00000, v79
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v3, -v80, v81, 1.0
	v_rcp_f32_e32 v83, v82
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v77, 1, v87
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v4, v4, 0x40e00000, v6
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v79.l, v78.h
	v_mov_b16_e32 v79.h, v87.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v3, v81
	v_div_scale_f32 v84, vcc_lo, v37, v85, v37
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v26, v77, 0x7fff
	v_mov_b16_e32 v87.l, v4.h
	v_and_b32_e32 v26, 1, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v86, v84, v81
	v_fma_f32 v77, -v82, v83, 1.0
	v_div_scale_f32 v88, null, v85, v85, v27
	v_div_scale_f32 v89, null, v85, v85, v28
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s60, s76, v167
	v_add_co_ci_u32_e64 v6, null, s77, 0, s60
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v79, 1, v87
	v_add3_u32 v26, v78, v26, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v80, v86, v84
	v_fmac_f32_e32 v83, v77, v83
	v_rcp_f32_e32 v87, v88
	v_div_scale_f32 v90, s60, v31, v85, v31
	v_rcp_f32_e32 v91, v89
	v_fmac_f32_e32 v86, v78, v81
	v_div_scale_f32 v95, null, v85, v85, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v92, v90, v83
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v4, v79, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v80, v86, v84
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v93, -v88, v87, 1.0
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v79, 0xffff0000, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v82, v92, v90
	v_fma_f32 v94, -v89, v91, 1.0
	v_div_fmas_f32 v80, v80, v81, v86
	v_fmac_f32_e32 v87, v93, v87
	v_div_scale_f32 v93, s61, v27, v85, v27
	v_fmac_f32_e32 v92, v84, v83
	v_fmac_f32_e32 v91, v94, v91
	v_rcp_f32_e32 v84, v95
	v_div_scale_f32 v94, null, v85, v85, v38
	v_mul_f32_e32 v81, v93, v87
	v_div_scale_f32 v86, s62, v28, v85, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v96, v94
	v_div_fixup_f32 v37, v80, v85, v37
	v_fma_f32 v80, -v82, v92, v90
	v_fma_f32 v82, -v88, v81, v93
	v_mul_f32_e32 v90, v86, v91
	v_fma_f32 v97, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v78, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v83, v92
	v_fmac_f32_e32 v81, v82, v87
	v_fma_f32 v82, -v89, v90, v86
	v_fmac_f32_e32 v84, v97, v84
	v_div_scale_f32 v83, s60, v40, v85, v40
	v_fma_f32 v92, -v94, v96, 1.0
	v_div_fixup_f32 v31, v80, v85, v31
	v_fma_f32 v80, -v88, v81, v93
	v_fmac_f32_e32 v90, v82, v91
	v_mul_f32_e32 v82, v83, v84
	v_fmac_f32_e32 v96, v92, v96
	v_div_scale_f32 v92, null, v85, v85, v32
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v88, s63, v38, v85, v38
	v_div_fmas_f32 v80, v80, v87, v81
	v_fma_f32 v81, -v89, v90, v86
	v_fma_f32 v86, -v95, v82, v83
	v_rcp_f32_e32 v87, v92
	v_div_scale_f32 v93, null, v85, v85, v29
	v_mul_f32_e32 v89, v88, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v86, v84
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v81, v81, v91, v90
	v_fma_f32 v90, -v94, v89, v88
	v_div_fixup_f32 v27, v80, v85, v27
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v92, v87, 1.0
	v_fma_f32 v80, -v95, v82, v83
	v_div_fixup_f32 v28, v81, v85, v28
	v_fmac_f32_e32 v89, v90, v96
	v_div_scale_f32 v81, s61, v32, v85, v32
	v_fmac_f32_e32 v87, v91, v87
	v_fma_f32 v83, -v93, v86, 1.0
	v_div_scale_f32 v90, null, v85, v85, v23
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v91, null, v85, v85, v49
	v_div_fmas_f32 v80, v80, v84, v82
	v_fma_f32 v82, -v94, v89, v88
	v_mul_f32_e32 v84, v81, v87
	v_fmac_f32_e32 v86, v83, v86
	v_rcp_f32_e32 v83, v90
	v_div_scale_f32 v88, s60, v29, v85, v29
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v40, v80, v85, v40
	v_div_fmas_f32 v82, v82, v96, v89
	v_fma_f32 v89, -v92, v84, v81
	v_mul_f32_e32 v94, v88, v86
	v_rcp_f32_e32 v96, v91
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v90, v83, 1.0
	v_fmac_f32_e32 v84, v89, v87
	v_fma_f32 v80, -v93, v94, v88
	v_div_scale_f32 v89, null, v85, v85, v42
	v_div_fixup_f32 v38, v82, v85, v38
	v_fmac_f32_e32 v83, v95, v83
	v_div_scale_f32 v82, s62, v23, v85, v23
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v91, v96, 1.0
	v_fma_f32 v81, -v92, v84, v81
	v_fmac_f32_e32 v94, v80, v86
	v_rcp_f32_e32 v92, v89
	v_mul_f32_e32 v80, v82, v83
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s63, v49, v85, v49
	v_div_fmas_f32 v81, v81, v87, v84
	v_fma_f32 v84, -v93, v94, v88
	v_div_scale_f32 v97, null, v85, v85, v39
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v87, -v90, v80, v82
	v_mul_f32_e32 v88, v95, v96
	v_fma_f32 v93, -v89, v92, 1.0
	v_div_fmas_f32 v84, v84, v86, v94
	v_rcp_f32_e32 v86, v97
	v_fmac_f32_e32 v80, v87, v83
	v_fma_f32 v87, -v91, v88, v95
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, s60, v42, v85, v42
	v_div_fixup_f32 v32, v81, v85, v32
	v_div_fixup_f32 v29, v84, v85, v29
	v_fma_f32 v81, -v90, v80, v82
	v_fmac_f32_e32 v88, v87, v96
	v_mul_f32_e32 v82, v93, v92
	v_fma_f32 v84, -v97, v86, 1.0
	v_div_scale_f32 v87, null, v85, v85, v33
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v90, s61, v39, v85, v39
	v_div_fmas_f32 v80, v81, v83, v80
	v_fma_f32 v81, -v91, v88, v95
	v_fma_f32 v83, -v89, v82, v93
	v_fmac_f32_e32 v86, v84, v86
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v91, null, v85, v85, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v83, v92
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v23, v80, v85, v23
	v_rcp_f32_e32 v83, v91
	v_div_fmas_f32 v81, v81, v96, v88
	v_mul_f32_e32 v88, v90, v86
	v_fma_f32 v80, -v89, v82, v93
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v94, -v87, v84, 1.0
	v_div_scale_f32 v89, s62, v33, v85, v33
	v_div_fixup_f32 v49, v81, v85, v49
	v_fma_f32 v81, -v97, v88, v90
	v_fmac_f32_e32 v84, v94, v84
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v91, v83, 1.0
	v_div_scale_f32 v94, null, v85, v85, v20
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v88, v81, v86
	v_div_fmas_f32 v80, v80, v92, v82
	v_mul_f32_e32 v81, v89, v84
	v_fmac_f32_e32 v83, v93, v83
	v_rcp_f32_e32 v82, v94
	v_div_scale_f32 v92, s60, v22, v85, v22
	v_div_scale_f32 v93, null, v85, v85, v21
	v_div_fixup_f32 v42, v80, v85, v42
	v_fma_f32 v80, -v97, v88, v90
	v_fma_f32 v90, -v87, v81, v89
	v_mul_f32_e32 v95, v92, v83
	v_rcp_f32_e32 v96, v93
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v94, v82, 1.0
	v_div_fmas_f32 v80, v80, v86, v88
	v_fmac_f32_e32 v81, v90, v84
	v_fma_f32 v86, -v91, v95, v92
	v_div_scale_f32 v88, s61, v20, v85, v20
	v_fmac_f32_e32 v82, v97, v82
	v_div_fixup_f32 v39, v80, v85, v39
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v93, v96, 1.0
	v_fma_f32 v80, -v87, v81, v89
	v_fmac_f32_e32 v95, v86, v83
	v_div_scale_f32 v89, null, v79, v79, v46
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v86, v88, v82
	v_fmac_f32_e32 v96, v90, v96
	v_div_scale_f32 v87, s63, v21, v85, v21
	v_div_fmas_f32 v80, v80, v84, v81
	v_fma_f32 v81, -v91, v95, v92
	v_rcp_f32_e32 v90, v89
	v_div_scale_f32 v92, null, v79, v79, v41
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v84, -v94, v86, v88
	v_mul_f32_e32 v91, v87, v96
	v_div_fmas_f32 v81, v81, v83, v95
	v_rcp_f32_e32 v83, v92
	v_div_fixup_f32 v33, v80, v85, v33
	v_fmac_f32_e32 v86, v84, v82
	v_fma_f32 v84, -v93, v91, v87
	v_fma_f32 v95, -v89, v90, 1.0
	v_div_fixup_f32 v22, v81, v85, v22
	v_div_scale_f32 v81, s60, v46, v79, v46
	v_fma_f32 v80, -v94, v86, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v91, v84, v96 :: v_dual_fmac_f32 v90, v95, v90
	v_fma_f32 v84, -v92, v83, 1.0
	v_div_scale_f32 v88, null, v79, v79, v35
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v77, 0xffff0000, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v82, v86
	v_fma_f32 v82, -v93, v91, v87
	v_dual_mul_f32 v86, v81, v90 :: v_dual_fmac_f32 v83, v84, v83
	v_rcp_f32_e32 v84, v88
	v_div_scale_f32 v87, s61, v41, v79, v41
	v_div_scale_f32 v93, null, v79, v79, v36
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v94, v87, v83
	v_div_fmas_f32 v82, v82, v96, v91
	v_fma_f32 v91, -v89, v86, v81
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v88, v84, 1.0
	v_div_fixup_f32 v20, v80, v85, v20
	v_fma_f32 v80, -v92, v94, v87
	v_fmac_f32_e32 v86, v91, v90
	v_div_fixup_f32 v21, v82, v85, v21
	v_fmac_f32_e32 v84, v95, v84
	v_div_scale_f32 v82, s62, v35, v79, v35
	v_div_scale_f32 v85, null, v79, v79, v60
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v93, v96, 1.0
	v_fma_f32 v81, -v89, v86, v81
	v_fmac_f32_e32 v94, v80, v83
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v80, v82, v84
	v_rcp_f32_e32 v89, v85
	v_fmac_f32_e32 v96, v91, v96
	v_div_scale_f32 v91, s63, v36, v79, v36
	v_div_fmas_f32 v81, v81, v90, v86
	v_fma_f32 v86, -v92, v94, v87
	v_div_scale_f32 v95, null, v79, v79, v50
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v87, -v88, v80, v82
	v_mul_f32_e32 v90, v91, v96
	v_div_fmas_f32 v83, v86, v83, v94
	v_rcp_f32_e32 v86, v95
	v_fma_f32 v92, -v85, v89, 1.0
	v_fmac_f32_e32 v80, v87, v84
	v_fma_f32 v87, -v93, v90, v91
	v_div_fixup_f32 v41, v83, v79, v41
	v_div_fixup_f32 v46, v81, v79, v46
	v_fmac_f32_e32 v89, v92, v89
	v_div_scale_f32 v92, s60, v60, v79, v60
	v_fmac_f32_e32 v90, v87, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v95, v86, 1.0
	v_div_scale_f32 v87, null, v79, v79, v45
	v_fma_f32 v81, -v88, v80, v82
	v_mul_f32_e32 v82, v92, v89
	v_fmac_f32_e32 v86, v83, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v83, v87
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v88, s61, v50, v79, v50
	v_div_fmas_f32 v80, v81, v84, v80
	v_fma_f32 v81, -v93, v90, v91
	v_fma_f32 v84, -v85, v82, v92
	v_div_scale_f32 v91, null, v79, v79, v44
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v87, v83, 1.0
	v_fmac_f32_e32 v82, v84, v89
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v81, v81, v96, v90
	v_mul_f32_e32 v90, v88, v86
	v_div_fixup_f32 v35, v80, v79, v35
	v_fma_f32 v80, -v85, v82, v92
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v93, null, v79, v79, v19
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v36, v81, v79, v36
	v_fma_f32 v81, -v95, v90, v88
	v_div_scale_f32 v85, s62, v45, v79, v45
	v_fma_f32 v92, -v91, v84, 1.0
	v_div_fmas_f32 v80, v80, v89, v82
	v_rcp_f32_e32 v82, v93
	v_fmac_f32_e32 v90, v81, v86
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v81, v85, v83 :: v_dual_fmac_f32 v84, v92, v84
	v_div_scale_f32 v89, s60, v44, v79, v44
	v_div_scale_f32 v92, null, v79, v79, v62
	v_div_fixup_f32 v60, v80, v79, v60
	v_fma_f32 v80, -v95, v90, v88
	v_fma_f32 v88, -v87, v81, v85
	v_mul_f32_e32 v94, v89, v84
	v_rcp_f32_e32 v95, v92
	v_fma_f32 v96, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v81, v88, v83
	v_div_fmas_f32 v80, v80, v86, v90
	v_fma_f32 v86, -v91, v94, v89
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v88, s61, v19, v79, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v50, v80, v79, v50
	v_fma_f32 v90, -v92, v95, 1.0
	v_fma_f32 v80, -v87, v81, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v94, v86, v84 :: v_dual_mul_f32 v85, v88, v82
	v_div_scale_f32 v87, null, v79, v79, v52
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v95, v90, v95
	v_div_scale_f32 v86, s63, v62, v79, v62
	v_div_fmas_f32 v80, v80, v83, v81
	v_fma_f32 v81, -v91, v94, v89
	v_fma_f32 v83, -v93, v85, v88
	v_rcp_f32_e32 v89, v87
	v_div_scale_f32 v91, null, v79, v79, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v90, v86, v95 :: v_dual_fmac_f32 v85, v83, v82
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v83, v91
	v_div_fmas_f32 v81, v81, v84, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v84, -v92, v90, v86
	v_div_fixup_f32 v45, v80, v79, v45
	v_fma_f32 v94, -v87, v89, 1.0
	v_fma_f32 v80, -v93, v85, v88
	v_div_fixup_f32 v44, v81, v79, v44
	v_fmac_f32_e32 v90, v84, v95
	v_div_scale_f32 v81, s60, v52, v79, v52
	v_fmac_f32_e32 v89, v94, v89
	v_fma_f32 v84, -v91, v83, 1.0
	v_div_scale_f32 v88, null, v79, v79, v43
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v96, null, v79, v79, v16
	v_div_fmas_f32 v80, v80, v82, v85
	v_fma_f32 v82, -v92, v90, v86
	v_mul_f32_e32 v85, v81, v89
	v_fmac_f32_e32 v83, v84, v83
	v_rcp_f32_e32 v84, v88
	v_div_scale_f32 v86, s61, v51, v79, v51
	v_div_scale_f32 v92, null, v79, v79, v18
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v93, v86, v83
	v_div_fmas_f32 v82, v82, v95, v90
	v_fma_f32 v90, -v87, v85, v81
	v_rcp_f32_e32 v95, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v88, v84, 1.0
	v_div_fixup_f32 v19, v80, v79, v19
	v_fma_f32 v80, -v91, v93, v86
	v_fmac_f32_e32 v85, v90, v89
	v_div_fixup_f32 v62, v82, v79, v62
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v82, s62, v43, v79, v43
	v_div_scale_f32 v90, null, v79, v79, v17
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v92, v95, 1.0
	v_fma_f32 v81, -v87, v85, v81
	v_fmac_f32_e32 v93, v80, v83
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v80, v82, v84
	v_rcp_f32_e32 v87, v90
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s63, v18, v79, v18
	v_div_fmas_f32 v81, v81, v89, v85
	v_fma_f32 v85, -v91, v93, v86
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v86, -v88, v80, v82
	v_mul_f32_e32 v89, v94, v95
	v_div_fixup_f32 v52, v81, v79, v52
	v_div_fmas_f32 v83, v85, v83, v93
	v_rcp_f32_e32 v85, v96
	v_fma_f32 v91, -v90, v87, 1.0
	v_fmac_f32_e32 v80, v86, v84
	v_fma_f32 v86, -v92, v89, v94
	v_div_fixup_f32 v51, v83, v79, v51
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s60, v17, v79, v17
	v_fmac_f32_e32 v89, v86, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v96, v85, 1.0
	v_div_scale_f32 v86, null, v78, v78, v55
	v_fma_f32 v81, -v88, v80, v82
	v_mul_f32_e32 v82, v91, v87
	v_fmac_f32_e32 v85, v83, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v88, s61, v16, v79, v16
	v_div_fmas_f32 v80, v81, v84, v80
	v_fma_f32 v81, -v92, v89, v94
	v_fma_f32 v84, -v90, v82, v91
	v_div_scale_f32 v92, null, v78, v78, v54
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v43, v80, v79, v43
	v_fmac_f32_e32 v82, v84, v87
	v_rcp_f32_e32 v84, v92
	v_fma_f32 v93, -v86, v83, 1.0
	v_div_fmas_f32 v81, v81, v95, v89
	v_mul_f32_e32 v89, v88, v85
	v_fma_f32 v80, -v90, v82, v91
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v93, null, v78, v78, v47
	v_div_fixup_f32 v18, v81, v79, v18
	v_fma_f32 v81, -v96, v89, v88
	v_div_scale_f32 v90, s62, v55, v78, v55
	v_fma_f32 v91, -v92, v84, 1.0
	v_div_fmas_f32 v80, v80, v87, v82
	v_rcp_f32_e32 v82, v93
	v_fmac_f32_e32 v89, v81, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v81, v90, v83 :: v_dual_fmac_f32 v84, v91, v84
	v_div_scale_f32 v87, s60, v54, v78, v54
	v_div_scale_f32 v91, null, v78, v78, v48
	v_div_fixup_f32 v17, v80, v79, v17
	v_fma_f32 v80, -v96, v89, v88
	v_fma_f32 v88, -v86, v81, v90
	v_mul_f32_e32 v94, v87, v84
	v_rcp_f32_e32 v95, v91
	v_fma_f32 v96, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v81, v88, v83
	v_div_fmas_f32 v80, v80, v85, v89
	v_fma_f32 v85, -v92, v94, v87
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v88, s61, v47, v78, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v16, v80, v79, v16
	v_fma_f32 v89, -v91, v95, 1.0
	v_fma_f32 v79, -v86, v81, v90
	v_fmac_f32_e32 v94, v85, v84
	v_mul_f32_e32 v80, v88, v82
	v_div_scale_f32 v86, null, v78, v78, v68
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v95, v89, v95
	v_div_scale_f32 v85, s63, v48, v78, v48
	v_div_fmas_f32 v79, v79, v83, v81
	v_fma_f32 v81, -v92, v94, v87
	v_fma_f32 v83, -v93, v80, v88
	v_rcp_f32_e32 v87, v86
	v_div_scale_f32 v90, null, v78, v78, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v89, v85, v95 :: v_dual_fmac_f32 v80, v83, v82
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v83, v90
	v_div_fmas_f32 v81, v81, v84, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v84, -v91, v89, v85
	v_div_fixup_f32 v55, v79, v78, v55
	v_fma_f32 v92, -v86, v87, 1.0
	v_fma_f32 v79, -v93, v80, v88
	v_div_fixup_f32 v54, v81, v78, v54
	v_fmac_f32_e32 v89, v84, v95
	v_div_scale_f32 v81, s60, v68, v78, v68
	v_fmac_f32_e32 v87, v92, v87
	v_fma_f32 v84, -v90, v83, 1.0
	v_div_scale_f32 v88, null, v78, v78, v57
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v91, v89, v85
	v_mul_f32_e32 v82, v81, v87
	v_fmac_f32_e32 v83, v84, v83
	v_rcp_f32_e32 v84, v88
	v_div_scale_f32 v91, null, v78, v78, v56
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v85, s61, v67, v78, v67
	v_div_fmas_f32 v80, v80, v95, v89
	v_fma_f32 v89, -v86, v82, v81
	v_rcp_f32_e32 v94, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v92, v85, v83
	v_fma_f32 v93, -v88, v84, 1.0
	v_div_fixup_f32 v47, v79, v78, v47
	v_fmac_f32_e32 v82, v89, v87
	v_div_scale_f32 v89, null, v78, v78, v15
	v_div_fixup_f32 v48, v80, v78, v48
	v_fma_f32 v79, -v90, v92, v85
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v80, s62, v57, v78, v57
	v_fma_f32 v93, -v91, v94, 1.0
	v_fma_f32 v81, -v86, v82, v81
	v_rcp_f32_e32 v86, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v92, v79, v83 :: v_dual_mul_f32 v79, v80, v84
	v_fmac_f32_e32 v94, v93, v94
	v_div_scale_f32 v93, s63, v56, v78, v56
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v87, v82
	v_fma_f32 v82, -v90, v92, v85
	v_fma_f32 v85, -v88, v79, v80
	v_mul_f32_e32 v87, v93, v94
	v_fma_f32 v90, -v89, v86, 1.0
	v_div_fixup_f32 v68, v81, v78, v68
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v79, v85, v84
	v_fma_f32 v85, -v91, v87, v93
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v90, s60, v15, v78, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v88, v79, v80
	v_fmac_f32_e32 v87, v85, v94
	v_div_fmas_f32 v82, v82, v83, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v81, v90, v86
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v80, v84, v79
	v_fma_f32 v80, -v91, v87, v93
	v_fma_f32 v84, -v89, v81, v90
	v_div_scale_f32 v91, null, v78, v78, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v57, v79, v78, v57
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v81, v84, v86
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v80, v80, v94, v87
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v89, v81, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v86, v81
	v_fma_f32 v90, -v91, v84, 1.0
	v_div_scale_f32 v86, s60, v63, v78, v63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v46, v46
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v90, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v93, v86, v84
	v_div_scale_f32 v95, null, v78, v78, v71
	v_div_fixup_f32 v67, v82, v78, v67
	v_div_scale_f32 v85, null, v78, v78, v64
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v83, v95
	v_div_scale_f32 v88, s61, v71, v78, v71
	v_div_fixup_f32 v56, v80, v78, v56
	v_div_scale_f32 v89, s62, v64, v78, v64
	v_div_scale_f32 v90, null, v78, v78, v14
	v_div_fixup_f32 v15, v79, v78, v15
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v95, v83, 1.0
	v_rcp_f32_e32 v94, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v82, v83
	v_rcp_f32_e32 v82, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v87, v88, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v95, v87, v88
	v_fma_f32 v92, -v85, v82, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v80, v83
	v_fmac_f32_e32 v82, v92, v82
	v_div_scale_f32 v92, null, v78, v78, v59
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v95, v87, v88
	v_mul_f32_e32 v80, v89, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v81, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v83, v87
	v_fma_f32 v88, -v85, v80, v89
	v_fma_f32 v83, -v91, v93, v86
	v_div_scale_f32 v87, s61, v59, v78, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v71, v79, v78, v71
	v_fmac_f32_e32 v80, v88, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v95, -v92, v81, 1.0
	v_fma_f32 v88, -v90, v94, 1.0
	v_fmac_f32_e32 v93, v83, v84
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v79, -v85, v80, v89
	v_dual_fmac_f32 v81, v95, v81 :: v_dual_fmac_f32 v94, v88, v94
	v_div_scale_f32 v88, null, v78, v78, v12
	v_div_scale_f32 v85, s63, v14, v78, v14
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v83, v87, v81
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v91, v93, v86
	v_rcp_f32_e32 v86, v88
	v_div_scale_f32 v91, null, v78, v78, v13
	v_fma_f32 v82, -v92, v83, v87
	v_mul_f32_e32 v89, v85, v94
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v64, v79, v78, v64
	v_div_fmas_f32 v80, v80, v84, v93
	v_fmac_f32_e32 v83, v82, v81
	v_rcp_f32_e32 v82, v91
	v_fma_f32 v84, -v90, v89, v85
	v_fma_f32 v93, -v88, v86, 1.0
	v_div_fixup_f32 v63, v80, v78, v63
	v_fma_f32 v79, -v92, v83, v87
	v_div_scale_f32 v80, s60, v12, v78, v12
	v_fmac_f32_e32 v89, v84, v94
	v_fmac_f32_e32 v86, v93, v86
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v84, -v91, v82, 1.0
	v_div_fmas_f32 v79, v79, v81, v83
	v_fma_f32 v81, -v90, v89, v85
	v_mul_f32_e32 v83, v80, v86
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v82, v84, v82
	v_div_scale_f32 v84, null, v77, v77, v70
	v_div_fmas_f32 v81, v81, v94, v89
	v_fma_f32 v89, -v88, v83, v80
	v_div_scale_f32 v85, s61, v13, v78, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v87, v84
	v_div_scale_f32 v92, null, v77, v77, v66
	v_fmac_f32_e32 v83, v89, v86
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v90, v85, v82
	v_div_fixup_f32 v59, v79, v78, v59
	v_div_fixup_f32 v14, v81, v78, v14
	v_rcp_f32_e32 v81, v92
	v_fma_f32 v80, -v88, v83, v80
	v_div_scale_f32 v88, null, v77, v77, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v89, -v84, v87, 1.0
	v_fma_f32 v79, -v91, v90, v85
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v94, null, v77, v77, v61
	v_fmac_f32_e32 v87, v89, v87
	v_rcp_f32_e32 v89, v88
	v_fmac_f32_e32 v90, v79, v82
	v_div_scale_f32 v79, s62, v70, v77, v70
	v_fma_f32 v93, -v92, v81, 1.0
	v_div_fmas_f32 v80, v80, v86, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v91, v90, v85
	v_mul_f32_e32 v85, v79, v87
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v81, v93, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v91, -v88, v89, 1.0
	v_div_scale_f32 v86, s60, v66, v77, v66
	v_fma_f32 v93, -v84, v85, v79
	v_rcp_f32_e32 v96, v94
	v_fmac_f32_e32 v89, v91, v89
	v_div_scale_f32 v91, s63, v65, v77, v65
	v_div_fmas_f32 v82, v83, v82, v90
	v_fmac_f32_e32 v85, v93, v87
	v_mul_f32_e32 v95, v86, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v90, v91, v89
	v_div_fixup_f32 v12, v80, v78, v12
	v_div_fixup_f32 v13, v82, v78, v13
	v_fma_f32 v78, -v84, v85, v79
	v_div_scale_f32 v82, null, v77, v77, v76
	v_fma_f32 v79, -v88, v90, v91
	v_fma_f32 v83, -v92, v95, v86
	v_fma_f32 v80, -v94, v96, 1.0
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v79, v89
	v_rcp_f32_e32 v79, v82
	v_dual_fmac_f32 v95, v83, v81 :: v_dual_fmac_f32 v96, v80, v96
	v_div_scale_f32 v80, s61, v61, v77, v61
	v_div_fmas_f32 v78, v78, v87, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v92, v95, v86
	v_div_scale_f32 v85, null, v77, v77, v75
	v_mul_f32_e32 v84, v80, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v86, -v82, v79, 1.0
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v87, v85
	v_div_fmas_f32 v81, v83, v81, v95
	v_fma_f32 v83, -v88, v90, v91
	v_fma_f32 v88, -v94, v84, v80
	v_fmac_f32_e32 v79, v86, v79
	v_div_scale_f32 v86, s60, v76, v77, v76
	v_div_fixup_f32 v70, v78, v77, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v88, v96
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v78, v86, v79
	v_div_fmas_f32 v83, v83, v89, v90
	v_div_fixup_f32 v66, v81, v77, v66
	v_fma_f32 v81, -v85, v87, 1.0
	v_fma_f32 v80, -v94, v84, v80
	v_fma_f32 v88, -v82, v78, v86
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v65, v83, v77, v65
	v_div_scale_f32 v83, null, v77, v77, v73
	v_fmac_f32_e32 v87, v81, v87
	v_div_scale_f32 v81, s62, v75, v77, v75
	v_div_fmas_f32 v80, v80, v96, v84
	v_fmac_f32_e32 v78, v88, v79
	v_rcp_f32_e32 v89, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v84, v81, v87
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v61, v80, v77, v61
	v_fma_f32 v80, -v82, v78, v86
	v_div_scale_f32 v88, null, v77, v77, v72
	v_fma_f32 v82, -v85, v84, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v80, v79, v78
	v_div_scale_f32 v79, null, v77, v77, v11
	v_fma_f32 v86, -v83, v89, 1.0
	v_rcp_f32_e32 v90, v88
	v_fmac_f32_e32 v84, v82, v87
	v_rcp_f32_e32 v82, v79
	v_div_scale_f32 v80, s60, v73, v77, v73
	v_fmac_f32_e32 v89, v86, v89
	v_div_scale_f32 v86, null, v77, v77, v74
	v_div_fixup_f32 v76, v78, v77, v76
	v_fma_f32 v81, -v85, v84, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v88, v90, 1.0
	v_rcp_f32_e32 v92, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v79, v82, 1.0
	v_mul_f32_e32 v85, v80, v89
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v90, v78, v90
	v_div_scale_f32 v78, s61, v72, v77, v72
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v91, null, v77, v77, v69
	v_div_fmas_f32 v81, v81, v87, v84
	v_fma_f32 v84, -v83, v85, v80
	v_mul_f32_e32 v87, v78, v90
	v_div_scale_f32 v93, s62, v11, v77, v11
	v_fma_f32 v94, -v86, v92, 1.0
	v_rcp_f32_e32 v95, v91
	v_fmac_f32_e32 v85, v84, v89
	v_fma_f32 v84, -v88, v87, v78
	v_mul_f32_e32 v96, v93, v82
	v_fmac_f32_e32 v92, v94, v92
	v_div_scale_f32 v94, s63, v74, v77, v74
	v_div_fixup_f32 v75, v81, v77, v75
	v_fma_f32 v80, -v83, v85, v80
	v_fmac_f32_e32 v87, v84, v90
	v_fma_f32 v81, -v79, v96, v93
	v_mul_f32_e32 v83, v94, v92
	v_fma_f32 v84, -v91, v95, 1.0
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v78, -v88, v87, v78
	v_fmac_f32_e32 v96, v81, v82
	v_fma_f32 v81, -v86, v83, v94
	v_fmac_f32_e32 v95, v84, v95
	v_div_scale_f32 v84, s60, v69, v77, v69
	v_div_fmas_f32 v80, v80, v89, v85
	v_div_scale_f32 v85, null, v77, v77, v58
	v_fma_f32 v79, -v79, v96, v93
	v_fmac_f32_e32 v83, v81, v92
	v_mul_f32_e32 v81, v84, v95
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v73, v80, v77, v73
	v_div_fmas_f32 v78, v78, v90, v87
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v87, v85
	v_div_fmas_f32 v79, v79, v82, v96
	v_fma_f32 v82, -v86, v83, v94
	v_fma_f32 v86, -v91, v81, v84
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v72, v78, v77, v72
	v_div_fixup_f32 v11, v79, v77, v11
	v_div_fmas_f32 v82, v82, v92, v83
	v_fmac_f32_e32 v81, v86, v95
	v_div_scale_f32 v79, null, v77, v77, v53
	v_fma_f32 v80, -v85, v87, 1.0
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v78, -v91, v81, v84
	v_div_fixup_f32 v74, v82, v77, v74
	v_div_scale_f32 v82, null, v77, v77, v9
	v_fmac_f32_e32 v87, v80, v87
	v_div_scale_f32 v80, null, v77, v77, v8
	v_div_fmas_f32 v78, v78, v95, v81
	v_rcp_f32_e32 v81, v79
	v_rcp_f32_e32 v86, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v84, v80
	v_div_scale_f32 v89, null, v77, v77, v10
	v_div_scale_f32 v83, vcc_lo, v58, v77, v58
	v_div_fixup_f32 v69, v78, v77, v69
	v_rcp_f32_e32 v91, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v79, v81, 1.0
	v_mul_f32_e32 v88, v83, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v80, v84, 1.0
	v_fma_f32 v93, -v82, v86, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v78, v81
	v_div_scale_f32 v78, s60, v53, v77, v53
	v_fma_f32 v92, -v85, v88, v83
	v_fmac_f32_e32 v84, v90, v84
	v_div_scale_f32 v90, s61, v8, v77, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v94, v78, v81
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v93, s62, v9, v77, v9
	v_fma_f32 v95, -v89, v91, 1.0
	v_fmac_f32_e32 v88, v92, v87
	v_mul_f32_e32 v96, v90, v84
	v_fma_f32 v92, -v79, v94, v78
	v_mul_f32_e32 v97, v93, v86
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, s63, v10, v77, v10
	v_fma_f32 v83, -v85, v88, v83
	v_fma_f32 v85, -v80, v96, v90
	v_fmac_f32_e32 v94, v92, v81
	v_fma_f32 v92, -v82, v97, v93
	v_mul_f32_e32 v98, v95, v91
	v_div_fmas_f32 v83, v83, v87, v88
	v_fmac_f32_e32 v96, v85, v84
	v_fma_f32 v78, -v79, v94, v78
	v_fmac_f32_e32 v97, v92, v86
	v_fma_f32 v79, -v89, v98, v95
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v80, -v80, v96, v90
	v_div_fmas_f32 v78, v78, v81, v94
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v98, v79, v91
	v_fma_f32 v79, -v82, v97, v93
	v_div_fmas_f32 v80, v80, v84, v96
	s_mov_b32 vcc_lo, s62
	s_mov_b32 s60, 0xc1000000
	v_fma_f32 v81, -v89, v98, v95
	v_div_fmas_f32 v79, v79, v86, v97
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v35, v35, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v58, v83, v77, v58
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v31, v31, s60, 0x40e00000
	v_med3_f32 v32, v32, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v9, v79, v77, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s60, 0x40e00000
	v_med3_f32 v33, v33, s60, 0x40e00000
	v_med3_f32 v17, v17, s60, 0x40e00000
	v_cvt_i32_f32_e32 v79, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v91, v98
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_med3_f32 v55, v55, s60, 0x40e00000
	v_med3_f32 v63, v63, s60, 0x40e00000
	v_med3_f32 v12, v12, s60, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v83, v17
	v_and_b32_e32 v17, 15, v79
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v79, 16, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v53, v78, v77, v53
	v_div_fixup_f32 v8, v80, v77, v8
	v_div_fixup_f32 v10, v81, v77, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_cvt_i32_f32_e32 v77, v39
	v_cvt_i32_f32_e32 v85, v55
	v_cvt_i32_f32_e32 v93, v63
	v_cvt_i32_f32_e32 v96, v12
	v_and_b32_e32 v12, 15, v31
	v_and_b32_e32 v39, 15, v32
	v_and_b32_e32 v55, 15, v42
	v_and_b32_e32 v63, 15, v33
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v31, 13, v0
	v_and_b32_e32 v32, 0x2f0, v30
	v_lshlrev_b32_e32 v33, 8, v79
	v_and_b32_e32 v42, 64, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v10, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s60, 0x40e00000
	v_med3_f32 v46, v46, s60, 0x40e00000
	v_med3_f32 v70, v70, s60, 0x40e00000
	v_cvt_i32_f32_e32 v106, v58
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v58, 3, v113
	v_and_or_b32 v31, 0xe000, v31, v33
	v_xor_b32_e32 v32, v32, v42
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v75, v75
	v_rndne_f32_e32 v53, v53
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v27, v27, s60, 0x40e00000
	v_med3_f32 v28, v28, s60, 0x40e00000
	v_med3_f32 v40, v40, s60, 0x40e00000
	v_med3_f32 v29, v29, s60, 0x40e00000
	v_med3_f32 v60, v60, s60, 0x40e00000
	v_med3_f32 v68, v68, s60, 0x40e00000
	v_med3_f32 v76, v76, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v13, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v23, v23, s60, 0x40e00000
	v_med3_f32 v49, v49, s60, 0x40e00000
	v_med3_f32 v21, v21, s60, 0x40e00000
	v_med3_f32 v41, v41, s60, 0x40e00000
	v_med3_f32 v36, v36, s60, 0x40e00000
	v_med3_f32 v50, v50, s60, 0x40e00000
	v_med3_f32 v19, v19, s60, 0x40e00000
	v_med3_f32 v54, v54, s60, 0x40e00000
	v_med3_f32 v15, v15, s60, 0x40e00000
	v_med3_f32 v66, v66, s60, 0x40e00000
	v_med3_f32 v11, v11, s60, 0x40e00000
	v_med3_f32 v8, v8, s60, 0x40e00000
	v_med3_f32 v9, v9, s60, 0x40e00000
	v_med3_f32 v10, v10, s60, 0x40e00000
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v70, v70
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v31, v31, v58, v32
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v65, v65
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s60, 0x40e00000
	v_med3_f32 v20, v20, s60, 0x40e00000
	v_med3_f32 v43, v43, s60, 0x40e00000
	v_med3_f32 v16, v16, s60, 0x40e00000
	v_med3_f32 v67, v67, s60, 0x40e00000
	v_med3_f32 v59, v59, s60, 0x40e00000
	v_med3_f32 v75, v75, s60, 0x40e00000
	v_med3_f32 v53, v53, s60, 0x40e00000
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v88, v68
	v_cvt_i32_f32_e32 v100, v76
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v69, v69
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v51, v51, s60, 0x40e00000
	v_med3_f32 v47, v47, s60, 0x40e00000
	v_med3_f32 v48, v48, s60, 0x40e00000
	v_med3_f32 v14, v14, s60, 0x40e00000
	v_med3_f32 v13, v13, s60, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v104, v11
	v_cvt_i32_f32_e32 v108, v8
	v_cvt_i32_f32_e32 v109, v9
	v_cvt_i32_f32_e32 v110, v10
	v_and_b32_e32 v8, 15, v37
	v_and_b32_e32 v9, 15, v46
	v_and_b32_e32 v10, 15, v85
	v_and_b32_e32 v11, 15, v70
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v32, 0, v31
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v73, v73
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v64, v64, s60, 0x40e00000
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v78, v20
	v_cvt_i32_f32_e32 v82, v43
	v_cvt_i32_f32_e32 v84, v16
	v_cvt_i32_f32_e32 v89, v67
	v_cvt_i32_f32_e32 v94, v59
	v_cvt_i32_f32_e32 v101, v75
	v_cvt_i32_f32_e32 v107, v53
	v_and_b32_e32 v16, 15, v27
	v_and_b32_e32 v20, 15, v28
	v_and_b32_e32 v27, 15, v40
	v_and_b32_e32 v43, 15, v29
	v_and_b32_e32 v28, 15, v60
	v_and_b32_e32 v29, 15, v88
	v_and_b32_e32 v30, 15, v100
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v62, v62, s60, 0x40e00000
	v_med3_f32 v71, v71, s60, 0x40e00000
	v_med3_f32 v74, v74, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v72, v72
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v22, v22, s60, 0x40e00000
	v_med3_f32 v18, v18, s60, 0x40e00000
	v_med3_f32 v52, v52, s60, 0x40e00000
	v_med3_f32 v57, v57, s60, 0x40e00000
	v_med3_f32 v69, v69, s60, 0x40e00000
	v_cvt_i32_f32_e32 v81, v51
	v_cvt_i32_f32_e32 v86, v47
	v_cvt_i32_f32_e32 v87, v48
	v_cvt_i32_f32_e32 v95, v14
	v_cvt_i32_f32_e32 v97, v13
	v_and_b32_e32 v47, 15, v23
	v_and_b32_e32 v51, 15, v49
	v_and_b32_e32 v75, 15, v21
	v_and_b32_e32 v13, 15, v41
	v_and_b32_e32 v21, 15, v36
	v_and_b32_e32 v36, 15, v50
	v_and_b32_e32 v48, 15, v19
	v_and_b32_e32 v14, 15, v54
	v_and_b32_e32 v49, 15, v15
	v_and_b32_e32 v15, 15, v66
	v_and_b32_e32 v50, 15, v104
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v32, v[8:11]
	ds_store_b128 v32, v[27:30] offset:256
	v_xad_u32 v8, v31, 16, 0
	v_lshlrev_b32_e32 v9, 6, v0
	v_lshlrev_b32_e32 v10, 5, v25
	v_cndmask_b32_e64 v11, 0x2010, 0, s2
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v45, v45, s60, 0x40e00000
	v_med3_f32 v73, v73, s60, 0x40e00000
	v_cvt_i32_f32_e32 v92, v64
	v_cvt_i32_f32_e32 v98, v65
	v_and_b32_e32 v35, 15, v38
	v_and_b32_e32 v64, 15, v82
	v_and_b32_e32 v37, 15, v89
	v_and_b32_e32 v65, 15, v94
	v_and_b32_e32 v38, 15, v101
	v_and_b32_e32 v66, 15, v107
	v_med3_f32 v61, v61, s60, 0x40e00000
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v91, v71
	v_cvt_i32_f32_e32 v74, v74
	v_med3_f32 v44, v44, s60, 0x40e00000
	v_med3_f32 v56, v56, s60, 0x40e00000
	v_med3_f32 v72, v72, s60, 0x40e00000
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v80, v52
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v105, v69
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v32, v[47:50] offset:2048
	ds_store_b128 v32, v[63:66] offset:2304
	ds_store_b128 v8, v[12:15]
	ds_store_b128 v8, v[35:38] offset:256
	v_lshlrev_b32_e32 v13, 2, v79
	v_and_or_b32 v9, 0x300, v9, v10
	v_xor_b32_e32 v10, v11, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v102, v73
	v_cvt_i32_f32_e32 v99, v61
	v_and_b32_e32 v52, 15, v62
	v_and_b32_e32 v53, 15, v91
	v_and_b32_e32 v54, 15, v74
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v90, v56
	v_cvt_i32_f32_e32 v103, v72
	v_and_b32_e32 v67, 15, v22
	v_and_b32_e32 v68, 15, v18
	v_and_b32_e32 v69, 15, v95
	v_and_b32_e32 v70, 15, v108
	v_and_b32_e32 v56, 15, v80
	v_and_b32_e32 v18, 15, v86
	v_and_b32_e32 v41, 15, v57
	v_and_b32_e32 v57, 15, v92
	v_and_b32_e32 v19, 15, v98
	v_and_b32_e32 v58, 15, v105
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v12, v31, 32, 0
	v_or3_b32 v25, v10, v9, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v71, 15, v78
	v_and_b32_e32 v40, 15, v45
	v_and_b32_e32 v72, 15, v83
	v_and_b32_e32 v73, 15, v96
	v_and_b32_e32 v42, 15, v102
	v_and_b32_e32 v74, 15, v109
	v_and_b32_e32 v22, 15, v87
	v_and_b32_e32 v23, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v8, v[51:54] offset:2048
	ds_store_b128 v8, v[67:70] offset:2304
	v_xad_u32 v8, v31, 48, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v44, 15, v44
	v_and_b32_e32 v45, 15, v90
	v_and_b32_e32 v46, 15, v103
	v_and_b32_e32 v59, 15, v77
	v_and_b32_e32 v60, 15, v81
	v_and_b32_e32 v61, 15, v93
	v_and_b32_e32 v62, 15, v106
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v12, v[16:19]
	ds_store_b128 v12, v[39:42] offset:256
	ds_store_b128 v12, v[55:58] offset:2048
	ds_store_b128 v12, v[71:74] offset:2304
	ds_store_b128 v8, v[20:23]
	ds_store_b128 v8, v[43:46] offset:256
	v_xad_u32 v39, 0x4020, v25, 0
	v_xad_u32 v55, 0x8040, v25, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v76, 15, v84
	v_and_b32_e32 v77, 15, v97
	v_and_b32_e32 v78, 15, v110
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v20, 0, v25
	v_xad_u32 v25, 0xc060, v25, 0
	ds_store_b128 v8, v[59:62] offset:2048
	ds_store_b128 v8, v[75:78] offset:2304
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v39
	ds_load_b128 v[31:34], v39 offset:128
	ds_load_b128 v[35:38], v39 offset:4096
	ds_load_b128 v[39:42], v39 offset:4224
	ds_load_b128 v[43:46], v55
	ds_load_b128 v[47:50], v55 offset:128
	ds_load_b128 v[51:54], v55 offset:4096
	ds_load_b128 v[55:58], v55 offset:4224
	ds_load_b128 v[59:62], v25 offset:4096
	ds_load_b128 v[63:66], v25
	ds_load_b128 v[67:70], v25 offset:128
	ds_load_b128 v[71:74], v25 offset:4224
	ds_load_b128 v[8:11], v20
	ds_load_b128 v[12:15], v20 offset:128
	ds_load_b128 v[16:19], v20 offset:4096
	ds_load_b128 v[20:23], v20 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v75, s2, s76, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v76, null, s77, 0, s2
	v_add_co_u32 v77, s2, s76, v255
	v_add_co_ci_u32_e64 v78, null, s77, 0, s2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[70:71], v[5:6]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, s76, v255
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[64:65], v[75:76]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[70:71], v[75:76]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_lshl_or_b32 v5, s79, 7, v112
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(8)
	v_lshl_or_b32 v48, v56, 4, v48
	v_lshl_or_b32 v49, v57, 4, v49
	v_lshl_or_b32 v75, v35, 4, v27
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v27, 30, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(4)
	v_lshl_or_b32 v56, v72, 4, v68
	v_lshl_or_b32 v72, v37, 4, v29
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v29, 32, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(1)
	v_lshl_or_b32 v68, v18, 4, v10
	v_lshl_or_b32 v57, v73, 4, v69
	v_lshl_or_b32 v73, v38, 4, v30
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 2, v6
	v_add_nc_u32_e32 v30, 34, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v76, v39, 4, v31
	v_lshl_or_b32 v69, v19, 4, v11
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s77, s72, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 4, v6
	v_add_nc_u32_e32 v31, 36, v6
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v59, v59, 4, v63
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v63, v20, 4, v12
	v_lshl_or_b32 v44, v52, 4, v44
	v_lshl_or_b32 v52, v60, 4, v64
	v_lshl_or_b32 v64, v40, 4, v32
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 6, v6
	v_add_nc_u32_e32 v32, 38, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v47, v55, 4, v47
	v_lshl_or_b32 v55, v71, 4, v67
	v_lshl_or_b32 v71, v36, 4, v28
	v_lshl_or_b32 v60, v21, 4, v13
	v_lshl_or_b32 v45, v53, 4, v45
	v_lshl_or_b32 v53, v61, 4, v65
	v_lshl_or_b32 v65, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 8, v6
	v_add_nc_u32_e32 v33, 40, v6
	v_mad_u64_u32 v[27:28], null, v27, s77, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v25, v16, 4, v8
	v_lshl_or_b32 v67, v17, 4, v9
	v_lshl_or_b32 v61, v22, 4, v14
	v_lshl_or_b32 v46, v54, 4, v46
	v_lshl_or_b32 v54, v62, 4, v66
	v_lshl_or_b32 v66, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 10, v6
	v_add_nc_u32_e32 v34, 42, v6
	v_mad_u64_u32 v[8:9], null, v6, s77, v[5:6]
	v_mad_u64_u32 v[28:29], null, v29, s77, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v62, v23, 4, v15
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 12, v6
	v_add_nc_u32_e32 v35, 44, v6
	v_mad_u64_u32 v[9:10], null, v10, s77, v[5:6]
	v_mad_u64_u32 v[29:30], null, v30, s77, v[5:6]
	v_add_nc_u32_e32 v16, 14, v6
	v_add_nc_u32_e32 v36, 46, v6
	v_mad_u64_u32 v[10:11], null, v11, s77, v[5:6]
	v_mad_u64_u32 v[30:31], null, v31, s77, v[5:6]
	v_add_nc_u32_e32 v17, 16, v6
	v_add_nc_u32_e32 v37, 48, v6
	v_mad_u64_u32 v[11:12], null, v12, s77, v[5:6]
	v_mad_u64_u32 v[31:32], null, v32, s77, v[5:6]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s62, s[64:65], v[77:78]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s63, s[70:71], v[77:78]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 18, v6
	v_add_nc_u32_e32 v38, 50, v6
	v_mad_u64_u32 v[12:13], null, v13, s77, v[5:6]
	v_mad_u64_u32 v[32:33], null, v33, s77, v[5:6]
	v_add_nc_u32_e32 v19, 20, v6
	v_add_nc_u32_e32 v39, 52, v6
	v_mad_u64_u32 v[13:14], null, v14, s77, v[5:6]
	v_mad_u64_u32 v[33:34], null, v34, s77, v[5:6]
	v_add_nc_u32_e32 v20, 22, v6
	v_add_nc_u32_e32 v40, 54, v6
	v_mad_u64_u32 v[14:15], null, v15, s77, v[5:6]
	v_mad_u64_u32 v[34:35], null, v35, s77, v[5:6]
	v_add_nc_u32_e32 v21, 24, v6
	v_add_nc_u32_e32 v41, 56, v6
	v_mad_u64_u32 v[15:16], null, v16, s77, v[5:6]
	v_mad_u64_u32 v[35:36], null, v36, s77, v[5:6]
	v_add_nc_u32_e32 v22, 26, v6
	v_add_nc_u32_e32 v42, 58, v6
	v_mad_u64_u32 v[16:17], null, v17, s77, v[5:6]
	v_mad_u64_u32 v[36:37], null, v37, s77, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v51, v51, 4, v43
	v_lshl_or_b32 v50, v58, 4, v50
	v_lshl_or_b32 v58, v74, 4, v70
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v23, 28, v6
	v_add_nc_u32_e32 v43, 60, v6
	v_add_nc_u32_e32 v70, 62, v6
	v_mad_u64_u32 v[17:18], null, v18, s77, v[5:6]
	v_mad_u64_u32 v[37:38], null, v38, s77, v[5:6]
	v_mad_u64_u32 v[18:19], null, v19, s77, v[5:6]
	v_mad_u64_u32 v[38:39], null, v39, s77, v[5:6]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[19:20], null, v20, s77, v[5:6]
	v_mad_u64_u32 v[39:40], null, v40, s77, v[5:6]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s60, s60, s61
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[20:21], null, v21, s77, v[5:6]
	v_mad_u64_u32 v[40:41], null, v41, s77, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s62
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[21:22], null, v22, s77, v[5:6]
	v_mad_u64_u32 v[41:42], null, v42, s77, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v9, 0x80000000, v9, s60
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[22:23], null, v23, s77, v[5:6]
	v_mad_u64_u32 v[42:43], null, v43, s77, v[5:6]
	v_mad_u64_u32 v[5:6], null, v70, s77, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s72, s66
	v_cndmask_b32_e32 v6, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s58, s59
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b8 v25, v8, s[72:75], 0 offen
	buffer_store_b8 v75, v9, s[72:75], 0 offen
	v_cndmask_b32_e32 v8, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s56, s57
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s78, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s54, s55
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v4.l, v26.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s52, s53
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v3.l, v24.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s50, s51
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v51, v6, s[72:75], 0 offen
	buffer_store_b8 v59, v8, s[72:75], 0 offen
	buffer_store_b8 v63, v9, s[72:75], 0 offen
	buffer_store_b8 v76, v10, s[72:75], 0 offen
	buffer_store_b8 v47, v11, s[72:75], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s48, s49
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s2, s2, 24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s78, s78, s2
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s42, s43
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s40, s41
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v55, v6, s[72:75], 0 offen
	buffer_store_b8 v67, v8, s[72:75], 0 offen
	buffer_store_b8 v71, v9, s[72:75], 0 offen
	buffer_store_b8 v44, v10, s[72:75], 0 offen
	buffer_store_b8 v52, v11, s[72:75], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s38, s39
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s36, s37
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s34, s35
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v27, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s31, s33
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s29, s30
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v60, v6, s[72:75], 0 offen
	buffer_store_b8 v64, v8, s[72:75], 0 offen
	buffer_store_b8 v48, v9, s[72:75], 0 offen
	buffer_store_b8 v56, v10, s[72:75], 0 offen
	buffer_store_b8 v68, v11, s[72:75], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s27, s28
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s25, s26
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s23, s24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s21, s22
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s19, s20
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v72, v6, s[72:75], 0 offen
	buffer_store_b8 v45, v8, s[72:75], 0 offen
	buffer_store_b8 v53, v9, s[72:75], 0 offen
	buffer_store_b8 v61, v10, s[72:75], 0 offen
	buffer_store_b8 v65, v11, s[72:75], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s17, s18
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s15, s16
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s13, s14
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s11, s12
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s9, s10
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v49, v6, s[72:75], 0 offen
	buffer_store_b8 v57, v8, s[72:75], 0 offen
	buffer_store_b8 v69, v9, s[72:75], 0 offen
	buffer_store_b8 v73, v10, s[72:75], 0 offen
	buffer_store_b8 v46, v11, s[72:75], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v39, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v40, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v41, vcc_lo
	s_clause 0x2
	buffer_store_b8 v54, v6, s[72:75], 0 offen
	buffer_store_b8 v62, v8, s[72:75], 0 offen
	buffer_store_b8 v66, v9, s[72:75], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v8, 4, v0
	v_lshrrev_b32_e32 v9, 2, v79
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshlrev_b32_e32 v6, 3, v111
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v42, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_and_b32 v8, 2, v8
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v9, 0, v9
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v50, v10, s[72:75], 0 offen
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s78, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v58, v5, s[72:75], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v5, 0, v6
	v_add3_u32 v6, v9, v8, v6
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[1:2]
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v5, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v3, v6
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v4, v7, s0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[70:71], v[1:2]
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_cmp_eq_u32_e64 s1, 0, v0
	s_mov_b32 s70, s74
	s_mov_b32 s71, s75
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_lshl_u32 v0, v4, s79, 1
	s_and_b32 vcc_lo, s1, s0
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v3, v0, s[68:71], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp86:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 560
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 80
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 560
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 33376
; TotalNumSgprs: 82
; NumVgprs: 256
; ScratchSize: 560
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
	.byte	1                               ; Abbrev [1] 0xb:0x5f DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x39 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x5b:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
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
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
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
    .private_segment_fixed_size: 560
    .sgpr_count:     82
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 139
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
