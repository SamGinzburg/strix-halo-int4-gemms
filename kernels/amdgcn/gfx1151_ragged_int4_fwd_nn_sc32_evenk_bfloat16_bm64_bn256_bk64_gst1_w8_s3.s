	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 374 0                         ; ragged.py:374:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x4c
	s_load_b64 s[34:35], s[0:1], 0x54
.Ltmp0:
	.loc	1 402 25 prologue_end           ; ragged.py:402:25
	s_abs_i32 s7, s2
	v_mov_b32_e32 v80, 0
	.loc	1 413 18                        ; ragged.py:413:18
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:400:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:400:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
.Ltmp2:
	.loc	1 402 25 is_stmt 1              ; ragged.py:402:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v65, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v69, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v73, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v75, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v77, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v79, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v81, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v57, 0
	s_cselect_b32 s4, s8, s5
	v_dual_mov_b32 v82, 0 :: v_dual_and_b32 v61, 0xf0, v0
	s_xor_b32 s4, s4, s6
	s_mov_b32 s20, 0
	s_sub_i32 s12, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 404 33                        ; ragged.py:404:33
	s_sub_i32 s4, s35, s12
	.loc	1 405 24                        ; ragged.py:405:24
	s_mul_i32 s3, s12, s3
	.loc	1 404 22                        ; ragged.py:404:22
	s_min_i32 s13, s4, 1
	.loc	1 405 24                        ; ragged.py:405:24
	s_sub_i32 s2, s2, s3
	.loc	1 407 17                        ; ragged.py:407:17
	s_abs_i32 s14, s13
	s_cvt_f32_u32 s4, s14
	s_sub_i32 s5, 0, s14
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	.loc	1 413 32                        ; ragged.py:413:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 407 17                        ; ragged.py:407:17
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s5, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s4, s5
	s_abs_i32 s5, s2
	s_add_i32 s4, s4, s3
	s_mul_hi_u32 s3, s5, s4
	s_xor_b32 s4, s2, s13
	s_mul_i32 s6, s3, s14
	s_ashr_i32 s21, s4, 31
	s_sub_i32 s15, s5, s6
	s_add_i32 s16, s3, 1
	s_sub_i32 s17, s15, s14
	s_cmp_ge_u32 s15, s14
	s_load_b256 s[4:11], s[0:1], 0x28
	s_cselect_b32 s3, s16, s3
	s_cselect_b32 s15, s17, s15
	s_add_i32 s16, s3, 1
	s_cmp_ge_u32 s15, s14
	s_cselect_b32 s3, s16, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s36, s3, s21
	s_sub_i32 s14, s36, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 406 34                        ; ragged.py:406:34
	s_mul_i32 s3, s14, s13
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 406 20 is_stmt 0              ; ragged.py:406:20
	s_add_i32 s2, s2, s12
	.loc	1 409 20 is_stmt 1              ; ragged.py:409:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 410 23                        ; ragged.py:410:23
	s_lshl_b64 s[24:25], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s4, s24
	s_addc_u32 s3, s5, s25
	s_load_b64 s[22:23], s[2:3], 0x0
	.loc	1 411 24                        ; ragged.py:411:24
	s_add_u32 s2, s6, s24
	s_addc_u32 s3, s7, s25
	.loc	1 412 22                        ; ragged.py:412:22
	s_add_u32 s4, s8, s24
	s_addc_u32 s5, s9, s25
	.loc	1 411 24                        ; ragged.py:411:24
	s_load_b64 s[26:27], s[2:3], 0x0
	.loc	1 412 22                        ; ragged.py:412:22
	s_load_b64 s[28:29], s[4:5], 0x0
	.loc	1 414 18                        ; ragged.py:414:18
	s_lshl_b32 s35, s14, 8
	.loc	1 413 18                        ; ragged.py:413:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s22, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s23, 0, s2
	.loc	1 494 25                        ; ragged.py:494:25
	v_add_nc_u32_e32 v59, s22, v1
	.loc	1 413 18                        ; ragged.py:413:18
	v_add_co_u32 v4, vcc_lo, v2, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	.loc	1 415 21                        ; ragged.py:415:21
	v_cmp_le_i64_e32 vcc_lo, s[26:27], v[2:3]
	.loc	1 415 48 is_stmt 0              ; ragged.py:415:48
	v_cmp_gt_i64_e64 s2, s[28:29], v[2:3]
	.loc	1 415 21                        ; ragged.py:415:21
	v_cmp_le_i64_e64 s3, s[26:27], v[4:5]
	v_cmp_le_i64_e64 s5, s[26:27], v[6:7]
	v_cmp_le_i64_e64 s6, s[26:27], v[8:9]
	.loc	1 415 48                        ; ragged.py:415:48
	v_cmp_gt_i64_e64 s7, s[28:29], v[4:5]
	v_cmp_gt_i64_e64 s8, s[28:29], v[6:7]
	v_cmp_gt_i64_e64 s9, s[28:29], v[8:9]
	.loc	1 494 25 is_stmt 1              ; ragged.py:494:25
	v_add_nc_u32_e32 v62, 16, v59
	v_add_nc_u32_e32 v63, 32, v59
	v_add_nc_u32_e32 v64, 48, v59
	.loc	1 415 20                        ; ragged.py:415:20
	s_and_b32 s4, vcc_lo, s2
	s_and_b32 s3, s3, s7
	s_and_b32 s2, s5, s8
	s_and_b32 vcc_lo, s6, s9
	.loc	1 464 19                        ; ragged.py:464:19
	s_cmp_lt_i32 s34, 1
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x2
	s_load_b64 s[8:9], s[0:1], 0x20
	s_load_b32 s7, s[0:1], 0x50
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 413 32 is_stmt 1              ; ragged.py:413:32
	v_lshrrev_b32_e32 v5, 2, v0
	.loc	1 461 28                        ; ragged.py:461:28
	v_lshrrev_b32_e32 v4, 4, v61
	.loc	1 413 18                        ; ragged.py:413:18
	v_dual_mov_b32 v57, 0 :: v_dual_lshlrev_b32 v6, 4, v1
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v7, s35, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 413 18                        ; ragged.py:413:18
	v_add_co_u32 v2, s0, s22, v5
	v_add_co_ci_u32_e64 v3, null, s23, 0, s0
	s_mov_b32 s23, s20
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v10, s35, v6
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e64 s0, s33, v7
	.loc	1 415 21                        ; ragged.py:415:21
	v_cmp_le_i64_e64 s5, s[26:27], v[2:3]
	.loc	1 415 48 is_stmt 0              ; ragged.py:415:48
	v_cmp_gt_i64_e64 s6, s[28:29], v[2:3]
	v_bfe_i32 v3, v0, 5, 1
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	.loc	1 409 20 is_stmt 1              ; ragged.py:409:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s8, s8, s24
	s_addc_u32 s9, s9, s25
	.loc	1 415 20                        ; ragged.py:415:20
	s_and_b32 s5, s5, s6
	.loc	1 501 25                        ; ragged.py:501:25
	s_load_b32 s6, s[8:9], 0x0
	.loc	1 464 19                        ; ragged.py:464:19
	s_mul_i32 s8, s34, s33
	s_lshl_b32 s9, s36, 8
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e64 s1, s33, v10
	v_bfe_i32 v10, v0, 3, 1
	v_dual_mov_b32 v81, 0 :: v_dual_lshlrev_b32 v12, 2, v61
	v_dual_mov_b32 v80, 0 :: v_dual_lshlrev_b32 v13, 1, v0
	.loc	1 464 19                        ; ragged.py:464:19
	v_mul_lo_u32 v18, s34, v59
	v_dual_mov_b32 v78, 0 :: v_dual_lshlrev_b32 v17, 1, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v77, 0 :: v_dual_and_b32 v16, 28, v13
	v_mul_lo_u32 v13, s34, v64
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v95, 0, v17
	v_dual_mov_b32 v70, 0 :: v_dual_lshlrev_b32 v87, 1, v18
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s8, s8, s6
	v_mov_b32_e32 v75, 0
	v_add3_u32 v15, s8, s9, v0
	s_lshl_b32 s8, s21, 8
	s_mov_b32 s21, s20
	.loc	1 461 28                        ; ragged.py:461:28
	v_lshlrev_b32_e32 v8, 2, v0
	v_and_b32_e32 v3, 0x88, v3
	v_dual_mov_b32 v65, 0 :: v_dual_lshlrev_b32 v84, 1, v13
	v_mov_b32_e32 v56, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_and_b32_e32 v2, 12, v8
	v_and_b32_e32 v8, 0x37c, v8
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_mov_b32_e32 v52, 0
	v_xor_b32_e32 v8, v3, v8
	v_lshlrev_b32_e32 v3, 5, v0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v76, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v89, 0, v8
	v_and_b32_e32 v14, 32, v3
	.loc	1 464 19                        ; ragged.py:464:19
	v_mad_u64_u32 v[3:4], null, s7, s6, v[4:5]
	v_add_nc_u32_e32 v5, s22, v5
	s_mov_b32 s22, s20
	v_lshlrev_b32_e32 v9, 4, v0
	v_add3_u32 v12, 0, v12, v14
	v_mul_lo_u32 v14, s34, v63
	v_subrev_nc_u32_e32 v4, s8, v15
	v_mul_lo_u32 v3, s33, v3
	v_and_b32_e32 v7, 0x70, v9
	v_mul_lo_u32 v15, s34, v62
	v_add_nc_u32_e32 v1, 0, v1
	v_dual_mov_b32 v74, 0 :: v_dual_lshlrev_b32 v83, 1, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_or_b32 v7, 0x88, v10, v7
	v_lshrrev_b32_e32 v10, 1, v0
	v_add3_u32 v3, v3, s9, v6
	v_dual_mov_b32 v72, 0 :: v_dual_lshlrev_b32 v85, 1, v14
	v_xor_b32_e32 v11, 8, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v10, 0x70, v10
	v_mad_u64_u32 v[13:14], null, v5, s7, v[2:3]
	v_subrev_nc_u32_e32 v88, s8, v3
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v90, 0, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v93, v1, v10
	v_dual_mov_b32 v1, s20 :: v_dual_lshlrev_b32 v86, 1, v15
	v_mov_b32_e32 v73, 0
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v91, 0, v11
	v_mov_b32_e32 v2, s21
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v92, 0, v9
	v_dual_mov_b32 v3, s22 :: v_dual_mov_b32 v4, s23
	v_dual_mov_b32 v5, s24 :: v_dual_mov_b32 v6, s25
	v_dual_mov_b32 v7, s26 :: v_dual_mov_b32 v8, s27
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v94, v12, v16
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s29, s17, 0xffff
	s_mov_b32 s28, s16
	s_and_b32 s17, s19, 0xffff
	s_mov_b32 s16, s18
	s_lshl_b32 s6, s33, 1
	s_lshl_b32 s7, s33, 4
	s_mov_b32 s20, s12
	s_mov_b32 s21, s13
	s_mov_b32 s22, s30
	s_mov_b32 s23, s31
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s30
	s_mov_b32 s15, s31
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_cndmask_b32_e64 v9, 0x80000000, v13, s5
	v_cndmask_b32_e64 v10, 0x80000000, v88, s1
	.loc	1 500 40 is_stmt 1              ; ragged.py:500:40
	s_mov_b32 s18, s30
	s_mov_b32 s19, s31
	.loc	1 464 19                        ; ragged.py:464:19
	s_add_i32 s34, s34, -1
	.loc	1 478 34                        ; ragged.py:478:34
	buffer_load_b32 v96, v9, s[20:23], 0 offen
	.loc	1 479 34                        ; ragged.py:479:34
	buffer_load_b128 v[9:12], v10, s[12:15], 0 offen
	.loc	1 478 34                        ; ragged.py:478:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 464 19                        ; ragged.py:464:19
	s_cmp_lg_u32 s34, 0
	v_add_nc_u32_e32 v88, s7, v88
	v_add_nc_u32_e32 v13, 16, v13
	.loc	1 478 34                        ; ragged.py:478:34
	s_waitcnt vmcnt(1)
	ds_store_b32 v89, v96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[104:107], v90 offset1:32
	ds_load_2addr_b64 v[108:111], v90 offset0:64 offset1:96
	ds_load_2addr_b64 v[112:115], v91 offset1:32
	ds_load_2addr_b64 v[116:119], v91 offset0:64 offset1:96
	.loc	1 479 34                        ; ragged.py:479:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v92, v[9:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 480 31                        ; ragged.py:480:31
	ds_load_u8 v9, v93 offset:1280
	ds_load_u8 v10, v93 offset:1024
	ds_load_u8 v11, v93 offset:1920
	ds_load_u8 v12, v93 offset:1664
	ds_load_u8 v96, v93 offset:1408
	ds_load_u8 v97, v93 offset:1152
	ds_load_u8 v98, v93 offset:1792
	ds_load_u8 v99, v93 offset:1536
	ds_load_u8 v100, v93 offset:256
	ds_load_u8 v101, v93
	ds_load_u8 v102, v93 offset:896
	ds_load_u8 v103, v93 offset:640
	ds_load_u8 v120, v93 offset:384
	ds_load_u8 v121, v93 offset:128
	ds_load_u8 v122, v93 offset:768
	ds_load_u8 v123, v93 offset:512
	ds_load_u8 v124, v93 offset:3328
	ds_load_u8 v125, v93 offset:3072
	ds_load_u8 v126, v93 offset:3968
	ds_load_u8 v127, v93 offset:3712
	ds_load_u8 v128, v93 offset:3840
	ds_load_u8 v129, v93 offset:3584
	ds_load_u8 v130, v93 offset:2304
	ds_load_u8 v131, v93 offset:2048
	ds_load_u8 v132, v93 offset:2816
	ds_load_u8 v133, v93 offset:2560
	ds_load_u8 v134, v93 offset:3456
	ds_load_u8 v135, v93 offset:3200
	ds_load_u8 v136, v93 offset:2944
	ds_load_u8 v137, v93 offset:2432
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v93 offset:2176
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v93 offset:2688
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v101, v123, v122, 0xc0c0004
	v_perm_b32 v96, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v122, v125, v124, 0xc0c0004
	v_perm_b32 v97, v12, v11, 0xc0c0004
	v_perm_b32 v120, v121, v120, 0xc0c0004
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v123, v129, v128, 0xc0c0004
	v_perm_b32 v126, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v124, v131, v130, 0xc0c0004
	v_lshl_or_b32 v121, v97, 16, v96
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v125, v133, v132, 0xc0c0004
	v_lshl_or_b32 v12, v123, 16, v122
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v103, v135, v134, 0xc0c0004
	v_lshl_or_b32 v120, v102, 16, v120
	v_lshl_or_b32 v11, v125, 16, v124
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v127, v10, v137, 0xc0c0004
	v_lshl_or_b32 v10, v98, 16, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v99, v136, 0xc0c0004
	v_lshl_or_b32 v9, v101, 16, v100
	v_lshl_or_b32 v123, v126, 16, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v122, v99, 16, v127
	v_wmma_i32_16x16x16_iu4 v[96:103], v[9:10], v[104:105], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[96:103], v[11:12], v[112:113], v[96:103] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v124, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v125, v97
	v_cvt_f32_i32_e32 v126, v98
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v127, v99
	v_cvt_f32_i32_e32 v128, v100
	v_cvt_f32_i32_e32 v129, v101
	v_cvt_f32_i32_e32 v130, v102
	v_cvt_f32_i32_e32 v131, v103
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[96:103], v[120:121], v[104:105], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[96:103], v[122:123], v[112:113], v[96:103] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v104, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v105, v97
	v_cvt_f32_i32_e32 v112, v98
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v113, v99
	v_cvt_f32_i32_e32 v132, v100
	v_cvt_f32_i32_e32 v133, v101
	v_cvt_f32_i32_e32 v134, v102
	v_cvt_f32_i32_e32 v135, v103
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[96:103], v[9:10], v[106:107], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[96:103], v[11:12], v[114:115], v[96:103] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v136, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v137, v97
	v_cvt_f32_i32_e32 v138, v98
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v139, v99
	v_cvt_f32_i32_e32 v140, v100
	v_cvt_f32_i32_e32 v141, v101
	v_cvt_f32_i32_e32 v142, v102
	v_cvt_f32_i32_e32 v143, v103
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[96:103], v[120:121], v[106:107], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[96:103], v[122:123], v[114:115], v[96:103] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v114, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v115, v97
	v_cvt_f32_i32_e32 v144, v98
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v145, v99
	v_cvt_f32_i32_e32 v146, v100
	v_cvt_f32_i32_e32 v147, v101
	v_cvt_f32_i32_e32 v148, v102
	v_cvt_f32_i32_e32 v149, v103
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[96:103], v[9:10], v[108:109], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[96:103], v[11:12], v[116:117], v[96:103] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v106, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v107, v97
	v_cvt_f32_i32_e32 v150, v98
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v151, v99
	v_cvt_f32_i32_e32 v152, v100
	v_cvt_f32_i32_e32 v153, v101
	v_cvt_f32_i32_e32 v154, v102
	v_cvt_f32_i32_e32 v155, v103
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[96:103], v[120:121], v[108:109], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[96:103], v[122:123], v[116:117], v[96:103] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v108, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v109, v97
	v_cvt_f32_i32_e32 v116, v98
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v117, v99
	v_cvt_f32_i32_e32 v156, v100
	v_cvt_f32_i32_e32 v157, v101
	v_cvt_f32_i32_e32 v158, v102
	v_cvt_f32_i32_e32 v159, v103
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[96:103], v[9:10], v[110:111], v[1:8] neg_lo:[1,1,0]
	.loc	1 493 40                        ; ragged.py:493:40
	v_cndmask_b32_e64 v10, 0x80000000, v87, s4
	.loc	1 500 40                        ; ragged.py:500:40
	v_cndmask_b32_e64 v9, 0x80000000, v83, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[96:103], v[11:12], v[118:119], v[96:103] neg_lo:[1,1,0]
	.loc	1 493 40                        ; ragged.py:493:40
	v_cndmask_b32_e64 v11, 0x80000000, v86, s3
	buffer_load_u16 v10, v10, s[28:31], 0 offen
	.loc	1 500 40                        ; ragged.py:500:40
	buffer_load_u16 v9, v9, s[16:19], 0 offen
	.loc	1 464 19                        ; ragged.py:464:19
	v_add_nc_u32_e32 v86, 2, v86
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v160, v96
	v_cvt_f32_i32_e32 v161, v97
	v_cvt_f32_i32_e32 v162, v98
	v_cvt_f32_i32_e32 v163, v99
	v_cvt_f32_i32_e32 v164, v100
	v_cvt_f32_i32_e32 v165, v101
	v_cvt_f32_i32_e32 v166, v102
	v_cvt_f32_i32_e32 v167, v103
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[96:103], v[120:121], v[110:111], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[96:103], v[122:123], v[118:119], v[96:103] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v118, v96
	.loc	1 493 40                        ; ragged.py:493:40
	buffer_load_u16 v96, v11, s[28:31], 0 offen
	v_cndmask_b32_e64 v11, 0x80000000, v85, s2
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v119, v97
	v_cvt_f32_i32_e32 v169, v99
	v_cvt_f32_i32_e32 v168, v98
	v_cvt_f32_i32_e32 v170, v100
	.loc	1 493 40                        ; ragged.py:493:40
	buffer_load_u16 v97, v11, s[28:31], 0 offen
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v173, v103
	v_cvt_f32_i32_e32 v171, v101
	v_cvt_f32_i32_e32 v172, v102
	.loc	1 464 19                        ; ragged.py:464:19
	v_add_nc_u32_e32 v85, 2, v85
	.loc	1 493 40                        ; ragged.py:493:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v99, 16, v10
	v_cndmask_b32_e32 v11, 0x80000000, v84, vcc_lo
	.loc	1 500 40                        ; ragged.py:500:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 464 19                        ; ragged.py:464:19
	v_add_nc_u32_e32 v84, 2, v84
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v100, v124, v99
	.loc	1 493 40                        ; ragged.py:493:40
	buffer_load_u16 v98, v11, s[28:31], 0 offen
	.loc	1 505 21                        ; ragged.py:505:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v94, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v95
	.loc	1 493 40                        ; ragged.py:493:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v103, 16, v96
	.loc	1 498 21                        ; ragged.py:498:21
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v96, v136, v103 :: v_dual_lshlrev_b32 v111, 16, v97
	.loc	1 506 17                        ; ragged.py:506:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v57, v100, v9 :: v_dual_mul_f32 v100, v125, v99
	v_fmac_f32_e32 v67, v96, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 498 21                        ; ragged.py:498:21
	v_dual_mul_f32 v123, v117, v111 :: v_dual_fmac_f32 v82, v100, v10
	v_mul_f32_e32 v100, v126, v99
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v81, v100, v11
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v100, v127, v99
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 506 17                        ; ragged.py:506:17
	v_dual_fmac_f32 v80, v100, v12 :: v_dual_mul_f32 v105, v105, v99
	.loc	1 493 40                        ; ragged.py:493:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v136, 16, v98
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v96, v137, v103
	v_mul_f32_e32 v97, v133, v99
	v_mul_f32_e32 v137, v128, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v104, v104, v99 :: v_dual_mul_f32 v133, v165, v136
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v66, v96, v10
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v96, v138, v103
	v_dual_mul_f32 v138, v129, v99 :: v_dual_mul_f32 v117, v171, v136
	v_mul_f32_e32 v129, v167, v136
	v_mul_f32_e32 v125, v119, v136
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v65, v96, v11
	.loc	1 498 21                        ; ragged.py:498:21
	v_dual_mul_f32 v96, v139, v103 :: v_dual_mul_f32 v127, v169, v136
	v_mul_f32_e32 v139, v130, v99
	v_mul_f32_e32 v98, v134, v99
	v_mul_f32_e32 v122, v116, v111
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v60, v96, v12
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v96, v106, v111
	v_mul_f32_e32 v128, v166, v136
	v_mul_f32_e32 v124, v118, v136
	v_mul_f32_e32 v126, v168, v136
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v116, v170, v136 :: v_dual_fmac_f32 v45, v96, v9
	v_mul_f32_e32 v96, v107, v111
	v_mul_f32_e32 v107, v113, v99
	v_dual_mul_f32 v113, v115, v103 :: v_dual_mul_f32 v118, v172, v136
	v_dual_mul_f32 v119, v173, v136 :: v_dual_fmac_f32 v44, v96, v10
	v_mul_f32_e32 v96, v150, v111
	v_mul_f32_e32 v150, v131, v99
	v_mul_f32_e32 v131, v155, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v43, v96, v11
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v96, v151, v111
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v42, v96, v12
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v96, v160, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v29, v96, v9
	.loc	1 498 21                        ; ragged.py:498:21
	v_dual_mul_f32 v9, v161, v136 :: v_dual_mul_f32 v96, v132, v99
	v_mul_f32_e32 v132, v164, v136
	.loc	1 506 17                        ; ragged.py:506:17
	v_dual_fmac_f32 v28, v9, v10 :: v_dual_mul_f32 v9, v162, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v9, v11
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v9, v163, v136
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v26, v9, v12
	.loc	1 505 21                        ; ragged.py:505:21
	ds_load_b128 v[9:12], v95 offset:16
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v106, v112, v99
	v_mul_f32_e32 v99, v135, v99
	v_mul_f32_e32 v134, v140, v103
	v_mul_f32_e32 v135, v141, v103
	v_mul_f32_e32 v140, v142, v103
	v_mul_f32_e32 v142, v152, v111
	v_mul_f32_e32 v141, v143, v103
	v_mul_f32_e32 v121, v109, v111
	v_mul_f32_e32 v115, v145, v103
	.loc	1 464 19                        ; ragged.py:464:19
	v_add_nc_u32_e32 v83, s6, v83
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v101, v147, v103
	.loc	1 506 17                        ; ragged.py:506:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v22, v129, v12 :: v_dual_add_nc_u32 v87, 2, v87
	v_dual_fmac_f32 v79, v137, v9 :: v_dual_fmac_f32 v56, v135, v10
	v_fmac_f32_e32 v41, v142, v9
	.loc	1 498 21                        ; ragged.py:498:21
	v_dual_mul_f32 v143, v153, v111 :: v_dual_fmac_f32 v58, v134, v9
	.loc	1 505 21                        ; ragged.py:505:21
	ds_load_b128 v[134:137], v95 offset:512
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v120, v108, v111
	v_mul_f32_e32 v130, v154, v111
	.loc	1 506 17                        ; ragged.py:506:17
	v_dual_fmac_f32 v78, v138, v10 :: v_dual_fmac_f32 v77, v139, v11
	v_fmac_f32_e32 v24, v133, v10
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v38, v131, v12 :: v_dual_fmac_f32 v39, v130, v11
	v_fmac_f32_e32 v25, v132, v9
	.loc	1 505 21                        ; ragged.py:505:21
	ds_load_b128 v[130:133], v95 offset:528
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v112, v114, v103
	v_mul_f32_e32 v114, v144, v103
	v_dual_mul_f32 v109, v157, v111 :: v_dual_fmac_f32 v40, v143, v10
	v_mul_f32_e32 v110, v158, v111
	.loc	1 506 17                        ; ragged.py:506:17
	v_dual_fmac_f32 v76, v150, v12 :: v_dual_fmac_f32 v55, v140, v11
	v_dual_fmac_f32 v54, v141, v12 :: v_dual_fmac_f32 v23, v128, v11
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v34, v123, v137 :: v_dual_fmac_f32 v75, v104, v134
	.loc	1 498 21                        ; ragged.py:498:21
	v_dual_mul_f32 v100, v146, v103 :: v_dual_fmac_f32 v53, v112, v134
	.loc	1 506 17                        ; ragged.py:506:17
	v_dual_fmac_f32 v73, v106, v136 :: v_dual_mul_f32 v102, v148, v103
	v_fmac_f32_e32 v51, v114, v136
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v103, v149, v103
	v_mul_f32_e32 v108, v156, v111
	v_mul_f32_e32 v111, v159, v111
	.loc	1 506 17                        ; ragged.py:506:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v74, v105, v135 :: v_dual_fmac_f32 v71, v96, v130
	v_fmac_f32_e32 v72, v107, v137
	v_dual_fmac_f32 v52, v113, v135 :: v_dual_fmac_f32 v49, v100, v130
	v_dual_fmac_f32 v50, v115, v137 :: v_dual_fmac_f32 v21, v124, v134
	v_dual_fmac_f32 v20, v125, v135 :: v_dual_fmac_f32 v31, v110, v132
	v_fmac_f32_e32 v19, v126, v136
	v_dual_fmac_f32 v37, v120, v134 :: v_dual_fmac_f32 v18, v127, v137
	v_dual_fmac_f32 v17, v116, v130 :: v_dual_fmac_f32 v70, v97, v131
	v_fmac_f32_e32 v15, v118, v132
	v_fmac_f32_e32 v69, v98, v132
	v_dual_fmac_f32 v35, v122, v136 :: v_dual_fmac_f32 v68, v99, v133
	v_dual_fmac_f32 v48, v101, v131 :: v_dual_fmac_f32 v47, v102, v132
	v_dual_fmac_f32 v36, v121, v135 :: v_dual_fmac_f32 v33, v108, v130
	v_fmac_f32_e32 v46, v103, v133
	v_fmac_f32_e32 v32, v109, v131
	v_fmac_f32_e32 v30, v111, v133
	v_fmac_f32_e32 v16, v117, v131
	v_fmac_f32_e32 v14, v119, v133
	.loc	1 464 19                        ; ragged.py:464:19
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 509 9                         ; ragged.py:509:9
	v_bfe_u32 v7, v57, 16, 1
	v_bfe_u32 v8, v82, 16, 1
	v_cmp_o_f32_e64 s5, v57, v57
	v_cmp_o_f32_e64 s6, v82, v82
	v_bfe_u32 v9, v81, 16, 1
	v_add3_u32 v7, v57, v7, 0x7fff
	v_add3_u32 v8, v82, v8, 0x7fff
	v_bfe_u32 v10, v80, 16, 1
	v_cmp_o_f32_e64 s7, v81, v81
	v_add3_u32 v9, v81, v9, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s5
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s6
	v_bfe_u32 v8, v79, 16, 1
	v_bfe_u32 v11, v78, 16, 1
	v_add3_u32 v10, v80, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v80, v80
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s7
	v_add3_u32 v8, v79, v8, 0x7fff
	v_cmp_o_f32_e64 s6, v79, v79
	v_add3_u32 v11, v78, v11, 0x7fff
	v_cmp_o_f32_e64 s7, v78, v78
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s5
	v_bfe_u32 v10, v77, 16, 1
	v_bfe_u32 v12, v76, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s6
	v_cndmask_b16 v8.h, 0x7fff, v11.h, s7
	v_bfe_u32 v11, v75, 16, 1
	v_add3_u32 v10, v77, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v77, v77
	v_add3_u32 v12, v76, v12, 0x7fff
	v_cmp_o_f32_e64 s6, v76, v76
	v_bfe_u32 v13, v74, 16, 1
	v_add3_u32 v11, v75, v11, 0x7fff
	v_cmp_o_f32_e64 s7, v75, v75
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s6
	v_bfe_u32 v12, v73, 16, 1
	v_bfe_u32 v57, v72, 16, 1
	v_add3_u32 v13, v74, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v74, v74
	.loc	1 510 13                        ; ragged.py:510:13
	v_mul_lo_u32 v6, v59, s33
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s7
	v_add3_u32 v12, v73, v12, 0x7fff
	v_cmp_o_f32_e64 s6, v73, v73
	v_add3_u32 v57, v72, v57, 0x7fff
	v_cmp_o_f32_e64 s7, v72, v72
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v71, 16, 1
	v_bfe_u32 v59, v70, 16, 1
	.loc	1 414 36                        ; ragged.py:414:36
	v_lshrrev_b32_e32 v2, 1, v61
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s6
	v_cndmask_b16 v12.h, 0x7fff, v57.h, s7
	v_bfe_u32 v57, v69, 16, 1
	v_add3_u32 v13, v71, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v71, v71
	v_add3_u32 v59, v70, v59, 0x7fff
	v_cmp_o_f32_e64 s6, v70, v70
	v_bfe_u32 v61, v68, 16, 1
	.loc	1 510 13                        ; ragged.py:510:13
	v_mul_lo_u32 v5, v62, s33
	.loc	1 509 9                         ; ragged.py:509:9
	v_add3_u32 v57, v69, v57, 0x7fff
	v_cmp_o_f32_e64 s7, v69, v69
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s5
	v_cndmask_b16 v13.h, 0x7fff, v59.h, s6
	v_bfe_u32 v59, v67, 16, 1
	v_bfe_u32 v62, v66, 16, 1
	v_add3_u32 v61, v68, v61, 0x7fff
	v_cmp_o_f32_e64 s5, v68, v68
	v_cndmask_b16 v57.l, 0x7fff, v57.h, s7
	v_add3_u32 v59, v67, v59, 0x7fff
	v_cmp_o_f32_e64 s6, v67, v67
	v_add3_u32 v62, v66, v62, 0x7fff
	v_cmp_o_f32_e64 s7, v66, v66
	v_cndmask_b16 v57.h, 0x7fff, v61.h, s5
	v_bfe_u32 v61, v65, 16, 1
	.loc	1 510 13                        ; ragged.py:510:13
	v_mul_lo_u32 v4, v63, s33
	.loc	1 509 9                         ; ragged.py:509:9
	v_bfe_u32 v63, v60, 16, 1
	v_cndmask_b16 v59.l, 0x7fff, v59.h, s6
	v_cndmask_b16 v59.h, 0x7fff, v62.h, s7
	v_bfe_u32 v62, v58, 16, 1
	v_add3_u32 v61, v65, v61, 0x7fff
	v_cmp_o_f32_e64 s5, v65, v65
	v_add3_u32 v63, v60, v63, 0x7fff
	v_cmp_o_f32_e64 s6, v60, v60
	v_add3_u32 v60, v58, v62, 0x7fff
	v_cmp_o_f32_e64 s7, v58, v58
	v_cndmask_b16 v58.l, 0x7fff, v61.h, s5
	v_bfe_u32 v61, v56, 16, 1
	v_bfe_u32 v62, v55, 16, 1
	v_cndmask_b16 v58.h, 0x7fff, v63.h, s6
	v_bfe_u32 v63, v54, 16, 1
	v_cmp_o_f32_e64 s5, v56, v56
	v_add3_u32 v61, v56, v61, 0x7fff
	v_add3_u32 v56, v55, v62, 0x7fff
	v_cmp_o_f32_e64 s6, v55, v55
	v_add3_u32 v55, v54, v63, 0x7fff
	v_cndmask_b16 v60.l, 0x7fff, v60.h, s7
	v_cmp_o_f32_e64 s7, v54, v54
	v_bfe_u32 v54, v53, 16, 1
	v_cndmask_b16 v55.l, 0x7fff, v56.h, s6
	v_bfe_u32 v56, v52, 16, 1
	v_cndmask_b16 v60.h, 0x7fff, v61.h, s5
	v_bfe_u32 v61, v51, 16, 1
	v_add3_u32 v54, v53, v54, 0x7fff
	v_cmp_o_f32_e64 s5, v53, v53
	v_add3_u32 v53, v52, v56, 0x7fff
	v_cmp_o_f32_e64 s6, v52, v52
	v_cndmask_b16 v55.h, 0x7fff, v55.h, s7
	v_add3_u32 v52, v51, v61, 0x7fff
	v_cmp_o_f32_e64 s7, v51, v51
	v_cndmask_b16 v51.l, 0x7fff, v54.h, s5
	v_bfe_u32 v54, v50, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s6
	v_bfe_u32 v53, v49, 16, 1
	v_bfe_u32 v56, v48, 16, 1
	v_cmp_o_f32_e64 s5, v50, v50
	v_add3_u32 v54, v50, v54, 0x7fff
	v_cmp_o_f32_e64 s6, v49, v49
	v_add3_u32 v50, v49, v53, 0x7fff
	v_add3_u32 v49, v48, v56, 0x7fff
	v_cndmask_b16 v52.l, 0x7fff, v52.h, s7
	v_cmp_o_f32_e64 s7, v48, v48
	v_bfe_u32 v48, v47, 16, 1
	v_cndmask_b16 v49.l, 0x7fff, v50.h, s6
	v_bfe_u32 v50, v46, 16, 1
	v_cndmask_b16 v52.h, 0x7fff, v54.h, s5
	v_bfe_u32 v53, v45, 16, 1
	v_add3_u32 v48, v47, v48, 0x7fff
	v_cmp_o_f32_e64 s5, v47, v47
	v_add3_u32 v47, v46, v50, 0x7fff
	v_cmp_o_f32_e64 s6, v46, v46
	v_cndmask_b16 v49.h, 0x7fff, v49.h, s7
	v_add3_u32 v46, v45, v53, 0x7fff
	v_cmp_o_f32_e64 s7, v45, v45
	v_cndmask_b16 v45.l, 0x7fff, v48.h, s5
	v_bfe_u32 v48, v44, 16, 1
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s6
	v_bfe_u32 v47, v43, 16, 1
	v_bfe_u32 v50, v42, 16, 1
	v_cmp_o_f32_e64 s5, v44, v44
	v_add3_u32 v48, v44, v48, 0x7fff
	v_cmp_o_f32_e64 s6, v43, v43
	v_add3_u32 v44, v43, v47, 0x7fff
	v_add3_u32 v43, v42, v50, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s7
	v_cmp_o_f32_e64 s7, v42, v42
	v_bfe_u32 v42, v41, 16, 1
	v_cndmask_b16 v43.l, 0x7fff, v44.h, s6
	v_bfe_u32 v44, v40, 16, 1
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s5
	v_bfe_u32 v47, v39, 16, 1
	v_add3_u32 v42, v41, v42, 0x7fff
	v_cmp_o_f32_e64 s5, v41, v41
	v_add3_u32 v41, v40, v44, 0x7fff
	v_cmp_o_f32_e64 s6, v40, v40
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s7
	v_add3_u32 v40, v39, v47, 0x7fff
	v_cmp_o_f32_e64 s7, v39, v39
	v_cndmask_b16 v39.l, 0x7fff, v42.h, s5
	v_bfe_u32 v42, v38, 16, 1
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s6
	v_bfe_u32 v41, v37, 16, 1
	v_bfe_u32 v44, v36, 16, 1
	v_cmp_o_f32_e64 s5, v38, v38
	v_add3_u32 v42, v38, v42, 0x7fff
	v_cmp_o_f32_e64 s6, v37, v37
	v_add3_u32 v38, v37, v41, 0x7fff
	v_add3_u32 v37, v36, v44, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s7
	v_cmp_o_f32_e64 s7, v36, v36
	v_bfe_u32 v36, v35, 16, 1
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s6
	v_bfe_u32 v38, v34, 16, 1
	v_cndmask_b16 v40.h, 0x7fff, v42.h, s5
	v_bfe_u32 v41, v33, 16, 1
	v_add3_u32 v36, v35, v36, 0x7fff
	v_cmp_o_f32_e64 s5, v35, v35
	v_add3_u32 v35, v34, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v34, v34
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s7
	v_add3_u32 v34, v33, v41, 0x7fff
	v_cmp_o_f32_e64 s7, v33, v33
	v_cndmask_b16 v33.l, 0x7fff, v36.h, s5
	v_bfe_u32 v36, v32, 16, 1
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s6
	v_bfe_u32 v35, v31, 16, 1
	v_bfe_u32 v38, v30, 16, 1
	v_cmp_o_f32_e64 s5, v32, v32
	v_add3_u32 v36, v32, v36, 0x7fff
	v_cmp_o_f32_e64 s6, v31, v31
	v_add3_u32 v32, v31, v35, 0x7fff
	v_add3_u32 v31, v30, v38, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s7
	v_cmp_o_f32_e64 s7, v30, v30
	v_bfe_u32 v30, v29, 16, 1
	v_cndmask_b16 v31.l, 0x7fff, v32.h, s6
	v_bfe_u32 v32, v28, 16, 1
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s5
	v_bfe_u32 v35, v27, 16, 1
	v_add3_u32 v30, v29, v30, 0x7fff
	v_cmp_o_f32_e64 s5, v29, v29
	v_add3_u32 v29, v28, v32, 0x7fff
	v_cmp_o_f32_e64 s6, v28, v28
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s7
	v_add3_u32 v28, v27, v35, 0x7fff
	v_cmp_o_f32_e64 s7, v27, v27
	v_cndmask_b16 v27.l, 0x7fff, v30.h, s5
	v_bfe_u32 v30, v26, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s6
	v_bfe_u32 v29, v25, 16, 1
	v_bfe_u32 v32, v24, 16, 1
	v_cmp_o_f32_e64 s5, v26, v26
	v_add3_u32 v30, v26, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v25, v25
	v_add3_u32 v26, v25, v29, 0x7fff
	v_add3_u32 v25, v24, v32, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s7
	v_cmp_o_f32_e64 s7, v24, v24
	v_bfe_u32 v24, v23, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s6
	v_bfe_u32 v26, v22, 16, 1
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s5
	v_bfe_u32 v29, v21, 16, 1
	v_add3_u32 v24, v23, v24, 0x7fff
	v_cmp_o_f32_e64 s5, v23, v23
	v_add3_u32 v23, v22, v26, 0x7fff
	v_cmp_o_f32_e64 s6, v22, v22
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s7
	v_add3_u32 v22, v21, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v21, v21
	v_cndmask_b16 v21.l, 0x7fff, v24.h, s5
	v_bfe_u32 v24, v20, 16, 1
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s6
	v_bfe_u32 v23, v19, 16, 1
	v_bfe_u32 v26, v18, 16, 1
	v_cmp_o_f32_e64 s5, v20, v20
	v_add3_u32 v24, v20, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v19, v19
	v_add3_u32 v20, v19, v23, 0x7fff
	v_add3_u32 v19, v18, v26, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s7
	v_cmp_o_f32_e64 s7, v18, v18
	v_bfe_u32 v18, v17, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v20.h, s6
	v_bfe_u32 v20, v16, 16, 1
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s5
	v_bfe_u32 v23, v15, 16, 1
	v_add3_u32 v18, v17, v18, 0x7fff
	v_cmp_o_f32_e64 s5, v17, v17
	v_add3_u32 v17, v16, v20, 0x7fff
	v_bfe_u32 v20, v14, 16, 1
	v_cmp_o_f32_e64 s6, v16, v16
	v_and_b32_e32 v0, 16, v0
	v_cndmask_b16 v19.h, 0x7fff, v19.h, s7
	v_add3_u32 v16, v15, v23, 0x7fff
	v_cmp_o_f32_e64 s7, v15, v15
	v_add3_u32 v15, v14, v20, 0x7fff
	v_cmp_o_f32_e64 s8, v14, v14
	v_cndmask_b16 v14.l, 0x7fff, v18.h, s5
	v_cmp_eq_u32_e64 s5, 0, v0
	v_cndmask_b16 v14.h, 0x7fff, v17.h, s6
	v_cndmask_b16 v0.l, 0x7fff, v16.h, s7
	v_cndmask_b16 v0.h, 0x7fff, v15.h, s8
	s_mov_b32 s6, 0x76543210
	v_cndmask_b32_e64 v15, v8, v7, s5
	v_cndmask_b32_e64 v7, v7, v8, s5
	v_cndmask_b32_e64 v35, v40, v43, s5
	v_cndmask_b32_e64 v36, v43, v40, s5
	v_cndmask_b32_e64 v38, v34, v37, s5
	v_cndmask_b32_e64 v34, v37, v34, s5
	v_cndmask_b32_e64 v37, v31, v33, s5
	v_cndmask_b32_e64 v31, v33, v31, s5
	v_cndmask_b32_e64 v33, v25, v27, s5
	v_cndmask_b32_e64 v25, v27, v25, s5
	v_cndmask_b32_e64 v40, v14, v22, s5
	v_cndmask_b32_e64 v14, v22, v14, s5
	v_mov_b32_e32 v22, 0x5410
	v_mov_b32_e32 v27, 0x7632
	v_cndmask_b32_e64 v8, v9, v10, s5
	v_cndmask_b32_e64 v41, v0, v19, s5
	v_cndmask_b32_e64 v0, v19, v0, s5
	v_permlanex16_b32 v19, v7, s6, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v7, 0x1054, v22, s5
	v_cndmask_b32_e64 v22, 0x3276, v27, s5
	v_permlanex16_b32 v27, v8, s6, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v16, v10, v9, s5
	v_cndmask_b32_e64 v9, v11, v13, s5
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v8, v22, 8, v22
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v2, s35, v2
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v17, v13, v11, s5
	v_cndmask_b32_e64 v18, v57, v12, s5
	v_and_b32_e32 v7, 0x540054, v7
	v_and_b32_e32 v8, 0x760076, v8
	v_cndmask_b32_e64 v10, v12, v57, s5
	v_cndmask_b32_e64 v11, v59, v60, s5
	v_cndmask_b32_e64 v12, v58, v55, s5
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v8, v8, 4, v8
	v_cndmask_b32_e64 v13, v51, v49, s5
	v_cndmask_b32_e64 v29, v52, v45, s5
	v_cndmask_b32_e64 v30, v39, v46, s5
	v_cndmask_b32_e64 v32, v46, v39, s5
	v_cndmask_b32_e64 v39, v21, v28, s5
	v_cndmask_b32_e64 v21, v28, v21, s5
	v_permlanex16_b32 v28, v9, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s6, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v46, 0x5040504, v7
	v_and_b32_e32 v47, 0x7060706, v8
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v3, 0x80, v2
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e64 s1, s33, v2
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v20, v60, v59, s5
	v_cndmask_b32_e64 v23, v55, v58, s5
	v_cndmask_b32_e64 v24, v49, v51, s5
	v_cndmask_b32_e64 v26, v45, v52, s5
	v_permlanex16_b32 v42, v10, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v11, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v12, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v13, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v29, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v36, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v49, v14, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v9, v27, v16, v46
	v_perm_b32 v10, v27, v16, v47
	v_perm_b32 v11, v28, v17, v46
	v_perm_b32 v12, v28, v17, v47
	v_perm_b32 v27, v34, v38, v46
	v_perm_b32 v28, v34, v38, v47
	v_add_lshl_u32 v38, v2, v6, 1
	.loc	1 510 13                        ; ragged.py:510:13
	v_mul_lo_u32 v1, v64, s33
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e64 s0, s33, v3
	.loc	1 509 9                         ; ragged.py:509:9
	v_permlanex16_b32 v45, v25, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v48, v21, s6, 0xfedcba98 op_sel:[1,0]
	v_add_lshl_u32 v6, v3, v6, 1
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s5, s1, s4
	.loc	1 509 9                         ; ragged.py:509:9
	v_perm_b32 v7, v19, v15, v46
	v_perm_b32 v8, v19, v15, v47
	v_perm_b32 v13, v42, v18, v46
	v_perm_b32 v14, v42, v18, v47
	v_perm_b32 v15, v22, v20, v46
	v_perm_b32 v16, v22, v20, v47
	v_perm_b32 v17, v43, v23, v46
	v_perm_b32 v18, v43, v23, v47
	v_perm_b32 v19, v44, v24, v46
	v_perm_b32 v20, v44, v24, v47
	v_perm_b32 v21, v29, v26, v46
	v_perm_b32 v22, v29, v26, v47
	v_perm_b32 v23, v32, v30, v46
	v_perm_b32 v24, v32, v30, v47
	v_perm_b32 v25, v36, v35, v46
	v_perm_b32 v26, v36, v35, v47
	v_perm_b32 v29, v31, v37, v46
	v_perm_b32 v30, v31, v37, v47
	v_perm_b32 v35, v49, v40, v46
	v_perm_b32 v36, v49, v40, v47
	v_perm_b32 v37, v0, v41, v46
	v_cndmask_b32_e64 v40, 0x80000000, v38, s5
	v_perm_b32 v38, v0, v41, v47
	v_add_lshl_u32 v0, v3, v5, 1
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s4, s0, s4
	.loc	1 509 9                         ; ragged.py:509:9
	v_perm_b32 v31, v45, v33, v46
	v_perm_b32 v32, v45, v33, v47
	v_perm_b32 v33, v48, v39, v46
	v_perm_b32 v34, v48, v39, v47
	v_add_lshl_u32 v39, v2, v5, 1
	v_add_lshl_u32 v5, v2, v4, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s4, s1, s3
	s_and_b32 s3, s0, s3
	.loc	1 509 9                         ; ragged.py:509:9
	v_add_lshl_u32 v4, v3, v4, 1
	v_add_lshl_u32 v2, v2, v1, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s3, s1, s2
	.loc	1 509 9                         ; ragged.py:509:9
	v_add_lshl_u32 v1, v3, v1, 1
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s2, s0, s2
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v39, 0x80000000, v39, s4
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s1, s1, vcc_lo
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v3, 0x80000000, v4, s2
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 509 9                         ; ragged.py:509:9
	s_and_b32 s13, s11, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_mov_b32 s12, s10
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x7
	buffer_store_b128 v[7:10], v40, s[12:15], 0 offen
	buffer_store_b128 v[11:14], v6, s[12:15], 0 offen
	buffer_store_b128 v[15:18], v39, s[12:15], 0 offen
	buffer_store_b128 v[19:22], v0, s[12:15], 0 offen
	buffer_store_b128 v[23:26], v5, s[12:15], 0 offen
	buffer_store_b128 v[27:30], v3, s[12:15], 0 offen
	buffer_store_b128 v[31:34], v2, s[12:15], 0 offen
	buffer_store_b128 v[35:38], v1, s[12:15], 0 offen
	.loc	1 374 5                         ; ragged.py:374:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 112
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 174
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
		.amdhsa_inst_pref_size 58
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 174
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 37
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7400
; TotalNumSgprs: 39
; NumVgprs: 174
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 39
; NumVGPRsForWavesPerEU: 174
; Occupancy: 8
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x4d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x27 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	400                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         96
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 112
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     39
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     174
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
