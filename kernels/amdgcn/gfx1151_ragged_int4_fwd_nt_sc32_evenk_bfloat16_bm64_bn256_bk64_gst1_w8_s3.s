	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
	.loc	1 413 18                        ; ragged.py:413:18
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:400:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:400:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
.Ltmp2:
	.loc	1 402 25 is_stmt 1              ; ragged.py:402:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v61, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v53, 0
	s_cselect_b32 s4, s8, s5
	.loc	1 414 36                        ; ragged.py:414:36
	v_and_b32_e32 v56, 0xf0, v0
	.loc	1 402 25                        ; ragged.py:402:25
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
	v_add_nc_u32_e32 v55, s22, v1
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
	v_add_nc_u32_e32 v58, 16, v55
	v_add_nc_u32_e32 v59, 32, v55
	v_add_nc_u32_e32 v60, 48, v55
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
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b32 s8, s[0:1], 0x50
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 413 32 is_stmt 1              ; ragged.py:413:32
	v_lshrrev_b32_e32 v4, 2, v0
	v_dual_mov_b32 v76, 0 :: v_dual_lshlrev_b32 v9, 4, v0
	v_bfe_i32 v10, v0, 3, 1
	.loc	1 413 18 is_stmt 0              ; ragged.py:413:18
	v_dual_mov_b32 v53, 0 :: v_dual_lshlrev_b32 v6, 2, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, s0, s22, v4
	v_add_co_ci_u32_e64 v3, null, s23, 0, s0
	.loc	1 414 18 is_stmt 1              ; ragged.py:414:18
	v_or_b32_e32 v5, s35, v0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v68, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 415 21                        ; ragged.py:415:21
	v_cmp_le_i64_e64 s1, s[26:27], v[2:3]
	.loc	1 415 48 is_stmt 0              ; ragged.py:415:48
	v_cmp_gt_i64_e64 s5, s[28:29], v[2:3]
	v_and_b32_e32 v2, 0x70, v9
	v_lshlrev_b32_e32 v9, 5, v0
	.loc	1 409 20 is_stmt 1              ; ragged.py:409:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s24
	s_addc_u32 s7, s7, s25
	v_bfe_i32 v8, v0, 5, 1
	.loc	1 415 20                        ; ragged.py:415:20
	s_and_b32 s1, s1, s5
	.loc	1 501 25                        ; ragged.py:501:25
	s_load_b32 s5, s[6:7], 0x0
	.loc	1 464 19                        ; ragged.py:464:19
	s_lshl_b32 s7, s36, 8
	v_and_or_b32 v2, 0x88, v10, v2
	v_dual_mov_b32 v73, 0 :: v_dual_lshlrev_b32 v10, 2, v56
	v_dual_mov_b32 v66, 0 :: v_dual_and_b32 v9, 32, v9
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v7, 0, v1
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e64 s0, s33, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v16, 0, v10, v9
	v_dual_mov_b32 v74, 0 :: v_dual_and_b32 v1, 12, v6
	v_dual_mov_b32 v72, 0 :: v_dual_and_b32 v3, 0x37c, v6
	v_dual_mov_b32 v70, 0 :: v_dual_and_b32 v5, 0x88, v8
	v_lshrrev_b32_e32 v6, 1, v0
	.loc	1 464 19                        ; ragged.py:464:19
	v_mul_lo_u32 v10, s34, v60
	v_dual_mov_b32 v71, 0 :: v_dual_lshlrev_b32 v14, 1, v0
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s5, s33, s5
	v_mul_lo_u32 v18, s34, v58
	s_mul_i32 s6, s5, s34
	v_add3_u32 v19, s5, s7, v0
	v_add3_u32 v15, s6, s7, v0
	s_lshl_b32 s6, s21, 8
	v_mul_lo_u32 v20, s34, v55
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v4, s22, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_subrev_nc_u32_e32 v9, s6, v15
	v_mul_lo_u32 v15, s34, v59
	v_xor_b32_e32 v3, v5, v3
	v_xor_b32_e32 v5, 8, v2
	v_or_b32_e32 v8, 0x300, v0
	v_dual_mov_b32 v62, 0 :: v_dual_lshlrev_b32 v79, 1, v9
	v_subrev_nc_u32_e32 v9, s6, v19
	v_dual_mov_b32 v75, 0 :: v_dual_and_b32 v6, 0x70, v6
	v_or_b32_e32 v11, 0x700, v0
	v_or_b32_e32 v12, 0xb00, v0
	v_or_b32_e32 v13, 0xf00, v0
	v_dual_mov_b32 v69, 0 :: v_dual_and_b32 v14, 28, v14
	v_dual_mov_b32 v64, 0 :: v_dual_lshlrev_b32 v17, 1, v56
	v_dual_mov_b32 v65, 0 :: v_dual_lshlrev_b32 v80, 1, v10
	v_mul_lo_u32 v84, s8, v9
	v_mad_u64_u32 v[9:10], null, v4, s8, v[1:2]
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v85, 0, v3
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v86, 0, v2
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v87, 0, v5
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v89, 0, v8
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v93, v7, v6
	v_dual_mov_b32 v1, s20 :: v_dual_mov_b32 v8, s27
	v_dual_mov_b32 v54, 0 :: v_dual_lshlrev_b32 v81, 1, v15
	v_dual_mov_b32 v63, 0 :: v_dual_lshlrev_b32 v82, 1, v18
	v_dual_mov_b32 v52, 0 :: v_dual_lshlrev_b32 v83, 1, v20
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v88, 0, v0
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v90, 0, v11
	v_dual_mov_b32 v44, 0 :: v_dual_add_nc_u32 v91, 0, v12
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v92, 0, v13
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v94, v16, v14
	v_dual_mov_b32 v40, 0 :: v_dual_add_nc_u32 v95, 0, v17
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v2, s21
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v4, s23
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v6, s25
	v_mov_b32_e32 v3, s22
	v_mov_b32_e32 v5, s24
	v_mov_b32_e32 v7, s26
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s29, s19, 0xffff
	s_mov_b32 s28, s18
	s_lshl_b32 s5, s33, 1
	s_mov_b32 s36, s12
	s_mov_b32 s37, s13
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s30
	s_mov_b32 s15, s31
	s_mov_b32 s18, s30
	s_mov_b32 s19, s31
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_cndmask_b32_e64 v96, 0x80000000, v9, s1
	v_cndmask_b32_e64 v97, 0x80000000, v84, s0
	.loc	1 464 19                        ; ragged.py:464:19
	s_add_i32 s34, s34, -1
	.loc	1 478 34 is_stmt 1              ; ragged.py:478:34
	buffer_load_b32 v100, v96, s[36:39], 0 offen
	.loc	1 479 34                        ; ragged.py:479:34
	buffer_load_b128 v[96:99], v97, s[12:15], 0 offen
	.loc	1 478 34                        ; ragged.py:478:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 464 19                        ; ragged.py:464:19
	s_cmp_lg_u32 s34, 0
	v_add_nc_u32_e32 v9, 16, v9
	.loc	1 478 34                        ; ragged.py:478:34
	s_waitcnt vmcnt(1)
	ds_store_b32 v85, v100
	.loc	1 479 34                        ; ragged.py:479:34
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v101, 8, v96
	v_lshrrev_b32_e32 v102, 8, v97
	v_lshrrev_b32_e32 v103, 8, v98
	v_lshrrev_b32_e32 v100, 8, v99
	.loc	1 478 34                        ; ragged.py:478:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[126:129], v86 offset1:32
	ds_load_2addr_b64 v[166:169], v86 offset0:64 offset1:96
	ds_load_2addr_b64 v[130:133], v87 offset1:32
	ds_load_2addr_b64 v[170:173], v87 offset0:64 offset1:96
	.loc	1 479 34                        ; ragged.py:479:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8_d16_hi v88, v98 offset:2560
	ds_store_b8 v88, v99 offset:3072
	ds_store_b8 v88, v96
	ds_store_b8_d16_hi v88, v96 offset:512
	ds_store_b8 v88, v97 offset:1024
	ds_store_b8_d16_hi v88, v97 offset:1536
	ds_store_b8 v88, v98 offset:2048
	ds_store_b8_d16_hi v88, v99 offset:3584
	v_lshrrev_b32_e32 v96, 24, v96
	v_lshrrev_b32_e32 v97, 24, v97
	v_lshrrev_b32_e32 v98, 24, v98
	v_lshrrev_b32_e32 v99, 24, v99
	ds_store_b8 v88, v101 offset:256
	ds_store_b8 v88, v102 offset:1280
	ds_store_b8 v88, v103 offset:2304
	ds_store_b8 v88, v100 offset:3328
	ds_store_b8 v89, v96
	ds_store_b8 v90, v97
	ds_store_b8 v91, v98
	ds_store_b8 v92, v99
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 480 31                        ; ragged.py:480:31
	ds_load_u8 v96, v93 offset:1280
	ds_load_u8 v97, v93 offset:1024
	ds_load_u8 v98, v93 offset:1920
	ds_load_u8 v99, v93 offset:1664
	ds_load_u8 v100, v93 offset:1408
	ds_load_u8 v101, v93 offset:1152
	ds_load_u8 v102, v93 offset:1792
	ds_load_u8 v103, v93 offset:1536
	ds_load_u8 v104, v93 offset:256
	ds_load_u8 v105, v93
	ds_load_u8 v106, v93 offset:896
	ds_load_u8 v107, v93 offset:640
	ds_load_u8 v108, v93 offset:384
	ds_load_u8 v109, v93 offset:128
	ds_load_u8 v110, v93 offset:768
	ds_load_u8 v111, v93 offset:512
	ds_load_u8 v112, v93 offset:3328
	ds_load_u8 v113, v93 offset:3072
	ds_load_u8 v114, v93 offset:3840
	ds_load_u8 v115, v93 offset:3584
	ds_load_u8 v116, v93 offset:2304
	ds_load_u8 v117, v93 offset:2048
	ds_load_u8 v118, v93 offset:2816
	ds_load_u8 v119, v93 offset:2560
	ds_load_u8 v120, v93 offset:3968
	ds_load_u8 v121, v93 offset:3712
	ds_load_u8 v122, v93 offset:3456
	ds_load_u8 v123, v93 offset:3200
	ds_load_u8 v124, v93 offset:2944
	ds_load_u8 v125, v93 offset:2432
	ds_load_u8 v134, v93 offset:2176
	ds_load_u8 v135, v93 offset:2688
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v97, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v102, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v103, v111, v110, 0xc0c0004
	v_perm_b32 v100, v101, v100, 0xc0c0004
	v_perm_b32 v98, v99, v98, 0xc0c0004
	v_perm_b32 v99, v109, v108, 0xc0c0004
	v_perm_b32 v101, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v104, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v105, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v110, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v111, v119, v118, 0xc0c0004
	v_lshl_or_b32 v153, v97, 16, v96
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v107, v121, v120, 0xc0c0004
	v_lshl_or_b32 v152, v103, 16, v102
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v106, v123, v122, 0xc0c0004
	v_lshl_or_b32 v175, v98, 16, v100
	v_lshl_or_b32 v174, v101, 16, v99
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v108, v134, v125, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v135, v124, 0xc0c0004
	v_lshl_or_b32 v155, v105, 16, v104
	v_lshl_or_b32 v154, v111, 16, v110
	v_lshl_or_b32 v177, v107, 16, v106
	v_wmma_i32_16x16x16_iu4 v[144:151], v[152:153], v[166:167], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v176, v109, 16, v108
	v_wmma_i32_16x16x16_iu4 v[104:111], v[174:175], v[126:127], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[144:151], v[154:155], v[170:171], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[96:103], v[152:153], v[126:127], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[104:111], v[176:177], v[130:131], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[112:119], v[152:153], v[128:129], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[120:127], v[174:175], v[128:129], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v136, v104
	v_cvt_f32_i32_e32 v137, v105
	v_cvt_f32_i32_e32 v138, v106
	v_cvt_f32_i32_e32 v139, v107
	v_cvt_f32_i32_e32 v140, v108
	v_cvt_f32_i32_e32 v141, v109
	v_cvt_f32_i32_e32 v142, v110
	v_cvt_f32_i32_e32 v143, v111
	v_cvt_f32_i32_e32 v108, v144
	v_cvt_f32_i32_e32 v109, v145
	v_cvt_f32_i32_e32 v110, v146
	v_cvt_f32_i32_e32 v111, v147
	v_cvt_f32_i32_e32 v104, v148
	v_cvt_f32_i32_e32 v105, v149
	v_cvt_f32_i32_e32 v106, v150
	v_cvt_f32_i32_e32 v107, v151
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[144:151], v[174:175], v[166:167], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[96:103], v[154:155], v[130:131], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[112:119], v[154:155], v[132:133], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[120:127], v[176:177], v[132:133], v[120:127] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[144:151], v[176:177], v[170:171], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[160:167], v[174:175], v[168:169], v[1:8] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v128, v96
	v_cvt_f32_i32_e32 v129, v97
	v_cvt_f32_i32_e32 v130, v98
	v_cvt_f32_i32_e32 v131, v99
	v_cvt_f32_i32_e32 v132, v100
	v_cvt_f32_i32_e32 v133, v101
	v_cvt_f32_i32_e32 v134, v102
	v_cvt_f32_i32_e32 v135, v103
	v_cvt_f32_i32_e32 v100, v144
	v_cvt_f32_i32_e32 v101, v145
	v_cvt_f32_i32_e32 v102, v146
	v_cvt_f32_i32_e32 v103, v147
	v_cvt_f32_i32_e32 v96, v148
	v_cvt_f32_i32_e32 v97, v149
	v_cvt_f32_i32_e32 v98, v150
	v_cvt_f32_i32_e32 v99, v151
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[144:151], v[152:153], v[168:169], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[160:167], v[176:177], v[172:173], v[160:167] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[144:151], v[154:155], v[172:173], v[144:151] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v152, v148
	v_cvt_f32_i32_e32 v148, v160
	.loc	1 500 40                        ; ragged.py:500:40
	v_cndmask_b32_e64 v160, 0x80000000, v79, s0
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v153, v149
	v_cvt_f32_i32_e32 v149, v161
	.loc	1 493 40                        ; ragged.py:493:40
	v_cndmask_b32_e64 v161, 0x80000000, v83, s4
	.loc	1 500 40                        ; ragged.py:500:40
	buffer_load_u16 v160, v160, s[28:31], 0 offen
	.loc	1 493 40                        ; ragged.py:493:40
	buffer_load_u16 v161, v161, s[16:19], 0 offen
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v156, v144
	v_cvt_f32_i32_e32 v157, v145
	v_cvt_f32_i32_e32 v154, v150
	v_cvt_f32_i32_e32 v155, v151
	v_cvt_f32_i32_e32 v150, v162
	v_cvt_f32_i32_e32 v151, v163
	v_cvt_f32_i32_e32 v144, v164
	.loc	1 493 40                        ; ragged.py:493:40
	v_cndmask_b32_e64 v162, 0x80000000, v82, s3
	v_cndmask_b32_e64 v163, 0x80000000, v81, s2
	v_cndmask_b32_e32 v164, 0x80000000, v80, vcc_lo
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v159, v147
	v_cvt_f32_i32_e32 v118, v118
	.loc	1 493 40                        ; ragged.py:493:40
	s_clause 0x2
	buffer_load_u16 v162, v162, s[16:19], 0 offen
	buffer_load_u16 v163, v163, s[16:19], 0 offen
	buffer_load_u16 v164, v164, s[16:19], 0 offen
	.loc	1 505 21                        ; ragged.py:505:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v158, v146
	v_cvt_f32_i32_e32 v145, v165
	v_cvt_f32_i32_e32 v146, v166
	v_cvt_f32_i32_e32 v147, v167
	.loc	1 464 19                        ; ragged.py:464:19
	v_add_nc_u32_e32 v82, 2, v82
	v_add_nc_u32_e32 v79, s5, v79
	v_add_nc_u32_e32 v81, 2, v81
	v_add_nc_u32_e32 v83, 2, v83
	.loc	1 500 40                        ; ragged.py:500:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v160, 16, v160
	.loc	1 505 21                        ; ragged.py:505:21
	ds_store_b32 v94, v160
	.loc	1 493 40                        ; ragged.py:493:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v160, 16, v161
	.loc	1 505 21                        ; ragged.py:505:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v129, v129, v160
	v_mul_f32_e32 v131, v131, v160
	v_mul_f32_e32 v140, v140, v160
	v_mul_f32_e32 v142, v142, v160
	.loc	1 493 40                        ; ragged.py:493:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v161, 16, v164
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v128, v128, v160
	v_mul_f32_e32 v130, v130, v160
	v_mul_f32_e32 v132, v132, v160
	v_mul_f32_e32 v133, v133, v160
	v_mul_f32_e32 v134, v134, v160
	v_mul_f32_e32 v135, v135, v160
	v_mul_f32_e32 v136, v136, v160
	v_mul_f32_e32 v137, v137, v160
	v_mul_f32_e32 v138, v138, v160
	v_mul_f32_e32 v139, v139, v160
	v_mul_f32_e32 v141, v141, v160
	v_dual_mul_f32 v143, v143, v160 :: v_dual_lshlrev_b32 v160, 16, v162
	v_mul_f32_e32 v155, v155, v161
	v_mul_f32_e32 v144, v144, v161
	v_mul_f32_e32 v146, v146, v161
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v157, v157, v161 :: v_dual_mul_f32 v112, v112, v160
	v_mul_f32_e32 v113, v113, v160
	v_mul_f32_e32 v114, v114, v160
	v_mul_f32_e32 v115, v115, v160
	v_mul_f32_e32 v116, v116, v160
	v_mul_f32_e32 v117, v117, v160
	v_mul_f32_e32 v118, v118, v160
	v_mul_f32_e32 v119, v119, v160
	v_mul_f32_e32 v120, v120, v160
	v_mul_f32_e32 v121, v121, v160
	v_mul_f32_e32 v122, v122, v160
	v_mul_f32_e32 v123, v123, v160
	v_mul_f32_e32 v124, v124, v160
	v_mul_f32_e32 v125, v125, v160
	v_mul_f32_e32 v126, v126, v160
	v_dual_mul_f32 v127, v127, v160 :: v_dual_lshlrev_b32 v160, 16, v163
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v108, v108, v160
	v_mul_f32_e32 v109, v109, v160
	v_mul_f32_e32 v110, v110, v160
	v_mul_f32_e32 v111, v111, v160
	v_mul_f32_e32 v162, v104, v160
	v_mul_f32_e32 v163, v105, v160
	v_mul_f32_e32 v165, v107, v160
	v_mul_f32_e32 v166, v100, v160
	v_mul_f32_e32 v167, v101, v160
	v_mul_f32_e32 v168, v102, v160
	v_mul_f32_e32 v169, v103, v160
	v_mul_f32_e32 v170, v96, v160
	v_mul_f32_e32 v171, v97, v160
	v_mul_f32_e32 v172, v98, v160
	v_mul_f32_e32 v164, v106, v160
	.loc	1 505 21                        ; ragged.py:505:21
	ds_load_b128 v[104:107], v95 offset:512
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v160, v99, v160
	.loc	1 505 21                        ; ragged.py:505:21
	ds_load_b128 v[96:99], v95
	ds_load_b128 v[100:103], v95 offset:16
	.loc	1 506 17                        ; ragged.py:506:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v24, v157, v97
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v158, v158, v161
	v_mul_f32_e32 v159, v159, v161
	v_dual_mul_f32 v156, v156, v161 :: v_dual_fmac_f32 v39, v110, v98
	.loc	1 506 17                        ; ragged.py:506:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v74, v133, v101
	v_dual_fmac_f32 v38, v111, v99 :: v_dual_fmac_f32 v23, v158, v98
	v_dual_fmac_f32 v41, v108, v96 :: v_dual_fmac_f32 v18, v155, v103
	v_fmac_f32_e32 v22, v159, v99
	v_fmac_f32_e32 v40, v109, v97
	.loc	1 505 21                        ; ragged.py:505:21
	ds_load_b128 v[108:111], v95 offset:528
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v152, v152, v161
	v_mul_f32_e32 v153, v153, v161
	v_mul_f32_e32 v154, v154, v161
	v_mul_f32_e32 v148, v148, v161
	v_mul_f32_e32 v149, v149, v161
	v_mul_f32_e32 v150, v150, v161
	v_mul_f32_e32 v151, v151, v161
	v_mul_f32_e32 v145, v145, v161
	v_mul_f32_e32 v147, v147, v161
	.loc	1 506 17                        ; ragged.py:506:17
	v_dual_fmac_f32 v53, v128, v96 :: v_dual_fmac_f32 v78, v129, v97
	v_dual_fmac_f32 v15, v150, v106 :: v_dual_add_nc_u32 v84, 16, v84
	v_dual_fmac_f32 v77, v130, v98 :: v_dual_fmac_f32 v76, v131, v99
	v_dual_fmac_f32 v63, v112, v96 :: v_dual_fmac_f32 v20, v153, v101
	v_dual_fmac_f32 v62, v113, v97 :: v_dual_fmac_f32 v61, v114, v98
	v_fmac_f32_e32 v57, v115, v99
	v_dual_fmac_f32 v25, v156, v96 :: v_dual_fmac_f32 v70, v137, v105
	v_dual_fmac_f32 v75, v132, v100 :: v_dual_fmac_f32 v68, v139, v107
	v_dual_fmac_f32 v73, v134, v102 :: v_dual_fmac_f32 v72, v135, v103
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v54, v116, v100 :: v_dual_fmac_f32 v65, v142, v110
	v_dual_fmac_f32 v52, v117, v101 :: v_dual_fmac_f32 v51, v118, v102
	v_dual_fmac_f32 v50, v119, v103 :: v_dual_fmac_f32 v37, v162, v100
	v_fmac_f32_e32 v48, v121, v105
	v_fmac_f32_e32 v36, v163, v101
	v_dual_fmac_f32 v34, v165, v103 :: v_dual_fmac_f32 v21, v152, v100
	v_dual_fmac_f32 v46, v123, v107 :: v_dual_fmac_f32 v19, v154, v102
	v_dual_fmac_f32 v71, v136, v104 :: v_dual_fmac_f32 v32, v167, v105
	v_fmac_f32_e32 v69, v138, v106
	v_dual_fmac_f32 v49, v120, v104 :: v_dual_fmac_f32 v30, v169, v107
	v_dual_fmac_f32 v33, v166, v104 :: v_dual_fmac_f32 v16, v149, v105
	v_fmac_f32_e32 v31, v168, v106
	v_dual_fmac_f32 v17, v148, v104 :: v_dual_fmac_f32 v14, v151, v107
	v_dual_fmac_f32 v67, v140, v108 :: v_dual_fmac_f32 v66, v141, v109
	v_dual_fmac_f32 v64, v143, v111 :: v_dual_fmac_f32 v45, v124, v108
	v_dual_fmac_f32 v44, v125, v109 :: v_dual_fmac_f32 v43, v126, v110
	v_dual_fmac_f32 v42, v127, v111 :: v_dual_fmac_f32 v29, v170, v108
	v_dual_fmac_f32 v28, v171, v109 :: v_dual_fmac_f32 v13, v144, v108
	v_fmac_f32_e32 v27, v172, v110
	v_dual_fmac_f32 v35, v164, v102 :: v_dual_add_nc_u32 v80, 2, v80
	v_dual_fmac_f32 v47, v122, v106 :: v_dual_fmac_f32 v26, v160, v111
	v_dual_fmac_f32 v11, v146, v110 :: v_dual_fmac_f32 v12, v145, v109
	v_fmac_f32_e32 v10, v147, v111
	.loc	1 464 19                        ; ragged.py:464:19
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 509 9                         ; ragged.py:509:9
	v_bfe_u32 v7, v53, 16, 1
	v_bfe_u32 v8, v78, 16, 1
	v_cmp_o_f32_e64 s5, v53, v53
	v_cmp_o_f32_e64 s6, v78, v78
	v_bfe_u32 v9, v77, 16, 1
	v_add3_u32 v7, v53, v7, 0x7fff
	v_add3_u32 v8, v78, v8, 0x7fff
	v_bfe_u32 v53, v76, 16, 1
	.loc	1 510 13                        ; ragged.py:510:13
	v_mul_lo_u32 v6, v55, s33
	.loc	1 509 9                         ; ragged.py:509:9
	v_add3_u32 v9, v77, v9, 0x7fff
	v_cmp_o_f32_e64 s7, v77, v77
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s5
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s6
	v_bfe_u32 v8, v75, 16, 1
	v_bfe_u32 v55, v74, 16, 1
	v_add3_u32 v53, v76, v53, 0x7fff
	v_cmp_o_f32_e64 s5, v76, v76
	.loc	1 414 36                        ; ragged.py:414:36
	v_lshrrev_b32_e32 v2, 1, v56
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s7
	v_add3_u32 v8, v75, v8, 0x7fff
	v_cmp_o_f32_e64 s6, v75, v75
	v_add3_u32 v55, v74, v55, 0x7fff
	v_cmp_o_f32_e64 s7, v74, v74
	v_cndmask_b16 v9.h, 0x7fff, v53.h, s5
	v_bfe_u32 v53, v73, 16, 1
	v_bfe_u32 v56, v72, 16, 1
	.loc	1 510 13                        ; ragged.py:510:13
	v_mul_lo_u32 v5, v58, s33
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s6
	v_cndmask_b16 v8.h, 0x7fff, v55.h, s7
	v_bfe_u32 v55, v71, 16, 1
	v_add3_u32 v53, v73, v53, 0x7fff
	v_cmp_o_f32_e64 s5, v73, v73
	v_add3_u32 v56, v72, v56, 0x7fff
	v_cmp_o_f32_e64 s6, v72, v72
	v_bfe_u32 v58, v70, 16, 1
	.loc	1 510 13                        ; ragged.py:510:13
	v_mul_lo_u32 v4, v59, s33
	.loc	1 509 9                         ; ragged.py:509:9
	v_add3_u32 v55, v71, v55, 0x7fff
	v_cmp_o_f32_e64 s7, v71, v71
	v_cndmask_b16 v53.l, 0x7fff, v53.h, s5
	v_cndmask_b16 v53.h, 0x7fff, v56.h, s6
	v_bfe_u32 v56, v69, 16, 1
	v_bfe_u32 v59, v68, 16, 1
	v_add3_u32 v58, v70, v58, 0x7fff
	v_cmp_o_f32_e64 s5, v70, v70
	.loc	1 510 13                        ; ragged.py:510:13
	v_mul_lo_u32 v1, v60, s33
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b16 v55.l, 0x7fff, v55.h, s7
	v_add3_u32 v56, v69, v56, 0x7fff
	v_cmp_o_f32_e64 s6, v69, v69
	v_add3_u32 v59, v68, v59, 0x7fff
	v_cmp_o_f32_e64 s7, v68, v68
	v_cndmask_b16 v55.h, 0x7fff, v58.h, s5
	v_bfe_u32 v58, v67, 16, 1
	v_bfe_u32 v60, v66, 16, 1
	v_cndmask_b16 v56.l, 0x7fff, v56.h, s6
	v_cndmask_b16 v56.h, 0x7fff, v59.h, s7
	v_bfe_u32 v59, v65, 16, 1
	v_add3_u32 v58, v67, v58, 0x7fff
	v_cmp_o_f32_e64 s5, v67, v67
	v_add3_u32 v60, v66, v60, 0x7fff
	v_cmp_o_f32_e64 s6, v66, v66
	v_add3_u32 v59, v65, v59, 0x7fff
	v_cmp_o_f32_e64 s7, v65, v65
	v_cndmask_b16 v58.l, 0x7fff, v58.h, s5
	v_bfe_u32 v65, v64, 16, 1
	v_cndmask_b16 v58.h, 0x7fff, v60.h, s6
	v_bfe_u32 v60, v63, 16, 1
	v_bfe_u32 v66, v62, 16, 1
	v_cndmask_b16 v59.l, 0x7fff, v59.h, s7
	v_add3_u32 v65, v64, v65, 0x7fff
	v_cmp_o_f32_e64 s5, v64, v64
	v_add3_u32 v60, v63, v60, 0x7fff
	v_cmp_o_f32_e64 s6, v63, v63
	v_add3_u32 v63, v62, v66, 0x7fff
	v_cmp_o_f32_e64 s7, v62, v62
	v_bfe_u32 v62, v61, 16, 1
	v_bfe_u32 v64, v57, 16, 1
	v_cndmask_b16 v59.h, 0x7fff, v65.h, s5
	v_cndmask_b16 v60.l, 0x7fff, v60.h, s6
	v_cndmask_b16 v60.h, 0x7fff, v63.h, s7
	v_bfe_u32 v63, v54, 16, 1
	v_add3_u32 v62, v61, v62, 0x7fff
	v_cmp_o_f32_e64 s5, v61, v61
	v_add3_u32 v61, v57, v64, 0x7fff
	v_cmp_o_f32_e64 s6, v57, v57
	v_add3_u32 v57, v54, v63, 0x7fff
	v_cmp_o_f32_e64 s7, v54, v54
	v_cndmask_b16 v54.l, 0x7fff, v62.h, s5
	v_bfe_u32 v62, v52, 16, 1
	v_cndmask_b16 v54.h, 0x7fff, v61.h, s6
	v_bfe_u32 v61, v51, 16, 1
	v_bfe_u32 v63, v50, 16, 1
	v_cmp_o_f32_e64 s5, v52, v52
	v_add3_u32 v62, v52, v62, 0x7fff
	v_cmp_o_f32_e64 s6, v51, v51
	v_add3_u32 v52, v51, v61, 0x7fff
	v_add3_u32 v51, v50, v63, 0x7fff
	v_cndmask_b16 v57.l, 0x7fff, v57.h, s7
	v_cmp_o_f32_e64 s7, v50, v50
	v_bfe_u32 v50, v49, 16, 1
	v_cndmask_b16 v51.l, 0x7fff, v52.h, s6
	v_bfe_u32 v52, v48, 16, 1
	v_cndmask_b16 v57.h, 0x7fff, v62.h, s5
	v_bfe_u32 v61, v47, 16, 1
	v_add3_u32 v50, v49, v50, 0x7fff
	v_cmp_o_f32_e64 s5, v49, v49
	v_add3_u32 v49, v48, v52, 0x7fff
	v_cmp_o_f32_e64 s6, v48, v48
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s7
	v_add3_u32 v48, v47, v61, 0x7fff
	v_cmp_o_f32_e64 s7, v47, v47
	v_cndmask_b16 v47.l, 0x7fff, v50.h, s5
	v_bfe_u32 v50, v46, 16, 1
	v_cndmask_b16 v47.h, 0x7fff, v49.h, s6
	v_bfe_u32 v49, v45, 16, 1
	v_bfe_u32 v52, v44, 16, 1
	v_cmp_o_f32_e64 s5, v46, v46
	v_add3_u32 v50, v46, v50, 0x7fff
	v_cmp_o_f32_e64 s6, v45, v45
	v_add3_u32 v46, v45, v49, 0x7fff
	v_add3_u32 v45, v44, v52, 0x7fff
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s7
	v_cmp_o_f32_e64 s7, v44, v44
	v_bfe_u32 v44, v43, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v46.h, s6
	v_bfe_u32 v46, v42, 16, 1
	v_cndmask_b16 v48.h, 0x7fff, v50.h, s5
	v_bfe_u32 v49, v41, 16, 1
	v_add3_u32 v44, v43, v44, 0x7fff
	v_cmp_o_f32_e64 s5, v43, v43
	v_add3_u32 v43, v42, v46, 0x7fff
	v_cmp_o_f32_e64 s6, v42, v42
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s7
	v_add3_u32 v42, v41, v49, 0x7fff
	v_cmp_o_f32_e64 s7, v41, v41
	v_cndmask_b16 v41.l, 0x7fff, v44.h, s5
	v_bfe_u32 v44, v40, 16, 1
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s6
	v_bfe_u32 v43, v39, 16, 1
	v_bfe_u32 v46, v38, 16, 1
	v_cmp_o_f32_e64 s5, v40, v40
	v_add3_u32 v44, v40, v44, 0x7fff
	v_cmp_o_f32_e64 s6, v39, v39
	v_add3_u32 v40, v39, v43, 0x7fff
	v_add3_u32 v39, v38, v46, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s7
	v_cmp_o_f32_e64 s7, v38, v38
	v_bfe_u32 v38, v37, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v40.h, s6
	v_bfe_u32 v40, v36, 16, 1
	v_cndmask_b16 v42.h, 0x7fff, v44.h, s5
	v_bfe_u32 v43, v35, 16, 1
	v_add3_u32 v38, v37, v38, 0x7fff
	v_cmp_o_f32_e64 s5, v37, v37
	v_add3_u32 v37, v36, v40, 0x7fff
	v_cmp_o_f32_e64 s6, v36, v36
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s7
	v_add3_u32 v36, v35, v43, 0x7fff
	v_cmp_o_f32_e64 s7, v35, v35
	v_cndmask_b16 v35.l, 0x7fff, v38.h, s5
	v_bfe_u32 v38, v34, 16, 1
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s6
	v_bfe_u32 v37, v33, 16, 1
	v_bfe_u32 v40, v32, 16, 1
	v_cmp_o_f32_e64 s5, v34, v34
	v_add3_u32 v38, v34, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v33, v33
	v_add3_u32 v34, v33, v37, 0x7fff
	v_add3_u32 v33, v32, v40, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s7
	v_cmp_o_f32_e64 s7, v32, v32
	v_bfe_u32 v32, v31, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s6
	v_bfe_u32 v34, v30, 16, 1
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s5
	v_bfe_u32 v37, v29, 16, 1
	v_add3_u32 v32, v31, v32, 0x7fff
	v_cmp_o_f32_e64 s5, v31, v31
	v_add3_u32 v31, v30, v34, 0x7fff
	v_cmp_o_f32_e64 s6, v30, v30
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s7
	v_add3_u32 v30, v29, v37, 0x7fff
	v_cmp_o_f32_e64 s7, v29, v29
	v_cndmask_b16 v29.l, 0x7fff, v32.h, s5
	v_bfe_u32 v32, v28, 16, 1
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s6
	v_bfe_u32 v31, v27, 16, 1
	v_bfe_u32 v34, v26, 16, 1
	v_cmp_o_f32_e64 s5, v28, v28
	v_add3_u32 v32, v28, v32, 0x7fff
	v_cmp_o_f32_e64 s6, v27, v27
	v_add3_u32 v28, v27, v31, 0x7fff
	v_add3_u32 v27, v26, v34, 0x7fff
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s7
	v_cmp_o_f32_e64 s7, v26, v26
	v_bfe_u32 v26, v25, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v28.h, s6
	v_bfe_u32 v28, v24, 16, 1
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s5
	v_bfe_u32 v31, v23, 16, 1
	v_add3_u32 v26, v25, v26, 0x7fff
	v_cmp_o_f32_e64 s5, v25, v25
	v_add3_u32 v25, v24, v28, 0x7fff
	v_cmp_o_f32_e64 s6, v24, v24
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s7
	v_add3_u32 v24, v23, v31, 0x7fff
	v_cmp_o_f32_e64 s7, v23, v23
	v_cndmask_b16 v23.l, 0x7fff, v26.h, s5
	v_bfe_u32 v26, v22, 16, 1
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s6
	v_bfe_u32 v25, v21, 16, 1
	v_bfe_u32 v28, v20, 16, 1
	v_cmp_o_f32_e64 s5, v22, v22
	v_add3_u32 v26, v22, v26, 0x7fff
	v_cmp_o_f32_e64 s6, v21, v21
	v_add3_u32 v22, v21, v25, 0x7fff
	v_add3_u32 v21, v20, v28, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s7
	v_cmp_o_f32_e64 s7, v20, v20
	v_bfe_u32 v20, v19, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v22.h, s6
	v_bfe_u32 v22, v18, 16, 1
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s5
	v_bfe_u32 v25, v17, 16, 1
	v_add3_u32 v20, v19, v20, 0x7fff
	v_cmp_o_f32_e64 s5, v19, v19
	v_add3_u32 v19, v18, v22, 0x7fff
	v_cmp_o_f32_e64 s6, v18, v18
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s7
	v_add3_u32 v18, v17, v25, 0x7fff
	v_cmp_o_f32_e64 s7, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v20.h, s5
	v_bfe_u32 v20, v16, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s6
	v_bfe_u32 v19, v15, 16, 1
	v_bfe_u32 v22, v14, 16, 1
	v_cmp_o_f32_e64 s5, v16, v16
	v_add3_u32 v20, v16, v20, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v16, v15, v19, 0x7fff
	v_add3_u32 v15, v14, v22, 0x7fff
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s7
	v_cmp_o_f32_e64 s7, v14, v14
	v_bfe_u32 v14, v13, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v16.h, s6
	v_bfe_u32 v16, v12, 16, 1
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s5
	v_bfe_u32 v19, v11, 16, 1
	v_add3_u32 v14, v13, v14, 0x7fff
	v_cmp_o_f32_e64 s5, v13, v13
	v_add3_u32 v13, v12, v16, 0x7fff
	v_bfe_u32 v16, v10, 16, 1
	v_cmp_o_f32_e64 s6, v12, v12
	v_and_b32_e32 v0, 16, v0
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s7
	v_add3_u32 v12, v11, v19, 0x7fff
	v_cmp_o_f32_e64 s7, v11, v11
	v_add3_u32 v11, v10, v16, 0x7fff
	v_cmp_o_f32_e64 s8, v10, v10
	v_cndmask_b16 v10.l, 0x7fff, v14.h, s5
	v_cmp_eq_u32_e64 s5, 0, v0
	v_cndmask_b16 v10.h, 0x7fff, v13.h, s6
	v_cndmask_b16 v0.l, 0x7fff, v12.h, s7
	v_cndmask_b16 v0.h, 0x7fff, v11.h, s8
	s_mov_b32 s6, 0x76543210
	v_cndmask_b32_e64 v11, v8, v7, s5
	v_cndmask_b32_e64 v7, v7, v8, s5
	v_cndmask_b32_e64 v31, v41, v48, s5
	v_cndmask_b32_e64 v32, v48, v41, s5
	v_cndmask_b32_e64 v37, v36, v39, s5
	v_cndmask_b32_e64 v36, v39, v36, s5
	v_cndmask_b32_e64 v39, v21, v23, s5
	v_cndmask_b32_e64 v21, v23, v21, s5
	v_cndmask_b32_e64 v41, v10, v18, s5
	v_cndmask_b32_e64 v10, v18, v10, s5
	v_mov_b32_e32 v18, 0x5410
	v_mov_b32_e32 v23, 0x7632
	v_cndmask_b32_e64 v8, v9, v53, s5
	v_cndmask_b32_e64 v34, v35, v42, s5
	v_cndmask_b32_e64 v35, v42, v35, s5
	v_cndmask_b32_e64 v42, v0, v15, s5
	v_cndmask_b32_e64 v0, v15, v0, s5
	v_permlanex16_b32 v15, v7, s6, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v7, 0x1054, v18, s5
	v_cndmask_b32_e64 v18, 0x3276, v23, s5
	v_permlanex16_b32 v23, v8, s6, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v12, v53, v9, s5
	v_cndmask_b32_e64 v9, v55, v58, s5
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v8, v18, 8, v18
	v_cndmask_b32_e64 v16, v56, v59, s5
	v_cndmask_b32_e64 v20, v60, v57, s5
	v_cndmask_b32_e64 v25, v54, v51, s5
	v_and_b32_e32 v7, 0x540054, v7
	v_and_b32_e32 v8, 0x760076, v8
	v_cndmask_b32_e64 v28, v47, v45, s5
	v_cndmask_b32_e64 v38, v30, v33, s5
	v_cndmask_b32_e64 v30, v33, v30, s5
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v8, v8, 4, v8
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v2, s35, v2
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v13, v58, v55, s5
	v_cndmask_b32_e64 v14, v59, v56, s5
	v_cndmask_b32_e64 v19, v57, v60, s5
	v_cndmask_b32_e64 v22, v51, v54, s5
	v_cndmask_b32_e64 v33, v27, v29, s5
	v_cndmask_b32_e64 v27, v29, v27, s5
	v_cndmask_b32_e64 v40, v17, v24, s5
	v_cndmask_b32_e64 v17, v24, v17, s5
	v_permlanex16_b32 v24, v9, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v16, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v20, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v25, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v28, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v32, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s6, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v43, 0x5040504, v7
	v_and_b32_e32 v44, 0x7060706, v8
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v3, 0x80, v2
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e64 s1, s33, v2
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v26, v45, v47, s5
	v_permlanex16_b32 v29, v35, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v36, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v27, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v21, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v17, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v10, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v15, v11, v43
	v_perm_b32 v8, v15, v11, v44
	v_perm_b32 v9, v23, v12, v43
	v_perm_b32 v10, v23, v12, v44
	v_perm_b32 v11, v24, v13, v43
	v_perm_b32 v12, v24, v13, v44
	v_perm_b32 v13, v16, v14, v43
	v_perm_b32 v14, v16, v14, v44
	v_perm_b32 v15, v18, v19, v43
	v_perm_b32 v16, v18, v19, v44
	v_perm_b32 v17, v20, v22, v43
	v_perm_b32 v18, v20, v22, v44
	v_perm_b32 v21, v28, v31, v43
	v_perm_b32 v22, v28, v31, v44
	v_perm_b32 v27, v30, v38, v43
	v_perm_b32 v28, v30, v38, v44
	v_add_lshl_u32 v38, v2, v6, 1
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e64 s0, s33, v3
	.loc	1 509 9                         ; ragged.py:509:9
	v_add_lshl_u32 v6, v3, v6, 1
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s5, s1, s4
	.loc	1 509 9                         ; ragged.py:509:9
	v_perm_b32 v19, v25, v26, v43
	v_perm_b32 v20, v25, v26, v44
	v_perm_b32 v23, v29, v34, v43
	v_perm_b32 v24, v29, v34, v44
	v_perm_b32 v25, v32, v37, v43
	v_perm_b32 v26, v32, v37, v44
	v_perm_b32 v29, v35, v33, v43
	v_perm_b32 v30, v35, v33, v44
	v_perm_b32 v33, v45, v40, v43
	v_perm_b32 v34, v45, v40, v44
	v_perm_b32 v37, v0, v42, v43
	v_cndmask_b32_e64 v40, 0x80000000, v38, s5
	v_perm_b32 v38, v0, v42, v44
	v_add_lshl_u32 v0, v3, v5, 1
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s4, s0, s4
	.loc	1 509 9                         ; ragged.py:509:9
	v_perm_b32 v31, v36, v39, v43
	v_perm_b32 v32, v36, v39, v44
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
	v_perm_b32 v35, v46, v41, v43
	v_perm_b32 v36, v46, v41, v44
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 178
		.amdhsa_next_free_sgpr 40
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
		.amdhsa_inst_pref_size 59
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 178
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7452
; TotalNumSgprs: 42
; NumVgprs: 178
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 178
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     178
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
